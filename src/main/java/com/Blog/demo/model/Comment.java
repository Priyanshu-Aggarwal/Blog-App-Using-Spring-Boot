
package com.Blog.demo.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
@Entity
public class Comment {
    
    @Id
     @GeneratedValue(strategy =GenerationType.IDENTITY)
    private int cid;
    
    @Column(nullable = false)
    private String data;
    
    @ManyToOne(fetch = FetchType.EAGER)
    private Post post;

    public Comment() {
    }

    @Override
    public String toString() {
        return "Comment{" + "cid=" + cid + ", data=" + data + '}';
    }

    
    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    
    @JsonIgnore
    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }
    
    
}
