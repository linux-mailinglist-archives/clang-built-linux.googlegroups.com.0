Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXMXYDZQKGQEAAPX7IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 106CE187632
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 00:29:35 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id c12sf15367025ilo.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 16:29:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584401373; cv=pass;
        d=google.com; s=arc-20160816;
        b=acwTDd17I46vjOzl53yb3/lzNa6jV3TKb4GHLf73lDTxxWZzURBSxsUMzw9yJ3SO7O
         doaRTRIO5titTIJzcl43r5ozsl5KXSO9SC4rOKTWHNyeSwPbZ2YzX2DNyvje1OEjogMz
         aqDzy4VFuPx9tj03BYvrbDRRblln1EyETzDd5a1I0GwkkAzzOP3U5+/yAeU0RsSSA+rs
         keWOS7Hr+SWSvzrM8/6/dQRrXWYiLclLBwp3Kuqa+a7CffKGjz2sD9bPMy+ueGqJfItD
         OZkhORU4OPtlkt1HaEJt6JKj/TWZ/DUbFwITMaovB4LLPbhI7o1ntwwy39PjhZkqeYts
         crVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=AuP6O00+wsl8hq9cytNdC6zjJfJCaNDJ2F4UaxtwaGw=;
        b=LciZcpZCjLn7FDLPOJgyUjADrKMfVnVMPbEzNe1cc5UHua4Au28s9nb8BtW8vEJ91n
         e5bZbQguMPTvkkvMVWKkM9wKjvbfPdcTiln3y5KWux32RjJrTX4pTdkXZKBIIRJtgkbr
         HaOqgZlmWT7bFPGNVwv3U6P+Dfo2NI72FthQvqmpqfwfoyjG2Xz3z82vmSpXLDOSyTXi
         lzgLt2Dwf+gbMduBuSkgZgK3ZHLW1AAqGqZvAY5wl3oJyDRu43OMd4KKgpPGuwvvpnyU
         xAE/DZr5tbGh9a/msU5mUq+Vq4l8BGq/UZFgUsOQTKeAMizQVtKxfAsJl0shTDdp4CBC
         volA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D91sHhaP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AuP6O00+wsl8hq9cytNdC6zjJfJCaNDJ2F4UaxtwaGw=;
        b=X6fa4tiGx7Nycw3DUOHFrR4VMev+z7Ubo2xt9Kayf+NLJDsnDxZOf8SDVcOEzmInIv
         wr3gqQaVQCx2v7uNGYCiuHL7RcjLt7hAhfZP9VFVompVYRw5SzMJgN4oiqcS8WM72ZbY
         t91/fCjmn4nHwCJTTYXllLgnBeHSIfBmKlNikqukjWwti9CabG7iStHUAcKtrsg8WEmk
         a9/lFQJLw1Gx2wpZyaK/As6zVEzkw8J/504DkDxS5Ovs5dZwbzeM173mbizxQlxrR6IK
         tobW/0MrUxwbJnhjXXVzqTKTxJXAW5NuTZHMhFbrlEEnIveskj2cCyMiguv+wJM2xa3z
         7Vnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AuP6O00+wsl8hq9cytNdC6zjJfJCaNDJ2F4UaxtwaGw=;
        b=EZfvrE3etfxL6jHmiuSvwHny0Y+DG0pCVNV/hyRbaxuLlFyZaHWBN1sdi0x2RyY9zU
         4NQ6cgKxthTe2zwf+N2B/bup7rzuNqm6HxmUVrM7IV7xtnsqpf3F/qRJ5RwtgaEeSINc
         DN3U/Dh91FEVCjVMojHmMPvbu2Ms3LbwGKWq7X8nXe43hnkExO/jFQTTcFJZEfwi8TcG
         lqc08syWG7vYGz26Muc3EldZL7pv2EQn8tr7MJfaXR7LHtqHcI3Ljk32/K6YYXFIVnKe
         wNP8P7ByJf9++IrwTF0FFhPtgaBmcRcxRnaTtVXs5vIRpF5dPI2NAPItRg20sK0f0YHU
         iYmA==
X-Gm-Message-State: ANhLgQ15lbL0mCNIt6gsSscU3b/FtymkjwzhKLCIhOodb40H8anJph1R
	Q34v2QrBAWun3EDtn1BItos=
X-Google-Smtp-Source: ADFU+vukvCl4rmqAniVVCYq2F690kbvJYWQQxYksoQYE3bda93hEUGMlxPejw7LNBh6EwzyzXaVlDw==
X-Received: by 2002:a6b:a08:: with SMTP id z8mr1418943ioi.174.1584401373591;
        Mon, 16 Mar 2020 16:29:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8619:: with SMTP id g25ls1349430ild.7.gmail; Mon, 16 Mar
 2020 16:29:33 -0700 (PDT)
