using Blog.App_Code.Models.ViewComponentModels;
using Microsoft.AspNetCore.Mvc;
using Umbraco.Cms.Core.Models.PublishedContent;
using Umbraco.Cms.Core.Web;

namespace Blog.App_Code.ViewComponents
{
    [ViewComponent]
    public class MetaDataViewComponent : ViewComponent
    {
        private readonly ILogger<MetaDataViewComponent> _logger;
        private readonly IUmbracoContextAccessor _context;

        public MetaDataViewComponent(ILogger<MetaDataViewComponent> logger,
            IUmbracoContextAccessor context)
        {
            _logger = logger;
            _context = context;
        }

        public IViewComponentResult Invoke()
        {
            MetaDataView metaDataView = new();
            try
            {
                var content = _context?.GetRequiredUmbracoContext()?.PublishedRequest?.PublishedContent;

                if (content == null) return View();

                metaDataView.Author = content.Value<string>("Author");
                metaDataView.Description = content.Value<string>("Description");
                metaDataView.Title = content.Value<string>("Title");
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, $"Error While Processing {nameof(MetaDataViewComponent)}");
            }
            return View(metaDataView);
        }
    }
}
