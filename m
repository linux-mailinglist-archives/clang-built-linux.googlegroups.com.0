Return-Path: <clang-built-linux+bncBDTI55WH24IRBHGVUDVQKGQEKP6EDKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id E07E9A2769
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 21:42:21 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id f19sf4577846qtq.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 12:42:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567107741; cv=pass;
        d=google.com; s=arc-20160816;
        b=AsLsi7Kio6el6r0q6KIsvGCssgm2dCt+ILNsdsvHOscqaPOrvnbS9WeP6aBz9zLVTl
         Boosds/0096bbpHSmDUt3B10WVfE+YU6SEjj3w2UsFfcaq0NoisGwEiSXXyzosoylCy0
         JL39s+vf/jIMbovplDATMmZvXDB1bbgXLD1+bbn9KuCpEuPGMjRY/ZlfT3XQXiFV5F/W
         WTEUq1SKLMW6L7WuQ17rgUsvAcsSK6VljGrqDKngSto2UsTkUuZDMMpCIqNOqosWkNxg
         9244MhjIPQ7NcwIuOP0ZXwssRz7PM8b9+RzXF7u7CyhqQDy4pT64fh65nTQ4dHE+NhxH
         xtUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=LAv8TlJKsRrHnnzmAx/9jgdv2aOxD60BHG+8U/JQ7Iw=;
        b=QK6JF5P+kIUId0np/35c8Cgkh10ftPZeoqu9eWNsbEEzyhkTHHxlZ9RbVGbuwqjRb4
         qzbgpYJtgvbjoQZO4bIDDsYqIZgURVLhpNBwBoXBMX27r3Cosw137dsQnHO+a95KyyJ1
         R0PFvpY1WAdO+YTq+8msYTo9ofdkPrsz2jNKmqH7EMobUDVt4HcSdBSUyo9BRw5b9Itq
         zf+VfEQGgLjtuemRi2vTXx8ZMQvfOPaNmGERSMTaIx2QBuO8eUPmtWnUpSkSJ7ZJVZxs
         Ch8JUL5Qvy6QV8NbSHy9dX/QS3IMXp++LYyRoIe17Ll44HHkq5ILvnYTKSTAuF4YMFix
         HYiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ijD5i2nA;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LAv8TlJKsRrHnnzmAx/9jgdv2aOxD60BHG+8U/JQ7Iw=;
        b=qb5sh0Cm3utraiBOxEMF4GAbxkO37UVz2hIn4jJr5GwSMzyDkYM8QdzlGVtpzfpeUF
         X6ZVTG7D5+me348/u/0z84HV8RGp1+tA9XDQ+fSWCtbehVORitj3FD2+ztBVq8rC/cb2
         r/13N3pK5j0Frbkk3rqCtPTk2eO9D3T1YKRhH+2FI1n9wfSOWV7DmwdEpXATyQIgyEYk
         wEhm5BDYR3J2/pTVD2oYPuvADrqJJ+prL7y89dksCN92welzmMOxvT23/dE5wBvyXDYP
         fzddTXMGVAeUItLSlX07a88t4w8WRfAUbgFfp93soTDZdHZxltRtKzcEv3rlm0HCCs0w
         9amg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LAv8TlJKsRrHnnzmAx/9jgdv2aOxD60BHG+8U/JQ7Iw=;
        b=hn9MppN+bsqFnA+7FGI1gIDlVxl/OLqN4R+CKHCgP1cXhIQfQfO1VYzs9OIv7etK8W
         ydTZ2VVOV9FkLJtTeVBOhj2yL4aVadfKyZz5wBqvZGxydnyTNgKIgvjhxCRiB0dXXLgB
         fSMishc2DDAhLvaaNQ5H5zIpmEfwnYxLHVls6gr83JZcFEEbIKcq/9OF3mMROsz2Tp9A
         sIrSbVZ6riJtuFkPxzHyM3rkGZxPZqSAmSKuvxF7LAImib26+BCJHhaYukqc1eeaYKZu
         GyWQaTGlNxoA2pKiPgxJwY9mFmzzLcGV/E1ur5xO1MNdpcntTRxV4invwxR1z035DOXD
         qTVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW9aoj5HbAaU/GyAOHtv1FBSNxeYiwWk3xrayuWg8J90PGky9gs
	08V5vI0pOkfjzp38cTzZzKw=
