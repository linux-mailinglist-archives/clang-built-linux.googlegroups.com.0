Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHW7WGCAMGQENCZ4UEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C8C370288
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 22:59:11 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id f8-20020a0565123228b02901bf09112e2csf4887145lfe.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 13:59:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619816350; cv=pass;
        d=google.com; s=arc-20160816;
        b=YXY5LrGhbJUiOyshzJa0zteVTVUa4Kh2iU9GwzSTOr8V2u1MUUSP3xwptkCV3qgBlg
         Yfkx7kahYNIgOPR5yL5Zc91cohkiAdOXxwEmJYI1sKKRpYltU/M3RMqeeaoavVj4ALPM
         YqdnElRllTC3RxAe8ojNzj6m31W8S0wY00l8o+dc0bXNttpwh7Trx8mcByXAfZ+M7rLZ
         0+VK5Xb00cIKp7xAwkiMm8vZY4Uakgw2wfJq4sHPab7kEgPw3U3kdL/BdelSXop8qvA1
         y/oHxATyhSZcWR2j2JLPT5WXj9eP0xDqHaqu6NRBWCGN8AZTgnV39Dk2u/n/k0t1D0fr
         X1AQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EX13rOklyBxm5G8f/4ic5dYPAH4Ghf3ih/ZJ1aKl//w=;
        b=cdeydobnyVwWUizzBdF3hwc83Wqh6XsNKUYYwhJQfHvHDWqFEF9BWAxrL8ITimyOdP
         EhnWBuOGS4IHu/7a0sRSnfwl036iQrUxKkxhGRaEsmnF79+jnzxE+PvgzyDVrLVkrGjc
         +vgXhRB2ErJN0IIitZlzHoUaKeIP13bCX6iBU65feUG48Zkaxqex1dxE8n/NWsqK9vAI
         l1Cu09dZySuuozj34uTQoHnuZ6FpCzrwvqCHHzSlHcu7CQ4hwhhxsGco/ODdKo+A8dF6
         3fjlZUeJx2KE5OwVII6JwmxcwHAaI3btVt1tWP+nc4/AyWG0d82Np83s0C1aCEjEjQNA
         r/xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UqamODUw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EX13rOklyBxm5G8f/4ic5dYPAH4Ghf3ih/ZJ1aKl//w=;
        b=CfFy57EcbtXd5SNBhoB51YgfHpKzAZn3V137tAP2yX2Ll5l9wN/JvrYtGoP+aohApj
         +trOH3HBWz9hkwxfbClEGFhjQb1AcF25QusNxUXgNHnbcqEWrYcy9GVLeEg+GBWddG9W
         tQfPvmvlfegzuPShmxUiUps/rLpqIO1/UMRXZXBCTIZeb4Yifr8UzVq5tl7K8O0TSj6Z
         5zifcNutSUuTycegnkaMGnbNy3DWkguEDjbVdVzCSl1IBzlfRGVhWlo1BYf+HEXCIWha
         WQ8u451Lr89Vqveb4cVBKxHe+e+ZUijAkpyPt5DUBikCIDdGi9u7bIgceU3zCmdrZGUW
         yl5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EX13rOklyBxm5G8f/4ic5dYPAH4Ghf3ih/ZJ1aKl//w=;
        b=rMWRDYx4WtnsCfQHm+B3WCmDRQvbXWpXrH1MVlWW1SZMu3pgST40Ef8CTFxdnddIsx
         5ROybPb+8qyLzfURsXo/1pvLTvCDysucuaGKOFtbvCuDOmzG0XltdbhuFldJuwgvIAJS
         q8iNSUMY87yGFVno2jTQwtaYiF+5asKzqjGQ9rtODQw+4mvPyETi9lCbtDqBrTTwoEPL
         fTOCSHq+izt8I1iulnJKCx/Fr2l5lWnxVE2VSr6+vjNJEsMjuR0LJs5SuP676DMUqMZS
         Q/cbJzzjoKd7rSI2o6ClVBcSx1foZtob2BiYm0Ntj+VqHyzqQUWNdA2ZZe9VlodNgcHI
         C5Dw==
X-Gm-Message-State: AOAM530jmmgmpB3w9l+90iCQUIXo0zhDQd+AAWcTx3U5emShuw7aZa9t
	zxxrMX7jHUbv27iA8vmugOw=
X-Google-Smtp-Source: ABdhPJwzZi38FbYcRPNA1NVMyW0rz1v2YcsU8TsEIVgWRgRl5+VLx6Gnw3wUJ3g+/J0+wZpTR11aTA==
X-Received: by 2002:a19:b81:: with SMTP id 123mr4531103lfl.553.1619816350766;
        Fri, 30 Apr 2021 13:59:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5624:: with SMTP id b4ls3824850lff.0.gmail; Fri, 30 Apr
 2021 13:59:09 -0700 (PDT)
