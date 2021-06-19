Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBTH2WSDAMGQEG2FEU7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4833AD653
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 02:41:49 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id w10-20020aa7954a0000b02902eac51f8aa5sf6617248pfq.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 17:41:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624063308; cv=pass;
        d=google.com; s=arc-20160816;
        b=pT9rCMYoscdobaV5KCWjGFk1Mz6YbJ7c3HMCf/ODEkuEM+4xQDz/sCLkPHlC0qKS5D
         DC820N7Qnzv0oqLHB/VitJoHhj1noSmDhCgakOf0bKNI3zbooEC85lHGm7ITyJtpBPxz
         IB8SlZeBpGwddSSbBFO4NWIpunB4dDdNgXLDXnqQqVtq5pCswIJqZrvNgmUraoIdSx0x
         HHb4uV2EYAe0x+r+ikwCD1aHttW1sql00hYEG8CvTEgjZmEU2ZIQR0dNWZk7nJx9dl8I
         uHtdAjzLTcNZQQPmcgh2tCqdlAxYwIForFmBnHZtbFxok6zaB486hNr1Yn6c950pPzO0
         YI+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=UH8Koy1jUFRMsEB56FrY9uDurW05OcVaQSWgoLechpo=;
        b=wwF6HRdjJiGFMwk4cbj7eIxdPlSCjRkmpDkSdpsWPSG50/8QspUkJZ839IW04PEKz1
         vJWHOEvDKb5OT9/FHEzlPmGJJkxcYWOleBF6uHpoLJNSjW9+ygCOWfsWEbXbN4azWC0z
         ygfRGgs7DVfF6VKDEClB+fYkYinlmffcIcBkP80ulnQMc+oH8PbT5+/W8uonGt+dvUU1
         SSCsb13rs3rZ3HBhHwl9ERHosmgpBi+m5zHom5H9sjO75uS4Bpw90sg8HKdw1JIRe9ko
         BG9+oMaZKi18Y/h2c/EvIkADWMxd+p7cj4j2IAWvA+pCx8IgZnY6knjnSJxyoacdg6gz
         2/kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=daAdGjs2;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UH8Koy1jUFRMsEB56FrY9uDurW05OcVaQSWgoLechpo=;
        b=IVhROhlLTc7IuIk5uCml6FVxov381Ajy6zazKP6SICz+EGngV2JuGFv0C8KVWGJt8T
         IzNttZ8cEHC6b/4E7ap3pm17R/P1P8c+NRskm+FNsZJ8qlctLmwB6k6LLm3azM2ZB/Lr
         wjw3zAaqRzvyfJxiAjwGdeLxDR94P5SIWL/qTps9bRswceV+os9bqOz2oEuCzY9jWuy2
         oMa90p9lSqSR+MIaGzIPS178NxdRqfTYq+ITZiIfDx4i+r7DSbBv8c/387Wj3NiQLNfk
         Pb3ZHeHY0yioXhHzCiH2yrTQq1dAzyptdjIyofEm0t+sQmAJHdFlsPjONqb9uM/USLJD
         IZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UH8Koy1jUFRMsEB56FrY9uDurW05OcVaQSWgoLechpo=;
        b=D6l6BKelqoaNxDj8FzYkNcsdsvNqUBDvILsBfpKcQZR+gIIb4Yy11yA9SqMArb6kql
         yR3h9WRawyxZ3JjkpwzFMeIqldmu1Ikr84JllzYfVp10VU1MC2NUlHz48RaJyN/lmRcP
         2y9Nl8zJ9LTwsm1U06cVlxYMfXLnYedZhl3/YUfs2M8gHoJl9G0LeRruxS3d2OddC6ZH
         MZJIE4JgZ4SFVGworNj+4CAV8/ylPaRsq3VkoQSNzpjRTWBm3o696g/YGcLEKHUALEYU
         QUmMB5zzRQyExAIqjIn5rYr/IaAALdQCPCpOSnlQ8w+X4XIcxXgk+BvOs3dnXdus5Vir
         0jUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332AANooaAZcsJH/VvNi2PLXPREnYBrKSSzivInDOPznM+rSpGs
	dwmVdsshzodn6+bvmMedbZs=
X-Google-Smtp-Source: ABdhPJyw8fl4573CPNHav17uYLmRyOZe/F2iRF83kk96LyykxuKTDBgfEp+7KuKVKs4f9uO8g8lu8g==
X-Received: by 2002:a63:3143:: with SMTP id x64mr10338290pgx.14.1624063308214;
        Fri, 18 Jun 2021 17:41:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:d418:: with SMTP id a24ls1551534pfh.4.gmail; Fri, 18 Jun
 2021 17:41:47 -0700 (PDT)
