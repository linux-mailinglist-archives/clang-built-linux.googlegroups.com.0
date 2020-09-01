Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBP64W35AKGQEOYJLVBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A1125858E
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 04:13:21 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id x11sf4450530pll.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 19:13:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598926400; cv=pass;
        d=google.com; s=arc-20160816;
        b=VLEQFWQg8f+85yS5ZIigBugQgJI3AIneEzSb1+E5BzFUBVuoj0CumOopVR+eWzyIUV
         BJ6kfeTiwfmcjJUPzxaoKQphcWkqJEOe7go4l1kU1Jyu8h2yACjR+8bz5VhLsS9Q4Z5P
         Tm0LU997uNemPYLht7boWfJ66LFyPjeqLczEXg2fA26c4V27kAAdabBA1uUNrFiUZSZ3
         eX3RwXbwynRYHC0F83BkBexmJ4uwqBYAghnq87VbOKd/MbunM5y93VWC/UKQgg8QQu0O
         aXdIdrj9AHd4KhdxmzPe2FZpEtswPTmqUt7+K+PAKazTE9vWilNLdk0bytbxKbpPALRk
         crzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Yfm6INioc+6JIMArrIXMmLNFMIPmOE4VggnPRXqFFPE=;
        b=za3h9EEXAkUSidSBjPfdUJZdnz6ZjjYQoFGMpzTjO3LkZjlWyoPbDQGoQsBLcc3Qw3
         jVN+XwnXdjSlgPs5nGcI3Rz0jarql5Kvcnc5wkfMSuv17cpa1kDJCa8VVqZ/UKowMVKD
         XTNC2Kf2HHA9zwZiyH2jvgxeDA6qvV0faMKQwaAENcSnvsbPueAvso23L92s7v8p16aB
         LlFxq7wuBg2MUEb6/SuWgHJ6oKjdWEVsSWtko87OykiGjI2gIHbmiO05aTMF2PX6so/k
         sfBJo7C2wI6G32014Igb5TZvpyTKqZejhG45JTwlwheSkQFBidEGu05Ky2h+IUmk5vex
         4Fhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JpDNstF7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Yfm6INioc+6JIMArrIXMmLNFMIPmOE4VggnPRXqFFPE=;
        b=SZPDHe0ssUj9AZIOc5WOieDpFNYU8B57ryDzXKY/9ZkHzkIKMlr7bXCDh3MUx7WpwR
         rSMq3aUJ03Dwlu4xbQYI3Poe2W5eqVJrDY2ORArsBtl9yHNaICM0UfPHgi1aeHkGIwlz
         vmbGfU21pmsojZ7DA0ZgxSO6IfDzuI8PhIHCYN10cwv7C7cWxwQnknD3DBQyeTS4casD
         BeEz6udjxDR+xIRGYAXcXqewW8vhJ6lcgzmhDJY9vbfWQLd8LgATARpUB9kPbV4rVD/Z
         0b9euNHd5UBoG3b29j7xCr8REW6VEmTfDGYbJK4vci2hGWFaIoK9Ww7OyfCODLQK23iL
         HSmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Yfm6INioc+6JIMArrIXMmLNFMIPmOE4VggnPRXqFFPE=;
        b=bA78/+gI/qccawaqoE8UPC40y7/FPjfKqg8d5YuoReP8NJxUbWGBdnUYVdY88/hO2I
         UAgVtoH6krGIwNzsx8XbngQJ2MFQKP1q6iZ4MKO0OAdxOG6HNgSvug+fuOTtL+rkA9XM
         mkwQuD1EowEmRNudGXbeN90ka2G7skaqpUQKdiie8Zfa0fO3lkFapTHNi+5trmsAHPll
         BSqGDeqWz4zKJffg45kuFET9t3C7jaHe3mxqJ1bGQ1bJ6CGVd2rjm6V6IZ8db4yIQ368
         t8PbRRT/0EOAmydeUuvv2Is8ie+1mtzHk14QpxeodFixB7uWgRyHydf9fSYs5SLvxIjD
         9FkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533b7J3GX2pDgjH8pb7u5aAIay98bNCapdN4WnfUZyy0+CVHzSVm
	DWQ1ad1o5/NgUwaScYcSHp0=
