Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXEPV6BAMGQELJFZAIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2C13397D4
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 20:58:22 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id y22sf14119990qkb.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 11:58:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615579101; cv=pass;
        d=google.com; s=arc-20160816;
        b=fjzn0EMUJmqypmnHyi5AwsSUCitHS0X8x1nUnn7mNRilwTttj0ql/0AKOVKAo9JcyW
         eoStjlFUQXkniZX6XdVgdv1/s2fN15BLeaIoC3xAzm7/haeyic9bZuzExZmBe//8u0Uc
         j2u+cVMRmDP4cg7zWH2Pu0HjwJlq98iyVLIOMyUiilz+5XLBIvvCb8bnlXo8DSxlLkpy
         5bAulXz7omSdp/NfIlf3fHPbE7unN5n1APIfHVCs2OjgXyP8oq9ZgEZiiNNyzKEL9kLq
         x3D9ekmvr2W1i/VIu7DeAr/+uQdPUeJ5P/6wKO+WzjGiLC06qostENu1I8wMbO0OAZBj
         HmBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Lm+whAkH/V2pjM6hJmRmTWpUwXK4bDp2I5+9t/fpbLw=;
        b=TzTB9UZea09L3OPtF5frXEXa943DdTQrO+/o/dhAVYn7PBcMXi3W1p7yqBVN0N+6sh
         GCkac30m/DLK3lm7KjCHC6u4F8yCqBHdms0klV2ajEpArVzmhpRmjn/NTn9uAJChWbFL
         K/zHlRsshoaoHE+Le/eRCWUChYDez3f6bii3S9Vt2VqYEB54BQ5Ya8yVK/uFS2IeiJ1J
         QAGqOES3KcgC8fdVW2BVWGvZeDUMUFLHH/VJMrDcloXBnWXXd9S9ljUNhI1D+yXu9cUq
         VA9V1a+pzyjEuXYN95y5ar3u19cuCJbeYXEyJQHXP9+iQJ1Zme4hdAbpHFO154xTbXLF
         NrLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HPAy7gy6;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Lm+whAkH/V2pjM6hJmRmTWpUwXK4bDp2I5+9t/fpbLw=;
        b=OJsJNE+5eFE0QYofsffpMwrCljrOBl51XHIO2XSPA2lGReq4NYOXrPk1W+P8wrHJdT
         1Ux+JiuqVXjZ8rLF0FA0ckBGqbj6xYmUpL1Z5BRNX1yJMzIUPw/9RiWw6tMLD9kllQDq
         a3JqjEVHp/uy2TpGD6klQP2Ixthm3i+gi7kG2cpJ9RJNDbxSMKYhm9X9aGPoqGkDB1n9
         mg1C8ESWtL16zo6wuDfkuJCsr8rVT46MgaZCjRqnkZsh9I5yVgVwAJtIG5q9EwvFwynp
         gmopL9svaBL2w0K+7ACT27XPbeGC/W/5CM6Xku8pceGs5jvtii9xrWx3epoUxpPawZxi
         BfdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Lm+whAkH/V2pjM6hJmRmTWpUwXK4bDp2I5+9t/fpbLw=;
        b=KYTP0hlLZTOrrqqV4Dl0WiILohyhmqkF5W7MM0rFXUzlaW/HdzA+eqPtBppjNDwxft
         CLbcpQyCZeQYZQhC8UDjINoHDZ0vgEOQpTyW5g7Y9cjlNkYYt0EpzxIGnmvGc2pFvIsh
         gYYLk4dDV7/B4PjprKVA0mgMVSuhZf0yM0nNvKIbt0DGl3IxswKpG8U1sh851a7Nhkaf
         cTVlZDPA9ajKv8tFP033rmPd5fTz7hf/cM0WZZTl0WoH4AIdzeq7oomIIfeP8yTekgJ4
         XBbSUpborSz/Le9dJu5M9+YCczY6wBc9s9V5si2ZsIaQM2uLEJxZFRiaDqzWoQrKo2hS
         e/BQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318aqlApM79JOBQzjZUfw3G8j/q04CQK2vQlgL4HTmMMvJDTAK0
	HugFlsdXJkkI42ryWsd/QRc=
X-Google-Smtp-Source: ABdhPJzkYoOFCI/fy+fE5YSB+KTJEJ92prEb8NHyCHfgic2f8cPED/qh5+Yi4Rul2HTEHQ0/cbLGDQ==
X-Received: by 2002:ac8:70d3:: with SMTP id g19mr12947493qtp.227.1615579101123;
        Fri, 12 Mar 2021 11:58:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7508:: with SMTP id u8ls3888085qtq.0.gmail; Fri, 12 Mar
 2021 11:58:20 -0800 (PST)
