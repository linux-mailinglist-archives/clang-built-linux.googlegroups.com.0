Return-Path: <clang-built-linux+bncBAABB3GQ7OCAMGQET6ONZEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA0A3812AF
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 23:15:26 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id d130-20020a621d880000b02901fb88abc171sf473219pfd.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 14:15:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621026925; cv=pass;
        d=google.com; s=arc-20160816;
        b=l2bdNgxGYOO4lIoJ95nMCvjry6JqpDhPSyEjVGLfX1/EvcLmaJKGIUmJCmrtMX4i2N
         /Z755JslyU/x88hGYV0tKOQVVbpF/Q9elP0EmQT6Pe0foWeBDz0cnrovXvXwdffrXE5y
         xbXPWkAE6jzLIqpIvWk63KxhviifHtBLClGjed0A8M4HB6iJR446yIR5IwnkoeVdZ+Pa
         vsmm1kPa/qeFtOl5dbksFs5EbGzNqwRb9RebGXldB7UPtVLrHHCMZtvo3qkuDzK2FzTc
         AX7KPlGZ+9U2U02CQxGw3lmXVSMZSy1tNF9AAppUngq0McMvDA8bCxOxl8GD1smTghY3
         U9NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=TJMNuRUL3WswlTry+obVkODXMhKeyha9lEjKQJpT+Eo=;
        b=MH6yz8zSyGGiMNnn6N9ZDmQxmccjGruyvwb9kvfyIYvWxjyAiGb0FPuIvsX2cHIwhV
         gdebz1BTxAuvmvb5mnqD4gm5vicqLdQbF7WzyJNo4R9UKHulYunRafJjJqwzaioh4c5Z
         xvw2aJfgC/buGT64QFn6kfoZUbLQiZXPMVbecoeC67OoY5mCUqi79YRJljqqKS0g2XSb
         vf4wdFl35gyziupnWcEBNwHBqt2VGaV6tt8GT07mOPXcXp15cTZNEOMN67ktxG6HSdpz
         aTW8iv+HCYg3GhGXCzdE0qqNfCUjZxzLsf4RScFvjOySyzlqMBRO9yKDmelPEJgD4xT+
         2NHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=exTX+ypl;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TJMNuRUL3WswlTry+obVkODXMhKeyha9lEjKQJpT+Eo=;
        b=NVhe9owmwUj2QZ8nYCPk3ERZ0iMWP4k8P1fBqVwuCIRw8AOsDDKUWc88AgqwJhFYC6
         nkTTyIcuHqBEctt1BCHNy+GwhjZqZ7jxzET6i8hbAuwOTZgbYfzUmeqty2WbekN7kvf6
         JWPZGAx2GM0Mwj0oakpoWPr9ITv4XJAOn3HeDWGsukLkFPqTaqrc/0HJTC2xhgmeSdJa
         mdxVkL7sDyYIVlTWibaCVf/K5wyjtlNS3et8o7hraEx+yHxp5I7c5pYnL0p4jl27PvxA
         CYMp8JfPywdessrMw5ZL55HskcQeAdT7gaM/jmg+7byOAVHgH2Xhpg5v6on9R9hZyPa1
         ztJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TJMNuRUL3WswlTry+obVkODXMhKeyha9lEjKQJpT+Eo=;
        b=Wx21SoV8iupYf0h2GgmxvoMK7BfywURccGbItKLDbjr4BSKcuQMQEs2YkSeEO+FtBg
         yZvod3qbeXta6CEdgcJ9j+PNxeKYPtmeSrCXMC244xpY+YbJKhkaEcqnl0D6iT4GfHG/
         TxBTPVyX/7b7AlqoLz3oyiwfgB5fSrzppnCoPMLcK0qYFA3TNTxvxfXFnyB41B4s2agP
         Ell0HxHHo9v68mAxB3ey3jYCymxIIjR/2FkFQqiT6qJOIHiQr+uMKpGqYhGx6SCO6aV3
         /kBT4faVyon63mC/OsQ3L7kx5rAPrDJ8V5WGoNDtS3L/RQOJkOkA2HH+LzqNV6eUTkqe
         tViA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SkQCKZ11U0/alTeKmpQLK6Rkg+E9MVVlIQnASmFKYu+iWBfcG
	dkCqz974AvbiDRyKT0VCWdU=
X-Google-Smtp-Source: ABdhPJzQOiVxwA2pn7nF28VMOTBkJAftkrpA0c1/eiW/vWVv0Fx0zb+UEcX5+zngacXMFfAnsOJ9pg==
X-Received: by 2002:a62:1c0f:0:b029:25f:ba3c:9cc0 with SMTP id c15-20020a621c0f0000b029025fba3c9cc0mr46566877pfc.56.1621026925073;
        Fri, 14 May 2021 14:15:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:314b:: with SMTP id x72ls4656872pgx.0.gmail; Fri, 14 May
 2021 14:15:24 -0700 (PDT)
