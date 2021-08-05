Return-Path: <clang-built-linux+bncBCTYRTHE4EDRBYECWCEAMGQE6PMI3MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 540F73E17BC
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 17:18:58 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id h21-20020a17090adb95b029017797967ffbsf6599163pjv.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 08:18:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628176737; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dn6A3xX6334uWydw9O4wUemOHYLGQt83r0blCBzJtJH4dsms/waJS9efSJRW1G9TA8
         t4265ylWgZ4MHYqpXHeiQ1wL5lUNLJhtIxeMHkKn+zIQKqBRfomDNAOhnvb7YIDQFqMJ
         R8z9ryvhBTNu0FCf6FpB0i28S7W72/k0QkwA9kvXjjEJ11n91D2oonywee7kYJBZ2wd6
         UHNMaTkOMNCTcfTzxGN05UzK1aQsodrrJYOAd4ULeuOZGhxEJkYww1U8AyHsaPkmMKsf
         TbDxO1dQQZBaniGLKqN85W959+J9j09t/1jnb8hnvRxltIcVZ/uQeSMLFNuSYS0okV3n
         SEgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Dj+acgqGKCq//ZUPfy3MMcO7jovghzd2WkL5tKfCYJw=;
        b=JHy8BAIqQoA44saD4FBJU4XvWAGF0npc6z5tTJ4LtWmiMYm6zcT/PTAYunIvURvzQa
         XGoj2DZQJLJSrB9qKVDMwzHbpZqJ+pINE6ndwuBZ6YHKYbX8yo/reTdo/bfOjic7NcoY
         ohE64AotWH5C5asAnXmcHGEFMu0t9qMEOnhXd9hdqpY39pMsd2S5rpYFlvhAmFfiXhLl
         Rjl86QK6cjv1FJO7xP9gSAOwJ8LGyutM8ayepcJZwPYTcMlefDUEPovzBNOtbnI2LH2O
         07a721dJPMYkjx/SX2OX86UTBBw5WpbitGUl8gI7ftFNiHG9M99T4IdxZqyifminYVDH
         Zorw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xduq6v10;
       spf=pass (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=raj.khem@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dj+acgqGKCq//ZUPfy3MMcO7jovghzd2WkL5tKfCYJw=;
        b=kuPEiqZcE1P/1dw87210dJvoo/AsVdsy98e57eeBbJ22Ps/yRju5fWcNzWaK4oGxTD
         fxTis4GxJYIe8e1uYjGaVfbaLUE7ug9GUmleXbxIJffjnUr7euYBNSaHySw/AjAlbfyy
         v5+OIGTVvbdNPoSAjlUUObauw1xOZrymadX2vxAcNUUgTKguPWZjcL1x+O/md9GOFQuM
         eEpkfJ/RUYFod+lFzpdzS/7eK49TQK88UyvIk/DBGOeCDj6hTxPhuLcJifsTFohn0gog
         VkAfi9S2Q5SJbmxZh58a83+WZPJkwaHuppC/HegHRdt6mO3oOTGZEfOIiEI+y74UleGk
         HGAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dj+acgqGKCq//ZUPfy3MMcO7jovghzd2WkL5tKfCYJw=;
        b=tB002HTwy6I44GtNU+8JqdMmPEWo2SHdmzbxXdGaEByto34usrcbstF64JJGrRNsmE
         T2ec31wihoGJhssqgrSKZLM42LVD7KVT8ysA/0dhLhPqiM0GisvuaR/qWlQZqvY5m+x0
         eJnLERfIJwEyiWeRx/tLIoFKeGni2cCE/tZIpVLQrgGUuODei0lDseLHS0ZR+ZKSi6aZ
         rGyeO7cYBT7wGHJZgylqhK1kXzyd95YPg5hFBC9bu/JC6P/30IheWVpQfZdUwjuqP0Z+
         SMuP2VXYMTiv5pt1Q48sS7SQ0B1deBZfcDEzFcezkJkzFmA2YETmN3kApNwdj+GstcB8
         OciA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dj+acgqGKCq//ZUPfy3MMcO7jovghzd2WkL5tKfCYJw=;
        b=M7i4lNdYolZk/5BfglCj0mo14+FDgB2Z4C4pNT6lUF8PbQusnk3BkRmYd6JQbv5Ofb
         mH/bI74466dVmnsvJlVcZODHolrVA0ypqtoLdeBwNVv6N2xW/iClhoiYaDbzz1FHaE+O
         TZZ5G8rdqgLC7jFbCzI/d3PkcuK49cLcVWpYgjGIZtf/dmb2OHtkflPvO+3NTYaEYYJB
         sKDhzERngxpNY/GlgdBUAISEHBzS2E92lOxOdBKz6VxcAtgtdCuxnckKpypFYwlDrNwc
         XaTVXq6Bl/nxpuZXMN9fTKn9lV+xCyBvfEVSDU7RYM0lpPHngCtqYrOa9FsPpGvsvco/
         upFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533GZfjBIqEhVim4FxGTbdOHnXNiPoRoq8ZcOXvMd/Aqb24N386p
	AZDQuW3cj7HZ4uKQpQaunzg=
X-Google-Smtp-Source: ABdhPJxdmX7jfNAG/KXpmU74kW6/I4nxeL4xyw4HD0Otb9UT1+UWchKXXy80nM8kK6kcgaOIy/A2cA==
X-Received: by 2002:a17:90b:ec8:: with SMTP id gz8mr5304231pjb.37.1628176736974;
        Thu, 05 Aug 2021 08:18:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:294c:: with SMTP id x12ls3382755pjf.1.gmail; Thu, 05
 Aug 2021 08:18:56 -0700 (PDT)
X-Received: by 2002:a17:903:2290:b029:12c:2ed5:2cdc with SMTP id b16-20020a1709032290b029012c2ed52cdcmr3469760plh.77.1628176736293;
        Thu, 05 Aug 2021 08:18:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628176736; cv=none;
        d=google.com; s=arc-20160816;
        b=Q6xwx+hDGRFmfO7e+c7LI0g1DKDf284Wx1JG+bPohlCFlKzZfohZB+vW9fKBzN2XiR
         mmO+TiGGApcKzc4LmK0VhMtQjJ2RwQF2RJX67Zc5oicK16fXn5uzbsCVt46UfFOpCTJx
         jM82W73Qcm6oE6y00mKp/EPmdWQkyXwwZaK3Il+MS7QgnOI21TSN1rhiFovPFUpxEMuI
         ANzps1EGZtfK8/t0cr1dcsBYXDLsyGxOfmxkO2XWJrAtK5Pl8BumKI23h7EOnF3FqTpb
         TsG6R7fpJpzirEqgmGFgevnN9oQOgWH88BpSOh7y9TqddWUeMIlHbqmCXMbnUkEZWcDc
         r5pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yDxgi4QuDiLFwBjP43H0Okt4+DMON7aEHD6wSYhjwNE=;
        b=eKfESxGHvGgMrhl6mTi0nV521RSn38aGO8HKYxYuwGVfGosd4m1IMUrri7w4mObtL+
         8Ga8rB+v5DIFidEmh2Mf1vfA2AlRsGzROhRR8NXFOUBqm+U0+7g9LAnuKF6iCmO6mATu
         SRX67qb4f4Xuy6fWE8kNwsJKwEKRKU0Z3FdvNPhj51IyzWiE0zevBtWICd3W4BCRAR00
         Un3oKbjMSJCKlixNd2neMZofpN2rrFYtkpSmdUfPCwJA+Wbkp4c+F581XhGwPEoCIeiU
         Ji0MusUneGGxkdzt/2zsndQa+rMhRDXxyq/TUsPFUu6YLvIK6081GL6/2mB820yCO/9r
         KFOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xduq6v10;
       spf=pass (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) smtp.mailfrom=raj.khem@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com. [2607:f8b0:4864:20::72f])
        by gmr-mx.google.com with ESMTPS id c4si300889pjo.2.2021.08.05.08.18.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 08:18:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::72f as permitted sender) client-ip=2607:f8b0:4864:20::72f;
