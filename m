Return-Path: <clang-built-linux+bncBDPZFQ463EFRBTNATDWQKGQEAO2M2WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DDC6D7F0C
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 20:30:37 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id j8sf12659408edl.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Oct 2019 11:30:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571164237; cv=pass;
        d=google.com; s=arc-20160816;
        b=K/W4y9mbA48uI5wHKW7iAridU8PoNJWGnU9PHYF+XVna5xx8UknNDZ8QmmzPR/SseT
         Nytd142Y7YswOfRRLHfWCv1TffAu35cK5D4hoAe03nj1LhVusiDRp8cKz+RnjhbIserx
         7+5tiUK+tn5IKMG2gRzzFINk2EOb2/JZWrXV6sz0/Rm9hMGyD/9nQ6/avO2PDcPbxXlZ
         YXSvduC+egmOr6sP25JVpdVLZJSOb5+nzNVmRzzS9kLWA92VE61sbPeacLtEDBUGGSnQ
         tNoUMiB54B3P5M4Ryed7UzkQqQEKAqBzNOI0MEcQyqtWZzaK4KCMWB/HpCMGBbzXPutP
         Tf9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=quPhyHLdJBIo9G+0aYo3DVLU+oJlnwdJaZJ2XDZnzhQ=;
        b=kLUdPOxukJzzdfiI9f4b88adHAB8RWJEfXwNH81S6y2YiFCooi2XsXNcK0H4A+gxo+
         CsIHr2IuBu12Az41N+XKIoGUmW2YLd4jmtJb0cPvZlUyMztFnOtxTHfG+a1PPLzcKJY+
         szzB+FQbcx6/gx1lLagQIx4WmaTjzB0W3wdw9MzlykQM2Y9O928T1aRHkmo/PTtxVyaX
         UUrndhaAjxVKXbEToU/J0RSCwplfQJhgVkcWw4Gi4azeNWwbtcszTwwxAFJ6/QphtEJJ
         j5cYBEb9aixWLxjOQS+F/w9X3dXutTILEz6K5jorUHvALvvyjgj5iAJKxVD+LDp5X4h2
         qPQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d1bYUzxc;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=quPhyHLdJBIo9G+0aYo3DVLU+oJlnwdJaZJ2XDZnzhQ=;
        b=FP+JYpzdDvZADXscrw2RPPkLV9IxjBV07rDZd9lSTTIS4EWW7tQgteoSEVefjjczBb
         FvfLWm/OBniLkRrprnItUwlUzxFmFQyictU35wF4GmmsFq3uIe4XpgtUXHG+wN4b+mD2
         frMf9aCkOz2/7yBtWI+ANftv5UbHKn+BZgTglINMOiOQ43Bf6XEIzdn0HUDDWPQRmFs/
         tl0WpSJbn6cVqeWcE7jQsgaD1gYJwFljjjJdg0un9KxznFpQd9zxn2NYkZpohG1wCkuv
         pFbiUShGLbwFCodFO1hOozqzjQk6NcZFyGragYzWY0OluKnyY/+da6GASu+ByvDu1n27
         QEjw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=quPhyHLdJBIo9G+0aYo3DVLU+oJlnwdJaZJ2XDZnzhQ=;
        b=Vps0Pgh4FCyTJlu2hnfhGIrAwFCezyKjgjeOeVnSVyrCOIgwNKFHsVMgSO1UVzhk8X
         m51j4i7P9MrhO8c3/QaFw/HiSDMwz6t3B6QgZw/ZFx4HAs000yXLJtz4sjzTT2Otp/sE
         CxozW1puOAkEW3nBiLks0/9XYZ/lBWZsrvhomw2a9DOL9Yu+lRjVnudvOxzYusG9XzQz
         nt6xswFeUImL0tS9xtq83wd9JAhAx6PZpUez2PQzA39L1hUXorE3wIA1XOT9cT0ZXdJ4
         xQxNILGycFOQiN/arSweHnBzKVR57GnQUqLLYN0ecy2qLyDv35iyGnYSyrSktjYRYNez
         YB3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=quPhyHLdJBIo9G+0aYo3DVLU+oJlnwdJaZJ2XDZnzhQ=;
        b=ffQGrC/NZldYzTx8HT40njn3ePrj4Vacc/c2xae6+KhJRbAiFz+qu7JSfD1wa/Fp/q
         Yf/R9hlt/GD5Yf4Vg+R7zJATSYVLO+t5hWv2TEXgffs64zMm1CYe7J9ucFf9x2xkVAbQ
         H28+r6yUtvFd+F7FENP9nWa4DFpz9ykFsAuA8hRlkYgYGFsbNu4Qer4El4F/xyl8Qoc9
         TEZJKnIvZwNLKYvkc3CH6YIHE8/IRJiOtKw5YhSDql+LGS6tzyePUsBBu1VVxoMB1mZ4
         FyYygZGzOpuH7GQfwwE7dvpsI0ATYSfLPXVW/iWleY52DIsUWY/L08FiIrlw+tcJ1Aut
         IrWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVEH5IseUs7DPiddkq4lm+LxmuNcQJGgIee5s3EyfX2c26UY3AY
	bzndMJQrxmEz3bokbwTewkA=
