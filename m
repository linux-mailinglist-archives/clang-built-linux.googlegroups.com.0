Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBGG2XH3AKGQEMYMEN5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4931E43DF
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 15:37:29 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id 99sf11611320oty.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 06:37:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590586648; cv=pass;
        d=google.com; s=arc-20160816;
        b=0MdwFxt1pey0zosmrG6LOgz54pYjnEtJ7U5VjWXjpu5UTgS9RSMH4PHtFD+eXsOVP7
         HnMzYlTKFMVbF0GyDFc0hvSuJQ6GNZrtTUIFxRsYc7G/6YOHPcsxMElEDJXO1MCQomJx
         NvHr+gyVQlLqn2Uw88bynDYJSW/XqDujbpVu7sxvzidgQ2L1MObE86sk+MUGIFJBIKDn
         MOAAtbwjYKzrvJ7idPZFFfGQU0T2tL4+a2JKGQobN6n7eXhojoorRE6o/RCe01arKsRl
         p5SWtyBGwNDjAMNS2tDAkoSKQS1w4Bs2EM6cIKKFDcJ39v8mBqdNJnUlpGIK7swKKTee
         kBCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+/lUIjQRcoGJTRSuUbme+AvrTzKeW6x8SldoB25mOuc=;
        b=NNQiCge8WXIq29zKYQeLqQ3LAiMAH7sFxrA/VueMfEa3CPSs6FGrWvuzghAWCE8LZ7
         qlUo7irdQmgkHhlcbnuaq2Vzb+Vddod4hWTjh3UHdMyu3vt8RBJkvMD/5yk4xqzVSqs7
         oheRP5VMPGJE8UrQ/fu22htuvoDbtBaEk1pGqmk98lsQfIqjt3KDDec9T+fBz9f9IaW5
         xHJC75DGNDmGTKNF8g/a29UiUEtEv2UQgfq0YuRFzuYOMows7+IkoMS+tTICj5oXRffi
         q9pBaWZ0+zWhG4L0iBEDo1j8DJjBJQ6jiovHL6kDrqa+9xc7wMNY+LUZznU1oSDKavQB
         ZzIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C6l+HeyB;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+/lUIjQRcoGJTRSuUbme+AvrTzKeW6x8SldoB25mOuc=;
        b=CS9DklZciZpM5XfQdQ36BB7kLMBDU1cUnZN6/l9hn2HKJMzMo90AMFWEwKZJX/B5Va
         RNpldS7RnLcupah7fJlUbFVtC1Gy3LOmCZ8B6UTVDWnCFacmIx93lVWH+DwtduRy06g+
         wOFtbyZT3uwbIbmleq9kJ07wHogFYrv9QQnAK/ABxzi4aS9IPmLv0QnuSq/UctgDedk3
         WDVvgMjXIs848+6+0hbKNjsuPmfDRAnFHWIHb/mY0KTyPjkodY5/IAYqYzZe8WZdCF4K
         FR3JdHfgQ/GYjpc5oEoI5RVM7rQr4c4NdxJHEXKSZnzJJVXZ+6ZwOjBVdXRoHFEppnXD
         EPxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+/lUIjQRcoGJTRSuUbme+AvrTzKeW6x8SldoB25mOuc=;
        b=t71o/e2GRkPT4IGH2L9Oz0iI+BFfRcpB8WOpEjY57TD6B86WwEDEcq/dYY0g93x4Et
         RKAQH1Loqx/y0Ut2lzZOvldjVlrRCbRHPL6SItssBQWtqIEMYbSi39bX9sza2AKdjdld
         0+o6q4YET7RsmNUMYyYF+jwz93NtlSf1APEdMfYaNeHgDJhLeg2OFI/OWFSqR570Zvhp
         YjqYAm1F48o10PSx4o28+gFKKgkFaU/4rjfYssWfUzuKb4CKbJnxeG5CYOYPY39qQrUT
         HwZzhs9DxLwZheK4URbqYHKms8H0bIPLXql4401t4yp0dXaZRUzCcNsoxbZCZYY20TYR
         s/ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+/lUIjQRcoGJTRSuUbme+AvrTzKeW6x8SldoB25mOuc=;
        b=eqNpbW7qGN6CeImV6AgV4H1pP71s5zOGYJKU8j+dCm9CyGgK/SxYbnBAB8lhPGL0Cm
         Xz+i3FbK1e7BdW4w1o5Nd8RstfG9UBbh+ByY6ouM4ihBGGtXrftstcVNYMiwyNXImCri
         bP7g7kJ/LJuwCLwQK67k4DUhtj+TXGS+QEKUG1dpd2VpywpNao0IuwlJCQL782UNZpdB
         ADkEQFCdcZqKHyAE8RDeP+R9wrZg1DSl2Zd9qH0elb5Qm45ijcdtklBiTN3Nx58SsfFE
         g4OCqm69z9EUHPVlUu8RmZwq0zsu95VRFee9YH2UdJdSy5qt1zsm/GMV4reeuK2FuLQG
         VF/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530yOBOq89xViHG9Tf3VvIoRdZwO5xTpV+pJ9B2a75/1Cnlk+rTR
	WmZuiunXeQhcm+cs+w1HAp8=
