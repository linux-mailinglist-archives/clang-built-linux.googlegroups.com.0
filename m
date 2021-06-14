Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTPVTWDAMGQEQVC2ICY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EA63A6AEE
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 17:50:41 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id c25-20020a4ad7990000b029020e67cc1879sf7179167oou.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 08:50:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623685839; cv=pass;
        d=google.com; s=arc-20160816;
        b=cg1xf42I0/KRL649luLQ0KFog6QWI1oKwx7bw78g2MA+8atMRno/PseZg5KlZAksI/
         5UFSp8TbPZUNvq7LgmiSVpV9W371YjJPorGnOPJ8xZRRh1p39QneJeDuYv4tedMH98GW
         E242YCwsIulmQgQHg0KaCxxR/83ChPbpWHjQA8oI/Mkj9GHXFRaoSpbko5Nx9qhbOJz6
         k8dndMvenbX+nyvv0k9JdGsgd/64bK8HzYkl/EV+7Aj8V9ANT/bVSrfzICm1OclsI4U6
         ovOtEyPUQPCV5/qt9LJSCy+Ync7gaNUXP4AA9naqA+ax5ukUaE0wk0SvDL4kd0rGx/Qj
         sN6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5twmDqYCOnPysqEHmuEYHDIABOgdqTIkmzlCbaih34w=;
        b=L/Ykv+BqlKY45SZC2j5RcWrUFa0fopdyc6Q7/41yshmvDdkZg/kCekXpvgIY+ylJfM
         +ePfqsTBEPrLyYasdxld0lksePMSXrsF8wvUVEa87iuhOUEGgB4P6A7Mg0VLqcpo/fhL
         QYsK5qCVvdjEygS9i/DycXoWaw7HMgd3n4Ha6VRyvOo2WcgtDSwvhANOpCIPztPwT8xa
         8J9Spwr8O2haABlLQBQbzzdHedydpWSgupsZYFxUGRcBU1yqdeQczmlcydhBc/XpsOBZ
         7jJuGtROf/87PlmMP0rHGIFFV3Bl7kFeWlkeEkS8YPfO41Fq9MY+KXrwAr6auEcpXzKU
         TIXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=G8Ho3xNV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5twmDqYCOnPysqEHmuEYHDIABOgdqTIkmzlCbaih34w=;
        b=GHzGLQNEufqAoqEo/HSWAjICAFxuR/yZzfRsPsKDpAVKQbDeIxf2Hsa7OJY0wJb8c3
         TMfwzVRVlr0+Rnuu9YhX0eSiX3k7jV/5NP+URcS8PQK/V4nYs/fGSD4LMI2rpecJMSGu
         dgmRnGOxf1HhcH3JnFs5kT5UIupsB2HpQXUqJVaaubBka32o0XOW/U0Jq1YGUt7P3Cqi
         7Q4n6GhdvJiKHcR0XSbBAjD2ILcjz2D4RTB8HEo/BfiQlTZ33TQgJZoLxRQzDvCIdSMY
         O9IC22W83Ed1L1rGDipIk+/r+pLprP7JwCH/mOfZbW5VOcAdRk7LQdMWAKFvdOCmEoJd
         46uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5twmDqYCOnPysqEHmuEYHDIABOgdqTIkmzlCbaih34w=;
        b=CC77NGSrphMKxGEiCDQh97n4+iadSj0QSktNmF1ZliqmefuIjZp2jPfv6H17JijXHJ
         ACGlu8gjtUwfsTngdZ0J/UKxXyhgiUny5LZpfUMd5vW3GsnUJicK52F9VGTx7mUOi3qH
         rXSVZjJOO61Cs2arInmGaIWPpZjLiYqI0TLY9SgdUpViBkefJwk02U5ZL7G854DCgJz0
         WoM+MfhSPwGYd8ZEqtCOad006yqtY2SoCfVHItEGjBBWtpyQJdIqOfEhiz4Ap5PPWCnS
         vryK+3TH8ZojIJ/aIfvDBoZ3BnoMqB44k0Tm/WXIjlqRlNmjyhNgyrd5FqDdp/2DD7Wh
         Kyaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533s5JWerP3kk+Nqah1USBbXxnkq1q/yZRUVnnxmY1+2fEzTexq+
	waP+RUah/yfyr2w/EbpzGPY=
X-Google-Smtp-Source: ABdhPJy4kjKi8NdpA8xH045+qtg9x/yo5eBZTmcTidMdITAmP9G2JepUIx61cKQnTTYdzBPVIO5H3A==
X-Received: by 2002:a4a:9251:: with SMTP id g17mr13830405ooh.52.1623685837847;
        Mon, 14 Jun 2021 08:50:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b102:: with SMTP id a2ls5212172oif.5.gmail; Mon, 14 Jun
 2021 08:50:37 -0700 (PDT)
