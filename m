Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBW47Y35QKGQEONWVKOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C1327A87F
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 09:25:16 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id b16sf101187iod.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 00:25:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601277915; cv=pass;
        d=google.com; s=arc-20160816;
        b=y+m7RY+Nh+bVrd/wPtVnc95l+jdsHAFqvXjS7onPTQYhzPL7GPOpDYsfX3/CfvaBsF
         iu6Uqk/q2/qqj9cegC6mipuVtMZTH70kdyUsvvTcbnLSe16KO33DIszcorl4aeA1WLJz
         yGjJ/y4LV2SITz6SsnAWpjb8A7xm7U/UU1XYDupu4CEW1Q414iShgL1CdT6GyHcBPMNl
         PAGBsV1laAeaCABQAaeRj4yRI9Y9+3Hz7uH44nXiK0VXA6UXRYb1g6R9qOterUQazpII
         sZ1R5xXd1i+DFHkGwQHor9y+dqzmC0KU39TryzeMYj68539efUu0R8YmUn35h833Czs9
         IcNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=a72j6J5FWgS1NLLlMgtRppkGcLGkWnuyg0aBtKu6HT8=;
        b=u+ODC+FP4cTHzZBpeUV91wO5cEqi3AV6TIuk60Q4/H7JkqzI0Gjo4LbP9IISG8p+3u
         HE/68x1Z8nDcd5WxItseD3RZU+msaFFIS+4cGGPN0IBfhz4kPMqJF4O2xbrAEGdjiuEK
         9ypwEPLW/OdgzWUz3SKbiwHziGJY2vPpHnsKmP+Gi4+c/UplFwVmLWXtJs+bJRkr9Xuz
         0pPC24WVdKn6t5GhvyknW+dWcAyBjFQyIKhcgtEZFEacFGG+jV8Y2euL0HSxn3SzLG18
         Za7N5yEgLSokaWXaY8z2DxPR9dUbliO2y6OkkipUUn2JamfnSjG9wRtk6tXxSz9PUqiY
         2XnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c9tNr+0S;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a72j6J5FWgS1NLLlMgtRppkGcLGkWnuyg0aBtKu6HT8=;
        b=qQcha1fRZ7co/IFgu9kzoe53EJT7rowQ3YW8w1J4YRcPaHW5J+HAmuYPyqv1neR1Px
         /3iACd4WepuYEdc5ww2RHzEYJHkoqYkyssno9CIxdp/KYCChjWcr/UN68qgU2bUgKxpV
         U6rGN/WHQQPHlT24wUYSTr1PrI+e7Ft/0oOTK/1UvaTNq124A9Me5DoxiEvCrD5FCvzb
         T7ZnsbtNrh/mbwlLWkxEkBY7ufA6q/2qbLPZgjcdwO5jgvXEQK9MHLP0tDfyBbsL9Byr
         kjS/ff8eiDVEfKacjKZweVC8i0yOdD2EIfuYx9xstHjFGtPUDb8XDIEpIEdOKio26M16
         GulA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a72j6J5FWgS1NLLlMgtRppkGcLGkWnuyg0aBtKu6HT8=;
        b=gDI+E4UvU+KH5ZZv0FaCs3CZedB4ZSyEbFFIsgD2hL1qUOv6hLpwRVf632U3/+2ml4
         +gOqMwd1zUTbfbDoZ0OHAm0EhYsXRe68SYMw+e0iHIfgEHNWAoesVz4iXq7R5g0O1AuU
         n3X1Js/JAmXQCCbfTJkeCElH8xuLg2NfbmtzfSiQ0qSlH6mLtD8+ubzh+a7XA2CCETLr
         AfidlnGMnzxc0DY2NUzQUs23pJWKfn8NGnZ1Q/BANQxAHdADamXq7sKykIf+kjQR9o69
         u/q8IF6ppkPqGEyvU1FaK9milsAFoEAvO3LGBYWZbgGW9wwyICPC2YZhE0KijncQj5YY
         duCA==
X-Gm-Message-State: AOAM533+bK45EKu2jaZ9nBaiuFb2SFu7WwNKz/DwBj77+m7quXhxvFXQ
	TJsScHKBttr1iEioPC8uSwc=
