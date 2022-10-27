package modelo;

public class Producto {
   private int idPro;
   private String nombrePro;
   private String descripcionPro;
   private String marcaPro;
   private int precioPro;
   private int cantPro;
   private int idCategoriaPro;
   private String categoriaProNombre;

    public Producto() {
    }

    public Producto(int idPro) {
        this.idPro = idPro;
    }

    public Producto(String nombrePro, String descripcionPro, String marcaPro, int precioPro, int cantPro, int idCategoriaPro,
            String categoriaProNombre) {
        this.nombrePro = nombrePro;
        this.descripcionPro = descripcionPro;
        this.marcaPro = marcaPro;
        this.precioPro = precioPro;
        this.cantPro = cantPro;
        this.idCategoriaPro = idCategoriaPro;
        this.categoriaProNombre = categoriaProNombre;
    }

    public Producto(int idPro, String nombrePro, String descripcionPro, String marcaPro, int precioPro, int cantPro, int idCategoriaPro) {
        this.idPro = idPro;
        this.nombrePro = nombrePro;
        this.descripcionPro = descripcionPro;
        this.marcaPro = marcaPro;
        this.precioPro = precioPro;
        this.cantPro = cantPro;
        this.idCategoriaPro = idCategoriaPro;
    }

    public int getIdPro() {
        return idPro;
    }


    public void setIdPro(int idPro) {
        this.idPro = idPro;
    }


    public String getNombrePro() {
        return nombrePro;
    }

    public void setNombrePro(String nombrePro) {
        this.nombrePro = nombrePro;
    }

    public String getDescripcionPro() {
        return descripcionPro;
    }

    public void setDescripcionPro(String descripcionPro) {
        this.descripcionPro = descripcionPro;
    }

    public String getMarcaPro() {
        return marcaPro;
    }

    public void setMarcaPro(String marcaPro) {
        this.marcaPro = marcaPro;
    }

    public int getPrecioPro() {
        return precioPro;
    }

    public void setPrecioPro(int precioPro) {
        this.precioPro = precioPro;
    }

    public int getCantPro() {
        return cantPro;
    }

    public void setCantPro(int cantPro) {
        this.cantPro = cantPro;
    }

    public int getIdCategoriaPro() {
        return idCategoriaPro;
    }

    public void setIdCategoriaPro(int idCategoriaPro) {
        this.idCategoriaPro = idCategoriaPro;
    }

    public String getCategoriaProNombre() {
        return categoriaProNombre;
    }

    public void setCategoriaProNombre(String categoriaProNombre) {
        this.categoriaProNombre = categoriaProNombre;
    }
   
   
}
