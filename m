Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXPKU76QKGQENWF5SLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id D57D92ACADD
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 03:05:18 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id k196sf9897599ybf.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 18:05:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604973917; cv=pass;
        d=google.com; s=arc-20160816;
        b=zrzvZgwRD4AkDQSr0/A0ZoZ1uqHHZeR4cWJcUPs2hIyK5nRdBY1zDqkwqtnQUr4BVW
         vkolWE/+YuSDfWPSoIp9UM+3aQqmDuNKL11hkoxHj09s+p8S04ave+o4y7FpdJWp9AN5
         VMAUuxl700KGTgD3Il5qySUjC2IRjVxuvBqbmEk7xXmaXBvymVgGFxKV0gxI0OyLxbuv
         fXU+M+ooy2r1lWyMG55oAFv9fozS9Xp+EPbpEEUNYRXMWSw0SelzhznoMyEONWmvyMrN
         xUwPoKQXF5usKmGF2+1p5bM7KCkw8x4ees4vzQZxkwwseu4dwOIgTAcpJUlNlYX2RmFb
         PCjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hGUoLOyQlRJEdezu9nihZHBavXHsLtSRY0T1FgX5PtI=;
        b=q+T50NEU2yE4/OH+jG9vD3aDJIEoLQs55xYdyTDtElE/Lfh48xxCD5PY84abUcDuy/
         yGEI6x+WuHm4rdttBdR4OFcuM2OWbdvqdi9qU7kTO+/DlJaO8FpySQwAbYmwJyfUg30M
         eewNY8fTmceBaxIQs3Y34qDt9JzqvUds0Eqy88zMAjFgoVWe6QPXUrSy6e7txn70zDzA
         zp9JgzyKJ58NG5D9O+5Ny4qhHy3WJ0/qygc/XQJA77148YnjhKOZmjnja3gcjPNVjMFx
         r+4ujJo0rqQWy+ZTyMeTVPupJ4vd6xVYpyL/kJHcbzb8Vhp+PkLLTeoY+Dm+IgEvzVUf
         AJuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fpp7vy8Z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hGUoLOyQlRJEdezu9nihZHBavXHsLtSRY0T1FgX5PtI=;
        b=C/kqhps8wzs1uq+dMEC1VX08MnGFSFiMdUvy1XdkQX+jQcBYpCsgtx5hKrh67UZP93
         yZ+EaMmu12OmlfceLZ+G5CrPohk/yuJKOtDvk516Mi4x5E2stoG5t4M+xWKvA5OBn0E9
         APaYXasIFxaRhiy5AIv5pwshkXUVzoSlLellALEjaoYen44oAgwlV5kzZXMLE40OwnJ6
         +n1uoseoCVmrYxK9WQpzSctiQuV2bQH73QO3uplHsYs94k4Lb/rPCfgChxUwTFBvb0TR
         R3j5H5k4HCU73zgAjsJGfY7CReaLQZ52wF5U55br+485JN9npFZHty0Bv0LjOlTOjlw3
         a9zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hGUoLOyQlRJEdezu9nihZHBavXHsLtSRY0T1FgX5PtI=;
        b=nskzphUk0eFmBV5S5gjfCnYfLRJykE4BHKPIocfEUXYh1W2nvaDKT44nIWrxt4q2oR
         hhKXkY5elo+X0vUanYqXwO5QolBJ+WxLzFouoDizbM1bsHsgbbulKTSsSkQ8FPUhbdh0
         u4F/fBjOxVQARiQFoBz1zEm4/2P+0SP3F/W+WyXbcjbXz9KUOrF0yGlF6mnIvl7X3KZ8
         5YcXojlkX0MVnIA/9UZw7aE+He1WDgjndzwucvWYPudt58yd3BVGlawPk8UF4gEc9SYA
         zPMeTC4kNg2BnO17oV5HvhMxf/po0jlILpFaj5xRSS96+bdfunfzkHJAXWHLCUUZ442g
         SpOA==
X-Gm-Message-State: AOAM530pUaEmKYU4/z6nDqdNTghojOm48f/jK8uM4lthXhipqm6YZ2iC
	cDfNVkzUpl0A3J577/k3EM4=
X-Google-Smtp-Source: ABdhPJxHmVR+W4FJB2cMJCHXbtK4ItVQ6uSqt832xIoF3Sk4EsUE14+57fD2o33NCLQVjFYlgtn+Pw==
X-Received: by 2002:a25:3b87:: with SMTP id i129mr24029476yba.237.1604973917754;
        Mon, 09 Nov 2020 18:05:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:4e3:: with SMTP id w3ls5394385ybs.2.gmail; Mon, 09
 Nov 2020 18:05:17 -0800 (PST)
