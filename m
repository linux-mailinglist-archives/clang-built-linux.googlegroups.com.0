Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU64TCDQMGQEBZJDEEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 226913BF235
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 00:44:36 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id p3-20020a05600c3583b02901f55d71e34asf1593179wmq.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 15:44:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625697876; cv=pass;
        d=google.com; s=arc-20160816;
        b=LdPy/6ZL0wgVUiAEk5Sh5h4EwBI56RP5G/vmvBOp1fhwBN/Ig5ymntxNoPTsGLGZ6X
         YZu6x2vVCrgjZgUIYBU7ARpR9zPK0/WStJjrdWVdHgKqN9xbpylYRQZwIGai4gV6xhW2
         kgOLqeKSU84jA2HskZRzem/t4ZT7O3yaLzIUUPz8EL5Q11lRewPsr4xHF6G+2ZgNLXcZ
         XzvwmbZMp/syIHLaa9uztCu12QZp+OHK+KA+o4AbJ2Lu4uK/uvZApru4NiLMtJR5EyI6
         jOOAcu8A31ToMwSBQJbFQYBiqrIs+uMBN/NQNq+uGvULAeuDXYDG/8rzRWBZWD32lR1j
         l7Xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:subject:message-id:date
         :from:in-reply-to:references:mime-version:dkim-signature;
        bh=l+tqndTfe6ZokKfBacFyTKtmACsW8gImxdgbOWbEXEI=;
        b=EVdmz/MbcYlQkik/u8P2srcsiuXi2ca+ZBM/A3iWM4G3CmoR7nwqVaPo7a1vFTwwo2
         Xy3yTwZj25z8gdw1pk1UuGQbfEOLKUfDO8HGEEcVBo0/pu0+MZ0TbRryr/GS7q+xCju7
         7izkpFUedyBCMvZyrJg2bN1iom8aNuSFnFB5FBxNqwQPzOxBoo999Na8ZcRkjAtPz1+F
         DliDNSPKqNV8bh6WnfA7lzfO8SBBmPVg3d78ZZuGBM3QqpYu5nkSQSh78x5lp7SGHR0o
         NVdWeflPrTP8Klmu49b3PATcFp2tFZLIBzEoCC2FM9EK4YqBu/OtlVfN+5aL8nXA0PA1
         QXoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XGCMeltM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l+tqndTfe6ZokKfBacFyTKtmACsW8gImxdgbOWbEXEI=;
        b=QFcdvDFz+jkDO7vJwZPmCMjixx7vz/SBZdtsdaWTlVlJwN9oNQKVVnbouKRpytWTn4
         z1SXSczWOClmIN6a26tnfy/qw/aNwmtpG2ii05+kEEEyioNz4LK2JRfD4QL5eApXmb2R
         7jGCGX3BAZ7X7JR8ixVi/ayRrAEGYhKc2TrhlL+TLwP3uAwZcgZ7joplavYJkGR5yNQe
         86ei0S6hQPTV1dykVLE1TfqoGZ+2tYwg5s1GVmro+Le3eiseF0IcY0wny2lGFD45YPbO
         ErlX7yH/NUdZTcLr71g/0hZtWlD5JGl+YZxv5xqf0hZS7S70mXKC3inB0VTkrlY3z3II
         pcxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l+tqndTfe6ZokKfBacFyTKtmACsW8gImxdgbOWbEXEI=;
        b=D/ni7a1o8sTRFygjKL7UIZN6zdtVQe6iZFJNSYjt9pvA6/qqaIOxkuUVUHWvnlqaH5
         kIYEeN2ZTEzLfu5LPlIgaA8CMbm6prwzPOgrLUCF9PMvZ8ZJgTwzZGArMkeABn3NGIyp
         o2UWjiKqK4KvNnjwYEmLXWkNccvjWJ8YglH06CnZbi+NPNfWgaPSXibx6BLpqV42mIvR
         ayqDZGTaaNjxsCvl4T1/8J3ZdsPNXlfIpHEMdAVLOx8oJOmkOmBN5NEx7fDEZBv0d0nv
         owqcTCecBFRTt9Nf/sW4RaQy5tj9dar74jGgXGmZCDEJTOYYN7p4g9cGXUW4pj4UL+QF
         /nBg==
X-Gm-Message-State: AOAM5333CFxEpEHOssLxlA8/fIDjRB+71x1jTpzkLK/Sjpm/re+xgOmY
	jUeY+Gch9pWk9eSCTJillqY=
X-Google-Smtp-Source: ABdhPJwCG/LyAw0vYQun16mdAuhWiIVTlihP0tVe6G3O2fyDqeKVG7Dd25JJm9suddMBtdqZwqWJ7Q==
X-Received: by 2002:a05:600c:354d:: with SMTP id i13mr1485430wmq.143.1625697875898;
        Wed, 07 Jul 2021 15:44:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1c90:: with SMTP id k16ls4350709wms.2.canary-gmail;
 Wed, 07 Jul 2021 15:44:35 -0700 (PDT)
