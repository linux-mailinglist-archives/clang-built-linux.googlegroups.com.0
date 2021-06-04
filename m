Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7HQ5GCQMGQEF53THHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 5633F39C00E
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 21:01:17 +0200 (CEST)
Received: by mail-ej1-x640.google.com with SMTP id p20-20020a1709064994b02903cd421d7803sf1022070eju.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 12:01:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622833277; cv=pass;
        d=google.com; s=arc-20160816;
        b=SITfEwdtqmTmuHO5OtMWqxgan0gD+lL4N5oDvxRfmUFpRhdPKSdYPWCN6V98HOGY3X
         1G8F0ISTtDTzonaRqRW2SlqX8LKhRJ5p0ZawndPw8tsOfLuEWSFMsmlhaYakMDRipaKo
         DwnGZ5z9bCNBjPdDANGGpoBogDydRq3ORLYGB+3spi/mTKQRPwp7m5GSSKtky5QAXKBT
         lK5iBMVl2VT8VtBlcjr1+yea/5ONR+zmB4gRAPVscWzEhjBUfO/VWmRs74F1pkTkHoaZ
         JouNTvzk8SbHZDwc5uZGW+BeG2r6wPZ6Wohgo49VMVEi2vvd6tQiNNUFKIDwMrBtwZUh
         8oeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Vg7pKk0WQorAc9b20+jIWWxIDeAluQaKAdcFY4rMbGg=;
        b=uC9WtIJ9PuPG644QcEGLNbymSGPsSZhefzNBI9ky4mUFoCRcUqTlxYdCnMLzN42FYb
         Anutnw8uiLrC/lZTVnP76dBZVJ5fZe3+ZIjcYAGJRFeGz2V9dYjYNpzzwvdodT7ctA6Z
         mJDYHA5eVcvRqegHs1Qs6UEj+UrcP7zHEJR0DXcbbyi7rxWzD5WiVfZUtFocoxG0gUyj
         fSaufGfOtPsJ7HbVTM3D7u/K5PSBZFBHUA5esmizS7xPGQlEsVjpHm7gyhJTB2L73giN
         zWkqkGOHQgC4Dcdz9+FiOuJ0Jlj6DhWvW2Smdo6e7A6C76nR2R00wRY+TTemMH7l/AMF
         o22Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CmwRJrhn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vg7pKk0WQorAc9b20+jIWWxIDeAluQaKAdcFY4rMbGg=;
        b=o8pSsxJ8nSbFpjWRVcWgoZuGiRXsPwLTyh2qJLEZpXEFXjZCbRcEUyMks9cQBE33/W
         2xnAzrbwG4CptQO2CfE39Ebn0fdTknltRmMBQcDkOnOuBZPdvuLDJZXUXckIC1ibfFI3
         THll8DlOETgDUSNaj1n1dJRIxbcZSW1ZJBSDi2/81lZmC/BbnHaic2R5IKDxWFCfAM0c
         C4ugbGwxbpyQbfUYj1qwxbxmdsmtihBPRlI1gzTGU5baslGdYx/poqbd8+AKlYp4KUGP
         ya2SZ9rLDViSTmVM/gDoakKSMK1/JHCiWlcMpPltrOPjumtSx5IFQ1mYGmykYfF0Xogl
         A2IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vg7pKk0WQorAc9b20+jIWWxIDeAluQaKAdcFY4rMbGg=;
        b=qDDHdprn6a9XAUZYpwIdlMGAgB9YcDsmlsA4UoqzvIiJXj5EYoVUclnP+3IOiAb5RR
         QiwlMyzAMH0V4K1LWZePaOscXbeQSDmlPncDVRHt07jPA+vlfIH4k10g7ZUXUfw5AvBm
         mcAuSk2Qe627wviZqsEF01qu8Kg1IRPJ5Sew59gkgpCeHvneHkB7ucxLA9Ets5+eUXVl
         p4vjWXn8lCVEgZQmbe/jX8ygg/JlThhBXPRmGRiA2oPShaPJwm6lG+hCzvREkGpv2AoH
         J8kJlWvJMsYaDwkQlmcOMgyj3GNflS9E1XlrR1u/B+0J2p4NNSqF4IQmxnsV19XzRZsk
         9w2g==