X-Received: by 2002:a54:4710:: with SMTP id k16mr22345395oik.143.1623685837220;
        Mon, 14 Jun 2021 08:50:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623685837; cv=none;
        d=google.com; s=arc-20160816;
        b=fg95mTL76jsgOI5gDGIyft8EDG3wZOdgm+PVuB17SJXu2Cj4da5hfKg2gpxPWOd06Y
         NqO4eTcR676dYn6Md2yPq0qlDGnLtuhCdQ3R22f84qs/R6OK0xjikqikhJkdE/b+PtT4
         I4Mw9111Xl5id9WUaNyOpDFTlXE6EonRGisW6ETCUpg97JpjOAEGm/RKkjY54wZPQZnT
         uJ3zh3O4YEwMvQXX/U24BUinzAbLWJBvpIwYfQ+GzfPHbL33Xy34XHXL7UIsY/ZT7g7b
         z6L/5QwaLLkObrVMXjXsUH26BeKIfgrRblxfbyhySXh2k8BdA78O1N2+AQ5qXX2XVwtP
         uR8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8qXeARDYuQsLS9D8sVeex1QzQKpRZqM4RtDuxL1tv14=;
        b=PXWPFNCNLJLYt9u8/XipRpRObOTLE1T3pfUYD5RxTJSE8tKGO1ndXksGObs/isPSm5
         Y+65tgVdB9eii6ZTdFu2sUaRG7+RNq/IXw60cIFx+8vzCgtbh8HTtUPEuQPZLj4t6xE+
         HJ6Q7KjEJkaPcLBdsFXY/tD2SOeKwE2SmRG5OOm1NH0ElOYKbojO1xAPw4DgJ2I8Yfph
         KciXoJoaZR0uNGDEu7LzB36vXvRXr5bZwCmkdo2fjRLvH1sYrdduhbapSgXFHUFF6Fa1
         OOIcNhx37AZX51fDxENAZJ4MVPD1FDsI9/6dDkvy71j3t4mo7XbFWyJPrAlcBFP7zOgF
         LHBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=G8Ho3xNV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id u128si1908653oif.2.2021.06.14.08.50.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 08:50:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id k15so10853192pfp.6
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 08:50:37 -0700 (PDT)
X-Received: by 2002:a62:8f81:0:b029:2e9:c6d9:df67 with SMTP id n123-20020a628f810000b02902e9c6d9df67mr22526082pfd.52.1623685836890;
        Mon, 14 Jun 2021 08:50:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 35sm13574654pgs.35.2021.06.14.08.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 08:50:36 -0700 (PDT)
Date: Mon, 14 Jun 2021 08:50:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	morbo@google.com
Subject: Re: [RFC PATCH 5/5] pgo: Cleanup code in pgo/fs.c
Message-ID: <202106140849.F65DB86@keescook>
References: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
 <20210612032425.11425-6-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210612032425.11425-6-jarmo.tiitto@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=G8Ho3xNV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::429
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sat, Jun 12, 2021 at 06:24:26AM +0300, Jarmo Tiitto wrote:
> Cleanups to comments and punctuation.
> Cleanup return path in pgo_module_init.

Can you include these changes in the patches that introduce the various
comments, etc? It looks like most (all?) are from patches in this
series.

-Kees

