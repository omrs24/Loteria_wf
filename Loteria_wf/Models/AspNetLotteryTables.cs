using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Loteria_wf.Models
{
    public class AspNetLotteryTables
    {
        public int id { get; set; }

        //lista de lottery cards 1, ... ,16

        // Definir explicitamente el campo que es la ForeignKey de la otra tabla
        [ForeignKey("id")]
        public List<AspNetLotteryCards> Cards { get; set; }

        /*public int carta1 { get; set; }
        public int carta2 { get; set; }
        public int carta3 { get; set; }
        public int carta4 { get; set; }
        public int carta5 { get; set; }
        public int carta6 { get; set; }
        public int carta7 { get; set; }
        public int carta8 { get; set; }
        public int carta9 { get; set; }
        public int carta10 { get; set; }
        public int carta11 { get; set; }
        public int carta12 { get; set; }
        public int carta13 { get; set; }
        public int carta114 { get; set; }
        public int carta15 { get; set; }
        public int carta16 { get; set; }*/
    }
}