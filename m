Return-Path: <clang-built-linux+bncBDV37XP3XYDRBO67WTVAKGQELZPAXOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3938787425
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 10:33:00 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id k15sf761374wrw.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 01:33:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565339580; cv=pass;
        d=google.com; s=arc-20160816;
        b=e4qdQhbs7mgEHn5k5qjMY9aG9OnLu/x9XKUHj5dABGy/olL0rZEzxZ5onicpR01X4+
         o40dHHh6L5+S1pqk8T51hCU4ALe6nyDJo6nneWM+c2yfxydOByzj4bBh4L0y01zmWreJ
         HLOic6PSLTgQg8kC0L8mqcZu96+joQjET4TbWyIJ7qFjTBgf7KCTPv+CH6n68zBy+oka
         nVJ3o2ee73Cqfz15aNwiMQc51eikgKTm+PCYOHWoC/Qik5qjh7kLzURJGa6eiDHnEDTP
         NEVtULeYacQpt0zuljYKJ/ivE+7ExmvEL4Smrq5w/Z3fUEUcxuj1C5AiEc+zTabUJjQe
         eaHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=liVlVpknOmox+GN+hd4z1gWMXHOpltIc2L2BcC6T/2M=;
        b=xARY6mmnAPpJb2nWsxyHE8vQmBy0XhBksF6XTou2GoE3WN/vvzn9rWMqrqi+Al+haI
         +ORlJQyB6OGJbjz3qiQSNeUw7FrFwYgwSRWx3TZIsuLJfvHQSRt+GBYxAJIrgmWQ/au3
         vo/+b2cm+/Ya0leLjv/l+cROnYAvDZVFD1DYz5T3Yj0+Dm+qAPd0zJUaPKw/GOBJ9G3b
         oiHOGBO55Mcdk+5x7J9D/YJZJONx9FE+I4BD4D7fNboBAc8KZ4rtKJ04n6L1Q81IB6lW
         oxpu04Oivzjd0A9iT4r3sD24OtMRQGAIq+bm+Lt7ugBizIaSPYrWFs3wocbftQW00COn
         4zbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=liVlVpknOmox+GN+hd4z1gWMXHOpltIc2L2BcC6T/2M=;
        b=eBinEaiTz16WRKvdWWgp0zaazraF2DL1YGshniH7cabh/bvjXxERxnb00hEDTVoD6A
         swv9V29HXZAuWKzuhzXm50pK+rDL8DvCcVlL/HT1X6LcHmnWB0aDe9GaVhr24k9HVScU
         17IHrGMxvKUgkEq1qPwoNNgLNWWx+t6ibBk2/61jdal7HnfRlWQfMn7TMGqOWXHsCB5U
         ARMn+1chk8D9E2lFxNEpZYqn41pR9feGZJKZOk2yTYekoz6rK+iJdfdxau+WsauEFRzF
         lPQjj9xVeadeVbzTACAaOdl72N5JeVMCosqm2d6RrhDmhZR+s/p0HQgHR9AF6CuCb0sI
         AQlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=liVlVpknOmox+GN+hd4z1gWMXHOpltIc2L2BcC6T/2M=;
        b=HDhHINs2TmrK+V9zNr7Cz5g6W9sieXg7KNujkql5jd8jHjbTCfhOG/4MjlE8wyPEGr
         WSXZgnHEHhP3ekwztpPTuDurOZrZUd34nK5lcX8Grs9hcPlBmuV4x9dqYM0wogRNuOYp
         w6pnohx94qoBrDBnY+PdFpZ7DmcgJTA5doZKxTHAZAsaC+8y0KybWOm6dA+XXmLUo4UF
         iqjHBGeWUL0Zvb2B4kPvW1UzXZg/Xo9/It5AgLrgPj6er4HduLey6CeJ9x0OztvU9o8C
         bU+ENWmnpQKYoZCANnwkT4+vgqkk5e7Nj7/5jgi19jqDvHPIzmCxliZ2K1jXaGiXBpvu
         0Gfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXYZ2JMr4PkuwnCbsekBKE62jlDT3wl3502HJJKSU6jWIOnJJRe
	/5vnFNdw58DuluK6XXKAJ9o=
X-Google-Smtp-Source: APXvYqzmVg7WwmKmsdxZ5PKyVShBStMJz9nscyZQoC9OJn6tJezLn1uykTPh1DUnfV5zSBlJhqvp3g==
X-Received: by 2002:a1c:c5c2:: with SMTP id v185mr9979299wmf.161.1565339579953;
        Fri, 09 Aug 2019 01:32:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7713:: with SMTP id t19ls1787495wmi.0.gmail; Fri, 09 Aug
 2019 01:32:59 -0700 (PDT)
