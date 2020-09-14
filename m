Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBBOP7X5AKGQE6VRUGKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D72268B7A
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 14:52:23 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id p11sf7052833pjv.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 05:52:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600087942; cv=pass;
        d=google.com; s=arc-20160816;
        b=W2FVD0qsE+ggLub7htOrQtOq9bF6DkSIvL3GuKtsrJtnd0vRAjIsCjlCZINfGUD90h
         A5QvQ/WmygkkByCmI5UMd0UgLedg2KZy9mhMnCV6BQSvpvmubrDgzZZ/fcmKs9utF6SQ
         0Oe4QS4wrVSj34l1rruheiW+Z+fckBex60y6vNGfRTUcR09kKdMFIasS9tDS4BpTKTR9
         6H2n9VGSWaR2A69aSLv2gIvZyxyW9BocE/W85AGjPrJCgLvesfTKW7rhtqtZqGpWTy+H
         jX3vXvb9xxrIaQZmNv3xC5VcfARy7I2aVfEti6ji9lT7Og+4HkjUP2guhNpQ8A1otOAw
         tqJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=hoI94z5kI84xPgJkQKljo9UX8Y+zoWMicDWcSMLp9Lc=;
        b=stQLV4J03JPKf6K4K+d+Hxpz3KpmDM3D5APn9A5SZmHp/pVMLku+14VsHtcx2z++w/
         MhWv5gZlIjgIGtGDybJzO/Iu0n/mTlUoCfk7TcAt3/wKmVEBkp9dXHnm8cTCVNoATe/V
         6ClnRA2RySFfNd/8MTMujOOLHMMrzoehb0QCGpJZsvZkGNM/X6gD1FmUUbz5JAAVf79u
         x6GS1tYIZZuChv3ee3ME6F12FWUL0sNqhMJaul7KebthEgGVMLr7LFE5BVp+tn++5xtw
         IViPPoBztQImaETo+/rdpfe1WO2q0HY78mfhqrKaPQwYAREsbQCuhRN3SDUpXaILY/6Y
         /UAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=InQnywGF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hoI94z5kI84xPgJkQKljo9UX8Y+zoWMicDWcSMLp9Lc=;
        b=JlKMCSkgJMtEPJCURxIFw2J8SeBN3WvAPrgvvFBA1ypaTVCrHPQ9cgukj4Lu/D2SdJ
         /YYsJE7hkGaTBZ8TSbEqcAYgapUxCNW6uGe+5iLFGCVY6HQTkPzM6t8siUEkVz73Cb9w
         qQmvxR4/VyKQE66S6Y3EJbZRA+XxldQbLPJnSL3wntgy3L1hFHINQnGMIFzZlr5Ik62N
         FQAhjxHCwPc9MyPKrNpgwHFt8CEknSSYTMakXz/IGqlPoD/HBko2dXW2AxRQj2UpwkZh
         0/OEDEM3aDd6aqVT0bIqT4Wx8jtySSmBj5hp8eHFuCIj642AOd8q9yN6ZG8TvbSI3n09
         t7pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hoI94z5kI84xPgJkQKljo9UX8Y+zoWMicDWcSMLp9Lc=;
        b=cPpjhfYvwqoNlwr6S+iGD2d+qZFPc1QOzpKy+89+GbOmM+6ptY/naQ2A8EeY87Lb9w
         t4LYz30rLA9M9MQ3DG7p0fvUwEA8802VJYoeduLj/L9G9jjfCL86Qgp81UQvhyy+wO58
         Hd//7wqgVorzm4ZvjQpZRTfkkBf3kcf0oxCdqGnZ+nErwSVkeaKnOa0nPEWQChmJFXRi
         TVw3Je7Td/A8F6bdgk1lRaHhSxC/z2FZ1bUr+rXfuvdL1aimYxZLF4DxZ9Cy3u30VysV
         chyWlOOTzlbhe5fZBTPOJ2o4MnfwNSwz042Rx85bMaoyGJnm8nKwjsu04pRHGR/Ms+a4
         unCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zFTjjBowfNDRfajp4IaS2zEun3MzuLKJ2xyO1X8tBmx78cUuA
	p0N5ubTFF4uxHNlIL4z8rmA=
X-Google-Smtp-Source: ABdhPJzR6HawsQYWC4VN6d/iFWJw2WfhicRSjpctub/qGLPBwndz5wk3D5s7w7Z4m4Mc7ufD3dZzeg==
X-Received: by 2002:a63:c74f:: with SMTP id v15mr528339pgg.143.1600087941931;
        Mon, 14 Sep 2020 05:52:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:79c6:: with SMTP id u189ls2806833pgc.9.gmail; Mon, 14
 Sep 2020 05:52:21 -0700 (PDT)
