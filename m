Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBWNVXLYQKGQEAXGCT7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 03226149F7F
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 09:10:07 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id v17sf5657748wrm.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 00:10:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580112601; cv=pass;
        d=google.com; s=arc-20160816;
        b=XGDn3QTv2IZxxtFNuqGWF+wriE46m7HO2yxfQQOOSLhPcAvyaPy7+xWFHdHi5SBC/o
         lct0w8dK6sUZcu+OSrVupxSWxu49UeIu/v1vEBN/UtMdNPQclfdvpuyGZGdUT9m2xcJ5
         1chi1SFkgNzC18jFccCtGF+XlAdW5qzR1uqqgc9xjtBZQbwjvajPvUS+z6UPiNglA+Hs
         uGzjia61nP0KYiTiVpPcfZvsyE9s73DxsRqNjGfyjUaHPcr3Lz6gEVf8JpOmDPuQw/WF
         1rkW3E+GdEfDIxq95hXx6UpWwmcvv8lztCvhcIJhQYI8sThNKOvRESpIdStrbIBoe6CD
         03ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=e4xNHHiF3g2i0mjIQ92EjWbPQ6yhzsYnK9nW7ylxXiI=;
        b=pBL2YOjZDphHFn9ypoL97MXwKS+wWWBFCI7Man7NKhoEbsUt1WSRHxm50p5uaEd27o
         4fraqCvV1k6jHkblcVhLB+5wO7w6ZJzCVBgjUfYwzu56mcN6IIvU5vuJv57lyEtvL6mn
         cLAyc01gTKdRdKZzICTS1zPVNOLiHTi+1VNtkmYafADXwOOthoNDdVc85RLICdbPTGx3
         uV4h7dPjlUpsOcdsD1mogMFOGMv3/0QVyS1qSTv6QqTZsi33RPLW0d5R9+2rLw/kG1mt
         iQpx2brqwEAmQnWq8TVJw17uKRLsZP1POvdtVwWVOMLzglFNDeIVEmBpC3SF0P2WD72u
         3Beg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=F4hAZJLK;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e4xNHHiF3g2i0mjIQ92EjWbPQ6yhzsYnK9nW7ylxXiI=;
        b=I+Kt1idC84lpifJN5GErjR+28UCZnJ3sTgNEyns/zCrDKRSiSLySJYkMT12p4wJveA
         WAHyk5+8qhzW+i9VBjBsXjjQdYSvtLpOXPzoDvBTJHjhzge6v8K5+AncLovmICBScMqY
         P9hn26MTN/8mLOdbP+wZVdqsKeb15pMSaR37zDBOLEK9IEq6zetkFi4RS6NX834UKCdE
         ZpeN2CR2mCxuY5G9BsLPvhGw5ZWKGidkTv6FsfIDnyBKRpx4cZciABCRDZzcSglIWn0/
         /zinnwS1GzFTXqdPOU6f2fLB5En+cHjgocxQp2Jkl3ajAYnd+aaWW4oH2lNuLSkOWsgg
         WR/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e4xNHHiF3g2i0mjIQ92EjWbPQ6yhzsYnK9nW7ylxXiI=;
        b=Ix1Yq2L8up+dtoz4cs9wdrPslbhMDd2se6AtRqCsytP0lFH09R3T8aaURNz5TA/pLE
         8j8nKS8NGE04cMlU3FNM2JU+aj5+M2ktXrT10kZJvvbtyhvbWoW55cylbSfFhTNQDPyo
         JYrWjWBmf6ume2iKWMYTqUbZprc5xaufQwEPjRZurINmESJo/5OH6E+z7UMtDgekJzFQ
         TQmmGtbzVdBQZtn3P0uEh4SAQYf1WQRCARXmZovyVQJUdDyPyVn6I77AlWFN1wf49N5H
         vHe3RUStqgZWXoeSel/Y26cteK/BITUq9KR5zKAQJgWm4aDRYZTxYBoZyu+U1epzxeFo
         YMfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUaGj+Z9N2vRpFLbrF3fQxV0IarQaDv7Yxl+4pc0ByRpyXaDUHM
	qm6WTjdUuNU6y2TWZePOQUM=
X-Google-Smtp-Source: APXvYqxBrkNWCXqeAGR7Nyf5j8mXNklsd3bOYwiTWjFSygTcgJyfGmHDfrH+0AC7l/PVvOUXN4lf4w==
X-Received: by 2002:a7b:c93a:: with SMTP id h26mr13020227wml.83.1580112601678;
        Mon, 27 Jan 2020 00:10:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c4d0:: with SMTP id g16ls4053109wmk.2.canary-gmail; Mon,
 27 Jan 2020 00:10:00 -0800 (PST)