X-Received: by 2002:a65:5181:: with SMTP id h1mr12538166pgq.330.1624063307621;
        Fri, 18 Jun 2021 17:41:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624063307; cv=none;
        d=google.com; s=arc-20160816;
        b=pa20F0m2Idpm0RczwhjRUWPnmZds7KZ1YoM/a4zfkbD4SAGRtuN/bB+dqItdSUM1iT
         QZ4WUs5rH1SnJLWjt3YoF9lX4I4xPhAQu+o9zCANBKQW02Vgy8lr61J3ZYrIaJfexVM2
         hurabM6Ysi/4aRFGBj+wV+WNoLWB+OX9k5T1CTl3RLz6gNP5wzlEWwWzNx3bpGGU9P2a
         DOUt0oZ0oKlMOlkHa1kEg7VHHgFfju9BKFAJUp0Uax3AnczYq+cCgKoRk4+hQAO/AV6M
         58lP6HZNspik1hG453c1o1Ynlj8B/UsjOI1cFzO7TM0R5J3Pw++qLk2erMmmrh18bx5O
         rutQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=rgoVu9s2Lg12uiAiITbRcgtOyYtubRfPM7v3On3I0M0=;
        b=z6qi0pcD46Q3tEsYrC47hB2hMUNg89osQCamTZwKrDgatUl6AhiPQbkpGAIki7Mo0z
         5YxaMAwGnoLLqoqfWKHE2Y53UabYuXAfUGTdgZBF96QecSHFXNYitWPf7g7SLmKof4iR
         DF2KCeX9+HMk963yameYXarr1LVe1v0Tc7fe/LAczeNxNiWC190OVxUqU18o6leMRTzY
         1vTA3vYPXqGmOWeiXI2be0AnzQ3psi25yXUAhdW1f3H68Qoj42pHrSzSPLuRGb37z/LV
         sGqWgFeoApVBQdq41MowuHZZ4IipA576bMm0n5wJyvbf84homPsfCAHXZn2+Xpc6nNLX
         0nKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=daAdGjs2;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id cq4si94298pjb.3.2021.06.18.17.41.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jun 2021 17:41:47 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 15J0fXNq031716
	for <clang-built-linux@googlegroups.com>; Sat, 19 Jun 2021 09:41:34 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 15J0fXNq031716
X-Nifty-SrcIP: [209.85.215.169]
Received: by mail-pg1-f169.google.com with SMTP id e20so9246851pgg.0
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 17:41:34 -0700 (PDT)
X-Received: by 2002:a63:36c1:: with SMTP id d184mr12522722pga.47.1624063293183;
 Fri, 18 Jun 2021 17:41:33 -0700 (PDT)
MIME-Version: 1.0
References: <YMtib5hKVyNknZt3@osiris> <20210617193139.856957-1-nathan@kernel.org>
 <YMxcdv/1taBevSjP@osiris>
In-Reply-To: <YMxcdv/1taBevSjP@osiris>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 19 Jun 2021 09:40:55 +0900
X-Gmail-Original-Message-ID: <CAK7LNARuSmPCEy-ak0erPrPTgZdGVypBROFhtw+=3spoGoYsyw@mail.gmail.com>
Message-ID: <CAK7LNARuSmPCEy-ak0erPrPTgZdGVypBROFhtw+=3spoGoYsyw@mail.gmail.com>
Subject: Re: [PATCH] scripts/min-tool-version.sh: Raise minimum clang version
 to 13.0.0 for s390
To: Heiko Carstens <hca@linux.ibm.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Vasily Gorbik <gor@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-s390 <linux-s390@vger.kernel.org>,
        Linux-Next Mailing List <linux-next@vger.kernel.org>,
        lkft-triage@lists.linaro.org, Arnd Bergmann <arnd@arndb.de>,
        Stephen Rothwell <sfr@canb.auug.org.au>,
        Naresh Kamboju <naresh.kamboju@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=daAdGjs2;       spf=softfail
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

On Fri, Jun 18, 2021 at 5:42 PM Heiko Carstens <hca@linux.ibm.com> wrote:
>
> On Thu, Jun 17, 2021 at 12:31:40PM -0700, Nathan Chancellor wrote:
> > clang versions prior to the current development version of 13.0.0 cannot
> > compile s390 after commit 3abbdfde5a65 ("s390/bitops: use register pair
> > instead of register asm") and the s390 maintainers do not intend to work
> > around this in the kernel. Codify this in scripts/min-tool-version.sh
> > similar to arm64 with GCC 5.1.0 so that there are no reports of broken
> > builds.
> >
> > Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > ---
> >
> > This should probably go through the s390 tree with Masahiro's ack.

Acked-by: Masahiro Yamada <masahiroy@kernel.org>


> Thank's a lot!
>
> I'll add the below text to the commit message, and apply it internally
> first:
>
> [hca@linux.ibm.com: breaking compatibility with older clang compilers
>  is intended to finally make use of a feature which allows the
>  compiler to allocate even/odd register pairs. This is possible since
>  a very long time with gcc, but only since llvm-project commit
>  d058262b1471 ("[SystemZ] Support i128 inline asm operands.") with
>  clang. Using that feature allows to get rid of error prone register
>  asm statements, of which the above named kernel commit is only the
>  first of a larger not yet complete series]
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YMxcdv/1taBevSjP%40osiris.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARuSmPCEy-ak0erPrPTgZdGVypBROFhtw%2B%3D3spoGoYsyw%40mail.gmail.com.
