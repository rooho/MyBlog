<#include "/default/utils/ui.ftl"/>
<#--<#include "/templates/default/utils/ui.ftl"/>-->
<#assign topId = 1 />

<@layout>
<!-- top -->
<div class="row">
    <@contents channelId=topId size=8>
        <#list results.content as row>
            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                <div class="block">
                    <a class="block-thumbnail" href="${base}/view/${row.id}">
                        <div class="thumbnail-overlay"></div>
                        <span class="button-zoom">
                            <img src="${base}/dist/images/image-overlay-view-icon.png">
                        </span>

                        <#if row.thumbnail??>
                            <img src="${base + row.thumbnail}">
                        <#else>
                            <img src="${base}/dist/images/spinner-overlay.png">
                        </#if>
                    </a>

                    <div class="block-contents">
                        <p class="tit">${row.title?html}
                        </p>
                    </div>
                </div>
            </div>
        </#list>
    </@contents>
</div>
<!-- top/end -->

<!-- latest contents -->
<div class="panel panel-default list-panel home-topic-list">
    <div class="panel-heading">
        <h3 class="panel-title text-center">最近更新</h3>
    </div>

    <div class="panel-body ">
        <@contents size=30>
            <ul class="list-group row topic-list">
                <#list results.content as row>
                    <li class="list-group-item media col-md-6" style="margin-top: 0px;">
                        <a class="reply_last_time hidden-xs meta" href="${base}/view/${row.id}">
                            <span class="stress">${row.views}</span> 浏览<span> ⋅ </span>${row.comments} 回复
                        </a>

                        <div class="avatar pull-left">
                            <a href="${base}/users/${row.author.id}">
                                <img class="media-object img-thumbnail avatar avatar-middle"
                                     src="${base + row.author.avatar}">
                            </a>
                        </div>

                        <div class="infos">
                            <div class="media-heading">
                                <@classify row/><a href="${base}/view/${row.id}">${row.title?html}</a>
                            </div>
                        </div>
                    </li>
                </#list>
            </ul>
        </@contents>
    </div>
</div>
<!-- latest contents/end -->

</@layout>