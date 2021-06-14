Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB3MGT6DAMGQE35HZ5TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C6B3A70EB
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 23:00:29 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id u26-20020a05640207dab02903935beb5c71sf15126124edy.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 14:00:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623704429; cv=pass;
        d=google.com; s=arc-20160816;
        b=znm7+QllecO8HpSJWn/JxjKqtd7mkplLW+3+NovGSABWM+1RD3Mm1IAnBsEYEUn6Qx
         2/t+DFvz7XNVixQvAWOw08XmZ4SyMTWCtnkXfKEUDwyQjynpqD54FYjwiZFX4Cwa23qT
         XjNLjCyV7zwNh9Nl0DpSldAsUPKqzKOd5f+onDHPGIUQRPXiPziRgmuSoDixD4o4onVJ
         2N4KjZ8OjotspjREqN1eFOqMQEycipegatGPpJSvz3+VaU8u6ALjtzxp8/4+0r+Qirx6
         WBozX/fFHEri5tVF1eEsLsevqUKjh0xMJvG0+3V2H+lwiVp90O2SmLCUlhqZZBrM+5PD
         znpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tavgviwuup3vvsJh5PZPwFo/4NPnxxX9IO1+HMvLujE=;
        b=wBIQNQ50BGC2RRXtKaD2yaGAyiKERdhDoI690HPjoZwzIFB9op+dVLO/ydY0DhHJEo
         TtGECi/7x6awUp6/Iw+5y6dlrEPCwv1S1nOCtA8ZCZNfOVIuXPgss2iGGWWl0du3K9l6
         GnaWJgONTuztea5s8slYjtZFRnZwD07xFq3YVGX5lcD/IXQR4oSfyKapMh+CV/4y6buL
         ZpQjfkq9uIEsNiy+eIe129bhoA6xYYztcvkP5LFCYvuMxwUxcy63tY2XILiGqBIW9FVe
         ipdu2DszNKwCZ1nC3BstW7xlaO7vv9DkYUyjxsdH6bqqroymSw8vgA6TExzTY4K4HOAE
         t+Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ipRLaGtb;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tavgviwuup3vvsJh5PZPwFo/4NPnxxX9IO1+HMvLujE=;
        b=n6j/jFcYhAzDGgMw69ClNoAk7LRuVIXSJWlFy5j3eW4xcezjtwvTvYSQ8BSmyZV68V
         /EqBqRjTbRU/AvYLFbRk4wWFVcku4i02WxwcYgjI8rn1Uo7twf8syLE9uy63pEub0LTr
         engIWVP19uO6mu02yLdR0yj9Ac9P0P8c7dS3kMY75Nn4mC54tJIZtp7Ay4/lkV1OuGBu
         CEU2gygRVaFzzWGsRgXr5DRrmVJA5hdYkTjeRbb9wQr46wveFPsEiFpz/3iuvOUlG+oe
         +QIMde63lb5Ix3LjtrMVcAS7m/OwKVvoJUtOcKNgEwP2Q0tr8AXPDo29AG4pr/wrh9EQ
         GIsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tavgviwuup3vvsJh5PZPwFo/4NPnxxX9IO1+HMvLujE=;
        b=LBobPabqG/lXxaw/ALjI2UX0TLX6GsOVWs/BLt9v4U7xiYVvoyfOqyKnwrsLamXk0b
         fJUCke6VzjzQwJB7fzxEprHxryyWwzl3hc4EejO0bCRsLF8CRBWXRT+Siehc8IkcBKZs
         iLGRuCUz6nRSB641XYL0nmt8fxTNBRWn7swznJN3zUbBN8uPl8TE+m39bYxAoowRCyEB
         u7ufbqxn0C2u6SZRNkKxi54lTg1r4rYW3+m5A4lET3kMeKt/c4KJvYqsXKfsGkwSNZJP
         UFg0XTxXGeOntE+n9CyX8CUdQSXsKh0yBfmswfQIb/bGZ2N3TbKhMSjv69Xsbxoc+aEz
         cxaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UQ0Xb3eFR6z+BnEuIz452p+t+EI6ajW7/jJfUM0VO6cZfd6Qe
	HTaw2VoolulVZ49C3l8VREU=
X-Google-Smtp-Source: ABdhPJzbEE+d5J+J0000i8N3oX65jZudVB0LUeDgqkrsfGanHOrYvra9MjmSv4JwkI+cpEq8pqYASQ==
X-Received: by 2002:a17:906:a890:: with SMTP id ha16mr16640421ejb.159.1623704429276;
        Mon, 14 Jun 2021 14:00:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fa91:: with SMTP id w17ls7875191edr.2.gmail; Mon, 14 Jun
 2021 14:00:28 -0700 (PDT)
