Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBG6O2H3QKGQEJSZ73OY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 71881209B93
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 10:58:04 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id b9sf3417272lfq.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 01:58:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593075484; cv=pass;
        d=google.com; s=arc-20160816;
        b=CkWkVUeDJSZvchPG7Gbf25MHhIC5rqDFfNGYkqe9dGR9+bCyKNYgb86h9TQjZv2rpP
         d6n7XX72NuscNbcBu7z+C1748bZx06DT/AocYe7T2Lmr3w/sjqmVvcQB9tLkg62EUgk+
         3PZSJuc2O8QJoSB54WNVgxLvE2rohowaCOX7UkWiYbmtVwodRWmWcNK40xFhAWAZWBtz
         HCYXhqA17xEA1vJarsPRrumWSw2DMVn0dv107+I6nbpCgegBZo9yJaYGGtxfX+YGLEUK
         AxOvqxkZ2LwASnWex4xTOTmQaesx0tdKZqu1vO+VbPBY0Aaf6uqpP/R8ZjjDhS/E4wB9
         Gejw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PZtWOxsN9mXmtvDbbQkJ5F8lkKQz8//ox6GJ38gQh9E=;
        b=yaCIbEvy132jjR6+p0QipMyZnYuUg27salROzIaLn0qQefHC6C8s21M9N9G7ofRNMK
         e1ZWzINZw62bZW0ekuuLa1WUXpg2sd1E/eqmNo1WlmMqbLv15F1crZUr1gcRRtTtk0wB
         C9wjgeSt7O98Z2tzqtPUu5YWjFu7KAWjpKvQz+Gob1PxPBaFudIdGpEE1mxR6Uy24Udw
         tQ1A05em3Dyfm4osuo4KYRFRgyUDLxmwneRiu+FdGxkkVfnOCyXoWND6JMpeP9N/+Kvd
         4K8jCeMnydIn2LTELmNhUdMl3i2WXOOWBGnaSSyNcLeHAJNiIWio4907RvqFcy6E6XEi
         Z6Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=dhVJmH7i;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PZtWOxsN9mXmtvDbbQkJ5F8lkKQz8//ox6GJ38gQh9E=;
        b=T+3MOxeNdk+JNjdRVDz8nhyhXc3BnUyhj0b2OFIdyFX68vzShPczmFzd2y0xpii2+x
         RWFMsTL8ZFssA+bUA29cFWDcHG6FphciIw1WmRZOJRFimktdvGsH+snL2FVQe12VfzV7
         gAm0y+tOf/57GCUAusUw8J/NginbV6XNsYdqE2q8KUdzJqfnp4i1Y1vzuezEDCqKGsoG
         NCci6tkn+uY8UpMa/hTzDuPHrsJJwUWLH7M9owcL21ztGFRuSxUW51jMXSBEozdiISna
         xCHVLGsn8/4Lz3t/qHUjuL6/BUjg5qarcn9U13J5RwvgmNdZv45Qn0dDnOsIVBD1PnaZ
         nwxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PZtWOxsN9mXmtvDbbQkJ5F8lkKQz8//ox6GJ38gQh9E=;
        b=T45Y6QPEfXH9yF16DQqlgw7AdGGlFFKH2qzbNIFcKcRQNUBdDlU0/ATYZt9BxCwAHZ
         EkLrCSou/p3Fg4nQ3tX8JCb/RV1fPCrt4PMKKY1L7MoeREYwvbiHH/U7NFTTY4PkSnBs
         xqD/YVy818+3VsNaHYIcubbq0osNKmpcAuaG+vqgE6RPygTMXkuCewaDejCOP1XZlVKg
         0oODtFyvfcaHiGsdQNA+qGVInLK+2FEHVIog4xiMRuD88nzukphLYCWeJZiGVoxxFg54
         7L7vAJK33u3dhvbOWn53iWM3deM1scdOyls8Upi9/q9h0wDAXQuJD49Lf99ZT0q8NxXe
         rFtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yhuvw87cOgoinHuD8ahyMH2hggDkqNDiPdpTFVTFwII25YioK
	9RlLEztB38njdr3qWqbFTP4=
X-Google-Smtp-Source: ABdhPJw+58CFBM3FnnQzspAnSoJAnoFxirUkBP6KWZufCCclqhoxUsUE0qIN2f7p9d7pu09VzMRQmQ==
X-Received: by 2002:a2e:9c3:: with SMTP id 186mr596082ljj.293.1593075483901;
        Thu, 25 Jun 2020 01:58:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:be95:: with SMTP id o143ls1431632lff.0.gmail; Thu, 25
 Jun 2020 01:58:03 -0700 (PDT)
