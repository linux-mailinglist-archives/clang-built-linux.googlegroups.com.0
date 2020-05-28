Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJNRXX3AKGQETEXLZJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6E61E5780
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 08:22:31 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id c18sf17698342pls.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 23:22:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590646949; cv=pass;
        d=google.com; s=arc-20160816;
        b=icBVOyAnYDryr0sbZraQL6UXd/UlrRXkRfuGOZ2ygPeSi/SLGcbnm/14Sm6VTxLg2C
         CF3mVX9goFa1fNSpGcwm+rIjpu9pUc2ZmC+6zbf67guh67w4T6PzBy67QwP82NK4C26J
         GLxrTiQ/NnwW2XDiyxdyvtldwfcKj4QYLmNiwb1oShcrANOizf3S/xLturLwwwA35KJN
         4en2RRbQP0Ub/n5nZfCVJQPs9kLt0dgwq0uzgY3Q7a1qhghKxVeikxzKDndKG/Llj2I3
         gTA0/hkQSQJktGMr9UWzyRLK658ZURxK5O3cbAxddoEOxAIhPGVyC0XTi8MhdziwuGLt
         9eXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=fpaAecvzVuEEppoS0mH3B3lLx57pjfr2+MSrE9CQA44=;
        b=tjQFB/7RmmgvlIN5Pn0RhuetjJdhY8Ose+TFhkZupUKtWDQkDPv1q3orOjzDrPgghO
         FlmiiaayBEhpZYw+zHX89FQlUosAXe3nTTO5/aeF39hthw8qGOL7Qs4puBoC2dDXpF7h
         NFPaUTp2akxAy/Df3Xa/+I928sOYagz7gAh+8S/wlkS8A5DWAY8J4mCqcD2X7yfDUYOy
         LqChfhaEhlp/pOB7kNjBWPnRGf/evYmbEUor1gBTXEbzgEkhCkToBjzj68idgHc45Ztx
         P0+VMh4QY9OEW8nMnek9j3kDm5DDWflqzUehvvJZL4U/hMmL0Yva5FMPUd43qjOfwqCf
         mOYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WfiyTQKG;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fpaAecvzVuEEppoS0mH3B3lLx57pjfr2+MSrE9CQA44=;
        b=pQRIUI3qxPz0vFbe9KFOGO+jS5+JhbkZEsZe2B3bFo/PY4iL93P2gHf4Ql8M3/luyx
         rGSX/I6pCqj21uOEVfW5rrut2A9XMSN/VHxVtkEMx5AH7uXbWmpJCj4TQ9Zgem0KcGqD
         p8d8cCFf9d/wkElGs/PRxqszmi4Qx6UIcHEJfJz2tve57xlQv2KyA4dybe2oZGhMZ3tX
         ZLGgwIsm9zeO8bNm2naEZewsfFcZ5lZVCl0rhyxDmnpV7M9D/vgoZuulIfT2E+79nXlo
         N7Bxc+Bi88sBV1HNcvm1afyi1lJO+xG6L78xrckmfzsWzjSjuHBlEgpwt5eGPV/kHGho
         okxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fpaAecvzVuEEppoS0mH3B3lLx57pjfr2+MSrE9CQA44=;
        b=UcHprCOVXTg/mQ0N6KTmtfw4hRyphdDA+PyPbwswbr+xfjHSiassXoSdtnjxk7M4zf
         uVI+aYPs0ynlko8E9TUh5OoW1cakyAoePvErjK4xiaUjYRwhMmnYl0nTZAUKwxGfiv5c
         A4amMdQe/UhFDcgR8CYgK+GzkNPv3eFb+JmaekYggZ2szVPqIINM9PjrTEy3XfLgjQ9V
         n9QbfoZkw0RfPANnflKYlfUmMy52OzPW4BOLkEMVp7mTDP+jap0M33DjhBNmjvhid0t8
         zjHJqU7nahLGQscOoko13rHrnjjSKbVLi9/K9d7UmRS9Sjh49qR0ZwaZEQoaUzXiJa7V
         JTCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fpaAecvzVuEEppoS0mH3B3lLx57pjfr2+MSrE9CQA44=;
        b=jzVVJsVbsZ/1uE4G4CzVNSUUGPKiRI346MNYDh+1iZ+PnYlKdB+RI+0d7lZthdUZG2
         pAQMd4rKIWd4MPKtLTgC9cMSmajRa0U1ZmEJNetzxX8lnbyY3YiFGcn/veiMKVA6c54a
         jUMPTSZ5paHF7t8NVo3HfOF/ArPwowMnMjGGBcRjKAaIUuPBiCKqW/RzVcg1Xr2UMwDd
         Wuj1kDsYsHpgQyZpDhUEB1tTw3kMkmMC3JQoaH3Qyp3Rg62ocqgXQYrb4YzjUA/cagw3
         W7XyitlDR/6wm9O92wgotXSZuw/iZ7ErT149RUbvQPtADwhmRxUum5Ak8QNV8HiQIAS5
         a67w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324CswvE7+KU7tjT+lDF3Bbsjbv0TNsQz67cwDMruROQ+TEbUr4
	2tmF0MF97VriZJqO2Whii8E=
X-Google-Smtp-Source: ABdhPJynzaENaiMP4VMGTRkmFdsIyiUUyqsSiKuur8koC95Ag+N76qKl7OPfF247YvmSvgjCDMLxCg==
X-Received: by 2002:a17:902:103:: with SMTP id 3mr2053455plb.325.1590646949636;
        Wed, 27 May 2020 23:22:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c910:: with SMTP id o16ls452320pgg.4.gmail; Wed, 27 May
 2020 23:22:29 -0700 (PDT)