X-Google-Smtp-Source: APXvYqz+wIr/qk3/Zh1zl7U+ZIkS9yA6Rq+cQjG8FkzInuB3EPkGEHeqbxQP5QtGmCXxS6P3trEhJw==
X-Received: by 2002:a17:906:6a8e:: with SMTP id p14mr35522947ejr.137.1571164237190;
        Tue, 15 Oct 2019 11:30:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a2d9:: with SMTP id by25ls4915263ejb.1.gmail; Tue,
 15 Oct 2019 11:30:36 -0700 (PDT)
X-Received: by 2002:a17:906:fad7:: with SMTP id lu23mr36542065ejb.211.1571164236757;
        Tue, 15 Oct 2019 11:30:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571164236; cv=none;
        d=google.com; s=arc-20160816;
        b=fwUhqXOl4cvibgbuIB8afutwVeTdKnbPz9X9Y2t4Z3WBasmyaBabOvOvXJEnz7hBgl
         Vk1nQtOq+j2VrxqUwxUysMUFOqw5yJWvBnN1ODdSDZwsk2Y0TiSf1GS23Wi74NpQm8Rv
         TNBHIt+d6R8QJRxlX4EUDwUfro5JFmfKkMYR6XJin062mINHpMqlYmkiy72HH4QI7SNc
         HSVIl7pYPGa5J7D96flaFSz5igTCoV582Oju3gAk2+Pr0quwV3Ip41O5zA3Fb+tt6Xiz
         Zgw1jqYNuy1tzhjM/75Z41eHqdkmOfaBb0BBwPlXFGB/0/7C7hogcNvybw8NF4gMri/c
         kXLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fzFVXgcr+SbryhCTIPWP1x78uV1MrL2l3mggmZnG6J0=;
        b=xXEM37B6BmQokC2MpcWuZy+2eQ5ZVjEHOXdwQ0EaBLTlR7k8tUOI1DD/HFRE3cqQji
         pLAnhqO+MFfsKmDofgsrN638D1Ubejj6D/mrz7+vT/8riciU09AncQTExuP//wsXV7ME
         dcoweSq7BKzysmDySEQ664CGkBwGI52Gc1u/L5N9nun9tAOUUBqTGglOX3wZ8vaXhhKX
         RbHbFV4/dguTj8zf11EJrrPqqxacw8qKNHmEhPoTgzZlYA9cFmQs5C6uJZ/ztAAHAHrg
         CgTyRXZNmMF9Oo8HDYNdMpvdh2KGGyCnxa+cp2NDZlQ5UrXP3C8TblMU27lzKmsLtH9K
         gGMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d1bYUzxc;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id a27si1053630ejg.1.2019.10.15.11.30.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Oct 2019 11:30:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id b24so106103wmj.5
        for <clang-built-linux@googlegroups.com>; Tue, 15 Oct 2019 11:30:36 -0700 (PDT)
X-Received: by 2002:a1c:d0:: with SMTP id 199mr21418272wma.67.1571164236355;
 Tue, 15 Oct 2019 11:30:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnDVe-dahZGnRtzMrx-AH_C+2Lf20qjFQHNtn9xh=Okzw@mail.gmail.com>
 <9e4d6378-5032-8521-13a9-d9d9519d07de@amd.com> <CAK8P3a3_Q15hKT=gyupb0FrPX1xV3tEBpVaYy1LF0kMUj2u8hw@mail.gmail.com>
 <CAKwvOdnLxm_tZ_qR1D-BE64Z3QaMC2h79ooobdRVAzmCD_2_Sg@mail.gmail.com>
