Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZW42CEAMGQE74ANMGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id B76AD3E9963
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 22:09:11 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id i10-20020a170902c94ab029012d7030ce7bsf1036263pla.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 13:09:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628712550; cv=pass;
        d=google.com; s=arc-20160816;
        b=P7VLmKQDFbGrEX+HNTBTV5bymQ26nx2u0aDoWxV343FXSIL5eXU3lp2GbYtHkeiAK/
         YYOWkuaG8mjuqWS2xX1SiorWl1u24n3YWoY7IcV3dpndcz0NdsoTcL/WbdwXITp54tq8
         vV2XIxul1STrNCbfK/zIw8T09VYfSpI+7LJat+sISSZnlLEC7S1oFQL4Iuymw44TQoG2
         2rfcUPX3XO60t/uRYUHrp//wHOKzrfWBknL49ktuRDLo7iWBiNwnwKaCE3w5Ykt2nPgF
         +iXXA6vfQ3QYkSiiL/rnV/nM/CBRNFMlm/XcMdRXfd7URYXL8KmFROrCh3uvmORKnaan
         Im0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Mh4c0SRoUuhvNINy0e6yhjF7WERO8VmhlVO70NlHV4A=;
        b=CBbCqr651/hxieTWool/sB9xHehXPB8MuFASAq2QJYQvxnrZNjBAVFH9DfbBkf/hxK
         TOs+Y7wP4UMzlp+mSyqeQr3vJBpOBkzEzg/76iKkI2fuE81Zwu5MrFcdMepUGR9lSzSJ
         z754Yj94zBl1vT9+yYgzQg+Hh/IHBaVONMwTf1TLZXrTRov7Bp3wbnjWFzS1gG9YmFBv
         2l9523N3aMF8/oyn2OgXxDmWm3EFc136IBxJ8m2lD3NARpdvibUFRXnh9TRodpzXjoUh
         pFXL7aMh/I0paa9GgBhjsmbBGuK5eujTzGK1EjACYEwBI9ASPQCbabSejNSEANRgYf6q
         r9bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FK4OreJM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mh4c0SRoUuhvNINy0e6yhjF7WERO8VmhlVO70NlHV4A=;
        b=ZvKtpN464o7Zeik361cAa9PzYZoXLZtUh9edEC2Q1GmmRTQvI+6ScRTMSc6hF19p6C
         gnyVP2fNZcWx1utGWprtFsRPCW+9Ec4+Tn4ErkZDGpeglb+eMpuOInmzh+6jdKtfTQPv
         Z4f7/ZLmeL4ClUA9ry+Sas+cIzai0AbR85w5M7665S71IDTjoLq3qhh0zfp6rL9VldGx
         MAItuqCdda6h5RQa6ZFgK3KrbbznVcW/owpoZJsqJBVk5CLLMdsilTsmmklvxWXHvG1Y
         vfn/soXt3bMkd0PSs+Y4LFVQiSYess8MVe2BWDFW9StNVLhzZTI+PN6ZdOCnpQzqAqCi
         LoLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mh4c0SRoUuhvNINy0e6yhjF7WERO8VmhlVO70NlHV4A=;
        b=B1GKXxb01ez2C6bvZ2uUUEhRjKZGDMOwe4KdtdPIzu/MmCS6fQD6XqIjgqtvZjEYKd
         hWTJALnQpWnaaCpgDH44wuJmBH8FSgQ8xg3/9hc6Wtm3/F66UTd9MfsSYYDwN3E9ak+F
         GvmWEyVFOB8Q8GTIGUfpj/gRkMiNviQ9zcXvA9TvZ0FpOMJvrY4RiZIbQo4MM697NQGv
         IDHOmFVFVqFQpfVi2zkHRiHcmZpe5Z2W1b4Qlcoh53k5nxbRYzWbioRXJmUtyo5VB6i7
         JMFUK/IuwsjQ8lPkpKVTh37EtS0ktp1UyK76ys0+57/oicYgdkxcYYamlGxeMC8wvv3/
         unUg==
X-Gm-Message-State: AOAM533lhIAfXzeVdHFZkPBsR5l2j/PoHLbr5DahZRdcnix7EKtIJ6Ts
	DvVz0wysf4Cxl9WHfbFwU80=
X-Google-Smtp-Source: ABdhPJzYC4c+ifmuLZvTEKKPFmo3T5D9n9Cb9fjXwyeJmj1rBhcZ4U5ahrDas1o4s5wYLqT9kzvepw==
X-Received: by 2002:a17:90a:116:: with SMTP id b22mr277907pjb.97.1628712550411;
        Wed, 11 Aug 2021 13:09:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:a1a:: with SMTP id p26ls1235881pfh.9.gmail; Wed, 11
 Aug 2021 13:09:09 -0700 (PDT)