X-Google-Smtp-Source: ABdhPJy3R01sRBqtX+a71PXZvvICquanm2/k+HRLxNKBBeTyzZaGV7KOs0HQuJtf3MtzC5DRcs+pPg==
X-Received: by 2002:a63:6782:: with SMTP id b124mr3019354pgc.308.1598926399984;
        Mon, 31 Aug 2020 19:13:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3205:: with SMTP id y5ls2971690pgy.3.gmail; Mon, 31 Aug
 2020 19:13:19 -0700 (PDT)
X-Received: by 2002:a05:6a00:814:: with SMTP id m20mr3679232pfk.50.1598926399469;
        Mon, 31 Aug 2020 19:13:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598926399; cv=none;
        d=google.com; s=arc-20160816;
        b=Ngwd/rRw8vcsg7B+JadrzgAeK3Q7YHznYITu3lsgfKalthX2xcZj8GXMpA31IPyJrr
         L7VR9BW6ZQt4TuX72g/OvcWcy7YhmiSqziouwaPwYEp1v4vXv931jWwoetRPY6nWlhJN
         UhvVki9bVX8sDaPQG/rnaDPHNg58M2Y5g6UUIIAC6KcEG79Y4S7IhDCYs32KQQCM2gb4
         XGjG8fJKkLl+toCu4tMRsRasXRr+n1K+WWZI231GOSbr3p0QQtvRHHrc3970s1sMnOAu
         cXvpu6Lk/W+Cwm2CIxDPMAy5Kbx6JYOkIj5By+Jxmoa+iJODzfIjzg/nopaOTm7bVZrB
         2PaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qyODknWNkVvuYv4IcLlLWycGywo+Ice/6TLXDiZgl10=;
        b=kToRnDqPyIswmUsNHw6sVM+FmC/SDE0YZPZZSDMTl1r0XLCAfIL96+AVHqOS3yiYmp
         MjC5WD9h2w2VM6iE6ylo6EaA2hE4W+5xA9x0AuM0pJ0EwPp8JtFq18aVwNGTSzNoH0VX
         5IPVZG7EVbps/Egj4zcfMBBtRtgprUP4pHYk1wrLU64Idq7vreH/DnbSgb4hJnJjUaik
         0zOXk1gENbWbj/sylAEPtfhyTbOQJszfTe/8jHdtn5pjdXv12ZJ6YnNYEN1OKYc3/ZuQ
         ju/1gSkpwywiFqtWk9n/i/SFXK4zaBjqBh65adzSAJtLr7cvceaHs6EO4V5ebv9BrE+y
         Yq/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=JpDNstF7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id 129si503773pgf.2.2020.08.31.19.13.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 19:13:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id n3so839627pjq.1
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 19:13:19 -0700 (PDT)
X-Received: by 2002:a17:902:8488:b029:d0:4c09:c0 with SMTP id c8-20020a1709028488b02900d04c0900c0mr165529plo.2.1598926399154;
        Mon, 31 Aug 2020 19:13:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u123sm9444149pfb.209.2020.08.31.19.13.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 19:13:18 -0700 (PDT)
Date: Mon, 31 Aug 2020 19:13:17 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Christophe Leroy <christophe.leroy@csgroup.eu>,
	Fangrui Song <maskray@google.com>,
	Ulrich Weigand <Ulrich.Weigand@de.ibm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org, kernel test robot <lkp@intel.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nick Desaulniers <nick.desaulniers@gmail.com>,
	Alan Modra <amodra@gmail.com>
Subject: Re: [linuxppc:next-test 70/80] /usr/bin/powerpc64-linux-gnu-ld:
 warning: discarding dynamic section .rela.opd
