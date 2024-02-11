using System.Web;
using System.Web.Mvc;

namespace QLBH_2051010137_VoDinhKhang
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
