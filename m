Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR42XCBQMGQEC3ROEBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CAF357530
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 21:51:38 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id jz17sf4138456pjb.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 12:51:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617825096; cv=pass;
        d=google.com; s=arc-20160816;
        b=gbGEqoXO9H4T/GeMGuN0h5916Y/Ma1vrqvl4MLKFfUbBCNhMZM+k6NdBvjMbbqQ1SW
         9giIjU58Cr7qXWR3Ylpo4PIkBhZ8Lcu3cT/4TtKoIYyGHlM8XArqn/N8syZ1pYltHrw8
         FkwzIoQKcrP67D4l1AORmrStlH9wiO5cVl/OqYi5s0vFeDqEt21L/hImrjNsbK4GKOc0
         uxP5U/HOAi+YIk+aRF+EQmjBbtCaIJEiDsRhmQvLo95laCWCGfdeZzwZ3ooNJwXT3vIA
         F+yBjYhNDF6aWUdbh9eeZDYADwNGNNydlkgnLNOG++0t36lTZbML11HiadS7JRZcxJQ8
         lBCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Pmgf/i4MIfAFOl9PXMefieaqzzQdIsOr3I3NVYNdpz4=;
        b=s8Lcekcf4dlmg/Zw0jjopX1dFbc65qz753IxHwN06Cj63nzXTeXmkZQnuFHgdG8wcD
         ko7dj+96oVIvKBE4D2oPMvueqKwmQkFn/pxiRx4yM5BvhP3kIMjE3eG5yKkH/Ok+ZEo+
         Z+KRf9/ZMUq+8n2vCUDiLaWcOOauEpq+maNpbvSlvZQVeocePqlH1KhyXNjxf68wdQML
         4Qm29mlburuRd1/chP5aZfsJSNBEf90v3XrXRMT+NpA8Aneptu8BLaynclUeUMZnBqGz
         ePrccjthv1l6GjJHjHsuHAaODh/jHFsI1+UBSZWBIKCPU/NIW8O3vmfEc34hKZU4qcAg
         B1Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aL3N2w7M;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pmgf/i4MIfAFOl9PXMefieaqzzQdIsOr3I3NVYNdpz4=;
        b=MqoQpBLCsATQdDOdGwW8oXBx8nfnzw6eIlBwD6WR89aT5MprepwDbRddXSB9eZOaTI
         6erdsj0A0T15Gr6UMdkpknSk06T8MisClIrT2x9BG9Y80tHb4NX/bmPF3gd/brj/+hs5
         UNT+w9hHyIVUelPXgOJ7IzDZz3zu4i4okW1RwRRhYW7zj3sqYGYSv6SwWzyKKtAhFpaS
         sD0ElWYsuXlU2XLtvm78gEgNulj7iK5g2K6KWmf7KuGOTGjxL3n75U7jvuDIVQ2pLHxy
         gMHiaAdieJnb3iiQjuE51EKadq/OJmHdCNJtuN+I0zdSVdy2GdegapA6z3hfJF2OXKMI
         pwaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Pmgf/i4MIfAFOl9PXMefieaqzzQdIsOr3I3NVYNdpz4=;
        b=KaXjDqLEJAJg9FlvxYc7q+1B0vfJ+LmtcDeEROPfYwEWz6NueNmomFTyV9fLoseBsS
         +GPUKCtkT6ytiUPXLgujrDfujPdbSEPBc9YPVWldOrUvCpSOMgSl3ut4izbrEVqhLHWa
         atERrajqz1t5ZdqJTMmfY56PQsJNa7kUp6lWegOYm55K+1l1z5p5KyoHTBq9J5NVzt9J
         /ebuNFzsxM9ZCApZzp9d5Iegh3Co6hZqf6nkDqcezLIbNeFP8FwMjLqPE1o5zfKKNtam
         Ks35HU87xB5nrMGR6cCh6d0E/hBhN+UKetBsok3LGk6xYe7J+/UAkqMXd3O6JxMt3CMN
         lkgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EBAp7OwpkHMjt622PMKWAgD6jvBdozs351ATp2OKMK92/njIJ
	qorwBTC04FYBynan9BOeFyk=
