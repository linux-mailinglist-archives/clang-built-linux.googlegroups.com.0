Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBNM3Q75QKGQECB7FM4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9AB26BF5B
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 10:32:54 +0200 (CEST)
Received: by mail-vs1-xe3e.google.com with SMTP id b9sf1828537vsd.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:32:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600245173; cv=pass;
        d=google.com; s=arc-20160816;
        b=qOL8l0M5nFyUAw0xDMr6fmnH7f0LLQUxRNakdJdt3ZicTt9WQ3oJ6u8wvybowsEW6n
         1G5FHCXyXefnaHMvNRV7YD+W3JdH6mtyvqaabCWj/XQomd7uPP1g0CuW8boYetNEtfTf
         YdMf86SIhKGB44PpwvYX9xCjZy65t32tlRRMOBIe3PKo4MYZcHht8LEl0E0Av1K4XpcQ
         j5d+0t/TlA3QgHN612DCwaKnjBZooVAKWOr3Uas0JlbAIRLWYoH7uLznSRCyy7+tmrPn
         g1QdfcqC8oeKHUCgcAD2AIWtbrctCOwZhAtVz0AH/uzf0WbZlsfNpiuSpdPld/2rfz+P
         6Y2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FT+cE4J84JJem1N+cKJsGOqPlNlOnooYC/ayDnAm1DI=;
        b=RLSzUd1aw/dzrzVI7UQRNEZIHlkCTVMZ5YlV5D73Ypm+JLpdAjh+EeHa9QnHa+1qL1
         JnTK9HrbYnHKWB8vhZomL/ptJYbDtMNysjdzh4Is03n4LA8wpMn2Rxj2Qkh8Fr1a338b
         wLM7ogW5d2b6clsuLb+ooA2Q+CNZ+/0vVyJILhcp56lPw3XOUiCZ62Fy//ER3xXS/cYt
         8DGpNp//+aG9KJhIgQwQ3FA6JyIVJAqNaVWVwIItBlD4Sk9Stn/PbUQZIzoD6kyOa3YD
         gi4bQ9j3uxxh1IJ6PWrE8mkhS7HYCtn5VCdA/K5djehnfmDpjKawyMXA+ddMAToCJw5v
         6j9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PS2WB70x;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FT+cE4J84JJem1N+cKJsGOqPlNlOnooYC/ayDnAm1DI=;
        b=R4fuIrSLerkd+MC0EEhg4nk4A1hzRRyyLklXxf9e4rVpMqWtRE+AdT2n8pdykAM07P
         1xRU7qtLWTRJ1dd5UGthuxLauQI6BVP8wiy9FoFRq03zLJvfSfOK9Hnf7GdOwSt3q3+B
         RV5a5db3UursRIt10nRbXcic7wa4+xKu3zi5xKUi2bLz4teLB7DgkynY2yqmKklICtV5
         /HC/iDq50Qy2fOf+CaBoNZx3tGlhYfobROU4rZghkU0TT0AZiH3ZAPP1A0Mddp9Zak0e
         5YjctmqYOuvch76JvGyfGvgrIAGU/J4Wy6QrRxxXxi25yir7bhKzrcszn2LOblhRy3SK
         GMng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FT+cE4J84JJem1N+cKJsGOqPlNlOnooYC/ayDnAm1DI=;
        b=Q9a6VFzSdqAE51rW8j3o0qUvn0ZVC6YhPFFzV3LiVtds3xOxWwHT9okmFTA0+G8ds+
         NUnweH6IyZYaNL32Xjapsmq9jVX7ZgVNYhXKWOPEBMuf8dyjzxNqETAr14KCswXPC25a
         HDK2r9eLpNyhFZ2DvF2QgAz+pVNcyLZ0LB47m76s4d3eyurZNznJtMBUSxTPdTygSS+N
         BVCO8h6FWDD8tWlKOQLKA2+fZa++y0/OfSEnXI6Ph/EZjINmiq6BORyxVU0o/a2hoKh1
         d46ybixFPOeeqm91Hqpf4zmOZqWEC+2/H+mKFYDAvqOg3RWksSsrd13kwq24SXf3su/7
         fM/w==
