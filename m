Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGWJV6CQMGQEM6SFTUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BAFD38F25F
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 19:38:35 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id z21-20020a1950550000b029021f0e393e89sf6534632lfj.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 May 2021 10:38:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621877914; cv=pass;
        d=google.com; s=arc-20160816;
        b=to1G2ETs2wmXQ0JJJmEvoJbzTrJHYskz4szE8VC/UOZykLFLKjEFWGxmWCWgXSb/KY
         bsWRe564AEx3NkkDWnNsA9nqDMkCV6X7bmukdcr8V7L1KgCdEbI2BsnPmSjxViTgIGnD
         gXbJ/xdBwgUttIAQ7Feedq1aWkYx2z5UiVA75NFuDir3N6g1Mt2ogXKrcy3UaGj6xwIE
         54cxBoxhedWBtg42fpy14vQhyBfnuyjapx59KZOa5Eg2Zr3URQiVQRnavGhe1GfLcgmH
         0HpG2wmKCJxRvIie9vS3NAmQ4odKCDUYaX55zN84159wesxeBbyWDR3T34kcCj4USEED
         VBnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JetqeO3YD+qo81MDHkWUU61hZJmfg/4NT0dEbIroizo=;
        b=mxSCe/aNRIVIFe2xQU891HuEI6IT8ZiZsDtEEIdr0YpfnHlVcixeFtBtUm8JTuTMQM
         kH+GB/6A3bJeRJx7+oHnouiPcPV31Uu84bg1DXE/7l5ZKpa60vHxgHO0WkJhWkJnVeAq
         BZK+oyn5M/+gAciOVHvsk5VfcaqlUH4jPKZOBGAe68gwNDrBj5rCOiN/FDO+GZfZIgiD
         5RaYdoOps2LOVpQM7E2XQTdQkZPYFtU2QRvRVYM9bjOeIt9FTEXp52b4nJTJRZN6pmKD
         RLNiQ/CxPUwe4ei7tfhcz1ZbdJHjcs2uB+J/bFs/Da9rIvKMi4uZMAv570B9aI0apKRo
         8Zzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p3dvJJgw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JetqeO3YD+qo81MDHkWUU61hZJmfg/4NT0dEbIroizo=;
        b=MIdOvonYk8C03mfBRjgGjrdBI4ZenQTiEB9jN9qbp0Fo33k7EgTwgV/RtF8fWzuSuf
         S4rY0sCZC/6UG7lIV7g2IVEzRw5imw16YTWS5aL4z/DgvK9MaV9XDJz+80py7Zf8o7sq
         hOWQHJgcivnEN9XuzQjy46z2MxWqZOx4UwG5oFx1Snn+T/gBFj4T6knbgcbVgddabrsf
         PVKDOxbtyui07KTr8Eo2KtMSyDk2MSDG6JUbHchOOWFZo3RIvX+svR3qujQZG3kQ4RP7
         lBUoi6WID5KdWwUb//RqNzKun/oEHPW0y5y0q6DGZ652soSDBEAxVyZhuaAgag3OtIf1
         e5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JetqeO3YD+qo81MDHkWUU61hZJmfg/4NT0dEbIroizo=;
        b=kuZZ67zzN7jgLdIkFBCzuEkjWEJUQ76UIFyBzwZWp9khs03/zYIEQJDsJRY7iiYEFg
         uY7OAWE6ac15cpRVpIowsj/HwxxS9PJCLDL7fXsbzIWiwsFgd5thXrrYzCVjKJIc8HEk
         0KUkaKbAcI/sAnA9MPHlMIrZrH6LvybSPw6U9XoGSUiq0M5p6a1VQU+VfdQjbkjtCJFL
         sHdfNbl6/mKOyzL1nBt3jCo7l1nu1mKiR/m9wHwEJq/myoMH0U4PPpSaywlgRrFXgjeQ
         pQmk6mTyR+1wlSfzF89gVVkXTlUKTm5JkKTI2hhUhL8RSIq3zmdvIfozLvDy4pdTJOQj
         DIrw==
