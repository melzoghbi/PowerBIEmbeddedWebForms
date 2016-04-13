using Microsoft.PowerBI.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PBIEmbeddedWebForms.Models
{
   
    public class ReportViewModel
    {

        public string Id { get; set; }
        public string Name { get; set; }
        public string EmbedUrl { get; set; }
        public string WebUrl { get; set; }

        public IReport Report { get; set; }
        public string AccessToken { get; set; }


    }
}
