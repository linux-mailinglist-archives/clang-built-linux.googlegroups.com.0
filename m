Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBRUL573QKGQEZCF7Z2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BF1210054
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 01:07:51 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id x2sf5587622ljh.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 16:07:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593558470; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ivGChReQEDSOVFLwnBHcxTaC21LC6qjF1m/dKVaktzRIDP/ZLgrFgjpgXBvDdOT+s
         b/z8egMkJrrIGtqiwgjY2UywbGuEggE+VN/2Tew4GCODVi0lc7pF1E77CiBVkWkvuLL1
         UxVJv7k6cVeZ9i/xnuLkBtaRyV6iOxIqt30fHu5TAOS+tyHaw5PtRnsKOhjzJTpg3lNp
         4u427LnaH/jOClko7cCn0ecudpApX+JpHqO9LZn2rogEYZVreWt0TcX8p1zcjb7tu1EZ
         IsbHbgocoFkxpHFk2MDwcy3N2Rgb1+WIbG/hW33Mj+cLlkga52VMN2PqfZHFQujLBAav
         4jig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ENUTLVoE0mTFxqKYXVocA9OOlM6zOEolbCcxyGnz/Ps=;
        b=NIbbrzN5hYoYxlhii4/ohArg1/Yh49E6TCYHC1Ft1hO219tPiO2GH0mTex9hbdRVVX
         RLYHNqHCZVZbItsutZJAS3IxAZ8XoxNXfcPW6+39CfDcdfj4Lt+TEXuvLjsUX6UzI/Et
         DCtAi2PU+2AncmCM5B8UYbzrLVQk7bZ7esGn8TjPdUGxnKU88Z6MSe+/xOqdUmRdYx6k
         EFoUbU4x6IgXJeTH0qnApnRm8hMtB+ZwBrRIjsvImHoLCGww3IPffMfgcmgTkLlMLleH
         cmXa0nzkv5vUW3MuIlUxNZ4VxGaKdCJSgVGR4PmMlYsAWYfFpXEXZJE1dJFhhqQVULF8
         cENw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p1ZTo7sq;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ENUTLVoE0mTFxqKYXVocA9OOlM6zOEolbCcxyGnz/Ps=;
        b=DvILfX5DZrTSJwXhYlnoHFEeZB+HZENkiF65j4YjNLPcMYMZ+NnMp8zq6dF5yUwdkI
         g2yzhiqkE5s98VGeXRfjSt/FDR9nNVfBarz7KUIXrNeF7zzfNbX+AmefFEzmkEF3VyKw
         ZOZJ0c7V81KX5LsPi/LaGUPd6O9vTDYS70ghbo6ToV+1iXX5bW2zx2F6y7Nc123FC48l
         4kAhJ9pTa2W/LbQmkxaEeCpi1pmecpv3uq+FqB+yVAT+0FRTEF0epAA+S9pMyhhgvTeT
         ipQhx8nCy6OnhuXVNaP2PlExkn9t16PdHMxBg2XRlmFHLBuptfl9fRUcohyYBQL37PrI
         yxxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ENUTLVoE0mTFxqKYXVocA9OOlM6zOEolbCcxyGnz/Ps=;
        b=A755FJPPm8ssqd9IIInzu6FizE/WAcXD2hhyqfRH9GpEYyoOCzqhbAfoyHs6f8fkJ+
         +3M9cFNaXT8v33fFB9YdyOu4guqT2LR44+UBXtfjS3Rt/nmIl311SMcPWE1P5o8PKCwD
         Pj5XwgSCTkuBLd7+BqKwguNTV+NAiOqClm+yTJ/TO26DTvCqO2zBbZisKpzJd/YoglQG
         Z0zXmypqUjShg9EecqNyPlR7vdjRoaYSvB8CFhIaEPKMACJTOyHcqzSEnEmPVJJ0slZR
         rb1fC/zAb8E+Wgh/WIGDrhD5LJzcxTUp9bma6mQTjTytASC3n1HxCCWc2W6Kb3/uHocM
         BO1w==
X-Gm-Message-State: AOAM532aU6lmjS8s8aT6pB/stcfgBp183V4P9bUwtzm2lpYncVe7RZ8N
	BHOHpaz5RCRPrLf5B/0R7r0=
X-Google-Smtp-Source: ABdhPJxlemwiGdnw2HLvYSDjoxr8rsD9c9b0LCosoi9iz4+fjJXUmnXo0X1WAguqDpgLlPBux9dIWA==
X-Received: by 2002:a2e:7314:: with SMTP id o20mr682541ljc.233.1593558470220;
        Tue, 30 Jun 2020 16:07:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:be95:: with SMTP id o143ls439438lff.0.gmail; Tue, 30 Jun
 2020 16:07:49 -0700 (PDT)
