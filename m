Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBI56ZP2QKGQEH2K2CAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 460A11C759C
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 18:00:37 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id l4sf2229503qke.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 09:00:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588780836; cv=pass;
        d=google.com; s=arc-20160816;
        b=jquRfeWwIP8SaCNH2xzvh3Qs7/wMrF/IcAnawNqjizlUQmuzzEq6Mzt/fstYP+0u9Q
         5AQvErCHacsdMroGyW5gx/9MfOS1u4OogVP3WMsdeZ4vKPilVSuB+5Zb/cGfpmn5IeNc
         O3lZrnN3/RALme55uvsg5mcOGv5/CDcRbkiorw0U1PMdRXIBPDpYRKF2iTjIo03A7h5E
         4ol84vo9aPPkrAMXpVMJGkcgevv0EmrOanw7PXxSQtaoa5A516U/E7xIBJuNqrlUix1s
         zSWXkecCljYpIVeH7+KPlF21BZWOTC7m+rvq4b65OE1GFR6iSuUV7kLkEEnYAzD7Zb1P
         BTZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pehazzE5d4dtfeFBlD7cFl6FqtFjG/mkgKZZBYXFEpk=;
        b=j4qonISMbBIk8zpNmJL7Bnr4955uRs984KDZz1pzULc0MThCFscnnvzoQvbE1pV3l5
         3/5XUhr6QJQ2PIpvHYAspx8yABCxDz9pJP8Gwi0dtui0FgAmPLAfsXFSiv1ht1jOYlOr
         X3S/rp6MM18gKxHlBmul57fCEBwDOUb9WxiJbDoY+1Q/b/LSbBOkm5DhKXJeWmvAU1mK
         nX3kJXi1rguW6QkO9MpPE5P66ABOmxzSZ3FkyY4vJs+EC4p8YTnfF7HBYEmHH2QeLC92
         PlDrAeN7OOivbhVoO4cAmOri1Il6aNMj0EM1PTIxFA9VcWafvQE1XQjXQyMt95uL8ORZ
         U71w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=X6KbbuJM;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pehazzE5d4dtfeFBlD7cFl6FqtFjG/mkgKZZBYXFEpk=;
        b=Dy0JVlx7ObDkPJy38LHntz5/E0aD4XsOMMBVAoBhxTekIcXnnKP4aqwFJGbI/HMHh/
         gt2FWwKjvQ9GoU8qYo5kWH9+5bLDz1vtN1ZYYEzaHmthoS6NP3GnFoLHJRhOWAnKw8MH
         KOueYqTw9YLNyoPP1E/2wY+DB/Gd6Mv3wsCELOuOyEoy8qIoW9o6NibsRMMDjk1Q3zrn
         rdfcL8CjzMqZv0eCEDFN7F5Pu5lzy3PAAYz70PCDBpHnqPaOJz5XkuLQqLglJMvv5Gm9
         1geFDxUjann9jTM9m+DGBM+ES1NU9YNNGzKN7Yc/X8SJO1gjpumo3O1Kzwcm9wxz8oq/
         Uw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pehazzE5d4dtfeFBlD7cFl6FqtFjG/mkgKZZBYXFEpk=;
        b=lQs+ZtzaCxjDFbBLeDoTpKj99iDZYt8jcMTDnBa9LaX68nslonXoYuIg04oeelRB0P
         k98acXZAIAh9D2nbxgr/oKn+D0f8B0UR7wjQHtbcy6ISllkJvixbT1SLgZVx05po+7nl
         H2YKkCNVYpPn2xnejyLhI78NgSwTviou5n/9sM2PLy+E3Bv/88FjPry7DY46fNpLXenz
         oLZSo8V1LOFSRGYK4FeAuBIcqRotEW67YRvrEqc9wOEGs4xmu4kErpw8nm0u84yfJOMT
         +R0GuE4W0Qyl+2epb2BiiBWueP67o8xlYiPWF3z+QvIGecnDWXjpp8rtC/pNYXE3kWkN
         c+XQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua1YIjEzNZfRG0CBpU9NKVa8BJx9V17jO63uYd31LBURa9XVSv+
	JbMqg9hiRaAdk8/+HachB2Q=
X-Google-Smtp-Source: APiQypLqCwwqjGI0rrEIJMN6cgc9VldUj/QKACofB3Ze9xkZu3eGhq12ckbQL8y+17P2yS01lMXOag==
X-Received: by 2002:a37:6843:: with SMTP id d64mr9417127qkc.24.1588780835193;
        Wed, 06 May 2020 09:00:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2208:: with SMTP id o8ls1406278qto.10.gmail; Wed, 06 May
 2020 09:00:34 -0700 (PDT)
