Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLM4STYQKGQEIFIGTFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CDB142192
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 03:19:27 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id k2sf19887386qvu.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 18:19:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579486766; cv=pass;
        d=google.com; s=arc-20160816;
        b=AOxggfdlYoSsZN7oyRQQqQ3+sIZu4D3yeu5YbiT7RmKEOvfsk267dFImoB17LJ7zj2
         EgfR+9iJcNdYgcVSaPulKSL8tQHRWLFAn0anOP0kLEiDLDkLMHYOwdY3/tKERUlTe6Kl
         dKD7Jd82MCTaqFDqrUmlpjhb1rX4upLD5DhXWKwPMFB07Yp5rXgMHX/Js4rNmyd28ROC
         RjT9DjnpvJL66PPJ9sBW53dh+pZqb7lTTPzF4ENXfcgCdhr1BcYCq83SIQ2AszBsjcF4
         mOsLUNPYGtzKGmU2b2BZa7vDC5MDcP80D3X28zKto+Lb/4V5TxuIq1z+tE+WCtyTtiN3
         9+Bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=YYLIaAxl2oym242IYqF9zMRMind6ZTlC0UBw32zxa3I=;
        b=XqGR6FMLKE30DoJo+qae8EgEwpZ39AjKDrBlBnHc+lJpg+oxlOCqL2G9HsLx8ecBzl
         p8S7a/mQsti4xjlPM2cytWH9aCZZwIiwlqIGMI9qofZo63kuVN76644y54tRgok4at3Y
         7UjtcF+lpTCSKoerUFBwpGXRYrFQgdYnrlUhhtsJmKenFQitUPP3opMxvp3eyl5SM9oS
         XCT6CWP2G1Mp0os6atbJt4zADx8yCzTZyG/tp8zE4ckglaXhCNir+d1r1STrWAWzQ70s
         pZDchUwXVgbujvr/MdWAwzkYFft/LBUMfFoQyYG343H92AQIegIIPKlOt4kEEIuVioWf
         5neQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Wekv/Egp";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YYLIaAxl2oym242IYqF9zMRMind6ZTlC0UBw32zxa3I=;
        b=se2X0FgSaFOJNCBZI51Crm7Ojx9QxBfvXwbh09a21f4HKP+LqYZA8WtZVkqLsLIwWc
         AOcoOY//mLGsDQdceIvvU6H5XBJXPld9OAMrYodsar42moEhqHzknQt39MEMFyyenPsx
         fAL83q/TO6l9bRrL3UObZNeC0rGpEesKXCNj/mvZeqICtga0GGIAvryTvAKvGPUltoGl
         aQq3J6ODBb0c4YqBelA18vu8joc2E7qst0gJD5o61LnIlYvYlnffrlxYlZJdv0SyImbX
         2n3YWeq4xsZzkPVzOhZwawdkrGX1cPJDE/zTFm9/Q3utBNDYvYjazzt/YV01RZQPsJjW
         kjsw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YYLIaAxl2oym242IYqF9zMRMind6ZTlC0UBw32zxa3I=;
        b=EZ8u2hgEz2rtuEX/jLLoDLsfLmsLK3/wZe/hU62h9KnpZNbpAg8FxSCzj49qLh8Hmm
         DpLSL/jdRpk4nuDMpDTCOrgdBY9V7fFbmxif1dUKJZEKQ5ROqnWatnzGLJHSqrTD/ik4
         5EgG9D/cUKy64Y9on1GkGmE9gyt00c1P+V+M6mokRVlwXu+ffmmtRw7jdsg0msiSYxjB
         VXrYeiC2QdYteZiE2m+zvAAH1Z5gfbQ1cmE5SCc8hJH9z9btF5K57yXDzCKkHtiofefv
         wjoeM0P+JLFxVGmuaepzyUAVXjQ71nS+2op9mZBtpqhhKjeDg3oWERPm5g/WzRT3bJOm
         t5Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YYLIaAxl2oym242IYqF9zMRMind6ZTlC0UBw32zxa3I=;
        b=HJF2B41Icwl/iHFVA8cqtnFp/QjaY9PCO7LptnlUhSivffCKTbnS0aDRaMCoI4sGdM
         n/Q3mINUjONN4fyCfMtg7wHzLpd1yYGYJ0FJpZzkKy538iUKxTAKlxoZb7SeC9jyTMNx
         wS97d5fyufwGLGDMg0/6INpBXwalZ9FMz7VREPrAh3QzTM19afaqzAIwIlEGReKcw3HH
         MKUm0GPMdnx7WN7c8MDHm/TFxa59ACpOV+6T12G3a22reifUSpEPuYJrfKEZMAEyoW4b
         8px8pGIKpEV+3KXnLnzErOxeLwV2E7CA88pUkx6SncdgIX3p0OtQLQ4AOzncBc82CLre
         42Zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVIhw4gduDQxmbc0TujBEG+n/ihqpq5Z6RxpMJMysVw7Dc8qWvT
	qy97jqRVlxmluOVSvKK+zpE=
X-Google-Smtp-Source: APXvYqxuhOQvUHEAcot7awGqqqrPh5acKYIYivvSoFHW17B/oriYKD9pcaEwL5whvyRsWkDwizCeSg==
X-Received: by 2002:ad4:408c:: with SMTP id l12mr18901813qvp.164.1579486765990;
        Sun, 19 Jan 2020 18:19:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:15aa:: with SMTP id f10ls8931070qkk.1.gmail; Sun,
 19 Jan 2020 18:19:25 -0800 (PST)
