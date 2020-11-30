Return-Path: <clang-built-linux+bncBCS6NPVSS4JBBLFLSX7AKGQEZM2CNYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8C92C8F1E
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 21:27:25 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id h3sf7413784ljg.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 12:27:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606768044; cv=pass;
        d=google.com; s=arc-20160816;
        b=07c5H91rmpETE0MNyKkinWaujNxiX8eqd5JVAXydZ9bmHxqls5GawE7rimtAcNWMLc
         AXXVecQBIWZhgAxCiOybypJYpqJpaXrccXBekEkMufjPLiuKSvHQ5dczTgvE1GZbR+/n
         d0EpY07fNp0fMr9FjWpSbVK+Lm/KIH+CM/KzWBzQoDLckkky4d9MmxQuqgAGHsZrrxm6
         F4bqlYUxPGXWM1Qn4BqPhxuNiJVAmhjXC9qmvB67Y7U62dcLUjleEsed+91z1IFjj32q
         BCcbloE8ycx0q9igKIGGXECD7ZWxKXepgQL3J/dZ09hTxXTvsW6baGlAkm1dBp3YLtng
         Y2yA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=/bBGa24LqVaqYqT4ZXyncdoWsId++hOw4t4jn9rW5RE=;
        b=arzt1qVGeviX9GqnJoH6ildNNWppGFQj+5S30e+M35Od15SBhK6V+yKpwrHD/ZFcah
         XleGG6xFfjnFVkc54lPpw/sSXfohLS52Qsf0OPZXFgwjQgqoSyN9kz6IEaC50IfXmjA8
         RyIvyfUZplzL2iiELFCCXcPCMndWRAAj+wiSRKK4592HYifNeiu5TQ1nUdzzfdE0aHxa
         2td8HfI315GfP+AW2nH2eG72eU6Q7XO0uOYQ9Hy2pXewe29kEfsRwT7rz1OTjpW+Kxh1
         yQUv5+Kgb2z2r1NBg0DlM/gXK6pN7omffcCQHwLPWpZcMD8mS8x0Ezftz9/2atE3MoaB
         Afqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=tIYZEfER;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=hPR4SYoT;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.70 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/bBGa24LqVaqYqT4ZXyncdoWsId++hOw4t4jn9rW5RE=;
        b=Mrgi/eZVHCscjzEyZv9eAuiX2IjjSHB1Z2ITg51ia3blqm9zJlleoM6Q+3ze4UJwNK
         L3KwfsTsCfxnfVf4hJO/hkLDIlo1Ao+GRRnOpfdnfVHj9H7FZbmbGrVRw1QuSvRzXCrs
         BOR2lHC+Ak54ASvT+XYyWWiyuVeyE5JNyc1vbhdodycirds/gL1Qg1P/q7dD5t5Wx3IO
         iN6LQZYe2Ai3zua5kpDp3vmSeNErAj/l2lqjQTzF+4fS+yTrrUnenHt74ywRCJ6WXjsr
         hTE96x1wWByYac9ZJ0y1STwaBL8JmcflSBKMh3+CdvYCODa+Yb5Iio3KAZlqvSYi+QP9
         Up+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/bBGa24LqVaqYqT4ZXyncdoWsId++hOw4t4jn9rW5RE=;
        b=loksMRwMDmxGMOG3wUc+jJ/NukTH8JHc5MZC+sJk4j107WXWJcJpW+JUrznZ8N5lZj
         tcdN2Qa0wiYy8L+jA8YM8N74QStyIi3Ze3KhF5Q8MedzpEk5rSc9/GKbD/VV0YPu+wJn
         5+/HzmY7TmzgOzimYMkWCJgsIg2o6JS6nppPdbSMRNyEuU3XjpntJ+28Vy+16HOLc68n
         NFJQPIf7rd4hePHVivuaXWkLlM8tz3Ffj63ghf3HyOqGcYhLb3jWcOCDdv9AoNkZcQRo
         CVdRCm4Tw2ijoC8M4HzCRcKQn6t753bm+75jBf0ipMcd2TPU+6LQ2MX+mpA9LuVbmf3c
         qkfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330/hkDiG/MbSFEhliNntFBxMu+xLxmOvIZR39BUHzAwd47s1fu
	nBk490gfu9PIETLqIXJ51Eo=
X-Google-Smtp-Source: ABdhPJxeXH+3KZoz6TiBtXYo1A+G2C5XlfWxCKYZYsm2hr7E7bD4WtKVObxF+BACaY9GXUOTcreObQ==
X-Received: by 2002:ac2:5ede:: with SMTP id d30mr9769349lfq.78.1606768044596;
        Mon, 30 Nov 2020 12:27:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9848:: with SMTP id e8ls2379286ljj.4.gmail; Mon, 30 Nov
 2020 12:27:23 -0800 (PST)
