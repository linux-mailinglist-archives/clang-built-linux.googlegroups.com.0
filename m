Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBZEEU2FAMGQE63QN6IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F45E412EDF
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Sep 2021 08:57:41 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id e1-20020adfa741000000b0015e424fdd01sf7538328wrd.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 23:57:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632207461; cv=pass;
        d=google.com; s=arc-20160816;
        b=BmieZcZy4jY5w9iX1yQl751m0UUyM9P791SqZsvwolVOPC+aJDOTiEoXDpo+1/zmTK
         ydOrWi9kTe4kP0+cSCfJOFuNeLkFZFEb8/bzkMg6B8inpGzfOXeOYZVLj8dFdiRuG1cK
         h40TDPZFUAHJEcEVtrRGsB1VfIhfs3uDV2euSq0ywZE/pqN2jtYDVTNmIqPJtoYIRUPM
         DKB3GGTVoXnnxyyTIH5TFFB+Eewxd4cXhnHgx+2j5NblTdm0gf5HGpRxU9tH7DDVlDB0
         Cff6vsB15wWJthYq1gSfc/HK77DsoV5c+aVjztdj6cV5nFNsy6CSxY/T4IT6aRYd6VKo
         pu8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sMDgO+dvPXyRTwT9AbamJkYIMHmAfAD1B99et7dMgxw=;
        b=CJNPNQrLk/ba9f7G4WkaMOSi52wxutK1URuRbR19NVcOObNjR9o7mIgq9jzP7jb6Xi
         FWGDtBMuCXvQB3uUHaHplEtJHjYpmZV2MzgCZ67vkQUOxCi1A4tTT+lXsW+WGW5XH2fK
         CvB1hVFBrRmFFrL4Ftvb9Wt67B4mZm66WiezlIGc4r5f0XW75im1p3n18F4thqS1wsoy
         zcNNb7ne1+6y58HxlSdK+jcr7zgWelvoztYyyl2arsHE1ncUOVZCUmpo/sasQcByc7T6
         nhhYPEEtpK8dVTSzc9UZR5RS/WCQEGQz9MgmCefHkmP0e+iXSkfpXm6laZIdI0vpFUpf
         ERKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=mQY84ctD;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sMDgO+dvPXyRTwT9AbamJkYIMHmAfAD1B99et7dMgxw=;
        b=DY0uA/ASpml3PAFWdaHif776FyWcg0aOnPFBL4CeS5XfD+pWlf2siZ9Xsu2Kjw3gqg
         tTJS+48rEZhS1ixdwj1TMkSqnxO7f9I8TnZ8r1IZJd6V7AIb40pgUhJhFTrtLASQ351F
         kOtoHh764MQ7rs7ev8NMoYUQPeIXvR/xO+fb6csFblWNW3+UltiP7d2ORSdKVTCcmbw/
         PQaxjqycFsaNBhInzHFsjvOQinQCCVMC/lHy/rYYqbhvplzdfHuVP44dIE35Z1P1hpj8
         rOuijb0AdxCIvee11l8Kyn0RZVklE5mp4QAZvilrE23w959TJYzbmZXDtqYrnD2mZcSO
         lqcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sMDgO+dvPXyRTwT9AbamJkYIMHmAfAD1B99et7dMgxw=;
        b=Bzm3fqRZNoF+HRCiP4Xce5qQNSh5b2HL0WMq5t/03i1+zA919ElNdfiUOZ7WTActUk
         kb6wd/+fEcYUUOwFb4gNb1N14kfGkcdE94k3Bgl7OhA4TvQJqiqX7hroGQryzySshtR5
         LP3E+xDdZlDw8GF3KkiH2a1JBCg+EQNbEFcYAXhuZBySbXUec6m0t1vnPiFsekY7+uJM
         HvcqBuswcvXE1CvFkf3zGqWHNcPJ6qKYw+EGf2vvFgDa9wT4rCvaTZL0qgiGSQUJM2y3
         x5N3HgtxLkVunt984iCbpG9z8GuEmGmlwaIv3B1ScIfYLSCdJCcdN7WgeqFWT2qHt5x3
         ykjA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5315LziE1ldvx90PtRno9vsODuQWdjuOUwPcK7AIA5r5DJSLFHUn
	Z1H0PrMiTD2E3VgxcxorsJc=
X-Google-Smtp-Source: ABdhPJy67gG/sO0w9Yb7I4RfF430o/wzTMpF3zJHub7JO8+P2YwD9+TOlCgFy6V3CszBEo+nKyOncw==
X-Received: by 2002:adf:e74b:: with SMTP id c11mr33447348wrn.101.1632207460896;
        Mon, 20 Sep 2021 23:57:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:8b92:: with SMTP id o18ls1403394wra.0.gmail; Mon, 20 Sep
 2021 23:57:40 -0700 (PDT)
