Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNGS533QKGQENUHDWKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D8F20FE75
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 23:05:58 +0200 (CEST)
Received: by mail-vk1-xa38.google.com with SMTP id h74sf3559742vka.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 14:05:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593551157; cv=pass;
        d=google.com; s=arc-20160816;
        b=rqiJj9rI1tDQ4O06ZD8xiUkQw8h0TkHRMZaYHaPBy/VS5bzwCtjLoO1UE+iJth0EKb
         eg5IDy25jsPkQ+maM5i4WB+uQOmtHq8yLbwwniGvCW5suWt5UWNQ8vOJcziB1Fs4qyuh
         Vy9typXfGIqyqedgcd0n5jNoBEteFTo1v7p8ZFIog285mbkKjRi8LcDXPpZO0qf3xDPl
         BQ38PezPbG3mugNGKiSS0LKZ9bPaF44v6mRugnLLeVW22lvVCxiY0J9g9AGIkL799SbW
         mb4feTPF6bxfo/5mex2A3NHSCHsErzQtntLHfHjfjgZEoi2hxyMApFl9+Yyz8lffpUAl
         PQgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=h92TYZV7UVFgto5httuiSQIWyHYO8CliqxP+InpHwuQ=;
        b=cd495L2/sQCmmSF6LMC5pr+Jz93eBZagOEhFF3hGfLtjAVzny9aXGeI6MEJV4lssb8
         gKmW416TYtu3ossxOg7MWzkxOSm/qxC99W0lMaJ6THl0ZD7CLK5X/sESftELcMbOcQOZ
         Nz/uUCLnmomxksKQ5zm/pGHCI4Ny9JfczPFy342YXcAgTDkIIealvSinooc7dPsf19bA
         7mFcz5ri3PtbAOWvKch4PtdvwE1LqAb7kU7cGdZksP58bEq0IHZ2ddCuwIUuXOJ38dRU
         PZgpbzVkUpULAx0XS9UqolgKU2hK96OnAv9l3C/Mjl7BbhFblG+QoJE8ZGQlKVaPKlUW
         LvwQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ll1q8Q6N;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h92TYZV7UVFgto5httuiSQIWyHYO8CliqxP+InpHwuQ=;
        b=UJlXzQ5AyRwW2QyhbbAhMlZnx7wp8m3+hMEdwf4QYjZSHlvgqwhIaLPjJDjt8GcOrU
         +i5NMyPHN/oLWHWIyy2c7lMgU6Eb8XkEfF5VBNmGwcM/b2l/u2OGrOT1Pr/5r/txcAWS
         Hf9T3Xh22JribEPxD1ZwDwQ9XxgQ7BYGqPDXNUl2Hj9heSaHJCArMahjCruJ8wVsEN94
         drbjLL28hy5xKjPgBcPcSTe+GGC9aXRtoDgNVmQy2UydN/0oRS4JvRugkButfFPn2AGM
         hViA9uCI0lT3lduh1QIc6b4AsG8Vi1+JE6QdHhl+sD5T11TaxsUucX+XBYZ+OxZNEJLe
         1sLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h92TYZV7UVFgto5httuiSQIWyHYO8CliqxP+InpHwuQ=;
        b=LLj0AGg6mZG6EEjDctDmL3hpW8mMHRl/TCvBKYb55UM6t1W65KD3tU5LhQ341bN8a3
         dnG7pgkF6PyCHiR95riU+ezIGUIvVQLftqN/FM0Jyr0IJ8QI4EU1BZTA7muyxKkoW249
         /41Q0pDtmVGc80bDRlhQBNu2YaE1BX5vts/PiTmyfOjnkT/hxO6qFqk/Tglmyxv3+FMM
         9BotX3tpYWC+widlosxQpMIX22zz61n2tCxOwZ06QnSsTXlqtwcRnf59wElf+EuMoyA6
         GXwY7ehqdnc8tVX1itUcv9/+1rF0MUoN8hVw8p7/A7mZg580x4rgaKQxzNd0V1+e/I/6
         hjFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=h92TYZV7UVFgto5httuiSQIWyHYO8CliqxP+InpHwuQ=;
        b=ClJ8yT/DkcPYYCFH+VQFSpiAl2E4P8gnLbrp2Zyb6Eq2nh6TjI5zX4b4zB43HgdXEb
         ze36ZYKrv1fDiGDjSrI+f04/7weeLpGLKtcIopTkDMj9uGPsgJ+brAzfsLM33xRNiXFQ
         Y4QOlWBGIxfGXWTp529SE+MR4OPl4ght7Ptm9DvQeJQJ1DC3DNvQSYAPpKx2ho1VXvIZ
         vdhzsusgSYCX1d+jlV0EEZZZp+V5LXhlZp0tWYv3nEvSywykqo2Zz9PfNwkEFVOd/gA+
         PEgswufmIVvNQs9qQqsuwwKhWfNKnLgshV2UzfOHU+J7OG3VRNfAqvytU5m4B+piufFk
         gqtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327w4YziHk3bK/spZeZXNlYHT/0CfNN9ll1zo9wGi6G/miOiH14
	a//QWPFnGH5YNBI9ILBErDk=
