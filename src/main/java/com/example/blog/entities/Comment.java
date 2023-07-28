package com.example.blog.entities;

import jakarta.persistence.*;

import java.time.Instant;

@Entity
@Table(name = "comment")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;
    @ManyToOne
    @JoinColumn(name = "post_id")
    private Post post;
    @Column(name = "data")
    private Instant data;
    @Column(name = "text")
    private String text;
    @ManyToOne
    @JoinColumn(name = "commentator_id")
    private User commentator;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }
}