Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWOHX2BAMGQEZABCQUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1A233C550
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 19:13:46 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id v18sf407601qtx.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 11:13:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615832025; cv=pass;
        d=google.com; s=arc-20160816;
        b=nDbRnORWDxvi/MrvenA/YxFkkRexE1XY6vY7KSNSluuWeYqdIM41LjpEz4iHs/kGTG
         qWy5Egkzy/jv25Hk7H+O8FJdSnel0ghG5On8ePFDx6xQNzwAWhrCo2RGSlov5cFwjCpU
         22tNP+2qTuRnrgbRlIRPTjEREFFqlkuRumKjg4XKNHX9K0ftGxbCx+GP6FkLxqNqeXy9
         jthmkHiJMqVe+MS/uPZ7RlSHTfIODmQstJeWCV0r2lvZatsSRSUmARYHgp5g9dnNrzxt
         48MCwXz00TmOoid6BKtOFMRayeC/bNAW9wF2vlys10zHArqkNip8/cFm2JboMTvJkAph
         XO6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=atjGZPU5Lr4WCVEIalWGdjkF67ZnxBK6kesFkT0eJII=;
        b=kn6Qj08xKG+PFswoexMiKli7yQVSRdpSoC+bxaLLVEBzPBpa7ALt/qncKGh1CPtqpw
         gur54wWV2zYCkpa+lS6hen7BXQjkjR0lArmvzfwCzINANAJL8psJ2L5iPnCvkA9dtU2X
         ub/DIxSyiAoPvv+Xl8VOAR80ZzZvQkCrJJq3zviAlg9y4Oo9YugBmFyqJQaZKj+hzw54
         iM6BXiJyzbSACXglKmdsufpyd1PWl3zCE0HhcqvFDPQkAh0uwyOad0vKcHPcvknJomLX
         1DD0HamnwBERViJ4hAK9qiIW07sT8hJrh+7cHMx0pjlglmc/13Y6NkpWXS5bKOBTAIuN
         XXeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RUaJd9Ns;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=atjGZPU5Lr4WCVEIalWGdjkF67ZnxBK6kesFkT0eJII=;
        b=QeRd1gzauvT5JbL9G1HeWEvkYx+wkbMI3hm87sBNXGNB5eEqd/obMCcMAXijgaiYM9
         hYvd7O6cxcNaNfZ2ll9jekRz7BNjb0nv4Zdyb2dl7B+RWtjnkQV1Cq7kPK+C88Q+fNQt
         ZpbWNoxOgrneqEYiUBTouRkF07zK6gi97FMbNryqN4Nt1QjceDKD+lkWEXGuDpZahU/S
         lHNMcLNc6kAafT6O0nhIVGf5ooAJAo7/nJuU6DogE30sKzB+pmRmY/40ux7hKE4ttYSZ
         yFEmwr6qO7Uto6uFKEZELgDpwA7O0lJYh3B1pT1iiT5oKdQNrN7+DgDZYC1+4utGy1vJ
         34mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=atjGZPU5Lr4WCVEIalWGdjkF67ZnxBK6kesFkT0eJII=;
        b=K6DTgC4qVtksEyIGWQr/A8xigdraKkv4iUj5usnMaVxff9jFjw2QF8nmvPsAExw5we
         DiqEjMeu0f/OeK3Wpdc1KcAdQQMi3M4ikxNANXtBpzf+dC35tQjVFTWk9nduEQYHxPnx
         ze8LpuzqjFfelxUM5OWFriVFUJfK5zosFHMWnxxkJEKNjvKoxyOQkF40gzvnRNEECX89
         g6xa6SE1V22O3oDTP9BXln/hbjVFXqtF4W7sba3ql6sOTrppcsYhMSAQW7BkLiuk4w9v
         1uYdgJmZJSupoEyES5jQm+Ko2shY2c9gnJ16iw/uCS9JChE2I+wDGpOgOQgn9TjzVavD
         PCgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321KDJfPNz8Ao+k8U3phUnhbkfGaYC5YdZrF1R4nce9K6mva1xw
	5esCew8yfiKS488U2f5uJy8=
X-Google-Smtp-Source: ABdhPJzaH+8TtrVJYEz9y2xaUN1dfwhG522LGi0cAVCClQmIYDgACLPhYFMI8aiLqghYc9qAAbB4tg==
X-Received: by 2002:aed:34c6:: with SMTP id x64mr23920238qtd.40.1615832025783;
        Mon, 15 Mar 2021 11:13:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:b19:: with SMTP id t25ls9555537qkg.1.gmail; Mon, 15
 Mar 2021 11:13:45 -0700 (PDT)
