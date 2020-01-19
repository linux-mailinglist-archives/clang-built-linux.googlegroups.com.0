Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXUSR7YQKGQEPTTYSRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F927141B68
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Jan 2020 04:13:35 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id o24sf18907800qtr.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jan 2020 19:13:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579403614; cv=pass;
        d=google.com; s=arc-20160816;
        b=zZUeWcpAINFlM7+QtEFPJV5fi+B00gCtWRCQldq9RhbpUk19bOgqpHQVFMP878DGGR
         leUnkzO/14mrCB8v74bKez2C8gHBrm4/j15zncG/K3nqZRFUG3kn9gXj1ZQqNq4TN5mY
         cIoIpELd76nDmh89FO1efSYwpMynozbb2Gf+Q44cdmCTFQ2vyCBCah6TgeBEtjwQAEj8
         Ptuim8c9muSrsrfREdOQapUKemwTVw+iGvnRBv4CVTYtPViBDzwCTEH052pBdorjsYuX
         vUkhFPS022x0birjcOrdkmXknMrrE9JLWGDI5DyQqpcyIlxkDTguma4floPRMDdoNK1a
         n1FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=k23RUguUAZFEUhO9ekpKccks44d5qHxTlhTW5dWYSOQ=;
        b=wKRj5s9LB+j/SsDhLozDCYL082FWyMj5sTTIZSl6WqsDHQMshdm+uQd9UBMoWesf/V
         Y7pIsgM4ikn2DKch2hNCev00FIo+8Y6bpuunvRcIsp71bjb8U/s1loBKEYHux9fT/KBf
         Gs7pStRNjrbotcyzBd+rAOrUJSVlmI225Ec3N0BU6dpUv0XwZ90fIo6BcHcKCZs5xXgK
         n6CJ0XBU0iYv59Rk4/2TdALYKGICqk037dYur3Y9eWkemKwfjzNm3+YwwAX2T0URQLEX
         /7Y3dOkT7Fafl6jwO9MoeF0ifT7tsw6C72KOWplaWS/9CGD0UTL/fV31ypE/yVq7aYAF
         cNRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="o0vMP/P9";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k23RUguUAZFEUhO9ekpKccks44d5qHxTlhTW5dWYSOQ=;
        b=FEPJqb7G6OktL6sKkF5z3tChC+5vObHwFZvdOf378ui9pksHCilcerLDqUUUmrA5wU
         XABC4ZZ9DZi1uBt4dUA1LuFD/Bs92OcndFjNAqwPzjembXA4R7pC85W1tg3m/Xedc9Gf
         H18sIKNv1aQi6lKGhPq/BHBZGKRvd1juoECVkehX3PavHa3mR4FvEUn40nsD0Fp8bxt4
         Rz+socnXVSYxMbKgrxuJ5fsepdf3oGyHRLYTAWJ9D1DkV0qdU4ASZtJe317EHLr00TWs
         1Wv0sQu5XWwq35sgegA/fFXYnYDDphjG6ixg64GYhf7qRLnQeIDetFx1IYEg5c9t3Nza
         qA2Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k23RUguUAZFEUhO9ekpKccks44d5qHxTlhTW5dWYSOQ=;
        b=eK/kItcPvggaChJww/rahKxh1C6P1y8GDytEEVKP14izQLVmjxUsCklolvUuG+Jsio
         rkUuY2K+6aC+P+rP2JDMXc+XBdllQD/MXTf/nR1FvI4FEzT0kIXYjyJUOLXjkx2zZ+5L
         Ay0NNnj94jseUyUABzPjJA5cTziaYKnovMMh0Qshbl0HwASnQWTkQ3fSwiyVG0pGFOux
         kOZKq3Up1AU7rYk/DCy/Wkys1bCcPYoiUDZFCJDkai8ro2ez//bTGmMzrK4ZSf+NvUs0
         CiMtMGhpZZ8WQsr1ziJo361seEnjshtfNgkgbUwkQWO1xbiBxDrC1+dXbFkSKm7MH6dL
         ihWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=k23RUguUAZFEUhO9ekpKccks44d5qHxTlhTW5dWYSOQ=;
        b=pq7fztKUXbCGnLpkG55BNRvf/2B2LSAnZ0mkRcTbBb0mLf6ZMoJrMKMLL5wq2gKbK1
         xJwTeEtY1DbGGOmFVhxGOMzgjcp9qPysrYywL5bNi20NU9WZrPj3ZNYaVoXcu+4SBLhe
         n2/KAXQybwVueZ+RiTkCIeqz3PWyz3QPWDQ1dN0arUbe7C/AqIK2Z7bo8BEDucymfYWg
         YuwmsKDeAYKo8//H3Udrneg+6Mc+ix6QVpUXiZrDofHGyPZb1fIRrWZV7cV13dQHLblO
         R+6yzx2/QZ45mqznACJZCBUadOEWOFcXqZwSLTUANrVdfstsxKruzp7nMtAHLJ3o7RhW
         sxtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVk/B5JfuIrd6k47xl6EjBA9gQBJN01ipA2Dj47pyTBYXQHT61A
	0RORO+B/EdrWbXNhSrqQI/E=
