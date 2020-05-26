Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB3EKWT3AKGQE7NKXYZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FE01E2188
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 14:02:54 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id y16sf16580602pfe.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 05:02:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590494573; cv=pass;
        d=google.com; s=arc-20160816;
        b=A5GR5P3DMyTsgQG5ot6rtjiTsQ5v43n9vMj1asGhfBL+ohZ3yZvt3pApYvmMW8UQz8
         OLr7MDaaGAVfV1Bvo1svic96eGFnzhoTdzsYMAqVnmWMHSWVYg9wS2Zv9iXEq2RgUt5v
         da9DapjqTdt3r6n0PX3gjc/iEFdN5W37dN/xrOJREuc5lydBAyz7U7WJ1/e8vupQbzKZ
         TVSSGMW71r2qx/sYUdDK5elO3BIvKfLhV7zKPRheAuilrYL/K8So3jECJeDnZ7T9U19y
         63xYQc2t18B0+wxckiwJGqoJVyqIwPeLhuLFN7yyDxM4oe9bAX+JZf3tpy3JhF3scpjn
         3N6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Xx4HWG2acOGL4cWmERkg/xEfecqoz1o99LMVlIpOH1k=;
        b=GFrCKoqCUin2EKcYEf/oo0fIgXApEeYlnZVuW95d6ZfaHl7zZ7fsUEPPjuPMw0jxyD
         hQheyPDsh3j0AzF/EnDmVPVKzOif1Y6XMIk3WEvgP8fOREXm/rcqpukRafwuu8IWD3Bo
         BRoBPfAJdnQ6hIAwO+WdExt/HOEGKILYNU+3aUajyriidXaPJQ2MM/4pv8BDFa0Oo2XO
         AEbDsnAZ9DaF4Ycttaw4mqffsUNdYSM1z7imUDF2D2JGseSs8AqW3A0EqI0AiUonjWJt
         o0083JYzDmzg/NP+y2m6U2TKs4xHowpuVxDGdXG/hQ4C/9rptny9GXT+VgIFC4tXjJqP
         DX+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BwvigOde;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Xx4HWG2acOGL4cWmERkg/xEfecqoz1o99LMVlIpOH1k=;
        b=IuOmiwDZXIYyIQxo2Uz1mRJ10FbPxUzVDl5ObJJ2ohn+nXe3/Ux3+TGgo3Orz/pEUK
         MLJbEtkPSByvFvaXcOWGrviV7CpNhOTxDFCP6gbVamqlikJJeXT5rjqGSiJoDkKlVd07
         Pk6SzXF0cvai/gFLeijPIHao/muCUJG9fYTdyVp5WXR2fnYHnHk79g/dR5O+rbRWafBt
         kTDHJ7XgWTe3bRO34mjhWekGhel/4+iTwFZ1RMPoGVzZcLV+QHClXCDYeE3BZmCKfuPd
         l8foCv/lzSeumQCgS+Ez7kW/+uQVyukuq62Ucb5AbJZkWX/Eiau8V+/6BE1+OG0rtKRT
         EyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Xx4HWG2acOGL4cWmERkg/xEfecqoz1o99LMVlIpOH1k=;
        b=QmDhyrv/xji2MzrO3r+XjETtK9pBZ9bWymRv3qYVC22rIvDNWAHjneZnKZM9A//zKL
         fFxqJQooNiDNyCdQ9rrvouVf2xTVBNpeO9kfBBBlJW9vWlGk0XfjL8QC6NHS1/7a1y9b
         eiAwImrTKqZFNXF0Hj66fuetkBjfK+auVR39CiN/0EkRB7q4WtBsGLb2L18BZVfp8yzw
         zUBVULCdB/avDeJRcsN/mLMUmuJ8TBAVD3nBHzOZMmouQJoIscxg5X7NZU95Rg7TzmWQ
         /rPnpooyuMBCf7p1S2T3b6dJgG6KQ9zdDJj8eCdSDVueMxFOYpwAiAmnOylrPngSMeGu
         oZmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jvWOkj0kUALsYNCZERaBuZcsYskpbY7CR2q2cGRhOB2C5Bn3x
	az4BhHO3Bo2IcU2HcBVJtAA=
X-Google-Smtp-Source: ABdhPJxNIO8bkmpfDnzglz7wBxRNBgmwXYSOZ7bC4oMlJQZsOcoR0gSCQuGSjHttYNQPNVDHfulT8w==
X-Received: by 2002:a65:6810:: with SMTP id l16mr709638pgt.390.1590494572853;
        Tue, 26 May 2020 05:02:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8f8f:: with SMTP id z15ls4882639plo.8.gmail; Tue, 26
 May 2020 05:02:52 -0700 (PDT)
