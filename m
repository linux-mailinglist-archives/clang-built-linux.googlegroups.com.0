Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWH5RSCAMGQEBUDPILA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F51369C21
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 23:40:40 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id s8-20020a1977080000b02901ae88fbe012sf4228285lfc.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 14:40:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619214040; cv=pass;
        d=google.com; s=arc-20160816;
        b=dGufrptCL7GXKWT28XRUzONndDNsDL2q8sodcItdnpiPW48TRLeiUIio2PqSRykMPk
         HlKx8NLbYCsNdHkKLJbG7H0OjEaL7eFVBvWfMhRLDKZhheNa27Dg0qiHL74tFnpoa/Ha
         za9UXh66jU+emMrSq8q302dANOvVIkQ1LJx52fBdisZ1lFEF6u9Igoc3W5hsM1w13tpt
         zDhsArIOjWfR+bnD+JoHs3bC8jrz1S7Dm9gdq68Nvph8SJIen3ALHtarFyVuTZqoCfVP
         ZqQP3B72dhXGoJwKcQFoPRzncdkUdDRWtE9J4Sw2IlUy9M2c6SE5qRIerOvZnlar0QMa
         +k9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+JNedU3W0rG4V9wiwzhHCB7TraUV7nM2fx+6e/ojYzM=;
        b=sDPik5w3wgEcNcVX3XSiR8We1cmGGFVd5iA74F0GcMUPNFmfRsSkD4kBJAsuiq0CA4
         NJYWtN/H4LrcBV9mDHdiQhj5J0//ECqeKzObj4Vg/ACouGZmZ28t3GA9TPCmybW02E/A
         ZNIXLDgdsVXaGi+c6RPfBYPDAGcRgOzaBYb1WiniVy6+YByTm0Vl7eg4grZZA03TmOz/
         etxBs209YUmc0n7D+TI0LtzpL06aqsmFCiv+G3ncP0V+UuANIW7EpJJ4kNuCupLasdRR
         W/VrDFfXgu7fUVO1RLb/4Tqnv3zFNzz74yl7PTxzB1ne8RJUKTL4d2bDngOMqPRCZlkT
         LDTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tVa1BJCA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+JNedU3W0rG4V9wiwzhHCB7TraUV7nM2fx+6e/ojYzM=;
        b=c+xsZrbiB4Mpk+0L2HPFnO2JXaVZ6d5UaShtufkxeTYTSlREZTOn2BaU9qmjMykMv4
         Hi0cng/1SqChHuxm8mtJT1OtFDUaEKys9X6hxbQR4edC5FwO5RB3wTd1/8eS0qkdmIrU
         h6RSsSZfRCVWWCjvZhVcIjutXZ6kMd13HMsow7N36O08eeL4ke9VMUIMvIc4sDT1GiPI
         BgTogqKPZgyNtQXTINU0i/K9ArKB+82aTwH9OkLR8uGYWhxeKeiMCF+KTnbyMUOPkCkO
         RTlfb54fcGIZfAj3C57ufWz8GMCuecGqvdGqnBpPTWOecLoMa0LR1bHI0Dg29cqKJp0J
         Ranw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+JNedU3W0rG4V9wiwzhHCB7TraUV7nM2fx+6e/ojYzM=;
        b=Zs0UXd5VsQkMo03iLkJ33nb1GdSpUlw4hFkWPYZb9W7gwf5OtY69O7GJTnJGM8q3Jt
         b8icJxJpvBHuyWyhM0BluFYStjsuF0+ltElqz80Zi7LLumxjTHkji84oabTHf87kkjik
         4trSbl54DG/eLcuoi5HmVjpDacSzIg/GFnWYlXaNCvLgNnWs6XOLKofRhh+erwdfNz1p
         i7DT5LEawZrcc22d63DcrfFdcn5Ffxy+AAjyWKiyHn5LkGzRjIKdG74AU11xF2XlEYnf
         eQfGBns1TSqV6C4/kfaEm67CQ9a/axtdc07myd651wwqWnzMsxG3rc279pNQn3YM0eRP
         kaVQ==
