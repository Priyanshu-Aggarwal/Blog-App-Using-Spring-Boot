
package com.Blog.demo.Service;

import com.Blog.demo.model.Post;
import com.Blog.demo.repo.PostRepository;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostService {
    
    @Autowired
    PostRepository prepo;
    
    public List<Post> findAll()
    {
      return prepo.findAll();
    }
    
    public Optional<Post> findById(int id) {
        return prepo.findById(id);
    }

    public Post savePost(Post p) {
        return prepo.saveAndFlush(p);
    }

    
   
    public Post updatePost(int id, Post p) {
        Post newData = prepo.findById(id).orElse(null);
       // newData.setPid(p.getPid());
        newData.setTitle(p.getTitle());
        newData.setContent(p.getContent());
        return prepo.save(newData);
    }

    public void deleteById(int id) {
        prepo.deleteById(id);
    }

}
