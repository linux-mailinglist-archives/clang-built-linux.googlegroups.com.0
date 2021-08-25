Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCUKTOEQMGQEVYX7U7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C563F7EA4
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:32:48 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id k20-20020a05651239d400b003d91160994dsf276851lfu.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:32:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629930763; cv=pass;
        d=google.com; s=arc-20160816;
        b=jnLcUDaeEfL8TORSQJmvk/FNUgBEug6FvFqDusjKwwbg1Emd5p3UVgMO+1WwBhc+I+
         2anZwiYYBMftQB2q2K+dwpYrxiLrQbAdGTc5ExczJgVEgLIcM4eP/mz3Z83jtArusc2p
         UGVS3R6FZpc5s+LYdopp2cyWOEo3k+yF72NUMGJjj6m4nCRHhnjzA4HC82zQfz70JXWv
         SPRdti7Ra2vNG+SvIsa7u8V3EPQXcMbqpfPFzdI172XhvwgyjZEhG4jkHcRjhFTvPICB
         D1w97GShejSHpRQk0EE6sZsNdkeORgaXcuX8TqNJVJ6VIrshQMEjqNT+5seHv33WAla8
         10sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2aERrO6/RruvQMXTiPe7JwtAQ21xsEgCn5baSGcjQTs=;
        b=ZyezBY5UsK/FrrT/ImIDfYRpmcqy6nP56hWew69SoWkLqp9WwgKW8EjdfkEMAPN8NW
         5Bo7a2kk5Rle2kJspv4f/7LmVAbjIuRpWYslf+DgbW4RScDEMooENUniG/MlfkDPjzTg
         shnH5Fb3xdBPBRS5zB2ibSPkKVknXu3TkI2xTXx5x+qpsCjBD9f35RVlb5Xq91AS9W/i
         u8VMFHbDNtTWEsmVKIiM7aRnGnP86XM1xmnnLOVJPr/IPMnLYv1FacUtnE3bKZG5lsJL
         RKh+IiY8s6EZVBhvT/y2BOyb3BHwPitRRyaqsHCgmgbrz7sApvcQce6GfjSSlEcutJoN
         Co4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lrXxjbDH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2aERrO6/RruvQMXTiPe7JwtAQ21xsEgCn5baSGcjQTs=;
        b=FzW+TfY4lGpR2j7yZ8lsQnGPbDZSaAb9EmQngMOEhPy8VWZHMooPp4Onv4JS3FYmtD
         4jvNZRNZcF8aaamgWiQPpWxEFp68/xH9pqLU4ii8SbpB8/CN24t894aDXfaxI2zDI4CK
         YpirSLTHjaW/JtqxY+eDIQX/KV1IU7gZDNFzn2sHXNowE7puhogHeJa/ZBZ5MrDONaBx
         nKgkkG2bNy0OghOHHEraTIlDYvtqSQ0GnvSHtPpBZ+WBKVZiN5SvMslhtZvs5VGNHNsP
         33yh0NGBQJsXWiPDgIfdHjYvIhci0Y3MHuJ81rNh7NMOom0xM4hzzoLHKdCowSeJYHpD
         7P6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2aERrO6/RruvQMXTiPe7JwtAQ21xsEgCn5baSGcjQTs=;
        b=t2A1TUJ4xQOJzLSIU8npjMtxe2vB1kw9ACDeStX/Da/8Q2L5jqarGFfhfhnKo3UTkE
         uhwXP8FfknuWPmBcDIAaQPZzrZieZQC5M8ScQfnedF7zhHfD9gWI/Y36fkuo09ybIkoq
         T4/CMJg8PZju5Tlp38iDqJNeX+QmQanBdjNTZlAB1CAPht+1uKJu/lQZU9YNJyhk0r+4
         VQIkApxfT3Jvll4I5+4m11r0BzkTmtUA2qeH+iIbLsUI7pT/oh57e4I0SYHyZ2+o5Ftu
         SayeW7b5JLEmU9vODziw4MjugWjY+n3itoqZ8nVnLEchubMaALpiDbT/IzgWthEyOt7u
         z6Kg==
