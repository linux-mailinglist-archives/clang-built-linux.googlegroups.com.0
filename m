Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBN6NVWDAMGQE434UEYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE8D3AB716
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 17:14:00 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id z17-20020ac86b910000b0290244cba55754sf400459qts.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Jun 2021 08:14:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623942839; cv=pass;
        d=google.com; s=arc-20160816;
        b=wSRUHM1EOyUuH+lUuE7m66fGCxyCGhXvo93qolO3O46xuIAl0zU9GbYBveIbbnGkMa
         BIDGyqH4EOz+bX10/q2ODk0aUFdWrQZSDDzVwjpQljVGlFMw+BYPeA/NObtm04S6H32j
         s/gy5Cl+0aRNZPrHTSbs+/SEHIOCHJcX0RsJDHZvCZNwbVvzkeYglxZTyZ86qZPtf6AY
         C95Qu9JLaaiMkSv9h79mH205IaWnfOVFsFfwcTJLbqPp8/s80EQQpU3V7S6+Qpb/lsqE
         tO7/taJPMpu+zuck7KF3pX8kZCURnp6p7/zCQO0t0WPUxJjeNrKGAq98MuWYabIjI0OK
         /WdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=MQtQ9k3CQh7zeSpknYVvbTuPcVrXTgAcypeygf84Mts=;
        b=K2NPE4NWDu0+5mRY0kc1mnnSKYXJJdvWL/t0q5NDeghZ3M/SvrfxXbMgTK7Yq5GG9n
         /rSMjR2d2+t3veDE109tpnU9oQ4LZEIip1/OvNOxsq/jk27HKDGNRfITLCgqIlTxBHG4
         BhVpSL8FXye3gfVedsTXbP4zwgatb7/uvfhhQ9SSsv7KFJJQw2cyRgXMuLbvx2fQ4qGL
         yJZM1a9r2yYEf1W25tkPs4mMdcnXNgvBnOywM1J4Wk0eM/eSbdoSrdkfNvxGBQ/gDGx6
         VTOrv6xy0m+rxbdEyRhI9Jcbwit5Kt7jmHhYOF2i8hIk83niXQ2UfRqj1JRC3gk618ww
         K7fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J/E3yEtJ";
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MQtQ9k3CQh7zeSpknYVvbTuPcVrXTgAcypeygf84Mts=;
        b=F3c0MY8nE/T/AS6SXsINH2mTsPEOjcLFDjFdjXS4h++0ZLbcjeuKlku+bktCT7CvqK
         A/FwA9DoeVMQ8xey9olPTfwdH+o0gr2s39AXEbJIjszXxIYbtYat7tJr7sUIfafINunc
         i1xKwBd5KZKvHGUotmD9HMbH834eRYr4SiC4dbwlddtHeWtLz+Fx3N6IMrgkUXXhkVaS
         izZ74mTKZRwmZH5clescW9l8N5apnl777jdmUC0CuTSxDbtdFePA+lf0OhU18lUb7L83
         XD41FDXrHZgG/6dPpazqJz9H6j7zy+wMd9/DonzY51VH9TZUov5XKIDJd21YwSu/F80k
         EO9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MQtQ9k3CQh7zeSpknYVvbTuPcVrXTgAcypeygf84Mts=;
        b=jlgUe2qUeaNDf7H/PYncyWiRTbWcl2xhqTcu0PVXbklZuSUgQwApAHI8s5t2Rm7SnO
         DiAYhkH7/v4rsSp5ifABqNackXkncfscCcPC8OyyAEc3avgUIQJ4juLzuedyGvfgDAtX
         vvhJyag2plGeLerDMeMKgxW/hHL23EfS2kGcIQJ+Y7ssweCmpiRTdGgD6bttYYaMyAte
         ep21sRHYvZSoU5sAlobPMpKbH0J2wx277H4qPQkGXQvIIJK0x6OpyXXUqSlzKzTWi3K3
         Pb0Uma2BuT+rwHs1buPk5qPjQUGwNmerkGXTnOixYJ9qUtIBt+bDXbiw2/cXgN0jG861
         w/5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MQtQ9k3CQh7zeSpknYVvbTuPcVrXTgAcypeygf84Mts=;
        b=nNnNWAA862KcD1sAed4O9l1qnwaqQeTrKInBEWabYYLPfRESHySIUAwvwehXYHoP+x
         c1boAGoL0KV6RHJcJxVaqxpocPCMiSKLtETFt2P7hdRMiqejti59EpNXjTq98rLXwG3y
         Je7HV35R88AIXOfolcsjzqxy8cy51VL2lbI1nqBIxU3vP/xkckS1qiHaPU29XBKX/mVU
         QTlONLzmHJe8K2NoAxJZ9+Bs95SvkVj0LUE28vGsvtH9ZvuVmteBNDwJ6acJwlp6G+64
         ciccD+OgCIoH5m/5qAoEfmUDyVdcjnF3MZuD/gpMlii6dWo9du7/l2eUVZ01hSoWKgOo
         ZNpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531N3hjB6ROhAdPPF24zRRSwinW3OFGgmPIglgCSkytPmA2bLqv9
	rbq247Efg8V379l/UQryRow=
