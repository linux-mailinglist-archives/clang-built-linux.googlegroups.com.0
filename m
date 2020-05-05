Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2OEY32QKGQEJYZKESY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD381C5EC7
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 19:29:14 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id t124sf2010113oif.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 10:29:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588699753; cv=pass;
        d=google.com; s=arc-20160816;
        b=KisKQKO5OBMinEfdCsJ+N2h/k80qZWTROKGIQaq0RO4I43sXETBXoh1/aFu4u1Wkzm
         YGzXPHlYy7u1hxEbmaGyBBdowtDFa8k0fFiBo9qZtwO5O3xlbcVeFPAW/O3bHHu+1uBq
         KCfIEyfUHDWbpC9cNJ0//tMpdDrAOWTOeF3vdSeHVcYT4DtBYnnxK2HKFYB9g9jN5SgO
         pwmPB1IbllwrwjAcIaklIia9DmIPbfGJzmbFWSBXhtYFntJeL364CuZ0526BoYCjaLV2
         pBBMs8dKXdQGy1zMOXWy+rqQzOkmF1PFs3gwDfnUNSXwvH0HVhNiafeKAAlThbooUmDc
         qwtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pNHI0Otw2i9F9VC1lAb/8Z0cZo2qVgCd5ajHVWxe0Qw=;
        b=y27bw6pG92MdHuDQEtkY19xnRHKEGuiY+zRRtJoUgRmqbMfHi1uHuo7FjLVA3QUm/x
         OaARS9f+iLxDiDks8oEeF03Cxfd1mUUnW+QxRkNiV2vfTjkui1BsFG3j9odQxfmzqouU
         AqEvSltC3gqSg8TxcMDJiM7kw1MVoNYDef9eGCDulfouFl9mielmQ9fOW0Emg1FYEa2V
         EioZUKi8iUZsdGfGYpuYxUziCYApB9hfu5vNltRfWaPk9dAvgvT3/BdhMMcz/HxLp8jV
         DvG45LHrF8Hu9Qc0iY0PhWp/r+oGvd0NVjV/XBCbZmhEft1XAlG0PM1ZIqSGqQSUZHBx
         fl1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QFxgVVwU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pNHI0Otw2i9F9VC1lAb/8Z0cZo2qVgCd5ajHVWxe0Qw=;
        b=rO3VnPc6cu8MuVXdKPUjvN+uj8QFOAiRKtOZhkmgLb15onab8pzBuoMfCBIcvdmStg
         qHsNXiblbmnqdN8zZNC+t7Fc1AeKhXQsQAhbr56QYWmy/Sjk9Gn6Ey4rtKuM30UZs25T
         XmzumXhnxt4V27YweJRbRSxG1p+0gNdTD1SgERGPZbdBOr6enpLcRjrHVICAd1ReFSmc
         +vXjWwnmv/Ew1JycCrWmPsRFNLWs8TC6bWD2GHj/ljRMzKHJFxmYkuhoMyur7baFrjEQ
         mgT2F0TW8WbE5w3VS/1gLvALCTlJ2An3rvp8chmxTMRJe9mJTaX4c0exXwiqVjDhhirD
         fNJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pNHI0Otw2i9F9VC1lAb/8Z0cZo2qVgCd5ajHVWxe0Qw=;
        b=Um/ujKG4af5vWHFJlSfzkAWYW4QZmedu9dIFS4i7RG5QLYUBLSed1ZJ/Us//kPhE3R
         5VOTCeUcygWXWckF+qQT5YpHdyYMKaXvK60r6FcWJkVBkradKPsVPTR5QblSnrcApvht
         0BuXsHGDLvUczZgwGXwj/VzbK+kPP3aBQ0pr2yFQBnyPOJT5HRbplUyqztwCEYKY3LoB
         7SF2lopozpofFMxoR9E8Z/hIxR+cWKxd7RkZQ5GyutIQMJ6TOMlhWnK9KL1Pi0Qb/Uij
         VrvGyz2ekhe58Oq97hEKLnp1+S4+FXAei+xa+sarinkdChvcEArcluU4pAFHGg41S2EF
         /aHw==
X-Gm-Message-State: AGi0PuZ5AHu8U5MtPajKOJtck/nfLJOhOl6I345RQAvcHBTzRlOmObEW
	N5zZB9IPURVBchXML8KZLaY=
X-Google-Smtp-Source: APiQypKv5G6sz3Ulk++pUHgfUYUYFkLg/C12fWZxuaV4/YHBwpTm5eyqNq6WqRMl9hmOHtJ+7s015g==
X-Received: by 2002:a05:6830:1e4e:: with SMTP id e14mr3093256otj.91.1588699753648;
        Tue, 05 May 2020 10:29:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:363:: with SMTP id 90ls831208otv.6.gmail; Tue, 05 May
 2020 10:29:13 -0700 (PDT)
