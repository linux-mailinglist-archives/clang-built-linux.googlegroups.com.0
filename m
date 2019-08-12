Return-Path: <clang-built-linux+bncBCIZXNVJQEIBBR4BY7VAKGQE6OUZF3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id A78EE8A760
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 21:40:55 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id o13sf2442244wrx.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 12:40:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565638855; cv=pass;
        d=google.com; s=arc-20160816;
        b=GqU1CQdmycCcJZmYYsdgYypCnWkQ8lL/vHJv5teYyXs/N3wmtHWdFM2avJuFPPWDGr
         UgR8DqBpH/UsfEND2WsFk4gRfhxXpYF+Ek4OdyZhegNzFmsnJzWhOgsIXTBV+M5KiNVO
         V09DG7tR2JHpRm6aXs1JNnbDaKdf4YNY/d0N+/0OIwREZDpipKQIcw1kQ/e3tVGyNlA7
         OXLxk4+hrQuiPGC7geQRkBiFhl80F6QsnFnfh5eiUu37tzKUtexoUOxZGZ3hGtbe6fjd
         ElFQx261xvMKH64Q9vlmPOV0+6B8hDbiBQh87qZymuwtPxMsHDbM3l0thXIY6JGFU9U+
         Plfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:openpgp:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=gVXSNM6tvQJJr+7cCXEd/Ur48NhFBEpbEJ8vWvA2Dsg=;
        b=1JodDnd1XVioi4j3XmVK7Jgj5et09VGfs7QJd7MoFAEJM/eTPwv9iLi+RuPBVkoGvr
         QaKelvEC7xucX84fYjN44PGvQW7LmBHUclRetLCzxm8oz22ZcgFj7h+EY4kCgxbceQSy
         LGs21976HjqcnUaa5mtMN16GDXdthYdb3Q4cE1/eChPhrSJ16HNbutC6ZJccYQM1FF5u
         eVUpi5g04CPWFCxI0hgeQy+k221OzyDfPMthKhChlSWOsgmR674Es6ToofsXWh8+Gnt4
         JH+Fj9Ljap5wu06G52aVz3kcqrVfxAQ06GgzweGWzBYyZygkzIpfKWpjXNmieMCY+uIR
         fXRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kapsi.fi header.s=20161220 header.b="wIN/hM1R";
       spf=pass (google.com: domain of jukivili@kapsi.fi designates 2001:67c:1be8::25 as permitted sender) smtp.mailfrom=jukivili@kapsi.fi;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iki.fi
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:openpgp:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gVXSNM6tvQJJr+7cCXEd/Ur48NhFBEpbEJ8vWvA2Dsg=;
        b=qdxWr5Ryb1/QVL7nOvp+jddRvZYduc1egC6eD2joCLodDLHU1qvymvbGNs9ZGMfXRg
         z7pfhcW1r9dHoUBvghMPrDjRllk6XaCj7LRrbxBoDCAyAhOseExcpBEM7AGQnXtkKCgN
         SVlWB+OmIONDcvKvdjOk41a5r9e7LEaA6la6lElO37YWgY6EI+yxn8oE6lJNzt3gO7b7
         V7Z5uHvv0j7rHZPqJ5NHkjv3YqCpHkiK77W7D4c+1HPTYon9jgivtDU6DlQi5e/cTe6q
         xK8Qr+VtYogA/V8H94OUmJ04ssZRVmxBYkjHkrusUQHWkKUDpA2SzKjz6Yc9KNKO9MwJ
         XARw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:openpgp
         :autocrypt:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gVXSNM6tvQJJr+7cCXEd/Ur48NhFBEpbEJ8vWvA2Dsg=;
        b=NiOt+mFSRdtK807zBeFvd4hvsS1+F+wevQsmcsLqK4mfwcOXGAlywhK06NGoNpWmKP
         gz2/4d2Usd6r30Fa1Dg5QhCRi6eOTgdFkqZzybm8z0fF5CAEIbP67MRoNDomq6Jp/uOw
         ljjLYgU5Elh8Zb+3ZZSipWODgGBXkZoYI6JFdrTK23mAsEBJiZAVqWlOr0+So+hU6cYb
         zXt9RxJsgQJSuqVYp0XO50/Ek+Brdi/HcndH7Qri49C4jid6K3X4Y0+Q8zG2uqKT4Ln5
         9w9Lbalj2zYlwXv7fZCFLIPM5X/BgXo1iJP86iQlFgoD02K0+TFFkERjmLYUUBhkj0Ro
         sBTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVJXOdFY17eqefPn9HEehvuwdpT+8GINprIDrq6GNjcEN7Vpoqv
	HOtCByBy8Jc0WYtCAgW+tZ8=
