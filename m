Return-Path: <clang-built-linux+bncBC27HSOJ44LBB556XKAAMGQEFBPKCLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 97ABC3023BC
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 11:37:43 +0100 (CET)
Received: by mail-ed1-x53c.google.com with SMTP id r4sf7093572eds.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 02:37:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611571063; cv=pass;
        d=google.com; s=arc-20160816;
        b=IXurd/Sir3mzzEO+JrqVEcI9UGlvpzfpEolLFr+qplOZ8Gp3+gX0GR80CVVnuHtZCf
         f5QAbzRoelVD58mywmrG0HRDqyYK5Ug9BpHRDvdeZwZzUHTRUE3heUJfxFnxvqHxZyvs
         gpCE7H1YBUhVQaX+SnhZcTYUFjX1F9mJxdwMXVe6rpY5xwfTkL7CRDPXDuuwDsMS/P4L
         E/8Ts23mfNHWvLZkCi4gn7j/umA0Oz3EPV/o7AcBtLCg+SBsqFqB5JVnCPfbTULJT2PC
         WpsWgQuRP+VqONQ6FhEJfgLtX+9w+oAa9fc1JtinKzoyQSbfDhL2BemQnyXYTnqlGON1
         ATKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=Kg/ttOVfmC723N/RzVSjLRjrpUq/jvDq6ED+RoM1mYM=;
        b=m1KJYVfjyexp0j+aurXF5NKrTKSuSYtiC7OKX/U+wyz7uDuER6k/udbd0Ifz6weZhU
         c56CbXT/9icN6Dx656i+iA7yaKUt1jZPspbTeTkwYInXTqZMvm/8glEE2H4wV00AySj0
         pW2rOK3zOkYtsaG/ILMCEUC+P3wVKwF/UJRwHMuB1iwN1/QYvqJ8aRHnds5J9+CtftJD
         nU5TRO4I20glAcTXC02ycrizB1ZxNVfw/QSr6rjFQsSBCx9zX1QVQnn9fRLezUQpwS+p
         lUMwjh8L14F9Hw5GwXffyohqSf9pYrmFqvQHByh/uOHY5YxFlamvBEaR7rILQBocRG++
         0pPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Kg/ttOVfmC723N/RzVSjLRjrpUq/jvDq6ED+RoM1mYM=;
        b=UQQrenVrquwdHr01ZpeFPeGL4k1sC7ONu6ehXHowPFyr3L1mJFZrFpopyjUTRAVCqL
         38Flzlf+bMvwnUeXWf/JYwl8Uijsfqb35QXuRS97JFoBUqsLCHHtQ1iffWL/8XmxrMcg
         2FR6ufS9v+54yqyo+3xyd7LpXdML6mx7aT3bQ2RtIapTHzazyQO/Vp4ky+2ffxBw2Tc8
         pH80EaDDXz7P5T/DtyYNGKu95ZPk+1f6Dm6BQe5od47fIfAbVbTLZurvD3Rmxarsh6qk
         CcdlUH4n4jL+wPo0T7DXvphrhxgAKTX5JL6Knmplg0BKfcvhbD3v8bgaHXYe+IIlnWcA
         sROA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Kg/ttOVfmC723N/RzVSjLRjrpUq/jvDq6ED+RoM1mYM=;
        b=D+l+FKyaAzcRI+/M44qUWNGyDzbjxCoO0eq6qFVWOcvUm02BF1HMncO5Gb1vya9Rna
         sqN6fPReq3G01/RQiSPK+lKvPuCPEogAKrFRlF1T9b+MRbFN/Gqya7+n7LLolgdEFqDr
         U32UTnGmaGGlYq+OzNFz6zMEYSKfcyDkzmVhBPsua1WYLcUL/DzLmn4NJmuOStgOPOw2
         u08gp4aL3ZbTgEJ/QptAF89AkCBTJQaKulxd1zJIztzn3L0p/5fjJP9gVX6QVR4IYgZM
         O8MxnRVXAzd7BVlkeU65rgyKDZyPoNn4Gz/GNXqxSmmgtoLk1TgTKmQ1dTGdhC4B/bay
         8Aeg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OkNuXnnfXYIXaBU8QSKPfl37n7+InD+vCGLdjsy9aVL439Rnb
	R8PIe0xXUwQgF2UtJOjwd+o=
X-Google-Smtp-Source: ABdhPJy2vro5HJvXtkvyOQnIxO/qYGIdDGLHX7n8w0QCAzfwNaLemI98tRQ29/2WfJKqQdMFyqlJow==
X-Received: by 2002:a17:906:8046:: with SMTP id x6mr2167ejw.351.1611571063355;
        Mon, 25 Jan 2021 02:37:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c159:: with SMTP id r25ls15846075edp.1.gmail; Mon, 25
 Jan 2021 02:37:42 -0800 (PST)