X-Gm-Message-State: AOAM530/NG/M6/fx5+asE1pDkhyDJfYK6cosRgm5/U8uhAorCe80aki2
	R3lJSbdDWxhiCBDIVwVyzIw=
X-Google-Smtp-Source: ABdhPJzbmBDPTc2lVRLimqlPgBbTrpwkiKS/vHczrO7FLiu0rDddfMCfQL9IJ5oy9uEAm9Wm8+jl7w==
X-Received: by 2002:ac2:5289:: with SMTP id q9mr10951227lfm.141.1621877914850;
        Mon, 24 May 2021 10:38:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1409:: with SMTP id u9ls2602171lje.1.gmail; Mon, 24
 May 2021 10:38:33 -0700 (PDT)
X-Received: by 2002:a2e:a489:: with SMTP id h9mr18244915lji.21.1621877913839;
        Mon, 24 May 2021 10:38:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621877913; cv=none;
        d=google.com; s=arc-20160816;
        b=RQcNIULhTgHcU4rWw2Re19VAmP6SN/r4MRMuQx80og9tcvCe0DKrIZ4eXljc8HTGyZ
         yh4j/4X1jWbcrv2Q4/M0cEfdZwUa/ufc/58Af29P04T9cLDz/HTJg9+X7JJEJd0opqsm
         QTM4Ph77167fPp+21aoKMrZnDp2QDrzLJRujy6u00uKJ3MvUfu78NNh1acaWcODL+z52
         fYjlIs45f+zzTiZx9ZQ8RaNkGl5AKv8jMnXLrYfZjOYg/uYiySfiGrOHEpeVjL4SLWsZ
         Mj0lZg9i3JFg0mvZ50NWGrvNhugHo9uZGZcDAxg82RRysgWi+xyDultRdWrilyvSXNes
         utqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=adC1lcKjjnjA6RZxe+GDxcGHmTDZhNUVrre0LjFNyy8=;
        b=0AaT0x/lETKo1U2eauR2r8Kr+8O+j4qClmi4DFNQTurLdKslQd2LzLoEa96gWs89fh
         L//QkY/uzR1UNyqkWiw/KKx652I5VO3xjqeVGbmb2yD26O0V1RdKgewPxZxqmcW60L1s
         otE7QhFVOZbU5swV1UHR4w/Wp0BRyjSjBqzdvFTAFkILXgy69tlBc3/3mc7z2KYOOw2z
         S6Aec2MzvANs8L4a29dM6dYTJWk2fbBR/wd0Aan1u5tk3bs2UCC2m7ePql8fIe/5xq0W
         pT+Zg1U32G9aYdH1kEYBE5uRBwrrNAeAlanaz45LIupNRyu9l/1nQZvWD/amWWF4g+jT
         HwMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p3dvJJgw;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com. [2a00:1450:4864:20::22c])
        by gmr-mx.google.com with ESMTPS id o11si654763lfk.12.2021.05.24.10.38.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 May 2021 10:38:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c as permitted sender) client-ip=2a00:1450:4864:20::22c;
Received: by mail-lj1-x22c.google.com with SMTP id e11so34614644ljn.13
        for <clang-built-linux@googlegroups.com>; Mon, 24 May 2021 10:38:33 -0700 (PDT)
X-Received: by 2002:a2e:b6d2:: with SMTP id m18mr16929758ljo.233.1621877913432;
 Mon, 24 May 2021 10:38:33 -0700 (PDT)
MIME-Version: 1.0
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
In-Reply-To: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 24 May 2021 10:38:22 -0700
Message-ID: <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
Subject: Re: #KCIDB engagement report
To: Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>
Cc: "automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>, kernelci@groups.io, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Vishal Bhoj <vishal.bhoj@linaro.org>, 
	Antonio Terceiro <antonio.terceiro@linaro.org>, Remi Duraffort <remi.duraffort@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=p3dvJJgw;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22c
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

