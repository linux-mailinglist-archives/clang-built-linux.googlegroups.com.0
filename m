Return-Path: <clang-built-linux+bncBCU73AEHRQBBBQMY6SEAMGQE6BP6SPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 68ECC3F04D5
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 15:33:55 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id w9-20020a4aca09000000b0028b7adc5bd2sf960698ooq.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 06:33:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629293634; cv=pass;
        d=google.com; s=arc-20160816;
        b=hzlS/JhmD03RhvwzEzE/1wo55hg/X+I9FEZtyVQBvMnTbGrSiFCSgrFBLB8ULu5xPs
         Z4h/8sdqb/F0nkNyttMe32tGVhVfVMQsE8QxxdMti4jMH2i9Czm+x2jv1SitC07dYPSJ
         /mSX5IlmOAj/l4dx1WQD8ZfBUWVMfy4mYqU2HvYQjyqBEQsdFTAwhCqGaj/ALDCt2efB
         eGDrVzLvjxsJaZWQqIGqli7xKJRnfa91rA7sB0Yy9Mj/9PrZs9KCf7y/rSvQvJ1FOJ9b
         tloNof1PwNRx7ipCmr/rXaJ7IwD/I0xrT3lLvgmkR2wTNUzkxHaygdmvt6Xv9BvvIRF+
         zNPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=/jJtTa/7yeNN4aSKdU0STFAX42z3vSCAqjR2pSGSrHE=;
        b=Rm1N8qn8SlxmwCExQWEZ3xXRvOHA/pefZCiMo79A/1AiEjPXRBK5Z9UhPJmq/mM7fK
         1kp01gbPPIV1pcbu11hflJ64KYbNvUgGZ3kEcdTC/ENohyJjWlrGRUgjzEu+2RZ8PDsK
         u4lw6XrZtGqzCq81ItaUFX8RPFluHIxhgmr57Jx1Hon04f4WmmIiz0n+ba49jZXwoVoR
         AYSLzPbg2PgRf0bJTZUQQOojOSeNFf0Zs7YPVAqd3zuOwzRFMzgzD54BaFmRaDMPL+RT
         4c+Psfh07ORqkfM+sSYdML/IAzSuOUHCERL8vxKn6dHk2NE0eGLnvx8i+zmqDAH9jag3
         fiZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=g1lq=nj=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=G1lq=NJ=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/jJtTa/7yeNN4aSKdU0STFAX42z3vSCAqjR2pSGSrHE=;
        b=RSebkK96DJkKgRzgpNl53376RU6MozoUX9P7+AC52xGZMYiuMOa0PIFyetD86YpKLB
         FHf5F6j3MW0miKfX/PnV7uK1VpL2ARE+ruZLqYgOmi8f/lY4tyZszXbFqwzL7eSohKWC
         RLqM8b+gYn0YLFoc9RBo5IOe+Wb4Lm4OQ/BEA/UXk9UXgowcaeX4jWnIiExv0pUkYOSm
         uElHuz6b5vdIaTEukQv/mkq1B8Q46vrLRw36wUdQfisSypitMznVmLUokRenYQ8o0TVn
         pO5TbGWMWN3Cxz+QN6/SgisgVB0JynaRaFAdbhH0bg8IWLQ72q7qpX02C/x0h3+Q1USo
         u3rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/jJtTa/7yeNN4aSKdU0STFAX42z3vSCAqjR2pSGSrHE=;
        b=UtrxBsHbAQY/ssmj5FmSanQbWQbOKoxN33UwzddpYWc1djtCzQrYGfuF5cKPyPYnL4
         RGPFUnQGtxiEiaFwSD9Nz+cPAZfEgVKRHjvgnginR0eu1QkmhB2wLTE2jVHlESJSxkaT
         6NX/Bt5luHzUuYsX0nAlaBvauCBRAMubpqwBFgHqAgqVyWTRm9k46ODxg4zJayQQ9VZK
         JUN/yst/b1LL/J0qgbk1yBm2kUKpe1Yxog2GftdkOeMrOojD/y6z5wmtlLQnd8sK+gCY
         /3oTdTP7NWV04EL3R7Noi5+y0+sW3zEUzKfWAo5tO2BhQWImbtpqGwD0wTx+/ni5hSKH
         Z/cA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LGW7ePldVNk/ZzkpkDR8VYvAZ5wXyUpFZgFafAqv0p+ixGL/2
	eSuE8IjvOh2rfPu2TE76EMo=
