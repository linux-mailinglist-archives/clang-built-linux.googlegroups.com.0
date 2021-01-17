Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBN6FSCAAMGQELH5EZIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A83F2F920D
	for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 12:42:48 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id v15sf9798072otp.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 Jan 2021 03:42:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610883767; cv=pass;
        d=google.com; s=arc-20160816;
        b=D2FvXNcHWC5zPfYU3VyhwK/DSlDYX5jR9hsU+xHxe4G/qrY0wGWW0txwntam2CY5IJ
         T9Ouq+NfEtolf5jCwQY/frNTXPB9uqdbvDc45mdv/JteX3c94lmrVCk5Fr5KYeoBuq0u
         qcMooELbmzrl/YxE/McKk2sj7kNXWxZMkANUh722g8b+O0/cn5iMEiUIN/cqfQbaqzWv
         xw18ZLWNb3FXL2nM/XfPxdlSjCEM0gn+ftroZOus0HbGtnhAXVIqvlUDQXYWZD8KIV17
         K3nD/fpCmI02G1wohFNJkffYAi3vGnlncdil+OBQkvoZNylTjG1mP+7cqeGSJBJh0ruB
         b9Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=XSD2cuyu24kZhmwvhzWqHAuaW8p4BmPfU2n+s4n3v28=;
        b=PsOXFF2Jo/uH687YBf4xBtcz6/QFlsbKoVu0WUs9qVV5Jb2AuaMD1BHufPrmpX0cmK
         +spq3WC/OSt4FxMmaoQWsdG0ZITk61xybESG9LuB7tixIZWbAy3aNw1QCx+x3EsSmjJ1
         AWOEV2bxG2qLn0wUPqnNY+X6QXMIisT0aVaoh3+YKx6XJJ0YvvMmIn0LQgT1Govba7tm
         asc7BaHqdDvbEoCdvXP9wOa+ZunT5Jwpuj9f4tVpAJbT4Npt3n9LJVcBlRy89+1JuZOL
         wWPl5ZBsEtatbj4Q6n7e4a9FaJpVcrobyxtutgp2L+zWVhF2+80OTGpQ403HbKMVobL5
         viVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jt5gNmWk;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XSD2cuyu24kZhmwvhzWqHAuaW8p4BmPfU2n+s4n3v28=;
        b=LHa/YSp1icx6zHAQFnf1yIjeFiuam05E1F0cFJADcdSlXgsRliCvqHQunz3QaT5LRI
         9oDG8yEIjRA4U/7qopD/oGSiZNlfhyVpeWK9kTrp+LZ/jyUJjU0Ge51MdsFCffgxBEQG
         ZIBSFapWT3hB7Pfu3rgJ7l+zdWQEp64W8qvWlmORkXPCmCO8EGnCgZs2sRagnF8+4bCu
         A/sk0JSPaB7i2lGGVheTN0hnCmfHJjFws/uiFwVlSvc8siblTTsusY9BI8HzUyfEg/mX
         LADEFlqXGpXxJivZjmbZoPTApaQi40Wcki3fGpc3emmduNqBEUnwOhIUGaew/XJZPiEX
         1X+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XSD2cuyu24kZhmwvhzWqHAuaW8p4BmPfU2n+s4n3v28=;
        b=NxzRrQgVzRJ6TwqH094PA1dT1uXBYdh1MabAVdOzTmh3AG1VURX0pskT3pXEaZnLVZ
         lGaxGJRS0Q8ndc6dI/XeeXso5JizYkGep/xAKH9gTLK25knOhkggPedN6YLcIoVVE0T6
         CZrmqNqlcIQxLzdP8r27Lcf5JgApbeSC4ByvbRKWjB1YjxKGdvB1OFwC0gY6mkPpqOEn
         6rMArh6FukDUdp1cs9FL7fFrHC6xFwgtyQBLhj88i3f9ypvehSgwzZy/aPhYfpwpRcTy
         AcPn3Vf5t9rj72TyqB+rj3+V87SS5PJIVVYhewMDyVozlMtZPXt2ghiP81LN3fTTK+Zu
         IJ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XSD2cuyu24kZhmwvhzWqHAuaW8p4BmPfU2n+s4n3v28=;
        b=to786JvHb+D091a/vAmUYLakHYg4N/5k8mVNGdLe63EA9ughgFwxLl5XGNh9/xGUH1
         BYwDLNudLm9owUW0Irp+L3xQvfQiF0epfUXPge7X2upiM2JH0tBiZvOvZQtKWYbJy4ip
         pnIlY4sUhE66MLor8htiJjZ0T02tNj0m1+MfgLmZvkXQ9jOYkY3qJNpSBKKSj4ZfuiAH
         iZGTIhjbXNRTdFwsQNvn+yKUCmv8WgmXtbWmydeCmdbAnNhZJ9x3LyOhdoxy0FqEpvUz
         6GWX3MkTYUJy555xhHgzAd/dh9AKZ1CowE4eH6hBMRG1UrCeWsQIFZ825HRcBDNZkmgF
         z6nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Y/lLpAT++tlJN2IRlYTDiKA/r8F0OpviOFtAnUKBLxuk6SkCm
	ofcRz89nE31qaV/V35m68u4=
