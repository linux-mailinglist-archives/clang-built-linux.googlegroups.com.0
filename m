Return-Path: <clang-built-linux+bncBCRKNY4WZECBBFM7VCEAMGQEESIBFXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E65B73DFA1E
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 05:55:02 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id p67-20020a1f29460000b0290283e594f697sf256248vkp.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Aug 2021 20:55:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628049302; cv=pass;
        d=google.com; s=arc-20160816;
        b=aAqifRLpVjS3EcgiLJT7Y6cnpi/cu1Mxm8zeSrMIqsE6j8HEZVOTMlVFzpqQrdiG9C
         OQjagC5XOQ6mMdez6KJOFx4W14cbNuPJxn95Dyd0B/0uOt/G8uZHH2xybVnVwlohpbvY
         nVzdQSshNkRHY+G30QrtlhsXEx0yLl+JByU/HhpVYtwbI1Ng76YcizObOeU19QS+TU40
         K44xqZ9hd7v4QaJvPAke4tJliyfylOMbD7atgRGKzfG/gxzipDNGObCdUNJpWZ+acCTn
         DAtZ3gSzZ6Z9RkWMnXdMxggN6l3bnoRoRDdxs18SISZ3hORQ1tUTqn1dI/WOKP71yzPH
         +M3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:to:from:cc:in-reply-to:subject:date:sender
         :dkim-signature;
        bh=uy6jTAKBJ2A1s2B9SxABwrNZjavnlFAifDKJuV+dEbQ=;
        b=lKxhNs87Y/rD8SKMKlqDM1yXfTqe5Hrvt3CE+reP9AcWnL3E+waaA/d4MoFsRkN2z6
         0MnRChaTXidlKsJpsi99UQp8O3+1pwDTEzwgTlbXGXqFHMhg10HAAafd0alCQTqJlRUH
         SJxIDvGAA9sWB8NLvIjflYt+8U5mVT5a21Ffez3dO8y7NDmkJ9hhKFEbN1Irr9YyVC+T
         0ijA4Ptq3bYc4SZVmRFePJ70PxcHBbcpkmy8xe2DcNmynchlQMMw6sB2t63xgh6YUjVU
         Tdjgb9KMup60MQLYI27vhaF0D/Ble18MxrX7TnGCJ8+z4poDd/vOyvKDMqWSgODcLzrd
         rCpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=Z70A6b4x;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uy6jTAKBJ2A1s2B9SxABwrNZjavnlFAifDKJuV+dEbQ=;
        b=EtcfJjnMeme9XWq9nP37DOzU4eKJqsKOTnSdza2T+5125UUKNKu//+EBgxqroh5kEx
         9YxbvbxUcom9Oq4y5rPQuoacsoYLsMlFWdoYc6TyVUFt0TQ90i9NNsrvF+bmJaLLM61M
         HFfzXtsY7TPNzt+jHHR5kDWkXjWTwJnfrBPIk8DpLSDebTqoQJD9Y/j9sAsAHRUxw1sa
         r3/N2Y2hgqlhmEpjlXWwYUboU8Oq2FKmqi/8RXUGLwUHueWiyt8moYu44Str4HLRPFJO
         5lnC5YDECn3ZDtOuc+rd1isJtEmS1fQzdQ6hQGdPXyMOOWWvdjuHyYxkoCn3JZFg7rnq
         ZH/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:subject:in-reply-to:cc:from:to
         :message-id:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uy6jTAKBJ2A1s2B9SxABwrNZjavnlFAifDKJuV+dEbQ=;
        b=OzPtn/7I5ADo2KT0y2X4UaH5Ywa9YnSzy7R68VBxZQoMSPb9KvsWbOxLyU9d9usZBX
         6ZpWwZhqRkxOWGfk2Pit7H1zIQhAMRbxzLTwAKGgrIfVQNt/ejnchMTN26/zPu6AnD3T
         LBMNb9IRSFLzqpBgX/+mqsnJCjoE3dK52h3oS5TDGmCo70Z1Su7OFrkxfQrmi9azGRQv
         ih7nFx1tGr/PAzcWjB5FKhWnXr85qqmXiQNEY2PluUz/GRqfr6YbxY8iAWMYD6GMxo2V
         zHLR6mhwmDNJdfbJSCqouI6G8cOA9dmoftMYOR5MqTn9w7UrEBtu3EXuGv+Xcdcc52vc
         BhcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jDA3c0kFU/8SV/E8viv+ke+ZU7X/XNolnhcDVjqSolldj8QMJ
	2sy02i1CFH+lhlFekp7kbho=
