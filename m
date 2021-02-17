Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBFXBWWAQMGQEU4WFZRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id BFBA631DFB4
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 20:37:59 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id a203sf8381503oib.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Feb 2021 11:37:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613590678; cv=pass;
        d=google.com; s=arc-20160816;
        b=sp8ePqojYj8toZY6rKuVzvG7v6rRY0wjilXDEHU8s71XbzMXEcwYaUIfMGQ0vpvjOE
         UIk5atUoOUrXqtCZHiZw5NX6IIR8cwVMd8A6hTlPGvtWhjQqFjosAWK0XndpUNe1cG9c
         5rLO8+NacPF5D9KrsRsOreI1p8bpdYgEVsk26CfQ6iWLDhgMwpNkr4U9+0KGWy/XZbTS
         JOfnx65hj8CxVHlhiE5pVZ9n7OnZTKUjvzBSCFmkQOSbgETF7HlaminFo4sYlvp3vFIX
         z+horZhx7rXX1nglkf4GsEg2T5xEqzqAAGw1LzTspZUYbxwJRU+rRr0p/WQ7rS+0sQjP
         pmQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=doDuZdk/TxbneaPJBHGtA6nOkUYFqSwGAXPknjWj7eo=;
        b=Xe66+w2RyDDFCJT2drXOPMt5dui3ljwlAHRrZszVTwsO/Ulq48GLh22PcVyDh20BAq
         PIB0oqBfG1LUQQX+Etnk9UdrzWv8MqMbHluwRC8TPLg1CB0dCZpdOCX1KKlEK8ixXZZB
         WxYx6BXl42xALBCfshE61E6ENz6jNKTaJRDoUa/PS+/esMq67vTuCy0lOWfL356Dmcqa
         cIfQHPpgaFBHTb3HVUTkWWk0JipHGkKUDMkQTA9s77Qu8+ym9R44JT7x3dbETIX/W4T4
         QxqM3OOyQem6urhJc5h0K4vxGtFwpoZBP1X8E0d0jy+QavxY9Pxm0AjrD4SqgPEeRFVi
         0ZvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BqfiMk8l;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=doDuZdk/TxbneaPJBHGtA6nOkUYFqSwGAXPknjWj7eo=;
        b=cpUhYm+bmpNL/qrnGYbJJj+cN13Vxu1e9yK/hgu5gdkavaOmMgUKqEPcKqzgC1qMzL
         OFA+L9wyss7dW6TduYadvMtg1fFyQSNJbKmtMMpuRJMv80e8x0UbblTuYgi4UafHFts5
         tIt9eleQKWFkG4H11mTbNKRIhJPzHfFHAZJlyeQENs21CtB/swjMCuzQa6cVRaV9zc41
         RIz57EVnDbGcmINYNoRZ3Yx7Y0X8RYywmFNmyVH5kp2MtL0muJpTdl/zYrzxi4NeNAg+
         yAA0OdYTqfimvjoAJSOsAqilTqltAPPSnExnuk7/e5rPrCu5pJ4oMACnsiW+bxuN6ggH
         cYXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=doDuZdk/TxbneaPJBHGtA6nOkUYFqSwGAXPknjWj7eo=;
        b=C0UP3lET+DOiIKrb55ClahrBPoV8tE00nxvsdXUQMlRNUGpqKnPfvEnUeGGNGXz+zy
         1BAnZTyeoQkhZEYu85k0a523PWbuk84kUbXVYpatklT/TGaGzPG5T/ObdjrbATYtJBXU
         Vytr+YgAdeycdjIwbu6HSxQVQQGILbiURO4KwQYmcoSMyMWXKETVFQ3nMG1GZRqyt1N9
         WVRiAy7XVe8KRUxUi2OxaLV0AjeO1MO5InaM0TTOVQecdLynbKG8OgbXnO6nEQ0OJNvQ
         vELxZZZgV91IhD465VWU6f2ALqrG4IxCoyOa9CMjuXqeGnhUDX31HkV4D7emgQJeOpjT
         hdpg==
X-Gm-Message-State: AOAM531huHSZG0nnkfsW/syu5WdJo0gA9bv8N+P1nPBZEIJjOO7xrO5o
	bemZKFNghB48qppG3L9i1hk=
