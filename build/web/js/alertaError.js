var btn = document.querySelector("input[name='btnLogin']");
var usuario = document.querySelector("input[name='user']");
var pwd = document.querySelector("input[name='pwd']");

btn.addEventListener("click", verificar);

function verificar() {

    const usuarioValor = usuario.value;
    const pwdValor = pwd.value;

    console.log(usuarioValor);
    console.log(pwdValor);

    if (usuarioValor === "" || pwdValor === "") {
        const icono = 'error';
        const tipo = 'Error';
        const msg = 'Credenciales no válidas';
        msgError(icono, tipo, msg);
    } else if (usuarioValor !== "etraining" || pwdValor !== "explorandoando2020%") {
        const icono = 'error';
        const tipo = 'Error';
        const msg = 'Usuario no registrado';
        msgError(icono, tipo, msg);
    } else {
        window.location.href = "JSP/Municipio.jsp";
    }
}
function msgError(icono, tipo, msg) {
    Swal.fire({
        icon: icono,
        title: tipo,
        width: 400,
        color: 'rgba(53, 48, 48, 0.602)',
        text: msg,
        background: 'rgba(247, 247, 247, 1)',
        confirmButtonText: 'Aceptar',
        allowEnterKey: false,
        confirmButtonColor: 'rgba(235, 103, 103, 0.8)',
        heightAuto: false
    });
}