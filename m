Return-Path: <clang-built-linux+bncBCRKNY4WZECBBDM2S6EQMGQESVSELBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A023F6E97
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 06:54:43 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id k6-20020ac84786000000b0029d8b7a6d1esf4107443qtq.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 21:54:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629867277; cv=pass;
        d=google.com; s=arc-20160816;
        b=c2wQqD685su1094AB4CUD+QjqUGmU/V4+zOvvPY9cyNIe6pj5NhyxB38p9QMu+Dl2K
         W/eQo2PIeAAKQ+vJRftMed4GDxcgYvvn0na+4vlVSeBpS9tTTNsgJ6cLq2ilVVs0Gm10
         bg/i0BaFhtdN0Cv0Asdd5JDfTHBc4KWaCCa/NSJ4imkqXrdcLgecNFbSLcipYFJB4zNr
         a4AMZtjtCXMIxYrlXNMZPDjlXaBF3aWuNLupDtpi3QhZFH/EgZZTwkjGFSczhl3NHQSE
         xM7zDYJIr218P5q7d3mFJI44XLFMaOmtyLbcjl5I3KYXRuCwfKf/AjU0ogxWcJIED4bU
         bCjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:sender:dkim-signature;
        bh=bG05/VArF98NGiVuNe/GSSmbhSQiAhgOEWGUWcxEq00=;
        b=DpQQ+8+H2ZC5Zn4xs1UXemW0Q93jcdO9FsfTzPHmKn6Y6BDSFDm0hHgSapbM+Vf7rJ
         DgU13wl1aRpzVBEcUTd8c0YDo03+fQTs1l9qd5O/YNPtf77WlVnIOeDeQedOfRbMHll3
         zNVl9hb+/t2Qo6hnkChXGCZhbEtqpiwKLjR995+RpjYdCDhq4hLqqm/nV98S7uiZEV0x
         iLp8imRzBg97ChFyKgZWDrkJyGD/I+M7MTbWr1euULn7mWpevg16WxgpzQ3kdTS2l622
         oOLbtBj70nc/H822ElGy1UDyd7nU2sVfaK+zOlg1TNd0+n22WRYET6smaa9Gs+/YdqSC
         TXbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=L1l8gaVH;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bG05/VArF98NGiVuNe/GSSmbhSQiAhgOEWGUWcxEq00=;
        b=I2oMwoh9a1f/4tWDDGHJzTZooAmerz660wUZ5zV8paT7iYSC9PML3dM59jJy4PeYkx
         A/wviZEfDSsjA8u85EISIBnuEPIlpTmyI4lWI1MENcpMnRuNnvD1NZ41hy4n9v4eZ0yR
         BTnuJnzt9RkTzRdED9rnf3HOdFm8mu+Xf32ptT4fMaaEYDP+yNlqdAUsC96Azbv8qm5n
         ADOX/vU6e8hgNgu70GWNdlkbiJVjePg2W/HmDRRdKpLOVF6f2EgVg7VG/OhZyHKjzo6Z
         1JYvXa5LgHDKx8Wl1lq17AWv9cf29a0dD3/pzeXhnR6g7DCBhY/n7n+F/2a7/XXIXii6
         5oTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:subject:in-reply-to:cc:from:to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bG05/VArF98NGiVuNe/GSSmbhSQiAhgOEWGUWcxEq00=;
        b=YrFAN9f7U4bXGENPqMPas7MCIE/sNnFueEY2OClgWVjwuXE26mqu1m/CeGg/YjC10w
         gVZCZMtEJuMvK3JrC1Hn3ILgSta1J5K43tKqWjDW+GZzwUkEsAAWFU4bjD9crABjyg9L
         93AkmFnshHMCW8fgRGw4/qPUUWqyKa4/McalxU52HgR4YbP6DMCfDHl2E7yWI0xeNWyq
         EeN7JbdgnPm46i5wIkE3PFVLqFSlFatOXx8NKYWO1QteqourAP8f51GA6BkCuHILrDgH
         cGnSxhccNPx7zQa/fD3zRbL6Icx2PmT6Oz1Ue80N3kpJ6XuwfBG9cBrXP+sPNEk896H9
         uwjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uDeKs+deunDq63l132/cbQWM83q9sq9sxYPN80TTU57tOcBA3
	m7qc8FpEWdc/FgJ6+0xqphE=
