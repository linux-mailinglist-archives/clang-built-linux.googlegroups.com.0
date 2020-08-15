Return-Path: <clang-built-linux+bncBC27HSOJ44LBBDF64H4QKGQEOZE65QQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C62245437
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 00:17:48 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id w7sf4906603wre.11
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 15:17:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597529868; cv=pass;
        d=google.com; s=arc-20160816;
        b=MKTrdHcy2CtyZ/4yGeJ8i/ey780VidFnd5WwW65YGllQq/kk2daq72kw/1sUFqIaVm
         S0XewzJQApegggsjZCnx8/b6IByEA9r7WAQSm4kosJFpHFsc8sBXzMrIn6LVa2STZqyI
         ZOk9am4iI3ThgPvESTtX1dgHBIZoJedHH2EbUTVJE/njJBnAKzaf1ns7jkBofOxGbiSD
         NYhh4QzxGGt4lPpgrR66KlZBOfykR3xcALbNUV1elXMj0xKQIFXjxNYpFFu9i2EtcY8c
         RlW3sxSWl7CiDtr9oHdYRu1uNty3o/xqlHTHYkz0o8CVZOpNITdl5qxyFumow78lkbTb
         uiKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=JdGWVEDVuRvtM5IUhJtG+Jc2kMJfDZ3NtsOsK/1jvYY=;
        b=ztcBt9g4OxJyHX8ijcWTfw0Ea1t2W+wGP5O8gx18B9JjhU2bAHSufMgmjvkMGL6rFu
         V+XKb1MvM1j6jqC0fFEmI7pL99tkLvZRKPw4vmKBji7oMADQyPe3GiyV2SdwC7t8+iIO
         9XFX+nHfXbX8MidY9sR6Eo1yz83FxQELhaX2aQSV9R4CWORih4WtWGuDFLKuw0nl+mHb
         FR5dqfuL3OCFYWkRC1SjnB0qL+iFi0KfXlJxS9bYBaI0PwjSU8IiMfqlMs7TVFcZVEIl
         Zt1BzVtDqk+VqrUWsZEk76YTEhN9uZtnX8e18fpy3x8UKnadmBM/O7BF03T+7cf7r8EQ
         my4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JdGWVEDVuRvtM5IUhJtG+Jc2kMJfDZ3NtsOsK/1jvYY=;
        b=paH+femnrPEFoMLLlgFy/alyNkFzG/icT8KPhPZXWrOBIp2EGJ/8WbggDveV6hR8K1
         ZZqgO+lrvbAhmnYZ1c1whMQx2IiWFCA9fHZ6o3x5dg7FZjta/Gzi0oIvrt54G6H2XD7L
         FGD3s5bQ8AhtumQtn+SD/XmWbLrSBnznLLfBlZ6+Uux+5uE1nod50QwVo7yoDIIt2MvP
         03IWznbcV1MN+RdQBgnnfhS0qssXfbQNXrwGJSRecCii+1axzBD8cR/XwTCImhpTQaSB
         GOXzKpJD8ZlklCSbfH6Phjz7wc7plJisqPCcfnaKPyukgxzULTlKBAq5RXUH43xyOdZC
         y6kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JdGWVEDVuRvtM5IUhJtG+Jc2kMJfDZ3NtsOsK/1jvYY=;
        b=D0chaXdcRebbRtVSFwN4iWAX4BUX+hlXXvtqeBZys2fDbsT5Bf5BWK6rRQ1O5nujDv
         8FVTVpOSRUjlYQNIXswiXOeDOlGyQU8xbVNfdFuyTSYRhL2uHw0sLDFgSmFePycP5JDi
         3pUN9UBn7YmFHmirhVjpLKXaYtj0JargQmd8/0XKkxsb+LYf3dhAX1UlRRl9pGrEJEn7
         yanpx2C1IWsEI6PNOWESk4vJPrtaXhkozk2/bv0YbbluFadnbp/GZiFxOxgkAHfxgnUL
         6OTgLHsLhqQkuviLVZxD8z8ZQm9Q8Wws22zNIpGKoGYw3Xx8OKfbBt2usAURkN4EdVDr
         NTAg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530g1YCnGN5AiZ6RUSIv5SSVg1QIpoBEFluKKJWvQpkoho7bb02f
	nm2ui9nemEl5IIbhqayCYxs=
X-Google-Smtp-Source: ABdhPJwfqiqRD7Ixiaa2WKGgovR+sPmrsp7Qq7eML4Jhpa/TVe2A5VJ8wzCZInqv8wUkWKTnGR/8sw==
X-Received: by 2002:a7b:cb4d:: with SMTP id v13mr8682500wmj.56.1597529868465;
        Sat, 15 Aug 2020 15:17:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:81f4:: with SMTP id 107ls2420793wra.2.gmail; Sat, 15 Aug
 2020 15:17:47 -0700 (PDT)
