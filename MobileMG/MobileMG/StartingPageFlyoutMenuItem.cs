using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MobileMG
{
    public class StartingPageFlyoutMenuItem
    {
        public StartingPageFlyoutMenuItem()
        {
            TargetType = typeof(StartingPageFlyoutMenuItem);
        }
        public int Id { get; set; }
        public string Title { get; set; }

        public Type TargetType { get; set; }
        public string RowImage { get; set; }
    }
}