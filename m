Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA6LRGFAMGQEZANA5RA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F9840CED2
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Sep 2021 23:28:35 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id z6-20020a50cd06000000b003d2c2e38f1fsf3001935edi.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Sep 2021 14:28:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631741315; cv=pass;
        d=google.com; s=arc-20160816;
        b=dbi3taJhTre0qJ5RtTbqyMcBnN2TxUVp4hc1AIdUQJfLqEE+oD49Hn2mDvXhiLABoG
         MAsdSNCeDu7acCF3gF9b8pfMz66I92AQv9NfRBKWAh9tf15I8SKzXZ5GgwOyNzP88qCQ
         mSbO3IJtZ78wW6ZUNdIr2It9w8GakKHxSdGN1p0VHFM+J4jPB8Zwocg0/EGn+tHIHul/
         W+PhWsk87Li5P//2VRDL7jyNl9oPrY65JIXSxOEdWr798iJcLPMfEdyuZB1MN9rn5C05
         sNb0EV+vLlh3RMj6PwPkVqg/ko7T/pkMICeWghcnDPgiFSIcCufHqRm8uqnxTbp//Amw
         o2sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Cj5o5IQad6mBD1fYTHFGD5Mr3oAwnVNCZeLN5zC+zec=;
        b=ONiCTCMe6/0f2tqfxJyOMHzifTC4xjHO3WvssH2MH/lcyktqderfJNmKMDSFWzTRhK
         +3QSOmAi1a9Lxxa2INvMK4c629w04cpfrtBNcIjRJcWq5qfrkcE+9xeGCUQ/qYRJF6LO
         3fa4VKGT2h2W30dulhv2dzSiSQNCSRNL2JLsLfdWYXSdH7oKpXcpBrUoju+tv9rK/srG
         UFgjTvLwrEaExE1s5bo9cdHoIScajZswjDf0kcImjP3Pp6ahhQSd85XVFkPFAssBt4vw
         8gwbStJxQZb4s4QaPeKxoVoEMFOugwJJ0+1tLr6oZjnNHaiFU+zHD9zrH97PJYBZWrU5
         /NvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=Sl3Te7Me;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cj5o5IQad6mBD1fYTHFGD5Mr3oAwnVNCZeLN5zC+zec=;
        b=mQFGG5y0V1DxULUqb7Pzn8y0mNBlu6c0F9LU6CHJCUT9KYJJ1HEElks6YUQf+pq7rA
         Y9occ5q95yjNq/p5rTB2roybjjqZsulbFnpHWExWKujmJfD4V8V9DAbaqvRO1DEiBxvG
         NftnjmqNLFmGVjVC3ZdatJ1kVfTGNfBMa8TT4FTcpQqn7KXqOG0gx7icCKNiYirZwaaP
         ZUZ3xyOsH/yILHqEZ1OcSocCJ1CgDa37YhbsyW7CnFh9G/qpYYM86jqdByQ8Qydul1w4
         rcig94Ytz8l/MWvE+lembfUZFOulwsTVAnoiK1qSYAWJP4pdIa7OAZ28/Vh4yiammC0K
         JkDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Cj5o5IQad6mBD1fYTHFGD5Mr3oAwnVNCZeLN5zC+zec=;
        b=De1eapSizDS1SOBXJ3pNqEsVpOQoBM6pvYeni9OQZweBkpYBgQRbO7Wz1tWP1VrCeg
         XUUeUuP/7eFv5IwdNsA2HASHzzsGY1NiObWozyoie7yCKVXzxcWdiGZRhEcFhTJ/ZUU7
         ThJEz8OH4sVrvGD+0DW59MmHUakKTxW8XVuW7w+gZvfTzajs+aG+QTobMxQJ3mhJFZUG
         Fn0HdOFEx62xqKVb5ezn4mIArrAuDV4vlzu847uZ4H5HWlCyXa3YemnjyUpaMZD5s8/e
         dmoX1EBiaal642TdYk1dX8j6I8AH0FA52xUdFq7Af7GRBPHcjWkXoGsMo5h+qc75cjs/
         3PaA==
