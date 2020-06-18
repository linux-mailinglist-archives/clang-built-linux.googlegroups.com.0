Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGM5V73QKGQE3EJME4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBAF1FFC7A
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 22:29:15 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id c3sf7576465ybi.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 13:29:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592512154; cv=pass;
        d=google.com; s=arc-20160816;
        b=oHV/Xg2JC9YNalt5fM4uqRMxCoWa7qGdRJ/UFrbEALT9sS+luE/pAphngGb2y6bjSd
         gcEfWGGr1d24L2lyCHLaenA/AhuLsy22J/c0xk6hSJUd0AiI9kd2ym6UiJTVlneWpmMr
         J9UgMilrLWNND35kQKKZdAwmjxX0mELy2IyHvBKcMa8vKq7XLDFeKMqlBh9LV26rCbjb
         sfiUbXxDmUbC8MmFSHz7LQ+LoXjJopf0rvR8bVInu1TUtfMd3r3+lylhrFccn1GQyXWl
         UMbqaN08LPsyNKV89CQ8TjTOVISrom+MORQKVfnFP7Hw/k9a4sO1iyNCjNhMu6uJNABS
         oa+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=C05O8GtTPkdTCOFfW/LFAaYofBbgyA/9OthEMqf9ub8=;
        b=v4rwDamfQTOw5yavhstQVnzr/l61EjZoOg/ZHoXosS0Q5OJGammHVouqDhsyr9J4Oi
         7izyMRNr3XHr1VJ149FOYBl6GP2+4uVBSndWUiqHjA7Kc27yLPVs1lqXQMa2aoJiAN2X
         3A+lYhV9mRZEoABa60feAp9tHzQobwvXMewWdNp/6kLRoSjnddMXGAqOPR4EJF+aG+U9
         BzcbGm1WbY+t9kasDKI2z9aDCpV8YXRiZ5AtqY10Qto3DzwPB5Y1fIvv+zcjrj0yZY79
         b6JctFcS72HdFW4rpYSb+fceg+wOEthfs5VOSqqeDXGtx4o33Uub2aM6G41dudMRQWEw
         27Ag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mg8xt2oO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C05O8GtTPkdTCOFfW/LFAaYofBbgyA/9OthEMqf9ub8=;
        b=fDcBChFSw9uBdDVn4TVArieB+G6F/3ZJibjiGLmBXlaFKbY//4tnUV+fD6qj+k9SWb
         4Oww8/0MaZPd/OUBHv+g7Ym6osbjim2i22oQMniqkKdF8qEhjwjNFxAF4VZp2ERqvmU1
         VayI3IzH+YapaZjeAjNwcvQZURb1HROHpFS6nKZDcT8BOLvSQ96KT0bT0jUwrFkKuvuq
         Hha4W3uFrMLmhA2qMVYCNgCV5Lq+m0GwUMsVE6ZPF77l/feviM3+OdaUC12zTu4/9b4P
         j7C4Iyd0q0UHvbI8zuVd2Ud5TN07GoKAYbcFaDkUcwOCudyfURiIYuqJmbH/7ApNeSBs
         F+Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C05O8GtTPkdTCOFfW/LFAaYofBbgyA/9OthEMqf9ub8=;
        b=nTAF27V6iH9GzOsCFYA14CuZm2DLb/fm3f47dpxLeR7CLxpuWslhSR6t3QazGAL/OQ
         kkT37ygBOMdutcGOeIgf9uCJGL61hhQ4oh8+hrYcQuAjr/tjKjRVyfIdZWzfUpl7i4+2
         hXji6ulDxEH16gOutH6ILPQV7I9/bsUlb884sXgBhG+cxpN+2jrjxnYCvSu88TlRQj5v
         K4kjQecTIDKZLJslFdpixnAD6O4AMGyQb7dnQyBfVLexP0kO5d0oGu1S9O1lvWVkocBz
         /b5dx388LuPhOqS34RX7tmU9B8r3vDYUYCeF2R5fw5Kli2QLMjaHCVnKYIHxUbBGN6Xp
         dZ8A==
X-Gm-Message-State: AOAM531u6zpXddJJHyjAFQrLnXL7pUl2FQwNWQgue4EBMIWuIR2jXysA
	K0GD2RPFkeHJ2BoqlJaqOZI=
