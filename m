Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUPYSPWAKGQEPW4AQGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8D7B951F
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Sep 2019 18:20:35 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id i187sf5016757pfc.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Sep 2019 09:20:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568996434; cv=pass;
        d=google.com; s=arc-20160816;
        b=NRX/cQYfQJNbK6Cr9j7+2XvL2hCCO7wAYiNoFoTXzO2eIFQV/iwtdsBHV9pd7mcbDL
         FIyCXVRPlZ5X5B4YvV7+nPUdn+lk83QsRjvMMWcdU1QxTgOhwq6lZJI5sgJQhqaZ2aP0
         S9vxUYNW9e19VFrGA5EWKQJYhCmVoYcm1N77l2dN2cylh/eY0sDf0RZnpKCjCsH6jPJ8
         Rn1WY7onXP3JHa0U3LXLuNXMhYHV24VkEpFuXr68lOJbtqjNI5s58m9SE1EFRA0KqGsk
         ywXuPjWfGNxvZxJF/YDPogMkvnvgRINZ7qLrmdLTRvogvCEfVklmoU55/xBZ6X+W7JDg
         oOFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1ke2z/wmpB0RPRwYfzJHVTIQxSphgg7UPPHacU4wyjE=;
        b=cMPIyCE4t15kDxX4cebvRVimyr3s7dUGr8ZbRFYMRILxH56VHDWQlsV1Lwx9L9D+Qm
         TuL5tnZ4o5cTCkN5cSemmloFZqLx9+ZTQuT1E7jn+uj0hMG6L+nrxhWtlkMjXmQ/Lykf
         TWgsRgf7iQPko15lg0uI9EA4OSTvCe6nRyhjSeplybTR/BcBfXsjiJKoMut4SjtzKa2s
         SJUh+gXIGBNAY1eDjNjVnzxsVVHRDTTzUsY6ck6dDHT9NL4mqXrc3Ssj9aao0oKQ45nO
         TdykEVJlaitdaKFUvq+2a5yBbG42iTazBRjoHgkk8OIflhaz5Gqx05dj59/fHXwIPw9Z
         qSqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jPvq1xo2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1ke2z/wmpB0RPRwYfzJHVTIQxSphgg7UPPHacU4wyjE=;
        b=eoS7YNiEDz47cjK/fYDO5j3CAWKyOTEwEulm7gxUK4QpHTuef5TJW2kC526QWF+YyO
         5SA51RaMkpPG2hYM4/YaCLO489vALVKRuo6voTGkPr8nthzCgMzxj37cxG19qKJlX60Z
         bBXVb331aGInvmay4qo3GKvDEnffUu1wHkccvg55F16MIOXx51Fu7+L6zL4OirZKAuIi
         aLAswMNKzUGxhwJfl0Zf+zFxYAXSqieJuCY4jDlKEiFNbj10OJcoZExxolL4UOm1JjcR
         Wkk3AE4zKAtGm2uNjyzD6WPOD96lKnEiuumbt5taqk35GzA61ISu6tRYSKfyhQmAC4it
         kVvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1ke2z/wmpB0RPRwYfzJHVTIQxSphgg7UPPHacU4wyjE=;
        b=rceg509vHFY+JcJ+7e9/tmPe/lZJskEjcAt793o4cx9hW6l2u0IA0LdDTwhPpFUvCh
         R4pOhIa410phHNMPl3uIr71P+CPPGQpsZT4gC72BaXSuJXFA7JaB3ocWbzCOb7b30ynT
         946K+L7eFMrZh/aKIZqkgJD5N1CLLY5zi/A25cMp3TmfTsdPPdFAajdr5Q9uoMhwhWT3
         RCpLqUXLUBC1mmKUhPt5XeB1S8Xy6jVBb2pjv+V9ZOBcikQTFKR/nnuz2vFmDx7xzpxH
         Y//H95X683AFvxpbQEdU0ddSbYJVAtiIFxHbtGm97MgTRmd1hX+g1Wx4zHUbmMFPPf9m
         A8Lg==
X-Gm-Message-State: APjAAAXY3ql6AFb51u3byiFShs90VRYSaLT00Gqco3O8hbecKB91nMvm
	Cufb9i/fAtqghhFo+G8wCJA=
X-Google-Smtp-Source: APXvYqwPNFxAJGJqBrfVEJKA89gVjoBVXFeedhAOnu1MgseWl5wSyemQ9/EuiZVOuhEa6XFu9PAM+Q==
X-Received: by 2002:a17:90a:8c0b:: with SMTP id a11mr5431832pjo.82.1568996433880;
        Fri, 20 Sep 2019 09:20:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5244:: with SMTP id q4ls1571549pgp.8.gmail; Fri, 20 Sep
 2019 09:20:33 -0700 (PDT)
