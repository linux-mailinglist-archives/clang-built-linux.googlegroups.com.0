Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ7JSH6QKGQEXCEWQGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 701532A8951
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 22:55:16 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id s128sf1766406qke.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 13:55:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604613315; cv=pass;
        d=google.com; s=arc-20160816;
        b=t9WRtoeNpaGXR5fdWf9T16d0RYT3ipbT0lNYsJXaYmaa6ynFRomT3H7XNU8lkUgcqv
         rgugXml8Y7BC07S1yWJfRNnBlmnXF8uBX1j4tB6jrmE48DwFxWCQeaUw5VjTG7KL+qj/
         pU3cH2jx0VdIXvf/a2RQdpJgZiJrh9dvx5P+SKTxBDh/Bq3DmCIHeCIEl3aAeNFntvRP
         Yb58gL7M62Qaf+ah8YBFnn6XUeEpMPPOcTHGI0XW0vETgt8fuP7uamjddL91234kUryj
         0+V4S8wWmTSZ0WmQRkKBBqXBoeuSNe4Od/vHGegEvYoAiT85SnuUd843r+9DgIaGMurz
         qWkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Gorp1C6jOUTVoVWU1LQQ3qv7liez615ARAIcL15lkq4=;
        b=nESUFp0iBS41Sfwc2A1DVeAmTv+AG5HASa6mWVKDwy0IJUXBuu1g6zOCrXTnNSwMEZ
         OzOaMJD7oEhgIB0Lzh3rrXbPn9DIEeULaeVCOst3zzv4dgq4fzVuCjj9RQFggpwYbTNd
         QDoJ9HcqdpLHlx4aOWhtyGBsr4AugUZMm8V9/lXUsp3iSRTlALFEpClZ/DldJNAoqEJO
         bXb7gwOOb/ZhykWPIxpfTxd9iCsSQo0e7qluPt02DLZ+Lp41K5DhbSFFFWk4uJvGVrkh
         rt+h6EQRRH879ctMiV8bXRsas+FZCK3lypTLxOlFjkNPRu1qyysfFc/Wmp9BdDRkBNp2
         qLig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HnoiUMvb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gorp1C6jOUTVoVWU1LQQ3qv7liez615ARAIcL15lkq4=;
        b=M4zlVsqnomwIXare+ctJ1cwTK48Gx6JT9nb6EytL9Vkz4RGBPtasxCm96/7z0w1Iw8
         8zkDGB/tCGroXRaSZSNg3CUihVBcbCBQdjm7jOe/iEoso2Y4OGirNIqsHfiMZXjr4P7E
         ezrsDGFsQU6YXbjHKnqgXp3apYe3wJcg17tFqkeR8X1cdYKBRukctS4RNOffCeUyKtzy
         ttUM1OrWp80J1orxs17zeFsk0nt2691RbVbd7ec4rE8KTLpcJBhklYeNACLKCLWxBBgh
         v9qvthXkv6Pi3rQE6mEzXrtgNCwlRmF1YzwcW0dsdm9bCgVR4yWr95WMhhIBYslFOQEs
         eMRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gorp1C6jOUTVoVWU1LQQ3qv7liez615ARAIcL15lkq4=;
        b=sIrguhrY1sR2dZl55ef8eHLttKCWOAlsf3vpBapa7wODZc05ZDGEWxJna8o3R64d1W
         74n6807CDkWT0svKpBgXLu9qHYy8gWZrbOBoGAwin1fGln0IyByuXd8lXeAhrhP3U3OK
         KhhsM7u1fDDmUYdyEzKlwnfHtebA2uKK4LiZgxF7c9ajaXiimBA5Fb9DHNWw5kjQlESI
         yE+oxalYS05x6vTUbp2y+04oYpj0EdshMpEqDcuX3hYxcSdh7O2Zj83NbVLfO9jUz8hj
         XIROc18vjtkwnGmMVqn/8qaul7EjwobLoyJ1JCHZu4CemTamZDa+UvI7bSN20qxOetdh
         gR6Q==
X-Gm-Message-State: AOAM530wmuQN5Sl2MOwc1KpQudY+YDCunCoMDd4cXgnpA9C7iNiBUazQ
	xiuQLSYkcA3pLaBnoIa9Is4=
X-Google-Smtp-Source: ABdhPJxj0d7r1igDGWQmNueQ0WjSNHMasPZjyk7eCbyFW8sHw0fwFAxABfnzkuEleWJgmRLaxiFADA==
X-Received: by 2002:a37:58c1:: with SMTP id m184mr4393000qkb.305.1604613315385;
        Thu, 05 Nov 2020 13:55:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1248:: with SMTP id a8ls1453667qkl.11.gmail; Thu,
 05 Nov 2020 13:55:14 -0800 (PST)
