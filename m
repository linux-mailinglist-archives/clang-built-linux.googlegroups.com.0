Return-Path: <clang-built-linux+bncBC27HSOJ44LBBWEF2H5QKGQEVF4K6GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 198AA27E3CD
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 10:33:29 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id 26sf327908ljp.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 01:33:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601454808; cv=pass;
        d=google.com; s=arc-20160816;
        b=MRfUHzXj2EaoVtbVuB1KNk2NROy2CU4xgfECDsfbaJgBrsxoozak6g+Sr68HA0urQW
         DJTGenbGV8EcqEyM8HVOhr/ZOF+s73e5ATysvuMme1p74CNDcdl/H3rxJOVoqCiVlBMe
         9557OopfgLCfLheVjNz4gQV7UOPqcmFlR1WLlVMKd7x/dEeDteB8Jze6n1zO6PsE5URw
         OlSQXgLLG64N8UvnVjCDWHOQkKa+hHgm0/2hmispM6ttI5NY0K0F+pAOjN+DzwCz8H/z
         4gzbrudvRkEzFFXM97JuGdUcY8bnn8AI+5IosXsO0RjHrabzDt2uaTQDkLkMoc8R87WH
         UnZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=mKRMWUO2VtbT5gznKTcWb6P5PVzebfI12U4wefgtbps=;
        b=ii+Xi46cqX2TZOwyeXS/NlygwJd9y+u/cpxw/kEkkQ31oISETk8YS8PAoi0mJrTJdS
         4lyHf4eg+Q7aBBDgtQo030kQeIbUC0XpraZELOscBJTEY2BwgWeqAwBCEfvHAggVkHnt
         HG6b9M+otbsiancehQj6rSu55fBPGfScQFQUo5Expn8sGgWjpy8CaeU6pkwQviG7OtD+
         fYdjJB/mb1NGMiTrajfsJTLywMfcepeKZh44cvKlUAKP+1qx+awgCo2U5yiN1+XRZruq
         fiyViuoOAY1s8SJLVfPx55SNvJlkCRBLPDaytIsU4okKiVbBapOzXbuJZ3xnKOdW8DLv
         DaVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mKRMWUO2VtbT5gznKTcWb6P5PVzebfI12U4wefgtbps=;
        b=HPfTr3jFcFq4uM+ueCQ9mQhZSZPBomlC37ZgHFwHAzaOzD+nUEW0C9PWU5t4vTavuc
         iFRP12Ux3uIeA9LJNQ/0IvaGcoClNA+7vmL91qgn028OSLyeVz+slgxj+errQ+iJcQ7y
         gT7yXAwfNckJjzckl+MWJ01YuGAhZxua0r6Qmv43UHxL6kYxvC9kU4ZZxPwSpMuipYht
         ixCiXnkvow0A5CLg/BxjThDl1DrgnZd+eu7wrvqhsb8aaKYTfMdLMvsGX/Klz4D3pqEg
         x+xo35ZLK6kwxqjywLYWOoY7f7wuCBffQ6qF00T87+YJrVBORNgzC+V78LOU3S2rt+JA
         3DzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mKRMWUO2VtbT5gznKTcWb6P5PVzebfI12U4wefgtbps=;
        b=FsyJZ6ajff0U2GB/jAbQeohhcybJEZPmbDlNEBuGpzOIKXa0lJQpBZZMTNt2O7JYn5
         2m635GKO5kOwfjFLHbEEeQZsFwwf98iMQL9RFsIH/s4GsDu9kulzAfNaLOUzAIvZByo3
         ByqYU8rBClSQjDxSdSlf0UbBeEFeIMbYXBAZ6XwXxHYQi5o0IIAOGe0+Z6Zv9p66Wvnp
         tPccpd1WmAH6tL7XLPEharHwZW3kSoyMA6CHjMUHuOujFdvTev5kpmOfij3S+xCo8A0B
         xqZ/f/dpa9x3z+VoSBm1hEXIUfi/YbqihqERexVVeE+SFeLyb94xtR/v7h388rb+g2AR
         d7Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533IfUx7AQpMeT16WIPw3jbPFTFWikXV+XRWKfUq9uSVPlJoKeo2
	Hb88IjzwoScLWGCE9WqXTf4=
X-Google-Smtp-Source: ABdhPJzITsDo8FX0eiz0wtX49Tdg9TuUBHzppMuU9CsWUEC0N6wBJz6HUcyDt1EYREUGSeqrHHGarA==
X-Received: by 2002:a2e:9854:: with SMTP id e20mr568432ljj.152.1601454808564;
        Wed, 30 Sep 2020 01:33:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5c44:: with SMTP id s4ls717911lfp.3.gmail; Wed, 30 Sep
 2020 01:33:27 -0700 (PDT)
