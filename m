Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRGUQCBAMGQEQKIRWDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id B44F232C3A2
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 01:31:01 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id y11sf19066046ilc.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 16:31:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614817860; cv=pass;
        d=google.com; s=arc-20160816;
        b=O8X6J/rdNdfkUeocbVEj5plTJM1oUTcWTfpcvq1x/u5ZAR8K3Lo9GrsAl0VBSATDh8
         2KbnsWTCu/B1uNxqbhjYtaM3Y3lIbcHrZIoY26hX0gzl0LM8+f/wn/uu8tKFEiKlADXS
         GkTK2lWhMgmXajDh0AEEY8xwZTlX0zWzhpZWR5lJZGwH6xiQPJl72XsPbcss/dEto9yU
         1EvIJKtA0XLpihj8QwLVrQGlhnoszKzvk4s72g+iQfgQUlwoniIlK3pmh2nNv9iJjCcn
         CVp3hGZPgKAAqbdyIVVSQaAtpZXjIPp2Qyk7T9pleTNTxHbKJkmMnmPxCHjU88psZVY7
         9gTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XIyDwj5bUOrw5Pd8EuGRl8pS4Q6zk7CAC8bEmwdx5Y0=;
        b=IRO1NuVWp+RpwPuqko/8W2N9mD+Zc3K2IalL1mYyuIPWTQXMFcHmlyD5kwH6BAJh+f
         WMfyDvuL4u/7SM1AJ2v7eTnj3rXNzeB61p9fI48UowhP6Ccl7MzBi1Ro2oefzm7CUpDc
         cv6IWXb7z+1+w/MJxL9dlKuGbjIgSUwGnIo6tFyrHDdBwv59PWwTYhEvedNfFZsux/T8
         +0Qfn3UvQJi4q7n1vrT/p9mxy/sfOog0+SIedk4isDZWWCVSFDVe3B8bilxDkG1msoTo
         DnnzzSOMSZ5HDA55OYlVMr/tig8oKgOCw3crZnauVtsEy2cm6ZmuO35SDqHhgJhFhZjS
         /+Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mYbLPZ8p;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XIyDwj5bUOrw5Pd8EuGRl8pS4Q6zk7CAC8bEmwdx5Y0=;
        b=LMKEQqICYEB+OMCmb5Ainl3bz4BS8TRAHYkE2KeKzrebAqtWPPxOBuk8aKgvIilj/z
         dJRXrl71e7+7wqGodxsho0LXJTZKhzLGR4lL/Z7MzWfG+l7I9tC7EjHs9PankqbfajpW
         y8g2cEEOFd0/9fAIGGCwNiMqMO9KTPQeJLJbmu7ma5q+xPTOdgNsEwEJLVYx4WCWnSJa
         icMgiFAPbhnG7vccI8DQw6RHj7j3Eal//2lArOEuHZ9Gzb6vxLvPmPwz8G4T3a7usXa/
         QRemEIt4aRBdr0Sf1TrjonRGhS6uosOg4woTAf9aTI5XG0OBKrlBxH0W57V8xvVgiy9O
         mvuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XIyDwj5bUOrw5Pd8EuGRl8pS4Q6zk7CAC8bEmwdx5Y0=;
        b=EiflD32HQXY0k+WEQA+fhDX4HWmdlyICuY9Cio9Z0kp8sVPRVtCZR0teeu4rxKYxF3
         FeCSkTo/fpVZZV7WAv/x3EXb7eBu0GBCyNRr4OVrxw47ofaHhnw7SOrvQLyTXagoM5C4
         I679KupHjTvhhkojhGXwbQORLbSeeLzUeksT15kEjSg4WLfRkR8Fu7g65Bvm+uTmJM4C
         1tCjUgolYAA1t20gGDJTHBQHFMk6/Y5yMG0fyUtG0Cu+GQ7QKIMNglDPOkcSunpfDmc/
         dW7InSFFOJOTCJnt9zu3OJDT2TPiiuRFllSgDcZbp9Pu1ZPcihWpP4j96EiwBPqeeX/k
         LS1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315Vs1+Ow5G5aNLBYrQO5d2I2T61pmyonlnURRyubmega6MDKPN
	p6ZMFCuRGNvOujMHuESHMMQ=
X-Google-Smtp-Source: ABdhPJwETG/8+GNUCDgSRNOQBXfxhswE0BmQEYDqIWfzyJ5UD2yY8ag1dB5U7jh7XBG3QwDjLmJFeg==
X-Received: by 2002:a6b:fa08:: with SMTP id p8mr1553999ioh.170.1614817860497;
        Wed, 03 Mar 2021 16:31:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:d81:: with SMTP id l1ls604904jaj.2.gmail; Wed, 03
 Mar 2021 16:31:00 -0800 (PST)
