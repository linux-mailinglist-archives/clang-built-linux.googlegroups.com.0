Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNPFUWBAMGQEEZ6IA7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7C53369A5
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 02:30:29 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id 75sf8716514wrl.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 17:30:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615426229; cv=pass;
        d=google.com; s=arc-20160816;
        b=Aa6balIq0O0+WDvE/A52B8G1yn5f9LFea/e687QgaiaGB1j/4ymAY3M90Gg1OOqMx6
         aOdGPEqwA0hbM1JlItrA9DJtq/Pr3wR2UKOvjSu8qa+42Idzl+iWNAWIT2e0Pi48N6Xb
         19ld/NUnT72Lz9lSYsZAtVx68CIxL+XI3pzamFSWyLxbzwLczZogcbRyroIqqVH/foBO
         FTYX8WFwj/rH0SLvolxo3+Shj1JbbneK11dmS/l6nGQjg+KdJHr+3n13539zYQ7q4Sc+
         gGTrNhtIlBstqZYCTpWgBqHTqC77BR0l5SAwBY6j1LMO9+okeh70Aqz57TS1Mj4jOUzf
         b5ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LHDaqTT6HBaaK83PH47R0+Ob0NXB7t6yrchBJHoHGEA=;
        b=f4VwPZW0S+7dyp4KmrL9kOlaa0rJvoKXgFXrBYvytKiD6ZQfzyYJptANsQaTtfxoGY
         Is9MLcYDblAc61eQ0KsUJQiVbTNuHsRwws181bqSyztlnW33WgzMvtv2MQV6JskbK/sY
         0BQJ/6ER9nR01hjOPZabxQtVGCAbFUE6PXF3iOpJ1SXU4Sni7xj68OpxepEhxQd9Eo8/
         mg9hOCCNkcQlFmy8pjkleLQy7cBEYVqfsxrFUkzOf2KStLfRrW87Lr+j7WL4w+tgDWsH
         wXDLEAFetICi1pKalnayR3gbTGmWA66Bro4QZgZUsUQ5GKEhvu3zNTPpcjSsr8LcWeDD
         Fvuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pQuXvzWN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LHDaqTT6HBaaK83PH47R0+Ob0NXB7t6yrchBJHoHGEA=;
        b=MVY8Dzvxvz5h0k2CqMKipS4eET5uJSnf6lKyEv+7TXsLNSOpEEb6eF6uVl/PhRT6dM
         zxu2ZyKVnXZYR9VC5bglQcx33+Uyuc3/aJaWejxbVe0FPomlwxrbNhLWnIH4VYlzBZQT
         Rj087pWYFuGFherFUMAYCGqR+mGUatOcAM6hSLVXChn/b8UDmHjhmIE0EGtBVRzx3IAR
         82/Sy+D/ZW2BuFTHRAhBHwNMwHxvy/jx6/Nc/SlQe6pzAfclcqVwg+0tkeMXVrTfE2fK
         e4nGtUtsCVVKpPNsiAQvbKra1apesqj12vWZU3zR+rgp9VKH0YL9d408YzJD3XoOS1EW
         jTQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LHDaqTT6HBaaK83PH47R0+Ob0NXB7t6yrchBJHoHGEA=;
        b=QbWN5RTdVpRkdGdemU9WOEZBBxAhU/6u7RwM4XkixdG+VTAHv4BBYHRalkd/eV69ma
         swmGto5hmHhzUStdWbodevcXBMWZIXG4GMEMjGvN3k/ect20CyqZybZmRJFxJ1fknc+z
         SHkCcSJhe38UaeJlK0rez2NEhOSRLeEblnXRtV5Bdn1EZR3kuedG9aCqSuXRCBwItNM0
         rbxNbdT0z6HOO17TIYJz1Je8zvmtCwkQHgwzAQ8vng0BWsOLQGe+3m+Q3NB6xZCQBV3h
         QfKEgPtK6Zr4xE02Zbk8PBaG7eRBv1/MkFqLgczrjXW9rBzLDvGRrJ7mpnMKcw0uLMmR
         rZ4w==
X-Gm-Message-State: AOAM530+VKxsSi4hsspMBIkmuHZiJFcEVvPWGEzKiccKIXiylzfOZauN
	gJH1o3NKSNdvhuYXxV1XJA4=
X-Google-Smtp-Source: ABdhPJy2JjXuoZbKIoNUDhJNIuGZmEW2IsU3tDlgxf3AezqaU7pUjdQweQF8HvES5LnQCrO+FQfhqg==
X-Received: by 2002:a7b:c399:: with SMTP id s25mr5649521wmj.124.1615426229472;
        Wed, 10 Mar 2021 17:30:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c763:: with SMTP id x3ls1980790wmk.1.canary-gmail; Wed,
 10 Mar 2021 17:30:28 -0800 (PST)