X-Google-Smtp-Source: ABdhPJwj1ik7f0euu5edrAx3U6PY5fWzv0nrjpjWdHIR92y5JxskojAErU9I9V0tsABmgvhe8Z14ug==
X-Received: by 2002:a67:b143:: with SMTP id z3mr16909674vsl.57.1628049301893;
        Tue, 03 Aug 2021 20:55:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e00d:: with SMTP id c13ls128748vsl.9.gmail; Tue, 03 Aug
 2021 20:55:01 -0700 (PDT)
X-Received: by 2002:a05:6102:317a:: with SMTP id l26mr16725228vsm.43.1628049301311;
        Tue, 03 Aug 2021 20:55:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628049301; cv=none;
        d=google.com; s=arc-20160816;
        b=dvXjVxj4zwvNieZxoSwQAjBHMncnM+4KD+obJ2mfBLbz5lWMaMJWTEAYzwoQs5IDMu
         NL5k6spPq7lF0WjeE4KWVOjguWvbwCQHYWuDlo1nCfnwz0SUoc/zuPho4BsuCDsSchrw
         ayWzYSKf6QZ7I4Sq9zwGq32IJ0f4JZHkjUEivxTf1k7/zC9lEfWRG0JBUwCn0JvkbQT7
         YqrXG18h3KVId88RN/DmSsHkFrPnb8uuUeuOJSoL3YUIIWY6qByivxH59GJtVq0LFmTs
         qVngvQK0jUNf8SfvgVfNbNdM2Xvcb7IurXUcek1292NY9Yz90e2NQHStK9Z53+qRXFI7
         TtIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=AEwQ/+k1Yhzbo4qVQLJ3ZVzIRSYHoDA9qwjyJfKox9Q=;
        b=LBSVBeVN5kjn5LENeVqK5DD9C4Fqd+2NkTTgOoftjERR4klKqzkzC0f/v5perakULs
         2mDJvDHAJn5Z9nNrLL4uDl64eCrl/JzUCTZ2HTifVXV1yWOKMma3kYD4aXECDDVRusY5
         e6OfR+x0jteU/JUsIIU5tkNQ2e+LmGnvlvWB6mQLJ/sc4fDFlX+RUuw62FiCMlpvw6ur
         d4inI4dAPP+WUsg0u2D50FuU/+PiyYl3CcIDd5G6/CXozpoSzmhTy4XemHUQUrMP+bVM
         08cpU/genML57jclHroP066RRiNu0NCY0GDogpXrh1hRTCgIZptWNyCY9pAPVtW0n7Gf
         OjDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=Z70A6b4x;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id f11si47971vkp.2.2021.08.03.20.55.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Aug 2021 20:55:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id z3so1542509plg.8
        for <clang-built-linux@googlegroups.com>; Tue, 03 Aug 2021 20:55:00 -0700 (PDT)
X-Received: by 2002:a63:b04c:: with SMTP id z12mr863697pgo.86.1628049300557;
        Tue, 03 Aug 2021 20:55:00 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id b12sm4366199pjw.6.2021.08.03.20.54.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Aug 2021 20:54:59 -0700 (PDT)
Date: Tue, 03 Aug 2021 20:54:59 -0700 (PDT)
Subject: Re: [PATCH] riscv: explicitly use symbol offsets for VDSO v2
In-Reply-To: <20210802210016.642262-1-abdulras@google.com>
CC: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, nathan@kernel.org,
  ndesaulniers@google.com, morbo@google.com, clang-built-linux@googlegroups.com, abdulras@google.com
