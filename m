Return-Path: <clang-built-linux+bncBCIO53XE7YHBBLWM6T4QKGQEBXAHQMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id CF36E249F59
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 15:16:31 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id p189sf8850332oib.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 06:16:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597842990; cv=pass;
        d=google.com; s=arc-20160816;
        b=0nk3LfqwpELxSMxYDhNYGEDiZdjHXhCaquUDifJIPvaALHjHydjiKtGl218dhvPEX6
         ATvIwd0z1lRXNKj7GKFnjsx1vTz0JV9tPOXMK6I5pCrxIqN2u3v1DlqiSPBzqNiUCltk
         ViNBeScQcAIP+RYqWTwCA9OE7MYcrZpbu5KJ9po2XJH4qxHrf18gYI7D9C7cx6Lo/FQQ
         JxO10M8DTlrg5gMawoA1MDW8MKY5WHd0ZIPcVCDNJ1mmwRbHZyz8QAS+47bXQhyyqLnb
         X+e9k9kQEEOtqWHtRdSBbp8j7PKRNbzmDhrQ/52q4cG6NvpFJggkgd8ay/kP4GJsjDpY
         t7mQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=7XjPpu1ubQCSgMHCoTcTS3RRfMnD0oyrtwlEqMAXU6g=;
        b=CTEklLVXHcD0l4vJvaHwc5CJSlvB8wLIhOi44hkFQUNPNI0RxpPBXq8vjLZKSrstao
         qvCB+3aAe/GbEE6+s6AZFo6Tr4CoFAz3rl3QO/bk4+AuZ7KbVFBqMRMW6zKSSaMKcK3w
         pP6iHauLJGspKvODHwusRCLXhs/4VjGmict2d+OEkrNe3GAe7dUs5o5x4xdqD9KjHhOs
         AzmorU0kjR8Jak+9lkn8/IIcb3QdmpNYIMt2vBcccfcN/CcTInu9z7o9LwqEGKZgEV6j
         XMPUlLfRmgpHw4/4mi+b2+TMhuKyt46jbaEXyLgfMM5e7blHvV4w2jjuYiEmO7SPMRHW
         RJuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j3WFT+H6;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7XjPpu1ubQCSgMHCoTcTS3RRfMnD0oyrtwlEqMAXU6g=;
        b=n2QaMIgMgToDcUvvUEZrYcqezQG/3mEXYtX/NpuXf7oAef3L/rbQFKAiTdAZGPRB20
         TgMjHm6mVjb2IIqvJZ91E8rOwxRxbg9P3/vGlrasKPGEH28atQAa6zKksixviWvx4xhD
         yx1/sEycSTVo9exfo6GpJ/i9EvCNmCJbkBvWVfdp3niK/PPQXWM3hfemQXrBzpqK61CQ
         IxppcoU/UuRzoVUUF02hM9zFFm13pmtKmVe68BhmRZlQF5dQjPkDrv7q4lpGzTBFbjuy
         GDgPvOFmKjjkbTOQKVDQKkdQQFI64X8Jjl+bY8eKKvPZ2Kc6qUmuMyGLUI18NnUQi1em
         570Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7XjPpu1ubQCSgMHCoTcTS3RRfMnD0oyrtwlEqMAXU6g=;
        b=H7W81MzY/IX2HRL7hc6tficpOE6OwkKTp1CLmhWWDBIwa+igG2JO/ZwpZ/96xarUcC
         p2MXCoczm7zbk0fW7mqYL/y+ryWZGojGAzJfL2ElR7rdRuIh+AfRx09I3g1Ke1gUx/x5
         T/Vwb1Gge1jPq0oDOHNJEMQj5exqqEBo8t42WpK0OMOAVoGhUKgmRQMVN52Vs6gvdJJ1
         0ox0vdJ2iWf/A2L+KyHvAWonMYB7G8MLvsfjkdV5sTyibezWBJOx0VXYue2RtDZz8L7E
         qp6OW2SyTOw5+sNd9NMOxxhEbr6hMPU0ttzMPSGmTsKKcHL4egCJ6aC6KC10bUuexDoO
         IFnw==
X-Gm-Message-State: AOAM530+o38XWrx3M4m7+2EAnY04SNq7T8FiBBnlFXlZL0K99yEzRlnX
	FFBrjpZbbdua4xKqLO7b2EA=
