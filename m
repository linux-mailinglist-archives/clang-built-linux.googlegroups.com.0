Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBKMSSCFAMGQE3U6HBMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id C307240F04E
	for <lists+clang-built-linux@lfdr.de>; Fri, 17 Sep 2021 05:19:06 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id i5-20020a4ad385000000b0028bd047a835sf37921795oos.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Sep 2021 20:19:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631848745; cv=pass;
        d=google.com; s=arc-20160816;
        b=QfMyEi1CR7weydPE6ASVaDMjQxO6GOgTp2gEhfu9/SczBR/IbT0qJZwIee/UpvyVAP
         uOy3vB0hPO6FVcZJhLYvrY6qj57OFRNB/OlVFsNid+5OYmGiFJjWUwqDDBC88g+f64QC
         c61M7AK3anjjFYNhIm2lquZkk/MIgFBEHOQrVE1DrtoHMZFiSTSegQlmLpfnLE0hVGec
         N6RM5s91MVMFDlHOyUgWB5BciTzTNbDjlN6hKXKNQihGOi2KwphgcDqjMGQ6Vx9Wvlkp
         m+P3TWv21+4LXj3f+lmXBlAIyUw2mIQphfeMO6nYGJnclwS0GWKKed8Cq/fhjaYLgX4i
         1WYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=HMZVLxR8jpxw2OoSfE9RuDEan72/w636DIJZ+eFqiA4=;
        b=AXkmS/Yj5ShyxjabvURwtTDYuxfPG+ZCwL+H+DB3LS5Zcib7LFnstURagRnk1W6kse
         kMRBlWw/6MrGcZMd6Kv169HgsRWpX6AjqavkG0yBLsrN1fpPz80HZvrBSBxWomWDXn33
         bqLwuENvHMDpPaAkNTtJiZH3Dj65w3trepI7r9HnZmBumaPcbN1SEhv3G40uLgBZ3PRs
         4RdWeaA+HotTUrzYmIeXsItI4x90W0V/JhnCB61dZdHay6E+LlJCvvthVqgIta6U0k4A
         4huFL4FfVo8CQhVcqa+vffFjhuuw/8dk5je70aAbpE6kaRt55HApIYRYsieq33z28wkT
         hTmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HMZVLxR8jpxw2OoSfE9RuDEan72/w636DIJZ+eFqiA4=;
        b=V55Jk/a+Vfz7gLTcN+vOEdiD3GFVRb/D343D1nWB/FZ/BacrcO0lHiYL/BOekew6jH
         9XwvkVNEq6Y380e0R7VR47jdYMuZa1x2z7WgzVDj1a413HiiZIVk4F5SNxbq/oZN0HkX
         24xh4ZxQQ+zRl/LwjsJnWcWBWmq6v9HIufZdsP1VdKSM1H1XiKJLz+Bt7OoVe9CLFYNj
         pxWw53PG5jfT9Eb6GilDDgkCZwc1QpYFUkV9JC3dBcNtlIWT2JmCk1nVwVttmXuarvl5
         c3fXXyK1DwgSLVFsowEyMcDjlYfabe+JmoOUhGK94cr6KsDBADpfmld9CQOPODNjrF1p
         2Gxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HMZVLxR8jpxw2OoSfE9RuDEan72/w636DIJZ+eFqiA4=;
        b=eM4iLxcVg3TuXIXVP2jCWSllEmSYj56giNVkhUi9yejJZoI2fYpzdBvhBZQRVLCKrK
         +0PaeqMtdZAdwsdu49v0DR8bGOTxytKuL1gxjyHDSNnXs+HxrYFHf41rtvPmhgHfEDKY
         kru8XQDbxTO6Aq+86gO+23oNVuj5FkwhJHlxf/R3vSkab0yRriZEnYcHz19NNJfyl5D5
         UMTJ7KV0+HnZWJtpXG9jyxhEyTKashYjcM3Nqp/WDZhYzR3wn13uc6co1k3GCgfmDkxY
         aluYuWMzGZxoWFMfybS5wkSbN5SOmgvpRBEwOFzsAvm16701L2dAUgJHoC3ghfMMjPGn
         qkWg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319fFu8rz9QTsAPBuoyNXloXvl6cIdkpByDbKfauOWSCYynObiZ
	N0gEbVqhmmcuFQjF3fHyP4E=
