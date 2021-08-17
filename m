Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPX256EAMGQELSGIJ5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 379C43EF1A0
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 20:17:35 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id d17-20020a05651c0891b029019189dff65esf42903ljq.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 11:17:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629224254; cv=pass;
        d=google.com; s=arc-20160816;
        b=QjQtt2Ogzz5xDkh/uj4swsLBxwJHEfn9jDBkaxr5PABDTF89hEo0zHlKElRI5cVKGg
         25wHl5nZlgWyuMbfmmoZb9ymTACjOvf2bADWdEi5X0lOxy2+fxUwR5b7gMMMjDA8/9Vw
         IWB/bPz8rvV1TRG9ZpoSiNN77l/09DN7gdTSyXsYgViC8Y0FqXmfg1jdyLoALpzJpX7F
         PfjXq8JcpbTtqy7GZS6sF7XInNEH1cPgR/k11x3sk3SXBtphnbF+uomVSqlftNX6MgJs
         dVCfE52/J6b60Bg4RZ58q1A7WVT8XUdnDQIbYMNLPw+f9uIye1UgTqi6/GsOr/MAdSZ1
         En9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zBsOLQYhT2WhfNinhA7/r2N77WzoTmgAHicsCfqJOGA=;
        b=UK3SapJWX0RaRAP8m3PCjM77700oKxBuSFVnDX7ssQEcvZdqCkdZarH4shCsY6vgc4
         Dii1egbInOSdhlZFygcvqe6FUm/lnmK3r5/zjzDKM0xOn+FPw5GK3pNfOp4eN+YwWyxb
         A18uHecoD9iam8Sq6Vywb9aWY32hgSkWhi969ilViTIXzXaiNOB6YHDg1/d/75pMsLsg
         eXwdLqsmP0HLwwiKUwWTyxBAS3wzR207TfHUPSupzw0OK8YxHlqYmXIgULMCKgVfOAOS
         I/wzRlSmcpicdQ66JevMy/1KbjEqBBIpjjzZjsBWhMypQzUMoX6/FJvE62Rja/jjmGRm
         33eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h0gfcuKU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zBsOLQYhT2WhfNinhA7/r2N77WzoTmgAHicsCfqJOGA=;
        b=H/LtRko5AsCtEhAgzBTAJUJeKjWrLnG1xf38mvO9kVeEZqe1JrdafRYwnxa3R4bqZi
         Mn/4KddwhjCgD/DBMectxxPTrOAiudpb3iIbSlDag8BBr5FddmptbDI5LO23tScszokn
         WnhK/vstbKK3bKW3O+kpwA9HhsTSKn3UP8PyoDN1EnEmpi0fjToY+Bagv2+3++4KzLlu
         UFej/fTf0SoczdMtVlJaGophNHu0Nwq6/TWrVdTGE+Of2KHDnP6EpkPWNso3Vv/Uv6ac
         cmuhc1ZJ3uktfU3d+XbpEFwa8TN4/db82wQbfasPomFL7CBQEuVbcpjN0KHRtXL8wRDl
         px4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zBsOLQYhT2WhfNinhA7/r2N77WzoTmgAHicsCfqJOGA=;
        b=ktGrD6oZWKAJFO5oTLjSn09DSiniVLoJP3Um61Vmn8MYBpnfhT5wCtg1w0EKfpBo7g
         2wfuy02faooPGI/uNZMD5twd/RC7BLNvqqalO7tWdjQ3xL2dL6elIK14uuTOL88OihqB
         AEMiGxLvoQfPIi0XYSePupViGm1E/YlnVrvuYIk6YB/hxFBGS7Eyx6Q99kTLJ7DJP/GM
         0PyZp+SqhqRM/G9j+tTV1FkC3SbDoJAi9HcLDBadltbwHs8Ez2UbFla1sAj8lb4FU4//
         rYFzEHpe2T9rRnB/40QCrzN88sx13Bu5RaqerFbGNMB2HGsht8ePbc+fSflqr/vKj8dz
         TTaA==
X-Gm-Message-State: AOAM533nw6wUeqYJfVr1QjnGpzr5w88addfeyNpS6CR9yND2QoVbDjog
	MtRVkT9TwpPh20BWlwHXDgo=
