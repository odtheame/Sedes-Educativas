package Op;

import Objetos.Grupo;
import Objetos.Institucion;
import Objetos.Municipio;
import Objetos.Sede;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

public class Post {

    private final URL url;

    public Post() throws IOException {
        this.url = new URL("https://www.php.engenius.com.co/DatabaseIE.php");
    }

    public Municipio[] logearMunicipio() throws IOException {

        Login login = new Login("etraining", "explorandoando2020%", "municipios"); //JSON
        JsonArray arregloJson = traerDatos(login);
        Municipio[] municipios = new Municipio[arregloJson.size()];

        int iteradorArreglo = 0;
        for (JsonElement usuarioElement : arregloJson) {
            JsonObject usuarioObject = usuarioElement.getAsJsonObject();
            String nombre = usuarioObject.get("nombre").getAsString(); //Obtiene el valor de nombre del objeto n
            String dane = usuarioObject.get("dane").getAsString(); //Obtiene el valor de dane del objeto n
            municipios[iteradorArreglo] = new Municipio(nombre, dane); //Almacena valores en un arreglo
            iteradorArreglo++;
        }
        return municipios;
    }

    public Institucion[] logearInstitucion(String codMun) throws IOException {

        Login login = new Login("etraining", "explorandoando2020%", "instituciones", codMun, 1); //JSON
        JsonArray arregloJson = traerDatos(login);
        Institucion[] instituciones = new Institucion[arregloJson.size()];

        int iteradorArreglo = 0;
        for (JsonElement usuarioElement : arregloJson) {
            JsonObject usuarioObject = usuarioElement.getAsJsonObject();
            String nombre = usuarioObject.get("nombre").getAsString(); //Obtiene el valor de nombre del objeto n
            String dane = usuarioObject.get("dane").getAsString(); //Obtiene el valor de dane del objeto n
            instituciones[iteradorArreglo] = new Institucion(nombre, dane); //Almacena valores en un arreglo
            iteradorArreglo++;
        }

        return instituciones;
    }

    public Sede[] logearSede(String codInst) throws IOException {

        Login login = new Login("etraining", "explorandoando2020%", "sedes", codInst, 2); //JSON
        JsonArray arregloJson = traerDatos(login);
        Sede[] sedes = new Sede[arregloJson.size()];

        int iteradorArreglo = 0;
        for (JsonElement usuarioElement : arregloJson) {
            JsonObject usuarioObject = usuarioElement.getAsJsonObject();
            String nombre = usuarioObject.get("nombre").getAsString(); //Obtiene el valor de nombre del objeto n
            String dane = usuarioObject.get("dane").getAsString(); //Obtiene el valor de dane del objeto n
            sedes[iteradorArreglo] = new Sede(nombre, dane); //Almacena valores en un arreglo
            iteradorArreglo++;
        }
        return sedes;
    }

    public Grupo[] logearGrupo(String codSede) throws IOException {

        Login login = new Login("etraining", "explorandoando2020%", "grupos", codSede, 3); //JSON
        JsonArray arregloJson = traerDatos(login);
        Grupo[] grupos = new Grupo[arregloJson.size()];

        int iteradorArreglo = 0;
        for (JsonElement usuarioElement : arregloJson) {
            JsonObject usuarioObject = usuarioElement.getAsJsonObject();
            String id = usuarioObject.get("id").getAsString(); //Obtiene el valor de nombre del objeto n
            String nombre = usuarioObject.get("nombre").getAsString(); //Obtiene el valor de nombre del objeto n
            String numGrupo = usuarioObject.get("numGrupo").getAsString(); //Obtiene el valor de dane del objeto n
            grupos[iteradorArreglo] = new Grupo(id, nombre, numGrupo); //Almacena valores en un arreglo
            iteradorArreglo++;
        }
        return grupos;
    }

    public Grupo[] logearGrupoDetalle(String codGrupo) throws IOException {

        Login login = new Login("etraining", "explorandoando2020%", "infoGrupo", codGrupo, 4); //JSON
        JsonArray arregloJson = traerDatos(login);
        Grupo[] grupoDetalle = new Grupo[arregloJson.size()];

        int iteradorArreglo = 0;
        for (JsonElement usuarioElement : arregloJson) {
            JsonObject usuarioObject = usuarioElement.getAsJsonObject();
            String id = usuarioObject.get("id").getAsString(); //Obtiene el valor de nombre del objeto n
            String nombre = usuarioObject.get("nombre").getAsString(); //Obtiene el valor de nombre del objeto n
            String sede = usuarioObject.get("sede").getAsString(); //Obtiene el valor de dane del objeto n
            String institucion = usuarioObject.get("institución").getAsString(); //Obtiene el valor de dane del objeto n
            String municipio = usuarioObject.get("municipio").getAsString(); //Obtiene el valor de dane del objeto n
            String numGrupo = usuarioObject.get("numGrupo").getAsString(); //Obtiene el valor de dane del objeto n
            grupoDetalle[iteradorArreglo] = new Grupo(id, nombre, numGrupo); //Almacena valores en un arreglo
            iteradorArreglo++;
        }
        return grupoDetalle;
    }

    public JsonArray traerDatos(Login login) throws IOException {
        Gson gson = new Gson();
        String json = gson.toJson(login); //Json a String

        // Petición POST
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setRequestMethod("POST");
        connection.setRequestProperty("Content-Type", "application/json");
        connection.setDoOutput(true);

        // Solicitar info
        OutputStream os = connection.getOutputStream();
        os.write(json.getBytes());
        os.flush();
        os.close();

        //Se traen los datos y se leen
        BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream()));
        StringBuilder sb = new StringBuilder();
        String lineaData;
        while ((lineaData = br.readLine()) != null) {
            sb.append(lineaData.trim());
        }
        String data = sb.toString();

        JsonObject jsonObjetoJava = gson.fromJson(data, JsonObject.class);

        JsonArray arregloJson = jsonObjetoJava.getAsJsonArray("data"); //Obtener info de data como arreglo

        /*for (Institucion institucion : instituciones) {
            System.out.println(institucion.getNombre() + " " + institucion.getDane());}
        }*/
        return arregloJson;
    }
}
