using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Habitacion
/// </summary>
namespace BD_Hotel
{ 
    public class Habitacion
    {
        public int habitacionId { get; set; }
        public int precio { get; set; }
        public string numeroCamas { get; set; }
        public string estado { get; set; }
        public string observacion { get; set; }
        public int tipoHabitacion { get; set; }
        public int hotel { get; set; }
	    public Habitacion(){}
    }
}