namespace Core.Entities;

public partial class City : BaseModel
{
    public long PropertyId { get; set; }
    public long PlaceId { get; set; }
    public bool? BooleanValue { get; set; }
    public string StringValue { get; set; }
    public decimal? DecimalValue { get; set; }

}