X-Received: by 2002:aa7:8116:0:b029:346:8678:ce26 with SMTP id b22-20020aa781160000b02903468678ce26mr498406pfi.15.1628712549849;
        Wed, 11 Aug 2021 13:09:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628712549; cv=none;
        d=google.com; s=arc-20160816;
        b=ata4GrWnCN6D0flcfhYSF3OxiDJU3xzlSDfZeV2D6P5lPSeaAJTEO46TYx7JJFAMJi
         WHJxDs8gvPSA4mgFcyK4u2rkNJlTs/D/mPd4CxZtPetV5t1ocSFR+IEbJgmirBw3Nj/e
         LnBZppvRAJjMn81uihuOdvhAyHczVAijSjj0DrzWYw7WJCDYQA2jfnv2AOlqOvaw4gpv
         HkOTjWC63GAb2v2wS2JUY0oUKcV271ovZbUdC39VU2G80Gk0hQa3VVUiInURkd5VFD4w
         E/vH9UP0Nx7YF2htcVzWT5x1d4mPYcz/UtUpkg8EwbZD7mosOHgvJmle1f2qJkQ6mv4l
         nTIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=exnctuowc9qHgxEWsNBVGITBkzW8bW+Co5aongFhmAI=;
        b=vpQtxvUfHEH+jGj9rL1Gr2HnpkQR+pj99zkBvg4AOQV2MUOxiNb4DZgebmXoK7XmXL
         X54ADDvlhnW75NOssaEORyIH5xjqKN5Ns3xoTAsGPU7Hn5GhgnWaAGqao0+d4Ka4fRJc
         HgEwrP9b7WdffI/543rbGWWzaz/vs6eKAHyfElhvY3yCU0jk8lSOtvNdh1YouQARkfBE
         9N3QrRKLlRSf84oVJANWiQwo84j/VuaaTn6qN8Le1TNU1IgLM5U9MrIlUCsz01gt+bIG
         1aVAqO8HLcURwAUJ9K0vtDA8Us13ohjUk2D0Wj1jJNxcPBvSL315FE+A7jYDeLMScWo5
         QsaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FK4OreJM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com. [2607:f8b0:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id v24si14304pgh.2.2021.08.11.13.09.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Aug 2021 13:09:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::32b as permitted sender) client-ip=2607:f8b0:4864:20::32b;
Received: by mail-ot1-x32b.google.com with SMTP id 61-20020a9d0d430000b02903eabfc221a9so4891484oti.0
        for <clang-built-linux@googlegroups.com>; Wed, 11 Aug 2021 13:09:09 -0700 (PDT)
X-Received: by 2002:a9d:4104:: with SMTP id o4mr543878ote.139.1628712548945;
 Wed, 11 Aug 2021 13:09:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210811175647.3851629-1-ndesaulniers@google.com> <cf568688-01a3-849e-2bcc-1cbe6845c9f8@kernel.org>
In-Reply-To: <cf568688-01a3-849e-2bcc-1cbe6845c9f8@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 11 Aug 2021 13:08:57 -0700
Message-ID: <CAKwvOd=2kCSewy+LvdhB=mrwfE4-bjiPE44O-nX1jVa76pbw+g@mail.gmail.com>
Subject: Re: [PATCH] x86/build: remove stale cc-option checks
To: Nathan Chancellor <nathan@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FK4OreJM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::32b
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

