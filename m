Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQVWRSCAMGQE4CCMKVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 26939369AA8
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 21:08:51 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id g144-20020a1c20960000b029012983de0c8fsf978616wmg.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 12:08:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619204931; cv=pass;
        d=google.com; s=arc-20160816;
        b=ON2Jn+AJRZWZCWPhMCuW0T3P/q9eAOhfo39ZDN08PNbtQNygyLFgq3FnGQ7PMvXM0u
         Y0ccnl65g8sjnzOsgxzNpvAQZutqkvnklyYe/9mC9aQPpCFOZvlWOw++pMrwe4mmwoCs
         99/treLvUko/Q74WkGbbxz/seJwT8PkVO2FN4M0VqdbBZo23dwQtqz8L43WCp/nKDK3N
         niAWZqA+nLVqzwvqGjuhJTRhrjv80kttUdqX028vZLXhvFGvMnkaXY9bWj+SR51CmHws
         cH570E0sHeYwP7X0c8sQJkF3JyvCkGBSsV1cv/6xf2vZ0dmEYzJyS5gfdU9UUHB//b7p
         +ybg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=WLcrpF/pFJwfQ76NQh+vpQa7umng12kMxo/6dvFO/pE=;
        b=W2tbRRCdRNxiH/IZn/ByIir/7kLGNWd8wWigSHoVJC0JsjeQeOUCE0h/Wa4JoU4riQ
         pFDyJPKIlhn4tcFoPz6m4Me+AAIiwZ07gPHKTM4XCvzQy655TTa/rOhOR53N+grbk2tP
         2Q7BbNAnuNcki0LGDNxJpAo4GcmuzD4Aca1h7RjG0iFB68zSPz/Z+mqutkfGqvqOGYqZ
         9RWJyJXCXNKbNeVDaIeO1ZuXZJQLU2MKOjD4abZMCs6yBfarAQCoTMm7cNO8c5yuETsg
         80wAajNIdF+I/HjL6Y2umYuhbTFDQ/C2iuwVgVEL8xwymfn+GtIQL1rPANqpxdXcpRys
         nu8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BQ9h8WjR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLcrpF/pFJwfQ76NQh+vpQa7umng12kMxo/6dvFO/pE=;
        b=XE/j7JhdE9bGdIvbNK7kQzHTSfouQ3y6LYF0nYAAAvgHBevrKpzNv6vtAXz/RAFvxJ
         RXZ0FBZhMQ5LMegvbgpizoiDA2pzIujVPjzZmAqRoX8a3e3Jfp08/w0a7HICKoYgYn5M
         w4+K8co4z0vUp8PkCMypVB1oXAhbUB5SJU+PO5oU1+v9HK3Fp/rtBdu4La0K/xNabVng
         Av686TG0e9MuwZRPNPj4FITpKexeJsD6BN5ifdZRrED4qXn2ZgUMpxnL85Z40qnmA414
         k9nAZrgRRNlMV46m8G2xBR9Z8QEKIIwh2CaVc/q8Vl6B6xRVaxL3oUAG2go9yx9wd21B
         Sohg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WLcrpF/pFJwfQ76NQh+vpQa7umng12kMxo/6dvFO/pE=;
        b=StKPvqSVIcjgQNELiLFibfnLU47AChUtCbaboQfyxHHy0wjW6sQCWuCHeZZ6vOnd6a
         bJx/jmHbpzp9EANuiGrxTZ5SvSIR1GaNSCRemO9tSPnIA2f0oAanQdYp0nf7RAMd16Ds
         FFV6/zS8P6HI/4W9vr7oKtUX2fUYXzNBYYcG8WvIlrFcoE8nazp4aPJ1vmm0qTEDpD2G
         uTk5C9mvoJb9k+237jihukQ/r4TVzteITidbIhXhOlCaHoL+z2UK//BngrpANnCq6QYM
         VXU4onpzuzqpxdgiovUn8IOWmxLHgxEA2QodbEXe5V9hFlhswFwQ7sZ8C8cQKlPQw6xa
         FL/w==
