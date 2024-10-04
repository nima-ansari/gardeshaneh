using System.ComponentModel.DataAnnotations;

namespace Core.Enums
{
    public enum RoleEnum : byte
    {
        [Display(Name = "ادمین کل")]
        MasterAdmin = 1,
        [Display(Name = "ادمین")]
        Admin = 2,
        [Display(Name = "صاحب کار")]
        Business = 3,
        [Display(Name = "کاربر")]
        User = 4
    }

    public enum PropertyTypeEnum : byte
    {
        [Display(Name = "عددی")]
        Decimal = 1,
        [Display(Name = "متنی")]
        String = 2,
        [Display(Name = "بولیین")]
        Boolean = 3,
    }
}
