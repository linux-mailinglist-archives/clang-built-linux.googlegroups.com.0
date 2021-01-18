Return-Path: <clang-built-linux+bncBD66FMGZA4IKJCEYQADBUBB7LQFWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5AC2FACFF
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 22:56:52 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id r1sf5074970wmn.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 13:56:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611007012; cv=pass;
        d=google.com; s=arc-20160816;
        b=wvvWT9IE2o0XLOwdozsc071pYQLF60sZJJt+DbuIvz1iEoXAIv9i4y8aF5cpFtPgR4
         kU7JEKqgQarTdlXC3YnP3FiSZQ9aHZV/AKAlVttHF9E8UKFAXQProzKe0sstnapuXy+S
         AeDB14uZ2crCC6+nv4fDb9Ng0K2ykLw5JngGu9atKIpBotK3leMBDPU5yWWi7wxGvDX2
         CuSaT2OChN0oRKgV5KLLEpcfpTI5/JT88UNTydgdDc05YIM60NuuX3h+MPL0R3kD1w/E
         DFYAYDbpFxfVp+0V+jVe13H5vszLObETG3k1cggciB/cSkCH3jPPJzSy0Ui0VN8sk2uc
         ag/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=VlDz+L6RztnpomcIooccpJNMzwQfulDc7XWgsw8jAwY=;
        b=zOMPiZ4zVxynHT8prWZTbGt59s+acLAUKNr4WQNV6GA/0A0JPIdNQl9sCCFVbOS1Te
         TBCoyqHsooLJd2rlih8K9CJqLDp39o2fW6D5WB+V2ZCmb0wI/5AZeUlC8DFL1ILZyAnS
         3oSIw22NDubsNafSTnr8cP9bs4b+kWFJwCB/I/tDH3hwAjPazcowmPEyjOHyRumjoEkt
         MeN4+aMcBvzWEM4YP7X3kPyjUuGbKRDhOA9iWYILY9TB4MQ/GAmCC66eJfwqro+mPlqB
         mHZ3Opw0U1OhaNFrG82tcYQEl92wg/P7a50HmpZhMDdt4ymYItmZtOe+m3DInI0TZ365
         15zw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G9OuzfiK;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VlDz+L6RztnpomcIooccpJNMzwQfulDc7XWgsw8jAwY=;
        b=j/bRsXca3CHz3GYecm/e+cdfG2pz0EnqwaiQOcmpFYMehK+DM3mJX00J4vLTQGZ2aP
         kyTrFsMteixuIuYhrHiY3pjl1kYdq1MsQd9tCaoLebWNgFqffnKTEnMw27YmR1qrCBZo
         0fw2fYG5NUBwVfHrnUItTt1BMhxXag2GoJP0LA1j0hJNsADHU8M5xqf3o+fQpNY20Pgn
         vT6qSl2zAEoPKhdAILX9avOQqlhHxXN4ZWw4t3Vx3c/A3qCkQgMYpuSWNHiPO+CPMoE+
         dAWLjDJkHtXGNeOsb9yPvu27DnTS4FsmqeVcdYKkaU2ZkEFKRJCkyBfF4RuGijtJG254
         nlnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VlDz+L6RztnpomcIooccpJNMzwQfulDc7XWgsw8jAwY=;
        b=FOVl7rBdGMg45hLnWK4mA5aJSmoNNeVTduO/dyq8yNLFZHClP4wFY60E5SsFIt5fev
         A7G1GMRAbHd/utZDKXDpAAGfLQ0QBSs9Vvv9wZA+bm7WLTxD3yup+Qywv1+O3/bCz+Dn
         QEEXQ7b+df/gjmfJwk2ZcXDX+CMeBe58PlehUWu57XWW/nSPvSrBczKLYh+DB/4BxkWH
         Ux/tsNZUoiJ1aR2P/wAwJo7L8XeHiNsLqCjh+zwKanFkdGNAHhoZUomIVKkvhytId9CU
         7gAEJJfoiWX9pppWSk5u5fKK51sdbFkOF6LC41yyVB9svTLCw2RJ+f3IhuKLdbfhpsi4
         YrPg==
X-Gm-Message-State: AOAM532XygSYF8iTtDfte4UgPmSVDXJP5oZM6od09FU6hhcJMs05m5P9
	viQIdtAZOYVzQ7mxu6WTaLI=
X-Google-Smtp-Source: ABdhPJwb7iTLRBu/WA9wGmGsns7AEyM/0ARV3KU2BXZ0dK46sGor4ExxD8qGSafI4JeYq6/yN2bIpg==
X-Received: by 2002:adf:dd10:: with SMTP id a16mr1354669wrm.149.1611007012613;
        Mon, 18 Jan 2021 13:56:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e608:: with SMTP id p8ls10361781wrm.2.gmail; Mon, 18 Jan
 2021 13:56:51 -0800 (PST)
