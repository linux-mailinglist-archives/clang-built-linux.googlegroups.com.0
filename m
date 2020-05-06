Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB24BZP2QKGQEBNWUUHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC0E1C7220
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 15:51:41 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id l11sf2465618pjz.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 06:51:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588773100; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ap9kdZqZpy0rZ/fTsFWsyb2Wbx+6ovulUIRiQUjZ7+mp36Wwh2twFKObMUdkz5Ho6a
         12SldVScihPsoplXNjUXHiG0blO9dWo7Ko+rlTBY4CpnF4MCj4P8IhLV6QTdGIf8JzPN
         6cUbVAAPEPAqnbVg/feyKHIZhwXnkAXlmwpS7AFiJsRMsdJvMpnKj1k26RDhG/lRLNgo
         lTsZf7WrOtrwl5A/2VIX3kBgxFDZfIXoFFr11wqEAzwEmxxJ/u5Tin0x3cpiZbJI2OqT
         AmdCM55cTFOgnVE4Lupg6EIg2Z0OyTZSUNk3tImxCsAfQfWuj7IrUz2BZzq9FDqOfrB4
         eO1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=S9ZTQ23uU9c6hzpVqEhYccu/7Xf1dGxWecDX3u9QE/E=;
        b=p9Dj5JPdY5VzbBqbC1nuWHa2xBpV/ux0N6RbFchkbGmiqfcT+3ZRxMbA+apRFdRRhe
         4vbbNegu7tFcMXCPmXjUPFeMGBuRLgQn4LukgO3VOxzfM4xifjwpVYSqaIErmvANMzup
         YQmQDP0+CFTuv9YqQ2pshp8o+R7dHmerxCRMd83Gq9bjdqbsiIEGej9lkUKgyxzG0swq
         x7pavJARTZa29F9zrZLPvBSeEGKCIYVqxH0InUl3jyY7eRQbQow1rZWdIFK19O7arJK1
         e0SZLcSISsfS0hRKIM+92XKKsbW2OOfrQT5XEP+890ZxCGVMDkjYz2P5w+fVfBVbbHle
         A02A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=UiBCw6Ml;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S9ZTQ23uU9c6hzpVqEhYccu/7Xf1dGxWecDX3u9QE/E=;
        b=VV5M/YUtRbttvCqTP+KMM+W7Qe9evy+z7h+9tH7o+0KgCc+msFDnfjqIacJ08ozNes
         IvFRO87Nwwh8j7rHpXpXSorG+N3jLTPjkowc6eRzRQvIepoqJoJ93bU+52FDg/2iv0jy
         LLrhxiaE3AqIBFhjdo/zcWj8Z59OukA/qrH+N/0Wumbn6+nQC1PeWGwJPaWFbjYEJ05d
         ogOGqZQevxa/NoDDI75SMDTI4eMmd+inXaiWvO6bFt1f+m7XE7bjTm8NqAz8fcdQlkS8
         evWXnvD+E6rQp92JMZm12RT/4sA8zpnfN2U/P83nRTwt74b3EUMERSB8x3Y0/M8fbLul
         yoVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=S9ZTQ23uU9c6hzpVqEhYccu/7Xf1dGxWecDX3u9QE/E=;
        b=pJYyBXQtFE3xzTNbN/IR6H/i//RYhJU1m5bLUfomy04whGNX4TBndFD/DE+qDrT5GO
         xaWU4Lzs7bFbnQi+fZpTgS1MO76+2oxsDzTgYmLwXbe9PJ15YUIXTIbMTAdy6U6gAWM1
         +edPywqbcD0vBLu2Gs4bFzK9ZNeZ/Tz4ntJxrdOO41Cxb3Fux5WgAzd/8f2lXDBdzEDE
         ZH5VU0eBmRp2EFeFOdvImaxRpNjFrEAoBGSC6g9szQGQH0CfflTDtF05757tdtgmmMZW
         nACgbrZ6r2ygidgFnfs1QjHop14on3y4ZkZ94D22vpz2JhuDVlu3fcHUaaI47AzNs+do
         +MgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubKUUlQBXmACFOj4KS+u3oZQlzqmuRefxRCLiZEUdVvOIHG+YVc
	FsmCBSTdzZ+PIwoBT0gvj18=
X-Google-Smtp-Source: APiQypJr4OF7WvIvZMiONGD23MEouroFgmbWm9jh2lCb0cgCY/nUGqPS16nDHC8elO54IaSEIZ9nQw==
X-Received: by 2002:a62:7c16:: with SMTP id x22mr8028208pfc.267.1588773099961;
        Wed, 06 May 2020 06:51:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:87:: with SMTP id c7ls1469991pfj.8.gmail; Wed, 06
 May 2020 06:51:39 -0700 (PDT)
