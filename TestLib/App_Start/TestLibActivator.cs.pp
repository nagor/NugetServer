using System.Configuration;
using TestLib;
using $rootnamespace$;

//call PreStart method before web application starts
[assembly: WebActivator.PreApplicationStartMethod(typeof(TestLibActivator), "PreStart")]

namespace $rootnamespace$
{
    public static class TestLibActivator
    {
        public static void PreStart()
        {
            TestLibSettings.K1 = ConfigurationManager.AppSettings["TestLib:k1"];
            TestLibSettings.K2 = ConfigurationManager.AppSettings["TestLib:k2"];
        }
    }
}