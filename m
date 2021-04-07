Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXE2XCBQMGQEFUVGBPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D24357536
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 21:51:58 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id ne23-20020a17090b3757b029014d70b3c7e4sf2264030pjb.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 12:51:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617825117; cv=pass;
        d=google.com; s=arc-20160816;
        b=mMtz4bC42OVjpdP+DZdb4/OZ7DHFrjibRG/xTVeY0x6kGFCMfu7nrRjjUfDI41ZhlM
         skK1UjpK8S04A43GC42ifzy19rmvex8YdRJtfttcgBNwfCe2tLJGAviiQY9SBYhMmSZw
         qdoUPvj3SsPtyenKQf9eelOZVXt8SwkLQxII4vUhuk4YJdLhcg4BF/ENmLG70uuNRfoM
         dJ/08DEWhM3KI8QyzbIoz2FpzKSEC7XJSQRvZbmOiq0GgBSVsmMhVdjUhW7z/HMNSmta
         48mA8hTHrdtYCtSjMKupklT8mEx9UdMsoy+p1QolnMxBkCm3bSKOx2E0Po+uz7XAd40j
         o04Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=USbPg6E7JvmDbTRdzcGguDpIzpAnWQUqbfe4oX2ZpA4=;
        b=Whc3InKLfkflHwSk0fAhx6G/gMHbGn5PolFnuNhl6zWMdx2P5xAcnDq4HXmBTZajdp
         vAxncIXJIXr9LZyPAKEzmYsLRBnL0Ly/EQ5L/EN32wWjOf5aWsD+IwbmerMvSBjpdJYA
         O4WGZ0RQPMMfA5RHlM6h04CW2vGNHJGpblpkW1x7+Cmc/dKcupkqz0gKs855xat+28Vm
         QSAhhpndDYkCl/orfddgKXf+4ESIJZzYwamCeNtvgf8JhQ3pht3loJVQDio7NbzhQrrf
         EmgPvzrQF8CN896QsrDEQVDCv+ikEsdxq3y5xv5urwbU6gWTJ3kQEAJ/kC8pXXVNvyvz
         A6yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=q2asrBe9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=USbPg6E7JvmDbTRdzcGguDpIzpAnWQUqbfe4oX2ZpA4=;
        b=ihq9IAaQ4Na1q3nfMoBmdSBiuppKKNArT5CQWm0as5Bj4oEORNcaDsB2vpCh5Cfkp6
         mbaGvVXRNhv8Gk3kHwT88bfWsZ2VTFGdbBBKFk+vCUZ7XOYp+B0iy9YAtOpU/4IOOqeR
         iGEW76xbKSLEbBzndtNVf+v6MkFGrweU7My6xoQPuyx99QP7QbtTfRmubTkhRpbADj6r
         +0E76vCKbS8kdm241OCeeZjIq+/yoMS2rvIZzvVUKaZqBYkwmddVyFo3vnha6UFsypg3
         cLOk9m1YM7fodyOXfcO7u461tLedshC/1sPyA7xhv0rWnsUMV1Ejxy9FF9K/aiYiA1NK
         wqDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=USbPg6E7JvmDbTRdzcGguDpIzpAnWQUqbfe4oX2ZpA4=;
        b=Mdz/dtAuHYv3YZiNOkfqx3OC+ojNtAaFGYTazzzmghodcWloYr8eCnX7S6btaix2mb
         VqEQ6XEHw3yaONeWZYMg2smWDQ3Yj5oie7a3CttloG1TWtaJNEn1jit7I8ADHd2pO0CW
         v/obprW6iWft+Ghe5HKPFANGWk99g9iK8XhqtcuZhGjda3qqgCkI3JHvA9KWp6a/t9VV
         p/1X31QCELQJLH+SUoUk7sSiv2NgVl64yx13gM3kaOF4+rjv4nDgva57SqQXJGopriuo
         5rvqbj4blPRM9aFhj87IJXHAFc/aZ6ajwWWf7Wk9RSWSTOGKrbAqdeII+DYwmQO9wk/W
         qXLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533uGS7rXtYRBwszit7PPGIVp8iOhsucF5pD/0W0OvZz5G+UVCJZ
	ab00VsDFaqoU5RMsBFvx3NM=
