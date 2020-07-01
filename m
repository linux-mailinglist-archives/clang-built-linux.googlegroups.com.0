Return-Path: <clang-built-linux+bncBCIO53XE7YHBBWWB6L3QKGQEBJGLP7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B7F210DF1
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 16:42:36 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id o9sf11367160pfp.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 07:42:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593614555; cv=pass;
        d=google.com; s=arc-20160816;
        b=irqC5Sn35jXR+PNk4iulU+4MCEOK9+22rADcFbb4RM/qYD3LPiBmQCrTfWT8KTNXiy
         8CoLbXchwFuhDJEf+AsbvRGfjB9LuZj7bLOWZG/zCFOt0KOtilmIcsolcw0a5TNG0PNw
         41DaP2iE7QKXDHJ7nGSgc8W9NWJWKNLIC8BITao55NOC3PCGlkE0kosYsGEuLo+Ns+Ph
         2QcOntt/S40PhpO86xUVaYDZyIqohZ6b6fkbTv0cl6//J9T6cObd9G7FDFoYYTt4WaVk
         rrirmsjx0mg5OrX5jPKufuKzb+bNmp+1psiXGLs9Ow9rS+7MoHmeum7rp91hHVonpGuL
         TxHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=lvmlFDvwV5g21EHt+p5VzpvNl9sLZ45UZfU4zK48fmk=;
        b=n0CrzC+pfF1UAtZ+LU5uy9gK1CPkfuvRnKXGak9DljuUxHH2bv3mqPTlN5Rj1hoiUJ
         kU6b3eslqElLyJZ6QJJxZjW0V5S5I5lPu6pfmfo3RzmD808WMpmtnlheO7wo94lQwRlr
         NHIor0f+6Us/QxqFIurEU5Nd1NLFHKKV05Zk/aZspzm36MxUL3aCM4g5dtO03Jy5u2bG
         djuwdVNCWH1vcW2EHgP5kKSN4o8EzDY3GOa+6NeGRVxovQ8gvvms9MG/AHv2EjLTRxOc
         lZCQ3BKBW4RDkPfZQC0gAeu0RRVkq3QWsvgd/6mDUzDqsl9MfFtHGK5XV/CzAwMElgOa
         AIjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fGNBSbN0;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lvmlFDvwV5g21EHt+p5VzpvNl9sLZ45UZfU4zK48fmk=;
        b=oHSNyTFURWydo1UMl4U/ig6m2iibbshMfY7nJS544l6+nnEnAgBLyEngmT/ODa5QwG
         01nab7nTtYF8/9QWn3DW+ZZ/0NQlvR/NQO/nOqkmIXMdOVQWadokjge/zuR0R/EFwYzi
         uIOCyAL/Rfujc878ALHmm2l2KfWK66LFaZaG0CaBWuDtI1iFORm5v7W4v7Dz73iVO/jZ
         eMd3aDH41ltUiSodTkSZYDkwoJaUywmls8X5TsnCRN5SuTWts4EJT9u6GAa7bE5Mh8Ld
         3WeQcF5yHYVR1b00bmP2mZJNb4QAOy9gJvqcqtTQ+h3QB3E9XmGe3S1bpZxwKlCBRYlE
         3jsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lvmlFDvwV5g21EHt+p5VzpvNl9sLZ45UZfU4zK48fmk=;
        b=caGQS4PElxmOMpAr3N0Sc1MAYsoEc/d7RWu3xdy32YXaEj2qNiW9PO/HI87OTXiK8m
         fV+09aRDYdy7uX0CfyY4LcQnMH0XZfHZbVE1vR6s5trw07JexlSEbZ9KTdD2Wr6PEnKl
         luAVpbvmyHB1EsVb/waku4mLlFh3PpvsvBbOTfF96PuTLX2wEvOcZ/UfQRiYtD/L4gf1
         20iT1C52x1wQt2a3Fbl45bsEsdtQbqoSX76MLiosBt57YmhBp7jaiRVw3S4Rj1uKI2JJ
         WCYsCyeZOqs4MCnk2+gu0BwMqqtZOEQ988dERagaUZWVujBISWkLigZIWED/cT3a5z+l
         kHug==
X-Gm-Message-State: AOAM530TJMKTKtacSnemf84mfIKVVd+mScRd+LQ/Mb33cGPtpzOfD1MR
	sr3A7MM+RwB+7AMZHreTqaU=
X-Google-Smtp-Source: ABdhPJyHdztMMooM5IqO1Brrq89952K3bvFcH5OlIqSKiXSLnEYdw5QgDBTiWNzvahh+fet5VjR9mg==
X-Received: by 2002:a65:67d0:: with SMTP id b16mr5774645pgs.60.1593614555023;
        Wed, 01 Jul 2020 07:42:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:582:: with SMTP id 124ls950097pgf.6.gmail; Wed, 01 Jul
 2020 07:42:34 -0700 (PDT)