Message-ID: <202008311909.D3519C3@keescook>
References: <202008270909.Z8PiAoi5%lkp@intel.com>
 <649d9ca6-807e-dff8-a266-564938b8ab2b@csgroup.eu>
 <CAKwvOdn_iBYsFEgTkoMOnAbJPyvzbi-OQVu6TJ_pJzXrg4w7pw@mail.gmail.com>
 <OFD4907D71.6D0B268E-ONC12585D1.00576811-C12585D1.00581868@notes.na.collabserv.com>
 <20200828005707.GE15695@bubble.grove.modra.org>
 <CAKwvOdkyGQztQ9YgDOw2+DpcnoNXwbsOstNhDOLc6HP_Kopv-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkyGQztQ9YgDOw2+DpcnoNXwbsOstNhDOLc6HP_Kopv-Q@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=JpDNstF7;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Aug 27, 2020 at 08:29:56PM -0700, Nick Desaulniers wrote:
> On Thu, Aug 27, 2020 at 5:57 PM Alan Modra <amodra@gmail.com> wrote:
> >
> > On Thu, Aug 27, 2020 at 06:02:14PM +0200, Ulrich Weigand wrote:
> > > Nick Desaulniers <ndesaulniers@google.com> wrote on 27.08.2020 14:52:36:
> > >
> > > > > > All warnings (new ones prefixed by >>):
> > > > > >
> > > > > >>> /usr/bin/powerpc64-linux-gnu-ld: warning: discarding dynamic
> > > > section .rela.opd
> > > > > >
> > > > >
> > > > > We have /DISCARD/ *(.rela*) in the VDSO linker scripts.
> 
> Indeed, I see that in arch/powerpc/kernel/vdso64/vdso64.lds.S.  Kees,
> Fangrui, does `.rela*` not match `.rela.opd`? That doesn't sound

It does not. For linker scripts, "*" does not match "." (which is why
".." is sometimes used to keep a subsection out of a "whatever.*" match.
X_X

> right.  Unless it's not the vdso link that's producing the warning?  I
> guess the warning is from GNU BFD, not LLD.  Maybe the warning is
> coming from linking a different object file that doesn't use the same
> linker script, or perhaps the `-T` argument is being dropped?
> 
> > > > >
> > > > > What is going on here with clang ?
> 
> This warning is from the linker flag --orphan-handling=warn.  It's
> been very handy for us to find bugs for other architectures and Kees
> has been working on a large series to use it in arm, arm64, and x86.
> 
> So the general question is, should we keep the section or discard it,
> or should it not be produced in the first place?
> 
> > > >
> > > > Looks like .rela.opd was maybe synthesized.  cc Dr. Weigand, whos name
> > > > shows up on llvm/test/MC/PowerPC/ppc64-relocs-01.s, which is the only
> > > > hit I get in the codebase of `opd` (at least for tests, still looking
> > > > to see if ".opd" gets appended somewhere.
> > >
> > > Well, this is the old ELFv1 ABI for big-endian PowerPC, which uses
> > > function descriptors, which reside in the .opd section.  These are
> > > emitted by LLVM in the PPCLinuxAsmPrinter::emitFunctionEntryLabel
> 
> Ah, "official procedure descriptors" -> opd.  Christophe, do we expect
> the vdso to be ELFv1 ABI?  This code in LLVM has two other cases:
> 1. ppc32
> 2. ELFv2
> If it should not be ELFv1, then something may be amiss in kbuild when
> building for Clang; maybe Clang has a different command line option
> for v2 and there's a cc-option check that's silently failing.  Maybe
> clang has a different implicit default than gcc (which should be fixed
> in clang if so).

If it's not produced by bfd, then nothing should be depending on it
currently, yes?

> > .opd can only be resolved at link time when creating fixed position
> > executables.  .opd does need dynamic relocs in PIEs or shared
> > libraries.
> >
> > Kernel VDSO is rather special though, and I'm not up to speed with
> > whatever hackery the kernel folk use to create it and/or relocate it
> > when the kernel is relocated.  Quite possibly the warning should just
> > be ignored.
> 
> I'm not sure if the kernel does relocations upon vdso load.

I won't try to guess about PPC. :) In general, though, the vdso doesn't
get a relocation "pass" in that the code page is shared by all
processes. So I'd expect rela.opd to be empty or unused. Is it empty in
the final image?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008311909.D3519C3%40keescook.
