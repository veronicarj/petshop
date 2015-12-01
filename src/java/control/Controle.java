package control;

import persistence.ProdutoDAO;
import model.Produto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Controle")
public class Controle extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    public Controle() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String cmd= request.getParameter("cmd");
        if (cmd.equalsIgnoreCase("excluir")){
            excluir(request,response);
        }		
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
        String cmd = request.getParameter("cmd");
        if(cmd.equalsIgnoreCase("consulta")){
                consulta(request,response);
        }
    }    
       
    protected void excluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        Integer cod = Integer.parseInt(request.getParameter("cod"));       
        try {
            new ProdutoDAO().delete(cod);
            request.setAttribute("msg","Produto Excluído");          
        } catch (Exception e) {
            request.setAttribute("msg","Error: " + e.getMessage());
        }finally{  
            request.getRequestDispatcher("listar.jsp").forward(request, response);
        }		
    }

    protected void consulta(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Integer cod = Integer.parseInt(request.getParameter("idProduto"));
        Produto produto;
        try {
            if (cod.equals(0)){
                request.setAttribute("msg","Produto não encontrado!");
            }else{
                produto = new ProdutoDAO().findByCod(cod);
                request.setAttribute("produto", produto); 
            }
        } catch (Exception e) {
                request.setAttribute("msg","Error: " + e.getMessage());
        }finally{
            request.getRequestDispatcher("consultacodigo.jsp").forward(request, response);
        }       
    }
}