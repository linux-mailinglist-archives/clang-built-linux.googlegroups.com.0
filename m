Return-Path: <clang-built-linux+bncBDYNJBOFRECBBQFT5LWQKGQEXLAY4QI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 72388EAB7E
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:22:25 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id i10sf2857383wrp.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 01:22:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572510145; cv=pass;
        d=google.com; s=arc-20160816;
        b=n8klOQY8JgdGxSNj16Ga1wceT3MWjrXsk6WjxEgRJmHkhk+G61qnflv9i+mLOxbvKp
         RZ1S7qVmZWVNdFHHhy2tEsZQXa74GEJOmvcgWsEHIQ0uHT1SrMFzJZiKhpW0YcYRvws3
         PnhgO9+6Ybxat+hQ05gqKtoM6sLLh/6jK3JPDTQbQ40jncWW1QYT4gTgoRVQr04f84Y/
         iYjyChTnw42nkZ/OF6sgKjqou879/3dA+65Pa5SjHd/KgyOx3XP9R2GoSJlxqWQDoRA7
         ZqQka2x7UzEH4K/Gg4Lfzu/JPAe+3DHTITq+OlW4cp39Xvk5qGY4015vGMX8eDPnaCTD
         l/iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ARCxJKFmHXlSbw/VtBia4fv4/KPYW/05JmAMLuliS1s=;
        b=P/PgGpDgi6AeM9uup0/T2UhSAxB69vTETHkb5v8fmF04gJX8mNl/1+GzkgWvShA8L4
         caJlqAsCGpfhXRNdYOKGVstmuva602yC1OqVuujvM2ivt9RwaQjflm8oCCwxvrX2kpII
         hgC3Igapteb5Vqy0/kCgGTMCMrge5Unf7BxPF6y4rZyPBiOs+Ux40rDWycpObRc4AB4p
         tceO0v7gIixuju3V/zRnqRclc1bsFprJcbN4oCj7GV7BEgKJTfgmKKT51ovTgLAl3fsT
         fPKxxNlcoZOREvRg5Znifto8JO4/mnDbJRuB4j8cOFchoQE0q3zrdDoed1fxtzb6kLsp
         34sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="m/RX5686";
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ARCxJKFmHXlSbw/VtBia4fv4/KPYW/05JmAMLuliS1s=;
        b=dz4qqlEyHjZOFmcpjymRyxKdW9rc+zXqNYAWBr7YB6K1Dgf0fVQiv4cUuwwNtxmIQO
         KewBu/iEQx6K8DvDNm7ycuK2yRld1NwqOPswZ9nSGROf9wPPXcUb+JmjHOafmXGfI1dT
         /t6w/xYjBmB+CqNS88ElesKTiwRSY7P8+FqO6VCLuqja66FvekfUYQdrp0c+HUxg5pVi
         wIbyR48dOcK2UkqAPPS0q/7mQVb2MWf3Zi/1J1AeBD731ovSRDssW5WvFChaIxiEsrZl
         LQJjDoFLeLY75IbEjjq1L4pOPZada3kh39VCY2AftHSVkALX6qZDcSMj/1XjW1aMbK/7
         bjAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ARCxJKFmHXlSbw/VtBia4fv4/KPYW/05JmAMLuliS1s=;
        b=p5qht0ADxszqlV1RgeYEkAnTuCdx2mfGedWoA+AJld6i6qIJ/VcUfEQmrv+6wRA2Ir
         weYI5qqClbOv8IFSIjqPRj9nij2jUJb3udDEm6DLk0cnNfhvQGF0tMif8iUvdze6Ipl3
         7IsDClz216OQmnLenBIijArBn5Bk3Ql70cqsV5zyuEzTe5gW2HkkpcCila4lemVldZe4
         7wG7otpq8onQ2oV0PxlFZGb3D0nHWGcs4AnF2apqVF2gJxitrpgY5P5VvpwcN+f6Bvvk
         uQcdbfkCUKQA/var5IQw7NVuFyA63HhCXfRsHT21RsS195Ty4WAF10G9Fi7E4dME0xBB
         MM+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXmiSoA+FASwtChdlzOd3BPKzQOUik+98jgCtlwTZug9IzOmOth
	fHSPxM8p0KGTCKV5R1j/r+A=
