Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBVV4ZP5QKGQEBJKHFFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5625D27BDA3
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 09:12:24 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id d15sf3911063ybk.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 00:12:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601363543; cv=pass;
        d=google.com; s=arc-20160816;
        b=hw2lsCrK+GPekwCYDYrDEX1jD7B3B9tIcYizTYRM3wSw+uLzSRlFecLjjrMA3UZqtd
         cRIb7lcOtDEor/9AcFVV/17NBKPrPCyM1T+/0anvijNer3EULWUP4BE17lw8Vq3pe6Fb
         H6y9Hto9OLtcfIGpGikBypQ3q8tkWq0h9AkJ783Z2eQE3Zu2WweabUyg3ierbP2X/DHL
         IO1C43wzY018Z6BEzFPOq7nWp7QvcLNhTf6Swn8mAtridnhjIrF3/0XwIuEmcmOUsybB
         WqrlXLiPxeYfyH1gitxZGFThfPZGgZj36WkIJP50gPeB77ASK+60BBXfI/QZvaO/JSxt
         FOiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AV9/hSXCYMB7S3e0XSbp0Wyt3nT8Pm7wmPvVlBxUGtQ=;
        b=pIXRoUytA7s8jZXgn3Pv2NIf/7rcvMY45Vrc3ZCBM+BS+p3k9jfrpb3iZCtnkqSDnk
         epFewA/6bp2zii1WMdsMeR5iB/EtD+dqNB4dTwF8LWdU+ECpVtpUzpPMNla4ID5bykil
         BC323l7ZPbjMt5gr73pOLqDip2AhxXvwVLOl7fsYH3yPrsAPe+vZHcrZr2+iefT6sQNo
         rOQGvuTrDTMBpb+OGoPuDG/1hHTmBUOvk1Jt5LfZgWBWdM0f5Ha6LEFjohMrgWD9Igud
         cc4KrXa0oeT64I3inVRmsBcy/bCJi3OYBP1s38L/diHzj/GAT1Xqm53EL6DGZqfJiDU9
         Gs6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=IZFvJYew;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AV9/hSXCYMB7S3e0XSbp0Wyt3nT8Pm7wmPvVlBxUGtQ=;
        b=i7zBbpJQCqxSckJD2+zzAOHTJm8cX69oLAkpyZZOuw9JRLBnakx4dC/CHCgZrfzqM+
         U2919O7sg/kKhTB7cHqJRB2HvPX47ChZfbfjqAGUMpHA3MsDgJIns3gV1Mw8dIdlEKaX
         8SVq4H/JGXmfa/YS2b/MdlM044KglWfgFQtVblNONu75IM2DTBVTvxe89l635TgQO93B
         wogkdY/6pupuc1MxLMftlzl5t+4/6aN6fDb5A4QxGYQ0tMeFyGPkTdyHyCsgOekZQA4d
         vvkPEUifG/TKdq/z0eKyX8n5exVbcnzHZMKBRLtqTxg40I3OyN4nj3mHJq7RAT61A06h
         dD1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AV9/hSXCYMB7S3e0XSbp0Wyt3nT8Pm7wmPvVlBxUGtQ=;
        b=tEsBOsgLRCE1/c5pP0nTouieSQ6E1J9R+/7gNvV4V7NBCit8gMgu2yYoBJecTDeXtj
         WVXQ+0nVtrdMJ0Qp3xKq/BJM9HCLfSv6Zer97Wk3t7U71ltsCf8siADKmD/dMq108+NE
         VOmSq7cT6Uw61eSvPUVXn5z/3BofTvVhtpjotA0d60l+l6Va9zwmlVAsb+JViYB1aPq5
         vs/FGq/Bezl6pm1FT7BWPzMqk9pFe98EfYdUmKbielA9UguRZoF8foHodP3S/iK6t8mb
         QDDzerXvVtxPvrCQK5JKwbWzasLGyy1IA1dP/ZMoETol4N4MNkb2RjvSLbqYkGGMbx3p
         Argg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530X/UDDZ75TiyvZD8y9rrJ1153lW7P+1ZPVfMF03QJ4SYrPUoW9
	31n9tvt2mYNjci4CP27p/vE=
X-Google-Smtp-Source: ABdhPJzYths5YqxgJ83lIBh6K2c2ABdtWownpdiXOyYgerZeZA1HO6pGGMI8PojmVu/j7d+j1Y2lAw==
X-Received: by 2002:a25:d795:: with SMTP id o143mr4497791ybg.440.1601363543039;
        Tue, 29 Sep 2020 00:12:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8285:: with SMTP id r5ls1729915ybk.7.gmail; Tue, 29 Sep
 2020 00:12:22 -0700 (PDT)
