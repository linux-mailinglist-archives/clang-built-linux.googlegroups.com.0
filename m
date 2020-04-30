Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBAWFVH2QKGQETF4DM2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id E68801BEFAF
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 07:30:43 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id v185sf3311513oie.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 22:30:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588224643; cv=pass;
        d=google.com; s=arc-20160816;
        b=DlIQosU3LuJaZyNOv/wVtTuxYV9Btl99biHtVthQBjCckAOKMhEvkbCkpKnGqVtpPB
         V1OQ5gqRy7kdcaBLW6Eadm+W8F6DvjKWbGCQiEncXEq1cd0vsUFrCUSIm9xY+6Igcw1s
         6fnGE6Q2bXic8jRFcnkqBHrOI/kkV9CBWzSa0f6dViIaWI9etLxGTXlA+LepcdmSbBmg
         T1MseVey+kAMjpnFHM1UPb+bHmWmPrde5WZYQSDg3c9xJxBpF0GbGIjRGvN1W183nz1w
         cZ3PNFS1JNSdRpenbJZPrUATXINzkcRimu5L3X1HcHA3MPSnkgouxDsJQQYNJwozWlGm
         z3yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1A4ZoRp8+9Mo0FRxJnrTb+FoWPLMeuWkrlWEo2dWlm4=;
        b=mZ9BK7efPH1sRqf16WzRCW0wRS9ECVgLDn5DkwGecEmBVtLbw9DVAXMwj/yIvuzxad
         RBUSPvHh+46H5eDuqHbyQZCug54AZ2vR8VAfUAE2/BBuYobHXNQGFok8mkBKli3UGK/U
         YyX/sEBDzMmlLguSEkuo0dgkehIOKPxX9lD7WL4zzTOFfKDArX4uZdgjUclbfUj7CDSU
         wsnGnGU78xBJ2EHFjHPj4zh+VCnkVDg3NLQDDvXsdXB9ZYcpaqliVu1xkKteClN48LC7
         j6VPv5nqE3sUppcoISPZxqtjxN3FxHURP3i2vtfRhGki3Zr2p7UIb7kQCd/6NbgPqk4R
         oDLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1A4ZoRp8+9Mo0FRxJnrTb+FoWPLMeuWkrlWEo2dWlm4=;
        b=QjOslvsOs6RPMuTj9X4kmkAQl+AcK6AP7T5X1RSi21o1m4r2JG2g9hYDZ834bPChe4
         dZ2D256cDi+1WhQoJzADQfbtj2rWEfZA3cVPHKhy5ff58HRRj/UzTwS4zt5FDbr9Q1y1
         ICkgJUM9gDgyg9YScU39p8Yt2oDbP4/0FXR3C+EtMpeBTAPR40CyxHUwfTtG5vMro3/3
         7jewNKj2BZXsEii3RH6FlaV9xvCb9lm5lUPcyQ6mHh54tncFzKbB5JxTKgpIOofwN8Jv
         O+arrt7vOtaf9Ecs8wOBZbS9ft52iUh1jyMSpkzmik46TWPUGMDmJBGZNY2TGV/XrK5u
         IgYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1A4ZoRp8+9Mo0FRxJnrTb+FoWPLMeuWkrlWEo2dWlm4=;
        b=oUtYjfBVaJIdKy8B2wnO81XTfpu/Lp6eVwSluGQi6MFdYbACWZVnexSbi37gLqc/nD
         cv9tH2u8qAqNg21lh8H44ZwBpaFMHnftQUyEKjGiHd6Zk1Yjkm+bOy1c9Y9cr+NdFSxe
         iJe1BioB+QorRXO8nOO9KcVESAK4Te57HCajxSRquyc+doAU23wxnzPHaNlworEWDliL
         Qf8A3m/v4X7KjFhmkxgQYvtyM9B2fQO6oQxn8S6Jw7bH6MJRFdJE7z4P3WBlN6qFkr0k
         xMJKdjjEVvK3VQD0niZ0hoMx+sJWpP7h49DTvsBZyhlHFwUQjgejnvaSYWmfcMjJM8/d
         2f3w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZpoCZ3P9GA+EBjvSvFoUlx8+/mnnhsjlvc7qcaQvv1RGdjN69x
	HiguVrejaf91DZjCr7/dPJY=
X-Google-Smtp-Source: APiQypIpSbV2hHnANq3oYARkPWTU94NxKolbVfMD3mFhVWGsWFnii/eNhBFgqMCTwXSFGKEeBi3tKw==
X-Received: by 2002:a9d:6644:: with SMTP id q4mr1239484otm.229.1588224642860;
        Wed, 29 Apr 2020 22:30:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1b0d:: with SMTP id l13ls355031otl.5.gmail; Wed, 29 Apr
 2020 22:30:42 -0700 (PDT)
