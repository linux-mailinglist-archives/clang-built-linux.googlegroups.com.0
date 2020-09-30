Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBFNA2P5QKGQENY3CBDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id DCCE027F163
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 20:36:06 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id x7sf1456602plm.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 11:36:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601490965; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yn1t+H7CLWwgcBBxv8RVUFkKjWNfSjQfPgnM/tBdS4FrDGxGyS9hsUwNjoPNerIr0/
         xnGemJQtrLsuuUX18Kf7pZBXrkTmHzN3fdaXlToYXI2M3tEsUaHkM95VAu+7sVpth6h6
         42aLefJCcu/70AyiR16vehzzcdk/InVqIxBvGTVg/auRdG/hG6MnOjUCl4lp7dp1ow2a
         VaT45AInKUGqVCBy7LH7xgDVXw4DHAXht9uJyrH/6oDayzeCi6LnKR+74rZBKksB1UUU
         zPbKakyy4lrKuTtzNWaJbL8yQ0ZOHzKC18DSxFeEcMRu4Ve9sn5kgwyIhquG30WTILn+
         q1jQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=penEFGAVmXoL0gKwq0fHzJ7d5LxV4SgI9vJeWk4yJII=;
        b=IanfKpn3jGFO6RJfYWifiH6HKOhWSmgdlCq0D3BI/Pkv2cje2g7+PKlsvQJv/2FBR/
         zQwScrtGwn5VaaAkZG1PbH2hw+Y2Wsl+xTvmpPTHY+oD5b4GasYQj8od/NRZ5x1+6fjM
         XYpMkIxs+UwGYpPX7Hc14PSag8Nf5llnRSDOcjg6BUxwhRPdEub7T/T14yM4cBoEcc3d
         YPXtIn7cC07cE94hOvi18/nMAng9Jvwlkp1TWy2c/yRiZfTT+KuXAHenvRT2AEgTZB/f
         q39pXsvjJqCE29de+ZbqCAZPVUSis3SeW7bxXEWXCLNNNagFMFdcyAQdFYQCLqxAfzN0
         yF3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=RGcasAAl;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=penEFGAVmXoL0gKwq0fHzJ7d5LxV4SgI9vJeWk4yJII=;
        b=Qsp5pJCfgETKNDDq8Upg0A1yK28OFhTXpRW1stoFtKnY9GbdZsu+Kxq7ml0x/G1vda
         yB2BSc1D05c75D6MTXWs54SQ80rpVZAnkGDmIpm34lqsRBRewCYbLcdJfqMXbBHkVRja
         XRXtB5NjN20vbqmeb58EmqWzj5K7ZrO6Sz0eQ580g1HYL6EJB9clHWeFibSmmfjw+Cdt
         Yz7fHOjZ5reo3DIFd83BgxJF90EXFDKXEwpOTFsQcaoN/cCLgL0QeK8tdUkUIhAPzNG6
         0GtvZ2yDr2PDIjAwksxZQH8usG8jqrrTQMkKzF3RKOR2HNbTk5k0X5QcghYx7xRmiGOr
         HOVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=penEFGAVmXoL0gKwq0fHzJ7d5LxV4SgI9vJeWk4yJII=;
        b=kpfi1oOpFtX2sSkXXxCqGEcX7qqTwdMCOvcdogAA73lRBZiMGF0GHaSrk5XLzGn+9p
         C65EPs2YC9GmEg4UzZEfmq3s+x48uQu8tM4qBC9G/L1t4KwR/R5obAdDDlO/xzDG4dG7
         Mss6kx4hO1sy+5Xbj/3c5Xaf3fMCCpkNOxJe9zL6t+sJqwzGdWibPxGDjxrzCG6a0F4G
         C1cpmjq9DWY0H4qwtSlG0g5NRj4PsE7/BGsxqauaF7kZoay4W28X3ycYroQtPXVav8RO
         xyR6TLupcYh5gd6qfPavGgwRrIygzB+/oxfPHkTEWIy99+cvEapLv9hEssLOBWGRocv2
         cavw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PzcUFDi3wtv99R0OCFfs+jybaTdnMLMM2i9tIX5XBYGcBPUYs
	i7IHrfFlbzP+8Ej/NfkM4go=
X-Google-Smtp-Source: ABdhPJyJqCzFG+DT17HgwQskg1i/T5kUVbMxtjijwTz1eAKekycYDsdVoEat9TBUO+aYQcDjBEdEdg==
X-Received: by 2002:a63:f342:: with SMTP id t2mr3203233pgj.313.1601490965603;
        Wed, 30 Sep 2020 11:36:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e303:: with SMTP id x3ls1181002pjy.2.gmail; Wed, 30
 Sep 2020 11:36:05 -0700 (PDT)