From: Palmer Dabbelt <palmer@dabbelt.com>
To: abdulras@google.com
Message-ID: <mhng-fc0ced4d-4e60-422b-8728-7e9bdd0276fb@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b=Z70A6b4x;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

On Mon, 02 Aug 2021 14:00:17 PDT (-0700), abdulras@google.com wrote:
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
>  arch/riscv/include/asm/vdso.h              | 11 ++--------
>  arch/riscv/kernel/vdso/Makefile            | 25 ++++++++++------------
>  arch/riscv/kernel/vdso/gen_vdso_offsets.sh |  5 +++++
>  arch/riscv/kernel/vdso/so2s.sh             |  6 ------
>  5 files changed, 22 insertions(+), 29 deletions(-)
>  create mode 100755 arch/riscv/kernel/vdso/gen_vdso_offsets.sh
>  delete mode 100755 arch/riscv/kernel/vdso/so2s.sh
>
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index bc74afdbf31e..e026b2d0a5a4 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -108,6 +108,10 @@ PHONY +=3D vdso_install
>  vdso_install:
>  	$(Q)$(MAKE) $(build)=3Darch/riscv/kernel/vdso $@
>
> +prepare: vdso_prepare
> +vdso_prepare: prepare0
> +	$(Q)$(MAKE) $(build)=3Darch/riscv/kernel/vdso include/generated/vdso-of=
fsets.h
> +
>  ifneq ($(CONFIG_XIP_KERNEL),y)
>  ifeq ($(CONFIG_RISCV_M_MODE)$(CONFIG_SOC_CANAAN),yy)
>  KBUILD_IMAGE :=3D $(boot)/loader.bin
> diff --git a/arch/riscv/include/asm/vdso.h b/arch/riscv/include/asm/vdso.=
h
> index 1453a2f563bc..098795262b92 100644
> --- a/arch/riscv/include/asm/vdso.h
> +++ b/arch/riscv/include/asm/vdso.h
> @@ -9,24 +9,17 @@
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
> - * The VDSO symbols are mapped into Linux so we can just use regular sym=
bol
> - * addressing to get their offsets in userspace.  The symbols are mapped=
 at an
> - * offset of 0, but since the linker must support setting weak undefined
> - * symbols to the absolute address 0 it also happens to support other lo=
w
> - * addresses even when the code model suggests those low addresses would=
 not