X-Google-Smtp-Source: ABdhPJyjUUHZ3YCZsHArfYZPquXloy7AbwWIMYmeqQmvDQL29HI3+EKS1MiaYAXKAUhiipYmXuzP5Q==
X-Received: by 2002:ac8:5fcf:: with SMTP id k15mr35583604qta.137.1629867277298;
        Tue, 24 Aug 2021 21:54:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:404b:: with SMTP id j11ls556395qtl.2.gmail; Tue, 24 Aug
 2021 21:54:36 -0700 (PDT)
X-Received: by 2002:ac8:729a:: with SMTP id v26mr2890986qto.79.1629867276870;
        Tue, 24 Aug 2021 21:54:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629867276; cv=none;
        d=google.com; s=arc-20160816;
        b=kbIYODbM/Ze8OKOyANcuT9hJQapayoveLpP/oKDgwk2t+uk7VlJhCOWqcQhKm/u1NJ
         eXg0pgTfD4HRYb+9Moxj7bk9HNWYFqC2kxQ0OPqI/RYS2vM66ekyrZE1Y069rwxxtlCN
         h8zd/13OI9hn+vp6tp72FpxxHsln5mbCcLGpymh/jlF+L0+oOO+f9/bCXLVdn2IIPWG+
         2cwttddQnq96suF7HBMC97LdkJJXU7oTOw97j8J/4+msauYUw0RJLw8i8eFZzYDJWbm/
         9HYKG7Im76glOnC4mEygI/+NZPTVKMEWBFaMs9U8AwrrujfeVu42o2d7CmxRKA/dhUNu
         LfQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=aauOcYKQzuccwG+K+JsY0KHiVjAx8DxyADm89FIzrnc=;
        b=vCranwpqPA5hNCrfJjbA8TD/DpA/Nk6z34sStSHAnHq0XEE8eEZnPOApIuM1+blq4y
         CcNrspb5w6EywdOOjx9mXnbPikKi27DfIhLFXBbtOMUnN4pLpiKI5Ev+qPy1NXwk2BRe
         F8Y+4PiCuxQoJGUiawsM0KdlXFJzMurohhRKD5yhWTY6P7aUf3jWHCpsl5bCNj4ml5M7
         +Yz+KjNcElnmy52orxkeDdFAIkky0A/434zGe/5alD4yDBBV5AK0FuXBo5uzLzMiwwof
         rjfikaa36fw0h5JSzWM9Mc4z0vawb+8Df74SHF2sMP8vx06FLoKGQBQ/qVyqru49fmpd
         ZNew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=L1l8gaVH;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id 6si730072qkh.3.2021.08.24.21.54.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 21:54:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id c4so13581848plh.7
        for <clang-built-linux@googlegroups.com>; Tue, 24 Aug 2021 21:54:36 -0700 (PDT)
X-Received: by 2002:a17:902:c412:b0:137:c25c:8536 with SMTP id k18-20020a170902c41200b00137c25c8536mr988168plk.16.1629867275729;
        Tue, 24 Aug 2021 21:54:35 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id u24sm22051028pfm.27.2021.08.24.21.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 21:54:35 -0700 (PDT)
Date: Tue, 24 Aug 2021 21:54:35 -0700 (PDT)
Subject: Re: [PATCH v3] riscv: explicitly use symbol offsets for VDSO
In-Reply-To: <20210804173214.1027994-1-abdulras@google.com>
CC: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, nathan@kernel.org,
  ndesaulniers@google.com, morbo@google.com, clang-built-linux@googlegroups.com, abdulras@google.com