In-Reply-To: <CAKwvOdnLxm_tZ_qR1D-BE64Z3QaMC2h79ooobdRVAzmCD_2_Sg@mail.gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 15 Oct 2019 14:30:23 -0400
Message-ID: <CADnq5_P55aRJ-1VVz2uKA=xpddyi0BvDcXqPD=xVpw3aJZrzng@mail.gmail.com>
Subject: Re: AMDGPU and 16B stack alignment
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, "S, Shirish" <sshankar@amd.com>, 
	"Zhou, David(ChunMing)" <David1.Zhou@amd.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"andrew.cooper3@citrix.com" <andrew.cooper3@citrix.com>, LKML <linux-kernel@vger.kernel.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, "S, Shirish" <Shirish.S@amd.com>, 
	Matthias Kaehlcke <mka@google.com>, "yshuiv7@gmail.com" <yshuiv7@gmail.com>, 
	"Deucher, Alexander" <Alexander.Deucher@amd.com>, "Wentland, Harry" <Harry.Wentland@amd.com>, 
	"Koenig, Christian" <Christian.Koenig@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=d1bYUzxc;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;       dmarc=pass
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

On Tue, Oct 15, 2019 at 2:07 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Oct 15, 2019 at 12:19 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Tue, Oct 15, 2019 at 9:08 AM S, Shirish <sshankar@amd.com> wrote:
> > > On 10/15/2019 3:52 AM, Nick Desaulniers wrote:
> >
> > > My gcc build fails with below errors:
> > >
> > > dcn_calcs.c:1:0: error: -mpreferred-stack-boundary=3 is not between 4 and 12
> > >
> > > dcn_calc_math.c:1:0: error: -mpreferred-stack-boundary=3 is not between 4 and 12
>
> I was able to reproduce this failure on pre-7.1 versions of GCC.  It
> seems that when:
> 1. code is using doubles
> 2. setting -mpreferred-stack-boundary=3 -mno-sse2, ie. 8B stack alignment
> than GCC produces that error:
> https://godbolt.org/z/7T8nbH
>
> That's already a tall order of constraints, so it's understandable
> that the compiler would just error likely during instruction
> selection, but was eventually taught how to solve such constraints.
>
> > >
> > > While GPF observed on clang builds seem to be fixed.
>
> Thanks for the report.  Your testing these patches is invaluable, Shirish!
>
> >
> > Ok, so it seems that gcc insists on having at least 2^4 bytes stack
> > alignment when
> > SSE is enabled on x86-64, but does not actually rely on that for
> > correct operation
> > unless it's using sse2. So -msse always has to be paired with
> >  -mpreferred-stack-boundary=3.
>
> Seemingly only for older versions of GCC, pre 7.1.
>
> >
> > For clang, it sounds like the opposite is true: when passing 16 byte
> > stack alignment
> > and having sse/sse2 enabled, it requires the incoming stack to be 16
> > byte aligned,
>
> I don't think it requires the incoming stack to be 16B aligned for
> sse2, I think it requires the incoming and current stack alignment to
> match. Today it does not, which is why we observe GPFs.
>
> > but passing 8 byte alignment makes it do the right thing.
> >
> > So, should we just always pass $(call cc-option, -mpreferred-stack-boundary=4)
> > to get the desired outcome on both?
>
> Hmmm...I would have liked to remove it outright, as it is an ABI
> mismatch that is likely to result in instability and non-fun-to-debug
> runtime issues in the future.  I suspect my patch does work for GCC
> 7.1+.  The question is: Do we want to either:
> 1. mark AMDGPU broken for GCC < 7.1, or
> 2. continue supporting it via stack alignment mismatch?
>
> 2 is brittle, and may break at any point in the future, but if it's
> working for someone it does make me feel bad to outright disable it.
> What I'd image 2 looks like is (psuedo code in a Makefile):

Well, it's been working as is for years now, at least with gcc, so I'd
hate to break that.

Alex

>
> if CC_IS_GCC && GCC_VERSION < 7.1:
>   set stack alignment to 16B and hope for the best
>
> So my diff would be amended to keep the stack alignment flags, but
> only to support GCC < 7.1.  And that assumes my change compiles with
> GCC 7.1+. (Looks like it does for me locally with GCC 8.3, but I would
> feel even more confident if someone with hardware to test on and GCC
> 7.1+ could boot test).
> --
> Thanks,
> ~Nick Desaulniers
> _______________________________________________
> amd-gfx mailing list
> amd-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/amd-gfx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_P55aRJ-1VVz2uKA%3Dxpddyi0BvDcXqPD%3DxVpw3aJZrzng%40mail.gmail.com.
