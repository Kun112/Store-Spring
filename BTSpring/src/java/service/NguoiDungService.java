/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;
import DAO.NguoiDungDAO;
import entities.Nguoidung;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
/**
 *
 * @author Anh Quan
 */
public class NguoiDungService {
    
    @Autowired
    NguoiDungDAO nguoidungDAO;
    
    public Nguoidung xuatThongTinUser(String username)
    {
        return nguoidungDAO.layThongTinNguoiDung(username);
    }
    public Nguoidung login(String tendangnhap, String matkhau)
    {
        return nguoidungDAO.login(tendangnhap, matkhau);
    }
}
