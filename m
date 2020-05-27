Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBO7YXL3AKGQESGIPRKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AEC41E4DFC
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 21:15:09 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id i1sf23433813qvo.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 12:15:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590606908; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qc7Jnr1TdWBQpARztgRfiT8OIAfBVI/xRbdFvOXHONdJKR95vjxBApiS6wbFzpQkIF
         6SXmtde77JQvX+Res1td6PPMvXE8pZxIR8dhp2sjcCBetP9hU4K1NbYFo3nKLuVS2NT4
         83jcIhtMGLC4Gi5w/DBU1UE2PPNxrN5AwaViMJ0z6PXbRHkIW1jrZMvnX6XLSF9WpMBf
         zQ1+6ZFQuKHkG8/z7bNp5gbHXhU5V/TXtSs1rVsn3gqdIK8LGsMZ/Z5P4HoFk9ZPE82L
         4DpgjUqNnBu3cmaVssL8G0zem6D1hIkVsmq/LG3CaCw8xFyXevE95tu6C9NJ/Q7C7FQB
         rq1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ciKWhONqOeUzK6gt2z9U2HmMfIYCU+pxjmHXhYJY74Q=;
        b=Rd099rUynW36+qf/FM0HmYpeq4Uvz/IEGpLO+8aFS6PslbBsf3zBColOxe+ak3ghlI
         ++hVvcKeE7Py5lSXYRhJuNJ+KcWg/bVOCfaeFrJnwio0cYFLtJoHffN5cDwixT3iNDT4
         PFyqQLtXxz4cGoNLUh6BpfXkwy4PKprUAPoHctgyVvjyZUkm/v15uvnDrkUvvHqvqiaN
         FbQSJJi4qJx1f7KBLT1S2Wq5v9qYZAyHDYQutiJCIHpf1dd2GENXU0Yy6pDVNv1R79+e
         SB6D12YsRtGk7/30gI/QFvftMn+/yHC4am5dA3H3+DnKz9b2Bxu1GqvZQRnjIcgHwzi7
         btmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P8uATb2Z;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ciKWhONqOeUzK6gt2z9U2HmMfIYCU+pxjmHXhYJY74Q=;
        b=fhCzX+3K/OyWOZbo/gWLnLQuBRjYX5UkshR8KYGTMy65bxvxUe/4pEOL5x1HIRWec1
         04EEITGMKeDvc6vUPKn7zen0frZOhloMacOwh7l1if5KpPEiqIBCRffwjoaDbsymniAl
         8bzXRuNALUjBOUWs6SntTXVI3Fb/XJandmsrHwGg+1ErxQqtMeokQuqnKFCKQj28l5qN
         0UDzQ6VknA6dC33aI1mggYAUMsx2D+KVFztl3rowTp9xD0B/WxG7ytJ+K6nqR0A5ikIf
         DaqmF7vFGoEc009lpGMh+X+Vh2Ec2NrOSqPo5OP33Wvwch/dEHpMunID8V5YKDS2XIHN
         6jYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ciKWhONqOeUzK6gt2z9U2HmMfIYCU+pxjmHXhYJY74Q=;
        b=G2Qb3ovn4ZrZxDqyQJDoCjQZajzBs5yOHQ06FUsdI2HlJ79AbnVAygvOz44sALqcWL
         STk1P02IvEVFQqLQ1775rPGZyAk5u7PRt4Jq1Q+KaVXKaqBK6FBOAkUWagrFaqsYBkyM
         Jm/tHSgtbsN7rFmQQ3icmigQEnQymdm0tQEYZITRMdYuR4rjYc2v8yPg8W7tX27Tnqcy
         CVSbMLJikNvgsyHk5Vec2pZRBcWCcIHclK8xTY5STfHvbSK4ZGffL2LcRXNiSVo5fIX7
         z5l5dL/ls/aCufFb8Xgs88iLDV0bVbo04qNHktx9Bu1ZQkbfPvl9blhfDVJi933ZjjM7
         JuWw==
