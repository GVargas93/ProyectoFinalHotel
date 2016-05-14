using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de TipoHabitacion
/// </summary>
namespace BD_Hotel
{ 
    public class TipoHabitacion
    {

            public int tipoHabitacionId { get; set; }
            public string nombre { get; set; }
            public string descripcion { get; set; }
            public TipoHabitacion() { }

    }
}