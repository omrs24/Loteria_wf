using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Loteria_wf.Models
{
    public class LotteryTables
    {
        public int id { get; set; }
        
        //lista de lottery cards 1, ... ,16
        public List<LotteryCards> Cards { get; set; }

    }
}