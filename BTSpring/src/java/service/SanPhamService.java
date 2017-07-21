/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;
import DAO.SanPhamDAO;
import entities.Sanpham;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 *
 * @author Anh Quan
 */
@Component
public class SanPhamService {
    
    @Autowired
    SanPhamDAO sanphamDAO;
    
    //lấy danh sách sản phẩm
    public List<Sanpham> xemDanhSach()
    {
        return sanphamDAO.xemToanBoDanhSach();
    }
    
    public Sanpham timSanPham(int id)
    {
        return sanphamDAO.find(id);
    }
    
    public boolean themSanPham(String tensp, int giasp)
    {
        Sanpham sp = new Sanpham(tensp, giasp);
        return sanphamDAO.themSanPham(sp);
    }
    
    public boolean capNhatSanPham(int idsp, String tensp, int giasp)
    {
        Sanpham sp = new Sanpham(tensp, giasp);
        sp.setIdSanPham(idsp);
        return sanphamDAO.suaSanPham(sp);
    }
    
    public boolean xoaSanPham(int idsp)
    {
        Sanpham sp = sanphamDAO.find(idsp);
        return sanphamDAO.xoaSanPham(sp);
    }
}