X-Received: by 2002:aa7:80d9:: with SMTP id a25mr1602993pfn.220.1590646949082;
        Wed, 27 May 2020 23:22:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590646949; cv=none;
        d=google.com; s=arc-20160816;
        b=VLF+QaAsz0fU85bvQqF9j6DT0Cu7kOwbJ+AK/GrzuLcv8YqfSlMXBQr0/FMJ2jFIh3
         dtA6HL2vnIQO7uazokxMFZTdFBoRKqLIbc76c2Er6dR6X38qOuwf/GE7vVYVnFWc6VZa
         2E2FefBsZJuKhfWQdE0w9FlhNzN6Z0a0tsamPHIAJhu4pMoA8d+QovENoQ7CgNMmGM3O
         xFbD74PMnSmGxmPCK3a4+sJSOslGN7++mSGvspynT2NIv9+aaIf4VLJ4xqiIu3XAiqxi
         /KA+mmCsMLdwsOppTpuA6XjbDaANPBdwJo6Ymgio3f5hUrNXWU0G+471Rmp91DiKdILM
         JNHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ApMydJklNvicE/rjcweMlO1leLGvq/JINlm5m40L3lA=;
        b=J8klnEFQXPsi3Zj4uHR8HYTSymb0PL/JbXPrA6kuru9xxOl/nLjEn05Lfd4YlG0DoR
         TBjfHfrM3GSIMiC/l7jMXppytba2PO15H5P/4saQ1oogkRsl+0SGPkIhBsK8SPcE5gKN
         vz0GhFqEW3iVArVEu8FT2+G91UGFR9E5Y9FeycAr2z3YGmrUVZAL/avQGMip9fNQugAw
         veafd9s9yzWImIhXpp4uc/Bk9GmZOIIzaJX/ApFRGq0k84VSgVN7SkK14YuVZJIlxPI3
         qIaeN3SHsk6mlj5TuhPGXHh0lGKCO1IDgMssUdF8EIG5cwTwEYxXD+mK8FRbURbaPIZT
         9VMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WfiyTQKG;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id k138si69963pfd.1.2020.05.27.23.22.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 23:22:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id c8so8399141iob.6;
        Wed, 27 May 2020 23:22:29 -0700 (PDT)
X-Received: by 2002:a02:ca18:: with SMTP id i24mr1261326jak.70.1590646948481;
 Wed, 27 May 2020 23:22:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200527103236.148700-1-elver@google.com> <CAK8P3a1MFgRxm6=+9WZKNzN+Nc5fhrDso6orSNQaaa-0yqygYA@mail.gmail.com>
 <CA+icZUWtzu0ONUSy0E27Mq1BrdO79qNaY3Si-PDhHZyF8M4S5g@mail.gmail.com>
 <CAK8P3a04=mVQgSrvDhpVxQj50JEFDn_xMhYrvjmUnLYTWH3QXQ@mail.gmail.com>
 <CA+icZUXVSTxDYJwXLyAwZd91cjMPcPRpeAR72JKqkqa-wRNnWg@mail.gmail.com>
 <CAK8P3a3i0kPf8dRg7Ko-33hsb+LkP=P05uz2tGvg5B43O-hFvg@mail.gmail.com>
 <CA+icZUWr5xDz5ujBfsXjnDdiBuopaGE6xO5LJQP9_y=YoROb+Q@mail.gmail.com>
 <CANpmjNOtKQAB_3t1G5Da-J1k-9Dk6eQKP+xNozRbmHJXZqXGFw@mail.gmail.com>
 <CA+icZUWzPMOj+qsDz-5Z3tD-hX5gcowjBkwYyiy8SL36Jg+2Nw@mail.gmail.com>
 <CANpmjNOPcFSr2n_ro8TqhOBXOBfUY0vZtj_VT7hh3HOhJN4BqQ@mail.gmail.com>
 <CA+icZUVK=5agY_FPdPeRbZyn3EoUgnmPToR3iGWuCzY+KHtoAA@mail.gmail.com>
 <CANpmjNOA2Oa=AJkKYadbvEVOaqzgD840aC5wfGGrFvDqUmjhpg@mail.gmail.com> <CA+icZUXu15=NK8wQgy=eeu=JcOGfB4Qr6UnwzTVvcH4T1L4pUQ@mail.gmail.com>
In-Reply-To: <CA+icZUXu15=NK8wQgy=eeu=JcOGfB4Qr6UnwzTVvcH4T1L4pUQ@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 28 May 2020 08:22:15 +0200
Message-ID: <CA+icZUVogqZzSP9Kemgfe7CQ31Exn8vzzfUccJ-mCXQyUGBeMw@mail.gmail.com>
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
Content-Type: multipart/alternative; boundary="00000000000053cdf505a6af5a0e"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WfiyTQKG;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42
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

--00000000000053cdf505a6af5a0e
Content-Type: text/plain; charset="UTF-8"

It took me 7 hours and 27 minutes - approx. 2h30m and 50 percent more than
with clang-10 and Linux v5.7-rc7.

- Sedat -

Sedat Dilek <sedat.dilek@gmail.com> schrieb am Do., 28. Mai 2020, 04:12:

> On Wed, May 27, 2020 at 9:15 PM Marco Elver <elver@google.com> wrote:
> >
> > On Wed, 27 May 2020 at 21:11, Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Wed, May 27, 2020 at 3:57 PM Marco Elver <elver@google.com> wrote:
> > > >
> > > > On Wed, 27 May 2020 at 15:37, Sedat Dilek <sedat.dilek@gmail.com>
> wrote:
> > > > >
> > > > > On Wed, May 27, 2020 at 3:30 PM Marco Elver <elver@google.com>
> wrote:
> > > > > >
> > > > > > On Wed, 27 May 2020 at 15:11, Sedat Dilek <sedat.dilek@gmail.com>
> wrote:
> > > > > > >
> > > > > > > On Wed, May 27, 2020 at 2:50 PM Arnd Bergmann <arnd@arndb.de>
> wrote:
> > > > > > > >
> > > > > > > > On Wed, May 27, 2020 at 2:35 PM Sedat Dilek <
> sedat.dilek@gmail.com> wrote:
> > > > > > > > > On Wed, May 27, 2020 at 2:31 PM Arnd Bergmann <
> arnd@arndb.de> wrote:
> > > > > > > > > > On Wed, May 27, 2020 at 1:36 PM Sedat Dilek <
> sedat.dilek@gmail.com> wrote:
> > > > > > > > > > > On Wed, May 27, 2020 at 1:27 PM Arnd Bergmann <
> arnd@arndb.de> wrote:
> > > > > > > > > > > > On Wed, May 27, 2020 at 12:33 PM Marco Elver <
> elver@google.com> wrote:
> > > > > > > > > > > >
> > > > > > > > > > > > This gives us back 80% of the performance drop on
> clang, and 50%
> > > > > > > > > > > > of the drop I saw with gcc, compared to current
> mainline.
> > > > > > > > > > > >
> > > > > > > > > > > > Tested-by: Arnd Bergmann <arnd@arndb.de>
> > > > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > > Hi Arnd,
> > > > > > > > > > >
> > > > > > > > > > > with "mainline" you mean Linux-next aka Linux v5.8 -
> not v5.7?
> > > > > > > > > >
> > > > > > > > > > I meant v5.7.
> > > > > > > > > >
> > > > > > > > > > > I have not seen __unqual_scalar_typeof(x) in
> compiler_types.h in Linux v5.7.
> > > > > > > > > > >
> > > > > > > > > > > Is there a speedup benefit also for Linux v5.7?
> > > > > > > > > > > Which patches do I need?
> > > > > > > > > >
> > > > > > > > > > v5.7-rc is the baseline and is the fastest I currently
> see. On certain files,
> > > > > > > > > > I saw an intermittent 10x slowdown that was already
> fixed earlier, now
> > > > > > > > > > linux-next
> > > > > > > > > > is more like 2x slowdown for me and 1.2x with this patch
> on top, so we're
> > > > > > > > > > almost back to the speed of linux-5.7.
> > > > > > > > > >
> > > > > > > > >
> > > > > > > > > Which clang version did you use - and have you set KCSAN
> kconfigs -
> > > > > > > > > AFAICS this needs clang-11?
> > > > > > > >
> > > > > > > > I'm currently using clang-11, but I see the same problem
> with older
> > > > > > > > versions, and both with and without KCSAN enabled. I think
> the issue
> > > > > > > > is mostly the deep nesting of macros that leads to code
> bloat.
> > > > > > > >
> > > > > > >
> > > > > > > Thanks.
> > > > > > >
> > > > > > > With clang-10:
> > > > > > >
> > > > > > > $ scripts/diffconfig /boot/config-5.7.0-rc7-2-amd64-clang
> .config
> > > > > > >  BUILD_SALT "5.7.0-rc7-2-amd64-clang" ->
> "5.7.0-rc7-3-amd64-clang"
> > > > > > > +HAVE_ARCH_KCSAN y
> > > > > >
> > > > > > Clang 10 doesn't support KCSAN (HAVE_KCSAN_COMPILER unset).
> > > > > >
> > > > > > > With clang-11:
> > > > > > >
> > > > > > > $ scripts/diffconfig /boot/config-5.7.0-rc7-2-amd64-clang
> .config
> > > > > > >  BUILD_SALT "5.7.0-rc7-2-amd64-clang" ->
> "5.7.0-rc7-3-amd64-clang"
> > > > > > >  CLANG_VERSION 100001 -> 110000
> > > > > > > +CC_HAS_ASM_INLINE y
> > > > > > > +HAVE_ARCH_KCSAN y
> > > > > > > +HAVE_KCSAN_COMPILER y
> > > > > > > +KCSAN n
> > > > > > >
> > > > > > > Which KCSAN kconfigs did you enable?
> > > > > >
> > > > > > To clarify: as said in [1], KCSAN (or any other instrumentation)
> is no
> > > > > > longer relevant to the issue here, and the compile-time
> regression is
> > > > > > observable with most configs. The problem is due to
> pre-processing and
> > > > > > parsing, which came about due to new READ_ONCE() and the
> > > > > > __unqual_scalar_typeof() macro (which this patch optimizes).
> > > > > >
> > > > > > KCSAN and new ONCEs got tangled up because we first attempted to
> > > > > > annotate {READ,WRITE}_ONCE() with data_race(), but that turned
> out to
> > > > > > have all kinds of other issues (explanation in [2]). So we
> decided to
> > > > > > drop all the KCSAN-specific bits from ONCE, and require KCSAN to
> be
> > > > > > Clang 11. Those fixes were applied to the first version of new
> > > > > > {READ,WRITE}_ONCE() in -tip, which actually restored the new
> ONCEs to
> > > > > > the pre-KCSAN version (now that KCSAN can deal with them without
> > > > > > annotations).
> > > > > >
> > > > > > Hope this makes more sense now.
> > > > > >
> > > > > > [1]
> https://lore.kernel.org/lkml/CANpmjNOUdr2UG3F45=JaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com/
> > > > > > [2]
> https://lore.kernel.org/lkml/20200521142047.169334-1-elver@google.com/
> > > > > >
> > > > >
> > > > > Thanks, Marco.
> > > > >
> > > > > I pulled tip.git#locking/kcsan on top of Linux v5.7-rc7 and
> applied this patch.
> > > > > Just wanted to try KCSAN for the first time and it will also be my
> > > > > first building with clang-11.
> > > > > That's why I asked.
> > > >
> > > > In general, CONFIG_KCSAN=y and the defaults for the other KCSAN
> > > > options should be good. Depending on the size of your system, you
> > > > could also tweak KCSAN runtime performance:
> > > >
> https://lwn.net/Articles/816850/#Interacting%20with%20KCSAN%20at%20Runtime
> > > > -- the defaults should be good for most systems though.
> > > > Hope this helps. Any more questions, do let me know.
> > > >
> > >
> > > Which "projects" and packages do I need?
> > >
> > > I have installed:
> > >
> > > # LC_ALL=C apt-get install llvm-11 clang-11 lld-11
> > > --no-install-recommends -t llvm-toolchain -y
> > >
> > > # dpkg -l | grep
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261 | awk
> > > '/^ii/ {print $1 " " $2 " " $3}' | column -t
> > > ii  clang-11
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > > ii  libclang-common-11-dev
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > > ii  libclang-cpp11
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > > ii  libclang1-11
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > > ii  libllvm11:amd64
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > > ii  lld-11
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > > ii  llvm-11
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > > ii  llvm-11-runtime
> > > 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261
> > >
> > > Is that enough?
> >
> > Just clang-11 (and its transitive dependencies) is enough. Unsure what
> > your installed binary is, likely "clang-11", so if you can do "make
> > CC=clang-11 defconfig" (and check for CONFIG_HAVE_KCSAN_COMPILER)
> > you're good to go.
> >
>
> I was able to build with clang-11 from apt.llvm.org.
>
> [ build-time ]
>
> Normally, it takes me approx. 05:00 to build with clang-10
> (10.0.1-rc1) and Linux v5.7-rc7.
>
> This time start: 21:18 and stop: 03:45 means 06:27 - took 01:27 longer.
>
> Samsung Ultrabook 2nd generation aka Intel Sandybridge CPU with 'make -j3'.
>
> [ diffconfig ]
>
>  BUILD_SALT "5.7.0-rc7-2-amd64-clang" -> "5.7.0-rc7-3-amd64-clang"
>  CLANG_VERSION 100001 -> 110000
> +CC_HAS_ASM_INLINE y
> +HAVE_ARCH_KCSAN y
> +HAVE_KCSAN_COMPILER y
> +KCSAN y
> +KCSAN_ASSUME_PLAIN_WRITES_ATOMIC y
> +KCSAN_DEBUG n
> +KCSAN_DELAY_RANDOMIZE y
> +KCSAN_EARLY_ENABLE y
> +KCSAN_IGNORE_ATOMICS n
> +KCSAN_INTERRUPT_WATCHER n
> +KCSAN_NUM_WATCHPOINTS 64
> +KCSAN_REPORT_ONCE_IN_MS 3000
> +KCSAN_REPORT_RACE_UNKNOWN_ORIGIN y
> +KCSAN_REPORT_VALUE_CHANGE_ONLY y
> +KCSAN_SELFTEST y
> +KCSAN_SKIP_WATCH 4000
> +KCSAN_SKIP_WATCH_RANDOMIZE y
> +KCSAN_UDELAY_INTERRUPT 20
> +KCSAN_UDELAY_TASK 80
>
> I am seeing this data-races:
>
> root@iniza:~# LC_ALL=C dmesg -T | grep 'BUG: KCSAN: data-race'
> [Thu May 28 03:51:53 2020] BUG: KCSAN: data-race in
> mutex_spin_on_owner+0xe0/0x1b0
> [Thu May 28 03:52:00 2020] BUG: KCSAN: data-race in mark_page_accessed
> / workingset_activation
> [Thu May 28 03:52:02 2020] BUG: KCSAN: data-race in
> mutex_spin_on_owner+0xe0/0x1b0
> [Thu May 28 03:52:08 2020] BUG: KCSAN: data-race in
> blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests
> [Thu May 28 03:52:10 2020] BUG: KCSAN: data-race in dd_has_work /
> dd_insert_requests
> [Thu May 28 03:52:11 2020] BUG: KCSAN: data-race in
> mutex_spin_on_owner+0xe0/0x1b0
> [Thu May 28 03:52:13 2020] BUG: KCSAN: data-race in
> page_counter_try_charge / page_counter_try_charge
> [Thu May 28 03:52:15 2020] BUG: KCSAN: data-race in ep_poll_callback /
> ep_send_events_proc
> [Thu May 28 03:52:21 2020] BUG: KCSAN: data-race in
> mutex_spin_on_owner+0xe0/0x1b0
> [Thu May 28 03:52:25 2020] BUG: KCSAN: data-race in
> mutex_spin_on_owner+0xe0/0x1b0
> [Thu May 28 03:52:26 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:52:31 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:52:38 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:52:53 2020] BUG: KCSAN: data-race in dd_has_work /
> dd_insert_requests
> [Thu May 28 03:52:56 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:52:59 2020] BUG: KCSAN: data-race in
> blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests
> [Thu May 28 03:53:25 2020] BUG: KCSAN: data-race in
> rwsem_spin_on_owner+0x102/0x1a0
> [Thu May 28 03:53:25 2020] BUG: KCSAN: data-race in
> page_counter_try_charge / page_counter_try_charge
> [Thu May 28 03:53:39 2020] BUG: KCSAN: data-race in do_epoll_wait /
> ep_poll_callback
> [Thu May 28 03:53:39 2020] BUG: KCSAN: data-race in
> find_next_and_bit+0x30/0xd0
> [Thu May 28 03:53:41 2020] BUG: KCSAN: data-race in dd_has_work /
> dd_insert_requests
> [Thu May 28 03:53:43 2020] BUG: KCSAN: data-race in do_epoll_wait /
> ep_poll_callback
> [Thu May 28 03:53:45 2020] BUG: KCSAN: data-race in dd_has_work /
> dd_insert_requests
> [Thu May 28 03:53:46 2020] BUG: KCSAN: data-race in
> blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests
> [Thu May 28 03:53:47 2020] BUG: KCSAN: data-race in
> rwsem_spin_on_owner+0x102/0x1a0
> [Thu May 28 03:54:02 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:54:11 2020] BUG: KCSAN: data-race in
> find_next_and_bit+0x30/0xd0
> [Thu May 28 03:54:19 2020] BUG: KCSAN: data-race in
> rwsem_spin_on_owner+0x102/0x1a0
> [Thu May 28 03:55:00 2020] BUG: KCSAN: data-race in
> mutex_spin_on_owner+0xe0/0x1b0
> [Thu May 28 03:56:14 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:56:50 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:56:50 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:56:52 2020] BUG: KCSAN: data-race in
> tick_nohz_next_event / tick_nohz_stop_tick
> [Thu May 28 03:56:58 2020] BUG: KCSAN: data-race in
> blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests
> [Thu May 28 03:57:58 2020] BUG: KCSAN: data-race in
> blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests
> [Thu May 28 03:58:00 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 03:58:07 2020] BUG: KCSAN: data-race in
> tick_nohz_next_event / tick_nohz_stop_tick
> [Thu May 28 03:58:44 2020] BUG: KCSAN: data-race in
> mutex_spin_on_owner+0xe0/0x1b0
> [Thu May 28 03:58:49 2020] BUG: KCSAN: data-race in
> __bitmap_subset+0x38/0xd0
> [Thu May 28 03:59:46 2020] BUG: KCSAN: data-race in
> tick_nohz_next_event / tick_nohz_stop_tick
> [Thu May 28 04:00:25 2020] BUG: KCSAN: data-race in dd_has_work /
> deadline_remove_request
> [Thu May 28 04:00:26 2020] BUG: KCSAN: data-race in
> tick_nohz_next_event / tick_nohz_stop_tick
>
> Full dmesg output and linux-config attached.
>
> - Sedat -
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVogqZzSP9Kemgfe7CQ31Exn8vzzfUccJ-mCXQyUGBeMw%40mail.gmail.com.

