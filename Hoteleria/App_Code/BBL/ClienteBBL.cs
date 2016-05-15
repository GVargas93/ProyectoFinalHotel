using BD_Hotel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ClienteBBL
/// </summary>
namespace BD_Hotel.BBL
{
    public class ClienteBBL
    {
        public ClienteBBL()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static List<Clientes> GetData()
        {
            ClientedbTableAdapters.ClienteTableAdapter adapter = new ClientedbTableAdapters.ClienteTableAdapter();
            Clientedb.ClienteDataTable table = adapter.GetData();
            List<Clientes> list = new List<Clientes>();
            foreach (var row in table)
            {
                Clientes obj = GetClienteFromRow(row);
                list.Add(obj);
            }
            return list;
        }

 

        public static Clientes GetDataByCliente(int cliente_id)
        {
            if(cliente_id<=0)
                throw new ArgumentException("El id del Cliente no puede ser menor o igual que cero");
            ClientedbTableAdapters.ClienteTableAdapter Adapter = new ClientedbTableAdapters.ClienteTableAdapter();
            Clientedb.ClienteDataTable table = Adapter.GetDataByCliente(cliente_id);
            Clientes obj = GetClienteFromRow(table[0]);
            return obj;

        }




        public static void Drop_Cliente(int cliente_id)
        {
            if (cliente_id <= 0)
                throw new ArgumentException("El id del Paciente no puede ser menor o igual que cero");

            ClientedbTableAdapters.ClienteTableAdapter adapter = new ClientedbTableAdapters.ClienteTableAdapter();
            adapter.Drop_Cliente(cliente_id);
        }

        public static int Ins_Cliente(Clientes obj)
        {
            if (obj == null)
            {
                throw new ArgumentException("El objeto no puede ser nulo");
            }

            if (string.IsNullOrEmpty(obj.nombre))
            {
                throw new ArgumentException("El Nombre del cliente no puede ser nulo");
            }
            if (string.IsNullOrEmpty(obj.apellido))
            {
                throw new ArgumentException("La apellido no puede ser nulo");
            }
            if (string.IsNullOrEmpty(obj.direccion))
            {
                throw new ArgumentException("El direccion no puede ser nulo");
            }
            if (string.IsNullOrEmpty(obj.telefono))
            {
                throw new ArgumentException("El telefono no puede ser nulo");
            }
            if (string.IsNullOrEmpty(Convert.ToString(obj.tipocliente)))
            {
                throw new ArgumentException("El tipo cliente no puede ser nulo");
            }
            int? id = 0;
            ClientedbTableAdapters.ClienteTableAdapter adapter = new ClientedbTableAdapters.ClienteTableAdapter();
            adapter.Ins_Cliente(ref id, obj.nombre, obj.apellido, obj.direccion, obj.telefono, obj.tipocliente);
            if (id == null || id <= 0)
                throw new Exception("la llave primaria no recorrio  bien");
            return id.Value;
        }


        public static void Upd_Cliente(Clientes obj)
        {
            if (obj == null)
            {
                throw new ArgumentException("El objeto no puede ser nulo");
            }
            if (obj.clientes_id <= 0)
            {
                throw new ArgumentException("El id del cliente no puede ser menor  o igual que a cero");
            }

            if (string.IsNullOrEmpty(obj.nombre))
            {
                throw new ArgumentException("El Nombre del cliente no puede ser nulo");
            }
            if (string.IsNullOrEmpty(obj.apellido))
            {
                throw new ArgumentException("La apellido no puede ser nulo");
            }
            if (string.IsNullOrEmpty(obj.direccion))
            {
                throw new ArgumentException("El direccion no puede ser nulo");
            }
            if (string.IsNullOrEmpty(obj.telefono))
            {
                throw new ArgumentException("El telefono no puede ser nulo");
            }
            if (string.IsNullOrEmpty(Convert.ToString(obj.tipocliente)))
            {
                throw new ArgumentException("El tipo cliente no puede ser nulo");
            }
            int? id = 0;

            ClientedbTableAdapters.ClienteTableAdapter adapter = new ClientedbTableAdapters.ClienteTableAdapter();
            adapter.Upd_Cliente(obj.clientes_id, obj.nombre, obj.apellido, obj.direccion, obj.telefono, obj.tipocliente);


        }


        public static Clientes GetClienteFromRow(Clientedb.ClienteRow row)
        {
            Clientes obj = new Clientes()
            {
                clientes_id = row.Cliente_iD,
                nombre = row.nombre,
                apellido = row.apellido,
                direccion = row.direccion,
                telefono = row.telefono,
                tipocliente = row.Fk_TipoCliente_iD

            };
            return obj;
        }


    }
}