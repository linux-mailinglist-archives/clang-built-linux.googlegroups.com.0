Return-Path: <clang-built-linux+bncBCS7XUWOUULBBLUB4KDQMGQE7FVUQHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BB93D17C2
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 22:16:47 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id o74-20020a9f35500000b02902a6696b6acdsf1162245uao.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 13:16:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626898606; cv=pass;
        d=google.com; s=arc-20160816;
        b=XaMt9G9KiZlViIlWMX8KZPgCvcgnPfh76maaqPyp5Z0Q9Y5pFE1+aTcPXz09wCOtwn
         iuiEXhJfyIGDz3kU7jU5Nr2L8rrBHoUQxyIp3JT+Q/fDGqSFDRQ4r/UtrnPu2W8FAbUt
         vEGvs5VRzELq0fX9UyIMgTULua9aIexYOGvcJnJucmEj+eVyX3kZiPsSmifbDTaQUsDg
         xlqv3kInafYZPENuxCv/ySvKu3VZA1/EUHAq/7zkwWGojpRZbkfazLiwtzNHJDw1sEcG
         HZD/TRtzu0BjFf+MIQuJ1AVGHcUebkUP2epidVFaVtFIgR+dIiO95ehEBOEyrdmC8p86
         o1zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=spmSrHqL3JFzlQtfx48wy91gPLrPd/ETLbVNoZVnDcc=;
        b=u6UgF0FBRU0MBzj//Dej+XZ2ios+UMEFAyyKmjKm75J9+uuLELIWs+4kpfO77gbOdi
         yHHUMEFsvirZXQ4iAVFE5APedUv+lp7McfB7aibhRqpJ98xLS3NykXEwJaGJK/YDQY9Z
         sVRmqkhgysc9Xu6z/77jDN9WobcaIIQJBWknB/xIrF8+bXEO8tkI5y6Ie//+tRicDCPi
         2WliFQpzjK3KoWIyg2ztW7Lig0bO1SFcFgNx3twHgeBDCuzCx4B8hg7GfZSPQDafyGdH
         AhT4ysMhhCA6b8zlrk5SVTYZPDAOpurjHtFeSgj3XcGsHHVvHQtcQhVbGXDIeVYgZedf
         vEew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PFk8svli;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=spmSrHqL3JFzlQtfx48wy91gPLrPd/ETLbVNoZVnDcc=;
        b=UqX1a6GYdK/rD5g20eu2I5Qey29RKItHk0BQnLfmSWjjS3IFhO6ecT4hq2FxATK3GK
         pX/ccVPCXyprU5yeXLzIzl/EOCGqnsZUijt1QmxP92aoHfuFOH63B9BUBg3vpscg9ZyO
         GjkHL52SZjroWHTB7QCMSGatHuVxpBm5HczXTBzcCS2cvbp016mL0pNb72nx86k06+BJ
         jdvYGxYCXiruVZkAMTZYGYvtV4e5NWDunRGn68LefWstaBU8doDDSQsqukis5rGFyYPa
         PD3M8RkTq9KWV8T5o1QDKS1omr4ktHvUkwyuDQ0TueFVRHabey58sqW7yImLDk/d5XkG
         D5yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=spmSrHqL3JFzlQtfx48wy91gPLrPd/ETLbVNoZVnDcc=;
        b=efiMYhjPj3s01nx+87Ys7V7LrBRx/i+rH52/hBowZ4M8rlKsB5m3IaA+yImUIc3svT
         P/mbc7uToGYugPFy1q3APq1DiOK/TiE0q1iTtj9Mz42b8yqdKVoXFoeBO48/yW9dho4q
         je/DHE8qTl/J1PsjfrztEm8/EPPnHECFJK/6iK9FbZLUECl22eq5LETIhJvq3AW0hWCu
         jXYZ/2C3K735WY/JZPuKuUWp4/WdmTmnmXmyFnYVr51FiKGvIfHgalGLfwgybJJUlLK8
         Xqh+NBSqymTeDK3+tOS9Y0jEurNU2Xt/MTbCa2ng15ELdX+DOFayzpPaRdmBm8kqQ0EX
         PyeA==
X-Gm-Message-State: AOAM531HsNBB6UpwE3wRu9WZ6K3ZKd0Dgo4MrHge+G+PAqu7LUDqnz/J
	7L/ycrLqDgfDjQmR7ooF344=
X-Google-Smtp-Source: ABdhPJwjNnwvcARmD1UGvuGnC7iA74ZM+jyMJkw8eGCGykwp4RDmeZIcWOwtwhDOGR6ljAE0K/NufQ==
X-Received: by 2002:a05:6102:3711:: with SMTP id s17mr36519986vst.51.1626898606684;
        Wed, 21 Jul 2021 13:16:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3ca2:: with SMTP id a34ls594670uax.0.gmail; Wed, 21 Jul
 2021 13:16:45 -0700 (PDT)
