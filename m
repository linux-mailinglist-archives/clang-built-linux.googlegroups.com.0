Return-Path: <clang-built-linux+bncBCKJJ7XLVUBBBPULSCCQMGQEV7XTUEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id E7053387F7E
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 20:21:51 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id y10-20020a056808130ab02901ee2ab30dabsf3663162oiv.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 11:21:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621362110; cv=pass;
        d=google.com; s=arc-20160816;
        b=nP5y/0tY633kUgJZ/ZpNSzK161pHosvAV7Cyg4jM+t/kwxoqPT3KLE76vef6bdu4r/
         CH4+JrUB80UVqG753d8M14FxovMd6zhd10jvXyf6lL39Zqz22fEZAOsro2KRV9xtylgy
         8M3gOweItRURz0klEOlPuiQcF0uv/u9lPtbSqSYucb5T53QcQmP9CtOy2+k0fopqyrBi
         pBGKKjuFbKM+jdKyJ+q2FgfWhRBiYdz7KTHCioKvXEeOBBTELt83MddLtybSD/94JcS+
         iMUXOzU+RN/ld1bhoIqwxMyezsSmRWtjPDmy7kI5U+hQoC+8PY79Xu2gevJ4VB/Ctd0g
         BAXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=HUuV68g+BjupdoXSgnImMr8XjwwAXAGM2JF5EqDjb3Y=;
        b=mPzIXVM+fI6zubvIFKlhU74YP4RaZIPQEYsYb2HI6OMoyX25xPda316dN2U/X7Ep5m
         NaUIgha8HVBNuIs/njG7JIv64q1naa+OSgLfLaRxQw6/yLKsiiun7AydfpN+ccobCaqg
         YifNuiUlG2TJg1Hxbl//DVSZHSStAnQ/LBTokDYnFTDlnE9DVGmQ80W1n9CfYJcImfq2
         4XVBCpg9qSTk0E+8zPnewQ7jfr4olSD6FSvo6BbcERRNkTix3A8InynF+ewkDtpQbMmh
         aYNSGbq1WswEw5T60BmODAT4dZ/7c1I4olNlNtFq6P1DHHkHar2Q+WKjX6emqNCJ8h8h
         Ye6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qwBq7IW7;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HUuV68g+BjupdoXSgnImMr8XjwwAXAGM2JF5EqDjb3Y=;
        b=HArIwcrMl677sMLelO1ku6/B1Yasgd3wxBGBFZg8Hk4f0Sjr/DotOgWlD0+xGdWY6q
         A5MJA6YHtR2fZw1G+t6k3TLJIBZLUWkvQ6Erz4Gp06sNyspS1zT1h65UJAvVURWk4OII
         ep9bfvcLyE41b5xxrxMyDzGutORRmSenqpD6BraqfwZUH/RnMBNq6vYSvfTEiO5OkZSK
         pHi5obMh1QQmG9B4aj6KRCbhtUVR5MYVMc02+pdpvwz6eaqKkuFHcBDn/F4jCkWCLXgG
         DV+r1aW3555iatha7ezR4kkVaX2pKCB9K9He25zMGyfVsEBSpcehrdgdwPGIROE9rQgw
         U8EA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HUuV68g+BjupdoXSgnImMr8XjwwAXAGM2JF5EqDjb3Y=;
        b=IXdNZkaysrdWArJ4/zRXm79hVyLRMcF43aGSbrPYtz/ZD3ku599AB1tbUrzoS1QVv/
         t8yEey5Q61mbPWEp3MWNZzHSgvLUHvmPJeRdp4QdnT3stHhxX+kQyJDGbkP6pjxppN8Y
         Sco7ASTD93fLjlpAcCB34+G2omsWeRcmN0EWK8lPXgpZ5UJfJLVVpcG4ORvAiIxqeDto
         auupGV2V87AzJwsW14O39x1R6hNsmKhAkorrJt5lPonAGzFXKP++gEikqTgwxNvy5rNj
         QyuvjY/PIb+wIx8MoQ38eQ9wt0a6HSu6k8vxNYDjmQl1j93KmGtDBG0gaMVlBOxFHQ4D
         C5uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HUuV68g+BjupdoXSgnImMr8XjwwAXAGM2JF5EqDjb3Y=;
        b=H1G4F+XCRhVsSF4LLWVCg+AJHlNebRWBSCd4s1C7w0859fUSA92Af3GpWw6Yzt/+6z
         FyMQ7jHM+xJEbsqvG8yFCN88e6pjcK1zL9ChP4jnN8jDIKNZUJ4pGlgxx4gm0/e5ljRs
         94tyZ/NHypPGkcBpI2MZ0U5gOnZZ4Z5IMzQK9JS99sZLjeT55L2QkcabXcSodB5Q1FNv
         5G5Jbap8OJl9tfTOB+NdBRTcobm28RN9Lh4cvA4uCKvevv4ThhNH9xyEoSQ0XSr1fa6a
         PlVpEFXUWNNEw1crGneF/zgG2TmBYW+eUkk8L/6hZqoo9rzC9BveEyG6IPn30c4GpkG9
         BcbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530f0mifJ5m68d37HV7Rzu8X2aeY1aNtEaISXNuFxUocJXwf/0Qv
	p4Rt0j9/81jwbtYMwUbwl+I=