X-Received: by 2002:a1c:1ac2:: with SMTP id a185mr937606wma.96.1565339579374;
        Fri, 09 Aug 2019 01:32:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565339579; cv=none;
        d=google.com; s=arc-20160816;
        b=Qx+jYB1AMm711RJx1c8VLS0cYQ1WAd+xU5KIA++BhBNG9DEhRmEt0NifybyiqbG5Pa
         7RozMEMVvXu6miwIVqT+aBkXQuYBhlvwk7ggkz3a8TpCDxxzFFK04CaKGACNxEFjJ8Ut
         r8iOIhTZnh3fIIX61wDzY0De4a+eDz+MtU3W2GDSBd/R7F3WFP/4gZiTGkevx/5m49I2
         PmYq4IYuZwpIqRbJVrrfMmPrYuJUOc6S/6allwvPHbJ+GjAdMjB9M3Dx6+otsRwGsaFz
         jPHMPO0QJ8j7wSiVwhfj33UHVuv9xbkeWyZJxJFRWMSKsyPVqUCqLPS0dC+od9lcLYc2
         ghSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=B8fQuOtdwiyk3c6tPdyl0uYbLeasb0MTUSOb5REm7AY=;
        b=DDEuEV8UFa68hSnvfnOgGmxHLjP8cRwaRO57M1KiolpHPMwkfQ0HeaFQa1GsLMc4KF
         FCFECCR6BWK4ZRo6Q1VIsSD99fBl+hSRcR79BEOQ2oiEYacQLF2cNnqROGmhG1QZnay6
         2WCKAzXej5MsGbpKgSkB7teh9G+LauQl2B0DP/8QZwb2Jy9HMCI0f2GBJvkBofCpiqtB
         BJxJIOQEm5l7GR3bzfaOZqGPx4+N8GLALAzBfWLZw9nv18TWYjR5NjCHHBOrT6pghljd
         mY+0fJCnj3SNLkEAbox+QDGKyi1j3BP0cBTylOZfdKwX5U0q7yZsXkSG11581kRi82d5
         UtDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id y4si1907888wrp.0.2019.08.09.01.32.58
        for <clang-built-linux@googlegroups.com>;
        Fri, 09 Aug 2019 01:32:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18895344;
	Fri,  9 Aug 2019 01:32:58 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 149613F706;
	Fri,  9 Aug 2019 01:32:56 -0700 (PDT)
Date: Fri, 9 Aug 2019 09:32:51 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Qian Cai <cai@lca.pw>, will@kernel.org, catalin.marinas@arm.com,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Explicitly marking initializer overrides (was "Re: [PATCH]
 arm64/cache: silence -Woverride-init warnings")
Message-ID: <20190809083251.GA48423@lakrids.cambridge.arm.com>
References: <20190808032916.879-1-cai@lca.pw>
 <20190808103808.GC46901@lakrids.cambridge.arm.com>
 <20190808170916.GA32668@archlinux-threadripper>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190808170916.GA32668@archlinux-threadripper>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Thu, Aug 08, 2019 at 10:09:16AM -0700, Nathan Chancellor wrote:
> On Thu, Aug 08, 2019 at 11:38:08AM +0100, Mark Rutland wrote:
> > On Wed, Aug 07, 2019 at 11:29:16PM -0400, Qian Cai wrote:
> > > The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
> > > VIVT I-caches") introduced some compiation warnings from GCC (and
> > > Clang) with -Winitializer-overrides),
> > > 
> > > arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
> > > overwritten [-Woverride-init]
> > > [ICACHE_POLICY_VIPT]  = "VIPT",
> > >                         ^~~~~~
> > > arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
> > > 'icache_policy_str[2]')
> > > arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
> > > overwritten [-Woverride-init]
> > > [ICACHE_POLICY_PIPT]  = "PIPT",
> > >                         ^~~~~~
> > > arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
> > > 'icache_policy_str[3]')
> > > arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
> > > overwritten [-Woverride-init]
> > > [ICACHE_POLICY_VPIPT]  = "VPIPT",
> > >                          ^~~~~~~
> > > arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
> > > 'icache_policy_str[0]')
> > > 
> > > because it initializes icache_policy_str[0 ... 3] twice. Since
> > > arm64 developers are keen to keep the style of initializing a static
> > > array with a non-zero pattern first, just disable those warnings for
> > > both GCC and Clang of this file.
> > > 
> > > Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
> > > Signed-off-by: Qian Cai <cai@lca.pw>
> > 
> > This is _not_ a fix, and should not require backporting to stable trees.
> > 
> > What about all the other instances that we have in mainline?
> > 
> > I really don't think that we need to go down this road; we're just going
> > to end up adding this to every file that happens to include a header
> > using this scheme...
> > 
> > Please just turn this off by default for clang.
> > 
> > If we want to enable this, we need a mechanism to permit overridable
> > assignments as we use range initializers for.
> > 
> > Thanks,
> > Mark.
> > 
> 
> For what it's worth, this is disabled by default for clang in the
> kernel:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/Makefile.extrawarn?h=v5.3-rc3#n69
> 
> It only becomes visible with clang at W=1 because that section doesn't
> get applied. It becomes visible with GCC at W=1 because of -Wextra.

Thanks for clarifying that!

Do you know if there's any existing mechanism that we can use to silence
the warning on a per-assignment basis? Either to say that an assignment
can be overridden, or that the assignment is expected to override an
existing assignment?

If not, who would be able to look at adding a mechanism to clang for
this?

If we could have some attribute or intrinsic that we could wrap like:

struct foo f = {
	.bar __defaultval = <default>,
	.bar = <newval>,		// no warning
	.bar = <anotherval>,		// warning
};

... or:

struct foo f = {
	.bar = <default>,
	.bar __override = <newval>,	// no warning
	.bar = <anotherval>,		// warning
};

... or:
	
	.bar = OVERRIDE(<newval>),	// no warning

... or:
	OVERRIDE(.bar) = <newval>,	// no warning

... then I think it would be possible to make use of the warning
effectively, as we could distinguish intentional overrides from
unintentional ones, and annotating assignments in this way doesn't seem
onerous to me.

Thanks,
Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190809083251.GA48423%40lakrids.cambridge.arm.com.
