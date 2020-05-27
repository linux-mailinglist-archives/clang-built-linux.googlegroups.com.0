Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB3OWXH3AKGQEM2YH77I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id A75781E43A4
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 15:30:22 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id j70sf2589611pje.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 06:30:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590586221; cv=pass;
        d=google.com; s=arc-20160816;
        b=j4TDsB71Zb7X2N2ZoYk8hF2GumRjEkHjjeRQkLZtsKUtLcTIZpbDpYM/lqWztfuzhL
         +Y5MprJb/St+73mZ4KXzbgzwqtkVCapyezhZophhygPH6QEN/krahUSsZcmZtheQWnGD
         NrnhkT1aTmpI2oT5J7Z0BmMKDyD5dLPElYueqKxJGhiqRSvAiCkuCel4HEj9FgoaPQE9
         uUHtngHFsoEVIx3vRpuczAWaKAEiy8+FKH/8XgpQ1U5+TlUfjE6lVyKSH0kiTjHqVoh3
         ntWE524g2Md9ZD7Ehx9GldBPLc8WfMso+LrMFWm67hth9fAeXciCpAiYTfH4EomY/0Sb
         enOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=TwVwiMAGL/NNAOF1Dfsx4lNKSJ6NAvsLsEn5OVD0lrk=;
        b=CI5Jf0f7gH6IC58dSW5L5jx1I3cnjUJGlQ3gBCWjMJz4hFR02hG6z6qBDocWMXs5Xn
         /Mq5iIDmsZ5DJ2Kxaf8TgFizKLUBTltOTwl2Rd04Ig7SmlYyL52ZGkvA/wY4VTB353na
         JrFc7rT75y0UvXM6ZgBj7kpxWZsy04XsxWcv0hhTuGPlNoKJBwYEIY9OKiWvDX2C9h4Q
         aCXXP33RPTD8MFKTEp79Pa7I0WTK1sQKShe7+Eezh0ppqjf32yojm/dxOmdFwtVL1CLO
         Ep4V1SK8/ULdZ630LGUKBZ2+POaDSOCkFoTOXHi466wPJlvLO3bckZ+7D3M8l3362Mt5
         WFEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QbtHWfZ+;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TwVwiMAGL/NNAOF1Dfsx4lNKSJ6NAvsLsEn5OVD0lrk=;
        b=XEUZWCW7YV4E3yoKs3h2MUMjAND+O44NWfTXQctg0HY5kZA/rOfBbaRwOhF0SHT7Yk
         srAFZNmJ2cK/cicPgngK0tp2cuanS+V2fCQTXKvwxj4LXEWlBDYlJKsZ1fYFNRtg1Hna
         T1OxHVCsEbn2DVPnNO0s9vcWHGDVFXF8yLCL9+5rPJprl3S2U6oPYH4qfpxonaMbWjJC
         6WKalmVUK/s+NYRQlK1cJzwRWOBdf9BBds1K6RcAKNjnGEJ8wQv6E4Bx2PM/0vLrLt7h
         bh68oc+n4ZlHa2wBN4WZufRTawXvm3YvLHNX0zxcGjvEJkInVHx9XfBMCUz6jUJENTmf
         uZXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TwVwiMAGL/NNAOF1Dfsx4lNKSJ6NAvsLsEn5OVD0lrk=;
        b=Ay4iKfmW/V7ObnrxLnfyudEe5gNBz4vRve7RkJbDH6H5JAY7VMOG0mhOtMk3FIQrU2
         DcJsXkt4D0oVjJfVosoEI6r+iYPchD0QS07V4NPIVsrZX986+PLaYon9PX+njXVQeTTv
         T0p4D/zrrB7y7jQRds7z1dWu3lmcUQxm+qsYXI2nqbG0URoZwVwcf/Wzae8DPfTxExPp
         VwU6+UlN6qLjlYWUMSOkBaXATpoRxi2Xvxl3AIZDW0Mb1dYzXigCmnbk22gXBxhwLOav
         rzKZNN3k4gPVCbCD0iNTI3IelgUMjP0ItpDZukWLzIXhhEJSBeuGBkPRjYNnhrBp10/v
         Lyzg==