X-Google-Smtp-Source: ABdhPJxNG/kJfhyyXQbJHejCyrFKEtXo1S/SHubGlW3IANNbCdzkKP5sYajSPjIGsq44z75zYgSadw==
X-Received: by 2002:a54:4005:: with SMTP id x5mr11497574oie.160.1631848745787;
        Thu, 16 Sep 2021 20:19:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e87:: with SMTP id n7ls2641060otr.4.gmail; Thu, 16
 Sep 2021 20:19:05 -0700 (PDT)
X-Received: by 2002:a05:6830:314d:: with SMTP id c13mr7805991ots.310.1631848745143;
        Thu, 16 Sep 2021 20:19:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631848745; cv=none;
        d=google.com; s=arc-20160816;
        b=n/TJHA1ES9aJtqAx3pJ8y/ElenKm5TM0ElCsLJSZObIX7bLXIqUxg59VatPxAj3eT3
         sKq4NcnVbeci2Kb0O/TNRxZCJSw57AVZlkF6R+hteBLGCDmxq6j4CaJFM1s3APyGiOer
         btdtE2+ff2NzNRwHtIwBomCBR2L1ezxLQ/FOg/H9qB1P0bHRYiqcmUr7CzNcZCfACIMI
         N65wdXPOBmPwrO33CExR0bpI2c43/MdbO2YRLSd6kffBsg2OmwHvL3/1TJLrvCngvZ7v
         QjTTtqEwPO+1BbDIJfUD7z43C4D9xjYS4ocZ+2IDZTts5qTV3pI14ySw4ck5bIG0zjsl
         FKmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=NEwj3beiV9NT9Up1IKj47y8V8qIglyHke0d3SN9Lqy0=;
        b=quz6KKDI2hAF50LL5jtSod6ZMUx2ykplGMqmEziLWeEKGLJseKo9CEcf/0X60z/FUn
         kIkm1/y1cS4u5Y2a7rnp122j/0rqSTX64ahIU3ca0NK0frKfmS90NZM+FaBdmAQ/W4rf
         wSQeQwr1dLnV5ATrymJG/f56uHHW8nJzSvVfh9qSnE1LHPO/ErdcA5b8LjLuhpMrVI3C
         pUOs3DYPZ2XiIAdk4DLZKtgQr381pHlKgqexcUd1De3WeebWtq87KPxb6YBYGZbbhvqc
         3dvvSE7VH974UVs+7QVmyju4Z9dYR17Fr4rihnbZjb1lrD2MEV9rhTjujh2gjkETe6JU
         THng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from deadmen.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id s20si483142ois.4.2021.09.16.20.19.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 20:19:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
	by deadmen.hmeau.com with esmtp (Exim 4.92 #5 (Debian))
	id 1mR4Or-000695-Op; Fri, 17 Sep 2021 11:18:53 +0800
Received: from herbert by gondobar with local (Exim 4.92)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1mR4Oq-0001jI-1W; Fri, 17 Sep 2021 11:18:52 +0800
Date: Fri, 17 Sep 2021 11:18:52 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Nathan Chancellor <nathan@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>,
	Tianjia Zhang <tianjia.zhang@linux.alibaba.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, llvm@lists.linux.dev
Subject: Re: [PATCH] crypto: sm4 - Do not change section of ck and sbox
Message-ID: <20210917031851.GB6559@gondor.apana.org.au>
References: <20210825203859.416449-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210825203859.416449-1-nathan@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Wed, Aug 25, 2021 at 01:38:59PM -0700, Nathan Chancellor wrote:
> When building with clang and GNU as, there is a warning about ignored
> changed section attributes:
> 
> /tmp/sm4-c916c8.s: Assembler messages:
> /tmp/sm4-c916c8.s:677: Warning: ignoring changed section attributes for
> .data..cacheline_aligned
> 
> "static const" places the data in .rodata but __cacheline_aligned has
> the section attribute to place it in .data..cacheline_aligned, in
> addition to the aligned attribute.
> 
> To keep the alignment but avoid attempting to change sections, use the
> ____cacheline_aligned attribute, which is just the aligned attribute.
> 
> Fixes: 2b31277af577 ("crypto: sm4 - create SM4 library based on sm4 generic code")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1441
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  lib/crypto/sm4.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210917031851.GB6559%40gondor.apana.org.au.
