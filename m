Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIU2V73QKGQEZHJ2INI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 807201FFC6A
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 22:23:00 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id a19sf4830136pgl.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 13:23:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592511778; cv=pass;
        d=google.com; s=arc-20160816;
        b=A31+FBadMeEfM2xH+Np5Gn+FeAyi4l2RWkic0gFPxDa5Kma8QPxnAC6AXTljzleTZs
         nbA0ScWUG65B7pLe9jqapARctne9JZ6NzFf2lZBp/5Mwxhge2FnRZP7kHXaeTx8P8BXa
         1pNJtqIMBDwNOsFYIJlO8Z5Ll1bxUG38pJsWHZG2n+bKb2cDgFICP9t7r5JRlHUmUS0e
         zFuM3HE4UwQDMI6/fv9PpO8XwHxt69hxr/GwLXJZCpYdsNZL29dmsGBrPdM/d4+kG5Zz
         q+HJvEJ7c3ow7OnDN5G6SB4s6W1yiUT5znP7lVZjfuP6vD4SszhoeIPKbLvdkR0g3DaT
         oHaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VasH4tKl2GDaU7bc15H5Ha8bQTPRenM1cg3tZzpz/LQ=;
        b=d/GTTXualQbgcAD4Ls+/gn3jwW99z0wLeE/ilAIHxU3pBe415qhs+wcmEzDiO1XeaE
         MvdCswxUeQcbID+6+fL+lsk8idt6eMKoHh6Bc9Wqto0N2Mr2lhybqiRWE7yiscAUZo4C
         U5KFC4bYztzLJFVfjgqrlgzq1Pxzz1PX097cTbjTaRhJ6RJMNf2TSc6oU2Y+AKnH9SFa
         tlISe+WGePu/DVnawCGksOdJmglxWGJRRuvAS6pj3X5RM54BVDFrylfrSz9uJakZvcFO
         2DJMVxYHS1/JgUn+1Xy+Zj93CFXpjAhrbhjvgmKPmBlNPgxFkuM1/6Kg92ELpCdlmbHA
         62xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aTn9yjeK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VasH4tKl2GDaU7bc15H5Ha8bQTPRenM1cg3tZzpz/LQ=;
        b=P46LxKMVX7eUQiBQonuoJuHDN34AkU95I8BTD/76nx5HNtvWfnijAcJVPiIfRXvbzM
         ouCa+Gfj8YQY1G57LJII+rXn2NrOS3kUSmxZ9lUreiCuv1VJBeAjT0OBAhuM+LRHDKxe
         5dgoM6WbV+Zkmd1WsyfHzUva4N15cBDJFRjtwMe8ZUV2xi5MlJqj6rq7dfpslnDghflL
         p4COE9S6QnCAo2qh6qxYN7uHAofaVJMhsvV7e5iDV8WZQqEqdlcgAmvvs244FsUSsfB7
         JB21FttzLDb6q7HL168D9oDmtQ0Ogfp1RB3weenypM3nxaKZKFhl0uR5nqvZA4iLvLyv
         j81g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VasH4tKl2GDaU7bc15H5Ha8bQTPRenM1cg3tZzpz/LQ=;
        b=LmrfpfNJcIo40yAHRBc9w1nvf7Xiq1hCvDCc/fWMls2v81HkaSuyYoZCd2aIxqR3P0
         KEf6i64r32N6Q7MgBbu/4zExTa7ihT5N10miJzTowWW9Vrkty0u7fcZ38GkUT8xGDiyz
         NmZ8PlEwkqOjEV2i82qIAZ1A3ddquj+9/XX3JcU+X2f1D0ov7fbVqgVrw/yTbe0mEJwl
         eHz4PRFacdWA76rOcCk+NzXH0QTODPnm0d7g6EQMrSKvzKb4ztNXfIh4S30X4SMkGCWY
         P6YmTBq+IYFVK0l6u0IrgZRRhtDjlAcsuor6pGx6VUl4qdISZn6xC5XdbP3sSFb9FzNH
         EU5g==
X-Gm-Message-State: AOAM532Vw800QoVPsZlbAABFty0VnrTkSplvv670MnDH1qx3gPZEoJfF
	NHnPAt9+KFD2+gBLusHu4yw=
