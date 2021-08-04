Return-Path: <clang-built-linux+bncBCCNZCEGVYEBB347VOEAMGQEVJLEM7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id A64DA3E06D5
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 19:35:43 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id j16-20020a5d44900000b02901549fdfd4fcsf1076394wrq.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 10:35:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628098543; cv=pass;
        d=google.com; s=arc-20160816;
        b=xnpkcCpQFwWQF7mQXptUoVG9u2exc6o1UHB4i4AinTbIdubwLdkNhmUIUGeRr+Bm/U
         bFs0ibXPEcUM/G9V28DU01LaSqPHPl/VFRVbCbbhvcVDmvBjH5tf0hA1BCvlAgvBudZ0
         HWpM53F9TupLPHFJT4GSX2c5+/iOFf5sMECuHy9gDgVioLSg68wManX1aRmzhv7WpRGx
         mjOjCXsba3LqZ3rvFTc92qXJEvFSdYepEtRyAiAP9Jv+HPjTD4CqA+M+jWI0OSg7WPkq
         YsJ/u9Bx/3GnBgnLtzEZPw2MRIm9z/8joDm9tfxNmj/Z0NwmnTYYeMs/fk5JYJ7+JZmL
         pMDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ooq3IQ4gUgoVTC7pDmQvDS+gm0aEKu1gJiXFItn+qHw=;
        b=AW1kZNyzTrrxrUp3XVRtfYpzuDabfC1I/sjTCVKrFgVQwKIwQlQy+pDM3THRE+JZy3
         fUEoKiH1h/HhLsVCyq5lI8PaOOt4FY7+5hjYwvg2TyQHOHtgKhv7bpGF+48auX1eokEZ
         Lqba/P+wFeSot+lNTLHRL6N9G+GPRP8f3tfUja2NVjSR7h7hjE4muma0DdXB10PG+l/i
         YjaVnme3OVroYYcjPikujL4g80E2Z2Rc6TxNKIf1DU8anISL8Yu2X4vswlnCAiD2j/SL
         kH/968c/gLi5PUvSk5ZM3GFUJjdGnWlPsxGCOEG+kVwKkwBjgYccmSWjBDOcVPDto/h3
         VUgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uPKmDG4m;
       spf=pass (google.com: domain of abdulras@google.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=abdulras@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ooq3IQ4gUgoVTC7pDmQvDS+gm0aEKu1gJiXFItn+qHw=;
        b=cB4L6ZPYIE9odVwEXj3Lz/d2G0180VI5H2lLKMX1CEAk/QWPtVaT9G9rOKrXjEiu0Y
         16BqKrz3kBpvk4dejTI79qrDbi3xqOrdoeYs+xbbxx8RvjvuYIdDr62+wmSMVtVhbIL8
         6OoFQpw1hcnu6o4WS46W7Z0u0qXsQeeQnPu/4FtopZpIJDKDewUl0Hbw+v71e4upE/C4
         zD5e2sbSGympJCNr9sm9t77wW9w8UgARSoyQewhXslYArzdS9wITUM7LhS2lkXM+Jt2f
         5i+FahC2D39EK4GWQUP+xRyIQjgtzw7Z58lR8Cy/wtWV9Ooe21b0PhvrkZH/WvtUAaJ4
         TvAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ooq3IQ4gUgoVTC7pDmQvDS+gm0aEKu1gJiXFItn+qHw=;
        b=CkbnmCufRuO+DbPTijjSq3O3Bp+zSzvLGRFs39acJQw0ADFRyBV0aqcYb2z72B8FvY
         EGlElxLTsZD6iY5c8RwXmAZvoHqdU4iGa0F+NVAypwhSMEvX74shQSigzzl0GaVhVeK6
         OY/5F7pC/rFhDhvVqbKIEOEKEJZDZpadGjCfTiHBcwqXxYdn2//PKn+wxPNGdKrx2fqy
         l9Vo5DElu66zyzvIeHy4Evtkhwsxh5Jd3Gefmeju+GqPi6qBTlTUm0cKMrFcB40G8IFQ
         GdnHCMzuh6xrXamBxwkiAb1W9etlm9LRE9c/6e6zTkaxTnbcfzS1Ll39m1Tbz0HCg7gJ
         /SsA==
X-Gm-Message-State: AOAM531BDlRFxn7ZzsKB0LbE8JJbJQlZazEs328ZkZY3AtsKNvh8CEbh
	V1Va875svPuBrg2gnWqnVBU=
X-Google-Smtp-Source: ABdhPJzTyEx2xYt38sl4M+tXa8OZzdh5VQ9hu0iZ6+AzT96BZmzBYTvSJx3LW+EP1JgBV5kSNoUhSA==
X-Received: by 2002:adf:f109:: with SMTP id r9mr505620wro.370.1628098543394;
        Wed, 04 Aug 2021 10:35:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db90:: with SMTP id u16ls1377910wri.2.gmail; Wed, 04 Aug
 2021 10:35:42 -0700 (PDT)
X-Received: by 2002:adf:f112:: with SMTP id r18mr513173wro.160.1628098542495;
        Wed, 04 Aug 2021 10:35:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628098542; cv=none;
        d=google.com; s=arc-20160816;
        b=Q6XdgteEX02e1UqffQllE2aijP9lzBTkMsD5TiovZEL2UWh89wRtU5LLGs2cdNgNz/
         hqU50VmtJ4g1Mb67A2qKInCMUdF3B7sirG6b4Fj/HqeG83iXLLDB9sY1O4w5cxCt6ISL
         APLTWNxeT4mUT/8CV7LIlJa4R5YxMEXeWFVaA0HhzT1P4MLYtL/wd3BLLuEgQvWhiU4A
         rEc7RTwLEpuV/HGZfi12iBC9YET54Ye/H04tEFQQGDZw7yr0cX7WJ7Jm/935C8cAlrF2
         GKV9g48e5oJbjiOtQP2J74xlfm4IKBIsRddT/tzEBdMD2G778dp23W4HCPB9fVPkdQ4H
         EjVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YhZiYOgndOKxjc09S0PXNRg2bwREnpEcJqoGdi9R3j4=;
        b=C/sBMUq2yVJ3b2wlVU+SUIdrZrM/FEPGUDc8J7akygLR9y6WLlamg/xt4Y4tMZBpHh
         AvAyomnPOs6rBb0xlVSjdgxPG7fYz9AciGPhQo8aVUg7rMApPg4wV1goj2gQDJViychb
         7sksYZcfPMRxsXRF/kalGAR1qgHcs5m/VupFQZHHLQ7dIMr/Qgyb28nYubjkLS8URNm2
         iQadAlXZDYH52CRTZUpGSKCe8HbaHspWYOJdXzKQAlgPeCq7y9TIH/SeeTwzEAqpuuui
         MFcMst40V6xlWM/VMsZBvRAj5ZNSp9IhHmvw/VAtf/MMZzhdS7vnx3ySQJkH3CbT6Yrs
         GeGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uPKmDG4m;
       spf=pass (google.com: domain of abdulras@google.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=abdulras@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com. [2a00:1450:4864:20::631])
        by gmr-mx.google.com with ESMTPS id o83si216931wme.2.2021.08.04.10.35.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 10:35:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of abdulras@google.com designates 2a00:1450:4864:20::631 as permitted sender) client-ip=2a00:1450:4864:20::631;