X-Google-Smtp-Source: ABdhPJwHSd9c5bC0WwByjziH3g04Qc2pF7dLLiJsjLDibtytVOkEd7NFHaUE0UeVgnzyBjAkJBriVA==
X-Received: by 2002:aca:3306:: with SMTP id z6mr10015846oiz.141.1610883767248;
        Sun, 17 Jan 2021 03:42:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1592:: with SMTP id i18ls7350otr.10.gmail; Sun, 17
 Jan 2021 03:42:46 -0800 (PST)
X-Received: by 2002:a05:6830:1458:: with SMTP id w24mr14592690otp.66.1610883766839;
        Sun, 17 Jan 2021 03:42:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610883766; cv=none;
        d=google.com; s=arc-20160816;
        b=gDlgbT3DtFgcbL6TZxhYM31q7810Di403FodXY2Kk/PD1HZhCZMfrS1ZWwcntoDt6m
         MP2Q+an+nURjbDDAnuldX8Q4i6MEfyTaRwy21bEn1VPfC6e2G9SPREp+qxH6Rr+o02Ni
         eEw1fdgcBibw8hjUDfTr324meQnsaP+zKwxcyNs3L7FAhyjAoRvqMi7dRdDEoueOy671
         +Gw1QnkS+HOq+y/tyIXi8wUcpskjqOnv2N1O4x0YUH4jf5k2RqMGjY1KfxKVrvhsQUma
         VJXJGkz2o/CNBy4FvJmImhcRrlCas6+NvAEC6e9Qa/XV5ymbSbrxy/V+EIZ4PuAp2Cqa
         M3oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BGSEA4nZitEnjpU6ISg42bczIfqjgSdQ7Lg2J6dbXzU=;
        b=a19GqCssEkvzcbB7dHF1u8gy92jdxVuqja2aWQj0NCPQ4HuKBM1I4OzdBSMlG7Oz7B
         +LfBJ/Qlu3uo5weBPhWAW7G4V6ah9hWtru2XtwahqqBPebJ02BY/CSw6BiglAUi//ZH2
         Iq03BHjw8s3itytxP+MY1AGxMKmjyrWbc9MIgOUlukBAEMTISRf9CNX7SheT5VA9nzgv
         AUijIa8HsGovhV04+OSE7oFzN8CgT4voiytZT/WcesQqlkVZo4LYLfNKJIoia4TdoW5t
         1yBH3MEYITRjWIdoJqxeVpL2TdcK2wyrTKBUqTlFITxWXPHMvHso8VGXn8n1mi6XPSwh
         ElEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jt5gNmWk;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com. [2607:f8b0:4864:20::d2e])
        by gmr-mx.google.com with ESMTPS id w26si1167810oih.1.2021.01.17.03.42.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Jan 2021 03:42:46 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e as permitted sender) client-ip=2607:f8b0:4864:20::d2e;
