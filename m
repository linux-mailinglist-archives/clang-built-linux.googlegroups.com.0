Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMPVS6DQMGQEBLZVSLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4803BF002
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 21:04:18 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id e20-20020a1967540000b029035492aaea8dsf1596903lfj.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 12:04:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625684657; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yit/rCHQbvkBFkC+kSHWKu8oxRkqGaR0TuL4XycAUSt+2mI8pXAu7fcUfYKGnFCEiB
         xpeKqW3kZTJnuCwDL8dpF9MwrKSsPEGXz+43/tFlnYZzBE+4rri3BAwxFcCSrzk6eKQl
         C5pD6e6CRFcXbd4TLdQ66Trt2zV+EAQZR3n4Wz4+5b5kH0wi7nuXbCmOaHJbucuB+98/
         Y9Jd5TWIziv2bJj4bhw51HcxSGBiJ6hEwD5UyR4NlwPjehCiJldvaRaWTVW/eldIRFWl
         Ege6CTvYKfyVNRu/aMCy2rS78Wr6LfZJlQLsqP4jAwzwBiQd45LENYcJf8iCGbf0gpXf
         fOKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mR19js7gZ30pJADaoTeHS8baRUAqTY22jLViOBA+hqA=;
        b=lcMBRA8VAbq7qNEfcv5yFMYEHzRBpcjK1x1LM2oks6HzR5h0AiKZGSi621EoyVqNSd
         cl0q2VdhNIAC/Qn7cGC9MYN/tutBZ3p4BNBPsL3uRm3Zu3e0NuwPqEz3bETA+R3GX17u
         Hq8ltNQ+i9O8teuYA0xxrrGWAmLpisc6GV6mOCUYlrNPYKnrMlN21ZgE9MEYhquFzynC
         yGNVRlkEw6n8+zAT8Y9R1h6LmITov5J7kdDkzBo4hHDiH/VnYYg04oTXIYWySAtJp7Hb
         AAA9a2hQ+p49NQtmALiotEhPPn4YZGjRyXrkrvU1HIIG71VYFlLBEn6gSTDuZuYVnASf
         PkSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SORU3JdY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mR19js7gZ30pJADaoTeHS8baRUAqTY22jLViOBA+hqA=;
        b=OK1nvx8q3ZP0KpAHmH+DpU5ldSaAo0DGi09QcdqO2pBTEs8cN5X6DdULW1JPbSymCJ
         k2Ei6NdDCYddXyo9jkWYkjm6I0k7MBIkpAyyPdSVKSsJcyjTBPwl1zkGa71t/KN8q7cU
         Z4X18B+Z2dlQ++0RJo0NRkmHblgJ0Khcqk+NPNs5/GO3Wew6Ab+ciZRR4PcG0WaGAyeC
         Bd1cvt5Axdq+dBTG/RynP5Z7s3yGvD+5Gy96cjDFqAYH1P2N/feYEgu5LVacZhnTqezh
         r2NfBMOe++Y5QM+JRTuzEUA0mbAN1gH+FyUgTM3XNLRxmbIFEbWeKSes84JcZJefiTH2
         w20w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mR19js7gZ30pJADaoTeHS8baRUAqTY22jLViOBA+hqA=;
        b=Iw28N1cdeEsBVorKBaQX6kHRhSI4WkfU0GWQSFXLS3McprUKfFyPNf4pylbKcc8wUq
         qny9AAW5WXpwZVentBxuPVcMLf3Md1crGi7TskIeBlXQvpzRZ6cUiECGUwuhbhkaMic7
         CzDAA+HBCBNZxV1t3vxPayv1yQsAWelZYYecg7+A3epQ/EYiTvlRwHOh4w7Mdq+wHwf6
         FALOyWH5nsYil2GmjzlTeJsvZmTRncc4w3LL7F8oq4ru2CN8EFLRNAcnnUwo0udB0sWW
         KPk/IYrY6OlEKPPxkJ6TuLXbsXM9eftEjEulOP+qVCDBcOgOpeBadFbe0bqPV2tBOTDb
         LMlw==
X-Gm-Message-State: AOAM533xjt7fens7FRNoXVngGWmWw1nSvsJ0uKs+m6NukFNFrgocBg0v
	dZhw8Oty6k6xPd/uNi9IHgQ=
