Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBHG47D7QKGQERFIBVBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id AAD9E2F3C8B
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 00:17:49 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id t7sf120979oog.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 15:17:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610493468; cv=pass;
        d=google.com; s=arc-20160816;
        b=DPLaxKNXNBVGB/MUTgFAvH/PXMJrdTE1OpSLLDFUyokEfASA6N9yyAamuZJm3lCTCc
         TQMvYpf6TzWaBeP0Je0Xx5mhY+RJknvW8bjPZdsPzcrMyFgiRu/GSfo9a6vSh/nhzzoU
         sNENwXObhLW8FfaOCX07by6ABl+ZO8Tlxwfkp41j2sqR0xk5nLOZ5MqTV5PuTicBKStO
         mrX47xwUww+MwyKuoYMgBGnc1bXbuUsdyNEoifI2KrLZqCTd2ZzR8kgthZZVtweHbn8D
         78+GMWnmKQID7MSwtyZdZf/UIKUH5qJ2XtDNzY8DiBeLq5mmY7+TdL0MNr2p0rOHhBft
         04Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=DKdGahIw5+5Vk6L/FrN4el80AlCQrPfEgbbQZp3QO4I=;
        b=v1rOGU9rRP/nso9bjeaGf54TQGwB7LSRt7zRXs0HtB4v+aGphN+i0z4a3gj9IP8EyD
         AQ1BwTm+3DQxygG8ONz1MFHIvD2pUYxDa5T9xGTBZottvDBo57vEKxYPzWDJPZ5NpiCc
         l6eAEFRmcTcLWlcKMttCCaFiipqlIMJnXm+2U65aEzYj0S4+MO0K09faWFR2AT0KQmzh
         NCdzCUl7o10SI4JuziKDzFvSAfeApfbJENqPuDEu7pZWVEu/d2rJzfcyn38rUVXUquAO
         kfpgfw7MEEiwePniXU/9HL0JakNwR0pvSU9YOGHfEh5GQFGqpKysjvB6s+iBdFHusNo3
         jSrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZkGWNhW0;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DKdGahIw5+5Vk6L/FrN4el80AlCQrPfEgbbQZp3QO4I=;
        b=PntIVuJngAOx11+AqhVBv25j03C7E1Gf2aZQJ13e1DsHRh6GOQ62fnfKOimRU84p58
         UARl5QVA4uGTj/9Qipak+zf3XSPPsZa++1z/IZJl4pDJ7mUM3ZY2Nfd1FRyrVaOZhJeH
         3i5IMnm2mpeiW/LNZGSn79Q5gryUbz3lgF5jazS7PL/IBmKIqsSXyMcnJCPJKGxkRDwP
         QMW+wKnbYkEhigLYVuUep3OS/Vf91qL1or9ut5H9w5VU+iWB7XTtwpKCb9i63Va3Q+P6
         VtXYIK6qSOYJIeLg7r1ckq1v6y/uHQ5cIaJXBJN4tH7Q6adK03NPb5lljYSUm2YQU9AS
         AuXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DKdGahIw5+5Vk6L/FrN4el80AlCQrPfEgbbQZp3QO4I=;
        b=WXS9YiHd78LrdfEZglAehXAZPdeXcmKeuuEPB7o5y6u2o7W90GQGc+gsYJdgIYv2/s
         alRAjWCohKlABcboKCUGKCiFRXNopxt79Eu/2XBPkGOeREPz3PBB7IoYBDCESWL4SFAl
         hWePMxOZ1Feqq5BC1NOxOqGcc5pOYd8Qw+2xndptVd6TtrHb4yGHV0JQwXRMs++6SvV8
         PdRSYyLWQDFVtRDbT4Bj21V2r/5/2Py8BWwqaqb3PuSpjSurnte4rdw9sLySJMfS0AMs
         irp5/X4PTQ3xexV2HW2eTmrlpV4c2R9Hh4S19PwM4ojYBpw7+zCFOuiwDyNabkkBVH7O
         GpAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DKdGahIw5+5Vk6L/FrN4el80AlCQrPfEgbbQZp3QO4I=;
        b=prFZtL05IZiiwdxogk1PU/tKM6sRZg3JWVMIkr951KlmZ1BMpTuMQuHVk57F20dnnh
         uVQ2rI1vGAhBb/N0cErFStrYscs1DVQmZXv3e84B1x0E3hRyhOF0jZvSLiUOlIVwPd6f
         hksRxHI6fkJigN29yjpH3sIND+U3vBZJU+k+r3Jhi2josOlblguxueIcHMCW7C6tKNix
         iLDvO/eSODcUvBJemRd6LBIcIFzF6tKNMGkhruQHvibbnkOR+CEJG9Av4a6fLsJmtQ9d
         2Y5Av+HANiG05ThcXAY4pCqa/J+iI9pmoDt2VoIf6/I9GtzuoEK8AKLHq3O5oqRcaVcY
         li+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337ofs+BJ0tCZIdFLKUm/ERPGx/EhV+zyS0bbeuSTkb/tMeOhZ0
	TTR4Wl2tTYmQZ/3UDspIqo4=
