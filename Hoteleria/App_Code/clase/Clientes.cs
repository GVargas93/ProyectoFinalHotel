using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cliente
/// </summary>
/// 
namespace BD_Hotel{ 
public class Clientes
{
 
        public Clientes()
    {


    }
        public int clientes_id { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string direccion { get; set; }
        public string telefono { get; set; }
        public int tipocliente { get; set; }
    }
}