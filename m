Return-Path: <clang-built-linux+bncBC27HSOJ44LBB2NOTWAAMGQE5XI67WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD802FC2EE
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 23:04:25 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id d7sf1312521wri.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 14:04:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611093865; cv=pass;
        d=google.com; s=arc-20160816;
        b=FFTsMCNYfwnu17rCLlgPXselk9+cDF8XcEHDQ856+v3+mSTliI4p1f2oTcNugYlzGg
         n03qZJHG/7LwYQKf1KRKhOYiafCSKRF38KL4hvzHb1iZGmo+BX5XBmRGVe3QCavDexuJ
         WwyAao42cuFiZmSZs5VwEyYOd6ROi0ubqGt3Q0ntsyzOmASaOiS5FTp+hKtBB9jbsAug
         TWo5Vq9jBWZd09dCJv5YTKNXugfIUCNDvQkruUe0CF1za5k/tMXFp1M3IdE5s+WHn0b4
         j8yj1APFREY5qYmzujan0FaklmjsiyEygAKalLfcJOnnDCa/Ylxhcx32W6Xx/fwp1ArB
         leVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=GgoAhlu8mHZwEooqdk8HpOQaj+x7pr59E9XE6Y35CmI=;
        b=tLo2A8m7WsnSnkcQXKjSb11SGYjKA79Fip2Y3oP0nCWq8PBm7DB9J56UG7hmEmLHlf
         FKoo8gQ4fNnyIVYyBSd53yT4PcRnnInCDmK62PUqBuPM+jAhqLhLYzaG+v3B1uQL527i
         M+Dym8wsmJGCYoMXKL2U4ssHwo7S2z+wRpLmlY8m8TAjHgdNnRSPUz8fVe4OkdKKuPZA
         5rmyO+Yt35WWRlTZORmnK4yPZrTHi1/1cfoaihIZgS+21KcGEDegiTc0fkhrYKeOYi4f
         3iY4qIoRH8RQqLoJY61u2PMCB5JoB3hgK9qKnfWsMx/AnndAVug3T7Bq7vDiA+ZlIkV5
         2M5w==
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
        bh=GgoAhlu8mHZwEooqdk8HpOQaj+x7pr59E9XE6Y35CmI=;
        b=kAmEYs/WhjGqSGk8ANDDM0HxJDj4ImS9gU5jrD3CdsDS35iweFPpCklrAn6/OSatnb
         lY8ONsiqKyQzacOosAtwWo8XKNEmHy0tC9CmJFk+EfsrVFpWoskJxJijCEnm3M53LQIl
         5vysuNpLa2hy4LFxl7NQqtwiavbJgjMEAHvZzCEux47xvmlIe9ETb+v+B7UjY2lpXPiW
         XrdmigDvXWBw0xzqCjQ0cFQeQhdg688HbmEpOniPZoumi9y7hK5uxXxnJtGEGfRyPryX
         U17fH+8qVa9H5ktfVn4SUDGD6bA8QxgEXrCLDoS3APQzjfBN5uoNo5ZbQrAXr3wZUiY2
         WMuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GgoAhlu8mHZwEooqdk8HpOQaj+x7pr59E9XE6Y35CmI=;
        b=mMAFRUhwHf+iqVAlIhfHq9UWlqVuzRyctxyhcM5pkrsuPtUqWWzCzFRxFnFwWyJBI7
         M6vsETPwMJkC0IqVfoH3cnFqn0gadBrqrz6u9SkHKtMQHL+mkbkJ85QnLfk6TolDwJP4
         KzmEfvYZSBogDIxNQtHcB1LTj+WKnNIcRj07DWy7JJjC3GtJG2aXxFkEXGZ1vc0zD2Xt
         ExxucM/ERbJJwXGCXI5QBlM6PqHf7/emisDeAwO+q1cG+qbD74FOYHX/2wecrz/qka8K
         TkugzAk9EyABW6+Ok89xPBoy3Qo0Yz70mZG6gGpF9wYJAn00tShKnkV987ftjq3HxHb2
         FGnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308esDI9PEAKNLZEi6ZYQ721XjPi+oe6eBsoRvrHHgN/DIVjbGX
	6TpRqc8xrSsbbVbVb3cA3u8=