X-Received: by 2002:a37:af85:: with SMTP id y127mr26874709qke.268.1615832025387;
        Mon, 15 Mar 2021 11:13:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615832025; cv=none;
        d=google.com; s=arc-20160816;
        b=y02TY/Rtefm0wQxRs8epmNfVxf1B0noarUJMCk5JJu7M3ouNVFIrDIkUgUawT+RE9T
         oQFxMr/+xkXACReIHLtoZk86lJhcx8BITbQRX1bJBDDanDopQ5D6R4tMqk6SJARS+upr
         uTyqW7AUQlNTMnYHJ/u23DK92BWXlQCO9AmfeKdsiSYmjHzWFcfyRsuY6/atfati0ZD0
         /Z3Z8P+itbHUtk7dxgup+YAWDrobNiF3f8sEWA1GeBty0EYX4Xaoe/lkKdph17p8S/f/
         HuZKY2gLspH0q/DXaAe07V/mv0rE0ShBY+BzeQrqAp5UmIbW9lnH+UUjv2SpksbS9jFQ
         QXOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gER6u2e0lchACyxxCJ4t36liMsLY3cPSktT5dUZPU8Q=;
        b=wour7Iah6fGNBICOlZ5S6WJRiYfu+n2YFFWIdKhGS5V4Vcdlk4xV9uPLo+jrNfgeUj
         mCU/6rgfL6+BVKZBh+J3cwUu0tpI4Im0WM3CeCY+1hLAOFXFxaw6lLMAW1osvAczA7iy
         tsw/PElBN526x4WIMTg03j/cEVx2N3bME8sCAQUXBUu8KP6XQwzWnxEguEToEvnhmLFT
         DvscOX7rPqKKbxgtAlE5CdTm6BGCuE78dIjg5F5buzE18YiJSXBHC8Sva0wQ/7xfKlFh
         e5xO6AUibOyQj8gu9HYnLVsG8MvVx3k3iUjJVJDTek681jWIn1JhkNXhEwogkSiPB4Tv
         2tUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RUaJd9Ns;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si642616qkn.0.2021.03.15.11.13.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Mar 2021 11:13:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B27F264F01;
	Mon, 15 Mar 2021 18:13:42 +0000 (UTC)
Date: Mon, 15 Mar 2021 11:13:39 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Fangrui Song <maskray@google.com>,
	Prasad Sodagudi <psodagud@quicinc.com>, stable@vger.kernel.org
Subject: Re: [PATCH v2 1/2] gcov: fix clang-11+ support
Message-ID: <20210315181339.bzs6t7aonlaavggw@archlinux-ax161>
References: <20210312220518.rz6cjh33bkwaumzz@archlinux-ax161>
 <20210312224132.3413602-1-ndesaulniers@google.com>
 <20210312224132.3413602-2-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210312224132.3413602-2-ndesaulniers@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RUaJd9Ns;       spf=pass
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

