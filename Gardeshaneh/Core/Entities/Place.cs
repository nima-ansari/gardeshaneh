namespace Core.Entities;

public partial class Place : BaseModel
{
    public long CreatorUserId { get; set; }
    public long CategoryId { get; set; }
    public long CityId { get; set; }
    public string Title { get; set; }
    public string ImageName { get; set; }
    public bool IsActive { get; set; }
    public string Description { get; set; }
    public string Address { get; set; }
    public string Tags { get; set; }
    public string Timing { get; set; }
    public string Phone { get; set; }
    public string SuggestionDescription { get; set; }
    public string GoogleMapUrl { get; set; }
    public string BaladUrl { get; set; }
    public string InstagramId { get; set; }
    public string TelegramId { get; set; }
    public string WhatsAppId { get; set; }
    public string Website { get; set; }

}