X-Received: by 2002:a63:1d19:: with SMTP id d25mr48462800pgd.169.1621026924408;
        Fri, 14 May 2021 14:15:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621026924; cv=none;
        d=google.com; s=arc-20160816;
        b=xz9k+dl4nX9F3W08l6ki3KKbuRlVjYqPW4R6fpE9SigHQZ8LJgx2p5BxIAQ9rLEpWB
         1uXyBE8/oV3fH81nFpv8+ggNdlKPMxFYye/ZgUaSlEVUVZJuDBfih3QPEt86MxqoCbdH
         XHpu9m2lCcaKdoeve4ATZVOKZrR0aR7voY+4dRgbpdhwHu0mBtzGCdOKUHZn5d8N7bF0
         EGPSjmfLlgCab0HC01EOLdYkCNBnaGXDT8bYw52+hpatX+U+lleD9hqWRkHMlhylhbz5
         WrSLt//kidZOztAzUfRojJvKFcsletWcmfwXVl2otG9Wg++/hsTTlgq+BE+ID05Ua+h3
         QbAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C93zi1hQ92XAtYiAMG4fDxwpfo5jmGSXqEMz9lOTU5E=;
        b=se9Q9cRaKG9M+StL3uZOpEjVF9Mg2QS1wO9/F62CbAQEJzBPo6k4299/fl3dgvjMfp
         BNAIvl526Z4soIZ1if8R5JXvwA76HUzOZF8wmfM7py+WSoSzTV8cP12etwaEG8/kiOwG
         HYnIICMaCpILk9My6AzNn7KGWJnN7X7/PJTWTI2md12aXfvRIMfdlgGjH1O8zI8DBGjJ
         s7dcbEhaa+cO3MPSXRBJuZHT6LdGxG8+Lah8LQpFVymygnOvtSl6fg0fHk/pzKGaPaFt
         lQFNiCSY+rVMf9+hicczmTqSvUtmm2XWB9LJQ0e7SHA73qWznZxDTM5cPVwlSSJI3fUt
         zT9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=exTX+ypl;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a10si649736pgv.3.2021.05.14.14.15.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 14:15:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1E3D361283
	for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 21:15:24 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id m9so515295wrx.3
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 14:15:24 -0700 (PDT)
X-Received: by 2002:a5d:6dc4:: with SMTP id d4mr62499904wrz.105.1621026922815;
 Fri, 14 May 2021 14:15:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210514140429.3334181-1-arnd@kernel.org> <20210514101610.4392adbc@gandalf.local.home>
 <CAKwvOdmJfm+PKxjR-N=YfFcjrXi4N4xUiRCLbSNMNJ+5g_wX+g@mail.gmail.com>
In-Reply-To: <CAKwvOdmJfm+PKxjR-N=YfFcjrXi4N4xUiRCLbSNMNJ+5g_wX+g@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Fri, 14 May 2021 23:14:20 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1KkFb-pk5XkEa+MnFBPfzMTdUCKMWH+ANQLdfHbp2FWg@mail.gmail.com>
Message-ID: <CAK8P3a1KkFb-pk5XkEa+MnFBPfzMTdUCKMWH+ANQLdfHbp2FWg@mail.gmail.com>
Subject: Re: [PATCH] tracing: events_hist: avoid using excessive stack space
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>, 
	Nathan Chancellor <nathan@kernel.org>, "Steven Rostedt (VMware)" <rostedt@godmis.org>, Tom Zanussi <zanussi@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Qiujun Huang <hqjagain@gmail.com>, Tom Rix <trix@redhat.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=exTX+ypl;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Fri, May 14, 2021 at 10:19 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Fri, May 14, 2021 at 7:16 AM Steven Rostedt <rostedt@goodmis.org> wrote:
> >
> > On Fri, 14 May 2021 16:04:25 +0200
> > Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > In some configurations, clang produces a warning about an overly large
> > > amount of stack space used in hist_trigger_print_key():
> > >
> > > kernel/trace/trace_events_hist.c:4594:13: error: stack frame size of 1248 bytes in function 'hist_trigger_print_key' [-Werror,-Wframe-larger-than=]
> > > static void hist_trigger_print_key(struct seq_file *m,
> > >
> > > Moving the 'str' variable into a more local scope in the two places
> > > where it gets used actually reduces the the used stack space here
> > > and gets it below the warning limit, because the compiler can now
> > > assume that it is safe to use the same stack slot that it has for
> > > the stack of any inline function.
> >
> > Thanks Arnd for the nice explanation of the rationale for this change.
> >
> > But I still find it too subtle to my liking that we need to move the
> > declaration like this (and duplicate it twice) for internal behavior of the
> > compiler (where it can't figure out itself by the use cases if it can
> > optimize the stack).
>
> Under which configurations this warning was observed wasn't specified,
> but I'd bet it's one of the sanitizers splitting this in two in order
> to tell which branch may have overflowed the buffer.

Right, I did not manage to find the exact conditions that trigger it.
I did *not* see it with KASAN enabled and I saw it with UBSAN both
on or off.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1KkFb-pk5XkEa%2BMnFBPfzMTdUCKMWH%2BANQLdfHbp2FWg%40mail.gmail.com.
