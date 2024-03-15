using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace wendoAPP
{
    public class FlyoutFlyoutMenuItem
    {
        public FlyoutFlyoutMenuItem()
        {
            TargetType = typeof(FlyoutFlyoutMenuItem);
        }
        public int Id { get; set; }
        public string Title { get; set; }

        public bool Enabled { get; set; }
        public string Image {  get; set; }
        public Type TargetType { get; set; }
    }
}