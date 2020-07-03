Return-Path: <clang-built-linux+bncBDTY5EWUQMEBB3OX7T3QKGQETJJPOBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EB9213A73
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 15:00:30 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id j18sf20589562qvk.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jul 2020 06:00:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593781229; cv=pass;
        d=google.com; s=arc-20160816;
        b=W5X1f9ZkvNg8Jh4oq99LZWAFdMWF7C2lb64lMmA3t2D2nSIm0EOFIznfIkIw6Vr3Q7
         xHWM7YX2F9jjc/k69BUSdRlG1PFIbbpkS4egg4VnWp9T9Pt+skIyPq4Z66QXT5PQ2I9a
         gOOtrktvcaHr+kPQNsr6X1TcVBHcnh13mmPR0tV4RR3a0i1KfsaabyX1TBs1jT3oNy5s
         t9cSuyaA5NFUGdTPyKsbuffKpTzdpxyqZLAL+ZGvlPnOyH7qXswYo8vcsryuPsBE7g8t
         e+o+RYiAv6stJA9VKK3ztbALtGZHQuMVmnAd+VjXGG/3U5AYAYbbd0SEnfH4RsKmsQDP
         RUVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1r+Z3dUFTFAlPRyVXi7eclYQ5OysBY0McVrmPcsrkFY=;
        b=Iors3rwqy7ZNZvCYWcTlLGgwqdkQzvRHPRsaKyVNKSzRjWUCMt8flOJk24Bjd1QoXn
         Ev+5wabTpwg2yyQhX+EbyULyBG42TJiPaoRXMm4QKC3/zVMURDVou5reB0m57oFkKzDa
         hAsuz4A5G3WKqWHi6wxXfNDR1IrNKOekTZYIsxBHj+KAYb1VG3pXufTh+vDBHz/NVdX+
         k6Ly+WRK7NAFd55hpzdI7vzMCf/eBeT5ax+E5yWmAsw4iysnrk2jFWy7k8IGe0FTBtx4
         HiXJCPtmbxrg6gi+J4KPmubX7jdAsa6bxAt/TO6W1WdHiLY4qmHbsOvdQ+cGN+yXWGD5
         irag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1r+Z3dUFTFAlPRyVXi7eclYQ5OysBY0McVrmPcsrkFY=;
        b=rE9ob54G0w3WaVw0C+waNGSVmnLTxBqlFZeXuJBz7pmYSBaGNjAXKNNwhKVGsgnd49
         19X7uly5gznJYs+IVKZRvxHMf4Y8hU6lK5rWih27Sx0lzeYJIywPcCO0xE3JPy72Yg6A
         UbaLRILQKKEBfsop9OK+TEjzL/VWb/CGK9lmOCaH510Rzu+0GqoNSS/TjDGVKix6iWe3
         +V/alBOckzEXvCHMGDTkjf0SmgRnwyHH3XYODQfb2beCECHIAfnXMe/garUjDF/oLB4m
         CiajmrGSpJu4EoAmpHQ77PEX7QHZE5H4mpFRNfrzFRTZf81dPAUqXH+KdAg4fD+Jcfpf
         PliQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1r+Z3dUFTFAlPRyVXi7eclYQ5OysBY0McVrmPcsrkFY=;
        b=rkcPA9uxIz3BWET5mIba7a707ewAqrK/ofxwWNa8++V610yfWhFIEPL40x0tiOlbrp
         JNCXejZHsyK3OtRwU+Fe8/Nr0gLluDh1omP24e4pVNutfmXBH2ibkkpk1JByMZ7qGjhv
         zMsW3Cvb2EMPMmAI4553tXg8ObhU1OQ0hXzTsE3RdkhG4BCN6A0m0fvlAlFvZSv5U96/
         9Bj9oF0qGKFe5pCrLnc65zrgzDuuPbgX7npWMJv/XtbMfCxmD+YIHIn1BVJB5zyzA60M
         dGDUxnQTX+jUEggywQ0DVyHzeo5bsOb4SyvwFxi9ziySbrQ8fQfJgbkfr/ha+lEcL5qR
         dF9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qOUixDdRGxDx0Pt+Cd1bOi5ot7MsZKuRedrjSWww3GBFoPaIj
	yTvF/DHdWHN09KKGXrLzB5I=