X-Received: by 2002:a5d:6c6d:: with SMTP id r13mr1333583wrz.343.1611007011801;
        Mon, 18 Jan 2021 13:56:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611007011; cv=none;
        d=google.com; s=arc-20160816;
        b=qHG4sWsnht32KQ+JoAcf4n+YS6Ogq0tJDbQO8OLsgbbq73PfOR7NDycT+ktfj4atxB
         g7zFwN5m0negID9tIYeZ7ZiiRzmS22/Xnqo0WBq37Ekilddw2PY/iYd+fgedqpY2oy9Y
         LBCuwujA0AsYRwM+lBiz22cCpRt/sXz4P3fqPtx3o/LQ14mKFaocJq+VMGqPsiHvzjCr
         HWg2OSUSJ3G837SpIfDTqK1kxvLJs09BXmlB4BRWwEqqzIDaWr+jLP7RQ1w872qtJLdD
         4fmROL4DXFEBZx3+EVZQ9WMi4AMah2KVKF/M0dCRFF0hNPZbYvBm1BnjrV35MZ747Q+/
         5x7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oatfa8Uxac5y+QfNKWVhpzcqRMF9g7xn6+1Ypo2kSWs=;
        b=KGffUgo3hNXLDtrJU+MGuB0Dnuk32/SobADsJQfKzeBU0qwDorx0Ase0Kmyd+oaBAP
         xYZEGZhGhniQhPzGiT2r7vXhd5aOP/NBX3PB34OQs0YAEPtHarEwGzQT9HGbjOhSqCPF
         5hcwZXQFv+CPUEVG7pQTZxPDbhzgWSBUmXrbzLugx2goLred1Dr7U7DDC3ut1n7KSCV5
         vStdFYxP0STzWvtxs6s5K6m8j3wFjqTTyY+f7tE4S6yHILAPZqy2jSbjxWBCfiJ4mOCa
         MoDugEwlthEE+4EM/SVaiJlzCEfwcoIl0KLjroMo6CwAR1xwZCL+tBJ0XKWCzqqAyekK
         LwRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G9OuzfiK;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::634 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com. [2a00:1450:4864:20::634])
        by gmr-mx.google.com with ESMTPS id e16si1114403wrn.1.2021.01.18.13.56.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 13:56:51 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::634 as permitted sender) client-ip=2a00:1450:4864:20::634;
Received: by mail-ej1-x634.google.com with SMTP id 6so25723138ejz.5
        for <clang-built-linux@googlegroups.com>; Mon, 18 Jan 2021 13:56:51 -0800 (PST)
X-Received: by 2002:a17:907:e9e:: with SMTP id ho30mr1073618ejc.529.1611007011377;
 Mon, 18 Jan 2021 13:56:51 -0800 (PST)
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
 <CA+icZUVwbWDtGUzMEkitxYn2UvbZPnFTxfJyDOY46j6BTK0deQ@mail.gmail.com> <CA+icZUXa9wvSWe=21_gjAapoHpbgBmYzFpQjb=o_WRQgK+O4gA@mail.gmail.com>
In-Reply-To: <CA+icZUXa9wvSWe=21_gjAapoHpbgBmYzFpQjb=o_WRQgK+O4gA@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 18 Jan 2021 13:56:39 -0800
Message-ID: <CAGG=3QUcaY1wzJhBD4ZGhPSNPik-kL0PuoE1SJqkFJEM_mkGYA@mail.gmail.com>
Subject: Re: [PATCH v5] pgo: add clang's Profile Guided Optimization infrastructure
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G9OuzfiK;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::634 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Mon, Jan 18, 2021 at 9:26 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Mon, Jan 18, 2021 at 1:39 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Mon, Jan 18, 2021 at 3:32 AM Bill Wendling <morbo@google.com> wrote:
> > >
> > > On Sun, Jan 17, 2021 at 4:27 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > >
> > > > [ big snip ]
> > >
> > > [More snippage.]
> > >
> > > > [ CC Fangrui ]
> > > >
> > > > With the attached...
> > > >
> > > >    [PATCH v3] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
> > > > undefined symbols
> > > >
> > > > ...I was finally able to boot into a rebuild PGO-optimized Linux-kernel.
> > > > For details see ClangBuiltLinux issue #1250 "Unknown symbol
> > > > _GLOBAL_OFFSET_TABLE_ loading kernel modules".
> > > >
> > > Thanks for confirming that this works with the above patch.
> > >
> > > > @ Bill Nick Sami Nathan
> > > >
> > > > 1, Can you say something of the impact passing "LLVM_IAS=1" to make?
> > >
> > > The integrated assembler and this option are more-or-less orthogonal
> > > to each other. One can still use the GNU assembler with PGO. If you're
> > > having an issue, it may be related to ClangBuiltLinux issue #1250.
> > >
> > > > 2. Can you please try Nick's DWARF v5 support patchset v5 and
> > > > CONFIG_DEBUG_INFO_DWARF5=y (see attachments)?
> > > >
> > > I know Nick did several tests with PGO. He may have looked into it
> > > already, but we can check.
> > >
> >
> > Reproducible.
> >
> > LLVM_IAS=1 + DWARF5 = Not bootable
> >
> > I will try:
> >
> > LLVM_IAS=1 + DWARF4
> >
>
> I was not able to boot into such a built Linux-kernel.
>
PGO will have no effect on debugging data. If this is an issue with
DWARF, then it's likely orthogonal to the PGO patch.

> For me worked: DWARF2 and LLVM_IAS=1 *not* set.
>
> Of course, this could be an issue with my system's LLVM/Clang.
>
> Debian clang version
> 12.0.0-++20210115111113+45ef053bd709-1~exp1~20210115101809.3724
>
Please use the official clang 11.0.1 release
(https://releases.llvm.org/download.html), modifying the
kernel/pgo/Kconfig as I suggested above. The reason we specify clang
12 for the minimal version is because of an issue that was recently
fixed.

> Can you give me a LLVM commit-id where you had success with LLVM_IAS=1
> and especially CONFIG_DEBUG_INFO_DWARF5=y?
> Success means I was able to boot in QEMU and/or bare metal.
>
The DWARF5 patch isn't in yet, so I don't want to rely upon it too much.

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QUcaY1wzJhBD4ZGhPSNPik-kL0PuoE1SJqkFJEM_mkGYA%40mail.gmail.com.
