package com.tutionmaster.Controllers;

/**
 * Created with IntelliJ IDEA.
 * User: newair
 * Date: 7/26/14
 * Time: 5:34 PM
 * To change this template use File | Settings | File Templates.
 */
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.tutionmaster.fileUpload.FileUploadForm;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileUploadController {

    @RequestMapping(value = "/show", method = RequestMethod.GET)
    public String displayForm() {
        return "paperFrontView";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(
            @ModelAttribute("uploadForm") FileUploadForm uploadForm,
            Model map) {
         String saveDirectory = "../papers/";
        List<MultipartFile> files = uploadForm.getFiles();

        List<String> fileNames = new ArrayList<String>();

        if(null != files && files.size() > 0) {
            for (MultipartFile multipartFile : files) {

                String fileName = multipartFile.getOriginalFilename();
                fileNames.add(fileName);
                //Handle file content - multipartFile.getInputStream()
                try {
                    multipartFile.transferTo(new File(saveDirectory + multipartFile.getOriginalFilename()));
                } catch (IOException e) {
                    e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
                }
            }
        }

        map.addAttribute("files", fileNames);
        return "fileUploadSuccess";
    }
}