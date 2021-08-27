Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBG6JUKEQMGQEB2WXMDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F7A3F9654
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 10:39:03 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id u12-20020a170902e80c00b0012da2362222sf2165521plg.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 01:39:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630053531; cv=pass;
        d=google.com; s=arc-20160816;
        b=t8XnSeMHvozGDqidwxqp/1OUBfWc4RgutndtJmw9TJmghxXMx9jrS/qU+FtQ88kFvZ
         W0yERlWh0Indij6nrc1C9QWa5d+KA3pNQ6UDyVcwpT9uBcAz8p6jZ1jM4gf8amYLmYV/
         ra6IZQO0U91EPyU2XO6vadDsQ4TIiCjyPGt8NEDmqvH8TUmd2X1fRLkD3sTISMJQdd24
         xZL6cfyQSToS4gqpmdLDfldiZZXSDDdpUdBPqHAx7BtmpMzRUMLHNtBEx/XS2aLP0+DZ
         wYc21cUFKtPK8TrA4xLAcV+xm8sZ1LebpRKe6OqqT9z+EH88Dx/IJmTofyPSeZMOY/OE
         QPKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=LdhW2DjNfWVwez26l7guVO1xivbO00PdeygbXGsPzmw=;
        b=PiezsmX3F5priyYaYNe1q2DKe0MvZbOA/DrDCqzPI7GQUqwTQ4fQMpGUqATmVz+/6P
         NEnHeVNR5aZTCYPNH5D8N+VQpR3mWpiMiKVNmSGTQLgVUIpEtZrCBUJrPz+SrT8QN4Rk
         kiDl+5pH1sdgPeHQrWdI03Ij8cGXn2EcCalA3HjlBZhtqMGqopQ7Lo0sfKQ57/V2jPue
         tYeKKu/7zRFaf6s+ifI37yxpPlQvG5JPffCCA6h+0xMVWcR3uCaKh6S9lfXavXnHgoo7
         j0zfmtMeVQlWpCXKl65V2iUOq3wuEcNgliEsXsz0UmmMkqirNdWDRnQk+fAy1dgOJFlc
         uwfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LdhW2DjNfWVwez26l7guVO1xivbO00PdeygbXGsPzmw=;
        b=agYAXoI/aBO/encfHZMAPhFt8A/TgA3xd7vaUYqzQvtfIh5TwKzpMObFVrWoLz1bCE
         Y3q63u+LZEuWp0lcBtr8R5KAHDR3bGG8Vq3NXqEgcPUfCaMBECmtiYldmG/Mu+Cp4OUQ
         I3WrWVwbtW3DT5qTouYOu9ajNm/Eq/U2g3cSvo7uHsFJSalr9pJIQy7d24wV9gmrV0xr
         SoWup8WQZkWh/tRcEm7ghuU//znYUSOXcPqePU4i7pC7mR+OTzryOWoOawdKWSiuDCwK
         qAQRLmFEX6eDuFaxw7zmoIKf6H354wktFw+H0f+8IzT/DjE6v0uQ+iIolQ6rQVCHQNX2
         JB1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LdhW2DjNfWVwez26l7guVO1xivbO00PdeygbXGsPzmw=;
        b=IGIdGfXRpmlaKF6poxG5buE7qOtkW5+1K02e3Xkn9WBbtXU32bioDuHSZO/BhNNngk
         xhFQapGwSaZWyyvcsu1QSDMmvpKpp7lW6Kjb9+2RagmXaWClo1eElnFnSdf9g+o9wurz
         7qQ76ndBeeABHFW2GruYlEknp0+F2juZDWda5Fvxar1WrWZssH8LsweDScVT6eAmkOvn
         DiHNB9un9yr/+BTvzwUHfjwh6PLZwjquCFb2Ir7YLidTS5oB3UDVx0WTVa8/F2ugML0z
         mEBCgVnKHa+bF1LS1WyenVJi6a9kGlKcHBWn7RwMoy5UoKxoGjw2rxw3Ndey/QnP12/o
         PELQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311eurFdqdtUjhQbX+XrMujyyAW2sZX0yAJ5POwy+KhMbYMi7xR
	U53Aip3xLWHAXLb7Eoy6tG8=
