Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBFHK5OBAMGQELT2N42I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 21461347339
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 09:15:17 +0100 (CET)
Received: by mail-ej1-x63a.google.com with SMTP id jo6sf555983ejb.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 01:15:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616573717; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fg/Q1O9fOlVimuNAAz/Y41+EUge7EjDo9bT8z3Sx+2swhfVZenKtfUCedk1TOsRZuu
         hn4XESkqqBon4j8j1kyxWDq9Cm21WqgJ2fNkfyZovKxHbpP1kTkbmml0qH4y52+Jdm5x
         mppOVN8/Ay823UgXXr+R1m388CvPDcAl16Ctb3qzVknjWAj/bvcDOOH/ggbYnQEXsAW9
         1u+Vq+MIKColqHlcKwazOmwxZSkNBlMXndhWAVq8dJctHpxXtEH7ls378e0FqQYH8j8c
         EKjrNrizAKzDMWkoefi3isLHu0qVbxk4/+vsBJG4vawbjc5Wz0phPpcs3Mcs3pW1o5jh
         NdkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yK7w+B2xONtKLIg8BlKCuqGnSdu5AQrSdglwbl3PY/c=;
        b=eK4PzYljmLjrK3AsSOXPbMcZ7P0BIZ49S1HZ1z8wgdortMkDXcHDQshTp36UvPwyMp
         8aiFfc+edBnCUQNsky4MUommLk4ECAjW3+cxNqjFnPykBbZpDBUVb3HriA1AAnn3ndm6
         ZVfni9VEjojVphp7Ptcy8po/SuSZBzBzXxdWP03R5gIcuA9h2uaP5fx4Z2VEM//xfXTb
         p9YgUGClWkoIpfKxpQzPs/yVgd63BKdDfQC5yMPHfpttDxX+BbEMEjXE0QB0n0QgLmmG
         teb7PkHJW9lQ7t8j2zL9q67n70IL7XzdlknPUyQJtQSTbdAIflUSqZzRJgOn5ofhd/78
         JPVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=XdtUWN3T;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yK7w+B2xONtKLIg8BlKCuqGnSdu5AQrSdglwbl3PY/c=;
        b=JeGOa1qz7iRe1k3c7RI43qOVtexy09wl40ihloW5F+MlzOpIBgui1tW1SaggG9BUl0
         Gr6GdS6B2Zi5DxbOpWKdPOskiXsSGe0uk1VR318dWa07kEoiW7BM2HGBwnOmp2D85aCw
         IkSyKq4w0AeNsHN+VYZwWMA3lMmcvvUspFzIkdVhnOXJXIEqFhiI/OYwjLXwFn0ebrjP
         vDCtcmBbJQ0ZfSHGS2YOYg8amiImY/w9x039z3NM3oL863WBmz9SUF2g+5kivqryM1xJ
         n8hAN9Q2fgZppqkYk+pTo6uxYAN8/GKcHcILjannu/VwBZ1pB2AY4D7Kbl+3O1kp1IU3
         6sGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yK7w+B2xONtKLIg8BlKCuqGnSdu5AQrSdglwbl3PY/c=;
        b=Op9ytdtNyd7s95kDQWTMmc7RZSjevBw9HThOK1ucLKQIo7gUFVvjQVpghd6789k9ho
         jfWMY8NYV85QOiNCBTkoGh4q2+3BGw7OxZItJK0an1nC1Ait0f7BhOMJZuv0qL9lixZ0
         X6HVtCI4yYY86kWNN39TFmnqNHOa1yZw7IlBNRSCgv5ahZWo6VMdDxSLbJBbkR3c/o2F
         WHMWaKq8p7zUTNLX9/WmP7t8rRNexgxK3UBWaOKL2gmrHWJd9aZUkW6trXDEccwrQ798
         hoskHw9B/bYR4GZ64hp3fwgWLlpf9wGroLw3pdlscXdLZ7Tc8ESSd6k3B+yNyG1vvHX7
         uXeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XJXoYqv7pO/drZ4tl2rhqBsJ4teA6Ow4cTpx0I8uaTO2y1ezi
	Ya484FfmZxcKWeCKEtJK1Zc=
X-Google-Smtp-Source: ABdhPJzMi2vkOngLS6GYzldPIIkgzPYafLXm4VqYHsWiLH8v6dJXiopWj9CHEXvefJV9xKRa6WkJeA==
X-Received: by 2002:a05:6402:254f:: with SMTP id l15mr2088584edb.189.1616573716910;
        Wed, 24 Mar 2021 01:15:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:50cd:: with SMTP id h13ls1966012edb.3.gmail; Wed,
 24 Mar 2021 01:15:16 -0700 (PDT)
