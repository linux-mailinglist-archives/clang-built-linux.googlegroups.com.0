Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJP566DAMGQEELG4ENQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA233B95A3
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Jul 2021 19:43:02 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id p12-20020a5d59ac0000b0290125818b9a60sf2840088wrr.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 10:43:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625161382; cv=pass;
        d=google.com; s=arc-20160816;
        b=IHpAld8bJlfBg/zMf8HAZrhGC3ATI2Y5D/io+9r1ZFoV0p17n5Ct5doWJP2n9EN3JU
         aL0r9+IZ6lB9bjSOEsweu2bv/1/6g8/4uic9r3tVi3+uS5zBbETeJhi/QXpw/fIvp1SS
         xLzU4z4CGghJmgnWYs9mqXcqaLM3jfhh9NHhWv3jBobaIo7D7ha6EHLiQOkrBs6hX76b
         0Xf77Film8PJypYaee3Lk1yzSiZiTOCDZl472MZgF6HMQFhJwA17AcDx2238YTt3/bN0
         s0LayBHhRLPbKA4d7CFmojGqzHin6zHFMA6NG7bDmynHzzINgkYXBE0ZQf9sBl7zl+3G
         M6nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yvpfexYfeXH4dloPIZ5LsX3qOo06VGUVPs7a8PC1h7s=;
        b=UWADiTkr3KoieYxWL1iBpv0jKD+lW1jgl8/4W0mnOanMWV2VckC8dyo+sYd71+nUdV
         s8vT/Ox5A4hOfWWJtH/IdloWIv71fGv9kulFtGw5RBD5I47Aytzesr+foI4U+0Nl2eAW
         uemvFR7O/3Gg92X7UI3gKHOh8TGr9Dg2fFtIjGlHXuw3vx7cQSIkFZRpIfGJHkeolQLD
         YdHnmHBZL43t/4PyFg5EDzqjlb48jVT8j/hVnBzgiWzNLH+MPC/oC5dvAg87a0q8LysC
         woi9++3Ds8sBdjeZ+tR5kpPvVse8QMv+TCZwL7wdbHdGIPvhnl4HfFSseDU5eQt5eB+S
         otsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BoZk87Hb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yvpfexYfeXH4dloPIZ5LsX3qOo06VGUVPs7a8PC1h7s=;
        b=djWR1xuAbL/VtUqx041UvMkgw43tFdFayJKSsuv+tOjl6TShqGrd7FrimaH7vO1paz
         dVCnUEi3aOS3I7CDS4AXaJ/8LHwWD4gF6i63F6SgCYhxV0hTtmQu5Vi7jV0h7wMjes8i
         RScY5jqUgViXfLsE/KLn20+hVcnLdCqqtrJjfCQKxXDmdPf6o0QGmwfUxR9qJk2MG35B
         4NM4bMAVKL1v6+LUaeKHP6gAIRh61FftYOxh8bXupvnQTqlGs8KqcfG1py6skyY4sJGV
         1GI1DGVS+4XdtlznyK+lC4sjRQWWf8b8Z6+pWCKbxZsIKAGgnwSZjMJPROM0Gy3wREJ7
         1Evg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yvpfexYfeXH4dloPIZ5LsX3qOo06VGUVPs7a8PC1h7s=;
        b=Q/BGLGXqsqWXq4v8BznnXYknZJlIkvf+Fy57ep5vTZmnfMDdOwS5G9dG7cVY/4X58l
         l9oGLKAadFUpmc+DKgutfjNECIk+N4R7d1D7Vdz5l0sA1C8DzND5WCdmc2r08oMoz/Hb
         OmJmWERcGgKtO7VsV0nDQHvgt/VT4Z+RktNOWVussu8+LEF5IeE6hiJESKZTyYcgQdAj
         +1psmB381e49ulzHIEQ4XH0V4Y3K38Ib0xLBeN1K6XOz91YjlFDa0tbCOfhGtqhFpuUJ
         h8/k9sAi46MRC4PhOsStWX+L+SFt21IC6nDXbbe/NrdVrvcQd5fmT2cm+heRx4kml8o2
         AvBQ==
X-Gm-Message-State: AOAM530YzQdZxvWMyUqH8QHh5fuUPmJhwRo807qmzP+ukBDaQWG+q1J5
	V47DWz9mm5T7kRYPost3PEk=
X-Google-Smtp-Source: ABdhPJws9+zs43tCofMlabvHsUnBJ3sN32jJB3YMZt2U/EhnyZLULPuj7fgUXMK5tH+bbgG0rS/HGA==
X-Received: by 2002:adf:ff8b:: with SMTP id j11mr1017778wrr.326.1625161382009;
        Thu, 01 Jul 2021 10:43:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls2182567wrr.3.gmail; Thu, 01 Jul
 2021 10:43:01 -0700 (PDT)
