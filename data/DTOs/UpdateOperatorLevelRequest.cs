namespace Skill_Matrix_Serv.Data.DTOs
{
    public class UpdateOperatorLevelRequest
    {
        public int matricule { get; set; }
        public int newLevel { get; set; }
        public string station { get; set; }
    }
}
