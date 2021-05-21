package com.Blog.demo.Controller;

import com.Blog.demo.Service.PostService;
import com.Blog.demo.model.Post;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @Autowired
    PostService service;

    //It will show the All Posts 
    @GetMapping("/All-Post")
    public String getAll(Model model) {
        List<Post> posts = service.findAll();
        model.addAttribute("Posts", posts);

        return "index";
    }

    //It will show the AddPost form
    @GetMapping("/showForm")
    public String showAddForm() {
        return "AddPost";
    }

    //It will add the data
    @RequestMapping(value = "/addPost", method = {RequestMethod.POST, RequestMethod.GET})
    public String Add(  @ModelAttribute("Posts") Post post,Model m) {
        service.savePost(post);
        m.addAttribute("data","Saved!!");
        return "success";
         
    }
    
    //It will show the update form 

     @GetMapping("/update/{id}")
   public String showCommentPage(Model m,@PathVariable int id)
   {
          Post p=this.service.findById(id).orElse(null);
          m.addAttribute("ID", p.getPid());
          m.addAttribute("Title", p.getTitle());
          m.addAttribute("Content", p.getContent());
          return "updateForm";
   }
 
    //It will update the data
    @RequestMapping(value = "/update-post/{id}", method = {RequestMethod.POST, RequestMethod.GET})
    public String updatePost(@PathVariable int id, @ModelAttribute Post p, Model m) {
        Post post = this.service.findById(id).orElse(null);

         m.addAttribute("Post", post);
        System.out.println(post);
       service.updatePost(id, p);
         System.out.println(post);
            m.addAttribute("data","Updated!!");
         return "success";

    }

    //It will delete the data
    @RequestMapping(value = "/delete-post/{id}")
    public String deleteContact(@PathVariable int id, ModelMap mv) {
        service.deleteById(id);
        mv.addAttribute("msg", "delete successfull");
        return "redirect:/All-Post";
    }
}