X-Received: by 2002:ac8:44b2:: with SMTP id a18mr12883993qto.285.1615579100605;
        Fri, 12 Mar 2021 11:58:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615579100; cv=none;
        d=google.com; s=arc-20160816;
        b=NCfAP6qMSBQJDd9xMjdizXnO5uphSu+09Pi/1/I1TLDIC1ynJDVWMB3yyTD9FX5Yhv
         U4VZDZztzoZ6Af4vDppyjshMvyASCzOIsip1QcnGTVZRf9h4JLvApKrvpC92wqOGiqlV
         +OPuwtnUFRxXvpx5YCic6/lJJJn8riJ1D7wn9m6atax6qjjw/IzDN5XOTo6JVIsnC66M
         BT59pzNVzZmklBnXxEGj6glLUP3aPBIiresuTOTEh0ajnD9V/6/xT03CNv8kzkiEdBo8
         bSegXKKeu5yyJpp9a29kSOMDRp7C4lBkOFVnOKdUe92+iyr3nqY3cyYn2xY8GbfrXlxc
         t5pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0ycl4tHQm+g6LtAxXIsueXswEI3OIZiU2GrNkYzE65I=;
        b=lqkdm1zFvdqKbDd1U6iO2WUlcRbZ14t1sXx5I6uF5JIx10Brp80obRR+JVjG52sUsV
         xE7ksUdfIyzuQkJOwCrruDaQ4ilG+lG7FJ3xs+fb13HnooL67xnkZxWdtih1JJ+llCFe
         X26FeEu4z2d+NRjSrCSPUp7nWCCmPLSyQnsCgtfGcRl0vWkHo+Mc/kOluHBcpxSwKmRk
         uNiejr3lO8RbF3rF4LGpcHXAsVQOJ9Uti5naO3tonc9puoHNMo5EPrpo5a6Svwil+Cil
         At+h91p49bgm8Zlz2kejS1/vy0GkI+L68u75OdV1sKasXu5JsOYHU4GZZplzeq+fwZLb
         3Xrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HPAy7gy6;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g4si318337qtg.3.2021.03.12.11.58.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Mar 2021 11:58:20 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 208BC64F83;
	Fri, 12 Mar 2021 19:58:17 +0000 (UTC)
Date: Fri, 12 Mar 2021 12:58:15 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Fangrui Song <maskray@google.com>,
	Prasad Sodagudi <psodagud@quicinc.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] gcov: fix clang-11+ support
Message-ID: <20210312195815.2hnhuyk3qo4p7ysr@archlinux-ax161>
References: <20210312192139.2503087-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210312192139.2503087-1-ndesaulniers@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HPAy7gy6;       spf=pass
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

On Fri, Mar 12, 2021 at 11:21:39AM -0800, Nick Desaulniers wrote:
> LLVM changed the expected function signatures for llvm_gcda_start_file()
> and llvm_gcda_emit_function() in the clang-11 release. Users of clang-11
> or newer may have noticed their kernels failing to boot due to a panic
> when enabling CONFIG_GCOV_KERNEL=y +CONFIG_GCOV_PROFILE_ALL=y.  Fix up
> the function signatures so calling these functions doesn't panic the
> kernel.
> 
> When we drop clang-10 support from the kernel, we should carefully
> update the original implementations to try to preserve git blame,
> deleting these implementations.
> 
> Link: https://reviews.llvm.org/rGcdd683b516d147925212724b09ec6fb792a40041
> Link: https://reviews.llvm.org/rG13a633b438b6500ecad9e4f936ebadf3411d0f44
> Cc: Fangrui Song <maskray@google.com>
> Reported-by: Prasad Sodagudi<psodagud@quicinc.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

I can reproduce the panic (as a boot hang) in QEMU before this patch and
it is resolved after it so:

Tested-by: Nathan Chancellor <nathan@kernel.org>

However, the duplication hurts :( would it potentially be better to just
do the full update to clang-11+ and require it for CONFIG_GCOV_KERNEL?

    depends on CC_IS_GCC || CLANG_VERSION >= 110000?

> ---
>  kernel/gcov/clang.c | 69 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 69 insertions(+)
> 
> diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
> index c94b820a1b62..20e6760ec05d 100644
> --- a/kernel/gcov/clang.c
> +++ b/kernel/gcov/clang.c
> @@ -75,7 +75,9 @@ struct gcov_fn_info {
>  
>  	u32 num_counters;
>  	u64 *counters;
> +#if __clang_major__ < 11
>  	const char *function_name;
> +#endif
>  };
>  
>  static struct gcov_info *current_info;
> @@ -105,6 +107,7 @@ void llvm_gcov_init(llvm_gcov_callback writeout, llvm_gcov_callback flush)
>  }
>  EXPORT_SYMBOL(llvm_gcov_init);
>  
> +#if __clang_major__ < 11
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
> +#if __clang_major__ < 11
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
> +#if __clang_major__ < 11
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
> +#if __clang_major__ < 11
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210312195815.2hnhuyk3qo4p7ysr%40archlinux-ax161.
