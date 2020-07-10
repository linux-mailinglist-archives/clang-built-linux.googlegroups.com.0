Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUNWUL4AKGQEM6QXYLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C15921BB43
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 18:46:11 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id q5sf4137129ook.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 09:46:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594399569; cv=pass;
        d=google.com; s=arc-20160816;
        b=f+9wYgghbndyivWHqvD6X0YirMSiWgikMxi77ne8jC/sqGNcrc7JB5FrJtTa+NgPyX
         DOHLLTTsouxM6hwsrEWRdriqOJkPVu1NqvwE8DMRlcBFyBV6WCB3pvmya89Fk3+snidB
         iGiOVXKcr7LSuZgd1/vCnyvi7EEefX75a1eYCtrB1flbOuTKTjU9PtISWLG73M54IqTK
         u+1V3SCBdquV1RvFMzocWCT0j/AVBI8nXP/9JvCJFwxiiOouMGlDPmwfSfB7+aNsfaGt
         Xqd6Be5pllEFMgnDuH8lPBxjvvQo5D2IsqpBv1OhKlQLSjpzjQn1IX+Mio/IkN9jU8EO
         wdwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qVzIHXQItZgZgTg4o2wmljpAV9WdTUEHbE3Kd9aC1t0=;
        b=yTZ/Xv74p6W0O97WimWN93fecQuYrZisY7NfUh0BJsL56P4aDeOzB/vO12qMjjq25t
         O3wsghEtLq0L3PXwELjPVd4nqFyuX6EEDGAnXGtewW2AcuaTrIBfObpGPuIBV74+NXrO
         +TbkFUhYq2+lA3jikuQoFLTo8uDQpVqTLMt7rcjH7d/MuDW0fzOaG/EL4YNEiSuQgtqr
         o4Pqb4KcjIvg45xNyF4Wf/F6y8XzM6CjCOSl8DBNDr/4u3tfAaUI2HLTmchEvnUoJIIk
         EWn3/Q2pwMrcJouCp23hOfvtVLZ8mW2nF0Eg4KqWu/1sE31duxx/g51RTJEZHJ+4Jjgz
         bXzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m8jqouEa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qVzIHXQItZgZgTg4o2wmljpAV9WdTUEHbE3Kd9aC1t0=;
        b=ICWI/HMRM6sH1kAvsXB1hkfUjgwNJrKknJfjMAw1ELHcWhjwEQMGHI5TVSvemY9lP1
         pjVtoW+zMz9BY9Hk57KagOefBQ5Q8GBEoEU71JgQXCvXSUQdtlwDr07gKH92kBvHzDtv
         K6YRM3+I/zEjzAFujjIhMHdpb7wNCTXlOznRTeAmkjGHe4rLinX9wEF1FrUWNp1EkGQ2
         pcPpZwhv36ZuSDv94Su4s4YxaPNstDR2/+rN9ubla/xNE9zU/88NsK5Zvu7c/crRY/r2
         Y2+WfmCK/NwBBguyjSOV6ijvnlwKlVDBGhLv9plBRH8wZohUlPzGF2/q25CvI5lCOz2R
         Uviw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qVzIHXQItZgZgTg4o2wmljpAV9WdTUEHbE3Kd9aC1t0=;
        b=pL2sePcmvMRWxn1YcYWDOYio/gydbBHc1rFmRMQMlWryBMcmXadRD/yB+JmJKjEKyU
         +6NHlmQQUW9zpRszZMw1HvJuOtnf9gK42LMvD9I3x6S0VjKrQM8Lrsv6JAtoHsJ2Bwje
         8n/yEPzezJRssoT600G96zvwvxi+rALbB+1zwheKzWZjX0+tLZbNMaKsSwQUHxnkU+cW
         ngZ5WSdfFhSlTTCmbt/ItpUsix+bL0cI5cIVpxsemc8rQ5lA0w043p9SajgWuoZi9h4e
         0oQfV3a1D9OHcVm06nECqX+BUiUPkGRd7MVL5eUKb433uDVJfR7RVIDTyxV28GvRQKbQ
         6zBw==
X-Gm-Message-State: AOAM5311J6LAUetHUKQMzPdOjF3NNXlWi5lYUQ6DTvE8o8NPPbp0hKi8
	88jOpQk/KPVlCBM3PebrrsI=
