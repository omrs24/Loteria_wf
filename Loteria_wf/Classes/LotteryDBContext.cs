using Loteria_wf.Models;
using System;
using System.Collections.Generic;

using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

using System.Data.Entity;

namespace Loteria_wf.Classes
{
    public class LotteryDBContext : DbContext
    {
        public LotteryDBContext() : base("name=DefaultConnection")
        {
        }

        public DbSet<AspNetLotteryCards> Cards { get; set; }
        public DbSet<AspNetLotteryTables> Tables { get; set; }

    }
}