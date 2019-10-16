Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKXPTHWQKGQEOGITZ7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADE5D8599
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Oct 2019 03:51:39 +0200 (CEST)
Received: by mail-yw1-xc3f.google.com with SMTP id u131sf17718421ywa.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 18:51:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571190698; cv=pass;
        d=google.com; s=arc-20160816;
        b=HlFsQO5IEqyaoObMDK5l2JVgginR7FcoC7zbN8swxl4KPlVCJsUuQjlifsMEtrJyA5
         Py1g9cNaw4cuM+G0hzstxwEu2nf0cz7QGf6BrUgwebjIemEVZLlQBOo00aaALjOSVKeY
         jnCFPnZqVGHoIODc4z4NdcwIVW0LK86gyJg8jHw/90HoR892sGyKMr939FgoANlrzcsE
         2uFWO8F2EdDavbV8WP3tkS1lgU31GcRJDLfLLvMOxa0smDYBkDQOAaCPYlgbg9Jp3gh1
         8nWdnRujt6C3kLNp4Fjp0f7hL39iGsyZwrVujT9bCqfRGzb2VoOsajpZtpQhK4YtrLSS
         GV2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/QZHrFLtxosA2R5IibKNziEIJIsQ+t7qmeCCFRjjB3w=;
        b=p79mbICbPGrFys2gwECZ6kUxfs+UhwK3ccrRLvEiQX1ZVa3vYa0NtihALz8QATcObK
         FuBUWKGvAjBy79CLXQf475KaEwkeJ3qNZFZWDOFKmrSH3gEVmUUVyLlO5QeVE283j0Ou
         odlsuxR0lSg++CpPyPDwNZzraMmsqDIQ+BVZadje5FXy41D+NFJ6I1icZv3RazY0bk2b
         Y5JhqnS5cYgIMcTM7PuHw2UCNA5HyUGWVZcOPXBdJib7jGUHQYDQYubF5LgSD0bszZts
         /z+l6YwMTi1YK+r+DelBEAyYFlJyDI51BaT2pZjPU8QBC9JIqfmy6E1xklEKL6Tnd4q2
         TKyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XPI8JjSs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/QZHrFLtxosA2R5IibKNziEIJIsQ+t7qmeCCFRjjB3w=;
        b=JgszdvWVi80R+RZixR300PjHODTYQS5ux5NOftFaJmDNk1KDWnZfFiFTJyVgl31LWE
         +ARK7xsa9O9GbDN+YwALY2zglIT6RjDpItH58RwWx/B2BDZhFDtQYYOEZaBax8jauUYX
         EFZWJfQD2kdqDbZgB7X2uT1ZKsMnPCgjE8MkO9COU97ZEX2BhV7/0ohkTkGkW2RkjDCl
         XlZaf0KVk5i/Nnj6Ap00ivrmaNQYiUtrmeKq/3E8PtCoiiFd8BlAIsf3KyYb5BF5bwJU
         7B/dusf11TW4/sdTIcOWfCsuDKvuK77dsoTAZJTmuAlsTehkM49T3Xw6cfCj44sWIGBs
         33iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/QZHrFLtxosA2R5IibKNziEIJIsQ+t7qmeCCFRjjB3w=;
        b=pABD2E8GanrTtkLKD1l0ch/igq62Xl+jCroFe1XyZ51HTl6kXXL/dcHSSjmr6tWDti
         xZq0MW4EdK/2sO9yeDyFn3am+qonDZOwbsxyvLDbvpkM6Rv0iFPjv5UnFg5wYEmPCzga
         PDCJrcGnpZfmhFFXTytOWDBvF020YNpYQLUF3Rr031stDMExRi01UicRI//fs4pfyNHU
         3qv9ypN4/9hAYZF6szJC/EwLsaYn9mZFmJLhTFKuUwkZ/1S2XQYwrJP3tla2xDbXVS54
         kSrMLfL+np7NPudsYMXtxcmgO+2MZeGXSxz1Z3mF93vkmq3awcbec0TLGqwY5Fa4fBU6
         78oA==
X-Gm-Message-State: APjAAAUcX2KuhsSKx+g6/307lsVOxMzLkEQnfgEaLmaHSGB+pZ3k3v7z
	9jmkeJy8boK1rW+GtX3+uiA=
X-Google-Smtp-Source: APXvYqwJ7g8U12A9lWV7yaejUqyzD9S3z1BOh2XX12diCiqJDDLdBv04J4mRvoQluZYEqxPemkcx0A==
X-Received: by 2002:a81:498e:: with SMTP id w136mr18209374ywa.209.1571190698095;
        Tue, 15 Oct 2019 18:51:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e64a:: with SMTP id p71ls3374233ywe.11.gmail; Tue, 15
 Oct 2019 18:51:37 -0700 (PDT)
