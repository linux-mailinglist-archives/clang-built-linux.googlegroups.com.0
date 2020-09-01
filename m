Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU5IW75AKGQEMPJGSBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C27C258710
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 06:55:49 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id c1sf107079pjq.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 21:55:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598936148; cv=pass;
        d=google.com; s=arc-20160816;
        b=DuVVi7Fr+hLcOpm5RcjqKQSL03Y8Terza08j+WrKokfQsAW2sGfggdWcl4swKsex29
         AOpWbvPY8PdtxZcj5R0XKOGz1FXAm0y25U/awk/rS2rFBIbrFRrppQ5zmVpEy9th37gt
         MzjSDOyL5I8Mdeqr6VslHkxxEaOXzXfaSfruyad6dhg5mnomoZJ4t91PW/6lD/pU+6dI
         4486wr/RUt3TKPVbx8on+X1SMCESZlUfFEUuu0RropYg1GlHCFMN3fWs38ae0FUDUKEQ
         mHIr7M4XZrcpMiqYYwI4jnaaJxG8mjqHhTbf+JrbB1yCteM3PcwEFVvZekTRFIZSzclT
         xupQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=mqeAh76tDeO3OvDFrewlSJIPv+Vvtw8zuVGSdDOFSNM=;
        b=tVQ+fgCDuoIRfBR1Wp7spGI5XKrjWl8buHV7NldI5rshujI8EcCKf9c7aIFJ84dvbs
         ISOpLqcOF9ywYLg0wckygO8aSExaCtN8XLInqjllNfCdZdY6HjTIjyO3Kbz+xlkQt1C3
         ilnwa1ohAIvlUvYyxZ6ELBCV56sWg5oD36t0HCVaFf5O+aZ6bkQbKxus2hibhtN0Vo8H
         kpG9+sWpg3wBwcothMrUiZbudGPiNutQvruoGz8aAHQndgzGo4CAcf3K14kmnrCbZJ8S
         rxSZjHJu8RSAwkNFwTSAMDaa1gkgumbJGQb/k+GAHLTqKRAsTs9Aa2lPDnxeVDqiPhQG
         Xw2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RnwJlH6U;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mqeAh76tDeO3OvDFrewlSJIPv+Vvtw8zuVGSdDOFSNM=;
        b=kSTC/PVu/YSHOmjnUne2iTDVnmuqTtPjgTBMghXeBWiHoQOe+XC5xPCzo33Fmd4Jui
         SnL1brRs+sgxVs9mvAfbtRyf0SxUW5iWmT7LdbaNaMLqDApKp02Y8hbZnpH7LTicJXu4
         wMU2VlGDirws08MZAB4K9gnzyNVIRVoA9GqQrwKj1Pz8l6gWOx0BDpWdLxMeqYVfRXwZ
         2VUkIbd0mkQLkZzjLUJ8w/sSMyjYS/AARoi9/cDJW+w1zt9vLzmiWcteLr2wy55mnTk+
         F04jXVkm4VjHk/aMjdR6o6U0P59rCjlIFJfOVkmsl1zyW47ppYLtM3+f5c1E71JCllop
         PJzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mqeAh76tDeO3OvDFrewlSJIPv+Vvtw8zuVGSdDOFSNM=;
        b=ZEbaYtxRY63crRfzLpZ7oUNBYhT90nzcMf14rHb6Tq8Uc3WK+zrTxoNIStnIKebLNg
         Ub3VVu3sS0CbKbgstLiOKCxblsd+/XQQ06GLajF+fr3UpQwu0dbTD6jb+NH21E9jnCbq
         4uAuXnewISz60FLAgR1XSSc7iQeBWVzc5Jm2t28Qz+S1vcDMJ8YXi+3WdhbOB9RAFkF/
         wo9iGiHBB7kaAwMAO7ecbK1aYj7rURZhTHGAYnoOYnVYzRBPsRKb56/2v4XBCHtX30Vh
         v7U1zQfypMCaq0Fr1wksE8SILFKqBZ/r0qY+Pjs0kWzM2Uh1Bpsl/OunQKaWNKOJAvd/
         mOhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mqeAh76tDeO3OvDFrewlSJIPv+Vvtw8zuVGSdDOFSNM=;
        b=S2EO+K5zY4p3/t/5FwpmgEfXZM90gUlK4BAn6VQLJgRsZ37HmhmFvcyLn0D3eLYeaL
         4tTGvFqwCxB7VLqt6O9ICLOnTNYFnYHTgSo8VwnM6QhmXSGXfEbSK2EDjZojf9+udIsv
         5g+aic/d/f/gjIzWuPd5H002ZDlOMo49CXT15bfDfOj+y/hH/vit5nOztBE2a7s+ziKj
         Qb22dmXlJtUSaa3QUIKQAMrFEOHH8d+IqGlyL6BSPIk7w7+ZdWJ9KWfDUr0nQ54s2wpu
         YjCJIBtpyk14OgtzwlFT9z0JKvX6MIkdQIKIU8G9+7fYvPn/ZV8dbW15rjYf/X7/Kj4R
         kSXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PfGQvelmJzHBxXdB3TWzQWzFc59xfQ2eH+iIYoOsUvY5guOLH
	Iec5D+dkk1V5NJibIk0dV8A=