X-Received: by 2002:aed:3ffd:: with SMTP id w58mr9133080qth.21.1588780834806;
        Wed, 06 May 2020 09:00:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588780834; cv=none;
        d=google.com; s=arc-20160816;
        b=jjOudQn3QPbvIJveJKxY89LZWiDOu8dcMhWZ9xrWbQNN85jFbhdlkCFNkYhWO2aq7/
         YdMIoUCXhHkx6+GKwq4z5yu/xmQ5uQYP3kTrB+5PshvitL1tvnMMhMjEkpXdfmlNgdOZ
         BZkJ6bhy3mLqMqoYS3KTJGMC6/FnJySNxiW5iFFothCF1+sbw+X83jmZFmCEzYmMl3/D
         adWC5aif6neHYDQozciE0EjC1jWUmOijMJMWJ/Fl9Lfg39gx2wphNy5aCFJRxGhWIJRv
         /MT7VCVDsyqHQifov0LA59+E9Xhw74vD6bSdocrtv4nZ8XBOTBIub3gCzp2wWgk7A6Oh
         rS1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=O+yvLTLG1IJONNPK9WJhPabLzQvN7JA3hPuY2O/IAJU=;
        b=D8zC1k8tpG1kkexh+LBGD2mNjPvu9qwXu3HDm/RBWZp/9ceGH2EyF1K0kH4WGdlq9O
         cOJqpK17iv7DQ//eVhXxsDFpzFFTZxGSTkDKXZWsRgxAEqf783HydsbEP4vJbdaZNsYi
         rPYD4BkEy1Pzk7UL62BJ3/A9fK5Pwjxz9SUGYlk3NmOtlJvrcNLpNzTTG71OZ4n5XzG/
         n5kOFHz6+ZsjgZJH9VOVYaSUaHi+MouNnRyWG/ncQp4NpqV4V35fAjC+5aI+YKNhqpkG
         cRzzuVp0YYRsuG+nw1FW3kL/oTXf37flv+M1DzE8Klb5s0B5xPWC7qPGXawlu/UdZGCf
         Snug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=X6KbbuJM;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id c186si91181qkb.7.2020.05.06.09.00.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 09:00:34 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWMTD-0002vv-Gk; Wed, 06 May 2020 16:00:27 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 62D0F30018B;
	Wed,  6 May 2020 18:00:25 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 4A3EC29DAC133; Wed,  6 May 2020 18:00:25 +0200 (CEST)
Date: Wed, 6 May 2020 18:00:25 +0200
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
Message-ID: <20200506160025.GB5324@hirez.programming.kicks-ass.net>
References: <20200501202849.647891881@infradead.org>
 <20200501202944.593400184@infradead.org>
 <1238787e-d97d-f09b-d76d-2df2dc273f4b@rasmusvillemoes.dk>
 <20200503125813.GL3762@hirez.programming.kicks-ass.net>
 <a53369f3-665a-af0e-efad-09ae456af847@rasmusvillemoes.dk>
 <20200504201445.GQ3762@hirez.programming.kicks-ass.net>
 <20200505093625.GE5298@hirez.programming.kicks-ass.net>
 <CAKwvOd=cP8UCX0+5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg@mail.gmail.com>
 <20200506135128.GR3762@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200506135128.GR3762@hirez.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=X6KbbuJM;
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

On Wed, May 06, 2020 at 03:51:28PM +0200, Peter Zijlstra wrote:
> On Tue, May 05, 2020 at 11:13:53AM -0700, Nick Desaulniers wrote:
> > On Tue, May 5, 2020 at 2:36 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > >
> > >
> > > HJ, Nick,
> > >
> > > Any chance any of you can see a way to make your respective compilers
> > > not emit utter junk for this?
> > >
> > > On Mon, May 04, 2020 at 10:14:45PM +0200, Peter Zijlstra wrote:
> > >
> > > > https://godbolt.org/z/SDRG2q
> > 
> > Woah, a godbolt link! Now we're speaking the same language.  What were
> > you expecting?
> 
> Given the output for x86-64 clang (trunk)
> 
> 	bar:                                    # @bar
> 		movl    %edi, .L_x$local(%rip)
> 		retq
> 	ponies:                                 # @ponies
> 		movq    .Lfoo$local(%rip), %rax
> 		testq   %rax, %rax
> 		movl    $__static_call_nop, %ecx
> 		cmovneq %rax, %rcx
> 		jmpq    *%rcx                   # TAILCALL
> 	__static_call_nop:                      # @__static_call_nop
> 		retq
> 	_x:
> 	.L_x$local:
> 		.long   0                       # 0x0
> 
> 	foo:
> 	.Lfoo$local:
> 		.zero   8
> 
> 
> I was hoping for:
> 
> 	bar:                                    # @bar
> 		movl    %edi, .L_x$local(%rip)
> 		retq
> 	ponies:                                 # @ponies
> 		movq    .Lfoo$local(%rip), %rax
> 		testq   %rax, %rax
> 		jz	1f
> 		jmpq    *%rcx                   # TAILCALL

Obviously this then wants to be *%rax.

> 	1:
> 		retq
> 
> That avoids the indirect call (possible retpoline) and does an immediate
> return.
> 
> So it does 2 things different:
> 
>  - it realizes the NULL case is a constant and uses an
>    immediate call and avoids the indirect call/jmp.
> 
>  - it realizes __static_call_nop() is a no-op and avoids the call
>    entirely and does an immediate return.

    IOW, have it inline __static_call_nop().

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506160025.GB5324%40hirez.programming.kicks-ass.net.
