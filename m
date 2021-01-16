Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBR7ORGAAMGQEMKWK6IA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 755C62F8B6C
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 06:19:04 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id x37sf6679689ooi.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 21:19:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610774343; cv=pass;
        d=google.com; s=arc-20160816;
        b=QQjWZxUMSUxI+r5YQjIz30M9Ie5Wx6gfYcSu9/qQtqrmUW8IKCKGKKIOx7OZFevb7j
         kvGtOpz+cLr7Ezkf6i7hW/TUiSt17PjBAbObs2in0SXeApeKX3BTUtuhhVTFWiiN7qg0
         XUgvfap02rBjT6VyGIIrXJ9+3XUHQq/h18JS6xSuZAy1dF2t70+P0VQA4Dwli8j7VfuK
         Cy42b4ffY6lCT4r2EASeubBHhHkeEO9Owjpu42SM8fqAMcIhZH9V7S/dj7LQJVtFAOm2
         nxxMJCog/CGYHmKL0htybwRxHZ08s9zto0AAhCV5uD/dTkpVFdXkbnqXVzvDO3dY/pa+
         vwxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=x+o5Z3EFbGErMCpfpesP92F0i6JpWNAfCdkdSkwGiZw=;
        b=UPzA6bAfrXQG+oFb0SUQSE5tU+dysWFWu58IxzrnDTDLOkVatD6GaFB66wG9Wg8Gdm
         ibpCht8Ps+ehyFJy9ZAjEDSsXHdoYNJ4x4KmDYcylTDqoWSX3mo+8Owdb4PBZUjVxq+a
         5O8SymgVcD2sLpKR3wim1P79SAsCPuZ0u17rg7WNZJ52p3p0RISEW388uUhJQfepiQsM
         W5ovLNcOza5Tvm16EyGrnjJ0TXKcm7hNlTLmj7uRC3w4wQDOaJwQOgJ+H6kMNI1tYRpG
         pV6Ps7B8Joeq8WxXDsSIwKauvSVQaQrkutCzh6mZVBZbno67to6gIrUAxoSxB2q1ytZl
         PSdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DzlotEEx;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x+o5Z3EFbGErMCpfpesP92F0i6JpWNAfCdkdSkwGiZw=;
        b=rmczS0+e9MJqW05Kblptqstp0Ok/4b9kRTSjRPREfnT+3lJm8bbGL+Du2gv7XwtI4M
         fS1JYy8HPRhe8qZBvsDSfemFfI/HUKmlFVVuloCBtJ21TPiHSD261psZ82n6RfgFfrTP
         dlwZQgAJlm7d1mdgvmvouFJ6S5vrJX4apgbCVGffWqSYdZKC1iw63WRGW1dtLmmKYTdJ
         Vop+EXbIkl0klU5WdzCR8yJ22UN+ztVk8wg0pQRUksKM8KMFZ7vnMrAqAcgrSJuqeVI7
         givXSmpDviypSBZf9cKhLwteS3VHt97GTBw7OxTNVXolJFz6WF23iAmt3pCYVzx4uBAV
         2Oqw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x+o5Z3EFbGErMCpfpesP92F0i6JpWNAfCdkdSkwGiZw=;
        b=dj0VmZJojgikunL6tmP23jLniLXkLdRJTzqiYBvXzmnIF+pkF9y3Z0d8gJvW9dDL+v
         dlqlrK00fIknHUd0b/S9ReE4qNwGsY8ZiaiowsFDoY6ZipkyEI/JHhKDW58YAIc/woLn
         9PVGv57RDrTLvKMIu/uH3+RejM9XcG7k1hIjhCE5GYTbBZvt04JG0bGzsVt79C61poBv
         IGMvXdK94qx+NtNUJ1J1pFLgzBTi7azIE88N/C40mTsEUmpLkGMN8Nn47hd23KCl37Yq
         YYU/KCjgn6IEuWEYjP3Hxs4l01J0v/j+P+UJOdxAJVrW2fAwN0q7M+oAaED2ZtZEtm7i
         NmDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x+o5Z3EFbGErMCpfpesP92F0i6JpWNAfCdkdSkwGiZw=;
        b=oxy/VYjapfxSE3AN0WXDoenREacoa1oXiJNQpc+Pxajvmef2l6gX1eqRWLd/IGhZFB
         Cfkbv541ECDSKGhWsE71zcZt9RU4Ige8UDfyc4EfFTfNmSnGWmS8i1BOk2mfWrksw5Ej
         y7PVpxo77y0rilCikwdIc5RE8YZUrEMbETnVBZmU437ugWcnKVYs8keX372A9VglfV2f
         Zzj5HI0IOesWZY7duf9O/b/gpGJ6WliSIZCS7xQmcQ7dfTCE3GPX2pWQJQRTz5+xjlja
         2V5j/NgjOFpE9sf3RPm3/viuwHa/U2wXFqH6ZZNKMQgLvx42BsYvhVegxE8G+2fK4Gut
         WIsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Jb2JHYVhKPEHTQiPcFEYoqbvSLTAN50/JQnCb426yAQB8th3I
	toqaIHUnoJx2+NTqsC7F8Zc=