X-Google-Smtp-Source: ABdhPJwr2B433QGueO9JyUs0AURuOrH3paGfOGLGVeY/ghl5jlu570YFHVOEK9JIS5KxHwvDbqVU+g==
X-Received: by 2002:ac8:7dc9:: with SMTP id c9mr5537026qte.169.1623942839752;
        Thu, 17 Jun 2021 08:13:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e407:: with SMTP id q7ls4510190qkc.9.gmail; Thu, 17 Jun
 2021 08:13:59 -0700 (PDT)
X-Received: by 2002:a37:a793:: with SMTP id q141mr4333659qke.107.1623942839164;
        Thu, 17 Jun 2021 08:13:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623942839; cv=none;
        d=google.com; s=arc-20160816;
        b=AQ4EgsqTrN7WBzRbCNm6GX9ul+vJsv/ylFKB0o+4iFY36txf2zrtS/huUfNmIp3Jeb
         W0bs475IvYpdf0RAHGlMYjqay5REdTzVn1yZHyLjV0QuKAoB+fFlYB+A0CuwIrTymulu
         lf2W4ljrBNGpH8w5gx9J3ctmma1aUWzFNfVrxZkvzxz5/FAUhg2CFRhJ47Zxw/q295hA
         ma6kaDI//1omjMbX3O9z3txLdBB+KP2h0OMCnkCAeCPSP+3T3yuIkqYVYLhrsE99a0Li
         pHJDzOlgB08p+hzAC0N9FYf64Q01c+9eSUEj1yGtRXToUaCKd8L/0YXl1c5bkiIfD4Gx
         8qaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=et+CyRYlNQLzJmE+p5c3FQ588az+9ZokAOro78zfZtc=;
        b=PwYQxtqb5Vd8BShQ+37YcyHcMoPb3WUN38MDdkbOBe9P5sQPfBQN2CcrRY7FbgdApK
         57zeUEy7hXk3OdPIWgQ15A8jqsOkSLCgDDzvcxLMikAu/pG1DLbNOyDhKsmtKvMINln6
         MRew/K6ku1cuoTSux9HhHvFAx3cM1x36eqy3ZyM18WTrKAjtszHPRXioFR+pXkdufkMz
         jIFRfmjfnp0U8jTukW/XsuwQ7AZKng4WygNugMoTGa3lfZ9sdjSUMm3/I19GMTY3fizw
         OZx6dEpTovNfyfhQltKPseV9awNRcVb6403PmpY1+va5ZznlR/105u3DV23tZ2wZUEub
         uLyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="J/E3yEtJ";
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id j3si292278qki.7.2021.06.17.08.13.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jun 2021 08:13:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Received: by mail-pf1-x42f.google.com with SMTP id h12so5276662pfe.2
        for <clang-built-linux@googlegroups.com>; Thu, 17 Jun 2021 08:13:59 -0700 (PDT)
