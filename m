Return-Path: <clang-built-linux+bncBDYJPJO25UGBBY54WWAQMGQEUTXJ3CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC1831DF04
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 19:20:20 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id m9sf9535656ljp.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 10:20:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613586019; cv=pass;
        d=google.com; s=arc-20160816;
        b=lTgMcpJwmrOunlyCrYlwOo8iEz8QpOyfdT/ju/zjpLqm36M8g1TNSL8dBWom4Lm3JG
         oHURvyiGEP15kh+kXnGNNzfuq3Ys/15PDcAhorJNNFB77aoRP+W5eJN9RdhsMOz3uuwP
         H8xJrKXBBFpRcELMAGU9Va3Yi/qEoAkxGByQz0IwAE1YAJ+VtQbmoAfpY74GyRvt09WC
         4OXPGKFgFVe+N0dX4abw5OtqAnirOLbecMk8Dk0xVJIA+E3XWa/MpJeyhI5CCZaKq8Dl
         p02RTnmgB/iK1pcjkIn1WZipmJS/Mb5RU/AaSZro5I+/dikV3iUjkjpJ7DRxCav7iO5s
         HOhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YFKXnlQkItf5ZAcTfPv/Ih8WlcTyeMkT5kshPiaEzdU=;
        b=B86sISFdD2XEkhjlqM9q18L/4ZMtmLrYZtXMfhcxLjZH5K4atetX+NCOSyjfrXomES
         DIZU0FKf08sBXIgJCX/DqtrArbMc/Am89fb6JDOVjcTZlWIpEk1B9v+JwRmZtQ4xAfVb
         EU4GmVeZ3Nk8gR4v8jv74zCUsGwIXVfUY8jb7Wp+QC4sOXc86g/ofRdhWryCxL5JMUiw
         CW+ZPWK30Fb/N86wzVtGQL42HA8SaERN4cl6Qg3JiIAE5xD30MbQoS/wOn4LgzrmZy0X
         m8kgRK3HzceVyCtJ0KKza9H7zXMBKWciYyEFco2OozpayNF7ZUjWgYEM0PyRXZ8xULgK
         fGog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h7iUpSow;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YFKXnlQkItf5ZAcTfPv/Ih8WlcTyeMkT5kshPiaEzdU=;
        b=PcveQr3yBNEmrZbanQa6C3gOs7XLZJWzniZXw+mMzWUdmNbOwtpEDlZI8vcz7d0LS5
         G4I2o6YEph2iiURuwPz/EgeJCULOLj0G1nz5JY+eYgv/1sVKValbLCu7zFOabPxr5qUn
         VRxFazEwseBtDbhSuGo+CQ4g8/p09imYKB1cZV5TKrnb1eCsq5P/ikm/gwS1ePlmSmgr
         1Pac36ismAskd06OQumlYUgfFyqJdHqat9GyOhwDj+wa/FIMfgbKLnEo7dSKEQq9hJGG
         o/UVgczIgCEQl0fHat1/c48CkjKr3W4rh+gMJmgtKTQRkPa0WIBOrJjempNDlSBTTgjW
         dOww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YFKXnlQkItf5ZAcTfPv/Ih8WlcTyeMkT5kshPiaEzdU=;
        b=AULA8DItVWqct5AZajc1jHSckzHXm+1V43XucjTR03NMZi+m4Gr1wHoqP1aniOtHKw
         +M/s6lt3+0oCuf3CG4iYHBdPDnakiPMso60//6haEl5kL1D0ISWZqW96gQ56RIQYSKIe
         zy/9lp0r6dXTc0oKQB2o1uDGEAUT3ggBq/agZTgqAQh5nsR4VKL/hCDMj1OMmIzl98YV
         /Qh1zGcLywe6FIIw47Zp1PIi/4hhMinrFHPRgd4CPIlH3/OcwAKRhcePmOQzPDYCyMQH
         AdVRgnUAc4haYHEf4m+/7C2qYudEWyBTUX84B7Vlmbk0jWBYLPbd6rKQZ40QcEA7Z5VV
         Invg==
X-Gm-Message-State: AOAM532PC+OmMERwkrAq0z42HKWTJZc85UbwasuP1dyZK/bPgqQKKo70
	FdQfRJNUjcHDDuFxgKgXG00=
