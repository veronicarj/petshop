package manager;

import java.util.ArrayList;
import java.util.List;
import model.Produto;
import persistence.ProdutoDAO;

public class ManagerBean {

    private Produto produto = null;
    private List<Produto> lista;        
    private List<Produto> listaNameCod;

    public Produto getProduto() {
        return produto;
    }

    public void setProduto(Produto produto) {
        this.produto = produto;
    }

    public List<Produto> getLista() {

            lista = new ArrayList<Produto>();

            try {
                lista = new ProdutoDAO().findAll();
            } catch (Exception e) {
            }		
            return lista;
    }

    public void setLista(List<Produto> lista) {
            this.lista = lista;
    }

    public List<Produto> getListaNameCod() {
            listaNameCod = new ArrayList<Produto>();
            try {
                listaNameCod = new ProdutoDAO().findByCodeName();
            } catch (Exception e) {
            }
            return listaNameCod;
    }

    public void setListaNameCod(List<Produto> listaNameCod) {
            this.listaNameCod = listaNameCod;
    }       
}