> - * otherwise be availiable.
> - */
>  #define VDSO_SYMBOL(base, name)							\
>  ({										\
>  	extern const char __vdso_##name[];					\
> -	(void __user *)((unsigned long)(base) + __vdso_##name);			\
> +	(void __user *)((unsigned long)(base) + __vdso_##name##_offset);	\
>  })
>
>  asmlinkage long sys_riscv_flush_icache(uintptr_t, uintptr_t, uintptr_t);
> diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/Mak=
efile
> index 24d936c147cd..f8cb9144a284 100644
> --- a/arch/riscv/kernel/vdso/Makefile
> +++ b/arch/riscv/kernel/vdso/Makefile
> @@ -23,10 +23,10 @@ ifneq ($(c-gettimeofday-y),)
>  endif
>
>  # Build rules
> -targets :=3D $(obj-vdso) vdso.so vdso.so.dbg vdso.lds vdso-syms.S
> +targets :=3D $(obj-vdso) vdso.so vdso.so.dbg vdso.lds
>  obj-vdso :=3D $(addprefix $(obj)/, $(obj-vdso))
>
> -obj-y +=3D vdso.o vdso-syms.o
> +obj-y +=3D vdso.o
>  CPPFLAGS_vdso.lds +=3D -P -C -U$(ARCH)
>
>  # Disable -pg to prevent insert call site
> @@ -43,20 +43,22 @@ $(obj)/vdso.o: $(obj)/vdso.so
>  # link rule for the .so file, .lds has to be first
>  $(obj)/vdso.so.dbg: $(obj)/vdso.lds $(obj-vdso) FORCE
>  	$(call if_changed,vdsold)
> -LDFLAGS_vdso.so.dbg =3D -shared -s -soname=3Dlinux-vdso.so.1 \
> +LDFLAGS_vdso.so.dbg =3D -shared -S -soname=3Dlinux-vdso.so.1 \
>  	--build-id=3Dsha1 --hash-style=3Dboth --eh-frame-hdr
>
> -# We also create a special relocatable object that should mirror the sym=
bol
> -# table and layout of the linked DSO. With ld --just-symbols we can then
> -# refer to these symbols in the kernel code rather than hand-coded addre=
sses.
> -$(obj)/vdso-syms.S: $(obj)/vdso.so FORCE
> -	$(call if_changed,so2s)
> -
>  # strip rule for the .so file
>  $(obj)/%.so: OBJCOPYFLAGS :=3D -S
>  $(obj)/%.so: $(obj)/%.so.dbg FORCE
>  	$(call if_changed,objcopy)
>
> +# Generate VDSO offsets using helper script
> +gen-vdsosym :=3D $(srctree)/$(src)/gen_vdso_offsets.sh
> +quiet_cmd_vdsosym =3D VDSOSYM $@
> +	cmd_vdsosym =3D $(NM) $< | $(gen-vdsosym) | LC_ALL=3DC sort > $@
> +
> +include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
> +	$(call if_changed,vdsosym)
> +
>  # actual build commands
>  # The DSO images are built using a special linker script
>  # Make sure only to export the intended __vdso_xxx symbol offsets.
> @@ -65,11 +67,6 @@ quiet_cmd_vdsold =3D VDSOLD  $@
>                     $(OBJCOPY) $(patsubst %, -G __vdso_%, $(vdso-syms)) $=
@.tmp $@ && \
>                     rm $@.tmp
>
> -# Extracts symbol offsets from the VDSO, converting them into an assembl=
y file
> -# that contains the same symbols at the same offsets.
> -quiet_cmd_so2s =3D SO2S    $@
> -      cmd_so2s =3D $(NM) -D $< | $(srctree)/$(src)/so2s.sh > $@
> -
>  # install commands for the unstripped file
>  quiet_cmd_vdso_install =3D INSTALL $@
>        cmd_vdso_install =3D cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
> diff --git a/arch/riscv/kernel/vdso/gen_vdso_offsets.sh b/arch/riscv/kern=
el/vdso/gen_vdso_offsets.sh
> new file mode 100755
> index 000000000000..c2e5613f3495
> --- /dev/null
> +++ b/arch/riscv/kernel/vdso/gen_vdso_offsets.sh
> @@ -0,0 +1,5 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +
> +LC_ALL=3DC
> +sed -n -e 's/^[0]\+\(0[0-9a-fA-F]*\) . \(__vdso_[a-zA-Z0-9_]*\)$/\#defin=
e \2_offset\t0x\1/p'
> diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so2s=
.sh
> deleted file mode 100755
> index e64cb6d9440e..000000000000
> --- a/arch/riscv/kernel/vdso/so2s.sh
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -#!/bin/sh
> -# SPDX-License-Identifier: GPL-2.0+
> -# Copyright 2020 Palmer Dabbelt <palmerdabbelt@google.com>
> -
> -sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)\(@@LINUX_4.15\)*!.global \2\n.set =
\2,0x\1!' \
> -| grep '^\.'

This is giving me some unused variable warnings:

In file included from arch/riscv/kernel/signal.c:16:
arch/riscv/kernel/signal.c: In function =E2=80=98setup_rt_frame=E2=80=99:
./arch/riscv/include/asm/vdso.h:21:20: warning: unused variable =E2=80=98__=
vdso_rt_sigreturn=E2=80=99 [-Wunused-variable]
   21 |  extern const char __vdso_##name[];     \
      |                    ^~~~~~~
arch/riscv/kernel/signal.c:197:28: note: in expansion of macro =E2=80=98VDS=
O_SYMBOL=E2=80=99
  197 |  regs->ra =3D (unsigned long)VDSO_SYMBOL(
      |                            ^~~~~~~~~~~

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/mhng-fc0ced4d-4e60-422b-8728-7e9bdd0276fb%40palmerdabbelt=
-glaptop.
