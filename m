Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJO3VCAAMGQEUH32XZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id B265C2FFA0E
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 02:43:02 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id m21sf2667734qtp.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:43:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611279781; cv=pass;
        d=google.com; s=arc-20160816;
        b=cF07jYNxYjKfmQ8yv980lqnNf7mwEEdX4x8LvgnctT5tRZhbUNTbngKDOafQ8IZXW5
         86dkeZ73tx7qxdlQ0LShOTrnT280bi5BnUkbeg6GUVIR0u0agXP1GxD0i4h/2thXeT81
         bwXKTUAIkTfzGkyiqjaKJhIaOZeu+/qDsCb6pXRT+bRjpvfNSaPlzTtalF1XczNEYs91
         ImwK9kRDTLEmhpOGrC3NrPHR0SdBT9TvXsb+bZfu4a9SGv3d7M/A4mJf2UomeMMRweTN
         DtIpHGYm6g9mR+J2ZgFLCLhZJ4OwPaYMjHdSLMBr6SIUs43Dz3sfISn8V1SgBH1YWXjr
         Q1RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PSIWojkwTmzj5l0bcrPzdUXLo9I7YJq53VXvM4Lei2s=;
        b=HbwtMadocqb0g1fiwTxL3dHmZ35Gef8nLgIkak9SMtKiL1cKmbJM3QBBhcGhL9witN
         SFCNUOLJ9itRKyR67onWmJWFABFCrvItO6+LebKX1qL3LLU5X20cc2R6d6NHM+ddnXmV
         mwmFHyfduX5llKKWDuRSRBbLskonesyuNRq1aqDuCsNI+VpneiTZuDyWKhG//WyyiHd4
         9x5LsJR5D/2RRHQ/w5eaabs54ji7LUTa9X4S2moTvcSEK+js1jOFhY+lQitVOAcRd72Q
         tizyN1+zjhF1gCBAxirqg97k4sMQaB184NreQ3HuEUj+voDws0uiFUI9KGVGzipW+7L2
         H5Yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Cn+/rff9";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PSIWojkwTmzj5l0bcrPzdUXLo9I7YJq53VXvM4Lei2s=;
        b=FfgfKXWIIPp3CZmEHOvUbZS55DZOjGTMciEV07+SXiyqLdaA+Jy/yyqGC+ReiHK2BQ
         vS/Ue90e0USMK6pi5mRRRwr9/If7mSPbYMJd92boxU9ZIANXGIzG7K/KaSAoMyrbvOb8
         wawXDO7djaM1JndEuKETRngJKge5+IQs5xuSUlPBHH2OyAeeJIAjuBe9bICtW6CA1inl
         eWB6CG+gCXCXIdYcG/lr+CfEsyMwqIZVUZgeOOLHROCEzJgd94165xxcavfdPoPlOiIg
         mPMB1iqJwP4EstmGhIa7xYcy5o17PWCuZ5qap1kD8AbqptSmVc7t6mzbKzZ7v+If1kI0
         jr/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PSIWojkwTmzj5l0bcrPzdUXLo9I7YJq53VXvM4Lei2s=;
        b=tYqipuLbtJ3T15twDOEykv8uHT104Y09/F7BlKv0mFmVYnHLDs8fgFMDLIiDIznDAD
         bptsIyRRFMc6UKq6EKMVKF716yH8qUJlyPHuWC9am+kLbgYUZ5cmFVvgNCAjN2GdpO4p
         RCMTz7QJh9LypIbTg/5q+uto6cD/71cDnaEHelAGF8pAZ9EiL+UdPQaHb7yPHjMGpajb
         P7uQQfZ4yT76+FzSvlmFu6JCb10Qbh4s27ystGIBqb//11hkc+RafqWSmlJm0iD/xGFU
         nWqv2s6l3FHU//FqIZnGqEspyNdpvvBNhP/fjOxS6zRQvqBUxt8UZcwT2mqiPaGzFcZn
         iMPw==
X-Gm-Message-State: AOAM533I0TuAixWuoXvnxD7CKNG5JHb9hDXp73alVJkw2jJn9gJ3b+A5
	dK4jT86Rq9YoOfcm1ykIizs=
X-Google-Smtp-Source: ABdhPJyHpSK5lOjjNzph95LTnkyRdKtJt5KSpnFAR+Ak73B1mn6v/mYSq/s6x0K3hrcztoD433n5vQ==
X-Received: by 2002:ad4:4f4a:: with SMTP id eu10mr2543861qvb.17.1611279781869;
        Thu, 21 Jan 2021 17:43:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:702:: with SMTP id 2ls2067941qkc.11.gmail; Thu, 21
 Jan 2021 17:43:01 -0800 (PST)
