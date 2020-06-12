Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBOGQRX3QKGQE4HTOSYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F11C1F7759
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 13:34:18 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id e82sf9607509ybh.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 04:34:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591961657; cv=pass;
        d=google.com; s=arc-20160816;
        b=vSGBBbo6RsCNxYsOlU/AycZLrxrOJx30IWQ+0UCkPYyCIXBjhPhauViA+16vOVMSv5
         xqgPQJzDAD4e6RPwnh0n8p2LxbyxHWAUoKcDzmYOpY5kAMLU99z+NXrxJa6G34G2kwa4
         OmmnuRnORNAjlPINwFSUfP2Isv2SLwSgIPEi2A3NpiEtVrXSNTGhdPikArs1WAbNN28B
         FdEDhQO2aOWXy7dftOPizVloO4p/+JFIIGNFhGmKMz+niS7repQ0o6D6LiOtmmvg8Kcl
         0Mc9WbmJOoOvUscqkXqfuuE7tZWhTFA5rIoM9itUi8IHveh+fwKTZi1M1WcgEYU9BSLR
         jh2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yP8wzukvpGd6uCe2+dsfRbgaQB1DOfyLqY3uMCXo/Yk=;
        b=G/ROkw5VlKzYS4d7O0eEmlm3yE0uLN52CE1dweK5swBxJAAGIhZb9TXt7nLerWTThp
         ccKILWKyae6Dq+mkjlGwhB0jQXHs4XpHS87Q84A/AF2FPgr54tO8rIva8wm6IEs3nhSU
         ZhVoWQ2cgQLUCYdax3eqzySJifKd60ltG8hVjP+NuXMcBvGXDItPOAV71IbPj6LEagON
         PmFH/hGQER97LnpIv3YZ/2PE9N3eCt7H5bjYH/Ne5T/+24XMOd/Rr98bx29ku6hYbZpo
         iMn3yNfaHEsB4FSqgakEhnGCcsrtdUeuZddF2nvDs1vA0wF6N4sos9DnhEvJzGvBRmlA
         6Unw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=oCw3KNDX;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yP8wzukvpGd6uCe2+dsfRbgaQB1DOfyLqY3uMCXo/Yk=;
        b=RO5oyuU93zCzQ6XKWjYsmjaxPBthnVp7E030QVyOMRYGW+B8AdGkD+UleQfUmfcIY3
         ACc6KlA87RfiolX4XHamb2UlnxbjHxCOtmrJ/yCBrzvptlIWTvxnGN1cMRGVYSCM2L2n
         NAbi2RfBHIp3bFwVuWF7bZEDsuMTQOTRpoxbr9Es9lqD8rLs0pngwW2/qBGdLbO336v+
         FET96bVxoTvmn1ZgaHP9DwEMEi1GuOVq2cudvA0zOns9czqll/953YpWBCw397Zaf8zS
         UVVLQQIxyv84yigcj4ue6BHeEWWCUPqsSL099FTktYRdCfUeuiQRbnruzGHPcQt/keFv
         ESHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yP8wzukvpGd6uCe2+dsfRbgaQB1DOfyLqY3uMCXo/Yk=;
        b=TPTv6QfUixc3rHJaYNGIyrGpaxWaZtU6JeoU612W8PBGlZaw21GuBfA0+GKSrn56wR
         HctXjEskoXwCdUXI4f800f9ZoMGEomdE7qsYnck+tx/UGvtelEqB4ppfDoPQhQJk6K8A
         mtPwwQ96daFNOshyqF6ztrZoXRErx1+jRAxd5tUJstU+l+uIEIhMFh/VlHaqXkyYQ1ld
         5aKfMnyP/mG2rFO56IdRzX0Ffo+rhnJJkZ7wd9MiF23aYnAkew+LvLkdEL+Qz+R4OrmG
         k00Sp94Abu0D80scOkRob1xdCsG5YXskTXJO8KgXmO4cEkGnh28A53FhawPh3eMXMlQ+
         ebxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326Xxt5uk+yGHba4paDoiuYuAwYehu6yQ6dx9GEBOmYGES0JPO9
	/ATpjQ2VukK+fiDiv27TQTI=
X-Google-Smtp-Source: ABdhPJwoqFdYkHx9p+9+uGy4uQI6kDMU0MAF5aIF2r3lZU+0wqkLy1B7ozng0cUDcg0djLZ0m1JmnA==
X-Received: by 2002:a25:5306:: with SMTP id h6mr21643350ybb.466.1591961657069;
        Fri, 12 Jun 2020 04:34:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b18b:: with SMTP id h11ls2202957ybj.4.gmail; Fri, 12 Jun
 2020 04:34:16 -0700 (PDT)
