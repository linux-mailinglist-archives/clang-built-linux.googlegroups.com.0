Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBKMH4P7QKGQE54JRETY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 9956D2EF97D
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 21:42:18 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id q13sf9123933lfd.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 12:42:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610138538; cv=pass;
        d=google.com; s=arc-20160816;
        b=C/Hc5kEPlyN3d8iCHtgbIdUhweNXgRZDyrkDhw6S+nfDshwwt8bz2FtIaWRBiAFL0X
         9bRaYu3iKAI5RugNqTNfLG5G+F+Z2rXwRENVmNZi7C3mxAtVFIv8OUtLS2bZBvems6ij
         HQo/hImSDdFYWpKe185KF9r2LqG+dZCnieUTJVYBorFUbQXpoGRQBTbWEWT+vdjqVTFQ
         uXmoLst9iARzQg0OUkW4WC22yTI5VdYeR95ledwJePOY7mhkWSn5roemX+lJ3v33Ff1P
         ZYAugtxxcyMzzABZrVTJlsRTrKJIVv+zDzYTleSIymO8UO/j9VRpzkn8g8/03f/3Rurt
         53Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1l0+rPyNA/sgGbLAN1H9dqSt2r8rDLcIpcvxnBRC7rI=;
        b=jHEPZ4JLH4YeNOvgEFcdNH8E3O5+jN6lsmE4aa7sD1Bol9EvmKyGKVlru3QopI+tSD
         puLqgRl8URwVk1Ilv+bM/CqflowkLXVoA1IQgUNh/Xi1DP+A2AB/IDQe4QBqHTWOuAWe
         juYvLFtII0+R6/yIsAz/a4tVOkXo6RsWszgNPcRUfDp6pUNHJsAVw9z2B8Hm+qmgBQGY
         30aTwrbHfkw9pR14y50qhYS2PhnwAw0fAm6Yj/TciR92mHx1Beb8J3nwUX3t9oIrJanY
         47nTjDj03hFxx2S3/6/w4kgRhCLuNdEjYNQkyjup+37wysYwusk04cMmjocMCJsgBc1P
         d+SQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=HrVyzxCB;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1l0+rPyNA/sgGbLAN1H9dqSt2r8rDLcIpcvxnBRC7rI=;
        b=lvMU3bh+HHvm8Uzp49o0OOWAgyCUKAeBRU64FSH8ymfPB2AEj+NCwDIjX7nFvVhLnR
         swQbp2jC8OzC10DMkmA7mfG2xzvUfhTTeGP0IDkL/AQzIEZ/dz6v0zK7LAP2hXhjNZRQ
         SVmFnQezvW885o5rgcy2iBU1FxYV6mPpNXP+mVTaUqTayx6KDdKCfGEb34EES6jaF7Vo
         1/eNVo239lj5IpLwYqgQs9iz/MI1JYA5IhqUIezaiXX/Ijbi50x6tiitwS8izvH8INtX
         WnE1YSblcrj/DqGDtRbvMbkcua3ZESI4aPJHm3LaAR990kk6lN8MEbq5Lv5rJHlArlgc
         N7sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1l0+rPyNA/sgGbLAN1H9dqSt2r8rDLcIpcvxnBRC7rI=;
        b=P2+JZV0p/Kjo9dezqy5yr4U8beCoOwYKxugXo5ScE/fuasIdyVfnRy2Mq0NCdJ6KYi
         0J3fcuCcHVQvvdhAnMyoA0NV1JeuuODz/KHCV3WLyYyr+EvusjtkOzRP/CwOxMTg0C2C
         17VFPo8mkOxjAdROnuKyxsROdhpYgnrRQpJcBk6b24WuyC7US4BiIKeMO1vczfQOUd6S
         JTbCOENG3H+VxyLKwMbajoBGEqyFKD3ybOx0zWB5dqLgPyVnzD11biXvXVmZQ2HKeGiY
         qn+TVSnEIwvcjV/vpthEjXu5q8SK26EnqWH6WH5Lhzbbdb0vkNfY5rocYeJ1Mrj6F+Ra
         v5jQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nNDIh3NK092ZAH3omC6U7rFbOz1/hT3tg575GiYNXz1FrQi+z
	VhVPPaOuJsXAEaAC4QLZv4E=
