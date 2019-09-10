Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBBWI33VQKGQERODD6CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id A99E0AEB69
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 15:24:23 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id p192sf1882939pgp.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Sep 2019 06:24:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568121862; cv=pass;
        d=google.com; s=arc-20160816;
        b=ge2Cy6mXUBMiV9RLZEIs79SFm62SlI4bO7fjgda8DswNR47/isn2SJPAihvEQ23mpU
         CQmlkFLJAFKAq3ZTu64ex9X2jwPOpW6nwztyzIUeJHI0lTOCqz4UGpa9/wV+LkXqGhDm
         +br+x7CNuV0k2UAFoLEQ2vrBDNxc+8tYFNiImN5Op5aXrw4IbjAcLO7WAiXfkOeD3VnN
         0afxOX4oqlbYizbfXGXNedKKgKi5XX9GJ297yEaYaz/0ok73wtFh4rxJPTILaMPeKfoh
         qEtTwCPRr2wy587ukySM4gNQIfN/Du96StDxhZUkkuWWSUAcK55zj+Yc8sC6S4eaJO9o
         6q6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=I7ju6kQ7Rj8rn9tDfbpvOym2Ljn1EYDLNgI82ZTGs2Q=;
        b=0baTgxOWH3XKaoYDTiblDZqBU2f//FmBiigcetSEFNVdWdjMiIfwDOAK8WSAQJ2RmP
         uxl5RDr8iuKyhQPWFE9iDu5MzyMHMqLLlajh28x9CSGY9S0I4CEMxuYo7vuzNSbRK9za
         LM2outRsP8odSsZxwAdgsGmyiQtPRgESeEiYRYDPiKRmxGOPqozdeU5Ij5anZsdBmnYo
         +KroRaWlKAoI+o/zFWSYA1c9DI+OwmLGJ1m/tp4rKgwnIs3lrIf/pdZRH1k2c0k2L+zF
         ArbxqXwRfJL5gfDGR8lAgjczxqgpqIEz5jVhOOL4F+MbJoTRizot8AYXPiblcTx348aS
         P2kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QXJGMdSY;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I7ju6kQ7Rj8rn9tDfbpvOym2Ljn1EYDLNgI82ZTGs2Q=;
        b=lqnG4ip5Kt4+yA1A6ZJiAB5lAOHqaNha4JrsqmRGa09wlrfe4QWPgJpRZM0l/faEjV
         vSDXMAL+NKXmiQUa5o1bN7AHJ12yoapt3XDBe5b8zFQJLyHS68XR4MDPfRKkCmcrUw9S
         8c3jh5XLvyl8qp1PbL0ooJBCrWLqZsmNX8fQbk/NQYVGd1dQ5TEOoxAxL8eyPQKLNfPc
         V80Z+HSx43sRAm7SIOPqh9ra1t6lGdYqS+ncPToyeKljJ3UwLL0gqyQatrRHIq3C2KgA
         WDGnvaaZRrOTCamhQRn3o0OitNuDrwg+G6R6vBFA3NNTOX2V2msHPBnu65zWapCxJEMf
         Jz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I7ju6kQ7Rj8rn9tDfbpvOym2Ljn1EYDLNgI82ZTGs2Q=;
        b=Xdcjym0FTYfdxDQEE3B3BD5hX8u9Dxu0ctHQLNKH7p0olDH+hz+0rGzfdADhbAyuYQ
         jxisXI+TuPhL4LKI9otwp4rFAiCJYrdor3kkKof37zcBtt3woFdAJkaQJ7bCRvt6JizO
         5XG6IFZFKZt0eDXFVvNJNPRBsL3H34bJ0DqOFwGBjYvBDPVFEqU68so36OiZtdPdztwZ
         T176CIiqOQDNzNmVdzfC3ZhXoB2H6aUGRUmy0b6FQ7iOKSuumuW1jFhZPgqEp5dx07Yy
         e3F6uozSh2IXJnycIT3D/2eu22egY7LoGLenxUxo02IHdJNf5tagi2fKLgCAlf55HUgC
         QDBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV914o3p5ePinO69eVDPbv3vGXbqcZIDYJz3gLFzLY+oUbR3zzz
	twMylMyBvNvqvjX+GeCmVgI=
X-Google-Smtp-Source: APXvYqxvlmNQKE5ej3Ftu4RhNvJJo9zbNQeSO0pZZa75QzwgbQFzNCfT3E22GpHdDvRWbmRDOOXOYQ==
X-Received: by 2002:a17:902:7687:: with SMTP id m7mr32231570pll.41.1568121862150;
        Tue, 10 Sep 2019 06:24:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:85c5:: with SMTP id z5ls5226777pfn.15.gmail; Tue, 10 Sep
 2019 06:24:21 -0700 (PDT)
