Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBYEB333AKGQEELEMTBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id D2EAA1ECDD2
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Jun 2020 12:52:17 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id n6sf1239931otr.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 03:52:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591181537; cv=pass;
        d=google.com; s=arc-20160816;
        b=rrWWo1SH/+VP9nDQgwqfHCYufaiiCnyCNUAMR7WrjNtBHWm2LBwt8a+e8qeXpPJwL+
         QM4ygYfIDvPWijCGH+s+DxiE5S+7P3Yl0KlTNdv0POeXf9UzRumVS1+FWyXwhzji5pIw
         UWpcPpcq5eOGm6+KYqbTrjd2K7zNf/hX/aJ1gw8QOjw6A6Bza18SXqRaEAhCGHLfMXgE
         SwGGYHlnss4D4Vdh74mqAsRxvuPWPdNCw8IQYaVnIGpzHL5w4ujw51LeOQ3lSgxmsOqe
         LzCSiOy86yEnG+DS1WC4icjqqr46ws26yI3NlVaLzO6lyYpUDNlv1u42RzZ2zyYYgLMT
         Wxcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nx9A5vsFOoAMlwyn5gw00kDhM7yU4LvoTZmKBdkdTfU=;
        b=0cUUYQntlKxvBWKRWwcWOy+s8A57wCTw/NJ9X+4zkinX0x6cJ2Nht9lN/nClXtCM/5
         5mUxgStMXcg5P4EFksHeYzqtxiEnvZFNPgV1Onb9QdUY/y5j0Ip3De3HNuc0rp5dXr50
         J7fJXuDdRHDb7ajyfTj/+zR/2d/W55UTW2MTRf5JyDmCHxq5gI4+RvJSRKwyXTKKds5R
         caN8//VnnnntI5IU8s3BeY7cYwPV2cYyo9CZgSprhEOt8Lrv4qhyW9PUSLQiLjksaNCM
         T20jd+otSI7DhMdIuPUIfmVees4ZN0WRohLvZfUjQLbv+W9veHSUc9KNEvwBSNoTzZeT
         9Ccw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=H+Nek6rC;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nx9A5vsFOoAMlwyn5gw00kDhM7yU4LvoTZmKBdkdTfU=;
        b=bgqMGc503JrtLLbeBNRmeTA59YDIL6LlOmP/zSpv/vXGu38wdqdrZb4k+85lq9g4oP
         fuc2gqWKLD/tQfbeLmF6Xqm4qwF1ablVBZWZaUHzMhGclrg0rnDhVJXj0fPJ7EOGmnQ3
         cRpJJd2GHO/gce+qhWuWzqfXjCvvwMX+jz6oqHYBE3pgU+EhwqWkv1t6hMQCVW9tkoLV
         daoBQIP/VHb8AWon1C2UwZrSSMsCt8bWBGSZAesqsN4LkaexKOTPHzXVyJSrvBcAEZ8S
         exRqN2PKE/mcdxpXE5TgQWReNjlmpTtdTO7g89jmOXn2VMZfGz6ung5JzATMfyyd7z6K
         5yMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nx9A5vsFOoAMlwyn5gw00kDhM7yU4LvoTZmKBdkdTfU=;
        b=LkyMWLl/4R1iJznrXHFkhKTxuNPjhuK5/8XBbPbK+Jd8Ky6jMH2vvLr2Ahn6gc2+ai
         inq0X9T//O9pm46UDignzSVbrc28Ma/9kePj+zd0VrSuXVy41Yq4s9+HtAWSDcwcwSmn
         dT1ZwPLpT/d0g1x03X6Tyy7quUJ7+hnBjMAseXVqz7zHPXIGP5ADPwt8CBeZ2FReD89X
         w0DdKoS9boWfOyUjEM82e+OuIgFJzob2AEEMdeF9TraCsspOCDtrPVn4ezGlN06xiN2X
         zmGyOC7nA1Z7Qm7uUzfCYyHYLvhc8uVqVsuk1oBsh1n7quOH/2Uk4nkhi5XYb+LsOfkF
         wFmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UCrYCgXK3dp7lBs79O7ZyoK3aafXFHi7sjPHGl5VzonpUP4iJ
	HZCLD7EkLCS1K1OeJwQVp6s=
X-Google-Smtp-Source: ABdhPJwVIHZ8QFrS7bkLSkayDYvdkIPRu2IXlYgIpREJgjoNtkqomabVmW3OFnus8z1KUv2UXoF4nw==
X-Received: by 2002:a4a:d49a:: with SMTP id o26mr13110145oos.0.1591181536665;
        Wed, 03 Jun 2020 03:52:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38e:: with SMTP id t136ls343910oif.9.gmail; Wed, 03 Jun
 2020 03:52:16 -0700 (PDT)