X-Google-Smtp-Source: ABdhPJyAd7VQuaeEid7m5SiCyB03sxQI5gubrF9yNaOkWdkpfmid7d6hN+sB1OV+JsmlKaTuMeiwkA==
X-Received: by 2002:a17:90a:9904:: with SMTP id b4mr53102pjp.207.1592511778629;
        Thu, 18 Jun 2020 13:22:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9a84:: with SMTP id w4ls2158466pfi.7.gmail; Thu, 18 Jun
 2020 13:22:58 -0700 (PDT)
X-Received: by 2002:a63:a558:: with SMTP id r24mr298576pgu.70.1592511778233;
        Thu, 18 Jun 2020 13:22:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592511778; cv=none;
        d=google.com; s=arc-20160816;
        b=njH/RxnLjP5EQrG8KtpzZDsPCm3jOHKmOggh1Xqdle1X7Is3V2YObeuMPjDaUIcA+r
         7FzAoKmUY5QOGh61qt0w3FppEi505X4mnIu6Pwf/mJ09S9faQSw0MFp/OYvLq7pKQrjn
         IpMPT9mzgArl4zIuzJFVdolUFAhcVQl39hVOaRTugnX9+gAnifUmtHt8wQOeZmMX9N+E
         oAM76Oo+M3XqowUgyi+vVntxg6tjyiJORKh3yWYgOEY0YX+xGuvYNxKTJljn4cYTpGer
         wbJxsCSDuPGePGOocilxE11tzIvDi131L9EnNJVaAboUeccSce72FmKJDwhvUaUqeFhU
         +HAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xnQxnEGFqJBRLt94YNylhgWnHetVl/qVFrV3Ml9hdCk=;
        b=VI3o1DofJa5wTkNdILIKuApKJJzJJgfXL7F+oxVUvrtA2MxSud2wutOkQQWndhZHkV
         O9+bW8sfuVsj2PJaOAQY79WrzBE5GCMRisfZvUVK9VyyhF7R1Ofo/HA7Ayu5zM6isI7a
         Cb/Bv4a6m2Ls+jAGhB98w/23rb+aO4Ia5MSMlKlVkKswfXObQTzEY4lWeKJJ516A4Wp9
         ryspUKcJ4RLVwjGM+FRY+Ik0qfx/C9gwy8b1zfNcHsOfS0fKllfQ1Es4ojrm2LZfpAZX
         L17Wi31SRvVE1HpyXyEyUri56cI5QeDfdAxg55IgUuU3np/HpGxpgVKCzxAzG1Wv85uv
         3naA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aTn9yjeK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id m204si216958pfd.1.2020.06.18.13.22.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jun 2020 13:22:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id i4so3229002pjd.0
        for <clang-built-linux@googlegroups.com>; Thu, 18 Jun 2020 13:22:58 -0700 (PDT)
X-Received: by 2002:a17:902:b698:: with SMTP id c24mr5053874pls.223.1592511777575;
 Thu, 18 Jun 2020 13:22:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200616223633.73971-1-nhuck@google.com>
In-Reply-To: <20200616223633.73971-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 18 Jun 2020 13:22:45 -0700
Message-ID: <CAKwvOdkibnsr+z8-pXG1RjOEcrGQ6HQ0=PM-B9p-i85_BKS0cQ@mail.gmail.com>
Subject: Re: [PATCH] Fix unwind_frame for clang-built kernels
To: Nathan Huckleberry <nhuck@google.com>, =?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>
Cc: Russell King <linux@armlinux.org.uk>, Vincent Whitchurch <vincent.whitchurch@axis.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Kristof Beyls <Kristof.Beyls@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aTn9yjeK;       spf=pass
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

On Tue, Jun 16, 2020 at 3:36 PM 'Nathan Huckleberry' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Since clang does not push pc and sp in function prologues, the current
> implementation of unwind_frame does not work. By using the previous
> frame's lr/fp instead of saved pc/sp we get valid unwinds on clang-built
> kernels.
>
> The bounds check on next frame pointer must be changed as well since
> there are 8 less bytes between frames.
>
> This fixes /proc/<pid>/stack.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/912
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>

