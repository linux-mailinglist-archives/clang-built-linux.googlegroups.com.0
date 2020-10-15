Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBGXHUL6AKGQEP4WSNGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7C628FA3A
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 22:39:55 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id v190sf37550qki.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 13:39:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602794394; cv=pass;
        d=google.com; s=arc-20160816;
        b=IYHFJ23Ow2y47Pi4WDxXY8R2T1qRDlZFLGP4S3qFMIcmJ1JA6De/J6z3s+Wx0OITac
         X0zC9LLCcFNz0KcCCnyz+nUJxCejkc84xJ+GjG/r3utjUflN4xXhS5ohpCiUC5nqcbQO
         NNLwXD4Nn8itJ7uMS4i+5qwql2qB6vWQE7MTnO7IKG9mutU9OuY5W9njPYs46JfE+dlG
         Nepc3MnjWkpLq1GnJFyiQdib+T43Ed3mD/05PjIqIblKOm/1wEzAgs7FRZJyCvbGtY/9
         /T2uRAQuiH+Dwd+2j/zhir+KnBUobUzitgkIIlQW1N88xICAhtqMZL8Jn2Qaifv27g2J
         aRcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Za6Nd2MlXvcucvjP2Vx04yOMa0jk7zDLUnsOvwmJQTc=;
        b=G6paYOcUQR0Ak6vSly6r9w38aIVUDKi/86nDTgcWYnZabCznwDuv1J0Z6vo4zIwShb
         QihD4Eik7T45Bf4rpcTf8A6EqFcUvYGyIVO/l9DrzIER6//Agp974xXBZqmmJD6rK/YN
         ZSJL8gRZZ5u+Kw5MZwWn7iPlENCuVOCNZYik6S65mBMixC5Hi//VY2Glu5EPea2SFiBA
         jkwuOZWkYhHQHfNJ+ROJzVlbfwU7Pi3J4LS26Qs/9PIGsOU7c/BCoOQgBcGqiNFr/j8b
         wgxSCpHUJRlzaZ5u5bN3Mtj1kW2F3Y1sHtM4/4Lw582Mf3ePO5o1Y72bGWa+1AjzrqMQ
         0DnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=SSegud+n;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Za6Nd2MlXvcucvjP2Vx04yOMa0jk7zDLUnsOvwmJQTc=;
        b=TO9BzP5aGXi+TcgZQuRwv5Vlg1uxcddWdTmfT2N+UsVoyWgnmUaLr4MFH3Yp426Z6e
         Mm8eStsYv4w580sZETP4r/gcpEc0L1UhOYXRYvFhdQJw7EUUkR1UZlNZbo1YQI6Jddoe
         LUY3Xq/RrPinGOE518EIUt3YiYbstYp/+tzVQehUm/PVayVmRZWukX/TnvGAO6qDH7mt
         +2CwxEXU+wF7k+NRgsnYWFfL+RuaO6JHLZREJj5OAYGbZJFoVAK9JZFQmML/k9qdvkdH
         eTK9hhtDi6in5xvpzlEJAb/57uHrryFKS6NTQEd60S0r24HAstLKMDdAubO1PlJ6OG6N
         bIwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Za6Nd2MlXvcucvjP2Vx04yOMa0jk7zDLUnsOvwmJQTc=;
        b=THHGkNdwoHG9ACykvsROp0AIC8dXucCd902M01kj4pn+CVMvfw2vstuDiWuyQy4axK
         X0xljgu8AYh5RVEJe5YSec3FOTDjK51UuiebfDZxQa/YoaTcX5JZpTD1Sspc7R/E8JZt
         +g4h2JbDtjOop8n95qEOZAMn/nOtPEXtvO67Az8Dx6DXSTd4VZIrkhNNzxQPScbwYctl
         cp8FQKHDUV8ok+8dU81Pa9ORYUgnjpCftclvEP8ZRrgUEDhq0BLyx1Vw9uaycL+adcaN
         Hjx21XhCxT1nbZm1a33UQbshnqNE6wQEE+rWWbb/xEAjysGVPS+7utNw5wX6ezmluXM+
         zCgA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ak/mZULtOw7wYNDoQ0w7Rrcxe1FCEfiiW8KOtfznoiMKL5xTR
	OWNc7GNKgvrF051xhooPvsg=
