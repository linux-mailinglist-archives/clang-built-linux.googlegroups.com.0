Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBKW2QD2QKGQEKWCG64Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 402B01B4367
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 13:40:28 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id t124sf998575oif.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 04:40:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587555627; cv=pass;
        d=google.com; s=arc-20160816;
        b=RTxZ63IFCAsiLxP7VqFFRVXZYcmOPLErhkxI8/49G502fiAoUj9/+ZzNCi4wSCSiCK
         AVf1Yaly5FQQJKopN6hMjpybtHHUftpucC6EOUC88ajnT6uOoMWAayS3o2iwZKNzIUvV
         7MGGcQYP1olUiRU3GwhOokeLoa3PYAE5TQ8BBgMHtByOOXvF/vXHnaI3JvMchhnSkOsB
         DAaBEnNJEKDNs0XFqOgMX9M72ho4Mcp1MFyztfPje6oefto3C4sFLKB2/YSspcMGXYaN
         N/RuqSuAHj46Ep0WlHYX5vAj7K4+TLN87CCWv7GGFRx4XzVvmdtZx1EQOoTEDbw+nXxG
         ki5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DUoorYLvbnwmfJEYunxyJm85c4GijP9bGpsEbLBKY04=;
        b=viSyOsfXdQZYMdJbYrmWZaok1EFB/dlDSgak4QSYRTKfhc2bga9B7VEH7lHvK/rr8t
         Hsof7Z1RE1Wj+T3UTosn8dEULtLNaWoILVKyZYSbzIkbMF9TV4L5HlLcyfhyD0hB0doa
         RHaJ8MmYemkpQii6E9qmt5lgAMI3RqUJAaNB2WT6tHWN4JKeeH7iPVdMOQzuC2hvesos
         eG866u89hyY6Ob/X98v7/FepOFBqr3TJRDA4A5Bnpj477O4uyBo1s4eyrgzCTGDXk0FT
         r9ru4LA/QJ1aitlctQe/PhtPFJUv91JLiq8gu1ZDKwOVPLpsPY0d2byLdCEMoz4XCsUa
         bptA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=b5QyaoAh;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DUoorYLvbnwmfJEYunxyJm85c4GijP9bGpsEbLBKY04=;
        b=qSTERo4xJidK6c53yghIVGMxoAn2tlBeNoP/yUQnstHeVK2+WfCYQAAzBtgW97wh00
         4WygVCBMcrhhDiD8WuW5XjiTJsWVkaz1W+u8t5aakDYBvYqOIpBbXTHqro7prfTkfC6b
         qCdIZ03aJpo51RRAiSf+bpzJt6NIcdMuXnPb6GDQMM8PIjpzt5RuNbw9epegbDzGscE8
         rhofhByTgKksbSMNWBb7Nng+e3AO9SO1evXoIKQ7KeFJxIGxYW8lCHodysiV1WEBZRPS
         ZMqGhLlgi03P6rn6LjGhFcY3yTQGMkpyD4kI/zWk2xf8N9ubkz4ARf1252nxLmJFz2EG
         uwpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DUoorYLvbnwmfJEYunxyJm85c4GijP9bGpsEbLBKY04=;
        b=rJ7NoVYHOny/eypUTHdXwaeDYnHm32u8FaWRwZRfX4k0xyDopJjW0aq5bwS6Nmf+zB
         WEezEyzR5+Qm3bHviTgdnpGxxmUVvrlcIUQQ3xETSz8PbZUMS2QMbLmQ4Siw2/KF4nPd
         XliRZzLGCthp8jbvmW9t4+2D72+BrB9Wczsf/Qdta+wF4Flubp8nbe9NRd/wZHjpHdqa
         x2d7pnVW6KYF2lsVao/ObbIcY1HELpk4pvXSAg+1NPXmrCae1oXCxJyl7tD3EcbuOXSE
         xujLU41JXfIHAFZdVyjycVcX6RcX8rNpIOJ+DrYHm1ZU+Jh9TXTloo13d693XrwBR65m
         3sng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaPBRDSj6LdQoo8xZtD8+JI6YALSM5eAREnhxW8WfNYFby2Ddgu
	f0d6E6xW7p/Mml63r6+syNA=
X-Google-Smtp-Source: APiQypIU99DqBo44XjcEBqqci8Ld4m0HxsPE+5GRgqS/hVTrXRx7bBo5GpV8Nngiw8VRbmym/BEgTg==
X-Received: by 2002:a9d:170e:: with SMTP id i14mr17104223ota.283.1587555626796;
        Wed, 22 Apr 2020 04:40:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:363:: with SMTP id 90ls350773otv.6.gmail; Wed, 22 Apr
 2020 04:40:26 -0700 (PDT)
