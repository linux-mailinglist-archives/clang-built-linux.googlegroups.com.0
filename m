Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCWSTDWQKGQE4ZD3L6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id E0556D80D5
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 22:16:11 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id m6sf22379403qtk.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 13:16:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571170570; cv=pass;
        d=google.com; s=arc-20160816;
        b=UI8V6N4xI/T2eFQcWKOBM+GCeZWBusiVGp8tCP55aYkVPOGGccquVClIRVrLGbsZmZ
         SPuZ7RW75lW391x5EyLpbxon5BqLcEpZ99IwN2At+0aC3I6jVG/BnJn2QPIxSRiVaW5m
         YqtXRBkcszrUFcw2cvDqbSAbyoKCxfM3ZxXeCYhmJeB2SpPRufTFPELVsgmYhhZ92uGe
         0SdjfSOiH+Nu/fVom3AfQa0Vc76RJvsZrrn4ZV+XeBGEZJMImLNgIUmnczwpFY6ppfuA
         IQWdp2q6tAZrIW6stKtzTCxggRUGAkGPOMUu4GM1C4soBMKvecJiS1Zkd0CjsirP6bsr
         wWiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sw70fSgZygyp5EMALC+26Q/UWk4rO+ymfy8nJsstlt8=;
        b=jmeGyp5PMUaqA0RxOl6vGrFF1vYsUnYBsq08E8E3qsDnhVSf/qnJsgKVcDgumh+MZJ
         eCGVNA6X9i5XmYpobaEKQW279gC6BaysL/MSA8kj8ZOT4YsYK6DCyTr9EOJBnr+8pQUp
         AD4Rxbfg5lmwggsBYmbs+eIu+Y74u8XnxAlHMX2rpuoEBGz8KAGlxV6JbDvx33DhW0sf
         x1HRjM3ijXWzhTAk1s5VTtbCzHfVkh0Qm3vq7kAcnw1emagSafoAuNzuYR4P4Lo8gcVP
         +3hpaYShW1mAUfNqQadr6NfxnqJFbz0TDZg5wcCYBQH9JDXEulFPYWFxdjYw1xZaebMm
         731Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZkUC2VvD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sw70fSgZygyp5EMALC+26Q/UWk4rO+ymfy8nJsstlt8=;
        b=EBYigiuFq91YSjgKgeKwT5jCmVrLtRLbQ6q0bMGxNf1MSVWYg1SpyyImVwfVIDk2Nh
         i4ZmzG0vgdy87AwKJh2Fo6B9L8N9fkRrwuM0UM5jdf5ZRnTX7AUlVeZhvsZSO6hfD6A9
         ce0gp52WK1A8bBnCPAxkNaEV1dVY6P4TK2u8MPhFQ3kXD80KkzYFQKCTgt6d0zzv8JnC
         FBXrBtW2hSDVaUHuUEEtoxxEVvvVi2hz4PL+65m9zYYQKQJg4obYbjk4vPvefHO5TDSy
         Z16z0Rk1cUsWxymJFIPe60Sr8ehihiO8qEUVmPcATZ5iNB+ZtocBobgsK55PiGhdOgfe
         k0Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sw70fSgZygyp5EMALC+26Q/UWk4rO+ymfy8nJsstlt8=;
        b=Pb8BOMh4DfWJOxQzWarja9QOtWF/4QplC1kDVumGPeFIz4iuiPoWgcPMi4Gq1xfaXO
         bHJc2nayowqzLXODLkfGIpUHfbf23zhLzEMIxDRmTLjbh7DeKnvJKGDNpjUmQ+duDSRm
         8rv5FWdQinfq1feNi4R0p1tajvp+t1oHtu3xA7Ps+xAX/M1zjo4vQ9FpD1uCwXgR878q
         Ao0zTwIxJedUSK4FBajhDMCKH4Xephg6304QfYV5IlOVBtebWvAXXgBmlkdr391KH74T
         gIyn3y0w67B3S9mkq7wYF/dfheFjBxXr7J3xqO/mQNgR9Wwdr6g9eTFIRJYOjM2UmAv8
         oJ3w==
X-Gm-Message-State: APjAAAVcP6OmsN8hC2OMOPAX+8q9btzvrY3d5sxdgulYGG5CWhfWAVsv
	L8wiSZREPB7xuba5jRK6fd0=
