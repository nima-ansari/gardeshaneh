using MediatR;
using Microsoft.AspNetCore.Mvc;
using NToastNotify;

namespace Gardeshaneh.Controllers
{
    public class BaseController : Controller
    {
        private IMediator _mediator;
        protected IMediator Mediator => _mediator ??= HttpContext.RequestServices.GetService<IMediator>();

        private IToastNotification _toastNotification;
        protected IToastNotification ToastNotification => _toastNotification ??= HttpContext.RequestServices.GetService<IToastNotification>();
    }
}