X-Gm-Message-State: AOAM532YzuUuQtmkA2SLoXM9Ai9Df4qSwGqSFupR8k8nJVboLtbiTDz6
	YIygaqjjQa400Pp0e/jOSiI=
X-Google-Smtp-Source: ABdhPJxXeZfsz+zAq+wOp2RpW2rCVLY0dl6Curq2JBZ3T8JO1dq23OuvPGrRBKE5CEsF39dmhBc56g==
X-Received: by 2002:a2e:d02:: with SMTP id 2mr3908126ljn.152.1619214040471;
        Fri, 23 Apr 2021 14:40:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:2129:: with SMTP id a41ls3342296ljq.5.gmail; Fri,
 23 Apr 2021 14:40:39 -0700 (PDT)
X-Received: by 2002:a2e:6c0d:: with SMTP id h13mr3876022ljc.486.1619214039425;
        Fri, 23 Apr 2021 14:40:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619214039; cv=none;
        d=google.com; s=arc-20160816;
        b=A1jwxDR2Z7D1PuyHovBUxjeMOnDtlvzTLDWiEAgE7ZorCTmg+HMcz1fYcfCsrVeDDv
         qsz6DqWnQaGhJydZv45WRGF94QCq4X368+AhAuzAtJ3hxCD5hAL92xk57j/JGTXcjlxx
         H1xFws2nBOnf3hD+q9Sx7DOsvM8thZVN5TpUocveKC64q1BC4KPG9fbNmsTiD7YQmGfO
         ISzF1lqQI1pCFBGMttjd/akIdhTu7vb4rqWXAZg+nF2hEzEb8KSHJmkQVzkaqFdcnA1O
         8t8M9QXrsub8JEJBbYkATh42JvMNrIm4iSghU8cK7PF3K2cBYovbGM5VePJw7IKPP8wv
         kKiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tJ6obPNuaoAMJc5yblq26EgDuZF/UgaCteghiSQhtwg=;
        b=OtwAPOM3GUtK8ez3hWm1Kp3IEoGmaXxNAuEyY/I8dQs7l2fYaw9tJHCJH101S9za6o
         JL+Hevfs1Aod1Tq83Gd5/k12Oq+bV2qpb1I8l2e5juS9nDAZ+d9s9x2b8ZJSW6n9pIat
         rkYqkqic+JDPmcHBgj3axR0gInlpgN+/hf1DfTSVO/ofO44eSHW65k5CEc27iTUHGFyE
         2YkJmVcccU8mlMKDWIXHveQ97AQMuUBpjiNyr/t8ezAGa+EQi4lKmXrHJsRvaO/S+b/c
         50kT+SWjUmGO5rVByeJb7Mohl6lIz1hzN3sy8PUo07Z8F7mEWb7KeRm9ysJrqdz7+0+b
         KKww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tVa1BJCA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id v3si806758lfp.0.2021.04.23.14.40.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 14:40:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id m7so46369179ljp.10
        for <clang-built-linux@googlegroups.com>; Fri, 23 Apr 2021 14:40:39 -0700 (PDT)
X-Received: by 2002:a2e:7f1c:: with SMTP id a28mr4082635ljd.341.1619214039013;
 Fri, 23 Apr 2021 14:40:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com>
 <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <025b01d7386f$78deed80$6a9cc880$@codeaurora.org>
In-Reply-To: <025b01d7386f$78deed80$6a9cc880$@codeaurora.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 23 Apr 2021 14:40:27 -0700
Message-ID: <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com>
Subject: Re: ARCH=hexagon unsupported?
To: Brian Cain <bcain@codeaurora.org>
Cc: Arnd Bergmann <arnd@kernel.org>, 
	"open list:QUALCOMM HEXAGON..." <linux-hexagon@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, Guenter Roeck <linux@roeck-us.net>, 
	Randy Dunlap <rdunlap@infradead.org>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tVa1BJCA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::230
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