Received: by mail-ej1-x631.google.com with SMTP id e19so4861061ejs.9
        for <clang-built-linux@googlegroups.com>; Wed, 04 Aug 2021 10:35:42 -0700 (PDT)
X-Received: by 2002:a17:906:53ce:: with SMTP id p14mr299514ejo.477.1628098542007;
 Wed, 04 Aug 2021 10:35:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210802210016.642262-1-abdulras@google.com> <mhng-fc0ced4d-4e60-422b-8728-7e9bdd0276fb@palmerdabbelt-glaptop>
In-Reply-To: <mhng-fc0ced4d-4e60-422b-8728-7e9bdd0276fb@palmerdabbelt-glaptop>
From: "'Saleem Abdulrasool' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 4 Aug 2021 10:35:29 -0700
Message-ID: <CAO8XFHs-s2SHajL8NpWsK_JcG0ZoyDr9qd9jGDxdQ6bU-cKqiw@mail.gmail.com>
Subject: Re: [PATCH] riscv: explicitly use symbol offsets for VDSO v2
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	nathan@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Bill Wendling <morbo@google.com>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: abdulras@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uPKmDG4m;       spf=pass
 (google.com: domain of abdulras@google.com designates 2a00:1450:4864:20::631
 as permitted sender) smtp.mailfrom=abdulras@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Saleem Abdulrasool <abdulras@google.com>
Reply-To: Saleem Abdulrasool <abdulras@google.com>
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

