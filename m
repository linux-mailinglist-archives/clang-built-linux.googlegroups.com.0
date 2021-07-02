Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBMU27SDAMGQEL4BXKOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A3A3BA0C6
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 14:57:23 +0200 (CEST)
Received: by mail-ej1-x63a.google.com with SMTP id q14-20020a1709066aceb029049fa6bee56fsf3474130ejs.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Jul 2021 05:57:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625230643; cv=pass;
        d=google.com; s=arc-20160816;
        b=PaHSIL2JtQZgCdp2bnEZ+0fRhGpFW+d1FzqopQ5418UWTvCg7SoT0Bs7hX5AAN2IiP
         lYyXLnZiKAOpXBBgs37mvm3pshTnlTlVbUFbT+JTcHq5E68CtiOoUTIRW4jVjueFDenk
         H5LpLEcsvXGrtvFSpWqm0VZ0t8VSfMRzauDU8SbBTKev/5WnW/X7kuOtD6HJtObIh1Wu
         heKwgS45xMicpvR5L0v8/3ZWAGdlYVRrWnaaz9tu4rQddJaHKKgpCbVNxLlz+0EY8U3P
         amkv8OPVNkhPDXd0YdPtTpzMuaYHoLy3rCuXZjKocs6wJqoxOe6Pi4lKLRCeygogsp69
         sBjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=QEfWP80LttL/3lk11yzF/IxHsCYyKszCl6HOm3gGQOE=;
        b=Fg68ey0w0LPp2dNW6a6+TDQgJFWA/H7CKyoyB2HTcRhNirxMi7lcajwUG24ypnTGx2
         Bmmq/bK4sb1spygoHn82Kt8sTwzBgBS/odIx9MEwV7eLYJF2BdMHdyHS9nS7ouwWP3YB
         6qJO44FnrEiteujo/O4rpRpfpLChkIlWEEAWJHr8OSdtYm2c9xa8YDokbbYvXEcvxTx+
         Zaw5s/IQqSQWhQ3/Np869CXQe6bifxr5Q1NR+LMTQEo5IRcikFTr6cdXGRDAdhn+O/yr
         nWXN5HdWPUBGxjrHvglasEHS+lNlg+9Ltv0r93QR4WmusSR804xPSpYJw4mWxl3mRlPu
         j6Tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=WJOsav2Y;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QEfWP80LttL/3lk11yzF/IxHsCYyKszCl6HOm3gGQOE=;
        b=OpQLVJRQjyCCv79gMKCRmRzpvAX0qKJ7oO1Vxx6knaV1+yed48gwxei1+7+Dq/8eeO
         WW+xzH2rWlmmy0/SWhtAvzt1EmZHM+HnjWPRjSvUhAYkKzgHyqFi2m2QUs3Lx7ddKJr3
         bgq7kNuhDh9ATIGHjPAFnBKOQv3ORcKBVBm6fpfHEtR+iwnTtFzY+ye/4/oRrhIZg5Uu
         /HqzUP9ZAwvLIvr8/n5USnCeBA+xVoKup5tJv8oaC6nKzNEMC0eIzCYHnm2RsY8k2hrM
         F1GxJKmGzuvTu3DpvY2IjbzqQg0qmBRemvE5dD/0oL0I/iuY4ZjaQlcILoEAPwFCYqnC
         hIMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QEfWP80LttL/3lk11yzF/IxHsCYyKszCl6HOm3gGQOE=;
        b=QlT0xOZHgeg9rc104ykkS0G8DNgTTlPAsoQniaqEWXMHU1emn8JXK271ECxN2aGCT/
         Ds0ELo3C2qLYzRJ7X6WWwvLqTIE0qup4Cp69Da6iVdf5FvKjjli9JomBY7PJ+FLBJsFE
         XhvaL3q5S/JvMy0mLtDb943uEr1Oa1eikXEh3CqInQyBsqF7KR6AC1U8j/AC7mg3IbLL
         htNghEGaLVtNF6sDCkVhk7jdM8WGQibD6hyK8VW5fWykZMTs3texxdkJQM98ceEnssJ1
         So9o6ZaEG28ZfOGXNEBv1bsHTVr2Qq6FYEKWiU1BBLNVu3OxYl2rv1Y7XbKo3ODEti6B
         +lfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OFFOYCcqhy0lpkXsqAR4HqppQd1utpwyQjAZRbV1qH+5tsEsI
	n0DUlvBPvOITWMDFv4JEv4g=
