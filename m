Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7EQZH5QKGQEZOUJ72Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE6027B653
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 22:33:02 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id z22sf1671464pjr.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 13:33:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601325180; cv=pass;
        d=google.com; s=arc-20160816;
        b=glahKiwB7AxqLd8crQIee3pnxeHtY4Ww6v7sOfsIP2ScE849gNQE1dZqRqLqI/PJgd
         NFCG0HOLMOKXNNlltrj+sTmdnrmgMYnJu7nod7Bm+bjYEhUyI/AQPH5kZ6a03436muHn
         dstN6OUatfQZgxeyKpRNEKHYhQF1R+yutF1QeaVRzZHBPpY1wi7wGHSxsi5qbH3pO671
         8O+fSMP+qTU+nFzrtGa00W4ZGbyARMe6BdZxeUoWmAE7r0Zd7zzKZUdPLu7hYokpjRUq
         q8HmIF/PG29oho+9PTrzd7WzwTID6d76eSAo07it5oVCwpqOSnmP9QPfSD8P6v+WTRaZ
         ZqzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2ZBGIIxELxF6oB/NtmSwA83p3EdhMWJvrsRk0z/nMK4=;
        b=mGMPxGIGg8eXZ4CccuBkTe55bc/f3x39Q4r+Mv5gHzJ00mtNgNv2rm/E5ay1imJAZG
         PMP83q8ZGkHCzdZQU1AuQvw1GP2kzVVtBWgCW2sgp0T1RoO1jJ4F3seVrU+x8pHhfSl5
         Qasq3/Olb8hYIKdRzjncks++Vpt0u98pw1R2Lak/AaRzIPRhOIlqBPdztp0JJr/NKbTJ
         049ABNO1mgLv8rx+Y13z7vRlUdNyajJMelOznmIG7CUhz7odAy8hD10PuFKdiSmGtSG+
         9ftQQ1i7niyU0knVL1O3vUz96L7PCSQs0e2okXthxYJeCsmBiTIt1u2iv1FogYBO+Sp6
         oA3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NoPj18Wg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ZBGIIxELxF6oB/NtmSwA83p3EdhMWJvrsRk0z/nMK4=;
        b=tUO9VQTGLYScpTQZL9xILnn4NMMyMunu2PV0vs1sQXXZdm5lN9LO3M0iusGOwV1Qlx
         H2DK+gvdgZ4xwyg4cAbSfQzRxgNoSucWU/yuz0tsrvvEQt4yqDyobiHPYKCTNOpvymgs
         M2qhSukxgRn+aXR2Fdd6PJiOHOOsm8EsFfDvJdLgixjCaQRtiXswQLKONQrNwUN7vUCx
         ngwtb9lq09LB/Awu/LrFWAEZ8IbTBnVhYF5ZvIP+dpsOEM4lDK9ucdQeOHkExC4+xFA5
         YBBHRRu9WPHXFpNXprnd2jGIf82Nv9zj9eaS+avqHClJ7qLOasyfpQn/DcWE0WrV3sXF
         rSZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2ZBGIIxELxF6oB/NtmSwA83p3EdhMWJvrsRk0z/nMK4=;
        b=o4kPtzT7q2WFPKL17U9QaHlBmP5F3o0otndkwil3tslvBmGT6DxHUlh+R2BhYExMEw
         pkK+fXJc8l2/mjqL5PjJN5nIqPvTJSCKMPT1o646rrA3RWOq6T90iyJywhst61paiQUi
         Jz6bYXhlisx4jbd7mvNe83EZvoKMDp9U8jdW6PIGwyti/Ks6Lv1T85ZsRHYluvwzqiYr
         UG0zJGgEy+QHUwhPK4PwtD5NRxMPI85RDQ5Xs2ydGqX1kkugpV40mGxU+rhGy+Tyif78
         cuggkQxY0N+5w2+wUJ1DbKfDi8HC51TSZxLhCZDcM4x9SJZfbsUV2agL+IqArY47A7jQ
         6cHQ==
X-Gm-Message-State: AOAM530Cm0s7T6Hm2kEKyLdNVkegZM9Kxl2kUugy8gFQiSORb5kqlD4w
	4aQG101GcoXa4V7RRZFON2o=
X-Google-Smtp-Source: ABdhPJyyr2iUasfvJUf8QibAYy4b4xpJohT0KSFZe9PBFkE2mQ5qdczyQ7raf3l4+kSvAm9ALXFLwg==
X-Received: by 2002:a17:902:544:b029:d2:6379:a892 with SMTP id 62-20020a1709020544b02900d26379a892mr1126539plf.53.1601325180562;
        Mon, 28 Sep 2020 13:33:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ead1:: with SMTP id p17ls3753024pld.2.gmail; Mon, 28
 Sep 2020 13:33:00 -0700 (PDT)