X-Google-Smtp-Source: ABdhPJyxVwbgzXOs0Hih6UaxzK/S+YuFMQl5rjaB4G/2rr07AjVfAj7cS7FMrBhn9wayiDrepck+UQ==
X-Received: by 2002:aca:110a:: with SMTP id 10mr3065871oir.68.1597842990653;
        Wed, 19 Aug 2020 06:16:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4745:: with SMTP id u66ls4847863oia.11.gmail; Wed, 19
 Aug 2020 06:16:30 -0700 (PDT)
X-Received: by 2002:aca:1802:: with SMTP id h2mr3275905oih.76.1597842990364;
        Wed, 19 Aug 2020 06:16:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597842990; cv=none;
        d=google.com; s=arc-20160816;
        b=HY1KCig7ipUqqL8IRHMyJJDujQdkJM1pX536IxSXAvYiveCL/WlU7QdReDgaeVOSNd
         fQNVV57aIXh4l76ayDma0SuyMabECdREw+CHPjTZn+F5ovsXtyCG/Y7RoFyxzOsrZayl
         cTWuVv8QYD1Mfzu3QZzO1Zcx74aL4e/DEK5GvgXXsddVxSPka1m3idYz0vq8zVXpCzbV
         z4xTLrVvd3ab80k5lrHVQeARn0mfZxLf8nVvado/OWyQ4aTRrCK4GPzn+fHZ75epKsVv
         z0QpsWbkCpjsIfUK8m7fgZ0cJEoMTXzP4TNbab2UiKcws8WfDPbrTPcN1p2BhQR5lhhV
         8rxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=ukIFFNEkmWu6RobJHPqTePGGEQuwENadcCDhgJtfzhU=;
        b=gqjHNx7F04glYon9JAGXkLTeB1FDRpBK5oU4ffbutCtFjW8pchljzHXd+6laHqLzGB
         MJfd4EDZQjzcdC76pFJLQ+0bPvvgiccRQG8jZqLulmmxOAoS86sUtM4dkWEL9OLyMe2f
         UpWzMUA7a37ie8OHWBJOEBPCeIvxuQNC9hjyo9pYeEA9HIpORwIbfKUohV34tdYoVex2
         r1s0W/lFCD7vOPRWcxCO8NPTEZGTaLACcp6Ew/Y0zHaiVeBvKIo8LVEWSEEkEg9ITwbQ
         XTaZQx+YfNauFcGzZ6Jnr385ouoD8/zNGfLvccjmDerC7oIpDeDMUjuiwA1lK2yh2Sbn
         bolw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j3WFT+H6;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id p10si1667293ota.3.2020.08.19.06.16.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 06:16:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id f19so13198213qtp.2
        for <clang-built-linux@googlegroups.com>; Wed, 19 Aug 2020 06:16:30 -0700 (PDT)
X-Received: by 2002:aed:3728:: with SMTP id i37mr22703331qtb.347.1597842989944;
        Wed, 19 Aug 2020 06:16:29 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 3sm24856186qkm.117.2020.08.19.06.16.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Aug 2020 06:16:29 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 19 Aug 2020 09:16:27 -0400
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] lib/string.c: Disable tree-loop-distribute-patterns
Message-ID: <20200819131627.GA3779903@rani.riverdale.lan>
References: <20200818234307.3382306-1-nivedita@alum.mit.edu>
 <CAHk-=wik-oXnUpfZ6Hw37uLykc-_P0Apyn2XuX-odh-3Nzop8w@mail.gmail.com>
 <20200819030442.GA3396810@rani.riverdale.lan>
 <CAHk-=wiJLvqS1_O+yAQSZr-Lj49HdJyLpt3J_nW=otHLfEN4RA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wiJLvqS1_O+yAQSZr-Lj49HdJyLpt3J_nW=otHLfEN4RA@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=j3WFT+H6;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::842
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Aug 18, 2020 at 08:32:58PM -0700, Linus Torvalds wrote:
> On Tue, Aug 18, 2020 at 8:04 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> 
> > Might be worth optimizing strnlen etc with the word-at-a-time thing though.
> 
> Yeah, possibly. Except the kernel almost never uses strnlen for
> anything bigger. At least I haven't seen it very much in the profiles.

strscpy could be implemented as strnlen+memcpy. I'd think that wouldn't
be much slower, especially if strnlen is optimized and the arch has a
good implementation of memcpy?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200819131627.GA3779903%40rani.riverdale.lan.
