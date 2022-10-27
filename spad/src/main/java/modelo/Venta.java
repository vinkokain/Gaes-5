package modelo;

public class Venta {
    private int id;
    private int docUsu;
    private int idP;
    private String nombreP;
    private int cant;
    private String fechaV;
    private int precioProV;
    private int precT;

    public Venta() {
    }

    public Venta(int id) {
        this.id = id;
    }

    public Venta(int docUsu, int idP, String nombreP, int cant, String fechaV, int precioProV, int precT) {
        this.docUsu = docUsu;
        this.idP = idP;
        this.nombreP = nombreP;
        this.cant = cant;
        this.fechaV = fechaV;
        this.precioProV = precioProV;
        this.precT = precT;
    }

    public Venta(int id, int docUsu, int idP, String nombreP, int cant, String fechaV, int precioProV, int precT) {
        this.id = id;
        this.docUsu = docUsu;
        this.idP = idP;
        this.nombreP = nombreP;
        this.cant = cant;
        this.fechaV = fechaV;
        this.precioProV = precioProV;
        this.precT = precT;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDocUsu() {
        return docUsu;
    }

    public void setDocUsu(int docUsu) {
        this.docUsu = docUsu;
    }

    
    public int getIdP() {
        return idP;
    }

    public void setIdP(int idP) {
        this.idP = idP;
    }

    public String getNombreP() {
        return nombreP;
    }

    public void setNombreP(String nombreP) {
        this.nombreP = nombreP;
    }

    public int getCant() {
        return cant;
    }

    public void setCant(int cant) {
        this.cant = cant;
    }

    public String getFechaV() {
        return fechaV;
    }

    public void setFechaV(String fechaV) {
        this.fechaV = fechaV;
    }

    public int getPrecioProV() {
        return precioProV;
    }

    public void setPrecioProV(int precioProV) {
        this.precioProV = precioProV;
    }

    public int getPrecT() {
        return precT;
    }

    public void setPrecT(int precT) {
        this.precT = precT;
    }
    
    
}
