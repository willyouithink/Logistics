package com.uu.manager.utils;

import java.io.Serializable;

/**
 * Created by aqiang on 2018/6/6.
 */

public class FastDFSFile implements Serializable {

    private static final long serialVersionUID = 2637755431406080379L;
    /**
     * 文件二进制
     */
    private byte[] content;
    /**
     * 文件名称
     */
    private String name;
    /**
     * 文件长度
     */
    private Long size;

    public FastDFSFile(){

    }
    public FastDFSFile(byte[] content, String name, Long size){
        this.content = content;
        this.name = name;
        this.size = size;
    }

    public byte[] getContent() {
        return content;
    }
    public void setContent(byte[] content) {
        this.content = content;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public Long getSize() {
        return size;
    }
    public void setSize(Long size) {
        this.size = size;
    }
    public static long getSerialversionuid() {
        return serialVersionUID;
    }
}