X-Google-Smtp-Source: ABdhPJwy5vJAfM/2LHihl53TSDiAuPwQfQFxljhES9D3JSUmA6qJLAD2TFYnr/dXyo/+4Q5nC04mdA==
X-Received: by 2002:a05:600c:1986:: with SMTP id t6mr1416451wmq.93.1611093865478;
        Tue, 19 Jan 2021 14:04:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e608:: with SMTP id p8ls14972639wrm.2.gmail; Tue, 19 Jan
 2021 14:04:24 -0800 (PST)
X-Received: by 2002:adf:b1db:: with SMTP id r27mr6337929wra.125.1611093864725;
        Tue, 19 Jan 2021 14:04:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611093864; cv=none;
        d=google.com; s=arc-20160816;
        b=aE+HQYYe8tvf8Qf4QECUF12q7jc/eqtBIzsKvRM+0eFQUn7nq96bnU+k+8iUAfnGFq
         A9K1GkaF/0BU4DKSf+u4MqgZafx9riXeEkEchetWT2UpYCW4TvwUOi3bYE3D/3o/+TDy
         y9MHkr82aFHSla7eJWx3eoPA6cuwekLinFiXyDf61rUVdzEsfiOx6ch3qTGReEW3CrPp
         w9yUyftWVobMEk4fCcMirA0KtuVxZZ0LN3gAFlMmw7CisYdlvVXuNvggda02Gq2k2Onm
         MUGsJFQgjx6bstbUAgr1JoWuLOYdCqJ4qEbkJ0mE/TvP1TnobGGW6kdRA+iWisuvzAjp
         4XBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=0XvRSbLPLgEG+wX20hHtTvWybAJYX5/a+5w/+R8UIt4=;
        b=TJOhgwvHOF6EBIpes5kI0WVO3ETxNYyB63m7KoDY2zAGbzk1YhFG62LBsuRR4xSHgE
         +ReXxVFkLkzTSfDGSJLzF/+7nnKbeYy7IXH+crGhK55a85ZK736h/bON90kivT92wUtI
         8hEzwFG7XiCSEZdSUtCA9vWHjHZkQgG8EfDIUlOvpi0aFVsYosAij2GvvaAEsHicxpci
         sfb3Dp4j/bfLfxhef9JVXtPPaKJmcSwm33diOObS+/6C9Yuw/BcSf8euOAWpvqQwwJTv
         onwhxfH0P0/+I3r2cRPRwXNYcHz1e6T6arCEHzGJntmUbItm44qOaGLpaMw4v9Y89c40
         A90g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id z188si12799wmc.1.2021.01.19.14.04.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jan 2021 14:04:24 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-263-n1qHRqPRPkKRjzKewXnsEA-1; Tue, 19 Jan 2021 22:04:22 +0000
X-MC-Unique: n1qHRqPRPkKRjzKewXnsEA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Tue, 19 Jan 2021 22:04:21 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Tue, 19 Jan 2021 22:04:21 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Adrian Ratiu' <adrian.ratiu@collabora.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
CC: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers
	<ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, Russell King
	<linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>, Arvind Sankar
	<nivedita@alum.mit.edu>, clang-built-linux
	<clang-built-linux@googlegroups.com>, "kernel@collabora.com"
	<kernel@collabora.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6
 warning
Thread-Topic: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6
 warning
Thread-Index: AQHW7mdkBLnG67vUeU6WLdpsKRa/+qovgJKw
Date: Tue, 19 Jan 2021 22:04:20 +0000
Message-ID: <3dbc2ce713e44e3a9a913db5446506a8@AcuMS.aculab.com>
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
 <20210119131724.308884-2-adrian.ratiu@collabora.com>
In-Reply-To: <20210119131724.308884-2-adrian.ratiu@collabora.com>
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

From: Adrian Ratiu
> Sent: 19 January 2021 13:17
> To: linux-arm-kernel@lists.infradead.org
> 
> Drop warning because kernel now requires GCC >= v4.9 after
> commit 6ec4476ac825 ("Raise gcc version requirement to 4.9")
> and clarify that -ftree-vectorize now always needs enabling
> for GCC by directly testing the presence of CONFIG_CC_IS_GCC.
...
> -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
> +#ifdef CONFIG_CC_IS_GCC
>  #pragma GCC optimize "tree-vectorize"
> -#else

I thought that #pragma optimise was very likely to remove
a random subset of the command line parameters leading to
incorrect/unexpected code.

As such the extra option needs to passed in as a per source
file compiler option.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3dbc2ce713e44e3a9a913db5446506a8%40AcuMS.aculab.com.
