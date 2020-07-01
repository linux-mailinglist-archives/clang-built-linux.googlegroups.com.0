Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBFV76H3QKGQEPMPTOZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 340CA2108D8
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 12:04:07 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id g12sf16690536qko.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 03:04:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593597846; cv=pass;
        d=google.com; s=arc-20160816;
        b=rMg9Wlq7e4HFWr3qKM5GfPgtLN1pYKsd39wd5WsGCh6uabrmryS4nwYr4tGiNYCypH
         jdy5w+FawEK7dnCS7/WrrbmoufT0DTVblDXOPlm2LU8ZRgPaQjZMmUlawLRoW1INqZQC
         bFFcg3yD6zoIX1gNq93ihd4j3wHX+jXzJxrFQ+o0UpUirZWcdezIXoIKoCEC5JPVSl83
         0r+9tkG7fwdr4R/pMYNwgVCt5zTNPtkQEMtKAK3AYF4mJNMBucfEOG1TVcOOX99K0jqP
         sR9dHAOSk53Dq/3e6zlb4Kh6dvqFJZkpb/38FZJc3uWlpKCBdWkeTWpoVVamJ+NMFUqo
         pgXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=a01+GnRn5Y3CA7QIr/MEYbONBbfuThX1ACZp9HloN0k=;
        b=TXwL5u7vabvvgyJgMD99LfVe3SmaUCTdllUc9B6262BZFeap4PWm0Ds8yTUj8kQf4f
         7+FSEHQHJ2I4NtHGXCVjib943Gh3gAY/92jBZcBdX/NreOIN5+ioiVC4jBrhlDXdRoTx
         aGeWGSEg3gaqLYt+kmLsAvvkd6rbIYmpVxgbcP+Vm+gLWbV6bfYepgl36Sbc/C5ssek+
         x18cmK8YCuwvJscYciYr80tPArFlpUO8ufRJ3g9Xz0fihVRAqRbScJuN2rt3wxUgMXp8
         GRyQ8sd4fuvabEsTPNXuvKv46ng8nYnbw272KQZzLUCLl/5WLs+rZ7KSzA3k06IdgS/d
         zExQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ACTOMog6;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a01+GnRn5Y3CA7QIr/MEYbONBbfuThX1ACZp9HloN0k=;
        b=d8VrjYY8/IuTRCjlGo33yJC47Tt3rxdAXDOp+ZTh1lESnN6Q2TNGhuSOX7kAmtDpjs
         aaus8He0wTXGnKz6oXOBCb82cpOcsRTRZUbuI0VHAZ8QqJ/y77XZdKAgBoIqewT/ynGV
         QDtSSUpb0QUNMgI2xme6OBeJz0Qm90UB/8Swb2CzHboYmBwMaV+9/gPD/ELbffVq5VmL
         z9OcGG9u9rC9f7COIZEGCk24xYHYLgdiKVuaxcGSXNf3CqLIr17VROQlJz5Btyux8eXT
         nTw+RP0Frk7JZzE2Wk+mEyWOOPEBdKhTc9c2N83NanowHykk9CSXNzWcGSCT1fBOXzL9
         Sxmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a01+GnRn5Y3CA7QIr/MEYbONBbfuThX1ACZp9HloN0k=;
        b=rJSOZuuCqDaCe/+GDIPHpjTJ6GzXcFRc489xGpDIfPgtv1rHrtSglTtZyH5bRrZI+4
         EOGDKcykJO1xR/PCGx2j8RCPJuhqZKclagPt/bO2KZbStAL5CVpm6QY6CW0S/2QdPGJV
         pBqqWMXHkIw7WE+vqDdBncmzQf1aMSYxgM82ot+hR1VwcggP+laFB4OHul7Z4Q8FnrnB
         YJhb+T+cK/mcz2Z52G6qhjgB7SNwLQdqsFNSHtTUidyo2SROBjXIk9swzi9Nz7PW2S45
         GP1AEUgrW8NryJCVo+aYG2i6xWrbQFaM7KVMh17StQKuKIBIAud3NiL8g6g1TBUf8iHZ
         Gdbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530e1S0Mjjwd4uORwkn7Q/UXfusey1Igej/nmQPsIIj0TsQu80/t
	EWpWUFTExfyf0MzS1mH5Cn8=
X-Google-Smtp-Source: ABdhPJx3IPROJi8O9PU09O/cZjjgIy0uOaSifbbCBcRJUQaf2iyCYi1xfrUK8TjP3+xIECxfkNuclQ==
X-Received: by 2002:a37:4f4f:: with SMTP id d76mr25214077qkb.40.1593597846263;
        Wed, 01 Jul 2020 03:04:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:38f:: with SMTP id 137ls732610qkd.2.gmail; Wed, 01 Jul
 2020 03:04:06 -0700 (PDT)