X-Google-Smtp-Source: ABdhPJyBeRO6ccTmcVyR9Z4tiRt8SOi6MWURdjHM5CutRhWJ7dmM+4yqV0jUmVfWtnR6cIrJFPirVw==
X-Received: by 2002:a17:902:f212:b029:e9:56f2:18ba with SMTP id m18-20020a170902f212b02900e956f218bamr4313557plc.75.1617825117104;
        Wed, 07 Apr 2021 12:51:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ecc2:: with SMTP id a2ls1448398plh.7.gmail; Wed, 07
 Apr 2021 12:51:56 -0700 (PDT)
X-Received: by 2002:a17:90a:cca:: with SMTP id 10mr4780067pjt.103.1617825116612;
        Wed, 07 Apr 2021 12:51:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617825116; cv=none;
        d=google.com; s=arc-20160816;
        b=b+K22BADP0FOhaN081cFOj1wsjfPWz57luT7bOBFLy+4kUl+9+Ffd3vXZX2/nw/syo
         PxBcAYnKrMyxXlqwhAVDfVgBDwC5dvf6S3xdIzRDws8AQInxN7mOWCw8+rCMAoQWIXnm
         xeKb6unSAhWZh36M8HUcqKALra8LfqVeGHfcVyqzwJZlnEiLBL0rQRi5VZ+hebFbYTUw
         AK36vyMc6d+SgU04QpHyGuilK7YzI4++zCt+qvyr2aoqd6KDsPiz9cEd0K3ecLCOKxyR
         P41O/oV10H6R5Qg5niOdhSgs1ywz1255rN4gZlb3kMtZi+MxOSm1BtK+6hEpulCb8789
         PGDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rO5Q10x5Bged3hBBZqDsP24pbqylbXqGas0txtJ8uho=;
        b=U40ZjCaKkqMAEplaNBqbcgELM6WH+Z/wHr46ozp2mFHFFQW30ehApEh4+azdtMXzOn
         e+/Ff7hHLn/A/pWWKAuHzkxqxRBuhpqo3DHxh05UdryxDPyk3Oeb0c4rfx/VnDrGCvFv
         E794yCjxvvwiuicZlsAzXrIDGIKO86zxOcHtLx0LqWZVZV0DqA96jqmujjwikzJX4SGw
         ZYfCp5L4+EXDRh74fOw7ACKOTTclLUtJUSi1UKgBNiDqBx5Js6SBQrt2f4z/h+FnxA3B
         rZdI81J5+yl7HPR2Vnd/XTUiYCuty3l+sdGNO3UByAINJqGVsKA7sXbwHtfv0td2jzdR
         b/vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=q2asrBe9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c3si1667412pls.0.2021.04.07.12.51.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 12:51:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CDBC4610A4;
	Wed,  7 Apr 2021 19:51:54 +0000 (UTC)
Date: Wed, 7 Apr 2021 12:51:51 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Fangrui Song <maskray@google.com>,
	Prasad Sodagudi <psodagud@quicinc.com>
Subject: Re: [PATCH 2/2] gcov: re-drop support for clang-10
Message-ID: <20210407195151.h2hlpwsjo2rdnnhs@archlinux-ax161>
References: <20210407185456.41943-1-ndesaulniers@google.com>
 <20210407185456.41943-3-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210407185456.41943-3-ndesaulniers@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=q2asrBe9;       spf=pass
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

