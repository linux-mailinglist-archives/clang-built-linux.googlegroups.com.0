Return-Path: <clang-built-linux+bncBDV37XP3XYDRBHUKWH4AKGQE75AJO3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id CC05921D4EC
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 13:27:27 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id h24sf9916220qtk.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 04:27:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594639646; cv=pass;
        d=google.com; s=arc-20160816;
        b=cuNmf5BNmPJ+tqLRP23OrVjhtt9vy7ErJyNKcw7RKQw7TqBVVvmskFg3UanMOfjXmx
         rBraXdTnawsl+C1NxJFXVRCMyrVloW0wyB+RBim7bfJ1y4O07CJ0n1UUxdHg6yBPNCl3
         NCEiPzqhvC5szmHOSTHF1psJJiWJmJubequgzW8GPDphnNB2A1yzKJJs783Iv0QKoLdx
         L6wVsYfNpaVBYcBGQRhMAL4SyzmME01n9i/KyC55AFaoTDy7xTA877fm2YlekhQWE1YR
         Ljf9txtvAD0OnrVJ5FpSS/O/fYpsJxVxMClJKV8lcg9lBMZLFQaNOc6bNlnPy3RU9x3B
         DvwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2wYmXLbx8fmAzVT+jz9gB4AD+jW4O46eqd42ZPg+Y7Q=;
        b=FCRMhB5Ka3elhyL7LzSbdl8FaQ0g/UVCwJIFVc81HmRsy2O1SVzH6ISMAcCChgSOze
         t8w+GOoUVpZhOglil6u5T8Pzj7wdyw31ufg1aCSSsO64aHuvSD555HGpeGhW9j3PdYx6
         G2bxpK7S40f9sOmOyBUfKrVlOX8gZwkIAheGLOjftugnpA/6nu1yqgVKhJYMJnF+hnAM
         FUts0KJnGAoi61TDFwr12t4KmAEVcoQ8aPdIsiAyiMuF5ZIRnPDQucgM4Ac1MXb4YHtX
         ZIj/20Z284fvzal6SeDsifGkkW9iipPotj9bFCfETDOQgMxJpGpLbmvtIVKOQHM7MZSX
         omJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2wYmXLbx8fmAzVT+jz9gB4AD+jW4O46eqd42ZPg+Y7Q=;
        b=Lr1xP47ZQBHZzq26Pg1ywet3Vw1E0krQ5AlJOO7E8ki1dl7OvzVSFAEXDpVCgLOCmb
         i49Dngar1U2xkL/rXpWaMH8QBA8SVwgBuAj79DrDOyq6hHEDVuSmeg5HatrhS3YaHg7S
         xdsJzn1RoT9QQ2BuLqDk2yX88BXLg+SIxL8lT/5J9X6zrMYPqb3h+I5tb7XlGpYXgwnn
         zlkAgzSH1TnkOo7sTCTF/TuGP3mckSkW6ijnMxKfZqUOKEqaY4Nbg81AdX3FKmd1nz2l
         /oilnKnK4LnK/n7yGYZEtmIxw8J7pJsyqSZD/s2yawrigl+gn0i/FXjoF20qRnAh5gNj
         ymmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2wYmXLbx8fmAzVT+jz9gB4AD+jW4O46eqd42ZPg+Y7Q=;
        b=EGU/vUenwxmwH0sFNLArQ1trbxGjyUxYzg+nbTSGOXyv4cxD2ONlrC90VIgCoBLD+u
         HDts+luk6vt+o1opxYEilrcKt1K1G3DMkcyf0Sg/fQZix+9MswvWNzAFUnfqJrBt31bs
         T0UwrEFik4I9p1Bdjq0Oz+FUQSCFb+YxYAuwreYx3EXxy2BOm9ghOos8PrRhhG/K+uUb
         rQcLB3g6czIZii1oI3c85Xvpwzly3tIQ9S+ADbwKkSwU0tWC18zBD95Aubj7/SpNh5v4
         RJC+EEIy/Pf57GRhiOA8fvfPjJlBD4mHo0Q4LE+JDOvmyRD67UpyHSj+zChy6Z3h2gu6
         3buw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532gKXIhxNTZvh12BFVNukdYjTAbhNT6zTSeXxusLbkrIEEuLex5
	X3NFSxMCo2k7ewITbluj6oY=
