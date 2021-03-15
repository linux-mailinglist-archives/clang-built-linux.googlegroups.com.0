Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEOIX2BAMGQEWAZLDRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4348433C552
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 19:14:43 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id 20sf1228431plg.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 11:14:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615832082; cv=pass;
        d=google.com; s=arc-20160816;
        b=jSGaWlxda+dnxja7iVBuFeBazhh0jtYT5fhVbypYIOrArR5nKxtVtpjGOLBjA7vv5i
         yJU2AmIW6Zy3elxgABOuwFeq/p+9DaNrl6advhiNdDe4fYGusHdX6E7eItTH/wzHFXft
         4Ni7eXCV6xgPGqE1PSYVWu0lGk8d9WU1mWK0wz7kUMb0l6pLw8yXa6crgVN3CR6gc8l+
         okIjEUp4GVgrNJuYBKerFmTo+5KqWTZQgpjavutgqj3efzKsj27RCDit41ZDvclR+qKf
         DC1R/K76nVgGbeDVuVWicOarkTZTroyl7oAXKa9kN15XJugonFiLrBQ1g8st6OfH07Ya
         /pMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kOiaExv4vckdk9D8bgHzBripQX1RgrVIaNva8kX9nEU=;
        b=cIFO4mdtf42iwKmQCsDkiMCbJtQWdE2No2k+GAW+wy0zaMa2kREAgdw9TOfOWwyHai
         dmM81/P/DDj/n+WTcH8fiKsb2hV5ZRFPdmbre0V+XiIDX2H9KQRk2ee9E8WQff4mme4l
         7ollnlRfeXjFVrp+/xi0VCWnMtod2zETmdJttdwOStWgAFW8mmgHhZ8jkuQlpefoanVg
         zzyYo3ELYj7jD5OWvm6r0aE8A2AmImKrzuMuxEl/EkkR1/Bo+8SDuxg1QyBQTgyeQpgP
         78CU80OH2z/GmLsM9Mc9J1vib17ZJ/mSZtEuRzIt0bSjDX9rzy1CL8OKTmRalPdA9IlE
         Xibg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VkUc79ct;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kOiaExv4vckdk9D8bgHzBripQX1RgrVIaNva8kX9nEU=;
        b=eW3TwlA1CZSBVWu3R9995/wqMLtVqRkp90Om8IO4m7A68zb0bzUwC+uXMWrdI5vnsr
         Dc7/qlTJv4/juTwdZ24KCIOfQ7kETHWzqzxW4wtweIQ6GdkdxLfwLaL5aYJgePvllIFo
         sJyytFguvAMHcBd6wpjEeBV6BVWFo0uLQlAd242F4ALLezrb/+mb03MFkSi/y0FVtJf3
         tr4p/C3n3fSNZg2szScjxGbb15kBfkO7bBVBLQZTafM3t2aTPh/oET0GutQSXgwNufDe
         5rhP3rZe3ZlQAz+bI3r3w9y0SFWecm++BlEFWnUm9wtR8gpfHfRkm7IaJNdA+CGkD7iZ
         2n5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kOiaExv4vckdk9D8bgHzBripQX1RgrVIaNva8kX9nEU=;
        b=D4SU32/if4y/LPribXMZfvCAihdW8VCrMyV6KyrI8V/Ai0VEgFURBVG67atn7IPwd8
         sQI02v+BueXWZZkb3MaMOQjkqZCFr3tWjST974kiQu78qOfyDbljthqxWwvAMVTy+Z1v
         EroKW38+oLzhgZVilZ28JrCM7SmO7S4kyfL/lHDyfb1Ukr0gxPqtHgHwHhBsQz6CdqmL
         EbFXAEefVyc2u5lfhwvY+JwIeqaGLfQPuULY8zAbblI8KSZk5gt1YaF4uimxm3zzl3fU
         GF0jyQ8OCAa0n1mqFzyXwyei4/WF3L2qukeGspip33BRZb/eoA/9b4+LlFq6IxvcaEym
         H4nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533u5cts+VcVuOK6vVI+CStl+idD4P3jnFJMVy+Fnaoorg2T6tnF
	mIwgwItbP6NFrTXifJbyh6c=
X-Google-Smtp-Source: ABdhPJyD4e/hRIlrq8XVEKLA66jdgeLA0mUTFuGQh9DuD7z5982cxWw60l+dckBpmUYqXwAmg7Agtw==
X-Received: by 2002:a62:8cd3:0:b029:1f3:17da:da13 with SMTP id m202-20020a628cd30000b02901f317dada13mr25889043pfd.52.1615832081876;
        Mon, 15 Mar 2021 11:14:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:930c:: with SMTP id bc12ls5041970plb.10.gmail; Mon,
 15 Mar 2021 11:14:41 -0700 (PDT)
