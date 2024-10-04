namespace Core.Entities;

public partial class City : BaseModel
{
    public string ProvinceName { get; set; }
    public string PersianName { get; set; }
    public string EnglishName { get; set; }
    public bool IsActive { get; set; }

}
