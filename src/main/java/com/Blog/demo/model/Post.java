
package com.Blog.demo.model;

import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
public class Post {

    @Id
    @GeneratedValue(strategy =GenerationType.IDENTITY)
    private int pid;
    
     
    @NotEmpty
    @Column(nullable = false)
    private String title;
    
    @Column(length = 1337,nullable = false)
    @NotEmpty
    private String content;
    
    @OneToMany(mappedBy = "post" ,cascade = CascadeType.ALL)
    private List<Comment> comment;

    public Post() {
    }

    @Override
    public String toString() {
        return "Post{" + "pid=" + pid + ", title=" + title + ", content=" + content + '}';
    }

    
    public Post(int pid, String title, String content) {
        this.pid = pid;
        this.title = title;
        this.content = content;
    }

    
    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public List<Comment> getComment() {
        return comment;
    }

    public void setComment(List<Comment> comment) {
        this.comment = comment;
    }
    
    
}