On Wed, Apr 07, 2021 at 11:54:56AM -0700, Nick Desaulniers wrote:
> LLVM changed the expected function signatures for
> llvm_gcda_emit_function() in the clang-11 release.  Drop the older
> implementations and require folks to upgrade their compiler if they're
> interested in GCOV support.
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  kernel/gcov/clang.c | 40 ----------------------------------------
>  1 file changed, 40 deletions(-)
> 
> diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
> index 1747204541bf..78c4dc751080 100644
> --- a/kernel/gcov/clang.c
> +++ b/kernel/gcov/clang.c
> @@ -69,9 +69,6 @@ struct gcov_fn_info {
>  
>  	u32 ident;
>  	u32 checksum;
> -#if CONFIG_CLANG_VERSION < 110000
> -	u8 use_extra_checksum;
> -#endif
>  	u32 cfg_checksum;
>  
>  	u32 num_counters;
> @@ -113,23 +110,6 @@ void llvm_gcda_start_file(const char *orig_filename, u32 version, u32 checksum)
>  }
>  EXPORT_SYMBOL(llvm_gcda_start_file);
>  
> -#if CONFIG_CLANG_VERSION < 110000
> -void llvm_gcda_emit_function(u32 ident, u32 func_checksum,
> -		u8 use_extra_checksum, u32 cfg_checksum)
> -{
> -	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
> -
> -	if (!info)
> -		return;
> -
> -	INIT_LIST_HEAD(&info->head);
> -	info->ident = ident;
> -	info->checksum = func_checksum;
> -	info->use_extra_checksum = use_extra_checksum;
> -	info->cfg_checksum = cfg_checksum;
> -	list_add_tail(&info->head, &current_info->functions);
> -}
> -#else
>  void llvm_gcda_emit_function(u32 ident, u32 func_checksum, u32 cfg_checksum)
>  {
>  	struct gcov_fn_info *info = kzalloc(sizeof(*info), GFP_KERNEL);
> @@ -143,7 +123,6 @@ void llvm_gcda_emit_function(u32 ident, u32 func_checksum, u32 cfg_checksum)
>  	info->cfg_checksum = cfg_checksum;
>  	list_add_tail(&info->head, &current_info->functions);
>  }
> -#endif
>  EXPORT_SYMBOL(llvm_gcda_emit_function);
>  
>  void llvm_gcda_emit_arcs(u32 num_counters, u64 *counters)
> @@ -274,16 +253,8 @@ int gcov_info_is_compatible(struct gcov_info *info1, struct gcov_info *info2)
>  		!list_is_last(&fn_ptr2->head, &info2->functions)) {
>  		if (fn_ptr1->checksum != fn_ptr2->checksum)
>  			return false;
> -#if CONFIG_CLANG_VERSION < 110000
> -		if (fn_ptr1->use_extra_checksum != fn_ptr2->use_extra_checksum)
> -			return false;
> -		if (fn_ptr1->use_extra_checksum &&
> -			fn_ptr1->cfg_checksum != fn_ptr2->cfg_checksum)
> -			return false;
> -#else
>  		if (fn_ptr1->cfg_checksum != fn_ptr2->cfg_checksum)
>  			return false;
> -#endif
>  		fn_ptr1 = list_next_entry(fn_ptr1, head);
>  		fn_ptr2 = list_next_entry(fn_ptr2, head);
>  	}
> @@ -403,21 +374,10 @@ size_t convert_to_gcda(char *buffer, struct gcov_info *info)
>  		u32 i;
>  
>  		pos += store_gcov_u32(buffer, pos, GCOV_TAG_FUNCTION);
> -#if CONFIG_CLANG_VERSION < 110000
> -		pos += store_gcov_u32(buffer, pos,
> -			fi_ptr->use_extra_checksum ? 3 : 2);
> -#else
>  		pos += store_gcov_u32(buffer, pos, 3);
> -#endif
>  		pos += store_gcov_u32(buffer, pos, fi_ptr->ident);
>  		pos += store_gcov_u32(buffer, pos, fi_ptr->checksum);
> -#if CONFIG_CLANG_VERSION < 110000
> -		if (fi_ptr->use_extra_checksum)
> -			pos += store_gcov_u32(buffer, pos, fi_ptr->cfg_checksum);
> -#else
>  		pos += store_gcov_u32(buffer, pos, fi_ptr->cfg_checksum);
> -#endif
> -
>  		pos += store_gcov_u32(buffer, pos, GCOV_TAG_COUNTER_BASE);
>  		pos += store_gcov_u32(buffer, pos, fi_ptr->num_counters * 2);
>  		for (i = 0; i < fi_ptr->num_counters; i++)
> -- 
> 2.31.1.295.g9ea45b61b8-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210407195151.h2hlpwsjo2rdnnhs%40archlinux-ax161.