X-Gm-Message-State: AOAM532NgsNWaS57gfqr/hGMBpMNBUFElSlZqBmTJPAt9aJqpLHjOuQ1
	VbfYVOJExB7+KNKwqlDjASI=
X-Google-Smtp-Source: ABdhPJznnc5lLN8eAj9PDH28GLvS2rrC/ymRRlPpKAcL0Ln96M27Gwv42baA6F6miXXQL3hpF8bZeg==
X-Received: by 2002:a63:b506:: with SMTP id y6mr3946074pge.107.1590586221224;
        Wed, 27 May 2020 06:30:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5649:: with SMTP id m9ls4707199pgs.7.gmail; Wed, 27 May
 2020 06:30:20 -0700 (PDT)
X-Received: by 2002:a62:80c6:: with SMTP id j189mr3996394pfd.322.1590586220669;
        Wed, 27 May 2020 06:30:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590586220; cv=none;
        d=google.com; s=arc-20160816;
        b=mTtlrZixgeyzECe7xK49RM3boE8ohXEvge/PyTuh5UAx2006m71R2/fge+JPNi6HkL
         w6HJkORuDzNSiWAp++f9D9so639xx3+u6Oyao5Bmx+P+JC/9AJgT5MiU6EdNv7bE79Il
         4QMU8gYQjpNJATIdqleX5w5y2O5BKRKU0D1zWXbbgtjXFwmFCjjHZe5QcwknlIk4Xmb5
         jIYSaWU5xqSX0RST3NohvaWulOXzxXo3dI/QB4FMkM6EpdyCo4ZGlXwxsOPMZgTbyIOw
         1D6LQXk03SAaTNBxT0vP4CIpMR2XUK5CHyPELXX+1Nv3aZuwUtlvZcAITTMNQYjyh53o
         Rdtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AwQUYVAQCrlzegHmktwvd3qax/+buVYaETqLr5p2maM=;
        b=V7kIDaXrbbYC9d4w+8ZVVVhHFyECtYc1/kHo5zcDcgOGFubvXaOHhkxHqWXXns7lZV
         h83LnCwvRMCd087JtUQQwZJYPN/o3zDB2Xaoa0oe1bWyTFWA/jhDuEOJ2aA1nxnB9fXz
         vFZH9ND0/yokpVDiI2P0WIUqFxya3ustJ71EJJEPR2SENGbxEggSKQD25Q1akCP5RJXG
         /0po/Xz62mFR4WU753Bap4AU+b2xqWI5FQYHHFop+G3IyQP2mXyVNtKgvBEJ904uDcMl
         rp0QmtIYOmy+WRCnlNaoLOazeRyRWzQ/fx4V+dEBV1O8dSVzgSQiFbRLsGh1/ay/RvAA
         TLzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QbtHWfZ+;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id m8si142660pgd.2.2020.05.27.06.30.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 06:30:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id w4so21745654oia.1
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 06:30:20 -0700 (PDT)
X-Received: by 2002:aca:d0d:: with SMTP id 13mr2676966oin.172.1590586219764;
 Wed, 27 May 2020 06:30:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200527103236.148700-1-elver@google.com> <CAK8P3a1MFgRxm6=+9WZKNzN+Nc5fhrDso6orSNQaaa-0yqygYA@mail.gmail.com>
 <CA+icZUWtzu0ONUSy0E27Mq1BrdO79qNaY3Si-PDhHZyF8M4S5g@mail.gmail.com>
 <CAK8P3a04=mVQgSrvDhpVxQj50JEFDn_xMhYrvjmUnLYTWH3QXQ@mail.gmail.com>
 <CA+icZUXVSTxDYJwXLyAwZd91cjMPcPRpeAR72JKqkqa-wRNnWg@mail.gmail.com>
 <CAK8P3a3i0kPf8dRg7Ko-33hsb+LkP=P05uz2tGvg5B43O-hFvg@mail.gmail.com> <CA+icZUWr5xDz5ujBfsXjnDdiBuopaGE6xO5LJQP9_y=YoROb+Q@mail.gmail.com>
In-Reply-To: <CA+icZUWr5xDz5ujBfsXjnDdiBuopaGE6xO5LJQP9_y=YoROb+Q@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 May 2020 15:30:08 +0200
Message-ID: <CANpmjNOtKQAB_3t1G5Da-J1k-9Dk6eQKP+xNozRbmHJXZqXGFw@mail.gmail.com>
Subject: Re: [PATCH -tip] compiler_types.h: Optimize __unqual_scalar_typeof
 compilation time
