Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBX7U2L5QKGQEKEBYMGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB8A27EFDF
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 19:03:29 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id n19sf109680pjt.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 10:03:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601485408; cv=pass;
        d=google.com; s=arc-20160816;
        b=lplYAZRufmILVyc1Bp2hcHexh9m9fmZWPfaxUk5pUQQcDZiiQnjqdRJU9y6oQh3TeC
         AA6enyKNt95RjVwWw13W2IxeqvZ2G4rh1pnHgIdkUInHgs4RiA0HrGbQ7PcTa5TVHK7H
         8/J9DDH00isc8YfPV2o2GsU3dh7P3JNdPqFAMUI+0gYZ1e1DBiCL83qatXTUtaHHCNkz
         btxCX+Dn4+X1fbVVDbNbZe8T+/NOkAEZAXVus4YOkHdIOEUIOUpMik3aITFY9T1gdvKA
         fiFx0bWdWroJdBFaAPLe5TDLUhudN6oXUYzqORrXwtfiX0B3OiQIu2uR8r8wsZi/iQG2
         phpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OZI3wNTlfxnTyn+RmCyXhjXaJLsoVA8hCpYjKzz32ZU=;
        b=PAd47MhoNMuCX0fS0+Q3vslvk89jsYuPnu47IqVz9QHPNU28W1SF9Ggot78gl2xywB
         RiJ2NfISFCttloO1Hna7w29W/2YuMnwKJNINZkh9GmKo1C/Ms0wOFOf7O3GMq/qf2eXB
         rJXwx0wi17zRJtkeu21yMPrnNT9ktahHdyYo+Gm846F818B2SYxB4hwyFVZySlCN0FK0
         S2VN++3J2R1G8pS+yLy89ovszBRH9aOFlt6/UoLQAYOllbvpIVv6/j4xXyQcAOexX+gZ
         kWHuQcP1U2xoMYjj7swEeICf2CUsX3PdxUrgd8vhxiE3ipDZo8QOH1wsnybaxaUl/Rxb
         n6VQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=1KmfELOd;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OZI3wNTlfxnTyn+RmCyXhjXaJLsoVA8hCpYjKzz32ZU=;
        b=Rh7m1jnyb1K2nDulw7qOqD1Kv5sbuURB+AJ2fjhFG2L0Hsov2UupJRz+eX7yfP3XXV
         PlYjr4fPjj5O8CwjoBuo2IN9FGb9dxtLRDEAvxs1egkHtGnoRqTI8sRUpEck985nqS6i
         VcqzavHZqXoyVOOkZej0cBlBQh4t8DR/Vr+aM0uthgM0a1dqx3XxfmQ19HBDZplGGUWU
         0QrgXbmbumQKQrnYsLOuS2sei/7wMHGF40ojYPyxB1q5och9ar2/il92ZthgLkePsQoe
         2riGAKbT/yjFunK0VLu3S9ZOv9xCXhoKwcTWDUcQeTle8RcakAtQP6Byl7VUgZzKSMjz
         +/xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OZI3wNTlfxnTyn+RmCyXhjXaJLsoVA8hCpYjKzz32ZU=;
        b=Rsoy3KGcH2f4UkjhSeVLz+DiiXCh3mtnBvSQ9XdT+7bSM4Fz68UkCFR0ESNVB++Lq/
         pBsj544KqnqWvnGQ/swg6TX9/ULoHUGYuOxhENsAOXW5SgWlIayLnOxm/9NiVstxV1wC
         C0Lq5XNgly2KymhDNml5jKwBaoshiBAnfli/Fz9L9SqP1XsPMVb4eSHpjWwEjRtBuFHJ
         jKX3TbL3Y6zxHda7h0WmTvla/Rv3uDj9zLwAcsKVOA0N/dhH/BBzj7x9TQkynJiwFUte
         o+sqtlErmHGK12n7+xjlYvAU/i2IdUNw9ngu2xkzf+RH/SywXYGGa6GBrN6AzN25tOdV
         T85Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hcmAKUUVtiLOP0cpqu1Qke+kZwBTX7T9yvp5mPhEqUAKC8k9N
	i4Gn3Psnxr0AkBBT32XXI6s=
X-Google-Smtp-Source: ABdhPJwwGqP1vqtQgR3l0gAW6Ll3H2UEe6DrJvckj+4o/ocVXYbqF2RQnHdFGvw8v1DRaIqivlJDQg==
X-Received: by 2002:a63:4d48:: with SMTP id n8mr2989540pgl.70.1601485407814;
        Wed, 30 Sep 2020 10:03:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:123:: with SMTP id 32ls1312388plb.1.gmail; Wed, 30
 Sep 2020 10:03:27 -0700 (PDT)