X-Google-Smtp-Source: ABdhPJyPdy2CX7VndtF9m9drgXieMjBKXvXmeLRBdw3EX59J9rV7ToqSoPgFvfJz2je60VG39AcLRA==
X-Received: by 2002:a17:90a:f290:: with SMTP id fs16mr266451pjb.35.1598936147663;
        Mon, 31 Aug 2020 21:55:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5c45:: with SMTP id q66ls60972pfb.7.gmail; Mon, 31 Aug
 2020 21:55:47 -0700 (PDT)
X-Received: by 2002:a05:6a00:1589:: with SMTP id u9mr180053pfk.201.1598936147156;
        Mon, 31 Aug 2020 21:55:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598936147; cv=none;
        d=google.com; s=arc-20160816;
        b=io92BCGreJGSsVubs2OuUtmXdlG5fdN0okJiwnsW5Pe1LKpghTJGTjb7XsRMMHuM6b
         Zp8VeFBYPJ0bdYOwbbwDUW9ihAOYngArSZAC/9cZn7+Yz8v/WhaqG19nl3TY2m06X6LP
         3izzOiVeferCJLrLI8wRKPg4AdhI7nRRYNqdhozm1HNWbwijKdUtN59WjUsklEZN/nTh
         +9xta5qaZ0c9x5oJWUCB6OR8eD7YUNpk8ENxS3xeEeQ4bsO5GczxFs7tQU1HWr3zq0qK
         JHOOn8JgRhGtSb4mSX2yOxfYAOroxHSGeC1IVOWE8YtT7Bf+8OuBo6ekaVhnWyVATx0e
         /32Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bDCzgE7PpxJKYkZFw4L83L4c22jArf+LVGBAv9O8ML8=;
        b=Ad6WpI+texaCFMuP8nYqVufx2uEsZFAHTgYu5Xs9NYRbOLR+24axtsUiS4B347LGbT
         XEZadOL+QcPi02+IwgKS1c6XuHp2t3+WNQGM79lRRxs8hQUa7bYSlYA21ikL5BF6N9qV
         QtmhRzGB//HGvHombd+KFwQf8jPbU+sc3OxLLunUgQEamtwlxjtOH/HSPyaxx6bo2XD9
         +G1dmTxfOkd9w2JNLpuvmFrWijxtZF6YR1GYRdZJvKVgvKpZeuJ5G1B9Ne/LBo3DIEox
         pTEX5c+Ccu/YS/2N34UV4bFmC0SxSaZK0l3HFeRkUsQ0hc92Qn9DYVNKGCZoQbAHrCCk
         DZBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RnwJlH6U;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id v62si6157pgv.0.2020.08.31.21.55.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 21:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id n10so36296qtv.3
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 21:55:47 -0700 (PDT)
X-Received: by 2002:ac8:3568:: with SMTP id z37mr4694456qtb.59.1598936146344;
        Mon, 31 Aug 2020 21:55:46 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id r195sm218598qke.74.2020.08.31.21.55.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 21:55:45 -0700 (PDT)
Date: Mon, 31 Aug 2020 21:55:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>, Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	clang-built-linux@googlegroups.com,
	Daniel Borkmann <daniel@iogearbox.net>,
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/7] Revert "arm64: bti: Require clang >= 10.0.1 for
 in-kernel BTI support"
Message-ID: <20200901045544.GB1561318@ubuntu-n2-xlarge-x86>
References: <20200901002326.1137289-1-ndesaulniers@google.com>
 <20200901002326.1137289-4-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200901002326.1137289-4-ndesaulniers@google.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RnwJlH6U;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Aug 31, 2020 at 05:23:22PM -0700, Nick Desaulniers wrote:
> This reverts commit b9249cba25a5dce5de87e5404503a5e11832c2dd.
> 
> The minimum supported version of clang is now 10.0.1.
> 
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  arch/arm64/Kconfig | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 6d232837cbee..2a70b85b1a61 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1630,8 +1630,6 @@ config ARM64_BTI_KERNEL
>  	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
>  	# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
>  	depends on !CC_IS_GCC || GCC_VERSION >= 100100
> -	# https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
> -	depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
>  	depends on !(CC_IS_CLANG && GCOV_KERNEL)
>  	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
>  	help
> -- 
> 2.28.0.402.g5ffc5be6b7-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200901045544.GB1561318%40ubuntu-n2-xlarge-x86.
