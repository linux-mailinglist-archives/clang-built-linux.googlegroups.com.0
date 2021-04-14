Return-Path: <clang-built-linux+bncBC27HSOJ44LBBI7G3OBQMGQEW4B6FLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D3A35F56B
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 15:50:28 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id q17-20020a05651c0551b02900bdd1e782edsf1017033ljp.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 06:50:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618408227; cv=pass;
        d=google.com; s=arc-20160816;
        b=onfE25W2ylb+Mv3U6ElgngEcf1cG597cTC9eDqFM4US5E1z4dZs9QRQ1Aa3Jt7djb6
         ZHE447s08J+AdiAr4vbHfcwhU3md/4adqu7govTcdQSZ8KDxtiyzJlg6mpG5l4a8IliW
         02OMQuwPNX9hRBHOIJO0xc1m/kmqpwwmyOyRcnYXtpimhWTfUth2DznEphYet1FEnzQK
         rIP4S6+1nsoJ7XZQMAtw/3tgDnnW5tOyadCbiFs6HGl03UNiFFkmSlwNWEUV6u9Dlpqv
         rZ3Gi6YX4n9U6tnOG+Xp3w+o+FGhH9uQCbk4NT0Z+Ah0ndCHqw5/mPNGT16G8VlxM11n
         zUVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:mime-version:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:sender:dkim-signature;
        bh=15YvuigF6Vk5vX3xLEOAo5rWFbA74BU56LoNhlkvwbY=;
        b=YdA1R8kTuDyatd6GwPOR7hrFecEmVNQMZ7uEEfX3voeo76YDPjWcsl8epGoVNkqaR+
         6UiVRXH8ym6EuYKrIZI6qdCsNklkwxNdLfh5F9jhpOA4rJNI3On10gYX863KUgYdS6fo
         ny0jSME2ro40S5936g1HgQylUzUMsH601HIiNBM6o9BKK87NC81qrsJnVVvX+gDZ+BrT
         CHpvyB5K5YHznN48wOMcJ+gxsoCztz48HI3z6TyW8JCzRLpui+yg6LOO1ZYgrqYEU1H6
         S2BSAldUINxwpQ7tjHfjKVt+PulVjsYt7DDSkW4vDGouRnHIIgcxuhjZJj8q2ktYPx9q
         s8Rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=15YvuigF6Vk5vX3xLEOAo5rWFbA74BU56LoNhlkvwbY=;
        b=avmfiHJ7GMyLTPe/2TBz+8Um/tG5Slx68yCfwDzL+SojKT0xmdkEc8iHySe8IMT3un
         mKoc9Kit2yDRNBgBf7XHL6SAjA2tZKn+4X83Pvzdr24wt9sPqFrkJhWjYZjIFjSc2WYS
         dV4vTMTtRH83RZJEcirmB0CRbxVSkxLQO2WxCMWqJ8VliPsUqah9R0tFEwulv/sHNaOT
         3/ZLwGjWKnVnPixUbBpwz+1K+z4QM3huSMix713cMBfzpNYTgDql6isgCJC4XGEDg/R9
         PtGTCn8gmImO9PU/kb0GWrNVVBqe630VhctsIWHrOW9u0KmIm0StZQkuNV41vtn564FN
         6SdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=15YvuigF6Vk5vX3xLEOAo5rWFbA74BU56LoNhlkvwbY=;
        b=msRoEBl4aMVMcbovoiHvbfbBD9s24MCObXOfalI8WtfDHs0tC0NglgUyZ36p7OT39M
         y9b85HabbI33cLdhePxxET+tSM6yMJmWuCASNudfhOqQFl2ybNQowhetuWXT3DZuUyx3
         +/uWql0Uz0glDlv6R2dOiUcIpKKtaYPI4sY8njpM0i2IvLCyUHGWcXc9IagyiFNyK1kB
         s0I2LO5az6JKsxc6v/2qazAO2l26iKE0Yo4caIU/Ufvtc+9iaOrDBNR67ovX/wpPlXDC
         nxyT8KObMeq55iNdJS1to6b7QzZ6tAr+5+U36FFqjhBXVv2CbMvM7ZHHWcLXWAw8vogO
         SVBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533A2bTf0mXvdDHsOl0DRw9msUU5EUumEfnoktm2FwexuhhhejyC
	S6QvM25T1w6S2gWQCI9fd5M=