X-Google-Smtp-Source: ABdhPJyIy3SV72GH0QQ1+YRCjlDpP+f3YOiKSH4W0J/yhD/24GD4F9kPrmocz7DsadmMaYx7B0FIKA==
X-Received: by 2002:a92:9ac7:: with SMTP id c68mr93080ill.126.1601277915270;
        Mon, 28 Sep 2020 00:25:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:5a5:: with SMTP id k5ls37516ils.2.gmail; Mon, 28
 Sep 2020 00:25:15 -0700 (PDT)
X-Received: by 2002:a92:1589:: with SMTP id 9mr88043ilv.292.1601277914943;
        Mon, 28 Sep 2020 00:25:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601277914; cv=none;
        d=google.com; s=arc-20160816;
        b=PjWtkrH2osaW98a0kA6TVTHJEBIfIuM39DWlpHaTGmVAPH3hj/IhcyZMSlevyWTkK+
         tkKDWVTE+H4IvHYF6rfe+QbV6QEEp0d8Zw2SpYxXtk87aoy7o2SfORy1xJ+bFHJQNQ3g
         v5WwYBduFjkF3DUuXrKyPkpCGMgxdUMOtYKUJHqiy0VU1yCDTuhkihs8hobqovyco5Yn
         5dGjjs9akRSPzVaFv/FKhQEbM6KSH9Ryuj2YxQxrCgh9oQWBzHbOaGc0bbXVjxIo0TYl
         R1rHSoeY1h4mvOco3Ba1xBpKc3PnwGx/I/DrxAHDF7MmZ8Ag5Ecb8En7HOraNEt/0utR
         Oi8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jml2neKeP5LvDDGsfQfoMJWoSSFjKlccfEpIy6JbJzg=;
        b=FF2eGkOLul+qX5wINHAx+e3xl4YDz/qC7I84bTjt55UJK0cwoTqrKZHcKPE9Ijt8pp
         0S9OqfaWmS4ZnzBk94A/5iVBpv5qsuigad59p0aGnnMTAR/k4D/pJ8zvBrU26ENZlp6J
         XwiCS0Qza4YKqOnVivAlEDYlVwVHkwJm1hkQ4kNnnYbwJ9RojcHuvb3UQhD6rCDjALsI
         Lq7N9LGoA+UUOA35w0WxjV1VEqIrLDOUY4QyuqAhWE+A0IW9T/FgSKCLecTn8/OvM3hT
         IvJeLVuY4siKFBUbypO4tp27i3KlkoUBVG9X98mI24gPIz5DAZ/L/hknr93fHP4GfL4j
         RTCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c9tNr+0S;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id c10si201050iow.3.2020.09.28.00.25.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Sep 2020 00:25:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id y5so8761648otg.5
        for <clang-built-linux@googlegroups.com>; Mon, 28 Sep 2020 00:25:14 -0700 (PDT)
X-Received: by 2002:a9d:66a:: with SMTP id 97mr94939otn.233.1601277914299;
 Mon, 28 Sep 2020 00:25:14 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200927145737.GA4746@zn.tnic>
 <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
In-Reply-To: <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Sep 2020 09:25:03 +0200
Message-ID: <CANpmjNN9o_OUbZozzcQMHD8ynBBVeFFgp-4wK4J_U1JH=OGVsg@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Alexander Potapenko <glider@google.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=c9tNr+0S;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::344 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Mon, 28 Sep 2020 at 07:18, Dmitry Vyukov <dvyukov@google.com> wrote:
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
>
> +Alex, Marco,
>
> There is suspicion that these may be caused by use of unreleased clang.
> Do we use the same clang as we use for the KMSAN instance? But this is
> not KMSAN machine, so I am not sure who/when/why updated it last to
> this revision.
> I even see we have some clang 11 version:
> https://github.com/google/syzkaller/blob/master/docs/syzbot.md#crash-does-not-reproduce

Yeah, we should replace that one as well as it wasn't yet a release-candidate.

> Is it possible to switch to some released version for both KMSAN and KASAN now?

We should probably just switch to Clang 11-rc3 or so. Then we can use
the same compiler for KMSAN and KCSAN at least.

I can package up a newer Clang.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNN9o_OUbZozzcQMHD8ynBBVeFFgp-4wK4J_U1JH%3DOGVsg%40mail.gmail.com.