X-Google-Smtp-Source: APXvYqyA6wq+OrUlFYPFFrLP0leh0LRnksjVAI4ovGxZaWBIesDQTl9NfB5K+Cly4STf/b8/biZBcQ==
X-Received: by 2002:a5d:444b:: with SMTP id x11mr4241062wrr.207.1572510144636;
        Thu, 31 Oct 2019 01:22:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e74f:: with SMTP id c15ls1867266wrn.5.gmail; Thu, 31 Oct
 2019 01:22:24 -0700 (PDT)
X-Received: by 2002:adf:f192:: with SMTP id h18mr4488361wro.148.1572510144135;
        Thu, 31 Oct 2019 01:22:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572510144; cv=none;
        d=google.com; s=arc-20160816;
        b=0q+cVYvrB2jSAs6sO1rH5NmWZ3PLen7E9wGFN1V8jJNgcZABFGD+158Bd0n9vfxvM5
         4Dshdi1bj9GKhQy4v2Qzh4KKTFsxpzpVyQoapvM7foMo4uoJmd806siE/FI2ZuQmGKCJ
         AkslBYEOJvdFlJ1Nso7N7haTaJ+ScjXfyMvLGE0yx1nOiP8WFRGlOey2gXEj5zMeSlUs
         JjtkLwQ/9n8Xf3IDSLgOvYqtBq5m0ZaWg2V79zG1gFhgFRH2OAqqrFxgZw0DP1W94dMp
         Sjx0hfoUdU+ebikXs8bUL2M6cAH5Kktvfo7Ad44FYXRt16lSH8EbtyKuR/sTTMSRYBBj
         UjeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NHloGbr4jAFWLdAnk+2+DFUSZWOZKFQGAFzAWZrNGgM=;
        b=E1HPIqauEfMpc76FIdQuPClvr+vlKUBxxtmDupVDexD6g0hPPW30iGva3LKNnCk20o
         GHEmbyfTGvL3tDpbX+ZmlipLv41y6kMIIcd0PgzwKP5GPh7y3B0/pqCziAE2Sn7HKWrz
         MTGWGPT1dAVYzfZAH9t8x6VhTUZWWrJxNbP0rG5XjUZrFaMFCJOFYlksUxivxTkSURS6
         zw7nWu3O9iDLbAZq4/cmpZNfkrcngfd1AFBMMW9JCJzNTeWDJ0O9BLXa/TKDPLqgrhq6
         ehIErdZ7ZLUSFg2OBjI96sWd/GnNmYFrXt5ewh3jBMzE83qq68KtNQvb4xILknLtPz+6
         Es0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="m/RX5686";
       spf=pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id b66si34868wme.2.2019.10.31.01.22.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 01:22:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ard.biesheuvel@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id q130so4890503wme.2
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 01:22:24 -0700 (PDT)
X-Received: by 2002:a1c:3d08:: with SMTP id k8mr3617331wma.119.1572510143438;
 Thu, 31 Oct 2019 01:22:23 -0700 (PDT)
