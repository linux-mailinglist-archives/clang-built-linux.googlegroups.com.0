Return-Path: <clang-built-linux+bncBCMIZB7QWENRB2PMZT5QKGQEODR72GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4179B27CF1A
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 15:28:12 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id 82sf3680230pfz.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 06:28:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601386091; cv=pass;
        d=google.com; s=arc-20160816;
        b=1C2uqW+1hKXDMnR4pgFu66vI7t/Ob37T7WP8vyKcOg20iftjd7mxZQVNnHOY1pUbc0
         guNi7E7oO3t/JGUM6vReYQPGK/fBPgJEzTxKdy/Eh4FRJQsmSoqnkl205TIR3h3lIguO
         iMYP5EtsZ1QhJ4dRE+Z2NlHEdFals9Hdg3P11NjxxxuJFFp4htdvCqvhxRN0ILQ75JH8
         EB2cQKD89JIVV9ZeFIJ8uPR9GUhxGVSeFlHxLbdyBrMJyCbBPRhOErsTNg5jb23TIzEA
         SD5VBEQcEFMq5QPEz2yeo0YXU5DPc5CRZe9yWhoxk+ROD4NEYqHlYYc/zAS0EcUAXeon
         36WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=BBvSd84pF1BP8G9XgtwwW3IKarxTaoPUlwP4KiqRYxw=;
        b=zXDWKp25U+T0KyGtokTTxR5DNVN1D/545/CMiBaG1Uy3qZzIe/e9VIHU6v0OJHMKnd
         Kn7/OjLULakTFsXGPKquHnc1gBndBtvSkNGshfz/A/PIL6iwbQFLnll5B7KlAgKcCh+s
         w35lDeD98jj8G64cphqU1ASEy58rgr5IXz96LErP8xUshMOreiuKvrNCgeH54ostedtp
         NA+vRqA6YfT/OHfdwGY5fWit0uuxE0F1TdPKRvWfxDYY2KgXjWhNnTyOKDUZ/Cm2tKwd
         WfayXxUsNm9K5uNyVpOTOf77avqDVXodPwFLb/EeD0btonOiyJeCmEGoKQgKWEcOjsEt
         fCsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pChmh01B;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BBvSd84pF1BP8G9XgtwwW3IKarxTaoPUlwP4KiqRYxw=;
        b=UMpvmfX2oAWzqdXb19IG3dKB3F1fy7y7cIPhoC65DCTVWpjq23cvNejo5fDavFEqNL
         5jh0BZGju0QAHYNJ+T2xpOCowXVOB+NUl5dopmaFxUKXTpoVYOznOrQiKhv4H3qPN+cz
         gLBvl6J9w2ipoSoNI5Jqj+SmCrj9nMQfI67aqerST/C1w9N5Okrso+IUMqkTOhzW4fiB
         UCFlJXAcUeuJawgk6GmR5UpiIGIKM3pAP35B4ayqB9bMFgZ9GhLThjADYtWq6SeubYEy
         rPo8I0Yz91OHulGO4hshhWh2ZRIO+UoE0wGmIFa40Lqxzy392Vv3rWgEZ6LIThzFilH5
         yaCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BBvSd84pF1BP8G9XgtwwW3IKarxTaoPUlwP4KiqRYxw=;
        b=sOKwHn2mHJN2ypSQJryPc6s2OBKKeIutW6/BU1ewjK6uOo9NxIdPVY0wUkRZGvqXUd
         cHbg72Xe/YHOFfakGiu1erhkn+hmAsRWW1pbj+QMREJAAZUPDhq62Zpu2KEnqn8d1h9i
         QmjwBpYSM6/E3vnKya1rJtohH00UV8Jovyn8Da8r9aqgCLSQnS6IqBlliQiKBWwjQmts
         fEaB8DE0Dltn0vOgaPRDlqt0kpLErzdeXGBn5CDAoSM7CJGo5FR1YYLolQxv6fZ/dGoK
         zT1gi6ZksnHocQNJXDcIxH/K0WmyKrNWGSzv6WIxVXPG47WqaY4TCHSGE7b81ZRKJMvn
         s67A==
X-Gm-Message-State: AOAM532Kk55CtkYVO5mo1Hv1xl1kxM5WTq2JVmjGg8ue45AYR+Y/ngsW
	5b9ScSRWXG90UBD5e4nD3hc=
