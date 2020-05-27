Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBMXDXH3AKGQEE77XNOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A991E44C6
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 15:57:07 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id o11sf25774058qti.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 06:57:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590587826; cv=pass;
        d=google.com; s=arc-20160816;
        b=xPn57Z9YadxvezofOQ1tWW+y90WFZMkWYM5DK73Qn8q0NX3V+FbPx2/2K43B50ICH2
         PoJMF2TVqPVJV832XESTCgvuAWbzpt/CSyqvHidAuvic+cWa6M3br/DN7+nUxErk+MLD
         IQ+qHrNyRs31bwFr+Ocb0aHRyREbB9hwDm5GhA20UGB3gik+csZyp8KQEKP/hU/qmpX3
         A0P/m5nxs1T+HNnCnk+UnBPPpCpsRgRnCEX7CyL1WObfiMBJ16QmW2xCBup2pCGKtAdp
         5g1ceOQ2YI1PB+Re2kE3BbKZ2RD2fDUKznDGoXcuu2XjaYwRA8/KwiJtVL49rEfoqnZL
         XnwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=D3VDLCq3l86yUlcLZskMDdodc0Jbcp+U6VFueIKNIbY=;
        b=bDc4fZzF7dkUl9Lt/u4hEk6Nqtfys4VbcH3ZCsoCBuT7KOnF4FQ51L6h9dS4FPHrCw
         X6lp2JZbrhKp3ei1nMOzLUqFVI7j6Z0rnAnqVsALVO3hEVkl+TgEmdArs8lDzeTaHi5L
         aN0g2oF3oKG2SvuKGCedLPcsYIndjduzg7Wm+FmgoVsWpjbWZRuGq3WFbSjNtP5Na2pr
         maF/WiNJ3rNK8WoBpturTCGfXL9UpquKbgRL6dmDeitXgSs4waQScVvX6ckv7ky6aApT
         Gt1OFaHTnqDjN5W5nFHZ9jRuNAKBVUqPP/cvwW3jr9GNYVC0p3ejU4x8F2YlzeM/X4tP
         9ArA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Hcywj/S6";
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D3VDLCq3l86yUlcLZskMDdodc0Jbcp+U6VFueIKNIbY=;
        b=C/WRp3Yh6cZ0VNDHfey7hAql5a2/OIKtDNHKf5u2mc+788JmCZquCSC3U5IwrId7Ke
         Tg17dKqPtzUpkBbCkWHBtfWuJFiSs+hW5tmftgoraHPamiy6UZXgi6U0kQCOalgM0U5m
         DgJ5UNvjSgh9jYrdk0IXruI3LzLJKgLHUrVKH3cpVR7cIlI0pJPIlnZ8O5zTVK5kGVUc
         DTIHpg+9jXWZmLCSPCfpVtjl/xv0ant3zsd0r7yzu/JIez7z/u0t8OIqm43PrdGZzD33
         LRBlR9JKAhQuNZ/Bz5hsJPp4R4js/2IfGD6TYija7FQpv2NrMXb9Wb7bxmXLvyrmr0d1
         xi8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D3VDLCq3l86yUlcLZskMDdodc0Jbcp+U6VFueIKNIbY=;
        b=CRX1JkNT57KSA3pEWN28FtIbDv+Ufu3uKdLO5RJ+JtwqTOq36eWnTrnbMlsRM5OgUa
         LlZCUrosaTRcI7jocRcsVoWLJS5qSOocTmW1p2w4Oj08G0Gr2U+kLJjLikWFkvp0yzOs
         8t/7dpwe4wGBCD0ma0BmDNoKZsyZQ9DsyaovVfQtFy4VAPSI0Q7TRiCaC5193WZRVMg4
         8wcUjwEQvV9+BWnaI3E4yjt5Y42bi8BDjqPPF2Au+fIW/PklEC2cQEtHP9gQrt8aQXDS
         NdjA8UFyfpucNLfQYuGKWwTodqFcswenhAl3CQGGkW/MWGhsiSMtn6Km4hssrpxzaR8p
         XaZg==
X-Gm-Message-State: AOAM532gFgpzgl/BdJjmhuK3neelM1qpVcKC97MYK6jdd6x/Mb5o8oLr
	dgTHHUMTUKurcR54UOYwsZg=
X-Google-Smtp-Source: ABdhPJzRJEV/ubtjxu2nwcLchi9JZvs4fOPj1mX/8S5VKDpxmpUXwfgzBF5F13iazz4caqm7mRaxLA==
X-Received: by 2002:a0c:fc45:: with SMTP id w5mr25017074qvp.75.1590587826589;
        Wed, 27 May 2020 06:57:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a3cc:: with SMTP id m195ls2044671qke.11.gmail; Wed, 27
 May 2020 06:57:06 -0700 (PDT)