--00000000000053cdf505a6af5a0e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It took me 7 hours and 27 minutes - approx. 2h30m and 50 =
percent more than with clang-10 and Linux v5.7-rc7.<div dir=3D"auto"><br></=
div><div dir=3D"auto">- Sedat -</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">Sedat Dilek &lt;<a href=3D"mailto:seda=
t.dilek@gmail.com">sedat.dilek@gmail.com</a>&gt; schrieb am Do., 28. Mai 20=
20, 04:12:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Wed, May 27, 2020 at =
9:15 PM Marco Elver &lt;<a href=3D"mailto:elver@google.com" target=3D"_blan=
k" rel=3D"noreferrer">elver@google.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Wed, 27 May 2020 at 21:11, Sedat Dilek &lt;<a href=3D"mailto:sedat.=
dilek@gmail.com" target=3D"_blank" rel=3D"noreferrer">sedat.dilek@gmail.com=
</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; On Wed, May 27, 2020 at 3:57 PM Marco Elver &lt;<a href=3D"mailto=
:elver@google.com" target=3D"_blank" rel=3D"noreferrer">elver@google.com</a=
>&gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Wed, 27 May 2020 at 15:37, Sedat Dilek &lt;<a href=3D"mai=
lto:sedat.dilek@gmail.com" target=3D"_blank" rel=3D"noreferrer">sedat.dilek=
@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; On Wed, May 27, 2020 at 3:30 PM Marco Elver &lt;<a href=
=3D"mailto:elver@google.com" target=3D"_blank" rel=3D"noreferrer">elver@goo=
gle.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; On Wed, 27 May 2020 at 15:11, Sedat Dilek &lt;<a h=
ref=3D"mailto:sedat.dilek@gmail.com" target=3D"_blank" rel=3D"noreferrer">s=
edat.dilek@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; On Wed, May 27, 2020 at 2:50 PM Arnd Bergmann=
 &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank" rel=3D"noreferrer">=
