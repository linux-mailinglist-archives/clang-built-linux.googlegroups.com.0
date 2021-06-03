Return-Path: <clang-built-linux+bncBC7457HKSMPRBIMV4SCQMGQEQO63SRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-f61.google.com (mail-ot1-f61.google.com [209.85.210.61])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DA739A68A
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 19:00:19 +0200 (CEST)
Received: by mail-ot1-f61.google.com with SMTP id r16-20020a0568301350b0290363e6a9392fsf3552061otq.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 10:00:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622739618; cv=pass;
        d=google.com; s=arc-20160816;
        b=pS4OgCLGFv9KBCv6G3FiuOEWvzU6JknpRPzGPYP4Vwleciu3sG1FBdKT9WR/9bVz5H
         0irkbX1SUBrDdS0YDzmzFVySX4PH7tMyEx/wHHGL1XH09xRZrP/zikCjp9kZDVB1kGi7
         XgZ+8JGI2afE4FIMD5yLtn/j3c41ud4+qNMSwiz+wLM18vCZUWNcaPeiGXvpp5Fk167n
         FyNL8NU4RgzjRB0a1EWLqyQpvvkp8Cmjxl4jKC8yV3u/YEZC8kpCBVp4YOyfPKfRYGha
         Su10HFR+UvZdYGaS++BEpk0GO9Ne0HIwmFNRsZZc3PXBvec+VxJ+Rz/U6V2ScdZar5lA
         1I6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:content-language
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender;
        bh=A28m2xTP2YQdWwvtLWS6VIWsI8z6/A4nytTdWER7yw4=;
        b=f91xh3gxjCK0TS7l7lyEHCvZrdQL8Bl/U/cNHwF1gJfcXen2Iiims2mvctQPEjLhHy
         T3HQSLCa4wiPvG9ITRY+TSXYTyTSfF1RvX9XRGY1XJEENVB5YfMIFZC/pa9dGa1v1I42
         cGkLbttBgEkGRPlnh9w+QaIMxrTKqdelC0DNJYnFj68Z8M5FduG3dG5Gdwd4b6DxsBGb
         br8mmZ5uzFUsB6whFnTTYn5GDNW2COMV6qE8p+1LckbPXpEleKRBfbj/Tuftyv7VZsP3
         2v9ZiLMlg5pEbtxXRiK1rQ0/G0TdnpuXJjiTAz6wjoGaFs+AwQDDFXWDLRv/ocOLSIKB
         dqtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=TKS++1L4;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :content-language:thread-index:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A28m2xTP2YQdWwvtLWS6VIWsI8z6/A4nytTdWER7yw4=;
        b=GdOZCtzAEq4ijcP5G13ftnwa3DTydFGitl9R+Xj6bwUv4MWJf9RlOkxL9te/ufrBS+
         2y75Fs+LgoPQNGtHycwP1dkZOgSeClbwL+ODgcLcquLIPD3+CSBJ/t06ZOAatYvd5wS3
         ZRjb6qvthPZGxnoF4KEIUKbpi6nMM4Z3kBsaSCPz/jDPdijwjD02sFWjiExyHm1WtcIH
         wr+M960BADfyAYTXklx5OyTIowf16tyY2dtupV5+t9JElw/vCUwKI6Sv/LHn+bcTITGj
         yUN7uZIpFqlRt8AiDM+CldcTv7zcXWPY2HD2M1qxTZh3dfIv91y0Bk49ATzzTAm3Qzq5
         3POw==
X-Gm-Message-State: AOAM5314N1w9Yn/qNByg0sbXSbs0U8osg9zop65HwG1L+wYklGsP5yfx
	09pVagUXl3v3hs+io8MszwE=
X-Google-Smtp-Source: ABdhPJxE0dJkp+b6+rNQV4NrfKseVD2ZMgi3bcYL3Gm8vg1QRZxtw9elu32myTCCSJHBpKwvanWFvQ==
X-Received: by 2002:a9d:74c7:: with SMTP id a7mr258234otl.42.1622739617890;
        Thu, 03 Jun 2021 10:00:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5f05:: with SMTP id t5ls153954oib.3.gmail; Thu, 03 Jun
 2021 10:00:17 -0700 (PDT)
X-Received: by 2002:aca:3004:: with SMTP id w4mr117417oiw.124.1622739617515;
        Thu, 03 Jun 2021 10:00:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622739617; cv=none;
        d=google.com; s=arc-20160816;
        b=Q0TCPbkMn15H/knUQcGXYL6V/n7WTmF/XXpAZ6z3nEcwic/4PwmJKCQ1WH6zEoStcc
         h0wmCa5Kg/mDqSEwG5KyKTtfGULdFG31mN6q2YA9akAEUktUG8DrCV6Kqu0gofjGhcJ3
         q/P7H1n/QTkJ9dYvO3iiwDYxS1i5Q/ow1dLqM8R/iJyM1GJsldAXtJf03K+zmczERB4/
         wsGwD50KlrvXN+/G/lXS16XcKFCSD5MdZgXaJn3RG7UsmxfygWgJ4LATY8SU6p4cGBMP
         PFUnZhRFa2riae2AGDxoiVPO3QGJCqksZ8/EvUT69IKP7sjUVaRvYrLGqLk5OADtGXlk
         36OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=6sGBQMxHgyxCwDyzxIWgWc7VKrWyLjlK6AkJSzo3n/M=;
        b=IEmlcTpoU7lk65YV+NsOCC6qRUcryo4XfQPVwVkvFChJOwpfWXPquW9or5XkzJS4VF
         Oq2xUI10MdfOZj2jGsPvtLoYDtr7VUrAnDrbAQN+Bc0t6HTxoWvRXKZwC7NrUZp/fWfH
         aEIX6X2OSbZHzG5UAuTrNZT43rpmPnXvlJ08Tj+h3QEXqWjUUxIM8jpciR/BK6sH2+ae
         jhqAoCxoaJjuMVm8LC5cRry9P6v0ouPK4BHnrtJJFFlLDEzx51u5eES8dm3AvYKbozCE
         XTcxliMyZhbvT9HMUgcr/a2luMclmc5wjgtYz7O0OcaXf9QifMe6OcrwCH2CCDJs9w2D
         mPKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=TKS++1L4;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id a25si460419otp.1.2021.06.03.10.00.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 10:00:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 60b90a892eaeb98b5e6934c3 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 03 Jun 2021 16:59:53
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 6C41EC4338A; Thu,  3 Jun 2021 16:59:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL
	autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (i-global254.qualcomm.com [199.106.103.254])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 342B1C433D3;
	Thu,  3 Jun 2021 16:59:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 342B1C433D3
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nathan Chancellor'" <nathan@kernel.org>,
	"'Andrew Morton'" <akpm@linux-foundation.org>
