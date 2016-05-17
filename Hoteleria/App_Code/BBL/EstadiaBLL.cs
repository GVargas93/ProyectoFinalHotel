using BD_Hotel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BD_Hotel.BBL
{
    public class EstadiaBLL
    {
        public EstadiaBLL()
        {

           


        }
        public static List<Estadias> GetData()
        {
            EstadiadbTableAdapters.EstadiaTableAdapter adapter = new EstadiadbTableAdapters.EstadiaTableAdapter();
            Estadiadb.EstadiaDataTable table = adapter.GetData();
            List<Estadias> list = new List<Estadias>();
            foreach (var row in table)
            {
                Estadias obj = GetEstadiaFromRow(row);
                list.Add(obj);
            }
            return list;
        }

   

        public static Estadias getEstadiaById(int estadia_id)
        {
            if (estadia_id <= 0)
                throw new ArgumentException("El id de la estadia no puede ser menor o igual que cero");
            EstadiadbTableAdapters.EstadiaTableAdapter Adapter = new EstadiadbTableAdapters.EstadiaTableAdapter();
            Estadiadb.EstadiaDataTable table = Adapter.GetDataBy3(estadia_id);///Ver porq sale error//
            Estadias obj = GetEstadiaFromRow(table[0]);
            return obj;

        }




        public static void Drop_Estadias(int estadia_id)
        {
            if (estadia_id <= 0)
                throw new ArgumentException("El id de la reserva no puede ser menor o igual que cero");

            EstadiadbTableAdapters.EstadiaTableAdapter adapter = new EstadiadbTableAdapters.EstadiaTableAdapter();
            adapter.Drop_Estadia(estadia_id);
        }

        public static int Ins_Estadia(Estadias obj)
        {
            if (obj == null)
            {
                throw new ArgumentException("El objeto no puede ser nulo");
            }

            if (string.IsNullOrEmpty(obj.fechaLlegada))
            {
                throw new ArgumentException("Seleccione una fecha de llegada");
            }
            if (string.IsNullOrEmpty(obj.fechaSalida))
            {
                throw new ArgumentException("Seleccione una fecha de salida");
            }
            if (string.IsNullOrEmpty(Convert.ToString(obj.fkClienteiD)))
            {
                throw new ArgumentException("El cliente no puede ser nulo");
            }
            int? id = 0;
            EstadiadbTableAdapters.EstadiaTableAdapter adapter = new EstadiadbTableAdapters.EstadiaTableAdapter();
            adapter.Ins_Estadia(ref id, obj.fechaLlegada, obj.fechaSalida, obj.fkClienteiD);
            if (id == null || id <= 0)
                throw new Exception("la llave primaria no recorrio  bien");
            return id.Value;
        }


        public static void Upd_Estadia(Estadias obj)
        {
            if (obj == null)
            {
                throw new ArgumentException("El objeto no puede ser nulo");
            }
            if (obj.estadia_id <= 0)
            {
                throw new ArgumentException("El id de estadia no puede ser menor  o igual que a cero");
            }

            if (string.IsNullOrEmpty(obj.fechaLlegada))
            {
                throw new ArgumentException("El Nombre del cliente no puede ser nulo");
            }
            if (string.IsNullOrEmpty(obj.fechaSalida))
            {
                throw new ArgumentException("La apellido no puede ser nulo");
            }
            if (string.IsNullOrEmpty(Convert.ToString(obj.fkClienteiD)))
            {
                throw new ArgumentException("El tipo cliente no puede ser nulo");
            }
            int? id = 0;
            EstadiadbTableAdapters.EstadiaTableAdapter adapter = new EstadiadbTableAdapters.EstadiaTableAdapter();
            adapter.Upd_Estadia(ref id, obj.fechaLlegada, obj.fechaSalida, obj.fkClienteiD);

        }


        public static Estadias GetEstadiaFromRow(Estadiadb.EstadiaRow row)
        {
            Estadias obj = new Estadias()
            {
                estadia_id = row.Estadia_iD,
                fechaLlegada = row.fecha_Llegada,
                fechaSalida = row.fecha_Salida,
                fkClienteiD = row.Fk_Cliente_iD

            };
            return obj;
        }
    }
}