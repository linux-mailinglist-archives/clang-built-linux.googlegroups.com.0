Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6X7SWAQMGQEUKJYV4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DE13192BF
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 20:05:32 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id o11sf5177843pgn.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 11:05:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613070330; cv=pass;
        d=google.com; s=arc-20160816;
        b=T16pB8JkQBxVfVFNYfYM+hKl8FuzG9dQLmBiwPfVeblvYRBfGTE/mQxI6MfDd0sTHL
         OjjVw53QsixEUl5r4ZSiD40bCMlcYTb+tT8563LRs2+zwLPCtDUl77v8WE3Nqn4Lu8o+
         NQroaDvOlSUlMNxuvsKEocXHqQx+6EFwIxf9C/dY4U9zWRoImdqYt3PyynovOAsDjTvk
         AUN6Js2MvQDw2CpNToB9RMlzIq5Gydj3QkOGrAx3/y06WatKRow2P7voxx7K5wQ5jMlL
         8uNo66pgzFG9gbp8YzjxOioNOc/yTCf5yLj9bT0SACSAP0ri3V7hW52QFAOYfv7mGeMd
         aTXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vGT+GK/SUfwbpB9Dq3WM09G4RjCyv3XpUNm3I+IJY+c=;
        b=W1XIhJQpqG2nlt+yG2SRPKR2OGXkogEzuXsveNt7BgtQ3nZSV3H6nIWMveYeP9WGxA
         P3tCi2j+CRxMSGZl1NpsynlqFpvBr9kBq9IQQyU34bowuVT8GSLAOLrrJHyrD5DzwMEe
         Cl5edIja5Vd0enTy5HtnCDUNIpEiN2vg6xNmM9IkGip2Dy1hCmeqSz3SEQF7y4X3jAyu
         L3Tu2oOSYb7VVWF0Xhg+NhvKD2wIotiH+YKjsibZop1fFu0bX17A/JPYXLvrjFFkjGdl
         SmKThLCfd9ggoGqKDnHZocPH5lt8yp9kx0C7wrN3NAGYR5jNzPO+21lIC/Jefyuh2yQq
         UhVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lhYmgLGa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::c36 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vGT+GK/SUfwbpB9Dq3WM09G4RjCyv3XpUNm3I+IJY+c=;
        b=GaHvpmcVeIX53nKauZayVAxISbwx5+56w2VwWsSA/FPAVjZUOBvwgKUh9YZnfV+GPE
         UvNTp8Uc+3Y43lWpdY8PNfg8/5wm5lUAhJgO+m1GoZfx17WEbBoPtPhuEQT1MHUHd2b7
         EW7rU5dBtZVIU9R3NMzwZqXC+QxVkVpYnwNkgOZAP0ofXVr6ptce/H72o4AbfstLO+OC
         Xs0mPuXSMkmQVUlr4WB25LjHCOXYnI8F+4DGIsmoEztBssY1DdlDkm5CwHL1Y5s0C44v
         3vopwxsWnYGxtAY7QW4R/bsXboS2F/wNJ2B6S7Ee3WkEkO1mQOLhUvbxDM0kGbEsHX7a
         qjGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vGT+GK/SUfwbpB9Dq3WM09G4RjCyv3XpUNm3I+IJY+c=;
        b=uAQmc1J4BYBMaITv8or6gyb1nPC7tpw2mybYlqyHIgY74vRet0Fq0iGWT5IeIkzT78
         omxnySJ5kkrdbRdwkUMg/b9et6z/gZz1VBYOxkDxqORIl9q85OoZdG1KYF0/gNu8saoO
         l/7tVOV6XSSJNenbYlP6PyeB00NOLIIyWjWZOaakZlAWz26UR3pmc6HWtF2VjMNySfiJ
         dFmrVNObg47JzglJ5KQkhUXKcBAv7cV95ZFclwZaNTEADS/IxczEBMyTZzgLs6/1HoeP
         YqcbPH0cyKrI6iH090Pftxo4SwN9rz13u7RCHAxNW4nbZxU909gP1/n89h0hZ0uz5Mck
         UljQ==
X-Gm-Message-State: AOAM530BApoMRKhpl0RM0wUU4J5PcPPpP3bJjdE9pjUfn0smZbJf6lFY
	jIPmlpzON3RbNopZTUv4xIE=
X-Google-Smtp-Source: ABdhPJwfdORvtTQ+a+h42dBCruITWTcZzMwBfrm6Tg1G5W7JbEkVit4Pyo7mwCw8G9Bv3oKjKB0c1w==
X-Received: by 2002:a17:90a:4d88:: with SMTP id m8mr5277651pjh.45.1613070330761;
        Thu, 11 Feb 2021 11:05:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d2c1:: with SMTP id n1ls2799338plc.11.gmail; Thu, 11
 Feb 2021 11:05:30 -0800 (PST)
