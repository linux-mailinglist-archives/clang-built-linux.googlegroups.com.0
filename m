Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOX5UDXQKGQEOARTH4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E61113808
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Dec 2019 00:18:20 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id t17sf1086088ioi.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Dec 2019 15:18:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575501499; cv=pass;
        d=google.com; s=arc-20160816;
        b=PXDcHh4KY3xs6sI1xUlbuefjFHUd1B/2SQDJWdsDisGldaos3kLtgK9M4Hf98MwKwH
         pzVfcVriHRl2KFUhHdQXAFKAPYy+p+cyUjzeOp9MdlRH7qKmqFXFAIZN4dMAfjIfqrlC
         18UyBMxBwRdAt0igRxw/phI65h4PhwPdTb0rlvb8j2i98wFe1MmryLofTRZilec4Y4YI
         SfTr2vbBpQ2GIFnB1hil+J9GlP8n8fMjbmwe9DHItjGAHG86B0j6d+/dAGzVse6AGW80
         fw1Yl9LsO3OGAh1kNl9FdhZ8r9wdiYu01yjgB7ywS4ZPsiIZSSzOJFG6NYI9DqSE3AhR
         BSvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yCZVeodDzOGuLaNbVzJ4MnfrZn/EWpjiic5b8Pji3xI=;
        b=Ex29h1gFGxu66nPMxf8mfJPTtWPaY1QLW4y6OcaHip7Y6iM6xZFtdhhG3jJ9chWK+A
         JdrEKRAf4PkzWGAnff0wKG0q4Ip9eLLe8bagyizSuPdrwFDUqWnI9HUbepXmGzOmpt9N
         jkV0hzlaL1F1GgYtxpZ8UURYqc6gkiY3Hj7KEHsrW9vQbvkB+uhlpjUp9jPNppczYTHk
         ACaOEho+yVsnHDrK7bq2J+gfXqqrP9dtq8yrWhPIIVrMNTWTJZJHYiVmq40icZgTPnwE
         1z60ZrpZ+jDqCH08WPmbHCwFLx65BJfjZeb3M2m2v0t8vvgG2FY9HU4GaqIRfBnLmoas
         XT7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="MtSlA/Og";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yCZVeodDzOGuLaNbVzJ4MnfrZn/EWpjiic5b8Pji3xI=;
        b=m4LIa8A5luxxZGZAFAiKFqhOZZQWv2XbNCxkkS0G6N+iDkBijy0S5X80u1zmHHk8Vi
         d4gbd6q7gxPYpg9z2mowjtVLaC6UdmjI2qcDkVQlrk1tmzG2hgCbW02HKQE9bs/+7nE+
         hS1Tz+ZZUPa0m/4RdAoZjQFlPRbApZ3Y9C6qQRcy1Coov6fXXdll6PmpNkoV/DN3Zq3c
         xvegbsYl8W5EOuNFjdJa/9leax5GqIoYjHKZtBgVXQEgoXKam7XS8nkCvG8g9j7oeT6V
         4H0MVLJEa8eB376ZnWIly6jXFBi8Gv5FNRhKtdMegCbpoZqmZUQocpT1L3Jgnb+UpJ/E
         Bafw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yCZVeodDzOGuLaNbVzJ4MnfrZn/EWpjiic5b8Pji3xI=;
        b=jYn2mjxmA2TRT3kuaV8rEp+1ZKJxk0fVHXrNDTn3k8Iio+IDlRgg6Bgt/MGX/q4a46
         L45DKYO2a8P2QB4CeQ8hqUf7ebJgEj3gJfYRzEW2caz95DpIzZeS9sntI/fZWGbzKSts
         T8yooNec1yJjs1JWlf1Mbg3/+8ic4m0OdoY3ZvYtiNsg/petlNreq5SX0+xBcNZSir8t
         B8fs5Xmo47kQ3N7pF0iPXu2Vhb1iuyr991Iq80LcJhm9jZ/gIhruKj/SW3CaMa1JTn7+
         WGLV25kfGdFIJiQq7DhNYV7w21uhyXgoOcHKrDZfYL6z1NaFXjKonpNcE6Yc2QpCmbc6
         vCJg==
X-Gm-Message-State: APjAAAWHN+92sBveaXDzZdHaOkKMWJexww4/V2o7JheJFHfKchPUDski
	jjscTUgmEOVifFIC96vhyfY=
X-Google-Smtp-Source: APXvYqyh4m21gq8ITpMGEu7hpYnVJm4UN91hY4LN9Crg+7RE1DwBHd16eNxeEY2/l7KUGaC6hGtVtA==
X-Received: by 2002:a6b:f60e:: with SMTP id n14mr3990344ioh.147.1575501498998;
        Wed, 04 Dec 2019 15:18:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3a1d:: with SMTP id h29ls211598ila.9.gmail; Wed, 04 Dec
 2019 15:18:18 -0800 (PST)
