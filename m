Return-Path: <clang-built-linux+bncBAABB26HQDXAKGQEJY4XWEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 56504EE0C4
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 Nov 2019 14:13:16 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id e17sf845566ljj.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 05:13:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572873196; cv=pass;
        d=google.com; s=arc-20160816;
        b=oZAi0H6HHOKbvNB96PNJmUH2sgSFEiNdwjK8OfColfHpItntomKKGX48S9Hd6MlZec
         xtNn8leq9FSYkSKJ6o5OMjsD29LUUk7fcVLv4j2Sk9gijLMOAdJV9QHAT6TgSz89Lvr8
         gXWpisexvbj9AkvSjPD0UdeIu0BFG48p2RG+uGoO/6qPrd4fTxNRIv+sfB5lv2FSkv1s
         hKv8YLiWSbOco2pEescVcfV8KCr1fy46gE3sDe7Mf9cuMVgi2nQPLW1y+NDV5eTY60C6
         IdWiaACczj7aFDc3Nt2PB1gK9zaChIvcjJqxPx+jKt9gpNHdgYiKzlW7lGmca3cFT14f
         AM2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:references
         :in-reply-to:cc:from:date:mime-version:subject:to:sender
         :dkim-signature;
        bh=v4L6hEWUvuOY5oqM2dCevSL90ztu+emCqD6GseiqBRk=;
        b=It/LnLMR4/fo1UqJY7liOC7sYaqresIokdwZlywmsEYSRSDD7E7rFyRBogrP1CISAO
         fk1lMm9z00i4tyoIDKDxjVctfHNsG18KFQ7MIXp72i0lchfp5/cN+ekAD3NHaX5Ho1NB
         4sqtnchzTC7s1AzfW+EPWIz75daj2B6eHloIvNWjZ6wmoIOpiM0HWNzrCpHbfL/XOHgP
         OCSDxEy8VqVkVluwrAojv7+LBnXBsEv8sJGBQgzbRce/LO4wo+nbw4bSIjbWZTd5rIqu
         1ax0Cb9nFZHc0b0gE9UMSqHiz08zOjFalbhI+PFdQD7YO+WXyCUYgQeBpQvgh6wfTXvm
         EEAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:subject:mime-version:date:from:cc:in-reply-to:references
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v4L6hEWUvuOY5oqM2dCevSL90ztu+emCqD6GseiqBRk=;
        b=ESIPjFoVtJ6VIRLWP0nSQye24H+yA/z04V8KZyHhoeOcI2whX8fBtpYoysJT8cM+kV
         KCt16z4UaMwMrkatxXE5bxIR9lt/iyhMmlTcU7NBxqwmHRmAs/OK+QM55oz+7AZAw2dk
         ZH9LbQngpH9nfGNFoE13CrckX4tnN5RsSdULwtdlkKl5/Z8y6u+aMsczYy6jluIjklOw
         lReCNXxbEXw5oQYCpH2e+xWqIGbJPI+DSMKkMnuvYRBKt55XBf9uNXLpVVDuoulAsctj
         NOul68X7XMmJ43gju84ZzjOWiXwmoWXZuzxp+Uym+JqTXGbW2rCNxsGg4n80KCbFGKoH
         KnMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:subject:mime-version:date:from:cc
         :in-reply-to:references:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v4L6hEWUvuOY5oqM2dCevSL90ztu+emCqD6GseiqBRk=;
        b=RymMlsYQPgnFaNxzW7oOaZiMqjUF4txyr+qpRK81bvWNclqT7GAcUiNl8MnLNeqbkj
         sIVa+d0vSDS4ecsvo9MPE4akP/rdwd5JdYAGSryPbwW+dOEmixXYS9VLoLcHVfSzvwQM
         HEd+Gt2ka3wOQ2hhaugqWabKnLsJfgdA3uuslcWeZA9esu5oU7+vrnJhJ2/jmyGL+d44
         /FwY/fCN0Dnk+C9e8uB/tT1OJravNpQN8t/Y6TWn3FeTcF5WJ0wGMZTmBzN1BXQgi2JL
         fiuYSRPjAx2qQCWhCEjh3Lvs0DCrqEQP41H3yfEerNYkt4abkmTh3aUXZ+HH61sBjZfb
         gLMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX2BDit70uu84liUSdMd7ZoM4Ls89jZxQQA6Lg5tVFor1qwXb6p
	CGjqkV4owy3Uej/xP1emrUU=