X-Received: by 2002:ac2:5682:: with SMTP id 2mr4460872lfr.524.1619816349760;
        Fri, 30 Apr 2021 13:59:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619816349; cv=none;
        d=google.com; s=arc-20160816;
        b=b+AMj8nzFQaw6pySAofKY2vZBs+2+wh+DDtvJlLfVAGZzm6FpSjUi9vSnW0H7Mzihd
         uRIGAPgOHmu21DI6seKgYBSmx17xLzSLPkFZfeZHkcRZmq2tZPCfDQZ+u8rV/Tpc1LeL
         4GKXnJzTrqg3orrH2IJ7g64vuOuvIvdLYwXUVVbBBX/tVpGn2qDlqoI8Bv9JVo10WgP2
         RZmkjtoC6lAh7LY+H1Opf3qbAOurEiB/zqiSmf6lW1asKolJyoFSYYnR0sdbmNAkB3X/
         FSSxy698LI1WDK4jJqHCMRygJij1HC/FRuY5cflaKUy5grMkwTFsSZpPV9SJCUTkosRo
         JmKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HAJvDe27ES5agMJYGZiW84oZ89WkJPUuwlQYefRHJ9A=;
        b=dytaVEIhKzyc6LWikyv1RLHn9+pRboM2AUZ6+miYdxIKw9XCXylbBdYQyvWKZJj7oQ
         ItJNXh2sQxjg0ToKI4DhcHzhA6UPn2qK0ixZGUdHB+B8m/he4FmlIVHc2spDOkrj7Y62
         S5PTUdpozrK86bKAvhjw9ro+UqqgySIMsNkM/zVJxfwDCkgsK34MhfIg6yF9lEqJFF7d
         PCHPLOhY7amIGSm1wiYwYjZuLJQxg1WH/G+xmwfMVXJKr2iEY4jMkEBa13obbvpWzxXQ
         ldvd/9l68yy800ryxPRBPPNk67dMhljeAzkrfrP8afRCc/dS6c9Z1HUO/uqNpDATEYRK
         czJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UqamODUw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id q13si463180lfm.5.2021.04.30.13.59.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 13:59:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id o16so82377579ljp.3
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 13:59:09 -0700 (PDT)
X-Received: by 2002:a2e:9211:: with SMTP id k17mr4968737ljg.495.1619816349345;
 Fri, 30 Apr 2021 13:59:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210429232611.3966964-1-nathan@kernel.org>
In-Reply-To: <20210429232611.3966964-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Apr 2021 13:58:57 -0700
Message-ID: <CAKwvOdngd5inT_sQP-PgqaMpVzfSdwoyhCcUSdS+09u=PKUEyA@mail.gmail.com>
Subject: Re: [PATCH] x86: Enable clang LTO for 32-bit as well
To: Nathan Chancellor <nathan@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Kees Cook <keescook@chromium.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UqamODUw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230
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

On Thu, Apr 29, 2021 at 4:26 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Commit b33fff07e3e3 ("x86, build: allow LTO to be selected") enabled
> support for LTO for x86_64 but 32-bit works fine as well.
>
> I tested the following config combinations:
>
> * i386_defconfig + CONFIG_LTO_CLANG_FULL=y
>
> * i386_defconfig + CONFIG_LTO_CLANG_THIN=y
>
> * ARCH=i386 allmodconfig + CONFIG_LTO_CLANG_THIN=y

For allmodconfig
HAS_LTO_CLANG cannot be selected unless
FTRACE
GCOV_KERNEL
are disabled.

I was able to run through similar tests, though I only did so for ToT LLVM.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

I additionally tried full LTO allmodconfig.  Full LTO allmodconfig can
be tested by disabling CONFIG_COMPILE_TEST (in addition to the above),
though I hit https://github.com/ClangBuiltLinux/linux/issues/1215 (the
xfs tests aren't building under LTO).  I think this change though is
fine, and enables another avenue to help us debug that failure.

>
> with LLVM 11.1.0, 12.0.0, and 13.0.0 from git without any build
> failures. The defconfigs boot in QEMU with no new warnings.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  arch/x86/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index 0fc82237414d..d8a919d9535e 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -97,8 +97,8 @@ config X86
>         select ARCH_SUPPORTS_DEBUG_PAGEALLOC
>         select ARCH_SUPPORTS_NUMA_BALANCING     if X86_64
>         select ARCH_SUPPORTS_KMAP_LOCAL_FORCE_MAP       if NR_CPUS <= 4096
> -       select ARCH_SUPPORTS_LTO_CLANG          if X86_64
> -       select ARCH_SUPPORTS_LTO_CLANG_THIN     if X86_64
> +       select ARCH_SUPPORTS_LTO_CLANG
> +       select ARCH_SUPPORTS_LTO_CLANG_THIN
>         select ARCH_USE_BUILTIN_BSWAP
>         select ARCH_USE_QUEUED_RWLOCKS
>         select ARCH_USE_QUEUED_SPINLOCKS
>
> base-commit: d8201efe75e13146ebde433745c7920e15593baf
> --
> 2.31.1.362.g311531c9de
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdngd5inT_sQP-PgqaMpVzfSdwoyhCcUSdS%2B09u%3DPKUEyA%40mail.gmail.com.