X-Google-Smtp-Source: ABdhPJyaONdKa75Kq5iwSJrC5r965dUM9b2QNjN7v5Uk88QPPfIh9XPfl8DvqxgIa5DP2XQ/bsUJew==
X-Received: by 2002:a05:6808:a0e:: with SMTP id n14mr8090200oij.75.1610774343287;
        Fri, 15 Jan 2021 21:19:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:9868:: with SMTP id z37ls731596ooi.6.gmail; Fri, 15 Jan
 2021 21:19:02 -0800 (PST)
X-Received: by 2002:a4a:a2c5:: with SMTP id r5mr10751328ool.72.1610774342852;
        Fri, 15 Jan 2021 21:19:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610774342; cv=none;
        d=google.com; s=arc-20160816;
        b=MYCD7d+4b1cOr7p2Ss/Hskm0fjDpSuZidlBaZGQdkVJcG5dwqFvOZwzu3+NPoVNtF2
         aqySMUstwS9UN8BblTe2IKffG65CcikWtYlPrcqOybTgM3f0NcHwZzj6osHuTZhS0g6v
         lxMg54gl1yAYA4/mN3er0L7idGY8ttGoURd5Hk48iuAZi1mRnjee0PeBWa5OB+WqtHWX
         LbJB7Vwy020l8M35fogV02iEZAi+p06VBEkHOMPeIPwE79hoAm0Qe4b0HVHTdSBWVsg2
         Z0pm9CW3ZisJAl9ZocseEgM6ve1oaIAEPrwUAkSDgHu5aDyU55eSYGgPEiLY2ZGQvRCn
         jGqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gChp3Ep/CrC3UnC7Pc81i2t4QTcDYgPfC0i71sk22a0=;
        b=yythmdHzKVbcbB0Nwrtetb1dDJut0Ro4NmXIvkbqPYbA+BNeaWlH/rLwiUVlyrs66b
         5OByGqLPTWROruGBlWYi+peBvvCQ1TL+npQmadZAIc4BS8u8XviIRcbbdfu2mcMHLNVM
         IcawnR98m56fqyWwtwbm+gWhdS12c+YzlD1U7f0cWiQw338RGVH8dgCja/Qx7WFwYTe8
         r6Lh8dp0kZ3yd+Qv6zqHiFQp9x7CGOXfd8wPIbeh3CyGvuigOn31ChioIYwm7OQEgy7d
         t+54ZBRbpMPjfQGTNBjkPshvfJ2hwCfFu+6Qy6x6JgsAbzM+ukO7iCbQwxlLQTZZJU6x
         ZUwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DzlotEEx;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com. [2607:f8b0:4864:20::d33])
        by gmr-mx.google.com with ESMTPS id r8si1011243otp.4.2021.01.15.21.19.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 21:19:02 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) client-ip=2607:f8b0:4864:20::d33;
Received: by mail-io1-xd33.google.com with SMTP id q2so20772557iow.13
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 21:19:02 -0800 (PST)
X-Received: by 2002:a6b:6a0e:: with SMTP id x14mr7112393iog.57.1610774342527;
 Fri, 15 Jan 2021 21:19:02 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=rEngs-8DR6pagynYc5-=a06brTOOx5TT1TC+v7-3m2Q@mail.gmail.com>
 <20210116001324.2865-1-nick.desaulniers@gmail.com> <CA+icZUW-H4LjVhJHSr2W3UJotvB6Eq1bFO_bQWT8=GQqcB4A1A@mail.gmail.com>
In-Reply-To: <CA+icZUW-H4LjVhJHSr2W3UJotvB6Eq1bFO_bQWT8=GQqcB4A1A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sat, 16 Jan 2021 06:18:51 +0100
Message-ID: <CA+icZUVSmfNgFvZB5qojYu59zdGWgijeKRRqFek=8Q-a=y=--g@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=DzlotEEx;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33
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