X-Gm-Message-State: AOAM533Hlr/NNjcZbx9V3t+vy5VgZ7yiGnVJ3OTtiD1X1VbkYkOKHiYh
	oUvmMRC4jaF8D+3AulNnv+s=
X-Google-Smtp-Source: ABdhPJy2zUtwRq1acHxkGMHt6paBA37CcYt+n+hcU5vawaLTju9/xKupPD2sJ4SjnjkmRRaW2iG0Dg==
X-Received: by 2002:a50:cb85:: with SMTP id k5mr6354984edi.170.1622833276932;
        Fri, 04 Jun 2021 12:01:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1510:: with SMTP id f16ls6878417edw.1.gmail; Fri,
 04 Jun 2021 12:01:16 -0700 (PDT)
X-Received: by 2002:aa7:da94:: with SMTP id q20mr6324247eds.310.1622833276068;
        Fri, 04 Jun 2021 12:01:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622833276; cv=none;
        d=google.com; s=arc-20160816;
        b=E6SwSOh6fOUPqDu6hV7MI3qacUDuWT3AxQHE4joGlNXULrL3c6lEdUbno9YvkUTY/Z
         wRBZqAzei9Zl/emcxqvm5TQhGrCWM/Yqmi6W7SgeleJo9vkCC4pQ2Z5yXPhrygjHZ6d1
         ZUuA/1aZm39g04RB8ESkDEpTt5HO2GBKVhhq3mHlSvUUAxCX94V0ipX3X0HQ+XCWFBB8
         uZpUfR1gHohvaPQIe7cU8rMYeRKbctXVy/gZfWHmzD42lTPpyeFDp5a2mk0LlOSkkBFz
         Zk+UKAiFMFLDc6y2Ii7UX6YJ90QbhkqC55qfablcDFJW3y7GjmN2AB68aBbRAjIW9cQ8
         4THg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qK8khhSK3ODo4qNQu6WnywimRyy3KGbrWle9HlDDwdk=;
        b=GnZG/xTujOFtkf9Besba4mWrw6JGSjqB3IkwKYbCEVS4z5OxqZhboxVlD/zXC7rKPz
         RKqzKqt0//vyO13e2/Ob+Hp//acCCSRSnAnaOiTJGpUNLN0QCQ8zrVDAkAiALF1T29Fe
         DfLPrrrFPiQN2gLyQd/biZehMftyNTx3GMlwuaBC2WOJT50FnU4cHTL+6J6URFkzNdp1
         1A6vbxz/lf9Oj6hOwazHmmy2ed1zRj0uT/33+VhgMBN1/Qusv9XCFRq+njW7WivEYYPf
         00ig4bohiGdv2vB1+x9vkUToeM6PuuKxqM7pcL70hOTXtKyoIgNqJorN9F7P+EpmQ9nR
         g6xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CmwRJrhn;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id s9si145135edw.4.2021.06.04.12.01.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jun 2021 12:01:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id e11so12818541ljn.13
        for <clang-built-linux@googlegroups.com>; Fri, 04 Jun 2021 12:01:16 -0700 (PDT)
X-Received: by 2002:a2e:b5b5:: with SMTP id f21mr2761935ljn.479.1622833275556;
 Fri, 04 Jun 2021 12:01:15 -0700 (PDT)
MIME-Version: 1.0
References: <60b96a82.DVmXvEgPcq+AUh8E%lkp@intel.com> <YLp2Bynq6yffiev5@smile.fi.intel.com>
 <YLp2q+unmvu4pPcz@smile.fi.intel.com>