X-Received: by 2002:a37:9fcc:: with SMTP id i195mr24889001qke.415.1593597845967;
        Wed, 01 Jul 2020 03:04:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593597845; cv=none;
        d=google.com; s=arc-20160816;
        b=jSawP8b8Bk2pEAP9EjNUXRQdQl+ozUcNmbFjTx6cw+fBsNAn46DNicecscoXQNiUl2
         E5bTH2rMaBWLFFLjUFhkfHPccPh5NEwIMo9eJe6fDta8rAPEqMJLnoehtvHgQo/y+Vkx
         czyWRbk+DUlQSNgDvkMqiNVeN5Vggf0x0yU7YVp4N03iIPPltKz0q5j0MAjjuPDyZ3Wn
         eP+smywafxc2+pzoi8RkOXzC4XjMGbs5A+y0Bd1IZ6wL54Pa4JxkiyxlcpmDJiGPzM0t
         tUu1ahYYfHeZdDKWJj1Ckei0pMOAmI3GPt2HkUA9lyVdrlsVCwqyINzzGnQArO9XXh+P
         PQeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=y8ztIKzJU7DitrsDzll7TLNc8/dv4ojMkjnPwEwP9Bw=;
        b=smXw7jDxizuWZQ5gjs9Oei952tZBauvs2hHHxLB8anmOjcrmQzcHnryMWwz2qpEGtt
         H1h+8eCXiJXxDNRasYeLEFIQpMdtUqQBNdhrBkD6T2/Mnvg0btZGp90iW/ON3NPYcfrI
         G9boUl+zDhQ6OEytpUBlQXCG5eKqP6cEH1dAaUQuwG3gYAh5YGCzpOduT7LApL9V+J27
         czMWinIHHu6F6bFtP7zan7kc2WqjRkw8Jo/xjkSdToksXkzf+4Iv8LQZOW6S0YWs45ge
         cYoHGSpwUnU5LoVHVlGKuKb5t3bqTTuU45z5xRc+q6FYpfbicbahevQ690UWokdOslpU
         KoXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ACTOMog6;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y21si282178qka.2.2020.07.01.03.04.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 03:04:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4A0092073E;
	Wed,  1 Jul 2020 10:04:02 +0000 (UTC)
Date: Wed, 1 Jul 2020 11:03:59 +0100
From: Will Deacon <will@kernel.org>
To: Marco Elver <elver@google.com>
Cc: "Paul E. McKenney" <paulmck@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200701100358.GA14959@willie-the-truck>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624211540.GS4817@hirez.programming.kicks-ass.net>
 <CAKwvOdmxz91c-M8egR9GdR1uOjeZv7-qoTP=pQ55nU8TCpkK6g@mail.gmail.com>
 <20200625080313.GY4817@hirez.programming.kicks-ass.net>
 <20200625082433.GC117543@hirez.programming.kicks-ass.net>
 <20200625085745.GD117543@hirez.programming.kicks-ass.net>
 <20200630191931.GA884155@elver.google.com>
 <20200630201243.GD4817@hirez.programming.kicks-ass.net>
 <20200630203016.GI9247@paulmck-ThinkPad-P72>
 <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNP+7TtE0WPU=nX5zs3T2+4hPkkm08meUm2VDVY3RgsHDw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ACTOMog6;       spf=pass
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

On Wed, Jul 01, 2020 at 11:41:17AM +0200, Marco Elver wrote:
> On Tue, 30 Jun 2020 at 22:30, Paul E. McKenney <paulmck@kernel.org> wrote:
> > On Tue, Jun 30, 2020 at 10:12:43PM +0200, Peter Zijlstra wrote:
> > > On Tue, Jun 30, 2020 at 09:19:31PM +0200, Marco Elver wrote:
> > > > So, we are probably better off untangling LTO from the story:
> > > >
> > > > 1. LTO or no LTO does not matter. The LTO series should not get tangled
> > > >    up with memory model issues.
> > > >
> > > > 2. The memory model question and problems need to be answered and
> > > >    addressed separately.
> > > >
> > > > Thoughts?
> > >
> > > How hard would it be to creates something that analyzes a build and
> > > looks for all 'dependent load -> control dependency' transformations
> > > headed by a volatile (and/or from asm) load and issues a warning for
> > > them?
> 
> I was thinking about this, but in the context of the "auto-promote to
> acquire" which you didn't like. Issuing a warning should certainly be
> simpler.
> 
> I think there is no one place where we know these transformations
> happen, but rather, need to analyze the IR before transformations,
> take note of all the dependent loads headed by volatile+asm, and then
> run an analysis after optimizations checking the dependencies are
> still there.
> 
> > > This would give us an indication of how valuable this transformation is
> > > for the kernel. I'm hoping/expecting it's vanishingly rare, but what do
> > > I know.
> >
> > This could be quite useful!
> 
> We might then even be able to say, "if you get this warning, turn on
> CONFIG_ACQUIRE_READ_DEPENDENCIES" (or however the option will be
> named). Or some other tricks, like automatically recompile the TU
> where this happens with the option. But again, this is not something
> that should specifically block LTO, because if we have this, we'll
> need to turn it on for everything.

I'm not especially keen on solving this with additional config options --
all it does it further fragment the number of kernels we have to care about
and distributions really won't be in a position to know whether this should
be enabled or not. I would prefer that the build fails, and we figure out
which compiler switch we need to stop the harmful optimisation taking place.
As Peter says, it _should_ be a rare thing to see (empirically, the kernel
seems to be getting away with it so far).

The problem, as I see it, is that the C language doesn't provide us with
a way to express dependency ordering and so we're at the mercy of the
compiler when we roll our own implementation. Paul continues to fight the
good fight at committee meetings to improve the situation, but in the
meantime we'd benefit from two things:

  1. A way to disable any compiler optimisations that break our dependency
     ordering in spite of READ_ONCE()

  2. A way to detect at build time if these harmful optimisations are taking
     place

Finally, while I agree that this problem isn't limited to LTO, my fear is
that LTO provides enough information for address dependencies headed by
a READ_ONCE() to be converted to control dependencies when some common
values of the pointer can be determined by the compiler. If we can rule
this sort of thing out, then great, but in the absence of (2) I think
throwing in an acquire is a sensible safety measure. Doesn't CFI rely
on LTO to do something similar for indirect branch targets, or have I
got that totally mixed up?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200701100358.GA14959%40willie-the-truck.
