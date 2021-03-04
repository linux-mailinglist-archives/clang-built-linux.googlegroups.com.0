Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBS77QCBAMGQED34MLMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA8132CA40
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 03:02:53 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id k10sf6252176uag.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 18:02:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614823372; cv=pass;
        d=google.com; s=arc-20160816;
        b=JGnwaxJNjdeIcT/fNq99BlQV8vxUIFAAnvU70Mjsd10OMXbdgYqYR6u9FsLqaLxKTY
         nxR8/K9Vis5QI/I/PdDReHuD0ibNpm+EBtFKyxcuP2zj+2SyoTqlAdozYvaGGPiBdegb
         xvgBEFuRt8NedXWarJGvgHcYsgV8zswSG4l1fPM3tm9PGgA9I9LT4bE6uMvwx8tdk+jd
         NHF7B8hrsj+nqh42Lob6nrEL4NVNINZAF1EK+avf7aJ4XTJGMeIqPTILlyOZ+QP1WBqk
         GZuY01qklHAydsD0l3G4ZvgW5qHjlSfIz9GLOOh3gIZG9+tEpMj1zXgY6yDWtxNJrswY
         Z5Bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=f5PhlFW2yu7XcQljtgCG6M8pRmPmydyYtE/pTeHxULQ=;
        b=gWr4wMHwvqb7bFZyJd4wgTDy8fezdW5YYYxuunlAJ/bNmTfjiBkjv7GrHL/I9/6gIt
         d1MoeumzLdio7xnuORu2o2p9M5nM6zKgJ6cJOL24Bsxaf/9Ao2Qb23C/C8jcFTMYaPj/
         pmKSfYF865vrUbqUxXNuWnQFdGMmHXBaaxdM8CAPxoAcAUhPye04kiG3sGmrHB4OdWSS
         CMUULkkstsyu4l0MePYBEFoQNYjZ/tB2EUaulX+pX+pVRnu7OZggurLH+b2eYRci1sB3
         ZyhKN3FEpi44Gr+HAW1vru9GzPOlOP4lEQBRn7Ph04ipjllJksk3wJvzng3uI4z3x9A9
         XjIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pTADc1lp;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=f5PhlFW2yu7XcQljtgCG6M8pRmPmydyYtE/pTeHxULQ=;
        b=oS747KC6x4zD5p156qszHOyBAbaYaBBG3cchypptPMU7TBlm/uSSAQAHyTNUOnqM0J
         s4nHZ8EjXS1f2VpJJq5T+aH9xztJdCIskdzMrB0GvVapNAg8FwwWWyHcynBeQRnmQFNQ
         0FxYH3EtbbL+myZ7Y8m77ZECmvHTfpFaCE8XlhtGGv+YfUg9Y62Up2DDRekMuiuhMG+N
         9W/Wz/X+h4ZFYX/Cz55LLAUofwMuxChVs6/pK2RCNQef2ciz8dYoNVf2htkyTg32n9x5
         aPmcTxrnd+z/68KG6iNtiDW9W9ci2/q9olMy9vRyYTB4tLr+vuRCm4p0KRo/U8fs/eo6
         vojg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=f5PhlFW2yu7XcQljtgCG6M8pRmPmydyYtE/pTeHxULQ=;
        b=J71ysf9sKHXZ3f8PWA8RAPzWi4HtwKUcDkfxERZGav+Hy7bv0Eti/DL6SRvzeqLHJI
         Jwo/Px7K4rnC6wRmG/BUARwqZ1+oMag9dOLYKyMnuMIUl6PB3NCBzNe0jeSRK5nG4IbK
         Rylj+bxZApyHB1J4B9gj+Rc0DWBn3wtF7yVGAzfofIrKMVb3mZJWldDEFScVUerRildh
         GYyqGbGjchqe0YQx0rCv2hm+OGUKIsZ5NscCYlqNfZY9lwgnTbb6fSjWbKD3nQyndWBV
         5y+iLjYhzLovmquT7ZHA+zDyOR4K9xCFBvUvf7bhfxPKPP4cuA+Ygr2h2JynBtC30uAI
         ZyNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531maNL2DrkBcm2gN+tYCTIpBM55gEj5dZad2YS4/tU8N064Y9pk
	/wuWOCgkfEIFyp1kMI3tUeQ=
X-Google-Smtp-Source: ABdhPJxKzyw27TIhkfPia9ayz8tj4ENWBnomSr2q6Igzc4fNMShgad5U+B9e78Zng5OTVMDDHOQHtQ==
X-Received: by 2002:a05:6122:788:: with SMTP id k8mr1548738vkr.23.1614823371842;
        Wed, 03 Mar 2021 18:02:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2404:: with SMTP id j4ls551323vsi.2.gmail; Wed, 03
 Mar 2021 18:02:51 -0800 (PST)
