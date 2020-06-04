Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBDV64X3AKGQEM35GR2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7081EEC70
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 22:52:31 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id j9sf4020331oon.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 13:52:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591303950; cv=pass;
        d=google.com; s=arc-20160816;
        b=j0WW75HQkKluhuzWkWMESi1rX3ULCEENdHjh5rMre9oEf5qu5shpHOnkU3klmwzAyX
         usDiXqCMDYwZNtYUUThMP7GzcvABowZie0GQBIH6QL5UNnELzA3i3TfY9lKleYSdnvgF
         PfhM+gPW5593p8u6FJU62X5M/tPdxh2fNrYh31podFvsjITodTqF8x2OThjneAM1USC2
         ikUydDNeey7jE6pkcrApM0F9mPyhOD2UhyVOaifEOavB8IfVSls/38yL9QENPOjRsnjP
         k9AyIJ5ecHI1Hq43h/bpCqulLuiY1UKISVeFVxmJxhun0ZAzG9/3UBanhWk3mx5OKJeq
         9MZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=QM+qTH0hgCGGf4ICd7efMrqlQkl6R/RWaDFZRWx5f88=;
        b=HJurQIXa/paLkanpnEHKXAPWfZst5mIfoKJK4UW6JkeC+i5mue27EjI85Yt3saPGLb
         QG63SoLtClBwuYMWeaWkn9O5nuazkRawZhVzBSJ23fF6wGSFiX528RaSZw42tdolWClj
         /YJvZMAbMq+8hxwts0RgY39NR4klq2jeclTnrsJWLZuTFftnpQYFs+HCNBpUO+dl72q9
         xEXfgdpydVQXhUR1RC3ZeIa2XZRraIDCQ8Q+xpjdj05ZWZ2GWfbd8S8Gof0wFYKysGmO
         KCi4MXfWPYx4pYcggmHnmbkJhw6ZL1eGOzgDBniFEON4eY8va4I/qSFWdscfSsrSUxpI
         j2IA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=rxvICSWi;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QM+qTH0hgCGGf4ICd7efMrqlQkl6R/RWaDFZRWx5f88=;
        b=MGO4zQpUsU26Ase/EZ5xoG92eIrZb/fAeJn0Zu0EhSGbZn9gUgXq7z/kj2BZ5E9Hsn
         ePgmcbEnbg9wcGjqNPhuRL/TvY3IjQypyH9Ddq+m5SQ4UnMyROHTx0Ci7XNKc3FlbZnc
         EJNrgnh7QLMHSxrp42MRmyt/cdcpKFESMiZDxpgzjdXaskoy7yIOQ28K1KejhWxVFvzD
         pwM4HJCTbLbheSJlWKWrjrvuZi7x9cNb1wfhQ7AipIHa6LDVF9OXoSVS4JNxNH6Ovw8N
         BEALU5gRwCuubTo1JTGzmchmPaCjz+gKIY5Kkjth211P9Cdur5MQ1njRpkJjVlGiQb10
         eTgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QM+qTH0hgCGGf4ICd7efMrqlQkl6R/RWaDFZRWx5f88=;
        b=FzUwHUwTEHnUq0mw/MgiVYCL35jSDzUzAu5MQhF6J8WyMRNo4N3tKCJMcFLTMr8794
         sHQ78HHCJBd5g1xeIpEK2UHodVQ/xDyGOio7WDorim8o3FZtHGNxpllAHhAIWzUvQIns
         EoyYKNgzBoBSB8qB9iFcpmAcgOF6U+tziCUsGGCkbBu4iJY7b5TbxLpu+U+400kWB+r3
         wGi53sTNnKJ4lnWtWhOwGVc9rFgE9wDDUsAe/4axH608rxzTcKKv5GpbiqzwJofiu92K
         nxE+riD1X4IMrUWP/0aMI9LY8eqzodURJAQFKGJ8dYts2lGin06WfUJQMFTZVqMlky/6
         2uEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311j6gs39nbnu7nr5St56felZ/j16z40S7xU3xGnC/ShlCiy6hG
	Kqf0510aL0HWv66aN0hAEBw=
