/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.*;
import entities.*;
import org.hibernate.*;
/**
 *
 * @author Anh Quan
 */
public class SanPhamDAO {
    private final SessionFactory sf = HibernateUtil.getSessionFactory();
    
    public  List<Sanpham> xemToanBoDanhSach()
    {
        try
        {
            sf.getCurrentSession().beginTransaction();
            return sf.getCurrentSession().createCriteria(Sanpham.class).list();           
        }catch(Exception e){
            return null;
        }
    }
    public Sanpham find(int id)
    {
        
        try{
            sf.getCurrentSession().beginTransaction();
            Object sp = sf.getCurrentSession().get(Sanpham.class, id);
            sf.getCurrentSession().getTransaction().commit();
            return (Sanpham)sp;
        }catch(Exception e)
        {
            return null;
        }
    }
    public boolean xoaSanPham(Sanpham sp)
    {
        try
        {
            sf.getCurrentSession().beginTransaction();
            sf.getCurrentSession().delete(sp);
            sf.getCurrentSession().getTransaction().commit();
            return true;
        }catch(Exception e)
        {
            sf.getCurrentSession().getTransaction().rollback();
            return false;
        }
    }
    
    public boolean themSanPham(Sanpham sp)
    {
        try
        {
            sf.getCurrentSession().beginTransaction();
            sf.getCurrentSession().save(sp);
            sf.getCurrentSession().getTransaction().commit();
            return true;
        }catch(Exception e)
        {
            sf.getCurrentSession().getTransaction().rollback();
            return false;
        }
    }
    
    
    
    public boolean suaSanPham(Sanpham sp)
    {
        try
        {
            sf.getCurrentSession().beginTransaction();
            sf.getCurrentSession().update(sp);
            sf.getCurrentSession().getTransaction().commit();
            return true;
        }catch(Exception e)
        {
            sf.getCurrentSession().getTransaction().rollback();
            return false;
        }
    }
//     public static void main(String[] args)
//    {
//        
//        System.out.println(new SanPhamDAO().xemToanBoDanhSach().size());
//    }
    
    
}
