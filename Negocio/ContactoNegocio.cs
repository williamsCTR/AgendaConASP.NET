using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;

namespace Negocio
{
    public class ContactoNegocio
    {
        public void agregar(Contacto nuevo)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("insert into contacto values (@nombre, @numero, @email)");
                datos.setearParametro("@nombre", nuevo.nombre);
                datos.setearParametro("@numero", nuevo.numero);
                datos.setearParametro("@email", nuevo.email);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }

        public void elimnar(int id)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("delete from contacto where idContacto=@id;");
                datos.setearParametro("@id", id);
                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }

        public List<Contacto> listar()
        {
            List<Contacto> lista = new List<Contacto>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("select * from contacto;");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Contacto aux = new Contacto();
                    aux.id = (int)datos.Lector["idContacto"];
                    aux.nombre = (string)datos.Lector["nombre"];
                    aux.numero = (string)datos.Lector["numero"];
                    aux.email = (string)datos.Lector["email"];

                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }

}