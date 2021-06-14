Return-Path: <clang-built-linux+bncBD66FMGZA4IOXR44QYDBUBA2YLK5W@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 326D63A5F3A
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 11:39:56 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id i126-20020a2e22840000b0290156bb3fc83fsf1289624lji.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 02:39:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623663595; cv=pass;
        d=google.com; s=arc-20160816;
        b=zAXTRJE+ObytgYziIFrwh4Qmmt82PoZiNDq2FM/xjq5/x1rmcxDoBiIPyyx0eCOxeG
         W1ommpXQ2mYMVwLNnVvLyOdixwvYa7Zhi8S11LvCJoLMJ6ogytEZcFrc8dsAfnOf0fof
         30eh/o5Kuy6sWo67VYIZ8vWcrSwYMIso4eWrOc3JIVuGOQvUP38V8vPvN0o0eaTUagWg
         Gf03JdM364BpBTTYFEHqSruq4PNRnPsSnrufMzKbrPsiXUggFcjS75vL0/zZqJHF/EJL
         ZhjG0Ohg5G1sfhUBXuJI+5CudGaf1TbnvP8bWBUhe4alPo91HnQxS7mxhfq0WlpEPSk8
         oeRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=o+qx2zAhJdpwanHOUOC5XpmQ3Zo/OcnQz8iV80BORHQ=;
        b=TN/tA4q95IcQgazH8ULH+zWxNHov+zqh8/ehsektGMbxdf3Wf3DbkaM+lS9q9du3YM
         gTzksCjg7BAMqmsARcw1wXbMqaapCKwrTmUKXfkiKqdWa+05LRs2eJc3WhWIcrXHg2N8
         nBrdZV17pvqpTi6RFaGb98u5FZ5GKLqgCpb4Cev8Cfk3+2oqnaCZXVRcSXlx+AgGQtDO
         RXrfSanAxFCe8jYNNhdQTP+beqx3CB2ok+2RE5ykZnx5/0W2jBWY1M8mcg5zS1tE5Jwd
         5nO/OU3Ia8lBUjrd5W0jsxlB1qnwh2gYnTui5262q0G/dB669uMSF2vGoivvj9K92PYN
         fCEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fSErw+ts;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o+qx2zAhJdpwanHOUOC5XpmQ3Zo/OcnQz8iV80BORHQ=;
        b=bDj1CGmyj1+P1kTU9seZ5feBEUw1t56cF/97hOJAjHfFDgM2lBBGj+fu2PrM0k3EVp
         8WGM6VGnOkzA0sxnSx0qUhIjOd7e72pnHpDmXjm/R/mF3IbbEk1YOtODdPEIN4ShM123
         fmCkbf9+YHX76beKngahGRq6xVQsdZozcColyHkObcQq2EEUGChdcFt3Fw8bEEeRYmyc
         SG6WfYoHkEqY85EPcTv11aFAVXFMjdK+F1c9/ARzn1YwVt9c5a6bmRQ+0FDS6ym6IX2m
         E/J1PPElopXY+WkA+VuITnluXuoQPjBhkBdYj9e0yhz8G1IPS2ZxFHx30HA1tioeA/ap
         ey4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o+qx2zAhJdpwanHOUOC5XpmQ3Zo/OcnQz8iV80BORHQ=;
        b=Wb/WAZEbkeJNy3Zzeit5fSksbh06/0OFmdjMgNxi98LIUp7pjMqrxngfxhKdKRDRlK
         yRckH/fI8VeMI4W2ogENg0xzmlu+xR4z7kslba4o3HpI+uTOMbgtmbH2mHTucXnANRAJ
         iaLLODAmwqf4fUTlSAa6c5ZOxEvQ3LnBXag8dbrOPhe6eK8SXTkaxzm4Cl6iSIXnvDk9
         z7r7wK+u0YwmYxtkkIeybxrQgm9vqb51hBcFiU9OvSYShDypzPLmBEAqy8v4tfVrxRlb
         iZfC5SZWTqRLyy0Rb/xF456rD01raNLEMrPSF4Vsnj5pR3wXPI2f+QQHVc7KjLe+9tUl
         wUxQ==
X-Gm-Message-State: AOAM532+POJLcvXh+YJ2hKHcjGnYg/FTYQaRF0GpSijb4lTu2PSl/MEW
	C0671mpB5p2XNIzhlDae+j8=
X-Google-Smtp-Source: ABdhPJyE6rRONXW5pC5f96bS8JLOuCBuxapMPlv1XBcAgu5iBpZfmzILJSQbEhJ5ejGQbyUYG3kE2Q==
X-Received: by 2002:a2e:8350:: with SMTP id l16mr12888731ljh.106.1623663595808;
        Mon, 14 Jun 2021 02:39:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:6a03:: with SMTP id u3ls2860751lfu.1.gmail; Mon, 14 Jun
 2021 02:39:53 -0700 (PDT)
