using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using BD_Hotel;

/// <summary>
/// Descripción breve de TipoHabitacionBLL
/// </summary>
namespace BD_Hotel.BBL
{
    public class TipoHabitacionBLL
    {
	    public TipoHabitacionBLL(){}

        public static List<TipoHabitacion> GetTipoHabitacion()
        {
            TipoHabitaciondbTableAdapters.TipoHabitacionTableAdapter adapter = new TipoHabitaciondbTableAdapters.TipoHabitacionTableAdapter();
            TipoHabitaciondb.TipoHabitacionDataTable table = adapter.GetTipoHabitacion();


            List<TipoHabitacion> list = new List<TipoHabitacion>();
            foreach (var row in table)
            {
                TipoHabitacion obj = getTipoHabitacionFromRow(row);
                list.Add(obj);
            }
            return list;
        }

        public static TipoHabitacion getTipoHabitacionFromRow(TipoHabitaciondb.TipoHabitacionRow row)
        {
            TipoHabitacion obj = new TipoHabitacion()
            {
                tipoHabitacionId = row.TipoHabitacion_iD,
                nombre = row.Nombre,
                descripcion = row.Descripcion
            };
            return obj;
        }

        public static void EliminarTipoHabitacion(int TipoHabitacionId)
        {
            if (TipoHabitacionId <= 0)

                throw new ArgumentException("El id del Tipo de Habitacion no puede ser menor o igual que cero");
            TipoHabitaciondbTableAdapters.TipoHabitacionTableAdapter adapter = new TipoHabitaciondbTableAdapters.TipoHabitacionTableAdapter();
            adapter.EliminarTipoHabitacion(TipoHabitacionId);

        }

        public static int InsertarTipoHabitacion(TipoHabitacion obj)
        {
            if (obj == null)
            {
                throw new ArgumentException("El objeto no puede ser nulo");
            }
            if (string.IsNullOrEmpty(obj.nombre))
            {
                throw new ArgumentException("El nombre no puede ser nulo o vacio");
            }
            if (string.IsNullOrEmpty(obj.descripcion))
            {
                throw new ArgumentException("El descripcion no puede ser nulo o vacio");
            }

            int? id = 0;

            TipoHabitaciondbTableAdapters.TipoHabitacionTableAdapter adapter = new TipoHabitaciondbTableAdapters.TipoHabitacionTableAdapter();
            adapter.InsertarTipoHabitacion(ref id, obj.nombre, obj.descripcion);

            if (id == null || id <= 0)
                throw new Exception("La llave primaria no se generó correctamente");
            return id.Value;
        }

        public static void ActualizarTipoHabitacion(TipoHabitacion obj)
        {

            if (obj == null)
            {
                throw new ArgumentException("El objeto no puede ser nulo");
            }
            if (string.IsNullOrEmpty(obj.nombre))
            {
                throw new ArgumentException("El nombre no puede ser nulo o vacio");
            }
            if (string.IsNullOrEmpty(obj.descripcion))
            {
                throw new ArgumentException("El descripcion no puede ser nulo o vacio");
            }

            int? id = 0;

            TipoHabitaciondbTableAdapters.TipoHabitacionTableAdapter adapter = new TipoHabitaciondbTableAdapters.TipoHabitacionTableAdapter();
            adapter.ActualizarTipoHabitacion(obj.tipoHabitacionId, obj.nombre, obj.descripcion);
        }

        public static TipoHabitacion GetTipoHabitacionById(int tipoHabitacionId)
        {
            if (tipoHabitacionId <= 0)
                throw new ArgumentException("El id del tipo de habitacion no puede ser menor o igual que cero");
            TipoHabitaciondbTableAdapters.TipoHabitacionTableAdapter adapter = new TipoHabitaciondbTableAdapters.TipoHabitacionTableAdapter();
            TipoHabitaciondb.TipoHabitacionDataTable table = adapter.GetTipoHabitacionById(tipoHabitacionId);
            TipoHabitacion obj = getTipoHabitacionFromRow(table[0]);
            return obj;
        }
    }
}