X-Google-Smtp-Source: ABdhPJwxJvpZUbxFSA5taC4/+OEu40QeCwx0my9a6M2/kLkpkscQSDTSlrv5rLaCiduWe38GII8gmQ==
X-Received: by 2002:a05:6830:614:: with SMTP id w20mr4461710oti.237.1590586648335;
        Wed, 27 May 2020 06:37:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:309c:: with SMTP id f28ls3106599ots.7.gmail; Wed,
 27 May 2020 06:37:28 -0700 (PDT)
X-Received: by 2002:a05:6830:61b:: with SMTP id w27mr5122464oti.154.1590586647972;
        Wed, 27 May 2020 06:37:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590586647; cv=none;
        d=google.com; s=arc-20160816;
        b=NGTecBDYWjbubMgxXcvtyC70HfDrGGkXBqlDlIwYvJ5k+i77iZRa3TPRE6Ix5gpx7B
         Z3XlrVzZascD5DMijamXWQfGbQ2tmOnDhiKpiF3ySwNWWHa9VXAdvkACfwiVTOWp3EkR
         evmM4CsG1qB5EunZs2CS3f4ndYnJ/Ky3SiirgxGn4g0NQEarYbFZhG2Xa/oYARnktMlL
         qhLn3ypgANgCa9uqq9t7oY0QEIs3sJZR5OnLhA/+O9UXVAXd0DxHYRliC7FNwFeeDmDt
         B1x355pYN/IoaP0Ex0IHVwM5SeUBUCIsK6FtHAQkrQanHFgEY1ODnZd0mWxo9179nY22
         /r1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=98asfAGM0k82DbjTjDjy1krArq/Ou3skB4zttUQk7aU=;
        b=a8LUO0prtgm6dU8MpL2PI/xeJn73N8WxsW9K2Tg+5uwqLoB5vQlmzZ0F8O6QUm3V5K
         1ixi8nyY3OAa450Bem30QfS2nixchDG9cLd6ssJOQOsex+nMHedXy8QMK7vzoXItVWBZ
         lV3C0sM7GiRxpCyMuico2SxwFXCz/PIZri17jSXjt9QbhDmHKNZbMQO60j1vG9ggw0mW
         B6jrkZWyEYQ/uFcxtyoAaXnItpq8yXxP7NqHIGYhqGyLpUqcbAs2A0yY+GSLdoGw+cgn
         mjOBnU2c/9GzIPzjzciXZP6XJ587fqkPyfcKKbBk+3J+e0q7cdwH6nPmiCdmmbaTVohD
         UhKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=C6l+HeyB;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd41.google.com (mail-io1-xd41.google.com. [2607:f8b0:4864:20::d41])
        by gmr-mx.google.com with ESMTPS id k65si305605oib.2.2020.05.27.06.37.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 06:37:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41 as permitted sender) client-ip=2607:f8b0:4864:20::d41;
Received: by mail-io1-xd41.google.com with SMTP id q8so24534532iow.7;
        Wed, 27 May 2020 06:37:27 -0700 (PDT)
X-Received: by 2002:a02:b0d1:: with SMTP id w17mr5599803jah.75.1590586647220;
 Wed, 27 May 2020 06:37:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200527103236.148700-1-elver@google.com> <CAK8P3a1MFgRxm6=+9WZKNzN+Nc5fhrDso6orSNQaaa-0yqygYA@mail.gmail.com>
 <CA+icZUWtzu0ONUSy0E27Mq1BrdO79qNaY3Si-PDhHZyF8M4S5g@mail.gmail.com>
 <CAK8P3a04=mVQgSrvDhpVxQj50JEFDn_xMhYrvjmUnLYTWH3QXQ@mail.gmail.com>
 <CA+icZUXVSTxDYJwXLyAwZd91cjMPcPRpeAR72JKqkqa-wRNnWg@mail.gmail.com>
 <CAK8P3a3i0kPf8dRg7Ko-33hsb+LkP=P05uz2tGvg5B43O-hFvg@mail.gmail.com>
 <CA+icZUWr5xDz5ujBfsXjnDdiBuopaGE6xO5LJQP9_y=YoROb+Q@mail.gmail.com> <CANpmjNOtKQAB_3t1G5Da-J1k-9Dk6eQKP+xNozRbmHJXZqXGFw@mail.gmail.com>
