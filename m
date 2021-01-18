Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB4UCS2AAMGQEJEJAHLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id B750A2F9FFD
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 13:39:15 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id 21sf5437681pfx.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 04:39:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610973554; cv=pass;
        d=google.com; s=arc-20160816;
        b=ml2a9xJ9llU+3NB5U5+qh6I/X6jpH5U0EIIbGCoLCcnUnQufzSoGwlFHuUgLt24kSz
         3Zu2hiTFK2hWGBCIC8jC3GzsQzSF45joawoeLNnm1CekGukLqyCndtpu2yC2HSprOj1Q
         9sd3eqM+fp33VwBEZv9vk7v2QQOEWDULMBEVo0v90Ul/di7+enM5mvgazJRpq1L8W9EF
         XRW2GgF11Y0vFVjWAToskZ7wI7xqzOPnTaDmaq1A1809OtB/Ywb3nfB8Kqj/5UEETMPt
         lU1VuItHbjCADipcSH+20hCGQhyxb3fmoeaP0mYD3/C+IU9RoGESFrzg7a30Yv7xQdVq
         7z+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=GYDadzqUgJk21rdzAP0Sk2jPpfFMbJVQiQ2r+EexCms=;
        b=ss6bkI1sPt+ha4ArUJxJDIigrzzYsuQTYxp+oODleYLqWPDckDQF3gGsPDhLnz7Oh9
         1JmiZ+JJ4SmowbUJDePTUPaDHwPvjuoK7N893FZhFam0SoOubvKDmn9hPHi8V7uVcN0z
         jWcLECISJO/kRsSFzLOODSphZ99yDz77b30aAG87H/i4feLvEuw31dKLTDzYZWpiD6MO
         mw4K+vgbinJzhUc4pVdNZS7c3FJHmTeH9P2YmRBYXdTInlU1mU72WOmlM4Zv+yohfzWy
         zQPrTJVPADpvHSgOd/vlJApRmkFN8qbbY5YLBaxEI8lByII6Ks18gArPQ46/bHN/HE3P
         YWtQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EuJrgbYO;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GYDadzqUgJk21rdzAP0Sk2jPpfFMbJVQiQ2r+EexCms=;
        b=G9CLp/n1qhSUA1xbRUqHxnYmGCMiXYrgg7jd0BTGhoTqqYD83bUeLuU8VlfuAejFyK
         SzOwaa4ypxmZWG7SZ0uYiKHm+emLuM5jG1Y7qT2LEtvj1EG9hbuwVVQURQnX7JYGObPO
         L2rxD7UfNlYeZhETS+M82rPun0xqC/8RW/hTtvz5tbj5o9WXrnN19mNl0Q+243mr3Wbn
         8cME32fdmn4rj6qkauXK9ytcbggG2ox1rzx/xUcW3RnvANjPaPYn3No44KrQg3ElCdIP
         i+O+CUFlSGT3OXVt7N2UH0iCF1Gb8VXKllExmWW1VzNAaMPbSbZYi8kigWif3l1efmGy
         2h+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GYDadzqUgJk21rdzAP0Sk2jPpfFMbJVQiQ2r+EexCms=;
        b=r38uZG4zphnNqu6xn8QSC7OCd7vOB4GwWO/7EwBDHo+75800S3qzsmNgDgZCI9EkyM
         CebTgZIZTcVoerWj/cH3Sps9HBdrd9OI+ywZZ3UV6fOus7MqHdgutohKW5qOUeW2mRee
         TT9h2iPZo66r1UMwvgyGPb6AutAvgV9V++xgIgHshsICocjRwcbzFlt3Aenq0xAFpW/s
         CGuzev2T9Q0k94rNTmuLwSEHXitubEuxDz2aNJlccE9XhcgpDStQkJwcwnPDdjVRpA0X
         S1JKq+d5Txl876Y9ryJTzlKyzoGw9EKVw+7vYkOYhIxcO8kSNpbRN5svQp91SLBPtbUN
         HgJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GYDadzqUgJk21rdzAP0Sk2jPpfFMbJVQiQ2r+EexCms=;
        b=L+3xLzAPMDd/yyTokbgCt4YXzOUdSi5jMW8zETAykWovsRlZ+rOXLrXlu/LMw9bsnf
         wpVla1gSTHGpr8WOXmz++zjl6tFM1nL/2bylUXsQb8lrzSZ2ThxqfbpI2sIF3XUKb4xs
         SdB3Rks53tqGu3UX5IZ2hEbjOk253wfr/KtNbxVYnQ3Da+Owi7lrlrT+B1hj2XZLuPIu
         u8c4QK7+G/Q7ErzvySkEa+hzB/MnMICuezSl/WiQlVfB2jsqTzs13z55pNbCYF4EdTVX
         5yJOOP1FLxqLM85j7JGdgovTD7KxsUGZLnDzhBexmEBZ7Y7QoHtrvXJaHEEvNlSZB2z8
         BUcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53224oD6bQS9XSSpfl06cL1sEYYUrRzcw7qh/ZMBNOOQ9pERs+4R
	t+egURdOKS8R0Bk8ndMNwbY=