X-Received: by 2002:a25:e7c3:: with SMTP id e186mr10569378ybh.365.1604973917317;
        Mon, 09 Nov 2020 18:05:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604973917; cv=none;
        d=google.com; s=arc-20160816;
        b=fvXQb2za1RtVmZCPElOXGEzPIcAGHbBlHzaINeN7XZb1e0mzHxG4kILZOl/7ssy5F4
         D861Y+emMKg1a6q8oE6BALaegNpHsp6UHpqqMNoz/jn3l8WM/zqoUJWpOIyUGGkmOjKw
         c11tJAeLhF487d8G+ykadGjjz8ciSepruh+KVMgE8LA0VjhMMaV2Z4624knfKDd2WT7q
         21wBXfOZNs8wLRf0P/h1XmOktYGOxktxfkKhakbLdYHZFAKFtMhqMn9amQYaPo6W6c91
         luHwBR9zGUZuk+4j3r/X3rdKhWX8Upxxjbn9aghLOww9IUBOjTTTUnBbXXdS4omjyvBv
         JEtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lVXeMEQ2o4JUdSbLT5jWl/5zgzTocpCs/1/9xL3H71A=;
        b=0Ctdknqnb4Gpj3jBoZoCCsZduFgAVb4InliL9geweviMpQFB6KV0uRlAR6jsol1Jst
         Q1EDgDaRzOKCAdLCgA+BN+Ob5pan12eXc1gMGo7//GBjLO8ofEEtaXqBIp1tOlXw4TtT
         867WYGLpmef+4qoM+9ut5RaNHOSHGADNgS0gnLST+6vzqpahCbyw5dV2z7De7K9jazhE
         hWHtulJNqTBB6y09XQkqEA0fcsbNrsVm2IpTQRejDnu0HCHbORX+wKmBCYA5epzWBiOJ
         mGGEWuK87a8DFialDfvIkxsfPetLPWWGUFQll00DGeUdkBKwaN0ICaX8OMS8hLW/VyAO
         NwBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Fpp7vy8Z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id l5si587665ybb.1.2020.11.09.18.05.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 18:05:17 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id h6so8794847pgk.4
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 18:05:17 -0800 (PST)
X-Received: by 2002:a63:2f41:: with SMTP id v62mr14924136pgv.10.1604973916423;
 Mon, 09 Nov 2020 18:05:16 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdmqEmPGqbkg9KpgXh+jG7aWtFVn16SCUxqANBYQPLhoXg@mail.gmail.com>
 <20201110015632.2509254-1-natechancellor@gmail.com>
In-Reply-To: <20201110015632.2509254-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Nov 2020 18:05:05 -0800
Message-ID: <CAKwvOdm1uvFpG+zJkkQfuSoQkh46-Vy4NNex_koQ+RaKZD2q_w@mail.gmail.com>
Subject: Re: [PATCH] ARM: Link with '-z norelro'
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Russell King <linux@armlinux.org.uk>, Abbott Liu <liuwenliang@huawei.com>, 
	Andrey Ryabinin <aryabinin@virtuozzo.com>, Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Florian Fainelli <f.fainelli@gmail.com>, Jian Cai <jiancai@google.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Mike Rapoport <rppt@linux.ibm.com>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Fpp7vy8Z;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Nov 9, 2020 at 5:56 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> When linking a multi_v7_defconfig + CONFIG_KASAN=y kernel with
> LD=ld.lld, the following error occurs:
>
> $ make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- LLVM=1 zImage
> ld.lld: error: section: .exit.data is not contiguous with other relro sections
>
> LLD defaults to '-z relro', which is unneeded for the kernel because
> program headers are not used nor is there any position independent code
> generation or linking for ARM. Add '-z norelro' to LDFLAGS_vmlinux to
> avoid this error.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1189
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for the patch!
See also: https://lore.kernel.org/linux-arm-kernel/20201016175339.2429280-1-ndesaulniers@google.com/
where we just did the same thing for aarch64.

> ---
>  arch/arm/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 4d76eab2b22d..3c0a64cefe52 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -10,7 +10,7 @@
>  #
>  # Copyright (C) 1995-2001 by Russell King
>
> -LDFLAGS_vmlinux        := --no-undefined -X --pic-veneer
> +LDFLAGS_vmlinux        := --no-undefined -X --pic-veneer -z norelro
>  ifeq ($(CONFIG_CPU_ENDIAN_BE8),y)
>  LDFLAGS_vmlinux        += --be8
>  KBUILD_LDFLAGS_MODULE  += --be8
>
> base-commit: a0796429c6abecf8afaeb65b1db286af1fb579d1
> --
> 2.29.2


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm1uvFpG%2BzJkkQfuSoQkh46-Vy4NNex_koQ%2BRaKZD2q_w%40mail.gmail.com.
