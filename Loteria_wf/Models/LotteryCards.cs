using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Loteria_wf.Models
{
    public class LotteryCards
    {
        public int Id { get; set; }

        //fillable
        public string cardname { get; set; }
        public string cardimage { get; set; }
    }
}