X-Google-Smtp-Source: ABdhPJyygNJY7fcLlwa+IMcPn59/i8l6L3KHdVVcbfHqDCF0B054UQB5fzVtcYQqMwW7wbZ7h1pYqg==
X-Received: by 2002:a17:90a:5897:: with SMTP id j23mr25773112pji.148.1610973554309;
        Mon, 18 Jan 2021 04:39:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3583:: with SMTP id c125ls1119473pfa.2.gmail; Mon, 18
 Jan 2021 04:39:13 -0800 (PST)
X-Received: by 2002:aa7:8506:0:b029:19e:95:f75f with SMTP id v6-20020aa785060000b029019e0095f75fmr25579910pfn.7.1610973553625;
        Mon, 18 Jan 2021 04:39:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610973553; cv=none;
        d=google.com; s=arc-20160816;
        b=EWkUxlFgU+mr2ef3akwNZ2RtZzNyQZOvxmnQS5yg4ArRBcgqhrQ4AIo98upNys3w0+
         qIOnx1YFYc3j+cx7R++ZSHGfExK0wpEGnuIbiyXRIWf2RddAoyJHlq2Uz8fDGlA+MMkb
         qob9l3J/Q28VGYYuKZRUVNdkli90HP1kEg/pSfG0qezlgpPzIHr451L6K+xuiZrgoqX8
         GDJp8PFvGyCZEVV93ArXzkWS92cJAJmBbiDTSFmiRnQ9k+rwoJqJIi4soVfL32+rt3cZ
         ycVzLZ3/VYWmthk+s+dIf06+e48ioLZqVKZkF40D1jD0vDNjSWWgddlOsUmaw19zmCMb
         ar+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/0ekt6oq+WlNqCRvHUlDFjjWLqrVQZ0WTiXLJub6TII=;
        b=a3NSJYiZh/yZ1rVWu+I5YyxNgZN8B5fNpoZKp+dH9gC+dFX7J5t+uqhx/8nzJBpS0r
         zFw2rIgXBiY1z5WNURMXBgCqHzKv2g3PGv5aBYdCYIvyBTQsd5DfXkcpwfFCa7Zfu+pW
         Hi2KkeCpzZrnROhnzq63L3QGtjypGP89W8kXvunZTyJPy8kZouPmtacVWfqqHYLElgjC
         1+qpT1ANXT57pEyvpYllAFG9LbWG0KlrW9nFNMXebM7hQrYEs8tOevuLBx8UWbisFmc+
         YUozon8aQyiqVwb22ecQy3OHZHibgm9dIFBVJoqMxm/pLFGihLfzJ7TQ3MBbXg7eEytK
         crhQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EuJrgbYO;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id jz6si1250144pjb.1.2021.01.18.04.39.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Jan 2021 04:39:13 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id q1so32422799ion.8
        for <clang-built-linux@googlegroups.com>; Mon, 18 Jan 2021 04:39:13 -0800 (PST)
