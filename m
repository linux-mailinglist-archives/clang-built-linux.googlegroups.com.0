Return-Path: <clang-built-linux+bncBC27HSOJ44LBBBEXQCCAMGQENQDSCQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C3C3669DF
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 13:24:52 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id f13-20020a2ea0cd0000b02900bdd20adfc9sf8606734ljm.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 04:24:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619004292; cv=pass;
        d=google.com; s=arc-20160816;
        b=bTVu+Q7EuRxS+qdGu6/3H+ofy+6SH8psXZReQTzqNvCrMbDK0AO7fIFTIEoRGrgMd6
         TlIbndslCCm5yNLW6g66KfFPXg3f4W71h8iOAwyuJ45Ie+gj3arjG2BJUCtvL/83Jh3p
         nuge0v9+I+snMSz6j2oIvob5EUg4m7Pwa/OXNyt+CPx4qdsS5/Ug2pynVp83DwYRhTa0
         PEl4TbZjl816RB3507rngAayCrDDSftO1rNgs8cJ/7gundLKurxXRLwY40RXeyTLJTqR
         a5jQ2f7+VIIkCvNrHwN/DXjN4WB6eVvS96iDfMzMH7vvZnFkFcFRligxLjPAZrrsnX7w
         TXQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=c+p+bMqUyC/Fnx/cT15yQO6TWVS4iCdJItw+syk3xMo=;
        b=zc3/gADSNVyt1jn+TG29E7xME/aj6rw0wrByy1Yg4St3C/PieX2/QJEnl4OAY1dJYy
         qcuwQhTe8nMXdJVv8yynY5EAiqekRczJl6AXKWxcEosbr2p3EsSjxmfR2bHjqAOZ48VR
         whlEc73cBYbOZpYVO2Y4rM5Ad4H3aHrEoKSgJIBynnq3VeRgwyT7VVIx8hXFTP+BuHYU
         IWM4Jn5KvZAnrka1Sj5e1+YaU9UeItPTTHgSw4NrB9ybN93U6//kLWLR//b2/v5QQwsi
         2WBvkx/QUWGD1/IGqdk7E5GjkOE2y/5ZbJHUwGIsbqicHC8WhydkrwIk4VyelMtliRoH
         gvFQ==
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
        bh=c+p+bMqUyC/Fnx/cT15yQO6TWVS4iCdJItw+syk3xMo=;
        b=PhC+0QskHcBP9HpVfvDq+RE4yz/gccPGPy+IgjTWTe5eO2y//pmd/m80xGg2j2MIHr
         zsFPzT85k0MG9IwteqyhOZ6pdag+XUbsOOu7meTK7BXYDLwdMnAmGhOnCfKpq4ySC6Wu
         IKJ7QjFPLsLVm3XVbgHQI57G+Or6piNEL3ju1P82tvtHxggtU57RPDoxNip/uGX37pa+
         yvER3L4TYXgFCfnrjaYe3EN7iGnwDMQMzgcsBznBqBmKGp6g55HQNhud6YSKkTTNUbP3
         yiO8ii27Vsr1YxlYDPhn/0aUIIlN32DIyFJZAwTwFJuAy1PrwKvEgSuwZRACW2qTsncr
         3y1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c+p+bMqUyC/Fnx/cT15yQO6TWVS4iCdJItw+syk3xMo=;
        b=FTVOzlOmhoyMmPcOlhB5QhdTR1IdocYFFJcuTGLdhF8GLMV8cilChSRMFQPlQ4+TQ2
         +yPeR8hDvpX4uMuN/MFSJCIPHBg3lfZ4WbBYaxeT5Z/ehEisb7UAo073FX9SUr5hpqkW
         Xl4DOnrCL4PX+cIBDdy52ExdV7yxX2b5SmTXewhxwbpuMi+s9+Ljzm+5DRG7qv8panwY
         L7gj6+E1ykaLUH8h5si1M1zZ0kVikbSrWy5TasKJ91tFIEKRpVaHv19PccmxG7WQNykY
         0qPZHzXdOCSPUnPzBYH85xaTHOooIWoNlY79nG3bzDTudwsECxgWdxIpDt6hLEvS9zXq
         EV6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jH4iEYbcFRF7UZ38CvV+xIE+DsbgKN2bdm1LIYmiqVsCm6wdq
	QKkYvD4oYwQDkzx9l+XcQpU=
X-Google-Smtp-Source: ABdhPJxha+iUKdRtYYWpON+RMDHkiVvDKtkVQqMnjmoLc4KXogt2P4M3FVcftbYOitKKGDzT/8PpMw==
X-Received: by 2002:a05:6512:ba6:: with SMTP id b38mr19582379lfv.128.1619004292295;
        Wed, 21 Apr 2021 04:24:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:890b:: with SMTP id d11ls357544lji.9.gmail; Wed, 21 Apr
 2021 04:24:51 -0700 (PDT)
