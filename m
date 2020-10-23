Return-Path: <clang-built-linux+bncBC7ZLSUWVAHRBT47ZX6AKGQEC4FSPPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63e.google.com (mail-ej1-x63e.google.com [IPv6:2a00:1450:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A99297913
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 23:49:04 +0200 (CEST)
Received: by mail-ej1-x63e.google.com with SMTP id d13sf1077810ejz.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 14:49:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603489744; cv=pass;
        d=google.com; s=arc-20160816;
        b=wRksoIQ9yvsM8Vo9xbQ/38pSTOZFhAHW1ljT9RqfVy5xroGZlROxK/1AGnl5q+/tia
         NlmgE8cxORihxRI5Cz6pEliwqSicQcMLo3PkpJq8VvUZYXzYE+zO1/KTJywNVcU5dmUb
         BONRnQAVByHVLn1a4vm3aiiMk+P9ApIYLfhLPRYA8x3iBSDGEVnzpJD6a4HqxJbksj8x
         eLGRo9Je0WlhqiYPHnBfFAsP7Rb0y3ZIrTpp6Ckt+7kMHVr5JmLTjoQyKt5PAjalCgzP
         r7n5FV9R0XMYRSiShzDAPGhAhS71hx6ohbM4IiADYyFndBxsLY08yrT/fxQnuEpGuOSm
         4njQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=Kvy0VyUriBvMTg2xmBcxZtwQBbSn6pER4WcvlynX/6k=;
        b=nelhxM715byAgiQkP0aVIy49eKQHLmt4gEMSLW6qW9ahwNCFC8C+/uCDwqY715l+NV
         JOtqElVEfjh2B2d25HYausvGJMZjkE/bw/EV1is8cgv/ztcNjU79p4xTbjEtBttAL1Pi
         5bD34KVPiR7+ueRKzoXAoAPMK0w0hZvrdLuiHNv6Bqs+GvSFMLCnjeVYY1M1NZPNtU6J
         eC6hZlbUgodyI/nMKDIRcdeezlkgb1lPLdx3teHvxnABPaupUKD+36GbEi/tPKepIuAN
         Se0iebEkq8Zy4tfIzJmovq+BkaDq5eVz+3iqi3MFZXzfKmIKSn1/pRcJ+WwbRNqK161V
         vwKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mozilla.com header.s=google header.b=VZw1DXKI;
       spf=pass (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sylvestre@mozilla.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mozilla.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kvy0VyUriBvMTg2xmBcxZtwQBbSn6pER4WcvlynX/6k=;
        b=psGEQ8RbpbZJPcHPcTXk4UWiHv9swfW+z3ArZ7ed22GVrIIwqpkiXOq0uwhCUqMLIv
         3TI0CzZRaIk1OayRncdUrtnCnC5949DpgAiA4T/1dzAKsqoywKA3J8RaCTjke6fg4ut1
         6mej+NYT1/zuGYiS2eVkeGYEg0PeV4299Zz5VMZdTLURgMnsGXAEpdUN+kkZ9uyJCq37
         IgRTUERlPFcpOY1Pk1a39c10SdYdL2ya7lTH5rc9rcdBKhSUKsw2Hu8cnoYT6dRVfEUD
         WD7CVcp7WD4646mZFwYeobrFliJwKINfUAEJk/Q7XStS7uW90xaZF0KtnZWrNGWxURgn
         03og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kvy0VyUriBvMTg2xmBcxZtwQBbSn6pER4WcvlynX/6k=;
        b=lTBnGKDj7mQHGH1siisE8M8v7g8l72QkoIB2Qfm+e+yEw7q2++g3pUykPMIB7d7SWr
         eZJ8rgOzIiffHS/SB0RAykv9LlHGoNlWMqnHPfH0RGGOP6Icp3LBqAy8BGw0enCuwxEm
         GBQk86OIVZkfOPx3nLViMvuUKBIKcPV50MuUjCECntUZnvb4JfhyJb1QQxHd8F7N5/Hg
         epBOgHCRg6MVp/UopAACRGNHElEZ3dQ25dxmw9y4hFjnGJkSUjKPnCTGHHE8Llow2vXK
         0IRbv+3Y8e647eeP8WZ8nbxDPjZkR1x4EYtbKikk1HORoCfD68yGziYeSn9uUTY2eYIV
         /JaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315PdCoWDublmp0hOsApDWM0KrXgG+PWtZBAVBzmqe2usySQxBc
	c2lofkXpUmKKDpv3vcSppB8=
X-Google-Smtp-Source: ABdhPJxwlDQ8JF/ZXaxJFNsYo3bU8vduxBR4QklVt8DmG+QSnPABZkQjKIOu5UWmnVszMPOjDBo9HA==
X-Received: by 2002:a05:6402:945:: with SMTP id h5mr4434974edz.6.1603489743817;
        Fri, 23 Oct 2020 14:49:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1d3c:: with SMTP id dh28ls3135587edb.0.gmail; Fri,
 23 Oct 2020 14:49:02 -0700 (PDT)
X-Received: by 2002:a05:6402:6d8:: with SMTP id n24mr4375046edy.168.1603489742848;
        Fri, 23 Oct 2020 14:49:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603489742; cv=none;
        d=google.com; s=arc-20160816;
        b=NSem/N9m016jT+l6CxSpcsO2EqclL/rxXNyGdM37LIYfW0eagAFQ+VMkg2SW0rEB31
         xiD1LeyFqrYml5X8v0Uc8Q5AlM6xu93qZRuc8/H5VnvaTzP2cIf8tnsVC7849NSIOIvR
         GXG4BxmnqFs/UGYD1nek1d2FFuvaEPr+h63lvK1qOmy4U7LzOGdxjIuhr5aQ+7icu7r4
         zJDC/Q+JE7FwiGORmnzdlY+bUrcOSE5evsR4Uy1I50Gycljj+qvj2Ib0QrvwQJRqKY+y
         nAKb6kH7JFIvDOxX05fgeW5RWPXtwcIzB5UpSZ7YvRDbhV8HznZrmW5bE3YlQekPkulJ
         jGrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=5JKrVMxf24rHm//dk1Z7Ux9O7vSp+PfhPlmQ3Qr251Y=;
        b=KF28Z4XJjasv2DPu3LAjHw5ZgSpLGFUIg8Rxwv8XNfl1wSjqxR2ZOlaszo2VVFwqhv
         xFLh7XzkTtYxGOj6kNDSxIciCBXOectcsI7lFpN4xha01qT6y6IvJMSWHTLEdFnTjJBm
         kinsarSux2XfsV7dtq35G4PbLKhrYjtgXDsbzTs16+Caxnk0XC+bK5IGojfrXycgoLrY
         Uj4wSGSUVpqNPMxa9IyC9ZWjqPqyek76F68GqXp4ocbmCyPB6DnJqhzwYZ9MZ4CoABIM
         DEpVPsE1eXxx4dlbeScYJKIr+6uBWkIo1K5nFmXYOajBkMJUg3cusaenMBJnK6YESMR8
         fXbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mozilla.com header.s=google header.b=VZw1DXKI;
       spf=pass (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sylvestre@mozilla.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=mozilla.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id ba3si92503edb.2.2020.10.23.14.49.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 14:49:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id s9so4082334wro.8
        for <clang-built-linux@googlegroups.com>; Fri, 23 Oct 2020 14:49:02 -0700 (PDT)
X-Received: by 2002:adf:e445:: with SMTP id t5mr4423475wrm.387.1603489742004;
        Fri, 23 Oct 2020 14:49:02 -0700 (PDT)
Received: from [192.168.86.224] ([88.126.111.87])
        by smtp.gmail.com with UTF8SMTPSA id e7sm5630501wrm.6.2020.10.23.14.49.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 14:49:01 -0700 (PDT)
Subject: Re: clang-12 debian image
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
References: <CAKwvOdkJc5xp=k_gHNtoY4Es20vj557B4DCJ2Qinvx=ojkHPPQ@mail.gmail.com>
 <eb3142ad-61a8-8760-c808-58bdce0a6561@mozilla.com>
 <CAKwvOd=9BPpPy1yHqChhj8dGGVrq8-kG7z5nz9DjA7CV_wpN8A@mail.gmail.com>
From: Sylvestre Ledru <sylvestre@mozilla.com>
Message-ID: <6d5c300b-edc2-9a04-b7d4-a538c2e35054@mozilla.com>
Date: Fri, 23 Oct 2020 23:49:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:82.0) Gecko/20100101
 Thunderbird/82.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=9BPpPy1yHqChhj8dGGVrq8-kG7z5nz9DjA7CV_wpN8A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: fr
X-Original-Sender: sylvestre@mozilla.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mozilla.com header.s=google header.b=VZw1DXKI;       spf=pass
 (google.com: domain of sylvestre@mozilla.com designates 2a00:1450:4864:20::443
 as permitted sender) smtp.mailfrom=sylvestre@mozilla.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=mozilla.com
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


Le 23/10/2020 =C3=A0 23:38, Nick Desaulniers a =C3=A9crit=C2=A0:
> On Fri, Oct 23, 2020 at 1:48 PM Sylvestre Ledru <sylvestre@mozilla.com> w=
rote:
>> Hello,
>>
>> Le 23/10/2020 =C3=A0 20:27, Nick Desaulniers a =C3=A9crit :
>>> Hi Sylvestre,
>>> I noticed our CI has been red a few days in a row; I had reported an
>>> issue in upstream LLVM that got reverted, but I think our clang-12
>>> images stopped updating?
>>>
>>> Our latest CI run
>>> (https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jo=
bs/404327921)
>>> show version:
>>> Ubuntu clang version
>>> 12.0.0-++20201018052613+ce619f645f5-1~exp1~20201018153253.195
>>>
>>> which looks like 2020 10 18, ~5 days ago.  From the thread with
>>> KernelCI folks, it looks like the problem there was with clang-11.  Is
>>> a similar issue affecting the clang-12 builds?
>> Yeah, it was broken because of a regression :
>>
>> https://reviews.llvm.org/D88922#2331869
>>
>> the revert of:
>> https://reviews.llvm.org/D89041
>> fixed the regression.
> Oh, upstream stopped building?
For the configuration that I am building, yeah. But it is a complex matrix,
I am using shared libraries, multiple platforms, with old version of=20
gcc, etc.

so, I am sometimes facing bugs that are rarely identified.

Example: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D972317

>>> Is there anything more we can be doing to help maintain these builds
>>> with you, beyond being a canary in the coal mine?
>> Having an official job with the same option could help.
> Well we only hire Mozillians (/s). Oh, wait, you are also a Mozillian!
>   I'll see what I can do. ;)

ah ah, I was talking about buildbot :p


>> Besides that, there isn't any magic, having help to monitor the jenkins
>> jobs and
>> fix issues (or fill bugs) is the way to go.
> If you would be so kind as to point me to the Jenkins, I can
> investigate and chase these in the future without bothering you.

https://llvm-jenkins.debian.net/ :)

S

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/6d5c300b-edc2-9a04-b7d4-a538c2e35054%40mozilla.com.