X-Received: by 2002:a92:8fcd:: with SMTP id r74mr2358084ilk.39.1584401373204;
        Mon, 16 Mar 2020 16:29:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584401373; cv=none;
        d=google.com; s=arc-20160816;
        b=SWDzfCZWgOmoqBhuhLRaQmM7RO/yHnq7uh7kd90MNuUpMqVMem8j5g8TgYG9TUasen
         UTnae7aHExrdOhYn1PEegHpznv2tvXYx9iMhmFyx3fdhgl7BAcRCLoJwj5qIJrzPbHW+
         +hUaZfzfr90tj/8noN7GC0ZZTMxmOnEKlMU7eFVa6jqq1mrP5tYHgO7swZF+8CC6YxQU
         3y+y5xPnAci6tQd4VahVgI0RNvFXMoqIDbMdRks4CN0d7mAk+dO4JTJjPYLZj5bSC5qi
         HpwRXbiX4sh0RmDJTs2nFkGgeLopFtmxzW3sHJPmkY9As697lFJrD9JXEfzcq8K8wdGV
         Tc5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oljHzdb1xBQpRkE89D8CpE5Iwji8AIMnrHR/cNtwOLI=;
        b=DmzOceSxoGr7x7ABKgbx9qpL55l8pWiNgy2JzN4tNXA69JGbYR3Zmn9uF9T79coN2T
         pj5mzKVwvD6uLn4XsItrnRZ++3oGMeEy0pg6B8I50/7yWMABhG9c+CzqTQZ/Q3U82xTG
         oYbhZSt1glPc+0cWFAlJLoWNQ6a8QQzwmc5VDrUWdikzs7uTS9U5yT87jXNLuwORKwBv
         zslhJ0Y4FF5CBqdEFX145FnG/XeDU+O73cqoOdpD88D7ACeFdEjnj8/R0roJ0OWunS1Z
         dAXrsvu5KIbpDvyZnU5gnCrknvRMjpi1sLmF9G8TIToFefvAiYC714mJigaagQe8r175
         lfUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=D91sHhaP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id b16si38263ion.0.2020.03.16.16.29.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 16:29:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id h8so10624136pgs.9
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 16:29:33 -0700 (PDT)
X-Received: by 2002:a63:4d6:: with SMTP id 205mr2182744pge.10.1584401372189;
 Mon, 16 Mar 2020 16:29:32 -0700 (PDT)
MIME-Version: 1.0
References: <202003060916.RI5pROBS%lkp@intel.com> <CAKwvOdkNXFFzw4fBBzSMf2rUd3hV5Vt=11ONLf4nX4FrcmHFcQ@mail.gmail.com>
 <87k13ulyho.fsf@intel.com> <CAKwvOd=eHp8ZkS4B-GY9fbaUXS5wNxZQbU+eV6wbsXQ_69bieg@mail.gmail.com>
 <874kuwoani.fsf@intel.com>
In-Reply-To: <874kuwoani.fsf@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 16:29:20 -0700
Message-ID: <CAKwvOdny0nRVc+Pex-5Go_f7V0yqAv-cPAbCHbZfbuiAstCB4g@mail.gmail.com>
Subject: Re: [jani:device-info-inheritance-v3 3/19] drivers/gpu/drm/i915/i915_pci.c:212:2:
 error: initializer element is not a compile-time constant
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: kbuild-all@lists.01.org, kbuild test robot <lkp@intel.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=D91sHhaP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Tue, Mar 10, 2020 at 1:51 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Mon, 09 Mar 2020, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > On Mon, Mar 9, 2020 at 1:32 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >>
> >> On Fri, 06 Mar 2020, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >> > Based on the tree, I think this report was meant to go to Jani (cc'ed)?
> >>
> >> It baffles me that the build bot burns resources on building random
> >> branches in my personal repositories.
> >
> > It uses a branch naming convention to avoid testing branches:
> > https://github.com/intel/lkp-tests/wiki/LKP-FAQ#is-there-a-way-not-to-trigger-kbuild-tests-on-a-specific-branch
> >
> > But in this case, it seems it caught a build breakage even further
> > upstream, which is valuable, right?
>
> I guess, though I usually only use it to share some half-baked
> stuff. Perhaps I'll also start using it for build testing some of the
> more obscure ideas. ;)
>
> >> That said, this builds on GCC 8 just fine. Is clang not able to do this?
> >
> > Places that require integer constant expressions can be very subtle.
> > See this recent example in i915 for example:
> > https://github.com/ClangBuiltLinux/linux/issues/918
> > Sometimes reproducing also depends on some configs.  In this case,
> > it's not as I've fetched your branch and can repro on defconfig.

So I've been taking a crack at implementing this in Clang.
https://reviews.llvm.org/D76096 Turns out the problem is very closely
related to `constexpr` handling in C++.  It seems there's already
machinery for this, but it's explicitly disabled
(https://reviews.llvm.org/D76169) because if you have a huge array or
struct or deeply nested struct, it can take a while to verify that
every single element/member is itself a constant expression.

Further, the C standard has language about initializer lists and
constant expressions, but provides no guidance on structs being
treated as constant expressions, though it has a vague loophole about
what may be considered constant expressions. ("An implementation may
accept other forms of constant expressions.").  From what I can tell,
this seems like a GNU C extension, but one that's not documented,
AFAICT.  Certainly would be something the ISO WG14 could provide more
clarification on.  See discussion in
https://bugs.llvm.org/show_bug.cgi?id=45157.

I'll try to push further on this, but the comments in Clang came from
the owner of the codebase, who also happens to be the ISO WG21 spec
editor, so we'll see...

>
> Yeah, reminds me of earlier issues with GCC and Clang having different
> order in certain checks and optimizations, leading to Clang warnings in
> code that GCC just optimized away.
>
> > This is definitely our bug: https://bugs.llvm.org/show_bug.cgi?id=45157
>
> Any idea if older GCC is also limited in this regard? What versions does
> the kbuild bot test?
>
> BR,
> Jani.
>
>
>
> --
> Jani Nikula, Intel Open Source Graphics Center



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdny0nRVc%2BPex-5Go_f7V0yqAv-cPAbCHbZfbuiAstCB4g%40mail.gmail.com.