X-Received: by 2002:adf:ec4e:: with SMTP id w14mr1001325wrn.372.1625161381150;
        Thu, 01 Jul 2021 10:43:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625161381; cv=none;
        d=google.com; s=arc-20160816;
        b=g+fJp5+CfJSI8pyJ2DXVLbJo/rQ8BIaGldEMW5BV3ImBxfyFEV33Q3IzTExDfPWDfk
         ehpzUnd4X+CrijiHqF4PyMsUfOiVAv7OL5bygn1JbpJ5BEkY1bNXzpNr1SdmjGzyMhQa
         ejB4YQxby1UqVNBMbQsmMWfgM5MlTdTs/RsFP+5CWB5TuWTkeIQXcr8RWk0ARwofZz6e
         qgeh6m2/JDLaC+boJGubFGF+MuLRjVqutSS3PUfO2DOZmLuV7HtLtBQO+Ld1/A/R8OdL
         kR2PEtsHLeiFIoH6dFqHiBdqlOzCAfw3/JsETy3omRekxfRTCOSCChKfX/lIo3hwLcf6
         GVoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=e5t/eiICJInDaoPzgCkbGyquWwZQG2z8agCSrrhjkWw=;
        b=c1yupeyYaCK1Dfd/hlEbutNqcaWi6+gfWpDs7tr7KpZt6gQOUsKualHEaLCi+6c5oV
         U2eTaHgOzu4j/t3wPlj0fGyBpGFwpNCyS8RC51vzWtLlcPvRW2dC1HWwCXU7Cna8gZ+c
         H72yUoNBnqYxndKEevMB4cCGMMI76poisyBDr/OzWk8hguhvIT/Mny577ly+FMhfX8F8
         5e1KyPFFOdZSoC++jVN4Fjr8owYWiFhg0U0IkVnPdgRlIYSzNgdhLeKqHL+TeyCEVu4z
         HTnf/gorp7TLI/Pj/Wg/Ypgp4+2c0NCb4vlGhnkQZfdh6lQJX0acWK/S+xIIybqwIHGW
         f1BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BoZk87Hb;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id n2si14568wri.0.2021.07.01.10.43.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jul 2021 10:43:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id t17so13352421lfq.0
        for <clang-built-linux@googlegroups.com>; Thu, 01 Jul 2021 10:43:01 -0700 (PDT)
X-Received: by 2002:a19:5f04:: with SMTP id t4mr583484lfb.297.1625161380470;
 Thu, 01 Jul 2021 10:43:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210701092841.1419-1-lecopzer.chen@mediatek.com> <20210701092841.1419-2-lecopzer.chen@mediatek.com>
In-Reply-To: <20210701092841.1419-2-lecopzer.chen@mediatek.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 1 Jul 2021 10:42:49 -0700
Message-ID: <CAKwvOdkGjz-rH8AHudO3dJmSt+48FSJ8iT-eCacwyeMhWv909w@mail.gmail.com>
Subject: Re: [RESEND PATCH v2 1/2] Kbuild: lto: add CONFIG_MAKE_VERSION
To: Lecopzer Chen <lecopzer.chen@mediatek.com>
Cc: keescook@chromium.org, samitolvanen@google.com, 
	linux-kbuild@vger.kernel.org, nathan@kernel.org, 
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	yj.chiang@mediatek.com, masahiroy@kernel.org, michal.lkml@markovi.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BoZk87Hb;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

On Thu, Jul 1, 2021 at 2:28 AM Lecopzer Chen <lecopzer.chen@mediatek.com> wrote:
>
> To check the GNU make version. Used by the LTO Kconfig.
>
> LTO with MODVERSIONS will fail in generating correct CRC because
> the makefile rule doesn't work for make with version 3.8X.[1]
>
> Thus we need to check make version during selecting on LTO Kconfig.
> Add CONFIG_MAKE_VERSION which means MAKE_VERSION in canonical digits
> for arithmetic comparisons.
>
> [1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
> Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> ---
>  Makefile                |  2 +-
>  init/Kconfig            |  4 ++++
>  scripts/make-version.sh | 13 +++++++++++++
>  3 files changed, 18 insertions(+), 1 deletion(-)
>  create mode 100755 scripts/make-version.sh
>
> diff --git a/Makefile b/Makefile
> index 88888fff4c62..2402745b2ba9 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -516,7 +516,7 @@ CLANG_FLAGS :=
>
>  export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
>  export CPP AR NM STRIP OBJCOPY OBJDUMP READELF PAHOLE RESOLVE_BTFIDS LEX YACC AWK INSTALLKERNEL
> -export PERL PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
> +export PERL PYTHON3 CHECK CHECKFLAGS MAKE MAKE_VERSION UTS_MACHINE HOSTCXX
>  export KGZIP KBZIP2 KLZOP LZMA LZ4 XZ ZSTD
>  export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
>
> diff --git a/init/Kconfig b/init/Kconfig
> index 55f9f7738ebb..ecc110504f87 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -86,6 +86,10 @@ config CC_HAS_ASM_INLINE
>  config CC_HAS_NO_PROFILE_FN_ATTR
>         def_bool $(success,echo '__attribute__((no_profile_instrument_function)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
>
> +config MAKE_VERSION
> +       int
> +       default $(shell,$(srctree)/scripts/make-version.sh $(MAKE_VERSION))
> +
>  config CONSTRUCTORS
>         bool
>
> diff --git a/scripts/make-version.sh b/scripts/make-version.sh
> new file mode 100755
> index 000000000000..ce5af96696cc
> --- /dev/null
> +++ b/scripts/make-version.sh
> @@ -0,0 +1,13 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Print the linker name and its version in a 5 or 6-digit form.

The linker?

> +
> +set -e
> +
> +# Convert the version string x.y.z to a canonical 5 or 6-digit form.
> +IFS=.
> +set -- $1
> +
> +# If the 2nd or 3rd field is missing, fill it with a zero.
> +echo $((10000 * $1 + 100 * ${2:-0} + ${3:-0}))
> --


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkGjz-rH8AHudO3dJmSt%2B48FSJ8iT-eCacwyeMhWv909w%40mail.gmail.com.
