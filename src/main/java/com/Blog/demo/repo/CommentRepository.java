
package com.Blog.demo.repo;

import com.Blog.demo.model.Comment;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CommentRepository  extends JpaRepository<Comment, Integer>{
    
    
//    @Query 
//    public List<Comment> getAllComment(int post_id);
}