X-Received: by 2002:a05:620a:1203:: with SMTP id u3mr2739784qkj.39.1611279781564;
        Thu, 21 Jan 2021 17:43:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611279781; cv=none;
        d=google.com; s=arc-20160816;
        b=difu7eiXNCK0dkqa9VHMrxagXKo5XEqQphpQo2u24OqRP+mO8J5eeyKgP7aR/ussqV
         NEl4e8GXiOpMT65OvmZlhIp1Vb+bYCs8UdXZkcmlMNSgCtI1UoXpzXWLVFcZihefLcQc
         XQ4kNPVh136JXf02w7ca9ZbBl4RWzCeKJbzpi61Dg/HMxT4yTSFunbg+welbNaoTW+Si
         ptj33F9jvCziygfVibr+lKPoEFF9x9G/1Cy5dLR5ZuFOB+bFzo0tDV0YNjTqvxpeaCHT
         sqgq8pYMMc8/w4CyBv9XYrxungeM2Xcx4GuKjtvmknku/5jfjrhWt4xUnUeyfZxjDE8U
         +ROg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JHmsyWW/3ORqzCCxIgYU3HZ6BJYN5rvOhQgY5Vhnihs=;
        b=KSxYF6o9kjdK3WGx5jkCbNnatsAoZiU/ini8oKKkE1HGDvTEBe9Yiehgj5tSoQTSMy
         jhliep9PVhomVbuPstkP/MRwJtM2l1L673ErDlOM+J6bT+R/J+kAX87tKL/oTRplcDBJ
         snPs55sxceFEj9/TfHnRltIbPEqGPWAkxv9oRI2fbEHa5016/nIfBiHwuNR3rTP/zKNd
         fY8OxemRuhy5lkdMJOa4PIYDxxNQlvVFz4IFz0EadSu05gifc7857aaF8chDOkcEk26C
         b4b+a+YdSnLOT9+9P/xJQbKuR/iCBAHBkfxFOoM02nwc54lwnKcrEdMLNEv630jto3dX
         NKcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Cn+/rff9";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id q66si365430qkd.3.2021.01.21.17.43.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 17:43:01 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id g15so2588871pgu.9
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 17:43:01 -0800 (PST)
X-Received: by 2002:a62:7896:0:b029:1b6:7319:52a7 with SMTP id
 t144-20020a6278960000b02901b6731952a7mr2450111pfc.30.1611279780913; Thu, 21
 Jan 2021 17:43:00 -0800 (PST)
MIME-Version: 1.0
References: <20210113061958.886723-1-morbo@google.com> <20210116094357.3620352-1-morbo@google.com>
 <CA+icZUUgTuD6fO_AZFs9KoRFS8FUmyhezvYeeoRX2dveG_ifDA@mail.gmail.com>
 <CAGG=3QXZTR_f9pKzAR=LrALmMzdDqsvWM_zrTXOb2PpiDGB-+A@mail.gmail.com>
 <CA+icZUWf05ek+DFsJNyBc-4cg0s6cVrn=rNJDyL4RJ6=fMO5NA@mail.gmail.com>
 <CA+icZUVD1AHaXYu4Ne8JhzmtMR5DReL4C=ZxKfA0hjLtbC79qQ@mail.gmail.com>
 <CA+icZUUTJbwmTYCDJhyRtif3BdsB_yzQ3bSdLR62EmttJf3Row@mail.gmail.com>
 <CA+icZUUfWR1v3GStn6t_6MYDmwTdJ_zDwBTe2jmQRg7aOA1Q2A@mail.gmail.com>
 <CA+icZUU-3i7Of71C6XaNmee7xD4y_DeoWJFvUHnMUyBaMN3Ywg@mail.gmail.com>
 <CA+icZUXmn15w=kSq2CZzQD5JggJw_9AEam=Sz13M0KpJ68MWZg@mail.gmail.com>
 <CA+icZUWUPCuLWCo=kuPr9YZ4-NZ3F8Fv1GzDXPbDevyWjaMrJg@mail.gmail.com>
 <CAGG=3QW+ayBzCxOusLyQ0-y5K5C_3hNXjara_pYOcxK8MseN9g@mail.gmail.com>
 <CA+icZUU1HihUFaEHzF69+01+Picg8aq6HAqHupxiRqyDGJ=Mpw@mail.gmail.com>
 <CA+icZUUuzA5JEXyVzKbVX+T3xeOdRAU6-mntbo+VwwTxqmN7LA@mail.gmail.com>
 <CAGG=3QWmOA+yM2GJF+cHUb7wUq6yiBpHasa-ry9OhAdvciDm6Q@mail.gmail.com>
 <CA+icZUVwbWDtGUzMEkitxYn2UvbZPnFTxfJyDOY46j6BTK0deQ@mail.gmail.com>
 <CA+icZUXa9wvSWe=21_gjAapoHpbgBmYzFpQjb=o_WRQgK+O4gA@mail.gmail.com>
 <CAGG=3QUcaY1wzJhBD4ZGhPSNPik-kL0PuoE1SJqkFJEM_mkGYA@mail.gmail.com> <CA+icZUU+OWW46CVq4Co-y7hckGjoV5bbqxS-G+HDqUDci_AzHw@mail.gmail.com>
