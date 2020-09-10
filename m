Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPVM5H5AKGQE67BCGCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id A45122649F2
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 18:37:19 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id s33sf4573567qth.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 09:37:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599755838; cv=pass;
        d=google.com; s=arc-20160816;
        b=sdIKG+bxe1K1u9qP7fsV8jtfkChNjAcYGeZ/9MX6qCr622LW0cqM8aDKcBfRUzuLx2
         3RwPtsMVlJiMa1Wz7a+Q712yYfDxqt6423dy98JTRR6Oyw/+qKy35Pjh4Hy/Ylv4xVo5
         qjTHHyQustgMUZxtEQfxkRNesnZRufb6MJb7ueX9l3I3pJAXP//RE4gDwpyEX6VMnqFI
         vZy2rs7DLTgup2rKWo4M3XsRCD+i9kqKu+txYS+BgRt9T384VcwHzEHwusVt9F4a3OrO
         BxuH4ZY9eodnmYnEvSQsw+I7lyIkTGCVOAKsziMdXgQq2BrFg6seqVSano2hAempW9H0
         DDHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=vnhmESZxa2IcsQNTuqMv80ZLXz3BVYurR8PonmQGKnY=;
        b=J5fUoiFCVSBHZAFCowslR8duKjMIR4lvfhtD+4KZS2+RXHVNwpTz1fA9ZkvbuVcOzP
         EtqGqrgS7qq9OVZQHg87pXVogP9dFXi0MeOeQ6EhQ3v46GzNjxl6Qvry8ctpdHXMHIkC
         liIV3caTYdIZ/OSi3Oc67/wfh57cbZFufltj4gM5GcgCT6ml+qdWEQ9UUoo7JvTcTJOo
         ceQO67Mhyd7vhmo8ZJMKOho8np8y+JKaRQVRA7Yx0KSr6qlQtLPvE/Cx5eFTuFIUEaLx
         eeqrV0xDJIkECbBnBsVJa/Ngfq08zXIOWMXxgHXXjO5M1f8rnWpR5trHjX7hDPSMt1zQ
         c2Fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ClOsXW2g;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vnhmESZxa2IcsQNTuqMv80ZLXz3BVYurR8PonmQGKnY=;
        b=Ir93CmCHvLrzg1yt5/+PYs7Ic6OWytdFHGneU0eSRVGvuMXsZ75Uy42lHx4otQj/7t
         B6uQsiohU9a4LCydYv7xMD/l6kzvwyMb3iUBnWAIUnS3hrjMr/800oylj2NaHgSPZvhW
         AljIhrM1FsMIAOrt+r530u/EA+FdGz1pb5ghnL1QChXI7zu7vfQSU/hStecOCT+lcaq3
         zCgM/CDaAjSPWG3qXyUGQmr5fcJ49uIZxNJGVLy4TJWoE86fZrPYi3Ek7KxnQV4bEx+Z
         7k5P7YcAO0breSlY5+cAX6yyZt8AIfMqE09r9ebmY0UUK7YM2z/y6R8bkPfW1k39pr8v
         nytA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vnhmESZxa2IcsQNTuqMv80ZLXz3BVYurR8PonmQGKnY=;
        b=BXxyYBgNVI1CPtXm7OFFlQ6XBwCAd3cj7/zRS4ltlK0wdIXU/E/FPD+bdTDt6sVrNS
         2EZ/F2/hr52uETVQlUIjP23UgNq4cv4cGpw9nTZZaaX6RjGO8Lr/3Y5dzKVQeggo3wnh
         LOMfX5EbVtoxl9BMnWphaGcCdhMagpepH/iphzFmiWi/1Xq5jhbXJEkPCACSPqBGMNKg
         valTVtpmREAAxRX0eQdRbPMat+hWMoTLW2zZipwQ+soCUvHGU5ezEZcu9x4vGUX2BSXT
         MahAVx0QyoSCGesgRqJzuzO//uvtszgGoRbwUWWicD/SrkSfsoLjVHSVL2588cO+gje6
         +Vgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vnhmESZxa2IcsQNTuqMv80ZLXz3BVYurR8PonmQGKnY=;
        b=fQK4Xf55fVNlMggiCWm5nqqen4SVPQfGmTDQ2YGMpyUj9LPems4TLPvieQepgSbMSk
         rDGpYF6K9VZcA0emB/oLV6qA67Cijp/ns+VWXiBzXRfnAwPoGf8iIBrzIX4KoRtrcp+O
         ngwAGFH516q1+d+dbydV1POQE/6Fa62Ac0TvCRfeWp2FNjdrTLlxGPzy7uj3g6gd/oXc
         ZUsXUgnYwpuu14HHi1OxlsfNHDLj8S0dEnCBH5CLWqAhtO/X1ITOiq8Wns/pE94g27lS
         nJ2Fod+4BeX8+qlQ2AyM6uI32/r0FENlF2ANUHP0+pZBH9q39ZTf1fPO2Pnmz45Kjg9k
         okrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mvoMiwL66J78cuXBiv45I65mMNOldNqxCKQiOPodmWJMjgLCy
	zzd6vd0FR6OtRGsYzu1MvwE=