X-Google-Smtp-Source: APXvYqwcMH42EdKAjoHxIeM/Q0R9flHjV9e0nYaeq3Fj47BZUamGJxsnNqna4fpVkwof4CCEsyRDVg==
X-Received: by 2002:a05:651c:1ae:: with SMTP id c14mr17906155ljn.135.1572873195948;
        Mon, 04 Nov 2019 05:13:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:93:: with SMTP id 141ls1247919lfa.12.gmail; Mon, 04 Nov
 2019 05:13:15 -0800 (PST)
X-Received: by 2002:a19:5010:: with SMTP id e16mr3030732lfb.49.1572873195609;
        Mon, 04 Nov 2019 05:13:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572873195; cv=none;
        d=google.com; s=arc-20160816;
        b=c3ALPCNq2RCbuJMS8BtDpCVBVEHcB7RQmp+do0u3EmUHStRc7PcjcmewaBq/0B8xEn
         JNYCbwKIpixqQFIXLF2TrWnOawj+W5bzL2QuZ5r0mRupby+MTO1TABOV8+qszGiRdDnB
         j88KPfQH6ZMhFSZx8OlbRGVV4xp7NRWSt5JCTMU0F688sGWAj3kSsOGSpNjXB1qivXey
         Td2TiyX1l1RCm/JmrbFu++TuyxBbWXZ3Hkc26oG6ROk55AgJloQJ2TclUI+HB5mifIhI
         3BukxcHfCj0v+PQ8UOFgWFlTi7FcYQjyKl/CApWXqrc80Xq6+SOWXX79a8wK4vtIGmrG
         RCGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:references:in-reply-to:cc:from:date
         :content-transfer-encoding:mime-version:subject:to;
        bh=InNramGLUEvPW10TBcfa9CaaHsCZ4VZTevg8qFcrDLo=;
        b=baa6w7Frgz5EUX2ZBY30zEOTrBjO/6H4XT9d+H920DRf2NiUQDA4fk7Oc5obVAbCxC
         l10OVO6/wdjrm4QolIHZp5CCAnkWuiulGOvBFtvex286enIiHdhCU0SyNNN1YvTjX46S
         moN4htMtyHWdQOu3c09KW3zE+law0dk9y3FvdHc/bDY9mkOj5MuI5RVN9HBez4NiWkFE
         ohTy04wwdjabZMStsXEBCNUKN208d/wPRMn5a2rgA13/8xU4tg/s7wv1jy5wmTRHK34i
         07Ih1DXJruVX4v8YKKdU8sXiHlj8W/zTB1KkJVAjEQo96kkQLN5Or0M69MknL3BZBvE8
         HIew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from inca-roads.misterjones.org (inca-roads.misterjones.org. [213.251.177.50])
        by gmr-mx.google.com with ESMTPS id c25si752584lji.2.2019.11.04.05.13.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 05:13:15 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning maz@kernel.org does not designate 213.251.177.50 as permitted sender) client-ip=213.251.177.50;
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
	(envelope-from <maz@kernel.org>)
	id 1iRcAF-00051p-2q; Mon, 04 Nov 2019 14:12:59 +0100
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4 06/17] scs: add accounting
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Mon, 04 Nov 2019 14:22:19 +0109
From: Marc Zyngier <maz@kernel.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, Masami
 Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Dave Martin <dave.martin@arm.com>, Kees Cook <keescook@chromium.org>, Laura
 Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Nick
 Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, Miguel
 Ojeda <miguel.ojeda.sandonis@gmail.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, <clang-built-linux@googlegroups.com>,
 <kernel-hardening@lists.openwall.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
