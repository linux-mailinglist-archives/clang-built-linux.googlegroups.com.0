Return-Path: <clang-built-linux+bncBC2ORX645YPRB5XUYP7AKGQERFJM2UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F732D46AE
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 17:25:28 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id x20sf1405949pfm.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 08:25:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607531126; cv=pass;
        d=google.com; s=arc-20160816;
        b=Eb5ulNmVrJpABqe5NJ26PyK2QZfxT6/6yzubR2Y/dX5YXI7RnL28WKtHHhQc866weP
         motZxkJMpjiJTwWnPWleHk4tEXGLE2XGGwUzUDChm3DA+q92Q2A7IU/98RtMvZ1f4qzs
         K0/N/CtFm54D6J/32lMY47xGXMA4pHINc1yx0bVoOoeA7bmhFQqHVn6A70W4WhqGSxiL
         EvCwumyWHDo5OdezR3qcwmC6YxxgoOaehe9Z9cEPy4HBBalu2D6csN+whc9ufbXxtIN6
         UjvdRzCmJwLtWtcqMlatzjUZeXP3QEWZHcmV36G9xXBBHhBy6xvvN9D0J0gkVJNPvY9q
         juOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TKgVoks6cIrHAMyVqWPB50Z9T7JGYexZoIp25BVDbuQ=;
        b=o9WsWiSOsNX9e29kr+0qWguD66WmIhekybXSS3jFngytU36TVZjxX0xUsQqSXsbL7z
         NmZ3RvyWzf75b46btpfWNnCGlwMN/sgqqquLU3EBlHGf6YPgtRYrQb3VFVljRGI3TKdd
         cy6Gk3jJPbq0pm6JfsiFKG5DiZh9SPyT9anZpSIpZgLFdJIGmcqwrkiRPywqs092MnEZ
         jiNerXCXkMZgg3gIlaSl4LMo7Rmb/jU/bsbTV8B5ONOXVyUECezp3V/yP6SYboles/2H
         nt6EIPNX7jEehztjuH4p0HcFPd++i4ShgRlP76o1Z39p7MI7x60uhlNVm7C9U0n7pMyd
         f+xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nzPpXpur;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TKgVoks6cIrHAMyVqWPB50Z9T7JGYexZoIp25BVDbuQ=;
        b=F0mSb9/Ib18Zb+6OtM4jJVxf3bS4pQqsQBUOA9nkIfiyL2QW3p5yg0sYl4h/qa3xzI
         567LmsfKz2ilvqV1EhiWHNR6ekFUmqdK+e++ja1PppBQGa9WqlXx/syGNZjKuKV1Axzf
         fGzeiNPTgFAXK6Lbpn+wu7E/RDbaJDFX5MKq/xvSCHvxYKv66CTA/IY/9g54Pxe0qLUS
         wrsNssht66g5OnwPAImNtC1KiSAdSdlmu4LUqVoQNs07J+93gF1PzvWLE2gaUBDsLrtx
         YzcgOIEXRFKEAMw/UkgElFpnhC0C27Rw/Pm2rrDfIq41YTccJS82DreOJg11a5GOhy2g
         ZWcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TKgVoks6cIrHAMyVqWPB50Z9T7JGYexZoIp25BVDbuQ=;
        b=saRJAY3qeGaar2aSVUDbAxKoEzIazzdcAj2zuSqqThPnSm1HcpyP0vu9MsyTWdaR4P
         xuSbxTM35Rcqg0gk9vr1Z4b8eTzfT9XYL3YdKksU+Yrn4KtdW9fxT8xStuAanGRsheVU
         YkLwOk80CXbxap6elWpVpM1oZ4+ftfbHERW/VtktNHjHuxNY4K9V0Zdc/GcKz/j8e79W
         Cj1O8M58WrhU3BiZ5SisCMK4TyOjJLanm6z8IrTQjP1RhuV/XHgb3FUZUyl320EbNwte
         jY1nizpiP9nWTkXu9uhX3uRuHwGnawFbtvuFZH1d9tnDrXTo2TVN+sLlTW7/sQXPllsu
         JFNw==
X-Gm-Message-State: AOAM533BUE+9GcSRK/4R0vFUcb2h8N+k7AnOljHC9/RhaxYXNwcyut5q
	hE/C4glJEA7YE0Vw4eI9lw8=
X-Google-Smtp-Source: ABdhPJzzizrbFyZKGqZ//aMgRZ1qiNqok/lP5t8vRBmr53lJ/GvwqxmQysImRExZPlnt+IhM0+qg5Q==
X-Received: by 2002:a17:90b:16cd:: with SMTP id iy13mr2892573pjb.182.1607531126616;
        Wed, 09 Dec 2020 08:25:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:f0f:: with SMTP id br15ls1127963pjb.3.canary-gmail;
 Wed, 09 Dec 2020 08:25:26 -0800 (PST)