On Wed, Aug 11, 2021 at 12:22 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 8/11/2021 10:56 AM, Nick Desaulniers wrote:
> > cc-option, __cc-option, cc-option-yn, and cc-disable-warning all invoke
> > the compiler during build time, and can slow down the build when these
> > checks become stale for our supported compilers, whose minimally
> > supported versions increases over time. See
> > Documentation/process/changes.rst for the current supported minimal
> > versions (GCC 4.9+, clang 10.0.1+). Compiler version support for these
> > flags may be verified on godbolt.org.
> >
> > The following flags are supported by all supported versions of GCC and
> > Clang. Remove their cc-option, __cc-option, and cc-option-yn tests.
> > * -Wno-address-of-packed-member
> > * -mno-avx
> > * -m32
> > * -mno-80387
> > * -march=k8
> > * -march=nocona
> > * -march=core2
> > * -march=atom
> > * -mtune=generic
> > * -mfentry
> >
> > -mpreferred-stack-boundary= is specific to GCC, while
> > -mstack-alignment= is specific to Clang. Rather than test for this three
> > times via cc-option and __cc-option, rely on CONFIG_CC_IS_* from
> > Kconfig.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1436
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>
>
> A few comments below.
>
> > ---
> >   arch/x86/Makefile | 51 +++++++++++++++++------------------------------
> >   1 file changed, 18 insertions(+), 33 deletions(-)
> >
> > diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> > index 0fa7dc73b5d8..6de2985ba1a5 100644
> > --- a/arch/x86/Makefile
> > +++ b/arch/x86/Makefile
> > @@ -14,10 +14,13 @@ endif
> >
> >   # For gcc stack alignment is specified with -mpreferred-stack-boundary,
> >   # clang has the option -mstack-alignment for that purpose.
> > +ifdef CONFIG_CC_IS_GCC
> >   ifneq ($(call cc-option, -mpreferred-stack-boundary=4),)
>
> Is this cc-option call still needed? It looks like it was added by
> commit d77698df39a5 ("x86/build: Specify stack alignment for clang"),
> which at the time claimed to support back to gcc 3.2, but that flag
> appears to be supported at least back to gcc 4.1.2 according to godbolt.

Yes!
https://godbolt.org/z/1nWbrGTb3

While the test is for a value of 4, the actual flags used are 2 and 3;
values less than 4 were only supported in GCC 7+!
So the test is wrong and should have been for a value less than 4; it
didn't fail because of the additional cc-option/__cc-option below that
I removed.

So I should send a v2 that changes that particular test to test
support for the value 3 (or 2) rather than 4.  Let me know off thread
if you'd like me to carry forward your RB tag for that.

>
> >         cc_stack_align4 := -mpreferred-stack-boundary=2
> >         cc_stack_align8 := -mpreferred-stack-boundary=3
> > -else ifneq ($(call cc-option, -mstack-alignment=16),)
> > +endif
> > +endif
> > +ifdef CONFIG_CC_IS_CLANG
> >         cc_stack_align4 := -mstack-alignment=4
> >         cc_stack_align8 := -mstack-alignment=8
> >   endif
> > @@ -31,8 +34,8 @@ REALMODE_CFLAGS     := -m16 -g -Os -DDISABLE_BRANCH_PROFILING \
> >
> >   REALMODE_CFLAGS += -ffreestanding
> >   REALMODE_CFLAGS += -fno-stack-protector
> > -REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -Wno-address-of-packed-member)
> > -REALMODE_CFLAGS += $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $(cc_stack_align4))
> > +REALMODE_CFLAGS += -Wno-address-of-packed-member
> > +REALMODE_CFLAGS += $(cc_stack_align4)
> >   REALMODE_CFLAGS += $(CLANG_FLAGS)
> >   export REALMODE_CFLAGS
> >
> > @@ -48,8 +51,7 @@ export BITS
> >   #
> >   #    https://gcc.gnu.org/bugzilla/show_bug.cgi?id=53383
> >   #
> > -KBUILD_CFLAGS += -mno-sse -mno-mmx -mno-sse2 -mno-3dnow
> > -KBUILD_CFLAGS += $(call cc-option,-mno-avx,)
> > +KBUILD_CFLAGS += -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx
> >
> >   # Intel CET isn't enabled in the kernel
> >   KBUILD_CFLAGS += $(call cc-option,-fcf-protection=none)
> > @@ -59,9 +61,8 @@ ifeq ($(CONFIG_X86_32),y)
> >           UTS_MACHINE := i386
> >           CHECKFLAGS += -D__i386__
> >
> > -        biarch := $(call cc-option,-m32)
> > -        KBUILD_AFLAGS += $(biarch)
> > -        KBUILD_CFLAGS += $(biarch)
> > +        KBUILD_AFLAGS += -m32
> > +        KBUILD_CFLAGS += -m32
> >
> >           KBUILD_CFLAGS += -msoft-float -mregparm=3 -freg-struct-return
> >
> > @@ -72,7 +73,7 @@ ifeq ($(CONFIG_X86_32),y)
> >           # Align the stack to the register width instead of using the default
> >           # alignment of 16 bytes. This reduces stack usage and the number of
> >           # alignment instructions.
> > -        KBUILD_CFLAGS += $(call cc-option,$(cc_stack_align4))
> > +        KBUILD_CFLAGS += $(cc_stack_align4)
> >
> >           # CPU-specific tuning. Anything which can be shared with UML should go here.
> >           include $(srctree)/arch/x86/Makefile_32.cpu
>
> What tree were you intending to target with this? If it is -tip, this is
> going to cause it to fail to apply because the '$(srctree)' comes from
> Masahiro:
>
> https://git.kernel.org/masahiroy/linux-kbuild/c/d8285639550578a1bf2d102391d1a9e08e0586ca

