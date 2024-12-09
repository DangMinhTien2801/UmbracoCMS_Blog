using Blog.App_Code.Models.ViewComponentModels;
using Microsoft.AspNetCore.Mvc;
using Umbraco.Cms.Core.Models.PublishedContent;
using Umbraco.Cms.Core.Web;

namespace Blog.App_Code.View_Components
{
    [ViewComponent]
    public class HeaderViewComponent : ViewComponent
    {
        private readonly ILogger<HeaderViewComponent> _logger;
        private readonly IUmbracoContextAccessor _context;

        public HeaderViewComponent(ILogger<HeaderViewComponent> logger,
            IUmbracoContextAccessor context)
        {            
            _logger = logger;
            _context = context;
        }

        public IViewComponentResult Invoke()
        {
            HeaderView headerView = new();
            try
            {
                var content = _context?.GetRequiredUmbracoContext()?.PublishedRequest?.PublishedContent;

                if (content is null) return View(headerView);

                headerView.Title = content?.Value<string>("Title");
                headerView.SubTitle = content?.Value<string>("SubTitle");
                headerView.ImageUrl = content?.Value<IPublishedContent>("PageBanner")?.Url();
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, $"Error while processing {nameof(HeaderViewComponent)}");
            }
            return View(headerView);
        }
    }
}