X-Google-Smtp-Source: APXvYqz3Xsntq/rmV7US6BeZyrKmpI1bJJbyFZKrO911rub6+gl7fi4aUwnHAPrK/QnTekQv/JFsGQ==
X-Received: by 2002:ac8:363c:: with SMTP id m57mr5032530qtb.240.1567107740913;
        Thu, 29 Aug 2019 12:42:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:498c:: with SMTP id w134ls190207qka.5.gmail; Thu, 29 Aug
 2019 12:42:20 -0700 (PDT)
X-Received: by 2002:ae9:e914:: with SMTP id x20mr11094921qkf.57.1567107740433;
        Thu, 29 Aug 2019 12:42:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567107740; cv=none;
        d=google.com; s=arc-20160816;
        b=aGWenD0tFU6OcW6/9iAWX+w5E6H45ncCGPvb43lItEPI8/4XBOtFdgvuqnShdx88ym
         9R6+b+967VuRRljZQYvsiiOE2+kg1Bfzsst0RCGXKChHyEJDpwQ6t/ADEgqRMQ2rhUII
         uKABzkvI6N6a76z01kb6/+a6nrCBEdg9N440Q5GvAVswFfmwqQPt1gbU/1Rw1vM2Vf2e
         vhbrb1v44par/j3ehKbL94o9ZQcD1p9ac1GbUXqHZndNRPax0OnaPl1trDpUVgkDxBct
         6cXE37OandVYO8czfVrxihk/U8N7fOwdXCT8e67Ar2Eb5MaDRfmzXO98sEAuHREgCFun
         DCgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=goqdUWwBM0d+65Ub1kYa+zHEm1voZdSUma/71xLZVEQ=;
        b=POIBr64BsdFW0NVAT6nD1Kr3C9sVEdzwpTLE5rpAkRnHkS0G6lPTVn/RFHyw13C++e
         6wHyjwavQnCOicZdONPNK22dq4843mYOFYmhKQpsCjN9wJfBAK1SnKWF2FEfVigDECIu
         9eH3eCKukYQXcSBRbVes2cYr+4tEWsoIgNbI3opZbREBQj8C2E85b6WM01V6/kxpvctN
         MMCfHfVyrkT5LHczIxnvrWVLFBom5ooDOkiAYjTYtUIRK9+GLywnGtSn4ldY5ZsJgmEi
         0gcVtBIQG+KcQ5FJPVJquA50qbv5hxr111qnlocjvd9VMPJgHSLKN9yZnjU/Xfx9a8rA
         YUYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=ijD5i2nA;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id j10si187932qtn.5.2019.08.29.12.42.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 12:42:20 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id x7TJfpEu010758
	for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 04:41:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x7TJfpEu010758
X-Nifty-SrcIP: [209.85.217.51]
Received: by mail-vs1-f51.google.com with SMTP id r17so343689vso.1
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 12:41:51 -0700 (PDT)
X-Received: by 2002:a05:6102:20c3:: with SMTP id i3mr6815852vsr.155.1567107710522;
 Thu, 29 Aug 2019 12:41:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190829083233.24162-1-linux@rasmusvillemoes.dk> <CAKwvOdnUXiX_cAUTSpqgYJTUERoRF-=3LfaydvwBWC6HtzfEdg@mail.gmail.com>