X-Google-Smtp-Source: ABdhPJyCM8ZTAgxpDlW8/dnDy7ZpGnEIbGoyUshSWPFbKW3eeMzj7ni+mGE+AAL8OKqsQZVkZbPN+Q==
X-Received: by 2002:a63:d604:: with SMTP id q4mr3403242pgg.238.1601386089697;
        Tue, 29 Sep 2020 06:28:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:123:: with SMTP id 32ls3064226plb.1.gmail; Tue, 29
 Sep 2020 06:28:09 -0700 (PDT)
X-Received: by 2002:a17:90a:f695:: with SMTP id cl21mr2165458pjb.117.1601386089093;
        Tue, 29 Sep 2020 06:28:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601386089; cv=none;
        d=google.com; s=arc-20160816;
        b=DcE5oYbHdl7pqNzMpf8YQt7ee5OnqesWy7fyJ0xVXefNaMy5tUebapamoTOwrpbQl3
         GaOj8G9hd/eg2U5Y2muynmRyNA089s563HH4ryxFti1XZTSaIGvqJukyHhkSre7dIOdr
         bs1y9cX1zTYgKREgunywJcnIf4VyHdCICZT+3PhZsYwZVQmsGnLBy+3LlMH5oedAxhBZ
         QTc6HcBJgzUQIYSWOGeAANG4umTcu5CLcLhbgphUXyf9j6iEn0vSQVCO4ibYIGXF9lyU
         /3NIi5Z0Te0EoF1maZHfNzrJsGGzKQGoc2oXOReDPwzxpI54H4ZJqJdkAD8Gbl3YQsxW
         rRLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=H4Xu8v2b9D8UwDOHwcV+mRXvAw3A7ucBPwQFn9EiYDM=;
        b=awLBVvmNNK2WX9lkZNuV8+S3xQeE+RCXQnI6Js6Hinsk2fF4blTNdGdlf+2tdr5+2W
         z2R5mVLXNSln6S9miE8B9Fo4X3isghEZ8AVmyTXL6Rz2aU6xiqkyApOpaB8J61NgLo7D
         wxSRy3VEtAkXka67LYwZsLBj1dnaH427Vmta82TcmngB33C/Qw1hO4/jTu2qNUIAZfXL
         K4VtDcq6DLsReYmZ3rrvBJjTKOEG/ya0ACyyex9XYRCxFp8vsNt5cgoQZVooxaVxBI1T
         Z7xuLZdbQeA4hG2RQcG73AiJSKTs4rDKMI7LNyMk5WCa7IItc9kWCLk8Cj7WJ1D50Vo3
         0zVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pChmh01B;
       spf=pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=dvyukov@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id o98si531125pjo.1.2020.09.29.06.28.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 06:28:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id c62so4263266qke.1
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 06:28:09 -0700 (PDT)
X-Received: by 2002:a37:5684:: with SMTP id k126mr4127853qkb.43.1601386088243;
 Tue, 29 Sep 2020 06:28:08 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000052569205afa67426@google.com> <20200927145737.GA4746@zn.tnic>
 <CACT4Y+Zxt3-Dj6r53mEkwv24PazPzTxQ7usV1O+RB0bk2FzO8g@mail.gmail.com> <CAKwvOdkdAi2PwiiS=sp0LV_3=8aVsqEJ87w8WyWbvJ==Eu_4Ag@mail.gmail.com>
In-Reply-To: <CAKwvOdkdAi2PwiiS=sp0LV_3=8aVsqEJ87w8WyWbvJ==Eu_4Ag@mail.gmail.com>
From: "'Dmitry Vyukov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Sep 2020 15:27:56 +0200
Message-ID: <CACT4Y+YpSKWELQb3tcnMs_mTQB5Koh_ZYFz2pCYvP4_cTvqCZQ@mail.gmail.com>
Subject: Re: general protection fault in perf_misc_flags
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Alexander Potapenko <glider@google.com>, Marco Elver <elver@google.com>, 
	syzbot <syzbot+ce179bc99e64377c24bc@syzkaller.appspotmail.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Jiri Olsa <jolsa@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ingo Molnar <mingo@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dvyukov@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pChmh01B;       spf=pass
 (google.com: domain of dvyukov@google.com designates 2607:f8b0:4864:20::741
 as permitted sender) smtp.mailfrom=dvyukov@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Dmitry Vyukov <dvyukov@google.com>