X-Google-Smtp-Source: ABdhPJx3ATmCxytig4tLNI1kZQUCqay7KpbCQZf02Gzt3+CcHnocXVCFG7C61Sxju5iNLX/70LMS2g==
X-Received: by 2002:a19:410c:: with SMTP id o12mr20450854lfa.10.1625684657741;
        Wed, 07 Jul 2021 12:04:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:430b:: with SMTP id l11ls4206634lfh.1.gmail; Wed, 07 Jul
 2021 12:04:16 -0700 (PDT)
X-Received: by 2002:a05:6512:3e08:: with SMTP id i8mr18878780lfv.51.1625684656746;
        Wed, 07 Jul 2021 12:04:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625684656; cv=none;
        d=google.com; s=arc-20160816;
        b=QRdFjwrcuVX+pfWmz53yo3mVxhc9zMiZJUJztM7CTv3hz53kcCrJCtxwW1IPWAIFtt
         7ajk8N1PsfG8siwYcTHZ+0epB6dL1xdY9s6Id6gGv1heMSE+C8X1DFXoheCfzv31WA9g
         CHIS1BJzt+iWzZRDZ9ZlCoG/0TTh2MCZrmHspBZ0Dgt0LCSxF4Y7pz6HwwBcB1zanr/Z
         FqVM+naSPGR1GcDeOJsiKiWUz/URPWKIKWLNGSwvIPlyqe7qjVJ+HVWgzOfALLO++Kxf
         H4n7I1DyYOF0OyN9kAbjbUDJvvpSOinRhx+0k4nc4f48BD5EIi8Q7WEBXWc7yqFiOHO9
         qpYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z/sINFkidd4wbdannETMgW4bElM0CKhLWIVOtap5WLM=;
        b=pbasnYbGooIKNpPZt21ClVqE5NTlURciIhzt5A7ia7fo9rknxjTqodVoZyBv81cYsp
         ynryNOeW7AOTwqLsIS5qVi1ldEJZ6eqe/l/BpOKFEeQ9/QCTWj8RCsFxWM6KPsShbiGF
         MRPZgKBGFpgf+eHrj3G4nvZRIYeBtZyTiG/4JNDP5lz8m/E1IVFNKYwJW6jmzeRyi2My
         PJdWsf0u2VS7csEnwEl4nf83EosTqXgo4TAs6yFaxDJRYZ5NyfqjH4gquILM1LcEZuP5
         5+R+nakbYGqWtTAEN460WjUSQIrSSKn810uFiPQTSS/vt+4NxArVwRh7TV6oxWoaL67o
         q7og==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SORU3JdY;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id i12si792653lfc.10.2021.07.07.12.04.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 12:04:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id q18so6756761lfc.7
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 12:04:16 -0700 (PDT)
X-Received: by 2002:a2e:b5b5:: with SMTP id f21mr20457637ljn.479.1625684656197;
 Wed, 07 Jul 2021 12:04:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210701235505.1792711-1-ndesaulniers@google.com>
 <CAK8P3a1EfBNxaMbsp+s2BiYHGKPK4NeRR+ugM82jfY43Pq7-Uw@mail.gmail.com>
 <CAKwvOdkgEeQktLgEN7CAh7bTjTN+TQNE27aETgvbXep9=xb1DQ@mail.gmail.com> <YOEFGcTJC6AWFgs1@Ryzen-9-3900X.localdomain>
In-Reply-To: <YOEFGcTJC6AWFgs1@Ryzen-9-3900X.localdomain>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 7 Jul 2021 12:04:04 -0700
Message-ID: <CAKwvOdnNWKDGOEqCg5g0GX=zPJce9gBoCLcYs8nayLA7ud2XPQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
To: Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Fangrui Song <maskray@google.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SORU3JdY;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::130
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