Cc: "'Nick Desaulniers'" <ndesaulniers@google.com>,
	<linux-hexagon@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
References: <20210521011239.1332345-1-nathan@kernel.org> <20210521011239.1332345-2-nathan@kernel.org>
In-Reply-To: <20210521011239.1332345-2-nathan@kernel.org>
Subject: RE: [PATCH 1/3] hexagon: Handle {,SOFT}IRQENTRY_TEXT in linker script
Date: Thu, 3 Jun 2021 11:59:51 -0500
Message-ID: <09a501d75899$df036060$9d0a2120$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQImhg45Cwtn7gWc92+5nwbl9gAFPwHydMNpqlSTsfA=
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=TKS++1L4;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

> -----Original Message-----
> From: Nathan Chancellor <nathan@kernel.org>
> Sent: Thursday, May 20, 2021 8:13 PM
> To: Brian Cain <bcain@codeaurora.org>; Andrew Morton <akpm@linux-
> foundation.org>
> Cc: Nick Desaulniers <ndesaulniers@google.com>; linux-
> hexagon@vger.kernel.org; linux-kernel@vger.kernel.org; clang-built-
> linux@googlegroups.com; Nathan Chancellor <nathan@kernel.org>
> Subject: [PATCH 1/3] hexagon: Handle {,SOFT}IRQENTRY_TEXT in linker script
> 
> Patch "mm/slub: use stackdepot to save stack trace in objects" in -mm
> selects CONFIG_STACKDEPOT when CONFIG_STACKTRACE_SUPPORT is
> selected and
> CONFIG_STACKDEPOT requires IRQENTRY_TEXT and SOFTIRQENTRY_TEXT to
> be
> handled after commit 505a0ef15f96 ("kasan: stackdepot: move
> filter_irq_stacks() to stackdepot.c") due to the use of the
> __{,soft}irqentry_text_{start,end} section symbols. If those sections
> are not handled, the build is broken.
> 
> $ make ARCH=hexagon CROSS_COMPILE=hexagon-linux- LLVM=1 LLVM_IAS=1
> defconfig all
> ...
> ld.lld: error: undefined symbol: __irqentry_text_start
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
lib/built-in.a
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
lib/built-in.a
> 
> ld.lld: error: undefined symbol: __irqentry_text_end
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
lib/built-in.a
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
lib/built-in.a
> 
> ld.lld: error: undefined symbol: __softirqentry_text_start
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
lib/built-in.a
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
lib/built-in.a
> 
> ld.lld: error: undefined symbol: __softirqentry_text_end
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
lib/built-in.a
> >>> referenced by stackdepot.c
> >>>               stackdepot.o:(filter_irq_stacks) in archive
lib/built-in.a
> ...
> 
> Add these sections to the Hexagon linker script so the build continues
> to work. ld.lld's orphan section warning would have caught this prior to
> the -mm commit mentioned above:
> 
> ld.lld: warning: kernel/built-in.a(softirq.o):(.softirqentry.text) is
being placed in
> '.softirqentry.text'
> ld.lld: warning: kernel/built-in.a(softirq.o):(.softirqentry.text) is
being placed in
> '.softirqentry.text'
> ld.lld: warning: kernel/built-in.a(softirq.o):(.softirqentry.text) is
being placed in
> '.softirqentry.text'
> 
> Fixes: 505a0ef15f96 ("kasan: stackdepot: move filter_irq_stacks() to
> stackdepot.c")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1381
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  arch/hexagon/kernel/vmlinux.lds.S | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/hexagon/kernel/vmlinux.lds.S
> b/arch/hexagon/kernel/vmlinux.lds.S
> index 35b18e55eae8..20f19539c5fc 100644
> --- a/arch/hexagon/kernel/vmlinux.lds.S
> +++ b/arch/hexagon/kernel/vmlinux.lds.S
> @@ -38,6 +38,8 @@ SECTIONS
>  	.text : AT(ADDR(.text)) {
>  		_text = .;
>  		TEXT_TEXT
> +		IRQENTRY_TEXT
> +		SOFTIRQENTRY_TEXT
>  		SCHED_TEXT
>  		CPUIDLE_TEXT
>  		LOCK_TEXT
> --
> 2.32.0.rc0

Acked-by: Brian Cain <bcain@codeaurora.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/09a501d75899%24df036060%249d0a2120%24%40codeaurora.org.