X-Received: by 2002:a17:90a:aa8f:: with SMTP id l15mr21475378pjq.156.1590494572392;
        Tue, 26 May 2020 05:02:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590494572; cv=none;
        d=google.com; s=arc-20160816;
        b=F7FNS7qaNcFmg0Wr6fcYNCAAOXjzuuVHBSHzDx0Gh+FdubQiNjZ8z31aLSs4gAq1CN
         cjvPoOGI6KR7VKlVUS3XfVaw1JV/ZaWGNy3C1gssA/eJQ2Jqjn+uGDRmkebq297gOeRR
         C7nswKiOi5r+Jir+sA7/yvOnOt2Yft8OQ4NxLEq06oVfzHEvPcvth8usX+6yB0TQ7X+d
         1y2ym3BG127GNCgB+GVrFa+xpn/32sCDCD5M/MX4IUvjfY62zErP6qNOrSeoRYDktVIl
         EaLTWWZ4gH33iTQ9JlS1Ba0pendmjJ+8RE2zM+N/ZFDHll8F21Q4cINedpiCfxyt2f0P
         3q4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=xqZ8tDZyMGACQr8QYdf8t+Y80QZ12zIALE7NrLi5yfI=;
        b=DplvD4pDJ8zyYPAmGAI9YpnJZuojTJZhOLwwh7zkUTbR5CiedPrPEeGn/qH+gJUJVf
         78Y61WGYiQlhhIcP+gn+LAU03oqa9w1PFRUwj/sHXN2V1IIEpRZs05Ov9YjWI2kWwbIo
         xqPdUk7HTNxCMksWF+BtvcncRjnvjk6gfdmOWAbuSMnxDZWy9OVpR6HyUCcm5KX5ISaV
         INPeJky4ZehW/bmdGKiOCTa20T1fa467i7ZLSJSn41dr2qNkdRJPcYWYtt0qrh/8FppK
         VDg4jbuln/cacobyDEx05CxgBYppsP+4DVSYGXW6OUuuwpOdwWDg1eH1QflUzR0f0jtZ
         QSbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BwvigOde;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z145si1311158pfc.0.2020.05.26.05.02.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 May 2020 05:02:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D5AD62073B;
	Tue, 26 May 2020 12:02:49 +0000 (UTC)
Date: Tue, 26 May 2020 13:02:46 +0100
From: Will Deacon <will@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH -tip v3 09/11] data_race: Avoid nested statement
 expression
Message-ID: <20200526120245.GB27166@willie-the-truck>
References: <20200521142047.169334-1-elver@google.com>
 <20200521142047.169334-10-elver@google.com>
 <CAKwvOdnR7BXw_jYS5PFTuUamcwprEnZ358qhOxSu6wSSSJhxOA@mail.gmail.com>
 <CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BwvigOde;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, May 26, 2020 at 12:42:16PM +0200, Arnd Bergmann wrote:
> On Thu, May 21, 2020 at 10:21 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > On Thu, May 21, 2020 at 7:22 AM 'Marco Elver' via Clang Built Linux
> > <clang-built-linux@googlegroups.com> wrote:
> > >
> > > It appears that compilers have trouble with nested statement
> > > expressions. Therefore remove one level of statement expression nesting
> > > from the data_race() macro. This will help us avoid potential problems
> > > in future as its usage increases.
> > >
> > > Link: https://lkml.kernel.org/r/20200520221712.GA21166@zn.tnic
> > > Acked-by: Will Deacon <will@kernel.org>
> > > Signed-off-by: Marco Elver <elver@google.com>
> >
> > Thanks Marco, I can confirm this series fixes the significant build
> > time regressions.
> >
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > More measurements in: https://github.com/ClangBuiltLinux/linux/issues/1032
> >
> > Might want:
> > Reported-by: Borislav Petkov <bp@suse.de>
> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > too.
> 
> I find this patch only solves half the problem: it's much faster than
> without the
> patch, but still much slower than the current mainline version. As far as I'm
> concerned, I think the build speed regression compared to mainline is not yet
> acceptable, and we should try harder.
> 
> I have not looked too deeply at it yet, but this is what I found from looking
> at a file in a randconfig build:
> 
> Configuration: see https://pastebin.com/raw/R9erCwNj

So this .config actually has KCSAN enabled. Do you still see the slowdown
with that disabled? Although not ideal, having a longer compiler time when
the compiler is being asked to perform instrumentation doesn't seem like a
show-stopper to me.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200526120245.GB27166%40willie-the-truck.
