package com.tutionmaster.fileUpload;

/**
 * Created with IntelliJ IDEA.
 * User: newair
 * Date: 7/26/14
 * Time: 4:49 PM
 * To change this template use File | Settings | File Templates.
 */
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadForm {

    private List<MultipartFile> files;

    public List<MultipartFile> getFiles() {
        return files;
    }

    public void setFiles(List<MultipartFile> files) {
        this.files = files;
    }

    //Getter and setter methods
}