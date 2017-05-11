<header>
    <div class="title">
        <#if (titleH1 == true)??>
            <h1><a href="/${post.noExtensionUri}">${post.title}</a></h1>
            <#assign titleH1 = false />
        <#else>
            <h2><a href="/${post.noExtensionUri}">${post.title}</a></h2>
        </#if>
       	<#if (post.description != null)??>
            <p>${post.description}</p>
        </#if>
    </div>
    <div class="meta">
         <time class="published"
            datetime='${post.date?string("MMM dd, yyyy")}'>
            ${post.date?string("MMM dd, yyyy")}</time>
       <!--  {{ if .Site.Params.includeReadingTime }}
            <p>{{ .ReadingTime }} minute read</p>
        {{ end }} -->
        <#if (config.site_author_avatar??) >
        <span class="author"/><span class="name">${post.author!config.site_author}</span><img src="${post.author_avatar!config.site_author_avatar}" alt="${post.author!config.site_author}" /></span>
        </#if>
    </div>
</header>