X-Received: by 2002:a05:6e02:d0:: with SMTP id r16mr6888410ilq.112.1610973553097;
 Mon, 18 Jan 2021 04:39:13 -0800 (PST)
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
 <CA+icZUUuzA5JEXyVzKbVX+T3xeOdRAU6-mntbo+VwwTxqmN7LA@mail.gmail.com> <CAGG=3QWmOA+yM2GJF+cHUb7wUq6yiBpHasa-ry9OhAdvciDm6Q@mail.gmail.com>
In-Reply-To: <CAGG=3QWmOA+yM2GJF+cHUb7wUq6yiBpHasa-ry9OhAdvciDm6Q@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 18 Jan 2021 13:39:01 +0100
Message-ID: <CA+icZUVwbWDtGUzMEkitxYn2UvbZPnFTxfJyDOY46j6BTK0deQ@mail.gmail.com>
Subject: Re: [PATCH v5] pgo: add clang's Profile Guided Optimization infrastructure
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EuJrgbYO;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34
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

On Mon, Jan 18, 2021 at 3:32 AM Bill Wendling <morbo@google.com> wrote:
>
> On Sun, Jan 17, 2021 at 4:27 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > [ big snip ]
>
> [More snippage.]
>
> > [ CC Fangrui ]
> >
> > With the attached...
> >
> >    [PATCH v3] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
> > undefined symbols
> >
> > ...I was finally able to boot into a rebuild PGO-optimized Linux-kernel.
> > For details see ClangBuiltLinux issue #1250 "Unknown symbol
> > _GLOBAL_OFFSET_TABLE_ loading kernel modules".
> >
> Thanks for confirming that this works with the above patch.
>
> > @ Bill Nick Sami Nathan
> >
> > 1, Can you say something of the impact passing "LLVM_IAS=1" to make?
>
> The integrated assembler and this option are more-or-less orthogonal
> to each other. One can still use the GNU assembler with PGO. If you're
> having an issue, it may be related to ClangBuiltLinux issue #1250.
>
> > 2. Can you please try Nick's DWARF v5 support patchset v5 and
> > CONFIG_DEBUG_INFO_DWARF5=y (see attachments)?
> >
> I know Nick did several tests with PGO. He may have looked into it
> already, but we can check.
>

Reproducible.

LLVM_IAS=1 + DWARF5 = Not bootable

I will try:

LLVM_IAS=1 + DWARF4

- Sedat -

> > I would like to know what the impact of the Clang's Integrated
> > Assembler and DWARF v5 are.
> >
> > I dropped both means...
> >
> > 1. Do not pass "LLVM_IAS=1" to make.
> > 2. Use default DWARF v2 (with Nick's patchset: CONFIG_DEBUG_INFO_DWARF2=y).
> >
> > ...for a successfull build and boot on bare metal.
> >
>
> [Next message]
>
> > On each rebuild I need to pass to make ...?
> >
> >   LLVM=1 -fprofile-use=vmlinux.profdata
> >
> Yes.
>
> > Did you try together with passing LLVM_IAS=1 to make?
>
> One of my tests was with the integrated assembler enabled. Are you
> finding issues with it?
>
> The problem with using top-of-tree clang is that it's not necessarily
> stable. You could try using the clang 11.x release (changing the
> "CLANG_VERSION >= 120000" in kernel/pgo/Kconfig/ to "CLANG_VERSION >=
> 110000").
>
> -bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVwbWDtGUzMEkitxYn2UvbZPnFTxfJyDOY46j6BTK0deQ%40mail.gmail.com.
