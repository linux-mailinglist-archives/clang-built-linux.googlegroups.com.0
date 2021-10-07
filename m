Return-Path: <clang-built-linux+bncBC53FPW2UIOBB5FC7KFAMGQE7DMAKVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CEC0424D36
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Oct 2021 08:19:33 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id h27-20020a0565123c9b00b003fca9e11144sf3686211lfv.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Oct 2021 23:19:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633587573; cv=pass;
        d=google.com; s=arc-20160816;
        b=o/6+GuQs2o48DbSzoLXs62R20Kt11i8cnF1UPebyHR37zpR/mqeH+kZRI+GpaEzJy3
         SwHMCaBAojeBfHQwMSaaITiv2qN9EnuT5vUizEbNiVxFoG7AOaNFOnLlnfHNbNZKQvE3
         aLhQWEgRJTxrf32L7CFIC8VBzcZgcqwPI53equdKsF+YpSeNOvTGbJFis+ANFdwTO0tJ
         bh6eSmZfI3nOYzIcof+DrBRgW1YUSB8dieSR4yFKjO5Otl0Ci3NYF0YOfZvdweHBoYAa
         K3SZzEw10VUFy09ZWMriFTQdUMRO6zr98Cr5dWDqRNT6GTC6fs93GJ/n8kbmZuu96X76
         lP6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=ok80MjXBz3F10elexnvo4D+pUGoVclFWfkusx86mCyo=;
        b=E3D2Hr4HdDFd66OlamL8oYn7WCtaJGyIor+4KrDD1frdePeJ7LPYct7L0IznGczymJ
         ElVjnN/Q4UsuFcXtXl7SNWg9saV83cgj3vSuUtI3isgVtKTvOptW3ge8/P3OMZhF7B1W
         Lr6k26np5aB0Mzf3ayBPQdgAbv1jScb1P6tr2Qv0t/9g5w/fNPYMORApHqN6/DQRlRCm
         rciUVIpmNOqU131nZddlS2hqNLmS1Jz+WL7VY1tq5CpvDwwSXslI+mjZmqh34WVgNtKe
         x4Kg7dP9TEuA75YvkXwGT9zk/SAIXSwmMg5THzw09AG4TozHI20IGCj+9uP1vb6uWuGX
         q7eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=mm+XH+Tb;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ok80MjXBz3F10elexnvo4D+pUGoVclFWfkusx86mCyo=;
        b=KFfWsHkNo827gP9cK8niiLWk51uDo6ssyqh5ZrGIC9SpapWqNVNSYWiWalcdyxVJgV
         YufLnY4GCawvmD3Wbvc1FpLVjgd2YXb5SNXD3jd2Kf9GtbBcB+P6AkOCFFaLkAKPat98
         YvX4XZru1Q0iwc7YH4sG4ywYh3/TZ5IJMLyD3juS4Vb7LWhIN5RmvKE/80ZpXBFkMPtJ
         xtL4Qrkbov5H7JAWNdtHa5Erc43Ck+2RM0fMoTWo/qG0XgmSB+TUPLXHdXELA0oGQYNy
         9ScBhrriD4lY+s3IuE6LoSq6wq5uvOSH5TcNnPzKH2NFl9D9q0jnZLxp1uZcCnjvFEL6
         FGmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ok80MjXBz3F10elexnvo4D+pUGoVclFWfkusx86mCyo=;
        b=JR3UO2wey6Lkj+aZxtCvfULLY+VNvtWpZVvloxi9nrZtDzWJs11HdGGXR2WG3aDXt9
         pYP+PIxEW/QA6XS0F4IKhD8Ej3hiwfaZYYPTwl6do0UlDTXvHIk4Jc+oK26Xard27oXH
         DCcF7v6A9sjHrskquSczSuQ3BjLJxZzBd6XU0VcFBAOwHb2Nkt9RVpdC7fnHeKR/HPYh
         C/iOd5vB/hbs8WmqDtaqP89mrF0z0yMwOpsdzSgnQdtoKdQmiBL8oqBLr+rl8ONUVJbB
         Ns7oYBoogtSUqL5jPLYqIqmUswekfHHrbROKuABBlxnXmf17GSM4bUWqfMVk0SNYElVp
         6CLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ok80MjXBz3F10elexnvo4D+pUGoVclFWfkusx86mCyo=;
        b=DNN0KFSLTn6wPsQLrilFibpMvgmRAhjc/FX5srexeevmY48d7tVbFhzeDy3GPpFfwb
         Cc0zurFrzotaa+qym4w6dktxHfsinnm4oxxb2VSHemR/ZXcnJ0C9H9BJcvEmIRdCZbhz
         ZMCMAMmnYBnK4UZMNWQg/E8PwI4fWCCygllICUm+l2p9B1u16iaI3GU5f5SaZTV1QyG2
         XCnfa/XlAZ9a3Jg9QRs8O7OpHOP2890+0m94kGEVp/Yweegn3uEPuYcXvAyaPKa/Y5s3
         Zc3NJ2RzBDSfty8Y05+cGeZ9oU4coXR8YfQ20/M+Ak2QgBj/knilGX+xrMsvFqLZe4yn
         EyOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nPMKmKFS8cWMXDPSQQZn80Ki/masHEYrNYVrLz0uK448f2a2R
	2cTE5dpCxFQ/QFKiDa5GcAM=
