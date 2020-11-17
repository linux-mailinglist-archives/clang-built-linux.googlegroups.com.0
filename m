Return-Path: <clang-built-linux+bncBCIO53XE7YHBBDU62H6QKGQEULQRARA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 604732B7196
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 23:30:39 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id t8sf8864650oor.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 14:30:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605652238; cv=pass;
        d=google.com; s=arc-20160816;
        b=B78Z7E3pDmG/c6zx2fZzqEDs7EPCtZZMNYJreloDGVsFMV6Y8Lda722yXq+KlPb7vg
         8qgL99fekN4rEQIrwfrvM6LkONmv53EGO+yN/eqwi8OcSNP8uruj1ZV20D3FFDOk6sZM
         RC6aOPK2bjbMj1J5+Ay0oXV33hpAueNuhlw2m+WwfqGCcyDFfTC6r7WJ0kNQ16ENCt4t
         Ecr/eCUUAgzNPzYle9VW4C1gd3Yr4qIDfljWAbRQoIdAYdi483ZzXS/82JBhpINw5515
         n4vT+HOj5Hahu7RMDua+zLKBG6wzy6MmZVC81H4lXki5W22uwpmB7YQ8Q7KvAZ5eh4sn
         wMKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=6fX4P5LFjbmlEdsWywbmf5UVu9/cqR4CXrzjjk0l8nA=;
        b=r9A2n1MNFnCAAE/32VMxgremeOPzHq1aRtGi5CRrfMk1WF8i5ITzKe6Ei96z1ChTIY
         8mi0ipmDDwgsL7hNHew8GCUvR5DNKyhspzEN6a6eFOrrdbR5vDUw/wiush4LHyaW14XW
         42p2/0clYFU5p/2by3X/kC0yDlO+m+0HUN578Ho48qbLtysjEqRLcfONS8WFNOlfaetK
         yxkTFMUg7FRaIq1UjJOlINdnpF0OBIL7Mi//Bjjn1xv1Y5E6ozcEJshSDDC08W4ZU71x
         0mcS5t365EkXiBQJ9TyO9ozl1BxkOSinIIvwIkY11MJfY/l4Nc5x9+cydowuv5bzR7BV
         fkpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l95DD1yA;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6fX4P5LFjbmlEdsWywbmf5UVu9/cqR4CXrzjjk0l8nA=;
        b=GKj/FvBWUEO8ZBXiAlYbFSGD87EqDWxFpGLLDuqSbBGF4ZQcu/75uV1/ywEnpw6unu
         xNrHuMnqCmOpbXMsm9tD9tnFzQ7ady6hmiZqAiQhaB5U405AymSdODnG4ErxbXRQymZU
         cwQzZ6hKUCST6Gj8luqc3tWzc5zHsX0tUwh84sPu4jX6vuD6LWf8ax2669NOU2gkZIgG
         vzQkjQHucVoTJZMEVR1TZPlafGm1o7M7T+kEc2G6AOh64pVriDgV6EdvB8LlbHWiMzD8
         aFj7+LmKYpgXqijQFWJ+beCBkERKdmdaLXbCDo8u6v03iFXYqSsr0dLPsrMmmucW4d7Y
         +P+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6fX4P5LFjbmlEdsWywbmf5UVu9/cqR4CXrzjjk0l8nA=;
        b=M6gSVUTF0uXMMLuly9rskDxtxqenKTy4gH2j45e9KAW79FkUyCFTo0clJHxUPVzd/j
         g+WJuWmF3RrrOAG0HM1VXMntb60ls9n2Da6REQ2GpL6RcBijm8aKddoC9vNdTIqzgBQL
         fzBOsEK7QCM33miLprky/ITBKopFQAvE0ztUCCt/2NNAiy592655R+eZR+0oh64/VFOJ
         9oaA/otlJOVFGt0p8fLf60ooncvsq2g2J587v8xDHa5vutdehD6FKu0o6Aq2VbTI24n8
         W+Z2My4cH//QsbpOZJ0yxOMzB+H5I6FphtKe6FvEyYwT9iBL9zp22SmsYhZ1YIlDS2iT
         8ZOQ==
X-Gm-Message-State: AOAM5308eCGW0e+MTqK+YoApRACt94L7WTtwU9C1RoOv3YdpwxO/kRzk
	Fq3jeKWNdFEKmkqNN92OtKw=
X-Google-Smtp-Source: ABdhPJzpEICd7try+A5yY8lly/+9vhiPGkbyPid03A/J+PrdKWerEiDVVi839LQN60Er8qib8J+4Kw==
X-Received: by 2002:a4a:d63a:: with SMTP id n26mr4536773oon.38.1605652238184;
        Tue, 17 Nov 2020 14:30:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6b0f:: with SMTP id g15ls4549211otp.0.gmail; Tue, 17 Nov
 2020 14:30:37 -0800 (PST)