X-Received: by 2002:a5d:6381:: with SMTP id p1mr33191379wru.310.1632207460046;
        Mon, 20 Sep 2021 23:57:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632207460; cv=none;
        d=google.com; s=arc-20160816;
        b=TjNbUP6djt5afpRBnED+tBxJKltgUCP/i4Z84FgySnh0n48LudnClyqPlUnR1vZNc4
         7wUy3vLgOzk7eMn9thmUpmz+JCm8uI8fO0B23GhtFeRQcpKNSZrLKO9IESLs2WanZ8jr
         d+/uYSlr1Bq4tamjqM/oGJarZSW9DbUA73NnufYFAlN16x1DbBqCdr97IwUKUIhvXovE
         54SN1NhLCB6L5lDBTLrhUfr6/8qNj8rirOV0mrTQezLWAD8L+n1uKKbd88B+ahonvZ8v
         xY/tzqBlTzu711WyKREnAX2OOy2pxYcvvC4pzhq5/NRD2MV0PAmwHvJGY5gRxvXMj35x
         lCdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=p0YkjdTTA6iER5m9azQvivqmBm9b0xcRpaf9uMBcLQI=;
        b=CBwY4vjzl1UhyN5vzC4rdR5clEI6EjGWVn6Z5ihsZ/vIISsMWcimX5a+KBC/XnwPiZ
         H6ZvWM0RqecWZaXB0vMwN5URGyzvQpiLyLykd1iM9aqkeRHWKRAJgjX8RL/I/Mnxtr2d
         DRQTGZuZxlqtY5thVnRHhfLtkzQZ0kQee49hHW/d3rYTBIDyAHmvkdsZp2iPRzH8eChY
         +u6SffSf9Xfxwt81JpQIMhwTzMWQmBxENb2yf5fy3cgw9Vv0v1lSw9bP4bmJuDygyyZk
         yJUxP/lMLgzqq/1HnfhBDH1XQBaNVCB6DhjU54H/Fkoie1JlCLjuvZznvsF4YvtaeOE6
         NVvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=mQY84ctD;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id g202si84309wmg.1.2021.09.20.23.57.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 23:57:40 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSZi7-003a0w-2i; Tue, 21 Sep 2021 06:57:18 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 311D5300274;
	Tue, 21 Sep 2021 08:56:56 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 541072C3EE3EA; Tue, 21 Sep 2021 08:56:56 +0200 (CEST)
Date: Tue, 21 Sep 2021 08:56:56 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Arnd Bergmann <arnd@kernel.org>, kernel test robot <lkp@intel.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Tianjia Zhang <tianjia.zhang@linux.alibaba.com>,
	Herbert Xu <herbert@gondor.apana.org.au>
Subject: Re: [linux-next:master 3857/7963]
 arch/x86/crypto/sm4-aesni-avx-asm_64.o: warning: objtool:
 sm4_aesni_avx_crypt8()+0x8: sibling call from callable instruction with
 modified stack frame
Message-ID: <YUmCOCg0nN5qhoGR@hirez.programming.kicks-ass.net>
References: <202108160330.T1EbbpCi-lkp@intel.com>
 <CAK8P3a3qhfxUC-7y-_q35-tNrs2L93htjuVzSukqZO0hDhOAuw@mail.gmail.com>
 <20210920175656.cjvrr4wn7a3k6tnx@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210920175656.cjvrr4wn7a3k6tnx@treble>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=mQY84ctD;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Mon, Sep 20, 2021 at 10:56:56AM -0700, Josh Poimboeuf wrote:
> From: Josh Poimboeuf <jpoimboe@redhat.com>
> Subject: [PATCH] x86/crypto/sm4: Fix frame pointer stack corruption
> 
> sm4_aesni_avx_crypt8() sets up the frame pointer (which includes pushing
> RBP) before doing a conditional sibling call to sm4_aesni_avx_crypt4(),
> which sets up an additional frame pointer.  Things will not go well when
> sm4_aesni_avx_crypt4() pops only the innermost single frame pointer and
> then tries to return to the outermost frame pointer.
> 
> Sibling calls need to occur with an empty stack frame.  Do the
> conditional sibling call *before* setting up the stack pointer.
> 
> This fixes the following warning:
> 
>   arch/x86/crypto/sm4-aesni-avx-asm_64.o: warning: objtool: sm4_aesni_avx_crypt8()+0x8: sibling call from callable instruction with modified stack frame
> 
> Fixes: a7ee22ee1445 ("crypto: x86/sm4 - add AES-NI/AVX/x86_64 implementation")
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Arnd Bergmann <arnd@kernel.org>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>

Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

> ---
>  arch/x86/crypto/sm4-aesni-avx-asm_64.S | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/x86/crypto/sm4-aesni-avx-asm_64.S b/arch/x86/crypto/sm4-aesni-avx-asm_64.S
> index fa2c3f50aecb..a50df13de222 100644
> --- a/arch/x86/crypto/sm4-aesni-avx-asm_64.S
> +++ b/arch/x86/crypto/sm4-aesni-avx-asm_64.S
> @@ -367,10 +367,12 @@ SYM_FUNC_START(sm4_aesni_avx_crypt8)
>  	 *	%rdx: src (1..8 blocks)
>  	 *	%rcx: num blocks (1..8)
>  	 */
> -	FRAME_BEGIN
>  
>  	cmpq $5, %rcx;
>  	jb sm4_aesni_avx_crypt4;
> +
> +	FRAME_BEGIN
> +
>  	vmovdqu (0 * 16)(%rdx), RA0;
>  	vmovdqu (1 * 16)(%rdx), RA1;
>  	vmovdqu (2 * 16)(%rdx), RA2;
> -- 
> 2.31.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YUmCOCg0nN5qhoGR%40hirez.programming.kicks-ass.net.