X-Received: by 2002:a05:600c:3783:: with SMTP id o3mr1502785wmr.123.1625697875029;
        Wed, 07 Jul 2021 15:44:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625697875; cv=none;
        d=google.com; s=arc-20160816;
        b=E1kWjRUFt7gWaoLG946SCrv+fLuIPTJaoWp7Yu4IGSCqGP2buW/ld0TQETa+N1nvEW
         K03StpGF4GtMNwAuz3cLT6WnttRzyzuFDYr8lZojmjBI9Soc+1HexLl76cwKlrVjEI49
         AXBEM4vtpEIbuP3yDTuibagBy6chbGesKCdj0fGZ6BqEE2hbrSeSwW7RsDZJSqBwImeA
         33+5/b5fMmADoxIp6BKr6usSEBsEfJ2uqkwPescMqfB/FSZzL/SgfRfAoJ2MsKWK5Jrj
         W6I6inoAEMdIPU5Id3NPaoSpJUcdpY3DonxLCQAe2HK0ebgw63d4TNm/eedp6/0tObR2
         521w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=AL+sBNTLXrPYA3MvceLjKhPc+A6YHDbfTT0sNYCb8iw=;
        b=rMgfQ+oP+2GyAt3IsUO63KlwiigWbLQuaKvV2+bMA/lb8oI5Yb3VzQEEUtNeipba/3
         4fvdQeSAKS58BPA/oH7LefyJqWDgWk824X6bSRHAuDWyfzUUqQiGdmumyEkXn1o6sfK5
         ammD7xmRjm5xEieEYfBaoWOJ2WLEyVqZOkgmiJhiwd/uKeTT6nH7+JfwaHhrjoXFUBac
         zQynxt8GORJSzRwbKTIL/LitBnTr9jdZYy3FU9vbEF6mLvjDql+BUPh3hbkzEsNxBWwl
         o0Yfv47a0laIw7OeW2wPkZfcXsrKbUKLzaDbHEmiL/DIuFLLSbIA/Dhvmiw1QHk/zszt
         CC5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XGCMeltM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com. [2a00:1450:4864:20::132])
        by gmr-mx.google.com with ESMTPS id z14si14305wrs.0.2021.07.07.15.44.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 15:44:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132 as permitted sender) client-ip=2a00:1450:4864:20::132;
Received: by mail-lf1-x132.google.com with SMTP id c28so8539501lfp.11
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 15:44:34 -0700 (PDT)
X-Received: by 2002:a05:6512:20cb:: with SMTP id u11mt5852568lfr.73.1625697874486;
 Wed, 07 Jul 2021 15:44:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210701235505.1792711-1-ndesaulniers@google.com>
 <CAK8P3a1EfBNxaMbsp+s2BiYHGKPK4NeRR+ugM82jfY43Pq7-Uw@mail.gmail.com>
 <CAKwvOdkgEeQktLgEN7CAh7bTjTN+TQNE27aETgvbXep9=xb1DQ@mail.gmail.com>
 <YOEFGcTJC6AWFgs1@Ryzen-9-3900X.localdomain> <CAKwvOdnNWKDGOEqCg5g0GX=zPJce9gBoCLcYs8nayLA7ud2XPQ@mail.gmail.com>
 <546f3d11-8580-7f23-875d-ef856913cb6d@kernel.org>
In-Reply-To: <546f3d11-8580-7f23-875d-ef856913cb6d@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 7 Jul 2021 15:44:23 -0700
Message-ID: <CAKwvOdmCcX4bMXcT1B6OkHABa8QgJwrW5TB3=Yk_2V3OydQKnw@mail.gmail.com>
Subject: Re: [PATCH] arm64: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Arnd Bergmann <arnd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Fangrui Song <maskray@google.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XGCMeltM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::132
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