X-Received: by 2002:a05:6830:2ef:: with SMTP id r15mr4689379ote.261.1605652237786;
        Tue, 17 Nov 2020 14:30:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605652237; cv=none;
        d=google.com; s=arc-20160816;
        b=NpjvHCoTmWYvid1m+D/3iXsMhHbU1IWXGOulA7RbkF3AqMivOxjiTTcm4gkeiyXn9W
         DbGEtrmI7kiQvtjp/5v86FAMho6gg15wpbW+UmWtWnRDNU6ZsjbNuEuTREkSf5/2UDFQ
         TcqD0RCsYqwTJufVzDbM7/es57EtDc5IY2F+MSl+WfvwPPnSKPiVIIo4IZ2JGvXH8AMo
         ZLvP3H+k0R0tEFtdqm57XRj56dDRD4TPro4qY/lNo1nVKjATMpOTGp0Ye7Am6StrSt9a
         mLWmFYk1LYIorNPtSU5QFoEXKZr56MDsWfh73Ssf7z1tXprRDEBdpXHd9ZbBWl9tN9kS
         ptVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=6UpOAhvGOOk2ewOvXmMzn6cPIkdxIFd9wzKXGMY8TT0=;
        b=rEp1MjoegNrxBfgRFjiHJFkumlWL5rz1K0Kqjb+o/Azc8k/UGnYgmwkvhhlKJD01u2
         APFqap1aW8OVGIYwfwukgG2SPv3A6BWfRFQsVLqtN+DX4eSCn1Hdr4WoUN5nz1ErZOfZ
         wCzI36Cd01gnW7xJb5aaHYe+03Z3dKSmBdxEVd63B12k6tuve9oWkl3me9pcpbb+HQ/w
         ViItQC2GlnmHcfp/ShK72029048cxigRxKNTXfrmTadhlMTEfsqaViEXL6osBtCvP7yb
         LWChSG+Tzjpxj5hJqRllct2LokkYRncBqFNezJqqYHdxoC4s/wqTsx/ZwU7CYuAfUn8A
         t69A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=l95DD1yA;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id e206si1988624oob.2.2020.11.17.14.30.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 14:30:37 -0800 (PST)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id b16so118517qtb.6
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 14:30:37 -0800 (PST)
X-Received: by 2002:ac8:4cdb:: with SMTP id l27mr1974889qtv.74.1605652237175;
        Tue, 17 Nov 2020 14:30:37 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id n93sm14757574qtd.7.2020.11.17.14.30.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 14:30:36 -0800 (PST)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 17 Nov 2020 17:30:34 -0500
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] powerpc: boot: include compiler_attributes.h
Message-ID: <20201117223034.GA1614446@rani.riverdale.lan>
References: <20201116043532.4032932-1-ndesaulniers@google.com>
 <20201116043532.4032932-2-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201116043532.4032932-2-ndesaulniers@google.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=l95DD1yA;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sun, Nov 15, 2020 at 08:35:30PM -0800, Nick Desaulniers wrote:
> The kernel uses `-include` to include include/linux/compiler_types.h
> into all translation units (see scripts/Makefile.lib), which #includes
> compiler_attributes.h.
> 
> arch/powerpc/boot/ uses different compiler flags from the rest of the
> kernel. As such, it doesn't contain the definitions from these headers,
> and redefines a few that it needs.
> 
> For the purpose of enabling -Wimplicit-fallthrough for ppc, include
> compiler_types.h via `-include`.

This should be "compiler_attributes.h".

> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/236
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> We could just `#include "include/linux/compiler_types.h"` in the few .c
> sources used from lib/ (there are proper header guards in
> compiler_types.h).
> 
> It was also noted in 6a9dc5fd6170 that we could -D__KERNEL__ and
> -include compiler_types.h like the main kernel does, though testing that
> produces a whole sea of warnings to cleanup. This approach is minimally
> invasive.
> 
>  arch/powerpc/boot/Makefile     | 1 +
>  arch/powerpc/boot/decompress.c | 1 -
>  2 files changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/powerpc/boot/Makefile b/arch/powerpc/boot/Makefile
> index f8ce6d2dde7b..1659963a8f1d 100644
> --- a/arch/powerpc/boot/Makefile
> +++ b/arch/powerpc/boot/Makefile
> @@ -31,6 +31,7 @@ endif
>  BOOTCFLAGS    := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
>  		 -fno-strict-aliasing -O2 -msoft-float -mno-altivec -mno-vsx \
>  		 -pipe -fomit-frame-pointer -fno-builtin -fPIC -nostdinc \
> +		 -include $(srctree)/include/linux/compiler_attributes.h \
>  		 $(LINUXINCLUDE)
>  
>  ifdef CONFIG_PPC64_BOOT_WRAPPER
> diff --git a/arch/powerpc/boot/decompress.c b/arch/powerpc/boot/decompress.c
> index 8bf39ef7d2df..6098b879ac97 100644
> --- a/arch/powerpc/boot/decompress.c
> +++ b/arch/powerpc/boot/decompress.c
> @@ -21,7 +21,6 @@
>  
>  #define STATIC static
>  #define INIT
> -#define __always_inline inline
>  
>  /*
>   * The build process will copy the required zlib source files and headers
> -- 
> 2.29.2.299.gdc1121823c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117223034.GA1614446%40rani.riverdale.lan.
