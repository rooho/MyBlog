package cc.rooho.blog.web.controller;

import org.springframework.beans.factory.annotation.Value;

public class BaseController {

    @Value("${site.theme:default}")
    private String theme;

    protected String view(String view) {
        return "/" + theme + view;
    }
}
