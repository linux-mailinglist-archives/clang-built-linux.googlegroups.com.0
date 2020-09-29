Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFUTZ35QKGQEEH3TBFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E5827D6CB
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 21:23:03 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id d16sf4380322ila.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 12:23:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601407382; cv=pass;
        d=google.com; s=arc-20160816;
        b=MFv3bLAdZfqKCwZQ121ThTEtRtMDnRSOgpw3wCWv8GG1SghE+4M7oopiQ7TG0RQzQv
         hYHiNiTwue7jpRndwaySkKIgHOyMBuO5IHSQvLjY3tBhM4LC6BcaLV3NCm2uEqLAcvO3
         C2aLM+d7aecKWPPlsL/x+Zu8pqAqOunbaLSXcIElWyt7zG3kjLtkjdFP3UXPaXmJzLFE
         EjmkpAZK5NSpxVbsMP+5Wx4JOFV5BJdqdeaokGMJl/XIlKV3LRGclSrW7ricSo05O8+L
         cY5DT2ep0Y3xoQrblh5WKRKJVdyTtPoj4yLBiAEZcc5UBOOd/1NrN1scciaWMe+Zb2Eg
         7zRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OV4Klbe+/GLM7iHnMkwSG/Xy4CoqnsA2GNCUjZtbWo4=;
        b=jpRZ6KVmiUVvOSIAYJprg8C1j3CQL9lG5MieZvpDA8GOd5/vgLAqCS8yDMm0NjNjkr
         xQzYH4AI2mz5jNEAOT4OOSXzEJats/woNdc26lj8syOYJ8VHmYCk7kDONmK+ujvCG/Zt
         txTBwmBy2EOSATRGfGyeNQ7KgYgCY/bfqYSKfYlVnjoYYXaQp0VQrtR+sE8KEjlrkXXm
         yhffgY3MDUFdsIrmdfvvgXIiKqsrzRe/bzVvqBTXHKHmiAcGiWdjjGrI3ZQXCs9U4y+o
         /5Mj6fNFEYCqXvFEx3LDO6PnC47co6/puv+w6NfYnsj4Cr7QoPOLp9IfK4FE8BsgvpmA
         nQdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MG2uhNgI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OV4Klbe+/GLM7iHnMkwSG/Xy4CoqnsA2GNCUjZtbWo4=;
        b=nde2PgJjhDepTpjD1xSuQXnRQzAhN5sYSnUgcFFlFp33TDmHYVPTEQiGrMZEr8bleb
         ZMD8RkSCgZYBzo5ENDUNiEZYXRDNFOFHEdSwWM58UAZH1A652YQ6uFActcd9CkYSLGmR
         IZfps1UDu9Xr0YNUd70SxhpxGODc9YZSy504FSKgy0pYtsHZnQN5MNEaCPje/GZo64GW
         YeGbELBKWZKxJBCII+85gaYwlqlQJb79X6PJfzA9ByO5aEyEfrK6Y8CTktWAJRe3/EmD
         aSEezqP6qb+8Z6o+9RZdv05a5rtIGhytOVgu6HDvlJIS+XEnYZu76sdxxliEKbeyI7DG
         O+nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OV4Klbe+/GLM7iHnMkwSG/Xy4CoqnsA2GNCUjZtbWo4=;
        b=pDKhIfcbRfkfTyNYPz72rcj2pZ08kQ80yBo/oLEbhxFgGfojnK6BQyRCTjvbcObALD
         3kjSlnP1mf8mFOuKOIS83EF62x/G81sgkv6ahB2VKgGDL/+Vvl0hxMZBIRwm/SXoypI5
         +xEP/0lZ68jGpdwBHImuXrqPDFqTFexWePAXvLhGAtuTFxqO2O4KXpFRE1LpYHsbwvfn
         MMO1UfRYXhv2NOZyK2/BaVcezH7Zttod61xMjqglO8Qm3v5b8DvKxBfT2o4Us3JFW5a6
         p7vZXTjxVWecpJlXDPW0esfDJDW+AAgXLX5tuwvtwltCrdNPI+uNl9uFbcgQQcCZ0EsX
         n/qA==
X-Gm-Message-State: AOAM531d5vtO4AX3Lo8B6SKw+ukjiomui+Tw5qDmSZptP8ZkndGQqtfZ
	gAu+ycKzxdOtKm3o9/9Zpw0=