X-Google-Smtp-Source: APXvYqxMyh/t6or5hCd9fcpwN1+ubihgdLq2ZubkJ8DtO1iRjdFARChx/4e0rWRHBmhokUXQDq8ufQ==
X-Received: by 2002:ac8:1894:: with SMTP id s20mr41886476qtj.241.1571170570712;
        Tue, 15 Oct 2019 13:16:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2c55:: with SMTP id e21ls20489qta.1.gmail; Tue, 15 Oct
 2019 13:16:10 -0700 (PDT)
X-Received: by 2002:ac8:16eb:: with SMTP id y40mr40935417qtk.67.1571170570375;
        Tue, 15 Oct 2019 13:16:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571170570; cv=none;
        d=google.com; s=arc-20160816;
        b=adLCI81ATrN3Ttbk9afRpcYtHmHuzOsYSyNONHVPDpAK2bRcW3huxPLBkNBUj3gR98
         CCZh+IH8qal/fn73wtVGC95cTgfXAknYXJMs/alj9ws7Rs1PWsuTgXgUxXtQK5BqOvw2
         G47lxT8T7pJ1p/dB3UFvatLCEyrPL0ak7c+6dtXgzGELx2Yk3R+yjiGCk+TMQpWHrsCc
         S0ixTEHdLCecjBExs8MK/Poi/kRQa9qQrAn8M7ooju2DYl8MaThVd3EdYV+fC0aLb9OT
         xXDiD+xnEK5Ng4dzFqIjaBtjCpogM/HrFzqpTy9lkHBUC4Rj97VROyGtsXZXs7759eiH
         ovaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=T6wGmR3qIig/wVR5vsFEQByfOvdwbfZeNFvYpJXRBa8=;
        b=TBMP4fA+Dfp1tEm6bxBnMM9hScMUbRQvbSnO+50vx5tq/KaWWPmzHPCVMH3p9USGPJ
         z0PAhtSpe932gyw1Ld96hjxc4VcuP94th9puebhMOPKvN+YQ8u494ARh51fTJWz5jXYG
         BfHBkgPvdQ6VRnIIowge38rZ8Z/xlHLvLc+dujI/tpNdA6FLhiBhv6NWxDoRpxn/7OUh
         F3AvA8/uXzpoSpsGypp8z0iLZ95X5zrM0495LZ763mh/nEK7rGayWc75uhba9xcuRYVi
         8qmaAFJQ+yzk4w0huw3SOA3tDEo4HAh8qC3Dpnb+/s2wdLpHkWOGz/t7NbKVHKm2s1yB
         kWxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZkUC2VvD;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id h4si889939qkm.2.2019.10.15.13.16.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 13:16:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id e13so4607924pga.7
        for <clang-built-linux@googlegroups.com>; Tue, 15 Oct 2019 13:16:10 -0700 (PDT)
X-Received: by 2002:a17:90a:aa81:: with SMTP id l1mr7575pjq.73.1571170568840;
 Tue, 15 Oct 2019 13:16:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnDVe-dahZGnRtzMrx-AH_C+2Lf20qjFQHNtn9xh=Okzw@mail.gmail.com>
 <9e4d6378-5032-8521-13a9-d9d9519d07de@amd.com> <CAK8P3a3_Q15hKT=gyupb0FrPX1xV3tEBpVaYy1LF0kMUj2u8hw@mail.gmail.com>
 <CAKwvOdnLxm_tZ_qR1D-BE64Z3QaMC2h79ooobdRVAzmCD_2_Sg@mail.gmail.com> <CADnq5_P55aRJ-1VVz2uKA=xpddyi0BvDcXqPD=xVpw3aJZrzng@mail.gmail.com>
In-Reply-To: <CADnq5_P55aRJ-1VVz2uKA=xpddyi0BvDcXqPD=xVpw3aJZrzng@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Oct 2019 13:15:57 -0700
Message-ID: <CAKwvOdme6g7rr+AkJi6Do6Rzq7zYAJm+spQaBF3cwgKU1H2ThQ@mail.gmail.com>
Subject: Re: AMDGPU and 16B stack alignment
To: Alex Deucher <alexdeucher@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, "S, Shirish" <sshankar@amd.com>, 
	"Zhou, David(ChunMing)" <David1.Zhou@amd.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"andrew.cooper3@citrix.com" <andrew.cooper3@citrix.com>, LKML <linux-kernel@vger.kernel.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, "S, Shirish" <Shirish.S@amd.com>, 
	Matthias Kaehlcke <mka@google.com>, "yshuiv7@gmail.com" <yshuiv7@gmail.com>, 
	"Deucher, Alexander" <Alexander.Deucher@amd.com>, "Wentland, Harry" <Harry.Wentland@amd.com>, 
	"Koenig, Christian" <Christian.Koenig@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZkUC2VvD;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536
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