X-Google-Smtp-Source: ABdhPJwb85ZoGwbeQuHoWLjzBgw7q9vwR0sk2BLafRxIdkSkOp+mqXwMAJgP3uJG+PZTQBHXAQU6eQ==
X-Received: by 2002:aa7:84c5:0:b0:3e1:16bb:6e22 with SMTP id x5-20020aa784c5000000b003e116bb6e22mr8033378pfn.32.1630053531326;
        Fri, 27 Aug 2021 01:38:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5f92:: with SMTP id t140ls3447020pgb.8.gmail; Fri, 27
 Aug 2021 01:38:50 -0700 (PDT)
X-Received: by 2002:a05:6a00:48:b0:3ec:7e36:9d80 with SMTP id i8-20020a056a00004800b003ec7e369d80mr7784619pfk.24.1630053530730;
        Fri, 27 Aug 2021 01:38:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630053530; cv=none;
        d=google.com; s=arc-20160816;
        b=u2ouBN27FZXtCasfPmXuIkvhpmD3yb1nQTj7cPLXg5puirubsqz9jjVIPlmxkZ8sQ+
         +7vQ18wIxhKDkDrSNo/1RRpGLJDvfV01w9tsWuvioTbI/EfhfCfuO8lDRaGRVT3DDx2k
         7qs12XqTCQPjPgHA7Ua++Rj5HwmeBmQzZvtT2Mfbb9dm+XFa9iVTgAvLyXnxAIA7N8Ge
         Tc+oFZyHR5uKQglnRYbkwl5Qrqt2G1dSZtQpSfBZq5C1r94g7/q2hR4o3wN0Qn7wS1Ij
         yUoJ/1a0hp7vtZRB0Tt18mYbXhOSMrFPij7SB9eS8oknhyN84/pVVmvFfhEua32v1hFw
         i0lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=9A94RA6ZLRRONR4avakxGFEk4sVl4Vs3Z2IZFkqRmj8=;
        b=U51PSJybGv7Iox9z5JfN+/aKYHSlchQ99OuQ+zOK3/r5GJPjgkOUcXmoIr0haV2Qi+
         X2JMeEuq53tr29KJ43fRWHl/dxxMW1rFLTAY0MQ1yivZHSvEICQWXCeaCbEX/pWB/Rjs
         E10FUX6ljsD03OadzRYvCPssLtNIZbfehFQVQAngdWujVpu6SHX7yxvmYfYeHUIEya+C
         8gJwjYwBgmqUBlczPGESbvV7mVOEuehZjdp2iQb6eQ9S2QeARSxcq8hwB2BjyUCKtLDv
         mKJDGa4TdimfCpXWr5qy5NxcfoxYsSQsndMjldttSCRtK+I9hsTxD3iYkZmfqWdlUJgI
         HQYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from deadmen.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id o2si1004219pjj.1.2021.08.27.01.38.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 01:38:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
	by deadmen.hmeau.com with esmtp (Exim 4.92 #5 (Debian))
	id 1mJXNr-0007cn-Cy; Fri, 27 Aug 2021 16:38:43 +0800
Received: from herbert by gondobar with local (Exim 4.92)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1mJXNq-0005ev-9D; Fri, 27 Aug 2021 16:38:42 +0800
Date: Fri, 27 Aug 2021 16:38:42 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: "David S . Miller" <davem@davemloft.net>, linux-crypto@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] crypto: sha512: remove imaginary and mystifying clearing
 of variables
Message-ID: <20210827083842.GF21571@gondor.apana.org.au>
References: <20210822103107.28974-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210822103107.28974-1-lukas.bulwahn@gmail.com>
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

On Sun, Aug 22, 2021 at 12:31:07PM +0200, Lukas Bulwahn wrote:
> The function sha512_transform() assigns all local variables to 0 before
> returning to its caller with the intent to erase sensitive data.
> 
> However, make clang-analyzer warns that all these assignments are dead
> stores, and as commit 7a4295f6c9d5 ("crypto: lib/sha256 - Don't clear
> temporary variables") already points out for sha256_transform():
> 
>   The assignments to clear a through h and t1/t2 are optimized out by the
>   compiler because they are unused after the assignments.
> 
>   Clearing individual scalar variables is unlikely to be useful, as they
>   may have been assigned to registers, and even if stack spilling was
>   required, there may be compiler-generated temporaries that are
>   impossible to clear in any case.
> 
> This applies here again as well. Drop meaningless clearing of local
> variables and avoid this way that the code suggests that data is erased,
> which simply does not happen.
> 
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
>  crypto/sha512_generic.c | 3 ---
>  1 file changed, 3 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210827083842.GF21571%40gondor.apana.org.au.