X-Received: by 2002:a2e:9a98:: with SMTP id p24mr10970364lji.418.1606768043471;
        Mon, 30 Nov 2020 12:27:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606768043; cv=none;
        d=google.com; s=arc-20160816;
        b=lmy13/MfcE5Vn1ye8aBM4ptmz2fkYYNhmLxSCTUJXnrW1wmDhMQqql4+xOHSRNO1Pg
         8WL/lKgMQAuwKLl9S7rv3IJGlmiQzdtuB3l5rZD1iqLWx0VEl/vdOPMHobP+9sLOdLg/
         t8e+MHnK4fBCT5bGpXWYjTMsYwxCB7aYWu2UjtE5+kUeJpddYswCHiSBaDhmz47QjsXD
         4vZQS/GDpfYkAyauO9w5VVYWO7D1WYZqSHqVbeE/rqFFtBv9I09foDPvWHAbf1SaaA4R
         QKckZCxe8eCvkKX+iEJff9uUeJYanqBYlIkg82TybcUaQzCbQyX+r9PZoCyTvm0G7woN
         eltQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature:dkim-signature;
        bh=xvDEG5lhKLqrTU5+32GBl6onkhmd/Y+x4JpO1b1+8f0=;
        b=gwH7TJTH/98tWQxG+ZNxEw1/a0DWghiT9YStOjl1c9ZLtCgDieLXWb6/kab7mYx8ik
         v6q2iVpaWT5TCioYLnfqEZwSFYFAxYY7SGqET7zAQHsbfIL3g9Ft4GPFNnUT6aBIiVg6
         zL/G0CxfTvJUFcsX/1OlMIGLGcM/z5WcOuvLYL44vueL8X0IJSAsIW6nGJUcLz+OzMG8
         peP67qcrqpxH4KPbPnkCMHbOnXKqS4+qMgO9K9xFUZfWSOB9bWz7XdrfEcLRCPBR++Wc
         mPACxjRfDK4Xe9wDMvV0WrUw4+A8NnZGh+xVAQsDfgjajmxOj0ZdlzXn+EDZRmcbsi76
         pjtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=tIYZEfER;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=hPR4SYoT;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.70 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-smtp1.pobox.com (pb-smtp1.pobox.com. [64.147.108.70])
        by gmr-mx.google.com with ESMTPS id y21si600658lfl.7.2020.11.30.12.27.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 12:27:23 -0800 (PST)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 64.147.108.70 as permitted sender) client-ip=64.147.108.70;
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id 0C2BE97546;
	Mon, 30 Nov 2020 15:27:22 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id F286C97544;
	Mon, 30 Nov 2020 15:27:21 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 59FA297543;
	Mon, 30 Nov 2020 15:27:21 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id 569602DA09EC;
	Mon, 30 Nov 2020 15:27:20 -0500 (EST)
Date: Mon, 30 Nov 2020 15:27:20 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: Ard Biesheuvel <ardb@kernel.org>, Antony Yu <swpenim@gmail.com>, 
    Russell King <linux@armlinux.org.uk>, 
    Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Nathan Chancellor <natechancellor@gmail.com>, 
    Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] __div64_32(): straighten up inline asm constraints
In-Reply-To: <CAKwvOdn1nCx354hkb15wBDH12aJgbObqPxa_neX5m71axaKRUw@mail.gmail.com>
Message-ID: <44638q0-o866-2o6o-qsp2-q1q528o7o5s9@syhkavp.arg>
References: <pr6q9q72-6n62-236q-s59n-7osq71o285r9@syhkavp.arg> <CAKwvOdn1nCx354hkb15wBDH12aJgbObqPxa_neX5m71axaKRUw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: 72F09B28-334A-11EB-B458-D152C8D8090B-78420484!pb-smtp1.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=tIYZEfER;       dkim=pass
 header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=hPR4SYoT;
       spf=pass (google.com: domain of nico@fluxnic.net designates
 64.147.108.70 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Mon, 30 Nov 2020, Nick Desaulniers wrote:

> On Mon, Nov 30, 2020 at 11:05 AM Nicolas Pitre <nico@fluxnic.net> wrote:
> 
> > +       __rem = __n >> 32;
> >         *n = __res;
> >         return __rem;
> 
> The above 3 statement could be:
> 
> ```
> *n = __res;
> return __n >> 32;
> ```

They could. However the compiler doesn't care, and the extra line makes 
it more obvious that the reminder is the high part of __n. So, 
semantically the extra line has value.

Thanks for the review.


Nicolas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/44638q0-o866-2o6o-qsp2-q1q528o7o5s9%40syhkavp.arg.