Received: by mail-qk1-x72f.google.com with SMTP id c9so6561550qkc.13
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 08:18:56 -0700 (PDT)
X-Received: by 2002:ae9:f201:: with SMTP id m1mr5279060qkg.381.1628176735385;
 Thu, 05 Aug 2021 08:18:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210802234304.3519577-1-ndesaulniers@google.com> <CAK7LNATWm94K=UcSNn88PyPST38rfe_31vLLpDf=ERPnKnBvVA@mail.gmail.com>
In-Reply-To: <CAK7LNATWm94K=UcSNn88PyPST38rfe_31vLLpDf=ERPnKnBvVA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 5 Aug 2021 08:18:28 -0700
Message-ID: <CAMKF1squPYXQ1DV_oiWP1DYpnBuy87Rkp3WFq4CZkCgFzM5PJw@mail.gmail.com>
Subject: Re: [PATCH] scripts/Makefile.clang: default to LLVM_IAS=1
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <nathan@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"open list:SIFIVE DRIVERS" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: raj.khem@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Xduq6v10;       spf=pass
 (google.com: domain of raj.khem@gmail.com designates 2607:f8b0:4864:20::72f
 as permitted sender) smtp.mailfrom=raj.khem@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 5, 2021 at 8:16 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Tue, Aug 3, 2021 at 8:43 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > LLVM_IAS=1 controls enabling clang's integrated assembler via