X-Received: by 2002:a05:6512:30b:: with SMTP id t11mr11886220lfp.661.1623663593307;
        Mon, 14 Jun 2021 02:39:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623663593; cv=none;
        d=google.com; s=arc-20160816;
        b=Z8O5hX3siL8DJpsM0AEzqi+lXivPiE8Fku1v4JyIbZ+7A9C1U2vbSEp5hFuopE6XHO
         z6Oue1IetibKc5J0gg77+KqdxQQBzCaQOAp/Kt4OeYylulOPtUMPZhO8ScmcqWwp0yYM
         e68Ikei9amya6XpoD16i9vtVT3ZW5JanWfuSbvAM5CmSXTPyMeITLg4jokMpqVKifT7Q
         vut3XKkauviUJcTCkVjk4dJNTGTxsrd/09AXyb/Be9qOjGJBnSxE5HlEKNN3M3trmVHX
         BZxXEyaaCHk1W5ctTC30tyrHYTQytMSTIe2mR2Oeef8rcZjEcY3x4ehaN9gnr0bF9c+P
         dNLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c46qke8DxgxIDv3IuVIKJnlJyIG+YTeThnBZsvtK/rg=;
        b=M2uH6hGCGuLI9/++eJQkcq4UDQPcruwpvKWTR63Oi8u82E1AfBtUOv4w6lEMyEMfFT
         X16mQQrlPPV8R3KmfoQ6Ph6bDpt2PoUNEI4QxDshlEedk3fMVPwn3wRFqGBohs5yJkzM
         6K1cpPTQERWtTVGX/SD6AvTkoiQpELgOrM8XpZJd+2P2DnwPURByAtTpO9i9txie8pfX
         cTkxFdDnupc9Py/ixpyHu5mA1xWuTcCFVacyU95QK/L6YNtEiM6H9FQ1N2tVujypBBkP
         DbYQTT9R7RyH00c/HKznXT1/kYGCNl9YybewRb8QZvCk5Jl7F03FMcOGH2yqlwMwBfUl
         L2tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fSErw+ts;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id h22si613846lja.5.2021.06.14.02.39.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 02:39:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Received: by mail-ej1-x62c.google.com with SMTP id k25so15586332eja.9
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 02:39:53 -0700 (PDT)
X-Received: by 2002:a17:906:7188:: with SMTP id h8mr14584262ejk.529.1623663592637;
 Mon, 14 Jun 2021 02:39:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net> <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net> <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com> <YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net>
In-Reply-To: <YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Jun 2021 02:39:41 -0700
Message-ID: <CAGG=3QVPCuAx9UMTOzQp+8MJk8KVyOfaYeV0yehpVwbCaYMVpg@mail.gmail.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization infrastructure
To: Peter Zijlstra <peterz@infradead.org>
Cc: Kees Cook <keescook@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, andreyknvl@gmail.com, dvyukov@google.com, elver@google.com, 
	johannes.berg@intel.com, oberpar@linux.vnet.ibm.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fSErw+ts;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62c as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Mon, Jun 14, 2021 at 2:01 AM Peter Zijlstra <peterz@infradead.org> wrote:
> On Sat, Jun 12, 2021 at 01:56:41PM -0700, Bill Wendling wrote:
> > On Sat, Jun 12, 2021 at 1:25 PM Peter Zijlstra <peterz@infradead.org> wrote:
> > > On Sat, Jun 12, 2021 at 12:10:03PM -0700, Bill Wendling wrote:
> > > Yes it is, but is that sufficient in this case? It very much isn't for
> > > KASAN, UBSAN, and a whole host of other instrumentation crud. They all
> > > needed their own 'bugger-off' attributes.
> > >
> > > > > We've got KCOV and GCOV support already. Coverage is also not an
> > > > > argument mentioned anywhere else. Coverage can go pound sand, we really
> > > > > don't need a third means of getting that.
> > > > >
> > > > Those aren't useful for clang-based implementations. And I like to
> > > > look forward to potential improvements.
> > >
> > > I look forward to less things doing the same over and over. The obvious
> > > solution if of course to make clang use what we have, not the other way
> > > around.
> > >
> > That is not the obvious "solution".
>
> Because having GCOV, KCOV and PGO all do essentially the same thing
> differently, makes heaps of sense?
>
It does when you're dealing with one toolchain without access to another.

> I understand that the compilers actually generates radically different
> instrumentation for the various cases, but essentially they're all
> collecting (function/branch) arcs.
>
That's true, but there's no one format for profiling data that's
usable between all compilers. I'm not even sure there's a good way to
translate between, say, gcov and llvm's format. To make matters more
complicated, each compiler's format is tightly coupled to a specific
version of that compiler. And depending on *how* the data is collected
(e.g. sampling or instrumentation), it may not give us the full
benefit of FDO/PGO.

> I'm thinking it might be about time to build _one_ infrastructure for
> that and define a kernel arc format and call it a day.
>
That may be nice, but it's a rather large request.

> Note that if your compiler does arcs with functions (like gcc, unlike
> clang) we can also trivially augment the arcs with PMU counter data. I
> once did that for userspace.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVPCuAx9UMTOzQp%2B8MJk8KVyOfaYeV0yehpVwbCaYMVpg%40mail.gmail.com.
