import java.util.Date;

public class factura {
	
	private int idFactura;
	private String numFactura;
	private Date fecha;
	private double totalNeto;
	private double iva;
	private double total;
	private cliente cliente;
	
	
	public factura() {}
	
	
	public factura(int idFactura, String numFactura, Date fecha, double totalNeto, double iva, double total,
			cliente cliente) {
		super();
		this.idFactura = idFactura;
		this.numFactura = numFactura;
		this.fecha = fecha;
		this.totalNeto = totalNeto;
		this.iva = iva;
		this.total = total;
		this.cliente = cliente;
	}


	public int getIdFactura() {
		return idFactura;
	}


	public void setIdFactura(int idFactura) {
		this.idFactura = idFactura;
	}


	public String getNumFactura() {
		return numFactura;
	}


	public void setNumFactura(String numFactura) {
		this.numFactura = numFactura;
	}


	public Date getFecha() {
		return fecha;
	}


	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}


	public double getTotalNeto() {
		return totalNeto;
	}


	public void setTotalNeto(double totalNeto) {
		this.totalNeto = totalNeto;
	}


	public double getIva() {
		return iva;
	}


	public void setIva(double iva) {
		this.iva = iva;
	}


	public double getTotal() {
		return total;
	}


	public void setTotal(double total) {
		this.total = total;
	}


	public cliente getCliente() {
		return cliente;
	}


	public void setCliente(cliente cliente) {
		this.cliente = cliente;
	}


	@Override
	public String toString() {
		return "factura [idFactura=" + idFactura + ", numFactura=" + numFactura + ", fecha=" + fecha + ", totalNeto="
				+ totalNeto + ", iva=" + iva + ", total=" + total + ", cliente=" + cliente + "]";
	}
		
		
}
