Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBLHE2PWAKGQEGMGLWVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 65477C9123
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 20:53:34 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id w1sf403006ioj.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 11:53:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570042413; cv=pass;
        d=google.com; s=arc-20160816;
        b=hm7cBzCW//VWhPF9DVr68DQw+1HY/etp2sNcXQqHX1SOg9/WLVsu6Jt3G7JQ6wuy3q
         LxqGsro+hP9J1HcPKBSJxCyhAKSc2uy0sI+W4oS8SUaNM0PyBg4i62aoSj4GYjMye5Dd
         OhEbg6A2dyYJpH8Z+or+z4YSPFkfz41WK9grz1uW3L5Vx18qlVe1c/JGK2JGM7J8quot
         Xl8ngx44RCED2kbE4nvDx7ZoLHeN1CtuOWjjYBS7Uay01FA+aY7lkmPZpHsJnnJXZMMM
         qAyDgdp6eEzmWGChYIGNKwtsdx1+CzEheWbp7ve7wl+FsoWuyJm33pLj1llvpGZZFCkB
         qaBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=NyqTMpgJnvy2jRap+sT+eUbZLS0h6cnxCSfAUpgGpQo=;
        b=nfamZGg0+uBNWF0MO52g6Dk0S1UM7O8Jj5eTbHfYM5M3Umn47HQUy9T79yXOrZYSgF
         1VVFFpZCIScLNK+88N8dYy2DfBeIBWTu6CQ5j4VCSMsZMjY6xE3NP4NyuTfgGsqtHOSb
         79eIT5HzhW1r1Ac7e8ATTeIjSL3gBkErN3dln2irQa8cTcfI5A3xC5TMWSQkPdJpyJWf
         sCnO08PNkZ9ZMEVgLH5cqGoXF3TF+bRSW2BuYsTbZA9MphJtEXjxu4gPc4rEcRpGnBMN
         wufaZtnkBxHAFbzWmLwG+qIGR2FxCAqLS98W6Qaz/Tnv8qbwB5HHH/pCP5BWKrEw22xz
         rRCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NyqTMpgJnvy2jRap+sT+eUbZLS0h6cnxCSfAUpgGpQo=;
        b=CmbDHIF1PskIDIs2YJ68tsm3VH5OqAN4BRc14c0PhpwVViW54H2u4124Cl2ptzyDnY
         GJLpsIhK0EDvxc9L4Dn4eR+LEwA2S4p2cFZDS7qyb7PkmBvvf+EQgJxehDPs4VSRbGt7
         Q0hlxlVxFtIFqsGZuxPEeXCXAWL2CSrlmA4wUhrbl50QTtvZ5Owy+lfFLv1v+Ou7E/j0
         IeLV5dp8psGt8v8LSlPhRIuvwJ1utsTzy2sEyULdZxpYV45tUDITZUpFrQ8GQGrtqorQ
         v6xefVUgCSkIpNafht1YGB4R0mwvyRgGxM7lfVcDzAyIf+Kctsen8xz1LhoTv7sZXz+L
         wOJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NyqTMpgJnvy2jRap+sT+eUbZLS0h6cnxCSfAUpgGpQo=;
        b=ZXqPmtC9EAPXu86JeMqBu31G9541F6qrc92CbOS1nhpti1BiR55RpTR3qt8r4SL5i3
         HmxZMCip0Cn+SKDNF4RPWcvQbZcd6smUrAQEGrtzyMPP74ZKUssDNBb2JT/Xfd9T8BQM
         fm3oDB7/V8U2URU/t6Ke/H9mehLXiE4sepaYG8CYarRU+85okoZsW01yTkO/z/X5tinq
         z+pbRJ7NWXvI3PTA43loY9eJdFdoMDZQ7BYhWEpgwhgNfLtY5RmqkLI9eDZVfBu2VA2T
         Vh1yRs+ZH5menObt0DIbr2ywdayoVpcYHldXq4Ooz/boOipqQibUJBswe3nICTkWPL1X
         m1nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWOypKbmMmbofGpvjVElyqIjTdlcdTiJYigirSsOzJ29by0lSxI
	NIz4N+X60Y5vJLWpUHxvflQ=
X-Google-Smtp-Source: APXvYqy/Bh4i+u84CkOHttsiOWX+jtcJ+lkldjBJTGqdFipxpdgwPHDm6ewrmhLux2VUez01qx8VKg==
X-Received: by 2002:a92:9e96:: with SMTP id s22mr5384961ilk.306.1570042413101;
        Wed, 02 Oct 2019 11:53:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:88a:: with SMTP id z10ls798255ils.6.gmail; Wed, 02
 Oct 2019 11:53:32 -0700 (PDT)