X-Gm-Message-State: AOAM53209hNaACPDyCRDg2rpDVl9hxPxtg9tEHQoY13i76HZ1zw50vGA
	rOpBL0DtQA3SKQYrkAjxnTY=
X-Google-Smtp-Source: ABdhPJwbMaDVnQy+mxNGync1cvRoK+lS0/BBJ+KkMzumik4BSf+2fEeVltQQphm1EgizchxnyQQZ8g==
X-Received: by 2002:a05:6102:910:: with SMTP id x16mr3840696vsh.42.1600245173434;
        Wed, 16 Sep 2020 01:32:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:20c5:: with SMTP id i5ls155506vsr.6.gmail; Wed, 16
 Sep 2020 01:32:53 -0700 (PDT)
X-Received: by 2002:a67:efd8:: with SMTP id s24mr1781284vsp.54.1600245172913;
        Wed, 16 Sep 2020 01:32:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600245172; cv=none;
        d=google.com; s=arc-20160816;
        b=lLVdmDrasfVSos+ebIc/LXxHlWW0XFnclsS76xscMcQ1FxQ5I0UouXXtCNNQSE0/Ym
         73DM+stDuSvE7G+iVP2dP8/gq4K2k1dGWVJG5W0wsgRynxoAcNLYdbg4TMAh7bz9I+68
         7BYBxLPo1sLiow+vvkK2ZGR0PgtaYSu3miyaU3sRo3jQAGMHpfVafJbYvlOYjHAV39x4
         y/xi0AW2Q5sSQl2jskrWIB92q14xN8fF+DzNUNZtVpP7Fs4MN81vNHlbg8FusQojyA6r
         XDRa18ZI4yt506AdLGbdCurZxCMObr3GJMrKxhE5bK44eoXMG2rmBV3CcJa9qHgcI3Q2
         PkwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gutnwyq/fY1R+B0kj3zMSfdQMIw4d9tjzY6YslUPxq0=;
        b=qKy06KZ5tqOjwKDRaHHPDSlO7umVvoMKgfTSG+HI+n8B+kw7cAKRFtPJVSI6g4J0js
         QQdo5EcHGyJ8NXNPeb+Y1osJCGKTIuq1iZhUuRrE0kxo7u9r4hZNRWEheUOhnIoJF9fF
         dpaXzjMeY+/E+eg2zjPPROs4/uyVWQNMXLEEUZWwhEBW2wt3dNoeVFuEUJ+zhu9sKLkN
         9ccLf8lKZ40/Xr5+1kPXG7X9TCnIMZ9YzZJnyk46M2NfmzqRXy1Qp6sUY4xLTJevM8X9
         aCiH2Y+zMzaWgCsR4vfU4n0nvUbLblkd8IJD9F35Ejyw/sKQxwlmFeFQUV2smhZlJq+Q
         l74Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PS2WB70x;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id x16si540586vko.2.2020.09.16.01.32.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 01:32:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id a2so5884465otr.11
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 01:32:52 -0700 (PDT)
X-Received: by 2002:a05:6830:1e8c:: with SMTP id n12mr16510993otr.17.1600245172173;
 Wed, 16 Sep 2020 01:32:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200914172750.852684-1-georgepope@google.com>
 <20200914172750.852684-7-georgepope@google.com> <202009141509.CDDC8C8@keescook>
 <20200915102458.GA1650630@google.com> <CANpmjNOTcS_vvZ1swh1iHYaRbTvGKnPAe4Q2DpR1MGhk_oZDeA@mail.gmail.com>
 <20200915120105.GA2294884@google.com> <CANpmjNPpq7LfTHYesz2wTVw6Pqv0FQ2gc-vmSB6Mdov+XWPZiw@mail.gmail.com>
 <20200916074027.GA2946587@google.com>
