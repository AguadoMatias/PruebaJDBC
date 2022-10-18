import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;




public class AccesoDatos {
	 
	private String  maquina     = "localhost";
	private String  usuario     = "root";
	private String  clave       = "root";
	private int puerto          = 3306;
	private String bd			= "Ajedrez";
	private String  servidor    = "";
	private Connection conexion = null;
	 
	    //
	public AccesoDatos(){
		
		this.servidor="jdbc:mysql://"+this.maquina+":"+ this.puerto+"/"+this.bd;
	 
	        //Carga el driver mysql en memoria
	    try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	        }
	    catch (ClassNotFoundException e) {
	            
				e.printStackTrace();
				System.out.println(e.getMessage());
				System.err.println("ERROR AL REGISTRAR EL DRIVER");
				
	            System.exit(0); //parar la ejecuci�n
	        }
	 
	        //Establecer la conexi�n con el servidor y almacenarla en el atributo conexion
	     try {
	            conexion = DriverManager.getConnection(this.servidor,
	                        this.usuario, this.clave);
	        } catch (SQLException e) {
	            System.err.println("ERROR AL CONECTAR CON EL SERVIDOR");
	            e.printStackTrace();
	            System.exit(0); //parar la ejecuci�n
	        }
	        System.out.println("Conectado a ajedrez");
	    }
	 
	    //Devuelve el objeto Connection que se usar� en la clase Controlador
	    public  Connection getConexion() {
	        return conexion;
	    }
	    
	    
	    


}