X-Received: by 2002:aa7:80ca:: with SMTP id a10mr18477508pfn.96.1568996433566;
        Fri, 20 Sep 2019 09:20:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568996433; cv=none;
        d=google.com; s=arc-20160816;
        b=KoMZxjo+H4XzIelPL4+zdP+7wOlUiLO0EXO5WjLW40FRqZz178w8aWj0yTV3M6UOl1
         AEJWEhpgm2W2Jed+QYHWtIVRV/5ykk4C2rfn3LShK+1ujuDh8K2WuiR4bRHRuBzB0JoE
         8Luhs6Zeck6bG8vu5xVG0X3SsE5bPHrUpXHU6KgmCmBsd9JIeybnaoyvjpfAI65FM6jy
         rdbkWjseVjVQa3H+L2uDmkKE+S2IXwvlAld4560+GmKFseQB2/YEQY+dFcUTyAEs1Qbf
         qU3tZXtkSSFmjfAH+a+rngDyORHHwptUnt3cer1I0d64xcm/om9BddA2KXQtMFfbzuKI
         vHOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vlNGfK1QkeKihZ4C4Tfs64KHadfyM3q44e2VI4eyD3A=;
        b=EaXUhFRKt8A8F7SVZ21hrilCnn2sy5oDlX5xtQkAc2Q2zSz+BT3fsncggvueNXstW2
         Op9EbN/xXPjD++3rp4SAqGJwtprCJS6laGJLb9WK5DMBTZGDxKahnS/e/UfsAtQonDNU
         xGmKRWTs8DUINau6cu4BReZjuchL/dqTcdWY5CTcHIuv3zLblTwfPP0JER2ByxyMORXT
         BWimZgXFf2wmAHO9nS0SKwfhJyrhUKIND6sQbxMTo8unbJ8OLzED9aRtewsn9tgessDu
         4FNgf6HGt1kOEagYJyNBxqRmPJ5lWDbQXbB1fbEav4FNwON+FiAro2Ay6UyZPMjo6pc3
         qFYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jPvq1xo2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id z22si182920pju.2.2019.09.20.09.20.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Sep 2019 09:20:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id x127so4838232pfb.7
        for <clang-built-linux@googlegroups.com>; Fri, 20 Sep 2019 09:20:33 -0700 (PDT)
X-Received: by 2002:a17:90a:ff18:: with SMTP id ce24mr5537560pjb.123.1568996432715;
 Fri, 20 Sep 2019 09:20:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190920153951.25762-1-ilie.halip@gmail.com>
In-Reply-To: <20190920153951.25762-1-ilie.halip@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Sep 2019 09:20:20 -0700
Message-ID: <CAKwvOdkvrRgQ7KtGag0yDH+ry7a6=pd5xudrNm9X+5oVu2Z20A@mail.gmail.com>
Subject: Re: [PATCH] powerpc/pmac/smp: avoid unused-variable warnings
To: Ilie Halip <ilie.halip@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jPvq1xo2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Fri, Sep 20, 2019 at 8:41 AM Ilie Halip <ilie.halip@gmail.com> wrote:
>
> When building with ppc64_defconfig, the compiler reports
> that these 2 variables are not used:
>     warning: unused variable 'core99_l2_cache' [-Wunused-variable]
>     warning: unused variable 'core99_l3_cache' [-Wunused-variable]
>
> They are only used when CONFIG_PPC64 is not defined. Move
> them into a section which does the same macro check.
>
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>

Hi Ilie, thanks for the patch.  LGTM (Please include link tags if your
link addresses a bug in our bug tracker; it helps us track where/when
patches land, in case they need to be backported).
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/663

> ---
>  arch/powerpc/platforms/powermac/smp.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/powerpc/platforms/powermac/smp.c b/arch/powerpc/platforms/powermac/smp.c
> index f95fbdee6efe..e44c606f119e 100644
> --- a/arch/powerpc/platforms/powermac/smp.c
> +++ b/arch/powerpc/platforms/powermac/smp.c
> @@ -648,6 +648,10 @@ static void smp_core99_pfunc_tb_freeze(int freeze)
>
>  static unsigned int core99_tb_gpio;    /* Timebase freeze GPIO */
>
> +/* L2 and L3 cache settings to pass from CPU0 to CPU1 on G4 cpus */
> +volatile static long int core99_l2_cache;
> +volatile static long int core99_l3_cache;
> +
>  static void smp_core99_gpio_tb_freeze(int freeze)
>  {
>         if (freeze)
> @@ -660,10 +664,6 @@ static void smp_core99_gpio_tb_freeze(int freeze)
>
>  #endif /* !CONFIG_PPC64 */
>
> -/* L2 and L3 cache settings to pass from CPU0 to CPU1 on G4 cpus */
> -volatile static long int core99_l2_cache;
> -volatile static long int core99_l3_cache;
> -
>  static void core99_init_caches(int cpu)
>  {
>  #ifndef CONFIG_PPC64
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190920153951.25762-1-ilie.halip%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkvrRgQ7KtGag0yDH%2Bry7a6%3Dpd5xudrNm9X%2B5oVu2Z20A%40mail.gmail.com.