X-Received: by 2002:ab0:758a:: with SMTP id q10mr39067776uap.92.1626898605692;
        Wed, 21 Jul 2021 13:16:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626898605; cv=none;
        d=google.com; s=arc-20160816;
        b=gbfghIcNEEjxhwzAmj64OBpsKdtWXNYUb5QPyNeJgBUGMhlbAp8Ja1znKGpwsK7dKd
         PTEbJ55BYoNrE22aTyC2JEfc4X0Qbsm2hSqBQ6GGfCl3urhpUUsJHl1q1k9gRJJVSJJo
         NvhGzQyX+Ht72pFk8Ps0+yOkqUg4gHta1ByZgTh/gQTouf8HLzxwFPKbKY6i/FEAySY0
         /0/4YEmw134K/22C0rsd2XB8Vujcl3SVsJbNkNRL5SgAEEIImcS2hsZ3tNe0oy0DHj1s
         jFhuNXeU+3kzqUo7GHnQuS6flDCi+e0/zw5nXIcvuYbZqSVrHY9vgJtAA08co4vcKj51
         OOtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9OihMjta02eMQDX8p2x9oOzavPYDUbMRkGp/lFJXp+o=;
        b=fB1xcNvdLuno/BPr2tdv2pdjuEnSB2AOPS75ejTuiJc3D0n0tLIScp5bxcah3q3Yo3
         9zCW6Mq3IQ2y0hrg9LmsasA7/voOlE5cE/Bgio0F8s4Y6eeC9keLA7+FSpnjITsodGpf
         ybvqDYTLI9RavOtihewrMFHlH2ygDnK7qVfgwhschuz4QoRDbhqCSwyVydltiVuv5uPm
         6efnnmHSgAY4T39qQHGgsrrJx08ZOAxHiuGG1UoQYmLp8Nz3FUMbt5WlWtPFZDaQY6RA
         XNJ36xbasjr3noIXrBWF05wfm1aDEpCrHJrgOr3ynZi3vMY5oLM64CwG4TeSqnPU8h4f
         KXKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PFk8svli;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com. [2607:f8b0:4864:20::b36])
        by gmr-mx.google.com with ESMTPS id e123si720405vkb.0.2021.07.21.13.16.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jul 2021 13:16:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36 as permitted sender) client-ip=2607:f8b0:4864:20::b36;
Received: by mail-yb1-xb36.google.com with SMTP id x192so4979511ybe.6
        for <clang-built-linux@googlegroups.com>; Wed, 21 Jul 2021 13:16:45 -0700 (PDT)
X-Received: by 2002:a05:6902:1549:: with SMTP id r9mr10494980ybu.308.1626898605295;
 Wed, 21 Jul 2021 13:16:45 -0700 (PDT)
MIME-Version: 1.0
References: <ff3297f2-fcc3-f5d6-97cf-37430f1f03c0@kernel.org>
In-Reply-To: <ff3297f2-fcc3-f5d6-97cf-37430f1f03c0@kernel.org>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Wed, 21 Jul 2021 13:16:33 -0700
Message-ID: <CAFP8O3+4CH6hEdVuXD4W-JoqQ6_7R6Zb8PWN_FEP17WPUYJWfQ@mail.gmail.com>
Subject: Re: Squeezing More Performance Out Of The Linux Kernel With Clang + LTO
To: Nathan Chancellor <nathan@kernel.org>
Cc: clang-built-linux@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000074b7b305c7a7d9c8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PFk8svli;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::b36
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

--00000000000074b7b305c7a7d9c8
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 21, 2021 at 12:49 PM Nathan Chancellor <nathan@kernel.org>
wrote:

> https://www.phoronix.com/scan.php?page=article&item=clang-lto-kernel&num=1
>
Cool:)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3%2B4CH6hEdVuXD4W-JoqQ6_7R6Zb8PWN_FEP17WPUYJWfQ%40mail.gmail.com.

--00000000000074b7b305c7a7d9c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Jul 21, 2021 at 12:49 PM Nathan C=
hancellor &lt;<a href=3D"mailto:nathan@kernel.org">nathan@kernel.org</a>&gt=
; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><a href=3D"https://www.phoronix.com/scan.php?page=3Dart=
icle&amp;item=3Dclang-lto-kernel&amp;num=3D1" rel=3D"noreferrer" target=3D"=
_blank">https://www.phoronix.com/scan.php?page=3Darticle&amp;item=3Dclang-l=
to-kernel&amp;num=3D1</a><br></blockquote></div><div>Cool:)</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAFP8O3%2B4CH6hEdVuXD4W-JoqQ6_7R6Zb8PWN_FEP17W=
PUYJWfQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAFP8O3%2B4CH6hEdVuXD4W-JoqQ6_7R6=
Zb8PWN_FEP17WPUYJWfQ%40mail.gmail.com</a>.<br />

--00000000000074b7b305c7a7d9c8--