X-Google-Smtp-Source: ABdhPJyueoyVHhU5cMiAONaDYPBSB9uy5f+PdGLuT7VM0V+kUPZrRxXTpBj7PNhpY2Y8MWBufJYXrA==
X-Received: by 2002:aca:230e:: with SMTP id e14mr4988805oie.58.1621362110686;
        Tue, 18 May 2021 11:21:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6384:: with SMTP id w4ls2217498otk.9.gmail; Tue, 18 May
 2021 11:21:50 -0700 (PDT)
X-Received: by 2002:a9d:51c7:: with SMTP id d7mr5223144oth.51.1621362110261;
        Tue, 18 May 2021 11:21:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621362110; cv=none;
        d=google.com; s=arc-20160816;
        b=nwhG3ZUGSCUHlzetQE6QUkYDhl1x69TT/WQbn1jWL8pmbDaSyKktTu3FSEf8KA57OH
         oM0lrw9k1xaISFtIS7QguSVcIujhpHvYeqUjZym19J4Q1QGPSZy/9QKGcd+WcxE/Z8RV
         vTSyZQQ/Y+QwwOlkN5ggx0pjs7d/eZC5l23Fg3ejoNTGB6dKqC8hC96Y/7/tl+krCreY
         hgLZ7JDWi6je3/sYbKxnuuDdObMCV+tKajZxVAlGyMLiS0pm8NjIpisrY0gz9ac4sVhZ
         3QnC6j/ACByMqphqIkwckaNBtXRy6bDOjQ1i7LiQtmE+MbC/bjdP+pRsZDUdPGh5y9aS
         bjNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1e63VQEbzixPZI8jcGn1DLk4gw20bFcvX2ohIhmiG/o=;
        b=OSH3qOcojRTHwV/PYvZrBDG7CYG2zpe6H82hhU0xN0uhpS3c2EC3U18eWLN0NhAhh6
         mjrkB6D8WlM6X8W6DxzfGFJtu7vO+WdVqoAyr/SKrSP00hIM4UemWHFHlhMMyA5Klo+D
         hCDCaHgTNIh6hsbYIDOaheYqpj9BqknOGK2CWjz6h1dxIzUpnRJ1wjKzFN+YpmK6Rt6t
         C3Q7q0DiDGrKjhWtYLV6SEpWEZb/EtBctmTFqkqHYtdW83giwVeFXy38/gXxQ1x6uiAW
         GB1mE2OmjAquboqGzdn+pJ8ia4aRDf/Pvjh1h7Aej8/FrU7mxNb/bsHGrOGxvLD7AG5n
         b70Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qwBq7IW7;
       spf=pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id k4si1766364oot.1.2021.05.18.11.21.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 May 2021 11:21:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id n6-20020a17090ac686b029015d2f7aeea8so2043720pjt.1
        for <clang-built-linux@googlegroups.com>; Tue, 18 May 2021 11:21:50 -0700 (PDT)
X-Received: by 2002:a17:90a:bd01:: with SMTP id y1mr6349243pjr.166.1621362109734;
        Tue, 18 May 2021 11:21:49 -0700 (PDT)
Received: from hyeyoo ([183.99.11.150])
        by smtp.gmail.com with ESMTPSA id m1sm13701191pfb.14.2021.05.18.11.21.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 11:21:49 -0700 (PDT)
Date: Wed, 19 May 2021 03:21:42 +0900
From: Hyeonggon Yoo <42.hyeyoo@gmail.com>
To: Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Vlastimil Babka <vbabka@suse.cz>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>
Cc: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Naresh Kamboju <naresh.kamboju@linaro.org>
Subject: Re: [PATCH] mm, slub: Fix support for clang 10
Message-ID: <20210518182142.GB10380@hyeyoo>
References: <20210518181247.GA10062@hyeyoo>
 <20210518181629.GA10380@hyeyoo>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210518181629.GA10380@hyeyoo>
X-Original-Sender: 42.hyeyoo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qwBq7IW7;       spf=pass
 (google.com: domain of 42.hyeyoo@gmail.com designates 2607:f8b0:4864:20::1032
 as permitted sender) smtp.mailfrom=42.hyeyoo@gmail.com;       dmarc=pass
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

And Naresh, Thank you for reporting the problem!

If there's any problem with it or I can improve anything,
any feedback will be welcomed. and I'll reply soon.

Thanks,
Hyeonggon

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210518182142.GB10380%40hyeyoo.