In-Reply-To: <CAKwvOdnUXiX_cAUTSpqgYJTUERoRF-=3LfaydvwBWC6HtzfEdg@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 30 Aug 2019 04:41:14 +0900
X-Gmail-Original-Message-ID: <CAK7LNASz9hA141W=XJwQsaunyy2WZnjzRw4f2OH=F5dxm3fzMg@mail.gmail.com>
Message-ID: <CAK7LNASz9hA141W=XJwQsaunyy2WZnjzRw4f2OH=F5dxm3fzMg@mail.gmail.com>
Subject: Re: [RFC PATCH 0/5] make use of gcc 9's "asm inline()"
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        LKML <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
        Thomas Gleixner <tglx@linutronix.de>, "H. Peter Anvin" <hpa@zytor.com>,
        Nadav Amit <namit@vmware.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=ijD5i2nA;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.83 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Fri, Aug 30, 2019 at 2:36 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> + Masahiro, who sent patches earlier this week also looking to clean
> up our redefinition of `inline` more.
> https://lkml.org/lkml/2019/8/28/44

I think you noticed what I was trying to do.

Yes, my work for cleaning 'inline' was initially motivated
by the 'asm inline' of GCC 9.

The ultimate goal is to stop macrofying 'inline', but
I am not sure whether or not it is achievable.



> On Thu, Aug 29, 2019 at 1:32 AM Rasmus Villemoes
> <linux@rasmusvillemoes.dk> wrote:
> >
> > gcc 9 provides a way to override the otherwise crude heuristic that
> > gcc uses to estimate the size of the code represented by an asm()
> > statement. From the gcc docs
> >
> >   If you use 'asm inline' instead of just 'asm', then for inlining
> >   purposes the size of the asm is taken as the minimum size, ignoring
> >   how many instructions GCC thinks it is.
>
> Hi Rasmus,
> Thanks for the RFC and including me in the discussion.  Can you link
> me to the release notes this came from, and the bug related to this
> features development?

Just in care you are interested, this started from this thread:
https://lkml.org/lkml/2018/10/7/92