arnd@arndb.de</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; On Wed, May 27, 2020 at 2:35 PM Sedat Di=
lek &lt;<a href=3D"mailto:sedat.dilek@gmail.com" target=3D"_blank" rel=3D"n=
oreferrer">sedat.dilek@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; On Wed, May 27, 2020 at 2:31 PM Arn=
d Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank" rel=3D"no=
referrer">arnd@arndb.de</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; On Wed, May 27, 2020 at 1:36 P=
M Sedat Dilek &lt;<a href=3D"mailto:sedat.dilek@gmail.com" target=3D"_blank=
" rel=3D"noreferrer">sedat.dilek@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; On Wed, May 27, 2020 at 1=
:27 PM Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank"=
 rel=3D"noreferrer">arnd@arndb.de</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; On Wed, May 27, 2020=
 at 12:33 PM Marco Elver &lt;<a href=3D"mailto:elver@google.com" target=3D"=
_blank" rel=3D"noreferrer">elver@google.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; This gives us back 8=
0% of the performance drop on clang, and 50%<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; of the drop I saw wi=
th gcc, compared to current mainline.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Tested-by: Arnd Berg=
mann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank" rel=3D"noreferr=
er">arnd@arndb.de</a>&gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Hi Arnd,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; with &quot;mainline&quot;=
 you mean Linux-next aka Linux v5.8 - not v5.7?<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; I meant v5.7.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; I have not seen __unqual_=