On Tue, Aug 3, 2021 at 8:55 PM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Mon, 02 Aug 2021 14:00:17 PDT (-0700), abdulras@google.com wrote:
> > The current implementation of the `__rt_sigaction` reference computed a=
n
> > absolute offset relative to the mapped base of the VDSO.  While this ca=
n
> > be handled in the medlow model, the medany model cannot handle this as
> > it is meant to be position independent.  The current implementation
> > relied on the BFD linker relaxing the PC-relative relocation into an
> > absolute relocation as it was a near-zero address allowing it to be
> > referenced relative to `zero`.
> >
> > We now extract the offsets and create a generated header allowing the
> > build with LLVM and lld to succeed as we no longer depend on the linker
> > rewriting address references near zero.  This change was largely
> > modelled after the ARM64 target which does something similar.
> >
> > Signed-off-by: Saleem Abdulrasool <abdulras@google.com>
> > ---
> >  arch/riscv/Makefile                        |  4 ++++
> >  arch/riscv/include/asm/vdso.h              | 11 ++--------
> >  arch/riscv/kernel/vdso/Makefile            | 25 ++++++++++------------
> >  arch/riscv/kernel/vdso/gen_vdso_offsets.sh |  5 +++++
> >  arch/riscv/kernel/vdso/so2s.sh             |  6 ------
> >  5 files changed, 22 insertions(+), 29 deletions(-)
> >  create mode 100755 arch/riscv/kernel/vdso/gen_vdso_offsets.sh
> >  delete mode 100755 arch/riscv/kernel/vdso/so2s.sh
> >
> > diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> > index bc74afdbf31e..e026b2d0a5a4 100644
> > --- a/arch/riscv/Makefile
> > +++ b/arch/riscv/Makefile
> > @@ -108,6 +108,10 @@ PHONY +=3D vdso_install
> >  vdso_install:
> >       $(Q)$(MAKE) $(build)=3Darch/riscv/kernel/vdso $@
> >
> > +prepare: vdso_prepare
> > +vdso_prepare: prepare0
> > +     $(Q)$(MAKE) $(build)=3Darch/riscv/kernel/vdso include/generated/v=
dso-offsets.h
> > +
> >  ifneq ($(CONFIG_XIP_KERNEL),y)
> >  ifeq ($(CONFIG_RISCV_M_MODE)$(CONFIG_SOC_CANAAN),yy)
> >  KBUILD_IMAGE :=3D $(boot)/loader.bin
> > diff --git a/arch/riscv/include/asm/vdso.h b/arch/riscv/include/asm/vds=
o.h
> > index 1453a2f563bc..098795262b92 100644
> > --- a/arch/riscv/include/asm/vdso.h
> > +++ b/arch/riscv/include/asm/vdso.h
> > @@ -9,24 +9,17 @@
> >  #define _ASM_RISCV_VDSO_H
> >
> >  #include <linux/types.h>
> > +#include <generated/vdso-offsets.h>
> >
> >  #ifndef CONFIG_GENERIC_TIME_VSYSCALL
> >  struct vdso_data {
> >  };
> >  #endif
> >
> > -/*
> > - * The VDSO symbols are mapped into Linux so we can just use regular s=
ymbol
> > - * addressing to get their offsets in userspace.  The symbols are mapp=
ed at an
> > - * offset of 0, but since the linker must support setting weak undefin=
ed
> > - * symbols to the absolute address 0 it also happens to support other =
low
> > - * addresses even when the code model suggests those low addresses wou=
ld not
> > - * otherwise be availiable.
> > - */
> >  #define VDSO_SYMBOL(base, name)                                       =
               \