X-Received: by 2002:a92:dd8e:: with SMTP id g14mr5698827iln.129.1575501498616;
        Wed, 04 Dec 2019 15:18:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575501498; cv=none;
        d=google.com; s=arc-20160816;
        b=Ut4fWkqpd8H0+WCFz9PtIU9a0LW87jO8EY8SIC5DXJHDmjLXq+kMNllk8vG+kCsGGg
         WnAROweC20ArYjLj8gvGBHhVLesTPra6FftYYfy7HXNDmYbJnfedA0QyVTYhVHLM9NXC
         ndN9l4aY4o5cvULXWprKTxagEtlhIJIlxc0IeDotmhCFZZ4PbBBWEGPFDzRKUR7GRkRV
         IS7GNqd5eawqs/ND5zaDuMY7tx77k+imTFlliNyiBD8SSPayc/Nd2Y8xRl6qNVCxy28S
         Exix6Kpp/JHjyrOO40zW4NL68o6gnMhkISs3oluw3HSXA1+F9QuU1kBFwNRR5LWyptlF
         D5wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bMFgfwVDLyNfP+n9tPTAj8QY4bC2HsMSOAGKRA9gakw=;
        b=0Aq77A5IFj4s78mGIIGzxcTLe44OKGQCXaKMQvf2gVIgbNT/J2+nGxqB4LrzO9sqRu
         4kSsRYNO5VfckgylY9EBRfjob2w3KifgZIAEMzII2+RauahYpbIF1ylLy2yBxJrRCn9C
         Hq/fcfdidtPsivL3cOurY9onP/bH36U5NcK1nSx8sw+jpabTEtWYrNzugIHSC1R9KrBa
         Y4ix/mPXLqLXmOaJid/eT036Xq+Lbdy+IllHNuYp+q/gDckdlGt2L23hRmVuxA3RhPgM
         3mZp2Pf13KqSbQa4Sc+t2wpIGaobgVlHwfbziG/moIhsPdyanq74mEmUmf/bl77m1OAU
         xP5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="MtSlA/Og";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id n202si316858iod.3.2019.12.04.15.18.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2019 15:18:18 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id ay6so388938plb.0
        for <clang-built-linux@googlegroups.com>; Wed, 04 Dec 2019 15:18:18 -0800 (PST)
X-Received: by 2002:a17:902:8216:: with SMTP id x22mr5812405pln.179.1575501497559;
 Wed, 04 Dec 2019 15:18:17 -0800 (PST)
MIME-Version: 1.0
References: <20191204225446.202981-1-dima@golovin.in>
In-Reply-To: <20191204225446.202981-1-dima@golovin.in>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Dec 2019 15:18:05 -0800
Message-ID: <CAKwvOdm-bhuJMRRN3tyNdb88+_TFd4m3b-7gX0-91VG4djzp+Q@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: kbuild: allow readelf executable to be specified
To: Dmitry Golovin <dima@golovin.in>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Bruce Ashfield <bruce.ashfield@gmail.com>, 
	Ross Philipson <ross.philipson@oracle.com>, Ross Burton <ross.burton@intel.com>, 
	Chao Fan <fanc.fnst@cn.fujitsu.com>, Daniel Kiper <daniel.kiper@oracle.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, tony.luck@intel.com, 
	fenghua.yu@intel.com, linux-ia64@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="MtSlA/Og";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Wed, Dec 4, 2019 at 2:55 PM Dmitry Golovin <dima@golovin.in> wrote:
>
> Introduce a new READELF variable to top-level Makefile, so the name of
> readelf binary can be specified.

Thanks for the patch!

This is a general cleanup that should improve cross compilation
(readelf should be treated as ever binary in the list like
objcopy/objdump/etc), and allow us to use binutils substitutes for
readelf that aren't called `readelf` (ie. `llvm-readelf`).

>
> Before this change the name of the binary was hardcoded to
> "$(CROSS_COMPILE)readelf" which might not be present for every
> toolchain.
>
> This allows to build with LLVM Object Reader by using make parameter
> READELF=llvm-readelf.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/771
> Signed-off-by: Dmitry Golovin <dima@golovin.in>
> Cc: Nick Desaulniers <ndesaulniers@google.com>

No need to explicitly CC me; I monitor our list like a hawk.

> ---
>  Makefile                          | 3 ++-
>  arch/x86/boot/compressed/Makefile | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 999a197d67d2..612a55d25442 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -414,6 +414,7 @@ STRIP               = $(CROSS_COMPILE)strip
>  OBJCOPY                = $(CROSS_COMPILE)objcopy
>  OBJDUMP                = $(CROSS_COMPILE)objdump
>  OBJSIZE                = $(CROSS_COMPILE)size
> +READELF                = $(CROSS_COMPILE)readelf
>  PAHOLE         = pahole
>  LEX            = flex
>  YACC           = bison
> @@ -472,7 +473,7 @@ GCC_PLUGINS_CFLAGS :=
>  CLANG_FLAGS :=
>
>  export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
> -export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE PAHOLE LEX YACC AWK INSTALLKERNEL
> +export CPP AR NM STRIP OBJCOPY OBJDUMP OBJSIZE READELF PAHOLE LEX YACC AWK INSTALLKERNEL
>  export PERL PYTHON PYTHON2 PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
>  export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
>
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index aa976adb7094..1dac210f7d44 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -103,7 +103,7 @@ vmlinux-objs-$(CONFIG_EFI_MIXED) += $(obj)/efi_thunk_$(BITS).o
>  quiet_cmd_check_data_rel = DATAREL $@
>  define cmd_check_data_rel
>         for obj in $(filter %.o,$^); do \
> -               ${CROSS_COMPILE}readelf -S $$obj | grep -qF .rel.local && { \
> +               $(READELF) -S $$obj | grep -qF .rel.local && { \

Grepping the kernel sources for `READELF`, it looks like
arch/ia64/Makefile makes the same mistake. Would you mind fixing both
cases in the same patch (v2)?  I'm also curious about it's use in
arch/ia64/scripts/unwcheck.py, and scripts/faddr2line. +ia64
maintainers and list.

I think if you simply remove the assignment on line 17 of
arch/ia64/Makefile you should be fine.

>                         echo "error: $$obj has data relocations!" >&2; \
>                         exit 1; \
>                 } || true; \
> --
> 2.23.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm-bhuJMRRN3tyNdb88%2B_TFd4m3b-7gX0-91VG4djzp%2BQ%40mail.gmail.com.
