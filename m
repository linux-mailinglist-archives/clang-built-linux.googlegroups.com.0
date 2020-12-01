Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB5OFS37AKGQEE3GQD4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C152C94E6
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 02:57:11 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id s128sf145241qke.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 17:57:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606787830; cv=pass;
        d=google.com; s=arc-20160816;
        b=AFb8w+Z10aJAzMTFy3gxnw0U8O9DrkZqen9rwXOcZSp43WuMOkHc5IvmulbYsyhacg
         6hDQSAErpRKrpXVtHfDVbXiyljQtP32zeNrhpWXOrEcSAkRKQ2yAEioNtT8rtfpWuzkv
         oTh6ql5zj26FxelovX7PRBkYijMZPVQdovufDuu3pqBP8AuXH7s/JMFBjWDOM6pZwqYV
         xFe2AE4SSie8kXEgIuzc/XB9Q4RLs3qz5E8OREH+FzFuEklHPZn9gSE7SKorZ0wjP+LK
         ik0QsokDBDNhuYIrur1VZ2HyL3SyDUptOqyB7ZdQaPrKmkdS1skgIBM36sRT8k/onCkZ
         bhEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=TaoT2MANVdrhBD/ufT6ootq5oUMdSlKtGpkCugqe1hg=;
        b=kA4n3YUKHsWiJ9j0ZG5OAF9EdqDuiIuq/36KInjZ9opBzt50+sQleWbIK+qD1/S/+e
         wOQJojJrBfgwmxQ1Mx81cJtUtrYfK3wGJq4bItyXMCuBTYRLbs37eT1qG2TJ2wsC6BVY
         5WFEUjn0Zj5hJaY29/xJYt7sEL4K1fqFttw5m0K2X8vgFOsmzpZrBSIhY9f47KlIJ/mA
         k/EjCJAoGGcdntZ4uMGnfLygg95XemmMubNP/3r0VPM7LFLYc2Wvg05PCt3I1aT5hAAk
         qY93ISy8kWgwLYvMtaNSD3HhJKb6k4UMbwPfXQokFg9mAlFxpb4PaY2LO8/fr4aj6wAi
         Z5Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=o59lXxne;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TaoT2MANVdrhBD/ufT6ootq5oUMdSlKtGpkCugqe1hg=;
        b=Vc6Q42mkMF7GW4Q+6z/k/KGGu4IIJfDFskfYMiO/5Vh/fXZL3f9aWnSP1X6Lkt45Fb
         KJBQ4pBtbJRMJ2XbTLOz9c5HNpLtBIvPhQMgMzLYtAhQhl7VKgHsmLWTGO+TCuUvWFwD
         EZP3z6SxNce7gRK01o7NCrgpQGDLz/XS0zZdjsbgppN1mDfX4dE9yeUMzihMTStfJ4PL
         x+u4jtfhdrCwLTMRFY09jboG7YmS7530qOfP/gV7OLq6pS/leVCn2I0ndTS5uKFMjHsc
         xUxVNOHwYSqRwvQ815VHUgLQFGfrRcn8lPD0y/ueg3ZU6bJs6Oe5tcEp6UzS0tz7mI6Q
         yyjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TaoT2MANVdrhBD/ufT6ootq5oUMdSlKtGpkCugqe1hg=;
        b=csNb6IemPdKyQGuNkxBZ4BsGm45aKwSi+VKLtocr8kNLs7IgbW+wsTbnaGDMeXEtyl
         /S7kLSp91hwISbZLNYSNEJY/rC0dl05IZUoG95Ue5sG1LsOP+Ut1Pwgh2C494Qd+T9xC
         /DfDTzKb+ptAu653NinK5nbiEYrkr8d8plvmv8DQcqH70K9bt+FtHfLvBFf4NaImfThp
         b0cKmcq8AoaVPT1sl1AAR80r/B83LfwD14M5UjDhkFpRWvPDkT4H2JXNey9z9g579c5I
         mDMCpXZNPC30d5dyJnXORKCcydL+ia/T1SnDsr9RK6/08zZNUA9o5l27keAvOr8LE9nj
         9q4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/n6peGgZASDQoofHvxcdj0J1WlwyF2WJYUBWmbqsbnswOPWv6
	I6B74PNGurhx1CH7NVlTTYc=
X-Google-Smtp-Source: ABdhPJwAZhecRNGMe3Akb3hg2/COL4DYlUBRYxe0At6RrHzsJvrYEdvSpVeREHv3IlE79nq8D17nCg==
X-Received: by 2002:a37:4796:: with SMTP id u144mr598006qka.235.1606787829758;
        Mon, 30 Nov 2020 17:57:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:556e:: with SMTP id w14ls31952qvy.0.gmail; Mon, 30 Nov
 2020 17:57:09 -0800 (PST)
