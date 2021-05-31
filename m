Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAGM2SCQMGQEDVBVRKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id F18A9396793
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 20:08:01 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id g9-20020a25ae490000b029052f9e5b7d3fsf14285402ybe.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 11:08:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622484481; cv=pass;
        d=google.com; s=arc-20160816;
        b=x3MH6MOw+G5I0D3WCPLU/P5c7QgioyyYGDaIzsGvm2EDbR09bqbBGQCUlaMJ2B76aL
         7eJ9LnDb6juKs74NkU3h4IyEGZE1UB+4fiLjTKvxBPdwSPR95Z/NdatqwJxkmPDfK0hj
         HSg9kMQVkdG4FsfW3M0o/b9lJjk3oIX80e97Wf6fKzPrqLyuIfi9CGLRyZeJYWuklyhF
         Or8JwYHctLqoJllaHGmDZ6CySKHYGMCufu3bCW6E3TyPBIOPk37lj/FQiwXgleP3hdwx
         bAcgzFHZUzz0D7HKiZYRGeBjIKzGyrhpU6Gxa3WpD+9+0PZNQnIE++A6n1f8OAOKQ9Bl
         kReA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JXzl4nasDWHSYKSmKICnbs+MFySryP6l3qvi8LJogEE=;
        b=BBQT1fbteHchqOkAvuwjb7Z5cDuq/Ka8wooRAjLv+zdKObI+vnG/wor+QsuYsLpSiA
         vR+YEGJ4mbfOdn0/Lfx0ifgsF6Y5O0mz8eGKUNrkUF+09zxLBpcTsKa+GhSyffdGgyrv
         1p5Ed5224tLdt9ryxdCHzykc5tvC95kt++X/TNPU+cMd0pJ3NOyUzgiGAlB0K4az8pxX
         qGZlLh7qHGWa4iCNNyZcClxq69p1vUZol1JPf4uWR9DEHGu+sFowiwWthuxrXQlxYos7
         BFFeQ1HkQ2y/CCRsFw7pRV4o0EQg9Fnv0R5aYak681RKvomBY4btIGvo4ZcXfZBNvNdO
         SDrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZYn6Cm7R;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JXzl4nasDWHSYKSmKICnbs+MFySryP6l3qvi8LJogEE=;
        b=rJ65XA8yJE3BKkSXR2qKnx6JLrZAnLgLHlZiclNHCP0lNVGvd24Y+pcjyYn8mB2AVp
         3mEmRw3rc1VUZnj8K6rm+iDCf1b2VM1kxfpttQdsi/Kmq8z6aXU5nuOrMCpdmxcJqB3W
         kJGbgYhf2pI3o2cnCTTQOcu2JpU6uj2/nzmuxFJ4yineRRkwJpRix61VmxXAEyi1VC7j
         jRjj4b0GVpVe32l9KbMM05SdLIhkIO3RutW7F5rSsDHnwWAOKOcJ+x14lnc/9y4v0nWR
         d3M0zD+jo6e/it5x/LwWbCZIY05sqJg1OZES6ImL51GKbLN7pIXCZff2so7uJrCAeval
         Tj6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JXzl4nasDWHSYKSmKICnbs+MFySryP6l3qvi8LJogEE=;
        b=Uhq64tkwE4ntEy8LC/U3h2IW530jMvLLXFIXs8tSsg4DLnIACtUzGrYzMiexAkN/gY
         03boqIdX8v+s04sMKvfLJ2LvRMJlF1fHFx0t64Jd00Xvg1MuLQZlE5tM8WKL3+qBsNGM
         Q9Hd6A6OTIWER+R95VXDOGYadOYfQX3xY0evMsxLwRl/s1b0MOrmf3S56ZcwCbZAmfxi
         xw87d9F2VGJ5Nx5ds8iOOj2WUVyx5Eq105aTLLVdJ7hxJxf2qSd8tn7XNRA746nmw0K2
         bFwvysGQEAeTxNNbsTZnczlIQ/5TUMwvXCCrY65v/VdqNXP0pIfuceSmgVAxieY02Nru
         X+ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325+nG1ypImnyOCmJvaNcYYBQ+GHVjjcc7aKJ3QXV1ijhxJ+gTQ
	nWWdTmV1QHswHwnZmWmBtvA=