X-Google-Smtp-Source: ABdhPJyIPPEBI9GFwptZgD94D28RsgkuECn/+U3vqh8JBf/ptLsgt191IXhhourV+hr+80cWqnJOhQ==
X-Received: by 2002:ad4:4a81:: with SMTP id h1mr35590207qvx.102.1593781229658;
        Fri, 03 Jul 2020 06:00:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:c987:: with SMTP id b7ls2251059qvk.1.gmail; Fri, 03 Jul
 2020 06:00:28 -0700 (PDT)
X-Received: by 2002:ad4:458f:: with SMTP id x15mr35829293qvu.176.1593781228902;
        Fri, 03 Jul 2020 06:00:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593781228; cv=none;
        d=google.com; s=arc-20160816;
        b=FyqfSX4GWzYQJSMVMJufFpFxnu4Q+yhxfFzf+2qtVueb16IOICOeuM0wJJR44K+aMC
         OYUDKJ/crUY6KyDUIKrS8HCN94ka9iXAifBzv6rMyIwz+xrgKheglsFiqbD6t1KSbI/F
         P2wyc9L57TOEy3LuKqpmt46hxlhhJ32vfG4hvSb3fS+qyjBu7zexAI67cFYhRlIAdQP3
         IWoIuUpPOgOF4Oa9ifuh23goDxlnukJxpdYYrW9n5h7/ia1++BQeiOhWZPLbukYOdMgH
         HB0t60xPiKsNbX/r86Mlft3yMJz/Lhkm+YUCtpQGXpESLJWLZ//AJIyxw1sQuMOTCmpY
         62tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=pMWZ936enDmfhEPrrIV2eyIB7zIBBfJT13vcPWE295I=;
        b=Hk0Y4jdb8iszuiwdI2ECOu4u9y45+xZFNTkBAln9tmdoJzw3ROS9ZBOr/qTp4sZ/AM
         WFbqkJc3eDZs6q2GYYBVeB4K2WEfIpy+DJe8ACLMKKFLV2G1UDK46mZxT38/fkt/5WDD
         QGVMgHWXMGNbpSSxE0LkHI69Mqb3fhORt1oQGnLZIT2CgtS3L5th3JMuRSCG8r3Q25UL
         iajRKmDaO2soj3HOUYMbJLQPafmcuWS3Z/zXbcTtjdMHfJ1YAqOsIA0yDu8TyWXiY58p
         MXTNWOynHgNpQMQ2DBCfIeWgtjo7ke1srsyLvJOYvfGttRE+Sz00jsZsYTADziWX7ffj
         dNRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com ([216.24.177.18])
        by gmr-mx.google.com with ESMTPS id v27si646334qtk.2.2020.07.03.06.00.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 06:00:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
	by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
	id 1jrLID-0006qi-Jf; Fri, 03 Jul 2020 22:59:50 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Fri, 03 Jul 2020 22:59:49 +1000
Date: Fri, 3 Jul 2020 22:59:49 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Jian Cai <caij2003@gmail.com>, jiancai@google.com,
	Nick Desaulniers <ndesaulniers@google.com>, manojgupta@google.com,
	maskray@google.com, "David S. Miller" <davem@davemloft.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] crypto, x86: aesni: add compatibility with IAS
Message-ID: <20200703125949.GA28373@gondor.apana.org.au>
References: <20200622232434.162730-1-caij2003@gmail.com>
 <20200703044832.GD23200@gondor.apana.org.au>
 <CA+icZUWwpY9rnfgyy81-78fH+PH4wmAS-+yZFBDCjBbARabQfg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUWwpY9rnfgyy81-78fH+PH4wmAS-+yZFBDCjBbARabQfg@mail.gmail.com>
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

On Fri, Jul 03, 2020 at 10:36:43AM +0200, Sedat Dilek wrote:
>
> Can you please apply my patch, too?

Please repost your patch without the 5.7 tag.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200703125949.GA28373%40gondor.apana.org.au.
