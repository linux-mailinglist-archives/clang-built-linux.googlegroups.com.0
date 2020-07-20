Return-Path: <clang-built-linux+bncBC2ORX645YPRBYMX274AKGQEWQAFOJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3BE226C70
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 18:52:50 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id t18sf7740910lfe.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jul 2020 09:52:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595263970; cv=pass;
        d=google.com; s=arc-20160816;
        b=yQ7rTpR5H/y5x0Wr+gfg3A8u7TuDBPN3EyhpJAzULBOyFGs5FaYswEK61dgvMxU08X
         TLpXR/2LJnoCoMp3S0JjSJ6EoQ/3s9UPPa5ivhp0tACzR/Q5/U5PqTgKqm99yQUL+nqo
         +OGiJA/Xm/qzqJO2cz+OpM05uUfJkSyd90aXmrznQ+67uXo8ipLHlYbq4Gku6d2TaMGG
         yQEWXr1pX7ksQDR3tFasGFeaSu1QIyNUPlmeAKXhNXvVQRVIqN/pyOF+o4Sg4VYcJ4Xv
         pbqrp3PE37n/Wbr7UWJYx+2yJ3ltAyjahcKgM9TzU12auVidfWzLc44TZtuxkfpX5Bua
         Vg6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VneDfR2dbK1r6vr4pGm7B+Fra34AbBlTnrAyYkxQVzg=;
        b=JMcJ5oQ5DcN3EDnKkBNK6Q9jdM7mJlcq2y5pHC+47noBSVO3lU3mdvo6dwSXVm0I4U
         1E3FV6ds/5f3hVJ3WSx11QFHB7PKyXHBmc3p3scnOCfZZiCgvYN4Bw4E2mXhOC7Eob/u
         mrhLFErieNQCvfuSV9N7JUZmK597QoLF2KAVQOYc4AGFq29ZwxuHaAOZxd2BIjXazK4S
         eEoDhshCcd8witN7o+wlRKqoFjdKj7IyWwZZVqhhzVGBGRQ/mGTSE0wUICe1X/qqypbG
         cOc6CVXzdRdt5UmtcsfndJdcvDxRQggGUrSiQ0pMGTcT9F63Y1NmJcnXxsWUG2EvhZjc
         efbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aKi09317;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VneDfR2dbK1r6vr4pGm7B+Fra34AbBlTnrAyYkxQVzg=;
        b=hPExsSyLLJmxf2lQ+zBrwWSxsjVinXR2tIosZiTzIRxHfz6JbQ75HYSYnfGeOITiHx
         MKsLSYT2obk1uxCDHhStpf2lqyE7R4dEyCPnExDefazBwtAwgSIuhL/s72SAzVM2AHmq
         pj1M8sPbKODO3am8fZEBPEWGTxPazeMexhUxECgJGY6gxYtFvVE1JomPUL8VV/4jalag
         IfIUmoWBu08qX7d3TB8R8xeddDr2jumEi2qsZwU+bn6LudsUlhnEsfMIMBRk3mP8IP3c
         M6ZSDsSSjwtQPP/EbZJ4MpxDd7IhGn8tXnGR+XUmfE5UQc9HOYGn0bbaYyQp8zm/hUpp
         Thnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VneDfR2dbK1r6vr4pGm7B+Fra34AbBlTnrAyYkxQVzg=;
        b=iG6ruqjUYu92ck+g0bhTGCDOFNclsaqJJviRK6dQmwY+EQ1qXq3PNWQEwA/v8D12BM
         tHeO6XNWgf+oDQuh33UljMDpuAX3AHfE4dwuhfoLqO84BK4A2T5xfT4KEJJjYIRhmHaC
         2lFQHEL3in6achT/k+yRl3mBLBuI7gc86dnAe5+Ozfyx7J2ubgW/XDMP1SkAGBo0Juxg
         fov4cGuPg/TiM92Zhz4hfiZhbYcrnLrJyvKblPYseYWX/S8Ni2cb2jkDekLUVpmhDHX4
         RUkLViNlj2WH2EV9PFlBgPyj8FqCFDif3+575ZIouNwmtVyeUpy/Z0UCRDukoQC0JQTr
         Xlig==
X-Gm-Message-State: AOAM532Cr4XZoTgz9lBIKLYe4mCroxHfukso/nVnHnBy7KfTqme7rmfw
	ATN6Sg2VxsNO31ElLqGJAdw=
X-Google-Smtp-Source: ABdhPJyWnIDqtR8en9EaiXHg+DZGretbi3XN9WrhlsFluWjp2NWyEFkIun6+ngwlaU9Xh1jOGBIXtA==
X-Received: by 2002:a2e:7203:: with SMTP id n3mr10536505ljc.174.1595263969886;
        Mon, 20 Jul 2020 09:52:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9190:: with SMTP id f16ls2765933ljg.11.gmail; Mon, 20
 Jul 2020 09:52:49 -0700 (PDT)
