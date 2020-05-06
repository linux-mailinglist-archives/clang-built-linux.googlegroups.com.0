Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBTEDZP2QKGQEYWZ7QGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C371C7239
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 15:55:24 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id b7sf556257edf.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 06:55:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588773324; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mg77aaHTB02aVL+lLJMQKWyK5mrvjfoWGE7FpAdsRwmyfX55/VmXtLxjZYc4fW87NH
         JqC1QiuVQfFga+W5/iRxGDHIMKqlba8tO2IkzW8fPs1vp+UgAN16XWQs6kSQDYxDVIn4
         Rgm3EVwiydqr4wyDhnRuB1v1fdvYl2LO0GiJE07D88G6OOq2MeYaWgVDjNgE3WeF0o4j
         VEGxfbLD8r5dm4l8Jkmc0XTzipN6Z58iLp5DdHrVqvTfOqL9OQo5bIhl6HlbyT6lgIEY
         mwN0fH/L+QH2ZtRcL99d+IJnjMquh9JBwh9A3/SzWoKjjCKg9K0EE6zC/Y53uNqw81MA
         lKuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=XaDCKl0L322bbQBpTOYW6shPeVvffppJVEtI4+c+W6A=;
        b=A+/MCBzxGyrgNSRE+9uEqHrpInja8S6BqT8EbPmvBTnCBqe/A81jjWCdHrVEBCox6m
         OaxplmR8jssc7ewkPuphLeyLExWFDXLmVouXPQNbXrqrXA/Qp5KPCp8ao795QDV6HyRW
         1DTVZitTdnV7c/8evoxdLyFO4t43NRbvTI+IulJIXoi/Qg5KfDavfiCSz94/fLdejNeX
         xKJcqJSRdwTHk5yYsKHnUi6RlMAeKpaaQrGnkxqMarSIK9kLeSC/QmHwP9Gii+u1m0Ix
         2vYqncFz/ZxnTewIjHlSsS0dl2vu2iqXvtz47IBOkWMTSy14ToPfhSYQU+wK+k0vYxpu
         AQtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=yrSIayTY;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XaDCKl0L322bbQBpTOYW6shPeVvffppJVEtI4+c+W6A=;
        b=JRKkdoccU1jbJRaDmWOc+Ozkj6FGKJmKxrYWRZCucdmBJdQ6SO3vptt4kGpxuWXk16
         pzZnvJU0MrdkGV/GuPeaFNSrmf0l1HgvBarltaeNXhedJ8IlQ5fihRQe1Sdx2TkXAc5R
         R2s5NqOFzq+3JHVvnhgu7M76PBoptiRwi1sXWmrvPrz1Qk+QDXOtJ12gRv28cFwPyKqw
         sKt9bVRbpSmzlEDvf0qyq6XWWRSbPqLl80A+ns0/HPbfpbHn1oPD5IXQgc6qUBA36H3n
         yZR8dqteZvf+YbM/0szdib95PE373BHMvPfzzobiilUJqbGUHhihOwC12bNcoMYt+iZF
         UwMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XaDCKl0L322bbQBpTOYW6shPeVvffppJVEtI4+c+W6A=;
        b=q1YOoz/9k0ESMiKB+il3FlhGfM/HLjMOBRse42/740tmm1VptlGu8+OPTJPnjrH4ZP
         IaJLIaWfHZRJBxIZGvFotMxjQTCbB4EQpm6Iep68crMDYKDOfdNI/RYQU4AE7+oUo57R
         iKF0dIWycUsKY9qXymcn1pgst5/QIVACb9tbEWjqDeUzSuD6Rj/5GO+69bxq8EGLHt7J
         1tJmbao801vgap82bp3ryCiHjfBWSBBKF+I5VNnNGTvh+PUMnAl1DgnV6SgvW9WZUlLs
         qkAr4f4MRxE+l3WFwpWIKdhd34YRzjUZ1JSwANupTrwBJ9tWrmKZydmBOrRThoqOktoF
         JCgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubUeQ03e9M+V6ypjbW24crJhJ/rGQgiotdvFvPRkN7+MQohUewm
	o9Xn97w01/NYTLZQzQdOLrA=