X-Gm-Message-State: AOAM530Lerl78Lv1UzBYXIjPikKGoqBPUbJKtAC0IEJUN4xKDjBI+mW+
	nXXpBY+sEJ1x0K81Va34EFY=
X-Google-Smtp-Source: ABdhPJyLYL7iEkZligDzQYDrwJ6QWt+RZlbtyJDfQ4fw3xuQ8+rWAnj0WNCNzwgd4+XBkdbUB48ZXw==
X-Received: by 2002:a2e:2f0c:: with SMTP id v12mr392309ljv.381.1629930763185;
        Wed, 25 Aug 2021 15:32:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:15a3:: with SMTP id bp35ls2588110lfb.1.gmail; Wed,
 25 Aug 2021 15:32:42 -0700 (PDT)
X-Received: by 2002:a05:6512:3767:: with SMTP id z7mr302439lft.128.1629930762345;
        Wed, 25 Aug 2021 15:32:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629930762; cv=none;
        d=google.com; s=arc-20160816;
        b=HtuKTZh483CpND2uRveS2nfIY4ioiv6YnAt/xJlIVmpIM/JkAqGMpwV1bEff6LQVqH
         dvfPQHuu0Y9jwTmwFV1YRHvo74XlxwpOcWs+Nm2MQWM1m0B82Zt/eQShaVkD+Z1SCMAn
         uLrHB6000iM3Hax6/4D8vovPztLnzLy7KIltwjfzEEvm+2icUhf8VVgINOfmIXjoeflH
         ZiuQV2E5cLKkI6cQlyzKcZZsd+GG6b8Ptmzldnalde45gSMfX1ZF3ORKxxTDMT7uRd6U
         bmcdYjWcioQOlg87pAkuUmoqhylCQTtRu4nB6d3bcYN97Akc+e8kkr9Sdp9VRtL0bGaV
         7q1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=G3Nt1IIP3rodQkGlNZEzuycv4KD2J93SOLZmuAiefgM=;
        b=PV7uBtshNxBYVRHuVwC3CSiwHWcbHczQTV+mqWkbx+5qkdXRYk9b49iocgPCSV0RC+
         +sXp+CO1skngS6sMvx2+gcm7Dwk4TaHTj3w7ddCJ/E1ADpRf+6laQ9IVIjDkZ3foW+Qb
         Uk/WLW/R4Hcn2pOc7BDjx+N2/ie1qHxDurZiTPeVAdP4IW/BXUwyawZQbcgjUsuuAPks
         DfWSVoqNrMlpNyp8lZtNAiCo54epFcU8hWsUwsq0kt1oNGooZVG8TMGv40kl4FFAYBhl
         QYOpBgUAJ8KSVgNmjUns75F45t5EzBzXokLlfabe2QafInefWeBKx/p32WMLWYSyIyuW
         115w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lrXxjbDH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com. [2a00:1450:4864:20::129])
        by gmr-mx.google.com with ESMTPS id p7si77911ljj.5.2021.08.25.15.32.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 15:32:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129 as permitted sender) client-ip=2a00:1450:4864:20::129;
Received: by mail-lf1-x129.google.com with SMTP id z2so2220878lft.1
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 15:32:42 -0700 (PDT)
X-Received: by 2002:a19:f017:: with SMTP id p23mr267425lfc.547.1629930761847;
 Wed, 25 Aug 2021 15:32:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210824022640.2170859-1-nathan@kernel.org> <20210824022640.2170859-2-nathan@kernel.org>
In-Reply-To: <20210824022640.2170859-2-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Aug 2021 15:32:30 -0700
Message-ID: <CAKwvOd=eXk6dJ3xodkaqA6h_npHENe8x2NLD53+Hnij1nytj5A@mail.gmail.com>
Subject: Re: [PATCH 1/2] x86: Do not add -falign flags unconditionally for clang
To: Nathan Chancellor <nathan@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	x86@kernel.org, Masahiro Yamada <masahiroy@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	clang-built-linux@googlegroups.com, llvm@lists.linux.dev, 
	kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lrXxjbDH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::129
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

