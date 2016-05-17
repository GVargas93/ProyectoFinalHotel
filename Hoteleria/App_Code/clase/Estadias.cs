using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Estadia
/// </summary>
namespace BD_Hotel
{
    public class Estadias
    {
        public Estadias()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public int estadia_id { get; set; }
        public string fechaLlegada { get; set; }
        public string fechaSalida { get; set; }
        public int fkClienteiD { get; set; }
    }
}