X-Google-Smtp-Source: ABdhPJyMNv2V3MOuYPtBVEGxJWbP6ynkJpdysgwNy1uuA1bA/1lHJ6aTrBTFG8EK3fz+8HppJybpMw==
X-Received: by 2002:ac8:44d5:: with SMTP id b21mr45321035qto.261.1594639646697;
        Mon, 13 Jul 2020 04:27:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:5:: with SMTP id j5ls7985365qki.6.gmail; Mon, 13
 Jul 2020 04:27:26 -0700 (PDT)
X-Received: by 2002:a37:841:: with SMTP id 62mr78105557qki.487.1594639646345;
        Mon, 13 Jul 2020 04:27:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594639646; cv=none;
        d=google.com; s=arc-20160816;
        b=R7n7Sv18q/BnhMWT76hckrE2gWMAI2FB8yP2kahoyjZmNFIc/Y1h8gqD3BTEPLqC5d
         rTJNknicS89bPd01AkKmSohaX+NQQPuwGr0TQ8pIrb6ZaVbm96T/nTkAf9yZuW0erxI6
         pHjO1c4jX2iq9malMySI/gvetFMPugq2XF404CS18qfql/+mIu7cmlU93eY9H9NiBDbp
         v3CdWUeFv1t/BigZqosc8Lbistag/n7rWJQwLc0jCGpSUdsXzbf96KVapubvt3TDnot2
         oF1qcYMJ57d/UDw1J+8N9OKefVlYfgeoiWrrb0DoIzwb0yvoAkTEpA5CRYqnxdptECfH
         B54w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=mqX4Sb+fmsDyMlyeabc7H62RJiRWsyAOOioCTnV6psg=;
        b=KRVdoMupAmE1i2m6519ln/hs9Iu8FEMgena1aNFaoDIe/22LCiF9bfd8U3D+f2sqKt
         5TljhfplG3P5QuT7qVjBuNbWXRpOL9ILuYzB34kJNx5mXCh3yaFhCCs+YGcuPNonsmNq
         Wdw5jAEl+6bs7uhd45XbFpO3mM0k7WcMslGUBYVMF4ohcok+bMT2mTfic+EIr40Prs9J
         kdOdXNtmeH5OPYGF9+19KRnQCtbwVRoq9JwGXUGim/wSIpzrY5DTPRNlf56iNo7PP5z0
         4o9zmpPaWbxTaohAhWv04lpDWxOYAMtKOioppKdRGnUgNE6GO3sbTq9iBBtZGFi2tUQ1
         c7HQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b26si797584qtq.3.2020.07.13.04.27.26;
        Mon, 13 Jul 2020 04:27:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B7ADC1FB;
	Mon, 13 Jul 2020 04:27:25 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.21.253])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 39ED43F7D8;
	Mon, 13 Jul 2020 04:27:24 -0700 (PDT)
