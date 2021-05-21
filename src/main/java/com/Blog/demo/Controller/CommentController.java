
package com.Blog.demo.Controller;

import com.Blog.demo.Service.PostService;
import com.Blog.demo.model.Comment;
import com.Blog.demo.model.Post;
import com.Blog.demo.repo.CommentRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommentController {
    
    @Autowired
    CommentRepository crepo;
    @Autowired
    PostService pservice;
    
    
    //It will show the all comments 
   @GetMapping("/showComments/{PostId}")
   public String getComments(@PathVariable("PostId") int id,Model mv)
   {
        Post p=pservice.findById(id).orElse(null);
        System.out.println(p.getComment());
        List<Comment> list= p.getComment();
        if(list.size()==0)
        {
            mv.addAttribute("CommentTitle", "No Comment in this Post");
        }
        else
        {
      mv.addAttribute("comments", list);
     
      mv.addAttribute("CommentTitle", " All comments on the " +p.getTitle()+ " Post");
        }
        return "index";
        
   }

  // It will show the comment page   
   @GetMapping("/Comment/{id}")
   public String showCommentPage(Model m,@PathVariable int id)
   {
          Post p=this.pservice.findById(id).orElse(null);
       m.addAttribute("ID",p.getPid());
       return "doComment";
   }
 
   //It will Post the comments on a given ID 
   @RequestMapping(value = "/comment/{POSTID}")
   public String createComment(@PathVariable("POSTID") int id, Model m,Comment comment )
   {
        Post p=this.pservice.findById(id).orElse(null);
       Comment c=new Comment();
      c.setData(comment.getData());
       c.setPost(p);
       System.out.println(c);
      crepo.save(c);
      m.addAttribute("data","Commented!!");
        return"success";
   }
}