X-Received: by 2002:a17:90a:b703:: with SMTP id l3mr5065443pjr.60.1613070330147;
        Thu, 11 Feb 2021 11:05:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613070330; cv=none;
        d=google.com; s=arc-20160816;
        b=IA/5yLaPUp6attEKp58TSnVcpmdNhBeY0E/H7T76uiz2q7KP4ep8rIsMUHBdndQhRT
         9MklEdv+m7jamJ3lffW25xDB2a5dxv2yBXxAYYelXX+N35QfMd+TgHA7sAle+uhfd73c
         dAg8njxXtiGlOQ4lKDP+LMujCUn2NqSt09rcBnx0kglFD5a/3x7U8cIw+x55Tne8xZgT
         3Sn4UXiRfSZeG648BIdQepcP87x2OG4Zta1o4C5GFahqk/aIKW1i4I3kXSr93MfJJ6xY
         AGPMcGQoaxzQl3eJStNdftZDYztDvf3XuUWLJZ3gSqxUBgOxTau/x1DmMFMaAzgHVK1c
         ppNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NDFyBCzQ/w2scwnDR1KimaJyc5DX1XbezjKjDgGDDbI=;
        b=BuyjyyF2D2q/7JMUogfNuOxDKe8pBvUGSeadJR/+lJfxsMhj71kAd6/siKACIaUHCd
         wXdVZxxyKUtzfQgsLD4OUdsvGA2nTmaTchzfG1U2QEMB8L2xrXp+z0oKlwPkRDgBedo+
         jUkx1o1sUYpgkHKssk0oAC7fZyppcPVzRjFjgibXrima6y8ATWr+MU00prq3cpg+Ifzq
         HjJcJAdL+pgrhetNQ0VfDMMIeSUb5O298zHS4EBEmjtf9rMx/ey88V8MaxKr/S0xnInP
         cYzTuRE+ouJQzsZTiTkqghH69KJ4FVK4xGLT9IPf1rNhiUg3iqsihrNaQjhFZuJUaWto
         fuZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lhYmgLGa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::c36 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com. [2607:f8b0:4864:20::c36])
        by gmr-mx.google.com with ESMTPS id q21si395782pgt.3.2021.02.11.11.05.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Feb 2021 11:05:30 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::c36 as permitted sender) client-ip=2607:f8b0:4864:20::c36;
Received: by mail-oo1-xc36.google.com with SMTP id f26so1542419oog.5
        for <clang-built-linux@googlegroups.com>; Thu, 11 Feb 2021 11:05:30 -0800 (PST)
X-Received: by 2002:a4a:a22a:: with SMTP id m42mr6474615ool.22.1613070329249;
 Thu, 11 Feb 2021 11:05:29 -0800 (PST)
MIME-Version: 1.0
References: <20210211025149.3544593-1-ndesaulniers@google.com>
 <20210211025149.3544593-2-ndesaulniers@google.com> <CAMj1kXH9-1=o+UYU0sdKUF1YGDJYyLDvNKExzqkcrWzLB0NWwg@mail.gmail.com>
In-Reply-To: <CAMj1kXH9-1=o+UYU0sdKUF1YGDJYyLDvNKExzqkcrWzLB0NWwg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 11 Feb 2021 11:05:17 -0800
Message-ID: <CAKwvOdkduHO357SPzwtN5TAaa_NnJtcJJ89BEe-50WFbRFDdUA@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] ARM: kprobes: fix UNPREDICTABLE warnings
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Peter Smith <peter.smith@arm.com>, Renato Golin <rengolin@systemcall.eu>, 
	David Spickett <david.spickett@linaro.org>, "kernelci . org bot" <bot@kernelci.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lhYmgLGa;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::c36
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

On Thu, Feb 11, 2021 at 12:15 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Thu, 11 Feb 2021 at 03:52, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > GNU as warns twice for this file:
> > Warning: using r15 results in unpredictable behaviour
> >
> > via the Arm ARM:
> > K1.1.1 Overview of the constraints on Armv7 UNPREDICTABLE behaviors
> >
> >   The term UNPREDICTABLE describes a number of cases where the
> >   architecture has a feature that software must not use.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1271
> > Link: https://reviews.llvm.org/D95586
> > Reported-by: kernelci.org bot <bot@kernelci.org>
> > Suggested-by: Peter Smith <peter.smith@arm.com>
> > Suggested-by: Renato Golin <rengolin@systemcall.eu>
> > Suggested-by: David Spickett <david.spickett@linaro.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Acked-by: Ard Biesheuvel <ardb@kernel.org>
>
> But can we add a bit more context to the commit log, please? It is not

Sure, that's a good idea.

> obvious to the casual reader why it is OK to emit UNPREDICTABLE
> opcodes, i.e., that these are selftests that aim to ensure that kprobe
> never attempts to replace the opcodes in question with a probe, but
> that they are not actually executed, or expected to occur in real
> code.

I'll add:

Ard notes:
  These are selftests that aim to ensure that kprobe
  never attempts to replace the opcodes in question with a probe, but
  they are not actually executed, or expected to occur in real
  code.

to the commit message, when submitting to RMK's queue.

Thanks for taking a look and the feedback.

>
> > ---
> >  arch/arm/probes/kprobes/test-arm.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm/probes/kprobes/test-arm.c b/arch/arm/probes/kprobes/test-arm.c
> > index 977369f1aa48..2543106a203e 100644
> > --- a/arch/arm/probes/kprobes/test-arm.c
> > +++ b/arch/arm/probes/kprobes/test-arm.c
> > @@ -166,10 +166,10 @@ void kprobe_arm_test_cases(void)
> >
> >         /* Data-processing with PC as a target and status registers updated */
> >         TEST_UNSUPPORTED("movs  pc, r1")
> > -       TEST_UNSUPPORTED("movs  pc, r1, lsl r2")
> > +       TEST_UNSUPPORTED(__inst_arm(0xe1b0f211) "       @movs   pc, r1, lsl r2")
> >         TEST_UNSUPPORTED("movs  pc, #0x10000")
> >         TEST_UNSUPPORTED("adds  pc, lr, r1")
> > -       TEST_UNSUPPORTED("adds  pc, lr, r1, lsl r2")
> > +       TEST_UNSUPPORTED(__inst_arm(0xe09ef211) "       @adds   pc, lr, r1, lsl r2")
> >         TEST_UNSUPPORTED("adds  pc, lr, #4")
> >
> >         /* Data-processing with SP as target */
> > --
> > 2.30.0.478.g8a0d178c01-goog
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkduHO357SPzwtN5TAaa_NnJtcJJ89BEe-50WFbRFDdUA%40mail.gmail.com.