scalar_typeof(x) in compiler_types.h in Linux v5.7.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Is there a speedup benefi=
t also for Linux v5.7?<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Which patches do I need?<=
br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; v5.7-rc is the baseline and is=
 the fastest I currently see. On certain files,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; I saw an intermittent 10x slow=
down that was already fixed earlier, now<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; linux-next<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; is more like 2x slowdown for m=
e and 1.2x with this patch on top, so we&#39;re<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; almost back to the speed of li=
nux-5.7.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; Which clang version did you use - a=
nd have you set KCSAN kconfigs -<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; &gt; AFAICS this needs clang-11?<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; I&#39;m currently using clang-11, but I =
see the same problem with older<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; versions, and both with and without KCSA=
N enabled. I think the issue<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; is mostly the deep nesting of macros tha=
t leads to code bloat.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; Thanks.<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; With clang-10:<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; $ scripts/diffconfig /boot/config-5.7.0-rc7-2=
-amd64-clang .config<br>
&gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 BUILD_SALT &quot;5.7.0-rc7-2-amd64-clan=
g&quot; -&gt; &quot;5.7.0-rc7-3-amd64-clang&quot;<br>
&gt; &gt; &gt; &gt; &gt; &gt; +HAVE_ARCH_KCSAN y<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; Clang 10 doesn&#39;t support KCSAN (HAVE_KCSAN_COM=
PILER unset).<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; With clang-11:<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; $ scripts/diffconfig /boot/config-5.7.0-rc7-2=
-amd64-clang .config<br>
&gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 BUILD_SALT &quot;5.7.0-rc7-2-amd64-clan=
g&quot; -&gt; &quot;5.7.0-rc7-3-amd64-clang&quot;<br>
&gt; &gt; &gt; &gt; &gt; &gt;=C2=A0 CLANG_VERSION 100001 -&gt; 110000<br>
&gt; &gt; &gt; &gt; &gt; &gt; +CC_HAS_ASM_INLINE y<br>
&gt; &gt; &gt; &gt; &gt; &gt; +HAVE_ARCH_KCSAN y<br>
&gt; &gt; &gt; &gt; &gt; &gt; +HAVE_KCSAN_COMPILER y<br>
&gt; &gt; &gt; &gt; &gt; &gt; +KCSAN n<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; Which KCSAN kconfigs did you enable?<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; To clarify: as said in [1], KCSAN (or any other in=
strumentation) is no<br>
&gt; &gt; &gt; &gt; &gt; longer relevant to the issue here, and the compile=
-time regression is<br>
&gt; &gt; &gt; &gt; &gt; observable with most configs. The problem is due t=
o pre-processing and<br>
&gt; &gt; &gt; &gt; &gt; parsing, which came about due to new READ_ONCE() a=
nd the<br>
&gt; &gt; &gt; &gt; &gt; __unqual_scalar_typeof() macro (which this patch o=
ptimizes).<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; KCSAN and new ONCEs got tangled up because we firs=
t attempted to<br>
&gt; &gt; &gt; &gt; &gt; annotate {READ,WRITE}_ONCE() with data_race(), but=
 that turned out to<br>
&gt; &gt; &gt; &gt; &gt; have all kinds of other issues (explanation in [2]=
). So we decided to<br>
&gt; &gt; &gt; &gt; &gt; drop all the KCSAN-specific bits from ONCE, and re=
quire KCSAN to be<br>
&gt; &gt; &gt; &gt; &gt; Clang 11. Those fixes were applied to the first ve=
rsion of new<br>
&gt; &gt; &gt; &gt; &gt; {READ,WRITE}_ONCE() in -tip, which actually restor=
ed the new ONCEs to<br>
&gt; &gt; &gt; &gt; &gt; the pre-KCSAN version (now that KCSAN can deal wit=
h them without<br>
&gt; &gt; &gt; &gt; &gt; annotations).<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; Hope this makes more sense now.<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; [1] <a href=3D"https://lore.kernel.org/lkml/CANpmj=
NOUdr2UG3F45=3DJaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com/" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">https://lore.kernel.org/lkml/CANpmjNO=
Udr2UG3F45=3DJaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com/</a><br>
&gt; &gt; &gt; &gt; &gt; [2] <a href=3D"https://lore.kernel.org/lkml/202005=
21142047.169334-1-elver@google.com/" rel=3D"noreferrer noreferrer" target=
=3D"_blank">https://lore.kernel.org/lkml/20200521142047.169334-1-elver@goog=
le.com/</a><br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Thanks, Marco.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I pulled tip.git#locking/kcsan on top of Linux v5.7-rc7=
 and applied this patch.<br>
&gt; &gt; &gt; &gt; Just wanted to try KCSAN for the first time and it will=
 also be my<br>