In-Reply-To: <CA+icZUU+OWW46CVq4Co-y7hckGjoV5bbqxS-G+HDqUDci_AzHw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 Jan 2021 17:42:49 -0800
Message-ID: <CAKwvOdkOOjDo+zFFz_T63FphZn2Lg7MW8vd7qd-yS_eB_yYdmA@mail.gmail.com>
Subject: Re: [PATCH v5] pgo: add clang's Profile Guided Optimization infrastructure
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Bill Wendling <morbo@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Cn+/rff9";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::536
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

On Wed, Jan 20, 2021 at 6:03 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Mon, Jan 18, 2021 at 10:56 PM Bill Wendling <morbo@google.com> wrote:
> >
> > On Mon, Jan 18, 2021 at 9:26 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Mon, Jan 18, 2021 at 1:39 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > >
> > > > On Mon, Jan 18, 2021 at 3:32 AM Bill Wendling <morbo@google.com> wrote:
> > > > >
> > > > > On Sun, Jan 17, 2021 at 4:27 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > >
> > > > > > [ big snip ]
> > > > >
> > > > > [More snippage.]
> > > > >
> > > > > > [ CC Fangrui ]
> > > > > >
> > > > > > With the attached...
> > > > > >
> > > > > >    [PATCH v3] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
> > > > > > undefined symbols
> > > > > >
> > > > > > ...I was finally able to boot into a rebuild PGO-optimized Linux-kernel.
> > > > > > For details see ClangBuiltLinux issue #1250 "Unknown symbol
> > > > > > _GLOBAL_OFFSET_TABLE_ loading kernel modules".
> > > > > >
> > > > > Thanks for confirming that this works with the above patch.
> > > > >
> > > > > > @ Bill Nick Sami Nathan
> > > > > >
> > > > > > 1, Can you say something of the impact passing "LLVM_IAS=1" to make?
> > > > >
> > > > > The integrated assembler and this option are more-or-less orthogonal
> > > > > to each other. One can still use the GNU assembler with PGO. If you're
> > > > > having an issue, it may be related to ClangBuiltLinux issue #1250.
> > > > >
> > > > > > 2. Can you please try Nick's DWARF v5 support patchset v5 and
> > > > > > CONFIG_DEBUG_INFO_DWARF5=y (see attachments)?
> > > > > >
> > > > > I know Nick did several tests with PGO. He may have looked into it
> > > > > already, but we can check.
> > > > >
> > > >
> > > > Reproducible.
> > > >
> > > > LLVM_IAS=1 + DWARF5 = Not bootable
> > > >
> > > > I will try:
> > > >
> > > > LLVM_IAS=1 + DWARF4
> > > >
> > >
> > > I was not able to boot into such a built Linux-kernel.
> > >
> > PGO will have no effect on debugging data. If this is an issue with
> > DWARF, then it's likely orthogonal to the PGO patch.
> >
> > > For me worked: DWARF2 and LLVM_IAS=1 *not* set.
> > >
> > > Of course, this could be an issue with my system's LLVM/Clang.
> > >
> > > Debian clang version
> > > 12.0.0-++20210115111113+45ef053bd709-1~exp1~20210115101809.3724
> > >
> > Please use the official clang 11.0.1 release
> > (https://releases.llvm.org/download.html), modifying the
> > kernel/pgo/Kconfig as I suggested above. The reason we specify clang
> > 12 for the minimal version is because of an issue that was recently
> > fixed.
> >
>
> I downgraded to clang-11.1.0-rc1.
> ( See attachment. )
>
> Doing the first build with PGO enabled plus DWARF5 and LLVM_IAS=1 works.
>
> But again after generating vmlinux.profdata and doing the PGO-rebuild
> - the resulting Linux-kernel does NOT boot in QEMU or on bare metal.
> With GNU/as I can boot.
>
> So this is independent of DWARF v4 or DWARF v5 (LLVM_IAS=1 and DWARF
> v2 is not allowed).
> There is something wrong (here) with passing LLVM_IAS=1 to make when
> doing the PGO-rebuild.
>
> Can someone please verify and confirm that the PGO-rebuild with
> LLVM_IAS=1 boots or boots not?

I was able to build+boot with LLVM_IAS=1 on my personal laptop (no
dwarf 5, just mainline+v5).

>
> Thanks.
>
> - Sedat -
>
> > > Can you give me a LLVM commit-id where you had success with LLVM_IAS=1
> > > and especially CONFIG_DEBUG_INFO_DWARF5=y?
> > > Success means I was able to boot in QEMU and/or bare metal.
> > >
> > The DWARF5 patch isn't in yet, so I don't want to rely upon it too much.

I agree, providing test results with patches that haven't landed yet
can cloud the interpretation of results.  It would be helpful to drop
local patch sets before trying this.

If the resulting image still isn't working for you, can you please
provide your config? Surely we'd be able to reproduce boot failures in
QEMU?  Nothing comes to mind about a change of assemblers causing an
issue; I would assume assembly cannot be instrumented by the compiler
(even though the compiler is the "driver" of the assembler).

The hash warnings are certainly curious.
IndexedInstrProfReader::getInstrProfRecord() is the only place in LLVM
sources that can emit that.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkOOjDo%2BzFFz_T63FphZn2Lg7MW8vd7qd-yS_eB_yYdmA%40mail.gmail.com.
