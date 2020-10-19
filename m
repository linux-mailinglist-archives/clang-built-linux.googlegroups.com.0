Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYOPW76AKGQENZEZHVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2210B292E66
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 21:24:19 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id s14sf144157vsi.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Oct 2020 12:24:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603135458; cv=pass;
        d=google.com; s=arc-20160816;
        b=GUBfqdoU2gM7L/+VppBd4JUYuTyjB4tCrZ2WsaoeuRgZ08mFumJh3MEqDr+A5HMYAa
         VJ7dLKmkyR6YvL85JxXSHtqeE6I4j6xrGDTJs7iTneOaFXIGVtdxoqYBYvqrNZb7JWzm
         07uet3reuxln+WpSgNXOhU8/4kR2V6kwc8q07O4jlbTdFUtpMSrow2wqohWb+P4eTo0f
         VYnERQD2vRo3bhmNekW6PA7clnP0HgEqyKmNSiHhL5NRhEFntmuMocVVTPPjV1EtKwCj
         Lby9ypC/xdrkQJLF6I0uxaZ5yWcvHEBG8asipxdkez9gU3h1Jw7FlZHCHdh7Cko1TLCb
         NBWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=DDODqemF5rWnugSYBDisv22vP+Rbo9saIVJPuhl3jTU=;
        b=d//1tTbp1wLza4L0U334EqkwQrBbK1c1LkhKbYZsYvCz28QUyCrvsfgUcsO2+qlClk
         4Bnh267XRrq8jBWMqVlrEs7VpVpH2zeVsD8pK3N+gfIW2jNuPlsVQXwfSIB04EiKH0mV
         omAzzjFsF3Bsw6jeYA734p8j/ZKpp04+ngL6H2zEX5b02rA/QAQLLAC90jsdgbFC85+h
         4nCOw6Mp+0GAiaXiTq/y8vvDWMww3C8ggx6tFK0BpWFXknlUhUTIUuAYjX81/mfZFYWL
         pRe2Oph1JvQJT5bFRaNS0rX5vBYddEXOjamybmsTN0+2ipXXQqPswu319pJm6u5CYKuI
         w3Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ju2ohyzm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DDODqemF5rWnugSYBDisv22vP+Rbo9saIVJPuhl3jTU=;
        b=sBnpkUuTjJRm7XSUQYbDBousiU5jJPLBabrXFT6PagSMNQaAtnCfDSf6YHKiLpN3w1
         OSTH2J4n3YiS+e7abLU5ZTyHDoMXJ0rgaFTgduu2X3GaIp6KyZYe1vaccFpmxjf4wfcM
         0DlyR/rDhJBf6c++gWRJwXrWukKFue21BN62O0MrxjhMVj3iGuo91TxgiKXHP3fJVFem
         9W7CpKP1FIygUpS6KOzJpX3QbNJQ0gqq4tCFSK724WtfwWgdpJNepYUJXh+FxL0mXg6O
         nYghLgL5Y5isFgBhm9hppKEjVllliWaeSoD/FVhgrk+/LC9mG6cdd+jOnSx3mDfSrebe
         dWGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DDODqemF5rWnugSYBDisv22vP+Rbo9saIVJPuhl3jTU=;
        b=PTUnZVNUFlQDFtxUIDHqyIdqt4j8WxkiRygA72sKLMd51tgTON4ThaCC7QyGZET6I0
         Q2nh7LthmLKTy/atatPiGp+b3wVeZXCsWLVsLALr2gR49wb/9L+WXGVP/LnQsL1DZQza
         gLMOv4OqjSFJ5SxIpsBIUGtZMnzU1g/sAWSpUUe6lHsMhaA+LdlUaTLz4TXe0rRsmCNF
         VLiXyaWXdd9VlZbQZc/pEgcSCGrxffmYLwULAxLgUYovdGx634JVP19mminq02mzGGL0
         7d7uRcSAW26LqyKtrCC8/43tCyNnKZdoD+KPESgdWvGpdyCNzemPGug2X21ju0qTcUyV
         Ql3w==
X-Gm-Message-State: AOAM532K0nxvrLUpUXVLPlIL6aIMihc2ks5pjGK7JWFfYAAsJViIQTwG
	dvRbXxhnf9hzBwqoNO7js2w=
X-Google-Smtp-Source: ABdhPJzJ1Q9orRat3ROBHTFV0/FLHhbx2MioPnJmgySKkx1EY0dIY3taZ20tu4ohb9bUbmoqRC+5hQ==
X-Received: by 2002:a67:c989:: with SMTP id y9mr1412760vsk.39.1603135458042;
        Mon, 19 Oct 2020 12:24:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:23c7:: with SMTP id 65ls78340uao.7.gmail; Mon, 19 Oct
 2020 12:24:15 -0700 (PDT)
