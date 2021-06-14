Return-Path: <clang-built-linux+bncBD66FMGZA4INVAE5QYDBUBCB3POY4@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B903A6568
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 13:41:14 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id u4-20020a1709061244b02904648b302151sf542343eja.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 04:41:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623670874; cv=pass;
        d=google.com; s=arc-20160816;
        b=DJm/pPxZpJPGKZavsce3tIf+UQreE/1k7W4LbmzlyOic1p8LupJCwLoduzW8dzyj4L
         Ko3h8ou37qOM/oPy6MedcdfNc0iwzxV6GWwPF5TjSVQlOkaa4X/s2BIdFEsJaIr5U03A
         mY/2BA+MTHGf7hCepowmEx8hlG+9f3w2SwiGQuDatJAwKJyjdHF2m9dQIQDd3zlYDKxB
         Gmv0412mHLJj+gJUFdgPt7UIHQVD18wJ9NMc5e1iqJ/pCm6GTOnGMlb0xdlJl5zlltB7
         zOApjC4IA0XGykeex3AU0QulkO/mY9i24j9deADNWBQrsZtQHN8ioK+R+70xvEPddC8p
         XVUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=z1iKU0l5MkgjXuWNvv48/8bZW2IWuzQS2M2Zn5Hxs8o=;
        b=cCgdbiMrF0REfhgcjkvkasD1gnupjNgk/8pyQWqZIho283cRutwKcKpNiIfUSLaTbU
         fqNEn/jVRIDf3aKfG3rwWYrFvVxP1cLzAy22CHCQxZ06EGjhXr6CU/w5jkb1k4Ud8RV3
         y98KJkIm6FxjhUQLekna+zhFJUmrBrXLAsJOYvJSskZ3kMIqXSfrnwjTeXHOM9vRG/OD
         g9nOIlIuBI2Xx96hF7x0PRt2Bsysgt5CPZlCXVN9KLW27W9pvRahww+El4bl4DD0oqK4
         v6k1nwv9OluwUgveH17j5RrjzlHoayHoXRfWtbeVcHgDsj21QwOJaF4ZHXY00nrbSeKS
         sAIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GOcz1YcH;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z1iKU0l5MkgjXuWNvv48/8bZW2IWuzQS2M2Zn5Hxs8o=;
        b=e8L/oAan1l1cISya3rqFWRFDwhDuy9jRFR0qEkjd4V/Xhmk3K1MGCAVhgZnNqnCM5t
         ReAVUBQd3WPR5LdGF4WtqKITpUOhOglcT2UwOk2RfwGlm7ENnIs16uAKAq6p1TfcHCwc
         nHkVEyPKccvUdNi/UE86VZCZ1KCG9mWh/cFEE2NM/8ltEO1GaUSk3KR+jfCkiX1sLRyp
         HJ0F0Zw4Qt5tzbt5VquCxaliGA8f/OLclIrb7mh5TcjgaKpkVujmiaJSQg0CYtOJ0Stq
         Ld49PWiH1ergrno0MULq3zsNQdV707Wh/cKww80BButRimU769xjpNb7n1JeFbNn397P
         pGlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z1iKU0l5MkgjXuWNvv48/8bZW2IWuzQS2M2Zn5Hxs8o=;
        b=RHVUryTeIRF4oJsnSPjx3r6OeKrA2/W+TzLk4WQP6/ez9ysTotimhhu7Z9EpYlN938
         v92HGQmZGTXf89knmOxRO95rEWMA5dhbwbUry7Bb5tuRC69/XbgvgHA1ojv7iOrsqzz1
         MCz1Az+5JdFUQPB38r0ND2q5QwGf70Z2RoA8Qhy2GUmvoT0TjrDuxhWUmcy4Ru9+/nLU
         PtDLLonuftXKnL3GYmZ56O3ycO/ewFuRIFtogenfuwJ4lb3CPeyjNT4HJ0yNvKl4SYdD
         S5vr//P2SU7oZGPuiUaRQkgHV+hPHMLrLRZyIVUwk7+tJ+jVhR0V7TcNkBkkkxlXBt6W
         vMtg==
X-Gm-Message-State: AOAM530bkjWxqb88R+JdJrGB9g8G2MAN1L+oQlfxVehqvDBK5uVpvBTX
	qkHdfPu17thN0FhO9oR3iyo=
X-Google-Smtp-Source: ABdhPJyG2PlHPEYH84Io8FeSWfOY6ht8kA0Up4iUKliwsoYeJmi0K5fQkvbUUoWm7ARVLEIYLOx1jg==
X-Received: by 2002:a50:8e18:: with SMTP id 24mr16469220edw.275.1623670874417;
        Mon, 14 Jun 2021 04:41:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:30b2:: with SMTP id df18ls5990491edb.3.gmail; Mon,
 14 Jun 2021 04:41:13 -0700 (PDT)