X-Gm-Message-State: AOAM533STsQLAg1Cx/ATWFNmVqNcYns6gSaNEL89d8StO5o8kFBww3ix
	mmgSQNe0Ga1QzgtqdLerDYM=
X-Google-Smtp-Source: ABdhPJyJVdg0Qtm4az3nE+Yt2nv4lKmUg1+3T2+8PXQunV5RkI7oFrLPXF3ethij4WLH485x1KuDpw==
X-Received: by 2002:a05:620a:b03:: with SMTP id t3mr5931508qkg.317.1590606907958;
        Wed, 27 May 2020 12:15:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:ac7:: with SMTP id 190ls2516246qkk.0.gmail; Wed, 27 May
 2020 12:15:07 -0700 (PDT)
X-Received: by 2002:a37:8e45:: with SMTP id q66mr5700088qkd.497.1590606907505;
        Wed, 27 May 2020 12:15:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590606907; cv=none;
        d=google.com; s=arc-20160816;
        b=cR95nHfmi2BChx0xFXKkOMILanuCMIoqKWCpHc08w/kVik5SRTpNVj3Qq05vOtMgUM
         ANQ8Xf9IQ2Y+Jj798NqnrCyA9YEDGf+iJ3198s8+mNZEBbxRt1KT+FMmbkCDJ/eXrzyo
         1zd55rUYWcdmCdwrhvue5ceBrPC1K+oRGTlquB3A1LZOh1wCtFXrHm459xYsVQA7q37D
         /7LgEs6qhPD9janRl2orVwpTie4juq6ERS0PcklA8h/cTYsLPvxV3LBJPS/uY/gEQw4Q
         ynS6wwuhIY4oBF86RKriWmJ7V9eH8/VBpUUW8yKEONuIc0wqy/Fe8ykLfpHQtK+SRoAK
         l3Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CPpomYNzZ7JQdxP/DL0TvucyrSh7m4+4U1ykvIyyU6Y=;
        b=NawFcBh4UMoHRr9Qbokz4K7/xBwZyCmmgICHu35ikZaKn3elOi1GSixCMCqXGQNhkO
         /o1c1z8df8GYKFS5VXVFsVWoVfPQ+HBW/a3pd6JPZTfiJYFrLW8cMLdpLsnSlWpfEZ1T
         ZTJC+IrHEsGoNGpmebZt+IqXzUligYBJLKlZWrCu9gZ3LdPL77MqgoX9IoZz3X5PgKqw
         OgsfkFdgFWPtmcsqnNDwSLdQyeWOif0q9GSP/W85jsKMR5PgpQHJddak3Mod8LnlKPMS
         1VN9HeKB8vms4wvfenh5FLI9I4VxvFzDpZNWsVxpDg5fdhIAAoBT2s4UJVK3qyaDJMll
         4rng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=P8uATb2Z;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id j94si258491qtb.4.2020.05.27.12.15.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 12:15:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id w4so22786967oia.1
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 12:15:07 -0700 (PDT)
X-Received: by 2002:aca:ebc5:: with SMTP id j188mr3919306oih.70.1590606906697;
 Wed, 27 May 2020 12:15:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200527103236.148700-1-elver@google.com> <CAK8P3a1MFgRxm6=+9WZKNzN+Nc5fhrDso6orSNQaaa-0yqygYA@mail.gmail.com>
 <CA+icZUWtzu0ONUSy0E27Mq1BrdO79qNaY3Si-PDhHZyF8M4S5g@mail.gmail.com>
 <CAK8P3a04=mVQgSrvDhpVxQj50JEFDn_xMhYrvjmUnLYTWH3QXQ@mail.gmail.com>
 <CA+icZUXVSTxDYJwXLyAwZd91cjMPcPRpeAR72JKqkqa-wRNnWg@mail.gmail.com>
 <CAK8P3a3i0kPf8dRg7Ko-33hsb+LkP=P05uz2tGvg5B43O-hFvg@mail.gmail.com>
 <CA+icZUWr5xDz5ujBfsXjnDdiBuopaGE6xO5LJQP9_y=YoROb+Q@mail.gmail.com>
 <CANpmjNOtKQAB_3t1G5Da-J1k-9Dk6eQKP+xNozRbmHJXZqXGFw@mail.gmail.com>
 <CA+icZUWzPMOj+qsDz-5Z3tD-hX5gcowjBkwYyiy8SL36Jg+2Nw@mail.gmail.com>
 <CANpmjNOPcFSr2n_ro8TqhOBXOBfUY0vZtj_VT7hh3HOhJN4BqQ@mail.gmail.com> <CA+icZUVK=5agY_FPdPeRbZyn3EoUgnmPToR3iGWuCzY+KHtoAA@mail.gmail.com>
