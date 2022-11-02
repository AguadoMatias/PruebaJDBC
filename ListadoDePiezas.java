
import java.awt.Color;
import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.ListSelectionModel;
import javax.swing.table.DefaultTableModel;


public class ListadoDePiezas extends JFrame implements ActionListener, MouseListener, ItemListener{

	private JPanel contentPane;
	private JTable table;
	DefaultTableModel modelo;
	private JScrollPane scrollPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ListadoDePiezas frame = new ListadoDePiezas();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public ListadoDePiezas() {

	
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 800, 412);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPane.setLayout(null);		
		setContentPane(contentPane);
		
		modelo = new DefaultTableModel(	new Object[][] {,},	new String[] {			
			"TIPO PIEZA", 
			"DESCRICION PIEZA", 
			"COLOR",
			"MATERIAL",
			"POSICION",
			"CAPACIDAD DESPLAZAMIENTO",
			"CONDUCTA",
			"VELOCIDAD",
			"CAPACIDAD ATAQUE",
			"FECHA CREACION"}		)
		{
			public boolean isCellEditable(int row, int column)
		    {
		      return true;//Esta sentencia hace que todas las celdas no permitan edicion
		    }
		};
		
		scrollPane = new JScrollPane();
		scrollPane.setBounds(10, 11, 640, 282);
		contentPane.add(scrollPane);
		
		table = new JTable();
		scrollPane.setViewportView(table);
		table.setShowVerticalLines(false);
		table.setFocusable(true);
		table.setRowSelectionAllowed(true);
		table.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
		table.setBackground(Color.WHITE);
		table.setModel(modelo);

		
		JButton btnSalir = new JButton("Salir");
		btnSalir.setBounds(267, 318, 89, 23);
		contentPane.add(btnSalir);		
		
		
		btnSalir.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent elevento ) {
				// Implementa el evento para el boton Salir
				if (elevento.getSource() == btnSalir) System.exit(0);			
				
				}			
			});
		
	    table.addMouseListener(this);
	    cargarGrillaPiezas();
	}
	
	
	protected void cargarGrillaPiezas()
	{
		AccesoDatos accesoBD = null;
    	Connection con = null;
    	PreparedStatement sentencia = null;
		ResultSet rs = null;
		
		this.modelo.setRowCount(0);
		Object detalle[] = new Object[9];

				String query = "SELECT " 
		+ "IDPIEZA, "
		+ "TP.DESCRIPCIONDEPIEZA as TIPOPIEZA, "		
		+ "C.DESCRIPCION as COLOR,"
		+ "M.DESCRIPCION AS MATERIAL,"
		+ "P.POSICION,"
		+ "P.CAPACIDAD_DESPLAZAMIENTO,"
		+ "P.CONDUCTA,"
		+ "P.VELOCIDAD,"
		+ "P.CAPACIDAD_ATAQUE,"
		+ "P.FECHA_CREACION "
		+ "FROM PIEZA AS P "
		+ "INNER JOIN COLOR AS C ON C.IDCOLOR = P.IDCOLOR "
		+ "INNER JOIN TAMANIO AS T ON T.IDTAMANIO = P.IDTAMANIO "
		+ "INNER JOIN MATERIAL AS M ON M.IDMATERIAL = P.IDMATERIAL "
		+ "INNER JOIN TIPOPIEZA AS TP ON TP.IDTIPOPIEZA = P.IDTIPOPIEZA;";
        //Cargar datos en la tabla
        try {
        	// Instancio un objeto de acceso a datos
        	accesoBD = new AccesoDatos();
            //Preparar la llamada
            con = accesoBD.getConexion();
            sentencia = con.prepareStatement(query);
            
            //Ejecuta la consulta y procesa el resultado
            rs  = sentencia.executeQuery();
            // Procesa el resultSet y agrega los registros al ArrayList detalleListaPrecio que contendra la informacion obtenida desde la BD
            while(rs.next()){
            			detalle[0] = String.valueOf(rs.getInt("IDPIEZA"));
            			detalle[1] = rs.getString("TIPOPIEZA");
						detalle[2] = rs.getString("COLOR");
						detalle[3] = rs.getString("MATERIAL");
						detalle[4] = rs.getString("POSICION");
						detalle[5] = rs.getString("CAPACIDAD_DESPLAZAMIENTO");
						detalle[6] = rs.getString("CONDUCTA");
						detalle[7] = rs.getString("VELOCIDAD");
						detalle[8] = rs.getString("CAPACIDAD_ATAQUE");
            			            			
            			this.modelo.addRow(detalle);
            			           			
            }
            this.table.updateUI();
        } catch (SQLException e) {
			e.printStackTrace();
            System.err.println("Error al CARGAR DATOS");
        }
       finally
        {
        	try
        	{
        		// Cierra el ResultSet
        		if (rs!= null) rs.close();
        		// Cierra la sentencia
        		if (sentencia!= null) sentencia.close();
        		// Cierra la conexion
        		if (con != null) con.close();
        		
        	}catch (SQLException e)
        	{
        		System.err.println("Error al cerrar conexion");
        	}
        }
	}

	@Override
	public void itemStateChanged(ItemEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseClicked(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseEntered(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseExited(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mousePressed(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void mouseReleased(MouseEvent arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void actionPerformed(ActionEvent arg0) {
		// TODO Auto-generated method stub
		
	}
}
