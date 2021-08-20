Return-Path: <clang-built-linux+bncBAABBJFI76EAMGQEFGGX7DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 058093F313D
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 18:11:18 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id z15-20020a4a870f000000b0028c0cd3ec6csf4558866ooh.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 09:11:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629475876; cv=pass;
        d=google.com; s=arc-20160816;
        b=xePzSh2fFMO7M6a1gnHHioAodunVlWskv1fhNLSgzwNrmMjAGy7B8c2Zzo58fCro8A
         qzPE5fFPMSIavQgcVOOUkhvBnEt44b658lRg0RVssQe7GaDLQ73u+t+SbKphZm/WMZVq
         tPISW3hGAy308lVYmQIyDkWmyW0M9ErZJdsxtRVrjSz3hxdMmNbQF3eICOPy5s/J7D2R
         Q/gSztFD/D2gcnMM9Vn4SBRJ0HsKVtTpnoUNHeMw2v4+Q04imh/peK9sbDXLpUeZczAk
         JxodndLRbADZ4M2Hc3j0QEupUAUAXCV5qa5kdSvRRB/z8RrlKNVM/7nUtrSEQavPWFrk
         2Sow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CH7l8BPXnyDZDKgTwFhwv5Vrg1CwhkIRHgXdafZF1Os=;
        b=akTy1onNcFaKhVpJNi9XkpNYuCAUWuKZkVsIZaPNkLJhE22bbgKUds0v1DjYSKByeA
         Y6rVdFWbQBHJiZEYZPRPmaIwp18Gfe/VxRfNT8lXLcCzoOR9FsA1S5LIDmCvz3M3UvdU
         zkZXGAOseW3mOkbCHHAspbbdq9I+TPRQ+YRo2WSG9503EkP4xTLVbjKOLbDIX+Ip9iqc
         vPNumdjamWuIC8ttE+0SGK5xEv+ou+iMkjsXA98STSYFyZgKywFRklNPC5K7vr7kc8rh
         173Hzh4CF4x8xYNkRWW71VZ3QAz4jG8SWalOiF51YqsKBTwu1lBpT4jlT9tQRdWsQpoz
         XaCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Cm8q6m2P;
       spf=pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jikos@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CH7l8BPXnyDZDKgTwFhwv5Vrg1CwhkIRHgXdafZF1Os=;
        b=mFE3jbjqJ8UNWD6/O02I4be54wAxYYrVxA1nWMffss8C71bVL/vhvoPLFIXI8OSrN6
         Bo+bqlCQA1mYzVh47FcgDCSct92vmkW1cMXr7THswQXz6Lamziob4YLnEqyAIfE4fGPQ
         IaVHshlLIv7hJ4JgS/+mLhJZu9C2LSyB1bbefNxh8uB8E+7/UAYVkrrzwMJa46QR2nWX
         3pgql+go9g0VQ2yMBhMm/UDf5fVQYPWxtDuk4M9VA0sCfgGY7koGd4/Qxi55d/UecWb1
         fzGLesMW2MBN7zjBSivbsX+rIR6Ai9auNLLnatvr9zP1s/Hk3bNJ5CL60F7Zae0wZfzN
         wtbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CH7l8BPXnyDZDKgTwFhwv5Vrg1CwhkIRHgXdafZF1Os=;
        b=L/8oKKUSgIfyQBgO1IvinOYE87nw6Bhx+V3vFY9PE981bNPQ37wpYy5Z1mPq2B6VTj
         1TfWBoa41oGBPQjTsVsyhgZJybLmpcOqChH+uKYz7+GXxZ/Lijml04nuconFuoXct8z5
         ZB5TuxAxUtKvQRWYR+T1UlNoYZopUWB1tkMBs2lF6mMuDYF0JFrHzZmcw8itjvAhg4UM
         LVhB3bPU645KcYR+lXhTmbz5IlQBkpJ30E/jFmdiWX+H2PMgEs33Vpg1x4F61xqddhOG
         2hDDigLkhgi9dJWd4lRG8ceigWWju11k/LD0BFdaqE07M0PrY4USCykIhB1/1jrnEncO
         7wbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530meu9QkD/6M/ONX5L5LAD8WssdcYhRw7ZjYdv4G7bb6ocKXn0t
	BM2fBdNkAvghAhSdU2HItyk=
X-Google-Smtp-Source: ABdhPJzKAsGRi5Y77biq+vSN3fsdezbSjCtxfiTqxmzJ2/e6RtFQig0YYYwyeFDcpAblwZoaqHg6bg==
X-Received: by 2002:a05:6830:40b4:: with SMTP id x52mr17472765ott.163.1629475876745;
        Fri, 20 Aug 2021 09:11:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1208:: with SMTP id 8ls1308599ois.10.gmail; Fri, 20 Aug
 2021 09:11:16 -0700 (PDT)