X-Google-Smtp-Source: ABdhPJxNWni6SYfzlMHEEnH5SE8L592i1+RDXYH4/OkOgOJTFLUOdT3lC2TDyufIG8h7yRAsl3JUUQ==
X-Received: by 2002:a17:907:a073:: with SMTP id ia19mr5330437ejc.292.1625230643129;
        Fri, 02 Jul 2021 05:57:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:90b:: with SMTP id g11ls199293edz.2.gmail; Fri, 02
 Jul 2021 05:57:22 -0700 (PDT)
X-Received: by 2002:a05:6402:40c3:: with SMTP id z3mr6309999edb.375.1625230642110;
        Fri, 02 Jul 2021 05:57:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625230642; cv=none;
        d=google.com; s=arc-20160816;
        b=M9FNq+tyj/5HolAHV7TNlH0gOrDQN7FrF0HtZoMBPNV75b/HzhkU7bvwLQVXlD2Yh0
         LVvAgPG1XBLePMzL00u0zVh3u8p+86nExZhWuWspl5m4BlvKZOuN9bQ7cdgSBSxjPoXi
         dk/K/a7CiRwMunyGKAn93sTZYTMe8ppVC0J57nvftFf04rPGlhNLNW0CbljtxJmRJo1J
         vDigZ2BMuStu8/8RU6XzgyxMeRG3vq9SK6md62eYPNt9X2xJM9ern/vL3Brvl4AtpW3w
         OQvOjYFYW0TGsLKDWERxdloOFSXf7xMIOPCyeXcC20EkYd+wyxX4YhegCe71kle08tnR
         tp7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GW7O2b9giTKhc36P5PVe5SwIe/E7zGRfMUdGgkuBFMY=;
        b=oT6tmn1A4FEjHopOidHHqWUejROgUsz8YXf8IGiPv3vMfS1lIQ2WbrZa/ninfo10h2
         Tk+000HDdl/3lhLeYfyzEoUI3ohPbwht/7wMlSPyPeqdmdL1t4lLF7VERK6aAdShUFmS
         RXAANn3+Ij4UopOGyAqcmUOD8rLw1qYQf+ARVztJFH8Jw9vlSw3n1X6MwqvgayDijvqZ
         FanPU2CG0FQT34lckhu/VEKlkP+Giul9BV6WPkl0ItwAT9my2MmHPzLgA+2/3GSXbdWp
         Uph6bhR5+R/oWKrJsWrfsn37VN/3dOIbOtr5pcQ8gZq4eu15Bg/G+FfaVJsaPaSbHcUw
         CauA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=WJOsav2Y;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id c16si148237edj.3.2021.07.02.05.57.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jul 2021 05:57:22 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lzIj3-007i7k-5J; Fri, 02 Jul 2021 12:57:03 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 707673002D3;
	Fri,  2 Jul 2021 14:56:56 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 38C772B981DA0; Fri,  2 Jul 2021 14:56:56 +0200 (CEST)
Date: Fri, 2 Jul 2021 14:56:56 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Bill Wendling <morbo@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Bill Wendling <wcw@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Heiko Carstens <hca@linux.ibm.com>,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
Message-ID: <YN8NGLPQ4Cqanc48@hirez.programming.kicks-ass.net>
References: <202106281231.E99B92BB13@keescook>
 <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
 <202106291311.20AB10D04@keescook>
 <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
 <CAGG=3QXrOnN3-3r-VGDpmikKRpaK_p5hM_qHGprDDMuFNKuifA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAGG=3QXrOnN3-3r-VGDpmikKRpaK_p5hM_qHGprDDMuFNKuifA@mail.gmail.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=WJOsav2Y;
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

On Fri, Jul 02, 2021 at 05:46:46AM -0700, Bill Wendling wrote:
> On Tue, Jun 29, 2021 at 2:04 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > On Tue, Jun 29, 2021 at 1:44 PM Kees Cook <keescook@chromium.org> wrote:
> > > >
> > > > And it causes the kernel to be bigger and run slower.
> > >
> > > Right -- that's expected. It's not designed to be the final kernel
> > > someone uses. :)
> >
> > Well, from what I've seen, you actually want to run real loads in
> > production environments for PGO to actually be anything but a bogus
> > "performance benchmarks only" kind of thing.
> >
> The reason we use PGO in this way is because we _cannot_ release a
> kernel into production that hasn't had PGO applied to it. The
> performance of a non-PGO'ed kernel is a non-starter for rollout. We
> try our best to replicate this environment for the benchmarks, which
> is the only sane way to do this. I can't imagine that we're the only
> ones who run up against this chicken-and-egg problem.
> 
> For why we don't use sampling, PGO gives a better performance boost
> from an instrumented kernel rather than a sampled profile. I'll work
> on getting statistics to show this.

I've asked this before; *what* is missing from LBR samples that's
reponsible for the performance gap?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YN8NGLPQ4Cqanc48%40hirez.programming.kicks-ass.net.
