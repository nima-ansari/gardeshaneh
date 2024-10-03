using FluentValidation;
using FluentValidation.AspNetCore;
using Microsoft.Extensions.Configuration;
using System.Reflection;

namespace Microsoft.Extensions.DependencyInjection;

public static class ConfigureServices
{
    public static IServiceCollection AddCoreServices(this IServiceCollection services, IConfiguration configuration)
    {
        #region Mediator
        services.AddMediatR(cfg => cfg.RegisterServicesFromAssembly(Assembly.GetExecutingAssembly()));
        #endregion

        //services.AddFluentValidationAutoValidation();
        //services.AddFluentValidationClientsideAdapters();
        //services.AddValidatorsFromAssembly(typeof(CourseValidator).Assembly);

        return services;
    }
}