X-Received: by 2002:adf:eb05:: with SMTP id s5mr9149675wrn.0.1597529867939;
        Sat, 15 Aug 2020 15:17:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597529867; cv=none;
        d=google.com; s=arc-20160816;
        b=Gde4Nl8Jo987wwdTOVuwHjYpWtCscHpHHZarqw+cMXPqhFJznEWtD30ercuw6weO/K
         zystsxBnMlv1sdHy4IZ7206PmU2A0Fqzf9sSLIa/lDzQfiilUtTbRtJsCEux8cDVtMqR
         Be+udgc7DdiWnKZtICmQj51wfznuRaDn5P6DjrEoKJ3q9wcZTKXeZjXqMb4ooioxcXlx
         8aZGs8SGg327KmXpIkY28GTeJ0lF5KULweCYyZY5BDEBK1FWuipLjA4Eff7omW9BzpZ8
         hZzZFCu1zlQqa0qtn/XJlE9qgZbZ1sD5e+eB90bbQZC2B9xBudf6lOL2UmZxAZ2EzBuL
         OHaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=jjwRS529e4jXM1da4BrZzROJa1NqYx5Mvr6q0nNLgL8=;
        b=Sx+A6tJlnZkXUMh3Ju0Me+our0N22OcVcrKGi/MD8FDXWrOzy7PM/XOjWEsfDEtHRG
         UkTmqX9nx0poTyeRIN20zB+kCgj8M7oz6ua/ODosI0BNQk8gpmEXhnd0J5KmeyMwlRHP
         /qe4jLMl787IVW95+U3d57mnKZhhlXf2OdKgZs8TPlDEW49zeFH8TMRL1TdK++Qt2UMl
         tJTJ8lpcg0gHSREKViPivXu/ToYky53FMmoIGgcuXWoWpfmLVTjLfRsStb3zuhp21rjV
         ZW6FJhmiFcUbxF2GiXVtQiXyQ+8xu5axK3yFAbobp9bY1VOHQf2Sen/utO9dcDTTlo01
         Qr6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id z23si617747wml.1.2020.08.15.15.17.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Aug 2020 15:17:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-194-UGUS_GsnMmaZTp2qO2jNHA-1; Sat, 15 Aug 2020 23:17:45 +0100
X-MC-Unique: UGUS_GsnMmaZTp2qO2jNHA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Sat, 15 Aug 2020 23:17:44 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Sat, 15 Aug 2020 23:17:44 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Nick Desaulniers' <ndesaulniers@google.com>, Andrew Morton
	<akpm@linux-foundation.org>
CC: =?utf-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>, "Eli
 Friedman" <efriedma@quicinc.com>, "stable@vger.kernel.org"
	<stable@vger.kernel.org>, Sami Tolvanen <samitolvanen@google.com>, "Joe
 Perches" <joe@perches.com>, Tony Luck <tony.luck@intel.com>, Yury Norov
	<yury.norov@gmail.com>, Daniel Axtens <dja@axtens.net>, Arvind Sankar
	<nivedita@alum.mit.edu>, Dan Williams <dan.j.williams@intel.com>, "Joel
 Fernandes (Google)" <joel@joelfernandes.org>, Andy Shevchenko
	<andriy.shevchenko@linux.intel.com>, Kees Cook <keescook@chromium.org>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] lib/string.c: implement stpcpy
Thread-Topic: [PATCH] lib/string.c: implement stpcpy
Thread-Index: AQHWcppzTiVsnmYgIU+NJ5yVXFbTpak5vH3w
Date: Sat, 15 Aug 2020 22:17:44 +0000
Message-ID: <213d67e912f340b0815dd4bd989befce@AcuMS.aculab.com>
References: <20200815002417.1512973-1-ndesaulniers@google.com>
In-Reply-To: <20200815002417.1512973-1-ndesaulniers@google.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as
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
> Sent: 15 August 2020 01:24
> 
> LLVM implemented a recent "libcall optimization" that lowers calls to
> `sprintf(dest, "%s", str)` where the return value is used to
> `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> in parsing format strings.
> 
> `stpcpy` is just like `strcpy` except:
> 1. it returns the pointer to the new tail of `dest`. This allows you to
>    chain multiple calls to `stpcpy` in one statement.
> 2. it requires the parameters not to overlap.  Calling `sprintf` with
>    overlapping arguments was clarified in ISO C99 and POSIX.1-2001 to be
>    undefined behavior.
> 
> `stpcpy` was first standardized in POSIX.1-2008.
> 
> Implement this so that we don't observe linkage failures due to missing
> symbol definitions for `stpcpy`.
> 
..
...
> diff --git a/include/linux/string.h b/include/linux/string.h
> index b1f3894a0a3e..e570b9b10f50 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -31,6 +31,9 @@ size_t strlcpy(char *, const char *, size_t);
>  #ifndef __HAVE_ARCH_STRSCPY
>  ssize_t strscpy(char *, const char *, size_t);
>  #endif
> +#ifndef __HAVE_ARCH_STPCPY
> +extern char *stpcpy(char *__restrict, const char *__restrict__);
> +#endif
> 
>  /* Wraps calls to strscpy()/memset(), no arch specific code required */
>  ssize_t strscpy_pad(char *dest, const char *src, size_t count);
> diff --git a/lib/string.c b/lib/string.c
> index 6012c385fb31..81bc4d62c256 100644
> --- a/lib/string.c
> +++ b/lib/string.c
> @@ -272,6 +272,29 @@ ssize_t strscpy_pad(char *dest, const char *src, size_t count)
>  }
>  EXPORT_SYMBOL(strscpy_pad);
> 
> +#ifndef __HAVE_ARCH_STPCPY
...
> +#undef stpcpy
> +char *stpcpy(char *__restrict__ dest, const char *__restrict__ src)
> +{
> +	while ((*dest++ = *src++) != '\0')
> +		/* nothing */;
> +	return dest;
> +}
> +#endif
> +

Hmmmm....
Maybe the compiler should just inline the above?

OTOH there are faster copies on 64bit systems
(for moderate length strings).

It would also be nicer if the compiler actually used/required
a symbol in the 'reserved for the implementation' namespace.
Then the linker should be able to do a fixup to a differently
name symbol - if that is required.

But compiler writers enjoy making embedded coders life hell.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/213d67e912f340b0815dd4bd989befce%40AcuMS.aculab.com.