Reply-To: Dmitry Vyukov <dvyukov@google.com>
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

On Mon, Sep 28, 2020 at 10:33 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Sun, Sep 27, 2020 at 10:18 PM 'Dmitry Vyukov' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > On Sun, Sep 27, 2020 at 4:57 PM Borislav Petkov <bp@alien8.de> wrote:
> > >
> > > On Sat, Sep 19, 2020 at 01:32:14AM -0700, syzbot wrote:
> > > > Hello,
> > > >
> > > > syzbot found the following issue on:
> > > >
> > > > HEAD commit:    92ab97ad Merge tag 'sh-for-5.9-part2' of git://git.libc.or..
> > > > git tree:       upstream
> > > > console output: https://syzkaller.appspot.com/x/log.txt?x=1069669b900000
> > > > kernel config:  https://syzkaller.appspot.com/x/.config?x=cd992d74d6c7e62
> > > > dashboard link: https://syzkaller.appspot.com/bug?extid=ce179bc99e64377c24bc
> > > > compiler:       clang version 10.0.0 (https://github.com/llvm/llvm-project/ c2443155a0fb245c8f17f2c1c72b6ea391e86e81)
> > >
> > > All below is AFAICT:
> > >
> > > This compiler you're using is not some official release but some random
> > > commit before the v10 release:
> > >
> > > $ git show c2443155a0fb245c8f17f2c1c72b6ea391e86e81
> > > Author: Hans Wennborg <hans@chromium.org>
> > > Date:   Sat Nov 30 14:20:11 2019 +0100
> > >
> > >     Revert 651f07908a1 "[AArch64] Don't combine callee-save and local stack adjustment when optimizing for size"
> > > ...
> > >
> > > $ git describe c2443155a0fb245c8f17f2c1c72b6ea391e86e81
> > > llvmorg-10-init-10900-gc2443155a0fb
> > >
> > > The v10 release is:
> > >
> > > $ git show llvmorg-10.0.0
> > > tag llvmorg-10.0.0
> > > Tagger: Hans Wennborg <hans@chromium.org>
> > > Date:   Tue Mar 24 12:58:58 2020 +0100
> > >
> > > Tag 10.0.0
> > >
> > > and v10 has reached v10.0.1 in the meantime:
> > >
> > > $ git log --oneline c2443155a0fb245c8f17f2c1c72b6ea391e86e81~1..llvmorg-10.0.1 | wc -l
> > > 7051
> > >
> > > so can you please update your compiler and see if you can still
> > > reproduce with 10.0.1 so that we don't waste time chasing a bug which
> > > has been likely already fixed in one of those >7K commits.
>
> Oh, shoot, sorry I didn't catch that. Good find.  My next question was
> going to be if this is reproducible with a newer compiler release or
> not (later emails make this sound like it's no longer considered clang
> specific).
>
> Generally we want coverage of unreleased compiler versions to ensure
> we don't ship a broken release.  Once the release exists, it's of
> questionable value to continue to test a pre-release version of that
> branch.
>
> This isn't the first time where we've had syzcaller reports that were
> testing old releases of clang.  Maybe we can establish a process for
> upgrading the toolchain under test based on some time based cadence,
> or coinciding with the upstream LLVM release events?

The current hypothesis is that this bug is not related to clang (there
are similar crashes with gcc as well).
We use unreleased versions of clang as we frequently need recent
fixes/features. And then later nobody usually has time to update, if
things work.
Based on offline discussion with Marco, we probably need to update
KMSAN and KASAN to 11 release when it's released.


> > +Alex, Marco,
> >
> > There is suspicion that these may be caused by use of unreleased clang.
> > Do we use the same clang as we use for the KMSAN instance? But this is
> > not KMSAN machine, so I am not sure who/when/why updated it last to
> > this revision.
> > I even see we have some clang 11 version:
> > https://github.com/google/syzkaller/blob/master/docs/syzbot.md#crash-does-not-reproduce
> >
> > Is it possible to switch to some released version for both KMSAN and KASAN now?
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACT4Y%2BYpSKWELQb3tcnMs_mTQB5Koh_ZYFz2pCYvP4_cTvqCZQ%40mail.gmail.com.
