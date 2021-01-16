Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBVGXRGAAMGQEJS7X6LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A0BF2F8B2A
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 05:30:14 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id s127sf5206931vka.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:30:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610771413; cv=pass;
        d=google.com; s=arc-20160816;
        b=RlaycDh0RRK3oHaDISTeF0aymXVdB7YqSGMIQdrMmKIiwuLfrd+HlciZUGxXD5LrZA
         1k7/OclBlnlnUGtsd97NpqQ+lJyq4MFpjVz6feZAnBruOOvzNcOZCp2Js9Tz+ckZHd13
         O2JRRZ2DxIalGu+hKQVDHP3tRDGKsWWgRUeL3F7Pt7IBL9ucwvK+LJHoTVwemMAFpBPB
         03wj28role7BKVJ6megsXfk33tcYB8ivHr39agHWqJeu6Vo+YX0MHSm5dWo7jietD7F1
         oF6zizhfaXkhvQWnGc8lacIPFGQCep53jaFR4CF9+J7Gr6RSvvFKtkBpfLQylGz6+pUz
         1trQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3Ar+kI4ODMh6WWSLrZaEpSX3XYVstLEoH37v2gc7Pws=;
        b=vTaA4aHqabYJnaXSM2IhMP99fuBOnsu+/XIqNUrkzsNIl48mC9yHFS+jOQDc6uQQSE
         +mUg+DqxZ+N2qJtEy+19Tp2E4W73oWPn2Z2z9pjvY1/NCwHejhGzGlSdHoZwq1UsAtYj
         nbL50RUL4KWkYqzhoHNkOsZBvqLfbl0gj71jgkqTaeCgIjNelwjt4CZRGTQKqggTlL5g
         07wf3fs5PSiDu2sUXyaorDkEw1AU4EpUKTqtTTbe+vUOW8OpWeuzwvSbvdBkAVKMwjF+
         lp2TmFAIuSEgy635ga6GbkhnR8Ae+f8iT10yykBtS+skshsvXTy1c0LKYKA7LrWwqRZs
         JtsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O3zI93s9;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Ar+kI4ODMh6WWSLrZaEpSX3XYVstLEoH37v2gc7Pws=;
        b=pc+w0wdblveJOagRjCSGppQzXQoZWJ6PTjgs3zZ2P9l85PVSSvukqzNVhAzsg+5YwG
         pccdpGr8iSjNaJFf0Jyt8vm3TB1ZoZ56yTtuFEga+i73vIPv21mbnqEf7NF8UMUumq7a
         s7yqAmMs8hvXGIiUwZRF9SvC37gAP/V58gyN+veNVLfltDANf8j1ToYyagnlc5oUc6BB
         KyYreqmyBxmu0YnHs0ZnBIaW2eqjzqbHq8KEIHEgYWI3CkFM3iLlA+lwyxl+rfxvj21p
         CmabJeiWqnAN4FuqO36B8r2ELDcoMX8rrMD4onmjErXpCLvxL6+5wADyMpqs4Wy5g83K
         dVAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Ar+kI4ODMh6WWSLrZaEpSX3XYVstLEoH37v2gc7Pws=;
        b=FKhVl3RcCbBzUc3EqRetVrJwEnLPiL9Ri74cuxmhzSgwrJNmbY5e9wfJ76tqutzhPU
         LZuOnHH3RBY0Ji79TVT/UgS/dI3+uuypCVC98v0D79xwJs3V8mR6gXBlq+BYWWJ+SLI9
         tyDPRKQSyuLEM58RqlQX1zN5zivOTFKuA86qrapqUx7Sw1V3BpJNVtFNDB5QAqHwX7NG
         PUgij9fjkaJrKz1jPVms8pUv+qoZoB77kyxOTNY9lTrjOi6ibN68SnRXtDe8jIxCJO8+
         fqm4GIyXO8bfO68bbikchNk0jL7f12zj8A7G/vz7bhj9X8G+jClbJgkVNJmK3YRPlst2
         Dhgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Ar+kI4ODMh6WWSLrZaEpSX3XYVstLEoH37v2gc7Pws=;
        b=ITSJOWoRHUwdDhrp9gflJjZ07eZCppUKCp44FoSrFJ0Kug6WuvYWpVO+av01SsTSlj
         8Fw8Z5sZSSaFsCcMU75EQ42WpWDRkDQTx9FWF97dZsfZWFhMwHEwi6IGOD693HzO/IWm
         bY3HrpmRk95U/BG6pUX1dxV+/7TpG7XKe7QuQhUaEQKbIF/9Fa3ASGRIgHLNkbf6N7H3
         sDWv5Xbyty+l+nF7BvN6+f0lJcHBhV/B5vTZX7r8bb3X8tbDu/ULRE+ojMOGTSvK145L
         PjlNgVE7NSok7rWjIafytx62RlP0ZWPGXOTrcJWdgv0nxZnQTBuJ8uhw5B//fz0aosWl
         OD5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cbOQuyjTKrZ6ZlmjFw9EpGpkR0qIZneLkbypjSI8AiBwvkbOp
	n/IfjdX3ANrh7uMFunp8daw=