Date: Mon, 13 Jul 2020 12:26:16 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Marco Elver <elver@google.com>
Cc: sgrover@codeaurora.org, Will Deacon <will@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	kasan-dev <kasan-dev@googlegroups.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: KCSAN Support on ARM64 Kernel
Message-ID: <20200713112616.GA51487@C02TD0UTHF1T.local>
References: <CANpmjNOx7fuLLBasdEgnOCJepeufY4zo_FijsoSg0hfVgN7Ong@mail.gmail.com>
 <002801d58271$f5d01db0$e1705910$@codeaurora.org>
 <CANpmjNPVK00wsrpcVPFjudpqE-4-AVnZY0Pk-WMXTtqZTMXoOw@mail.gmail.com>
 <CANpmjNM9RhZ_V7vPBLp146m_JRqajeHgRT3h3gSBz3OH4Ya_Yg@mail.gmail.com>
 <000801d656bb$64aada40$2e008ec0$@codeaurora.org>
 <CANpmjNMEtocM7f1UG6OFTmAudcFJaa22WTc7aM=YGYn6SMY6HQ@mail.gmail.com>
 <20200710135747.GA29727@C02TD0UTHF1T.local>
 <CANpmjNNPL65y23Qz3pHHqqdQrkK6CqTDSsD+zO_3C0P0xjYXYw@mail.gmail.com>
 <20200710175300.GA31697@C02TD0UTHF1T.local>
 <CANpmjNNetBqbqDbRS8OQ9z5P=73vAXG2xys6HKSg_dzqp9ksqA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANpmjNNetBqbqDbRS8OQ9z5P=73vAXG2xys6HKSg_dzqp9ksqA@mail.gmail.com>
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

On Mon, Jul 13, 2020 at 11:43:57AM +0200, Marco Elver wrote:
> [+Cc clang-built-linux]
> 
> On Fri, 10 Jul 2020 at 19:53, Mark Rutland <mark.rutland@arm.com> wrote:
> > On Fri, Jul 10, 2020 at 05:12:02PM +0200, Marco Elver wrote:
> > > On Fri, 10 Jul 2020 at 15:57, Mark Rutland <mark.rutland@arm.com> wrote:
> > > > As a heads-up, since KCSAN now requires clang 11, I was waiting for the
> > > > release before sending the arm64 patch. I'd wanted to stress the result
> > > > locally with my arm64 Syzkaller instsance etc before sending it out, and
> > > > didn't fancy doing that from a locally-built clang on an arbitrary
> > > > commit.
> > > >
> > > > If you think there'sa a sufficiently stable clang commit to test from,
> > > > I'm happy to give that a go.
> > >
> > > Thanks, Mark. LLVM/Clang is usually quite stable even the pre-release
> > > (famous last words ;-)). We've been using LLVM commit
> > > ca2dcbd030eadbf0aa9b660efe864ff08af6e18b
> > > (https://github.com/llvm/llvm-project/commit/ca2dcbd030eadbf0aa9b660efe864ff08af6e18b).
> >
> > I built that locally, and rebased my arm64 enablement patches, but it
> > looks like there's a dodgy interaction with BTI, as the majority of
> > files produce a build-time warning:
> >
> > |   CC      arch/arm64/kernel/psci.o
> > | warning: some functions compiled with BTI and some compiled without BTI
> > | warning: not setting BTI in feature flags
> >
> > Regardless of whether the kernel has BTI and BTI_KERNEL selected it
> > doesn't produce any console output, but that may be something I need to
> > fix up and I haven't tried to debug it yet.
> >
> > For now I've pushed out my rebased (and currently broken) patch to my
> > arm64/kcsan-new branch:
> >
> > git://git.kernel.org/pub/scm/linux/kernel/git/mark/linux.git arm64/kcsan-new
> >
> > ... with a note as to the brokenness.
> 
> Seems it's not KCSAN specific:
> https://lore.kernel.org/linux-arm-kernel/20200507143332.GB1422@willie-the-truck/
> and https://lore.kernel.org/lkml/202006191840.qO8NnNsK%25lkp@intel.com/

Ah, so KCSAN tickles this because it happens to have generated
functions, judging by the propsoed fix:

  https://reviews.llvm.org/D75181

... and practically speaking that means KCSAN isn't going to be usable
on arm64 until that's in. I'm not keen on making it mutually exclusive
with BTI as we've had to do for GCOV.

Regardless I'll try to dig into why it's failing to boot without BTI,
but it might be a few days before I have the free time.

Mark.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200713112616.GA51487%40C02TD0UTHF1T.local.