X-Google-Smtp-Source: ABdhPJxsmsSUMkslgQURjokXSFu8PtqUJq5tM3hhtKEvm/h65ACDA28mfA0DLPIm4OyipPOYeWuaRA==
X-Received: by 2002:a05:6830:3149:: with SMTP id c9mr58183749ots.302.1594399569732;
        Fri, 10 Jul 2020 09:46:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4d14:: with SMTP id n20ls2100572otf.4.gmail; Fri, 10 Jul
 2020 09:46:09 -0700 (PDT)
X-Received: by 2002:a05:6830:1258:: with SMTP id s24mr55781692otp.293.1594399569376;
        Fri, 10 Jul 2020 09:46:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594399569; cv=none;
        d=google.com; s=arc-20160816;
        b=FXvDcLWZP8Ajn1Rif4RHoMed5JJY2xrfnTOZ2sp337k0pRx2OgtUU2yPuhvqOc/3ux
         FicAt08+3Pyuy30GTVx7I/PUZvGfWqWbSdov3EKh0JqsBb7AqMuHOhuNS5Bs75ZFwwFW
         zUDzglUv8578IaZK8r7k9qpDgMM9uY6ZIabCyF6dEIDe8KVovwQxux+5rnA5J57VhNzo
         asLv8/AmZ4SotAYjwEXioK1ssal8kU5bSVPF5Vv98Q9Iwi8oSPFAjCe8Ks92pSOT6eOa
         cqoW9pDcNn0k1izrZ290Ccnmej0kXYgfrspvZrpnvQtRh0r9qop/4LfDD/RQDrf33Svu
         XF8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BEJ4O5IRtxDaBgCbgZ/Q408W88KkDEGUZbbV6ihxQP4=;
        b=MbuqvEl14RZzWIyhR8YdcYhp9EllKc6JYzSpqCFGBO3zScvdMwX1oosFNF3XxB04ar
         cEt6Tum78MgPdSXeMAePDZQ6XLaqKZC06DPcj9zXiIZHgCxQVngUAG8ny8qbmXdLpBsC
         F5G0nx7Bo3NJaFNYBwKJs/oC45tU03mbxleDaRDHwcQm7IsIud+4KKa4wkLGVYF44r6E
         QqGpwxzqXSl9ylFrEu2MQ9T/kZAqyF0esClINjmnoO5qZxYAhCaxP7SksvnEswsAUGJn
         KqH4EeVPor8liCOWPZDdHY5AobzskiUGbpqpGTEaZHFDavaEqWgGq17tmdiceAVutWXc
         RkMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m8jqouEa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id h25si359890otk.4.2020.07.10.09.46.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2020 09:46:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id d194so2749403pga.13
        for <clang-built-linux@googlegroups.com>; Fri, 10 Jul 2020 09:46:09 -0700 (PDT)
X-Received: by 2002:a05:6a00:15ca:: with SMTP id o10mr64641771pfu.169.1594399568391;
 Fri, 10 Jul 2020 09:46:08 -0700 (PDT)
MIME-Version: 1.0
References: <1592531704.23014.1.camel@mtkswgap22> <20200706182713.3693762-1-nhuck@google.com>
In-Reply-To: <20200706182713.3693762-1-nhuck@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 10 Jul 2020 09:45:55 -0700
Message-ID: <CAKwvOdmAsNsAMxAQdKdNHujDFhM_STdHj7d+q+2W=Q0N_spNrQ@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: stacktrace: Fix unwind_frame for clang-built kernels
To: Nathan Huckleberry <nhuck@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Vincent Whitchurch <vincent.whitchurch@axis.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Miles Chen <miles.chen@mediatek.com>, 
	"# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m8jqouEa;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

Hi Nathan,
Would you please submit this to Russell's patch tracking system:
https://www.arm.linux.org.uk/developer/patches/
login -> add new patch.

On Mon, Jul 6, 2020 at 11:27 AM Nathan Huckleberry <nhuck@google.com> wrote:
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
> Reported-by: Miles Chen <miles.chen@mediatek.com>
> Tested-by: Miles Chen <miles.chen@mediatek.com>
> Cc: stable@vger.kernel.org
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>
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
> 2.27.0.212.ge8ba1cc988-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmAsNsAMxAQdKdNHujDFhM_STdHj7d%2Bq%2B2W%3DQ0N_spNrQ%40mail.gmail.com.
