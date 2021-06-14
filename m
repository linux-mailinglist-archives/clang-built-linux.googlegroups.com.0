Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZUBT6DAMGQEZXOUVQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EE63A70B6
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 22:49:43 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id u7-20020a0565120407b02902ff43b1e7f4sf5692217lfk.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 13:49:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623703782; cv=pass;
        d=google.com; s=arc-20160816;
        b=rG1BnyiwI0zbMJDfcE/6zHnN80AbqLlHYmKGdgBeh8xTilulBZ+tCGyv+vnSO+0wEu
         jNPo/2PENOEe6zRMQAj0cmeTCbgLfFXu+rRPx53rF8r3T+OyqiTRlCw9pVB2yila7ipx
         Rv8OhrHoguVY+J4DfsIBjDWRY3t/rkx9IKdltPixgIyXp92NO3AfHUA8zqD+uVSD/rGL
         4qpP3U7S/PohrN6NObaN7eqzwMefHPEZHiVlsj7OG3qlXEjkv0q9cysnVK1oKi6UkJ2v
         yZ17VLqiOz7EiguEcPmF42479R8L7Dgwlq4Ea4ehP+kAqjnTZFtmO8SNFCmiBBbKHaXZ
         0MTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Y4NPenw85g0syDX3l085leIQDGTgnhokazsnwEopznQ=;
        b=AHBnJeIgDnl773csi4+UShXyjfxG/gks2tfSAxOzEfscLMvdxONyZ+YQWusI8/40Vs
         x175mY0kRONwHytOnow5MNQjjT5i/GNsM5rZ3izStPpTiaIonVbof62dmwrYFGMmJSTp
         Cq9MdKrJLUYpjrZ/HAtzD03CNAAQDd03K8V/0QhDPFiK8VkZNJlRDbcZ/0Ozuev2B/Dc
         oPidreVuANz55A9oeWX2OANliHzidX9hPcFqrPoLomeUed5+2K+0PyQmM0ZHzmj9ZVoF
         ucnqfFwRiVyy9XSoSQd4z8LmbY2beHxMjXWuPFDNfNCORp5J0KhhjKUf5/zEbP6kXWPn
         hRjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FwsY9dIC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y4NPenw85g0syDX3l085leIQDGTgnhokazsnwEopznQ=;
        b=IYklxfvNTEH9VdNPb1HN1Xrd23tHL2sgPF+t3BrhHHcVsgUAadPfrdB4/T0VU1Rodg
         +BOPWqZGaFnhs60Ge+gWQXLXhk+p0uflCZCHVI7RQgue/fs8gdpICff6EEPOqtz9mDmO
         RZq/NFHfSid9CMArbxjMcHDuB4ZdgSfOFmXNQ/S6WdeaOqE3AeYeKO+vmaeT1KpnXD/l
         QxTfMT4kGydOLbkt2vWFb438hECbICphpaT4KJ5ycL3Fxp5bpZ8BIX8HNB3PbS+yUHtA
         0OnnZriKEcg/vBWQG6r2jwsrKZSy1mXTgGaoPF0uvdvjuaoUFl2EmTk09OVEcZXqJD4r
         Y9aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y4NPenw85g0syDX3l085leIQDGTgnhokazsnwEopznQ=;
        b=ZsQ8hTIK8JDopTklT0ug97K5e/UPKsFdLwBDBiC1980YfgK3NZLHvah4ehd+eysy8G
         re3Eqhm39XwERUUK7IBw8cGULAOrNjHGCIZAvRklp/W0ssRAI8vPJpJQDW9SJLgOmt34
         y42mzkqzcR5h/wTQnZs/w4UjtWTMBDEysrNnkOtovpBDoritM4ZX+Mru7KGXxlru30xt
         DyLuiyJIb0cn1pUNkPVWqMl4N8fmjZID92mQYMmo9fJlFQgP4vV7jXNjOj1mHmGCHC94
         PE89IuVXPUaBE0tGzuDF7w84XUwfzU/cnFtckEJ9JsVefQgUuaOh9nTcd2fGsRQEJQwo
         yX/Q==
X-Gm-Message-State: AOAM533kquK94oLYThuJdXNM+kx0YVthuPWSy80uISoSVyf+9Y1+egBw
	P1wyLQmv1NQNqKSD4KbE3Dk=
X-Google-Smtp-Source: ABdhPJzcN7NvjZHEmzF59z6F7AL3TcF9YwrbHhj+YOEs9MNhKnY8XSHUeiXg/Oizr1IMApfQgM20mA==
X-Received: by 2002:a05:6512:169f:: with SMTP id bu31mr13111563lfb.486.1623703782820;
        Mon, 14 Jun 2021 13:49:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:86c7:: with SMTP id n7ls3764009ljj.4.gmail; Mon, 14 Jun
 2021 13:49:41 -0700 (PDT)