X-Received: by 2002:a05:6402:17e9:: with SMTP id t9mr2088282edy.211.1616573716031;
        Wed, 24 Mar 2021 01:15:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616573716; cv=none;
        d=google.com; s=arc-20160816;
        b=x1W360hOn5SRIlhXrhvwA9fpMxi31HKrOrW0YHtIoPxCNYUAYy0F9BOh3tYF5uTSW9
         ymKZT0xy7YbEu/RZQoO5NgbbC3eR58uWIGte8koUqgSQR7tX2CFnYyGCylfiFtAKRMIP
         J8h4GMT5GuYxRaCB6YK7TuR05GUzB3tvXJDJ+Fu3YZ4PLmrQVk0i13oVjwRXD54iYgL7
         mDCCmvNadkiRyEG8UfuqS2k/F6oawzugT+NZ5QYYo992EH6wPFQMlzzgx4GdV7FPjBlb
         o+PFrUEO+ivyC7IJFydN/ZLJuXQ6++FMNTqi3hWVdjyetlElm7yWzQsCBLMJlnqePAbD
         SIhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SK5/sEmswbCoTPEGyfn8Cc4KW/hvJK6qOQtWnbzRl54=;
        b=QlWqd+lvV+5+gzXJM6/KD9JkyydwYIu5smbgvllwPkAxk2RhpwFKp5Hmq77LUauWK7
         NoqE5fSt6X1l7o8BT2wO3anRewBZTuEWXJvTvvDaGs6wor6zQQQpJlT7IPqDbT16vZxh
         1lTSBZt9hxRg7nJjV+YoDGOXLcKTKu0+MYY4v85jZiUXQbCNxmJ+V92DfVn6cdAtL+NK
         L8kDj0Q+WVNQq0zemhplMDxJ9rzen0nGDodaQTw1d3sxRi0/FJk3Y39XWKv28fpYUs9A
         cGg34MB4dgbrofvMitPb6ySxOWUFOtORxicqIkgl7gvqghCt5i3odLaKEucgh1RKdXK5
         tjbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=XdtUWN3T;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id t7si75362edr.0.2021.03.24.01.15.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 01:15:16 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by desiato.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
	id 1lOyfQ-00GYZ1-Mc; Wed, 24 Mar 2021 08:15:06 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id F41A33007CD;
	Wed, 24 Mar 2021 09:15:03 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id D908823601880; Wed, 24 Mar 2021 09:15:03 +0100 (CET)
Date: Wed, 24 Mar 2021 09:15:03 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Andrew Cooper <andrew.cooper3@citrix.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-toolchains@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Jose E. Marchesi" <jemarch@gnu.org>,
	Kees Cook <keescook@chromium.org>,
	Florian Weimer <fweimer@redhat.com>,
	Christian Brauner <christian.brauner@canonical.com>,
	nick.alcock@oracle.com,
	Segher Boessenkool <segher@kernel.crashing.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>, Will Deacon <will@kernel.org>
Subject: Re: Plumbers CF MCs
Message-ID: <YFr1B18vJde2Q+p5@hirez.programming.kicks-ass.net>
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net>
 <a60f83d2-75da-d147-ae92-47a5b474e162@citrix.com>
 <20210323195358.GB4746@worktop.programming.kicks-ass.net>
 <20210323221246.GB5208@worktop.programming.kicks-ass.net>
 <20210323203612.02a5b29d@oasis.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210323203612.02a5b29d@oasis.local.home>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=XdtUWN3T;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Mar 23, 2021 at 08:36:12PM -0400, Steven Rostedt wrote:
> On Tue, 23 Mar 2021 23:12:46 +0100
> Peter Zijlstra <peterz@infradead.org> wrote:
> 
> > On Tue, Mar 23, 2021 at 08:53:58PM +0100, Peter Zijlstra wrote:
> > 
> > > Another utterly disguisting option is to align all CALL instructions on
> > > 8 bytes and have it followed by 3 INT3s to make it 8 bytes long. Then
> > > have every function prologue round up the return address. This should
> > > work with tail-call optimizations because the round-up is NOP when
> > > repeated. The obvious down-side is that it will utterly wreck the RSB  
> > 
> > Slightly less horrible: "CALL func; INT3" + "INC (%RSP); RET; INT3".
> > It still completely wrecks RSB, but isn't nearly as wasteful.
> 
> I'm confused. Why is speculation after a CALL dangerous? That code will
> be executed on the return of the call anyway. That is, it's not
> speculating something that wont execute in the future, whereas code
> after RET and JMP wont be executed.

Like I just wrote to Andrew; it mostly isn't going to be. But there will
be cases where running the code after, with the register contents from
before, will get you a nice speculation gadget.

The big problem is, like with Spectre-v1 compiler mitigations,
recognising when it is and isn't a problem. Mostly compilers tend to
take the safe option (understandably) and we end up with an incredible
amount of LFENCE instructions and performance will suck.

For SLS at least the CALL+LFENCE pattern is trivial enough to recognise
and we can patch it out at runtime, with the only side effect being
code bloat and I$ fail. That same isn't true for Spectre-v1 mitigations,
where LFENCEs are emitted at less obviously recognised places.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFr1B18vJde2Q%2Bp5%40hirez.programming.kicks-ass.net.