X-Received: by 2002:a37:e40b:: with SMTP id y11mr2552502qkf.29.1604613314823;
        Thu, 05 Nov 2020 13:55:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604613314; cv=none;
        d=google.com; s=arc-20160816;
        b=nzmhg6oLn8JzdA5Ekte0uHckz4wAgZuiX2qGNnpsoaD904c2ZE8/AZL9Qqzx6yeuKb
         et9FC41Z0Tzm3lLzHZOwhqDdPrwogPma4UpyfzdbPoPiRjExOW6ltkKoudDY6/AHvHOE
         /TVFJr/tzI5o38WgmAcffSXJBAmdTbrPA/xOuQpD2v0zpqYuyxlECXLBRf/Ft2X5K0MY
         JN/BDs2WpPPcfAfIaXh+L04gY1pskIM+ieDM7rLAi4JdEfZ2nzeQ0iI1uTENaH7csPG9
         K9tnIWHI8qA3VvmBIQQLRTKFnvnrVABzQlRFe8iShMAhCOHWUjtksfNIyS7+D8Qk5+Ou
         hHtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=y/FOdRcEoxFCuPVks/D9Fc7+PAewUc5XRsRs0G/Ib00=;
        b=RnntlTkiLaAFFmW+U5FWVikxZbwcGmfOIlmf9tMAXKGpTBvWq7tliJqCmpZm1Z5spM
         PWVvawIRUuU7WM6j7aIdbYVFfY3HoMofII6oDxllJ4jyz+e75J+GcdYeJdGaa3AN45Ti
         /DdXfH8qw/VivoLALjgzGYD9fCFEvBL+Vf6T5LvvHJtp0JxltpT0yQFaL0eRF7bPFA7u
         sW5gO+Jo4t5pWDs5Jdvq4SBAItHEctu7Ie/7WEKF4ASHpRly2Oz57LyGUaObb5EI7WdN
         3tQxox5bKTj6XG1cBgDxEz2LXC9cFXxYqHf1sHeHhTrkj/EqcHwaamBVrKfwuPVFMGLY
         wKGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HnoiUMvb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id o23si130490qtm.3.2020.11.05.13.55.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 13:55:14 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id 62so2271089pgg.12
        for <clang-built-linux@googlegroups.com>; Thu, 05 Nov 2020 13:55:14 -0800 (PST)
X-Received: by 2002:a63:2f41:: with SMTP id v62mr4216773pgv.10.1604613314248;
 Thu, 05 Nov 2020 13:55:14 -0800 (PST)
MIME-Version: 1.0
References: <20201105181542.854788-1-maskray@google.com>
In-Reply-To: <20201105181542.854788-1-maskray@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 Nov 2020 13:55:03 -0800
Message-ID: <CAKwvOdntB5zYxXcHQm5e8Z6fyT1aEiYKVEc6JSDBLs4WYzs3kA@mail.gmail.com>
Subject: Re: [PATCH] ARM: Change arch/arm/lib/mem*.S to use WEAK instead of .weak
To: Fangrui Song <maskray@google.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	Abbott Liu <liuwenliang@huawei.com>, Russell King <linux@armlinux.org.uk>, 
	Ard Biesheuvel <ardb@kernel.org>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Mike Rapoport <rppt@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HnoiUMvb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Thu, Nov 5, 2020 at 10:15 AM Fangrui Song <maskray@google.com> wrote:
>
> Commit d6d51a96c7d6 ("ARM: 9014/2: Replace string mem* functions for
> KASan") add .weak directives to memcpy/memmove/memset to avoid collision
> with KASAN interceptors.
>
> This does not work with LLVM's integrated assembler (the assembly snippet
> `.weak memcpy ... .globl memcpy` produces a STB_GLOBAL memcpy while GNU as
> produces a STB_WEAK memcpy). LLVM 12 (since https://reviews.llvm.org/D90108)
> will error on such an overridden symbol binding.
>
> Use the appropriate WEAK macro instead.
>
> Fixes: d6d51a96c7d6 ("ARM: 9014/2: Replace string mem* functions for KASan")
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Fangrui Song <maskray@google.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1190

Thank you, this fixes a recent regression for me using LLVM_IAS=1 with ToT LLVM.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/arm/lib/memcpy.S  | 3 +--
>  arch/arm/lib/memmove.S | 3 +--
>  arch/arm/lib/memset.S  | 3 +--
>  3 files changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm/lib/memcpy.S b/arch/arm/lib/memcpy.S
> index ad4625d16e11..e4caf48c089f 100644
> --- a/arch/arm/lib/memcpy.S
> +++ b/arch/arm/lib/memcpy.S
> @@ -58,10 +58,9 @@
>
>  /* Prototype: void *memcpy(void *dest, const void *src, size_t n); */
>
> -.weak memcpy
>  ENTRY(__memcpy)
>  ENTRY(mmiocpy)
> -ENTRY(memcpy)
> +WEAK(memcpy)
>
>  #include "copy_template.S"
>
> diff --git a/arch/arm/lib/memmove.S b/arch/arm/lib/memmove.S
> index fd123ea5a5a4..6fecc12a1f51 100644
> --- a/arch/arm/lib/memmove.S
> +++ b/arch/arm/lib/memmove.S
> @@ -24,9 +24,8 @@
>   * occurring in the opposite direction.
>   */
>
> -.weak memmove
>  ENTRY(__memmove)
> -ENTRY(memmove)
> +WEAK(memmove)
>         UNWIND( .fnstart                        )
>
>                 subs    ip, r0, r1
> diff --git a/arch/arm/lib/memset.S b/arch/arm/lib/memset.S
> index 0e7ff0423f50..9817cb258c1a 100644
> --- a/arch/arm/lib/memset.S
> +++ b/arch/arm/lib/memset.S
> @@ -13,10 +13,9 @@
>         .text
>         .align  5
>
> -.weak memset
>  ENTRY(__memset)
>  ENTRY(mmioset)
> -ENTRY(memset)
> +WEAK(memset)
>  UNWIND( .fnstart         )
>         ands    r3, r0, #3              @ 1 unaligned?
>         mov     ip, r0                  @ preserve r0 as return value
> --
> 2.29.1.341.ge80a0c044ae-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdntB5zYxXcHQm5e8Z6fyT1aEiYKVEc6JSDBLs4WYzs3kA%40mail.gmail.com.
