using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TaskoolMobile
{
    public class MeusProjetosFlyoutMenuItem
    {
        public MeusProjetosFlyoutMenuItem()
        {
            TargetType = typeof(MeusProjetosFlyoutMenuItem);
        }
        public int Id { get; set; }
        public string Title { get; set; }

        public Type TargetType { get; set; }
    }
}