X-Google-Smtp-Source: ABdhPJxPOFr2ICaD0E0Mmj+4qvvRm0UFDMltUIaCrrX1lGggj8jiUd1VgbsSntUzq3JAVDI4Wxjkyw==
X-Received: by 2002:a92:c8cd:: with SMTP id c13mr4296555ilq.297.1601407382633;
        Tue, 29 Sep 2020 12:23:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5bce:: with SMTP id c75ls1592206ilg.8.gmail; Tue, 29 Sep
 2020 12:23:02 -0700 (PDT)
X-Received: by 2002:a92:730b:: with SMTP id o11mr4320534ilc.91.1601407382316;
        Tue, 29 Sep 2020 12:23:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601407382; cv=none;
        d=google.com; s=arc-20160816;
        b=WCU6npFtdWijccIdL+52AXO811MFbFnwIkS7+m8IVsQ3bygHmmKX1CWJi1oMg1EoHW
         XKdL/dA0BUouwjNhIlg0HQmkNmtld+hy8pxdGb0f9MLkPaRxmTGyeFeCWZdcLPzpEX9n
         tTbIgeg4yc2O8yZwzqyVpsI7Vpjp8JNquCrFZAjQSCr5wKtDEUh9l/Wx+3/V9xuqqgEy
         TUFMF+9ajRPWX9a1VcNqH2JBcNcyJPlJT7hBqItHT8rHIEUMmEWJLvKikx5jo1S8ltBa
         TGowI52VLr5e00wWYwek3wqFWSp4DRJIZ7MSjJ9rna/lmUu+TxRWL2h6vvLczgnDxLm4
         F/+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XGb7x8YUCOsUH75obTDiJ9n5ILA2CmimR4Sm9Sn083E=;
        b=YeerBzXJ6zlvcAyb+xFiq3XU0CvSSjA/iWwrGwjCOnVHaupGHM1vD43HEOD9GbfWuZ
         a/AClwmoXIhEIoQn2pDyVCKB9mbeFUgDd6WMiuMUIQXmraa/kv2orQE8l5lx9EcJsSI4
         w8fjMnNLFp4DOfeOgERXZKvU7TyIZ+mjk2+VEoedDwmjHmFznwcHZ6BzngfeXs0C/xl+
         ZpVgd/13efXfxVDCXR9hGC2flhTp8s/YQbFoaD1KLGPSZpIpWs1qIH4jw0MtNwP56Gbv
         hi5F3+iX4PNgltMh60CUNu7+B0vrGNOgH6oGEcMeyIas4pbMpNx6AHlfC6yR1ds4Dcz5
         vyAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MG2uhNgI;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y1si526478ilj.2.2020.09.29.12.23.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 12:23:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id z19so5572270pfn.8
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 12:23:02 -0700 (PDT)
X-Received: by 2002:a17:902:ed11:b029:d1:f385:f4e7 with SMTP id
 b17-20020a170902ed11b02900d1f385f4e7mr5997772pld.56.1601407381691; Tue, 29
 Sep 2020 12:23:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200929192204.499006-1-ndesaulniers@google.com>
In-Reply-To: <20200929192204.499006-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Sep 2020 12:22:50 -0700
Message-ID: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
Subject: Re: [PATCH] srcu: avoid escaped section names
To: "Paul E . McKenney" <paulmck@kernel.org>
Cc: Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>, 
	Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
	rcu@vger.kernel.org, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MG2uhNgI;       spf=pass
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

gah, must have had a `-a` in my `git commit --amend`...sorry, will send a v2...

