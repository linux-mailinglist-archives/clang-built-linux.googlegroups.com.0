Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBM34LUQKGQEULZ2M3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id A97A373447
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 18:55:34 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id 65sf24446058plf.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 09:55:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563987333; cv=pass;
        d=google.com; s=arc-20160816;
        b=JmI40mF0/01eYp66ivcnkFn/Cwt9hS8sBPy6oHcvnUlLw6rMEGpQMYMoU0msCN59jT
         ChIM275kltVHiDhsJoLsUGcqGrZz/CmLqgAMYpBqlwRux41EKOfFrGDAOdGDtmO7uJZm
         bRSOyvGsAjdxbat3wcaEehHctqXkf93n2XFvSD5IZzonx+raBg1u8EDIl3giCTHKwleC
         LKC9Q/ky4562Yz3muWUT+CuIAhJtn7tdlixZS8Y4Hdj7dv7jEOWhRkxqGXmx7+JSoSSR
         GI8B2GdgK/KMiDDE96A8Lif+WnhLgxXUku8Gik8Wrgx1UbQqGc2hwDP4Yn8T7srq03TX
         Qdeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=EwFedY7kM/gB/rpDcp7mHBeO/ZNU+LJOdplgEIWLqb0=;
        b=T0X/1JU9HtSqPrsvUkWZxysEdqX7QFADaDzanTBZIRukbvZJndIFOdDy9LL0fhQQ/k
         he4ZDPE4wTKm1Foc9wtUVa4vNKNUP0Nx41uD/Z12XgXDYyHzXyxEzaYDNtNaCiPS1dPU
         QbUe/CYIcmqy/CB7gqhEUwwxmtyK2iiEwEU0O7TAwlj3K/peC3V/uHBKlaoML9jDkkGv
         X27HGrb163HEyYOtIYIwXgPjeD6S8QkUBtFvf3zy8Hf76281KtcLP8KOArGkGpM80+Z7
         wiL2YUuLUGNSG2ozLoQBlKmXTj6URedLP1izwRR9kHAjJ3j7dfoSd7Rwey5wOcxKwvqI
         hrTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BTPWbmn2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EwFedY7kM/gB/rpDcp7mHBeO/ZNU+LJOdplgEIWLqb0=;
        b=ZpMT7p4EnXwgJVii03J0TgxlW5tL+kmgU8GX0wNuoasYjPWC/jd28GGTcCCBw8jcBR
         vJ2RmujgLGuehVOk8zs63WOXWkb3YZv4vz2RtC0eaD+bX/IdxuKQpBEj4OkrukYi6Q50
         /AZWAenHvy9oaYB2IM2DMeca4DHgda97MMu6UTMu9gfHL6lKp1h3EljzRBqLma9OVptm
         3ebWV4xhRSn/mWAtYgsvtc2vaPRd3uLqZQIXIlb/Ilzd2g851gcmQy2eAgjOYcrrWtgx
         Cs8jMbP+xvWwur036IYTUgErV2PkCi8O59mHZqUagjtWolDOclph+lUoo3FtC6dyaL1p
         Au/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EwFedY7kM/gB/rpDcp7mHBeO/ZNU+LJOdplgEIWLqb0=;
        b=mmWzyCTdlhb27bGSeyxXxAKpoloH4axqEwOt0WjkBOzY8J4kpBD0yuxOTB8vCOVA8Y
         c1t/gOMJ6kFt4LQYUUKBu94m5Vu5BEglNRK5dkKbwOgtamWR2HtIfFK+n9DP75ITdRWE
         dLRWWV2kZ/iwXiT5tx6vok0ojMbOMCbzsPnXavWtsB29B0vyDope9J450r3pQWZMb4CK
         YJ2ORr9UEF+ig/8STFHyknZPVbmj9qdmAojjDCCiE48cGHYpqIiaebT+XIdTmJqm7LbO
         Wga7ROd4QPGLjRo4PxqhTIudUt9kJuFg8UUeG3JDOFY/o8yxNBgj6t13j0X+pW+7DTRx
         ELig==
X-Gm-Message-State: APjAAAUW2a70+Lwv0LytaAtpB9HYEZliCRSgBjJ8Xs66yzUnSWGzqheX
	Bd1gGCeft/7ne0HqbefZxs0=
X-Google-Smtp-Source: APXvYqzehtTrMPdH6di1BNdIPzmN6z6d3Fl1dm77fkZNLSHuaK4EpiyX87eHR2SELR7kCTQvoKk+mA==
X-Received: by 2002:a62:2ccc:: with SMTP id s195mr12193978pfs.256.1563987333417;
        Wed, 24 Jul 2019 09:55:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d705:: with SMTP id w5ls12459310ply.12.gmail; Wed,
 24 Jul 2019 09:55:33 -0700 (PDT)