X-Gm-Message-State: AOAM531OH0KNhKdJux37tcWd1RBkaCXufmxBqFYwTWYAGkBSNpX5oVmh
	8XQ9a09jwgLDgioXcE5mbLQ=
X-Google-Smtp-Source: ABdhPJwnv4Il6SmJ40q+h1hpoggtnBp1gJ60S8wek1bIW9PtHZLmRXwmVf6KH7vnHIrT6VGKWGHL1g==
X-Received: by 2002:adf:de08:: with SMTP id b8mr6324258wrm.279.1619204930839;
        Fri, 23 Apr 2021 12:08:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c1c3:: with SMTP id a3ls4708604wmj.0.gmail; Fri, 23 Apr
 2021 12:08:50 -0700 (PDT)
X-Received: by 2002:a1c:e20a:: with SMTP id z10mr5533931wmg.158.1619204929920;
        Fri, 23 Apr 2021 12:08:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619204929; cv=none;
        d=google.com; s=arc-20160816;
        b=dEaEdYsoY3uAryTEaSKEerLYokiZSUnuGb5eLTdgw36xT0mjdcwxlAAwdRMpRD89sz
         Wk8MDwN2Ot+DZpxHgJaRUbaQ+2/rXvPfdkPvCTkkl8CxVLBv629KyRvLCF380X0tsMz8
         H4nw+p3jaaOAGZ7acUfzB1zP1OL0UDqsUJGMekMq4P6U8rAbGQ3wvj/LjhaBuWrRA4fy
         7gVMehGMkzKXVnfO4CAzWDyOfAwfszk1s0UTVbbWIylbvPkPQnwqOo0207BURC7znjdx
         79/1LRZWJKyGjoEhICgI1murzwriXTPMsr9mP5maQOAxj/dAJZ8SVKsRhtriKITgERi2
         kRBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wOxfKaFORnMh8h2/NUTTTHEScWQ2poutXZXhUsV0Lg0=;
        b=nD3dagVjwlAkeJ10SdiVuAGj8AQCiTzyHRTxBoE2X+wYi7VKNZLt86qjq0ZWANu0Iy
         2PpCQXPED2puzjpfcZTvS+wvk+zx++SGz4fW7EYZnDlxbR0nj27lH6yeuv7tx+eE6Wab
         LExWr7OvQQoD+IVz35dmRhDUqe/KNlnmwt3xEIi3ReVIKudkf/iEImiUBq2gfQ+q2V+q
         Wzsm4unsFy9a10s88LbbNklZ1SEyTQ4+7WKUE1Igo6culjLB6irCASWOdGuXxfd3Vsr2
         RmwDcq7XJ0Uz8NGEfKvbc9D/l6DwwnTVBh6vUJaE5Y2L1+Z8ZZPl0DyPN5kdI3aaHigA
         8Hag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BQ9h8WjR;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id s8si834378wrn.5.2021.04.23.12.08.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 12:08:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id l22so49452721ljc.9
        for <clang-built-linux@googlegroups.com>; Fri, 23 Apr 2021 12:08:49 -0700 (PDT)
X-Received: by 2002:a2e:9211:: with SMTP id k17mr3639956ljg.495.1619204929085;
 Fri, 23 Apr 2021 12:08:49 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000eff40905c0894ce8@google.com> <CAKwvOdnq+9wNZwhmKV3HBCL_CX_W3Cfer107yEsZKJqUpK1dXw@mail.gmail.com>
 <CAKwvOd=XixtbdYfwtUf7+ddxxv=h7eCX4-VP0XZNNFvFuxDSMw@mail.gmail.com> <CAKwvOdnq7_Fw-fVR5-X7ijyCyF16X1cx9=9yaQoAR_iWJqjgug@mail.gmail.com>
In-Reply-To: <CAKwvOdnq7_Fw-fVR5-X7ijyCyF16X1cx9=9yaQoAR_iWJqjgug@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 23 Apr 2021 12:08:37 -0700
Message-ID: <CAKwvOdku_T-AFAV4u48vAT-G8e7F3e_8SUdOzwsbGsVPktwUPw@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - April 21, 2021
To: Nathan Chancellor <natechancellor@gmail.com>, vishald41234@gmail.com, 
	Min-Yih Hsu <minyihh@uci.edu>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	adrian.glaubitz@gmail.com, Jian Cai <jiancai@google.com>, 
	Ian Rogers <irogers@google.com>, Fangrui Song <maskray@google.com>