X-Google-Smtp-Source: ABdhPJxFa/UxFQABBS8hEgc3x3av0KNEmjodapmLq/+VYCBuqve6Kb6yF+bVP5lyNvhC/r2GLC1FxA==
X-Received: by 2002:a05:6512:2f2:: with SMTP id m18mr103593lfq.89.1613586019552;
        Wed, 17 Feb 2021 10:20:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:480d:: with SMTP id v13ls1382305lfa.0.gmail; Wed, 17 Feb
 2021 10:20:18 -0800 (PST)
X-Received: by 2002:ac2:5548:: with SMTP id l8mr84805lfk.615.1613586018533;
        Wed, 17 Feb 2021 10:20:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613586018; cv=none;
        d=google.com; s=arc-20160816;
        b=ArEzqmuwIbjf1jMHxnJqnoPvqNAgNqhiaTZj1VwlQX1wFC+HJjvshX984f2F5ew3il
         aqmdTXY+/SsOWUtb9zgpB5Ge3dDa+86iiYyk6aYoEjfkPWXujO8JuG3X13SdpmIa5R5L
         RxHC6mm2tPsc0mVV9PO+B9ASORtntsROvTc8tM5AP1Jteg5JuHeTpGtpcxl72UJl5sGe
         R48Xpv86+ScimY66LG4cLNOu5seIYXQdaonRsASD8Dpz5QJRxR9Lf0MPLE1JYK5T6tCn
         F5uBNkjFKJx9xB7AbpLJuRloVqWTKucIhRU7ayQ+265IbTHPNvxgFZmajGK9YaDme3pZ
         37Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Y8i0g9QG9GcfcjV4SfK9KOZfpjS43yyxo3Zx1FaTpHg=;
        b=NYHTvKRipopWWaFldzJyJGIHKNUVTLQUCg0dOUNUiniMf0htz4XmWzeiu7cpBUZ+Ny
         reYew1dU7tr6vSN8PvOz/qUMJYHCsZPO3j6aRg9D0vpOdh7wzYKtCq7H7Sj7VJeXGMPi
         jRjxiPNhK8nJTAXeD2kDRWBJq/tLwObii9HGDw+3vhFp420qg6T967HpaxWlzOMSCBbj
         Tz5Fasan38HBlBLQJtkk861IKqrfZQz12vXL3jluHWrMwjK+yjyuQVQinMh69lvmZhuq
         1772dkMbPRzZtFWXyVzdfAHZ32HEf+ZCCk7V+Hd9YT9PzzKFnfQrf3wsrVw45YoGdRxW
         e9Lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=h7iUpSow;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id g12si93718lfu.13.2021.02.17.10.20.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Feb 2021 10:20:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id d3so23168031lfg.10
        for <clang-built-linux@googlegroups.com>; Wed, 17 Feb 2021 10:20:18 -0800 (PST)
X-Received: by 2002:a19:4013:: with SMTP id n19mr89135lfa.543.1613586018064;
 Wed, 17 Feb 2021 10:20:18 -0800 (PST)
MIME-Version: 1.0
References: <3f61af0eee9b495e8e8c032902d033c5@AcuMS.aculab.com> <20210212195255.1321544-1-jiancai@google.com>
In-Reply-To: <20210212195255.1321544-1-jiancai@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 17 Feb 2021 10:20:06 -0800
Message-ID: <CAKwvOdn7N9dRfjrR0NiE6Dc_f_6PU-_4g1G5uRcoAvnob51ZfA@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: Implement Clang's SLS mitigation
To: Jian Cai <jiancai@google.com>
Cc: Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>, 
	David Laight <David.Laight@aculab.com>, Russell King <linux@armlinux.org.uk>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=h7iUpSow;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
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

On Fri, Feb 12, 2021 at 11:53 AM 'Jian Cai' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:

The oneline of the commit is "ARM: Implement Clang's SLS mitigation,"
but that's not precise. GCC implements the same flag with the same
arguments.  There is nothing compiler specific about this patch.
(Though perhaps different section names are used, see below).

>
> This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on
> -mharden-sls=all, which mitigates the straight-line speculation
> vulnerability, speculative execution of the instruction following some
> unconditional jumps. Notice -mharden-sls= has other options as below,
> and this config turns on the strongest option.
>
> all: enable all mitigations against Straight Line Speculation that are implemented.
> none: disable all mitigations against Straight Line Speculation.
> retbr: enable the mitigation against Straight Line Speculation for RET and BR instructions.
> blr: enable the mitigation against Straight Line Speculation for BLR instructions.
>
> Link: https://reviews.llvm.org/D93221
> Link: https://reviews.llvm.org/D81404
> Link: https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation
> https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/frequently-asked-questions#SLS2
>
> Suggested-by: Manoj Gupta <manojgupta@google.com>
> Suggested-by: Nathan Chancellor  <nathan@kernel.org>
> Suggested-by: David Laight <David.Laight@aculab.com>
> Signed-off-by: Jian Cai <jiancai@google.com>