On Mon, Aug 23, 2021 at 7:27 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> clang does not support -falign-jumps and only recently gained support
> for -falign-loops. When one of the configuration options that adds these
> flags is enabled, clang warns and all cc-{disable-warning,option} that
> follow fail because -Werror gets added to test for the presence of this
> warning:
>
> clang-14: warning: optimization flag '-falign-jumps=0' is not supported
> [-Wignored-optimization-argument]
>
> To resolve this, add a couple of cc-option calls when building with
> clang; gcc has supported these options since 3.2 so there is no point in
> testing for their support. -falign-functions was implemented in clang-7,
> -falign-loops was implemented in clang-14, and -falign-jumps has not
> been implemented yet.
>
> Link: https://lore.kernel.org/r/YSQE2f5teuvKLkON@Ryzen-9-3900X.localdomain/
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/x86/Makefile_32.cpu | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
>
> diff --git a/arch/x86/Makefile_32.cpu b/arch/x86/Makefile_32.cpu
> index cd3056759880..e8c65f990afd 100644
> --- a/arch/x86/Makefile_32.cpu
> +++ b/arch/x86/Makefile_32.cpu
> @@ -10,6 +10,12 @@ else
>  tune           = $(call cc-option,-mcpu=$(1),$(2))
>  endif
>
> +ifdef CONFIG_CC_IS_CLANG
> +align          := -falign-functions=0 $(call cc-option,-falign-jumps=0) $(call cc-option,-falign-loops=0)
> +else
> +align          := -falign-functions=0 -falign-jumps=0 -falign-loops=0
> +endif
> +
>  cflags-$(CONFIG_M486SX)                += -march=i486
>  cflags-$(CONFIG_M486)          += -march=i486
>  cflags-$(CONFIG_M586)          += -march=i586
> @@ -25,11 +31,11 @@ cflags-$(CONFIG_MK6)                += -march=k6
>  # They make zero difference whatsosever to performance at this time.
>  cflags-$(CONFIG_MK7)           += -march=athlon
>  cflags-$(CONFIG_MK8)           += $(call cc-option,-march=k8,-march=athlon)
> -cflags-$(CONFIG_MCRUSOE)       += -march=i686 -falign-functions=0 -falign-jumps=0 -falign-loops=0
> -cflags-$(CONFIG_MEFFICEON)     += -march=i686 $(call tune,pentium3) -falign-functions=0 -falign-jumps=0 -falign-loops=0
> +cflags-$(CONFIG_MCRUSOE)       += -march=i686 $(align)
> +cflags-$(CONFIG_MEFFICEON)     += -march=i686 $(call tune,pentium3) $(align)
>  cflags-$(CONFIG_MWINCHIPC6)    += $(call cc-option,-march=winchip-c6,-march=i586)
>  cflags-$(CONFIG_MWINCHIP3D)    += $(call cc-option,-march=winchip2,-march=i586)
> -cflags-$(CONFIG_MCYRIXIII)     += $(call cc-option,-march=c3,-march=i486) -falign-functions=0 -falign-jumps=0 -falign-loops=0
> +cflags-$(CONFIG_MCYRIXIII)     += $(call cc-option,-march=c3,-march=i486) $(align)
>  cflags-$(CONFIG_MVIAC3_2)      += $(call cc-option,-march=c3-2,-march=i686)
>  cflags-$(CONFIG_MVIAC7)                += -march=i686
>  cflags-$(CONFIG_MCORE2)                += -march=i686 $(call tune,core2)
> --
> 2.33.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DeXk6dJ3xodkaqA6h_npHENe8x2NLD53%2BHnij1nytj5A%40mail.gmail.com.