X-Google-Smtp-Source: ABdhPJzPvxl4eREtUrDt+qlfK+1BCsnSe59pckw1z8uqRYW0dEWxVX+gVYkd6GQBS3D+2gnzi5QXzg==
X-Received: by 2002:a2e:9899:: with SMTP id b25mr24010202ljj.376.1618408227768;
        Wed, 14 Apr 2021 06:50:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls2105877lff.3.gmail; Wed, 14
 Apr 2021 06:50:26 -0700 (PDT)
X-Received: by 2002:ac2:523c:: with SMTP id i28mr2513140lfl.438.1618408226723;
        Wed, 14 Apr 2021 06:50:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618408226; cv=none;
        d=google.com; s=arc-20160816;
        b=cpxZ7OZPfQjYEQTYCZUZ2eEAdRmBpE8Sjcg7/D7Ds/cAbzBwqyX6H5xQHxFt0cgiJE
         XEfoTK9WltlPny2m/pEIrr2Xtuy9h0iFdBNADY7Svg/oOkX9uZwb7Tq0ygN5ZZSCZ6vJ
         K26jW34r+7TqDlVnfMInhPBzW9ziLudyoCEl28k7uNRMy5M5HynH6jWRhuu2+ZbHLoDk
         /z7GUcTApG6YaV7u7Ej/oMnoFAoNYTIEyFKqwv0nKrkqwEz8qIIyBEulYdtPHT4v5czB
         wxAE8eflDKR5DRT6noEgzrh66U0JzpHaxnDANR1i3h7mC48l1V0cL/IUcEguoUgDYXPe
         UurA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=y4eLaeXSP3cRQ4Tv0Jmwt3fF5qEreuFO0d2ifXzmQVw=;
        b=lyENtDPceOKAEHeiFA3DTtTMEkoYYmajxpVRg7m3GaTEKv3ci5nckZwADR7zsdjc6S
         EyiuNp5IzuaSDtMLztQVQPXWJaWfGGVK9JBMm3D9AQcvRo6ghgrjGUFhxRdNwCe3YQzA
         y/DG7X2NxYh+lIpvbqY+BLYqSWRT8vA1nvu6mvqupHMSPKQzx5sqBCy8norM0eL2h5xi
         Mk6eYp5+chD4HP10CtzEhGF0UevQMUotPJp4ag1FqhOzBRE92Ak/sS1d04SlYo+vLpTr
         aTPfhEuN919h9wGFt0PavUlVlq7gmrs2+YpdYpJLpVHA/GPW9kP6yb8usheVn6nlOqv0
         tIvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id a36si204375ljq.5.2021.04.14.06.50.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 06:50:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-275-gomfhLBpMGmSQ6lS9xz_RQ-1; Wed, 14 Apr 2021 14:50:23 +0100
X-MC-Unique: gomfhLBpMGmSQ6lS9xz_RQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Wed, 14 Apr 2021 14:50:23 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.012; Wed, 14 Apr 2021 14:50:23 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Niklas Schnelle' <schnelle@linux.ibm.com>, 'Arnd Bergmann'
	<arnd@arndb.de>
CC: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
	<ndesaulniers@google.com>, clang-built-linux
	<clang-built-linux@googlegroups.com>, linux-arch
	<linux-arch@vger.kernel.org>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, linux-s390 <linux-s390@vger.kernel.org>, "Guo
 Ren" <guoren@kernel.org>
Subject: RE: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
Thread-Topic: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
Thread-Index: AQHXMGSVFmL3q8InjEiRDqC8qAyY5Kqyacdg///5xgCAABWwYIABakUAgAAh4xA=
Date: Wed, 14 Apr 2021 13:50:23 +0000
Message-ID: <ac3447d8db2146798b86135e9f49891d@AcuMS.aculab.com>
References: <20210413115439.1011560-1-schnelle@linux.ibm.com>
	 <CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w@mail.gmail.com>
	 <84ab737edbe13d390373850bf317920b3a486b87.camel@linux.ibm.com>
	 <CAK8P3a2NR2nhEffFQJdMq2Do_g2ji-7p3+iWyzw+aXD6gov05w@mail.gmail.com>
	 <11ead5c2c73c42cbbeef32966bc7e5c2@AcuMS.aculab.com>
	 <CAK8P3a3PK9zyeP4ymELtc2ZYnymECoACiigw9Za+pvSJpCk5=g@mail.gmail.com>
	 <40d4114fa34043d0841b81d09457c415@AcuMS.aculab.com>
 <c6f3c9a70e054e9087f657bf4f142732fd43784c.camel@linux.ibm.com>