X-Google-Smtp-Source: ABdhPJxfWr45KYHN/wkvSU4VxyoPpC9qQhFLOIZyOW+NvlVtRSNzNvFSRnlgZJ6aWAESPpmRCcQGRw==
X-Received: by 2002:a05:6512:1520:: with SMTP id bq32mr2431781lfb.232.1633587573156;
        Wed, 06 Oct 2021 23:19:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a801:: with SMTP id l1ls363493ljq.5.gmail; Wed, 06 Oct
 2021 23:19:32 -0700 (PDT)
X-Received: by 2002:a05:651c:1204:: with SMTP id i4mr2540584lja.445.1633587572016;
        Wed, 06 Oct 2021 23:19:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633587572; cv=none;
        d=google.com; s=arc-20160816;
        b=QePgy3ghxxwSoFuhosqO9JFVejpT83OyVFQxdtgg2oJq4Uph13O5LYr0mOc536D7H1
         8SSTXlpO016gMBZQgfjxnsk2MitGvfyQnvXYbNTSjbBTcQxANjkkW5VjQG/SONe0KzAI
         /YL86an6VLFcOD2PrEE+tVDPeulHj1QMOITvoSniA4AGj818Jw6k99MFRK6JIGuOFHPC
         RKBPY74ud61CiSgQinPiWOtoKeQTESrKARXtTDlk3Xmm4czYxl9MEPpcLevvYnlt3C6z
         iShWE9pUfMr+APAOiCird7yDVHBLs1NCVng9BDzRLqfxuTt4AWEOFswdha/1g/YPfOes
         hWVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Pbt0M1pfebFlXF5gGyoPFy/r4iSAUgGDM1yjl8UFi1s=;
        b=OqgP0URqLcHfxCmeHbdX51VeaKgD5/Ns9v9bxIkRP1pgK9MiJIw1oJjyn1e4A5hVqL
         +R+1teUqEA+HJEfL4g5gKRr7cuCesDR5WrI4jHs/qdNCQZuLUkxm5Hr7HWjfBGbduj6v
         FITvRzbg2j6JuUBVzFoh/97LSj4ZLd1WNkmd9YhSJbb/Ofz9SnVv8Nw9CPzhfxaknv73
         4KZcU+JaWKG+2GW0nJ6uDSCr0ODqN50ql3mnXItiiQjO4mEwCLtApayj8UsmZW3lYFoB
         U86weqvBaM1GYkfmTsUdO/WjBCxmENoEspXZ6KulAGUUMmIP29aW83NT42dWBWd/GpCN
         +1hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=mm+XH+Tb;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id t20si919875lfg.12.2021.10.06.23.19.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Oct 2021 23:19:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id t9so20002443lfd.1
        for <clang-built-linux@googlegroups.com>; Wed, 06 Oct 2021 23:19:31 -0700 (PDT)