To: sedat.dilek@gmail.com
Cc: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Borislav Petkov <bp@alien8.de>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QbtHWfZ+;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as
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

On Wed, 27 May 2020 at 15:11, Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, May 27, 2020 at 2:50 PM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > On Wed, May 27, 2020 at 2:35 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > On Wed, May 27, 2020 at 2:31 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > On Wed, May 27, 2020 at 1:36 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > On Wed, May 27, 2020 at 1:27 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > > On Wed, May 27, 2020 at 12:33 PM Marco Elver <elver@google.com> wrote:
> > > > > >
> > > > > > This gives us back 80% of the performance drop on clang, and 50%
> > > > > > of the drop I saw with gcc, compared to current mainline.
> > > > > >
> > > > > > Tested-by: Arnd Bergmann <arnd@arndb.de>
> > > > > >
> > > > >
> > > > > Hi Arnd,
> > > > >
> > > > > with "mainline" you mean Linux-next aka Linux v5.8 - not v5.7?
> > > >
> > > > I meant v5.7.
> > > >
> > > > > I have not seen __unqual_scalar_typeof(x) in compiler_types.h in Linux v5.7.
> > > > >
> > > > > Is there a speedup benefit also for Linux v5.7?
> > > > > Which patches do I need?
> > > >
> > > > v5.7-rc is the baseline and is the fastest I currently see. On certain files,
> > > > I saw an intermittent 10x slowdown that was already fixed earlier, now
> > > > linux-next
> > > > is more like 2x slowdown for me and 1.2x with this patch on top, so we're
> > > > almost back to the speed of linux-5.7.
> > > >
> > >
> > > Which clang version did you use - and have you set KCSAN kconfigs -
> > > AFAICS this needs clang-11?
> >
> > I'm currently using clang-11, but I see the same problem with older
> > versions, and both with and without KCSAN enabled. I think the issue
> > is mostly the deep nesting of macros that leads to code bloat.
> >
>
> Thanks.
>
> With clang-10:
>
> $ scripts/diffconfig /boot/config-5.7.0-rc7-2-amd64-clang .config
>  BUILD_SALT "5.7.0-rc7-2-amd64-clang" -> "5.7.0-rc7-3-amd64-clang"
> +HAVE_ARCH_KCSAN y

Clang 10 doesn't support KCSAN (HAVE_KCSAN_COMPILER unset).

> With clang-11:
>
> $ scripts/diffconfig /boot/config-5.7.0-rc7-2-amd64-clang .config
>  BUILD_SALT "5.7.0-rc7-2-amd64-clang" -> "5.7.0-rc7-3-amd64-clang"
>  CLANG_VERSION 100001 -> 110000
> +CC_HAS_ASM_INLINE y
> +HAVE_ARCH_KCSAN y
> +HAVE_KCSAN_COMPILER y
> +KCSAN n
>
> Which KCSAN kconfigs did you enable?

To clarify: as said in [1], KCSAN (or any other instrumentation) is no
longer relevant to the issue here, and the compile-time regression is
observable with most configs. The problem is due to pre-processing and
parsing, which came about due to new READ_ONCE() and the
__unqual_scalar_typeof() macro (which this patch optimizes).

KCSAN and new ONCEs got tangled up because we first attempted to
annotate {READ,WRITE}_ONCE() with data_race(), but that turned out to
have all kinds of other issues (explanation in [2]). So we decided to
drop all the KCSAN-specific bits from ONCE, and require KCSAN to be
Clang 11. Those fixes were applied to the first version of new
{READ,WRITE}_ONCE() in -tip, which actually restored the new ONCEs to
the pre-KCSAN version (now that KCSAN can deal with them without
annotations).

Hope this makes more sense now.

[1] https://lore.kernel.org/lkml/CANpmjNOUdr2UG3F45=JaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com/
[2] https://lore.kernel.org/lkml/20200521142047.169334-1-elver@google.com/

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNOtKQAB_3t1G5Da-J1k-9Dk6eQKP%2BxNozRbmHJXZqXGFw%40mail.gmail.com.