X-Google-Smtp-Source: ABdhPJwkgLo9B4lTFllQm3fl8umu8/Lp79AjpyAokBuj8t/rTq7D7gko5Ik2CmlDB3U0hCO/XTqXwQ==
X-Received: by 2002:a63:5f54:: with SMTP id t81mr4737995pgb.283.1617825096075;
        Wed, 07 Apr 2021 12:51:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9acd:: with SMTP id x13ls1176038pfp.1.gmail; Wed, 07 Apr
 2021 12:51:35 -0700 (PDT)
X-Received: by 2002:a65:610f:: with SMTP id z15mr4863088pgu.360.1617825095485;
        Wed, 07 Apr 2021 12:51:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617825095; cv=none;
        d=google.com; s=arc-20160816;
        b=s3E+f6psLBKFqshm2ElvVIvii5KIBgd4Gx7zwbNa/8q64lARKhLzKkiw1IYM00TozP
         xOfFY+aXgLVOX/ayp3GGf2+ip7QIYu4ffi0/qjaVqfGyMFemA5AuOXHlO91qOxYUX4QK
         QvkOvT4U6X9Z8+Ns3EqOFackS+ItXYykH0cIPx9qHwkYgHuOcMNxgMG4BjyJ/YHdXkKN
         Wy5E+MFCsqaE+75v+ILFtZwYFMUVk0pwE3vzSBqNmHwxpkzbn/lNpb+cgFK124klq03N
         Imv+UzNbOhTj8AR9NNCpNxSi7SqiiluymEDYZAK/CKbdIK6KPOx56RpGYB8qkeOC/RhC
         u8Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Lwp2FkmDimPVBYBZlNTJMZRyWqquX9p4mlf5HlmhD7o=;
        b=e7U1eyF6KdtHVKHWtA1M3BO05ZFvO4PPihGDO0jWjSZtXdGz06tNi/f4D5dGY0J7EO
         Pkrw5ydkRqy/IGseqB7OAMe/DjuJAsFMHx2CDLKtrPVumTtTmaBrDf+p2hOcxBb+U1Si
         ZCj+G05BBMzyHSDA/cFgELmrfm0EXtWuSczySRCJ4XWmaSBdQjasILLdhr+BzjMt8/rX
         C9/MmqanKdCm+JhUXT/TQaJfhfj54f7cLQI4Z1OzvmiMGnr5Un58elfz8ECKkUg9iiRi
         IuoHgwReLGEnvVJ8SUNOtwqK9YHWuUfD62GJxotz+kt8zErIg5FQ7U7T++NTxuVG0NyU
         ftNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aL3N2w7M;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ci2si5455pjb.2.2021.04.07.12.51.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 12:51:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8D9AB610A4;
	Wed,  7 Apr 2021 19:51:33 +0000 (UTC)
Date: Wed, 7 Apr 2021 12:51:30 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Fangrui Song <maskray@google.com>,
	Prasad Sodagudi <psodagud@quicinc.com>, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] gcov: re-fix clang-11+ support
Message-ID: <20210407195130.bacppddzyjs56qxi@archlinux-ax161>
References: <20210407185456.41943-1-ndesaulniers@google.com>
 <20210407185456.41943-2-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210407185456.41943-2-ndesaulniers@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aL3N2w7M;       spf=pass
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