X-Received: by 2002:a65:5003:: with SMTP id f3mr28087579pgo.335.1568121861740;
        Tue, 10 Sep 2019 06:24:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568121861; cv=none;
        d=google.com; s=arc-20160816;
        b=gS+zfTD37tC4GhiagHBhsFne3G2if8pwr4zD9yVD9fBKMYsyPsMKXhCHK/XaDfM6bd
         C8A0UZWgMpeGgwXVATC7ohhy1kGFO0CuLJLwCGroyq3/gJUuzlAiinbm0QdVpPqJMFxT
         p9TtCWaWyNoVYdI4EAEXmyo7kciN71gFYA0XILWSpavhZgcETq5xSyfuUxZyz6L6lbnf
         jkp/isAbWhY5wIrlhMoH7utASaSpYZDTGyjohL5LEvwFYQk9XoddMwIBhCW3et3CP1j2
         AihXiVmpivZKN7fEv5mtpYt3PGi7ldU0itBS7a9dMl63dFTWJqzW/JprbO5HOEHomfi4
         h8uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=UgqRcRZUiU3zvvh/Ka+Z5r4932/I5zliAuK3NFhhmS8=;
        b=pm8athR0hZZ39glv3V16yDwMJBonpqmU2H1hKnKwI0ivKio2cGArUo5I5CySesfsAy
         DSyl74itWpBzztZ1B6iPuSs67o62YfOWaI5G8M4dPv3QNvNOc4Zex6CCYqJxiHkTN66f
         Qy4GLSDLtjxTxT24Vp8A2a1iDqytnH3eo8mB+0qGc/NTDM+Glb3aZVvEreHmqmxi2+3s
         Px/tmKKrvAlXp+PGSTQiepiaRHzdJlUO55zMtcUPZkkWs+kiXjERSQ29BW2Sliw5dyWI
         VW5GsmSCK/DtoCICPrVDB4gWWud/xI4u7hQMX81gwfQRbz9yyAx8UMjpL3PNKtPT2Ll7
         JenA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QXJGMdSY;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e20si1122911pfn.4.2019.09.10.06.24.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Sep 2019 06:24:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2A11F2067B;
	Tue, 10 Sep 2019 13:24:19 +0000 (UTC)
Date: Tue, 10 Sep 2019 14:24:15 +0100
From: Will Deacon <will@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Andrew Murray <andrew.murray@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Borislav Petkov <bp@suse.de>, Ingo Molnar <mingo@redhat.com>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190910132415.4j2ygxhuanihvzhx@willie-the-truck>
References: <20190909202153.144970-1-arnd@arndb.de>
 <20190910074606.45k5m2pkztlpj4nj@willie-the-truck>
 <CAK8P3a0O8bVLgMzyc9bXb8joy6CZevP4CVn5eEwEPVqAOutDEw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a0O8bVLgMzyc9bXb8joy6CZevP4CVn5eEwEPVqAOutDEw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QXJGMdSY;       spf=pass
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

On Tue, Sep 10, 2019 at 10:04:24AM +0200, Arnd Bergmann wrote:
> On Tue, Sep 10, 2019 at 9:46 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Mon, Sep 09, 2019 at 10:21:35PM +0200, Arnd Bergmann wrote:
> > > On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> > > when CONFIG_OPTIMIZE_INLINING is set.
> >
> > Hmm. Given that CONFIG_OPTIMIZE_INLINING has also been shown to break
> > assignment of local 'register' variables on GCC, perhaps we should just
> > disable that option for arm64 (at least) since we don't have any toolchains
> > that seem to like it very much! I'd certainly prefer that over playing
> > whack-a-mole with __always_inline.
> 
> Right, but I can also see good reasons to keep going:
> 
> - In theory, CONFIG_OPTIMIZE_INLINING is the right thing to do -- the compilers
>   also make some particularly bad decisions around inlining when each inline
>   turns into an __always_inline, as has been the case in Linux for a long time.
>   I think in most cases, we get better object code with CONFIG_OPTIMIZE_INLINING
>   and in the cases where this is worse, it may be better to fix the compiler.
>   The new "asm_inline"  macro should also help with that.

Sure, in theory, but it looks like there isn't a single arm64 compiler out
there which gets it right.

> - The x86 folks have apparently whacked most of the moles already, see this
>   commit from 2008
> 
>    commit 3f9b5cc018566ad9562df0648395649aebdbc5e0
>    Author: Ingo Molnar <mingo@elte.hu>
>    Date:   Fri Jul 18 16:30:05 2008 +0200
> 
>     x86: re-enable OPTIMIZE_INLINING
> 
>     re-enable OPTIMIZE_INLINING more widely. Jeff Dike fixed the remaining
>     outstanding issue in this commit:
> 
>     | commit 4f81c5350b44bcc501ab6f8a089b16d064b4d2f6
>     | Author: Jeff Dike <jdike@addtoit.com>
>     | Date:   Mon Jul 7 13:36:56 2008 -0400
>     |
>     |     [UML] fix gcc ICEs and unresolved externs
>     [...]
>     |    This patch reintroduces unit-at-a-time for gcc >= 4.0,
> bringing back the
>     |    possibility of Uli's crash.  If that happens, we'll debug it.
> 
>     it's still default-off and thus opt-in.

This appears to be fixing an ICE, whereas the issue reported recently for
arm64 gcc was silent miscompilation of atomics in some cases. Unfortunately,
I can't seem to find the thread :/ Mark, you were on that one too, right?

> - The inlining decisions of gcc and clang are already very different, and
>    the bugs we are finding around that are much more common than
>    the difference between CONFIG_OPTIMIZE_INLINING=y/n on a
>    given compiler.

Sorry, not sure that you're getting at here.

Anyway, the second version of your patch looks fine, but I would still
prefer to go the extra mile and disable CONFIG_OPTIMIZE_INLINING altogether
given that I don't think it's a safe option to enable for us.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190910132415.4j2ygxhuanihvzhx%40willie-the-truck.