On Fri, Mar 12, 2021 at 02:41:31PM -0800, Nick Desaulniers wrote:
> LLVM changed the expected function signatures for llvm_gcda_start_file()
> and llvm_gcda_emit_function() in the clang-11 release. Users of clang-11
> or newer may have noticed their kernels failing to boot due to a panic
> when enabling CONFIG_GCOV_KERNEL=y +CONFIG_GCOV_PROFILE_ALL=y.  Fix up
> the function signatures so calling these functions doesn't panic the
> kernel.
> 
> Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
> Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44
> Cc: stable@vger.kernel.org # 5.4
> Reported-by: Prasad Sodagudi <psodagud@quicinc.com>
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Reviewed-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nathan Chancellor <nathan@kernel.org>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> Changes V1 -> V2:
> * Use CONFIG_CLANG_VERSION instead of __clang_major__.
> * Pick up and retain Suggested-by, Tested-by, and Reviewed-by tags.
> * Drop note from commit message about `git blame`; I did what was
>   sugguested in V1, but it still looks to git like I wrote those
>   functions. Oh well.
> 
>  kernel/gcov/clang.c | 69 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 69 insertions(+)
> 
> diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
> index c94b820a1b62..8743150db2ac 100644
> --- a/kernel/gcov/clang.c
> +++ b/kernel/gcov/clang.c
> @@ -75,7 +75,9 @@ struct gcov_fn_info {
>  
>  	u32 num_counters;
>  	u64 *counters;
> +#if CONFIG_CLANG_VERSION < 110000
>  	const char *function_name;
> +#endif
>  };
>  
>  static struct gcov_info *current_info;
> @@ -105,6 +107,7 @@ void llvm_gcov_init(llvm_gcov_callback writeout, llvm_gcov_callback flush)
>  }
>  EXPORT_SYMBOL(llvm_gcov_init);
>  
> +#if CONFIG_CLANG_VERSION < 110000
>  void llvm_gcda_start_file(const char *orig_filename, const char version[4],
>  		u32 checksum)
>  {
> @@ -113,7 +116,17 @@ void llvm_gcda_start_file(const char *orig_filename, const char version[4],
>  	current_info->checksum = checksum;
>  }
>  EXPORT_SYMBOL(llvm_gcda_start_file);
> +#else
> +void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
> +{
> +	current_info->filename = orig_filename;
> +	current_info->version = version;
> +	current_info->checksum = checksum;
> +}
> +EXPORT_SYMBOL(llvm_gcda_start_file);
> +#endif
>  
> +#if CONFIG_CLANG_VERSION < 110000
>  void llvm_gcda_emit_function(u32 ident, const char *function_name,
>  		u32 func_checksum, u8 use_extra_checksum, u32 cfg_checksum)
>  {
> @@ -133,6 +146,24 @@ void llvm_gcda_emit_function(u32 ident, const char *function_name,
>  	list_add_tail(&info->head, &current_info->functions);
>  }
>  EXPORT_SYMBOL(llvm_gcda_emit_function);
> +#else
> +void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
> +		u8 use_extra_checksum, u32 cfg_checksum)
> +{
> +	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
> +
> +	if (!info)
> +		return;
> +
> +	INIT_LIST_HEAD(&info->head);
> +	info->ident = ident;
> +	info->checksum = func_checksum;
> +	info->use_extra_checksum = use_extra_checksum;
> +	info->cfg_checksum = cfg_checksum;
> +	list_add_tail(&info->head, &current_info->functions);
> +}
> +EXPORT_SYMBOL(llvm_gcda_emit_function);
> +#endif
>  
>  void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
>  {
> @@ -295,6 +326,7 @@ void gcov_info_add(struct gcov_info *dst, struct gcov_info *src)
>  	}
>  }
>  
> +#if CONFIG_CLANG_VERSION < 110000
>  static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
>  {
>  	size_t cv_size; /* counter values size */
> @@ -322,6 +354,28 @@ static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
>  	kfree(fn_dup);
>  	return NULL;
>  }
> +#else
> +static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
> +{
> +	size_t cv_size; /* counter values size */
> +	struct gcov_fn_info *fn_dup = kmemdup(fn, sizeof(*fn),
> +			GFP_KERNEL);
> +	if (!fn_dup)
> +		return NULL;
> +	INIT_LIST_HEAD(&fn_dup->head);
> +
> +	cv_size = fn->num_counters * sizeof(fn->counters[0]);
> +	fn_dup->counters = vmalloc(cv_size);
> +	if (!fn_dup->counters) {
> +		kfree(fn_dup);
> +		return NULL;
> +	}
> +
> +	memcpy(fn_dup->counters, fn->counters, cv_size);
> +
> +	return fn_dup;
> +}
> +#endif
>  
>  /**
>   * gcov_info_dup - duplicate profiling data set
> @@ -362,6 +416,7 @@ struct gcov_info *gcov_info_dup(struct gcov_info *info)
>   * gcov_info_free - release memory for profiling data set duplicate
>   * @info: profiling data set duplicate to free
>   */
> +#if CONFIG_CLANG_VERSION < 110000
>  void gcov_info_free(struct gcov_info *info)
>  {
>  	struct gcov_fn_info *fn, *tmp;
> @@ -375,6 +430,20 @@ void gcov_info_free(struct gcov_info *info)
>  	kfree(info->filename);
>  	kfree(info);
>  }
> +#else
> +void gcov_info_free(struct gcov_info *info)
> +{
> +	struct gcov_fn_info *fn, *tmp;
> +
> +	list_for_each_entry_safe(fn, tmp, &info->functions, head) {
> +		vfree(fn->counters);
> +		list_del(&fn->head);
> +		kfree(fn);
> +	}
> +	kfree(info->filename);
> +	kfree(info);
> +}
> +#endif
>  
>  #define ITER_STRIDE	PAGE_SIZE
>  
> 
> base-commit: f78d76e72a4671ea52d12752d92077788b4f5d50
> -- 
> 2.31.0.rc2.261.g7f71774620-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210315181339.bzs6t7aonlaavggw%40archlinux-ax161.
