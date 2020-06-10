using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using System.Data.SqlClient;
using System.Data;

namespace FunctionLabs
{
    public static class DemoSQLApi
    {
        [FunctionName("DemoSQLApi")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = "clientes/{id:int?}")] HttpRequest req,
            int? id,
            ILogger log)
        {
            DataTable dt = new DataTable();

            // log.LogInformation("SQLConnection" + Environment.GetEnvironmentVariable("SQLConnection"));
            using (var conn1 = new SqlConnection(Environment.GetEnvironmentVariable("SQLConnection")))
            {
                // open connection
                conn1.Open();

                // basic query
                string query = "select * from clientes where 1 = 1";

                // obtain query strings
                string nome = req.Query["nome"];
                string canalVendas = req.Query["canalVendas"];
                string uf = req.Query["uf"];
                bool hasName = false;
                bool hasSalesChannel = false;
                bool hasState = false;

                log.LogInformation("Parametros:");

                if (id.HasValue) {

                    log.LogInformation("ID: " + id);
                    query += " and cod_cliente = @cod_cliente";

                } else {

                    if (!string.IsNullOrEmpty(nome)) {
                        log.LogInformation("Nome: " + nome);
                        hasName = true;
                        query += " and nomecliente LIKE @nome_cliente";
                    }

                    if (!string.IsNullOrEmpty(canalVendas)) {
                        log.LogInformation("Canal Vendas: " + canalVendas);
                        hasSalesChannel = true;
                        query += " and canalvendas = @canal_vendas";
                    }

                    if (!string.IsNullOrEmpty(uf)) {
                        log.LogInformation("Estado: " + uf);
                        hasState = true;
                        query += " and estado = @estado";
                    }
                }

                using (SqlCommand cmd1 = new SqlCommand(query, conn1))
                {
                    if (id.HasValue) {

                        cmd1.Parameters.AddWithValue("@cod_cliente", id);

                    } else {

                        if (hasName) {
                            cmd1.Parameters.AddWithValue("@nome_cliente", "%" + nome + "%");
                        }

                        if (hasSalesChannel) {
                            cmd1.Parameters.AddWithValue("@canal_vendas", canalVendas);
                        }

                        if (hasState) {
                            cmd1.Parameters.AddWithValue("@estado", uf);
                        }
                    }

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd1))
                    {
                        da.Fill(dt);
                    }
                }

                conn1.Close();
            }

            return new OkObjectResult(dt);
        }
    }
}