> > -integrated-as. This was an explicit opt in until we could enable
> > assembler support in Clang for more architecures. Now we have support
> > and CI coverage of LLVM_IAS=1 for all architecures except a few more
> > bugs affecting s390 and powerpc.
> >
> > This commit flips the default from opt in via LLVM_IAS=1 to opt out via
> > LLVM_IAS=0.  CI systems or developers that were previously doing builds
> > with CC=clang or LLVM=1 without explicitly setting LLVM_IAS must now
> > explicitly opt out via LLVM_IAS=0, otherwise they will be implicitly
> > opted-in.
> >
> > This finally shortens the command line invocation when cross compiling
> > with LLVM to simply:
> >
> > $ make ARCH=arm64 LLVM=1
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1434
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Note: base is:
> > https://lore.kernel.org/lkml/20210802183910.1802120-1-ndesaulniers@google.com/
> >
> >  Documentation/kbuild/llvm.rst | 14 ++++++++------
> >  Makefile                      |  2 +-
> >  arch/riscv/Makefile           |  2 +-
> >  scripts/Makefile.clang        |  6 +++---
> >  4 files changed, 13 insertions(+), 11 deletions(-)
> >
> > diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> > index f8a360958f4c..16712fab4d3a 100644
> > --- a/Documentation/kbuild/llvm.rst
> > +++ b/Documentation/kbuild/llvm.rst
> > @@ -60,17 +60,14 @@ They can be enabled individually. The full list of the parameters: ::
> >           OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump READELF=llvm-readelf \
> >           HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar HOSTLD=ld.lld
> >
> > -Currently, the integrated assembler is disabled by default. You can pass
> > -``LLVM_IAS=1`` to enable it.
> > +Currently, the integrated assembler is enabled by default. You can pass
> > +``LLVM_IAS=0`` to disable it.
> >
> >  Omitting CROSS_COMPILE
> >  ----------------------
> >
> >  As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
> >
> > -Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
> > -``--prefix=<path>`` to search for the GNU assembler and linker.
> > -
> >  If ``CROSS_COMPILE`` is not specified, the ``--target=<triple>`` is inferred
> >  from ``ARCH``.
> >
> > @@ -78,7 +75,12 @@ That means if you use only LLVM tools, ``CROSS_COMPILE`` becomes unnecessary.
> >
> >  For example, to cross-compile the arm64 kernel::
> >
> > -       make ARCH=arm64 LLVM=1 LLVM_IAS=1
> > +       make ARCH=arm64 LLVM=1
> > +
> > +If ``LLVM_IAS=0`` is specified, ``CROSS_COMPILE`` is also used to derive
> > +``--prefix=<path>`` to search for the GNU assembler and linker. ::
> > +
> > +       make ARCH=arm64 LLVM=1 LLVM_IAS=0 CROSS_COMPILE=aarch64-linux-gnu-
> >
> >  Supported Architectures
> >  -----------------------
> > diff --git a/Makefile b/Makefile
> > index 444558e62cbc..b24b48c9ebb7 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -845,7 +845,7 @@ else
> >  DEBUG_CFLAGS   += -g
> >  endif
> >
> > -ifneq ($(LLVM_IAS),1)
> > +ifeq ($(LLVM_IAS),0)
> >  KBUILD_AFLAGS  += -Wa,-gdwarf-2
> >  endif
> >
> > diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> > index bc74afdbf31e..807f7c94bc6f 100644
> > --- a/arch/riscv/Makefile
> > +++ b/arch/riscv/Makefile
> > @@ -41,7 +41,7 @@ endif
> >  ifeq ($(CONFIG_LD_IS_LLD),y)
> >         KBUILD_CFLAGS += -mno-relax
> >         KBUILD_AFLAGS += -mno-relax
> > -ifneq ($(LLVM_IAS),1)
> > +ifeq ($(LLVM_IAS),0)
> >         KBUILD_CFLAGS += -Wa,-mno-relax
> >         KBUILD_AFLAGS += -Wa,-mno-relax
> >  endif
>
>
>
> Please drop these two hunks.
>
> I will apply my patch instead.
> https://lore.kernel.org/patchwork/patch/1472580/
>
>
>
>
>
>
> > diff --git a/scripts/Makefile.clang b/scripts/Makefile.clang
> > index 1f4e3eb70f88..3ae63bd35582 100644
> > --- a/scripts/Makefile.clang
> > +++ b/scripts/Makefile.clang
> > @@ -22,12 +22,12 @@ else
> >  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
> >  endif # CROSS_COMPILE
> >
> > -ifeq ($(LLVM_IAS),1)
> > -CLANG_FLAGS    += -integrated-as
> > -else
> > +ifeq ($(LLVM_IAS),0)
> >  CLANG_FLAGS    += -no-integrated-as
> >  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> >  CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> > +else
> > +CLANG_FLAGS    += -integrated-as
> >  endif
> >  CLANG_FLAGS    += -Werror=unknown-warning-option
> >  KBUILD_CFLAGS  += $(CLANG_FLAGS)
> >
> > base-commit: d7a86429dbc691bf540688fcc8542cc20246a85b
> > prerequisite-patch-id: 0d3072ecb5fd06ff6fd6ea81fe601f6c54c23910
> > prerequisite-patch-id: 2654829756eb8a094a0ffad1679caa75a4d86619
> > prerequisite-patch-id: a51e7885ca2376d008bbf146a5589da247806f7b
> > --
> > 2.32.0.554.ge1b32706d8-goog
> >
>
>
> When we negate a flag that is enabled by default,
> which is a common way?
>  - set it to '0'
>  - set is to empty
>
>
> So, I was wondering if we should support
> not only LLVM_IAS=0 but also LLVM_IAS=.
>
> What do you think?

always asking for 0 or 1 is perhaps better.

>
>
> --
> Best Regards
> Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMKF1squPYXQ1DV_oiWP1DYpnBuy87Rkp3WFq4CZkCgFzM5PJw%40mail.gmail.com.