X-Received: by 2002:a63:9d45:: with SMTP id i66mr20583909pgd.25.1593614554466;
        Wed, 01 Jul 2020 07:42:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593614554; cv=none;
        d=google.com; s=arc-20160816;
        b=H5aw18HIstqMAV5lWaZXMFEcGUqJrDRdusoeL8gGwG8dsESaeErTRLQscI1CG8+rv2
         uxMjUXBZML3i2dUJ6x5/JBfhqNqKUST/u7CtQl7+A0/MvzCc+pDadK3xvY6zNOlUYzO6
         EX7G0vkUJMbC3gO4THHlgwLMgrxakIHs/99yjGTqL9W2G5D+bnZSiQPX8b8LxXVtvnRH
         A3hLZWiOOb8yHmmrL3h1pOgk4pycLgWC9qy1S4jB9MbA8h5bU+W8FanQt9OzmB6/t4E4
         9Da5BcAQZOOl41U5vO3bmWbj1JexzM9ER5K2r5zddD51ka/F147rhfim/w/aDEZ88PV1
         Qw6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=O/LhwyyKWARfsv1wEDYCmI5QIg3iM5SCtu/LXHQSrKs=;
        b=Cz4pVmaD7J+m046VhJVUPNxUPqpV1QUt4bVJbeLIucHsnHa3DF+TfTFi+s0kxqKrMR
         q/twGvlfrlSClJUrTWIrJLelIGEwgb7cI+LUdHwF3Fbot3bO4MmRyBPzZVwhdz+RDBtn
         rslLlGPGNfrZd28gRtTiSwouO/4cIdw/XQBIcm6p64pxRJ61uFFXEmPvvVwKuJptnjIB
         cwAi3zj4NfH6zEuz/d9WU0udeGzC3RRbhj/xuXg2NM5HDLdo6Uqmu25DByMS6BAQpNw6
         DXp7vnMmN09RdxUKqeM3jv1sNSLv1mwX1jEe3867L84QdeKZxglE6TRKVg1DAYpWyPyG
         Dr8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fGNBSbN0;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id s7si342342pjq.2.2020.07.01.07.42.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2020 07:42:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id g13so18567764qtv.8
        for <clang-built-linux@googlegroups.com>; Wed, 01 Jul 2020 07:42:34 -0700 (PDT)
X-Received: by 2002:ac8:4055:: with SMTP id j21mr26518307qtl.76.1593614553563;
        Wed, 01 Jul 2020 07:42:33 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id q47sm6392560qta.16.2020.07.01.07.42.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2020 07:42:33 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 1 Jul 2020 10:42:31 -0400
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Fangrui Song <maskray@google.com>,
	Kees Cook <keescook@chromium.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 7/7] x86/boot: Check that there are no runtime
 relocations
Message-ID: <20200701144231.GA3354308@rani.riverdale.lan>
References: <202006290919.93C759C62@keescook>
 <20200629165603.GD900899@rani.riverdale.lan>
 <20200629173735.l3ssrj7m3q5swfup@google.com>
 <CAMj1kXHaXzYFkW_H=w36vMb1qPpuZXsnTd_giq4vsh0bw3S3eA@mail.gmail.com>
 <20200629233405.n56yb4xwlgxrt3fn@google.com>
 <CAMj1kXGTOdNiuU70pFB74UJ6z43AM-UViTSd3=ATV=94W+f1RA@mail.gmail.com>
 <20200630175408.GA2301688@rani.riverdale.lan>
 <20200630220043.4snabunhgvfdktte@google.com>
 <20200630232759.GA2641539@rani.riverdale.lan>
 <CAMj1kXHVJ0eDHcod633P_nt0HbTayBkxwx8LQAV0k9t9oEFZSA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXHVJ0eDHcod633P_nt0HbTayBkxwx8LQAV0k9t9oEFZSA@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fGNBSbN0;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Wed, Jul 01, 2020 at 08:44:56AM +0200, Ard Biesheuvel wrote:
> On Wed, 1 Jul 2020 at 01:28, Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Jun 30, 2020 at 03:00:43PM -0700, Fangrui Song wrote:
> > > * Ard Biesheuvel
> > > > On Tue, 30 Jun 2020 at 01:34, Fangrui Song <maskray@google.com> wrote:
> > >
> > > If the executable is purely static, it does not need to have PLT. All
> > > calls to a PLT can be redirected to the function itself.  Some range
> > > extension thunks (other terms: stub groups, veneers, etc) may still be
> > > needed if the distance is too large.
> > >
> > > There are cases where a GOT cannot be avoided, e.g.
> > >
> > > extern char foo[] __attribute__((weak, visibility("hidden")));
> > > char *fun() { return foo; }
> > >
> > > If foo is a SHN_ABS, `movq foo@GOTPCREL(%rip), %rax` can't be optimized
> > > by GOTPCRELX (https://sourceware.org/bugzilla/show_bug.cgi?id=25749 binutils>=2.35 will be good)
> > > Many other architectures don't even have a GOT optimization.
> >
> > Urk -- the example given in that bug report isn't even weak. Are you
> > guys proposing to pessimize every access to a global symbol, regardless
> > of visibility, by going through the GOT on the off chance that somebody
> > might define one of them as SHN_ABS? Can we at least gate it behind
> > something like __attribute__((might_be_shn_abs))?
> >
> 
> SHN_ABS is typically only used for constants emitted by the linker
> script, so I don't think this is a huge deal.
> 
> The example above is not that different from having a statically
> initialized function pointer in your object (which might be NULL), and
> that is something we already have to deal with anyway.
> 
> What I was talking about is the tendency of the compiler to assume
> that every function symbol with external linkage is preemptible, and
> the only way to suppress this behavior is to issue a #pragma that can
> be done in code only, not on the compiler command line.
> 

Yes, SHN_ABS is rare. But supporting it without an explicit annotation
for the compiler requires pessimizing the common case where the symbol
is _not_ SHN_ABS, because the compiler would have to assume that
everything might be defined as SHN_ABS. This includes accessing a simple
extern int variable.

It would have to generate the GOT-referencing code in all cases where it
doesn't see a strong definition, even with hidden visibility. And on
x86, we'd have to bump the toolchain requirement to at least 2.26 so we
can get the linker relaxations, otherwise you'd have GOT references in
the final code.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200701144231.GA3354308%40rani.riverdale.lan.