On Wed, Apr 07, 2021 at 11:54:55AM -0700, Nick Desaulniers wrote:
> LLVM changed the expected function signature for
> llvm_gcda_emit_function() in the clang-11 release.  Users of clang-11 or
> newer may have noticed their kernels producing invalid coverage
> information:
> 
> $ llvm-cov gcov -a -c -u -f -b <input>.gcda -- gcno=<input>.gcno
> 1 <func>: checksum mismatch, \
>   (<lineno chksum A>, <cfg chksum B>) != (<lineno chksum A>, <cfg chksum C>)
> 2 Invalid .gcda File!
> ...
> 
> Fix up the function signatures so calling this function interprets its
> parameters correctly and computes the correct cfg checksum. In
> particular, in clang-11, the additional checksum is no longer optional.
> 
> Link: https://reviews.llvm.org/rG25544ce2df0daa4304c07e64b9c8b0f7df60c11d
> Cc: stable@vger.kernel.org #5.4+
> Reported-by: Prasad Sodagudi <psodagud@quicinc.com>
> Tested-by: Prasad Sodagudi <psodagud@quicinc.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  kernel/gcov/clang.c | 38 +++++++++++++++++++++++++++++++++-----
>  1 file changed, 33 insertions(+), 5 deletions(-)
> 
> diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
> index d41f5ecda9db..1747204541bf 100644
> --- a/kernel/gcov/clang.c
> +++ b/kernel/gcov/clang.c
> @@ -69,7 +69,9 @@ struct gcov_fn_info {
>  
>  	u32 ident;
>  	u32 checksum;
> +#if CONFIG_CLANG_VERSION < 110000
>  	u8 use_extra_checksum;
> +#endif
>  	u32 cfg_checksum;
>  
>  	u32 num_counters;
> @@ -111,6 +113,7 @@ void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
>  }
>  EXPORT_SYMBOL(llvm_gcda_start_file);
>  
> +#if CONFIG_CLANG_VERSION < 110000
>  void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
>  		u8 use_extra_checksum, u32 cfg_checksum)
>  {
> @@ -126,6 +129,21 @@ void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
>  	info->cfg_checksum = cfg_checksum;
>  	list_add_tail(&info->head, &current_info->functions);
>  }
> +#else
> +void llvm_gcda_emit_function(u32 ident, u32 func_checksum, u32 cfg_checksum)
> +{
> +	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
> +
> +	if (!info)
> +		return;
> +
> +	INIT_LIST_HEAD(&info->head);
> +	info->ident = ident;
> +	info->checksum = func_checksum;
> +	info->cfg_checksum = cfg_checksum;
> +	list_add_tail(&info->head, &current_info->functions);
> +}
> +#endif
>  EXPORT_SYMBOL(llvm_gcda_emit_function);
>  
>  void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
> @@ -256,11 +274,16 @@ int gcov_info_is_compatible(struct gcov_info *info1, struct gcov_info *info2)
>  		!list_is_last(&fn_ptr2->head, &info2->functions)) {
>  		if (fn_ptr1->checksum != fn_ptr2->checksum)
>  			return false;
> +#if CONFIG_CLANG_VERSION < 110000
>  		if (fn_ptr1->use_extra_checksum != fn_ptr2->use_extra_checksum)
>  			return false;
>  		if (fn_ptr1->use_extra_checksum &&
>  			fn_ptr1->cfg_checksum != fn_ptr2->cfg_checksum)
>  			return false;
> +#else
> +		if (fn_ptr1->cfg_checksum != fn_ptr2->cfg_checksum)
> +			return false;
> +#endif
>  		fn_ptr1 = list_next_entry(fn_ptr1, head);
>  		fn_ptr2 = list_next_entry(fn_ptr2, head);
>  	}
> @@ -378,17 +401,22 @@ size_t convert_to_gcda(char *buffer, struct gcov_info *info)
>  
>  	list_for_each_entry(fi_ptr, &info->functions, head) {
>  		u32 i;
> -		u32 len = 2;
> -
> -		if (fi_ptr->use_extra_checksum)
> -			len++;
>  
>  		pos += store_gcov_u32(buffer, pos, GCOV_TAG_FUNCTION);
> -		pos += store_gcov_u32(buffer, pos, len);
> +#if CONFIG_CLANG_VERSION < 110000
> +		pos += store_gcov_u32(buffer, pos,
> +			fi_ptr->use_extra_checksum ? 3 : 2);
> +#else
> +		pos += store_gcov_u32(buffer, pos, 3);
> +#endif
>  		pos += store_gcov_u32(buffer, pos, fi_ptr->ident);
>  		pos += store_gcov_u32(buffer, pos, fi_ptr->checksum);
> +#if CONFIG_CLANG_VERSION < 110000
>  		if (fi_ptr->use_extra_checksum)
>  			pos += store_gcov_u32(buffer, pos, fi_ptr->cfg_checksum);
> +#else
> +		pos += store_gcov_u32(buffer, pos, fi_ptr->cfg_checksum);
> +#endif
>  
>  		pos += store_gcov_u32(buffer, pos, GCOV_TAG_COUNTER_BASE);
>  		pos += store_gcov_u32(buffer, pos, fi_ptr->num_counters * 2);
> -- 
> 2.31.1.295.g9ea45b61b8-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210407195130.bacppddzyjs56qxi%40archlinux-ax161.