X-Google-Smtp-Source: ABdhPJwZAORFGw4Wygho5GyJjqYLiJakaaWWdzYDMYwEu/NwnOX30TBF3aA9Q3L2B1c5MiHB+FDS9A==
X-Received: by 2002:ac8:6f24:: with SMTP id i4mr8556276qtv.329.1599755838706;
        Thu, 10 Sep 2020 09:37:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:24ba:: with SMTP id t55ls2722956qtc.8.gmail; Thu, 10 Sep
 2020 09:37:18 -0700 (PDT)
X-Received: by 2002:ac8:1a48:: with SMTP id q8mr8975449qtk.240.1599755838219;
        Thu, 10 Sep 2020 09:37:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599755838; cv=none;
        d=google.com; s=arc-20160816;
        b=bGpCR6AmECPmBfqgnYF7Qsf/iMNa0ST5GBLbClCw6v4I8TCF9oUAxOS5fTl0OX7omD
         jq7gnJz/4aSLSr7sSNukPNUKIIdJIloyt/dqEa2VnNRsMfOyBGjjprbgBZ9AnFubcVRS
         c/fBFIDo9D9r8eUufw5ZlFdInJ02XAmqPlEmnvfrMCGpHHeN/YkoHbPgO0E1pG1OhqVj
         Vqzp03IUQEOlaK+zpAq5IgSSVJQ1TOH0fI6ojSW8nxiQnwQPsnJyU8HdYzXweBOn3hWM
         tyDoA46TQUkhlXdgb1s5WszHaztLXdE6rcxn+t/VMc814mteOlu5sUTQmxz5CHL2mdIA
         H0KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=JdFFsE37eiFTRP6BERxF8cO71XTx86+LjItRyfR3qXo=;
        b=Jsn/z4K9ySGf13NLVgtnt5GUUhE64XRNNHJbI1NP9C37UKD3w0Bq2Fo0+8fQru7EkN
         cOfZHdOU3Gz9ZmNI39ZeXou9zC8X5Sx6eAQGtnCiVAzjNXvbWcb+xBkAFI1doCKNUtxN
         zhoPGMHnro8PRKIvWyBYmUON2ohs8pS/gOzS6qD/dRayNUECjWD7xJhh3IlkjFS+syAP
         XTbBXrXLkgk4xwkQvj5QZB7/2mMJ+HMSr5nDDodlJ1JUg0GYCohkKcb8xFrSAkeKjY7E
         fuac5H12OI74Z5rx1Z3fTinTUKBHFrOzMdhrA70QqP5w/Ir82LaP+bgA447eVVAYyt+B
         jXBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ClOsXW2g;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id l38si396583qta.5.2020.09.10.09.37.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 09:37:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id q5so6735913qkc.2
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 09:37:18 -0700 (PDT)
X-Received: by 2002:a37:e508:: with SMTP id e8mr8499277qkg.380.1599755837906;
        Thu, 10 Sep 2020 09:37:17 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id y7sm7245670qtn.11.2020.09.10.09.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 09:37:17 -0700 (PDT)
Date: Thu, 10 Sep 2020 09:37:16 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] kbuild: remove cc-option test of -fno-stack-check
Message-ID: <20200910163716.GC3119896@ubuntu-n2-xlarge-x86>
References: <20200910135120.3527468-1-masahiroy@kernel.org>
 <20200910135120.3527468-3-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200910135120.3527468-3-masahiroy@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ClOsXW2g;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Sep 10, 2020 at 10:51:19PM +0900, Masahiro Yamada wrote:
> The minimal compiler versions, GCC 4.9 and Clang 10 support this flag.
> 
> Here is the godbolt:
> https://godbolt.org/z/59cK6o
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

This flag is technically ignored by clang (see commit
05b0798916f01690b5903302e51f3136274e291f) but that obviously does not
matter for the sake of this.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
> 
>  Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Makefile b/Makefile
> index 1b6abecc5cab..5102c89d3167 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -934,7 +934,7 @@ KBUILD_CFLAGS	+= -fno-merge-all-constants
>  KBUILD_CFLAGS	+= $(call cc-option,-fmerge-constants)
>  
>  # Make sure -fstack-check isn't enabled (like gentoo apparently did)
> -KBUILD_CFLAGS  += $(call cc-option,-fno-stack-check,)
> +KBUILD_CFLAGS  += -fno-stack-check
>  
>  # conserve stack if available
>  KBUILD_CFLAGS   += $(call cc-option,-fconserve-stack)
> -- 
> 2.25.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910163716.GC3119896%40ubuntu-n2-xlarge-x86.
