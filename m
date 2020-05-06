Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB4WGZP2QKGQE5UEU4AQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id B26711C7618
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 18:18:59 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id a83sf2285610qkc.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 09:18:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588781938; cv=pass;
        d=google.com; s=arc-20160816;
        b=j+t+UXvGem2YJqoDE6/SSMEFttzFevU7GDkr9vseKIfhw1tPmV9/9R3B9SMOIir0RF
         TOy21vkFK2IAgMFJlTskMrr2dpvH6vLmo7ZvxRZrKLQdY5yeuwaij/7qa7N168zBeA6m
         CfS/OW/iUOCXgLu7r9pT4u31qYHK2jjX0l1HyZosSqW6HqlMOY95GDC+LrmzJShEe47w
         kaKoJZueLQwdBxf5RCqH4gLdS1UHOG4An1ojaxDkFwQQHCjZyW8sY/ru6AtSBqWiaqrS
         8F+Y/p1KoKLCrS5yQbxbX0xe9aLlkfvchqu7JIMJLxKqLmbgEENLHUlQoCVWSojd6ZC9
         b/xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aUqacxKrnkp/XzOPuzoKoHjUtpnLIxJUOwSRFPdlmYY=;
        b=DxMArlcCsvLg6TWojjkskNpjhKHnxwI5Tb4lZlOEZYDJfCZMKEq3tq29EB9OOJfqhB
         FTebVs41NbcCAMhWe0k1B0fKhb5o1D+mFhwvC/HKYBrzZ3CdUDybiId4SoXrjRWGBuuY
         xF2X6d7LXlJ3RfrgTI42jo3+AsJ+Fnc0ZaQ0p5kBdWhbZ8COMWpV+rtaRPYIE/nZDUqp
         0w/0hRoJO7YR2klr9Cmiw/lpYA0elWiWCIYMcs5sWKhkViSBn1Mwyk23upn6aUC6a7Mw
         cMdqjNngXXKLlp28/09lbW012fBVxK8pO/GMI04BqXXC2Gq6T3E4wXJwJmcfLZK0DZWZ
         /4HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=ZVZfWssV;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aUqacxKrnkp/XzOPuzoKoHjUtpnLIxJUOwSRFPdlmYY=;
        b=QuplSnP23nity9ggio2vbM9jkAVQTM1ZMdTc2Pjbg1NFqpPvV+lsVhRdagSVgtkAPr
         AsMzHq5oVE4D8Pfg21AftyJ+69n2S7OrzrAGb5MZ9gqV9uWlAwKK0eUqErXF/cxLeXsq
         D8lNTjYeWgjW8BYuTr41OULphJAs7cLQrl0+E0Bar1sRUxhLmGQybR2dj3U7m9+EoldN
         MTOAepggxqCuYCAtMCY42JvT3BVBiXLYi3ChZ3E2moPyoNeQojF5jJ3io2H2c0Csg5xH
         Qvmo02UxBPxd5m5btcllKOf2dJGasIb5x+ZMpCsgxkDk/w5K5Yq4pg3DDHUhdotSkbkn
         csLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aUqacxKrnkp/XzOPuzoKoHjUtpnLIxJUOwSRFPdlmYY=;
        b=bUJIYjKTEZMwOOmO7+cx0F5+wDnLaUjo6xbFJdfvnwdk+uKkp+KUm6EL7ZeTW99C9s
         FIWB5vxnClodHxCfcEisKi1LXLp8PeRJ83CE8jARc0uThhWBiFXaMIOpmCR2xBEeevgH
         tdOQ3fRBwEpPa6IkSgLTS9AgZVwIa2/7WtOxak9z+949Fo7k4c4FW0cPR3QM8gD4DTz5
         1jUZ3GRYkMnCHSq7rMJj7Aoxsr5uimEFSgMa/KDAgoA20mxu5a1xJCAva4cCCHxhZfgC
         sVVGmGDXyPb/3hBCFTImew0lhdvGXrhWZH9E8mzDp50KNDwDFYUty4dGNkTpomiil/GN
         OqmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubIG84SOSqFSPVb+ktAWCViQYzjhSn+oxYcLuBe9LC2CNhrOU6D
	Mp+tL/4YJxQhUCggzkuRQJk=
X-Google-Smtp-Source: APiQypKLmvA4kmY4I00OXtiXvllqvhiuQNOconqt+nb2wCvo3k7ZmG3Zl02DWBP3ooXJJz2iWUY9aw==
X-Received: by 2002:aed:24ee:: with SMTP id u43mr8990955qtc.178.1588781938734;
        Wed, 06 May 2020 09:18:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:996:: with SMTP id 144ls2357804qkj.4.gmail; Wed, 06 May
 2020 09:18:58 -0700 (PDT)
