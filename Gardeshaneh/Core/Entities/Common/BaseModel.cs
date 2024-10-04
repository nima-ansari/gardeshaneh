namespace Core.Entities;

public class BaseModel
{
    public int Total { get; set; }
    public long Id { get; set; }
    public bool IsDelete { get; set; }
    public DateTime CreationDate { get; set; }
    public DateTime ModifyDate { get; set; }
}
