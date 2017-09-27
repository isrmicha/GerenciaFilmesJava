package model;

import java.sql.ResultSet;


import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import objeto.Filme;

public class ManipulaBD {
	public static synchronized boolean addCompra(Filme filme) {
		try {
			ConexaoBD a = new ConexaoBD();
			a.iniciaBd();
			Connection c = a.getConexao();
			PreparedStatement ps = (PreparedStatement) c.prepareStatement("INSERT INTO filmes (nome, ano, genero, sinopse) Values (?,?,?,?)");
			ps.setString(1, filme.getNome());
			ps.setString(2, filme.getAno());
			ps.setString(3, filme.getGenero());
			ps.setString(4, filme.getSinopse());

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
			System.out.println(tempLogin);
			System.out.println(tempSenha);
			ps.close();
			c.close();
			a.fechaBd();
			return true;
			}
			else{
				System.out.println("Usuário não encontrado.");
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
}