X-Received: by 2002:a2e:850b:: with SMTP id j11mr11529271lji.30.1595263969066;
        Mon, 20 Jul 2020 09:52:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595263969; cv=none;
        d=google.com; s=arc-20160816;
        b=o7ZPMemCin+NnXgf64TC/H9/23Ql1aR1gCaIDiYJmuEquBdGdem1gMkYvP4VvN4Irk
         eOjuqVdc3TYVuqCMZ67U0Wr4jFl4FtanCMN2DrXZ2OHrlS5YQT9B/r6pIF1YOEFB6gh0
         6SnARjKYzyq5us01rjhuDa08phDWBPsfCIie6gRT/P8EADGCv+iidMI0GjJZq3EaxzXt
         0i/SWsncSkak7eKdBE9Vv5z3mZZ5fMdAPDnrzONG0SjYaeBN4AUM/P6Foc75adbJ8XJo
         kzttCVslRy9Qu7kOATZNhYGoeUlPV5Ra3NwTj+n96k/jJc6S4zqcxEYDLijpiWSBmcAl
         z8Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WjwIKDNMRO86HLiza3ekP7Z4qpEbwmULQ/L4/V4YUtE=;
        b=D4L75RuzbrZl9nBTU8yVFpOAIYvx1eR+7QoE2YJho3n7XCqdhcWZ2t7j6F7FmekgQe
         QFM19GAmsJBHxK/fiuYUqoQRO48K66ZeAHQK090koyTkPOjKxlFyCkBygxGhPZ+E4wsV
         kCeSkPahYQ6DVybH5ljxy4uprz3EJvOv4mxvfMrMoAK86Ey/mTwFsjLiv0FyE1CEVizr
         JFNVuhn/fiK7Do+YMsEzgpwv5AcOdAJgwnNzbw8I5Bbd21BuwCWd9rcubcKEsijvQgDa
         rSDNEw0OkUNDge+py+RiEC4NqNCrf3CENu1cDerBOyZ3U8lpZ/ku/BOCisRUZivLvn/S
         dacw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aKi09317;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com. [2a00:1450:4864:20::641])
        by gmr-mx.google.com with ESMTPS id o13si508063lfc.0.2020.07.20.09.52.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jul 2020 09:52:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641 as permitted sender) client-ip=2a00:1450:4864:20::641;
Received: by mail-ej1-x641.google.com with SMTP id n22so15871501ejy.3
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jul 2020 09:52:49 -0700 (PDT)
X-Received: by 2002:a17:906:6959:: with SMTP id c25mr21009671ejs.375.1595263968366;
 Mon, 20 Jul 2020 09:52:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com> <20200624212737.GV4817@hirez.programming.kicks-ass.net>
 <20200624214530.GA120457@google.com> <20200625074530.GW4817@hirez.programming.kicks-ass.net>
 <20200625161503.GB173089@google.com> <20200625200235.GQ4781@hirez.programming.kicks-ass.net>
 <20200625224042.GA169781@google.com> <20200626112931.GF4817@hirez.programming.kicks-ass.net>
 <CABCJKucSM7gqWmUtiBPbr208wB0pc25afJXc6yBQzJDZf4LSWA@mail.gmail.com>
 <20200717133645.7816c0b6@oasis.local.home> <CABCJKuda0AFCZ-1J2NTLc-M0xax007a9u-fzOoxmU2z60jvzbA@mail.gmail.com>
 <20200717140545.6f008208@oasis.local.home>
In-Reply-To: <20200717140545.6f008208@oasis.local.home>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 20 Jul 2020 09:52:37 -0700
Message-ID: <CABCJKucDrS9wNZLjtmN5qMbZBTHLvB1Z7WqTwT3b11-K4kNcyg@mail.gmail.com>
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Matt Helsley <mhelsley@vmware.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aKi09317;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::641
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

On Fri, Jul 17, 2020 at 11:05 AM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> On Fri, 17 Jul 2020 10:47:51 -0700
> Sami Tolvanen <samitolvanen@google.com> wrote:
>
> > > Someone just submitted a patch for arm64 for this:
> > >
> > > https://lore.kernel.org/r/20200717143338.19302-1-gregory.herrero@oracle.com
> > >
> > > Is that what you want?
> >
> > That looks like the same issue, but we need to fix this on x86 instead.
>
> Does x86 have a way to differentiate between the two that record mcount
> can check?

I'm not sure if looking at the relocation alone is sufficient on x86,
we might also have to decode the instruction, which is what objtool
does. Did you have any thoughts on Peter's patch, or my initial
suggestion, which adds a __nomcount attribute to affected functions?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucDrS9wNZLjtmN5qMbZBTHLvB1Z7WqTwT3b11-K4kNcyg%40mail.gmail.com.
