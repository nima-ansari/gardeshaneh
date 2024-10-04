namespace Core.Entities;

public partial class PlaceGallery : BaseModel
{
    public long PlaceId { get; set; }
    public string ImageName { get; set; }
    public string SeoTitle { get; set; }

}