X-Received: by 2002:a05:6402:1153:: with SMTP id g19mr16212162edw.179.1623670873572;
        Mon, 14 Jun 2021 04:41:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623670873; cv=none;
        d=google.com; s=arc-20160816;
        b=bEDiWmOrrsuWGyE1ucE0hAazTjZKFchVGmX/tq+J7KHJRoOArs9eBPF3nY80WElMZU
         2nmhFMKIVi8/NvxkIDI5KOl3weOskEQbb4Oem4nmBO7SzxrmsNgSPaMFfy0EXkgCsDy+
         rBllRQ0MCWc+2w7al/1QOM94DekFDmDzjFJLmeKsOK2U5xcsdZOzPX5P3T9dW8gZeLeK
         8X9gsQWFksVbmooMrG77AjKReNNVoRJrJ3aGskZu2/yNejEzxxhDge4MWt0XAS1O5QpM
         dR7XTUVufSJaBXC5mlkDHWEpCXK7uCPOR1GPlOcUx8TsNHTtXDuMvtC5PcoXwb7VnnyF
         P9zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7Khk9VJiAZEUo5jow78IwItFdk7LfK4jmTWSp67zs44=;
        b=wDrM1lQhngntV1CyJLGSn6l4Vbt+RZUi1qigMlA0ODIHl3+P4bfo3SkSKNj/G0fvuj
         1DRXzVxwhwmpUC8pMzUY5i0NAwaeIJkjfTc2jFD1ZsubiwDnJywcbUOoJNMw8pmdf54B
         8rOTlvZgtPX1p6IFwp1XxRK++4JugCCPF9Txe/TeibbpX+/Wyh6f54rrnoiMg1cMY2Po
         OYpPE4QKYAbSRB9HrbqaonvtsmSSd+3YRH1zq/nideuNfsdvNcPE0y2hlDfywf3OlxLc
         DuqXGq1buHjUQtyogniRlCRym+/JJ4zBfbP4iDuxT7gcJujO3N4eOVhXis62y2k1Tmld
         V/Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GOcz1YcH;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id e26si626479edj.1.2021.06.14.04.41.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 04:41:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Received: by mail-ed1-x529.google.com with SMTP id b11so46067826edy.4
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 04:41:13 -0700 (PDT)
X-Received: by 2002:aa7:dc42:: with SMTP id g2mr16365775edu.362.1623670873184;
 Mon, 14 Jun 2021 04:41:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net> <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net> <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com>
 <YMca2aa+t+3VrpN9@hirez.programming.kicks-ass.net> <CAGG=3QVPCuAx9UMTOzQp+8MJk8KVyOfaYeV0yehpVwbCaYMVpg@mail.gmail.com>
 <YMczJGPsxSWNgJMG@hirez.programming.kicks-ass.net>
In-Reply-To: <YMczJGPsxSWNgJMG@hirez.programming.kicks-ass.net>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Jun 2021 04:41:01 -0700
Message-ID: <CAGG=3QVqbuhocgx0sJmqEkTkHo0Q=K5+7+2X6ONvcX7cVZc1+w@mail.gmail.com>
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
	johannes.berg@intel.com, oberpar@linux.vnet.ibm.com, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GOcz1YcH;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::529 as
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

On Mon, Jun 14, 2021 at 3:45 AM Peter Zijlstra <peterz@infradead.org> wrote:
> On Mon, Jun 14, 2021 at 02:39:41AM -0700, Bill Wendling wrote:
> > On Mon, Jun 14, 2021 at 2:01 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> > > Because having GCOV, KCOV and PGO all do essentially the same thing
> > > differently, makes heaps of sense?
> > >
> > It does when you're dealing with one toolchain without access to another.
>
> Here's a sekrit, don't tell anyone, but you can get a free copy of GCC
> right here:
>
>   https://gcc.gnu.org/
>
> We also have this linux-toolchains list (Cc'ed now) that contains folks
> from both sides.
>
Your sarcasm is not useful.

> > > I understand that the compilers actually generates radically different
> > > instrumentation for the various cases, but essentially they're all
> > > collecting (function/branch) arcs.
> > >
> > That's true, but there's no one format for profiling data that's
> > usable between all compilers. I'm not even sure there's a good way to
> > translate between, say, gcov and llvm's format. To make matters more
> > complicated, each compiler's format is tightly coupled to a specific
> > version of that compiler. And depending on *how* the data is collected
> > (e.g. sampling or instrumentation), it may not give us the full
> > benefit of FDO/PGO.
>
> I'm thinking that something simple like:
>
> struct arc {
>         u64     from;
>         u64     to;
>         u64     nr;
>         u64     cntrs[0];
> };
>
> goes a very long way. Stick a header on that says how large cntrs[] is,
> and some other data (like load offset and whatnot) and you should be
> good.
>
> Combine that with the executable image (say /proc/kcore) to recover
> what's @from (call, jmp or conditional branch) and I'm thinking one
> ought to be able to construct lots of useful data.
>
> I've also been led to believe that the KCOV data format is not in fact
> dependent on which toolchain is used.
>
> > > I'm thinking it might be about time to build _one_ infrastructure for
> > > that and define a kernel arc format and call it a day.
> > >
> > That may be nice, but it's a rather large request.
>
> Given GCOV just died, perhaps you can look at what KCOV does and see if
> that can be extended to do as you want. KCOV is actively used and
> we actually tripped over all the fun little noinstr bugs at the time.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QVqbuhocgx0sJmqEkTkHo0Q%3DK5%2B7%2B2X6ONvcX7cVZc1%2Bw%40mail.gmail.com.