On Tue, Sep 29, 2020 at 12:22 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> The stringification operator, `#`, in the preprocessor escapes strings.
> For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> they treat section names that contain \".
>
> The portable solution is to not use a string literal with the
> preprocessor stringification operator.
>
> Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> Fixes: commit fe15b50cdeee ("srcu: Allocate per-CPU data for DEFINE_SRCU() in modules")
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/arm/Kconfig         |  1 +
>  arch/arm/mm/Kconfig      | 11 +++++++++++
>  include/linux/srcutree.h |  2 +-
>  3 files changed, 13 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index fe2f17eb2b50..51200e371faf 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -358,6 +358,7 @@ config ARCH_EBSA110
>
>  config ARCH_EP93XX
>         bool "EP93xx-based"
> +       depends on !LD_IS_LLD
>         select ARCH_SPARSEMEM_ENABLE
>         select ARM_AMBA
>         imply ARM_PATCH_PHYS_VIRT
> diff --git a/arch/arm/mm/Kconfig b/arch/arm/mm/Kconfig
> index 65e4482e3849..c06787c9bb48 100644
> --- a/arch/arm/mm/Kconfig
> +++ b/arch/arm/mm/Kconfig
> @@ -9,6 +9,7 @@ comment "Processor Type"
>  config CPU_ARM7TDMI
>         bool
>         depends on !MMU
> +       depends on !LD_IS_LLD
>         select CPU_32v4T
>         select CPU_ABRT_LV4T
>         select CPU_CACHE_V4
> @@ -23,6 +24,7 @@ config CPU_ARM7TDMI
>  # ARM720T
>  config CPU_ARM720T
>         bool
> +       depends on !LD_IS_LLD
>         select CPU_32v4T
>         select CPU_ABRT_LV4T
>         select CPU_CACHE_V4
> @@ -43,6 +45,7 @@ config CPU_ARM720T
>  config CPU_ARM740T
>         bool
>         depends on !MMU
> +       depends on !LD_IS_LLD
>         select CPU_32v4T
>         select CPU_ABRT_LV4T
>         select CPU_CACHE_V4
> @@ -61,6 +64,7 @@ config CPU_ARM740T
>  config CPU_ARM9TDMI
>         bool
>         depends on !MMU
> +       depends on !LD_IS_LLD
>         select CPU_32v4T
>         select CPU_ABRT_NOMMU
>         select CPU_CACHE_V4
> @@ -75,6 +79,7 @@ config CPU_ARM9TDMI
>  # ARM920T
>  config CPU_ARM920T
>         bool
> +       depends on !LD_IS_LLD
>         select CPU_32v4T
>         select CPU_ABRT_EV4T
>         select CPU_CACHE_V4WT
> @@ -94,6 +99,7 @@ config CPU_ARM920T
>  # ARM922T
>  config CPU_ARM922T
>         bool
> +       depends on !LD_IS_LLD
>         select CPU_32v4T
>         select CPU_ABRT_EV4T
>         select CPU_CACHE_V4WT
> @@ -114,6 +120,7 @@ config CPU_ARM922T
>  # ARM925T
>  config CPU_ARM925T
>         bool
> +       depends on !LD_IS_LLD
>         select CPU_32v4T
>         select CPU_ABRT_EV4T
>         select CPU_CACHE_V4WT
> @@ -153,6 +160,7 @@ config CPU_ARM926T
>  # FA526
>  config CPU_FA526
>         bool
> +       depends on !LD_IS_LLD
>         select CPU_32v4
>         select CPU_ABRT_EV4
>         select CPU_CACHE_FA
> @@ -172,6 +180,7 @@ config CPU_FA526
>  config CPU_ARM940T
>         bool
>         depends on !MMU
> +       depends on !LD_IS_LLD
>         select CPU_32v4T
>         select CPU_ABRT_NOMMU
>         select CPU_CACHE_VIVT
> @@ -278,6 +287,7 @@ config CPU_ARM1026
>  # SA110
>  config CPU_SA110
>         bool
> +       depends on !LD_IS_LLD
>         select CPU_32v3 if ARCH_RPC
>         select CPU_32v4 if !ARCH_RPC
>         select CPU_ABRT_EV4
> @@ -299,6 +309,7 @@ config CPU_SA110
>  # SA1100
>  config CPU_SA1100
>         bool
> +       depends on !LD_IS_LLD
>         select CPU_32v4
>         select CPU_ABRT_EV4
>         select CPU_CACHE_V4WB
> diff --git a/include/linux/srcutree.h b/include/linux/srcutree.h
> index 9cfcc8a756ae..9de652f4e1bd 100644
> --- a/include/linux/srcutree.h
> +++ b/include/linux/srcutree.h
> @@ -124,7 +124,7 @@ struct srcu_struct {
>  # define __DEFINE_SRCU(name, is_static)                                        \
>         is_static struct srcu_struct name;                              \
>         struct srcu_struct * const __srcu_struct_##name                 \
> -               __section("___srcu_struct_ptrs") = &name
> +               __section(___srcu_struct_ptrs) = &name
>  #else
>  # define __DEFINE_SRCU(name, is_static)                                        \
>         static DEFINE_PER_CPU(struct srcu_data, name##_srcu_data);      \
> --
> 2.28.0.709.gb0816b6eb0-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Ds%2BN4%2BX94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A%40mail.gmail.com.