X-Google-Smtp-Source: APiQypJjItZlrso3ejWz2QJuU/8NDGO57BuovL6EcxZBPnm/eLlFGFTxoJDj4KQBq7NlQOwQAllORA==
X-Received: by 2002:a50:a0c7:: with SMTP id 65mr7124762edo.7.1588773324725;
        Wed, 06 May 2020 06:55:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:db4a:: with SMTP id n10ls692090edt.4.gmail; Wed, 06 May
 2020 06:55:24 -0700 (PDT)
X-Received: by 2002:a05:6402:1757:: with SMTP id v23mr7232583edx.335.1588773324105;
        Wed, 06 May 2020 06:55:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588773324; cv=none;
        d=google.com; s=arc-20160816;
        b=rB5v1AAf04XzAq9T8HI672LKMo+MPCPs1juF1RhJxwJCRGxhV9HEPS5mg6KOM2eiKA
         Yo8BhNTwAzjafFtDa5kppAJIwJot8mu+AOYw4LsAoEO/pFD6QH6waMigEAXxIOz5167j
         RipvBCozdksDPZbTRpQTW09DO2GQ8RvxNXlbcuzk84+aMBBkfsZ/Zo9W0jx3xhRjd3Kp
         DBDWmn0+NA3jBr81Hi+BidHq8T5SqPRETnQwLTxHr1+69JBl+RSHbpHuEieKeo7ndjQg
         pZSFT4hSUiJgvb+eIbDSKL1+1H3UxrZGAtHmApzIK0OiWa7de1Ikqjfi95VdUx66TvyH
         zd4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wieAx4fpIjez6+38MuDUQtEmRFoEiBIScVcz09TURjc=;
        b=d6JnmS/gvOAhZihHPjTd4+mPy1CIJDtZYPuRwV1CEHIBzn+l7AtCC641w/os2063Or
         0PRCS36rYYYqM5qcQgkGr6fERYh4NyHPHJV5AHUnHHqRVZBh4mxRDM1KH3WDBHFRIRdj
         u+GBzOEfg5nzBZVOC7/xOPcttIvAXG1OcWr4r/ys1eRkb4vKIqDxiJEa3mzP/VnbDFo9
         4PHgJZbz9EbQJcOZ3GMX/N1eKI3KPojhbi9OS+QKZtKB8Sad8vU0G4I9PEuezYpk6PJH
         23dvaEHEgUHDdrWeydNLOd1WeBFeBai+PT9b53OM8ia2MtM+hJJiM8wNVjz+KO3bAE4z
         EKXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=yrSIayTY;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id a3si145786edn.1.2020.05.06.06.55.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 06:55:24 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWKVu-0001tY-0P; Wed, 06 May 2020 13:55:06 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 313EF300739;
	Wed,  6 May 2020 15:55:02 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 2135D2B74FC96; Wed,  6 May 2020 15:55:02 +0200 (CEST)
Date: Wed, 6 May 2020 15:55:02 +0200
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
Message-ID: <20200506135502.GS3762@hirez.programming.kicks-ass.net>
References: <20200501202849.647891881@infradead.org>
 <20200504201445.GQ3762@hirez.programming.kicks-ass.net>
 <20200505093625.GE5298@hirez.programming.kicks-ass.net>
 <CAKwvOd=cP8UCX0+5pZ3AqzvOM8LKzLJJ_heDhrghqJdOnHoGMg@mail.gmail.com>
 <CAKwvOdkL+2Gvn2mkZ8cdHN=1F5cHQHii57ocD0RFeLJxEt=TUQ@mail.gmail.com>
 <CAHk-=wiUd=fcpegFLK4VK9iFfrO5BmpGKDszGpuyJkDdz4JaoQ@mail.gmail.com>
 <656098739.766.1588705237442.JavaMail.zimbra@efficios.com>
 <CAKwvOdnLze0e3Vwmb1Xdqwcwe9h6gnAwGnt3ksiNX7ENb_3Y9w@mail.gmail.com>
 <470458191.1021.1588710464160.JavaMail.zimbra@efficios.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <470458191.1021.1588710464160.JavaMail.zimbra@efficios.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=yrSIayTY;
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

On Tue, May 05, 2020 at 04:27:44PM -0400, Mathieu Desnoyers wrote:
> Actually, if the goal is to do code patching of the call, I wonder
> what makes it OK to "guess" all the call patterns generated by the compiler ?

We're not guessing, have have objtool read the compiler output and
record the location for us. The compiler can generate whatever it likes.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506135502.GS3762%40hirez.programming.kicks-ass.net.
