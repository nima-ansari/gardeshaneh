namespace Core.Entities;

public partial class CategoryProperty : BaseModel
{
    public long PropertyId { get; set; }
    public long CategoryId { get; set; }
    public bool IsActive { get; set; }

}