In-Reply-To: <20191101221150.116536-7-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-7-samitolvanen@google.com>
Message-ID: <791fc70f7bcaf13a89abaee9aae52dfe@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: samitolvanen@google.com, will@kernel.org, catalin.marinas@arm.com, rostedt@goodmis.org, mhiramat@kernel.org, ard.biesheuvel@linaro.org, dave.martin@arm.com, keescook@chromium.org, labbott@redhat.com, mark.rutland@arm.com, ndesaulniers@google.com, jannh@google.com, miguel.ojeda.sandonis@gmail.com, yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning maz@kernel.org does not designate
 213.251.177.50 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On 2019-11-01 23:21, Sami Tolvanen wrote:
> This change adds accounting for the memory allocated for shadow 
> stacks.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/base/node.c    |  6 ++++++
>  fs/proc/meminfo.c      |  4 ++++
>  include/linux/mmzone.h |  3 +++
>  kernel/scs.c           | 19 +++++++++++++++++++
>  mm/page_alloc.c        |  6 ++++++
>  mm/vmstat.c            |  3 +++
>  6 files changed, 41 insertions(+)
>
> diff --git a/drivers/base/node.c b/drivers/base/node.c
> index 296546ffed6c..111e58ec231e 100644
> --- a/drivers/base/node.c
> +++ b/drivers/base/node.c
> @@ -415,6 +415,9 @@ static ssize_t node_read_meminfo(struct device 
> *dev,
>  		       "Node %d AnonPages:      %8lu kB\n"
>  		       "Node %d Shmem:          %8lu kB\n"
>  		       "Node %d KernelStack:    %8lu kB\n"
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +		       "Node %d ShadowCallStack:%8lu kB\n"
> +#endif
>  		       "Node %d PageTables:     %8lu kB\n"
>  		       "Node %d NFS_Unstable:   %8lu kB\n"
>  		       "Node %d Bounce:         %8lu kB\n"
> @@ -438,6 +441,9 @@ static ssize_t node_read_meminfo(struct device 
> *dev,
>  		       nid, K(node_page_state(pgdat, NR_ANON_MAPPED)),
>  		       nid, K(i.sharedram),
>  		       nid, sum_zone_node_page_state(nid, NR_KERNEL_STACK_KB),
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +		       nid, sum_zone_node_page_state(nid, NR_KERNEL_SCS_BYTES) / 
> 1024,
> +#endif
>  		       nid, K(sum_zone_node_page_state(nid, NR_PAGETABLE)),
>  		       nid, K(node_page_state(pgdat, NR_UNSTABLE_NFS)),
>  		       nid, K(sum_zone_node_page_state(nid, NR_BOUNCE)),
> diff --git a/fs/proc/meminfo.c b/fs/proc/meminfo.c
> index 8c1f1bb1a5ce..49768005a79e 100644
> --- a/fs/proc/meminfo.c
> +++ b/fs/proc/meminfo.c
> @@ -103,6 +103,10 @@ static int meminfo_proc_show(struct seq_file *m,
> void *v)
>  	show_val_kb(m, "SUnreclaim:     ", sunreclaim);
>  	seq_printf(m, "KernelStack:    %8lu kB\n",
>  		   global_zone_page_state(NR_KERNEL_STACK_KB));
> +#ifdef CONFIG_SHADOW_CALL_STACK
> +	seq_printf(m, "ShadowCallStack:%8lu kB\n",
> +		   global_zone_page_state(NR_KERNEL_SCS_BYTES) / 1024);
> +#endif
>  	show_val_kb(m, "PageTables:     ",
>  		    global_zone_page_state(NR_PAGETABLE));
>
> diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
> index bda20282746b..fcb8c1708f9e 100644
> --- a/include/linux/mmzone.h
> +++ b/include/linux/mmzone.h
> @@ -200,6 +200,9 @@ enum zone_stat_item {
>  	NR_MLOCK,		/* mlock()ed pages found and moved off LRU */
>  	NR_PAGETABLE,		/* used for pagetables */
>  	NR_KERNEL_STACK_KB,	/* measured in KiB */
> +#if IS_ENABLED(CONFIG_SHADOW_CALL_STACK)

Is there any reason why you're not consistently using only one of
"#if IS_ENABLED(...)" or "#ifdef ...", but instead a mix of both?

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/791fc70f7bcaf13a89abaee9aae52dfe%40www.loen.fr.