X-Received: by 2002:a17:902:6547:b029:e4:547b:77cb with SMTP id d7-20020a1709026547b02900e4547b77cbmr12659273pln.75.1615832081346;
        Mon, 15 Mar 2021 11:14:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615832081; cv=none;
        d=google.com; s=arc-20160816;
        b=uhhg4v6wx+uUSZ0d3U8V/9phlAXkwmAwYWz5MStbAgvPjtS8Izqyy2dKXWmH84aGOc
         SchkyXm4qWcmU+ZKYUoQcnksdWEe8xw7YH27hdpVE9i5UvHbdDeKnHI6y2b5zGPDt8Ln
         58B3JtjmtkX3CgtrZSpEwOX5iuPNfQcGnTRyUG1LARtHSE+IQYykN5xOaUjuGeVm+YSj
         WYEJsy1GVLMPB4CQ6HcCABocNgKy/jYdgKq6Fq4a0RxDiB/05pUDCuYFmDwcukEGhGno
         fkmwEjyFi34TIC8FwjM8zs7Fkw0XkghrvMHjHWHlQtTc3qsjr5ms5Vkhija9nPUv3GDm
         6zYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kHlbVwvZrArtprnYawknYYzFLulj7DeOjxNsK8mC878=;
        b=o8LM01GPTssnZyHWlP7I8RAa9UJaILhbFzfOu9GheCnTP+2ZcjpEt54N0enEXOaZd8
         CxKDsfldgSCHw/XxAwAo5TylBW3EW4mzaE70885k44q5EMiMjJSNAzjIjSWrqJzWB2oV
         QcFp1WsoxG0fsaDARmSAI7byQ/vI88NUdTLnGZ0R8szNTM0Wfeh0ct5tzGYeF3UbjBX/
         9MfHtPGDjECLekJ+kdXX9aP3aEMnnwJxM4z6xt59Cnayr/7EH48SrwiRXCAI9uW5Q/b2
         CaSHYPG8GbC7LO7F+Y/ItXXYwvvhvy6xlLVRSR0MF1Dx6bjD+hIGccoYhqME+QqYK2kX
         nqyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VkUc79ct;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e7si786162pfi.1.2021.03.15.11.14.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 11:14:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9447664DF0;
	Mon, 15 Mar 2021 18:14:39 +0000 (UTC)
Date: Mon, 15 Mar 2021 11:14:35 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>,
	Prasad Sodagudi <psodagud@quicinc.com>
Subject: Re: [PATCH v2 2/2] gcov: clang: drop support for clang-10 and older
Message-ID: <20210315181435.ta56n3r4dusdpl2p@archlinux-ax161>
References: <20210312220518.rz6cjh33bkwaumzz@archlinux-ax161>
 <20210312224132.3413602-1-ndesaulniers@google.com>
 <20210312224132.3413602-3-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210312224132.3413602-3-ndesaulniers@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VkUc79ct;       spf=pass
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