X-Received: by 2002:a67:541:: with SMTP id 62mr1460183vsf.39.1614823371404;
        Wed, 03 Mar 2021 18:02:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614823371; cv=none;
        d=google.com; s=arc-20160816;
        b=q2BXdyoyIigMULMwIy6O9aXh6JAYBUo2gv7SVXVpBR3ihOLEIJcJavIAFBEGoyxM/Q
         +h9sVP960cp8kGYWwfYFUeD3OhBosdDny1PMnia96BFSgaMyHb2nmITPsJ35hnfy886w
         GExxWlkDgnarmpeq47UYCtZTkD38drLiK7ksynjPsKwTpsANfxTpTMvUyTDJm1o+Cw9U
         i6OBIAn8X3QCccTKTpJ6ZCojlt4LYi92cYN8sJ94vEkAx7wtgAWTe8LCMaxO6R8czep1
         HeTDEuLnFuthoxL26pFLRCjPTwF9Crgej718hxDzyF7KgnxDxJyvQ0BjgFskjpCqJbyR
         PMPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2O40Dttz+aPYmlgkICqAwlui9FfzQvoMDTWtgEsG9ag=;
        b=Tl6tyFWbWQFeBQBUNGY5ZqPVaXJItQvga+IUzidI/dGq+0bEGUjYUYaVxEDe+NKURv
         DzLDphr5pxxCyqkbvyhh1HCkn3fFwMoVPO9DOa9Ar77sEhmcab3UU16sH9SHh1RApSsd
         QUUHtlYFVUOZpdeXeslVGs8D8QiJv0XW38+GrNnz3Lig2hVs5aEyy4iSTkikJzGhtInk
         0oM2LTxgEUDFFaRRFD2aYI8oQZTo8u8XNi95i4pRZnzzoG4xBfn5/lN8OwGFagsPS9L/
         o11mRdDQRggbQYq4kjld/OKIogR1MerEZlBKrQTV6uDMoYcAjjPLc3zgTm1IG3SGfYI7
         Of5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=pTADc1lp;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e11si1443823vkp.4.2021.03.03.18.02.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Mar 2021 18:02:51 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DE8FC65032;
	Thu,  4 Mar 2021 02:02:47 +0000 (UTC)
Date: Wed, 3 Mar 2021 19:02:44 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Xuefeng Li <lixuefeng@loongson.cn>
Subject: Re: [PATCH] MIPS: Add comment about CONFIG_MIPS32_O32 in
 loongson3_defconfig when build with Clang
Message-ID: <20210304020244.pza6xd4ixziysrom@archlinux-ax161>
References: <1614820544-10686-1-git-send-email-yangtiezhu@loongson.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1614820544-10686-1-git-send-email-yangtiezhu@loongson.cn>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=pTADc1lp;       spf=pass
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

On Thu, Mar 04, 2021 at 09:15:44AM +0800, Tiezhu Yang wrote:
> When build kernel with Clang [1]:
> 
> $ make CC=clang loongson3_defconfig
> $ make CC=clang
> 
> there exists the following error:
> 
>   Checking missing-syscalls for O32
>   CALL    scripts/checksyscalls.sh
> error: ABI 'o32' is not supported on CPU 'mips64r2'
> make[1]: *** [Kbuild:48: missing-syscalls] Error 1
> make: *** [arch/mips/Makefile:419: archprepare] Error 2
> 
> This is a known bug [2] with Clang, as Simon Atanasyan said,
> "There is no plan on support O32 for MIPS64 due to lack of
> resources".
> 
> It is not a good idea to remove this config due to GCC works
> well, so add comment to point out this bug and suggest the
> users to remove CONFIG_MIPS32_O32=y in defconfig when build
> kernel with Clang.
> 
> [1] https://www.kernel.org/doc/html/latest/kbuild/llvm.html
> [2] https://bugs.llvm.org/show_bug.cgi?id=38063
> 
> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> ---
>  arch/mips/configs/loongson3_defconfig | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/mips/configs/loongson3_defconfig b/arch/mips/configs/loongson3_defconfig
> index 0e79f81..cacf9dd 100644
> --- a/arch/mips/configs/loongson3_defconfig
> +++ b/arch/mips/configs/loongson3_defconfig
> @@ -35,6 +35,9 @@ CONFIG_NUMA=y
>  CONFIG_SMP=y
>  CONFIG_HZ_256=y
>  CONFIG_KEXEC=y
> +# Please remove CONFIG_MIPS32_O32=y when build with Clang
> +# due to "ABI 'o32' is not supported on CPU 'mips64r2'",
> +# https://bugs.llvm.org/show_bug.cgi?id=38063
>  CONFIG_MIPS32_O32=y
>  CONFIG_MIPS32_N32=y
>  CONFIG_VIRTUALIZATION=y
> -- 
> 2.1.0
> 

I think this might be a better solution. I know that I personally never
read defconfig files if a build fails.

If CONFIG_MIPS32_O32 is broken with clang and the MIPS backend
maintainer has said that it will not be supported due to lack of
resources, then the config should not even be selectable in my opinion.

Cheers,
Nathan

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index d89efba3d8a4..ed35318a759d 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -3315,6 +3315,8 @@ config SYSVIPC_COMPAT
 config MIPS32_O32
 	bool "Kernel support for o32 binaries"
 	depends on 64BIT
+	# https://bugs.llvm.org/show_bug.cgi?id=38063
+	depends on $(success,$(CC) $(CLANG_FLAGS) -march=mips64 -o32 -c -x c /dev/null -o /dev/null)
 	select ARCH_WANT_OLD_COMPAT_IPC
 	select COMPAT
 	select MIPS32_COMPAT

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210304020244.pza6xd4ixziysrom%40archlinux-ax161.