> 
> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> ---
>  kernel/pgo/fs.c | 47 +++++++++++++++++++++++------------------------
>  1 file changed, 23 insertions(+), 24 deletions(-)
> 
> diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> index 98b982245b58..855d5e3050fa 100644
> --- a/kernel/pgo/fs.c
> +++ b/kernel/pgo/fs.c
> @@ -294,7 +294,7 @@ static int prf_open(struct inode *inode, struct file *file)
>  	int err = -EINVAL;
>  
>  	if (WARN_ON(!inode->i_private)) {
> -		/* bug: inode was not initialized by us */
> +		/* Bug: inode was not initialized by us. */
>  		return err;
>  	}
>  
> @@ -302,7 +302,7 @@ static int prf_open(struct inode *inode, struct file *file)
>  	if (!data)
>  		return -ENOMEM;
>  
> -	/* Get prf_object of this inode */
> +	/* Get prf_object of this inode. */
>  	data->core = inode->i_private;
>  
>  	/* Get initial buffer size. */
> @@ -425,17 +425,17 @@ static void pgo_module_init(struct module *mod)
>  	char fname[MODULE_NAME_LEN + 9]; /* +strlen(".profraw") */
>  	unsigned long flags;
>  
> -	/* add new prf_object entry for the module */
> +	/* Add new prf_object entry for the module. */
>  	po = kzalloc(sizeof(*po), GFP_KERNEL);
>  	if (!po)
> -		goto out;
> +		return; /* -ENOMEM */
>  
>  	po->mod_name = mod->name;
>  
>  	fname[0] = 0;
>  	snprintf(fname, sizeof(fname), "%s.profraw", po->mod_name);
>  
> -	/* setup prf_object sections */
> +	/* Setup prf_object sections. */
>  	po->data = mod->prf_data;
>  	po->data_num = prf_get_count(mod->prf_data,
>  		(char *)mod->prf_data + mod->prf_data_size, sizeof(po->data[0]));
> @@ -452,20 +452,19 @@ static void pgo_module_init(struct module *mod)
>  	po->vnds_num = prf_get_count(mod->prf_vnds,
>  		(char *)mod->prf_vnds + mod->prf_vnds_size, sizeof(po->vnds[0]));
>  
> -	/* create debugfs entry */
> +	/* Create debugfs entry. */
>  	po->file = debugfs_create_file(fname, 0600, directory, po, &prf_fops);
>  	if (!po->file) {
>  		pr_err("Failed to setup module pgo: %s", fname);
>  		kfree(po);
> -		goto out;
> -	}
>  
> -	/* finally enable profiling for the module */
> -	flags = prf_list_lock();
> -	list_add_tail_rcu(&po->link, &prf_list);
> -	prf_list_unlock(flags);
> +	} else {
> +		/* Finally enable profiling for the module. */
> +		flags = prf_list_lock();
> +		list_add_tail_rcu(&po->link, &prf_list);
> +		prf_list_unlock(flags);
> +	}
>  
> -out:
>  	return;
>  }
>  
> @@ -477,33 +476,33 @@ static int pgo_module_notifier(struct notifier_block *nb, unsigned long event,
>  	unsigned long flags;
>  
>  	if (event == MODULE_STATE_LIVE) {
> -		/* does the module have profiling info? */
> +		/* Does the module have profiling info? */
>  		if (mod->prf_data
>  			&& mod->prf_cnts
>  			&& mod->prf_names
>  			&& mod->prf_vnds) {
>  
> -			/* setup module profiling */
> +			/* Setup module profiling. */
>  			pgo_module_init(mod);
>  		}
>  	}
>  
>  	if (event == MODULE_STATE_GOING) {
> -		/* find the prf_object from the list */
> +		/* Find the prf_object from the list. */
>  		rcu_read_lock();
>  
>  		list_for_each_entry_rcu(po, &prf_list, link) {
>  			if (strcmp(po->mod_name, mod->name) == 0)
>  				goto out_unlock;
>  		}
> -		/* no such module */
> +		/* No such module. */
>  		po = NULL;
>  
>  out_unlock:
>  		rcu_read_unlock();
>  
>  		if (po) {
> -			/* remove from profiled modules */
> +			/* Remove from profiled modules. */
>  			flags = prf_list_lock();
>  			list_del_rcu(&po->link);
>  			prf_list_unlock(flags);
> @@ -511,7 +510,7 @@ static int pgo_module_notifier(struct notifier_block *nb, unsigned long event,
>  			debugfs_remove(po->file);
>  			po->file = NULL;
>  
> -			/* cleanup memory */
> +			/* Cleanup memory. */
>  			kfree_rcu(po, rcu);
>  		}
>  	}
> @@ -528,7 +527,7 @@ static int __init pgo_init(void)
>  {
>  	unsigned long flags;
>  
> -	/* Init profiler vmlinux core entry */
> +	/* Init profiler vmlinux core entry. */
>  	memset(&prf_vmlinux, 0, sizeof(prf_vmlinux));
>  	prf_vmlinux.data = __llvm_prf_data_start;
>  	prf_vmlinux.data_num = prf_get_count(__llvm_prf_data_start,
> @@ -546,7 +545,7 @@ static int __init pgo_init(void)
>  	prf_vmlinux.vnds_num = prf_get_count(__llvm_prf_vnds_start,
>  		__llvm_prf_vnds_end, sizeof(__llvm_prf_vnds_start[0]));
>  
> -	/* enable profiling */
> +	/* Enable profiling. */
>  	flags = prf_list_lock();
>  	prf_vmlinux.mod_name = "vmlinux";
>  	list_add_tail_rcu(&prf_vmlinux.link, &prf_list);
> @@ -565,10 +564,10 @@ static int __init pgo_init(void)
>  				 &prf_reset_fops))
>  		goto err_remove;
>  
> -	/* register module notifer */
> +	/* Register module notifer. */
>  	register_module_notifier(&pgo_module_nb);
>  
> -	/* show notice why the system slower: */
> +	/* Show notice why the system slower: */
>  	pr_notice("Clang PGO instrumentation is active.");
>  
>  	return 0;
> @@ -581,7 +580,7 @@ static int __init pgo_init(void)
>  /* Remove debugfs entries. */
>  static void __exit pgo_exit(void)
>  {
> -	/* unsubscribe the notifier and do cleanup. */
> +	/* Unsubscribe the notifier and do cleanup. */
>  	unregister_module_notifier(&pgo_module_nb);
>  
>  	debugfs_remove_recursive(directory);
> -- 
> 2.32.0
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106140849.F65DB86%40keescook.