X-Google-Smtp-Source: ABdhPJx2lXBLTouSDuwEoY4P3vyab1nzNvQa+Y6pxFRW2T3CQvPHtErLxkDpszDZxmUxESHqcxP/ng==
X-Received: by 2002:a9d:6f8a:: with SMTP id h10mr514353otq.221.1613590678743;
        Wed, 17 Feb 2021 11:37:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7b5a:: with SMTP id f26ls808230oto.8.gmail; Wed, 17 Feb
 2021 11:37:58 -0800 (PST)
X-Received: by 2002:a05:6830:1605:: with SMTP id g5mr537358otr.292.1613590678331;
        Wed, 17 Feb 2021 11:37:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613590678; cv=none;
        d=google.com; s=arc-20160816;
        b=qYKqneJbQD+m79QGgQSAoNSslRumK69ITpGA/bANUZREU5n1Oi99LZW36mygZkG1Iw
         iJnt9kHUaPUxOYR+qPsL1XI0NhA5VZKodxn/X0urioMEDvKc/ok6z/BWTdSF8smHewyO
         YdEIOoFPyaCYXyPyfUL6Mzra0ZT7/iFjOxiyN3J498MWTPOhGudJ92c/DAkDB22VI6fu
         jAj4ajBBpWRKuwafjjct0xycMAj8fyoDeIJ/o+3f/vRqcWoSzqUfO8StwTAIDg6RNhs9
         AnzWvVOD+vACRw8nbYjDXVUP/OzT1agcbvdVEr75s+Uz62+0GmLEXzXM7jB/57TIDF/C
         5KJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rfgHbWv2++HjoPatuM/+Ptazk7BbnEg88uCQ3ZA4gdU=;
        b=P3ziusg/IhMPAKn7/sliXtOPqDnBUZAwRal4adoj/PIXCfApYdjGqEc/ouArp/6Cfx
         ip7AdQr6wOc9GD7dcba5JR5Miuc+LjlfCXcw3EgcAIadGnOIB3S3eajVR5t1zDa7Y/8N
         EOUCmqzthbUW1hkLtvZ1f7XteZf//QUE0tQtm4BLRbXsmXIZWkTJeePusBqtOJuOfypr
         CG0L0GJJwwFjcrJ90HaltcI+0OlwC3LPjDn1jlMJBP5xU5ruhk2Da+cvYXEjIl7v4Tsu
         mRH76EAxOCgV9FHii6AyAMfewmS/UAr/xmAy2ddFef8B2x3fMVD0Ulvr0OJ2voB6A0z4
         WlKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BqfiMk8l;
       spf=pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::332 as permitted sender) smtp.mailfrom=jiancai@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com. [2607:f8b0:4864:20::332])
        by gmr-mx.google.com with ESMTPS id q10si352998oon.2.2021.02.17.11.37.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Feb 2021 11:37:58 -0800 (PST)
Received-SPF: pass (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::332 as permitted sender) client-ip=2607:f8b0:4864:20::332;
Received: by mail-ot1-x332.google.com with SMTP id b16so10687829otq.1
        for <clang-built-linux@googlegroups.com>; Wed, 17 Feb 2021 11:37:58 -0800 (PST)
X-Received: by 2002:a05:6830:150a:: with SMTP id k10mr500532otp.235.1613590677942;
 Wed, 17 Feb 2021 11:37:57 -0800 (PST)
MIME-Version: 1.0
References: <3f61af0eee9b495e8e8c032902d033c5@AcuMS.aculab.com>
 <20210212195255.1321544-1-jiancai@google.com> <CAKwvOdn7N9dRfjrR0NiE6Dc_f_6PU-_4g1G5uRcoAvnob51ZfA@mail.gmail.com>
In-Reply-To: <CAKwvOdn7N9dRfjrR0NiE6Dc_f_6PU-_4g1G5uRcoAvnob51ZfA@mail.gmail.com>
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 17 Feb 2021 11:37:46 -0800
Message-ID: <CA+SOCLJOa00r9PERvEh+iztUYKsCKwfNUSCCtpuJ8osRnp8CmA@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: Implement Clang's SLS mitigation
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>, 
	David Laight <David.Laight@aculab.com>, Russell King <linux@armlinux.org.uk>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	James Morris <jmorris@namei.org>, "Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-security-module@vger.kernel.org