X-Received: by 2002:a63:6d7:: with SMTP id 206mr11072552pgg.167.1600087941081;
        Mon, 14 Sep 2020 05:52:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600087941; cv=none;
        d=google.com; s=arc-20160816;
        b=kRWL7Q17EdIKXmyIUsrtXAWeqlGOnCz5rsmpz3o9YJ7Ru+vkSCrzWgTsuDCdH/Lf+H
         fNCV1llBi9pNniMaGrjb7dV7hTsvu/xgf4zWyf5428h2ljfMG8JAogphECUYxNyHb/jM
         nolQgK9K8QZ/DDLrtJaHc8fPjn/5MXxjgK2XNFgoyMyyROydldRqwfsdw83fPqFDKeB6
         N/cLTLw198ccF8XUfMp2vj16spjgL9BHwmuygRj7EMTJ1dGtd+StZc1cM0n0GSgfJuEx
         TooTOVx549dJLt6XbulKHCtdkE9agsROcY9EtUqc38z0fshnpoKaJNsOe8m4Bzk+37v/
         J+zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=AANCansO4f2OQwh1V7EIeJev25Fm+ij4Oyg5MtSWhG0=;
        b=aOL/fiN4AlNiSnRHN6J0ldVHo7Gc0iwaZuDnw5ZPr2hicCw9Ra5BqClkU7cldr4j7f
         70VMRfOet0MKbccVgacoT87s8O5nRunS1qKK2Iwr8Jy9f9/5TvpNDKsihtsOfAtdSXYr
         1+DVakLMOrGmfsu25Z/2byYJjnbVGYWij/5hYTt+MXkXw4mZsm13fkoakDA68XmcAPKi
         331J1DbWvIQS+VQySSmJxaeeU1Z1Nh/f3AIg74N2Ecc7W/htv6xwYwWjt0U0CBlgjvmA
         24J9+iiv7FVLPXq6qETOMiiICStlaGGllaw4s9vzoOBDPV6EXWgK3mDtcf0hLJnk+zGg
         6Vng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=InQnywGF;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id s60si1075662pjd.2.2020.09.14.05.52.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 05:52:21 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 08ECq8WY002409
	for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 21:52:08 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 08ECq8WY002409
X-Nifty-SrcIP: [209.85.216.50]
Received: by mail-pj1-f50.google.com with SMTP id jw11so5331846pjb.0
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 05:52:08 -0700 (PDT)
X-Received: by 2002:a17:90b:1211:: with SMTP id gl17mr14246762pjb.87.1600087927887;
 Mon, 14 Sep 2020 05:52:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200910135120.3527468-1-masahiroy@kernel.org> <20200911152225.GB20374@willie-the-truck>
In-Reply-To: <20200911152225.GB20374@willie-the-truck>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 14 Sep 2020 21:51:31 +0900
X-Gmail-Original-Message-ID: <CAK7LNASijUXVmZ+AfuGOnAFnbfUpr3S2ncSxABt4bGF+agxg+A@mail.gmail.com>
Message-ID: <CAK7LNASijUXVmZ+AfuGOnAFnbfUpr3S2ncSxABt4bGF+agxg+A@mail.gmail.com>
Subject: Re: [PATCH 1/4] kbuild: remove cc-option test of -fno-strict-overflow
To: Will Deacon <will@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Ingo Molnar <mingo@redhat.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Vincenzo Frascino <vincenzo.frascino@arm.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=InQnywGF;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi Will,

On Sat, Sep 12, 2020 at 12:22 AM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Sep 10, 2020 at 10:51:17PM +0900, Masahiro Yamada wrote:
> > The minimal compiler versions, GCC 4.9 and Clang 10 support this flag.
> >
> > Here is the godbolt:
> > https://godbolt.org/z/odq8h9
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  Makefile                          | 2 +-
> >  arch/arm64/kernel/vdso32/Makefile | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
>
> This, and the other patch (4/4 -- I didn't see 2 or 3), look good to me.
> Are you taking them via the kbuild tree, or shall I queue them in the arm64
> tree? Please just let me know what you prefer.
>
> Will


I will apply all to the kbuild tree.
Your Ack is appreciated.

Thanks.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASijUXVmZ%2BAfuGOnAFnbfUpr3S2ncSxABt4bGF%2Bagxg%2BA%40mail.gmail.com.