> I'm curious what "the size of the asm" means, and how it differs
> precisely from "how many instructions GCC thinks it is."  I would
> think those are one and the same?  Or maybe "the size of the asm"
> means the size in bytes when assembled to machine code, as opposed to
> the count of assembly instructions?
>
> It looks like LLVM estimates based on instruction count, not assembled
> byte size:
> https://github.com/llvm/llvm-project/blob/6289ee941d6f8fc222225fb6845efce477bf5094/llvm/lib/CodeGen/TargetInstrInfo.cpp#L75-L125
> (That's an arch independent version, that only has an override for hexagon)
> I'd imagine it would be possible to implement a machine-code-size
> based estimate.
>
> That one snippet alludes to a problem with the existing `asm` GNU C
> extension.  (I personally have fixed bugs in LLVM where forgetting to
> measure the estimated size of inline assembly leads to instruction
> selection that can't represent the appropriate jump ranges.  Knowing
> the size of inline assembly is important for the inliner's cost model,
> and AIUI gets difficult for some of the assembler directives)  If the
> internal heuristic had an issue, I'm curious to know more about the
> design decision that led to the introduction of a new GNU C extension
> rather than adjustments to the existing heuristic or cost model, and I
> assume the bug would have more info?  (Maybe giving developers choice
> between two different cost models? Did actual code break changing the
> existing `asm` cost model?  Feels like a choice between an imprecise
> and a precise cost model, but at this point I'm speculating too far
> ahead.)
>
> In particular the reuse of the keyword `inline` in the new GNU C
> extension is problematic for our code, as your patchset clearly
> illustrates.  I understand that adding new keywords to a language is
> impossibly difficult (how many different meanings does `static` have
> now, in different contexts) and thus the reuse of them in differing
> parse contexts is common (reuse of `auto` in C++11 comes to mind,
> though it's not a differing parse context).  I think if the GCC
> developers were aware that we redefine the `inline` keyword via C
> preprocessor, they may have chosen a different design.  But as you
> illustrate, the changes we'd have to make to the kernel are not
> insurmountable.
>
> Tangent:
> There are many GNU C extensions I love and I hope ISO will adopt.
> I've been talking with Hans Boehm about joining up ISO WG14
> specifically to help standardize them.  But then again, I don't like
> standards that I can't download (the ratified version, not a draft
> version).  I also think it's better for implementers to have more say
> over standards, and the W3C/WHATWG split is a very very interesting
> case study in this regard.  That said, I wish more LLVM folks were
> included in the design discussion of GNU C extensions; as trying to
> reimplement new language features can flush out edge cases that allow
> us to nail down behavior in the spec (let alone have a spec) ASAP.
> The only way I find out about new GNU C extensions is when someone in
> the kernel goes to use them, and Clang doesn't support it, then the
> build is broken until we support them. :(
>
> >
> > For compatibility with older compilers, we obviously want a
> >
> >   #if new enough
> >   #define asm_inline asm inline
> >   #else
> >   #define asm_inline asm
> >   #endif
>
> Requesting a feature test macro to the GCC developers would be great;
> then we could use feature detection in one place rather than brittle
> version checks in multiple places.  Imagine the C preprocessor would
> define something like HAS_GNU_ASM_INLINE, then writing a guard would
> be simple, and other compilers could define the same preprocessor
> token when they add support.  GCC already does this for a recent
> extension to inline asm for x86 (I forget the feature name, something
> to do with hinting at the flags or output IIRC, Redhat had a blog post
> and we recently implemented support).


If interested, my prototype-patch is here:
https://lkml.org/lkml/2018/12/13/212

I implemented the feature test in Kconfig.

config CC_HAS_ASM_INLINE
    def_bool $(success,echo 'void foo(void) { asm inline (""); }' |
$(CC) -x c - -c -o /dev/null)

I am also fine with checking it by version
since we know GCC 9 started supporting it.


> >
> > But since we #define the identifier inline to attach some attributes,
> > we have to use the alternate spelling __inline__ of that
> > keyword. Unfortunately, we also currently #define that one (to
> > inline), so we first have to get rid of all (mis)uses of
> > __inline__. Hence the huge diffstat. I think patch 1 should be
> > regenerated and applied just before -rc1.
> >
> > There are a few remaining users of __inline__, in particular in uapi
> > headers, which I'm not sure what to do about (kernel-side users of
> > those will get slightly different semantics since we no longer
> > automatically attach the __attribute__((__gnu_inline__)) etc.). So RFC.

The exported headers must use '__inline__' instead of 'inline':
This is now compile-tested.
https://github.com/torvalds/linux/blob/v5.3-rc6/usr/include/Makefile#L5


At this moment, 'inline' is replaced with '__inline__' with sed:
https://github.com/torvalds/linux/blob/v5.3-rc6/scripts/headers_install.sh#L37

But, I'd like to reduce the sed patterns in the future.



I think using '__inline' for asm_inlie will be OK.




> No thoughts on uapi, but I think we should break this work logically into two:
> 1. remove our redefinition of inline
> 2. implement asm_inline for GCC
>
> I think what you have for 2 so far is ok, but I need to spend more
> time thinking about it.
>
> For 1:
> Our redefinition of inline currently looks like:
>
> 146 #define inline inline __attribute__((__always_inline__))
> __gnu_inline \
> 147   __maybe_unused notrace
>
> So we have:
> 1. always_inline attribute
> 2. gnu_inline attribute
> 3. maybe_unused
> 4. notrace
>
> I'm not convinced that always_inline works as intended.  An inliner
> can still refuse to inline something if it doesn't have the machinery
> to perform all of the transformations required for inlining or it's
> not safe to do so.  The C preprocessor is the one true always inline
> (and type safety be damned).  It would be interesting to study the
> effects of removing that attribute.  Android's Java runtime, ART uses
> this everywhere for all functions, and it's not clear that adding
> attribute always_inline everywhere is an "optimization."  Research
> folks at Google are playing with finding better inlining heuristics
> via machine learning, which is quite exciting.

I want to get rid of always_inline.

