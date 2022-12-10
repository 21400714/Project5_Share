package com.example.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;

@Controller
public class BookController {
    @Autowired
    BookDAO bookDAO;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "home";
    }

    @RequestMapping(value = "/book", method = RequestMethod.GET)
    public String home() {
        return "home";
    }

    @RequestMapping(value = "/book/list", method = RequestMethod.GET)
    public String booklist(Model model) {
        model.addAttribute("list", bookDAO.getBookList());
        return "posts";
    }

    @RequestMapping(value = "/book/add", method = RequestMethod.GET)
    public String addPost() {
        return "addpostform";
    }

    @RequestMapping(value = "/book/addok", method = RequestMethod.POST)
    public String addPostOK(HttpServletRequest request, BookVO vo) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        FileUpload upload = new FileUpload();
        vo = upload.uploadPhoto(request);
        int i = bookDAO.insertBook(vo);
        if (i == 0)
            System.out.println("데이터 추가에 실패했습니다.");
        else
            System.out.println("데이터 추가에 성공했습니다.");
        return "redirect:list";
    }

    @RequestMapping(value = "/book/editform/{id}", method = RequestMethod.GET)
    public String editPost(@PathVariable("id") int id, Model model) {
        BookVO bookVO = bookDAO.getBook(id);
        model.addAttribute("bookVO", bookVO);
        return "editform";
    }

    @RequestMapping(value = "/book/editok", method = RequestMethod.POST)
    public String editPostOK(/*HttpServletRequest request, */BookVO vo) throws UnsupportedEncodingException {
        /*
        request.setCharacterEncoding("UTF-8");
        FileUpload upload = new FileUpload();
        vo = upload.uploadPhoto(request);

         */
        int i = bookDAO.updateBook(vo);
        if (i == 0)
            System.out.println("데이터 수정에 실패했습니다.");
        else
            System.out.println("데이터 수정에 성공했습니다.");
        return "redirect:list";
    }

    @RequestMapping(value = "/book/deleteok/{id}", method = RequestMethod.GET)
    public String deletePost(HttpServletRequest request, @PathVariable("id") int id) {
        String filename = bookDAO.getPhotoFilename(id);
        if (filename != null)
            FileUpload.deleteFile(request, filename);
        int i = bookDAO.deleteBook(id);
        if (i == 0)
            System.out.println("데이터 삭제에 실패했습니다.");
        else
            System.out.println("데이터 삭제에 성공했습니다.");
        return "redirect:../list";
    }
}