X-Received: by 2002:a1c:a5c7:: with SMTP id o190mr5902900wme.172.1615426228653;
        Wed, 10 Mar 2021 17:30:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615426228; cv=none;
        d=google.com; s=arc-20160816;
        b=UqJcFC9a5TT44XXwE0CuOk1R5GkMZpSA08APSaSIFlAPK/D6DIpitkZFI6PncpB1Av
         RExW5UrazTKDoBeNquJYZ+jy7scRtSPJZ8+H0MYISyPmvlwdHr7kNRwLJR+AokzylQBS
         KIYRmbGxjDYZM/EofMwupb56JBymO8AotheP4xQdaS2q27M5FSp0fB2tgL7vxtOZl0jS
         38Ct3t5z/voeei63L75UzZCUgotywq0S96v06cWhZ3OFLSnwXSItXnguBkHTTXp6J9An
         exrGV39vAhCTSymTwnjwOdVqr6LB5bA2QziXwL3MsCol5qOEjlCZrhELQvV+oheqlEp4
         qXrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rjmW9Uac0/2GrP31pLOWn3QA56y7+9ATmhFYXpW5mMY=;
        b=UxvOdKhKqQzeLA353R6QtTjafijpxfg5N0efUXbo4akAWj9mcUY61Uo82Yp5O3gk7y
         EFbs6NCQxbLacFsTFOCuRGnmrIbKhgrnzyqF6yUnZjMkoi8XfyMsfGhQ72fQeXWe24pV
         Fe9h/3fUVBgH+6fDhZVZ2EyQO/toXahyQ3gmBiKDHwD96FNLCcQ015Bnl89rxlYPfk+u
         YYPO3c0nVHQJkI7g6rRyAXIDlmNqSEU6/d8pS2gmVDNkmMT/bm18woEceyJ57cl/1864
         si9ASLdjAEebACMQDxTyn++i3TtcYpWmx7hwJ3tHRslx7O7gtXRXyPCe/CPV4rmK5Q46
         ln8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pQuXvzWN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id t9si51567wmj.2.2021.03.10.17.30.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 17:30:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id k12so218105ljg.9
        for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 17:30:28 -0800 (PST)
X-Received: by 2002:a2e:7d03:: with SMTP id y3mr3466050ljc.0.1615426227893;
 Wed, 10 Mar 2021 17:30:27 -0800 (PST)
MIME-Version: 1.0
References: <20210311005418.2207250-1-nathan@kernel.org>
In-Reply-To: <20210311005418.2207250-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 10 Mar 2021 17:30:17 -0800
Message-ID: <CAKwvOd=Ezmh7iNxnAncZFkqUj3SY57Y=QzAwC5nXF0r26gKu5A@mail.gmail.com>
Subject: Re: [PATCH] ARM: Make UNWINDER_ARM depend on ld.bfd or ld.lld 11.0.0+
To: Nathan Chancellor <nathan@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pQuXvzWN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Wed, Mar 10, 2021 at 4:54 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> When linking aspeed_g5_defconfig with ld.lld 10.0.1, the following error
> occurs:
>
> ld.lld: error: .tmp_vmlinux.kallsyms1:(.ARM.exidx+0x34D98): relocation
> R_ARM_PREL31 out of range: 2135538592 is not in [-1073741824,
> 1073741823]
>
> This was resolved in ld.lld 11.0.0 but the minimum supported version of
> ld.lld for the kernel is 10.0.1. Prevent CONFIG_UNWINDER_ARM from being
> selected in this case so that the problematic sections cannot be
> created.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/732
> Link: https://github.com/llvm/llvm-project/commit/48aebfc908ba7b9372aaa478a9c200789491096e
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch.  We discussed at the kernelCI meeting yesterday
and the clangbuiltlinux meeting today continuing coverage for kernel
builds with clang-10, so this is still worthwhile IMO at least for
randconfig testing not to select known broken configs when using older
tools. We can rip it out once we bump the minimum supported version of
clang.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/arm/Kconfig.debug | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
> index 9e0b5e7f12af..64c1f8a46ab5 100644
> --- a/arch/arm/Kconfig.debug
> +++ b/arch/arm/Kconfig.debug
> @@ -66,6 +66,8 @@ config UNWINDER_FRAME_POINTER
>  config UNWINDER_ARM
>         bool "ARM EABI stack unwinder"
>         depends on AEABI && !FUNCTION_GRAPH_TRACER
> +       # https://github.com/ClangBuiltLinux/linux/issues/732
> +       depends on !LD_IS_LLD || LLD_VERSION >= 110000
>         select ARM_UNWIND
>         help
>           This option enables stack unwinding support in the kernel
>
> base-commit: a38fd8748464831584a19438cbb3082b5a2dab15
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DEzmh7iNxnAncZFkqUj3SY57Y%3DQzAwC5nXF0r26gKu5A%40mail.gmail.com.
