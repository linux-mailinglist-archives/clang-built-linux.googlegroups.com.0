Return-Path: <clang-built-linux+bncBDYJPJO25UGBBUWYY74AKGQEQGQW25A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5EA224310
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 20:22:11 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id s2sf6028817qvn.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 11:22:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595010130; cv=pass;
        d=google.com; s=arc-20160816;
        b=f/UcjFiA1tq47oefkMmgaopEAFZ15KlsABlvbKs5z8jfdUGS7Eo8RRcrG4PnfJLplW
         l1cjXcQ0puCXtkRPj385sB/UIAP7D/ewi6ANguflC/HPWUkugCZzkJ3hefJdCIL46+iq
         zFqvnR3dKr/dcPPP3Lyx8Q8wUNO2uwucm3l0qrASIS6UQ02ophmjPj75yJa1LWg+QJZm
         qA+mylzehNc8J+iLTaLKC9WPs8fe5fzjOuTvHxALsaZTUBiOdeJ++kKBDcZ6w4OSE2tm
         XqR2Xczlz8ydsP6PzIkt/Qnl6ybwrS1zNH7R1OCkIhDVfySanTGqGtG0n/OZ4tuC3i05
         Y//A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=m8rXkuUrsw30HlK4yNqHkB/w8Uoa9Fxaxp723W+0wM0=;
        b=G9g2zAGzbxnNLqzAzX66i6e9xMX5K/gW9iVPK4LsaUpS5IqT106TZsxfpGUdiZiK3C
         rflOGY2TxB8THE1ayGwjbQPW6fxs2vik1Vlzjk7PHtWooYBgg6u/Nc6bhetpxX8jVqYZ
         PbRbU2f8jGry5inoBekB5xqxaRY5RxHaGdVN3RfT2iU1ioXQS+XK0b2fGa+3N7Kn5INw
         qumW6P9FECxNPSvBSvlGnFHOUcglgEzH9RPjUvgOvJCKOSsdTgoY7ezsxHlsPxhfIpwK
         6KmMcn/YfdHkCtb3gjPBlQZVfTSlbQc8W+NbZoUeZV67n6vpm57il4RcOe4iKTuJ2BfM
         OkmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vTEEp198;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m8rXkuUrsw30HlK4yNqHkB/w8Uoa9Fxaxp723W+0wM0=;
        b=Ox8C8/b3g6irexvxzAUiPQlhLSKVGzdZzaMqI3FAqegkX9vRQKCROP9xtvf1ejzDKj
         80XZdSj6ugsDyLHd4nCK8oLZjkK10UN3gQ/5xJs/s3iB0K+geMAVtuGvb9oOQ9JZJBeB
         quE7lySY985B9tJdhJBpaurTg3mxnQp2LqH33He8Vhq91kKB75xf58js3JajbF0hdDzg
         e8YrC6J8ssySgAEHJG0eD1LmUF+Gn7QocjI+m21p2cdykyQhlSdfec++bKhK2EsbBrgw
         gDwCVGWLbLI8wVnsy3BNXqfHm+9cBEaGDb9mKkieKBi5bWt26SbkVLzA+3CvUlZH2Dzd
         v4+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m8rXkuUrsw30HlK4yNqHkB/w8Uoa9Fxaxp723W+0wM0=;
        b=PmtFV5eOZZdrCL01ntKeH1J8GJohzCcUBsfurqwVwH4UWQDSg6v/UzywquFD1e8RZM
         E8sAbCRcDh119bm0aFWR66R6gP4fMMcG29fgubtmtOhMKbtsqSwNeEJMrKz2zv3f5sru
         64FtTRBjYn94la8xjYv/Lg3f3Lh/gaYlccfI7XvCUSQrR8XyUB84X0daejtf9qymhkQM
         lcMiGJGnrFfivrYAzBvNmeZjV1wNjyB+APfEd8Q49sH0HBL/YYLHQ84QYFpUfIfVM7Pf
         1xwhu4XtARwHiXKHh64ZZWTvGPD4PeL6wMEf71v2R8jLixceeHubZawfCayolrXcrx/u
         ZNQw==
X-Gm-Message-State: AOAM533P3BpCXkEMgTwwW5rc0icVtcit4vEhQg60Jv7lDbY/CFVadcat
	+eXLkwUBVD1VWAv7wKqXoAk=