X-Received: by 2002:a37:78c1:: with SMTP id t184mr9722466qkc.213.1588781938415;
        Wed, 06 May 2020 09:18:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588781938; cv=none;
        d=google.com; s=arc-20160816;
        b=rTuTVdnzHYNgW5WqYcplOnh+s+v/VCurLoxG7z/QJUvtTT8D4V+UYntcdri5SKT7m4
         Aqb/1akiMJ8geDBzupwQGo2qB1oc5VC7nX9FK9ywc035EBLaOMU3c3xK9Gv1BeWAkBa3
         eQXvwU7rFzVyypzZr9Vk9jrfXC+mH4Miw+jtn91L988CsmrCcYndHS7G3AvTTyxW3cdW
         a6MkHbZNMIRmRuvqP5ArhWmX08u8D8Al97oIyxRclCulZiB0Zp8dqfzd6cv/qzhQKmJF
         /6Dp5piZ6owdfFYq2Oa2bDkwo/+u+u5pT2RDtL3JR0I7IBpIOzom/zzSqOPHdmR9BDAp
         CAFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5mLMqArBW6jfYF76Y9dmQCS1j4NzrBHjUeYojdIbkfo=;
        b=AWIfi6/BB/aoS5TFJbq/CYdddSfhr3IJ112ymeDQlh1UsaIvs7CIQPMP8/9oGlx2X8
         y0S6d66Es+KH7/XPHcEBuMyEK+SB2//M/lZmzg35L5Nf2z6c3o1NAw2z5bGcHfCvg/3e
         hr6pTadOY58ZdJ4JkHO6GqrYro7ioqGalQiUvUTXQCCXIDM5JK0ClZhUmdOsW+o6sZlh
         fYNRZGCXKFQmrkmp9mkaiVdkYRAx6ri+N7CJeTKBTDJEQ5vQmKzN9vAZiAnNfCZhzGYC
         QyEQYXf52M44gLXDOHMMVsXr9oRwKI4YItn0OABFe9za5QRfbtMf7tLS+D7c+Gr7hpOa
         fsAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=ZVZfWssV;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id u20si248622qka.2.2020.05.06.09.18.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 09:18:58 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWMl0-00066N-Ou; Wed, 06 May 2020 16:18:50 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 397C4300238;
	Wed,  6 May 2020 18:18:49 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 198A9203ECDC2; Wed,  6 May 2020 18:18:49 +0200 (CEST)
Date: Wed, 6 May 2020 18:18:49 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Cc: ndesaulniers <ndesaulniers@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, x86 <x86@kernel.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	bristot <bristot@redhat.com>, jbaron <jbaron@akamai.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>, Nadav Amit <namit@vmware.com>,
	"H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Paolo Bonzini <pbonzini@redhat.com>,
	"H.J. Lu" <hjl.tools@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v4 14/18] static_call: Add static_cond_call()
Message-ID: <20200506161849.GV3762@hirez.programming.kicks-ass.net>
References: <20200501202849.647891881@infradead.org>
 <CAKwvOd=cP8UCX0+5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg@mail.gmail.com>
 <CAKwvOdkL+2Gvn2mkZ8cdHN=1F5cHQHii57ocD0RFeLJxEt=TUQ@mail.gmail.com>
 <CAHk-=wiUd=fcpegFLK4VK9iFfrO5BmpGKDszGpuyJkDdz4JaoQ@mail.gmail.com>
 <656098739.766.1588705237442.JavaMail.zimbra@efficios.com>
 <CAKwvOdnLze0e3Vwmb1Xdqwcwe9h6gnAwGnt3ksiNX7ENb_3Y9w@mail.gmail.com>
 <470458191.1021.1588710464160.JavaMail.zimbra@efficios.com>
 <20200506135502.GS3762@hirez.programming.kicks-ass.net>
 <482526608.2543.1588773672085.JavaMail.zimbra@efficios.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <482526608.2543.1588773672085.JavaMail.zimbra@efficios.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=ZVZfWssV;
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

On Wed, May 06, 2020 at 10:01:12AM -0400, Mathieu Desnoyers wrote:
> ----- On May 6, 2020, at 9:55 AM, Peter Zijlstra peterz@infradead.org wrote:
> 
> > On Tue, May 05, 2020 at 04:27:44PM -0400, Mathieu Desnoyers wrote:
> >> Actually, if the goal is to do code patching of the call, I wonder
> >> what makes it OK to "guess" all the call patterns generated by the compiler ?
> > 
> > We're not guessing, have have objtool read the compiler output and
> > record the location for us. The compiler can generate whatever it likes.
> 
> So is the plan to adapt objtool if future compilers change the generated
> instruction patterns ?

If needed, sure. I don't really see what a compiler can do differently
though.

objtool looks for:

	JMP/CALL	__SCT__##foo

and writes a .static_call_sites table entry for it. Anything else we
can't rewrite anyway and will have to keep relying on the trampoline
working (which we also update, so that's fine).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506161849.GV3762%40hirez.programming.kicks-ass.net.