X-Received: by 2002:a62:e404:0:b029:2ee:f086:726f with SMTP id
 r4-20020a62e4040000b02902eef086726fmr476331pfh.7.1623942838684; Thu, 17 Jun
 2021 08:13:58 -0700 (PDT)
MIME-Version: 1.0
References: <CA+G9fYsWHE5Vu9T3FV-vtHHbVFJWEF=bmjQxwaZs3uVYef028g@mail.gmail.com>
 <CA+G9fYvvf+XTvZg1sTq4_f9OrVFsCazGo0ozaEbjVYgSeKCkWA@mail.gmail.com>
 <YMtTdU2b9fI3dnFD@casper.infradead.org> <CA+G9fYukjZU9_88KuhW5FpG-Y6EOH4ehXgdKm9pGO0v4y4wsmA@mail.gmail.com>
In-Reply-To: <CA+G9fYukjZU9_88KuhW5FpG-Y6EOH4ehXgdKm9pGO0v4y4wsmA@mail.gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 17 Jun 2021 18:13:42 +0300
Message-ID: <CAHp75Vc05a3fpB+-xUjpeo+yeUuF-i4YUgZqzraURDgGmWs06A@mail.gmail.com>
Subject: Re: [next] [clang] x86_64-linux-gnu-ld: mm/mremap.o: in function
 `move_pgt_entry': mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: Matthew Wilcox <willy@infradead.org>, 
	Linux-Next Mailing List <linux-next@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	open list <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Stephen Boyd <swboyd@chromium.org>, Jiri Olsa <jolsa@kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Jessica Yu <jeyu@kernel.org>, Evan Green <evgreen@chromium.org>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, Petr Mladek <pmladek@suse.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Sergey Senozhatsky <sergey.senozhatsky@gmail.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, Baoquan He <bhe@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, Catalin Marinas <catalin.marinas@arm.com>, Dave Young <dyoung@redhat.com>, 
	Ingo Molnar <mingo@redhat.com>, Konstantin Khlebnikov <khlebnikov@yandex-team.ru>, 
	Sasha Levin <sashal@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Vivek Goyal <vgoyal@redhat.com>, 
	Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="J/E3yEtJ";       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jun 17, 2021 at 5:54 PM Naresh Kamboju
<naresh.kamboju@linaro.org> wrote:
> On Thu, 17 Jun 2021 at 19:22, Matthew Wilcox <willy@infradead.org> wrote:
> > On Thu, Jun 17, 2021 at 06:15:45PM +0530, Naresh Kamboju wrote:
> > > On Thu, 17 Jun 2021 at 17:41, Naresh Kamboju <naresh.kamboju@linaro.org> wrote:
> > > > x86_64-linux-gnu-ld: mm/mremap.o: in function `move_pgt_entry':
> > > > mremap.c:(.text+0x763): undefined reference to `__compiletime_assert_342'
> > >
> > > The git bisect pointed out the first bad commit.
> > >
> > > The first bad commit:
> > > commit 928cf6adc7d60c96eca760c05c1000cda061604e
> > > Author: Stephen Boyd <swboyd@chromium.org>
> > > Date:   Thu Jun 17 15:21:35 2021 +1000
> > >     module: add printk formats to add module build ID to stacktraces
> >
> > Your git bisect probably went astray.  There's no way that commit
> > caused that regression.
>
> Sorry for pointing to incorrect bad commits coming from git bisect.
>
> Any best way to run git bisect on  linux next tree ?

Linux Next is not anyhow different to any other repository that does
merges. It takes the origin/master (Linus') tree as the base.

-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75Vc05a3fpB%2B-xUjpeo%2ByeUuF-i4YUgZqzraURDgGmWs06A%40mail.gmail.com.
