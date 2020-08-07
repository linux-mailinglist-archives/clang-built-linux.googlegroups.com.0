Return-Path: <clang-built-linux+bncBD42Z3G42EFBBZVQW34QKGQETRUKPMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id AC2FD23F27C
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 Aug 2020 20:07:35 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id t6sf2056799pgv.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Aug 2020 11:07:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596823654; cv=pass;
        d=google.com; s=arc-20160816;
        b=JbqW7l4UjRutSl6K2exjmPLr8xvYMBuS9JqgjRXY8zh4xS3CkwiAPkaaNKM/Wae3ch
         H62Qg/iNQBK8wsoCWSOVj6yEHflA08mjoH829kZ6ZAjefOwpZmxPZXCbO5Ls+dgJrwn+
         yPRlunhtRMU8RI0UkNUADs9i5knMmM+EdN+qaQNqoWw4FVn0+ALNh9hOuS38zd5uG+h9
         6ZDg9c87l8iZg2Es0kgKggMmBc58yMIgbq4DQ/9rmDRLITc6x54DDqcqIRJ0YoE8xZEh
         UiukUSKsfz+yPtUtQIixg7OG9/tvsRdceCPR6T+ihJcJGQULBt2KtrgKB2JEvjPzWsva
         Zk8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=UvOVYQWUQLBxyXFgIMkOhpSX54r+I/2YmOlRAbH3gYM=;
        b=AmD3s7HGnX6KSy3vhvrKywjkgFwVGDHhWnzJ7hR/H0rtuxdwMWwJI2zP6WEJkW+Z5I
         JYaVaodft+aCIrTQXDHi4XylidsDbNaLUBNC9S+7uImenjXKah2O98L2zGEMhIOHUmHS
         x6B7qe912HlQfhNu5GVNv8a4/YUhR38hjzc/IAZtRx/6mgVN/WcPean9GNKfzKlV0UVl
         Ww1XtHmVU0NhUOY1eO/tdF3uhjuOBDxfr/w8H9dOtsaFsO++1dGweSAtL14/qaU0GmP8
         H0UALy/EFaYBkbuIXu9X+/zlZfhtiSplv4E9v4VS7Cz8mEtVqU1NlWOmzdkwG0aneVSq
         gWdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h+X+IDG5;
       spf=pass (google.com: domain of nhuck15@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=nhuck15@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UvOVYQWUQLBxyXFgIMkOhpSX54r+I/2YmOlRAbH3gYM=;
        b=heRhMIxev7L58Rd741h5T+isTZy36tsaF1HRtV7TuD+Q2Ph+WPIVceqUlQIyehXZV8
         YDIb1Jw8HQebiS6EaivVzTFhduOdA8MMHfsgv3tAzLXSW2oMnv+BExLPDkrFRN31BR1P
         smPELOP9JC/fts2sxLIKNPPrZ/BA0Y6uEiPz9q0dLnxJiTHrxxCDYeXKAC8mlTdVmFsi
         3RGXJZ3BXAEnG7gYQsQU1ieBn/ajMY+1xODe2gNcpWMprHkkCSaMNkK0JaBgty3gSGiV
         P5BiXel3WUmn3f+tBZqxpaSj3lfXEl2+UEtD8qKckJYag3UDIRALUtEIV6bcmOCS8TwH
         ulLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UvOVYQWUQLBxyXFgIMkOhpSX54r+I/2YmOlRAbH3gYM=;
        b=gHVebjnMLVMpAguKT0yBeip9IP/PZU1Vs46h8pKR9L+wxRf33O74qFArTAXM9v3r1o
         0Pa9Spj/KNz2Po3DaYaLp8CZ+Kd+ovhzKQWw1gPfyOy9SiSatoksOsl6TX+qBw6VSb3x
         jTHHjYI0GARecQEbpvTVcj7k0HeS82NrZKOR5374GG2SOG/O4q27+dDB3CpdlGnFdTJh
         POD3W9+aD3kw9JyRjYY301MBktIedxsVd9S8CHArpwfC+WB+GfdyldfxJXlogSee+W2l
         NuNNjLLpy9PZYuFA5YtbS22Xa2WoO5EBzUKzvhJ4UWB06OQKycOMHBqAQHsQ+pHm9wri
         jtjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UvOVYQWUQLBxyXFgIMkOhpSX54r+I/2YmOlRAbH3gYM=;
        b=bflZY6e/kAqSLtp7rny2laAng/8RvppAEeTUsMbP0WA+O60Pky/9L8JEzj6UhhYSKO
         45Hnm11UsTNvV2LEyoFHXkEP0KlyUUk9qtIBv5GId6NKmE5yTGfzjuaOiuC9TFt8ZWdj
         ru8nn5mZ7gDqPAveeACSgZcW/EprQBqQhEcvfH7WfsvwYn/tAnDpDmr3myI3MleG/0eT
         EngNWUnwkWRxIRvzBKFQDc0/OUNEf3MC4kekmSv4dhO6Bit9WC2ald4DNEn7j7Ra5857
         nPgM2EyhmK1NCyVZM/8i5iek9rIT1FQGWzALG291wToaPZI3ASvKyPRDTNCxI5PxRnqn
         dilg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+e1aaIXwuTGSINkjJrJmDDKD/ZqBGbZ3SpzYmcT/mVPZR7F/c
	CxOhnPJx3U+hOyT09WD7EXs=
X-Google-Smtp-Source: ABdhPJxGD+LxImC4+kfVwYNvPVZCpaIpGenSIqteK3eFjCg3m0QbCrWdwdkSk2vvv9MRNpCxpsGNbQ==
X-Received: by 2002:a17:902:780f:: with SMTP id p15mr14202605pll.56.1596823654196;
        Fri, 07 Aug 2020 11:07:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:1988:: with SMTP id mv8ls4097106pjb.0.gmail; Fri, 07
 Aug 2020 11:07:33 -0700 (PDT)
X-Received: by 2002:a17:902:a508:: with SMTP id s8mr7719539plq.152.1596823653784;
        Fri, 07 Aug 2020 11:07:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596823653; cv=none;
        d=google.com; s=arc-20160816;
        b=JOtqUvs5wcId1+iUjM+rnJnm+STTFHXTvGW75hFerMQsi4loj+mQPX5+Xisg0SUBba
         kZonebO/oT0mQm8oAZgxV9m+mujutgDWRyuCzDG3LsZK0pfr68Y6HJ4N1tvcday9RuMi
         PD2mxyxjwFBtSoIC31afUzyfoNIvbXLASxQQaCw/w0wT1pOaqdaLtsQafUrJkmTQLj9U
         mwYY3JWRsCBBltS9OwCNemN3ocVRMoT5z7S1VfaPmzYiXNnFuRib6sY0EkQHA9feZjfD
         xVf8zviWqn0V5MiS5xP0QT4oRKqsZVxhykkDeCsJJyW78srYUP7ZjcXkaQtzTt7Iqoas
         g0pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7F5o5gH/tEwEajzpI7fTjneSGKfDGJAlpNidTq6oDnU=;
        b=gl8tp3oH4dEUDb387Xh16nprnz4pO37YPz86LO0XAoDMwyuzA+EZPnUC44rFcLRatQ
         qFxHxrpbl1NmGnKCJmueVX+ZNVMdDMUIkNy/laYWgoDcjtrT/yVIZHlaurfqyixFJEst
         H+BSxv9+2pwENJ672RZqTXhL/0hOsKVWh7IRngCVDaXHvfWxPUSx/KuVdVV1dEX2QMvX
         IrWvlJPbK/1nnkyKuJPslh/iZzx1uJuAbigvsRiRIP8dH5hT6uDYVMeFsTSTkiROvOxW
         fZmNOWD/1qJIR6/aakM+kTHVFS0CvvI8T4QuCvPrnQ12S3e+wk7t6z/UQi2DTESKHzp9
         7TvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=h+X+IDG5;
       spf=pass (google.com: domain of nhuck15@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=nhuck15@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id 90si218128plb.3.2020.08.07.11.07.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Aug 2020 11:07:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck15@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id l84so2678026oig.10
        for <clang-built-linux@googlegroups.com>; Fri, 07 Aug 2020 11:07:33 -0700 (PDT)
X-Received: by 2002:aca:2306:: with SMTP id e6mr12413148oie.108.1596823653421;
 Fri, 07 Aug 2020 11:07:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200730205112.2099429-1-ndesaulniers@google.com> <20200730205112.2099429-2-ndesaulniers@google.com>
In-Reply-To: <20200730205112.2099429-2-ndesaulniers@google.com>
From: Nathan Huckleberry <nhuck15@gmail.com>
Date: Fri, 7 Aug 2020 13:07:21 -0500
Message-ID: <CAN=-RxtoXCG5h2qirsrLG2P37pjjMEHgfAv-7+NSVUy9_LPaYQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] ARM: backtrace-clang: check for NULL lr
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Russell King <linux@armlinux.org.uk>, Andrew Morton <akpm@linux-foundation.org>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, clang-built-linux@googlegroups.com, 
	Dmitry Safonov <0x7f454c46@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	Lvqiang Huang <lvqiang.huang@unisoc.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	Miles Chen <miles.chen@mediatek.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: NHuck15@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=h+X+IDG5;       spf=pass
 (google.com: domain of nhuck15@gmail.com designates 2607:f8b0:4864:20::243 as
 permitted sender) smtp.mailfrom=nhuck15@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jul 30, 2020 at 3:51 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> If the link register was zeroed out, do not attempt to use it for
> address calculations for which there are currently no fixup handlers,
> which can lead to a panic during unwind. Since panicking triggers
> another unwind, this can lead to an infinite loop.  If this occurs
> during start_kernel(), this can prevent a kernel from booting.
>
> commit 59b6359dd92d ("ARM: 8702/1: head-common.S: Clear lr before jumping to start_kernel()")
> intentionally zeros out the link register in __mmap_switched which tail
> calls into start kernel. Test for this condition so that we can stop
> unwinding when initiated within start_kernel() correctly.
>
> Cc: stable@vger.kernel.org
> Fixes: commit 6dc5fd93b2f1 ("ARM: 8900/1: UNWINDER_FRAME_POINTER implementation for Clang")
> Reported-by: Miles Chen <miles.chen@mediatek.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/arm/lib/backtrace-clang.S | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
> index 6174c45f53a5..5388ac664c12 100644
> --- a/arch/arm/lib/backtrace-clang.S
> +++ b/arch/arm/lib/backtrace-clang.S
> @@ -144,6 +144,8 @@ for_each_frame:     tst     frame, mask             @ Check for address exceptions
>   */
>  1003:          ldr     sv_lr, [sv_fp, #4]      @ get saved lr from next frame
>
> +               tst     sv_lr, #0               @ If there's no previous lr,
> +               beq     finished_setup          @ we're done.
>                 ldr     r0, [sv_lr, #-4]        @ get call instruction
>                 ldr     r3, .Lopcode+4
>                 and     r2, r3, r0              @ is this a bl call
> --
> 2.28.0.163.g6104cc2f0b6-goog
>

Reviewed-by: Nathan Huckleberry <nhuck15@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAN%3D-RxtoXCG5h2qirsrLG2P37pjjMEHgfAv-7%2BNSVUy9_LPaYQ%40mail.gmail.com.
