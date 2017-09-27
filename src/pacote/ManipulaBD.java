package pacote;


import java.sql.ResultSet;
import java.util.HashSet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class ManipulaBD {
	public static synchronized boolean addFilme(Filme filme) {
		try {
			ConexaoBD a = new ConexaoBD();
			a.iniciaBd();
			Connection c = a.getConexao();
			PreparedStatement ps = (PreparedStatement) c.prepareStatement("INSERT INTO filmes (nome, ano, genero, sinopse) Values (?,?,?,?)");
			ps.setString(1, filme.nome);
			ps.setString(2, filme.ano);
			ps.setString(3, filme.genero);
			ps.setString(4, filme.sinopse);

			ps.executeUpdate();
			ps.close();
			c.close();
			a.fechaBd();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public static synchronized boolean logar(String login, String senha) {
		try {
			
			ConexaoBD a = new ConexaoBD();
			a.iniciaBd();
			Connection c = a.getConexao();
			ResultSet rs = null;
			PreparedStatement ps = (PreparedStatement)	c.prepareStatement("SELECT login, senha FROM usuarios WHERE login=? AND senha=?");
			ps.setString(1, login);
			ps.setString(2, senha);
			rs = ps.executeQuery();
			if (rs.next()) {
			String tempLogin = rs.getString(1);
			String tempSenha = rs.getString(2);

			ps.close();
			c.close();
			a.fechaBd();
			return true;
			}
			else{
			
				ps.close();
				c.close();
				a.fechaBd();
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public static synchronized HashSet<Filme> pegaFilmes() {
		HashSet<Filme> arr = new HashSet();
		try {
			
			ConexaoBD a = new ConexaoBD();
			a.iniciaBd();
			Connection c = a.getConexao();
			ResultSet rs = null;
			PreparedStatement ps = (PreparedStatement)	c.prepareStatement("SELECT * FROM filmes");
			rs = ps.executeQuery();
	
			
				
			while (rs.next()){
	
			Filme filme = new Filme(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5));
			arr.add(filme);
	
			if(rs.isLast()){
				ps.close();
				c.close();
				a.fechaBd();
				return arr;
			}
			}
			
			
			
	
				ps.close();
				c.close();
				a.fechaBd();
				return arr;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return arr;
		}
	}
}