X-Google-Smtp-Source: ABdhPJyBv13QMmznNb+c7GYJi3JfTLv/HEYh97DpY1CAvL+OvJ9fuVkE2svdyEjOq0Wdby/NS+bzfw==
X-Received: by 2002:a25:da92:: with SMTP id n140mr624980ybf.313.1592512154083;
        Thu, 18 Jun 2020 13:29:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4707:: with SMTP id u7ls2759036yba.5.gmail; Thu, 18 Jun
 2020 13:29:13 -0700 (PDT)
X-Received: by 2002:a5b:58e:: with SMTP id l14mr702930ybp.352.1592512153680;
        Thu, 18 Jun 2020 13:29:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592512153; cv=none;
        d=google.com; s=arc-20160816;
        b=MoDO5hlTS6nZE0W9eZUXYBnATv4LHxdSU6jf87ifo3eXKwwEeA2bixlt/QqO0bujNl
         L7cnMW0FfAw4EvdSvT7wkpTZUsxjRaXj/hL7ltOnfk9zbxtif6Zt6Jac1dK+8W39MQkR
         Zq8H7PyvHznBLkDk1p1drebKDosuqpdWhUx+oKHXoem0MIrj9xSV6pFXVR0NZZ5drj0Z
         byh7OWKqO11XjIATs6LA926R71QAMOw1laMexH9csSDKb2d4S9Z9XsrmM+TPrWyQfdJF
         SNF5GbXMEwQoeZbOfv/R7SiW0uWHrVxiuPlqfOC6VcKJJw+8a3ym7QCquA+f9cHkjbI0
         XfvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ApmvY4NUh4oE4rGYTLrhVzjNJ6MG1aD54ijaoWc+qQQ=;
        b=URrz5mmNSo/XaQMpZisz0N13ZPNy1ECMCIVN+ToFmdHvc4YoYJcT5E/YJnpW8lFHAS
         VXk4kRbpFbdhPjv+KqcxDJzw0qS8Z2PSR7qzSsOg8A5ZmpH0BIZ2of5eglPRHZ7IyDhb
         z4uAB5qUvPQsGgi6KVBSyuXMAAfhv+QOVNSB9MDCBtNEp9j2uZPn5q+s6mjXOeqVqV6C
         HQ1p8v1X10zNe8AZfQ7xcs4dbSCyOmRumKJXoWy2uDHVQUvSZlksSVhX/7lS3PG28cye
         FI8K08ZBKQQVTTePlM7yH02154wna0fhrQF+HTq8jMzZor5TEOEJYnzl22gNP8+n3q9p
         XBmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mg8xt2oO;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id k11si340507ybb.4.2020.06.18.13.29.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jun 2020 13:29:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id ne5so3050901pjb.5
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jun 2020 13:29:13 -0700 (PDT)
X-Received: by 2002:a17:90a:e2c4:: with SMTP id fr4mr127063pjb.32.1592512153032;
 Thu, 18 Jun 2020 13:29:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200616223633.73971-1-nhuck@google.com> <CAKwvOdkibnsr+z8-pXG1RjOEcrGQ6HQ0=PM-B9p-i85_BKS0cQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkibnsr+z8-pXG1RjOEcrGQ6HQ0=PM-B9p-i85_BKS0cQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 18 Jun 2020 13:29:01 -0700
Message-ID: <CAKwvOd=rTPS6xgfV7kLsuA-_=ghqE9HWu=6HyTFOMd_-THWaCg@mail.gmail.com>
Subject: Re: [PATCH] Fix unwind_frame for clang-built kernels
To: Nathan Huckleberry <nhuck@google.com>, =?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>
Cc: Russell King <linux@armlinux.org.uk>, Vincent Whitchurch <vincent.whitchurch@axis.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Kristof Beyls <Kristof.Beyls@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Mg8xt2oO;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
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

