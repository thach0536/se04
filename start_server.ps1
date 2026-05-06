$code = @"
using System;
using System.Net;
using System.IO;
using System.Text;

public class SimpleHttpServer {
    public static void Start() {
        HttpListener listener = new HttpListener();
        listener.Prefixes.Add("http://localhost:8080/");
        listener.Start();
        Console.WriteLine("Server started at http://localhost:8080/");
        
        while (true) {
            HttpListenerContext context = listener.GetContext();
            HttpListenerRequest request = context.Request;
            HttpListenerResponse response = context.Response;
            
            string rawPath = request.RawUrl == "/" ? "/index.html" : request.RawUrl;
            string localPath = @"C:\web4" + rawPath.Replace("/", "\\");
            localPath = localPath.Split('?')[0];
            
            byte[] buffer;
            if (File.Exists(localPath)) {
                buffer = File.ReadAllBytes(localPath);
                response.StatusCode = 200;
                string ext = Path.GetExtension(localPath).ToLower();
                if (ext == ".html") response.ContentType = "text/html";
                else if (ext == ".css") response.ContentType = "text/css";
                else if (ext == ".png") response.ContentType = "image/png";
                else if (ext == ".jpg") response.ContentType = "image/jpeg";
                else if (ext == ".js") response.ContentType = "application/javascript";
            } else {
                buffer = Encoding.UTF8.GetBytes("404 Not Found");
                response.StatusCode = 404;
            }
            
            try {
                response.ContentLength64 = buffer.Length;
                Stream output = response.OutputStream;
                output.Write(buffer, 0, buffer.Length);
                output.Close();
            } catch {}
        }
    }
}
"@
Add-Type -TypeDefinition $code
[SimpleHttpServer]::Start()