In-Reply-To: <CANpmjNOtKQAB_3t1G5Da-J1k-9Dk6eQKP+xNozRbmHJXZqXGFw@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 27 May 2020 15:37:19 +0200
Message-ID: <CA+icZUWzPMOj+qsDz-5Z3tD-hX5gcowjBkwYyiy8SL36Jg+2Nw@mail.gmail.com>
Subject: Re: [PATCH -tip] compiler_types.h: Optimize __unqual_scalar_typeof
 compilation time
To: Marco Elver <elver@google.com>
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
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=C6l+HeyB;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d41
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

On Wed, May 27, 2020 at 3:30 PM Marco Elver <elver@google.com> wrote:
>
> On Wed, 27 May 2020 at 15:11, Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Wed, May 27, 2020 at 2:50 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > >
> > > On Wed, May 27, 2020 at 2:35 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > On Wed, May 27, 2020 at 2:31 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > On Wed, May 27, 2020 at 1:36 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > > On Wed, May 27, 2020 at 1:27 PM Arnd Bergmann <arnd@arndb.de> wrote:
> > > > > > > On Wed, May 27, 2020 at 12:33 PM Marco Elver <elver@google.com> wrote:
> > > > > > >
> > > > > > > This gives us back 80% of the performance drop on clang, and 50%
> > > > > > > of the drop I saw with gcc, compared to current mainline.
> > > > > > >
> > > > > > > Tested-by: Arnd Bergmann <arnd@arndb.de>
> > > > > > >
> > > > > >
> > > > > > Hi Arnd,
> > > > > >
> > > > > > with "mainline" you mean Linux-next aka Linux v5.8 - not v5.7?
> > > > >
> > > > > I meant v5.7.
> > > > >
> > > > > > I have not seen __unqual_scalar_typeof(x) in compiler_types.h in Linux v5.7.
> > > > > >
> > > > > > Is there a speedup benefit also for Linux v5.7?
> > > > > > Which patches do I need?
> > > > >
> > > > > v5.7-rc is the baseline and is the fastest I currently see. On certain files,
> > > > > I saw an intermittent 10x slowdown that was already fixed earlier, now
> > > > > linux-next
> > > > > is more like 2x slowdown for me and 1.2x with this patch on top, so we're
> > > > > almost back to the speed of linux-5.7.
> > > > >
> > > >
> > > > Which clang version did you use - and have you set KCSAN kconfigs -
> > > > AFAICS this needs clang-11?
> > >
> > > I'm currently using clang-11, but I see the same problem with older
> > > versions, and both with and without KCSAN enabled. I think the issue
> > > is mostly the deep nesting of macros that leads to code bloat.
> > >
> >
> > Thanks.
> >
> > With clang-10:
> >
> > $ scripts/diffconfig /boot/config-5.7.0-rc7-2-amd64-clang .config
> >  BUILD_SALT "5.7.0-rc7-2-amd64-clang" -> "5.7.0-rc7-3-amd64-clang"
> > +HAVE_ARCH_KCSAN y
>
> Clang 10 doesn't support KCSAN (HAVE_KCSAN_COMPILER unset).
>
> > With clang-11:
> >
> > $ scripts/diffconfig /boot/config-5.7.0-rc7-2-amd64-clang .config
> >  BUILD_SALT "5.7.0-rc7-2-amd64-clang" -> "5.7.0-rc7-3-amd64-clang"
> >  CLANG_VERSION 100001 -> 110000
> > +CC_HAS_ASM_INLINE y
> > +HAVE_ARCH_KCSAN y
> > +HAVE_KCSAN_COMPILER y
> > +KCSAN n
> >
> > Which KCSAN kconfigs did you enable?
>
> To clarify: as said in [1], KCSAN (or any other instrumentation) is no
> longer relevant to the issue here, and the compile-time regression is
> observable with most configs. The problem is due to pre-processing and
> parsing, which came about due to new READ_ONCE() and the
> __unqual_scalar_typeof() macro (which this patch optimizes).
>
> KCSAN and new ONCEs got tangled up because we first attempted to
> annotate {READ,WRITE}_ONCE() with data_race(), but that turned out to
> have all kinds of other issues (explanation in [2]). So we decided to
> drop all the KCSAN-specific bits from ONCE, and require KCSAN to be
> Clang 11. Those fixes were applied to the first version of new
> {READ,WRITE}_ONCE() in -tip, which actually restored the new ONCEs to
> the pre-KCSAN version (now that KCSAN can deal with them without
> annotations).
>
> Hope this makes more sense now.
>
> [1] https://lore.kernel.org/lkml/CANpmjNOUdr2UG3F45=JaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com/
> [2] https://lore.kernel.org/lkml/20200521142047.169334-1-elver@google.com/
>

Thanks, Marco.

I pulled tip.git#locking/kcsan on top of Linux v5.7-rc7 and applied this patch.
Just wanted to try KCSAN for the first time and it will also be my
first building with clang-11.
That's why I asked.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWzPMOj%2BqsDz-5Z3tD-hX5gcowjBkwYyiy8SL36Jg%2B2Nw%40mail.gmail.com.