X-Received: by 2002:a17:902:ec02:b029:d1:fc2b:fe95 with SMTP id l2-20020a170902ec02b02900d1fc2bfe95mr3634947pld.79.1601485407261;
        Wed, 30 Sep 2020 10:03:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601485407; cv=none;
        d=google.com; s=arc-20160816;
        b=R28k82e3adC8duWCdHnO5PNfbDdBzqUuzPu2XvZm0LLddVArz/xcEXDtSe5VmOrW6q
         A/n5PAAGdy1uDlB6mDoVmFc6XDPrbA1h9WxDsz5doWfp5i+OBIDhwpGnfeow9ufKpVmi
         ggNqqbmEtZ8BdxWEJTA5bWiZ8GCbEpiqi6nv2CWTfVm1jkaCgCOlYChnTQOGbMR1EZLS
         5HYv7h2chubekRGVjQHf4NsLM/w1q8DBBayvR6Y0aOW/ipzhckn20iF4NVXkuWLqY7Xr
         /X1lylmKxTHVAhTu/gEKNsjQzYAVC61FyOG5aNRMW5HaLPsu65HUmeGeVlgS9ja4YA6n
         P49A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MMthncIuRiOfaiEZfDxlAanpq7cwXkc95Eu54otq0Iw=;
        b=w3ll4bWdSawt5+WGWXUAhK9CJI3eAuc7xXpXVPaF8yMGbzLqri+f9iKsbdzuH8X9E5
         fJGwR0ku0AVjrRKCpYZnBEnvaBLfrsWWcbA9i6awAsfwiNjAEu/x/EJDYbp7ViVjspDs
         qTohelijd/WmDbe97fVyRScXRImk3DdoV5mYpGkwh4/DaNH/nIcKzrESNS6EUidM80Lt
         x7N58MAC2A9uxTzy+E0QPEUdHB3d4SZWZgbi/8vo2jATju3mHWSD4I2izeRW6sM7Vnud
         JUuAfN4Lnnm4BZ8TDzf+ThXpwzS7Xx2HA3sfRJsvp3xENPITaz8Rq3TrWtC5yFDlZlSq
         XfLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=1KmfELOd;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id c4si155382plz.2.2020.09.30.10.03.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 10:03:27 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNfVf-0004BU-Rq; Wed, 30 Sep 2020 17:03:20 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 17B9B301179;
	Wed, 30 Sep 2020 19:03:17 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 02B4A20115B0E; Wed, 30 Sep 2020 19:03:16 +0200 (CEST)
Date: Wed, 30 Sep 2020 19:03:16 +0200
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
Message-ID: <20200930170316.GB2628@hirez.programming.kicks-ass.net>
References: <20200928124457.27289-1-lukas.bulwahn@gmail.com>
 <20200929071211.GJ2628@hirez.programming.kicks-ass.net>
 <20200929083709.GC2651@hirez.programming.kicks-ass.net>
 <87eemji887.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87eemji887.fsf@nanos.tec.linutronix.de>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=1KmfELOd;
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

On Wed, Sep 30, 2020 at 05:40:08PM +0200, Thomas Gleixner wrote:
> On Tue, Sep 29 2020 at 10:37, Peter Zijlstra wrote:
> > Here, I fixed it..
> 
> Well, no. What Balbir is trying to do here is to establish whether a
> task runs on a !SMT core. sched_smt_active() is system wide, but their
> setup is to have a bunch of SMT enabled cores and cores where SMT is off
> because the sibling is offlined. They affine these processes to non SMT
> cores and the check there validates that before it enabled that flush
> thingy.

Yes, I see that it does that. But it's still complete shit.

> Of course this is best effort voodoo because if all CPUs in the mask are
> offlined then the task is moved to a SMT enabled one where L1D flush is
> useless. Though offlining their workhorse CPUs is probably not the daily
> business for obvious raisins.

Not only hotplug, you can trivially change the affinity after this
check.

Also, that preempt_disable() in there doesn't actually do anything.
Worse, preempt_disable(); for_each_cpu(); is an anti-pattern. It mixes
static_cpu_has() and boot_cpu_has() in the same bloody condition and has
a pointless ret variable.

It's shoddy code, that only works if you align the planets right. We
really shouldn't provide interfaces that are this bad.

It's correct operation is only by accident.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200930170316.GB2628%40hirez.programming.kicks-ass.net.