On Fri, Apr 23, 2021 at 11:35 AM Brian Cain <bcain@codeaurora.org> wrote:
>
> > -----Original Message-----
> > From: Arnd Bergmann <arnd@kernel.org>
> > Sent: Friday, April 23, 2021 4:37 AM
> > To: Nick Desaulniers <ndesaulniers@google.com>
> > Cc: open list:QUALCOMM HEXAGON... <linux-hexagon@vger.kernel.org>;
> > clang-built-linux <clang-built-linux@googlegroups.com>; Brian Cain
> > <bcain@codeaurora.org>; linux-arch <linux-arch@vger.kernel.org>; Guenter
> > Roeck <linux@roeck-us.net>
> > Subject: Re: ARCH=hexagon unsupported?
> >
> > On Fri, Apr 23, 2021 at 12:12 AM 'Nick Desaulniers' via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> > >
> > > Arnd,
> > > No one can build ARCH=hexagon and
> > > https://github.com/ClangBuiltLinux/linux/issues/759 has been open for
> > > 2 years.
> > >
> > > Trying to build
> > > $ ARCH=hexagon CROSS_COMPILE=hexagon-linux-gnu make LLVM=1
> > LLVM_IAS=1
> > > -j71
> > >
> > > shows numerous issues, the latest of which commit 8320514c91bea
> > > ("hexagon: switch to ->regset_get()") has a very obvious typo which
> > > misspells the `struct` keyword and has been in the tree for almost 1
> > > year.
> >
> > Thank you for looking into it.
> >
> > > Why is arch/hexagon/ in the tree if no one can build it?
> >
> > Removing it sounds reasonable to me, it's been broken for too long, and we
> > did the same thing for unicore32 that was in the same situation where the
> > gcc port was too old to build the kernel and the clang port never quite work
> > in mainline.
> >
> > Guenter also brought up the issue a year ago, and nothing happened.
> > I see Brian still occasionally sends an Ack to a patch that gets merged through
> > another tree, but he has not send any patches or pull requests himself after
> > taking over maintainership from Richard Kuo in 2019, and the four hexagon
> > pull requests after 2014 only contained build fixes from developers that don't
> > have access to the hardware (Randy Dunlap, Viresh Kumar, Mike Frysinger
> > and me).
>
> Nick, Arnd,
>
> I can appreciate your frustration, I can see that I have let the community down here.  I would like to keep hexagon in-tree and I am committed to making the changes necessary to do so.

I'm very happy to hear that.

> I have a patch under internal review to address the cited build issues and libgcc/compiler-rt content.

We'd be first in line to help build test such a patch. Please consider
cc'ing myself and clang-built-linux@googlegroups.com when such a patch
is available externally.  Further, we have the CI ready and waiting to
add new architectures, even if it's just build testing. That would
have caught regressions like 8320514c91bea; we were down to 1 build
failure with https://github.com/ClangBuiltLinux/linux/issues/759 last
I looked which was preventing us from adding Hexagon to any CI, but we
must now dig ourselves out of a slightly deeper hole now.

Is this patch something you suspect will take quite some time to work
through internal review?

> In addition, my team has been focusing on developing QEMU system mode support that would mitigate some of the need for having hardware access.  We have landed support for userspace hexagon-linux in upstream QEMU.

That's also great to hear. QEMU is a critical part of our CI for boot
testing; if there's more info on timelines or what's involved with
booting a hexagon kernel in QEMU, we'd be very happy to know how or
when that's available.

> My team and I want to make hexagon's open source footprint larger, not smaller.  I realize that not being a good steward of the hexagon kernel has not helped, and we will do what we can to fix it.

A worthwhile and appreciated sentiment. I believe you.

Hexagon could be an interesting case for LLVM support in general for
the Linux kernel; a case where each target or driver need not
necessarily have a GCC backend to be acceptable.  But barring anyone
from being able to actually build it (let alone run it), it's not
that; it's less than that. It's dead code that bit rots further and
burdens maintainers who are maintaining something that's already
broken. I'm not sure who derives any benefit.

I think it's in everyone's best interest to see Linux support more
targets than fewer, and 2020 has been a hard year, but I'm curious how
long something has to be broken before folks say "enough." Please
let's support this properly or recognize the situation for what it is.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30%2BsPO8TyA%40mail.gmail.com.