I observe lots of linker warnings with this applied on linux-next:
ld.lld: warning:
init/built-in.a(main.o):(.text.__llvm_slsblr_thunk_x0) is being placed
in '.text.__llvm_slsblr_thunk_x0'
You need to modify arch/arm64/kernel/vmlinux.lds.S and
arch/arm/kernel/vmlinux.lds.S (and possibly
arch/arm/boot/compressed/vmlinux.lds.S as well) to add these sections
back into .text so that the linkers don't place these orphaned
sections in wild places.  The resulting aarch64 kernel image doesn't
even boot (under emulation).

For 32b ARM:
ld.lld: warning:
init/built-in.a(main.o):(.text.__llvm_slsblr_thunk_arm_r0) is being
placed in '.text.__llvm_slsblr_thunk_arm_r0'
...
ld.lld: warning:
init/built-in.a(main.o):(.text.__llvm_slsblr_thunk_thumb_r0) is being
placed in '.text.__llvm_slsblr_thunk_thumb_r0'
...
<trimmed, but there's close to 60 of these>

And the image doesn't boot (under emulation).

> ---
>
> Changes v1 -> v2:
>  Update the description and patch based on Nathan and David's comments.
>
>  arch/arm/Makefile          | 4 ++++
>  arch/arm64/Makefile        | 4 ++++
>  security/Kconfig.hardening | 7 +++++++
>  3 files changed, 15 insertions(+)
>
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 4aaec9599e8a..11d89ef32da9 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -48,6 +48,10 @@ CHECKFLAGS   += -D__ARMEL__
>  KBUILD_LDFLAGS += -EL
>  endif
>
> +ifeq ($(CONFIG_HARDEN_SLS_ALL), y)
> +KBUILD_CFLAGS  += -mharden-sls=all
> +endif
> +
>  #
>  # The Scalar Replacement of Aggregates (SRA) optimization pass in GCC 4.9 and
>  # later may result in code being generated that handles signed short and signed
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 90309208bb28..ca7299b356a9 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -34,6 +34,10 @@ $(warning LSE atomics not supported by binutils)
>    endif
>  endif
>
> +ifeq ($(CONFIG_HARDEN_SLS_ALL), y)
> +KBUILD_CFLAGS  += -mharden-sls=all
> +endif
> +
>  cc_has_k_constraint := $(call try-run,echo                             \
>         'int main(void) {                                               \
>                 asm volatile("and w0, w0, %w0" :: "K" (4294967295));    \
> diff --git a/security/Kconfig.hardening b/security/Kconfig.hardening
> index 269967c4fc1b..9266d8d1f78f 100644
> --- a/security/Kconfig.hardening
> +++ b/security/Kconfig.hardening
> @@ -121,6 +121,13 @@ choice
>
>  endchoice
>
> +config HARDEN_SLS_ALL
> +       bool "enable SLS vulnerability hardening"
> +       def_bool $(cc-option,-mharden-sls=all)

This fails to set CONFIG_HARDEN_SLS_ALL for me with:
$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- make LLVM=1 LLVM_IAS=1
-j72 defconfig
$ grep SLS_ALL .config
# CONFIG_HARDEN_SLS_ALL is not set

but it's flipped on there for arm64 defconfig:
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
-j72 defconfig
$ grep SLS_ALL .config
CONFIG_HARDEN_SLS_ALL=y

What's going on there?  Is the cc-option Kconfig macro broken for
Clang when cross compiling 32b ARM?  I can still enable
CONFIG_HARDEN_SLS_ALL via menuconfig, but I wonder if the default
value is funny because the cc-option check is failing?

> +        help
> +          Enables straight-line speculation vulnerability hardening
> +         at highest level.
> +
>  config GCC_PLUGIN_STRUCTLEAK_VERBOSE
>         bool "Report forcefully initialized variables"
>         depends on GCC_PLUGIN_STRUCTLEAK
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn7N9dRfjrR0NiE6Dc_f_6PU-_4g1G5uRcoAvnob51ZfA%40mail.gmail.com.