In-Reply-To: <20200916074027.GA2946587@google.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 16 Sep 2020 10:32:40 +0200
Message-ID: <CANpmjNMT9-a8qKZSvGWBPAb9x9y1DkrZMSvHGq++_TcEv=7AuA@mail.gmail.com>
Subject: Re: [PATCH 06/14] Fix CFLAGS for UBSAN_BOUNDS on Clang
To: George Popescu <georgepope@google.com>
Cc: Kees Cook <keescook@chromium.org>, maz@kernel.org, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, kvmarm@lists.cs.columbia.edu, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, james.morse@arm.com, 
	julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	David Brazdil <dbrazdil@google.com>, broonie@kernel.org, Fangrui Song <maskray@google.com>, 
	Andrew Scull <ascull@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Dmitry Vyukov <dvyukov@google.com>, Thomas Gleixner <tglx@linutronix.de>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PS2WB70x;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::342 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Wed, 16 Sep 2020 at 09:40, George Popescu <georgepope@google.com> wrote:
>
> On Tue, Sep 15, 2020 at 07:32:28PM +0200, Marco Elver wrote:
> > On Tue, 15 Sep 2020 at 14:01, George Popescu <georgepope@google.com> wrote:
> > >
> > > On Tue, Sep 15, 2020 at 01:18:11PM +0200, Marco Elver wrote:
> > > > On Tue, 15 Sep 2020 at 12:25, George Popescu <georgepope@google.com> wrote:
> > > > > On Mon, Sep 14, 2020 at 03:13:14PM -0700, Kees Cook wrote:
> > > > > > On Mon, Sep 14, 2020 at 05:27:42PM +0000, George-Aurelian Popescu wrote:
> > > > > > > From: George Popescu <georgepope@google.com>
> > > > > > >
> > > > > > > When the kernel is compiled with Clang, UBSAN_BOUNDS inserts a brk after
> > > > > > > the handler call, preventing it from printing any information processed
> > > > > > > inside the buffer.
> > > > > > > For Clang -fsanitize=bounds expands to -fsanitize=array-bounds and
> > > > > > > -fsanitize=local-bounds, and the latter adds a brk after the handler
> > > > > > > call
> > > > > >
> > > > > This would mean losing the local-bounds coverage. I tried to  test it without
> > > > > local-bounds and with a locally defined array on the stack and it works fine
> > > > > (the handler is called and the error reported). For me it feels like
> > > > > --array-bounds and --local-bounds are triggered for the same type of
> > > > > undefined_behaviours but they are handling them different.
> > > >
> > > > Does -fno-sanitize-trap=bounds help?>
> > >
> > > I tried replacing it with:
> > >       ifdef CONFIG_CC_IS_CLANG
> > >             CFLAGS_UBSAN += $(call cc-option, -fno-sanitize-trap=bounds)
> > >             CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> > >       else
> > >             CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
> > >       endif
> > >
> > > The code traps.
> >
> > What's your config? Do you have CONFIG_UBSAN_TRAP=y? If so, you have 2
> > options: honor UBSAN_TRAP and crash the kernel, or have a
> > 'CFLAGS_REMOVE_... = -fsanitize-undefined-trap-on-error' for the files
> > where you can't deal with traps>
>
> I don't have CONFIG_UBSAN_TRAP=y. My .config is:
> CONFIG_ARCH_HAS_UBSAN_SANITIZE_ALL=y
> CONFIG_UBSAN=y
> # CONFIG_UBSAN_TRAP is not set
> CONFIG_UBSAN_KCOV_BROKEN=y
> CONFIG_UBSAN_MISC=y
> CONFIG_UBSAN_SANITIZE_ALL=y
> # CONFIG_UBSAN_ALIGNMENT is not set
> CONFIG_TEST_UBSAN=m

Your full config would be good, because it includes compiler version etc.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMT9-a8qKZSvGWBPAb9x9y1DkrZMSvHGq%2B%2B_TcEv%3D7AuA%40mail.gmail.com.