On Wed, Jul 7, 2021 at 12:08 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 7/7/2021 12:04 PM, Nick Desaulniers wrote:
> > On Sat, Jul 3, 2021 at 5:47 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >>
> >> On Fri, Jul 02, 2021 at 11:29:31AM -0700, Nick Desaulniers wrote:
> >>> On Fri, Jul 2, 2021 at 4:59 AM Arnd Bergmann <arnd@kernel.org> wrote:
> >>>>
> >>>> On Fri, Jul 2, 2021 at 1:55 AM 'Nick Desaulniers' via Clang Built
> >>>> Linux <clang-built-linux@googlegroups.com> wrote:
> >>>>>
> >>>>> +ifneq ($(LLVM),)
> >>>>> +ifneq ($(LLVM_IAS),)
> >>>>> +ifeq ($(CROSS_COMPILE),)
> >>>>> +CLANG_TARGET   :=--target=aarch64-linux
> >>>>> +CLANG_FLAGS    += $(CLANG_TARGET)
> >>>>> +KBUILD_CFLAGS  += $(CLANG_TARGET)
> >>>>> +KBUILD_AFLAGS  += $(CLANG_TARGET)
> >>>>> +endif
> >>>>> +endif
> >>>>> +endif
> >>>>
> >>>> I think only the "CLANG_TARGET   :=--target=aarch64-linux" line should
> >>>> go into the
> >>>> per-architecture Makefile. It doesn't hurt to just set that
> >>>> unconditionally here,
> >>>> and then change the CLANG_FLAGS logic in the top-level Makefile to use this
> >>>> in place of $(notdir $(CROSS_COMPILE:%-=%)).
> >>>
> >>> I don't think we can do that. Based on the order the arch/ specific
> >>> Makefiles are included, if we don't eagerly add --target to the
> >>> KBUILD_{C|A}FLAGS, then cc-option, as-option, and as-instr macros
> >>> (defined in scripts/Makefile.compiler) checks in per arch/ Makefiles
> >>> may fail erroneously because --target was not set for
> >>> KBUILD_{C|A}FLAGS yet.
> >>>
> >>> Another issue is the order of operations between the top level
> >>> Makefile and the per arch/ Makefiles.  The `notdir` block you
> >>> reference occurs earlier than the per-arch includes:
> >>>
> >>>   609 TENTATIVE_CLANG_FLAGS += --target=$(notdir $(CROSS_COMPILE:%-=%))
> >>> ...
> >>>   648 include $(srctree)/arch/$(SRCARCH)/Makefile
> >>>
> >>> We would need the opposite order to do what you describe. Reordering
> >>> these would effectively be a revert of
> >>> commit ae6b289a3789 ("kbuild: Set KBUILD_CFLAGS before incl. arch Makefile")
> >>> which I'm not sure we want to do.  But maybe there's another way I'm
> >>> not seeing yet?
> >>
> >> Is there any reason we cannot just add this sort of logic to the main
> >> Makefile?
> >>
> >> Such as (indentation to emphasis diff):
> >>
> >> ifeq ($(CROSS_COMPILE),)
> >> ifneq ($(LLVM),)
> >> ifeq ($(LLVM_IAS),1)
> >>          ifeq ($(ARCH),arm64)
> >>                  TENTATIVE_CLANG_FLAGS   += --target=aarch64-linux
> >>          else ifeq ($(ARCH),s390)
> >>                  TENTATIVE_CLANG_FLAGS   += --target=s390x-linux
> >>          else ifeq ($(ARCH),x86_64)
> >>                  TENTATIVE_CLANG_FLAGS   += --target=x86_64-linux
> >>          else
> >>                  $(error Specify CROSS_COMPILE or add '--target=' option to Makefile)
> >>          endif
> >> endif
> >> endif
> >> else
> >> TENTATIVE_CLANG_FLAGS   += --target=$(notdir $(CROSS_COMPILE:%-=%))
> >> ifeq ($(LLVM_IAS),1)
> >> TENTATIVE_CLANG_FLAGS   += -integrated-as
> >> else
> >> TENTATIVE_CLANG_FLAGS   += -no-integrated-as
> >> GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
> >> TENTATIVE_CLANG_FLAGS   += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
> >> endif
> >> endif
> >>
> >> I know this looks a little cumbersome but it does help us avoid
> >> duplication across architecture Makefiles and ordering dependencies.
> >
> > Yeah, ok.
> >
> > I like the use of `include` to compartmentalize the top level Makefile
> > further.  We can move this whole block of LLVM related flag handling
> > into something under scripts, then add this block and it doesn't look
> > too bad IMO.  Masahiro, are you ok with that?  If so, I'd break this
> > into 2 patches:
> > 1. moving this block of existing code into a new file.
> > 2. adding the CROSS_COMPILE functionality.
> >
> > See https://groups.google.com/g/clang-built-linux/c/s-voh6WQFxM for
> > the gist of what I was thinking (though not broken into 2 patches yet,
> > just testing that it works; it does).
>
> Yeah, I think that looks okay. Not sure how I feel about the name since
> it is handling more than just the target triple but that is a bikeshed
> for another time :)
>
> > This approach will collide with Miguel's series in -next.  Should I
> > base the patches on mainline, or linux-kbuild, then have Miguel rebase
> > his patches on that or what?
>
> Yes, the patches should be based on mainline or linux-kbuild then Miguel
> will have to solve the conflicts and let Stephen Rothwell know about
> them so that -next keeps working.

Folks can find the new thread for v1:
https://lore.kernel.org/lkml/20210707224310.1403944-1-ndesaulniers@google.com/
if interested.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmCcX4bMXcT1B6OkHABa8QgJwrW5TB3%3DYk_2V3OydQKnw%40mail.gmail.com.
