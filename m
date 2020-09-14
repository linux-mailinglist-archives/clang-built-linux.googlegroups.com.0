Return-Path: <clang-built-linux+bncBD63HSEZTUIBB6EF7T5AKGQEGOGT35A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D38226842D
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 07:43:22 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id t201sf11339926pfc.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 22:43:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600062200; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lz30tPKH1WICX6GijBpuU9d4yOJo6oB3GiWPf/iFMT742HpvqTwCjm3tUJ/hPsmg+Z
         9qC7CT12IFQ0akzMhXSwRfSsVt+PGAHttUaeBz9MAcsQp05dk9FjoqvUisOZvWea7kIc
         1y5AOvMwMDLEXo47S9AHQd/SV0yzY4sOZoZHfVJOOv3JKeymvXtdkcRR35quhKLVilQE
         jMx2JD/QpKhGwxtfajb3qHXdi8oY3f8+KYPZrA2znCgZ661JNwXNWrKKAUMNE09sbe2W
         1yr7WvN6kZMe9k7+SfhI9snx6kD8pSW8ixjQg5GgmLSF513kA4E0zKWH8StkTAZzwG0L
         xdQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=VURool7sfv7952BiZzdv67vzZHYd7/MwCJ/n+pxLS7g=;
        b=i9udwiWAudMf751A+oRsmHNlxd8xZm6Af6/OpNllhYDqu9a54CG/v0Tvi7tqG6byIX
         hUhvKtnFWyL/tK3rQ/ZuEut+ID9kDnbZ9StoT1thBEtC27jt6S0v9fA3g0W7h+6vQlAa
         DinQJx75FNkMIG+R7d32yaVoskkUYIn5W/yno7gVwBZtXbZnjD9w63kRibYuW/KXMyxQ
         s+ZHLKycIVu+26Fwu472KxnmgPPhTfiUgV/X6wViAxeSHr2ydMAQw6lq0fx8dOqGj88l
         NkCWpwsOX7T1qp/I//T2nn/NCqQGx87pTZCxrgK0vkhiaM0JfagecxvABT9qzbxmSQr8
         8DWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=N4wtrVtl;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VURool7sfv7952BiZzdv67vzZHYd7/MwCJ/n+pxLS7g=;
        b=AosCYyy87ZxqdJvEmfcfhTXQ9lgPXbt+1hBz/VypSN4CIguYD4oOXh/OFK8PDaGvJR
         A3aMNXd8xrA2lc2zxihwus42cVqnJaazLJqpkhcj8hm0qE9D0pKHmKp2kRZ7wJt832Mf
         G/h/GavBK4szrwuIFHjNNhNTJ6HMhYi7GXB6ekvRDKjAfXMJ9PqFo9I+rybq1rg+y1Zc
         kITeL5++5fcsaRsSzibNFjXouKSjuA+DgOuyzAHm0LvJ0n8nmA91CmCH7zsPGBClq/kr
         99tZ8/R7r3T5VOk1FG81qXsfvyOY5H7KO+pC30L/mrwkE4xUxB7kiP84Nmi2XdNsj4y/
         d6DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VURool7sfv7952BiZzdv67vzZHYd7/MwCJ/n+pxLS7g=;
        b=IT0DPA2cdHvCQJ79XlkF17pOAV6jczQrMAnlZJG+xgsUp4w1O5uNe4o7PmeM9iohBa
         WJYQFK2foqdBPDD7fcQFUJr85juLWRaoPTuiPJswayTOmLeksXBoNgjzufQzC3bSziib
         MdUNiEkw9SFofi8BQl2a/G5u+FsB9ZjzP/GW/X+PXKWYrJoCv/GQ2ixPW3nHHjl8+vIq
         p78t7QcJGY6Usghyuto1/zomgm4s2ibMc+R9jRVa0MgyBvB1IRsBdaEk1se2C9QgixVx
         TOzKOTtDE7dFwmH5UBdZtiAFaOqjfI+aNM9WdmktQHRPCaceeykkiEst2+RKzcFAADP6
         INaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EKGDYKmZd4SFF4wpejZWhmLFPec5fPW5KXjtr59PvdWjnh4TY
	Ph3LCTJhIbZnWXbwHkOK4p0=
X-Google-Smtp-Source: ABdhPJxu/41fa5vZPT6ay6C4sIfoIiqQcnacgbW6ZVaYL/4IHCZgmSsDf0+LrVmYr8a13uE8YAO6DA==
X-Received: by 2002:a65:680d:: with SMTP id l13mr10200930pgt.112.1600062200651;
        Sun, 13 Sep 2020 22:43:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96cd:: with SMTP id h13ls3372363pfq.0.gmail; Sun, 13 Sep
 2020 22:43:20 -0700 (PDT)