X-Received: by 2002:a25:941:: with SMTP id u1mr23051509ybm.274.1591961656766;
        Fri, 12 Jun 2020 04:34:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591961656; cv=none;
        d=google.com; s=arc-20160816;
        b=VNxizLygP+7KOHI+GjXatUVpSrl8FjE00YdXyKjDYGspnpVjD21W5kx/C0aFbfdpVP
         e6b+reuGWAsCryyuuxIplKE3drKSoPIqZ95w9lMkugWdi2f2P1EqbBINlrZky5JtD2jN
         2ftf6hdLQMLcJT/Y434rYVOoJxcQ1nHcZupJz53L5sKKQD6mWcS4WtpYlsGxhsSCAK5X
         FvGXtLmD2/wP6vjwyay2KE4AeB+kZBkjg/+aSiXtEzTtVZg2NjgMaZXQ1/avkq/xLNt6
         DxLfdLdcQw0pvunW+9NbY69Cgyd8PoKHjySnv6+FbDZnQdR+Hnk3nhLtPK3/mu8jb8gQ
         q70A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KeIr7tqTdmTxWp0qLbXPXOvRu/jpVQnRhJVoQ2kBrSM=;
        b=CI875OQCmJhn1UzyuHJS9K82buLZST2ZBlIdCMg6LOddO97n21bwl+RqnwTGZSTkzf
         uS48U9lbzOjG6qeNv/owiVJFXLx+o42ufTVz3VGjPZyKDhkgDhlaf6WJnrbiCw3v2KmK
         apKk0tKy/iLyDhU5BDOue725/uzGIdTDLz8XVQD//4Fuilo8eBLPvqRNdv50DjAJj5cv
         Z4z2ODmVMDeDgWtkJG6qgPvA3hbM3nP/i4CCu18IAXaAnlYjRQiEnBrKQvuCf018TlME
         8CW9j03b5DzXblZxp9Pf5w1F5D7qlWLIFAo1aH+0dqpemX34sZVJ1VlY9HOSPFIwEtRG
         FWyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=oCw3KNDX;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id n63si424668ybb.1.2020.06.12.04.34.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 04:34:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjhwi-0002Ob-Nd; Fri, 12 Jun 2020 11:34:05 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id C57B83003E7;
	Fri, 12 Jun 2020 13:34:01 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id AB98B29DB6157; Fri, 12 Jun 2020 13:34:01 +0200 (CEST)
Date: Fri, 12 Jun 2020 13:34:01 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Marco Elver <elver@google.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Mark Rutland <mark.rutland@arm.com>, Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Alexander Potapenko <glider@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	the arch/x86 maintainers <x86@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [PATCH -tip v3 1/2] kcov: Make runtime functions
 noinstr-compatible
Message-ID: <20200612113401.GC2554@hirez.programming.kicks-ass.net>
References: <20200605082839.226418-1-elver@google.com>
 <CACT4Y+ZqdZD0YsPHf8UFJT94yq5KGgbDOXSiJYS0+pjgYDsx+A@mail.gmail.com>
 <20200605120352.GJ3976@hirez.programming.kicks-ass.net>
 <CAAeHK+zErjaB64bTRqjH3qHyo9QstDSHWiMxqvmNYwfPDWSuXQ@mail.gmail.com>
 <CACT4Y+Zwm47qs8yco0nNoD_hFzHccoGyPznLHkBjAeg9REZ3gA@mail.gmail.com>
 <CANpmjNPNa2f=kAF6c199oYVJ0iSyirQRGxeOBLxa9PmakSXRbA@mail.gmail.com>
 <CACT4Y+Z+FFHFGSgEJGkd+zCBgUOck_odOf9_=5YQLNJQVMGNdw@mail.gmail.com>
 <20200608110108.GB2497@hirez.programming.kicks-ass.net>
 <20200611215538.GE4496@worktop.programming.kicks-ass.net>
 <20200611215812.GF4496@worktop.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200611215812.GF4496@worktop.programming.kicks-ass.net>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=oCw3KNDX;
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

On Thu, Jun 11, 2020 at 11:58:12PM +0200, Peter Zijlstra wrote:
> On Thu, Jun 11, 2020 at 11:55:38PM +0200, Peter Zijlstra wrote:
> > I'll have to dig around a little more to see if I can't get rid of the
> > relocation entirely. Also, I need to steal better arch_nop_insn() from
> > the kernel :-)

Oh, I just realized that recordmcount does exactly this same thing, so I
checked what that does to the relocation, and it turns out, it does the
same thing I did. They change the relocation type to R_*_NONE too.

So I suppose that's all right then.

I suppose I ought to go look at the recordmcount to objtool patches to
see if there's anything to share there.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200612113401.GC2554%40hirez.programming.kicks-ass.net.
