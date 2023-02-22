package Op;

public class Login {

    private String User;
    private String Password;
    private String option;
    private String CodMun;
    private String CodInst;
    private String CodSede;
    private String IdGrupo;

    public Login(String username, String password, String option) {
        this.User = username;
        this.Password = password;
        this.option = option;
    }

    public Login(String username, String password, String option, String codNum, int opc) {
        this.User = username;
        this.Password = password;
        this.option = option;
        switch (opc) {
            case 1:
                this.CodMun = codNum;
                break;
            case 2:
                this.CodInst = codNum;
                break;
            case 3:
                this.CodSede = codNum;
                break;
            case 4:
                this.IdGrupo = codNum;
                break;
            default:

                break;
        }
    }
}
