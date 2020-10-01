Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBO5C235QKGQEZ7X5FWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF6627FB61
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 10:20:11 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id t10sf648249wmi.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Oct 2020 01:20:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601540411; cv=pass;
        d=google.com; s=arc-20160816;
        b=IVKx+KfkHhTpqcET76n+iBv+tucAsWTqdJDUlAXY5g1h9CrxSUnk23J3b3uDeyJEMi
         T9UOfOkH7vPMXCyZIBIjbPrwZB8Ikr4o24OWCtJPk9UMwY/73nDtWNQHHd0RC3n8qVyD
         7+5VLD7I5fPUePBN4FVutsQ9jjgHfEzZPAOEZaOR5WX/Tgep9ioo+uVmrr5BIU+GWOMI
         1biIUB2VNrWqB0AR6yYmNg4hVtuv1d5RG3qbpyQT7mgFNCmSW27WHieHAoRiOYvY9DaV
         UlJg/L/a+XzakXSFcIUoh+By38P+8pmZ0H+NUdkpuzNt7hyc5rT+sWvxpWtgxoe1tFXI
         X+Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WFf3VdAdsLPoOO9I8Alajd1JyHbdVLgP0T/f6C6SSCI=;
        b=GzL4hJlsjsr1l8r8760LuzV1R8VFcp1sghWpSZ/Ki7GIxGmrzzViJrqhMaBcb68jaD
         owDar32fiVcshSw9/uc36CKF0qTypBQIcAlsq4JiwcneLuLp/OUl5uOfVbIXSFS0LNp+
         Pgwy3nkhBk40V4wPJLL0QfeiDlI8QE2kTXfPRBZ2KtUo9Nmxk5hOe/DQvIect2HsUBCN
         k8RA0poPhuddbQx5uOvxqkYsI/mF3AJ8J5CHAZwNSdA+aDzjHFbUeihGZxl9slux47Y0
         +Su6wHO6YQ5jfvYbX1ouCOQrM77Ab52noMfBYmRN/XU24I7vRa9HnZ21EIT7xgh5LR+e
         3CcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Vj8BfNhk;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WFf3VdAdsLPoOO9I8Alajd1JyHbdVLgP0T/f6C6SSCI=;
        b=GCxufInl0VmMfMYOJaOjwQLTXiFmTSNQxCzWUth9/XdHh/e7s/K7uYY6rjrp1d/Kaa
         g7gPwLpo/1pJPAU9v7Hz3LA0Wm17hhp3NVv/t5N8tOXhCVIfMKTw7JL4nhEx0bgvluN0
         aChQHaMf5JnKBvg0tX4QOGgF5p6ywVjlnKxfuMF70vJ8kYNXdeE4HbR755B6gtGcN/dN
         +M4kVmr9JSOZdkRIITXpvLxCuLjuIht8BhHn3TS3ybpcGWqwjzn0D8/RMh2IU07Jr6XN
         1lHIdqU/qicQBqg2wopfxJ43Hd64zoae3t05JlVKtlqBvJkDsrbbUfj8Wwvi7RjCvUIN
         bCRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WFf3VdAdsLPoOO9I8Alajd1JyHbdVLgP0T/f6C6SSCI=;
        b=R307syxzP4H72OD1/KNtiS7wBf7NVnT9BvV2cBjfHHMxWs+973yuhHt6SD6TpNQwwK
         w2HzBKxYuOc+TscyU4oh84KCPoVN0Zvhn4qqC6CbbCjCILe/xfLXqS6M22rZ0rlL9gpj
         qnWVrruM+loHzNzGQ3uVG6JQ8r50NmDg555cGR1U8NOrLxBMV4QCrb+6nO/+J46/cKh6
         TKTAKwG7clGjbA9Q9t9Y+FEcxwXizrDt9Eqxb0DcfFTDk6EGYzJVWKfouenEnVwWw64G
         pU2Aag8+9JJzgYCuOM7Ob0yTsss2Om/44thhyxouY/6i3THP5SCeY8xhZYdr9vnKa0/v
         Y9OQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530WyepaOJMl6zmMxRwmfowvFLPQQo/8sVLchaeo3eii7RBaPK3H
	T8ZbaXjtyM/pYnAKQUA1I/w=
X-Google-Smtp-Source: ABdhPJxpLY+7qR+u8Ux/soNct5939mRj9toa9aEkU3Xr2v3UHHjF6TMZGE1a1uKlcguhT8kUvraOeA==
X-Received: by 2002:a7b:c182:: with SMTP id y2mr7468741wmi.21.1601540411640;
        Thu, 01 Oct 2020 01:20:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c2c1:: with SMTP id s184ls2399177wmf.2.canary-gmail;
 Thu, 01 Oct 2020 01:20:10 -0700 (PDT)
