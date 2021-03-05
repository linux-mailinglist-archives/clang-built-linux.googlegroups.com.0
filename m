Return-Path: <clang-built-linux+bncBC52JWED6IIBBP4HQ2BAMGQED7U36TY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EAC32DEC3
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Mar 2021 02:05:05 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id x197sf184240pfc.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 17:05:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614906304; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fnvhs82f89djd5ltAolY7DNX7FLulYUtvh21dd/htocbsOxAVikORPcQJEvWpOlr1E
         za/FO3OrmijXEyEJFQ4pfJJ2/ShCPKI0aQudeffdxapG2f8+8i9+6YQ9r2XSoQbCVX2/
         H7PGz6tSBELm/gmAYnB8x/R0zsI0/VEcm1/raDQv36qxtZlPbV3kGGpT0JRslMlQ1Krx
         mZPZRt5gIZDR7Tj0xVSy0jIceDDw+7ROGTv1jN0jRZgNffHnI8NdpIpRK1Yk280EqVQt
         Vlwt1OA2+vrxEmvm/3NKLxlB1doGGQAsUgGrDRQ9fP9ff+IG3/UEkHZF40fQoaIX/96b
         oY4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=M8EoTtCb2HWdU3YldTK4sUWj5uWEX7mrkepardjJfG0=;
        b=Q2Gv+nRhcL8j8QiS6D4OX+TYDEbfX7GRf2KDHZGMt6Q9mINMNP5wtDbd8CHKeYiBt8
         cEZ/JOsJqmlGty2xFz+trXkFsz6ZdhlzUGislzmW5T4D/Vmvq1e08Lmbpli7bCQK5yKz
         POd/pVCYbIYc4yRVqJ9liseFw8mS5YdJkd0Ts9cLmcW1OR/vOPv6fQVB2XO5E8fWRlM7
         G1IleD3E+Qd5JZuE0omMTWZX+KR71OmRYqvOCrhyE9DQh+w24uzmddCdA4aMFXwCkSEX
         Ob0CmyYBFoyV0Wd3M9YIEdXwgwBsoN3z2OkcECgWdR3agYThoBC+riC+F6FEqZ1C3cnG
         zDZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TsQNIxhv;
       spf=pass (google.com: domain of joshdon@google.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=joshdon@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M8EoTtCb2HWdU3YldTK4sUWj5uWEX7mrkepardjJfG0=;
        b=TdU/ticZWn5M1AGRGJEkIn5fZ0QpRExDn3xSFggdSCAxzgFz0R9JdjnJFcKJyW8UGg
         O9hOALn1bLsC0VjAIu/RbQRRcUhNGt3F6heIQLjb5/ZOFlJyU0JMTWHBI5h0XLjrlIhw
         rxHuMk7zFMzCqrescZvoWDGzbgcjmsStTfoeUWc7kY7qZ/BD4Z4b2bf9Y9v2ip6QbdiB
         pteH3TV1B7fNsgFZDoy7pOUEPB5kOggg0s38EkE+i0LEFfFea9KBzZQFursLksG/KprH
         kD0G0BnODiIf4TG6lgL8XfhHr1DUOTFJ2Gvajm1W2cHOPR38aXb/V/hPZWX4ae/rX2we
         lyNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M8EoTtCb2HWdU3YldTK4sUWj5uWEX7mrkepardjJfG0=;
        b=sHCQNxeRPCBPpXQTSSmZsjzwoStJbuADnePcF/ULlax5Edc5es91LbIee+ztsM5nZ1
         ynliH0gGGLg1/ll0L4JRuR+Snk4LnITo48sjDnvdE9+cdqnBRa+vau8PrlPslLUVHr95
         ooj+MZFQ7DXzwNLHe/V5gfhCKer5VExJHt+7UkqJ4wAikG++84HRg+pDtvvVHwyowr8Y
         YhILXVSOO/juvzcjS0VCmU6wLxIOdEUeq0FL8MITl8Qb6VAjSW2z9p59XuHIHf4h+jVX
         186l4U8WcN8VL7+1+8xab7sFqDWVGFmdHGHYhsCJVKO3LGLl/BemiSK+4QLe7YB3W8En
         RfLQ==
X-Gm-Message-State: AOAM533c2+ImFw5xh426hkT6rJQgOMWgDesuqGWrXBt44vklL+ueER7o
	jAZCwoG46iNtvum0wUU3UOY=
X-Google-Smtp-Source: ABdhPJy5ID/vA0WVnrMkrAY/ZmCECMK6SL7RyM04btXe53bnq+yMJTOPUrN3RKMVH6MYp5HQIIfcmg==
X-Received: by 2002:a17:902:b402:b029:e3:e880:9748 with SMTP id x2-20020a170902b402b02900e3e8809748mr6588824plr.72.1614906304060;
        Thu, 04 Mar 2021 17:05:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6256:: with SMTP id q22ls3055357pgv.2.gmail; Thu, 04 Mar
 2021 17:05:03 -0800 (PST)
X-Received: by 2002:a63:1c13:: with SMTP id c19mr5688262pgc.359.1614906303478;
        Thu, 04 Mar 2021 17:05:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614906303; cv=none;
        d=google.com; s=arc-20160816;
        b=INb3bHDFxAIZYXAzYyMwZVq8tQqhFzUC/Hstt42F1bSyhwuXs02Z37SMO0OdpnV+QV
         fR7aZ8ZwzzBfWrru4dLQE6Fz1H2J3IN1Qwp1GOBGf0KQEHv+1sHJmC6KCDCN/K6mnn32
         tjooaEZMGw6I4TaK6W1meKOPjQoK+XjP4T/H8UMCOGfpEQO+swnwGOtQCyEhB6gILrFL
         JsrmwlNaBUcZie+HiR8zynBeGNEiZjtuvUTGe3E3VIz+Cw0eRFLEPIh8VOygKS9NDeic
         o2OtMViwe5lEFmmgP+AnA2JyhplzvFgo2B/867hvDyI4YFh5UGxfyP0RZx7motq5yU4U
         7r1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HUEdpwjc2Su9tpo1aoC+ANv42PZu8fYCrhiuo8S1xNA=;
        b=N96bJMnT7kuAdl6ST9p2eu0o0Oprvh76YwixVuHu7OlSYWZThsCM12rRbzo6/5kSmS
         wXWKfpvOKgo/KF4/tD6qILu2eqtbfTBypubcIsM9TICRqbBGhxUduNJpLCWjiVXVd9Ip
         ny4cDiwQfTAwCHP32QLYqlJpLkEw9EXDBqVXsiow5uKH4vdnSkaKImXFgg/kH029xMP3
         EpQDBIcjwZzHymDxOimkJWmEBClXVGdDHxIp41PcvCL0Kz4XOxn2/tec0TMTEWNnkeVU
         6xIGWVS9UoPSJDsjqvjxVoi0L/10j0w4zWdg10wWYb0RepJ/HIFBNBGgPR7ozFMZ1r/6
         DAww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TsQNIxhv;
       spf=pass (google.com: domain of joshdon@google.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=joshdon@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com. [2607:f8b0:4864:20::734])
        by gmr-mx.google.com with ESMTPS id e4si116015pge.1.2021.03.04.17.05.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 17:05:03 -0800 (PST)
Received-SPF: pass (google.com: domain of joshdon@google.com designates 2607:f8b0:4864:20::734 as permitted sender) client-ip=2607:f8b0:4864:20::734;
Received: by mail-qk1-x734.google.com with SMTP id z190so413499qka.9
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 17:05:03 -0800 (PST)
X-Received: by 2002:a37:a647:: with SMTP id p68mr6919823qke.189.1614906302400;
 Thu, 04 Mar 2021 17:05:02 -0800 (PST)
MIME-Version: 1.0
References: <YD9dUkGhlRT8vvcy@hirez.programming.kicks-ass.net>
 <20210303224653.2579656-1-joshdon@google.com> <CAKwvOdmijctJfM3gNfwEVjaQyp3LZkhnAwgsT7EBhsSBJyfLAA@mail.gmail.com>
In-Reply-To: <CAKwvOdmijctJfM3gNfwEVjaQyp3LZkhnAwgsT7EBhsSBJyfLAA@mail.gmail.com>
From: "'Josh Don' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Mar 2021 17:04:51 -0800
Message-ID: <CABk29Ns5qu-wm=BqpRa75kvCUeMUF0ozrQr2tbcy2WuSR013JA@mail.gmail.com>
Subject: Re: [PATCH v2] sched: Optimize __calc_delta.
To: Nick Desaulniers <ndesaulniers@google.com>, Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>, Juri Lelli <juri.lelli@redhat.com>, 
	Vincent Guittot <vincent.guittot@linaro.org>, Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>, 
	Daniel Bristot de Oliveira <bristot@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Clement Courbet <courbet@google.com>, 
	Oleg Rombakh <olegrom@google.com>, Bill Wendling <morbo@google.com>, sedat.dilek@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: joshdon@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TsQNIxhv;       spf=pass
 (google.com: domain of joshdon@google.com designates 2607:f8b0:4864:20::734
 as permitted sender) smtp.mailfrom=joshdon@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Josh Don <joshdon@google.com>
Reply-To: Josh Don <joshdon@google.com>
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

On Thu, Mar 4, 2021 at 9:34 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
>
> Hi Josh, Thanks for helping get this patch across the finish line.
> Would you mind updating the commit message to point to
> https://bugs.llvm.org/show_bug.cgi?id=20197?

Sure thing, just saw that it got marked as a dup.

Peter, since you've already pulled the patch, can you modify the
commit message directly? Nick also recommended dropping the
punctuation in the commit oneline.

> >  #include <linux/binfmts.h>
> > +#include <linux/bitops.h>
>
> This hunk of the patch is curious.  I assume that bitops.h is needed
> for fls(); if so, why not #include it in kernel/sched/fair.c?
> Otherwise this potentially hurts compile time for all TUs that include
> kernel/sched/sched.h.

bitops.h is already included in sched.h via another include, so this
was just meant to make it more explicit. Motivation for putting it
here vs. fair.c was 325ea10c080940.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABk29Ns5qu-wm%3DBqpRa75kvCUeMUF0ozrQr2tbcy2WuSR013JA%40mail.gmail.com.