On Mon, May 24, 2021 at 12:50 AM Nikolai Kondrashov
<Nikolai.Kondrashov@redhat.com> wrote:
>
> Hi everyone,
>
> Below is the monthly report on KCIDB* engagement. It lists various CI systems
> and their status of engagement with KCIDB, and once we get to that, will list
> developer engagement.
>
> Lines with updates are marked with "!".
>
> Not much news this time, as I had to tend to CKI matters, and had a couple
> weeks of vacation. I still have to tie some loose CKI ends before I return to
> working on a new KCIDB release and reaching developers with e-mail
> notifications.
>
> However, I did try to contact Huawei's Compass CI with an invitation for
> cooperation, but got no response so far.
>
>      KernelCI native
>          Sending (a lot of) production build and test results.
>          https://staging.kernelci.org:3000/?var-origin=kernelci
>
>      Red Hat CKI
>          Sending production results.
>          https://staging.kernelci.org:3000/?var-origin=redhat
>
>      Google Syzbot
>          Sending a subset of production results (failures only).
>          https://staging.kernelci.org:3000/?var-origin=syzbot
>
>      ARM
>          Sending production results.
>          Full commit hashes are currently not available, are spoofed, and don't
>          match the ones reported by others. To be fixed soon.
>          https://staging.kernelci.org:3000/?var-origin=arm
>
>      Sony Fuego
>          Internal design in progress.
>
>      Gentoo GKernelCI
>          Sending production results.
>          Only builds (a few architectures), no configs, no logs, and no tests
>          for now, but working on growing contributions.
>          https://staging.kernelci.org:3000/?var-origin=gkernelci
>
>      Intel 0day
>          Initial conversation concluded, general interest expressed,
>          no contact since.
>
>      Linaro
>          Sending (a lot of) Tuxsuite build results to "production" KCIDB.
>          https://staging.kernelci.org:3000/?var-origin=tuxsuite

Hi Nikolai,
It's nice to see our results getting collected; it looks for a given
tree I can even see the build results of different compilers.

For example, here's a recent run of mainline:
https://kcidb.kernelci.org/d/revision/revision?orgId=1&var-dataset=kernelci04&var-id=c4681547bcce777daf576925a966ffa824edd09d

One thing we need to be able to quickly triage when we see a build
failure with one toolchain is "is this toolchain specific or not?"  I
figure KCIDB has the data; is there a way to surface the results of
such a query quickly?  If not, that would really help us.

>
>      TuxML
>          Initial contact in response to a report.
>          There's a plan to approach us and start work in the coming months.
>
>      Yocto Project
>          Initial contact in response to a report.
>          Would like to start sending build and test results, particularly for
>          older kernels. Would like to separate upstream commits from project
>          patches first: https://bugzilla.yoctoproject.org/show_bug.cgi?id=14196
>
> !   Huawei Compass CI
> !       Sent a message to Fengguang Wu, who was presenting it at LVC 2021.
> !       No response so far.
>
> Please respond with corrections or suggestions of other CI systems to contact.
>
> Nick
>
> *KCIDB is an effort to unify Linux Kernel CI reporting, maintained by Linux
>   Foundation's KernelCI project:
>   https://foundation.kernelci.org/blog/2020/08/21/introducing-common-reporting/
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Groups.io Links: You receive all messages sent to this group.
> View/Reply Online (#1124): https://groups.io/g/kernelci/message/1124
> Mute This Topic: https://groups.io/mt/83045962/1813933
> Mute #kcidb:https://groups.io/g/kernelci/mutehashtag/kcidb
> Group Owner: kernelci+owner@groups.io
> Unsubscribe: https://groups.io/g/kernelci/unsub [ndesaulniers@google.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g%40mail.gmail.com.