X-Received: by 2002:ab0:5b55:: with SMTP id v21mr544309uae.65.1603135455006;
        Mon, 19 Oct 2020 12:24:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603135455; cv=none;
        d=google.com; s=arc-20160816;
        b=Xi6Fk9S+OlPrsR9TT2yy3TfyewnZzzMzPIPoQ26Xdmj/cuUAYuguCCPXV9JkqNYJIQ
         coyT1FYMf1o9t0cmKH2xsJuC7Mh1e0UT6BIxAwCn7/wr7EESkJBNTI/3Ch/xn0UyLYwQ
         cP2GJ5pN9FP6AeZt4MCIifuDFRyfUcIIC+0XEmhmYdHPkSpSYuo5iYcAEV7ro6HZeote
         MOnNaxUc3xJ5tHRssG5yKFZ/EEFYtk+G6JJTBxgbNPjmrEtxUUCR380+zAJlobOYjqL0
         RDYwEMqwE2jwkFlqbUu70+MBAHYTeuWnYn0EqkvGESBbCcF80Vt0tqeMCGY4ua0T6spF
         Xcaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uIfWuzz/Oi2OkmAg7QQj+om01xgjYQC13tivpsY4ap0=;
        b=SoocUsS60nBz6fAv9uGCyU0tkAK/9gLeOVwV8Si7ZAprpmK9dYRrmCTwSH4BlfVbmR
         bp0eypq7k3aG/LG/rXylQYWKaEB+UlWhFqw50Eu+uPkto7TcAyQ9Ly60SHfsYlLP0vCE
         zkAoPghCjEDbAMzEwxZnj6ElhEw3t7eHy68IV+xC8nKBKBsw84deA2omaOGB6cE0nmiU
         rjTpJ+pf5IQ6P+1sD+Wxqe7dwYGkldImdOCQcR9r/fn2NbGDtarsPP/gMRChaoyUIw26
         lsOTvfB7on1T64q9Iqz/R3UEfWH6cRsQ0T2uRQnmAfpQPqThtwpBVMeZ18hsy1sv1sFc
         AlrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ju2ohyzm;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id e21si78327vsj.2.2020.10.19.12.24.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Oct 2020 12:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id lw2so341197pjb.3
        for <clang-built-linux@googlegroups.com>; Mon, 19 Oct 2020 12:24:14 -0700 (PDT)
X-Received: by 2002:a17:902:c40b:b029:d3:def2:d90f with SMTP id
 k11-20020a170902c40bb02900d3def2d90fmr1361931plk.29.1603135453759; Mon, 19
 Oct 2020 12:24:13 -0700 (PDT)