On Sat, Jan 16, 2021 at 6:07 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Sat, Jan 16, 2021 at 1:13 AM Nick Desaulniers
> <nick.desaulniers@gmail.com> wrote:
> >
> > > On Wed, Jan 13, 2021 at 8:07 PM Nick Desaulniers
> > > <ndesaulniers@google.com> wrote:
> > > >
> > > > On Wed, Jan 13, 2021 at 12:55 PM Nathan Chancellor
> > > > <natechancellor@gmail.com> wrote:
> > > > >
> > > > > However, I see an issue with actually using the data:
> > > > >
> > > > > $ sudo -s
> > > > > # mount -t debugfs none /sys/kernel/debug
> > > > > # cp -a /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > > > > # chown nathan:nathan vmlinux.profraw
> > > > > # exit
> > > > > $ tc-build/build/llvm/stage1/bin/llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > > > > warning: vmlinux.profraw: Invalid instrumentation profile data (bad magic)
> > > > > error: No profiles could be merged.
> > > > >
> > > > > Am I holding it wrong? :) Note, this is virtualized, I do not have any
> > > > > "real" x86 hardware that I can afford to test on right now.
> > > >
> > > > Same.
> > > >
> > > > I think the magic calculation in this patch may differ from upstream
> > > > llvm: https://github.com/llvm/llvm-project/blob/49142991a685bd427d7e877c29c77371dfb7634c/llvm/include/llvm/ProfileData/SampleProf.h#L96-L101
> > >
> > > Err...it looks like it was the padding calculation.  With that fixed
> > > up, we can query the profile data to get insights on the most heavily
> > > called functions.  Here's what my top 20 are (reset, then watch 10
> > > minutes worth of cat videos on youtube while running `find /` and
> > > sleeping at my desk).  Anything curious stand out to anyone?
> >
> > Hello world from my personal laptop whose kernel was rebuilt with
> > profiling data!  Wow, I can run `find /` and watch cat videos on youtube
> > so fast!  Users will love this! /s
> >
> > Checking the sections sizes of .text.hot. and .text.unlikely. looks
> > good!
> >
>
> Is that the latest status of Bill's patch?
>
> Or do you have me a lore link?
>

I tried with the message-id of Bill's initial email:

link="https://lore.kernel.org/r/20210111081821.3041587-1-morbo@google.com"
b4 -d am $link

This gives me:

v4_20210112_morbo_pgo_add_clang_s_profile_guided_optimization_infrastructure.mbx

- Sedat -

>
> [1] https://github.com/gwelymernans/linux/commits/gwelymernans/linux
>
>
> > >
> > > $ llvm-profdata show -topn=20 /tmp/vmlinux.profraw
> > > Instrumentation level: IR  entry_first = 0
> > > Total functions: 48970
> > > Maximum function count: 62070879
> > > Maximum internal block count: 83221158
> > > Top 20 functions with the largest internal block counts:
> > >   drivers/tty/n_tty.c:n_tty_write, max count = 83221158
> > >   rcu_read_unlock_strict, max count = 62070879
> > >   _cond_resched, max count = 25486882
> > >   rcu_all_qs, max count = 25451477
> > >   drivers/cpuidle/poll_state.c:poll_idle, max count = 23618576
> > >   _raw_spin_unlock_irqrestore, max count = 18874121
> > >   drivers/cpuidle/governors/menu.c:menu_select, max count = 18721624
> > >   _raw_spin_lock_irqsave, max count = 18509161
> > >   memchr, max count = 15525452
> > >   _raw_spin_lock, max count = 15484254
> > >   __mod_memcg_state, max count = 14604619
> > >   __mod_memcg_lruvec_state, max count = 14602783
> > >   fs/ext4/hash.c:str2hashbuf_signed, max count = 14098424
> > >   __mod_lruvec_state, max count = 12527154
> > >   __mod_node_page_state, max count = 12525172
> > >   native_sched_clock, max count = 8904692
> > >   sched_clock_cpu, max count = 8895832
> > >   sched_clock, max count = 8894627
> > >   kernel/entry/common.c:exit_to_user_mode_prepare, max count = 8289031
> > >   fpregs_assert_state_consistent, max count = 8287198
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210116001324.2865-1-nick.desaulniers%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVSmfNgFvZB5qojYu59zdGWgijeKRRqFek%3D8Q-a%3Dy%3D--g%40mail.gmail.com.