X-Received: by 2002:ac2:4c23:: with SMTP id u3mr12770694lfq.84.1593544778925;
        Tue, 30 Jun 2020 12:19:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593544778; cv=none;
        d=google.com; s=arc-20160816;
        b=Zml+a1AxBq5bGas8GB90Kpu8Nv0bIMhkwJGTbTZ81xpUs9ytLbHW3rPqFISfCFA4W4
         A9/DH/alkeeZPJoJL1XySLrC493/jW3utENCcadryPbyg5IM2i+nARbpyBZ1Smq9KcYE
         LEBF9gvp0gy8UoRMN8bX7q2N6B3Uf5hhD3b74KxWdhqr9m8bySsFYxxh2dUaOJ7hgDf/
         TJK7dkkGj5q7UXY/q+Ac1uCml4EBe+8hdI1TlZ0eDUQvnM8q8FilBmQ0ECON98R4xXbm
         UFXdp+UmlOkOFEZI+ddnjdo9xLDwJEw4k1Py7r/10yts9YR9Xc0mJDwyhE6G8WRyQkpT
         rDxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=+SWuClaaDOYjnOgTPZaQNynsf/0FUgaUl6LbycKFTXY=;
        b=FJH97XBw6VDdhNDP8Lw8/UWGq6I6K3fYwapVSckllYdFZrOdUNzptpNK5twkx+VwkY
         u+WS3XQ1TEPZhwXOUnsJG62qBShUjHwbzxVcrV9is4T8PjcKNmPkgtkQtySb38kjUryG
         IjdAzbfaUAB/37okx1kdopM1Skb1/JQqJtzAr8voQqWreVCIVQaQItbP+kpkbnNmDitp
         NAeuYwO3h9TJl+IgacSwMdqr0L4tWwvuwGbL5wPXHpGG27oNOOJg7XMffWc9v+0bCmdj
         W5lD2dYeQ/7ItboGjjTGzdyPZxwpAAvgdHtGB3O8Ccirr4xm34uHUAERWC5ovuB1sHYb
         cS/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p1ZTo7sq;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id l6si152158lji.1.2020.06.30.12.19.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 12:19:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id f18so20698606wml.3
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 12:19:38 -0700 (PDT)
X-Received: by 2002:a1c:3286:: with SMTP id y128mr21486460wmy.29.1593544778240;
        Tue, 30 Jun 2020 12:19:38 -0700 (PDT)
Received: from elver.google.com ([100.105.32.75])
        by smtp.gmail.com with ESMTPSA id h14sm4799958wrt.36.2020.06.30.12.19.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 12:19:37 -0700 (PDT)
Date: Tue, 30 Jun 2020 21:19:31 +0200
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
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
Message-ID: <20200630191931.GA884155@elver.google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624211540.GS4817@hirez.programming.kicks-ass.net>
 <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
 <20200625080313.GY4817@hirez.programming.kicks-ass.net>
 <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200625085745.GD117543@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.13.2 (2019-12-18)
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=p1ZTo7sq;       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::343 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

I was asked for input on this, and after a few days digging through some
history, thought I'd comment. Hope you don't mind.

On Thu, Jun 25, 2020 at 10:57AM +0200, Peter Zijlstra wrote:
> On Thu, Jun 25, 2020 at 10:24:33AM +0200, Peter Zijlstra wrote:
> > On Thu, Jun 25, 2020 at 10:03:13AM +0200, Peter Zijlstra wrote:
> > > I'm sure Will will respond, but the basic issue is the trainwreck C11
> > > made of dependent loads.
> > > 
> > > Anyway, here's a link to the last time this came up:
> > > 
> > >   https://lore.kernel.org/linux-arm-kernel/20171116174830.GX3624@linux.vnet.ibm.com/
> > 
> > Another good read:
> > 
> >   https://lore.kernel.org/lkml/20150520005510.GA23559@linux.vnet.ibm.com/
[...]
> Because now the machine can speculate and load now before seq, breaking
> the ordering.

First of all, I agree with the concerns, but not because of LTO.

To set the stage better, and summarize the fundamental problem again:
we're in the unfortunate situation that no compiler today has a way to
_efficiently_ deal with C11's memory_order_consume
[https://lwn.net/Articles/588300/]. If we did, we could just use that
and be done with it. But, sadly, that doesn't seem possible right now --
compilers just say consume==acquire. Will suggests doing the same in the
kernel: https://lkml.kernel.org/r/20200630173734.14057-19-will@kernel.org

What we're most worried about right now is the existence of compiler
transformations that could break data dependencies by e.g. turning them
into control dependencies.

If this is a real worry, I don't think LTO is the magical feature that
will uncover those optimizations. If these compiler transformations are
real, they also exist in a normal build! And if we are worried about
them, we need to stop relying on dependent load ordering across the
board; or switch to -O0 for everything. Clearly, we don't want either.

Why do we think LTO is special?

With LTO, Clang just emits LLVM bitcode instead of ELF objects, and
during the linker stage intermodular optimizations across translation
unit boundaries are done that might not be possible otherwise
[https://llvm.org/docs/LinkTimeOptimization.html]. From the memory model
side of things, if we could fully convey our intent to the compiler (the
imaginary consume), there would be no problem, because all optimization
stages from bitcode generation to the final machine code generation
after LTO know about the intended semantics. (Also, keep in mind that
LTO is _not_ doing post link optimization of machine code binaries!)

But as far as we can tell, there is no evidence of the dreaded "data
dependency to control dependency" conversion with LTO that isn't there
in non-LTO builds, if it's even there at all. Has the data to control
dependency conversion been encountered in the wild? If not, is the
resulting reaction an overreaction? If so, we need to be careful blaming
LTO for something that it isn't even guilty of.

So, we are probably better off untangling LTO from the story:

1. LTO or no LTO does not matter. The LTO series should not get tangled
   up with memory model issues.

2. The memory model question and problems need to be answered and
   addressed separately.

Thoughts?

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200630191931.GA884155%40elver.google.com.