Received: by mail-io1-xd2e.google.com with SMTP id u17so27414429iow.1
        for <clang-built-linux@googlegroups.com>; Sun, 17 Jan 2021 03:42:46 -0800 (PST)
X-Received: by 2002:a92:84c9:: with SMTP id y70mr38973ilk.209.1610883766433;
 Sun, 17 Jan 2021 03:42:46 -0800 (PST)
MIME-Version: 1.0
References: <20210113061958.886723-1-morbo@google.com> <20210116094357.3620352-1-morbo@google.com>
 <CA+icZUUgTuD6fO_AZFs9KoRFS8FUmyhezvYeeoRX2dveG_ifDA@mail.gmail.com>
 <CAGG=3QXZTR_f9pKzAR=LrALmMzdDqsvWM_zrTXOb2PpiDGB-+A@mail.gmail.com>
 <CA+icZUWf05ek+DFsJNyBc-4cg0s6cVrn=rNJDyL4RJ6=fMO5NA@mail.gmail.com>
 <CA+icZUVD1AHaXYu4Ne8JhzmtMR5DReL4C=ZxKfA0hjLtbC79qQ@mail.gmail.com> <CA+icZUUTJbwmTYCDJhyRtif3BdsB_yzQ3bSdLR62EmttJf3Row@mail.gmail.com>
In-Reply-To: <CA+icZUUTJbwmTYCDJhyRtif3BdsB_yzQ3bSdLR62EmttJf3Row@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 17 Jan 2021 12:42:35 +0100
Message-ID: <CA+icZUUfWR1v3GStn6t_6MYDmwTdJ_zDwBTe2jmQRg7aOA1Q2A@mail.gmail.com>
Subject: Re: [PATCH v5] pgo: add clang's Profile Guided Optimization infrastructure
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jt5gNmWk;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2e
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