X-Received: by 2002:a19:4285:: with SMTP id p127mr16876347lfa.74.1593075483247;
        Thu, 25 Jun 2020 01:58:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593075483; cv=none;
        d=google.com; s=arc-20160816;
        b=oYn4Ne8ZWAEueN7SLF6mp1LOXVNpdnWgN8ht6nWBpMQT073AMA/OcSRl66LzB3bjW7
         R+4OVNRhlPC4dQlDE+ujbYQpLbo885hgZxUweqQ48OmD2zSWpz8HT5AlARd99wDVXTBw
         xN4FzERHG2lEDI3+Ctq1iIqhMKibXwcmg0oTlT8zM6LW8kk0bzKJSmDAyLeVkM6lpNx0
         8pfg73ixLZtyZFxfkG+7DUBpH5Bb0Lra2Lkj7ghgE+KoIadNfa78OuK7SQnv4wgjOSRK
         O90sBBLDtR0zEuyCGvpxrGEwTZWhcH1pyuPL/rtBF87+rUch4HNE4X4akv6wWGqvoYIH
         JLaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oaHjYuJa/3zuClzIH+/g+fhPoe4mw4jvJXlUfLpBRwo=;
        b=HACbclxBERn8xc9VDxs4XWNEiZKgekRR09qR38L9QG2jj8pV8yD49uYB0sz6fM7JWf
         SIfFPTDP87T+vcdHyVTa2lDLrdZxegeBGgsZjsaZ4L+VmKtgxw2Ga20YoAgooodlYK65
         e+lJypxrkGxnMIvq5gzu0nTnoncb8UKmZUr0Pr5cQue3gq/sfaIljoaPM3ozX95UxHcd
         n3K8o+sA4rFaKH4/xOTcvaAD9jrbDQnv62S9Tx0yeqp39osMQAxwjS5FB9Cu/4wneEht
         a5DaI7zUM7YNtTOQZStDKHhc7z/Cp2itU5ABBUsLw4GTjaceCPCv9AR/lwmTvHvqDKXC
         rW4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=dhVJmH7i;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id j14si1124994lji.8.2020.06.25.01.57.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 01:57:58 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joNhc-0003bQ-FK; Thu, 25 Jun 2020 08:57:48 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id BE9DA3003E5;
	Thu, 25 Jun 2020 10:57:45 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id AA33E2010773D; Thu, 25 Jun 2020 10:57:45 +0200 (CEST)
Date: Thu, 25 Jun 2020 10:57:45 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200625085745.GD117543@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624211540.GS4817@hirez.programming.kicks-ass.net>
 <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
 <20200625080313.GY4817@hirez.programming.kicks-ass.net>
 <20200625082433.GC117543@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200625082433.GC117543@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=dhVJmH7i;
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

On Thu, Jun 25, 2020 at 10:24:33AM +0200, Peter Zijlstra wrote:
> On Thu, Jun 25, 2020 at 10:03:13AM +0200, Peter Zijlstra wrote:

> > I'm sure Will will respond, but the basic issue is the trainwreck C11
> > made of dependent loads.
> > 
> > Anyway, here's a link to the last time this came up:
> > 
> >   https://lore.kernel.org/linux-arm-kernel/20171116174830.GX3624@linux.vnet.ibm.com/
> 
> Another good read:
> 
>   https://lore.kernel.org/lkml/20150520005510.GA23559@linux.vnet.ibm.com/
> 
> and having (partially) re-read that, I now worry intensily about things
> like latch_tree_find(), cyc2ns_read_begin, __ktime_get_fast_ns().
> 
> It looks like kernel/time/sched_clock.c uses raw_read_seqcount() which
> deviates from the above patterns by, for some reason, using a primitive
> that includes an extra smp_rmb().
> 
> And this is just the few things I could remember off the top of my head,
> who knows what else is out there.

As an example, let us consider __ktime_get_fast_ns(), the critical bit
is:

		seq = raw_read_seqcount_latch(&tkf->seq);
		tkr = tkf->base + (seq & 0x01);
		now = tkr->base;

And we hard rely on that being a dependent load, so:

  LOAD	seq, (tkf->seq)
  LOAD  tkr, tkf->base
  AND   seq, 1
  MUL   seq, sizeof(tk_read_base)
  ADD	tkr, seq
  LOAD  now, (tkr->base)

Such that we obtain 'now' as a direct dependency on 'seq'. This ensures
the loads are ordered.

A compiler can wreck this by translating it into something like:

  LOAD	seq, (tkf->seq)
  LOAD  tkr, tkf->base
  AND   seq, 1
  CMP	seq, 0
  JE	1f
  ADD	tkr, sizeof(tk_read_base)
1:
  LOAD  now, (tkr->base)

Because now the machine can speculate and load now before seq, breaking
the ordering.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625085745.GD117543%40hirez.programming.kicks-ass.net.