In-Reply-To: <CA+icZUVK=5agY_FPdPeRbZyn3EoUgnmPToR3iGWuCzY+KHtoAA@mail.gmail.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 27 May 2020 21:14:54 +0200
Message-ID: <CANpmjNOA2Oa=AJkKYadbvEVOaqzgD840aC5wfGGrFvDqUmjhpg@mail.gmail.com>
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
 header.i=@google.com header.s=20161025 header.b=P8uATb2Z;       spf=pass
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

On Wed, 27 May 2020 at 21:11, Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, May 27, 2020 at 3:57 PM Marco Elver <elver@google.com> wrote:
> >
> > On Wed, 27 May 2020 at 15:37, Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Wed, May 27, 2020 at 3:30 PM Marco Elver <elver@google.com> wrote:
> > > >
> > > > On Wed, 27 May 2020 at 15:11, Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > >
> > > > > On Wed, May 27, 2020 at 2:50 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > >
> > > > > > On Wed, May 27, 2020 at 2:35 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > > > On Wed, May 27, 2020 at 2:31 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > > > > On Wed, May 27, 2020 at 1:36 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > > > > > On Wed, May 27, 2020 at 1:27 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > > > > > > On Wed, May 27, 2020 at 12:33 PM Marco Elver <elver@google.com> wrote:
> > > > > > > > > >
> > > > > > > > > > This gives us back 80% of the performance drop on clang, and 50%
> > > > > > > > > > of the drop I saw with gcc, compared to current mainline.
> > > > > > > > > >
> > > > > > > > > > Tested-by: Arnd Bergmann <arnd@arndb.de>
> > > > > > > > > >
> > > > > > > > >
> > > > > > > > > Hi Arnd,
> > > > > > > > >
> > > > > > > > > with "mainline" you mean Linux-next aka Linux v5.8 - not v5.7?
> > > > > > > >
> > > > > > > > I meant v5.7.
> > > > > > > >
> > > > > > > > > I have not seen __unqual_scalar_typeof(x) in compiler_types.h in Linux v5.7.
> > > > > > > > >
> > > > > > > > > Is there a speedup benefit also for Linux v5.7?
> > > > > > > > > Which patches do I need?
> > > > > > > >
> > > > > > > > v5.7-rc is the baseline and is the fastest I currently see. On certain files,
> > > > > > > > I saw an intermittent 10x slowdown that was already fixed earlier, now
> > > > > > > > linux-next
> > > > > > > > is more like 2x slowdown for me and 1.2x with this patch on top, so we're
> > > > > > > > almost back to the speed of linux-5.7.
> > > > > > > >
> > > > > > >
> > > > > > > Which clang version did you use - and have you set KCSAN kconfigs -
> > > > > > > AFAICS this needs clang-11?
> > > > > >
> > > > > > I'm currently using clang-11, but I see the same problem with older
> > > > > > versions, and both with and without KCSAN enabled. I think the issue
> > > > > > is mostly the deep nesting of macros that leads to code bloat.
> > > > > >
> > > > >
> > > > > Thanks.
> > > > >
> > > > > With clang-10:
> > > > >
> > > > > $ scripts/diffconfig /boot/config-5.7.0-rc7-2-amd64-clang .config
> > > > >  BUILD_SALT "5.7.0-rc7-2-amd64-clang" -> "5.7.0-rc7-3-amd64-clang"
> > > > > +HAVE_ARCH_KCSAN y
> > > >
> > > > Clang 10 doesn't support KCSAN (HAVE_KCSAN_COMPILER unset).
> > > >
> > > > > With clang-11:
> > > > >
> > > > > $ scripts/diffconfig /boot/config-5.7.0-rc7-2-amd64-clang .config
> > > > >  BUILD_SALT "5.7.0-rc7-2-amd64-clang" -> "5.7.0-rc7-3-amd64-clang"
> > > > >  CLANG_VERSION 100001 -> 110000
> > > > > +CC_HAS_ASM_INLINE y
> > > > > +HAVE_ARCH_KCSAN y
> > > > > +HAVE_KCSAN_COMPILER y
> > > > > +KCSAN n
> > > > >
> > > > > Which KCSAN kconfigs did you enable?
> > > >
> > > > To clarify: as said in [1], KCSAN (or any other instrumentation) is no
> > > > longer relevant to the issue here, and the compile-time regression is
> > > > observable with most configs. The problem is due to pre-processing and
> > > > parsing, which came about due to new READ_ONCE() and the
> > > > __unqual_scalar_typeof() macro (which this patch optimizes).
> > > >
> > > > KCSAN and new ONCEs got tangled up because we first attempted to
> > > > annotate {READ,WRITE}_ONCE() with data_race(), but that turned out to
> > > > have all kinds of other issues (explanation in [2]). So we decided to
> > > > drop all the KCSAN-specific bits from ONCE, and require KCSAN to be
> > > > Clang 11. Those fixes were applied to the first version of new
> > > > {READ,WRITE}_ONCE() in -tip, which actually restored the new ONCEs to
> > > > the pre-KCSAN version (now that KCSAN can deal with them without
> > > > annotations).
> > > >
> > > > Hope this makes more sense now.
> > > >
> > > > [1] https://lore.kernel.org/lkml/CANpmjNOUdr2UG3F45=JaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com/
> > > > [2] https://lore.kernel.org/lkml/20200521142047.169334-1-elver@google.com/
> > > >
> > >
> > > Thanks, Marco.
> > >
> > > I pulled tip.git#locking/kcsan on top of Linux v5.7-rc7 and applied this patch.
> > > Just wanted to try KCSAN for the first time and it will also be my
> > > first building with clang-11.
> > > That's why I asked.
> >
> > In general, CONFIG_KCSAN=y and the defaults for the other KCSAN
> > options should be good. Depending on the size of your system, you
> > could also tweak KCSAN runtime performance:
> > https://lwn.net/Articles/816850/#Interacting%20with%20KCSAN%20at%20Runtime
> > -- the defaults should be good for most systems though.
> > Hope this helps. Any more questions, do let me know.
> >
>
> Which "projects" and packages do I need?
>
> I have installed:
>
> # LC_ALL=C apt-get install llvm-11 clang-11 lld-11
> --no-install-recommends -t llvm-toolchain -y
>
> # dpkg -l | grep
> 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261 | awk
> '/^ii/ {print $1 " " $2 " " $3}' | column -t
> ii  clang-11
> 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> ii  libclang-common-11-dev
> 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> ii  libclang-cpp11
> 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> ii  libclang1-11
> 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> ii  libllvm11:amd64
> 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> ii  lld-11
> 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> ii  llvm-11
> 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> ii  llvm-11-runtime
> 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
>
> Is that enough?

Just clang-11 (and its transitive dependencies) is enough. Unsure what
your installed binary is, likely "clang-11", so if you can do "make
CC=clang-11 defconfig" (and check for CONFIG_HAVE_KCSAN_COMPILER)
you're good to go.

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNOA2Oa%3DAJkKYadbvEVOaqzgD840aC5wfGGrFvDqUmjhpg%40mail.gmail.com.