MIME-Version: 1.0
References: <20201017002500.503011-1-palmerdabbelt@google.com>
In-Reply-To: <20201017002500.503011-1-palmerdabbelt@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 19 Oct 2020 12:24:02 -0700
Message-ID: <CAKwvOdnsRHA1WMb7OWi-jV662xLrBBBZ=zBbB1gvfpBqVFeSfQ@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Fix the VDSO symbol generaton for binutils-2.34+
To: Palmer Dabbelt <palmerdabbelt@google.com>
Cc: linux-riscv@lists.infradead.org, kernel-team <kernel-team@android.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ju2ohyzm;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Fri, Oct 16, 2020 at 5:44 PM 'Palmer Dabbelt' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> We were relying on GNU ld's ability to re-link executable files in order
> to extract our VDSO symbols.  This behavior was deemed a bug as of
> binutils-2.34 (specifically the binutils-gdb commit a87e1817a4 ("Have
> the linker fail if any attempt to link in an executable is made."),
> which IIUC landed in 2.34), which recently installed itself on my build
> setup.
>
> The previous version of this was a bit of a mess: we were linking a
> static executable version of the VDSO, containing only a subset of the
> input symbols, which we then linked into the kernel.  This worked, but
> certainly wasn't a supported path through the toolchain.  Instead this
> new version parses the textual output of nm to produce a symbol table.
> Both rely on near-zero addresses being linkable, but as we rely on weak
> undefined symbols being linkable elsewhere I don't view this as a major
> issue.
>
> Fixes: e2c0cdfba7f6 ("RISC-V: User-facing API")
> Cc: stable@vger.kernel.org
> Cc: clang-built-linux@googlegroups.com
> Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>

Ah, I do see a build failure to link the vdso with:
$ riscv64-linux-gnu-ld --version
GNU ld (GNU Binutils for Debian) 2.34.90.20200706

riscv64-linux-gnu-ld: cannot use executable file
'arch/riscv/kernel/vdso/vdso-dummy.o' as input to a link

This patch fixes that for me, but there's a problem related to related
to `nm` below.

After this, there's two other things we might want to fix up related
to the build of the vdso:
1. it looks like $(CC) is being used to link the vdso, rather than
$(LD).  While it's generally fine to use the compiler as the driver
for building a linked object file, it does not respect the set $(LD).
`-fuse-ld=` needs to be passed to invoke the linker the user
specified.  See also:
https://lore.kernel.org/linux-kbuild/20201013033947.2257501-1-natechancellor@gmail.com/T/#u
(this has popped up in a few places when trying to do hermetic builds
with LLD).
2. I observe the warning when building with clang: `argument unused
during compilation: '-no-pie' [-Wunused-command-line-argument]`. IIRC,
the top level Makefile sets `-Qunused-arguments` for builds with
clang.  `cmd_vdsold` may need that, but it's curious why it's unused
and makes me wonder why/if `-no-pie` is necessary?  That also might be
fixed by fixing 1.

> ---
>  arch/riscv/kernel/vdso/.gitignore |  1 +
>  arch/riscv/kernel/vdso/Makefile   | 19 +++++++++----------
>  arch/riscv/kernel/vdso/so2s.sh    |  7 +++++++
>  3 files changed, 17 insertions(+), 10 deletions(-)
>  create mode 100755 arch/riscv/kernel/vdso/so2s.sh
>
> diff --git a/arch/riscv/kernel/vdso/.gitignore b/arch/riscv/kernel/vdso/.gitignore
> index 11ebee9e4c1d..3a19def868ec 100644
> --- a/arch/riscv/kernel/vdso/.gitignore
> +++ b/arch/riscv/kernel/vdso/.gitignore
> @@ -1,3 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  vdso.lds
>  *.tmp
> +vdso-syms.S
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index 478e7338ddc1..2e02958f6224 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -43,19 +43,14 @@ $(obj)/vdso.o: $(obj)/vdso.so
>  SYSCFLAGS_vdso.so.dbg = $(c_flags)
>  $(obj)/vdso.so.dbg: $(src)/vdso.lds $(obj-vdso) FORCE
>         $(call if_changed,vdsold)
> +SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
> +       -Wl,--build-id -Wl,--hash-style=both
>
>  # We also create a special relocatable object that should mirror the symbol
>  # table and layout of the linked DSO. With ld --just-symbols we can then
>  # refer to these symbols in the kernel code rather than hand-coded addresses.
> -
> -SYSCFLAGS_vdso.so.dbg = -shared -s -Wl,-soname=linux-vdso.so.1 \
> -       -Wl,--build-id -Wl,--hash-style=both
> -$(obj)/vdso-dummy.o: $(src)/vdso.lds $(obj)/rt_sigreturn.o FORCE
> -       $(call if_changed,vdsold)
> -
> -LDFLAGS_vdso-syms.o := -r --just-symbols
> -$(obj)/vdso-syms.o: $(obj)/vdso-dummy.o FORCE
> -       $(call if_changed,ld)
> +$(obj)/vdso-syms.S: $(obj)/vdso.so FORCE
> +       $(call if_changed,so2s)
>
>  # strip rule for the .so file
>  $(obj)/%.so: OBJCOPYFLAGS := -S
> @@ -68,11 +63,15 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
>  # Make sure only to export the intended __vdso_xxx symbol offsets.
>  quiet_cmd_vdsold = VDSOLD  $@
>        cmd_vdsold = $(CC) $(KBUILD_CFLAGS) $(call cc-option, -no-pie) -nostdlib -nostartfiles $(SYSCFLAGS_$(@F)) \
> -                           -Wl,-T,$(filter-out FORCE,$^) -o $@.tmp && \
> +                           -Wl,-T,$(filter-out FORCE,$^) -o $@.tmp -Wl,-Map,$@.map && \
>                     $(CROSS_COMPILE)objcopy \
>                             $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
>                     rm $@.tmp
>
> +# Extracts
> +quiet_cmd_so2s = SO2S    $@
> +      cmd_so2s = $(CROSS_COMPILE)nm -D $< | $(src)/so2s.sh > $@

This should use `$(NM)` rather than `$(CROSS_COMPILE)nm` which
hardcodes the use of GNU nm from GNU binutils.

> +
>  # install commands for the unstripped file
>  quiet_cmd_vdso_install = INSTALL $@
>        cmd_vdso_install = cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
> diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so2s.sh
> new file mode 100755
> index 000000000000..7862866b5ebb
> --- /dev/null
> +++ b/arch/riscv/kernel/vdso/so2s.sh
> @@ -0,0 +1,6 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0+
> +# Copyright 2020 Palmer Dabbelt <palmerdabbelt@google.com>
> +
> +sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)@@LINUX_4.15!.global \2\n.set \2,0x\1!' \
> +| grep '^\.'
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnsRHA1WMb7OWi-jV662xLrBBBZ%3DzBbB1gvfpBqVFeSfQ%40mail.gmail.com.