On Tue, Oct 15, 2019 at 11:30 AM Alex Deucher <alexdeucher@gmail.com> wrote:
>
> On Tue, Oct 15, 2019 at 2:07 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Tue, Oct 15, 2019 at 12:19 AM Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > > On Tue, Oct 15, 2019 at 9:08 AM S, Shirish <sshankar@amd.com> wrote:
> > > > On 10/15/2019 3:52 AM, Nick Desaulniers wrote:
> > >
> > > > My gcc build fails with below errors:
> > > >
> > > > dcn_calcs.c:1:0: error: -mpreferred-stack-boundary=3 is not between 4 and 12
> > > >
> > > > dcn_calc_math.c:1:0: error: -mpreferred-stack-boundary=3 is not between 4 and 12
> >
> > I was able to reproduce this failure on pre-7.1 versions of GCC.  It
> > seems that when:
> > 1. code is using doubles
> > 2. setting -mpreferred-stack-boundary=3 -mno-sse2, ie. 8B stack alignment
> > than GCC produces that error:
> > https://godbolt.org/z/7T8nbH
> >
> > That's already a tall order of constraints, so it's understandable
> > that the compiler would just error likely during instruction
> > selection, but was eventually taught how to solve such constraints.
> >
> > > >
> > > > While GPF observed on clang builds seem to be fixed.
> >
> > Thanks for the report.  Your testing these patches is invaluable, Shirish!
> >
> > >
> > > Ok, so it seems that gcc insists on having at least 2^4 bytes stack
> > > alignment when
> > > SSE is enabled on x86-64, but does not actually rely on that for
> > > correct operation
> > > unless it's using sse2. So -msse always has to be paired with
> > >  -mpreferred-stack-boundary=3.
> >
> > Seemingly only for older versions of GCC, pre 7.1.
> >
> > >
> > > For clang, it sounds like the opposite is true: when passing 16 byte
> > > stack alignment
> > > and having sse/sse2 enabled, it requires the incoming stack to be 16
> > > byte aligned,
> >
> > I don't think it requires the incoming stack to be 16B aligned for
> > sse2, I think it requires the incoming and current stack alignment to
> > match. Today it does not, which is why we observe GPFs.
> >
> > > but passing 8 byte alignment makes it do the right thing.
> > >
> > > So, should we just always pass $(call cc-option, -mpreferred-stack-boundary=4)
> > > to get the desired outcome on both?
> >
> > Hmmm...I would have liked to remove it outright, as it is an ABI
> > mismatch that is likely to result in instability and non-fun-to-debug
> > runtime issues in the future.  I suspect my patch does work for GCC
> > 7.1+.  The question is: Do we want to either:
> > 1. mark AMDGPU broken for GCC < 7.1, or
> > 2. continue supporting it via stack alignment mismatch?
> >
> > 2 is brittle, and may break at any point in the future, but if it's
> > working for someone it does make me feel bad to outright disable it.
> > What I'd image 2 looks like is (psuedo code in a Makefile):
>
> Well, it's been working as is for years now, at least with gcc, so I'd
> hate to break that.

Ok, I'm happy to leave that as is for GCC, then.  Would you prefer I
modify it for GCC >7.1 or just leave it alone (maybe I'll add a
comment about *why* it's done for GCC)? Would you prefer 1 patch or 4?

>
> Alex
>
> >
> > if CC_IS_GCC && GCC_VERSION < 7.1:
> >   set stack alignment to 16B and hope for the best

Ie, this ^

> >
> > So my diff would be amended to keep the stack alignment flags, but
> > only to support GCC < 7.1.  And that assumes my change compiles with
> > GCC 7.1+. (Looks like it does for me locally with GCC 8.3, but I would
> > feel even more confident if someone with hardware to test on and GCC
> > 7.1+ could boot test).

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdme6g7rr%2BAkJi6Do6Rzq7zYAJm%2BspQaBF3cwgKU1H2ThQ%40mail.gmail.com.
