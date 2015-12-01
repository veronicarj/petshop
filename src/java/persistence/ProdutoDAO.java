package persistence;
import model.Produto;
import java.util.ArrayList;
import java.util.List;

public class ProdutoDAO extends Dao{
    
    public void delete(int id) throws Exception{		
        open();
            stmt = con.prepareStatement("delete from produtos where idProduto = ? ");           
            stmt.setInt(1, id);
            stmt.execute();           
            stmt.close();
        close();	
    }

    public List<Produto> findAll() throws Exception {
        open();
            stmt = con.prepareStatement("select * from produtos");
            rs = stmt.executeQuery();
            List<Produto> lista = new ArrayList<Produto>();
            while (rs.next()) {
                Produto p = new Produto();
                p.setIdProduto(rs.getInt("idProduto"));
                p.setNome(rs.getString("nome"));
                p.setCodigo(rs.getString("codigo"));
                p.setDescricao(rs.getString("descricao"));
                p.setPreco(rs.getDouble("preco"));
                p.setFoto(rs.getString("foto"));                
                p.setCategoria(rs.getInt("categoria"));
                lista.add(p);
            }
        close();
        return lista;
    }

    public Produto findByCod(int id) throws Exception {
        open();
            Produto p = null;        
            stmt = con.prepareStatement("select * from produtos where idProduto = ?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            if (rs.next()) {
                p = new Produto();
                p.setIdProduto(rs.getInt("idProduto"));
                p.setNome(rs.getString("nome"));
                p.setCodigo(rs.getString("codigo"));
                p.setDescricao(rs.getString("descricao"));
                p.setPreco(rs.getDouble("preco"));
                p.setFoto(rs.getString("foto"));                
                p.setCategoria(rs.getInt("categoria"));
            }
            close();
        return p;
    }
    
    public List<Produto> findByCodeName() throws Exception{			
        open();
        List<Produto> lista = new ArrayList<Produto>();
        stmt = con.prepareStatement("select idProduto,codigo from produtos");
        rs = stmt.executeQuery();

        while (rs.next()) {
            Produto p = new Produto();
            p.setIdProduto(rs.getInt("idProduto"));
            p.setCodigo(rs.getString("codigo"));
            lista.add(p);
        }
        close();
        return lista;	
    }    
}