In-Reply-To: <YLp2q+unmvu4pPcz@smile.fi.intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 4 Jun 2021 12:01:03 -0700
Message-ID: <CAKwvOdn2PRKsK+hTnB=B9ritp5X0j2J-=of2gxBmzpGkUg+zfg@mail.gmail.com>
Subject: Re: [BUILD SUCCESS WITH WARNING] LAST PATCH: [PATCH v1 2/2] gpio:
 dwapb: Switch to use fwnode_irq_get()
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Chen Rong <rong.a.chen@intel.com>
Cc: kernel test robot <lkp@intel.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Arnd Bergmann <arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CmwRJrhn;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Fri, Jun 4, 2021 at 11:53 AM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Fri, Jun 04, 2021 at 09:50:47PM +0300, Andy Shevchenko wrote:
> > On Fri, Jun 04, 2021 at 07:49:22AM +0800, kernel test robot wrote:
> > > url:    https://github.com/0day-ci/linux/commits/Andy-Shevchenko/gpio-dwapb-Drop-redundant-check-in-dwapb_irq_set_type/20210602-002311
> > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-gpio.git for-next
> > >
> > > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > > And when submitting patch, we suggest to use '--base' as documented in
> > > https://git-scm.com/docs/git-format-patch]
> > >
> > >
> > > Warning in current branch:
> > >
> > > drivers/gpio/gpio-dwapb.c:17:1: iwyu: warning: superfluous #include <linux/of.h>
> > > drivers/gpio/gpio-dwapb.c:20:1: iwyu: warning: superfluous #include <linux/of_irq.h>

Interesting; this is the first report I've ever seen of 0day bot
running IWYU.  We've definitely tried to run it on the kernel sources
before, but I think we very quickly reached the conclusion that it
doesn't work well with the kernel's use of Kconfig, since it's common
to always include a header for definitions that might only ever be
used conditionally on some preprocessor guard of a config that may or
may not be set (exacerbated by randconfig).

It's definitely interesting and worth pursuing, but unless we care to
put #includes behind config guards, I don't think the kernel is ready
for IWYU quite yet.  Reports from it are likely just to annoy folks at
the moment.

> >
> > While in general it's a good warning, the reported headers are wrong.
> >
> > See more here: https://lore.kernel.org/linux-gpio/20210604185013.86662-1-andriy.shevchenko@linux.intel.com/T/#u
> >
> > I think Clang should handle this on the preprocessor level (to collect all
> > functions that might be in use independently on current ifdeffery).
>
> Basically the rule of thumb is to include the headers the code is direct user of.
> Compiler mustn't report the mysterious ways of the rest, actually it should do
> other way around, i.e. report possible circles and implicit inclusions (when
> there is no guarantee that header A is included by header B). I dunno how it
> can be done in project-independent manner.
>
>
> > > Warning ids grouped by kconfigs:
> > >
> > > clang_recent_errors
> > > |-- x86_64-randconfig-b001-20210601
> > > |   |-- drivers-gpio-gpio-dwapb.c:iwyu:warning:superfluous-include-linux-of.h
> > > |   `-- drivers-gpio-gpio-dwapb.c:iwyu:warning:superfluous-include-linux-of_irq.h
> > > |-- x86_64-randconfig-b001-20210602
> > > |   |-- drivers-gpio-gpio-dwapb.c:iwyu:warning:superfluous-include-linux-of.h
> > > |   `-- drivers-gpio-gpio-dwapb.c:iwyu:warning:superfluous-include-linux-of_irq.h
> > > `-- x86_64-randconfig-b001-20210603
> > >     `-- drivers-gpio-gpio-dwapb.c:iwyu:warning:superfluous-include-linux-of_irq.h
> >
> > ...
> >
> > > clang tested configs:
> > > x86_64               randconfig-b001-20210601
> > > x86_64               randconfig-b001-20210603
> > > x86_64               randconfig-b001-20210602
> > > x86_64               randconfig-a002-20210603
> > > x86_64               randconfig-a004-20210603
> > > x86_64               randconfig-a003-20210603
> > > x86_64               randconfig-a006-20210603
> > > x86_64               randconfig-a005-20210603
> > > x86_64               randconfig-a001-20210603
> > > x86_64               randconfig-a002-20210601
> > > x86_64               randconfig-a004-20210601
> > > x86_64               randconfig-a003-20210601
> > > x86_64               randconfig-a006-20210601
> > > x86_64               randconfig-a005-20210601
> > > x86_64               randconfig-a001-20210601
> > > x86_64               randconfig-a015-20210602
> > > x86_64               randconfig-a011-20210602
> > > x86_64               randconfig-a012-20210602
> > > x86_64               randconfig-a014-20210602
> > > x86_64               randconfig-a016-20210602
> > > x86_64               randconfig-a013-20210602

Did the bot run IWYU on a bunch of randconfigs, and report only the
warnings that appear every time?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn2PRKsK%2BhTnB%3DB9ritp5X0j2J-%3Dof2gxBmzpGkUg%2Bzfg%40mail.gmail.com.