X-Received: by 2002:aa7:c399:: with SMTP id k25mr287009edq.305.1611571062626;
        Mon, 25 Jan 2021 02:37:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611571062; cv=none;
        d=google.com; s=arc-20160816;
        b=lbqaxuVClS+mtd4cptrT3UA8nAe5aOL4xP/FpfTCA+WgYwS3vymRH85/vHcVBMafhS
         JcZDf5cDvFkQ+I5agiQWnTJvLXFT5uMhv1LChfR387QMt/qoLY3n1Fk9wxLjKneZoord
         71Pn7CrdUxTz3/Q6yX2KKZwKprEE/OgXX1Jkv4Y/ozT9XvtV0j+nSty12615E4iwKdrg
         yeZqwxr0S7dC1g+qWWkdeqg+QMFhuQcydiCwhyHhz5e4mHENqJgQO/sRN4AnjiGcWYgB
         MoAcFAiqT9+n7KdeLzeV+ic+aac7eNWoZzxjAEEmruBcoZG48qEwo+70XrzZndi58I+G
         pTSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=MQ9XaCqlOrU8gnfJcvU5TQMmr+wyDbdT1INotFLc2E0=;
        b=PL0ZbNP3a3den8tbrjndyOM9XP9FR5nQHEg+9eTm7xIqYtf8sL/MDNDDItg1CLBVu6
         +3MT76r1E037t3Ad78CrSkep95pDp0U2gc0TZ7iuUSb/QBOAMZtDLWYZNm0gs0Sp5Ca5
         V0vtQj0+4I/867IhD/DUCqziLjd+9Plm8QxAxXUPN0yXEHEiW7Hwt3zzko/JeDSHOpsa
         6lRlAgJC0Tu6JLIn41OmU4nAXLocrpSL5COvt3MaeQ8vxh1kDn6G9lld5zAoBg1yiols
         7lw+PD8wW54EGelVOSNKDBD2olt2MqrZ3a9z9EpUCMJ/YkBgwDkiGxpGWiER8M8nyR8a
         ri1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id k22si53022eds.0.2021.01.25.02.37.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Jan 2021 02:37:42 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-268-EnfBxMR6OVGrbaoVYShqvw-1; Mon, 25 Jan 2021 10:37:39 +0000
X-MC-Unique: EnfBxMR6OVGrbaoVYShqvw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 25 Jan 2021 10:37:36 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Mon, 25 Jan 2021 10:37:36 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Candle Sun' <candlesea@gmail.com>, "keescook@chromium.org"
	<keescook@chromium.org>
CC: "arnd@arndb.de" <arnd@arndb.de>, "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>, "natechancellor@gmail.com"
	<natechancellor@gmail.com>, "ndesaulniers@google.com"
	<ndesaulniers@google.com>, "candle.sun@unisoc.com" <candle.sun@unisoc.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] lkdtm: fix memory copy size for WRITE_KERN
Thread-Topic: [PATCH] lkdtm: fix memory copy size for WRITE_KERN
Thread-Index: AQHW8v+fVpSBFdR3bUKo3QkF9iGP/qo4I1KA
Date: Mon, 25 Jan 2021 10:37:36 +0000
Message-ID: <97d1f36a3b534b7fbd3790a0277ccaf5@AcuMS.aculab.com>
References: <20210125085622.2322-1-candlesea@gmail.com>
In-Reply-To: <20210125085622.2322-1-candlesea@gmail.com>
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

From: Candle Sun
> Sent: 25 January 2021 08:56
> 
> From: Candle Sun <candle.sun@unisoc.com>
> 
> Though do_overwritten() follows do_nothing() in source code, the final
> memory address order is determined by compiler. We can't always assume
> address of do_overwritten() is bigger than do_nothing(). At least the
> Clang we are using places do_overwritten() before do_nothing() in the
> object. This causes the copy size in lkdtm_WRITE_KERN() is *really*
> big and WRITE_KERN test on ARM32 arch will fail.
> 
> Compare the address order before doing the subtraction.

It isn't clear that helps.
Compile with -ffunction-sections and/or do LTO an there
is no reason at all why the functions should be together.

Even without that lkdtm_WRITE_KERN() could easily be between them.

You need to get the size of the 'empty function' from the
symbol table.

	David

> 
> Signed-off-by: Candle Sun <candle.sun@unisoc.com>
> ---
>  drivers/misc/lkdtm/perms.c | 19 +++++++++----------
>  1 file changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/misc/lkdtm/perms.c b/drivers/misc/lkdtm/perms.c
> index 2dede2ef658f..fbfbdf89d668 100644
> --- a/drivers/misc/lkdtm/perms.c
> +++ b/drivers/misc/lkdtm/perms.c
> @@ -31,13 +31,13 @@ static unsigned long ro_after_init __ro_after_init = 0x55AA5500;
>   * This just returns to the caller. It is designed to be copied into
>   * non-executable memory regions.
>   */
> -static void do_nothing(void)
> +static noinline void do_nothing(void)
>  {
>  	return;
>  }
> 
>  /* Must immediately follow do_nothing for size calculuations to work out. */
> -static void do_overwritten(void)
> +static noinline void do_overwritten(void)
>  {
>  	pr_info("do_overwritten wasn't overwritten!\n");
>  	return;
> @@ -110,15 +110,14 @@ void lkdtm_WRITE_RO_AFTER_INIT(void)
> 
>  void lkdtm_WRITE_KERN(void)
>  {
> -	size_t size;
> -	volatile unsigned char *ptr;
> +	unsigned long value_dow = (unsigned long)do_overwritten;
> +	unsigned long value_do =  (unsigned long)do_nothing;
> +	size_t size = (size_t)(value_dow > value_do ?
> +			value_dow - value_do : value_do - value_dow);
> 
> -	size = (unsigned long)do_overwritten - (unsigned long)do_nothing;
> -	ptr = (unsigned char *)do_overwritten;
> -
> -	pr_info("attempting bad %zu byte write at %px\n", size, ptr);
> -	memcpy((void *)ptr, (unsigned char *)do_nothing, size);
> -	flush_icache_range((unsigned long)ptr, (unsigned long)(ptr + size));
> +	pr_info("attempting bad %zu byte write at %px\n", size, do_overwritten);
> +	memcpy((void *)value_dow, (void *)value_do, size);
> +	flush_icache_range(value_dow, value_dow + (unsigned long)size);
>  	pr_err("FAIL: survived bad write\n");
> 
>  	do_overwritten();
> --
> 2.17.0

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/97d1f36a3b534b7fbd3790a0277ccaf5%40AcuMS.aculab.com.