On Fri, Mar 12, 2021 at 02:41:32PM -0800, Nick Desaulniers wrote:
> LLVM changed the expected function signatures for llvm_gcda_start_file()
> and llvm_gcda_emit_function() in the clang-11 release. Drop the older
> implementations and require folks to upgrade their compiler if they're
> interested in GCOV support.
> 
> Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
> Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> For an easier time reviewing this series, reviewers may want to apply
> these patches, then check the overall diff with `git diff origin/HEAD`.
> 
>  kernel/gcov/Kconfig |  1 +
>  kernel/gcov/clang.c | 85 ---------------------------------------------
>  2 files changed, 1 insertion(+), 85 deletions(-)
> 
> diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
> index f62de2dea8a3..58f87a3092f3 100644
> --- a/kernel/gcov/Kconfig
> +++ b/kernel/gcov/Kconfig
> @@ -4,6 +4,7 @@ menu "GCOV-based kernel profiling"
>  config GCOV_KERNEL
>  	bool "Enable gcov-based kernel profiling"
>  	depends on DEBUG_FS
> +	depends on !CC_IS_CLANG || CLANG_VERSION >= 110000
>  	select CONSTRUCTORS
>  	default n
>  	help
> diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
> index 8743150db2ac..14de5644b5cc 100644
> --- a/kernel/gcov/clang.c
> +++ b/kernel/gcov/clang.c
> @@ -75,9 +75,6 @@ struct gcov_fn_info {
>  
>  	u32 num_counters;
>  	u64 *counters;
> -#if CONFIG_CLANG_VERSION < 110000
> -	const char *function_name;
> -#endif
>  };
>  
>  static struct gcov_info *current_info;
> @@ -107,16 +104,6 @@ void llvm_gcov_init(llvm_gcov_callback writeout, llvm_gcov_callback flush)
>  }
>  EXPORT_SYMBOL(llvm_gcov_init);
>  
> -#if CONFIG_CLANG_VERSION < 110000
> -void llvm_gcda_start_file(const char *orig_filename, const char version[4],
> -		u32 checksum)
> -{
> -	current_info->filename = orig_filename;
> -	memcpy(&current_info->version, version, sizeof(current_info->version));
> -	current_info->checksum = checksum;
> -}
> -EXPORT_SYMBOL(llvm_gcda_start_file);
> -#else
>  void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
>  {
>  	current_info->filename = orig_filename;
> @@ -124,29 +111,7 @@ void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
>  	current_info->checksum = checksum;
>  }
>  EXPORT_SYMBOL(llvm_gcda_start_file);
> -#endif
> -
> -#if CONFIG_CLANG_VERSION < 110000
> -void llvm_gcda_emit_function(u32 ident, const char *function_name,
> -		u32 func_checksum, u8 use_extra_checksum, u32 cfg_checksum)
> -{
> -	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
> -
> -	if (!info)
> -		return;
>  
> -	INIT_LIST_HEAD(&info->head);
> -	info->ident = ident;
> -	info->checksum = func_checksum;
> -	info->use_extra_checksum = use_extra_checksum;
> -	info->cfg_checksum = cfg_checksum;
> -	if (function_name)
> -		info->function_name = kstrdup(function_name, GFP_KERNEL);
> -
> -	list_add_tail(&info->head, &current_info->functions);
> -}
> -EXPORT_SYMBOL(llvm_gcda_emit_function);
> -#else
>  void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
>  		u8 use_extra_checksum, u32 cfg_checksum)
>  {
> @@ -163,7 +128,6 @@ void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
>  	list_add_tail(&info->head, &current_info->functions);
>  }
>  EXPORT_SYMBOL(llvm_gcda_emit_function);
> -#endif
>  
>  void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
>  {
> @@ -326,7 +290,6 @@ void gcov_info_add(struct gcov_info *dst, struct gcov_info *src)
>  	}
>  }
>  
> -#if CONFIG_CLANG_VERSION < 110000
>  static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
>  {
>  	size_t cv_size; /* counter values size */
> @@ -335,47 +298,15 @@ static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
>  	if (!fn_dup)
>  		return NULL;
>  	INIT_LIST_HEAD(&fn_dup->head);
> -
> -	fn_dup->function_name = kstrdup(fn->function_name, GFP_KERNEL);
> -	if (!fn_dup->function_name)
> -		goto err_name;
> -
> -	cv_size = fn->num_counters * sizeof(fn->counters[0]);
> -	fn_dup->counters = vmalloc(cv_size);
> -	if (!fn_dup->counters)
> -		goto err_counters;
> -	memcpy(fn_dup->counters, fn->counters, cv_size);
> -
> -	return fn_dup;
> -
> -err_counters:
> -	kfree(fn_dup->function_name);
> -err_name:
> -	kfree(fn_dup);
> -	return NULL;
> -}
> -#else
> -static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> -{
> -	size_t cv_size; /* counter values size */
> -	struct gcov_fn_info *fn_dup = kmemdup(fn, sizeof(*fn),
> -			GFP_KERNEL);
> -	if (!fn_dup)
> -		return NULL;
> -	INIT_LIST_HEAD(&fn_dup->head);
> -
>  	cv_size = fn->num_counters * sizeof(fn->counters[0]);
>  	fn_dup->counters = vmalloc(cv_size);
>  	if (!fn_dup->counters) {
>  		kfree(fn_dup);
>  		return NULL;
>  	}
> -
>  	memcpy(fn_dup->counters, fn->counters, cv_size);
> -
>  	return fn_dup;
>  }
> -#endif
>  
>  /**
>   * gcov_info_dup - duplicate profiling data set
> @@ -416,21 +347,6 @@ struct gcov_info *gcov_info_dup(struct gcov_info *info)
>   * gcov_info_free - release memory for profiling data set duplicate
>   * @info: profiling data set duplicate to free
>   */
> -#if CONFIG_CLANG_VERSION < 110000
> -void gcov_info_free(struct gcov_info *info)
> -{
> -	struct gcov_fn_info *fn, *tmp;
> -
> -	list_for_each_entry_safe(fn, tmp, &info->functions, head) {
> -		kfree(fn->function_name);
> -		vfree(fn->counters);
> -		list_del(&fn->head);
> -		kfree(fn);
> -	}
> -	kfree(info->filename);
> -	kfree(info);
> -}
> -#else
>  void gcov_info_free(struct gcov_info *info)
>  {
>  	struct gcov_fn_info *fn, *tmp;
> @@ -443,7 +359,6 @@ void gcov_info_free(struct gcov_info *info)
>  	kfree(info->filename);
>  	kfree(info);
>  }
> -#endif
>  
>  #define ITER_STRIDE	PAGE_SIZE
>  
> -- 
> 2.31.0.rc2.261.g7f71774620-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210315181435.ta56n3r4dusdpl2p%40archlinux-ax161.