X-Google-Smtp-Source: ABdhPJwrXx1l8JD0gfrfkH95tS0CiRuOQXpfbZQNRBgKf0UgGNN1whTuyHEiS1JHWuvNeu19jjRPnA==
X-Received: by 2002:a05:6214:370:: with SMTP id t16mr10190475qvu.206.1595010130189;
        Fri, 17 Jul 2020 11:22:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1928:: with SMTP id es8ls77780qvb.10.gmail; Fri, 17
 Jul 2020 11:22:10 -0700 (PDT)
X-Received: by 2002:a0c:f281:: with SMTP id k1mr10497881qvl.219.1595010129893;
        Fri, 17 Jul 2020 11:22:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595010129; cv=none;
        d=google.com; s=arc-20160816;
        b=ZavBvmXPLL5FgTOu+dWVuhREGJ3MjPUSRHMRVqQTKxdir5VPGSP0H3IjVa68dsxrqn
         lKJ/a9hBdnYSecLu5nM0SX+zqF6BIaseHJwHWhWag6jXcGWLPF9mJN3gumbFqkbtegju
         XyXoPnEYxJ1Kro74lpwg6LQW7MuGyzQYuSGaKi/p0qNr454hJz3SjQg1S2yLJdntwUWh
         1eMfts5QaH7UN9xR5N8dfS10wV0DXY0foJIr+pI069jeu+0s8dNq05Q80W6C+wnN0V8I
         UWZ6++HVD1w7Yxxw0WN+2zQw3agDGZb/MG8UO3TiAraoqLb/ALShsx7g+N7ZDQjB1jaM
         1eXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AfUbYjtwZR6Xwbe2TgZrgg3Pd24NX9vRLB+HrFscpNU=;
        b=AnruAGyq/yXRDy9UxzbegfoaLEpPveMQ/a8JajH4QVyLnXC3P68042xFKdMSwjL/wb
         0S4LYPug7ScgL2xDOW/OIGYAUcSVeOpJzREVgw/e9VpHGRD+owAL0uhc/2TNxEbsrnIp
         ScX4JB1+JezIrwGaxGDU6E7c2NP4H4DkZ+ObFiWMdmpIhAd8oAp+qriZP3rWY6A99LNm
         0cNl6deYwcHjgZmWXE2UvXv8Kktj/20rIZeEnjk4nK5uQbtCbd+g0/WVBnWkVNF90W83
         ljZ+4Le0PmhmvcgX8WrpDH4WJdbG6HSHhR+F5ZvV2mmDgTMpnj/pQAAPMLQdY+qe28bd
         XR2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vTEEp198;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id i63si389467qkf.2.2020.07.17.11.22.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2020 11:22:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id 72so5802629ple.0
        for <clang-built-linux@googlegroups.com>; Fri, 17 Jul 2020 11:22:09 -0700 (PDT)
X-Received: by 2002:a17:902:d311:: with SMTP id b17mr8570630plc.223.1595010128532;
 Fri, 17 Jul 2020 11:22:08 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000035d7f505aa80a87a@google.com> <CA+icZUX=d80UOx3Htczgs7vAwePJ-xAwjZe7fJYaehm9DD04kw@mail.gmail.com>
In-Reply-To: <CA+icZUX=d80UOx3Htczgs7vAwePJ-xAwjZe7fJYaehm9DD04kw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 17 Jul 2020 11:21:57 -0700
Message-ID: <CAKwvOdm8g1FWKaghThK2SFR_71PpNCT-kWX2iAN-Dz-NQhAE2Q@mail.gmail.com>
Subject: Re: Clang-Built Linux Meeting Notes - July 15, 2020
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Android-LLVM <android-llvm@google.com>, 
	clang linux fellowship <clang-linux-fellowship@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vTEEp198;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Wed, Jul 15, 2020 at 3:46 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Jul 15, 2020 at 10:20 PM ndesaulniers via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > http://go/clang-built-linux-notes
> > Meeting: Hangouts Meet
> >
> > July 15, 2020
>
> Thanks for your report Nick.
>
> > Asm goto regression needs to get cherry picked to new clang-11 branch
>
> Can you point me to  a link?

Yep, sorry, I was in a rush that day and didn't include links. Please
don't hesitate to follow up about them if you're interested.
https://reviews.llvm.org/D83708 is the patch for
https://github.com/ClangBuiltLinux/linux/issues/1085

>
> > Apt.llvm.org may going away
>
> Oops, that's a pity - do you have a link?

I do not.  We notified Tom Stellard at Red Hat that this would break
multiple CI systems (ours, KernelCI) though.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm8g1FWKaghThK2SFR_71PpNCT-kWX2iAN-Dz-NQhAE2Q%40mail.gmail.com.
