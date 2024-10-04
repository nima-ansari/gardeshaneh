namespace Core.Entities;

public partial class City : BaseModel
{
    public PropertyTypeEnum PropertyTypeEnum { get; set; }
    public string Title { get; set; }
    public string BootstrapIcon { get; set; }

}
