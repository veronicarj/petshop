package model;

public class Produto {

    private int idProduto;
    private String nome;
    private String codigo;
    private String descricao;
    private double preco;
    private String foto;
    private int categoria;
    
    public Produto() {
    }

    public Produto(String nome, String codigo, String desc, double preco, String foto, int categoria) {
        this.nome = nome;
        this.codigo = codigo;
        this.descricao = desc;
        this.preco = preco;
        this.foto = foto;
        this.categoria = categoria;
    }

    public Produto(int idProduto, String nome, String codigo, String descricao, double preco, String foto, int categoria) {
        this.idProduto = idProduto;
        this.nome = nome;
        this.codigo = codigo;
        this.descricao = descricao;
        this.preco = preco;
        this.foto = foto;
        this.categoria = categoria;
    }
    
    @Override
    public String toString() {
        return "ID: " + idProduto + 
               "Nome: " + nome + 
               "Código=" + codigo + 
               "Descrição:" + descricao + 
               "Preco: " + preco + 
               "Foto: " + foto + 
               "Categoria: " + categoria;
    }   

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }    
    
    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public int getCategoria() {
        return categoria;
    }

    public void setCategoria(int categoria) {
        this.categoria = categoria;
    }

    public void setInt(int aInt) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}