In-Reply-To: <c6f3c9a70e054e9087f657bf4f142732fd43784c.camel@linux.ibm.com>
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
Content-Transfer-Encoding: quoted-printable
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
> Sent: 14 April 2021 13:35
>=20
> On Tue, 2021-04-13 at 14:12 +0000, David Laight wrote:
> > From: Arnd Bergmann
> > > Sent: 13 April 2021 14:40
> > >
> > > On Tue, Apr 13, 2021 at 3:06 PM David Laight <David.Laight@aculab.com=
> wrote:
> > > > From: Arnd Bergmann
> > > > > Sent: 13 April 2021 13:58
> > > > ...
> > > > > The remaining ones (csky, m68k, sparc32) need to be inspected
> > > > > manually to see if they currently support PCI I/O space but in
> > > > > fact use address zero as the base (with large resources) or they
> > > > > should also turn the operations into a NOP.
> > > >
> > > > I'd expect sparc32 to use an ASI to access PCI IO space.
> > > > I can't quite remember whether IO space was supported at all.
> > >
> > > I see this bit in arch/sparc/kernel/leon_pci.c
> > >
> > >  * PCI Memory and Prefetchable Memory is direct-mapped. However I/O S=
pace is
> > >  * accessed through a Window which is translated to low 64KB in PCI s=
pace, the
> > >  * first 4KB is not used so 60KB is available.
> > > ...
> > >         pci_add_resource_offset(&resources, &info->io_space,
> > >                                 info->io_space.start - 0x1000);
> > >
> > > which means that there is I/O space, which gets accessed through whic=
hever
> > > method readb() uses. Having the offset equal to the resource means th=
at
> > > the '(void *)0' start is correct.
> >
> > It must have been the VMEbus (and maybe sBus) sparc that used an ASI.
> >
> > I do remember issues with Solaris of some PCI cards not liking
> > being assigned a BAR address of zero.
> > That may be why the low 4k IO space isn't assigned here.
> > (I've never run Linux on sparc, just SVR4 and Solaris.)
> >
> > I guess setting PCI_IOBASE to zero is safer when you can't trust
> > drivers not to use inb() instead of readb().
> > Or whatever io_read() ends up being.
> >
> > 	David
>=20
> So "I guess setting PCI_IOBASE to zero is safer when you can't trust
> drivers not to use inb()=E2=80=A6" in principle is true on other architec=
tures
> than sparc too, right? So do you think this means we shouldn't go with
> Arnd's idea of making inb() just WARN_ONCE() if PCI_IOBASE is not
> defined or just that for sparc defining it as 0 would be preferred?
>=20
> As for s390 since we only support a limited number of drivers I think
> for us such a WARN_ONCE() for inb() would be preferable.
>=20
> I guess one option would be to let each architecture opt in to leaving
> PCI_IOBASE undefined but in the first patch push PCI_IOBASE 0 into all
> drivers that currently don't define it at all _and_ do not define their
> own inb() etc.

How much code outside of legacy x86 drivers should be using inb() etc?
I'm not sure any other (modern) cpu have separate IO instructions.

Because some PCI(e) resources might be available on memory or IO BARs
(possible duplicate BAR on some cards) aren't there also ioreadb()
functions (with addresses as parameters)?
IIRC on x86 they treat small values as IO ports and large ones
as memory mapped addresses.
If PCI IO space is memory mapped then these would be directly equivalent
to readb() (etc).

So perhaps inb() should just not be defined at all except on x86?
(Perhaps except for COMPILE_TEST).
If it is defined, then maybe it should never be called?
So a WARN_ONCE() returning ~0 for reads might even be best.

Of course, there will be some obscure fallout - there always is.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1=
PT, UK
Registration No: 1397386 (Wales)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ac3447d8db2146798b86135e9f49891d%40AcuMS.aculab.com.