X-Received: by 2002:a0c:bf44:: with SMTP id b4mr454024qvj.30.1606787829313;
        Mon, 30 Nov 2020 17:57:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606787829; cv=none;
        d=google.com; s=arc-20160816;
        b=l75hAzzofYhZn57yE6M3G4q2CUA78CCzCOFtQb+XgkLJzxEZeR+34DvCy7H7l2acVC
         yVwcwLD0Y1bha1q4dKhMMIQXrt7zF0d6a4mxe6+bhtplWf8A/lke4JeHyIK14wwh0UWx
         vKLviZhR0+7cQ0I6GVbjY/BPAftoXVs6eXxzzonosUodorIBFHZ8M9Xi7aFQmRWkJAEM
         4A0Vb1TilHpUQ4sumgJvUkk+TIJCFRO9CKE8jEMDKJJUY2HTOE3MoEQ5LqWGfR1rFis6
         ktVpAHBcJIQqvJ7nsZGqDm94o/TchB0rf0n1dB54fDLACOk0jlw65AhZfWFar0r75tV/
         17Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=eBmxAR7K2Jbfp4KHt3489WMG4z7PgIgZCJ+eBjBop4A=;
        b=VTYpHHwXgKVaD9mkDWP6W6pBQMklCg330NgMQGZf1Fy1EF8fQND2o0ZKU4KdXJGB7k
         5i01iTwfbP2Uw1w52xd8O0L5sbNZgP7ocgrnk7b//Ewys59g6ddgda6xSzcy2MmJe89G
         FJfJCfhmlW/Ko+NRuY6EbG0chHZYvDLRdJ0meaEqdhpozreHghDXxETKSMhFMfXPIHGK
         oRwXY1aFfUUVv/3h7j2JkMCwukcWbbQe3kWs6oLL8sTooxftf0Wv5rHuulo9ZYy02CRR
         ipyIDvo5cvvEi3bsz7bj+Vt+cGyGYDgnNw/ev3rECvbAOwnp3J4cW3Y3MsYLWPdU7GK3
         WdfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=o59lXxne;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id o23si26510qtm.3.2020.11.30.17.57.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 17:57:09 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 0B11us2T001464
	for <clang-built-linux@googlegroups.com>; Tue, 1 Dec 2020 10:56:55 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 0B11us2T001464
X-Nifty-SrcIP: [209.85.216.43]
Received: by mail-pj1-f43.google.com with SMTP id l23so255507pjg.1
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 17:56:54 -0800 (PST)
X-Received: by 2002:a17:902:6949:b029:da:17d0:d10f with SMTP id
 k9-20020a1709026949b02900da17d0d10fmr453041plt.71.1606787813943; Mon, 30 Nov
 2020 17:56:53 -0800 (PST)
MIME-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com> <20201104005343.4192504-5-ndesaulniers@google.com>
In-Reply-To: <20201104005343.4192504-5-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 1 Dec 2020 10:56:17 +0900
X-Gmail-Original-Message-ID: <CAK7LNARx36Go6pKsxh__e72RS-U4T0UJiVLXKW-gUfBHRzDzJA@mail.gmail.com>
Message-ID: <CAK7LNARx36Go6pKsxh__e72RS-U4T0UJiVLXKW-gUfBHRzDzJA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] Kbuild: implement support for DWARF v5
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jakub Jelinek <jakub@redhat.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-toolchains@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>, Dmitry Golovin <dima@golovin.in>,
        Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=o59lXxne;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Nov 4, 2020 at 9:54 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> DWARF v5 is the latest standard of the DWARF debug info format.
>
> Feature detection of DWARF5 is onerous, especially given that we've
> removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> support.  GNU `as` only recently gained support for specifying
> -gdwarf-5.
>
> The DWARF version of a binary can be validated with:
> $ llvm-dwarfdump vmlinux | head -n 5 | grep version
> or
> $ readelf --debug-dump=info vmlinux 2>/dev/null | grep Version
>
> DWARF5 wins significantly in terms of size when mixed with compression
> (CONFIG_DEBUG_INFO_COMPRESSED).
>
> 363M    vmlinux.clang12.dwarf5.compressed
> 434M    vmlinux.clang12.dwarf4.compressed
> 439M    vmlinux.clang12.dwarf2.compressed
> 457M    vmlinux.clang12.dwarf5
> 536M    vmlinux.clang12.dwarf4
> 548M    vmlinux.clang12.dwarf2
>
> Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Suggested-by: Jakub Jelinek <jakub@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile                          | 1 +
>  include/asm-generic/vmlinux.lds.h | 6 +++++-
>  lib/Kconfig.debug                 | 8 ++++++++
>  scripts/test_dwarf5_support.sh    | 9 +++++++++
>  4 files changed, 23 insertions(+), 1 deletion(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
>
> diff --git a/Makefile b/Makefile
> index e23786a4c1c7..9056bac0ff85 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -828,6 +828,7 @@ endif
>
>  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
>  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
>  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
>  ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
>  # Binutils 2.35+ required for -gdwarf-4+ support.
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index b2b3d81b1535..76ce62c77029 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -829,7 +829,11 @@
>                 .debug_types    0 : { *(.debug_types) }                 \
>                 /* DWARF 5 */                                           \
>                 .debug_macro    0 : { *(.debug_macro) }                 \
> -               .debug_addr     0 : { *(.debug_addr) }
> +               .debug_addr     0 : { *(.debug_addr) }                  \
> +               .debug_line_str 0 : { *(.debug_line_str) }              \
> +               .debug_loclists 0 : { *(.debug_loclists) }              \
> +               .debug_rnglists 0 : { *(.debug_rnglists) }              \
> +               .debug_str_offsets      0 : { *(.debug_str_offsets) }
>
>  /* Stabs debugging sections. */
>  #define STABS_DEBUG                                                    \
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 03c494eefabd..c5b54ba51060 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -274,6 +274,14 @@ config DEBUG_INFO_DWARF4
>           It makes the debug information larger, but it significantly
>           improves the success of resolving variables in gdb on optimized code.
>
> +config DEBUG_INFO_DWARF5
> +       bool "Generate DWARF5 debuginfo"


The choice menu looks like follows:

(X) Generate DWARF v2 debuginfo
( ) Generate dwarf4 debuginfo
( ) Generate DWARF5 debuginfo


Upper / Lower case inconsistency.










--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARx36Go6pKsxh__e72RS-U4T0UJiVLXKW-gUfBHRzDzJA%40mail.gmail.com.