X-Received: by 2002:a37:e50d:: with SMTP id e13mr4295878qkg.500.1590587826193;
        Wed, 27 May 2020 06:57:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590587826; cv=none;
        d=google.com; s=arc-20160816;
        b=vobcE/UnEG0caHiyLA9fm0J8YAVPzZqBKgKGtILMq70bIvAI4X/z4iMs31vgYn5c7F
         wVesu2+7yUMrQvLboLRfj3cYqHPo+QH4slEgWsKVz5j85c5ZCflcAv5xDJFg+OgYLFyz
         GlpUeAMyXY9IteIN2PUKbowPZS2S4NyNr3fxvB7tOYAps3fFtqe76GPtz/uzy2FUR+lf
         EA/v/hzh1uDLVEfH49whTGQD+foiOUik/8GDk+lPTNPW6bE729S9z0tTvZ+HVFyX2s1S
         JUJVoeIVSBmnPDryFVc2b5ylJOvEBZ8HWcv7CU1hY7OEX0EQOMMFCorm4bcrfsIOwzYl
         gkPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IdFFnED2awUw3pJ4+j8OXoHJjtxYorX0jVxetfYLfoE=;
        b=O1FHNXbELkd/fExcXy1xES5UmzDScTK3CqFTwzS/vIxMGIRM7w3IFWxs6l9PD5gNUQ
         dntMBwkx2C+Reh7L440Ahj3/6ts9Fbr8ZjU6pvqlVEZwYu4oh93I25Rj0kSejYZgHOs3
         IwQRHKLZFYmGTflAs6ZgG1AK7xK6lv58NEk7BcO/j5McMWemmw82viT84pFhPM+OXrR7
         tqARjMbEXWphRgf28oA7A//oKofj0aCIcgj5nyz1Z7Svcmpwx2PTC1ga5atUdNuYVIET
         zHxAr0ZUqJZiV7jjfv17uxvmW1+r61A+kQVGzfGXSHEOHlq17WovLh079aJcrSRHPCy9
         9SEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Hcywj/S6";
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id m1si212359qki.3.2020.05.27.06.57.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 06:57:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id j145so21808653oib.5
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 06:57:06 -0700 (PDT)
X-Received: by 2002:aca:6747:: with SMTP id b7mr2844571oiy.121.1590587825434;
 Wed, 27 May 2020 06:57:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200527103236.148700-1-elver@google.com> <CAK8P3a1MFgRxm6=+9WZKNzN+Nc5fhrDso6orSNQaaa-0yqygYA@mail.gmail.com>
 <CA+icZUWtzu0ONUSy0E27Mq1BrdO79qNaY3Si-PDhHZyF8M4S5g@mail.gmail.com>
 <CAK8P3a04=mVQgSrvDhpVxQj50JEFDn_xMhYrvjmUnLYTWH3QXQ@mail.gmail.com>
 <CA+icZUXVSTxDYJwXLyAwZd91cjMPcPRpeAR72JKqkqa-wRNnWg@mail.gmail.com>
 <CAK8P3a3i0kPf8dRg7Ko-33hsb+LkP=P05uz2tGvg5B43O-hFvg@mail.gmail.com>
 <CA+icZUWr5xDz5ujBfsXjnDdiBuopaGE6xO5LJQP9_y=YoROb+Q@mail.gmail.com>
 <CANpmjNOtKQAB_3t1G5Da-J1k-9Dk6eQKP+xNozRbmHJXZqXGFw@mail.gmail.com> <CA+icZUWzPMOj+qsDz-5Z3tD-hX5gcowjBkwYyiy8SL36Jg+2Nw@mail.gmail.com>
In-Reply-To: <CA+icZUWzPMOj+qsDz-5Z3tD-hX5gcowjBkwYyiy8SL36Jg+2Nw@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 May 2020 15:56:53 +0200
Message-ID: <CANpmjNOPcFSr2n_ro8TqhOBXOBfUY0vZtj_VT7hh3HOhJN4BqQ@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b="Hcywj/S6";       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::241 as
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