X-Received: by 2002:ae9:e50d:: with SMTP id w13mr48659980qkf.458.1579486765649;
        Sun, 19 Jan 2020 18:19:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579486765; cv=none;
        d=google.com; s=arc-20160816;
        b=pQwG09gBEbTnGMJI6XMu2ztiqrhCsJfWJUlukRT1LaeVqgp0PZr4u7yKAa96PG2iCK
         hxxRLPfC9y6I/XqeIOovBAYQXGV1s7FoMVmnQgQujQU5v954kzEbp/qAb6fRRDgFHoG3
         pyA/cDfb9RzETD17jLX/IYun993sINywkCY/j/g3AL74cTEkkP6btQSHjXUWk1gGHPNw
         PNj+RLAA8TWVBeW3Jmfo/nIoKuH1g8dTZxIgbZx1QQs3da21rTwaEA6y2Zm69Njvfs7L
         Yv/ciF8h+GNbUeFxWogNjrL3uKYOsfTySAi1VJcpBVwv1rSCx9kaHiXjhcFFPWnmRv76
         IE1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=aCkEqq5MwBVp2+tMmvTS+19+vpiE4OQuYLlsGrs1R0g=;
        b=mC+f/PSa10XoRusfgnqt84WM/N+bsjYUmsN9cYV0xuAFW98ist/F9db8QDf3LsTibX
         kBdDb0ZV+7zG6niqbH8HGOERuAD3z9Codvh4OiIJ/2cGGuI7ixvNnxdIrvy9PQSfb7aF
         ipHjm6+WjIpNvcXPc9ZUurpC9XSa5dpeolg3K/6Vz7hjy6y93PsFCsZd7mvIOWXPwdSU
         tnMYZ5vLa7Ia+txucSyc3rkDfbbIcmEGTkrc732jtiDSmLDFmeXQ+Km78PYMbnzR99Fp
         owK9K3U48dAxfg/le5arz/ajw+iR0O74IiWUfHkVetFrJJSFNmWaZokB5K/TronBheOV
         QLrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Wekv/Egp";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id y2si1504703qtj.5.2020.01.19.18.19.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jan 2020 18:19:25 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id 13so27236586oij.13
        for <clang-built-linux@googlegroups.com>; Sun, 19 Jan 2020 18:19:25 -0800 (PST)
X-Received: by 2002:aca:3141:: with SMTP id x62mr10888021oix.108.1579486765072;
        Sun, 19 Jan 2020 18:19:25 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id m89sm11967637otc.41.2020.01.19.18.19.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 19 Jan 2020 18:19:24 -0800 (PST)
Date: Sun, 19 Jan 2020 19:19:22 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: ci_notify@linaro.org
Cc: tcwg-validation@linaro.org, llvm@linaro.org,
	clang-built-linux@googlegroups.com
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allyesconfig - Build # 47 -
 Successful!
Message-ID: <20200120021922.GA24225@ubuntu-x2-xlarge-x86>
References: <198927633.100.1579449655484.JavaMail.javamailuser@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <198927633.100.1579449655484.JavaMail.javamailuser@localhost>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Wekv/Egp";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Jan 19, 2020 at 04:00:54PM +0000, ci_notify@linaro.org wrote:
> Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allyesconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-release-aarch64-next-allyesconfig
> 
> Culprit:
> <cut>
> commit 0f957109761913c563922f1afd4ceb29ef21bbd0
> Author: Roman Lebedev <lebedev.ri@gmail.com>
> Date:   Tue Aug 6 17:03:40 2019 +0000
> 
>     [InstCombine] Shift amount reassociation: shl-trunc-shl pattern
>     
>     Summary:
>     Currently `reassociateShiftAmtsOfTwoSameDirectionShifts()` only handles
>     two shifts one after another. If the shifts are `shl`, we still can
>     easily perform the fold, with no extra legality checks:
>     https://rise4fun.com/Alive/OQbM
>     
>     If we have right-shift however, we won't be able to make it
>     any simpler than it already is.
>     
>     After this the only thing missing here is constant-folding: (`NewShAmt >= bitwidth(X)`)
>     * If it's a logical shift, then constant-fold to `0` (not `undef`)
>     * If it's a `ashr`, then a splat of original signbit
>     https://rise4fun.com/Alive/E1K
>     https://rise4fun.com/Alive/i0V
>     
>     Reviewers: spatel, nikic, xbolva00
>     
>     Reviewed By: spatel
>     
>     Subscribers: hiraditya, llvm-commits
>     
>     Tags: #llvm
>     
>     Differential Revision: https://reviews.llvm.org/D65380
>     
>     llvm-svn: 368059
> </cut>
> 
> First few errors in logs of first_bad:
> 00:03:06 clang-10: error: unable to execute command: Aborted (core dumped)
> 00:03:06 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
> 00:03:06 make[2]: *** [fs/ext4/super.o] Error 254
> 00:03:17 make[1]: *** [fs/ext4] Error 2
> 00:03:25 clang-10: error: unable to execute command: Aborted (core dumped)
> 00:03:25 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
> 00:03:26 make[2]: *** [kernel/dma/direct.o] Error 254
> 00:03:32 make[1]: *** [kernel/dma] Error 2
> 00:05:26 clang-10: error: unable to execute command: Aborted (core dumped)
> 00:05:26 clang-10: error: clang frontend command failed due to signal (use -v to see invocation)
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[llvm_branch]="5354c83ece00690b4dbfa47925f8f5a8f33f1d9e"

Another one of those "already been fixed for several months" bugs.

https://github.com/llvm/llvm-project/commit/e4bd38478b38ab752af54b380da9f265fd90ba72

https://github.com/llvm/llvm-project/commit/9bece444dd5056ba437623d4d2baa5b237c9980c

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200120021922.GA24225%40ubuntu-x2-xlarge-x86.