X-Google-Smtp-Source: ABdhPJxRYYAOkrv5ckP0DpaaKnimprG6SrVCNQTLPbKiDqbzAVZE3vMzPZrtYdhpTGfjsLYw+FDDKQ==
X-Received: by 2002:a9f:3f84:: with SMTP id k4mr1531483uaj.113.1593551156998;
        Tue, 30 Jun 2020 14:05:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3e05:: with SMTP id o5ls8865uai.8.gmail; Tue, 30 Jun
 2020 14:05:56 -0700 (PDT)
X-Received: by 2002:ab0:7482:: with SMTP id n2mr7015565uap.110.1593551156624;
        Tue, 30 Jun 2020 14:05:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593551156; cv=none;
        d=google.com; s=arc-20160816;
        b=nbKd47pDXNLigRd9+WUutrg2h+Yy/IOExAAdtHv6NgD9gMlvCXXjxsTGiZIPgiPAVq
         ox3bXvLpUEJKd3y9xrPrEfikBQc/6SjP8g5QbQtCQLCPAaAPrWl7AaTyyRQCi1E4xnXJ
         92qCqxDHf/CGAarozUUCJTQ5VvmCynBtpObsbq6yj/HC/KgHrVhT8PauuHkYyWDZ8KR2
         +KU4g8duqNIkED8Bhp78QXk2fvI5dGDmwgbBxftK0LzwL6umG4U1wE4m62kkYEnfOy6i
         BDE4zSqrGfonX9Fe8Zy01zzv85LPpeoBCPCwOy18X/Gcx+hNsNsamHrYI64fyjkeHjcN
         uIWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=7YJzM68xF5+T7oFwixHoGmxrMD80y0Idtu8GDH5eoGs=;
        b=Ro2LmbdnECe2rcC16db/FHeuGbbndF12gwwUpwqqeyb9ZrnwIafYJ4kQNf4qd6zX99
         DdbZv7jNrAZye7DFHr5JuNysTz1r5MYwTo3myEJDNABl2KX+CDTzWJdZv93S0kGfpy7W
         DLjlbXbpa2Lzql+IeECeAMy1HqU45hlSyYVZBuJeyEV06WFZ+4Pmog+efAh8zuPbVt8U
         oHAz8UdaVgVsCZOlRSxliq6jAe7N7qx5P9p656Lzi1yqCZCMQo0GMCDpIboFB47FGGRs
         f33ZE6Nnn8ZIu9FVcP1078K3wlpIs/EgfOi+W6FuHmYMHVor6oMAMaS5g/NKVCQbqAvy
         JkIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ll1q8Q6N;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id n24si194349vsk.2.2020.06.30.14.05.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 14:05:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id o22so4982262pjw.2
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 14:05:56 -0700 (PDT)
X-Received: by 2002:a17:90a:d709:: with SMTP id y9mr24500675pju.30.1593551155767;
        Tue, 30 Jun 2020 14:05:55 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:1000:7a00::1])
        by smtp.gmail.com with ESMTPSA id w1sm3615703pfq.53.2020.06.30.14.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 14:05:55 -0700 (PDT)
Date: Tue, 30 Jun 2020 14:05:53 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Dennis Dalessandro <dennis.dalessandro@intel.com>
Cc: Mike Marciniszyn <mike.marciniszyn@intel.com>,
	Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>,
	linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] IB/hfi1: Add explicit cast OPA_MTU_8192 to 'enum ib_mtu'
Message-ID: <20200630210553.GB3710423@ubuntu-s3-xlarge-x86>
References: <20200623005224.492239-1-natechancellor@gmail.com>
 <5f98c547-1bac-bb05-1c75-cefb8616964a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5f98c547-1bac-bb05-1c75-cefb8616964a@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Ll1q8Q6N;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jun 24, 2020 at 02:22:08PM -0400, Dennis Dalessandro wrote:
> On 6/22/2020 8:52 PM, Nathan Chancellor wrote:
> > Clang warns:
> > 
> > drivers/infiniband/hw/hfi1/qp.c:198:9: warning: implicit conversion from
> > enumeration type 'enum opa_mtu' to different enumeration type 'enum
> > ib_mtu' [-Wenum-conversion]
> >                  mtu = OPA_MTU_8192;
> >                      ~ ^~~~~~~~~~~~
> > 1 warning generated.
> > 
> > enum opa_mtu extends enum ib_mtu. There are typically two ways to deal
> > with this:
> > 
> > * Remove the expected types and just use 'int' for all parameters and
> >    types.
> > 
> > * Explicitly cast the enums between each other.
> > 
> > This driver chooses to do the later so do the same thing here.
> > 
> > Fixes: 6d72344cf6c4 ("IB/ipoib: Increase ipoib Datagram mode MTU's upper limit")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1062
> > Link: https://lore.kernel.org/linux-rdma/20200527040350.GA3118979@ubuntu-s3-xlarge-x86/
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> 
> Acked-by: Dennis Dalessandro <dennis.dalessandro@intel.com>
> 

Thanks! Who should pick up this patch? This warning is in mainline now,
it would be nice if this could go via an -rc branch but if it is too
late for that, I understand.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200630210553.GB3710423%40ubuntu-s3-xlarge-x86.