X-Google-Smtp-Source: ABdhPJxGpZ7rGRd3QkJa5F3/pjfe8I61dVI4bpfc5HdSbRKD+Lrr9dDgOyEb9Jlpi6u6pzmtIWtbAw==
X-Received: by 2002:a9d:560a:: with SMTP id e10mr7110637oti.219.1629293634011;
        Wed, 18 Aug 2021 06:33:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:34a3:: with SMTP id c35ls562626otu.6.gmail; Wed, 18
 Aug 2021 06:33:53 -0700 (PDT)
X-Received: by 2002:a05:6830:4018:: with SMTP id h24mr6926943ots.161.1629293633563;
        Wed, 18 Aug 2021 06:33:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629293633; cv=none;
        d=google.com; s=arc-20160816;
        b=qJ5niNdvUM8iUMqcXwL3Pb+EYEZdd7dJRFkLrI6l5yf5rVqI7tkMj/tDsViQSsOyiZ
         GYziEhuYW/0fpCax6CTDZ32dVzgAxXICVCjtxJx2lpxbfuVJy7Yli3+YmW8iWGu6xrv9
         5ZS8VPE3onfsv9/nl7QGWqcin77NoTAC5NkUTzEYYP1aZFDKsRLULNWumIHUwQt7BSSc
         Ji97RaGqtkhTA6M9qvha7Kd2pBmnFd1CpaZ9k77eqh3EUiUCOtAUaIuWsNMg6yOPMQam
         tHm61bwTCBa4xOksr1c94SkT8n5gEfuQZMQBRxtQgvuKEdr7+RMpsXo4UBBSJxsA7NbC
         +rWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=lgY0TKnmfaLhz9aX63RxMcyCOZPWmBt2lGc3a0DlWhA=;
        b=kJrC4O5sc/1fnz1IlxUQ5NfqrKQZvcmUhCsbz9uiRTh33bV8aF+uIzHDyWKTg7+C6c
         KyG8782Wk3QIdFwpZePZwl7vhs1OEmqu7djdX2IM6OcMbCGkKcDQcMqy6QXH+aZG8tx9
         01V51Dr/Sr7B3/eVLenhK6K0r1nOnFnjPpUh045gQAnAonR5rSM7eHDYDp2Nxb3lMGTl
         1AF5bwkd/tUh1otpi/i0F2KGSO0ltv1QX1OeX+1yhtr1vhtbXZjegDx2FEZYjfk75JqM
         g543GWp1Db7I5ua4lfg+jxkT9t5NZB+51gBr2tc1QcDYrS/MzeXAs3uxRXOa++0m9NTO
         5Y7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=g1lq=nj=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=G1lq=NJ=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o7si345502oik.2.2021.08.18.06.33.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 06:33:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=g1lq=nj=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5C0CE6109E;
	Wed, 18 Aug 2021 13:33:51 +0000 (UTC)
Date: Wed, 18 Aug 2021 09:33:49 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>, "Gustavo
 A. R. Silva" <gustavoars@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com, Rasmus Villemoes
 <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 50/63] tracing: Use memset_startat() to zero struct
 trace_iterator
Message-ID: <20210818093349.3144276b@oasis.local.home>
In-Reply-To: <20210818060533.3569517-51-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
	<20210818060533.3569517-51-keescook@chromium.org>
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=g1lq=nj=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=G1lq=NJ=goodmis.org=rostedt@kernel.org"
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

On Tue, 17 Aug 2021 23:05:20 -0700
Kees Cook <keescook@chromium.org> wrote:

> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
> 
> Use memset_startat() to avoid confusing memset() about writing beyond
> the target struct member.
> 
> Cc: Steven Rostedt <rostedt@goodmis.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  kernel/trace/trace.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
> index 13587e771567..9ff8c31975cd 100644
> --- a/kernel/trace/trace.c
> +++ b/kernel/trace/trace.c
> @@ -6691,9 +6691,7 @@ tracing_read_pipe(struct file *filp, char __user *ubuf,
>  		cnt = PAGE_SIZE - 1;
>  
>  	/* reset all but tr, trace, and overruns */
> -	memset(&iter->seq, 0,
> -	       sizeof(struct trace_iterator) -
> -	       offsetof(struct trace_iterator, seq));
> +	memset_startat(iter, 0, seq);

I can't find memset_startat() in mainline nor linux-next. I don't see it
in this thread either, but since this has 63 patches, I could have
easily missed it.

This change really should belong to a patch set that just introduces
memset_startat() (and perhaps memset_after()) and then updates all the
places that should use it. That way I can give it a proper review. In
other words, you should break this patch set up into smaller, more
digestible portions for the reviewers.

Thanks,

-- Steve



>  	cpumask_clear(iter->started);
>  	trace_seq_init(&iter->seq);
>  	iter->pos = -1;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818093349.3144276b%40oasis.local.home.
