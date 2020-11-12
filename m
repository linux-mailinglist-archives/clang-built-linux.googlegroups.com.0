Return-Path: <clang-built-linux+bncBCIZ5ENDREFBBYOOW36QKGQET67YDAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D812B0FFE
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 22:21:38 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id h8sf2571306wrt.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 13:21:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605216098; cv=pass;
        d=google.com; s=arc-20160816;
        b=a9fmHRCIY8YqjyBoF8BXp3ZjN6MrSFotI6EQbRAFOSOxrnIzO0PO1sb6l/37lX+lmG
         kZrR0lirqTT9wPxqr4gi3RMJ10+1PbODySuERraqWv6178tmct6pUSu5KdjtDTRA1nu7
         H7QeY080zp6RXMfkjluy1bxv6N/6W/0/6S31jvrkwtEoiF9Q796H/gWh3bhEXR6cPmT4
         0t26t7fJ+qU4WGVtQQsmYLWLJ4mmanr8rW+FFniCIp3oVFFUp8LHVeMAIHVoEn7xbjSV
         EksAOTQd79nsRCwBk/NZ9zuWTSr5DWk+Z4koeoXm6DZ1kUM1ptikfAsao7y8x0A4Q6wi
         zN5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=ELhbOeMCNq3dwEXrhgffmKSDrmeWJmh4DYSMP9mX5wM=;
        b=aiOd0DN2FWKVfhx7iJGeGvrXBhtrpBQrB7o6iIs3DjprZ15pKn1AsEh/H8FSRNU5rJ
         WMTh/IymIqxyhLi6C+dl27F5m/K0iakMeJzMsHNZx7o3OJ7EKVZWevuDMYRiKxpABP77
         RdOorLKoSMljYIVhsME+TkYZTw+Fnq7T33vWPVYzpMPYd+Mj9QCW8rWio1ls9qr+tjEw
         qGm4fCCDSB/2Lrm/jLAp690nCTZdkvtS9D38P7/fxFONkhZrjezOZW0jTAFRbPQJJDjL
         eB6xOGxqrVmvZYc34XJWdBAnRTfTaMrKNV9RMXkaXTIeGAQ4xNW6v+8S9Kog/X2mLtsu
         uefg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a9F7OyYR;
       spf=pass (google.com: domain of chunkeey@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=chunkeey@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ELhbOeMCNq3dwEXrhgffmKSDrmeWJmh4DYSMP9mX5wM=;
        b=FHdmQrHDlHlyjEDepAz2jXs2A+iIWNpy+oy6GcYph6vcSh6QzPfDVYzBZK6EF8XtUJ
         oQqRckNKv2PQLj4Zc0Hhhb+j9ErHfxjZDfFUC1hsQwUZO7uA41fheI8BK9g2s/ieBsxX
         aP5neUWMF3yZcVmWT2GrrA51y275+AEThA32tDlTEHCHkukCU2l9TLpg12uZ4eB3Oll2
         B3rrRrLnSqTggQBCyk53m/B56SqdND/Y1tZ5NjcSQQ4b9xBhZ5fI5grNDHFU9aDIqlFp
         RcWNywXc60Q4bYo7UNjonT1nl/eFhI2CKRSvX+llycKvFaZfm+F+i2XYNtLuuglgsg9w
         hl9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ELhbOeMCNq3dwEXrhgffmKSDrmeWJmh4DYSMP9mX5wM=;
        b=bWkTgR+C+48O2GLhrz+cqD1F6eTWjl+wCpBlPG7wsxPy52guGAz/uso1xvJlKlyxgF
         kBSrMvFM3QO434Q1hUzLBV80s9VU5TpN/F9erzo5Jbe+Ty+bbVvvGBkAddrG8JusJHKK
         FoYo4YSkV0lz37zeA0QQzLiVbqvH0KPmnwoviuwmJltsvgjIRxhGzkk1x4ZCdzSht/g/
         tWWKWGty/xBzwEzQ9VuIqspRc0krvFVAGAAEfAxWAQOAYu9H+O58P9FvLRbudjMWlFVm
         VgdAcDhSRVWAMzKKRLWnyZhuy6DgkichkdCud0YyLOuX9ne/U0tVUexzzNgx1GAdXOib
         zQzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ELhbOeMCNq3dwEXrhgffmKSDrmeWJmh4DYSMP9mX5wM=;
        b=Rc2Ku5gA4VYZEjjRHhM4rc66h6nOXROD60WYYCsa5etUYxOjWroicKJQVWZjku9UPx
         x0zs6RujiKzAek51JhLbCeGet9Cf7jdr9V8H30xtUdj3qICMP0QPdflOe8dqv88sGqwO
         gQv/+hdzowJeY0fU0Hmp8avA8pKfw1p1flk44qXyUg3Orf3+YA9BG04Cu8WzoTQ46rnt
         +uYLu0C0t0LIOeNtX9JfBIDl/z0Me45o1d216YwxIvhrGw4dlxJ2PM6+qv6eM4iL1C/5
         73myS2YAHcPH4LoZj65uFcjJ1VlRDin1AcpnhWndYGgGaYTYTeQJorsnyHuDQQwUZ2L2
         XF3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UFUDPTbDCHKAXZ+dvvtcWiJwRdmTP2PGSeJ8MwneRsrSrhH0Q
	e/TtwM5NQK+li+cfEhUDJKk=
X-Google-Smtp-Source: ABdhPJydypeh2wvfIWFCGMT2DSpr90BbBmRpmL9Hx8J4FLfR64NGSlWiBsTgVEjL4h09YkUsEi+gCw==
X-Received: by 2002:adf:9069:: with SMTP id h96mr1795306wrh.358.1605216098156;
        Thu, 12 Nov 2020 13:21:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e5c2:: with SMTP id a2ls2558763wrn.3.gmail; Thu, 12 Nov
 2020 13:21:37 -0800 (PST)
X-Received: by 2002:adf:f546:: with SMTP id j6mr1816967wrp.219.1605216097287;
        Thu, 12 Nov 2020 13:21:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605216097; cv=none;
        d=google.com; s=arc-20160816;
        b=dJKdHfUqo05oV+IgwQkJKOkvoaovgbLcKW/SU7dT+2jAVw/xdskgqMjJcU3i9Twu8s
         WEWTJHENjwXFbl9zH7l2B52WW2exw9dg2p7HnkfjtlqDmcL2UUbHQvwraMlNvwiGekHi
         +YwHLcq9b3jJtvUIAbyBm2OX/N09gpJUB8GVQPDZKmGNpggV8yz3GYrLIpsWcTyvlKJ8
         YLNN2FvET9EwMiBe9InX99mjykkBJEuL9X16jjeP7zGKw4lMjkVyaKP9SopUSnnhNwW3
         72h6wLEf356LNh+lg+e+vHPNSvslWLBBbfJCqJI/+nNLgZrBJWSN0Q7lQhRk2YFKAqfx
         oATQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=F7pOkzR2g826W8yFIgMZddtTn8R1MT7RN19wNn/t72I=;
        b=Nvv2M8ZdlvR8FBD/nUPLKFHcLY7dsGDf/PFK6z4DXqG4a14NJydBK0oT6+QlNb92yM
         Zg6ltWCeL/bFFM1wGAF+bdHv//BTp7xXwFN8qrANZMTGD64Pcy+E/T8RBMBpuN+5r0+D
         qN3AQED6/br2bumyvhuF6G8DmicbLsNe0NxUi3cPaN6AVEtSp9lCVwfeMdvR1Yw36VZb
         VXsNpQb+kW81li5Wh/Lzk7NEBr3QPA0F95SVo/4na1N94IgjDwaIunoKyqHlOnJQqNo6
         Bgz96dBh23+wP/Hlg5+noAudCy+zUhBnE5ZJ1pfVJWZIFUxV2AYo//WpzvnxeuX9ueUy
         NuHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a9F7OyYR;
       spf=pass (google.com: domain of chunkeey@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) smtp.mailfrom=chunkeey@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t1si195837wmi.0.2020.11.12.13.21.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 13:21:37 -0800 (PST)
Received-SPF: pass (google.com: domain of chunkeey@gmail.com designates 2a00:1450:4864:20::544 as permitted sender) client-ip=2a00:1450:4864:20::544;
Received: by mail-ed1-x544.google.com with SMTP id cq7so8140098edb.4
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 13:21:37 -0800 (PST)
X-Received: by 2002:aa7:c617:: with SMTP id h23mr1983027edq.154.1605216096661;
        Thu, 12 Nov 2020 13:21:36 -0800 (PST)
Received: from debian64.daheim (p5b0d74e1.dip0.t-ipconnect.de. [91.13.116.225])
        by smtp.gmail.com with ESMTPSA id og19sm2599561ejb.7.2020.11.12.13.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2020 13:21:36 -0800 (PST)
Received: from localhost.daheim ([127.0.0.1])
	by debian64.daheim with esmtp (Exim 4.94)
	(envelope-from <chunkeey@gmail.com>)
	id 1kdK2B-000F3t-92; Thu, 12 Nov 2020 22:21:35 +0100
Subject: Re: [PATCH] crypto: crypto4xx - Replace bitwise OR with logical OR in
 crypto4xx_build_pd
To: Nathan Chancellor <natechancellor@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20201112200702.1664905-1-natechancellor@gmail.com>
From: Christian Lamparter <chunkeey@gmail.com>
Message-ID: <1f5e8575-ab7e-59ea-6be7-0340df4d31c5@gmail.com>
Date: Thu, 12 Nov 2020 22:21:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.2
MIME-Version: 1.0
In-Reply-To: <20201112200702.1664905-1-natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: de-DE
X-Original-Sender: chunkeey@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=a9F7OyYR;       spf=pass
 (google.com: domain of chunkeey@gmail.com designates 2a00:1450:4864:20::544
 as permitted sender) smtp.mailfrom=chunkeey@gmail.com;       dmarc=pass
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

Hello,

On 12/11/2020 21:07, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/crypto/amcc/crypto4xx_core.c:921:60: warning: operator '?:' has
> lower precedence than '|'; '|' will be evaluated first
> [-Wbitwise-conditional-parentheses]
>                   (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
>                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^
> drivers/crypto/amcc/crypto4xx_core.c:921:60: note: place parentheses
> around the '|' expression to silence this warning
>                   (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
>                                                                           ^
>                                                                          )
> drivers/crypto/amcc/crypto4xx_core.c:921:60: note: place parentheses
> around the '?:' expression to evaluate it first
>                   (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
>                                                                           ^
>                   (
> 1 warning generated.
> 
> It looks like this should have been a logical OR so that
> PD_CTL_HASH_FINAL gets added to the w bitmask if crypto_tfm_alg_type
> is either CRYPTO_ALG_TYPE_AHASH or CRYPTO_ALG_TYPE_AEAD.
Yes. This probably wasn't spotted earlier since the driver doesn't make
use of CRYPTO_ALG_TYPE_AHASH (yet). This is because the hash accelerator
setup cost was never worth it.

> Change the operator so that everything works properly.
I'm curious if this is true. Is there a way to break this somehow on purpose?

I've extracted the code from line 921 and added the defines
(the CRYPTO_ALG_... from the current 5.10-rc3 crypto.h and the PD_CTL_
from crypto4xx_reg_def.h) and replaced the u32 with uint32_t
so it runs in userspace too:

--- crypto4xx_test.c ---
/* test study - is it possible to break the | vs || in crypto4xx's code */

#include <stdio.h>
#include <stdint.h>

#define CRYPTO_ALG_TYPE_AEAD 	0x00000003
#define CRYPTO_ALG_TYPE_AHASH	0x0000000f
#define PD_CTL_HASH_FINAL	(1<<4) /* Stand-in for BIT(4) */
#define PD_CTL_HOST_READY	(1<<0) /* BIT(0) */

uint32_t func_with_bitwise_or(uint32_t alg_type)
{
	return PD_CTL_HOST_READY |
		((alg_type == CRYPTO_ALG_TYPE_AHASH) |
		 (alg_type == CRYPTO_ALG_TYPE_AEAD) ?
			PD_CTL_HASH_FINAL : 0);
}

uint32_t func_with_logical_or(uint32_t alg_type)
{
	return PD_CTL_HOST_READY |
		((alg_type == CRYPTO_ALG_TYPE_AHASH) ||
		 (alg_type == CRYPTO_ALG_TYPE_AEAD) ?
			PD_CTL_HASH_FINAL : 0);
}

int main(int arg, char **args)
{
	uint32_t alg;

	for (alg = 0; alg < 0x10; alg++) { /* this is because CRYPTO_ALG_TYPE_MASK is 0xf */
		if (func_with_bitwise_or(alg) != func_with_logical_or(alg)) {
			printf("for alg_type:%d, the bitwise result=%d doesn't match the logical result=%d\n",
				alg, func_with_bitwise_or(alg), func_with_logical_or(alg));
			return 1;
		}
	}
	printf("logical and bitwise always agreed.\n");

	return 0;
}
--- EOF ---

Both gcc (gcc version 10.2.0 (Debian 10.2.0-17)) or clang (clang version 9.0.1-15)
version always gave the "logical and bitwise always agreed.". which means there wasn't
anything wrong and this patch just makes clang happy? Or can you get it to break?

Also, can you please give this patch a try:
--- extra-bracket.patch

--- a/drivers/crypto/amcc/crypto4xx_core.c
+++ b/drivers/crypto/amcc/crypto4xx_core.c
@@ -932,8 +932,8 @@ int crypto4xx_build_pd(struct crypto_async_request *req,
  	}

  	pd->pd_ctl.w = PD_CTL_HOST_READY |
-		((crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AHASH) |
-		 (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
+		(((crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AHASH) |
+		  (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD)) ?
  			PD_CTL_HASH_FINAL : 0);
  	pd->pd_ctl_len.w = 0x00400000 | (assoclen + datalen);
  	pd_uinfo->state = PD_ENTRY_INUSE | (is_busy ? PD_ENTRY_BUSY : 0);

---
I'm mostly curious if clang will warn about it too.

That said:
Reviewed-by: Christian Lamparter <chunkeey@gmail.com>

Cheers,
Christian

> Fixes: 4b5b79998af6 ("crypto: crypto4xx - fix stalls under heavy load")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1198
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>   drivers/crypto/amcc/crypto4xx_core.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/crypto/amcc/crypto4xx_core.c b/drivers/crypto/amcc/crypto4xx_core.c
> index 981de43ea5e2..2e3690f65786 100644
> --- a/drivers/crypto/amcc/crypto4xx_core.c
> +++ b/drivers/crypto/amcc/crypto4xx_core.c
> @@ -917,7 +917,7 @@ int crypto4xx_build_pd(struct crypto_async_request *req,
>   	}
>   
>   	pd->pd_ctl.w = PD_CTL_HOST_READY |
> -		((crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AHASH) |
> +		((crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AHASH) ||
>   		 (crypto_tfm_alg_type(req->tfm) == CRYPTO_ALG_TYPE_AEAD) ?
>   			 : 0);
>   	pd->pd_ctl_len.w = 0x00400000 | (assoclen + datalen);
> 
> base-commit: f8394f232b1eab649ce2df5c5f15b0e528c92091
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1f5e8575-ab7e-59ea-6be7-0340df4d31c5%40gmail.com.