> >  ({                                                                    =
       \
> >       extern const char __vdso_##name[];                               =
       \
> > -     (void __user *)((unsigned long)(base) + __vdso_##name);          =
       \
> > +     (void __user *)((unsigned long)(base) + __vdso_##name##_offset); =
       \
> >  })
> >
> >  asmlinkage long sys_riscv_flush_icache(uintptr_t, uintptr_t, uintptr_t=
);
> > diff --git a/arch/riscv/kernel/vdso/Makefile b/arch/riscv/kernel/vdso/M=
akefile
> > index 24d936c147cd..f8cb9144a284 100644
> > --- a/arch/riscv/kernel/vdso/Makefile
> > +++ b/arch/riscv/kernel/vdso/Makefile
> > @@ -23,10 +23,10 @@ ifneq ($(c-gettimeofday-y),)
> >  endif
> >
> >  # Build rules
> > -targets :=3D $(obj-vdso) vdso.so vdso.so.dbg vdso.lds vdso-syms.S
> > +targets :=3D $(obj-vdso) vdso.so vdso.so.dbg vdso.lds
> >  obj-vdso :=3D $(addprefix $(obj)/, $(obj-vdso))
> >
> > -obj-y +=3D vdso.o vdso-syms.o
> > +obj-y +=3D vdso.o
> >  CPPFLAGS_vdso.lds +=3D -P -C -U$(ARCH)
> >
> >  # Disable -pg to prevent insert call site
> > @@ -43,20 +43,22 @@ $(obj)/vdso.o: $(obj)/vdso.so
> >  # link rule for the .so file, .lds has to be first
> >  $(obj)/vdso.so.dbg: $(obj)/vdso.lds $(obj-vdso) FORCE
> >       $(call if_changed,vdsold)
> > -LDFLAGS_vdso.so.dbg =3D -shared -s -soname=3Dlinux-vdso.so.1 \
> > +LDFLAGS_vdso.so.dbg =3D -shared -S -soname=3Dlinux-vdso.so.1 \
> >       --build-id=3Dsha1 --hash-style=3Dboth --eh-frame-hdr
> >
> > -# We also create a special relocatable object that should mirror the s=
ymbol
> > -# table and layout of the linked DSO. With ld --just-symbols we can th=
en
> > -# refer to these symbols in the kernel code rather than hand-coded add=
resses.
> > -$(obj)/vdso-syms.S: $(obj)/vdso.so FORCE
> > -     $(call if_changed,so2s)
> > -
> >  # strip rule for the .so file
> >  $(obj)/%.so: OBJCOPYFLAGS :=3D -S
> >  $(obj)/%.so: $(obj)/%.so.dbg FORCE
> >       $(call if_changed,objcopy)
> >
> > +# Generate VDSO offsets using helper script
> > +gen-vdsosym :=3D $(srctree)/$(src)/gen_vdso_offsets.sh
> > +quiet_cmd_vdsosym =3D VDSOSYM $@
> > +     cmd_vdsosym =3D $(NM) $< | $(gen-vdsosym) | LC_ALL=3DC sort > $@
> > +
> > +include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
> > +     $(call if_changed,vdsosym)
> > +
> >  # actual build commands
> >  # The DSO images are built using a special linker script
> >  # Make sure only to export the intended __vdso_xxx symbol offsets.
> > @@ -65,11 +67,6 @@ quiet_cmd_vdsold =3D VDSOLD  $@
> >                     $(OBJCOPY) $(patsubst %, -G __vdso_%, $(vdso-syms))=
 $@.tmp $@ && \
> >                     rm $@.tmp
> >
> > -# Extracts symbol offsets from the VDSO, converting them into an assem=
bly file
> > -# that contains the same symbols at the same offsets.
> > -quiet_cmd_so2s =3D SO2S    $@
> > -      cmd_so2s =3D $(NM) -D $< | $(srctree)/$(src)/so2s.sh > $@
> > -
> >  # install commands for the unstripped file
> >  quiet_cmd_vdso_install =3D INSTALL $@
> >        cmd_vdso_install =3D cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
> > diff --git a/arch/riscv/kernel/vdso/gen_vdso_offsets.sh b/arch/riscv/ke=
rnel/vdso/gen_vdso_offsets.sh
> > new file mode 100755
> > index 000000000000..c2e5613f3495
> > --- /dev/null
> > +++ b/arch/riscv/kernel/vdso/gen_vdso_offsets.sh
> > @@ -0,0 +1,5 @@
> > +#!/bin/sh
> > +# SPDX-License-Identifier: GPL-2.0
> > +
> > +LC_ALL=3DC
> > +sed -n -e 's/^[0]\+\(0[0-9a-fA-F]*\) . \(__vdso_[a-zA-Z0-9_]*\)$/\#def=
ine \2_offset\t0x\1/p'
> > diff --git a/arch/riscv/kernel/vdso/so2s.sh b/arch/riscv/kernel/vdso/so=
2s.sh
> > deleted file mode 100755
> > index e64cb6d9440e..000000000000
> > --- a/arch/riscv/kernel/vdso/so2s.sh
> > +++ /dev/null
> > @@ -1,6 +0,0 @@
> > -#!/bin/sh
> > -# SPDX-License-Identifier: GPL-2.0+
> > -# Copyright 2020 Palmer Dabbelt <palmerdabbelt@google.com>
> > -
> > -sed 's!\([0-9a-f]*\) T \([a-z0-9_]*\)\(@@LINUX_4.15\)*!.global \2\n.se=
t \2,0x\1!' \
> > -| grep '^\.'
>
> This is giving me some unused variable warnings:
>
> In file included from arch/riscv/kernel/signal.c:16:
> arch/riscv/kernel/signal.c: In function =E2=80=98setup_rt_frame=E2=80=99:
> ./arch/riscv/include/asm/vdso.h:21:20: warning: unused variable =E2=80=98=
__vdso_rt_sigreturn=E2=80=99 [-Wunused-variable]
>    21 |  extern const char __vdso_##name[];     \
>       |                    ^~~~~~~
> arch/riscv/kernel/signal.c:197:28: note: in expansion of macro =E2=80=98V=
DSO_SYMBOL=E2=80=99
>   197 |  regs->ra =3D (unsigned long)VDSO_SYMBOL(
>       |                            ^~~~~~~~~~~

Thanks Palmer,

It seems that there was a difference in diagnostics between gcc and
clang.  The diagnostic indicated that I didn't scrub hard enough
during the cleanups.  I've sent out an updated version.  Thank you for
informing me of this missed cleanup!

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAO8XFHs-s2SHajL8NpWsK_JcG0ZoyDr9qd9jGDxdQ6bU-cKqiw%40mai=
l.gmail.com.