X-Received: by 2002:a25:cac7:: with SMTP id a190mr4734241ybg.305.1601363542449;
        Tue, 29 Sep 2020 00:12:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601363542; cv=none;
        d=google.com; s=arc-20160816;
        b=tWquTq42/DRubzTCPfX6r0JjIsJk0qIKbxzmi7cw5NWCvKjjK8u8OCSN3cDnRtMD0C
         bY/84BtQhajuSfsn4VJq2ZNMzIJ7CZnyeW3etzqC9wWyeBED1fIZVdBTIkZgsaLBPtWd
         SjWX1T2T4MLD4y8r1jm7WuAk2gAkPNBhJi+dSAoU+sJ2fIBvwQwfdNkbXYqj9MHZxip0
         yD2tMfKtrhd07Anb1yLrgIyZ4Z6RCae981z9FI7YGRnN6dsHEj/BNx476U3EvFamK4cD
         7qosm0LbB8K9Me3CkLxzA2kERT3gIvMUvPbT50LvrwB1DxYIdOGZwpiad8GlNJTp1Haq
         9qmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6jDtI8jm64OSzhK1U2cD9uXM9ed5eaoeJqgAM+6j+ok=;
        b=QbG63e2jfGosrNS6sGfoo6TdwDj5DE3C33UCR5IfIekrV+aOGVrLxp94LKVXWk4sZD
         xrCuuqUG8YgUMw9bbUxCZZeO3Ksk3LhsNeQp9AkZkSWZDx6TvgmEPHWH3gCOKKYukUQx
         26TUfYWAyJsKr/YRuMT9vJ7KzCXQrkfZzqc+b+EQJQTG9urKmLSrhP2oCrkHumrph8B9
         Awamu5kWAykT/RnwB+DAoJv92P1dUZcvaxZhp6YSdT04/47j4M3CL2ahKNFZJQVaGK1G
         OhEC8zThytWzJHIBYy7BlTvF3vgFYa8vMK5d9nLaeRqOc/Y8YjR5nG9ktQeF7f8CtmOQ
         4ahA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=IZFvJYew;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id y189si249114yby.5.2020.09.29.00.12.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 00:12:22 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kN9o5-0008V6-GZ; Tue, 29 Sep 2020 07:12:13 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 3148E300F7A;
	Tue, 29 Sep 2020 09:12:11 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 1B46A200D4C43; Tue, 29 Sep 2020 09:12:11 +0200 (CEST)
Date: Tue, 29 Sep 2020 09:12:11 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Balbir Singh <sblbir@amazon.com>, Thomas Gleixner <tglx@linutronix.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	Andy Lutomirski <luto@kernel.org>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org, linux-safety@lists.elisa.tech
Subject: Re: [PATCH -next for tip:x86/pti] x86/tlb: drop unneeded local vars
 in enable_l1d_flush_for_task()
Message-ID: <20200929071211.GJ2628@hirez.programming.kicks-ass.net>
References: <20200928124457.27289-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200928124457.27289-1-lukas.bulwahn@gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=IZFvJYew;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Sep 28, 2020 at 02:44:57PM +0200, Lukas Bulwahn wrote:
> diff --git a/arch/x86/mm/tlb.c b/arch/x86/mm/tlb.c
> index 6b0f4c88b07c..90515c04d90a 100644
> --- a/arch/x86/mm/tlb.c
> +++ b/arch/x86/mm/tlb.c
> @@ -316,7 +316,7 @@ EXPORT_SYMBOL_GPL(leave_mm);
>  
>  int enable_l1d_flush_for_task(struct task_struct *tsk)
>  {
> -	int cpu, ret = 0, i;
> +	int i;
>  
>  	/*
>  	 * Do not enable L1D_FLUSH_OUT if
> @@ -329,7 +329,7 @@ int enable_l1d_flush_for_task(struct task_struct *tsk)
>  			!static_cpu_has(X86_FEATURE_FLUSH_L1D))
>  		return -EINVAL;
>  
> -	cpu = get_cpu();
> +	get_cpu();
>  
>  	for_each_cpu(i, &tsk->cpus_mask) {
>  		if (cpu_data(i).smt_active == true) {
> @@ -340,7 +340,7 @@ int enable_l1d_flush_for_task(struct task_struct *tsk)
>  
>  	set_ti_thread_flag(&tsk->thread_info, TIF_SPEC_L1D_FLUSH);
>  	put_cpu();
> -	return ret;
> +	return 0;
>  }

If you don't use the return value of get_cpu(), then change it over to
preempt_{dis,en}able(), but this got me looking at the function, wtf is
that garbage supposed to do in the first place

What do we need to disable preemption for?

Please explain the desired semantics against sched_setaffinity().

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929071211.GJ2628%40hirez.programming.kicks-ass.net.