X-Received: by 2002:aca:210d:: with SMTP id 13mr3552555oiz.47.1629475876474;
        Fri, 20 Aug 2021 09:11:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629475876; cv=none;
        d=google.com; s=arc-20160816;
        b=gegQMYBE0G6XdCa+uYDDYuvanH1wLikGX1U4nXscwNPXDoWgzZPhhGu+fZi8WGB/6I
         Gcrz/6ihYOOQMQkCBg0FDUZGdgofmqjMqaF1t8Rf1huGM33qgPFdEnFMR1ePBCsQyNHX
         yy6H4tLNG5sXqes0F2pDMur5WNkk7URZfRvnBxtfesf4H3HbMyEEO4CO6tAUJG715NBQ
         WnYWNGf6+Tz0TY4h+mGsteB4JoVSpB3XtzhdVbtJcwV7JgTxIhJaQY59yIssNpm62kKr
         miCLMMcNmhi2QY0xxc8M7+8Vye9ETHWQHw6GBM/dpGws0TvG0GJufFXE4lxxq5l3yWS5
         vizw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:dkim-signature;
        bh=ivZ0npwiVLP5FZfPbRUEVLDvlC4EGBrzEgQzhHqnSwY=;
        b=XK4/TvZOfj8E0f/fpSH7Uw9AlC28rP9sb9derkxKSjxAFXbsFYtHXnsxvI0kSo55F4
         FCqs2DSeef7K4XKcTXfRLkQivLK553wjB+wtsx5rbVHXWBX4gwHspowZsFoPtmF7ZKKh
         FSKqaEwSQUChRfzRaEPUHFrJRRuKsKWOTmkZrIrSi4ZZABsKgUl69QQrMzI4ekqMWtkT
         bItNIL2DIAT24eXjOiCpzVQHwb46nL01lZbQAxokXUN6JKT+xSChQNHeiFMDfHUvkzdI
         60iw2J+WUoFyhj1sFlUA9C/toZVuorDPhYJjFFT2uW/MWQNwudNP36rc2JnsPKyxDjO8
         EgpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Cm8q6m2P;
       spf=pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=jikos@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a7si350920otv.5.2021.08.20.09.11.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Aug 2021 09:11:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D147E61244;
	Fri, 20 Aug 2021 16:11:12 +0000 (UTC)
Date: Fri, 20 Aug 2021 18:11:10 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Kees Cook <keescook@chromium.org>
cc: LKML <linux-kernel@vger.kernel.org>, 
    Stefan Achatz <erazor_de@users.sourceforge.net>, 
    Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
    linux-input <linux-input@vger.kernel.org>, 
    "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Andrew Morton <akpm@linux-foundation.org>, 
    linux-wireless <linux-wireless@vger.kernel.org>, 
    Network Development <netdev@vger.kernel.org>, 
    Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
    linux-staging@lists.linux.dev, linux-block <linux-block@vger.kernel.org>, 
    linux-kbuild <linux-kbuild@vger.kernel.org>, 
    clang-built-linux <clang-built-linux@googlegroups.com>, 
    Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
    linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 55/63] HID: roccat: Use struct_group() to zero
 kone_mouse_event
In-Reply-To: <202108200857.FA4AA13@keescook>
Message-ID: <nycvar.YFH.7.76.2108201810560.15313@cbobk.fhfr.pm>
References: <20210818060533.3569517-1-keescook@chromium.org> <20210818060533.3569517-56-keescook@chromium.org> <nycvar.YFH.7.76.2108201501510.15313@cbobk.fhfr.pm> <CAJr-aD=6-g7VRw2Hw0dhs+RrtA=Tago5r6Dukfw_gGPB0YYKOQ@mail.gmail.com>
 <nycvar.YFH.7.76.2108201725360.15313@cbobk.fhfr.pm> <202108200857.FA4AA13@keescook>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jikos@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Cm8q6m2P;       spf=pass
 (google.com: domain of jikos@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=jikos@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 20 Aug 2021, Kees Cook wrote:

> > > > > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > > > > field bounds checking for memset(), avoid intentionally writing across
> > > > > neighboring fields.
> > > > >
> > > > > Add struct_group() to mark region of struct kone_mouse_event that should
> > > > > be initialized to zero.
> > > > >
> > > > > Cc: Stefan Achatz <erazor_de@users.sourceforge.net>
> > > > > Cc: Jiri Kosina <jikos@kernel.org>
> > > > > Cc: Benjamin Tissoires <benjamin.tissoires@redhat.com>
> > > > > Cc: linux-input@vger.kernel.org
> > > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > >
> > > > Applied, thank you Kees.
> > > >
> > > 
> > > Eek! No, this will break the build: struct_group() is not yet in the tree.
> > > I can carry this with an Ack, etc.
> > 
> > I was pretty sure I saw struct_group() already in linux-next, but that was 
> > apparently a vacation-induced brainfart, sorry. Dropping.
> 
> Oh, for these two patches, can I add your Acked-by while I carry them?

Yes, thanks, and sorry for the noise.

-- 
Jiri Kosina
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/nycvar.YFH.7.76.2108201810560.15313%40cbobk.fhfr.pm.