On Thu, Jun 18, 2020 at 1:22 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Jun 16, 2020 at 3:36 PM 'Nathan Huckleberry' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Since clang does not push pc and sp in function prologues, the current
> > implementation of unwind_frame does not work. By using the previous
> > frame's lr/fp instead of saved pc/sp we get valid unwinds on clang-built
> > kernels.
> >
> > The bounds check on next frame pointer must be changed as well since
> > there are 8 less bytes between frames.
> >
> > This fixes /proc/<pid>/stack.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/912
> > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
>
> Thanks for the patch, Nathan!  When I looked into this, I found the
> latest ARM AAPCS [0] specifically says (with `it` referring to `a
> platform`: "It may permit the frame pointer register to be used as a
> general-purpose callee-saved register, but provide a platform-specific
> mechanism for external agents to reliably locate the chain of frame
> records."   While it's good that's acknowledged in the documentation,
> the current wording is relaxed in order to not force current
> implementations to converge.  This has the unfortunate side effect of
> making finding the frame pointer toolchain dependendent, hence this
> patch and your previous commit 6dc5fd93b2f1 ("ARM: 8900/1:
> UNWINDER_FRAME_POINTER implementation for Clang").  Being more
> specific in the documentation would force at least one implementation
> to change, and I think that would also imply an ABI break.  So I can
> see it both ways, though I still would prefer that the language pin
> this down, even if we had to change LLVM.  Just providing additional
> context for folks on the thread.
>
> This should also have a reported by tag from Miles, in v2.
>
> Reported-by: Miles Chen <Miles.Chen@mediatek.com>
>
> Miles mentioned to me that he tested it, but maybe Miles can confirm
> that publicly on-list via an explicit Tested-by: tag?
>
> This would be useful for us to have in stable; otherwise we'll have to
> carry out of tree in Android and CrOS, which I'd rather not do.  Via
> Documentation/process/stable-kernel-rules.rst, if you add this tag to
> V2, that will greatly simplify submitting this to stable:
> Cc: stable@vger.kernel.org
>
> Miles also showed me the behavior of this patch for different kernel

s/this patch/this function before this patch is applied/

> versions, which varies anywhere from empty or single entry traces to
> panics, so this is pretty important that this works for Clang builds.
>
> [0] https://static.docs.arm.com/ihi0042/i/aapcs32.pdf
>
> > ---
> >  arch/arm/kernel/stacktrace.c | 24 ++++++++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> >
> > diff --git a/arch/arm/kernel/stacktrace.c b/arch/arm/kernel/stacktrace.c
> > index cc726afea023..76ea4178a55c 100644
> > --- a/arch/arm/kernel/stacktrace.c
> > +++ b/arch/arm/kernel/stacktrace.c
> > @@ -22,6 +22,19 @@
> >   * A simple function epilogue looks like this:
> >   *     ldm     sp, {fp, sp, pc}
> >   *
> > + * When compiled with clang, pc and sp are not pushed. A simple function
> > + * prologue looks like this when built with clang:
> > + *
> > + *     stmdb   {..., fp, lr}
> > + *     add     fp, sp, #x
> > + *     sub     sp, sp, #y
> > + *
> > + * A simple function epilogue looks like this when built with clang:
> > + *
> > + *     sub     sp, fp, #x
> > + *     ldm     {..., fp, pc}
> > + *
> > + *
> >   * Note that with framepointer enabled, even the leaf functions have the same
> >   * prologue and epilogue, therefore we can ignore the LR value in this case.
> >   */
> > @@ -34,6 +47,16 @@ int notrace unwind_frame(struct stackframe *frame)
> >         low = frame->sp;
> >         high = ALIGN(low, THREAD_SIZE);
> >
> > +#ifdef CONFIG_CC_IS_CLANG
> > +       /* check current frame pointer is within bounds */
> > +       if (fp < low + 4 || fp > high - 4)
>
> The patch LGTM; maybe Russell or Catalin could triple check this
> bounds check?  Assuming there's no issue, you can include on a v2 my
> reviewed by:
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> I'd probably wait the remainder of a week before sending a v2 to
> collect additional feedback.  Thank you again.
>
> > +               return -EINVAL;
> > +
> > +       frame->sp = frame->fp;
> > +       frame->fp = *(unsigned long *)(fp);
> > +       frame->pc = frame->lr;
> > +       frame->lr = *(unsigned long *)(fp + 4);
> > +#else
> >         /* check current frame pointer is within bounds */
> >         if (fp < low + 12 || fp > high - 4)
> >                 return -EINVAL;
> > @@ -42,6 +65,7 @@ int notrace unwind_frame(struct stackframe *frame)
> >         frame->fp = *(unsigned long *)(fp - 12);
> >         frame->sp = *(unsigned long *)(fp - 8);
> >         frame->pc = *(unsigned long *)(fp - 4);
> > +#endif
> >
> >         return 0;
> >  }
> > --
> > 2.27.0.290.gba653c62da-goog
> >
> > --
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DrTPS6xgfV7kLsuA-_%3DghqE9HWu%3D6HyTFOMd_-THWaCg%40mail.gmail.com.