X-Gm-Message-State: AOAM531VDu/rEDMTmml2Q0RuO7EKEVdgnI3ZZMuFvfmuoPHWU5F6dYyC
	KMUUDE+X/HkJrT4Ea1lbPu0=
X-Google-Smtp-Source: ABdhPJx1lU4DUhahnUblTX6a7HVGPcLkTpmpZ0OXlHyRd4YH2nBd4HFrZx/+G77031/pTBjZhJhwUg==
X-Received: by 2002:a17:906:4751:: with SMTP id j17mr2351490ejs.145.1631741315506;
        Wed, 15 Sep 2021 14:28:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:3513:: with SMTP id r19ls566771eja.1.gmail; Wed, 15
 Sep 2021 14:28:34 -0700 (PDT)
X-Received: by 2002:a17:906:2a0a:: with SMTP id j10mr2272831eje.103.1631741314468;
        Wed, 15 Sep 2021 14:28:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631741314; cv=none;
        d=google.com; s=arc-20160816;
        b=rX391crUtnpbw6mNxOi6x0Urf+rTqIFxvXBw4tK5U1Z/C2cuxZ63GxO84lueMyRi9I
         6hNVxR6Er0FD0/30l46q8LxeT+cLyWjcBBKR19qbMKlfRKmQD8wUBpqDuGjldHJxewX1
         pr6JhyReGHJGlTGEtkazAY9KYSdfBUqM9lOvwA8RK5WfSmCcjn/FDweraNFaiKyU8C0T
         5BjW/6Za5O2reXGwtY69ou02rhG9gsRyvKbWeKuZIdWK1PYVSp+LWPhxe96NCcGKlleF
         DV5SvNzqNjAcpqWS5N+izLi18owK/Wz6ZXd3AXAMI9OknBabcanOe2PK45iarPRUacJM
         V5ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LXl63J1hXEYtT8/P36Nz28JBFo3dkrUN+3AEo24s5+M=;
        b=maBIrXCEev7UDj91raUGhjpvkGOukXMDrOnqXmzqRpeoLBPi7WFwKPO3X1efmDzib9
         h95iw0Cf0cgoU+3FE2mL/7QtDjEqChPZKAWbiGOLuIT+nte+TFpawCnBbU2ToTFEBneM
         7vBHVItj+LaWvFA29NQ6M9G3rBELDl4wvUlCFKLPHfS6ksAZKVKLHXEIrqvIXcekTXeo
         mt+4X/59XJMoM0C+ziF8+UQP4SyPz4K0EVaww+WcRcokKuriNpMV7z2jkHxpY4Es5W9X
         qzLDhvNde6GnbE3i+sMaTWj9wDl+JzAk747KMvX9lNpRWfrWuCFD6AgFtXpDMSMxdYxN
         kQig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=Sl3Te7Me;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com. [2a00:1450:4864:20::12b])
        by gmr-mx.google.com with ESMTPS id r23si412458edy.3.2021.09.15.14.28.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Sep 2021 14:28:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b as permitted sender) client-ip=2a00:1450:4864:20::12b;
Received: by mail-lf1-x12b.google.com with SMTP id k4so9864491lfj.7
        for <clang-built-linux@googlegroups.com>; Wed, 15 Sep 2021 14:28:34 -0700 (PDT)
X-Received: by 2002:a2e:750e:: with SMTP id q14mr1858276ljc.338.1631741313776;
 Wed, 15 Sep 2021 14:28:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdk_7TrWdJWxtNmpvHptTA7cuRsmMrL-=8k=6_ZaRCeaWw@mail.gmail.com>
 <CAKwvOdnwTFv15MRHG1YrLnGhfmunxdpS9NuK=jXuC5-viAo8NA@mail.gmail.com>