MIME-Version: 1.0
References: <20191030174429.248697-1-ndesaulniers@google.com>
In-Reply-To: <20191030174429.248697-1-ndesaulniers@google.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 31 Oct 2019 09:22:11 +0100
Message-ID: <CAKv+Gu8POt2gYO6fagnKr-EgsuxMEo9LwVXo1pgcJKAG3JG+Pw@mail.gmail.com>
Subject: Re: [PATCH] arm: replace Sun/Solaris style flag on section directive
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Fangrui Song <maskray@google.com>, 
	Jian Cai <jiancai@google.com>, Peter Smith <peter.smith@linaro.org>, 
	Hans Ulli Kroll <ulli.kroll@googlemail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Nicolas Pitre <nico@fluxnic.net>, Stefan Agner <stefan@agner.ch>, Enrico Weigelt <info@metux.net>, 
	Thomas Gleixner <tglx@linutronix.de>, Roy Franz <rfranz@marvell.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Allison Randal <allison@lohutok.net>, 
	Richard Fontana <rfontana@redhat.com>, Kate Stewart <kstewart@linuxfoundation.org>, 
	Dave Martin <Dave.Martin@arm.com>, Sonny Rao <sonnyrao@chromium.org>, 
	Doug Anderson <armlinux@m.disordat.com>, Vladimir Murzin <vladimir.murzin@arm.com>, 
	afzal mohammed <afzal.mohd.ma@gmail.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ard.biesheuvel@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="m/RX5686";       spf=pass
 (google.com: domain of ard.biesheuvel@linaro.org designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ard.biesheuvel@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, 30 Oct 2019 at 18:48, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> It looks like a section directive was using "Solaris style" to declare
> the section flags. Replace this with the GNU style so that Clang's
> integrated assembler can assemble this directive.
>
> The modified instances were identified via:
> $ ag \\.section | grep \#
>
> Link: https://ftp.gnu.org/old-gnu/Manuals/gas-2.9.1/html_chapter/as_7.html#SEC119
> Link: https://github.com/ClangBuiltLinux/linux/issues/744
> Link: https://bugs.llvm.org/show_bug.cgi?id=43759
> Link: https://reviews.llvm.org/D69296
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Jian Cai <jiancai@google.com>
> Suggested-by: Peter Smith <peter.smith@linaro.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Looks correct to me

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>  arch/arm/boot/bootp/init.S            | 2 +-
>  arch/arm/boot/compressed/big-endian.S | 2 +-
>  arch/arm/boot/compressed/head.S       | 2 +-
>  arch/arm/boot/compressed/piggy.S      | 2 +-
>  arch/arm/mm/proc-arm1020.S            | 2 +-
>  arch/arm/mm/proc-arm1020e.S           | 2 +-
>  arch/arm/mm/proc-arm1022.S            | 2 +-
>  arch/arm/mm/proc-arm1026.S            | 2 +-
>  arch/arm/mm/proc-arm720.S             | 2 +-
>  arch/arm/mm/proc-arm740.S             | 2 +-
>  arch/arm/mm/proc-arm7tdmi.S           | 2 +-
>  arch/arm/mm/proc-arm920.S             | 2 +-
>  arch/arm/mm/proc-arm922.S             | 2 +-
>  arch/arm/mm/proc-arm925.S             | 2 +-
>  arch/arm/mm/proc-arm926.S             | 2 +-
>  arch/arm/mm/proc-arm940.S             | 2 +-
>  arch/arm/mm/proc-arm946.S             | 2 +-
>  arch/arm/mm/proc-arm9tdmi.S           | 2 +-
>  arch/arm/mm/proc-fa526.S              | 2 +-
>  arch/arm/mm/proc-feroceon.S           | 2 +-
>  arch/arm/mm/proc-mohawk.S             | 2 +-
>  arch/arm/mm/proc-sa110.S              | 2 +-
>  arch/arm/mm/proc-sa1100.S             | 2 +-
>  arch/arm/mm/proc-v6.S                 | 2 +-
>  arch/arm/mm/proc-v7.S                 | 2 +-
>  arch/arm/mm/proc-v7m.S                | 4 ++--
>  arch/arm/mm/proc-xsc3.S               | 2 +-
>  arch/arm/mm/proc-xscale.S             | 2 +-
>  28 files changed, 29 insertions(+), 29 deletions(-)
>
> diff --git a/arch/arm/boot/bootp/init.S b/arch/arm/boot/bootp/init.S
> index 5c476bd2b4ce..b562da2f7040 100644
> --- a/arch/arm/boot/bootp/init.S
> +++ b/arch/arm/boot/bootp/init.S
> @@ -13,7 +13,7 @@
>   *  size immediately following the kernel, we could build this into
>   *  a binary blob, and concatenate the zImage using the cat command.
>   */
> -               .section .start,#alloc,#execinstr
> +               .section .start, "ax"
>                 .type   _start, #function
>                 .globl  _start
>
> diff --git a/arch/arm/boot/compressed/big-endian.S b/arch/arm/boot/compressed/big-endian.S
> index 88e2a88d324b..0e092c36da2f 100644
> --- a/arch/arm/boot/compressed/big-endian.S
> +++ b/arch/arm/boot/compressed/big-endian.S
> @@ -6,7 +6,7 @@
>   *  Author: Nicolas Pitre
>   */
>
> -       .section ".start", #alloc, #execinstr
> +       .section ".start", "ax"
>
>         mrc     p15, 0, r0, c1, c0, 0   @ read control reg
>         orr     r0, r0, #(1 << 7)       @ enable big endian mode
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index 93dffed0ac6e..15ecad944847 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -140,7 +140,7 @@
>  #endif
>                 .endm
>
> -               .section ".start", #alloc, #execinstr
> +               .section ".start", "ax"
>  /*
>   * sort out different calling conventions
>   */
> diff --git a/arch/arm/boot/compressed/piggy.S b/arch/arm/boot/compressed/piggy.S
> index 0284f84dcf38..27577644ee72 100644
> --- a/arch/arm/boot/compressed/piggy.S
> +++ b/arch/arm/boot/compressed/piggy.S
> @@ -1,5 +1,5 @@
>  /* SPDX-License-Identifier: GPL-2.0 */
> -       .section .piggydata,#alloc
> +       .section .piggydata, "a"
>         .globl  input_data
>  input_data:
>         .incbin "arch/arm/boot/compressed/piggy_data"
> diff --git a/arch/arm/mm/proc-arm1020.S b/arch/arm/mm/proc-arm1020.S
> index 4fa5371bc662..2785da387c91 100644
> --- a/arch/arm/mm/proc-arm1020.S
> +++ b/arch/arm/mm/proc-arm1020.S
> @@ -491,7 +491,7 @@ cpu_arm1020_name:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm1020_proc_info,#object
>  __arm1020_proc_info:
> diff --git a/arch/arm/mm/proc-arm1020e.S b/arch/arm/mm/proc-arm1020e.S
> index 5d8a8339e09a..e9ea237ed785 100644
> --- a/arch/arm/mm/proc-arm1020e.S
> +++ b/arch/arm/mm/proc-arm1020e.S
> @@ -449,7 +449,7 @@ arm1020e_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm1020e_proc_info,#object
>  __arm1020e_proc_info:
> diff --git a/arch/arm/mm/proc-arm1022.S b/arch/arm/mm/proc-arm1022.S
> index b3dd95c345e4..920c279e7879 100644
> --- a/arch/arm/mm/proc-arm1022.S
> +++ b/arch/arm/mm/proc-arm1022.S
> @@ -443,7 +443,7 @@ arm1022_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm1022_proc_info,#object
>  __arm1022_proc_info:
> diff --git a/arch/arm/mm/proc-arm1026.S b/arch/arm/mm/proc-arm1026.S
> index ac5afde12f35..10e21012380b 100644
> --- a/arch/arm/mm/proc-arm1026.S
> +++ b/arch/arm/mm/proc-arm1026.S
> @@ -437,7 +437,7 @@ arm1026_crval:
>         string  cpu_arm1026_name, "ARM1026EJ-S"
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm1026_proc_info,#object
>  __arm1026_proc_info:
> diff --git a/arch/arm/mm/proc-arm720.S b/arch/arm/mm/proc-arm720.S
> index c99d24363f32..39361e196d61 100644
> --- a/arch/arm/mm/proc-arm720.S
> +++ b/arch/arm/mm/proc-arm720.S
> @@ -172,7 +172,7 @@ arm720_crval:
>   * See <asm/procinfo.h> for a definition of this structure.
>   */
>
> -               .section ".proc.info.init", #alloc
> +               .section ".proc.info.init", "a"
>
>  .macro arm720_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cpu_flush:req
>                 .type   __\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-arm740.S b/arch/arm/mm/proc-arm740.S
> index 1b4a3838393f..1a94bbf6e53f 100644
> --- a/arch/arm/mm/proc-arm740.S
> +++ b/arch/arm/mm/proc-arm740.S
> @@ -128,7 +128,7 @@ __arm740_setup:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>         .type   __arm740_proc_info,#object
>  __arm740_proc_info:
>         .long   0x41807400
> diff --git a/arch/arm/mm/proc-arm7tdmi.S b/arch/arm/mm/proc-arm7tdmi.S
> index 17a4687065c7..52b66cf0259e 100644
> --- a/arch/arm/mm/proc-arm7tdmi.S
> +++ b/arch/arm/mm/proc-arm7tdmi.S
> @@ -72,7 +72,7 @@ __arm7tdmi_setup:
>
>                 .align
>
> -               .section ".proc.info.init", #alloc
> +               .section ".proc.info.init", "a"
>
>  .macro arm7tdmi_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, \
>         extra_hwcaps=0
> diff --git a/arch/arm/mm/proc-arm920.S b/arch/arm/mm/proc-arm920.S
> index 298c76b47749..31ac8acc34dc 100644
> --- a/arch/arm/mm/proc-arm920.S
> +++ b/arch/arm/mm/proc-arm920.S
> @@ -434,7 +434,7 @@ arm920_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm920_proc_info,#object
>  __arm920_proc_info:
> diff --git a/arch/arm/mm/proc-arm922.S b/arch/arm/mm/proc-arm922.S
> index 824be3a0bc23..ca2c7ca8af21 100644
> --- a/arch/arm/mm/proc-arm922.S
> +++ b/arch/arm/mm/proc-arm922.S
> @@ -412,7 +412,7 @@ arm922_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm922_proc_info,#object
>  __arm922_proc_info:
> diff --git a/arch/arm/mm/proc-arm925.S b/arch/arm/mm/proc-arm925.S
> index d40cff8f102c..a381a0c9f109 100644
> --- a/arch/arm/mm/proc-arm925.S
> +++ b/arch/arm/mm/proc-arm925.S
> @@ -477,7 +477,7 @@ arm925_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>  .macro arm925_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache
>         .type   __\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-arm926.S b/arch/arm/mm/proc-arm926.S
> index f3cd08f353f0..3188ab2bac61 100644
> --- a/arch/arm/mm/proc-arm926.S
> +++ b/arch/arm/mm/proc-arm926.S
> @@ -460,7 +460,7 @@ arm926_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm926_proc_info,#object
>  __arm926_proc_info:
> diff --git a/arch/arm/mm/proc-arm940.S b/arch/arm/mm/proc-arm940.S
> index 1c26d991386d..4b8a00220cc9 100644
> --- a/arch/arm/mm/proc-arm940.S
> +++ b/arch/arm/mm/proc-arm940.S
> @@ -340,7 +340,7 @@ __arm940_setup:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __arm940_proc_info,#object
>  __arm940_proc_info:
> diff --git a/arch/arm/mm/proc-arm946.S b/arch/arm/mm/proc-arm946.S
> index 2dc1c75a4fd4..555becf9c758 100644
> --- a/arch/arm/mm/proc-arm946.S
> +++ b/arch/arm/mm/proc-arm946.S
> @@ -395,7 +395,7 @@ __arm946_setup:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>         .type   __arm946_proc_info,#object
>  __arm946_proc_info:
>         .long   0x41009460
> diff --git a/arch/arm/mm/proc-arm9tdmi.S b/arch/arm/mm/proc-arm9tdmi.S
> index 913c06e590af..ef517530130b 100644
> --- a/arch/arm/mm/proc-arm9tdmi.S
> +++ b/arch/arm/mm/proc-arm9tdmi.S
> @@ -66,7 +66,7 @@ __arm9tdmi_setup:
>
>                 .align
>
> -               .section ".proc.info.init", #alloc
> +               .section ".proc.info.init", "a"
>
>  .macro arm9tdmi_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req
>                 .type   __\name\()_proc_info, #object
> diff --git a/arch/arm/mm/proc-fa526.S b/arch/arm/mm/proc-fa526.S
> index 8120b6f4dbb8..dddf833fe000 100644
> --- a/arch/arm/mm/proc-fa526.S
> +++ b/arch/arm/mm/proc-fa526.S
> @@ -185,7 +185,7 @@ fa526_cr1_set:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __fa526_proc_info,#object
>  __fa526_proc_info:
> diff --git a/arch/arm/mm/proc-feroceon.S b/arch/arm/mm/proc-feroceon.S
> index bb6dc34d42a3..b12b76bc8d30 100644
> --- a/arch/arm/mm/proc-feroceon.S
> +++ b/arch/arm/mm/proc-feroceon.S
> @@ -571,7 +571,7 @@ feroceon_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>  .macro feroceon_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache:req
>         .type   __\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-mohawk.S b/arch/arm/mm/proc-mohawk.S
> index f08308578885..d47d6c5cee63 100644
> --- a/arch/arm/mm/proc-mohawk.S
> +++ b/arch/arm/mm/proc-mohawk.S
> @@ -416,7 +416,7 @@ mohawk_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __88sv331x_proc_info,#object
>  __88sv331x_proc_info:
> diff --git a/arch/arm/mm/proc-sa110.S b/arch/arm/mm/proc-sa110.S
> index d5bc5d702563..baba503ba816 100644
> --- a/arch/arm/mm/proc-sa110.S
> +++ b/arch/arm/mm/proc-sa110.S
> @@ -196,7 +196,7 @@ sa110_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         .type   __sa110_proc_info,#object
>  __sa110_proc_info:
> diff --git a/arch/arm/mm/proc-sa1100.S b/arch/arm/mm/proc-sa1100.S
> index be7b611c76c7..75ebacc8e4e5 100644
> --- a/arch/arm/mm/proc-sa1100.S
> +++ b/arch/arm/mm/proc-sa1100.S
> @@ -239,7 +239,7 @@ sa1100_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>  .macro sa1100_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req
>         .type   __\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-v6.S b/arch/arm/mm/proc-v6.S
> index c1c85eb3484f..1dd0d5ca27da 100644
> --- a/arch/arm/mm/proc-v6.S
> +++ b/arch/arm/mm/proc-v6.S
> @@ -261,7 +261,7 @@ v6_crval:
>         string  cpu_elf_name, "v6"
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         /*
>          * Match any ARMv6 processor core.
> diff --git a/arch/arm/mm/proc-v7.S b/arch/arm/mm/proc-v7.S
> index c4e8006a1a8c..48e0ef6f0dcc 100644
> --- a/arch/arm/mm/proc-v7.S
> +++ b/arch/arm/mm/proc-v7.S
> @@ -644,7 +644,7 @@ __v7_setup_stack:
>         string  cpu_elf_name, "v7"
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>         /*
>          * Standard v7 proc info content
> diff --git a/arch/arm/mm/proc-v7m.S b/arch/arm/mm/proc-v7m.S
> index 1a49d503eafc..84459c1d31b8 100644
> --- a/arch/arm/mm/proc-v7m.S
> +++ b/arch/arm/mm/proc-v7m.S
> @@ -93,7 +93,7 @@ ENTRY(cpu_cm7_proc_fin)
>         ret     lr
>  ENDPROC(cpu_cm7_proc_fin)
>
> -       .section ".init.text", #alloc, #execinstr
> +       .section ".init.text", "ax"
>
>  __v7m_cm7_setup:
>         mov     r8, #(V7M_SCB_CCR_DC | V7M_SCB_CCR_IC| V7M_SCB_CCR_BP)
> @@ -177,7 +177,7 @@ ENDPROC(__v7m_setup)
>         string cpu_elf_name "v7m"
>         string cpu_v7m_name "ARMv7-M"
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>  .macro __v7m_proc name, initfunc, cache_fns = nop_cache_fns, hwcaps = 0,  proc_fns = v7m_processor_functions
>         .long   0                       /* proc_info_list.__cpu_mm_mmu_flags */
> diff --git a/arch/arm/mm/proc-xsc3.S b/arch/arm/mm/proc-xsc3.S
> index 1ac0fbbe9f12..42eaecc43cfe 100644
> --- a/arch/arm/mm/proc-xsc3.S
> +++ b/arch/arm/mm/proc-xsc3.S
> @@ -496,7 +496,7 @@ xsc3_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>  .macro xsc3_proc_info name:req, cpu_val:req, cpu_mask:req
>         .type   __\name\()_proc_info,#object
> diff --git a/arch/arm/mm/proc-xscale.S b/arch/arm/mm/proc-xscale.S
> index bdb2b7749b03..18ac5a1f8922 100644
> --- a/arch/arm/mm/proc-xscale.S
> +++ b/arch/arm/mm/proc-xscale.S
> @@ -610,7 +610,7 @@ xscale_crval:
>
>         .align
>
> -       .section ".proc.info.init", #alloc
> +       .section ".proc.info.init", "a"
>
>  .macro xscale_proc_info name:req, cpu_val:req, cpu_mask:req, cpu_name:req, cache
>         .type   __\name\()_proc_info,#object
> --
> 2.24.0.rc0.303.g954a862665-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu8POt2gYO6fagnKr-EgsuxMEo9LwVXo1pgcJKAG3JG%2BPw%40mail.gmail.com.