X-Google-Smtp-Source: ABdhPJyCTYech47uZMXb0L38nuEKgWiuUCyYOi8K7AP0BkhmVl3QVuyjjtTjhA65fVgxfS51yeV0+g==
X-Received: by 2002:a0c:90f1:: with SMTP id p104mr418278qvp.15.1602794394166;
        Thu, 15 Oct 2020 13:39:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:10f:: with SMTP id u15ls41918qtw.10.gmail; Thu, 15
 Oct 2020 13:39:53 -0700 (PDT)
X-Received: by 2002:ac8:7cba:: with SMTP id z26mr158972qtv.7.1602794393705;
        Thu, 15 Oct 2020 13:39:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602794393; cv=none;
        d=google.com; s=arc-20160816;
        b=ObDYoHMQAgLdaHhp89LADGjR/QuumOQVq1bKpIY4vaFAchbev6O+s+kBDzUUFgvp+p
         j2U1I2qYdGN2F7bPH72Uy+Hud9QaIcCyd2OIH2Q0IJh1djgJlV1L1vVn5RMCGUvaQHjT
         /r/DvAy1mBOS2KeOlsgZNcVGi9EW8J0FUCAO1YyLCIPMhfqIy+9PM08jkc2VFrr9w+ko
         lBu+QWk0KUtfk/9VDd6ivGK7Bz5YOvxBRofen2vo16NU6MfbPMm1oA7ojJJXVtF168+Y
         K82FcbYjBHpzC6SifYYwKZiNH/C2Aq99tdOqUIUWueibpyAt2fhkMmXCDtGyeM9jOKNv
         kDaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=drNAM9RnP6kYRtro33MBF8DkJ/VVjdpQLGpKNAKGMr0=;
        b=UYIlY69wAn9V831P4gsKM1j7HSbYIqJPlfwVhXJFLbnvUIZXm8kUlkfnI/PjPpLn83
         9ANN0CoYrnvxYmcRYl7KzMPlqfAzBkqzdO7JEcPTTODLnxqsL7gSpj9N17rFuQP0vpGw
         FbXF+xj1bVjPW7F+2GMOuh49QeovHGGbm2JUjehjr/HrUwjBfcd+I3/HcxhQ007u+r0M
         rpx20HBXNe7AphfcbbUNY3oojYfWyGbKg/KUIj7fHokkvktDoMiJROOdQrtuxsitlxXc
         LUncTxXwZsoLO6AqSErXTTNCxNu9cMuACiXIhjK5kTmiwHVmrOgRKvMwGcPv7IUTB4S5
         UuRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=SSegud+n;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id m40si19713qtm.4.2020.10.15.13.39.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2020 13:39:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-238-RnX1X4qvPkWYUnhEN4Iw2A-1; Thu, 15 Oct 2020 16:39:51 -0400
X-MC-Unique: RnX1X4qvPkWYUnhEN4Iw2A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 07DC2107466A;
	Thu, 15 Oct 2020 20:39:49 +0000 (UTC)
Received: from treble (ovpn-115-218.rdu2.redhat.com [10.10.115.218])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 036CA6EF72;
	Thu, 15 Oct 2020 20:39:44 +0000 (UTC)
Date: Thu, 15 Oct 2020 15:39:42 -0500
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Jann Horn <jannh@google.com>, Sami Tolvanen <samitolvanen@google.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild@vger.kernel.org,
	kernel list <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
Message-ID: <20201015203942.f3kwcohcwwa6lagd@treble>
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-23-samitolvanen@google.com>
 <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
 <20201015102216.GB2611@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201015102216.GB2611@hirez.programming.kicks-ass.net>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=SSegud+n;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Thu, Oct 15, 2020 at 12:22:16PM +0200, Peter Zijlstra wrote:
> On Thu, Oct 15, 2020 at 01:23:41AM +0200, Jann Horn wrote:
> 
> > It would probably be good to keep LTO and non-LTO builds in sync about
> > which files are subjected to objtool checks. So either you should be
> > removing the OBJECT_FILES_NON_STANDARD annotations for anything that
> > is linked into the main kernel (which would be a nice cleanup, if that
> > is possible), 
> 
> This, I've had to do that for a number of files already for the limited
> vmlinux.o passes we needed for noinstr validation.

Getting rid of OBJECT_FILES_NON_STANDARD is indeed the end goal, though
I'm not sure how practical that will be for some of the weirder edge
case.

On a related note, I have some old crypto cleanups which need dusting
off.

-- 
Josh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201015203942.f3kwcohcwwa6lagd%40treble.
