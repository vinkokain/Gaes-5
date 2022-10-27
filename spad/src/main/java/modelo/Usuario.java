package modelo;

public class Usuario {
    
   private int docUsu;
   private String tipoDocUsu;
   private String nombreUsu;
   private String apellidoUsu;
   private String telUnoUsu;
   private String telDosUsu;
   private String correoUsu;
   private String sexoUsu;
   private String rolUsu;
   private String claveUsu;

    public Usuario() {
    }

    public Usuario(int docUsu) {
        this.docUsu = docUsu;
    }

    public Usuario(String tipoDocUsu) {
        this.tipoDocUsu = tipoDocUsu;
    }

    public Usuario(String tipoDocUsu, String nombreUsu, String apellidoUsu, String telUnoUsu, String telDosUsu, String correoUsu, String sexoUsu, String rolUsu, String claveUsu) {
        this.tipoDocUsu = tipoDocUsu;
        this.nombreUsu = nombreUsu;
        this.apellidoUsu = apellidoUsu;
        this.telUnoUsu = telUnoUsu;
        this.telDosUsu = telDosUsu;
        this.correoUsu = correoUsu;
        this.sexoUsu = sexoUsu;
        this.rolUsu = rolUsu;
        this.claveUsu = claveUsu;
    }

    
    
    public Usuario(int docUsu, String tipoDocUsu, String nombreUsu, String apellidoUsu, String telUnoUsu, String telDosUsu, String correoUsu, String sexoUsu, String rolUsu, String claveUsu) {
        this.docUsu = docUsu;
        this.tipoDocUsu = tipoDocUsu;
        this.nombreUsu = nombreUsu;
        this.apellidoUsu = apellidoUsu;
        this.telUnoUsu = telUnoUsu;
        this.telDosUsu = telDosUsu;
        this.correoUsu = correoUsu;
        this.sexoUsu = sexoUsu;
        this.rolUsu = rolUsu;
        this.claveUsu = claveUsu;
    }

    public int getDocUsu() {
        return docUsu;
    }

    public void setDocUsu(int docUsu) {
        this.docUsu = docUsu;
    }

    public String getTipoDocUsu() {
        return tipoDocUsu;
    }

    public void setTipoDocUsu(String tipoDocUsu) {
        this.tipoDocUsu = tipoDocUsu;
    }

    public String getNombreUsu() {
        return nombreUsu;
    }

    public void setNombreUsu(String nombreUsu) {
        this.nombreUsu = nombreUsu;
    }

    public String getApellidoUsu() {
        return apellidoUsu;
    }

    public void setApellidoUsu(String apellidoUsu) {
        this.apellidoUsu = apellidoUsu;
    }

    public String getTelUnoUsu() {
        return telUnoUsu;
    }

    public void setTelUnoUsu(String telUnoUsu) {
        this.telUnoUsu = telUnoUsu;
    }

    public String getTelDosUsu() {
        return telDosUsu;
    }

    public void setTelDosUsu(String telDosUsu) {
        this.telDosUsu = telDosUsu;
    }

    public String getCorreoUsu() {
        return correoUsu;
    }

    public void setCorreoUsu(String correoUsu) {
        this.correoUsu = correoUsu;
    }

    public String getSexoUsu() {
        return sexoUsu;
    }

    public void setSexoUsu(String sexoUsu) {
        this.sexoUsu = sexoUsu;
    }

    public String getRolUsu() {
        return rolUsu;
    }

    public void setRolUsu(String rolUsu) {
        this.rolUsu = rolUsu;
    }

    public String getClaveUsu() {
        return claveUsu;
    }

    public void setClaveUsu(String claveUsu) {
        this.claveUsu = claveUsu;
    }
   
   
 

}