X-Received: by 2002:a19:915d:: with SMTP id y29mr535732lfj.371.1601454807385;
        Wed, 30 Sep 2020 01:33:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601454807; cv=none;
        d=google.com; s=arc-20160816;
        b=EGqVYNoFMDwJGm5ToAdLLKyqDEVjt3YTm9FtVaHMG4Bqt1tIi+sP37T5Lhi7SXd5Qm
         +1KHO4PVHqdITzwvrKdWNPw5fDBcdUqKkLDjqjidYSj8S0AyXesrYLDxzCu+IxtZ7nun
         4dImh9ZjNa3stxWZ0WSdz61soslTVJRbgDFaPo8bnHBdoKzoellCwKlA1JgnKQgqSNEt
         3WmhbfweKLDhnpyRS/DmsoFm7E4ovb0xjdEnLSwbwjpQsmI3h3+En6Kpc8AQSVkDndQT
         COOF3EuJx/tP39aEW+Ub24Bz/bL43WiwCf7qhqzv5E4YHe73GsA82oe29Es2oVXPfoUD
         nJRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=L5tOJDGIuRfyjVbxwj/1/kt/JaB8SS2HYWAbG26Nx+8=;
        b=neNTBOmwcEaC09FfCiqVVXdvraDKhCqCx+IurUIFc2Fsi5eSQvjKepX/if3r4xesyr
         CDDo5CBpDGEe389/Ud4N3U1zRxhYSkVtbZEhEmoA08HfDER/qi6OaBVvNMYPdz/npwF6
         NcYvfn0SgJI3HHYHRE/durAj6KMyR6JPpJ4iLqLLPYSC2J1XvjO4BYho0/ramznLs+RJ
         moTxsQfyxOMbGbAh+ZfrHlIHBSIB5ImC63YA/8sWeuT1Z+srhueid5GoK6r6uwA2hD3f
         ca2O1kZqth2vUjX22FSmEe02PbdMT8Ma6JOyWxjivypm4KGzhRtWIJy8xdKo3WBSNHuJ
         /VCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id f12si28443lfs.1.2020.09.30.01.33.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 01:33:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-83-EbugMQlIMW-FPsA0z6KcqA-1; Wed, 30 Sep 2020 09:33:21 +0100
X-MC-Unique: EbugMQlIMW-FPsA0z6KcqA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 30 Sep 2020 09:33:20 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Wed, 30 Sep 2020 09:33:20 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nick Desaulniers' <ndesaulniers@google.com>, Andrew Morton
	<akpm@linux-foundation.org>
CC: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Luc Van Oostenryck
	<luc.vanoostenryck@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>,
	"linux-sparse@vger.kernel.org" <linux-sparse@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] compiler.h: avoid escaped section names
Thread-Topic: [PATCH] compiler.h: avoid escaped section names
Thread-Index: AQHWlpjOE9lfY6yt4U2SwZo4K9hqIKmA2qhg
Date: Wed, 30 Sep 2020 08:33:20 +0000
Message-ID: <059f629fcf5a4fe0825287a44fd24f52@AcuMS.aculab.com>
References: <20200929194318.548707-1-ndesaulniers@google.com>
In-Reply-To: <20200929194318.548707-1-ndesaulniers@google.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Nick Desaulniers
> Sent: 29 September 2020 20:43
> 
> The stringification operator, `#`, in the preprocessor escapes strings.
> For example, `# "foo"` becomes `"\"foo\""`.  GCC and Clang differ in how
> they treat section names that contain \".
> 
> The portable solution is to not use a string literal with the
> preprocessor stringification operator.
> 
> In this case, since __section unconditionally uses the stringification
> operator, we actually want the more verbose
> __attribute__((__section__())).
> 
> Link: https://bugs.llvm.org/show_bug.cgi?id=42950
> Fixes: commit e04462fb82f8 ("Compiler Attributes: remove uses of __attribute__ from compiler.h")
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  include/linux/compiler.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index 92ef163a7479..ac45f6d40d39 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -155,7 +155,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
>  	extern typeof(sym) sym;					\
>  	static const unsigned long __kentry_##sym		\
>  	__used							\
> -	__section("___kentry" "+" #sym )			\
> +	__attribute__((__section__("___kentry+" #sym)))		\
>  	= (unsigned long)&sym;
>  #endif

I guess what this really wants is:
	__section(__kentry+##sym)
but that generates an error because you can only use ## between
variable names.

Perhaps someone shouldn't have tries to be clever and not put
an unusual character in the section name.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/059f629fcf5a4fe0825287a44fd24f52%40AcuMS.aculab.com.