On Wed, 27 May 2020 at 15:37, Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, May 27, 2020 at 3:30 PM Marco Elver <elver@google.com> wrote:
> >
> > On Wed, 27 May 2020 at 15:11, Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Wed, May 27, 2020 at 2:50 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > >
> > > > On Wed, May 27, 2020 at 2:35 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > On Wed, May 27, 2020 at 2:31 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > > On Wed, May 27, 2020 at 1:36 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > > > On Wed, May 27, 2020 at 1:27 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > > > > On Wed, May 27, 2020 at 12:33 PM Marco Elver <elver@google.com> wrote:
> > > > > > > >
> > > > > > > > This gives us back 80% of the performance drop on clang, and 50%
> > > > > > > > of the drop I saw with gcc, compared to current mainline.
> > > > > > > >
> > > > > > > > Tested-by: Arnd Bergmann <arnd@arndb.de>
> > > > > > > >
> > > > > > >
> > > > > > > Hi Arnd,
> > > > > > >
> > > > > > > with "mainline" you mean Linux-next aka Linux v5.8 - not v5.7?
> > > > > >
> > > > > > I meant v5.7.
> > > > > >
> > > > > > > I have not seen __unqual_scalar_typeof(x) in compiler_types.h in Linux v5.7.
> > > > > > >
> > > > > > > Is there a speedup benefit also for Linux v5.7?
> > > > > > > Which patches do I need?
> > > > > >
> > > > > > v5.7-rc is the baseline and is the fastest I currently see. On certain files,
> > > > > > I saw an intermittent 10x slowdown that was already fixed earlier, now
> > > > > > linux-next
> > > > > > is more like 2x slowdown for me and 1.2x with this patch on top, so we're
> > > > > > almost back to the speed of linux-5.7.
> > > > > >
> > > > >
> > > > > Which clang version did you use - and have you set KCSAN kconfigs -
> > > > > AFAICS this needs clang-11?
> > > >
> > > > I'm currently using clang-11, but I see the same problem with older
> > > > versions, and both with and without KCSAN enabled. I think the issue
> > > > is mostly the deep nesting of macros that leads to code bloat.
> > > >
> > >
> > > Thanks.
> > >
> > > With clang-10:
> > >
> > > $ scripts/diffconfig /boot/config-5.7.0-rc7-2-amd64-clang .config
> > >  BUILD_SALT "5.7.0-rc7-2-amd64-clang" -> "5.7.0-rc7-3-amd64-clang"
> > > +HAVE_ARCH_KCSAN y
> >
> > Clang 10 doesn't support KCSAN (HAVE_KCSAN_COMPILER unset).
> >
> > > With clang-11:
> > >
> > > $ scripts/diffconfig /boot/config-5.7.0-rc7-2-amd64-clang .config
> > >  BUILD_SALT "5.7.0-rc7-2-amd64-clang" -> "5.7.0-rc7-3-amd64-clang"
> > >  CLANG_VERSION 100001 -> 110000
> > > +CC_HAS_ASM_INLINE y
> > > +HAVE_ARCH_KCSAN y
> > > +HAVE_KCSAN_COMPILER y
> > > +KCSAN n
> > >
> > > Which KCSAN kconfigs did you enable?
> >
> > To clarify: as said in [1], KCSAN (or any other instrumentation) is no
> > longer relevant to the issue here, and the compile-time regression is
> > observable with most configs. The problem is due to pre-processing and
> > parsing, which came about due to new READ_ONCE() and the
> > __unqual_scalar_typeof() macro (which this patch optimizes).
> >
> > KCSAN and new ONCEs got tangled up because we first attempted to
> > annotate {READ,WRITE}_ONCE() with data_race(), but that turned out to
> > have all kinds of other issues (explanation in [2]). So we decided to
> > drop all the KCSAN-specific bits from ONCE, and require KCSAN to be
> > Clang 11. Those fixes were applied to the first version of new
> > {READ,WRITE}_ONCE() in -tip, which actually restored the new ONCEs to
> > the pre-KCSAN version (now that KCSAN can deal with them without
> > annotations).
> >
> > Hope this makes more sense now.
> >
> > [1] https://lore.kernel.org/lkml/CANpmjNOUdr2UG3F45=JaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com/
> > [2] https://lore.kernel.org/lkml/20200521142047.169334-1-elver@google.com/
> >
>
> Thanks, Marco.
>
> I pulled tip.git#locking/kcsan on top of Linux v5.7-rc7 and applied this patch.
> Just wanted to try KCSAN for the first time and it will also be my
> first building with clang-11.
> That's why I asked.

In general, CONFIG_KCSAN=y and the defaults for the other KCSAN
options should be good. Depending on the size of your system, you
could also tweak KCSAN runtime performance:
https://lwn.net/Articles/816850/#Interacting%20with%20KCSAN%20at%20Runtime
-- the defaults should be good for most systems though.
Hope this helps. Any more questions, do let me know.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNOPcFSr2n_ro8TqhOBXOBfUY0vZtj_VT7hh3HOhJN4BqQ%40mail.gmail.com.
