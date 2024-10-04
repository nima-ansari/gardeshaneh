namespace Core.Entities;

public partial class Category : BaseModel
{
    public long? ParentId { get; set; }
    public string PersianName { get; set; }
    public string EnglishName { get; set; }
    public bool IsActive { get; set; }
}