X-Received: by 2002:aca:230e:: with SMTP id e14mr5831062oie.127.1591181536296;
        Wed, 03 Jun 2020 03:52:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591181536; cv=none;
        d=google.com; s=arc-20160816;
        b=BhRMNbOINsepV0nnfYzhQgVA8/oSfK16Z5a1EEXVwo8EiHpul2WgTuusG1ac4kK4gB
         zPxOrqU0yU40TbrybVaETsns0HJyif1natMAkv0rqdtf7R0hHn3uxIQXLDEnZoFTmfCX
         OcHSgYZygWoTWt2gWc/lWLuOIzHAlztz6UrOanux4S6MGAi3gfmffmvYa28EvfGgCMdY
         iJ3LcbYSY15lHP1hdZ1AgbVln1RdczcCIqXbgxIsiZAaDxRUc66OKkqAeAIMbNDz2QYF
         ra7HPqftWulFSlgnyFtM2X9RUou2WBCWdAIViQ2TF2PfxPrTExzo+wiLCAV9QLxHYHZd
         ojdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gDAYBsNhd3MhHyd9Nfu4JI7C94w3l3VoucL+udwtlmg=;
        b=yJs0iHEmhmglGeWd1hkANil30uh6QAD+fyXlPDrJYjaxlIn2wuVNeP+blyMJRhFRVa
         G3IrOmS+C/B/PN7S+GWRtIczNlGhmMKkxM/vjxxbdFW9Miv+HW0pbGSma0TJcWDs8Xyt
         qdc0jvTh6fWYv2+cYFv9aK7eUueLh2MpY2d2T7gelrlUhuZk+jnUPl449Eyzn4TUpc4L
         0w0uy/7iiOUGvRtNk78zHuiSjgIkF/EmY5Z2xj0OhBWHvMx7X4pU0L1gw/9ONHoWV9/T
         lJcDsIPG6O8F7QWDeemVz7rvX6NTHd3SXx/lfT+34bZ6uC/n2B69h/A3gHUdSZWB5yoN
         8GJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=H+Nek6rC;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id y198si58747oie.1.2020.06.03.03.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2020 03:52:16 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgR0C-00053H-VC; Wed, 03 Jun 2020 10:52:09 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 50A6F30008D;
	Wed,  3 Jun 2020 12:52:06 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 1E28A20598375; Wed,  3 Jun 2020 12:52:06 +0200 (CEST)
Date: Wed, 3 Jun 2020 12:52:06 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: "Paul E. McKenney" <paulmck@kernel.org>
Cc: Marco Elver <elver@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Alexander Potapenko <glider@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] rcu: Fixup noinstr warnings
Message-ID: <20200603105206.GG2604@hirez.programming.kicks-ass.net>
References: <20200602184409.22142-1-elver@google.com>
 <CAKwvOd=5_pgx2+yQt=V_6h7YKiCnVp_L4nsRhz=EzawU1Kf1zg@mail.gmail.com>
 <20200602191936.GE2604@hirez.programming.kicks-ass.net>
 <CANpmjNP3kAZt3kXuABVqJLAJAW0u9-=kzr-QKDLmO6V_S7qXvQ@mail.gmail.com>
 <20200602193853.GF2604@hirez.programming.kicks-ass.net>
 <20200603084818.GB2627@hirez.programming.kicks-ass.net>
 <20200603095932.GM29598@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200603095932.GM29598@paulmck-ThinkPad-P72>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=H+Nek6rC;
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

On Wed, Jun 03, 2020 at 02:59:32AM -0700, Paul E. McKenney wrote:
> On Wed, Jun 03, 2020 at 10:48:18AM +0200, Peter Zijlstra wrote:
> > On Tue, Jun 02, 2020 at 09:38:53PM +0200, Peter Zijlstra wrote:
> > 
> > > That said; noinstr's __no_sanitize combined with atomic_t might be
> > > 'interesting', because the regular atomic things have explicit
> > > annotations in them. That should give validation warnings for the right
> > > .config, I'll have to go try -- so far I've made sure to never enable
> > > the *SAN stuff.
> > 
> > ---
> > Subject: rcu: Fixup noinstr warnings
> > 
> > A KCSAN build revealed we have explicit annoations through atomic_t
> > usage, switch to arch_atomic_*() for the respective functions.
> > 
> > vmlinux.o: warning: objtool: rcu_nmi_exit()+0x4d: call to __kcsan_check_access() leaves .noinstr.text section
> > vmlinux.o: warning: objtool: rcu_dynticks_eqs_enter()+0x25: call to __kcsan_check_access() leaves .noinstr.text section
> > vmlinux.o: warning: objtool: rcu_nmi_enter()+0x4f: call to __kcsan_check_access() leaves .noinstr.text section
> > vmlinux.o: warning: objtool: rcu_dynticks_eqs_exit()+0x2a: call to __kcsan_check_access() leaves .noinstr.text section
> > vmlinux.o: warning: objtool: __rcu_is_watching()+0x25: call to __kcsan_check_access() leaves .noinstr.text section
> > 
> > Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> 
> This one does not apply cleanly onto the -rcu tree's "dev" branch, so
> I am guessing that it is intended to be carried in -tip with yours and
> Thomas's patch series.

Right, I've not played patch tetris yet so see how it should all fit
together. I also didn't know you feel about loosing the instrumentation
in these functions.

One option would be do add explicit: instrument_atomic_write() calls
before instrument_end() / after instrument_begin() in
the respective callers that have that.

Anyway, I'll shortly be posting a pile of patches resulting from various
KCSAN and KASAN builds. The good news is that GCC-KASAN seems to behave
quite well with Marco's patches, the bad news is that GCC-KASAN is
retarded wrt inline and needs a bunch of kicks.

That is, it out-of-lines:

static inline bool foo(..)
{
	return false;
}

just because..

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603105206.GG2604%40hirez.programming.kicks-ass.net.
