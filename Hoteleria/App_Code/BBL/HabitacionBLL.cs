using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BD_Hotel;
/// <summary>
/// Descripción breve de HabitacionBLL
/// </summary>
namespace BD_Hotel.BBL
{
    public class HabitacionBLL
    {
	    public HabitacionBLL() {}

        public static List<Habitacion> GetHabitacion()
        {
            HabitaciondbTableAdapters.HabitacionTableAdapter adapter = new HabitaciondbTableAdapters.HabitacionTableAdapter();
            Habitaciondb.HabitacionDataTable table = adapter.GetHabitacion();


            List<Habitacion> list = new List<Habitacion>();
            foreach (var row in table)
            {
                Habitacion obj = getHabitacionFromRow(row);
                list.Add(obj);
            }
            return list;
        }

        public static Habitacion getHabitacionFromRow(Habitaciondb.HabitacionRow row)
        {
            Habitacion obj = new Habitacion()
            {
                habitacionId=row.Habitacion_iD,
                precio=row.Precio,
                numeroCamas=row.NumeroCamas,
                estado=row.Estado,
                observacion=row.Observacion,
                tipoHabitacion=row.Fk_TipoHabiatacion_id,
                hotel=row.Fk_Hotel_id
            };
            return obj;
        }

        public static void EliminarHabitacion(int HabitacionId)
        {
            if (HabitacionId <= 0)

            throw new ArgumentException("El id de Habitacion no puede ser menor o igual que cero");
            HabitaciondbTableAdapters.HabitacionTableAdapter adapter = new HabitaciondbTableAdapters.HabitacionTableAdapter();
            adapter.EliminarHabitacion(HabitacionId);

        }

        public static int InsertarHabitacion(Habitacion obj)
        {
            if (obj == null)
            {
                throw new ArgumentException("El objeto no puede ser nulo");
            }
            if (obj.precio == null)
            {
                throw new ArgumentException("El precio no puede ser nulo o vacio");
            }
            if (string.IsNullOrEmpty(obj.numeroCamas))
            {
                throw new ArgumentException("El numeroCamas no puede ser nulo o vacio");
            }
            if (string.IsNullOrEmpty(obj.estado))
            {
                throw new ArgumentException("El estado no puede ser nulo o vacio");
            }
            if (string.IsNullOrEmpty(obj.observacion))
            {
                throw new ArgumentException("El observacion no puede ser nulo o vacio");
            }
            if (obj.tipoHabitacion == null)
            {
                throw new ArgumentException("El tipoHabitacion no puede ser nulo o vacio");
            }
            if (obj.hotel == null)
            {
                throw new ArgumentException("El hotel no puede ser nulo o vacio");
            }


            int? id = 0;

            HabitaciondbTableAdapters.HabitacionTableAdapter adapter = new HabitaciondbTableAdapters.HabitacionTableAdapter();
            adapter.InsertarHabitacion(ref id, obj.precio, obj.numeroCamas, obj.estado, obj.observacion, obj.tipoHabitacion, obj.hotel);
            if (id == null || id <= 0)
                throw new Exception("La llave primaria no se generó correctamente");
            return id.Value;
        }

        public static void ActualizarHabitacion(Habitacion obj)
        {

            if (obj == null)
            {
                throw new ArgumentException("El objeto no puede ser nulo");
            }
            if (obj.precio == null)
            {
                throw new ArgumentException("El precio no puede ser nulo o vacio");
            }
            if (string.IsNullOrEmpty(obj.numeroCamas))
            {
                throw new ArgumentException("El numeroCamas no puede ser nulo o vacio");
            }
            if (string.IsNullOrEmpty(obj.estado))
            {
                throw new ArgumentException("El estado no puede ser nulo o vacio");
            }
            if (string.IsNullOrEmpty(obj.observacion))
            {
                throw new ArgumentException("El observacion no puede ser nulo o vacio");
            }
            if (obj.tipoHabitacion == null)
            {
                throw new ArgumentException("El tipoHabitacion no puede ser nulo o vacio");
            }
            if (obj.hotel == null)
            {
                throw new ArgumentException("El hotel no puede ser nulo o vacio");
            }

            int? id = 0;

            HabitaciondbTableAdapters.HabitacionTableAdapter adapter = new HabitaciondbTableAdapters.HabitacionTableAdapter();
            adapter.ActualizarHabitacion(obj.habitacionId, obj.precio, obj.numeroCamas, obj.estado, obj.observacion, obj.tipoHabitacion, obj.hotel);
        }

        public static Habitacion GetHabitacionById(int HabitacionId)
        {
            if (HabitacionId <= 0)
                throw new ArgumentException("El id de habitacion no puede ser menor o igual que cero");

            HabitaciondbTableAdapters.HabitacionTableAdapter adapter = new HabitaciondbTableAdapters.HabitacionTableAdapter();
            Habitaciondb.HabitacionDataTable table = adapter.GetHabitacionById(HabitacionId);
            Habitacion obj=getHabitacionFromRow(table[0]);
            return obj;
        }
    }
}