X-Received: by 2002:a05:6512:31d3:: with SMTP id j19mr2598683lfe.140.1633587571776;
        Wed, 06 Oct 2021 23:19:31 -0700 (PDT)
Received: from hyperiorarchmachine.localnet (dcx52mygz59ds--wvhkvy-3.rev.dnainternet.fi. [2001:14ba:14f3:6500:b4cf:46ff:fe51:3222])
        by smtp.gmail.com with ESMTPSA id h10sm978046lfp.187.2021.10.06.23.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 23:19:31 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: Daniel Axtens <dja@axtens.net>, Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com, clang-built-linux@googlegroups.com, hca@linux.ibm.com, jarmo.tiitto@gmail.com, linux-kernel@vger.kernel.org, lukas.bulwahn@gmail.com, masahiroy@kernel.org, maskray@google.com, morbo@google.com, nathan@kernel.org, ndesaulniers@google.com, oberpar@linux.ibm.com, ojeda@kernel.org, peterz@infradead.org, samitolvanen@google.com, torvalds@linux-foundation.org, wcw@google.com, will@kernel.org
Subject: Re: ARCH_WANTS_NO_INSTR (Re: [GIT PULL] Clang feature updates for v5.14-rc1)
Date: Thu, 07 Oct 2021 09:19:29 +0300
Message-ID: <1803114.lsCNsgVnni@hyperiorarchmachine>
In-Reply-To: <20211005143003.GC6678@C02TD0UTHF1T.local>
References: <202106281231.E99B92BB13@keescook> <20211005131015.3153458-1-dja@axtens.net> <20211005143003.GC6678@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=mm+XH+Tb;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::135
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Mark Rutland wrote tiistaina 5. lokakuuta 2021 17.30.03 EEST:
> On Wed, Oct 06, 2021 at 12:10:15AM +1100, Daniel Axtens wrote:
> > Hi,
> 
> Hi Daniel,
> 
> > Apologies, I can't find the original email for this:
> > >      Kconfig: Introduce ARCH_WANTS_NO_INSTR and CC_HAS_NO_PROFILE_FN_ATTR
> > 
> > which is now commit 51c2ee6d121c ("Kconfig: Introduce ARCH_WANTS_NO_INSTR
> > and
> > CC_HAS_NO_PROFILE_FN_ATTR"). It doesn't seem to show up on Google, this 
was
> > the best I could find.
> 
> Unless I've misunderstood, the commit title was rewritten when the patch
> was applied, from the third link in commit 51c2ee6d121c. For reference,
> those three links are:
> 
>   Link:
> https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net
> / Link:
> https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.n
> et/ Link:
> https://lore.kernel.org/r/20210621231822.2848305-4-ndesaulniers@google.com

Hello, Kees and others cc'd !
I got above mail, and went through an rabbit hole of lkml messages since I was 
involved with the clang-pgo feature.

I'll like to know what is the current situation about GCOV and PGO?

I saw that for-next/clang/pgo had some new interesting patches applied.
Would it be good time now to continue make instrumented kernel?

Background:
I essentially stopped my work at the point where Peter Z noted -fprofile-
generate breaks the kernel+gcov and noinstr needs to be fixed.

My situation here is that I have very old non-public PGO hacks that date back 
to v4.11 - v4.19 era using GCOV subsystem and now with the newer clang-pgo 
patches that are in usable state.

These previous attempts all broke apart because of the noinstr not doing it's 
job with -fprofile-generate: the compiler could generate a call to gcov/pgo 
profiler hook in wrong place (in interrupt context, If I remember) and the 
kernel was doomed.

One thing has not changed over the years: I still don't have a single CPU that 
has hardware PMU capable of LBR and generating AutoFDO profiles. :(

So I have written code/hacks now for two subsystems to gain profile data for 
PGO. In the end, I don't care from what instrumented kernel pipes I have to 
pull the data out, and what format it is in, as long as the compiler accepts 
it. :-P
PS: gcov-pgo had waayy too many pipes for doing just pgo. /s

Well, that was my past on this PGO topic.

Thanks all,
-Jarmo Tiitto


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1803114.lsCNsgVnni%40hyperiorarchmachine.