X-Google-Smtp-Source: ABdhPJwR6OYY41sO64WHy4w0XVR4yN1kb3ii69aRxzJAYn8u0SvwD7lA8GoUaxEMvK3HPtvoYHreyA==
X-Received: by 2002:aca:1917:: with SMTP id l23mr25911oii.64.1610493468666;
        Tue, 12 Jan 2021 15:17:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6841:: with SMTP id c1ls48597oto.8.gmail; Tue, 12 Jan
 2021 15:17:48 -0800 (PST)
X-Received: by 2002:a9d:37c4:: with SMTP id x62mr1197075otb.87.1610493468184;
        Tue, 12 Jan 2021 15:17:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610493468; cv=none;
        d=google.com; s=arc-20160816;
        b=yxTRw5he1AEhcWDh9cvEX544C8KgZQQSTDRcnkQ7PRgX+Almsf+3nCRqpkSlP1xYEZ
         QbC+EVVtVtPJsUZGr48RWCpAJvIhD56PQ0yck657DeGxMwtXfc3V2FTP4ceUYwnjEuDL
         mIuOcM+10DEiBasiKap1Eg5drzxrb0/2CIHLQGpRlNoWhZWCQ31Na9fv9Je9a9NX9+1k
         dphCGWLGmlFzf+16ZnDDUopBB6mY1QEZCASepqzXqCvlOrRKnOU6buTiJWPhCG21Bflo
         Jv1giGPSLCeoISv5RlEcSIp4Vl/HqP7Dvw/ymM8WR8z9Pvva+KF37Ve55akFW39yyQ4O
         zBsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GckNMETTOMtCaaDsctLyJ8QM4HuE4yUZRfM3KIKaWyA=;
        b=bLGFYXUHSQ4WEW51CsyYPJlqtZw9VYyJtvHM1wE1xDWC/BKnA9o4+y3xVP5KYW0HEx
         nJpsNQx9V7zDIKVvE1Yicur5AN/FrOdS2JmZ3VDkK/XW7+Tss/OISzAkYIgCglO4kxbe
         i8ctoDacwqsamVBznDBi3n+b13jIt9notJHru9vF12LaKv/oIOz8R1/yzQvnojHZ5riF
         jpppM+8mpclGRRQqL6x4rcOFJnHktxTyxD53RMkmJEfy/Nn/OQvUAlfgyWx1zQHnWquu
         en5e/oH0f//AGW+1cSbhyz02iGr1+vd03xmFbLVNOQqWo11YwyzYK66FwfzYz+Hm9doT
         im9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZkGWNhW0;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com. [2607:f8b0:4864:20::d32])
        by gmr-mx.google.com with ESMTPS id v23si13283otn.0.2021.01.12.15.17.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 15:17:48 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) client-ip=2607:f8b0:4864:20::d32;
Received: by mail-io1-xd32.google.com with SMTP id u26so350719iof.3
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 15:17:48 -0800 (PST)
X-Received: by 2002:a05:6602:2f93:: with SMTP id u19mr1196940iow.110.1610493467844;
 Tue, 12 Jan 2021 15:17:47 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
In-Reply-To: <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 13 Jan 2021 00:17:36 +0100
Message-ID: <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ZkGWNhW0;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32
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

On Mon, Jan 11, 2021 at 9:27 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Dec 4, 2020 at 2:11 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > DWARF v5 is the latest standard of the DWARF debug info format.
> >
> > DWARF5 wins significantly in terms of size when mixed with compression
> > (CONFIG_DEBUG_INFO_COMPRESSED).
> >
>
> Is this patchset bulletproof with CONFIG_DEBUG_INFO_BTF=y (and clang-cfi)?
>
> Debian has enabled this Kconfig in recent Linux v5.10 kernels which is
> a base for my custom kernels.
>
> It was fu**ing annoying to see I have no pahole binary installed and
> my build got broken after 3 hours of build.
> OK, I see that requirements is coded in scripts/link-vmlinux.sh.
>
> I needed to install dwarves package which provides pahole binary.
>
> I would like to see a prereq-checking for needed binaries with certain
> Kconfig set.
>
> After I calmed down I will - maybe - write to linux-kbuild mailing-list.
> Hope this will be a friendly email.
>

After linux-bpf folks recommended not to use LLVM I jumped to gcc-10.

I tried with ld.bfd first and then in a next run with LLVM=1.

Upgraded pahole binary to latest Git plus a recommended patch from
linux-btf folks.

Unfortunately, I see with CONFIG_DEBUG_INFO_DWARF5=y and
CONFIG_DEBUG_INFO_BTF=y:

die__process_inline_expansion: DW_TAG_INVALID (0x48) @ <0x3f0dd5a> not handled!
die__process_function: DW_TAG_INVALID (0x48) @ <0x3f0dd69> not handled!

In /usr/include/dwarf.h I found:

498:    DW_OP_lit24 = 0x48,                /* Literal 24.  *

Can someone enlighten what is going on?

Nick, Fangrui?

Thanks.

- Sedat -

P.S.: Patch from linux-bpf

link="https://lore.kernel.org/bpf/20210112194724.GB1291051@krava/T/#t"
b4 -d am $link

- EOT -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW6h4EkOYtEtYy%3DkUGnyA4RxKKMuX-20p96r9RsFV4LdQ%40mail.gmail.com.
