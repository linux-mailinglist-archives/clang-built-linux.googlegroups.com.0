Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK6N5HZQKGQELDZVYVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D25191A64
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 20:59:41 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id m25sf2349166pgl.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 12:59:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585079979; cv=pass;
        d=google.com; s=arc-20160816;
        b=gOcq2AhBp+Gg//hnV+wK4Ibj6xM661MRRW+yCR2KnAGz076oUaDhzdzaYAbU3qgc8j
         aRjZQnI8+UNymO3BCirRVkiN+ygjuS27AMDV9vXguAWtjWYOWGrfkwjIqkKtzXHaxOYK
         KUw56UihaHhkdKhzA93F4s4tckIRuJrS2UxXnBrO8cajFOcLkD53X9KqaLYZvE1Zh39H
         e62f1GgVW9fe7scDLqPWeYwBrvtPsSMzIUeDrkkbvr0nRzvK6vxfyLJsUD8hCfI4s8dD
         1EUiAt3Y6QAsZbs2HdNuExQ9Uq5AmH4CAmC/JjT8XPM3TWh8mX3QGGpNdENYEgCg6FxV
         ZLig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vNfAl7usVosWQ9EY5x58bZ4JG1oO6fkPaJ48iKWeT4k=;
        b=bKDp3UA9HfXoYuqcruNXEYflSppgOODBE42xudAwY9zquwS6wkhu+viuy4fCUPv/h8
         LXss960Wix/zfk6RbxSlMmA9o1owQYqr18fGwN83FZ4GYFQ9r/1JmPr4mrqPIG5/6oaB
         ZpKndEs4sDNLDPmGpXITOGrSlh7JSUAlnZnL1rBO6UoPisnb2dOnWZwC8J34yYMXQEFH
         S7Rv1fuTAM2eo787mo3JC5g6nzQxP3mDF7QZRyZ/XVpnFrlRRvgVdvjP2tCnqBE1STEF
         6bqy3+7Lsj5J2zLfN0UItiQ+cw16Uy3i35Oco8oD8zknNaTaPJc2ogXvvAk6AjBdKakk
         RkjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eifOct9w;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vNfAl7usVosWQ9EY5x58bZ4JG1oO6fkPaJ48iKWeT4k=;
        b=OkkOIJTcRKBaNFpd2DKPWMmxPdcuL96KBkjCkJpkd/x8CfcCKz/ek9C6CZyTf2TE1F
         hkV3uCKtwxK4uNaK7AhEFTWny5ztdu5nFkyjCFyp6pqIFS1sVSkbP9tSQ4bZQFpOEFNN
         +OOjvZWIgVgpwVfSDv1H4dvT8cp7Olx0VxOYDuTlElYOPxr8vsj04BN8GLKruPzoEDHz
         DBKuUs257dH81q56EEzHoN7qs6HqDVpxkWkG0295+XvhJ0aWcjU8QVXmQ0K6a2qTFoS6
         uM0X9C/SsBkgs6TyONdSisansr/THB8MkcrDXO2cnooY+MgsHAAVJaXHBCie7mVQClJt
         0K9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vNfAl7usVosWQ9EY5x58bZ4JG1oO6fkPaJ48iKWeT4k=;
        b=acxQ+ki+Et8YAfD6md+f0H/ZRptAVQv8vOeouc2JhJWY7hSEphINKE32Wi1kSg5u8S
         isgUh+36O6XB6epx4nDVSyz4s9s90oxDub1hHkej0mBUrGmVMjeYfAP1ZkuAS2BIy6pr
         jRBLJQdI+aOH/wGfQ1fQsbPjFnAup64aJ7YB01WjrYYcNeNa02mD5ArnFa/8m1I2PAxi
         umGXpSVR9jCF9wChsZTBmUat4ufxm5fhc9Tv6+j3f78SNlSj5xo21lEfOCOl/idsQmHd
         IwwkejfZ6gEZdkp48BPrJgoxjbrt+WpARcw+dXEWcu6KFwZOPvxfYrkFEhcLdswcpQtz
         mJWQ==
X-Gm-Message-State: ANhLgQ1JVtkwVDpdtPPRualMYOiMnmr8oRm7yXk4gfXiVvmd6pJaAi1U
	mop0g9ritHIyrH/4AuijGZw=
X-Google-Smtp-Source: ADFU+vuwElRX42LQe1gFnpYknPyV3ccsSpt+6sLALCrSr/cxu+wg4JlnZsWIRmJFQtNv+NbobGSPug==
X-Received: by 2002:a63:89c1:: with SMTP id v184mr30283288pgd.333.1585079979786;
        Tue, 24 Mar 2020 12:59:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:982:: with SMTP id 2ls2644139pjo.1.gmail; Tue, 24
 Mar 2020 12:59:39 -0700 (PDT)