On Sun, Jan 17, 2021 at 12:23 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Sun, Jan 17, 2021 at 11:53 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Sun, Jan 17, 2021 at 11:44 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > >
> > > On Sat, Jan 16, 2021 at 9:23 PM Bill Wendling <morbo@google.com> wrote:
> > > >
> > > > On Sat, Jan 16, 2021 at 9:39 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > > > On Sat, Jan 16, 2021 at 10:44 AM 'Bill Wendling' via Clang Built Linux
> > > > > <clang-built-linux@googlegroups.com> wrote:
> > > > > >
> > > > > > From: Sami Tolvanen <samitolvanen@google.com>
> > > > > >
> > > > > > Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> > > > > > profile, the kernel is instrumented with PGO counters, a representative
> > > > > > workload is run, and the raw profile data is collected from
> > > > > > /sys/kernel/debug/pgo/profraw.
> > > > > >
> > > > > > The raw profile data must be processed by clang's "llvm-profdata" tool
> > > > > > before it can be used during recompilation:
> > > > > >
> > > > > >   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
> > > > > >   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > > > > >
> > > > > > Multiple raw profiles may be merged during this step.
> > > > > >
> > > > > > The data can now be used by the compiler:
> > > > > >
> > > > > >   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> > > > > >
> > > > > > This initial submission is restricted to x86, as that's the platform we
> > > > > > know works. This restriction can be lifted once other platforms have
> > > > > > been verified to work with PGO.
> > > > > >
> > > > > > Note that this method of profiling the kernel is clang-native, unlike
> > > > > > the clang support in kernel/gcov.
> > > > > >
> > > > > > [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> > > > > >
> > > > > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > > > > > Co-developed-by: Bill Wendling <morbo@google.com>
> > > > > > Signed-off-by: Bill Wendling <morbo@google.com>
> > > > > > ---
> > > > > > v2: - Added "__llvm_profile_instrument_memop" based on Nathan Chancellor's
> > > > > >       testing.
> > > > > >     - Corrected documentation, re PGO flags when using LTO, based on Fangrui
> > > > > >       Song's comments.
> > > > > > v3: - Added change log section based on Sedat Dilek's comments.
> > > > > > v4: - Remove non-x86 Makfile changes and se "hweight64" instead of using our
> > > > > >       own popcount implementation, based on Nick Desaulniers's comment.
> > > > > > v5: - Correct padding calculation, discovered by Nathan Chancellor.
> > > > > > ---
> > > > > >  Documentation/dev-tools/index.rst     |   1 +
> > > > > >  Documentation/dev-tools/pgo.rst       | 127 +++++++++
> > > > > >  MAINTAINERS                           |   9 +
> > > > > >  Makefile                              |   3 +
> > > > > >  arch/Kconfig                          |   1 +
> > > > > >  arch/x86/Kconfig                      |   1 +
> > > > > >  arch/x86/boot/Makefile                |   1 +
> > > > > >  arch/x86/boot/compressed/Makefile     |   1 +
> > > > > >  arch/x86/crypto/Makefile              |   2 +
> > > > > >  arch/x86/entry/vdso/Makefile          |   1 +
> > > > > >  arch/x86/kernel/vmlinux.lds.S         |   2 +
> > > > > >  arch/x86/platform/efi/Makefile        |   1 +
> > > > > >  arch/x86/purgatory/Makefile           |   1 +
> > > > > >  arch/x86/realmode/rm/Makefile         |   1 +
> > > > > >  arch/x86/um/vdso/Makefile             |   1 +
> > > > > >  drivers/firmware/efi/libstub/Makefile |   1 +
> > > > > >  include/asm-generic/vmlinux.lds.h     |  44 +++
> > > > > >  kernel/Makefile                       |   1 +
> > > > > >  kernel/pgo/Kconfig                    |  35 +++
> > > > > >  kernel/pgo/Makefile                   |   5 +
> > > > > >  kernel/pgo/fs.c                       | 382 ++++++++++++++++++++++++++
> > > > > >  kernel/pgo/instrument.c               | 185 +++++++++++++
> > > > > >  kernel/pgo/pgo.h                      | 206 ++++++++++++++
> > > > > >  scripts/Makefile.lib                  |  10 +
> > > > > >  24 files changed, 1022 insertions(+)
> > > > > >  create mode 100644 Documentation/dev-tools/pgo.rst
> > > > > >  create mode 100644 kernel/pgo/Kconfig
> > > > > >  create mode 100644 kernel/pgo/Makefile
> > > > > >  create mode 100644 kernel/pgo/fs.c
> > > > > >  create mode 100644 kernel/pgo/instrument.c
> > > > > >  create mode 100644 kernel/pgo/pgo.h
> > > > > >
> > > > > > diff --git a/Documentation/dev-tools/index.rst b/Documentation/dev-tools/index.rst
> > > > > > index f7809c7b1ba9e..8d6418e858062 100644
> > > > > > --- a/Documentation/dev-tools/index.rst
> > > > > > +++ b/Documentation/dev-tools/index.rst
> > > > > > @@ -26,6 +26,7 @@ whole; patches welcome!
> > > > > >     kgdb
> > > > > >     kselftest
> > > > > >     kunit/index
> > > > > > +   pgo
> > > > > >
> > > > > >
> > > > > >  .. only::  subproject and html
> > > > > > diff --git a/Documentation/dev-tools/pgo.rst b/Documentation/dev-tools/pgo.rst
> > > > > > new file mode 100644
> > > > > > index 0000000000000..b7f11d8405b73
> > > > > > --- /dev/null
> > > > > > +++ b/Documentation/dev-tools/pgo.rst
> > > > > > @@ -0,0 +1,127 @@
> > > > > > +.. SPDX-License-Identifier: GPL-2.0
> > > > > > +
> > > > > > +===============================
> > > > > > +Using PGO with the Linux kernel
> > > > > > +===============================
> > > > > > +
> > > > > > +Clang's profiling kernel support (PGO_) enables profiling of the Linux kernel
> > > > > > +when building with Clang. The profiling data is exported via the ``pgo``
> > > > > > +debugfs directory.
> > > > > > +
> > > > > > +.. _PGO: https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
> > > > > > +
> > > > > > +
> > > > > > +Preparation
> > > > > > +===========
> > > > > > +
> > > > > > +Configure the kernel with:
> > > > > > +
> > > > > > +.. code-block:: make
> > > > > > +
> > > > > > +   CONFIG_DEBUG_FS=y
> > > > > > +   CONFIG_PGO_CLANG=y
> > > > > > +
> > > > > > +Note that kernels compiled with profiling flags will be significantly larger
> > > > > > +and run slower.
> > > > > > +
> > > > > > +Profiling data will only become accessible once debugfs has been mounted:
> > > > > > +
> > > > > > +.. code-block:: sh
> > > > > > +
> > > > > > +   mount -t debugfs none /sys/kernel/debug
> > > > > > +
> > > > > > +
> > > > > > +Customization
> > > > > > +=============
> > > > > > +
> > > > > > +You can enable or disable profiling for individual file and directories by
> > > > > > +adding a line similar to the following to the respective kernel Makefile:
> > > > > > +
> > > > > > +- For a single file (e.g. main.o)
> > > > > > +
> > > > > > +  .. code-block:: make
> > > > > > +
> > > > > > +     PGO_PROFILE_main.o := y
> > > > > > +
> > > > > > +- For all files in one directory
> > > > > > +
> > > > > > +  .. code-block:: make
> > > > > > +
> > > > > > +     PGO_PROFILE := y
> > > > > > +
> > > > > > +To exclude files from being profiled use
> > > > > > +
> > > > > > +  .. code-block:: make
> > > > > > +
> > > > > > +     PGO_PROFILE_main.o := n
> > > > > > +
> > > > > > +and
> > > > > > +
> > > > > > +  .. code-block:: make
> > > > > > +
> > > > > > +     PGO_PROFILE := n
> > > > > > +
> > > > > > +Only files which are linked to the main kernel image or are compiled as kernel
> > > > > > +modules are supported by this mechanism.
> > > > > > +
> > > > > > +
> > > > > > +Files
> > > > > > +=====
> > > > > > +
> > > > > > +The PGO kernel support creates the following files in debugfs:
> > > > > > +
> > > > > > +``/sys/kernel/debug/pgo``
> > > > > > +       Parent directory for all PGO-related files.
> > > > > > +
> > > > > > +``/sys/kernel/debug/pgo/reset``
> > > > > > +       Global reset file: resets all coverage data to zero when written to.
> > > > > > +
> > > > > > +``/sys/kernel/debug/profraw``
> > > > > > +       The raw PGO data that must be processed with ``llvm_profdata``.
> > > > > > +
> > > > > > +
> > > > > > +Workflow
> > > > > > +========
> > > > > > +
> > > > > > +The PGO kernel can be run on the host or test machines. The data though should
> > > > > > +be analyzed with Clang's tools from the same Clang version as the kernel was
> > > > > > +compiled. Clang's tolerant of version skew, but it's easier to use the same
> > > > > > +Clang version.
> > > > > > +
> > > > > > +The profiling data is useful for optimizing the kernel, analyzing coverage,
> > > > > > +etc. Clang offers tools to perform these tasks.
> > > > > > +
> > > > > > +Here is an example workflow for profiling an instrumented kernel with PGO and
> > > > > > +using the result to optimize the kernel:
> > > > > > +
> > > > > > +1) Install the kernel on the TEST machine.
> > > > > > +
> > > > > > +2) Reset the data counters right before running the load tests
> > > > > > +
> > > > > > +   .. code-block:: sh
> > > > > > +
> > > > > > +      $ echo 1 > /sys/kernel/debug/pgo/reset
> > > > > > +
> > > > >
> > > > > I do not get this...
> > > > >
> > > > > # mount | grep debugfs
> > > > > debugfs on /sys/kernel/debug type debugfs (rw,nosuid,nodev,noexec,relatime)
> > > > >
> > > > > After the load-test...?
> > > > >
> > > > > echo 0 > /sys/kernel/debug/pgo/reset
> > > > >
> > > > Writing anything to /sys/kernel/debug/pgo/reset will cause it to reset
> > > > the profiling counters. I picked 1 (one) semi-randomly, but it could
> > > > be any number, letter, your favorite short story, etc. You don't want
> > > > to reset it before collecting the profiling data from your load tests
> > > > though.
> > > >
> > > > > > +3) Run the load tests.
> > > > > > +
> > > > > > +4) Collect the raw profile data
> > > > > > +
> > > > > > +   .. code-block:: sh
> > > > > > +
> > > > > > +      $ cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
> > > > > > +
> > > > >
> > > > > This is only 4,9M small and seen from the date 5mins before I run the
> > > > > echo-1 line.
> > > > >
> > > > > # ll /sys/kernel/debug/pgo
> > > > > insgesamt 0
> > > > > drwxr-xr-x  2 root root 0 16. Jan 17:29 .
> > > > > drwx------ 41 root root 0 16. Jan 17:29 ..
> > > > > -rw-------  1 root root 0 16. Jan 17:29 profraw
> > > > > --w-------  1 root root 0 16. Jan 18:19 reset
> > > > >
> > > > > # cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
> > > > >
> > > > > # ll /tmp/vmlinux.profraw
> > > > > -rw------- 1 root root 4,9M 16. Jan 17:29 /tmp/vmlinux.profraw
> > > > >
> > > > > For me there was no prof-data collected from my defconfig kernel-build.
> > > > >
> > > > The /sys/kernel/debug/pgo/profraw file is read-only. Nothing writes to
> > > > it, not even the kernel. All it does is serialize the profiling
> > > > counters from a memory location in the kernel into a format that
> > > > LLVM's tools can understand.
> > > >
> > > > > > +5) (Optional) Download the raw profile data to the HOST machine.
> > > > > > +
> > > > > > +6) Process the raw profile data
> > > > > > +
> > > > > > +   .. code-block:: sh
> > > > > > +
> > > > > > +      $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
> > > > > > +
> > > > >
> > > > > Is that executed in /path/to/linux/git?
> > > > >
> > > > The llvm-profdata tool is not in the linux source tree. You need to
> > > > grab it from a clang distribution (or built from clang's git repo).
> > > >
> > > > > > +   Note that multiple raw profile data files can be merged during this step.
> > > > > > +
> > > > > > +7) Rebuild the kernel using the profile data (PGO disabled)
> > > > > > +
> > > > > > +   .. code-block:: sh
> > > > > > +
> > > > > > +      $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
> > > > >
> > > > > How big is vmlinux.profdata (make defconfig)?
> > > > >
> > > > I don't have numbers for this, but from what you listed here, it's ~5M
> > > > in size. The size is proportional to the number of counters
> > > > instrumented in the kernel.
> > > >
> > > > > Do I need to do a full defconfig build or can I stop the build after
> > > > > let me say 10mins?
> > > > >
> > > > You should do a full rebuild. Make sure that PGO is disabled during the rebuild.
> > > >
> > >
> > > Thanks Bill for all the information.
> > >
> > > And sorry if I am so pedantic.
> > >
> > > I have installed my Debian system with Legacy-BIOS enabled.
> > >
> > > When I rebuild with KCFLAGS=-fprofile-use=vmlinux.profdata (LLVM=1 I
> > > have as a default) my system hangs on reboot.
> > >
> > > [ diffconfig ]
> > > $ scripts/diffconfig /boot/config-5.11.0-rc3-8-amd64-clang12-pgo
> > > /boot/config-5.11.0-rc3-9-amd64-clang12-pgo
> > > BUILD_SALT "5.11.0-rc3-8-amd64-clang12-pgo" -> "5.11.0-rc3-9-amd64-clang12-pgo"
> > > PGO_CLANG y -> n
> > >
> > > [ my make line ]
> > > $ cat ../start-build_5.11.0-rc3-9-amd64-clang12-pgo.txt
> > > dileks     63120   63095  0 06:47 pts/2    00:00:00 /usr/bin/perf_5.10
> > > stat make V=1 -j4 HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld CC=clang
> > > LD=ld.lld LLVM=1 LLVM_IAS=1 PAHOLE=/opt/pahole/bin/pahole
> > > LOCALVERSION=-9-amd64-clang12-pgo KBUILD_VERBOSE=1
> > > KBUILD_BUILD_HOST=iniza KBUILD_BUILD_USER=sedat.dilek@gmail.com
> > > KBUILD_BUILD_TIMESTAMP=2021-01-17 bindeb-pkg
> > > KDEB_PKGVERSION=5.11.0~rc3-9~bullseye+dileks1
> > > KCFLAGS=-fprofile-use=vmlinux.profdata
> > >
> > > ( Yes, 06:47 a.m. in the morning :-). )
> > >
> > > When I boot with the rebuild Linux-kernel I see:
> > >
> > > Wrong EFI loader signature
> > > ...
> > > Decompressing
> > > Parsing EFI
> > > Performing Relocations done.
> > > Booting the Kernel.
> > >
> > > *** SYSTEM HANGS ***
> > > ( I waited for approx 1 min )
> > >
> > > I tried to turn UEFI support ON and OFF.
> > > No success.
> > >
> > > Does Clang-PGO support Legacy-BIOS or is something different wrong?
> > >
> > > Thanks.
> > >
> >
> > My bootloader is GRUB.
> >
> > In UEFI-BIOS settings there is no secure-boot disable option.
> > Just simple "Use UEFI BIOS" enabled|disabled.
> >
> > Installed Debian packages:
> >
> > ii grub-common 2.04-12
> > ii grub-pc 2.04-12
> > ii grub-pc-bin 2.04-12
> > ii grub2-common 2.04-12
> >
> > I found in the below link to do in grub-shell:
> >
> > set check_signatures=no
> >
> > But this is when grub-efi is installed.
> >
> > - Sedat -
> >
> > Link: https://unix.stackexchange.com/questions/126286/grub-efi-disable-signature-check
>
> Forget about that "Wrong EFI bootloader" - I see this with all other
> kernels (all boot fine).
>
> I tried in QEMU with and without KASLR:
>
> [ run_qemu.sh ]
> KPATH=$(pwd)
>
> APPEND="root=/dev/ram0 console=ttyS0 hung_task_panic=1 earlyprintk=ttyS0,115200"
> APPEND="$APPEND nokaslr"
>
> qemu-system-x86_64 -enable-kvm -M pc -kernel $KPATH/bzImage -initrd
> $KPATH/initrd.img -m 512 -net none -serial stdio -append "${APPEND}"
> [ /run_qemu.sh ]
>
> $ ./run_qemu.sh
> Probing EDD (edd=off to disable)... ok
> Wrong EFI loader signature.
> early console in extract_kernel
> input_data: 0x000000000289940d
> input_len: 0x000000000069804a
> output: 0x0000000001000000
> output_len: 0x0000000001ef2010
> kernel_total_size: 0x0000000001c2c000
> needed_size: 0x0000000002000000
> trampoline_32bit: 0x000000000009d000
>
>
> KASLR disabled: 'nokaslr' on cmdline.
>
>
> Decompressing Linux... Parsing ELF... No relocation needed... done.
> Booting the kernel.
>
> QEMU run stops, too.
>

I re-generated my initrd.img with GZIP as compressor (my default is ZSTD).

--- /etc/initramfs-tools/initramfs.conf 2021-01-17 12:35:30.823818501 +0100
+++ /etc/initramfs-tools/initramfs.conf.zstd    2020-09-21
23:55:43.121735427 +0200
@@ -41,7 +41,7 @@ KEYMAP=n
# COMPRESS: [ gzip | bzip2 | lz4 | lzma | lzop | xz | zstd ]
#

-COMPRESS=gzip
+COMPRESS=zstd

#
# DEVICE: ...

root# KVER="5.11.0-rc3-9-amd64-clang12-pgo" ; update-initramfs -c -k $KVER

QEMU boot stops at the same stage.

Now, my head is empty...

Any comments?

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUfWR1v3GStn6t_6MYDmwTdJ_zDwBTe2jmQRg7aOA1Q2A%40mail.gmail.com.