X-Google-Smtp-Source: ABdhPJwPFW/JzXeWHWdXg6tbZoruMRNzMaQuUBYYQ50We+ptawbVS5digFCQiDbLZRnpHaZiE1+vEg==
X-Received: by 2002:ac2:5a1a:: with SMTP id q26mr3238754lfn.41.1629224254776;
        Tue, 17 Aug 2021 11:17:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls693067ljf.7.gmail; Tue, 17 Aug
 2021 11:17:33 -0700 (PDT)
X-Received: by 2002:a05:651c:10a:: with SMTP id a10mr4332690ljb.37.1629224253846;
        Tue, 17 Aug 2021 11:17:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629224253; cv=none;
        d=google.com; s=arc-20160816;
        b=XHuWb4uG1vskvUFS2YjcFYzIlUFdjl4cXDnzcPW9jYcJLiaewbwOx8ycM6oJEMuFNF
         9MgdcyoQAkVcYJ/exV85MI3g2Oi4pcM/t6gIqBU3sWWxMSe17oJSckFL91r7ccmS+aM8
         Y3mkqM2J7JDT1s43YnSpFADJk83gTFsLt8qB10Ioekv29M5HYjb9dug2jeww1peTsUYH
         gC07Thgbm9vrI+qin966wsZ4VgM0OW2KGAJjeRMUF2ARP+XBbUYuY+Yl4EsPJtsPzRFz
         qmN3wvTpy1vsGTptybPwREkzS6MCiKkviv8yBcAc/47y3W8n1X/8tTOwjJCCwCQ0NMhL
         cwEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eDdv2rzwUMD4SObVyB6gkvhjez+GHyH9zfR8+Ve+7sM=;
        b=PF3Xt+dzOcFtNWVa34I7UKgMaNNLUKEdNLgHtwhKMZWRxxikSZ4bomd3dNJWqT96LO
         id0oQcrjxh9xxQuGK5UzEitG/CWBDYzHvJatVxAdk5ZqDeQtOSP/icSKvCSaFcNd6EA7
         K8MTccTs8LjL27ccfiIS1cf4YUh0dn7msGdAjqFwf+MJ6fE0iTXIBm0GmBKyxtp0zH/q
         KMzgj1gh46nbzFi+fBYeBe/cCs7Z1JhdRrEDgNmtTw2hoag3CFrkWKWXYN6yeUnUCZN4
         hKumG0EvCvtK0uco0GX5zdI6aKKczb6YzyAzbtMT22d9gE9uuxfbgdRKIYq7rkjQzD+B
         pyTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h0gfcuKU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id h8si75479lfu.0.2021.08.17.11.17.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 11:17:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id z2so43118477lft.1
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 11:17:33 -0700 (PDT)
X-Received: by 2002:a19:7117:: with SMTP id m23mr3507570lfc.73.1629224253295;
 Tue, 17 Aug 2021 11:17:33 -0700 (PDT)
MIME-Version: 1.0
References: <269701460.117528.1629210189833@office.mailbox.org> <796036867.117557.1629210288168@office.mailbox.org>
In-Reply-To: <796036867.117557.1629210288168@office.mailbox.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Aug 2021 11:17:21 -0700
Message-ID: <CAKwvOdkYgC4pU0Ta+vS-UkyAYFTkg8MaLuR+OAsSX63_BY+1vA@mail.gmail.com>
Subject: Re: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings v2/v3/v4
To: torvic9@mailbox.org
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "x86@kernel.org" <x86@kernel.org>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	"graysky@archlinux.us" <graysky@archlinux.us>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=h0gfcuKU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::136
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