X-Received: by 2002:a1c:7c17:: with SMTP id x23mr7430635wmc.165.1601540410772;
        Thu, 01 Oct 2020 01:20:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601540410; cv=none;
        d=google.com; s=arc-20160816;
        b=iVEFL5gC6e5JcvkKg+Br4+uNrWuRk57dVLBq/RtdETdbhHIb8cu4H9h7kPAlWAUfvr
         SLq3eUMslkwFaVU8bjZws6pbVHCQ5alE7uuFXAA9sESUD1IFsT4LW/cw2w3GrDKTA4yx
         eTZ5RN5zMmSpNUWDs2QTXtoKj8CydVWiohV2e5ROZNQIHnJNKqZ+qL9Ku7movKMmtSK6
         LH9Dbew5KzcFaNalxaoioOgGmT3D4i5PaAl92/vJPNCwMvOVAnlaGBrxxjeMyjmQ60QR
         8dilJvi0IrOW4kwWTpmckT/VtmC7zKRNxVVdc4kchdordGLhfoObtCEJ8tb+Rz0XG4Nc
         zNVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4xFuVy4XXtBpTUWYQ2Ea29srN5GWUr2xjmeW/GpcGh0=;
        b=DoTbjzEwS1D0DQdWdLoYUeKd8Kfs86yDZzfo0ycH94Uj/zew3YVwqOt8RDFRk8SGt1
         0IHmJmX3hcUwFLyj4bTlcTKvKoaqWnHibLnQinLx+0jrtlsupBOoyHCVGNYl5n5XJGPe
         DIyajY13lwIeuiOvE+hZQI08Rg0Cu6CKiek087Ja2g+gr2g+T9LBcjYeZD+rNfdbP7Oe
         1IaPYQEZAojmjBC+IgPxqYeufcw7eHwvKfRLiDSfP02d5ES7Fxb4aVhIbhPh8neGBWMO
         4c0OiEexUv+xDYDnSpWVV10MpZ64KYJt+ZLLiW0JcvbAmc4k7ZSFUkaID+DUK8nEFYmr
         FNAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Vj8BfNhk;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id b1si113058wmj.1.2020.10.01.01.20.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2020 01:20:10 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNtop-0001ov-0A; Thu, 01 Oct 2020 08:20:03 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id B5BA93011F0;
	Thu,  1 Oct 2020 10:19:58 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 0E661205FF78B; Thu,  1 Oct 2020 10:19:58 +0200 (CEST)
Date: Thu, 1 Oct 2020 10:19:58 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Singh, Balbir" <sblbir@amazon.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, "x86@kernel.org" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
	"linux-safety@lists.elisa.tech" <linux-safety@lists.elisa.tech>
Subject: Re: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars
 in enable_l1d_flush_for_task()
Message-ID: <20201001081958.GO2628@hirez.programming.kicks-ass.net>
References: <20200928124457.27289-1-lukas.bulwahn@gmail.com>
 <20200929071211.GJ2628@hirez.programming.kicks-ass.net>
 <20200929083709.GC2651@hirez.programming.kicks-ass.net>
 <87eemji887.fsf@nanos.tec.linutronix.de>
 <20200930170316.GB2628@hirez.programming.kicks-ass.net>
 <87blhni1pg.fsf@nanos.tec.linutronix.de>
 <20200930183552.GG2628@hirez.programming.kicks-ass.net>
 <87k0wbgd2s.fsf@nanos.tec.linutronix.de>
 <19f57cbe-ba33-17d5-440c-2765e670782f@amazon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <19f57cbe-ba33-17d5-440c-2765e670782f@amazon.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=Vj8BfNhk;
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


Your MUA is having trouble wrapping text at 78 chars.

On Thu, Oct 01, 2020 at 09:49:30AM +1000, Singh, Balbir wrote:

> So this is the change I am playing with, I don't like the idea of
> killing the task, but it's better than silently not flushing, I guess
> system administrators will learn with time not to correctly the
> affinity of tasks flushing L1D. For the affinity bits, not being able
> to change the affinity is better, but not being able to provide
> feedback on as to why is a bit weird as well, but I wonder if there
> are other cases where we might want to lock the affinity of a task for
> it's lifetime.

You can't really do that, hot-unplug can (and will) destroy any affinity
setting, and if the task/admin wants to recover it needs to be able to
re-set affinity after that.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201001081958.GO2628%40hirez.programming.kicks-ass.net.