X-Google-Smtp-Source: ABdhPJzY10Qi2GU/r4hS86YI9tWvCTXKkR/VZou/vFwYX5F1y9v/W6ge57k04GIsfA6cb7tFm78bTw==
X-Received: by 2002:a2e:9dc3:: with SMTP id x3mr2347174ljj.326.1610138538148;
        Fri, 08 Jan 2021 12:42:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7d0d:: with SMTP id y13ls2011515ljc.9.gmail; Fri, 08 Jan
 2021 12:42:17 -0800 (PST)
X-Received: by 2002:a05:651c:112c:: with SMTP id e12mr2367755ljo.66.1610138537173;
        Fri, 08 Jan 2021 12:42:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610138537; cv=none;
        d=google.com; s=arc-20160816;
        b=B7VOHUmZ2vKtrgTLu/NzFyh0GmJVxdJ1a17ZVypKcPQTzewRpBgs71oLv2ZzXl+buB
         6pEQP/8X/JE8GNvpNbqKfy6Beq+ezACe2/RjhbFe2t95VHI9HhMgkxHtlALxTXthum3Q
         3rjfFGhEzK2XeynPd5f+F+wRQ/QdjsdyOFDkPF9ukv3SPl1hDBSWZONx1sgSG0aNLcQ2
         8vr4HuJJ4/9n96GVBz1/CQVQUhdAaTfu4sbuFuhzTPdmggpibjSGPhFZySrgA91Js5vC
         JSp+xqPKGPq4JyJEHa9mPuPXOPMpxoi3BtG0UMs7W6jI3V2Z5ko7Md5w4cTNDwdNXfoF
         wbXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Fh1FiaPgximaUf/jTCpsygk/6dDJoGnbhcrl2nWi8C8=;
        b=zLO/sSBPhAuKyCiqJSD0w1OOSpbtf111m+eyzrq+6EY6BFG2VKuJklFAt/JZhQB7zj
         2ATw7JYYbXnrBKku0ei1kmxjeDXD6JrGWD3XLStDYoc1a2xNsCfOdbYxCJAAUIKzA7Ix
         aguDxd5x9GgHaeic60Sh+Vg9SmcuR4IF+WQ4ggrBPsHNYjERTAoAMcyY0QaLbVqJwcCQ
         Ib0AIfx/l2LAZIPmOQ8Jt9e+1RJBxRtyPOQyubDHgGjbW8lwymBGw9bHBeVLoUHn16Si
         d0Y9cR7sLqLCruwXiQjmFYaryAH7hwQqWrLWwjhWpkiIWv9/O7Z7uhuGKL7JnKtwwr8A
         TklA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=HrVyzxCB;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id 70si472717lfo.4.2021.01.08.12.42.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 12:42:16 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1kxyY7-0003SS-Gg; Fri, 08 Jan 2021 20:40:35 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 01D3F305C10;
	Fri,  8 Jan 2021 21:39:53 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id C2C362C8F2DAA; Fri,  8 Jan 2021 21:39:53 +0100 (CET)
Date: Fri, 8 Jan 2021 21:39:53 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-arch@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: make atomic helpers __always_inline
Message-ID: <X/jDGbwDNcVrZdDJ@hirez.programming.kicks-ass.net>
References: <20210108092024.4034860-1-arnd@kernel.org>
 <20210108093258.GB4031@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210108093258.GB4031@willie-the-truck>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=HrVyzxCB;
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

On Fri, Jan 08, 2021 at 09:32:58AM +0000, Will Deacon wrote:
> Hi Arnd,
> 
> On Fri, Jan 08, 2021 at 10:19:56AM +0100, Arnd Bergmann wrote:
> > From: Arnd Bergmann <arnd@arndb.de>
> > 
> > With UBSAN enabled and building with clang, there are occasionally
> > warnings like
> > 
> > WARNING: modpost: vmlinux.o(.text+0xc533ec): Section mismatch in reference from the function arch_atomic64_or() to the variable .init.data:numa_nodes_parsed
> > The function arch_atomic64_or() references
> > the variable __initdata numa_nodes_parsed.
> > This is often because arch_atomic64_or lacks a __initdata
> > annotation or the annotation of numa_nodes_parsed is wrong.
> > 
> > for functions that end up not being inlined as intended but operating
> > on __initdata variables. Mark these as __always_inline, along with
> > the corresponding asm-generic wrappers.
> 
> Hmm, I don't fully grok this. Why does it matter if a non '__init' function
> is called with a pointer to some '__initdata'? Or is the reference coming
> from somewhere else? (where?).

FWIW the x86 atomics are __always_inline in part due to the noinstr
crud, which I imagine resulted in much the same 'fun'.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X/jDGbwDNcVrZdDJ%40hirez.programming.kicks-ass.net.