X-Received: by 2002:a05:6830:1656:: with SMTP id h22mr6021453otr.290.1587555626436;
        Wed, 22 Apr 2020 04:40:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587555626; cv=none;
        d=google.com; s=arc-20160816;
        b=RsMCRmFrhB3fSouF+HpGpqIMOgdv6RqoNH+Ci/jEsKeZ0G0cclq689NCsBO77Krbl5
         u9GKClIZq3GKNlcq42QZv64TnUZhEGwSqTiw7n7wq/Rs8E4bzeZ9rnosuoP4qCc08tY0
         G+yOSHJUhUQ2YlXLqxY/fQ01gvUBQFubcbYCft42DHPTXYN9DwiPni5AVRVbZCF+e/yw
         B9EGlzQjt+bMOFbvDxfGJDxMdIVmizvZ/aKqEw3Pn7aD1NMwYE2VwkM64hIfibstFkVj
         BcQpISJbolp+QthPzHJ0u3Z4t3ZKhsST/7sx62GBM6ymdNXmj6tIxEsnWJ6b0csBhlnA
         1sJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FMnNnD/g5k61t/UJVaLjWLk7lqOWCoUUvUZPwgeC4zI=;
        b=wCczvdEVYaiSvu9xPwC8xmkEctv4019xiXY0qtZ+QV0KbM5qA9eG5Vy67lxGaUluMO
         K+zXXsokTiNsk4LmhIN2D+4GdPih1Ti5lrI/1+1dLbF0LsBp1qBIVHRVtyiU9ohTDOwN
         9ewuYQ33Gu981JZ78Ampq5tXULbQsrmCIUsVwFfn3j8iBBkEVjttHS6ZF1SK3ky5OU9c
         bTWMtY1Uk1KFcEliDv6lmL1aPufrEFpVQQlofuUkjDlKUfhMOuUKQvJJTERYd+p7Sc1g
         /uOQvl55Z8GhUCIHSntijVRPf6LA5TlGr3fL7kx8101DfZ0JUcYwmm7CAM6iptcvBCix
         8BXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=b5QyaoAh;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id o6si566994otk.5.2020.04.22.04.40.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2020 04:40:26 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRDjd-00075p-DO; Wed, 22 Apr 2020 11:40:09 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 03655300739;
	Wed, 22 Apr 2020 13:40:08 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id E4EA2203AA838; Wed, 22 Apr 2020 13:40:07 +0200 (CEST)
Date: Wed, 22 Apr 2020 13:40:07 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Michael Matz <matz@suse.de>,
	Jakub Jelinek <jakub@redhat.com>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
Message-ID: <20200422114007.GC20730@hirez.programming.kicks-ass.net>
References: <20200417080726.GS2424@tucnak>
 <20200417084224.GB7322@zn.tnic>
 <20200417085859.GU2424@tucnak>
 <20200417090909.GC7322@zn.tnic>
 <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak>
 <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
 <20200422102309.GA26846@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200422102309.GA26846@zn.tnic>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=b5QyaoAh;
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

On Wed, Apr 22, 2020 at 12:23:09PM +0200, Borislav Petkov wrote:
> Ok,
> 
> let's try the simple and clean fix first. Nick, would that work on LLVM
> too?
> 
> And I hope this will remain working and the compiler won't jump over an
> inline asm and go nuts.
> 
> Thx.
> 
> ---
> diff --git a/arch/x86/kernel/smpboot.c b/arch/x86/kernel/smpboot.c
> index 3b9bf8c7e29d..06d2e16bedbb 100644
> --- a/arch/x86/kernel/smpboot.c
> +++ b/arch/x86/kernel/smpboot.c
> @@ -266,6 +266,13 @@ static void notrace start_secondary(void *unused)
>  
>  	wmb();
>  	cpu_startup_entry(CPUHP_AP_ONLINE_IDLE);
> +
> +	/*
> +	 * Prevent tail call to cpu_startup_entry() because the stack protector
> +	 * guard has been changed in the middle of this function and must not be
> +	 * checked before tail calling another function.
> +	 */
> +        asm ("");
>  }

You haz a whitespace issue there.

Also, can we get this in writing, signed in blood, from the various
compiler teams ;-)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200422114007.GC20730%40hirez.programming.kicks-ass.net.
