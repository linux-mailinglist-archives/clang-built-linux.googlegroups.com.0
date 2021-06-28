Return-Path: <clang-built-linux+bncBCU73AEHRQBBBNMA4WDAMGQE6GN3IYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 979D63B57C7
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 05:21:26 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id p2-20020a63e6420000b02902271082c631sf8321808pgj.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 27 Jun 2021 20:21:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624850485; cv=pass;
        d=google.com; s=arc-20160816;
        b=XkH5OAgbi/qqWZL2C+o/G7oJLSYb7xmGs7gMN6pGiTBXXUp9JXVh1vV7MaJFMORVAv
         qWIEnWcyciMdP55uqulBgUg+WdHSc71wQi4fGJo29uHTSW6YjK4jyODNyn8Fz1wzHMm0
         pGe+r2E2mVmGf/F4yyTmVjVLBXAC7dgr23yxHCs8RHfyDhCuZOEQ46KC20/GGGwveJcR
         sKpqSp9xnrcc3hZuZL5Wbha+/gLayLVgeKgta60/pC+2UKo7CFjHiNIU6+/hqSpJYUkR
         6boDK3DQRy+jdiAWpfGM8zpXPVcYc81gBkFX3pnPD+SQbBTFq36pnrYcUa0Pz2O+pwy0
         ebRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=CBbgfuqecpPVcUtuEfMLBqc8lM0kJBjDUpXc6Tu+bNk=;
        b=ymOR9y4JPT9Kth5oMPgCqBvRHutpowkhKIRCEkcBiFkdgHrTvlIWEKoNQEL13mrDQ4
         ndAlKuq0fTpxds5g9V/1ovS3V0lBL3uaS/a+V2FeRdrY6Ex8e4fG22UHPXpTmNyPa3On
         iS+FvjrEfAzIvm8ugJ+832KH4nPA25at5zjzUELHqIG7z1WziWYdiG/AT7mC92DIYz1x
         sctHHGcCdAGD/gSaIM0fNCP8UzoElq8fRLcIFrb3OHa28SqJISdw6OUOw5JCTkycTi4e
         ua+F9zcWQ598nASR0Rbefv17RujBiNcWqFd+hwgkxEHxzXSQBvqLONvvf1Vvjl/mhz05
         HeRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=lpcy=lw=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=LPCY=LW=goodmis.org=rostedt@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CBbgfuqecpPVcUtuEfMLBqc8lM0kJBjDUpXc6Tu+bNk=;
        b=e2lHV1mfbghGJVyxgg1eAT3OBFO14LEwZFvGAMYBcFo0+efM/GZnPsKiu9rPSicQlx
         cYA3hOrZgDxAsuStUQ9MvVRQWVB2Hg8QgM8TkAhU8YCxdVFPSjNy/JzrNs5aITtVKVxd
         9rsfet76McCWpjHb5uwynIW/mdy6t4b19/F0jq1eqcvqKBNLzPm8sZc7C4S8/TWlX8Ia
         DXReVrbfaVKKmjSvlPaWivqKWhxstTtvRHbfcIL0B6j8SclabYO3ugUEdcWhTTNnuLEu
         c1MP+lovl2c44hZlA0cvtcvNlIrUcF5bW9HhXs988m7ZTdOt+7t4/vk3Lm9R/gKO3dJL
         qGQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CBbgfuqecpPVcUtuEfMLBqc8lM0kJBjDUpXc6Tu+bNk=;
        b=FB+G7Vs5jA0dpMgQH/ksGEkeEkftr5pJasdBRV4FxUilBBeCTQDyycndTdcG0LZgSa
         pr2RyU7ZC31KELr0DuHX+bbCGMdPkhe4cDI1gxatE8K3w/eGNTtExK1GxNQ76N+RIBAR
         WMVA2S/sevpFCNLIqRVBBviWXYiofgmCDTKTpslSKA3dXq8mG3om9GcKRvSTYikvUjDr
         ZjUbQFUWKRGmSHnNonQuLH9P+c5oH9o5AAtQactWWf3raBvLN0/t3xCD2g3UKHKfCmBB
         D+xe6YcSSFEOsoq+UMgfN5nShFm8u7KgbJoS+NqjzwrXTcmXm057NCg8zbtZv9jIpXMC
         JBpw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530d1K/RebNbbMtmriPPd4ZQ6uTCrvq7ETLtiFTcJz6Jdr7c96s+
	VgPtwq8JodhjYCQekl7bu4E=