X-Received: by 2002:a17:902:b693:b029:da:e92c:fc23 with SMTP id c19-20020a170902b693b02900dae92cfc23mr2615604pls.55.1607531125942;
        Wed, 09 Dec 2020 08:25:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607531125; cv=none;
        d=google.com; s=arc-20160816;
        b=DHcV33bdvVYmNExkr5DP76LiUbJnNMXvstC3bd6cVFgVq0ivebOOle2sUtV98SDvj0
         0b2DAhvRJBkTucnGqCOFzfVd+4/Lcg5zCDoSSRT0VYMlEverP8RWY+HKT/QPGjTjuOjI
         FmiXypNVzPOdl3jWmyxJhqt9/KkY1P8cku9DHyE2GxRyC8EuJz0+yeoZ/4Og0GqQ2lQx
         A778VY+vW71ziDGWH7uu/B//cIbZpTAKzKV3js2JYT1MlGY7WluLrVbguEl3ysDlym6h
         aci+Evr6NlZe/fE6nj1MDqNZQ2EgBpIMwqosyt4lXhgjU3g8EqS0Ns/Hvnmyth6LwK+w
         l8Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6iPujSFaRf63ICzfMH9y30wFs4tc+8uoN3o287lcAKc=;
        b=ZcWGvOAbqJwBMvqdIRYQsKTE/sqRHJ8szxpmNMBGemOTIlOzYVn0/Kd0H5o8NSmluS
         nXOWqsF5LN2p3qv+qfWGAyhUeP7xZ/kFQvQ1SRU13PjszJ0eoN2SOysJeQpDiIbbYFnK
         vKQ09/Y1nUNBvujBHPP+YmeADc85nSOVmaoivowerTfKwL73gwr2jv5ne9LOkocCDDxQ
         +KqR76H+PkotPoVGA167UBtK2Nn0yNeZVxKTdCOS1vo9M2Kylftpw5t/6Hko9xTrIbvu
         My54rWp2uNJB8AW8o14DApXU4z6Pe8RqfP73O4RfDLvVi6UaUoRVHUT2UyFayLYDoZjB
         xFAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nzPpXpur;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com. [2607:f8b0:4864:20::e41])
        by gmr-mx.google.com with ESMTPS id kr15si151175pjb.2.2020.12.09.08.25.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Dec 2020 08:25:25 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41 as permitted sender) client-ip=2607:f8b0:4864:20::e41;
Received: by mail-vs1-xe41.google.com with SMTP id h6so1193625vsr.6
        for <clang-built-linux@googlegroups.com>; Wed, 09 Dec 2020 08:25:25 -0800 (PST)
X-Received: by 2002:a67:2cc1:: with SMTP id s184mr2651932vss.23.1607531124951;
 Wed, 09 Dec 2020 08:25:24 -0800 (PST)
MIME-Version: 1.0
References: <20201201213707.541432-1-samitolvanen@google.com>
 <CAK8P3a1WEAo2SEgKUEs3SB7n7QeeHa0=cx_nO==rDK0jjDArow@mail.gmail.com> <CAK8P3a2DYDCjkqf7oqWFfBT_=rjyJGgnh6kBzUkR8GyvxsB6uQ@mail.gmail.com>
In-Reply-To: <CAK8P3a2DYDCjkqf7oqWFfBT_=rjyJGgnh6kBzUkR8GyvxsB6uQ@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 9 Dec 2020 08:25:13 -0800
Message-ID: <CABCJKud7ZC7_rXVmrF5PnDOMZTJX9iB7uYAa03YF-dkEojnBxg@mail.gmail.com>
Subject: Re: [PATCH v8 00/16] Add support for Clang LTO
To: Arnd Bergmann <arnd@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-pci <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nzPpXpur;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e41
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Wed, Dec 9, 2020 at 4:36 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Dec 8, 2020 at 1:15 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > - one build seems to have dropped all symbols the string operations
> > from vmlinux,
> >   so while the link goes through, modules cannot be loaded:
> >  ERROR: modpost: "memmove" [drivers/media/rc/rc-core.ko] undefined!
> >  ERROR: modpost: "memcpy" [net/wireless/cfg80211.ko] undefined!
> >  ERROR: modpost: "memcpy" [net/8021q/8021q.ko] undefined!
> >  ERROR: modpost: "memset" [net/8021q/8021q.ko] undefined!
> >  ERROR: modpost: "memcpy" [net/unix/unix.ko] undefined!
> >  ERROR: modpost: "memset" [net/sched/cls_u32.ko] undefined!
> >  ERROR: modpost: "memcpy" [net/sched/cls_u32.ko] undefined!
> >  ERROR: modpost: "memset" [net/sched/sch_skbprio.ko] undefined!
> >  ERROR: modpost: "memcpy" [net/802/garp.ko] undefined!
> >  I first thought this was related to a clang-12 bug I saw the other day, but
> >  this also happens with clang-11
>
> It seems to happen because of CONFIG_TRIM_UNUSED_KSYMS,
> which is a shame, since I think that is an option we'd always want to
> have enabled with LTO, to allow more dead code to be eliminated.

Ah yes, this is a known issue. We use TRIM_UNUSED_KSYMS with LTO in
Android's Generic Kernel Image and the problem is that bitcode doesn't
yet contain calls to these functions, so autoksyms won't see them. The
solution is to use a symbol whitelist with LTO to prevent these from
being trimmed. I suspect we would need a default whitelist for LTO
builds.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKud7ZC7_rXVmrF5PnDOMZTJX9iB7uYAa03YF-dkEojnBxg%40mail.gmail.com.