X-Google-Smtp-Source: APXvYqzX92qmP6GDvrmqroYSrpqx96tKIyKEIsZ1+6rVx3JunGeD5bG26cb2dKpVUeL2J4lELg2qZg==
X-Received: by 2002:a5d:51c6:: with SMTP id n6mr16727026wrv.206.1565638855396;
        Mon, 12 Aug 2019 12:40:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc10:: with SMTP id f16ls196511wmh.2.gmail; Mon, 12 Aug
 2019 12:40:54 -0700 (PDT)
X-Received: by 2002:a1c:a8c9:: with SMTP id r192mr879311wme.43.1565638854940;
        Mon, 12 Aug 2019 12:40:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565638854; cv=none;
        d=google.com; s=arc-20160816;
        b=cpoMIa6BM48FfiSBSxiFUpyDdZdnyg9cUaAZHaW5CnKmCNkXFz9xS3GLdVB5xsX7xr
         rRTS1OJG/5QJAiICUDfyaQhUUi/DuracwtbQLDa8tICK83ntZXtdNT6RRO/1KDvaSapx
         V5x+LySqrHLxNNq5QkjSw4KdzdihNhcXaejf1bijv6HQOZT+ncZEJ/cDRLlSXvEan2RY
         3C3Fw6LRnHaB+td8r43KZ/Y7mAJ6PfuX2TSgnFEGHmUwjREZMJV3q52oiTtRsPjAAE8z
         YS0xDAoyPBTRw/Y9ltXCp61YfqPa/5oKsUzaclv47j/CeQkjrEld/GCYYtVqu0aHfWHJ
         FaDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:openpgp:from:references:cc:to
         :subject:dkim-signature;
        bh=bllTEPdtYxFtEj5i4vB0U6tjHTx1DsMUqgajDbKwJCs=;
        b=NBb6s9Q6o33g2GT2lA6TQOhk04+XfcPF8zXf0umyphmjpzjuPcjzo2B830wk8Xz0u2
         FxjckyEHJJ9sjksFnsfBlAqsmkDU2cDeXz7aXQuVhIm9ihZ+8aEsxwFhL4bYnJ46rzZp
         socAwCxsmuOj7UAaIQYDkRPdxS0avcRdyMAwpVveAltuuHDAgNNW+06l0kpx+DhrKlPB
         rpifvi+XlmO06EOGD14mvNwcYS/e9MrjB2u9vza0TBMFbrAJsfbnkolRvSpioXNQgzuH
         l/Mcm+SMjo5aDewEvrvKXi8hNh/SJ75f4UjNYZMJ7rXMAAVygpxgGQTT5hnmuJ6CRnid
         8LFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kapsi.fi header.s=20161220 header.b="wIN/hM1R";
       spf=pass (google.com: domain of jukivili@kapsi.fi designates 2001:67c:1be8::25 as permitted sender) smtp.mailfrom=jukivili@kapsi.fi;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iki.fi
Received: from mail.kapsi.fi (mail.kapsi.fi. [2001:67c:1be8::25])
        by gmr-mx.google.com with ESMTPS id q14si22040wmc.1.2019.08.12.12.40.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 12 Aug 2019 12:40:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of jukivili@kapsi.fi designates 2001:67c:1be8::25 as permitted sender) client-ip=2001:67c:1be8::25;
Received: from 87-92-99-237.bb.dnainternet.fi ([87.92.99.237] helo=[10.0.0.10])
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.89)
	(envelope-from <jussi.kivilinna@iki.fi>)
	id 1hxGBV-0007yR-Qo; Mon, 12 Aug 2019 22:40:49 +0300
Subject: Re: [PATCH 3/5] lib/mpi: Fix for building for MIPS32 with Clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 James Hogan <jhogan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Vladimir Serbinenko <phcoder@gmail.com>,
 gcrypt-devel <gcrypt-devel@gnupg.org>,
 Herbert Xu <herbert@gondor.apana.org.au>
References: <20190812033120.43013-1-natechancellor@gmail.com>
 <20190812033120.43013-4-natechancellor@gmail.com>
 <ec4666a6-c7db-247b-de81-bb784bb9d649@iki.fi>
 <20190812171448.GA10039@archlinux-threadripper>
From: Jussi Kivilinna <jussi.kivilinna@iki.fi>
Openpgp: preference=signencrypt
Autocrypt: addr=jussi.kivilinna@iki.fi; prefer-encrypt=mutual; keydata=
 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