X-Received: by 2002:a05:600c:22d3:: with SMTP id 19mr12182598wmg.20.1580112600902;
        Mon, 27 Jan 2020 00:10:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580112600; cv=none;
        d=google.com; s=arc-20160816;
        b=nsoEcB6Oih1ybKrAjhDiwzoIeOD+ZgP9PbTHBh99GlUogMi6TbhKFJ9Ag+tHWWN9pn
         cnYDrgjAjHslLuqnoGFMQigIxuBzy925qC6ogFRLxUHHvxU9VstSYMxQ61dOMsLbT1l4
         /K+s6sbhO5hMLFXnodfzHi0n46gZq7Xgz7/zFcR4oUDVXndAkKBaIXH0bdCjheMxiAoh
         AjevybU9Ns5OxptkEs1uNsPHbeGmeJzm5xTXgIKW8ojbIndt97PUbEOP7UA3QfQGc5KK
         bDxCvsZq8OjMxQDORB/tXFtVoOP1VzYVb3id4QRjG1rgwlVVr+Dirs09VVyfhC6IPygl
         ZcIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NSkXKOkLVFSqskr8Fv8C50qKSUgO0Fch8+tEjDsF97E=;
        b=NzT29hlg53gIA+El9Sn56SWbEFuHVKfQFFJFJTEo7cZksjNJnAua2Xquqhbtqphxj4
         JtUlPnwkjSuSq+AFFnZmuAG60jExw0MVrwXP9RkY44dkCiGGCq9y6lq2YaXV5sdE2jgu
         DjmK9H6C5Zvdi3r6VtSwe3kdg+vDcat4s85qFYPbau/X9c8/VCSF7o5Mne3IwTNy0obJ
         TgcrsbwpvxXhQr9karH21+Odh2Ja8wqFQRI43G/I6EGQRyZEYby5rui4UFHo9zs471Ps
         7w9kjFwVuEXWZsS7wdxW76S+J9j9++xxuY8TNMwZwbfps/x7QjU+oKNoUsgtc1Ti8+jd
         YG0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=F4hAZJLK;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id p16si539597wre.4.2020.01.27.00.10.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2020 00:10:00 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivzSk-0004Vq-1F; Mon, 27 Jan 2020 08:09:38 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 437B2300F4B;
	Mon, 27 Jan 2020 09:07:54 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 08180203CF5D4; Mon, 27 Jan 2020 09:09:36 +0100 (CET)
Date: Mon, 27 Jan 2020 09:09:36 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <nick.desaulniers@gmail.com>
Cc: pbonzini@redhat.com, tglx@linutronix.de, mingo@redhat.com, bp@alien8.de,
	Sean Christopherson <sean.j.christopherson@intel.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
	kvm@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] dynamically allocate struct cpumask
Message-ID: <20200127080935.GH14914@hirez.programming.kicks-ass.net>
References: <20200127071602.11460-1-nick.desaulniers@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200127071602.11460-1-nick.desaulniers@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=F4hAZJLK;
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

On Sun, Jan 26, 2020 at 11:16:02PM -0800, Nick Desaulniers wrote:
> This helps avoid avoid a potentially large stack allocation.
> 
> When building with:
> $ make CC=clang arch/x86/ CFLAGS=-Wframe-larger-than=1000
> The following warning is observed:
> arch/x86/kernel/kvm.c:494:13: warning: stack frame size of 1064 bytes in
> function 'kvm_send_ipi_mask_allbutself' [-Wframe-larger-than=]
> static void kvm_send_ipi_mask_allbutself(const struct cpumask *mask, int
> vector)
>             ^
> Debugging with:
> https://github.com/ClangBuiltLinux/frame-larger-than
> via:
> $ python3 frame_larger_than.py arch/x86/kernel/kvm.o \
>   kvm_send_ipi_mask_allbutself
> points to the stack allocated `struct cpumask newmask` in
> `kvm_send_ipi_mask_allbutself`. The size of a `struct cpumask` is
> potentially large, as it's CONFIG_NR_CPUS divided by BITS_PER_LONG for
> the target architecture. CONFIG_NR_CPUS for X86_64 can be as high as
> 8192, making a single instance of a `struct cpumask` 1024 B.
> 
> Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
> ---
>  arch/x86/kernel/kvm.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/x86/kernel/kvm.c b/arch/x86/kernel/kvm.c
> index 32ef1ee733b7..d41c0a0d62a2 100644
> --- a/arch/x86/kernel/kvm.c
> +++ b/arch/x86/kernel/kvm.c
> @@ -494,13 +494,15 @@ static void kvm_send_ipi_mask(const struct cpumask *mask, int vector)
>  static void kvm_send_ipi_mask_allbutself(const struct cpumask *mask, int vector)
>  {
>  	unsigned int this_cpu = smp_processor_id();
> -	struct cpumask new_mask;

Right, on stack cpumask is definitely dodgy.

> +	struct cpumask *new_mask;
>  	const struct cpumask *local_mask;
>  
> -	cpumask_copy(&new_mask, mask);
> -	cpumask_clear_cpu(this_cpu, &new_mask);
> -	local_mask = &new_mask;
> +	new_mask = kmalloc(sizeof(*new_mask), GFP_KERNEL);
> +	cpumask_copy(new_mask, mask);
> +	cpumask_clear_cpu(this_cpu, new_mask);
> +	local_mask = new_mask;
>  	__send_ipi_mask(local_mask, vector);
> +	kfree(new_mask);
>  }

One alternative approach is adding the inverse of cpu_bit_bitmap. I'm
not entirely sure how often we need the all-but-self mask, but ISTR
there were other places too.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200127080935.GH14914%40hirez.programming.kicks-ass.net.