X-Received: by 2002:a17:902:684:: with SMTP id 4mr87004952plh.138.1563987333126;
        Wed, 24 Jul 2019 09:55:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563987333; cv=none;
        d=google.com; s=arc-20160816;
        b=zsWNnxJ+YgZv7GK+uJJoT8jZbqgddXFOCYR7WwUwVKIBIk19pDpg92dsfw2hwjeA4l
         xcyu638wiBjxl2pMAikRDTZZZIA/hucaLutlMvXIMmmh41TPd2jHdt70ZLWZeYR0a6jU
         5I/R/4aY7Y0cIkAhRFjTDWX1O5I0Z5sLnMSpCpJfpa/m81I9O3hqRjoM3wMuqUFqWDcz
         CB2uMUC+OhG4naBSVGv+EFNREAOL11Rb/QDnMhew/7e+emUWOVyyw+seho/u5499Tu4K
         mKXnjIC/ncFDkl0YHrJjXMFRwQDZjq9zikkjzDW612qMtGcA3OlNJ4MMHJK9nfWIwAlQ
         T2Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qtRJ8Les6/fJJOzs6Q1HmSL5jEWwx9CtarW4mGfG+uo=;
        b=wKt1vPwpIsKygD/S6LVKouTAYYLT9iFF9g8ChR8IRjTBrL8on9M8dKbsDhppz6yAou
         kv8HwJ/ukShx9D+0jVMhBp/RpxjPnX54aqE0W5wx9jqSuh999aIHf/LOhk/xYnMEAEEc
         u8Izh3punauh6HmmPrQx2JWlTn+wfdft7pp9SyBgFei47HUc4Tncc1f71aa4ijBW5Ijm
         ZcHNU79nQ2+PIzg5fbP0GXvDSRxtRinhG9mY6FRPuqQ3/zvnfAfszhoxTASYWD/wS7VV
         wR+4rO3j14pFUC4Rdi+T1fChAhVbBUpe6Hv17nW3O6IseNSgrAkap8FTHd5DhVkc8LVM
         RqVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BTPWbmn2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id h14si2063818plr.2.2019.07.24.09.55.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 09:55:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id w10so21526741pgj.7
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 09:55:33 -0700 (PDT)
X-Received: by 2002:a62:2c8e:: with SMTP id s136mr12419121pfs.3.1563987332380;
 Wed, 24 Jul 2019 09:55:32 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190724023946.yxsz5im22fz4zxrn@treble> <20190724074732.GJ3402@hirez.programming.kicks-ass.net>
 <20190724125525.kgybu3nnpvwlcz2c@treble> <20190724133516.GB31381@hirez.programming.kicks-ass.net>
 <20190724141040.GA31425@hirez.programming.kicks-ass.net> <20190724164821.GB31425@hirez.programming.kicks-ass.net>
In-Reply-To: <20190724164821.GB31425@hirez.programming.kicks-ass.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jul 2019 09:55:21 -0700
Message-ID: <CAKwvOdnvqX4YtOaHL+B+1FOjdq-4tLZGKbs7LYQA4_SPTbdSqg@mail.gmail.com>
Subject: Re: [PATCH] objtool: Improve UACCESS coverage
To: Peter Zijlstra <peterz@infradead.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Thomas Gleixner <tglx@linutronix.de>, 
	LKML <linux-kernel@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BTPWbmn2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Wed, Jul 24, 2019 at 9:48 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Wed, Jul 24, 2019 at 04:10:40PM +0200, Peter Zijlstra wrote:
> > And that most certainly should trigger...
> >
> > Let me gdb that objtool thing.
>
> ---
> Subject: objtool: Improve UACCESS coverage
>
> A clang build reported an (obvious) double CLAC while a GCC build did
> not; it turns out we only re-visit instructions if the first visit was
> with AC=0. If OTOH the first visit was with AC=1, we completely ignore
> any subsequent visit, even when it has AC=0.
>
> Fix this by using a visited mask, instead of boolean and (explicitly)
> mark the AC state.
>
> $ ./objtool check -b --no-fp --retpoline --uaccess ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x22: redundant UACCESS disable
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xea: (alt)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   .altinstr_replacement+0xffffffffffffffff: (branch)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xd9: (alt)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xb2: (branch)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0x39: (branch)
> ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0x0: <=== (func)
>
> Reported-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Reported-by: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>

Tested-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  tools/objtool/check.c | 7 ++++---
>  tools/objtool/check.h | 3 ++-
>  2 files changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/tools/objtool/check.c b/tools/objtool/check.c
> index 5f26620f13f5..176f2f084060 100644
> --- a/tools/objtool/check.c
> +++ b/tools/objtool/check.c
> @@ -1946,6 +1946,7 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
>         struct alternative *alt;
>         struct instruction *insn, *next_insn;
>         struct section *sec;
> +       u8 visited;
>         int ret;
>
>         insn = first;
> @@ -1972,12 +1973,12 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
>                         return 1;
>                 }
>
> +               visited = 1 << state.uaccess;
>                 if (insn->visited) {
>                         if (!insn->hint && !insn_state_match(insn, &state))
>                                 return 1;
>
> -                       /* If we were here with AC=0, but now have AC=1, go again */
> -                       if (insn->state.uaccess || !state.uaccess)
> +                       if (insn->visited & visited)
>                                 return 0;
>                 }
>
> @@ -2024,7 +2025,7 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
>                 } else
>                         insn->state = state;
>
> -               insn->visited = true;
> +               insn->visited |= visited;
>
>                 if (!insn->ignore_alts) {
>                         bool skip_orig = false;
> diff --git a/tools/objtool/check.h b/tools/objtool/check.h
> index b881fafcf55d..6d875ca6fce0 100644
> --- a/tools/objtool/check.h
> +++ b/tools/objtool/check.h
> @@ -33,8 +33,9 @@ struct instruction {
>         unsigned int len;
>         enum insn_type type;
>         unsigned long immediate;
> -       bool alt_group, visited, dead_end, ignore, hint, save, restore, ignore_alts;
> +       bool alt_group, dead_end, ignore, hint, save, restore, ignore_alts;
>         bool retpoline_safe;
> +       u8 visited;
>         struct symbol *call_dest;
>         struct instruction *jump_dest;
>         struct instruction *first_jump_src;



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnvqX4YtOaHL%2BB%2B1FOjdq-4tLZGKbs7LYQA4_SPTbdSqg%40mail.gmail.com.