Cc: Android-LLVM <android-llvm@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BQ9h8WjR;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

A big thank you to everyone who was able to stop by yesterday! We were
able to revisit ~65 bugs yesterday.  We're planning another bug scrub
next Wednesday for ~the same time to revisit the remainder; bugs about
~1 year old and newer. Stop by if you've got some time to spare, and
hopefully we'll have a good sense for where we are as the merge window
opens perhaps this weekend.

On Wed, Apr 21, 2021 at 11:27 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Also, I think we'll clear assignees unless someone IS actively working
> on something, and close out issues tagged "question."
>
>
> On Wed, Apr 21, 2021 at 11:10 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Wed, Apr 21, 2021 at 11:03 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > Hey folks interested in tomorrow's bug scrub; if you have time come
> > > join us at: https://meet.google.com/yvj-tmcy-jup any time 9am-5pm
> > > pacific tomorrow.
> > >
> > > You'll probably want to rebuild LLVM tonight with all backends
> > > enabled, and perhaps even the m68k backend enabled. ie. do not set
> > > `-DLLVM_TARGETS_TO_BUILD`, do set
> >
> > Alternatively, you can set -DLLVM_TARGETS_TO_BUILD to:
> > -DLLVM_TARGETS_TO_BUILD="AArch64;ARM;Hexagon;Mips;PowerPC;RISCV;Sparc;SystemZ;X86"
> >
> > > `-DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD="M68k"`.
> > >
> > > As a template for closing bugs that are not or no longer reproducible,
> > > might I suggest the template:
> > >
> > > ```
> > > Thank you for submitting this bug report.  I'm not able to reproduce
> > > it using llvm @ <YOUR LLVM SHA HERE> using the following commands:
> > > <COMMANDS>
> > > Therefore, I am closing this bug report as obsolete; please feel free
> > > to reopen with additional steps to reproduce beyond what was attempted
> > > above.
> > > ```
> > >
> > > The goal is not to close every bug, but to see if certain bugs are
> > > still visible.  A good comment for one might be:
> > > ```
> > > I was still able to reproduce this failure using llvm @ <YOUR LLVM SHA
> > > HERE> using the following commands:
> > > <COMMANDS>
> > > ```
> > > The key point being the date on the comment will help us understand
> > > which bugs have grown stale or not.
> > >
> > > Probably won't be closing out any feature requests.  Might even get a
> > > few bug fixes in too for low hanging fruit; or new bugs filed.
> > >
> > > On Wed, Apr 21, 2021 at 10:53 PM <ndesaulniers@google.com> wrote:
> > > >
> > > > http://go/clang-built-linux-notes
> > > > Meeting: Hangouts Meet
> > > >
> > > > April 21, 2021
> > > >
> > > > Ppc32 boot failures
> > > >
> > > > https://github.com/ClangBuiltLinux/linux/issues/1345#issuecomment-816864777
> > > >
> > > > Debian LLVM patches causing issues
> > > >
> > > > https://github.com/ClangBuiltLinux/linux/issues/1355
> > > >
> > > > Gcov shenanigans
> > > >
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7af08140979a6e7e12b78c93b8625c8d25b084e2
> > > > KCOV issues resolved
> > > >
> > > > CFI feedback
> > > > Aarch64 per task stack canaries (Nick): https://reviews.llvm.org/D100919
> > > > Alignment issue in blk still not resolved
> > > >
> > > > https://github.com/ClangBuiltLinux/linux/issues/1328
> > > >
> > > > Double CI, oops!
> > > > Fortify source
> > > > Merge window opening
> > > > Bug scrub tomorrow!
> > > >
> > > >
> > > > ________________________________
> > > >
> > > > Sent by http://go/sendnotes
> > >
> > >
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdku_T-AFAV4u48vAT-G8e7F3e_8SUdOzwsbGsVPktwUPw%40mail.gmail.com.