X-Google-Smtp-Source: ABdhPJx7mORyXbU7jL0Cq5/F78fxG3ygNV35oDncFdqM3B3OKHzGI7jeXqSZYvRg5D0i+kLK18ckiQ==
X-Received: by 2002:aca:4dc3:: with SMTP id a186mr4552774oib.17.1591303950736;
        Thu, 04 Jun 2020 13:52:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4d89:: with SMTP id a131ls1415325oib.3.gmail; Thu, 04
 Jun 2020 13:52:30 -0700 (PDT)
X-Received: by 2002:aca:f4ce:: with SMTP id s197mr4603128oih.115.1591303950456;
        Thu, 04 Jun 2020 13:52:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591303950; cv=none;
        d=google.com; s=arc-20160816;
        b=FvAueYEaCISXoRE+zvDb1tKAhx3N6Saf3er6iTt1PT+p2R8kSYcwSzJ/+s49PYe+RF
         /yWbdT/aU6DMUgf+Q50pFqRnUgXdfF0DCXbeosLgT/2dCgODOfHoe+5S1S37lZ4O6ws4
         d1DxwNRIJxA7Cyr2vzm1QJfgHMiPlOMiLwRKpY8M6K1/TBIuSY2fu8BYmMFdDdBO2QXl
         GyMvAtBk0jpIEnexZai1WE1ZtcwQtEkJtFpImZy1hzJrvgSFS3gs+5vGtBoTNnffULVW
         +4vUT5hLITpnzp8FhyXZlR35pGxSISJD0myRcfE927iq7jaIjrHpvTZEfWYIBOxL8npx
         ox2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PiE7DNxO3pqAGslsM8EXoQp6h0xtdTMR2V3mK8r5hpk=;
        b=seP7aWZbYC3FxcpAk0cmtHA8tZn6/CkPo+q+aeMX4O3eot0tiZJbDrMh+H2NmM1fK6
         wR98cK68j5Lg6W6Ju6wyAZqndPk8kLxNmMYp7iUoGGEl0GdaLlvt+V3Yv+6737B3gzAa
         86/ibwjZFTPRP5T1GCUq/PD+anV26WTzI0FgSM9CU6VzjaFTjHog9GOGhz7yF8nVTVdD
         dwuqdDdLnzB++uVRwIGVdamjGFJE+RtbAUOFoQz5h0AD9DE/F8eQFTtrMhNwmYknQaXd
         BBUcKKjnnKSE4KfBsqmgC6Ur+lnSSC86G+F6Z/sTagqvgc8YxBVafpV8LV5G6aSRfulu
         RtFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=rxvICSWi;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id a13si356362otl.0.2020.06.04.13.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2020 13:52:26 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=worktop.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgwqb-0002DS-T9; Thu, 04 Jun 2020 20:52:22 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
	id 65A5A9838B9; Thu,  4 Jun 2020 22:52:19 +0200 (CEST)
Date: Thu, 4 Jun 2020 22:52:19 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marco Elver <elver@google.com>
Cc: Andrey Konovalov <andreyknvl@google.com>,
	Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E . McKenney" <paulmck@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH -tip] kcov: Make runtime functions noinstr-compatible
Message-ID: <20200604205219.GZ2483@worktop.programming.kicks-ass.net>
References: <20200604095057.259452-1-elver@google.com>
 <20200604110918.GA2750@hirez.programming.kicks-ass.net>
 <CAAeHK+wRDk7LnpKShdUmXo54ij9T0sN9eG4BZXqbVovvbz5LTQ@mail.gmail.com>
 <CANpmjNML7hBNpYGL81M1-=rrYn5PAJPTxFc_Jn0DVhUgwJV8Hg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNML7hBNpYGL81M1-=rrYn5PAJPTxFc_Jn0DVhUgwJV8Hg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=rxvICSWi;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Jun 04, 2020 at 04:23:38PM +0200, Marco Elver wrote:
> Sadly no. 'noinstr' implies 'notrace', but also places the function in
> the .noinstr.text section for the purpose of objtool checking.

Not only the compile time checking, but also for purpose of runtime
exclusion for things like kprobes and hw-breakpoints.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200604205219.GZ2483%40worktop.programming.kicks-ass.net.