My commit  9012d011660ea5cf2a623e1de207a2bc0ca6936d
is the first step towards the goal.
All architectures support CONFIG_OPTIMIZE_INLINING,
and it is stable up to now, I think.

Next, set CONFIG_OPTIMIZE_INLINING=y forcibly,
and lastly, remove CONFIG_OPTIMIZE_INLINING and always_inline
entirely.



> I introduced gnu_inline; it's like the one semantically different
> thing from C89 to C99 IIRC.  I introduced it because a few places in
> the kernel were redefining KBUILD_CFLAGS, dropping `-std=gnu89`.  It
> seems now that there's only a few places left that do that, and
> they're all under arch/x86/ (see:
> https://github.com/ClangBuiltLinux/linux/issues/618#issuecomment-525712390).
> Note that it's a little tricky to undo this; someone just reported
> yesterday that I broke kexec, and we're working on cleaning that up,
> but I think doing that then adding a check to not redefine
> KBUILD_CFLAGS (cc Joe) to scripts/checkpatch.pl would doable.  If we
> fixed that, than we could use `-fgnu_inline` (or w/e the spelling is)
> command line flag instead of the compiler attribute.

Probably we can get rid of this too.

> Masahiro is playing around with the maybe_unused part.  Seems to be a
> difference in GCC and Clang warning on unused static inline functions.
> I think this can be solved with correct usage of #ifdef guards for the
> appropriate CONFIG_'s, rather than __maybe_unused.

Yes.

