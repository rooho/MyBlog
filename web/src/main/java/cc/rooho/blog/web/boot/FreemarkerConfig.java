package cc.rooho.blog.web.boot;

import freemarker.template.Configuration;
import freemarker.template.TemplateModelException;
import org.springframework.context.ApplicationContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component
public class FreemarkerConfig {
    @Autowired
    private Configuration configuration;
    @Autowired
    private ApplicationContext applicationContext;

    @PostConstruct
    public void setSharedVariable() throws TemplateModelException {
//        configuration.setSharedVariable("author_contents", applicationContext.getBean(AuthorContentsDirective.class));
//        configuration.setSharedVariable("channel", applicationContext.getBean(ChannelDirective.class));
        configuration.setSharedVariable("contents", applicationContext.getBean(ContentsDirective.class));
//        configuration.setSharedVariable("num", applicationContext.getBean(NumberDirective.class));
//        configuration.setSharedVariable("resource", applicationContext.getBean(ResourceDirective.class));
//        configuration.setSharedVariable("menus", applicationContext.getBean(MenusDirective.class));
//        configuration.setSharedVariable("banner", applicationContext.getBean(BannerDirective.class));
//
//        configuration.setSharedVariable("timeAgo", new TimeAgoMethod());
//        configuration.setSharedVariable("shiro", new ShiroTags());
    }
}