X-Google-Smtp-Source: ABdhPJzpADS+u+P3eX0GXBBEOiNfvywEdttnx5UkI+LZcTpG3W+oz+KV5Se0AkWWNQ+A1a8Jx5nhOw==
X-Received: by 2002:a25:7109:: with SMTP id m9mr33744481ybc.274.1622484480998;
        Mon, 31 May 2021 11:08:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls7274763ybo.10.gmail; Mon, 31 May
 2021 11:08:00 -0700 (PDT)
X-Received: by 2002:a5b:489:: with SMTP id n9mr32995992ybp.45.1622484480462;
        Mon, 31 May 2021 11:08:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622484480; cv=none;
        d=google.com; s=arc-20160816;
        b=cjvbWAABTVtWWBeR0NMBHusboPKWSo5jYg6k6cmh75hbMqx4pGPe1voDSVTDeieRzq
         Vt/7armhqIOqYKMogElykZmaZse+ApAA15NYk4jJ7zd4CqRRSD2ev5Kb23rHrZUEzpIa
         cDqK7WJWDEBv1D1kyIGoyzsiQj/LPNasBmo/2D0zCHmVQAWi88oCZ2zXp2lvPweRVFNi
         l6qPrjbpQr4WOuHjfWYduPPpeuqcEfLkEtFYGGSvTaPTYSVrM96m2EPXQ+/eikjFXTZW
         adE9JuhToU9+5bDHweBKWwUi99mCsjtaISIYIRA9NZYl8WJenDlK5nraFSpiQvYI56bv
         C8Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=3tOxphxIheXcyN0yX0PwAfiRmHVptdcCVOQoaqy4rT8=;
        b=KMhwq5k9zypNj/C1n7OYOazprZfFIIsSzTc4Eo5AWv4LBcI7caZDMqtH/mfTx7mquH
         UeMi4UD61140+ZMal1jaEJ/K4MISENceqwYlA/0d0rviUQKfWoi/sIO8eoWQpANP4JYB
         iu48i0Dgbxo5PHbqLCSC8tuU24la82H7DjNMZlDroPG1mW8Z8rd9Ct7vEKczri2W3KmT
         grlcnCL0psq3WdexKXcTYs9FFn2FRgXEJ0Q2CKB8MtNxkg6NLGfEhPG0O8B3N4y4/AxM
         h3Tr+lk+UqDwQvhVexDQKIKP/sdbDYlEWLrlPnQgr6eAPnN5b0zu6Rldhz0sK9goYlwJ
         1lBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZYn6Cm7R;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q11si993145ybu.0.2021.05.31.11.08.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 11:08:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BEFAD611CA;
	Mon, 31 May 2021 18:07:58 +0000 (UTC)
Date: Mon, 31 May 2021 11:07:57 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: samitolvanen@google.com, jeyu@kernel.org, ndesaulniers@google.com,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	wcw@google.com
Subject: Re: [PATCH 1/6] pgo: modules Expose module sections for clang PGO
 instumentation.
Message-ID: <YLUl/eQ1EzMFSb9F@Ryzen-9-3900X.localdomain>
References: <20210528200133.459022-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210528200133.459022-1-jarmo.tiitto@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZYn6Cm7R;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Jarmo!

I do not really have much input on the code side of things aside from
style changes, which I will comment on in each individual patch. I do
have some comments around process, hopefully they are helpful to you for
the future :)

My first comment is around the threading of the series. It seems like
you sent this series as individual patches when they really should have
been threaded together so they are all grouped together in our inboxes.
You can pass multiple patch files to 'git send-email' so they will be be
automatically threaded.

$ git send-email --to=... --cc=... *.patch

That way, everyone stays CC'd on the full series. You left Bill off of
this patch, which is important for the rest of the series. Bill,
original patch is here so you do not have to read my marked message.

https://lore.kernel.org/r/20210528200133.459022-1-jarmo.tiitto@gmail.com/

On Fri, May 28, 2021 at 11:01:33PM +0300, Jarmo Tiitto wrote:
> This patch series enables reading PGO profile data for
> modules. It also contains some changes to instrumentation
> code to fixup flaws when profile data is serialized from loaded modules.
> 
> To be able to export clang PGO profile data from modules into user space
> we need to expose __llvm_prf_xxx sections from loaded modules.
> This data is used by pgo/instrument.c and pgo/fs_mod.c in following patches.
> 
> ====
> The patch is based on Sami Tolvanen's earlier code: [1]
> Patch https://lore.kernel.org/linux-doc/20210407211704.367039-1-morbo@google.com/
> and kernel v5.13-rc3 was used as starting point for my changes.