X-Received: by 2002:a9d:d0f:: with SMTP id 15mr1236451oti.161.1588224642255;
        Wed, 29 Apr 2020 22:30:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588224642; cv=none;
        d=google.com; s=arc-20160816;
        b=UXJVL5KBOobLRY8XajkvlI3tChClBPmsqBkl6d53F7gIMA88ZCxEd1TBtSbG54iDh9
         yJI2LoJDdiumdzg3KBOnQc+R7NWDF0SqOZzXHvvlZ0xknBfCB5h5GEMHTMFsmugnvpJ2
         BWxTSgkdVLYt89/zFPyKzOslec7qbBiWoA9ZVj2qstRPGdS9tImOnf8NhxfCebPYg/9j
         08cNFNcZSGBPN4ePrRQIGqzL4kple//TCbw3CiJ5DMeHZWlGm2dqXpg/YeCMrKXH4XuN
         CULkYkUxxxtUtMitD+bNeumAjdJXGC273tqLHFyCRXwGOodlzv0nss/hl6YlWFhDIoL9
         GlnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Kjlk/XkERUQdTUdqrtZvTZnBVPmqSm9W3wRIXQUb3Qk=;
        b=UuoYuQDSAuGf68hBQiKKSwvmhpM03fDB76/dVGPqPnk116lKWcl+f6ungVbRX23DsA
         fgBwsQoXbPN8cKEhxfYXqHhEMFHCikOBUwJgJTm0VU4gleAr8/6icZHRs16zLzesHVD2
         kNO2GcIHR3d07jSHqsvvtwvcvrvSkqumPfczYTj1mbM3XKZK70FfzLbLd4o+l4EiqOg6
         FvaNOmH+mwybFXyKG7ZkuBRsQjgw5U+oArKGbA3uomMnS47yFnnvsFTw3Zj/qrqPKvFx
         teKucy6yQ+0uM7xVJbKnZ4dADkEI48B9DrkS9XLsVBWqDAxSsxbAYNy4K/h8xns72UYQ
         BEvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com ([216.24.177.18])
        by gmr-mx.google.com with ESMTPS id z4si176047otk.3.2020.04.29.22.30.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 29 Apr 2020 22:30:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.me.apana.org.au ([192.168.0.7] helo=gwarestrin.arnor.me.apana.org.au)
	by fornost.hmeau.com with smtp (Exim 4.89 #2 (Debian))
	id 1jU1l1-0005JC-1O; Thu, 30 Apr 2020 15:29:12 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Thu, 30 Apr 2020 15:30:04 +1000
Date: Thu, 30 Apr 2020 15:30:04 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Dmitry Golovin <dima@golovin.in>
Subject: Re: [PATCH] lib/mpi: Fix 64-bit MIPS build with Clang
Message-ID: <20200430053004.GC11738@gondor.apana.org.au>
References: <20200421214703.47883-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200421214703.47883-1-natechancellor@gmail.com>
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

On Tue, Apr 21, 2020 at 02:47:04PM -0700, Nathan Chancellor wrote:
> When building 64r6_defconfig with CONFIG_MIPS32_O32 disabled and
> CONFIG_CRYPTO_RSA enabled:
> 
> lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
> inline asm context requiring an l-value: remove the cast
> or build with -fheinous-gnu-extensions
>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> lib/mpi/longlong.h:664:22: note: expanded from macro 'umul_ppmm'
>                  : "=d" ((UDItype)(w0))
>                          ~~~~~~~~~~^~~
> lib/mpi/generic_mpih-mul1.c:37:13: error: invalid use of a cast in a
> inline asm context requiring an l-value: remove the cast
> or build with -fheinous-gnu-extensions
>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>                 ~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> lib/mpi/longlong.h:668:22: note: expanded from macro 'umul_ppmm'
>                  : "=d" ((UDItype)(w1))
>                          ~~~~~~~~~~^~~
> 2 errors generated.
> 
> This special case for umul_ppmm for MIPS64r6 was added in
> commit bbc25bee37d2b ("lib/mpi: Fix umul_ppmm() for MIPS64r6"), due to
> GCC being inefficient and emitting a __multi3 intrinsic.
> 
> There is no such issue with clang; with this patch applied, I can build
> this configuration without any problems and there are no link errors
> like mentioned in the commit above (which I can still reproduce with
> GCC 9.3.0 when that commit is reverted). Only use this definition when
> GCC is being used.
> 
> This really should have been caught by commit b0c091ae04f67 ("lib/mpi:
> Eliminate unused umul_ppmm definitions for MIPS") when I was messing
> around in this area but I was not testing 64-bit MIPS at the time.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/885
> Reported-by: Dmitry Golovin <dima@golovin.in>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  lib/mpi/longlong.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200430053004.GC11738%40gondor.apana.org.au.
