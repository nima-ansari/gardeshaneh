namespace Core.Entities;

public partial class User : BaseModel
{
    public string Code { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Password { get; set; }
    public string TempPassword { get; set; }
    public string Email { get; set; }
    public string EmailActiveCode { get; set; }
    public bool IsEmailActived { get; set; }
    public bool IsBlocked { get; set; }
    public RoleEnum RoleEnum { get; set; }
    public string Ip { get; set; }
    public string AvatarName { get; set; }
    public byte TryCount { get; set; }
    public bool IsPasswordForgotten { get; set; }

}