X-Received: by 2002:a2e:9951:: with SMTP id r17mr15239898ljj.496.1623703781779;
        Mon, 14 Jun 2021 13:49:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623703781; cv=none;
        d=google.com; s=arc-20160816;
        b=NCF6jGCE/2vX3QxD3WEtcVeR3cs59fnLad7U2PNm2sbSsqLwYEaMr1MmyzYGPff5VD
         k8PyI91QTcRtqz3TtJtkMThn4Adl6RJkA1FH+Y6y8G8IU27TdWwmMzr3JllyXg4qt8Ua
         AyUyS7t3FDbSNYcshRyo4YZoz08BKlAuT4gimoCnWsmjgAvm3ncUNxHlnYug4BF+QkAe
         T0c1g7jREIREGOwTYOKGhc1fjO3DIMxhDyXzttvwAZNYhU7m/AD4M3RJsoXhr8Mofj7j
         mkp7fcu0PEPvV23g+FS7kg7GoCHNwYZEGzSIdzDjp1lzJ6HjnTdFlL9kI0ikK5YiNROu
         SmHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/8yZyD8Qxeaf9TxEOG5j+rcsyw3CCIJC6f3Y8GUzKlI=;
        b=xzWCFER+pw+H/ZUGIl3l4hmpIEfwUV4zfIQcZRQUzLTzVxgP77cJKAcpNkzYsp54zA
         WY2ZyQysK04cl0VR20nDugZMTDE5OJoWslIPU3VAqbUNomvgksTo0RlfouB8Io35Rb9b
         tTyxLhhkf9ZC2vNFO+u2LUPPhoxp5XJCAxNkD0XnkJO9v3OJCK38wRX6TK9W5YnFwS03
         cP+ij9r7FoUIXLZsZJqW61kISl5YfC1aYE6VCF1gxWSwyPhpGMn5t6bnaWJe4h53qDZp
         iVMuP5MqqYbzlfdevf9ZV7FJf9yrf8mQ3NbjA06/nFcf0p1FU98iu4J1k2I3cq/DhETb
         TYGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FwsY9dIC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id b26si15408ljf.3.2021.06.14.13.49.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 13:49:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id r198so23203514lff.11
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 13:49:41 -0700 (PDT)
X-Received: by 2002:a19:4843:: with SMTP id v64mr13899409lfa.374.1623703781370;
 Mon, 14 Jun 2021 13:49:41 -0700 (PDT)
MIME-Version: 1.0
References: <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net>
 <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
 <YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net> <CAGG=3QVPCuAx9UMTOzQp+8MJk8KVyOfaYeV0yehpVwbCaYMVpg@mail.gmail.com>
 <YMczJGPsxSWNgJMG@hirez.programming.kicks-ass.net> <CANpmjNNnZv7DHYaJBL7knn9P+50F+SOCvis==Utaf-avENnVsw@mail.gmail.com>
 <202106140817.F584D2F@keescook> <20210614153545.GA68749@worktop.programming.kicks-ass.net>
 <202106140921.5E591BD@keescook> <CAKwvOdkiQCuWB7VrQ4T-OCdoNfqKhpLx_jtBQ_uyjVVwHSOc=A@mail.gmail.com>
In-Reply-To: <CAKwvOdkiQCuWB7VrQ4T-OCdoNfqKhpLx_jtBQ_uyjVVwHSOc=A@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Jun 2021 13:49:29 -0700
Message-ID: <CAKwvOdmqLh_9WkBmMYGZ9ztX+eJ95aTQsyUB+qXYPZHun8+nMg@mail.gmail.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization infrastructure
To: Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, 
	Borislav Petkov <bp@alien8.de>
Cc: Marco Elver <elver@google.com>, Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Fangrui Song <maskray@google.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Andrey Konovalov <andreyknvl@gmail.com>, 
	Dmitry Vyukov <dvyukov@google.com>, Johannes Berg <johannes.berg@intel.com>, oberpar@linux.vnet.ibm.com, 
	linux-toolchains@vger.kernel.org, Borislav Petkov <bp@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FwsY9dIC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Jun 14, 2021 at 11:07 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jun 14, 2021 at 9:23 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Mon, Jun 14, 2021 at 05:35:45PM +0200, Peter Zijlstra wrote:
> > > On Mon, Jun 14, 2021 at 08:26:01AM -0700, Kees Cook wrote:
> > > > So, AFAICT, the original blocking issue ("PGO does not respect noinstr")
> > > > is not actually an issue (noinstr contains notrace, which IS respected
> > > > by PGO[2]), I think this is fine to move forward.
> > >
> > > It is *NOT*: https://godbolt.org/z/9c7xdvGd9
> > >
> > > Look at how both compilers generate instrumentation in the no_instr()
> > > function.
> >
> > Well that's disappointing. I'll put this on hold until Clang can grow an
> > appropriate attribute (or similar work-around). Thanks for catching
> > that.
>
> Cross referencing since these two threads are related.
> https://lore.kernel.org/lkml/CAKwvOdmPTi93n2L0_yQkrzLdmpxzrOR7zggSzonyaw2PGshApw@mail.gmail.com/

https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223 looked appropriate
to me, so I commented on it.
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223#c6

Patches for:
PGO: https://reviews.llvm.org/D104253
GCOV: https://reviews.llvm.org/D104257
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmqLh_9WkBmMYGZ9ztX%2BeJ95aTQsyUB%2BqXYPZHun8%2BnMg%40mail.gmail.com.