X-Received: by 2002:a02:c6ae:: with SMTP id o14mr1564448jan.33.1614817860202;
        Wed, 03 Mar 2021 16:31:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614817860; cv=none;
        d=google.com; s=arc-20160816;
        b=p2EvpLk23QwPVi+rgVCY8yTTI5l+DOE9g0E29HG/V7bpsgNIhYHYvEVgsPcRKe+e98
         GFCIB/0qqiPhubP1VIhImiquoJze890VQdaqM6J9I+CmHq52i69tzJ9HvTL9O/nQNuwG
         TRfIyrvjpZ/PUY9lM81zcsf6bedCt3ZAPLof60kpfHX8KEzmka3DcZWMRyziACrPM7tq
         PIioUSFYm/ImpECkoikElpMfiulvN31wMPQ7WW+3xP95nyViFAbRWJE/9Vkf+Ok6m2my
         njln5dYP9RcviMZr1hPneRh6iqQ0nEIdNDPJhmFhm02BxnUjx4y9mrjD0035xqVuwpvF
         JZeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eXsEqenVy1sb8rqU9vpFg7l6Cb+XkcCUG8K5kFK5cqQ=;
        b=M12QAuONMgG772TV3BvphDj5n/fv8tGHHqx9qCWItC+ELMmvkIUDYusNe334PsLTPz
         d6hTEUh1HhqeiBHBNbBDmZRQXEyshnEJoKru4tbo+BqsxcJQL8J8yQ9z9largMFvtGNr
         DofK8OPyBIjzZqX2SRCszDxHUJlmCO/iwwx4+I+893SZnPEAZ8r9Y2OcnyM58Afua1oX
         V/dS+J3IWMYpWQcYf8zrrw3ZkoOFn7sUAPFHN8/XL2qubsi3MqFIIi0gXYnLUMHwPYMK
         WqPq06pQH0nG5P51tEGwU4aG6wm+SCRMDRCBa99Ft0DzSM8KQTpJxulbMu1eLwUUkX8A
         N1Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mYbLPZ8p;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c2si1440920ilj.4.2021.03.03.16.31.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 16:31:00 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 58C3F64E67;
	Thu,  4 Mar 2021 00:30:58 +0000 (UTC)
Date: Wed, 3 Mar 2021 17:30:55 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] kbuild: dwarf: use AS_VERSION instead of
 test_dwarf5_support.sh
Message-ID: <20210304003055.tsrqewikdekbhhax@archlinux-ax161>
References: <20210303183333.46543-1-masahiroy@kernel.org>
 <20210303183333.46543-4-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210303183333.46543-4-masahiroy@kernel.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mYbLPZ8p;       spf=pass
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

On Thu, Mar 04, 2021 at 03:33:33AM +0900, Masahiro Yamada wrote:
> The test code in scripts/test_dwarf5_support.sh is somewhat difficult
> to understand, but after all, we want to check binutils >= 2.35.2
> 
> >From the former discussion, the requrement for generating DRAWF v5 from
> C code is as follows:
> 
>  - gcc + binutils as     -> requires gcc 5.0+ (but 7.0+ for full support)
>  - clang + binutils as   -> requires binutils 2.35.2+
>  - clang + integrated as -> OK
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> 
>  lib/Kconfig.debug              | 3 +--
>  scripts/test_dwarf5_support.sh | 8 --------
>  2 files changed, 1 insertion(+), 10 deletions(-)
>  delete mode 100755 scripts/test_dwarf5_support.sh
> 
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 2779c29d9981..f3337a38925d 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -284,8 +284,7 @@ config DEBUG_INFO_DWARF4
>  
>  config DEBUG_INFO_DWARF5
>  	bool "Generate DWARF Version 5 debuginfo"
> -	depends on GCC_VERSION >= 50000 || CC_IS_CLANG
> -	depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))
> +	depends on GCC_VERSION >= 50000 || (CC_IS_CLANG && AS_IS_GNU && AS_VERSION >= 23502) || (CC_IS_CLANG && AS_IS_LLVM)
>  	depends on !DEBUG_INFO_BTF
>  	help
>  	  Generate DWARF v5 debug info. Requires binutils 2.35.2, gcc 5.0+ (gcc
> diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> deleted file mode 100755
> index c46e2456b47a..000000000000
> --- a/scripts/test_dwarf5_support.sh
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -#!/bin/sh
> -# SPDX-License-Identifier: GPL-2.0
> -
> -# Test that the assembler doesn't need -Wa,-gdwarf-5 when presented with DWARF
> -# v5 input, such as `.file 0` and `md5 0x00`. Should be fixed in GNU binutils
> -# 2.35.2. https://sourceware.org/bugzilla/show_bug.cgi?id=25611
> -echo '.file 0 "filename" md5 0x7a0b65214090b6693bd1dc24dd248245' | \
> -  $* -gdwarf-5 -Wno-unused-command-line-argument -c -x assembler -o /dev/null -
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210304003055.tsrqewikdekbhhax%40archlinux-ax161.