X-Received: by 2002:aa7:83d9:0:b029:138:b217:f347 with SMTP id j25-20020aa783d90000b0290138b217f347mr12163669pfn.0.1600062200081;
        Sun, 13 Sep 2020 22:43:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600062200; cv=none;
        d=google.com; s=arc-20160816;
        b=y+tIc5C4T/jGp+dkqTTA56DPMbCfUYnfPkNR1lC15JO7eIgDS8Cc70PddnhehlO1Bu
         zeC8Q3mAd4ck+mlY0kaJS3eoiuH5hTQDxVSfagNvLH2l70znDvpCyv01C6oTMhJqvJRd
         NVPDTIOaqTAXNEuvm63wrmyrlaLzH1EKJTGQYXy2BVtoaOKfKfhjIGW1O32AqGyWwEx+
         KhmHXmpeiUE/hsNmBc6ojFcaqBABWsrzSOCeDmS0AwRjpukZirThl6J+7fVm5uPBcDVr
         yRCV+QhGmAxGiGcHwKFRKs/mTcgcN9o7Zd29ba+UAfjAuOvRG97S1qEU166FiMNnrUCF
         YoRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=u++f3QRwhSF0AXfFheyDgS3oL7t/TnXwJiqvqB7YFtc=;
        b=LAREXhidHV5eio4XMcKE1t+BbGvLpS+T2vO4frhuo7MViX89bgGQsBIFgr2fhvI5Zr
         iZ7+t0NP1T08ZaSAJzuWSkHUQdwM4czk+5ed+PugOTufisMb/NIW0OIju4MYe3c62ln+
         xvLHWyM1QueRYWfdMpbe6h8SKtNcLpKwdd+RIjIoP7HFER7BKxK7OYphTePxZpt9owLr
         200qYNdJDWt5ndM8soenI7RQsHL0CCuyZ8AvKUb/pdQKr0F2DcmVo8wEbAIlaBscwjti
         3AcItzdftT4kZO2/ftEj6fuV+0kcRok9P7mJQFuwJWlD6iizVB8s1RkkvmqsM3aXt2Nl
         qcTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=N4wtrVtl;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 129si450939pgf.2.2020.09.13.22.43.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Sep 2020 22:43:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A163C221EB
	for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 05:43:19 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id t76so16596472oif.7
        for <clang-built-linux@googlegroups.com>; Sun, 13 Sep 2020 22:43:19 -0700 (PDT)
X-Received: by 2002:a05:6808:8e5:: with SMTP id d5mr7890035oic.33.1600062198923;
 Sun, 13 Sep 2020 22:43:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200812004158.GA1447296@rani.riverdale.lan> <20200812004308.1448603-1-nivedita@alum.mit.edu>
 <CA+icZUVdTT1Vz8ACckj-SQyKi+HxJyttM52s6HUtCDLFCKbFgQ@mail.gmail.com>
 <CAKwvOdmHxsLzou=6WN698LOGq9ahWUmztAHfUYYAUcgpH1FGRA@mail.gmail.com>
 <20200825145652.GA780995@rani.riverdale.lan> <20200913223455.GA349140@rani.riverdale.lan>
In-Reply-To: <20200913223455.GA349140@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 14 Sep 2020 08:43:07 +0300
X-Gmail-Original-Message-ID: <CAMj1kXFnuzdmPxCytCbFdgtLo8Bb4k247ePgbLuZ1mANEn=azw@mail.gmail.com>
Message-ID: <CAMj1kXFnuzdmPxCytCbFdgtLo8Bb4k247ePgbLuZ1mANEn=azw@mail.gmail.com>
Subject: Re: [PATCH v2] x86/boot/compressed: Disable relocation relaxation
To: Arvind Sankar <nivedita@alum.mit.edu>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, e5ten.arch@gmail.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Kees Cook <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
	"# 3.4.x" <stable@vger.kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=N4wtrVtl;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, 14 Sep 2020 at 01:34, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Aug 25, 2020 at 10:56:52AM -0400, Arvind Sankar wrote:
> > On Sat, Aug 15, 2020 at 01:56:49PM -0700, Nick Desaulniers wrote:
> > > Hi Ingo,
> > > I saw you picked up Arvind's other series into x86/boot.  Would you
> > > mind please including this, as well?  Our CI is quite red for x86...
> > >
> > > EOM
> > >
> >
> > Hi Ingo, while this patch is unnecessary after the series in
> > tip/x86/boot, it is still needed for 5.9 and older. Would you be able to
> > send it in for the next -rc? It shouldn't hurt the tip/x86/boot series,
> > and we can add a revert on top of that later.
> >
> > Thanks.
>
> Ping.
>
> https://lore.kernel.org/lkml/20200812004308.1448603-1-nivedita@alum.mit.edu/

Acked-by: Ard Biesheuvel <ardb@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXFnuzdmPxCytCbFdgtLo8Bb4k247ePgbLuZ1mANEn%3Dazw%40mail.gmail.com.