X-Received: by 2002:a92:5fd7:: with SMTP id i84mr5415378ill.125.1570042412773;
        Wed, 02 Oct 2019 11:53:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570042412; cv=none;
        d=google.com; s=arc-20160816;
        b=QRHQtW00qaOPWtz+T/XqxmnKuYc/fISMtPW0EJl/pOOVQj4hLTc1oNOJY1306ojiId
         8eq1wOi8hMIdxHHXPxfS4MP5Ibw239hTxNpsyYVZ4YvIG2jP+JEz9+U1jnDmr1lSQOeZ
         vLeOOCcATqnp2PKnN/PXtO6gKN/NhYO0CNn5RAv5FB0Nod8T/Rpe9sUTAY9+IjDYJg4A
         8M3yLdg97q0kET7h9LgFi5WjFw6PjepgeRC0Ji0Cmpx9Qda2YRijUWIB4oq8trsfTMyo
         Ny13vZVS7pGGTvBA+4spJYLTHsfH8uaTpy1fAwzRanv2FSkWfiJRR5ZUQayRIGtC8wBn
         BCDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=OgMn8hpZTEDtXKP05G/wCdRDIlvQDI9VA80s3qnQFrQ=;
        b=zvTROV9Vxo4inyn85RkgTvHNZ+pwv59cVQE1HrWGj1zayGxEi4PHb2Rrts2BUFLqh8
         K+lWEM7ZvicTVSKoBt6t6PdvXientY6X/AP+nuvLFdPkBFce45Q+JiVq6Hm2wEAnmv68
         Br5KbcFQT8rNHu4BbXWbvs3CpfJZM0IB42vyL8bQLiE6G5ZUm856KJP9vEwd/+Z2xAAP
         bvo4FJv2iX202PzQs/vbPULpRtX3ebznAHshBIuKcNrgZCANziX/ApWV9ZHDnK+suGov
         1I8tC+pJcLjuRorf30ffjYN0uZ/eX2kmzqoMaOF7h34OAYHI2rWxDl+WnXljk2i43kes
         o1sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com. [209.85.160.196])
        by gmr-mx.google.com with ESMTPS id f11si7754iok.4.2019.10.02.11.53.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 11:53:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) client-ip=209.85.160.196;
Received: by mail-qt1-f196.google.com with SMTP id 3so82145qta.1
        for <clang-built-linux@googlegroups.com>; Wed, 02 Oct 2019 11:53:32 -0700 (PDT)
X-Received: by 2002:ac8:1a2e:: with SMTP id v43mr5699655qtj.204.1570042412182;
 Wed, 02 Oct 2019 11:53:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191002120136.1777161-1-arnd@arndb.de> <CADnq5_MLg=J5dmSGzx8jC=1--d2S3HJzWH3EHhyzT6da5a3wcA@mail.gmail.com>
In-Reply-To: <CADnq5_MLg=J5dmSGzx8jC=1--d2S3HJzWH3EHhyzT6da5a3wcA@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 2 Oct 2019 20:53:16 +0200
Message-ID: <CAK8P3a33yAirHFnZq5GCSJFDM3dpub6vTMyTdpnV429WsP5Eyg@mail.gmail.com>
Subject: Re: [PATCH 0/6] amdgpu build fixes
To: Alex Deucher <alexdeucher@gmail.com>
Cc: Alex Deucher <alexander.deucher@amd.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, LKML <linux-kernel@vger.kernel.org>, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Wed, Oct 2, 2019 at 8:47 PM Alex Deucher <alexdeucher@gmail.com> wrote:
>
> On Wed, Oct 2, 2019 at 8:02 AM Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > Here are a couple of build fixes from my backlog in the randconfig
> > tree. It would be good to get them all into linux-5.4.
> >
> >      Arnd
> >
> > Arnd Bergmann (6):
> >   drm/amdgpu: make pmu support optional, again
> >   drm/amdgpu: hide another #warning
> >   drm/amdgpu: display_mode_vba_21: remove uint typedef
> >   drm/amd/display: fix dcn21 Makefile for clang
> >   [RESEND] drm/amd/display: hide an unused variable
> >   [RESEND] drm/amdgpu: work around llvm bug #42576
>
> I've applied 1-5 and I'll send them for 5.4.  There still seems to be
> some debate about 6.

Awesome, thanks a lot!

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a33yAirHFnZq5GCSJFDM3dpub6vTMyTdpnV429WsP5Eyg%40mail.gmail.com.