Thanks for the patch, Nathan!  When I looked into this, I found the
latest ARM AAPCS [0] specifically says (with `it` referring to `a
platform`: "It may permit the frame pointer register to be used as a
general-purpose callee-saved register, but provide a platform-specific
mechanism for external agents to reliably locate the chain of frame
records."   While it's good that's acknowledged in the documentation,
the current wording is relaxed in order to not force current
implementations to converge.  This has the unfortunate side effect of
making finding the frame pointer toolchain dependendent, hence this
patch and your previous commit 6dc5fd93b2f1 ("ARM: 8900/1:
UNWINDER_FRAME_POINTER implementation for Clang").  Being more
specific in the documentation would force at least one implementation
to change, and I think that would also imply an ABI break.  So I can
see it both ways, though I still would prefer that the language pin
this down, even if we had to change LLVM.  Just providing additional
context for folks on the thread.

This should also have a reported by tag from Miles, in v2.

Reported-by: Miles Chen <Miles.Chen@mediatek.com>

Miles mentioned to me that he tested it, but maybe Miles can confirm
that publicly on-list via an explicit Tested-by: tag?

This would be useful for us to have in stable; otherwise we'll have to
carry out of tree in Android and CrOS, which I'd rather not do.  Via
Documentation/process/stable-kernel-rules.rst, if you add this tag to
V2, that will greatly simplify submitting this to stable:
Cc: stable@vger.kernel.org

Miles also showed me the behavior of this patch for different kernel
versions, which varies anywhere from empty or single entry traces to
panics, so this is pretty important that this works for Clang builds.

[0] https://static.docs.arm.com/ihi0042/i/aapcs32.pdf

> ---
>  arch/arm/kernel/stacktrace.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arch/arm/kernel/stacktrace.c b/arch/arm/kernel/stacktrace.c
> index cc726afea023..76ea4178a55c 100644
> --- a/arch/arm/kernel/stacktrace.c
> +++ b/arch/arm/kernel/stacktrace.c
> @@ -22,6 +22,19 @@
>   * A simple function epilogue looks like this:
>   *     ldm     sp, {fp, sp, pc}
>   *
> + * When compiled with clang, pc and sp are not pushed. A simple function
> + * prologue looks like this when built with clang:
> + *
> + *     stmdb   {..., fp, lr}
> + *     add     fp, sp, #x
> + *     sub     sp, sp, #y
> + *
> + * A simple function epilogue looks like this when built with clang:
> + *
> + *     sub     sp, fp, #x
> + *     ldm     {..., fp, pc}
> + *
> + *
>   * Note that with framepointer enabled, even the leaf functions have the same
>   * prologue and epilogue, therefore we can ignore the LR value in this case.
>   */
> @@ -34,6 +47,16 @@ int notrace unwind_frame(struct stackframe *frame)
>         low = frame->sp;
>         high = ALIGN(low, THREAD_SIZE);
>
> +#ifdef CONFIG_CC_IS_CLANG
> +       /* check current frame pointer is within bounds */
> +       if (fp < low + 4 || fp > high - 4)

The patch LGTM; maybe Russell or Catalin could triple check this
bounds check?  Assuming there's no issue, you can include on a v2 my
reviewed by:

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

I'd probably wait the remainder of a week before sending a v2 to
collect additional feedback.  Thank you again.

> +               return -EINVAL;
> +
> +       frame->sp = frame->fp;
> +       frame->fp = *(unsigned long *)(fp);
> +       frame->pc = frame->lr;
> +       frame->lr = *(unsigned long *)(fp + 4);
> +#else
>         /* check current frame pointer is within bounds */
>         if (fp < low + 12 || fp > high - 4)
>                 return -EINVAL;
> @@ -42,6 +65,7 @@ int notrace unwind_frame(struct stackframe *frame)
>         frame->fp = *(unsigned long *)(fp - 12);
>         frame->sp = *(unsigned long *)(fp - 8);
>         frame->pc = *(unsigned long *)(fp - 4);
> +#endif
>
>         return 0;
>  }
> --
> 2.27.0.290.gba653c62da-goog
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkibnsr%2Bz8-pXG1RjOEcrGQ6HQ0%3DPM-B9p-i85_BKS0cQ%40mail.gmail.com.
