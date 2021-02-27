Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF6Q42AQMGQED4LTNPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id B781F326B1A
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Feb 2021 03:01:59 +0100 (CET)
Received: by mail-ej1-x640.google.com with SMTP id 3sf5025935ejx.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 18:01:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614391319; cv=pass;
        d=google.com; s=arc-20160816;
        b=iZ0mOuqAoktrj4vzKW1Mfn7wDT8f50+rQ6W7/Jl5wRP8RldGosdfqJ2mJmY2w1yyca
         YYNEevD37t1Z8bgnUXJSmYrOjcYRcGVk8jAGRplDwV5ZtGTUXZovYKsj7sjvnzx/FCIA
         pBRSMLEsFeWnGJMzlR86URU6jYJ95+xxE3y5J6hflbEQMwobvQHWhB9c8rRb/0IJK+cy
         NCwWauboYom/KHN69A/kQUdVqX9Qjg0ft2h/S572IOvRxfhkFNjT+Dmn5lu6QO1Fukwn
         Fxhp2jEK5cQ7nt6rSbI+Uydlz9XqWiOQ9nicx46GArXaLk3uuRB2xuHh+2g6K9SzDMBW
         J3rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=2MBGpssAmSFKVb+xj9TsvxxV0IjWBKcWTd5jL+L3xPg=;
        b=ZrCJJ1aVLLf5K37+gAv6Y54eLjTPJH3kbOP5Ty8FdCrYTGvVCbwnaSYr+pmBJEymlb
         sF40+2kbssWxr0Suz1lz5/puRCgjQzJPHoTfAd/L4Xzk0B8TXeVFm8eDg/xXHt4rJtMy
         298nH5QvffsjEuIdEu91OueYEpmOXPlls2vpH9pg6W+SRz+lEFSI/Y22LtwoTzvJ0jAp
         SeEHIdua1Kb1BTDwwKvUxDbE2lFqxbVUOAbKwsPXrCqUVJDl/+ogJH005ue+c3giygBV
         j9PaMv5EgSpa48cpNYbxSOLzFVLjGvkahXmzSMxN0zRUGTk2E2a7nBjUIootkEOno4g/
         ZVgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b+iOCm9f;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2MBGpssAmSFKVb+xj9TsvxxV0IjWBKcWTd5jL+L3xPg=;
        b=O/lkwkdzpeIgh0v8qayzznTUSW82jIcq+s8iDS/jYXkZR+TAE5Coutlby5fsNoQwIo
         +zMGyrJLzEBfGLsE6SdKIoDZEEqG2c+mSMBmwoY6ZxLXXNCTsQjCdkR0uWYdm+gwbGkT
         uPf4LZZDO6U1yBH9aEjMV3bXLni4cEe2CFTsdPduMRD+8big5K69Z1CFLX/Al7JPxW3x
         u0VTt950kkN3bgQ5HAEuvcTc7b347Ogd/Fk0USjcy8ZMGkK2XV30uhVcm44ZLrR085VI
         xVqpEyljYbiOeZ4Gq7ke115VCiMcw44yEc+SU73j5c4mtBGmK4DBHEz2lgqC487vXLKV
         L0TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2MBGpssAmSFKVb+xj9TsvxxV0IjWBKcWTd5jL+L3xPg=;
        b=sD+uPfOvSb6l/MdjbIDc2UpUdfRcUndMTWTO0YuGJG2f00tJf/vckDtuw3kpVOMRHB
         jAJmXS9WTE7V6BgvMjv9WsStX9V2QE/z7SfOIVugBk92C2lLhNRdR3rFKJKoGpgIICFP
         ElJfC74cj2iEcGXShmMDMb/cRmBLHrXBw5lJhZouNUOqL0ISFkV2KpFfArsSx51MxNPR
         4Thnvxf/6XpW9ZCSBaFurLtGryrPyqiv+7H8OTc3yJGZQSOHqyTG3dSnBlW368F2gA4V
         whnAsKjTR8/llT78qyvQzuwGTOD3jJKfaaY6M9B/0OgL4p0PdC1/+y36BZsM6/s0XkXR
         27Yg==