X-Received: by 2002:a17:90b:707:: with SMTP id s7mr857945pjz.25.1601325180016;
        Mon, 28 Sep 2020 13:33:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601325180; cv=none;
        d=google.com; s=arc-20160816;
        b=XPRNAi+SndpS65t6nA109KyM0SsE2cU+G2O3+GZi+YDpoxKIy8cPpLxXSfrndWYupg
         mlQ4BGk3Kls8m8FqOlhccDAckemldgLZvG7vVDTBReepMF7XK6vLdjbhZ9umzlis8PgS
         bhvOiIk1BNOAlzbX2nPOqq+YMVWKlPtmM6T+yWUUg215LoPVcePc+Y5jugEgByIegKPh
         d7VbGfVFY1sb/fbjK2DQLEGEzhZw9hXRAEBCrJpDO+ALIi3U+ElbFTZdib5N9BHs7gDy
         mwWFja5uP+ekGqL4umHYNCNBIy8igLqvh7xn12Bkt8/lJkOXaF4y5RYNHRyOATmZFAtK
         UmnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=022MB5UvViutFdbXtKWJ6VGGifiGIjQGT/+f3C2X5BY=;
        b=dcP/mmZQXmvT3rd9QPWq4eELeu8sx/uMUIZGLEN7/Pj8CrsNSCWPjvUHYm3lKScbO/
         q9cKM56ryxNkGBgC84QRb7fD18GHLkST/iSqQuAbKYPcptMoJUfvtZmN45lMu+3rvXOp
         T50P0dknMmdb20kQOunsQ/LK8i0q4ygtPksraRhuPOxYoFgF1QbcG01G1e8+Q0dbivXH
         3vJE8J+zYjkH/vIJVu1Zg9ETnCqwQRpbW+UmlMsdgjudjvW1oyKOvT9eQvgt4QVwwaem
         8DhXgWnM5+oRrhWEFdhMrJOZmIDWt4VXDvj+oiVfDYCE5oki/L1RfCvAqwi8pHjVIkzL
         z/YQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NoPj18Wg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id iq17si384415pjb.3.2020.09.28.13.32.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 13:33:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id d6so2204286pfn.9
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 13:32:59 -0700 (PDT)
X-Received: by 2002:a17:902:ed11:b029:d1:f385:f4e7 with SMTP id
 b17-20020a170902ed11b02900d1f385f4e7mr1131531pld.56.1601325179369; Mon, 28
 Sep 2020 13:32:59 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200927145737.GA4746@zn.tnic>
 <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
In-Reply-To: <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Sep 2020 13:32:47 -0700
Message-ID: <CAKwvOdkdAi2PwiiS=sp0LV_3=8aVsqEJ87w8WyWbvJ==Eu_4Ag@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NoPj18Wg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Sun, Sep 27, 2020 at 10:18 PM 'Dmitry Vyukov' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Sun, Sep 27, 2020 at 4:57 PM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Sat, Sep 19, 2020 at 01:32:14AM -0700, syzbot wrote:
> > > Hello,
> > >
> > > syzbot found the following issue on:
> > >
> > > HEAD commit:    92ab97ad Merge tag 'sh-for-5.9-part2' of git://git.libc.or..
> > > git tree:       upstream
> > > console output: https://syzkaller.appspot.com/x/log.txt?x=1069669b900000
> > > kernel config:  https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62
> > > dashboard link: https://syzkaller.appspot.com/bug?extid=ce179bc99e64377c24bc
> > > compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> >
> > All below is AFAICT:
> >
> > This compiler you're using is not some official release but some random
> > commit before the v10 release:
> >
> > $ git show c2443155a0fb245c8f17f2c1c72b6ea391e86e81
> > Author: Hans Wennborg <hans@chromium.org>
> > Date:   Sat Nov 30 14:20:11 2019 +0100
> >
> >     Revert 651f07908a1 "[AArch64] Don't combine callee-save and local stack adjustment when optimizing for size"
> > ...
> >
> > $ git describe c2443155a0fb245c8f17f2c1c72b6ea391e86e81
> > llvmorg-10-init-10900-gc2443155a0fb
> >
> > The v10 release is:
> >
> > $ git show llvmorg-10.0.0
> > tag llvmorg-10.0.0
> > Tagger: Hans Wennborg <hans@chromium.org>
> > Date:   Tue Mar 24 12:58:58 2020 +0100
> >
> > Tag 10.0.0
> >
> > and v10 has reached v10.0.1 in the meantime:
> >
> > $ git log --oneline c2443155a0fb245c8f17f2c1c72b6ea391e86e81~1..llvmorg-10.0.1 | wc -l
> > 7051
> >
> > so can you please update your compiler and see if you can still
> > reproduce with 10.0.1 so that we don't waste time chasing a bug which
> > has been likely already fixed in one of those >7K commits.

Oh, shoot, sorry I didn't catch that. Good find.  My next question was
going to be if this is reproducible with a newer compiler release or
not (later emails make this sound like it's no longer considered clang
specific).

Generally we want coverage of unreleased compiler versions to ensure
we don't ship a broken release.  Once the release exists, it's of
questionable value to continue to test a pre-release version of that
branch.

This isn't the first time where we've had syzcaller reports that were
testing old releases of clang.  Maybe we can establish a process for
upgrading the toolchain under test based on some time based cadence,
or coinciding with the upstream LLVM release events?

>
> +Alex, Marco,
>
> There is suspicion that these may be caused by use of unreleased clang.
> Do we use the same clang as we use for the KMSAN instance? But this is
> not KMSAN machine, so I am not sure who/when/why updated it last to
> this revision.
> I even see we have some clang 11 version:
> https://github.com/google/syzkaller/blob/master/docs/syzbot.md#crash-does-not-reproduce
>
> Is it possible to switch to some released version for both KMSAN and KASAN now?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkdAi2PwiiS%3Dsp0LV_3%3D8aVsqEJ87w8WyWbvJ%3D%3DEu_4Ag%40mail.gmail.com.