&gt; &gt; &gt; &gt; first building with clang-11.<br>
&gt; &gt; &gt; &gt; That&#39;s why I asked.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; In general, CONFIG_KCSAN=3Dy and the defaults for the other =
KCSAN<br>
&gt; &gt; &gt; options should be good. Depending on the size of your system=
, you<br>
&gt; &gt; &gt; could also tweak KCSAN runtime performance:<br>
&gt; &gt; &gt; <a href=3D"https://lwn.net/Articles/816850/#Interacting%20wi=
th%20KCSAN%20at%20Runtime" rel=3D"noreferrer noreferrer" target=3D"_blank">=
https://lwn.net/Articles/816850/#Interacting%20with%20KCSAN%20at%20Runtime<=
/a><br>
&gt; &gt; &gt; -- the defaults should be good for most systems though.<br>
&gt; &gt; &gt; Hope this helps. Any more questions, do let me know.<br>
&gt; &gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Which &quot;projects&quot; and packages do I need?<br>
&gt; &gt;<br>
&gt; &gt; I have installed:<br>
&gt; &gt;<br>
&gt; &gt; # LC_ALL=3DC apt-get install llvm-11 clang-11 lld-11<br>
&gt; &gt; --no-install-recommends -t llvm-toolchain -y<br>
&gt; &gt;<br>
&gt; &gt; # dpkg -l | grep<br>
&gt; &gt; 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261 | aw=
k<br>
&gt; &gt; &#39;/^ii/ {print $1 &quot; &quot; $2 &quot; &quot; $3}&#39; | co=
lumn -t<br>
&gt; &gt; ii=C2=A0 clang-11<br>
&gt; &gt; 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261<br>
&gt; &gt; ii=C2=A0 libclang-common-11-dev<br>
&gt; &gt; 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261<br>
&gt; &gt; ii=C2=A0 libclang-cpp11<br>
&gt; &gt; 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261<br>
&gt; &gt; ii=C2=A0 libclang1-11<br>
&gt; &gt; 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261<br>
&gt; &gt; ii=C2=A0 libllvm11:amd64<br>
&gt; &gt; 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261<br>
&gt; &gt; ii=C2=A0 lld-11<br>
&gt; &gt; 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261<br>
&gt; &gt; ii=C2=A0 llvm-11<br>
&gt; &gt; 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261<br>
&gt; &gt; ii=C2=A0 llvm-11-runtime<br>
&gt; &gt; 1:11~++20200527111130+65030821d4a-1~exp1~20200527091804.3261<br>
&gt; &gt;<br>
&gt; &gt; Is that enough?<br>
&gt;<br>
&gt; Just clang-11 (and its transitive dependencies) is enough. Unsure what=
<br>
&gt; your installed binary is, likely &quot;clang-11&quot;, so if you can d=
o &quot;make<br>
&gt; CC=3Dclang-11 defconfig&quot; (and check for CONFIG_HAVE_KCSAN_COMPILE=
R)<br>
&gt; you&#39;re good to go.<br>
&gt;<br>
<br>
I was able to build with clang-11 from <a href=3D"http://apt.llvm.org" rel=
=3D"noreferrer noreferrer" target=3D"_blank">apt.llvm.org</a>.<br>
<br>
[ build-time ]<br>
<br>
Normally, it takes me approx. 05:00 to build with clang-10<br>
(10.0.1-rc1) and Linux v5.7-rc7.<br>
<br>
This time start: 21:18 and stop: 03:45 means 06:27 - took 01:27 longer.<br>
<br>
Samsung Ultrabook 2nd generation aka Intel Sandybridge CPU with &#39;make -=
j3&#39;.<br>
<br>
[ diffconfig ]<br>
<br>
=C2=A0BUILD_SALT &quot;5.7.0-rc7-2-amd64-clang&quot; -&gt; &quot;5.7.0-rc7-=
3-amd64-clang&quot;<br>
=C2=A0CLANG_VERSION 100001 -&gt; 110000<br>
+CC_HAS_ASM_INLINE y<br>
+HAVE_ARCH_KCSAN y<br>
+HAVE_KCSAN_COMPILER y<br>
+KCSAN y<br>
+KCSAN_ASSUME_PLAIN_WRITES_ATOMIC y<br>
+KCSAN_DEBUG n<br>
+KCSAN_DELAY_RANDOMIZE y<br>
+KCSAN_EARLY_ENABLE y<br>
+KCSAN_IGNORE_ATOMICS n<br>
+KCSAN_INTERRUPT_WATCHER n<br>
+KCSAN_NUM_WATCHPOINTS 64<br>
+KCSAN_REPORT_ONCE_IN_MS 3000<br>
+KCSAN_REPORT_RACE_UNKNOWN_ORIGIN y<br>
+KCSAN_REPORT_VALUE_CHANGE_ONLY y<br>
+KCSAN_SELFTEST y<br>
+KCSAN_SKIP_WATCH 4000<br>
+KCSAN_SKIP_WATCH_RANDOMIZE y<br>
+KCSAN_UDELAY_INTERRUPT 20<br>
+KCSAN_UDELAY_TASK 80<br>
<br>
I am seeing this data-races:<br>
<br>
root@iniza:~# LC_ALL=3DC dmesg -T | grep &#39;BUG: KCSAN: data-race&#39;<br=
>
[Thu May 28 03:51:53 2020] BUG: KCSAN: data-race in<br>
mutex_spin_on_owner+0xe0/0x1b0<br>
[Thu May 28 03:52:00 2020] BUG: KCSAN: data-race in mark_page_accessed<br>
/ workingset_activation<br>
[Thu May 28 03:52:02 2020] BUG: KCSAN: data-race in<br>
mutex_spin_on_owner+0xe0/0x1b0<br>
[Thu May 28 03:52:08 2020] BUG: KCSAN: data-race in<br>
blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests<br>
[Thu May 28 03:52:10 2020] BUG: KCSAN: data-race in dd_has_work /<br>
dd_insert_requests<br>
[Thu May 28 03:52:11 2020] BUG: KCSAN: data-race in<br>
mutex_spin_on_owner+0xe0/0x1b0<br>
[Thu May 28 03:52:13 2020] BUG: KCSAN: data-race in<br>
page_counter_try_charge / page_counter_try_charge<br>
[Thu May 28 03:52:15 2020] BUG: KCSAN: data-race in ep_poll_callback /<br>
ep_send_events_proc<br>
[Thu May 28 03:52:21 2020] BUG: KCSAN: data-race in<br>
mutex_spin_on_owner+0xe0/0x1b0<br>
[Thu May 28 03:52:25 2020] BUG: KCSAN: data-race in<br>
mutex_spin_on_owner+0xe0/0x1b0<br>
[Thu May 28 03:52:26 2020] BUG: KCSAN: data-race in dd_has_work /<br>
deadline_remove_request<br>
[Thu May 28 03:52:31 2020] BUG: KCSAN: data-race in dd_has_work /<br>
deadline_remove_request<br>
[Thu May 28 03:52:38 2020] BUG: KCSAN: data-race in dd_has_work /<br>
deadline_remove_request<br>
[Thu May 28 03:52:53 2020] BUG: KCSAN: data-race in dd_has_work /<br>
dd_insert_requests<br>
[Thu May 28 03:52:56 2020] BUG: KCSAN: data-race in dd_has_work /<br>
deadline_remove_request<br>
[Thu May 28 03:52:59 2020] BUG: KCSAN: data-race in<br>
blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests<br>
[Thu May 28 03:53:25 2020] BUG: KCSAN: data-race in<br>
rwsem_spin_on_owner+0x102/0x1a0<br>
[Thu May 28 03:53:25 2020] BUG: KCSAN: data-race in<br>
page_counter_try_charge / page_counter_try_charge<br>
[Thu May 28 03:53:39 2020] BUG: KCSAN: data-race in do_epoll_wait /<br>
ep_poll_callback<br>
[Thu May 28 03:53:39 2020] BUG: KCSAN: data-race in find_next_and_bit+0x30/=
0xd0<br>
[Thu May 28 03:53:41 2020] BUG: KCSAN: data-race in dd_has_work /<br>
dd_insert_requests<br>
[Thu May 28 03:53:43 2020] BUG: KCSAN: data-race in do_epoll_wait /<br>
ep_poll_callback<br>
[Thu May 28 03:53:45 2020] BUG: KCSAN: data-race in dd_has_work /<br>
dd_insert_requests<br>
[Thu May 28 03:53:46 2020] BUG: KCSAN: data-race in<br>
blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests<br>
[Thu May 28 03:53:47 2020] BUG: KCSAN: data-race in<br>
rwsem_spin_on_owner+0x102/0x1a0<br>
[Thu May 28 03:54:02 2020] BUG: KCSAN: data-race in dd_has_work /<br>
deadline_remove_request<br>
[Thu May 28 03:54:11 2020] BUG: KCSAN: data-race in find_next_and_bit+0x30/=
0xd0<br>
[Thu May 28 03:54:19 2020] BUG: KCSAN: data-race in<br>
rwsem_spin_on_owner+0x102/0x1a0<br>
[Thu May 28 03:55:00 2020] BUG: KCSAN: data-race in<br>
mutex_spin_on_owner+0xe0/0x1b0<br>
[Thu May 28 03:56:14 2020] BUG: KCSAN: data-race in dd_has_work /<br>
deadline_remove_request<br>
[Thu May 28 03:56:50 2020] BUG: KCSAN: data-race in dd_has_work /<br>
deadline_remove_request<br>
[Thu May 28 03:56:50 2020] BUG: KCSAN: data-race in dd_has_work /<br>
deadline_remove_request<br>
[Thu May 28 03:56:52 2020] BUG: KCSAN: data-race in<br>
tick_nohz_next_event / tick_nohz_stop_tick<br>
[Thu May 28 03:56:58 2020] BUG: KCSAN: data-race in<br>
blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests<br>
[Thu May 28 03:57:58 2020] BUG: KCSAN: data-race in<br>
blk_mq_sched_dispatch_requests / blk_mq_sched_dispatch_requests<br>
[Thu May 28 03:58:00 2020] BUG: KCSAN: data-race in dd_has_work /<br>
deadline_remove_request<br>
[Thu May 28 03:58:07 2020] BUG: KCSAN: data-race in<br>
tick_nohz_next_event / tick_nohz_stop_tick<br>
[Thu May 28 03:58:44 2020] BUG: KCSAN: data-race in<br>
mutex_spin_on_owner+0xe0/0x1b0<br>
[Thu May 28 03:58:49 2020] BUG: KCSAN: data-race in __bitmap_subset+0x38/0x=
d0<br>
[Thu May 28 03:59:46 2020] BUG: KCSAN: data-race in<br>
tick_nohz_next_event / tick_nohz_stop_tick<br>
[Thu May 28 04:00:25 2020] BUG: KCSAN: data-race in dd_has_work /<br>
deadline_remove_request<br>
[Thu May 28 04:00:26 2020] BUG: KCSAN: data-race in<br>
tick_nohz_next_event / tick_nohz_stop_tick<br>
<br>
Full dmesg output and linux-config attached.<br>
<br>
- Sedat -<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CA%2BicZUVogqZzSP9Kemgfe7CQ31Exn8vzzfUccJ-mCXQ=
yUGBeMw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CA%2BicZUVogqZzSP9Kemgfe7CQ31Exn8=
vzzfUccJ-mCXQyUGBeMw%40mail.gmail.com</a>.<br />

--00000000000053cdf505a6af5a0e--