X-Received: by 2002:a17:902:c083:b029:d2:562f:d0a5 with SMTP id j3-20020a170902c083b02900d2562fd0a5mr3743737pld.33.1601490965037;
        Wed, 30 Sep 2020 11:36:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601490965; cv=none;
        d=google.com; s=arc-20160816;
        b=LnVnyLW8tUzLmaEPdkGqK67N5GV1fG6+E6kmcFqJHTdih+vUKAURbTEHj+QHIWh1I3
         uA5xx3m0D2ZK0Pq1E5xf5L+xm4TyOeLztAzlt4u2F6sSlh9igLF46FK3+k9yKjMFY8B+
         sTKXlfSFyKYvO/H3jIIvbev2qh8uV2vab1giGAUAuNCnhT+Jn6xsNx2Rc510WBN0McOK
         wlq6ak4JcmgNQh9YZP/JrXUXgi5tpbuTmr4+Wth6T4TCJ5ygJI08COYl4u0TLbFNl9k3
         oHkoe1Mch5dtDrixeoytgxVWOFzt4o7Q1feSrzfUxjsPwnxsF8ukrV4yGoudA3DWRlOJ
         omwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=u8cc2kComrEkpimrNXVdUMg+LW293Fw3FtvuzMDNHPI=;
        b=sHLEBJiERHpiJkax8WGBP4vUQ89OWsYReDa8U3lBaK2AhiWFjtt4FWgvpmTwB98qxY
         Yw2epUcKn/O3SMvTfrAd0kiy8ffOTOYbDlSmpAOMfg7YdDeb1NP77YgdyFBg/shKOpIF
         rVSVYfxZxdnfN5JmXof3Nk7tsgKsvHTLsz6SwRGwAJzSD9p20mwSDUGbmjEjOYKwWM5U
         CLePzHuk6l5U1hUOhAS2rueleKkfRz6c13gVz3+e3wi8RGF7TwEO1E8iSr336CyBWqSe
         2/cPuGWb3bpv6ViKoPyjjdqi99Ssh7LTz/OdJNzgRIxZFnkhVz26TIj6fyCgakUfGV6f
         7vDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=RGcasAAl;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id j16si158045pgj.1.2020.09.30.11.36.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 11:36:04 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNgxI-0003Vp-Am; Wed, 30 Sep 2020 18:35:56 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 8B5AC301179;
	Wed, 30 Sep 2020 20:35:52 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 6DC5920244EC3; Wed, 30 Sep 2020 20:35:52 +0200 (CEST)
Date: Wed, 30 Sep 2020 20:35:52 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Balbir Singh <sblbir@amazon.com>,
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
Message-ID: <20200930183552.GG2628@hirez.programming.kicks-ass.net>
References: <20200928124457.27289-1-lukas.bulwahn@gmail.com>
 <20200929071211.GJ2628@hirez.programming.kicks-ass.net>
 <20200929083709.GC2651@hirez.programming.kicks-ass.net>
 <87eemji887.fsf@nanos.tec.linutronix.de>
 <20200930170316.GB2628@hirez.programming.kicks-ass.net>
 <87blhni1pg.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87blhni1pg.fsf@nanos.tec.linutronix.de>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=RGcasAAl;
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

On Wed, Sep 30, 2020 at 08:00:59PM +0200, Thomas Gleixner wrote:
> On Wed, Sep 30 2020 at 19:03, Peter Zijlstra wrote:
> > On Wed, Sep 30, 2020 at 05:40:08PM +0200, Thomas Gleixner wrote:
> > Also, that preempt_disable() in there doesn't actually do anything.
> > Worse, preempt_disable(); for_each_cpu(); is an anti-pattern. It mixes
> > static_cpu_has() and boot_cpu_has() in the same bloody condition and has
> > a pointless ret variable.

Also, I forgot to add, it accesses ->cpus_mask without the proper
locking, so it could be reading intermediate state from whatever cpumask
operation that's in progress.

> I absolutely agree and I really missed it when looking at it before
> merging. cpus_read_lock()/unlock() is the right thing to do if at all.
> 
> > It's shoddy code, that only works if you align the planets right. We
> > really shouldn't provide interfaces that are this bad.
> >
> > It's correct operation is only by accident.
> 
> True :(
> 
> I understand Balbirs problem and it makes some sense to provide a
> solution. We can:
> 
>     1) reject set_affinity() if the task has that flush muck enabled
>        and user space tries to move it to a SMT enabled core
> 
>     2) disable the muck if if detects that it is runs on a SMT enabled
>        core suddenly (hotplug says hello)
> 
>        This one is nasty because there is no feedback to user space
>        about the wreckage.

That's and, right, not or. because 1) deals with sched_setffinity()
and 2) deals wit hotplug.

Now 1) requires an arch hook in sched_setaffinity(), something I'm not
keen on providing, once we provide it, who knows what strange and
wonderful things archs will dream up.

And 2) also happens on hot-un-plug, when the task's affinity gets
forced because it became empty. No user feedback there either, and
information is lost.


I suppose we can do 2) but send a signal. That would cover all cases and
keep it in arch code. But yes, that's pretty terrible too.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200930183552.GG2628%40hirez.programming.kicks-ass.net.