On Tue, Aug 17, 2021 at 7:24 AM torvic9 via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Add new generic x86-64 CPU tunings introduced with recent versions of
> gcc and clang, as documented in x86-64-psABI [1].
>
> This is taken straight from graysky's CPU optimization patch with minor
> modifications [2].
>
> [1] https://gitlab.com/x86-psABIs/x86-64-ABI/-/commit/77566eb03bc6a326811cb7e9a6b9396884b67c7c
> [2] https://github.com/graysky2/kernel_compiler_patch
>
> Signed-off-by: Tor Vic <torvic9@mailbox.org>
> ---
>  arch/x86/Kconfig.cpu  | 26 +++++++++++++++++++++++++-
>  arch/x86/Makefile.cpu |  6 ++++++
>  2 files changed, 31 insertions(+), 1 deletion(-)
>
> diff --git a/arch/x86/Kconfig.cpu b/arch/x86/Kconfig.cpu
> index 814fe0d349b0..a2c872aa5a0b 100644
> --- a/arch/x86/Kconfig.cpu
> +++ b/arch/x86/Kconfig.cpu
> @@ -294,6 +294,30 @@ config GENERIC_CPU
>           Generic x86-64 CPU.
>           Run equally well on all x86-64 CPUs.
>
> +config GENERIC_CPU_V2
> +       bool "Generic-x86-64-v2"
> +       depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )

Can we stick with either > or >=, but at least be consistent? Also,
there's unnecessary whitespace inside the parens that could be
removed.

> +       depends on X86_64
> +       help
> +         Generic x86-64 CPU.
> +         Run equally well on all x86-64 CPUs with min support of x86-64-v2.
> +
> +config GENERIC_CPU_V3
> +       bool "Generic-x86-64-v3"
> +       depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
> +       depends on X86_64
> +       help
> +         Generic x86-64-v3 CPU with v3 instructions.
> +         Run equally well on all x86-64 CPUs with min support of x86-64-v3.
> +
> +config GENERIC_CPU_V4
> +       bool "Generic-x86-64-v4"
> +       depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
> +       depends on X86_64
> +       help
> +         Generic x86-64 CPU with v4 instructions.
> +         Run equally well on all x86-64 CPUs with min support of x86-64-v4.
> +
>  endchoice
>
>  config X86_GENERIC
> @@ -318,7 +342,7 @@ config X86_INTERNODE_CACHE_SHIFT
>  config X86_L1_CACHE_SHIFT
>         int
>         default "7" if MPENTIUM4 || MPSC
> -       default "6" if MK7 || MK8 || MPENTIUMM || MCORE2 || MATOM || MVIAC7 || X86_GENERIC || GENERIC_CPU
> +       default "6" if MK7 || MK8 || MPENTIUMM || MCORE2 || MATOM || MVIAC7 || X86_GENERIC || GENERIC_CPU || GENERIC_CPU_V2 || GENERIC_CPU_V3 || GENERIC_CPU_V4
>         default "4" if MELAN || M486SX || M486 || MGEODEGX1
>         default "5" if MWINCHIP3D || MWINCHIPC6 || MCRUSOE || MEFFICEON || MCYRIXIII || MK6 || MPENTIUMIII || MPENTIUMII || M686 || M586MMX || M586TSC || M586 || MVIAC3_2 || MGEODE_LX
>
> diff --git a/arch/x86/Makefile.cpu b/arch/x86/Makefile.cpu
> index fb407ae94d90..f190feefe964 100644
> --- a/arch/x86/Makefile.cpu
> +++ b/arch/x86/Makefile.cpu
> @@ -10,3 +10,9 @@ cflags-$(CONFIG_MCORE2) += \
>  cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
>         $(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
>  cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)
> +
> +# New generic x86-64 CPU options.
> +# Don't call the compiler, we have Kconfig compiler checks for these.

You'd be surprised how quickly using time-relative words like "New"
bitrot. My copy of "Modern C++" already doesn't feel very "modern" for
example.  I'd just drop the comment block here; we don't need a
comment every time we skip cc-option checks.  Thanks for the patches!

> +cflags-$(CONFIG_GENERIC_CPU_V2) += -march=x86-64-v2
> +cflags-$(CONFIG_GENERIC_CPU_V3) += -march=x86-64-v3
> +cflags-$(CONFIG_GENERIC_CPU_V4) += -march=x86-64-v4
> --
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkYgC4pU0Ta%2BvS-UkyAYFTkg8MaLuR%2BOAsSX63_BY%2B1vA%40mail.gmail.com.