I can regen v2 against tip.

>
> > @@ -93,7 +94,6 @@ else
> >           UTS_MACHINE := x86_64
> >           CHECKFLAGS += -D__x86_64__
> >
> > -        biarch := -m64
> >           KBUILD_AFLAGS += -m64
> >           KBUILD_CFLAGS += -m64
> >
> > @@ -104,7 +104,7 @@ else
> >           KBUILD_CFLAGS += $(call cc-option,-falign-loops=1)
> >
> >           # Don't autogenerate traditional x87 instructions
> > -        KBUILD_CFLAGS += $(call cc-option,-mno-80387)
> > +        KBUILD_CFLAGS += -mno-80387
> >           KBUILD_CFLAGS += $(call cc-option,-mno-fp-ret-in-387)
> >
> >           # By default gcc and clang use a stack alignment of 16 bytes for x86.
> > @@ -114,20 +114,17 @@ else
> >           # default alignment which keep the stack *mis*aligned.
> >           # Furthermore an alignment to the register width reduces stack usage
> >           # and the number of alignment instructions.
> > -        KBUILD_CFLAGS += $(call cc-option,$(cc_stack_align8))
> > +        KBUILD_CFLAGS += $(cc_stack_align8)
> >
> >       # Use -mskip-rax-setup if supported.
> >       KBUILD_CFLAGS += $(call cc-option,-mskip-rax-setup)
> >
> >           # FIXME - should be integrated in Makefile.cpu (Makefile_32.cpu)
> > -        cflags-$(CONFIG_MK8) += $(call cc-option,-march=k8)
> > -        cflags-$(CONFIG_MPSC) += $(call cc-option,-march=nocona)
> > -
> > -        cflags-$(CONFIG_MCORE2) += \
> > -                $(call cc-option,-march=core2,$(call cc-option,-mtune=generic))
> > -     cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
> > -             $(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
> > -        cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)
> > +        cflags-$(CONFIG_MK8)         += -march=k8
> > +        cflags-$(CONFIG_MPSC)                += -march=nocona
> > +        cflags-$(CONFIG_MCORE2)              += -march=core2
> > +        cflags-$(CONFIG_MATOM)               += -march=atom
> > +        cflags-$(CONFIG_GENERIC_CPU) += -mtune=generic
> >           KBUILD_CFLAGS += $(cflags-y)
> >
> >           KBUILD_CFLAGS += -mno-red-zone
> > @@ -158,18 +155,6 @@ export CONFIG_X86_X32_ABI
> >   ifdef CONFIG_FUNCTION_GRAPH_TRACER
> >     ifndef CONFIG_HAVE_FENTRY
> >       ACCUMULATE_OUTGOING_ARGS := 1
> > -  else
> > -    ifeq ($(call cc-option-yn, -mfentry), n)
> > -     ACCUMULATE_OUTGOING_ARGS := 1
> > -
> > -     # GCC ignores '-maccumulate-outgoing-args' when used with '-Os'.
> > -     # If '-Os' is enabled, disable it and print a warning.
> > -        ifdef CONFIG_CC_OPTIMIZE_FOR_SIZE
> > -          undefine CONFIG_CC_OPTIMIZE_FOR_SIZE
> > -          $(warning Disabling CONFIG_CC_OPTIMIZE_FOR_SIZE.  Your compiler does not have -mfentry so you cannot optimize for size with CONFIG_FUNCTION_GRAPH_TRACER.)
> > -        endif
> > -
> > -    endif
> >     endif
> >   endif
> >
> > @@ -193,7 +178,7 @@ ifdef CONFIG_RETPOLINE
> >     # only been fixed starting from gcc stable version 8.4.0 and
> >     # onwards, but not for older ones. See gcc bug #86952.
> >     ifndef CONFIG_CC_IS_CLANG
> > -    KBUILD_CFLAGS += $(call cc-option,-fno-jump-tables)
> > +    KBUILD_CFLAGS += -fno-jump-tables
> >     endif
> >   endif
> >
> >
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D2kCSewy%2BLvdhB%3DmrwfE4-bjiPE44O-nX1jVa76pbw%2Bg%40mail.gmail.com.