X-Gm-Message-State: AOAM530qzaQEhF408a1p2UpljYqyCzqD9zncuYsbicmrcbJcW16HSvqy
	xHUHsseklBcJDsis6D/Vra4=
X-Google-Smtp-Source: ABdhPJzlIUOj+j1GsVFXbzARaIVshO8E/ehTbonX0lbzNUCHrNHysteHcHYct9gZ9sN8AWkewYg+cA==
X-Received: by 2002:a05:6402:1113:: with SMTP id u19mr6227418edv.205.1614391319533;
        Fri, 26 Feb 2021 18:01:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:41a:: with SMTP id d26ls1624635eja.3.gmail; Fri, 26
 Feb 2021 18:01:58 -0800 (PST)
X-Received: by 2002:a17:906:32c5:: with SMTP id k5mr6011871ejk.249.1614391318669;
        Fri, 26 Feb 2021 18:01:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614391318; cv=none;
        d=google.com; s=arc-20160816;
        b=HyyDJARqxMzjJCT9HUVaI7BcGFSI3LW/81yrJYQENg3of14qpxoZuG6R3Uj3O+sW+M
         VGrUcHNoXmqPz0woHr7C/AHjj/UvHGZyp+vC21fj1adtR9Hb6Y7rvnpho8zykGKLuACy
         oCPZ/rI/Tzx4EIt1DSHF+xWf120TLL66r4aBuQkhm6v/55rdXoKcKoUURJ1u3qlnoNdT
         /kpmhJ53QH+wth1u4ddxMKxvFd6WFdnidnpbnl5Y4V9Vfpvd4ORhUh/LGSTiJveRFPNg
         Kb53vB0WTGP8JaeUiFs11IT+KniJi+O+ZbzltnV0nefIPVw5O2qUwKTwG6BLq2byt0H9
         VA7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=RqCMPSTIaUTw8sB4BKImSOKYhP9jn9WuPRr7BHtJSfg=;
        b=dtN8YBTh8EtA62nZwjYEFFfAHuLcUrs3bmf+ksbFor2zubDyiGekXwcvEyTYm9E7rJ
         Bb9yIjSXQ/o1vUNpF8f+PLyNPw2Uhn70wE3wZ9ldrBNZ00YyNfbKaCmJ1vM0HZJy2XXA
         WAizS37D0DD8jK43YoSvCuB5BeJ+VK16bcKr0CfEyo42kRU/Jr7tK8QJUqfyaHyTVSgg
         uEA3pXoR3Q7kz6xMgrF57bSADi9LWnOHlOqDiOI15aRNYRoN2w/c4S43rwXeR3JDHyJ+
         xWKMG6Dxkhg4Vb5hZPsjys4n3eC4n2lRRu8RFcaR3nzlbGmi/ejt1qKrIx8hchUhOGyM
         G/dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=b+iOCm9f;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id jz19si720619ejb.0.2021.02.26.18.01.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 18:01:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id r25so11798017ljk.11
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 18:01:58 -0800 (PST)
X-Received: by 2002:a2e:b88b:: with SMTP id r11mr3123311ljp.495.1614391317801;
 Fri, 26 Feb 2021 18:01:57 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 26 Feb 2021 18:01:46 -0800
Message-ID: <CAKwvOdnN_tnGDieTsLKrv_=8Fz=1Zxf6uS4WjA3G6tgWx+4Vwg@mail.gmail.com>
Subject: food for thought
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Josh Triplett <josh@joshtriplett.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=b+iOCm9f;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

saw these via reddit, worth a read:
https://people.gnome.org/~federico/blog/librsvg-rust-and-non-mainstream-architectures.html
https://www.reddit.com/r/rust/comments/lfysy9/pythons_cryptography_package_introduced_build/gmq9vi8/

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnN_tnGDieTsLKrv_%3D8Fz%3D1Zxf6uS4WjA3G6tgWx%2B4Vwg%40mail.gmail.com.