X-Received: by 2002:a05:6402:220d:: with SMTP id cq13mr11013581edb.52.1623704428388;
        Mon, 14 Jun 2021 14:00:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623704428; cv=none;
        d=google.com; s=arc-20160816;
        b=lBchVYzqfD7ivj+CwiImfok3yUbssrdCZrYz/1Mmz+0l4HykB+Hvf70kjHKRRaF0b4
         z6uqAsTXwc47FwO1bhCA0VaLoy+RPWkgZ4jDXjtWicUBrL9/gW8erRzVey9h1kfN/knU
         +nqWOg16ZIpECZGGAbWpXWMO+6EinTo4qTvOPGKJ/2LHrYW+vSZV7QfwxH4aVX3YnGKn
         sX7kEbscOBxF3EeYwElev2Kchp3ttmnZ9wnT1oDny0a/4S+CScXsC9tykJ+7UN/esfpU
         nuSbBRHcjdbBdc+iXWv0GNf6vo5j+XySSJc8agJKGHk5e7pInVpqhmuUJAnYCCDQXZyg
         NMWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=svCT7U53fpYr0WnK7+YWqnl0DfUqPhRgPshxAaK37js=;
        b=L6mI9bw4JuCBBNWLNXcsTOTwv67eO3aUXwx/7IPSTmBkt6gAPBhNxX3ZOwDpDu+sjg
         jULJ27NwCO7XgoCn/4w112MoftH9n8fsZSMBi8XS4BzOc89NsjbLJYWGAYNDaWHHBCFx
         ho3gKsXmA+dh6472MWUL4WbpFKSRt/iyWtixvgAS4CSKRC8jeEC+61YYjHaFCaZ1CAwP
         wvpivBLh2q4o3MAlalq/3onaVwqaEheGjpGhsC2HaUAntDs0X8Zk+oHMqvU1GC5SSuq7
         Wa5WBl6t9FK/PkP19Oc1242hrbV2lSrq9Hsf62r6Ykc+C/MUeecPZWX1UEFz64s3El3u
         VTrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ipRLaGtb;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id w2si23830edi.2.2021.06.14.14.00.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 14:00:28 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lstgO-005pTX-PO; Mon, 14 Jun 2021 20:59:58 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E4BBF3001E3;
	Mon, 14 Jun 2021 22:59:42 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id C3C462D7A8EB1; Mon, 14 Jun 2021 22:59:42 +0200 (CEST)
Date: Mon, 14 Jun 2021 22:59:42 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Vincent Guittot <vincent.guittot@linaro.org>
Cc: kernel test robot <lkp@intel.com>, Odin Ugedal <odin@uged.al>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [peterz-queue:sched/urgent 1/1] kernel/sched/fair.c:4771:8:
 error: implicit declaration of function 'cfs_rq_is_decayed'
Message-ID: <YMfDPtrDpDqx3/uw@hirez.programming.kicks-ass.net>
References: <202106150244.tJgEwdgV-lkp@intel.com>
 <20210614192834.GA13213@vingu-book>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210614192834.GA13213@vingu-book>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=ipRLaGtb;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Jun 14, 2021 at 09:28:34PM +0200, Vincent Guittot wrote:
> It's the !SMP case for which PELT is disabled. The below fixes the problem:
> 
> ---
>  kernel/sched/fair.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/kernel/sched/fair.c b/kernel/sched/fair.c
> index 62a884a652cc..4f7df0e9d198 100644
> --- a/kernel/sched/fair.c
> +++ b/kernel/sched/fair.c
> @@ -4062,6 +4062,11 @@ static inline void update_misfit_status(struct task_struct *p, struct rq *rq)
> 
>  #else /* CONFIG_SMP */
> 
> +static inline bool cfs_rq_is_decayed(struct cfs_rq *cfs_rq)
> +{
> +	return true;
> +}
> +
>  #define UPDATE_TG	0x0
>  #define SKIP_AGE_LOAD	0x0
>  #define DO_ATTACH	0x0
> --
> 
> Peter do you prefer a new version of the patch or you will add this fix directly ?

I folded it in, will push out a new version in a minute or so. Hopefully
all will be well, and I'll push out to tip tomorrow.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMfDPtrDpDqx3/uw%40hirez.programming.kicks-ass.net.