X-Received: by 2002:aa7:9252:: with SMTP id 18mr8294633pfp.17.1588773099581;
        Wed, 06 May 2020 06:51:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588773099; cv=none;
        d=google.com; s=arc-20160816;
        b=ZVSVXkjbM3Uj0CcBQeSOEciWxePeie1b4VoKKsUmykbOvfdDCt4uz7oi7g0V/vzj2s
         7/NkhZeaDa6VvgOYAgqjcipTmdb+/SFBjRktWf8kZkkTQUydg6291WWQ0tciqPOiUdoT
         gP7Z4n+PMFzfosoDTICdpeXf774VPnP4RWSzjt/f05B7GqIIdhRKMUacSjUUWqpdOBx7
         VXFpIK5UwqdeDD87bYyDKStriO6Dbw+nUqlrMYodrDJ6WPkW51e3FBxeYVtekyPtaCR+
         VnmsEYfm22KI3XOBm199WhKiqVoPDuE8wgimBG5l8XOR4yVNPNiIqQhh4HlQEeslhDOs
         YIZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jEJBzua8/RGymwAaDc/kEJMuCfcFhoV0OLdBTpJd4BA=;
        b=zZ+YebZQZL1daUpgWSjgtSH3TbZ9Itd569k0ieeW9JC6K2a4ZbmUfrXv94iQyq1CkJ
         qPWnH9187DWiWbU2/LHzHkOJv8xqjXPwTeVNruaX/Xj6HGXS1QCt8lij4Ye7atSCkLS9
         bRFE+duCxQ6ZTpM/yEMYRoANGcAp7YKqNmjYG4hOHCq9T6gOMelovOEz/XLR/URSlDGB
         putl1lSIT/vhB/zJMiZ8HVaAOCtKsoLcsso0hb7ho3tvp+hrYr5iXemq2T9m6V1Q6Ogs
         L+beDlFpqbZKI6olP8rAs6GEHkVtva+cS/xs++nK/Y3rXzjdC4pUSYaSbifXV7Oecjm0
         1Eew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=UiBCw6Ml;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id z17si187486pfq.1.2020.05.06.06.51.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 06:51:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWKSS-0000MN-8W; Wed, 06 May 2020 13:51:32 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 4D3B9301DFC;
	Wed,  6 May 2020 15:51:28 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 2FE952B74FC98; Wed,  6 May 2020 15:51:28 +0200 (CEST)
Date: Wed, 6 May 2020 15:51:28 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>, bristot@redhat.com,
	Jason Baron <jbaron@akamai.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>, Nadav Amit <namit@vmware.com>,
	"H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	"H.J. Lu" <hjl.tools@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v4 14/18] static_call: Add static_cond_call()
Message-ID: <20200506135128.GR3762@hirez.programming.kicks-ass.net>
References: <20200501202849.647891881@infradead.org>
 <20200501202944.593400184@infradead.org>
 <1238787e-d97d-f09b-d76d-2df2dc273f4b@rasmusvillemoes.dk>
 <20200503125813.GL3762@hirez.programming.kicks-ass.net>
 <a53369f3-665a-af0e-efad-09ae456af847@rasmusvillemoes.dk>
 <20200504201445.GQ3762@hirez.programming.kicks-ass.net>
 <20200505093625.GE5298@hirez.programming.kicks-ass.net>
 <CAKwvOd=cP8UCX0+5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=cP8UCX0+5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=UiBCw6Ml;
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

On Tue, May 05, 2020 at 11:13:53AM -0700, Nick Desaulniers wrote:
> On Tue, May 5, 2020 at 2:36 AM Peter Zijlstra <peterz@infradead.org> wrote:
> >
> >
> > HJ, Nick,
> >
> > Any chance any of you can see a way to make your respective compilers
> > not emit utter junk for this?
> >
> > On Mon, May 04, 2020 at 10:14:45PM +0200, Peter Zijlstra wrote:
> >
> > > https://godbolt.org/z/SDRG2q
> 
> Woah, a godbolt link! Now we're speaking the same language.  What were
> you expecting?

Given the output for x86-64 clang (trunk)

	bar:                                    # @bar
		movl    %edi, .L_x$local(%rip)
		retq
	ponies:                                 # @ponies
		movq    .Lfoo$local(%rip), %rax
		testq   %rax, %rax
		movl    $__static_call_nop, %ecx
		cmovneq %rax, %rcx
		jmpq    *%rcx                   # TAILCALL
	__static_call_nop:                      # @__static_call_nop
		retq
	_x:
	.L_x$local:
		.long   0                       # 0x0

	foo:
	.Lfoo$local:
		.zero   8


I was hoping for:

	bar:                                    # @bar
		movl    %edi, .L_x$local(%rip)
		retq
	ponies:                                 # @ponies
		movq    .Lfoo$local(%rip), %rax
		testq   %rax, %rax
		jz	1f
		jmpq    *%rcx                   # TAILCALL
	1:
		retq

That avoids the indirect call (possible retpoline) and does an immediate
return.

So it does 2 things different:

 - it realizes the NULL case is a constant and uses an
   immediate call and avoids the indirect call/jmp.

 - it realizes __static_call_nop() is a no-op and avoids the call
   entirely and does an immediate return.

> Us to remove the conditional check that a volatile read
> wasn't NULL?

No, obviously the load is required, and the READ_ONCE() is so that the
compiler will not emit 2 different loads (just for giggles).

That is:

	tmp1 = name.func;
	if (!tmp) {
		tmp2 = name.func;
		tmp2(args);
	}

is a valid translation of:

	if (!name.func)
		name.func(args)

and allows for a NULL dereference (as noted by Rasmus).

What I did do want, per the above, is to avoid the indirect (tail) call.
Because indirect jmp/call are evil and expensive.

> I am simultaneously impressed
> and disgusted by this btw, cool stuff.

Yes, it's nasty, esp the casting of a function pointer like that is
gruesome.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506135128.GR3762%40hirez.programming.kicks-ass.net.