X-Google-Smtp-Source: ABdhPJxK+cQAxvdfFIK4qMe89RHULcB/qPqpmEbxS79vZmtxS0RDSR3Dz9uzAyT2VAyX1Q3MzPilXg==
X-Received: by 2002:a1f:4393:: with SMTP id q141mr13229823vka.12.1610771413004;
        Fri, 15 Jan 2021 20:30:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3b0c:: with SMTP id n12ls491327uaw.8.gmail; Fri, 15 Jan
 2021 20:30:12 -0800 (PST)
X-Received: by 2002:ab0:614d:: with SMTP id w13mr12235712uan.67.1610771412570;
        Fri, 15 Jan 2021 20:30:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610771412; cv=none;
        d=google.com; s=arc-20160816;
        b=v2xQlCVHPhcONExZ8SYHGerDMx6XVp2y1AbXB76sGjygThLueyMibCFwic0eGVFrGj
         Uap0f/+YCTB49PBtAXXhtZVbsyqPmdvT9/zB5EMwAsi1SgEQj6z73QHNZn1YRVRuzn11
         W0899Dls/9rcnzf3304ibLBxFFk/HHilPUUhIElrbSXQdJUpkrsZdUTLoIiHQ/tB8DTk
         Ja4FQnNCg+aYbTs8WNb32BnBOPOb0Y2fDYcpP8/y3Bb1en1ULIdu5mVAG4U/EIuAcXGr
         JEUBVNOyr03brvsE8/jt3YMLlTFHM+e3iEeyqnGK8foxZJl0oz67yUWDAJUna4uOx/9J
         aJ6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hQ6bkRNdpq7h6cTCMQlmiqIilS7nPd3l2RGWspGdUK4=;
        b=OXdp+VyPpJ2/7njGmlwS4ij7dHlSevJvKt4b/S37XboM7GzgoyYkWPtgMlnos0obYL
         bsf7SOwXCBxOSyt05aRqUyOWYtsFIRUmsxGwQTbAJdnGsvG1lw5PoKA5Z0DEzbQVWNF1
         4n9ebE9+wi1B/qvFZH4JazQ3n+xaKAbZDjGwZI+p3cc4GGVeCF8+5yj0q0ObwmlSMK+f
         DlqoRnUJa3meesAL8kZye0dL8noTEsLmuYdXn9qH8FadGQdidwcD4ri6trwzNvLUmCH+
         Eb8sFJx7Y4XlpRX+B7lSb8xlnVHh2aYWJP8b9/tQ+ywRrqKUd9PcwKOKlZkHwsF1doug
         beLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O3zI93s9;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com. [2607:f8b0:4864:20::d29])
        by gmr-mx.google.com with ESMTPS id g17si828774vso.1.2021.01.15.20.30.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 20:30:12 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) client-ip=2607:f8b0:4864:20::d29;
Received: by mail-io1-xd29.google.com with SMTP id d9so22304503iob.6
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 20:30:12 -0800 (PST)
X-Received: by 2002:a5e:9b06:: with SMTP id j6mr10921789iok.171.1610771412146;
 Fri, 15 Jan 2021 20:30:12 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=rEngs-8DR6pagynYc5-=a06brTOOx5TT1TC+v7-3m2Q@mail.gmail.com>
 <20210116001324.2865-1-nick.desaulniers@gmail.com>