> notrace's definition is pretty complicated, I have no idea what any of
> those attributes do...
>
> But maybe all of that is moot, if we just use __inline__.  Looking
> more at your patchset after typing this all out, seems like that will
> work.
>
> >
> > The two x86 changes cause smaller code gen differences than I'd
> > expect, but I think we do want the asm_inline thing available sooner
> > or later, so this is just to get the ball rolling.
>
> Is it a net win for all arch's? Or just x86?  `differences` being an
> improvement or a regression?
>
>
> >
> > Rasmus Villemoes (5):
> >   treewide: replace __inline__ by inline
> >   compiler_types.h: don't #define __inline__
> >   compiler-gcc.h: add asm_inline definition
> >   x86: alternative.h: use asm_inline for all alternative variants
> >   x86: bug.h: use asm_inline in _BUG_FLAGS definitions
> >
> >  arch/alpha/include/asm/atomic.h               | 12 +++---
> >  arch/alpha/include/asm/bitops.h               |  6 +--
> >  arch/alpha/include/asm/dma.h                  | 22 +++++-----
> >  arch/alpha/include/asm/floppy.h               |  2 +-
> >  arch/alpha/include/asm/irq.h                  |  2 +-
> >  arch/alpha/include/asm/local.h                |  4 +-
> >  arch/alpha/include/asm/smp.h                  |  2 +-
> >  .../arm/mach-iop32x/include/mach/uncompress.h |  2 +-
> >  .../arm/mach-iop33x/include/mach/uncompress.h |  2 +-
> >  .../arm/mach-ixp4xx/include/mach/uncompress.h |  2 +-
> >  arch/ia64/hp/common/sba_iommu.c               |  2 +-
> >  arch/ia64/hp/sim/simeth.c                     |  2 +-
> >  arch/ia64/include/asm/atomic.h                |  8 ++--
> >  arch/ia64/include/asm/bitops.h                | 34 ++++++++--------
> >  arch/ia64/include/asm/delay.h                 | 14 +++----
> >  arch/ia64/include/asm/irq.h                   |  2 +-
> >  arch/ia64/include/asm/page.h                  |  2 +-
> >  arch/ia64/include/asm/sn/leds.h               |  2 +-
> >  arch/ia64/include/asm/uaccess.h               |  4 +-
> >  arch/ia64/oprofile/backtrace.c                |  4 +-
> >  arch/m68k/include/asm/blinken.h               |  2 +-
> >  arch/m68k/include/asm/checksum.h              |  2 +-
> >  arch/m68k/include/asm/dma.h                   | 32 +++++++--------
> >  arch/m68k/include/asm/floppy.h                |  8 ++--
> >  arch/m68k/include/asm/nettel.h                |  8 ++--
> >  arch/m68k/mac/iop.c                           | 14 +++----
> >  arch/mips/include/asm/atomic.h                | 16 ++++----
> >  arch/mips/include/asm/checksum.h              |  2 +-
> >  arch/mips/include/asm/dma.h                   | 20 +++++-----
> >  arch/mips/include/asm/jazz.h                  |  2 +-
> >  arch/mips/include/asm/local.h                 |  4 +-
> >  arch/mips/include/asm/string.h                |  8 ++--
> >  arch/mips/kernel/binfmt_elfn32.c              |  2 +-
> >  arch/nds32/include/asm/swab.h                 |  4 +-
> >  arch/parisc/include/asm/atomic.h              | 20 +++++-----
> >  arch/parisc/include/asm/bitops.h              | 18 ++++-----
> >  arch/parisc/include/asm/checksum.h            |  4 +-
> >  arch/parisc/include/asm/compat.h              |  2 +-
> >  arch/parisc/include/asm/delay.h               |  2 +-
> >  arch/parisc/include/asm/dma.h                 | 20 +++++-----
> >  arch/parisc/include/asm/ide.h                 |  8 ++--
> >  arch/parisc/include/asm/irq.h                 |  2 +-
> >  arch/parisc/include/asm/spinlock.h            | 12 +++---
> >  arch/powerpc/include/asm/atomic.h             | 40 +++++++++----------
> >  arch/powerpc/include/asm/bitops.h             | 28 ++++++-------
> >  arch/powerpc/include/asm/dma.h                | 20 +++++-----
> >  arch/powerpc/include/asm/edac.h               |  2 +-
> >  arch/powerpc/include/asm/irq.h                |  2 +-
> >  arch/powerpc/include/asm/local.h              | 14 +++----
> >  arch/sh/include/asm/pgtable_64.h              |  2 +-
> >  arch/sh/include/asm/processor_32.h            |  4 +-
> >  arch/sh/include/cpu-sh3/cpu/dac.h             |  6 +--
> >  arch/x86/include/asm/alternative.h            | 14 +++----
> >  arch/x86/include/asm/bug.h                    |  4 +-
> >  arch/x86/um/asm/checksum.h                    |  4 +-
> >  arch/x86/um/asm/checksum_32.h                 |  4 +-
> >  arch/xtensa/include/asm/checksum.h            | 14 +++----
> >  arch/xtensa/include/asm/cmpxchg.h             |  4 +-
> >  arch/xtensa/include/asm/irq.h                 |  2 +-
> >  block/partitions/amiga.c                      |  2 +-
> >  drivers/atm/he.c                              |  6 +--
> >  drivers/atm/idt77252.c                        |  6 +--
> >  drivers/gpu/drm/mga/mga_drv.h                 |  2 +-
> >  drivers/gpu/drm/mga/mga_state.c               | 14 +++----
> >  drivers/gpu/drm/r128/r128_drv.h               |  2 +-
> >  drivers/gpu/drm/r128/r128_state.c             | 14 +++----
> >  drivers/gpu/drm/via/via_irq.c                 |  2 +-
> >  drivers/gpu/drm/via/via_verifier.c            | 30 +++++++-------
> >  drivers/media/pci/ivtv/ivtv-ioctl.c           |  2 +-
> >  drivers/net/ethernet/sun/sungem.c             |  8 ++--
> >  drivers/net/ethernet/sun/sunhme.c             |  6 +--
> >  drivers/net/hamradio/baycom_ser_fdx.c         |  2 +-
> >  drivers/net/wan/lapbether.c                   |  2 +-
> >  drivers/net/wan/n2.c                          |  4 +-
> >  drivers/parisc/led.c                          |  4 +-
> >  drivers/parisc/sba_iommu.c                    |  2 +-
> >  drivers/parport/parport_gsc.h                 |  4 +-
> >  drivers/scsi/lpfc/lpfc_scsi.c                 |  2 +-
> >  drivers/scsi/pcmcia/sym53c500_cs.c            |  4 +-
> >  drivers/scsi/qla2xxx/qla_inline.h             |  2 +-
> >  drivers/scsi/qla2xxx/qla_os.c                 |  2 +-
> >  drivers/tty/amiserial.c                       |  2 +-
> >  drivers/tty/serial/ip22zilog.c                |  2 +-
> >  drivers/tty/serial/sunsab.c                   |  4 +-
> >  drivers/tty/serial/sunzilog.c                 |  2 +-
> >  drivers/video/fbdev/core/fbcon.c              | 20 +++++-----
> >  drivers/video/fbdev/ffb.c                     |  2 +-
> >  drivers/video/fbdev/intelfb/intelfbdrv.c      |  8 ++--
> >  drivers/video/fbdev/intelfb/intelfbhw.c       |  2 +-
> >  drivers/w1/masters/matrox_w1.c                |  4 +-
> >  fs/coda/coda_linux.h                          |  6 +--
> >  fs/freevxfs/vxfs_inode.c                      |  2 +-
> >  fs/nfsd/nfsfh.h                               |  4 +-
> >  include/acpi/platform/acgcc.h                 |  2 +-
> >  include/asm-generic/ide_iops.h                |  8 ++--
> >  include/linux/atalk.h                         |  4 +-
> >  include/linux/compiler-gcc.h                  |  4 ++
> >  include/linux/compiler_types.h                |  5 ++-
> >  include/linux/hdlc.h                          |  4 +-
> >  include/linux/inetdevice.h                    |  6 +--
> >  include/linux/parport.h                       |  4 +-
> >  include/linux/parport_pc.h                    | 22 +++++-----
> >  include/net/ax25.h                            |  2 +-
> >  include/net/checksum.h                        |  2 +-
> >  include/net/dn_nsp.h                          | 16 ++++----
> >  include/net/ip.h                              |  2 +-
> >  include/net/ip6_checksum.h                    |  2 +-
> >  include/net/ipx.h                             | 10 ++---
> >  include/net/llc_c_ev.h                        |  4 +-
> >  include/net/llc_conn.h                        |  4 +-
> >  include/net/llc_s_ev.h                        |  2 +-
> >  include/net/netrom.h                          |  8 ++--
> >  include/net/scm.h                             | 14 +++----
> >  include/net/udplite.h                         |  2 +-
> >  include/net/x25.h                             |  8 ++--
> >  include/net/xfrm.h                            | 18 ++++-----
> >  include/video/newport.h                       | 12 +++---
> >  net/appletalk/atalk_proc.c                    |  4 +-
> >  net/appletalk/ddp.c                           |  2 +-
> >  net/core/neighbour.c                          |  2 +-
> >  net/core/scm.c                                |  2 +-
> >  net/decnet/dn_nsp_in.c                        |  2 +-
> >  net/decnet/dn_nsp_out.c                       |  2 +-
> >  net/decnet/dn_route.c                         |  2 +-
> >  net/decnet/dn_table.c                         |  4 +-
> >  net/ipv6/af_inet6.c                           |  2 +-
> >  net/ipv6/icmp.c                               |  4 +-
> >  net/ipv6/udp.c                                |  2 +-
> >  net/lapb/lapb_iface.c                         |  4 +-
> >  net/llc/llc_input.c                           |  2 +-
> >  sound/sparc/amd7930.c                         |  6 +--
> >  131 files changed, 449 insertions(+), 442 deletions(-)
> >
> > --
> > 2.20.1
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers



--
Best Regards

Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASz9hA141W%3DXJwQsaunyy2WZnjzRw4f2OH%3DF5dxm3fzMg%40mail.gmail.com.
