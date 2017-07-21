/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import entities.Nguoidung;
import entities.Sanpham;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.SessionAttributes;
import service.NguoiDungService;
import service.SanPhamService;

/**
 *
 * @author Anh Quan
 */
@Controller
@RequestMapping(value = "/total")
@SessionAttributes

public class MyController {

    @Autowired
    SanPhamService sanphamService;
    @Autowired
    NguoiDungService nguoidungService;

//    @Autowired
//    NguoiDungService nguoidungService;
    @RequestMapping(value = "/listManager")
    public String xemDanhSach1(ModelMap mm) {
        mm.put("listSanPham", sanphamService.xemDanhSach());
        return "pages/product";
    }

    @RequestMapping(value = "/listUser")
    public String xemDanhSach2(ModelMap mm) {
        mm.put("listSanPham", sanphamService.xemDanhSach());
        return "pages/HomeUser";
    }

    @RequestMapping(value = "/find")
    public String timSP(ModelMap mm, @RequestParam int id) {
        mm.put("tenSanPham", sanphamService.timSanPham(id));
        return "pages/product";
    }

    @RequestMapping(value = "/add")
    public String themSP(ModelMap mm) {
        mm.put("sp", new Sanpham());
        return "pages/addsp";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String themSP(ModelMap mm, @RequestParam("tensp") String tensp, @RequestParam("giasp") int giasp) {
        mm.put("themSP", sanphamService.themSanPham(tensp, giasp));
        return "redirect:/total/add";
    }

    @RequestMapping(value = "/update")
    public String updateSP(ModelMap mm, @RequestParam("idsp") int idsp) {
        mm.put("timSP", sanphamService.timSanPham(idsp));
        Sanpham sp = sanphamService.timSanPham(idsp);
        mm.put("sp", sp);
        return "pages/suasp";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String updateSP(ModelMap mm, @RequestParam("idsp") int idsp, @RequestParam("tensp") String tensp, @RequestParam("giasp") int giasp) {
        boolean check = true;
        mm.put("timSP", sanphamService.capNhatSanPham(idsp, tensp, giasp));
        check = sanphamService.capNhatSanPham(idsp, tensp, giasp);
        return "redirect:/total/listManager";
    }

    @RequestMapping(value = "/delete")
    public String xoaSP(ModelMap mm, @RequestParam("idArray") ArrayList<Integer> idArray) {
        for (int i = 0; i < idArray.size(); i++) {
            this.sanphamService.xoaSanPham(idArray.get(i));
        }
        return "redirect:/total/listManager";
    }

    @RequestMapping(value = "/thongtin")
    public String xemInfo(ModelMap mm) {
        return "pages/xemthongtin";
    }

    @RequestMapping(value = "/checklogin")
    public String login(ModelMap mm) {
        mm.put("user", new Nguoidung());
        return "pages/login";
    }
    
    @RequestMapping(value = "/checklogin", method = RequestMethod.POST)
    public String login(@ModelAttribute(value = "user") Nguoidung user,ModelMap mm, HttpSession session, @RequestParam("username")String username, @RequestParam("pass")String pass)
    {
        if(username.equals("anhquan") && pass.equals("123"))
        {
             return "redirect:/total/listManager";
        }
        if(username.equals("nhatvu") && pass.equals("123"))
        {
             session.setAttribute("hoTen", "Nguyen Ha Nhat Vu");
             session.setAttribute("phanquyen", "2");
             session.setAttribute("username", username);
             session.setAttribute("password", pass);
             return "redirect:/total/listUser";
        }
        mm.put("msg", "Sai tên đăng nhập hoặc mật khẩu, vui lòng nhập lại!");
        return "pages/login";
    }
    
       
}