X-Received: by 2002:a81:6e55:: with SMTP id j82mr19891658ywc.150.1571190697716;
        Tue, 15 Oct 2019 18:51:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571190697; cv=none;
        d=google.com; s=arc-20160816;
        b=jUIUVBUgrGYhiUTsa3amfRcj7E+Ls5vFnLCPNY9sb8x0tx0WLDGLR3stB9kHq+72Rp
         Esv+1d2qpm2zE7iMVpPbrGGRnG5Szdouf+ymlC+5gksTTRR/7oly/tRA9LTWUvcj2FIw
         GrZZ3op4UW42pmQJBL7mKqDflvvYznbkuEefJoGFg2dy+JPqe+N8xCfmPtyx8au2vChh
         f9bkO3y4TUOC8mQJXm653jZuffSZ0/6keTsCx8BEnUdOoTb4zx7MiK8AFVK9PC4MU5Rt
         tUGzRhy8SAHJJLRVeA0kfS48q84BXhNQWFZf6C8t4WHvTczJfeu1+fphGscB1InONdSB
         LVGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eInMsMe+BJaYRY1Pz9oWe+U9MwphvcdZCLcBAxvz7R0=;
        b=R9aHRiR8PZrnfgzKb4V0vMuzoiUJV5g5IlUr8quDHkX6yKJpE+myEddbbK3869KNNe
         PY9MAWynKPE3A2uMuJyD1G1cy786otNjfDzwh5yVdN7KgMY4RJ/b5EGtV2JYQB9V+Eu8
         dMESMKtdkFmAdJG1GtIiDi7zPsuFfsA628dBvOUX0hyyXjPg8fUY6MIBUbg1tmThbzch
         uJVtPeE0osqer1rKbxWgChaQkRJnpS5ycWgw9Luse4ra81ApMAWkMye0Yh5FnD8NYQBc
         /1uems3GyXxlvsOWsIeZi8MqVwSQIHErettvG45d4O3iUnTo1VGRD5DvSbz8DUk2sGTh
         VmrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XPI8JjSs;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id y7si1346713ybg.5.2019.10.15.18.51.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 18:51:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id p1so13265768pgi.4
        for <clang-built-linux@googlegroups.com>; Tue, 15 Oct 2019 18:51:37 -0700 (PDT)
X-Received: by 2002:a63:5a03:: with SMTP id o3mr4805222pgb.381.1571190696394;
 Tue, 15 Oct 2019 18:51:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnDVe-dahZGnRtzMrx-AH_C+2Lf20qjFQHNtn9xh=Okzw@mail.gmail.com>
 <9e4d6378-5032-8521-13a9-d9d9519d07de@amd.com> <CAK8P3a3_Q15hKT=gyupb0FrPX1xV3tEBpVaYy1LF0kMUj2u8hw@mail.gmail.com>
 <CAKwvOdnLxm_tZ_qR1D-BE64Z3QaMC2h79ooobdRVAzmCD_2_Sg@mail.gmail.com> <20191015202636.GA1671072@rani>
In-Reply-To: <20191015202636.GA1671072@rani>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Oct 2019 18:51:26 -0700
Message-ID: <CAKwvOd=yGXMwdoxKCD2gcEgevozf41jVmqCkW7CU=Xvd7mqtjw@mail.gmail.com>
Subject: Re: AMDGPU and 16B stack alignment
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Arnd Bergmann <arnd@arndb.de>, "S, Shirish" <sshankar@amd.com>, 
	"Wentland, Harry" <Harry.Wentland@amd.com>, "Deucher, Alexander" <Alexander.Deucher@amd.com>, 
	"yshuiv7@gmail.com" <yshuiv7@gmail.com>, "andrew.cooper3@citrix.com" <andrew.cooper3@citrix.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Matthias Kaehlcke <mka@google.com>, 
	"S, Shirish" <Shirish.S@amd.com>, "Zhou, David(ChunMing)" <David1.Zhou@amd.com>, 
	"Koenig, Christian" <Christian.Koenig@amd.com>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XPI8JjSs;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Tue, Oct 15, 2019 at 1:26 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Oct 15, 2019 at 11:05:56AM -0700, Nick Desaulniers wrote:
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
> >
> > if CC_IS_GCC && GCC_VERSION < 7.1:
> >   set stack alignment to 16B and hope for the best
> >
> > So my diff would be amended to keep the stack alignment flags, but
> > only to support GCC < 7.1.  And that assumes my change compiles with
> > GCC 7.1+. (Looks like it does for me locally with GCC 8.3, but I would
> > feel even more confident if someone with hardware to test on and GCC
> > 7.1+ could boot test).
> > --
> > Thanks,
> > ~Nick Desaulniers
>
> If we do keep it, would adding -mstackrealign make it more robust?
> That's simple and will only add the alignment to functions that require
> 16-byte alignment (at least on gcc).

I think there's also `-mincoming-stack-boundary=`.
https://github.com/ClangBuiltLinux/linux/issues/735#issuecomment-540038017

>
> Alternative is to use
> __attribute__((force_align_arg_pointer)) on functions that might be
> called from 8-byte-aligned code.

Which is hard to automate and easy to forget.  Likely a large diff to fix today.

>
> It looks like -mstackrealign should work from gcc 5.3 onwards.

The kernel would generally like to support GCC 4.9+.

There's plenty of different ways to keep layering on duct tape and
bailing wire to support differing ABIs, but that's just adding
technical debt that will have to be repaid one day.  That's why the
cleanest solution IMO is mark the driver broken for old toolchains,
and use a code-base-consistent stack alignment.  Bending over
backwards to support old toolchains means accepting stack alignment
mismatches, which is in the "unspecified behavior" ring of the
"undefined behavior" Venn diagram.  I have the same opinion on relying
on explicitly undefined behavior.

I'll send patches for fixing up Clang, but please consider my strong
advice to generally avoid stack alignment mismatches, regardless of
compiler.
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DyGXMwdoxKCD2gcEgevozf41jVmqCkW7CU%3DXvd7mqtjw%40mail.gmail.com.