From: Palmer Dabbelt <palmer@dabbelt.com>
To: abdulras@google.com
Message-ID: <mhng-a7fbcae6-db7b-48d5-808f-3f8eff233ea9@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b=L1l8gaVH;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

On Wed, 04 Aug 2021 10:32:14 PDT (-0700), abdulras@google.com wrote:
> The current implementation of the `__rt_sigaction` reference computed an
> absolute offset relative to the mapped base of the VDSO.  While this can
> be handled in the medlow model, the medany model cannot handle this as
> it is meant to be position independent.  The current implementation
> relied on the BFD linker relaxing the PC-relative relocation into an
> absolute relocation as it was a near-zero address allowing it to be
> referenced relative to `zero`.
>
> We now extract the offsets and create a generated header allowing the
> build with LLVM and lld to succeed as we no longer depend on the linker
> rewriting address references near zero.  This change was largely
> modelled after the ARM64 target which does something similar.
>
> Signed-off-by: Saleem Abdulrasool <abdulras@google.com>
> ---
>  arch/riscv/Makefile                        |  4 ++++
>  arch/riscv/include/asm/vdso.h              | 14 ++----------
>  arch/riscv/kernel/vdso/Makefile            | 25 ++++++++++------------
>  arch/riscv/kernel/vdso/gen_vdso_offsets.sh |  5 +++++
>  arch/riscv/kernel/vdso/so2s.sh             |  6 ------
>  5 files changed, 22 insertions(+), 32 deletions(-)
>  create mode 100755 arch/riscv/kernel/vdso/gen_vdso_offsets.sh
>  delete mode 100755 arch/riscv/kernel/vdso/so2s.sh
>
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index bc74afdbf31e..e026b2d0a5a4 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -108,6 +108,10 @@ PHONY += vdso_install
>  vdso_install:
>  	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso $@
>
> +prepare: vdso_prepare
> +vdso_prepare: prepare0
> +	$(Q)$(MAKE) $(build)=arch/riscv/kernel/vdso include/generated/vdso-offsets.h
> +
>  ifneq ($(CONFIG_XIP_KERNEL),y)
>  ifeq ($(CONFIG_RISCV_M_MODE)$(CONFIG_SOC_CANAAN),yy)
>  KBUILD_IMAGE := $(boot)/loader.bin
> diff --git a/arch/riscv/include/asm/vdso.h b/arch/riscv/include/asm/vdso.h
> index 1453a2f563bc..d8d003c2b5a3 100644
> --- a/arch/riscv/include/asm/vdso.h
> +++ b/arch/riscv/include/asm/vdso.h
> @@ -9,25 +9,15 @@
>  #define _ASM_RISCV_VDSO_H
>
>  #include <linux/types.h>
> +#include <generated/vdso-offsets.h>
>
>  #ifndef CONFIG_GENERIC_TIME_VSYSCALL
>  struct vdso_data {
>  };
>  #endif
>
> -/*
> - * The VDSO symbols are mapped into Linux so we can just use regular symbol
> - * addressing to get their offsets in userspace.  The symbols are mapped at an
> - * offset of 0, but since the linker must support setting weak undefined
> - * symbols to the absolute address 0 it also happens to support other low
> - * addresses even when the code model suggests those low addresses would not
> - * otherwise be availiable.
> - */
>  #define VDSO_SYMBOL(base, name)							\
> -({										\
> -	extern const char __vdso_##name[];					\
> -	(void __user *)((unsigned long)(base) + __vdso_##name);			\
> -})
> +	(void __user *)((unsigned long)(base) + __vdso_##name##_offset)
>
>  asmlinkage long sys_riscv_flush_icache(uintptr_t, uintptr_t, uintptr_t);
>
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Makefile
> index 24d936c147cd..f8cb9144a284 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -23,10 +23,10 @@ ifneq ($(c-gettimeofday-y),)
>  endif
>
>  # Build rules
> -targets := $(obj-vdso) vdso.so vdso.so.dbg vdso.lds vdso-syms.S
> +targets := $(obj-vdso) vdso.so vdso.so.dbg vdso.lds
>  obj-vdso := $(addprefix $(obj)/, $(obj-vdso))
>
> -obj-y += vdso.o vdso-syms.o
> +obj-y += vdso.o
>  CPPFLAGS_vdso.lds += -P -C -U$(ARCH)
>
>  # Disable -pg to prevent insert call site
> @@ -43,20 +43,22 @@ $(obj)/vdso.o: $(obj)/vdso.so
>  # link rule for the .so file, .lds has to be first
>  $(obj)/vdso.so.dbg: $(obj)/vdso.lds $(obj-vdso) FORCE
>  	$(call if_changed,vdsold)
> -LDFLAGS_vdso.so.dbg = -shared -s -soname=linux-vdso.so.1 \
> +LDFLAGS_vdso.so.dbg = -shared -S -soname=linux-vdso.so.1 \
>  	--build-id=sha1 --hash-style=both --eh-frame-hdr
>
> -# We also create a special relocatable object that should mirror the symbol
> -# table and layout of the linked DSO. With ld --just-symbols we can then
> -# refer to these symbols in the kernel code rather than hand-coded addresses.
> -$(obj)/vdso-syms.S: $(obj)/vdso.so FORCE
> -	$(call if_changed,so2s)
> -
>  # strip rule for the .so file
>  $(obj)/%.so: OBJCOPYFLAGS := -S
>  $(obj)/%.so: $(obj)/%.so.dbg FORCE
>  	$(call if_changed,objcopy)
>
> +# Generate VDSO offsets using helper script
> +gen-vdsosym := $(srctree)/$(src)/gen_vdso_offsets.sh
> +quiet_cmd_vdsosym = VDSOSYM $@
> +	cmd_vdsosym = $(NM) $< | $(gen-vdsosym) | LC_ALL=C sort > $@
> +
> +include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
> +	$(call if_changed,vdsosym)
> +
>  # actual build commands
>  # The DSO images are built using a special linker script
>  # Make sure only to export the intended __vdso_xxx symbol offsets.
> @@ -65,11 +67,6 @@ quiet_cmd_vdsold = VDSOLD  $@
>                     $(OBJCOPY) $(patsubst %, -G __vdso_%, $(vdso-syms)) $@.tmp $@ && \
>                     rm $@.tmp
>
> -# Extracts symbol offsets from the VDSO, converting them into an assembly file
> -# that contains the same symbols at the same offsets.
> -quiet_cmd_so2s = SO2S    $@
> -      cmd_so2s = $(NM) -D $< | $(srctree)/$(src)/so2s.sh > $@
> -
>  # install commands for the unstripped file
>  quiet_cmd_vdso_install = INSTALL $@
>        cmd_vdso_install = cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
> diff --git a/arch/riscv/kernel/vdso/gen_vdso_offsets.sh b/arch/riscv/kernel/vdso/gen_vdso_offsets.sh
> new file mode 100755
> index 000000000000..c2e5613f3495
> --- /dev/null
> +++ b/arch/riscv/kernel/vdso/gen_vdso_offsets.sh
> @@ -0,0 +1,5 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +
> +LC_ALL=C
> +sed -n -e 's/^[0]\+\(0[0-9a-fA-F]*\) . \(__vdso_[a-zA-Z0-9_]*\)$/\#define \2_offset\t0x\1/p'
> diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so2s.sh
> deleted file mode 100755
> index e64cb6d9440e..000000000000
> --- a/arch/riscv/kernel/vdso/so2s.sh
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -#!/bin/sh
> -# SPDX-License-Identifier: GPL-2.0+
> -# Copyright 2020 Palmer Dabbelt <palmerdabbelt@google.com>
> -
> -sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)\(@@LINUX_4.15\)*!.global \2\n.set \2,0x\1!' \
> -| grep '^\.'

This is on for-next.  Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-a7fbcae6-db7b-48d5-808f-3f8eff233ea9%40palmerdabbelt-glaptop.