X-Google-Smtp-Source: APXvYqzmujlAOqSeUa0HWvLvC6QsBmZKp+Xq/26ZminpUP+LVk2ajynLlUqjohZ16odGFJ9pkRIwXA==
X-Received: by 2002:a0c:ed47:: with SMTP id v7mr14754652qvq.10.1579403614150;
        Sat, 18 Jan 2020 19:13:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4e4e:: with SMTP id eb14ls5508825qvb.9.gmail; Sat, 18
 Jan 2020 19:13:33 -0800 (PST)
X-Received: by 2002:ad4:4810:: with SMTP id g16mr14183973qvy.22.1579403613869;
        Sat, 18 Jan 2020 19:13:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579403613; cv=none;
        d=google.com; s=arc-20160816;
        b=DqaVDezUb6VFGVwor1683FsL2gppNe2g1vfVpG8/1fhAWVttNCSk5R90Ket6FKOpYN
         HAsVMpIbV+cpoKPyzVb54dTuFyurhrak5rhPRm2pI1RVqQ3kfFuM76L8zh9nF6lQPMdu
         gdp9WsO649U1oVm7s2v806iNLsg5G9VPUyLihbqxLutrfm0ndwjp3SwSp5EccKQ/gpTi
         LJPLXmyBEFiaDmXIj9vs2EfzBKlImR/TF/kStD6GZD1h8bhxZgyG/YrZYW5W5kS2kVUj
         4dtxDjBfrWHZXFbql1Kfl6fdEKKepODEs+tgO3KaiowsbUyHFH9hrgxSzqScNBS128zb
         TN5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JU66FzyvVcLMhVjYoXjrsjjEFp0SUKSZ1RSkIskXfkk=;
        b=yA+I0tCRd3YuxBEpkru6Pd5f9j8p7h9OSf/NtjQ0WbCxGGrvRC21gLO/r5w2Nm12Iu
         NhlkoxbknJ1IKvXw1Qk+3i9hdY+np5PPajpy8dUg8T+l6QcfxCOAcEq+fNZJeDowfUzN
         sy8R3tO5LEo58vhNfSQTotkQhJmyIx+0kc8we3cKCSxAy29UYKmsM6hGH1/oB0Q5PfwS
         N9XWoCjTKj51QPsER8hNwXqhFpF1HH++XvBXxU5i3b9SmIqmzJyU+y6MTBj4mjPnKevs
         63SjjQw+X/wJlu3Yl7sd4D/EIKG/eFmr1OEZ6MZEJrQwyB16MiQQQ+n47bX1I4zi4gQT
         P4dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="o0vMP/P9";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id w10si1356327qtn.1.2020.01.18.19.13.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Jan 2020 19:13:33 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id r27so25854990otc.8
        for <clang-built-linux@googlegroups.com>; Sat, 18 Jan 2020 19:13:33 -0800 (PST)
X-Received: by 2002:a9d:4f0a:: with SMTP id d10mr11678494otl.85.1579403613202;
        Sat, 18 Jan 2020 19:13:33 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id r63sm9500616oib.56.2020.01.18.19.13.31
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 18 Jan 2020 19:13:32 -0800 (PST)
Date: Sat, 18 Jan 2020 20:13:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: ci_notify@linaro.org
Cc: tcwg-validation@linaro.org, llvm@linaro.org,
	clang-built-linux@googlegroups.com
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allmodconfig - Build # 54 -
 Successful!
Message-ID: <20200119031329.GA55715@ubuntu-x2-xlarge-x86>
References: <1612139803.52.1579385932327.JavaMail.javamailuser@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1612139803.52.1579385932327.JavaMail.javamailuser@localhost>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="o0vMP/P9";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Jan 18, 2020 at 10:18:51PM +0000, ci_notify@linaro.org wrote:
> Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allmodconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
> 
> Culprit:
> <cut>
> commit 5354c83ece00690b4dbfa47925f8f5a8f33f1d9e
> Author: Florian Hahn <flo@fhahn.com>
> Date:   Thu Jul 25 09:37:09 2019 +0000
> 
>     [IPSCCP] Add assertion to surface cases where we zap returns with overdefined users.
>     
>     We should only zap returns in functions, where all live users have a
>     replace-able value (are not overdefined). Unused return values should be
>     undefined.
>     
>     This should make it easier to detect bugs like in PR42738.
>     
>     Alternatively we could bail out of zapping the function returns, but I
>     think it would be better to address those divergences between function
>     and call-site values where they are actually caused.
>     
>     Reviewers: davide, efriedma
>     
>     Reviewed By: davide, efriedma
>     
>     Differential Revision: https://reviews.llvm.org/D65222
>     
>     llvm-svn: 366998
> </cut>

How in the world did this report come to fruition? This has been fixed
for almost seven months now...

https://reviews.llvm.org/D65222

https://reviews.llvm.org/D65439

Is LLVM not being uprev'd? Or was there another regression and an
automatic bisect just went down the wrong path?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200119031329.GA55715%40ubuntu-x2-xlarge-x86.
