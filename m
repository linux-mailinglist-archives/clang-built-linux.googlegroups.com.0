Return-Path: <clang-built-linux+bncBD763O5S5UARBFFO6OEAMGQEIHD4WQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5143F00E0
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 11:47:01 +0200 (CEST)
Received: by mail-ej1-x63a.google.com with SMTP id q19-20020a1709064cd3b02904c5f93c0124sf655343ejt.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 02:47:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629280021; cv=pass;
        d=google.com; s=arc-20160816;
        b=p1gfCkePu7sSrW8bl9Ph+PGT6DucqrZ6HmKRBYqZYc6JNbEYrd0I4fihQKJMSFAlne
         XH7ZXb90zvt7PqR9OL8764q1C6XzBvBBMCuJPuqv/dWHzKxVS5vRVGU4CWOhxRSYSlCB
         +fwR7rbfvk5+DLdWwKj6xQPcpW4xopznevxJIod+5J71a/isH4NUWxQBBKykHdFGagn7
         0B5IVxFs2a/59ve1YYvSqncnEOMB3soWM3Q64kpu5zv1LhhtvJfKWbdLDMCD3TE84Yuo
         c58lucIoH9/o2fV0o3ALMKAgjjoVQHK71q+7K5p0Jumd+gFs9khWy2rxC1mtDjPyukdJ
         d/sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:importance:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=2z/lY/Enj86uchDd9c2yE4paI0KE/c3AZYO1oPP/h1s=;
        b=cNMnD4+7zXdoCYRvPpYfus1z35dl3+lkW7BhZjrc0jGq/qMoIXscDpSgLqEZD0cD0V
         PRZFjdvZIsfuu9fK0azMuLSGb1F6Ur06J5zxGRDokuGjAvJL09aWgCx6MowUBGC5Ls3S
         r9ogKi/BJQw92tX0OAaSJaDCgjqeOufJa7hCSH0AGQWmZCwucOUFZT+Q2FKhynUgDRBe
         BGMxpy3n5lQeEh3h1414eMMomO0wh5tL4yqQeYxGOr86p34NT5KsbLB/jCZ75BlvoOyS
         fvbvm3CKtRC4NAnCKUasH/y/PQlgMHJf+r4pITIvagLospeHi9dA/ZD8PGOnaZQMrUVz
         9xtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=gHobhRl+;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="R/HCAqOG";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2z/lY/Enj86uchDd9c2yE4paI0KE/c3AZYO1oPP/h1s=;
        b=Re/8IFmJ/pY65I2Iwf5Y9sGHVIYvdCSDMUixJPn1MiOHCCfBnXS/JmYKHBVWH+4tji
         yx5nl7o7nf7ABkXwv8YpBS7NdN8KSFrZFb7mIcvr9ZoaWk0O7Hza1ec10e4pUuniZb1w
         +uh6LgQUBVUPzwechwsF7p5zsrXWRRpjwQc/ZkV9MR/BTdDOMe/Xqd3m3fyhEoUBWIJl
         lk1KL2AAz0BvkXZ7/NWVij4xMB+mhMrBvg+IAw1Djuc47gpazOBJmxbBTMIdDD7I6y94
         2MJ2fBAbgB/o2/6KXp0hqGBOgPfDaiJSmRmdD0kX5Kcj86b3s/z9CFa0pVTvmFILepMX
         AdRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:importance:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2z/lY/Enj86uchDd9c2yE4paI0KE/c3AZYO1oPP/h1s=;
        b=qJA3On8NzCvbupHge96iXwmH4atFjiD8mT3xc3UCwRQL/CvoDyrRr3waEZiR0ffXsF
         dw5CUZbDpA3stLsNdBkDgBtfcholuKNEJA0FJT9gdsOP7F4UU2qcYu107aUl6K6T5i5R
         74jZVEb/fgVS4Q8c/uJXhaMfQjeKqV02ks/z9hwDnGo3zbXLv2jy9zgpA199e1keV8gA
         RwLginCb/zzHY/sq2DaBsPHhwBpLZGB1wrxPnB6jAjXpmCOpvg3Tb14yp63QLoOOdbgk
         cjMIlBptfttHMJNyrICpiS1tNvq3ZUBqNwD0Q8VowMo2aVoBsPhIifqA4dLfUJdBXImv
         OZ6g==
X-Gm-Message-State: AOAM5302ENqgZEQ9QdR7uvokI99ho9YpId8n2jqj0HZbegIH7+71iWIm
	lweXBTjGFwyl3zhjXEwAkSo=
X-Google-Smtp-Source: ABdhPJxk/WBpY6JuopFGMDavphs1Gg9LVoQdydATUzx18xPx9tHK1RQ0OeIOHmFzXRDFVgFik8bkwA==
X-Received: by 2002:a05:6402:254b:: with SMTP id l11mr9217123edb.268.1629280020867;
        Wed, 18 Aug 2021 02:47:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:332:: with SMTP id q18ls1853094edw.2.gmail; Wed, 18
 Aug 2021 02:47:00 -0700 (PDT)