X-Google-Smtp-Source: ABdhPJzUlaKNOuB6Umpq//c+HQ9HYwc6Li3TqBCdkzjFm9P/U5XchAn64BxaXy2SAxWeACs1KoxWmQ==
X-Received: by 2002:a17:90a:bd18:: with SMTP id y24mr35705814pjr.83.1624850485342;
        Sun, 27 Jun 2021 20:21:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b418:: with SMTP id x24ls8569538plr.7.gmail; Sun, 27
 Jun 2021 20:21:24 -0700 (PDT)
X-Received: by 2002:a17:90b:4b07:: with SMTP id lx7mr25998903pjb.158.1624850484715;
        Sun, 27 Jun 2021 20:21:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624850484; cv=none;
        d=google.com; s=arc-20160816;
        b=bHfqvXUtbtDNCTHaVgE3rPTfXedQ/xg0mWsuRhIJfI7Na6YDeOb7teY1E4gzQr4EXV
         E0Zz/S3kNofyAIgLKH9b6PMlXXKXbZGtbteiVdXjeCChjWTnzwd2Y1f1z9Vfl12Yoqt0
         3KAH2CHaDw6F4nwbp6yUgvDoLkTGSfq9xIZofRq2Jh0dzlHzwmc6bb0iwl+gOgp0rVDh
         4tsBOcolj4zLj6kMSRjVFGFVIw50tmG5U9ZLZfDCQOOvXvAABeFFOMNyFzpe0HgCqpqU
         uLKRZym732rQ5FpBKM8F2j1U4gb2sETP4DVcDAsrVZcxhNVwyWLINy0VOgzbcidu3890
         8jXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date;
        bh=FJ5RO0UweCT9FO+Tx45uWSC+6RRckYbO7SMRK7R5L+c=;
        b=ykTmkbZKce6vmYl941+F2U11f+ZAGBpgSIlUf9cAJKnVjB/H+vUj6IIGMjlSNmYwLv
         u2mhPGygDHWJM4LnULIYXnBJPoxZ8CjC8pE0kZ606mH9h+izPqeAyXE1slSjqfPL5MVr
         M5ru7qYgXMWbGSzg3WUQCFj7ohEHYqda4906mcouaKpkqDy2SMHQbECjFd0rgGEKEgbB
         N4RIrwc5jRtEWLntnoxq9Tvt2H7yQ56yKy065T0gKbVcMT+KeAMH+1sVwKWIS2lClvNF
         hflI6Cdm2ploT1A3O/ousDev6sY05NxmaHGXy5q0P66jB4ULgR/vakmcml9wcTw24Gel
         i+tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=lpcy=lw=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=LPCY=LW=goodmis.org=rostedt@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id gc23si1559246pjb.3.2021.06.27.20.21.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Jun 2021 20:21:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=lpcy=lw=goodmis.org=rostedt@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from rorschach.local.home (cpe-66-24-58-225.stny.res.rr.com [66.24.58.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 08B4461C31;
	Mon, 28 Jun 2021 03:21:23 +0000 (UTC)
Date: Sun, 27 Jun 2021 23:21:22 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: kernel test robot <lkp@intel.com>
Cc: Daniel Bristot de Oliveira <bristot@redhat.com>,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [trace:for-next 38/40] kernel/trace/trace_osnoise.c:1584:2:
 error: void function 'osnoise_init_hotplug_support' should not return a
 value
Message-ID: <20210627232122.73f00a07@rorschach.local.home>
In-Reply-To: <202106270431.0esjH5YC-lkp@intel.com>
References: <202106270431.0esjH5YC-lkp@intel.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rostedt@goodmis.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=lpcy=lw=goodmis.org=rostedt@kernel.org designates
 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=LPCY=LW=goodmis.org=rostedt@kernel.org"
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


Daniel,

Can you fix this too.

Thanks,

-- Steve


On Sun, 27 Jun 2021 04:39:35 +0800
kernel test robot <lkp@intel.com> wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git for-next
> head:   6a2cbc58d6c9d90cd74288cc497c2b45815bc064
> commit: c8895e271f7994a3ecb13b8a280e39aa53879545 [38/40] trace/osnoise: Support hotplug operations
> config: powerpc-randconfig-r031-20210626 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 557b101ce714e39438ba1d39c4c50b03e12fcb96)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git/commit/?id=c8895e271f7994a3ecb13b8a280e39aa53879545
>         git remote add trace https://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git
>         git fetch --no-tags trace for-next
>         git checkout c8895e271f7994a3ecb13b8a280e39aa53879545
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210627232122.73f00a07%40rorschach.local.home.