This is general advice since it is not relevant for this particular
series: when submitting a patch series, it is best to work against
linux-next or a maintainer's tree so that you have the latest version of
the code that has been accepted:

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=for-next/clang/pgo

I would base future revisions on Kees's tree above as that is the final
version that will go upstream. You can even include the commit that you based it on with 'git format-patch --base=<base_hash>'

$ git fetch https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/clang/pgo

$ git checkout -b kees/for-next/clang/pgo FETCH_HEAD

$ git format-patch --base=e1af496cbe9b4517428601a4e44fee3602dd3c15 e1af496cbe9b4517428601a4e44fee3602dd3c15..

> Be kind, I'm an kernel newbie and this is my first git send-mail. :-)
> 
> [1] https://patchwork.kernel.org/project/linux-kbuild/patch/20210407211704.367039-1-morbo@google.com/
> ====

This entire commit message belongs in a cover letter, which allows you
to tell the reviewers what your series is doing at a higher level, without it
being applied to the final commit.

https://kernelnewbies.org/PatchSeries

You can generate this with 'git format-patch' via the '--cover-letter'
option, which will add a 0000 patch file that you can use for that
purpose, and it will be the top message of your thread.

The commit message for this patch should describe what is being done and
why it is being done.

> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> ---
>  include/linux/module.h | 12 +++++++++++-
>  kernel/module.c        |  8 +++++++-
>  2 files changed, 18 insertions(+), 2 deletions(-)
> 
> diff --git a/include/linux/module.h b/include/linux/module.h
> index 8100bb477d86..2aa1e1fe4afa 100644
> --- a/include/linux/module.h
> +++ b/include/linux/module.h
> @@ -504,7 +504,6 @@ struct module {
>  	/* Elf information */
>  	struct klp_modinfo *klp_info;
>  #endif
> -
>  #ifdef CONFIG_MODULE_UNLOAD
>  	/* What modules depend on me? */
>  	struct list_head source_list;
> @@ -527,6 +526,17 @@ struct module {
>  	struct error_injection_entry *ei_funcs;
>  	unsigned int num_ei_funcs;
>  #endif
> +#ifdef CONFIG_PGO_CLANG
> +	/* Clang PGO llvm_prf_xxx sections */

This probably deserves a comment such as:

"Should to be kept in sync with the data sections in include/asm-generic/vmlinux.lds.h"

> +	void *prf_data; /* struct llvm_prf_data */
> +	int prf_data_size;
> +	u64 *prf_cnts;
> +	int prf_cnts_num;
> +	const char *prf_names;
> +	int prf_names_num;
> +	void *prf_vnds; /* struct llvm_prf_value_node */
> +	int prf_vnds_size;
> +#endif
>  } ____cacheline_aligned __randomize_layout;
>  #ifndef MODULE_ARCH_INIT
>  #define MODULE_ARCH_INIT {}
> diff --git a/kernel/module.c b/kernel/module.c
> index 7e78dfabca97..e49de3b95d87 100644
> --- a/kernel/module.c
> +++ b/kernel/module.c
> @@ -3342,7 +3342,13 @@ static int find_module_sections(struct module *mod, struct load_info *info)
>  
>  	info->debug = section_objs(info, "__dyndbg",
>  				   sizeof(*info->debug), &info->num_debug);
> -

I would shuffle this section to be between the 'mod->static_call_sites'
and 'mod->extable' above, as it looks better to me to have all of the
conditional sections grouped together.

> +#ifdef CONFIG_PGO_CLANG
> +    /* Grab module sections for Clang PGO profiler to hook into */

I think you can just drop this comment, none of the other conditional
preprocessor blocks have a comment in this function. Otherwise, tabs instead of
spaces.

> +	mod->prf_data = section_objs(info, "__llvm_prf_data", 1, &mod->prf_data_size);
> +	mod->prf_cnts = section_objs(info, "__llvm_prf_cnts", sizeof(u64), &mod->prf_cnts_num);
> +	mod->prf_names = section_objs(info, "__llvm_prf_names", sizeof(char), &mod->prf_names_num);
> +	mod->prf_vnds = section_objs(info, "__llvm_prf_vnds", 1, &mod->prf_vnds_size);
> +#endif
>  	return 0;
>  }
>  
> -- 
> 2.31.1

Overall, good job on your first submission! :)

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLUl/eQ1EzMFSb9F%40Ryzen-9-3900X.localdomain.