On Sat, Jul 3, 2021 at 5:47 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Fri, Jul 02, 2021 at 11:29:31AM -0700, Nick Desaulniers wrote:
> > On Fri, Jul 2, 2021 at 4:59 AM Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > On Fri, Jul 2, 2021 at 1:55 AM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > >
> > > > +ifneq ($(LLVM),)
> > > > +ifneq ($(LLVM_IAS),)
> > > > +ifeq ($(CROSS_COMPILE),)
> > > > +CLANG_TARGET   :=--target=aarch64-linux
> > > > +CLANG_FLAGS    += $(CLANG_TARGET)
> > > > +KBUILD_CFLAGS  += $(CLANG_TARGET)
> > > > +KBUILD_AFLAGS  += $(CLANG_TARGET)
> > > > +endif
> > > > +endif
> > > > +endif
> > >
> > > I think only the "CLANG_TARGET   :=--target=aarch64-linux" line should
> > > go into the
> > > per-architecture Makefile. It doesn't hurt to just set that
> > > unconditionally here,
> > > and then change the CLANG_FLAGS logic in the top-level Makefile to use this
> > > in place of $(notdir $(CROSS_COMPILE:%-=%)).
> >
> > I don't think we can do that. Based on the order the arch/ specific
> > Makefiles are included, if we don't eagerly add --target to the
> > KBUILD_{C|A}FLAGS, then cc-option, as-option, and as-instr macros
> > (defined in scripts/Makefile.compiler) checks in per arch/ Makefiles
> > may fail erroneously because --target was not set for
> > KBUILD_{C|A}FLAGS yet.
> >
> > Another issue is the order of operations between the top level
> > Makefile and the per arch/ Makefiles.  The `notdir` block you
> > reference occurs earlier than the per-arch includes:
> >
> >  609 TENTATIVE_CLANG_FLAGS += --target=$(notdir $(CROSS_COMPILE:%-=%))
> > ...
> >  648 include $(srctree)/arch/$(SRCARCH)/Makefile
> >
> > We would need the opposite order to do what you describe. Reordering
> > these would effectively be a revert of
> > commit ae6b289a3789 ("kbuild: Set KBUILD_CFLAGS before incl. arch Makefile")
> > which I'm not sure we want to do.  But maybe there's another way I'm
> > not seeing yet?
>
> Is there any reason we cannot just add this sort of logic to the main
> Makefile?
>
> Such as (indentation to emphasis diff):
>
> ifeq ($(CROSS_COMPILE),)
> ifneq ($(LLVM),)
> ifeq ($(LLVM_IAS),1)
>         ifeq ($(ARCH),arm64)
>                 TENTATIVE_CLANG_FLAGS   += --target=aarch64-linux
>         else ifeq ($(ARCH),s390)
>                 TENTATIVE_CLANG_FLAGS   += --target=s390x-linux
>         else ifeq ($(ARCH),x86_64)
>                 TENTATIVE_CLANG_FLAGS   += --target=x86_64-linux
>         else
>                 $(error Specify CROSS_COMPILE or add '--target=' option to Makefile)
>         endif
> endif
> endif
> else
> TENTATIVE_CLANG_FLAGS   += --target=$(notdir $(CROSS_COMPILE:%-=%))
> ifeq ($(LLVM_IAS),1)
> TENTATIVE_CLANG_FLAGS   += -integrated-as
> else
> TENTATIVE_CLANG_FLAGS   += -no-integrated-as
> GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> TENTATIVE_CLANG_FLAGS   += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> endif
> endif
>
> I know this looks a little cumbersome but it does help us avoid
> duplication across architecture Makefiles and ordering dependencies.

Yeah, ok.

I like the use of `include` to compartmentalize the top level Makefile
further.  We can move this whole block of LLVM related flag handling
into something under scripts, then add this block and it doesn't look
too bad IMO.  Masahiro, are you ok with that?  If so, I'd break this
into 2 patches:
1. moving this block of existing code into a new file.
2. adding the CROSS_COMPILE functionality.

See https://groups.google.com/g/clang-built-linux/c/s-voh6WQFxM for
the gist of what I was thinking (though not broken into 2 patches yet,
just testing that it works; it does).

This approach will collide with Miguel's series in -next.  Should I
base the patches on mainline, or linux-kbuild, then have Miguel rebase
his patches on that or what?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnNWKDGOEqCg5g0GX%3DzPJce9gBoCLcYs8nayLA7ud2XPQ%40mail.gmail.com.