X-Received: by 2002:a17:902:8b87:: with SMTP id ay7mr28928843plb.2.1585079979285;
        Tue, 24 Mar 2020 12:59:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585079979; cv=none;
        d=google.com; s=arc-20160816;
        b=CzdrX2rMcKCAVGvDvRVFLmFsIivEciGvsY9a+IYTdaXQc4JXoNRJ3DguI0oYvIdiFd
         Z2d0NuWl8Anw7C3/mEMvx5+0miSgMQ4xD8zhc3D6gRDVRL4NyESyE6gTEguKjU3UVNGj
         oqS3bA98NjQ/5vbgHdiw+MfKCTlYwLVO0BeNQ/XsALe3KxDF9pA+Vl/tL3C3nqU9rAXO
         7+rO/X3im9iOzwzJHGTH/2gzx5XNipS2hhU0SAtzTcE2D2wB2dq36XyG5qq1268b7ggl
         dDSBCS/e0AEB0eYzvgq6ygw59Lc2iacuw4/idejP9BwmTE3MvqRi6mEVPvIWDYWTQe0b
         xvqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CFODQb+bESW9heVsGiUcWplkZSwbJ9/VQmtkqJlkYxk=;
        b=n4aFgaB4sMeM48BrYXN9IjjumqHEso7aJrzMGRQjLY9wqwV4vVjG6Ja16WoxESYE5w
         Vo2NCYCy15Z20mmtCXxjPg+3+AA7Tov+XE7+muM7viTDemW5ofqPdSDRDtsRQHw02u1s
         xOMkSKLn9ER4aW+a+NOWCzesUAXeCwCYVGrVFol+nGOH/AOREZ2/+5WmFiUTsvz391Iz
         fupnPeOue1keYiOWsdhwwNrJsWv0xbh+fpA4HEEwPsIcSRQNl5ex4tSQpaRjU0SfPh+6
         XkfwtaFzg5Qe9/+Z8h7908edDMpPZnBbUcF9cb+CumpXMV8UWfAFB7lQS9dWrNwlxMkR
         aYEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eifOct9w;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 185si809718pgh.3.2020.03.24.12.59.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 12:59:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id j1so7175767pfe.0
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 12:59:39 -0700 (PDT)
X-Received: by 2002:a63:4453:: with SMTP id t19mr27492096pgk.381.1585079978625;
 Tue, 24 Mar 2020 12:59:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200324164005.8259-1-masahiroy@kernel.org>
In-Reply-To: <20200324164005.8259-1-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Mar 2020 12:59:28 -0700
Message-ID: <CAKwvOd=YJeEBvHJiOgoUjfuDFY9sa8ge061eOafzccbECkQhrA@mail.gmail.com>
Subject: Re: [PATCH] MIPS: mark some functions as weak to avoid conflict with
 Octeon ones
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-mips@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, Alexander Lobakin <alobakin@dlink.ru>, 
	Paul Burton <paulburton@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eifOct9w;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Tue, Mar 24, 2020 at 9:40 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> MIPS provides multiple definitions for the following functions:
>
>   fw_init_cmdline
>   __delay
>   __udelay
>   __ndelay
>   memmove
>   __rmemcpy
>   memcpy
>   __copy_user
>
> The generic ones are defined in lib-y objects, which are overridden by
> the Octeon ones when CONFIG_CAVIUM_OCTEON_SOC is enabled.
>
> The use of EXPORT_SYMBOL in static libraries potentially causes a
> problem for the llvm linker [1]. So, I want to forcibly link lib-y
> objects to vmlinux when CONFIG_MODULES=y.
>
> As a groundwork, we must fix multiple definitions that have been
> hidden by lib-y.
>
> In this case, the generic implementations in arch/mips/lib/ are
> weaker than the ones in arch/mips/cavium-octen/, so annotating __weak
> is a straight-forward solution.
>
> I also removed EXPORT_SYMBOL from the Octeon files to avoid the
> 'exported twice' warnings from modpost.
>
> [1]: https://github.com/ClangBuiltLinux/linux/issues/515
>
> Reported-by: kbuild test robot <lkp@intel.com>
> Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
>  arch/mips/cavium-octeon/csrc-octeon.c   | 4 ----
>  arch/mips/cavium-octeon/octeon-memcpy.S | 3 ---
>  arch/mips/fw/lib/cmdline.c              | 2 +-
>  arch/mips/lib/delay.c                   | 6 +++---
>  arch/mips/lib/memcpy.S                  | 5 +++++
>  5 files changed, 9 insertions(+), 11 deletions(-)
>
> diff --git a/arch/mips/cavium-octeon/csrc-octeon.c b/arch/mips/cavium-octeon/csrc-octeon.c
> index 124817609ce0..fdc28fb5eda4 100644
> --- a/arch/mips/cavium-octeon/csrc-octeon.c
> +++ b/arch/mips/cavium-octeon/csrc-octeon.c
> @@ -153,7 +153,6 @@ void __udelay(unsigned long us)
>         while (end > cur)
>                 cur = read_c0_cvmcount();
>  }
> -EXPORT_SYMBOL(__udelay);
>
>  void __ndelay(unsigned long ns)
>  {
> @@ -167,7 +166,6 @@ void __ndelay(unsigned long ns)
>         while (end > cur)
>                 cur = read_c0_cvmcount();
>  }
> -EXPORT_SYMBOL(__ndelay);
>
>  void __delay(unsigned long loops)
>  {
> @@ -179,8 +177,6 @@ void __delay(unsigned long loops)
>         while (end > cur)
>                 cur = read_c0_cvmcount();
>  }
> -EXPORT_SYMBOL(__delay);
> -
>
>  /**
>   * octeon_io_clk_delay - wait for a given number of io clock cycles to pass.
> diff --git a/arch/mips/cavium-octeon/octeon-memcpy.S b/arch/mips/cavium-octeon/octeon-memcpy.S
> index 0a7c9834b81c..3eb8d1a72d7f 100644
> --- a/arch/mips/cavium-octeon/octeon-memcpy.S
> +++ b/arch/mips/cavium-octeon/octeon-memcpy.S
> @@ -147,11 +147,9 @@
>   */
>         .align  5
>  LEAF(memcpy)                                   /* a0=dst a1=src a2=len */
> -EXPORT_SYMBOL(memcpy)
>         move    v0, dst                         /* return value */
>  __memcpy:
>  FEXPORT(__copy_user)
> -EXPORT_SYMBOL(__copy_user)
>         /*
>          * Note: dst & src may be unaligned, len may be 0
>          * Temps
> @@ -438,7 +436,6 @@ s_exc:
>
>         .align  5
>  LEAF(memmove)
> -EXPORT_SYMBOL(memmove)
>         ADD     t0, a0, a2
>         ADD     t1, a1, a2
>         sltu    t0, a1, t0                      # dst + len <= src -> memcpy
> diff --git a/arch/mips/fw/lib/cmdline.c b/arch/mips/fw/lib/cmdline.c
> index 6ecda64ad184..e1f9a0c23005 100644
> --- a/arch/mips/fw/lib/cmdline.c
> +++ b/arch/mips/fw/lib/cmdline.c
> @@ -16,7 +16,7 @@ int fw_argc;
>  int *_fw_argv;
>  int *_fw_envp;
>
> -void __init fw_init_cmdline(void)
> +void __init __weak fw_init_cmdline(void)
>  {
>         int i;
>
> diff --git a/arch/mips/lib/delay.c b/arch/mips/lib/delay.c
> index 68c495ed71e3..ba0ae7da5ced 100644
> --- a/arch/mips/lib/delay.c
> +++ b/arch/mips/lib/delay.c
> @@ -24,7 +24,7 @@
>  #define GCC_DADDI_IMM_ASM() "r"
>  #endif
>
> -void __delay(unsigned long loops)
> +void __weak __delay(unsigned long loops)
>  {
>         __asm__ __volatile__ (
>         "       .set    noreorder                               \n"
> @@ -48,7 +48,7 @@ EXPORT_SYMBOL(__delay);
>   * a constant)
>   */
>
> -void __udelay(unsigned long us)
> +void __weak __udelay(unsigned long us)
>  {
>         unsigned int lpj = raw_current_cpu_data.udelay_val;
>
> @@ -56,7 +56,7 @@ void __udelay(unsigned long us)
>  }
>  EXPORT_SYMBOL(__udelay);
>
> -void __ndelay(unsigned long ns)
> +void __weak __ndelay(unsigned long ns)
>  {
>         unsigned int lpj = raw_current_cpu_data.udelay_val;
>
> diff --git a/arch/mips/lib/memcpy.S b/arch/mips/lib/memcpy.S
> index f7994d936505..f2f58326b927 100644
> --- a/arch/mips/lib/memcpy.S
> +++ b/arch/mips/lib/memcpy.S
> @@ -598,6 +598,9 @@ SEXC(1)
>          nop
>         .endm
>
> +       .weak memmove
> +       .weak __rmemcpy
> +
>         .align  5
>  LEAF(memmove)
>  EXPORT_SYMBOL(memmove)
> @@ -655,6 +658,8 @@ LEAF(__rmemcpy)                                     /* a0=dst a1=src a2=len */
>   * the number of uncopied bytes.
>   * memcpy sets v0 to dst.
>   */
> +       .weak memcpy
> +       .weak __copy_user

I think it would be better to use SYM_FUNC_START_WEAK from
include/linux/linkage.h rather than LEAF, but it looks like LEAF uses
a different value for ALIGN, and sets up call frame information CFI.
So in that case, no complaints.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for the patch!


>         .align  5
>  LEAF(memcpy)                                   /* a0=dst a1=src a2=len */
>  EXPORT_SYMBOL(memcpy)
> --
> 2.17.1
>
> --
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DYJeEBvHJiOgoUjfuDFY9sa8ge061eOafzccbECkQhrA%40mail.gmail.com.
