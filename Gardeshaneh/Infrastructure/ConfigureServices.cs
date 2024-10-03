//using Core.Interfaces.Repositories;
//using Infrastructure.Persistence.Repositories;
using Microsoft.Extensions.Configuration;

namespace Microsoft.Extensions.DependencyInjection;

public static class ConfigureServices
{
    public static IServiceCollection AddInfrastructureServices(this IServiceCollection services, IConfiguration configuration)
    {
        #region IoC
        //services.AddTransient<IAccountRepository, AccountRepository>();
        //services.AddTransient<ICourseParagraphRepository, CourseParagraphRepository>();
        //services.AddTransient<ICourseRepository, CourseRepository>();
        //services.AddTransient<IExhibitionImageRepository, ExhibitionImageRepository>();
        //services.AddTransient<IExhibitionRepository, ExhibitionRepository>();
        //services.AddTransient<IHeldCourseRepository, HeldCourseRepository>();
        //services.AddTransient<INewsImageRepository, NewsImageRepository>();
        //services.AddTransient<INewsRepository, NewsRepository>();
        //services.AddTransient<IPortfolioRepository, PortfolioRepository>();
        //services.AddTransient<IStatisticRepository, StatisticRepository>();
        //services.AddTransient<ITimingRepository, TimingRepository>();
        //services.AddTransient<ITutorialArticleParagraphRepository, TutorialArticleParagraphRepository>();
        //services.AddTransient<ITutorialArticleRepository, TutorialArticleRepository>();
        #endregion

        return services;
    }
}
