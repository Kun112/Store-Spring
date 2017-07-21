/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import entities.*;
import org.hibernate.*;

/**
 *
 * @author Anh Quan
 */
public class NguoiDungDAO {
    private final SessionFactory sf = HibernateUtil.getSessionFactory();
    
    public Nguoidung layThongTinNguoiDung(String username)
    {
        try
        {
            sf.getCurrentSession().beginTransaction();
            Object nd = sf.getCurrentSession().get(Nguoidung.class, username);
            sf.getCurrentSession().getTransaction().commit();
            return (Nguoidung)nd;
        }catch(Exception e){
            return null;
        }
        
    }    
    
    public static void main(String[] args)
    { 
        NguoiDungDAO usDAO = new NguoiDungDAO();
        
        String a = usDAO.layThongTinNguoiDung("anhquan").getMatkhau();
       
        System.out.println(a);
    }
    
    
    public Nguoidung login(String tendangnhap, String matkhau) {
    try {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction transaction = session.beginTransaction();
        Query query = session.createQuery("from nguoidung where tendangnhap = :tendangnhap and matkhau = :matkhau");
        query.setString("tendangnhap", tendangnhap);
        query.setString("matkhau", matkhau);
        Nguoidung user = (Nguoidung) query.uniqueResult();
        transaction.commit();
        return user;
    } catch (Exception e) {
        e.printStackTrace();
    }
    return null;
}    
    
}