Content-Type: multipart/alternative; boundary="0000000000002c412c05bb8d5b1a"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BqfiMk8l;       spf=pass
 (google.com: domain of jiancai@google.com designates 2607:f8b0:4864:20::332
 as permitted sender) smtp.mailfrom=jiancai@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

--0000000000002c412c05bb8d5b1a
Content-Type: text/plain; charset="UTF-8"

Thanks all for the comments. My original plan was to add this config and
disable it by default. Whoever wants to use this mitigation can then turn
it on at their own risk. I realized my patch was not correct as it turned
on the flag by default if the compiler supported it, which exposed the boot
failure Nick observed. Will investigate and update my patch.

Thanks,
Jian

On Wed, Feb 17, 2021 at 10:20 AM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> On Fri, Feb 12, 2021 at 11:53 AM 'Jian Cai' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
>
> The oneline of the commit is "ARM: Implement Clang's SLS mitigation,"
> but that's not precise. GCC implements the same flag with the same
> arguments.  There is nothing compiler specific about this patch.
> (Though perhaps different section names are used, see below).
>
> >
> > This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on
> > -mharden-sls=all, which mitigates the straight-line speculation
> > vulnerability, speculative execution of the instruction following some
> > unconditional jumps. Notice -mharden-sls= has other options as below,
> > and this config turns on the strongest option.
> >
> > all: enable all mitigations against Straight Line Speculation that are
> implemented.
> > none: disable all mitigations against Straight Line Speculation.
> > retbr: enable the mitigation against Straight Line Speculation for RET
> and BR instructions.
> > blr: enable the mitigation against Straight Line Speculation for BLR
> instructions.
> >
> > Link: https://reviews.llvm.org/D93221
> > Link: https://reviews.llvm.org/D81404
> > Link:
> https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation
> >
> https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/frequently-asked-questions#SLS2
> >
> > Suggested-by: Manoj Gupta <manojgupta@google.com>
> > Suggested-by: Nathan Chancellor  <nathan@kernel.org>
> > Suggested-by: David Laight <David.Laight@aculab.com>
> > Signed-off-by: Jian Cai <jiancai@google.com>
>
> I observe lots of linker warnings with this applied on linux-next:
> ld.lld: warning:
> init/built-in.a(main.o):(.text.__llvm_slsblr_thunk_x0) is being placed
> in '.text.__llvm_slsblr_thunk_x0'
> You need to modify arch/arm64/kernel/vmlinux.lds.S and
> arch/arm/kernel/vmlinux.lds.S (and possibly
> arch/arm/boot/compressed/vmlinux.lds.S as well) to add these sections
> back into .text so that the linkers don't place these orphaned
> sections in wild places.  The resulting aarch64 kernel image doesn't
> even boot (under emulation).
>
> For 32b ARM:
> ld.lld: warning:
> init/built-in.a(main.o):(.text.__llvm_slsblr_thunk_arm_r0) is being
> placed in '.text.__llvm_slsblr_thunk_arm_r0'
> ...
> ld.lld: warning:
> init/built-in.a(main.o):(.text.__llvm_slsblr_thunk_thumb_r0) is being
> placed in '.text.__llvm_slsblr_thunk_thumb_r0'
> ...
> <trimmed, but there's close to 60 of these>
>
> And the image doesn't boot (under emulation).
>
> > ---
> >
> > Changes v1 -> v2:
> >  Update the description and patch based on Nathan and David's comments.
> >
> >  arch/arm/Makefile          | 4 ++++
> >  arch/arm64/Makefile        | 4 ++++
> >  security/Kconfig.hardening | 7 +++++++
> >  3 files changed, 15 insertions(+)
> >
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index 4aaec9599e8a..11d89ef32da9 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -48,6 +48,10 @@ CHECKFLAGS   += -D__ARMEL__
> >  KBUILD_LDFLAGS += -EL
> >  endif
> >
> > +ifeq ($(CONFIG_HARDEN_SLS_ALL), y)
> > +KBUILD_CFLAGS  += -mharden-sls=all
> > +endif
> > +
> >  #
> >  # The Scalar Replacement of Aggregates (SRA) optimization pass in GCC
> 4.9 and
> >  # later may result in code being generated that handles signed short
> and signed
> > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > index 90309208bb28..ca7299b356a9 100644
> > --- a/arch/arm64/Makefile
> > +++ b/arch/arm64/Makefile
> > @@ -34,6 +34,10 @@ $(warning LSE atomics not supported by binutils)
> >    endif
> >  endif
> >
> > +ifeq ($(CONFIG_HARDEN_SLS_ALL), y)
> > +KBUILD_CFLAGS  += -mharden-sls=all
> > +endif
> > +
> >  cc_has_k_constraint := $(call try-run,echo                             \
> >         'int main(void) {                                               \
> >                 asm volatile("and w0, w0, %w0" :: "K" (4294967295));    \
> > diff --git a/security/Kconfig.hardening b/security/Kconfig.hardening
> > index 269967c4fc1b..9266d8d1f78f 100644
> > --- a/security/Kconfig.hardening
> > +++ b/security/Kconfig.hardening
> > @@ -121,6 +121,13 @@ choice
> >
> >  endchoice
> >
> > +config HARDEN_SLS_ALL
> > +       bool "enable SLS vulnerability hardening"
> > +       def_bool $(cc-option,-mharden-sls=all)
>
> This fails to set CONFIG_HARDEN_SLS_ALL for me with:
> $ ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- make LLVM=1 LLVM_IAS=1
> -j72 defconfig
> $ grep SLS_ALL .config
> # CONFIG_HARDEN_SLS_ALL is not set
>
> but it's flipped on there for arm64 defconfig:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
> -j72 defconfig
> $ grep SLS_ALL .config
> CONFIG_HARDEN_SLS_ALL=y
>
> What's going on there?  Is the cc-option Kconfig macro broken for
> Clang when cross compiling 32b ARM?  I can still enable
> CONFIG_HARDEN_SLS_ALL via menuconfig, but I wonder if the default
> value is funny because the cc-option check is failing?
>
> > +        help
> > +          Enables straight-line speculation vulnerability hardening
> > +         at highest level.
> > +
> >  config GCC_PLUGIN_STRUCTLEAK_VERBOSE
> >         bool "Report forcefully initialized variables"
> >         depends on GCC_PLUGIN_STRUCTLEAK
> > --
>
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJOa00r9PERvEh%2BiztUYKsCKwfNUSCCtpuJ8osRnp8CmA%40mail.gmail.com.

--0000000000002c412c05bb8d5b1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks all for the comments. My original plan was to add t=
his config and disable it by default. Whoever wants to use this mitigation =
can then turn it on at their own risk. I realized my patch was not correct =
as it turned on the flag by default if the compiler supported it, which exp=
osed the boot failure Nick observed. Will investigate and update my patch.<=
div><div><br></div><div>Thanks,</div><div>Jian</div></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 17, 2=
021 at 10:20 AM Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.=
com">ndesaulniers@google.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">On Fri, Feb 12, 2021 at 11:53 AM &#39;Jian Cai&=
#39; via Clang Built Linux<br>
&lt;<a href=3D"mailto:clang-built-linux@googlegroups.com" target=3D"_blank"=
>clang-built-linux@googlegroups.com</a>&gt; wrote:<br>
<br>
The oneline of the commit is &quot;ARM: Implement Clang&#39;s SLS mitigatio=
n,&quot;<br>
but that&#39;s not precise. GCC implements the same flag with the same<br>
arguments.=C2=A0 There is nothing compiler specific about this patch.<br>
(Though perhaps different section names are used, see below).<br>
<br>
&gt;<br>
&gt; This patch adds CONFIG_HARDEN_SLS_ALL that can be used to turn on<br>
&gt; -mharden-sls=3Dall, which mitigates the straight-line speculation<br>
&gt; vulnerability, speculative execution of the instruction following some=
<br>
&gt; unconditional jumps. Notice -mharden-sls=3D has other options as below=
,<br>
&gt; and this config turns on the strongest option.<br>
&gt;<br>
&gt; all: enable all mitigations against Straight Line Speculation that are=
 implemented.<br>
&gt; none: disable all mitigations against Straight Line Speculation.<br>
&gt; retbr: enable the mitigation against Straight Line Speculation for RET=
 and BR instructions.<br>
&gt; blr: enable the mitigation against Straight Line Speculation for BLR i=
nstructions.<br>
&gt;<br>
&gt; Link: <a href=3D"https://reviews.llvm.org/D93221" rel=3D"noreferrer" t=
arget=3D"_blank">https://reviews.llvm.org/D93221</a><br>
&gt; Link: <a href=3D"https://reviews.llvm.org/D81404" rel=3D"noreferrer" t=
arget=3D"_blank">https://reviews.llvm.org/D81404</a><br>
&gt; Link: <a href=3D"https://developer.arm.com/support/arm-security-update=
s/speculative-processor-vulnerability/downloads/straight-line-speculation" =
rel=3D"noreferrer" target=3D"_blank">https://developer.arm.com/support/arm-=
security-updates/speculative-processor-vulnerability/downloads/straight-lin=
e-speculation</a><br>
&gt; <a href=3D"https://developer.arm.com/support/arm-security-updates/spec=
ulative-processor-vulnerability/frequently-asked-questions#SLS2" rel=3D"nor=
eferrer" target=3D"_blank">https://developer.arm.com/support/arm-security-u=
pdates/speculative-processor-vulnerability/frequently-asked-questions#SLS2<=
/a><br>
&gt;<br>
&gt; Suggested-by: Manoj Gupta &lt;<a href=3D"mailto:manojgupta@google.com"=
 target=3D"_blank">manojgupta@google.com</a>&gt;<br>
&gt; Suggested-by: Nathan Chancellor=C2=A0 &lt;<a href=3D"mailto:nathan@ker=
nel.org" target=3D"_blank">nathan@kernel.org</a>&gt;<br>
&gt; Suggested-by: David Laight &lt;<a href=3D"mailto:David.Laight@aculab.c=
om" target=3D"_blank">David.Laight@aculab.com</a>&gt;<br>
&gt; Signed-off-by: Jian Cai &lt;<a href=3D"mailto:jiancai@google.com" targ=
et=3D"_blank">jiancai@google.com</a>&gt;<br>
<br>
I observe lots of linker warnings with this applied on linux-next:<br>
ld.lld: warning:<br>
init/built-in.a(main.o):(.text.__llvm_slsblr_thunk_x0) is being placed<br>
in &#39;.text.__llvm_slsblr_thunk_x0&#39;<br>
You need to modify arch/arm64/kernel/vmlinux.lds.S and<br>
arch/arm/kernel/vmlinux.lds.S (and possibly<br>
arch/arm/boot/compressed/vmlinux.lds.S as well) to add these sections<br>
back into .text so that the linkers don&#39;t place these orphaned<br>
sections in wild places.=C2=A0 The resulting aarch64 kernel image doesn&#39=
;t<br>
even boot (under emulation).<br>
<br>
For 32b ARM:<br>
ld.lld: warning:<br>
init/built-in.a(main.o):(.text.__llvm_slsblr_thunk_arm_r0) is being<br>
placed in &#39;.text.__llvm_slsblr_thunk_arm_r0&#39;<br>
...<br>
ld.lld: warning:<br>
init/built-in.a(main.o):(.text.__llvm_slsblr_thunk_thumb_r0) is being<br>
placed in &#39;.text.__llvm_slsblr_thunk_thumb_r0&#39;<br>
...<br>
&lt;trimmed, but there&#39;s close to 60 of these&gt;<br>
<br>
And the image doesn&#39;t boot (under emulation).<br>
<br>
&gt; ---<br>
&gt;<br>
&gt; Changes v1 -&gt; v2:<br>
&gt;=C2=A0 Update the description and patch based on Nathan and David&#39;s=
 comments.<br>
&gt;<br>
&gt;=C2=A0 arch/arm/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 4 ++++<br>
&gt;=C2=A0 arch/arm64/Makefile=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 4 ++++<br>
&gt;=C2=A0 security/Kconfig.hardening | 7 +++++++<br>
&gt;=C2=A0 3 files changed, 15 insertions(+)<br>
&gt;<br>
&gt; diff --git a/arch/arm/Makefile b/arch/arm/Makefile<br>
&gt; index 4aaec9599e8a..11d89ef32da9 100644<br>
&gt; --- a/arch/arm/Makefile<br>
&gt; +++ b/arch/arm/Makefile<br>
&gt; @@ -48,6 +48,10 @@ CHECKFLAGS=C2=A0 =C2=A0+=3D -D__ARMEL__<br>
&gt;=C2=A0 KBUILD_LDFLAGS +=3D -EL<br>
&gt;=C2=A0 endif<br>
&gt;<br>
&gt; +ifeq ($(CONFIG_HARDEN_SLS_ALL), y)<br>
&gt; +KBUILD_CFLAGS=C2=A0 +=3D -mharden-sls=3Dall<br>
&gt; +endif<br>
&gt; +<br>
&gt;=C2=A0 #<br>
&gt;=C2=A0 # The Scalar Replacement of Aggregates (SRA) optimization pass i=
n GCC 4.9 and<br>
&gt;=C2=A0 # later may result in code being generated that handles signed s=
hort and signed<br>
&gt; diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile<br>
&gt; index 90309208bb28..ca7299b356a9 100644<br>
&gt; --- a/arch/arm64/Makefile<br>
&gt; +++ b/arch/arm64/Makefile<br>
&gt; @@ -34,6 +34,10 @@ $(warning LSE atomics not supported by binutils)<br=
>
&gt;=C2=A0 =C2=A0 endif<br>
&gt;=C2=A0 endif<br>
&gt;<br>
&gt; +ifeq ($(CONFIG_HARDEN_SLS_ALL), y)<br>
&gt; +KBUILD_CFLAGS=C2=A0 +=3D -mharden-sls=3Dall<br>
&gt; +endif<br>
&gt; +<br>
&gt;=C2=A0 cc_has_k_constraint :=3D $(call try-run,echo=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&#39;int main(void) {=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0asm volat=
ile(&quot;and w0, w0, %w0&quot; :: &quot;K&quot; (4294967295));=C2=A0 =C2=
=A0 \<br>
&gt; diff --git a/security/Kconfig.hardening b/security/Kconfig.hardening<b=
r>
&gt; index 269967c4fc1b..9266d8d1f78f 100644<br>
&gt; --- a/security/Kconfig.hardening<br>
&gt; +++ b/security/Kconfig.hardening<br>
&gt; @@ -121,6 +121,13 @@ choice<br>
&gt;<br>
&gt;=C2=A0 endchoice<br>
&gt;<br>
&gt; +config HARDEN_SLS_ALL<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0bool &quot;enable SLS vulnerability harden=
ing&quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0def_bool $(cc-option,-mharden-sls=3Dall)<b=
r>
<br>
This fails to set CONFIG_HARDEN_SLS_ALL for me with:<br>
$ ARCH=3Darm CROSS_COMPILE=3Darm-linux-gnueabi- make LLVM=3D1 LLVM_IAS=3D1<=
br>
-j72 defconfig<br>
$ grep SLS_ALL .config<br>
# CONFIG_HARDEN_SLS_ALL is not set<br>
<br>
but it&#39;s flipped on there for arm64 defconfig:<br>
$ ARCH=3Darm64 CROSS_COMPILE=3Daarch64-linux-gnu- make LLVM=3D1 LLVM_IAS=3D=
1<br>
-j72 defconfig<br>
$ grep SLS_ALL .config<br>
CONFIG_HARDEN_SLS_ALL=3Dy<br>
<br>
What&#39;s going on there?=C2=A0 Is the cc-option Kconfig macro broken for<=
br>
Clang when cross compiling 32b ARM?=C2=A0 I can still enable<br>
CONFIG_HARDEN_SLS_ALL via menuconfig, but I wonder if the default<br>
value is funny because the cc-option check is failing?<br>
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 help<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Enables straight-line speculation =
vulnerability hardening<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0at highest level.<br>
&gt; +<br>
&gt;=C2=A0 config GCC_PLUGIN_STRUCTLEAK_VERBOSE<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bool &quot;Report forcefully initiali=
zed variables&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0depends on GCC_PLUGIN_STRUCTLEAK<br>
&gt; --<br>
<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BSOCLJOa00r9PERvEh%2BiztUYKsCKwfNUSCCtpuJ8=
osRnp8CmA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/clang-built-linux/CA%2BSOCLJOa00r9PERvEh%2BiztUYK=
sCKwfNUSCCtpuJ8osRnp8CmA%40mail.gmail.com</a>.<br />

--0000000000002c412c05bb8d5b1a--