In-Reply-To: <CAKwvOdnwTFv15MRHG1YrLnGhfmunxdpS9NuK=jXuC5-viAo8NA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 15 Sep 2021 14:28:21 -0700
Message-ID: <CAKwvOdnDdKa6aMufpQj2-MJR=M4aDPE6LhNvDnLt8z1NeVAOEA@mail.gmail.com>
Subject: Re: Announcing LLVM Distributors Conf 2021
To: llvm-dev <llvm-dev@lists.llvm.org>, 
	"cfe-dev@lists.llvm.org Developers" <cfe-dev@lists.llvm.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, llvm@gentoo.org, 
	Tom Stellard <tstellar@redhat.com>, mgorny@moritz.systems, 
	Pirama Arumuga Nainar <pirama@google.com>, Sylvestre Ledru <sylvestre@mozilla.com>, 
	Martin Storsjo <martin@martin.st>, George Burgess <gbiv@google.com>, 
	bernhard.rosenkraenzer.ext@huawei.com, Nico Weber <thakis@google.com>, 
	evangelos@foutrelis.com, Dan Albert <danalbert@google.com>, 
	Fangrui Song <maskray@google.com>, Petr Hosek <phosek@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=Sl3Te7Me;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12b
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

The YouTube live stream for tomorrow will be:
https://youtu.be/UMDRAmmDBgM. Please share this with friends (and
family (hey, they _might_ be into compilers, idk)).

In contingency, we might be using Google Meet.

On Wed, Sep 8, 2021 at 5:16 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Final call for CFPs (EOM)
>
>
> On Thu, Jun 3, 2021 at 11:55 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Hey everyone,
> > I'd like to announce a small conference we're planning for those of
> > you who package and release builds of LLVM to additional users; LLVM
> > Distributors Conf 2021.
> >
> > We're planning a day of 15 minute lightning talks for folks who
> > distribute and release builds of LLVM, with a focus on configuration,
> > testing, and unique constraints (or whatever folks may find
> > interesting about their distributions that they think others might
> > like to know about).
> >
> > If you build LLVM for other users, we want to hear about how you build
> > LLVM, some of the unique constraints of your users or target
> > environment, configurations or configuration tips, war stories,
> > headaches, distribution recommendations, and problems that would be
> > nice to solve in upstream LLVM.
> >
> > Some example distributions of LLVM that might be of interest:
> >
> > Apple LLVM
> > RHEL LLVM
> > Snapdragon LLVM
> > apt.llvm.org (Debian)
> > AOSP LLVM
> > CrOS LLVM
> > Fuchsia LLVM
> > FreeBSD LLVM
> > NetBSD LLVM
> > OpenBSD LLVM
> > PlayStation LLVM
> > Nintendo LLVM
> > Chromium LLVM
> > Arch Linux LLVM
> > Open Mandriva LLVM
> > Gentoo LLVM
> > Google3 LLVM
> > your distro here; I'm sure there are many more distributions that I
> > don't even know about!
> >
> > Please help forward this announcement to folks you know who might be
> > interested and that I missed on the To: line.
> >
> > When
> >
> > Thursday September 16 2021, times to be determined.
> >
> > Call For Papers (CFP)
> >
> > Please file an issue at
> > https://github.com/ClangBuiltLinux/llvm-distributors-conf-2021/issues
> > with a proposal. The CFP deadline is Thursday September 9; one week
> > before the conference. We will add a schedule here with accepted
> > talks. Talks are expected to be only 15 minutes in length! Keep it
> > brief!
> >
> > Updates
> >
> > Please click the "subscribe" button on
> > https://github.com/ClangBuiltLinux/llvm-distributors-conf-2021/issues/2
> > to get email updates, or "watch" this repo on GitHub at
> > https://github.com/ClangBuiltLinux/llvm-distributors-conf-2021.
> > --
> > Thanks,
> > ~Nick Desaulniers
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnDdKa6aMufpQj2-MJR%3DM4aDPE6LhNvDnLt8z1NeVAOEA%40mail.gmail.com.