X-Received: by 2002:a05:6402:4412:: with SMTP id y18mr9254239eda.364.1629280020027;
        Wed, 18 Aug 2021 02:47:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629280020; cv=none;
        d=google.com; s=arc-20160816;
        b=YQewBK4hAQzn7dzfXQFNBBm9TgsWynGg6i5tNF0vdZFiETHW5yPe7jZSOmFPga6O5m
         RuTCzpUgO4sklRv4zqrb2K6fQPofAmTOKgLzHwpYD6qo2+Tu+O3rwgeh6iynikHG3BpG
         YWjh8MQZpJXOluyqCRwZgY8G4TmSo5/W8Q4/QITgVuf8UqMLkMg0cugDseDt9zlmGf4n
         KyHd8cRNwh8wFI/5QG0wbf2rHQ1WVJKZqMzZ7W/L9aHLktazoUwpA/86wVHVxRfceqpD
         Iicq3Yk4iYSoNNrFW+RADRTDglOJ3l4/t5a1uClogQKyNGuaELDYPyO4etKLP1sYPO1p
         iIKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=importance:content-transfer-encoding:mime-version:subject
         :references:in-reply-to:message-id:cc:to:from:date:dkim-signature
         :dkim-signature;
        bh=hwGg9exsHXRiktj4ujuzbKb55QtZ6x42jkPu9k5wzzc=;
        b=Hbbv3wcFvY6l+HYwM53FwEvuwPS5oFy9lYxxT08oDwnqSF9BWm5woY7OPDga5mutKs
         7gUSvogbULEdGuY39sk1Iy3IIeE4CSlrxurjjhYY4fWRsDwKbPKyFeWiSMX0lipbIyLz
         A3SrwCwLG34W6LOlMJDVYtarYB2fxktrI7Q0ejwiyYbJcuLKyCAVMIQghhSuDPPxVnvA
         BnlhKZHMDSN0QBsR6iYxa9iksFMANElcQF7JaR20yPgVdqQKvcYSq6a3uzgp8UqQKudT
         0tVMYzZwYGRZU0KCC1oWCbeEZs9Hf/B0FM+URS3FmLES90To3DV+LsPfIoTVZCpo4uf9
         lPjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b=gHobhRl+;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="R/HCAqOG";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.151 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org. [80.241.56.151])
        by gmr-mx.google.com with ESMTPS id 24si282199edv.4.2021.08.18.02.46.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 02:47:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 80.241.56.151 as permitted sender) client-ip=80.241.56.151;
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4GqNN35V2XzQk15;
	Wed, 18 Aug 2021 11:46:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de [80.241.56.125]) (amavisd-new, port 10030)
	with ESMTP id 2snXRikFRMiq; Wed, 18 Aug 2021 11:46:57 +0200 (CEST)
Date: Wed, 18 Aug 2021 11:46:56 +0200 (CEST)
From: torvic9 via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Christoph Hellwig <hch@infradead.org>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"x86@kernel.org" <x86@kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"graysky@archlinux.us" <graysky@archlinux.us>
Message-ID: <182968935.121092.1629280016601@office.mailbox.org>
In-Reply-To: <YRyzhWJrqcRZkYRM@infradead.org>
References: <269701460.117528.1629210189833@office.mailbox.org>
 <796036867.117557.1629210288168@office.mailbox.org>
 <YRyzhWJrqcRZkYRM@infradead.org>
Subject: Re: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings
 v2/v3/v4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Priority: 3
Importance: Normal
X-Rspamd-Queue-Id: DF67F18CC
X-Rspamd-UID: da0a0f
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b=gHobhRl+;
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b="R/HCAqOG";       spf=pass (google.com: domain of
 torvic9@mailbox.org designates 80.241.56.151 as permitted sender)
 smtp.mailfrom=torvic9@mailbox.org;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=mailbox.org
X-Original-From: torvic9@mailbox.org
Reply-To: torvic9@mailbox.org
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


> Christoph Hellwig <hch@infradead.org> hat am 18.08.2021 09:15 geschrieben:
> 
>  
> On Tue, Aug 17, 2021 at 04:24:48PM +0200, torvic9@mailbox.org wrote:
> > +	  Generic x86-64 CPU.
> > +	  Run equally well on all x86-64 CPUs with min support of x86-64-v2.
> 
> > +	help
> > +	  Generic x86-64-v3 CPU with v3 instructions.
> > +	  Run equally well on all x86-64 CPUs with min support of x86-64-v3.
> > +
> 
> > +	help
> > +	  Generic x86-64 CPU with v4 instructions.
> > +	  Run equally well on all x86-64 CPUs with min support of x86-64-v4.
> 
> How the f&%$% is a user supposed to know what these garbage descriptions
> are supposed to mean?

I agree, will come up with something better in v2.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/182968935.121092.1629280016601%40office.mailbox.org.
