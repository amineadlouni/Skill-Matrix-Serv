using System.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;

namespace Skill_Matrix_Serv.Data.Models
{
    [ApiController]
    public class TeamLeaderController : ControllerBase
    {
        private IConfiguration _config;
        public TeamLeaderController(IConfiguration config)
        {
            _config = config;
        }






        /*******************************************************************************************************************************************************************/
        /*******************************************************************************************************************************************************************/






        [HttpGet("GET_TeamLeaders")]

        public JsonResult GET_TeamLeaders()
        {
            string query = "select * from [Test_DB].[dbo].[TeamLeaders];";
            DataTable table = new DataTable();
            string? SqlDataSource = _config.GetConnectionString("Test_DB");
            SqlDataReader myReader;
            using (SqlConnection myCon = new SqlConnection(SqlDataSource))
            {

                try
                {
                    myCon.Open();
                }
                catch (Exception er)
                {
                    System.Diagnostics.Debug.WriteLine(er.Message);
                }

                using (SqlCommand myCommand = new SqlCommand(query, myCon))
                {
                    myReader = myCommand.ExecuteReader();
                    table.Load(myReader);
                    System.Diagnostics.Debug.WriteLine(table);

                }

            }

            return new JsonResult(table);

        }





        /*******************************************************************************************************************************************************************/
        /*******************************************************************************************************************************************************************/







        [HttpPost("SET_TeamLeader")]

        public JsonResult SET_TeamLeader(string NetID, int Matricule, string Name)
        {
            string query = "Insert Into [Test_DB].[dbo].[TeamLeaders]([NetID],[Matricule],[Name],[IsActive]) values(@netID,@matricule,@name,0);";
            DataTable table = new DataTable();
            string? SqlDataSource = _config.GetConnectionString("Test_DB");
            SqlDataReader myReader;
            using (SqlConnection myCon = new SqlConnection(SqlDataSource))
            {

                try
                {
                    myCon.Open();

                }
                catch (Exception er)
                {
                    System.Diagnostics.Debug.WriteLine(er.Message);
                }

                using (SqlCommand myCommand = new SqlCommand(query, myCon))
                {
                    myCommand.Parameters.AddWithValue("@netID", NetID);
                    myCommand.Parameters.AddWithValue("@matricule", Matricule);
                    myCommand.Parameters.AddWithValue("@name", Name);
                    myReader = myCommand.ExecuteReader();
                    table.Load(myReader);

                }

            }

            return new JsonResult("Record added successfully !");

        }



        [HttpPost("Delete_TeamLeader")]

        public JsonResult Delete_TeamLeader(int ID)
        {
            string query = "Delete from [Test_DB].[dbo].[TeamLeaders] where ID=@ID;";
            DataTable table = new DataTable();
            string? SqlDataSource = _config.GetConnectionString("Test_DB");
            SqlDataReader myReader;
            using (SqlConnection myCon = new SqlConnection(SqlDataSource))
            {

                try
                {
                    myCon.Open();

                }
                catch (Exception er)
                {
                    System.Diagnostics.Debug.WriteLine(er.Message);
                }

                using (SqlCommand myCommand = new SqlCommand(query, myCon))
                {
                    myCommand.Parameters.AddWithValue("@ID", ID);
                    myReader = myCommand.ExecuteReader();
                    table.Load(myReader);

                }

            }

            return new JsonResult("Record removed successfully !");

        }


        /*******************************************************************************************************************************************************************/
        /*******************************************************************************************************************************************************************/
        [HttpPut("Update_Leader_By_Matricule")]
public JsonResult Update_Leader_By_Matricule(int Matricule, string Name, string Project, string Zone, string Supervisor)
{
    string updateLeaderQuery = @"
        UPDATE [dbo].[TeamLeaders]
        SET 
            [Name] = @Name,
            [Project] = @Project,
            [Zone] = @Zone,
            [Supervisor] = @Supervisor
        WHERE 
            [Matricule] = @Matricule";

    
    string? SqlDataSource = _config.GetConnectionString("Test_DB");

    using (SqlConnection myCon = new SqlConnection(SqlDataSource))
    {
                try
                {
                    myCon.Open();

                    using (SqlCommand cmd1 = new SqlCommand(updateLeaderQuery, myCon))
                    {
                        cmd1.Parameters.AddWithValue("@Matricule", Matricule);
                        cmd1.Parameters.AddWithValue("@Name", Name);
                        cmd1.Parameters.AddWithValue("@Project", Project);
                        cmd1.Parameters.AddWithValue("@Zone", Zone);
                        cmd1.Parameters.AddWithValue("@Supervisor", Supervisor);

                        cmd1.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine("Erreur : " + ex.Message);
                    return new JsonResult("Erreur lors de la mise à jour.");
                }
    }

    return new JsonResult("Opérateur mis à jour et scores réinitialisés !");
}

    }
}