Message-ID: <1ba05172-500b-6b42-00ad-27fb33eff070@iki.fi>
Date: Mon, 12 Aug 2019 22:40:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812171448.GA10039@archlinux-threadripper>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-CA
X-SA-Exim-Connect-IP: 87.92.99.237
X-SA-Exim-Mail-From: jussi.kivilinna@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
X-Original-Sender: jukivili@kapsi.fi
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kapsi.fi header.s=20161220 header.b="wIN/hM1R";       spf=pass
 (google.com: domain of jukivili@kapsi.fi designates 2001:67c:1be8::25 as
 permitted sender) smtp.mailfrom=jukivili@kapsi.fi;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=iki.fi
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

On 12.8.2019 20.14, Nathan Chancellor wrote:
> On Mon, Aug 12, 2019 at 10:35:53AM +0300, Jussi Kivilinna wrote:
>> Hello,
>>
>> On 12.8.2019 6.31, Nathan Chancellor wrote:
>>> From: Vladimir Serbinenko <phcoder@gmail.com>
>>>
>>> clang doesn't recognise =l / =h assembly operand specifiers but apparently
>>> handles C version well.
>>>
>>> lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
>>> inline asm context requiring an l-value: remove the cast or build with
>>> -fheinous-gnu-extensions
>>>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>>>                 ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>> lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
>>>         : "=l" ((USItype)(w0)), \
>>>                 ~~~~~~~~~~^~~
>>> lib/mpi/generic_mpih-mul1.c:37:3: error: invalid output constraint '=h'
>>> in asm
>>>                 umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
>>>                 ^
>>> lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
>>>              "=h" ((USItype)(w1)) \
>>>              ^
>>> 2 errors generated.
>>>
>>> Fixes: 5ce3e312ec5c ("crypto: GnuPG based MPI lib - header files (part 2)")
>>> Link: https://github.com/ClangBuiltLinux/linux/issues/605
>>> Link: https://github.com/gpg/libgcrypt/commit/1ecbd0bca31d462719a2a6590c1d03244e76ef89
>>> Signed-off-by: Vladimir Serbinenko <phcoder@gmail.com>
>>> [jk: add changelog, rebase on libgcrypt repository, reformat changed
>>>  line so it does not go over 80 characters]
>>> Signed-off-by: Jussi Kivilinna <jussi.kivilinna@iki.fi>
>>
>> This is my signed-off-by for libgcrypt project, not kernel. I do not think
>> signed-offs can be passed from other projects in this way.
>>
>> -Jussi
> 
> Hi Jussi,
> 
> I am no signoff expert but if I am reading the developer certificate of
> origin in the libgcrypt repo correctly [1], your signoff on this commit
> falls under:
> 
> (d) I understand and agree that this project and the contribution
>     are public and that a record of the contribution (including all
>     personal information I submit with it, including my sign-off) is
>     maintained indefinitely and may be redistributed consistent with
>     this project or the open source license(s) involved.

There is nothing wrong with the commit in libgcrypt repo and/or my 
libgcrypt-DCO-sign-off.

> 
> This file is maintained under the LGPL because it was taken straight
> from the libgcrypr repo and per (b), I can submit this commit here
> with everything intact.

But you do not have my kernel-DCO-sign-off for this patch. I have not
been involved with this kernel patch in anyway, have not integrated 
it to kernel, not testing it on kernel.. I do not own it. However, 
with this signed-off-by line you have involved me to kernel patch 
process in which for this patch I'm not interested. So to be clear, 
I retract my kernel-DCO-signed-off for this kernel patch:

  NOT-Signed-off-by: Jussi Kivilinna <jussi.kivilinna@iki.fi>

Of course you can copy the original libgcrypt commit message to this
patch, but I think it needs to be clearly quoted so that my 
libgcrypt-DCO-signed-off line wont be mixed with kernel-DOC-signed-off
lines. 

> 
> However, I don't want to upset you in any way though so if you are not
> comfortable with that, I suppose I can remove it as if Vladimir
> submitted this fix to me directly (as I got permission for his signoff).
> I need to resubmit this fix to an appropriate maintainer so let me know
> what you think.

That's quite complicated approach. Fast and easier process would be if you
just own the patch yourself. Libgcrypt (and target file in libgcrypt) 
is LGPL v2.1+, so the license is compatible with kernel and you are good 
to go with just your own (kernel DCO) signed-off-by.

-Jussi

> 
> [1]: https://github.com/gpg/libgcrypt/blob/3bb858551cd5d84e43b800edfa2b07d1529718a9/doc/DCO
> 
> Cheers,
> Nathan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1ba05172-500b-6b42-00ad-27fb33eff070%40iki.fi.