X-Received: by 2002:a9d:4602:: with SMTP id y2mr3133190ote.199.1588699753289;
        Tue, 05 May 2020 10:29:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588699753; cv=none;
        d=google.com; s=arc-20160816;
        b=KYwUEwiTYP8Au3xlA520EkZgGNilabO53SRe3qeF7hUkE4FcKOf0xEprd+iFLB52Dc
         G7Eh84UPxIlWjAJp1NKOo3rKbjnyXYUuL3VpKWA597OvEG008XagFxrXU8/d8+JHiiD9
         J/H+QGt5r47uUumCEyOJQnRP3EcuU7VBc5zawznC1Dqb2sJuJB8yIUOBc2xX6hPI57hP
         et2EcEgoz/MBZQ7LOEpUolnglkaDZJmQwCqNzFJhn7VmpuWNXT3ckmJPvi/kOq/neKbX
         lN9xZnFvDtm2ZKYlH1FyDjyADLh/OnStFgAreXdzZPNY29AsWlp8TYZ/oXBHJ2VXc/Vb
         qqag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kHcXHJ8ma+wHdOnq6wbVgZKgLxUnEELMmnMVXInJOCs=;
        b=CFAlXThBS1goijD7+0Unmf/p4e+ENNuA0OTIDiH78EVukvGHRXu/Ll7lWyGSfMr/kY
         ecSoKolYouv71f8R630b7RqFEu4jJ1p0zukhqbfog8uI1ybUzlq1FxKBvCTgGZNAgVs3
         5cPoSmWT/875zBFtHPQfW2wz5EM0g3c2ZvYUyK2SNsIZsvCXT7vjxO9m3oGSqYgybCBm
         3TzwUueoPbwhaBkxaBaq4IEjRtWnM+eapAIY2ZvcT4XZ11sEf52qw+DAyxZz+tw6E6Wg
         VzP4f6A4THg+Oenqy9EDUBVs4ApJjgNZuscceMORvegt95kcmiA4nlNdO6Q2XQCzf7v4
         6SZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QFxgVVwU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id c15si330587oto.0.2020.05.05.10.29.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 May 2020 10:29:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id f15so1099542plr.3
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 10:29:13 -0700 (PDT)
X-Received: by 2002:a17:90a:6488:: with SMTP id h8mr4415749pjj.51.1588699752126;
 Tue, 05 May 2020 10:29:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200310221747.2848474-1-jesse.brandeburg@intel.com>
 <20200504193524.GA221287@google.com> <20200504181443.00007a3d@intel.com> <20200505151438.GP185537@smile.fi.intel.com>
In-Reply-To: <20200505151438.GP185537@smile.fi.intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 5 May 2020 10:29:01 -0700
Message-ID: <CAKwvOdn503VpMu6x5qtmeQrcVnwkAqu6gnoU0Pb99sX98aZPHQ@mail.gmail.com>
Subject: Re: [PATCH v6 1/2] x86: fix bitops.h warning with a moved cast
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>, 
	Dan Williams <dan.j.williams@intel.com>, LKML <linux-kernel@vger.kernel.org>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Ingo Molnar <mingo@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Thomas Gleixner <tglx@linutronix.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Ilie Halip <ilie.halip@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QFxgVVwU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Tue, May 5, 2020 at 8:14 AM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Mon, May 04, 2020 at 06:14:43PM -0700, Jesse Brandeburg wrote:
> > On Mon, 4 May 2020 12:51:12 -0700
> > Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > > Sorry for the very late report.  It turns out that if your config
> > > tickles __builtin_constant_p just right, this now produces invalid
> > > assembly:
> > >
> > > $ cat foo.c
> > > long a(long b, long c) {
> > >   asm("orb\t%1, %0" : "+q"(c): "r"(b));
> > >   return c;
> > > }
> > > $ gcc foo.c
> > > foo.c: Assembler messages:
> > > foo.c:2: Error: `%rax' not allowed with `orb'
> > >
> > > The "q" constraint only has meanting on -m32 otherwise is treated as
> > > "r".
> > >
> > > Since we have the mask (& 0xff), can we drop the `b` suffix from the
> > > instruction? Or is a revert more appropriate? Or maybe another way to
> > > skin this cat?
> >
> > Figures that such a small change can create problems :-( Sorry for the
> > thrash!
> >
> > The patches in the link below basically add back the cast, but I'm
> > interested to see if any others can come up with a better fix that
> > a) passes the above code generation test
> > b) still keeps sparse happy
> > c) passes the test module and the code inspection
> >
> > If need be I'm OK with a revert of the original patch to fix the issue
> > in the short term, but it seems to me there must be a way to satisfy
> > both tools.  We went through several iterations on the way to the final
> > patch that we might be able to pluck something useful from.
>
> For me the below seems to work:

Yep:
https://github.com/ClangBuiltLinux/linux/issues/961#issuecomment-623785987
https://github.com/ClangBuiltLinux/linux/issues/961#issuecomment-624162497
Sedat wrote the same patch 22 days ago; I didn't notice before
starting this thread.  I will sign off on his patch, add your
Suggested by tag, and send shortly.

>
>
> diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
> index b392571c1f1d1..139122e5b25b1 100644
> --- a/arch/x86/include/asm/bitops.h
> +++ b/arch/x86/include/asm/bitops.h
> @@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
>         if (__builtin_constant_p(nr)) {
>                 asm volatile(LOCK_PREFIX "orb %1,%0"
>                         : CONST_MASK_ADDR(nr, addr)
> -                       : "iq" (CONST_MASK(nr) & 0xff)
> +                       : "iq" ((u8)(CONST_MASK(nr) & 0xff))
>                         : "memory");
>         } else {
>                 asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
> @@ -74,7 +74,7 @@ arch_clear_bit(long nr, volatile unsigned long *addr)
>         if (__builtin_constant_p(nr)) {
>                 asm volatile(LOCK_PREFIX "andb %1,%0"
>                         : CONST_MASK_ADDR(nr, addr)
> -                       : "iq" (CONST_MASK(nr) ^ 0xff));
> +                       : "iq" ((u8)(CONST_MASK(nr) ^ 0xff)));
>         } else {
>                 asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
>                         : : RLONG_ADDR(addr), "Ir" (nr) : "memory");
>
>
> --
> With Best Regards,
> Andy Shevchenko
>
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn503VpMu6x5qtmeQrcVnwkAqu6gnoU0Pb99sX98aZPHQ%40mail.gmail.com.