X-Received: by 2002:a2e:9f09:: with SMTP id u9mr14789419ljk.388.1619004291257;
        Wed, 21 Apr 2021 04:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619004291; cv=none;
        d=google.com; s=arc-20160816;
        b=ycmsPsiKHOwkZ7V02TVRO1RVDeoGCC918sr9XGMB0MxwzW1zMNfhbweCz/S9pUu2nO
         MQGbEFKNaebfl8pSEAP+PdShrk7B5/YlILwo0MpsNCK/08PEOylVxAcUw5ZHvAAbI0w8
         UEmo3Wcps+uTmm7t1uZxuXUcU9YMUTy3o+xRQgtmTHVOfZCSfez2beDgtmVu0nixXl8D
         pfiyNoq5nKhne4H1L6d0SKLJxFR4JXqOR5hWXku9T9uLn0Dn+ATmsMtkuksOC72Yuav0
         GrUlJTcihZoUys4MkztXFaEg6lsPV7absNkxiU2OJahQsepy1BTwL93B8JIAp81G0S4X
         MnAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=L25G5N2UMTPTq5F9JlRFZvEulN0sTpT+ZtvP1OOZRh8=;
        b=jkYXYlsqFr0ZZ+/eVGfPuZAPS+T3R+NQiYbJzS50t1YHrv6bspiZ6VOlNa6UwxGitp
         blgzINLRYOt5NJPdsaLZR9u9rkDC8u1f/IYMeJbr6KK9BbCe+syc7RoBSpr+35eoD21H
         aJFGEx/xGDQ/2luzf0wOiczX/+kKhhL3sIMSLFUZzfJqgKjqz0zRWuDUe1/E+v20ew9I
         nMG7lAZE1sfpd67+ZCAFM8MI2Y1Vhi0owt1ynaoA3xwZQjdoodAhYEhsexRAGj0vNBit
         UkphOI+AvwQDzI0oqbWhdC8HpwiF0FzB2XpVr7vyPhSoUpIrVh8Qa8Ao3OYJL+FnMUif
         zg5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id j7si186710ljc.6.2021.04.21.04.24.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 04:24:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-145-Cn1hkKd9P9uw5RfL9DWEDg-1; Wed, 21 Apr 2021 12:24:48 +0100
X-MC-Unique: Cn1hkKd9P9uw5RfL9DWEDg-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Wed, 21 Apr 2021 12:24:47 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.015; Wed, 21 Apr 2021 12:24:47 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Niklas Schnelle' <schnelle@linux.ibm.com>, Arnd Bergmann <arnd@arndb.de>,
	Vineet Gupta <vgupta@synopsys.com>, "David S. Miller" <davem@davemloft.net>
CC: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
	<ndesaulniers@google.com>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "linux-arch@vger.kernel.org"
	<linux-arch@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-s390@vger.kernel.org"
	<linux-s390@vger.kernel.org>, "linux-snps-arc@lists.infradead.org"
	<linux-snps-arc@lists.infradead.org>, "sparclinux@vger.kernel.org"
	<sparclinux@vger.kernel.org>
Subject: RE: [PATCH v3 3/3] asm-generic/io.h: Silence
 -Wnull-pointer-arithmetic warning on PCI_IOBASE
Thread-Topic: [PATCH v3 3/3] asm-generic/io.h: Silence
 -Wnull-pointer-arithmetic warning on PCI_IOBASE
Thread-Index: AQHXNqAK6EZxeEzVYUmXQlgF5xc7+Kq+079Q
Date: Wed, 21 Apr 2021 11:24:47 +0000
Message-ID: <bb21141706d7477794453f7f52f6bc98@AcuMS.aculab.com>
References: <20210421111759.2059976-1-schnelle@linux.ibm.com>
 <20210421111759.2059976-4-schnelle@linux.ibm.com>
In-Reply-To: <20210421111759.2059976-4-schnelle@linux.ibm.com>
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

From: Niklas Schnelle
> Sent: 21 April 2021 12:18
> 
> When PCI_IOBASE is not defined, it is set to 0 such that it is ignored
> in calls to the readX/writeX primitives. This triggers clang's
> -Wnull-pointer-arithmetic warning and will result in illegal accesses on
> platforms that do not support I/O ports if drivers do still attempt to
> access them.
> 
> Make things explicit and silence the warning by letting inb() and
> friends fail with WARN_ONCE() and a 0xff... return in case PCI_IOBASE is
> not defined.
...
> 
> diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
> index c6af40ce03be..aabb0a8186ee 100644
> --- a/include/asm-generic/io.h
> +++ b/include/asm-generic/io.h
...
> @@ -458,12 +454,17 @@ static inline void writesq(volatile void __iomem *addr, const void *buffer,
>  #define _inb _inb
>  static inline u8 _inb(unsigned long addr)
>  {
> +#ifdef PCI_IOBASE
>  	u8 val;
> 
>  	__io_pbr();
>  	val = __raw_readb(PCI_IOBASE + addr);
>  	__io_par(val);
>  	return val;
> +#else
> +	WARN_ONCE(1, "No I/O port support\n");
> +	return ~0;
> +#endif
>  }
>  #endif

I suspect that this might be better not inlined
when PCI_IOBASE is undefined.

Otherwise you get quite a lot of bloat from all the
WARN_ONCE() calls.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bb21141706d7477794453f7f52f6bc98%40AcuMS.aculab.com.