In-Reply-To: <20210116001324.2865-1-nick.desaulniers@gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 16 Jan 2021 05:30:00 +0100
Message-ID: <CA+icZUVEc9Uo7TArGKBwk6rv7tPjXB94o=S_hW2y736_OQ-KkA@mail.gmail.com>
Subject: Re: [PATCH v4] pgo: add clang's Profile Guided Optimization infrastructure
To: Nick Desaulniers <nick.desaulniers@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, akpm@linux-foundation.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, corbet@lwn.net, 
	linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, masahiroy@kernel.org, 
	Bill Wendling <morbo@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=O3zI93s9;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Jan 16, 2021 at 1:13 AM Nick Desaulniers
<nick.desaulniers@gmail.com> wrote:
>
> > On Wed, Jan 13, 2021 at 8:07 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Wed, Jan 13, 2021 at 12:55 PM Nathan Chancellor
> > > <natechancellor@gmail.com> wrote:
> > > >
> > > > However, I see an issue with actually using the data:
> > > >
> > > > $ sudo -s
> > > > # mount -t debugfs none /sys/kernel/debug
> > > > # cp -a /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > > > # chown nathan:nathan vmlinux.profraw
> > > > # exit
> > > > $ tc-build/build/llvm/stage1/bin/llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > > > warning: vmlinux.profraw: Invalid instrumentation profile data (bad magic)
> > > > error: No profiles could be merged.
> > > >
> > > > Am I holding it wrong? :) Note, this is virtualized, I do not have any
> > > > "real" x86 hardware that I can afford to test on right now.
> > >
> > > Same.
> > >
> > > I think the magic calculation in this patch may differ from upstream
> > > llvm: https://github.com/llvm/llvm-project/blob/49142991a685bd427d7e877c29c77371dfb7634c/llvm/include/llvm/ProfileData/SampleProf.h#L96-L101
> >
> > Err...it looks like it was the padding calculation.  With that fixed
> > up, we can query the profile data to get insights on the most heavily
> > called functions.  Here's what my top 20 are (reset, then watch 10
> > minutes worth of cat videos on youtube while running `find /` and
> > sleeping at my desk).  Anything curious stand out to anyone?
>
> Hello world from my personal laptop whose kernel was rebuilt with
> profiling data!  Wow, I can run `find /` and watch cat videos on youtube
> so fast!  Users will love this! /s
>
> Checking the sections sizes of .text.hot. and .text.unlikely. looks
> good!
>

I love cat videos on youtube and do find parallelly...

I must try this :-)!

Might be good to write up an instruction (README) for followers?

- Sedat -

> >
> > $ llvm-profdata show -topn=20 /tmp/vmlinux.profraw
> > Instrumentation level: IR  entry_first = 0
> > Total functions: 48970
> > Maximum function count: 62070879
> > Maximum internal block count: 83221158
> > Top 20 functions with the largest internal block counts:
> >   drivers/tty/n_tty.c:n_tty_write, max count = 83221158
> >   rcu_read_unlock_strict, max count = 62070879
> >   _cond_resched, max count = 25486882
> >   rcu_all_qs, max count = 25451477
> >   drivers/cpuidle/poll_state.c:poll_idle, max count = 23618576
> >   _raw_spin_unlock_irqrestore, max count = 18874121
> >   drivers/cpuidle/governors/menu.c:menu_select, max count = 18721624
> >   _raw_spin_lock_irqsave, max count = 18509161
> >   memchr, max count = 15525452
> >   _raw_spin_lock, max count = 15484254
> >   __mod_memcg_state, max count = 14604619
> >   __mod_memcg_lruvec_state, max count = 14602783
> >   fs/ext4/hash.c:str2hashbuf_signed, max count = 14098424
> >   __mod_lruvec_state, max count = 12527154
> >   __mod_node_page_state, max count = 12525172
> >   native_sched_clock, max count = 8904692
> >   sched_clock_cpu, max count = 8895832
> >   sched_clock, max count = 8894627
> >   kernel/entry/common.c:exit_to_user_mode_prepare, max count = 8289031
> >   fpregs_assert_state_consistent, max count = 8287198
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210116001324.2865-1-nick.desaulniers%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVEc9Uo7TArGKBwk6rv7tPjXB94o%3DS_hW2y736_OQ-KkA%40mail.gmail.com.
