Return-Path: <clang-built-linux+bncBCV4DH5YZYMBB2GC3OBQMGQEORXXHSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5AE35F3D9
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 14:34:49 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id 59-20020a1709020241b02900e8de254a18sf6818442plc.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 05:34:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618403688; cv=pass;
        d=google.com; s=arc-20160816;
        b=csT1ipBBNKBR7prtfolxIsx5dOnNhOvNBN7vfjpJvun6gEFjgjoRoQ6ZjPF9iIkkdQ
         3UB4K3PHgwwtG2ITGFn0AeHINzJGmiuFlCbOi3mrXoA+qTLAIxJ86UNL9SrA6necQFUK
         E0fEJv3cngK4dctUwaCASNCEJE5TuC+yT+NF10EUFoWysc6mBT7PMSigYSwi1tEbbgcn
         6Ap+9CTYx0uRJVXjIzY+bHaRo/9eJTdjRfNvJbu3hvpY7yMz/FpIhLYAOXfBZa4VOlHC
         oAZBdnefbRpFvHkGEovjgp8L829AK+jf7unhKMPCNRJzlgNRiyXtnjSleproOYIh1Avq
         elqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:date:cc:to:from:subject
         :message-id:sender:dkim-signature;
        bh=/wPd+F3VbKFoHjhpNVKKiYUbDyAnyqou7EJtB0QsEJY=;
        b=ggyX1qTDySIR1qGw3LV2DZhLLYLX61qalO6VgsZkC7ybGEPzLZF1IfVATrP0jDBo1p
         HpwrOshXbD+uxuDr/M9Sr1UvGkyj0qJavlVVHFF3HfKtgGoerkUgZOIXHisWLQBZI8aN
         VNDKFT2Z6e9Z0dhvodUblrEBPPg9B+VAjwZrXqIMNHHmyWDOI9TJKCj/+eo6sTu/wMJN
         BLjE5XSPYnL+G9mri66da7RODhQecq8G3IrGYufbgQalQ6BerH43DibESWYftR2d8V8h
         Ya8MJqgty++0XS/RptsnZkwmS92V8oqGDHniZGLQ8cZFbymYmnCeXGF6dXRBdvB5NC1w
         62Fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=OBv9mqk8;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/wPd+F3VbKFoHjhpNVKKiYUbDyAnyqou7EJtB0QsEJY=;
        b=NmcnBdkrH/jm0fJUyumepmq3KaC6DzdyU/MMQeqsqtPuOo3TC800zqQGk0u5Fm1FHn
         O/mT1pPj22ULJpMbfKVlpF2C4yYLYqrd7A0iQeel10YbzkwjZFI9OYan4CSkljfpJSAL
         T0OGjPG4EYYsEbQN3RbokE6TXOkUKO6Ur15O0VU6HuGZLIJbuphubVSmtno1sLv0BRv4
         dYFxfm6pyQRBx/oPfKufn7FBQPumD510ejTk6OmpUSinmqxj64lVTtEIJ33ZQN04map9
         NfO3fSboizlNPp6S+ItBcldZTU1YpSltTuFT1nHBBM1DbZkEpVO01QJB1+tNAcVCNZ86
         amXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/wPd+F3VbKFoHjhpNVKKiYUbDyAnyqou7EJtB0QsEJY=;
        b=Oayl4Ye6P1nrYms2x0IyxbthEy0swpjWhc8wG5KHaJO81e14AzQf/NWfdP5VBk7/Z/
         HsyVTXpCiF5w6P9e5QfMkyMQImBgCTxYjgkYEoASWVDBqSawuunTUokpc61xLQhuIIGg
         s6nJ7KzTbq8JvjosZFaLMFmXf3z5uKoOkx3kPodRRrBgBFYP00BhOgjqT1fFe2w1zFLL
         altDG2ffG+iqAcTeUEYf4sGKDYvRDK3HXnDi84Hf+euwhTbvKxj3+aqrCEiN9D2M1QQr
         C4V6CRUiq25b0FKmmCvBHjNOetkj+HysEOe84VuLHMw7RZA7VczBkTmjA2VGe/E160Xw
         xpsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531+Hh8vKMyxZ8Y5sYJytFj3LEzN7N1molUQVeIAsasELFvy1XN0
	K4g9Uz6++G3vOMtwy6t5738=
X-Google-Smtp-Source: ABdhPJwsYnTkCtfVxbceezJRnd+gFzRoeAUFzvMlNUlz92Dn3lN4TUJre2u9Vw95iBsWUUlPMtNCQw==
X-Received: by 2002:aa7:9843:0:b029:24e:8215:f546 with SMTP id n3-20020aa798430000b029024e8215f546mr12331064pfq.10.1618403688403;
        Wed, 14 Apr 2021 05:34:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ab81:: with SMTP id n1ls1256563pjq.3.gmail; Wed, 14
 Apr 2021 05:34:48 -0700 (PDT)
X-Received: by 2002:a17:90b:1b0a:: with SMTP id nu10mr3489792pjb.118.1618403687918;
        Wed, 14 Apr 2021 05:34:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618403687; cv=none;
        d=google.com; s=arc-20160816;
        b=Rhr5zvQG9d0SwzySep4jeKXTzT/dJbE1GSngb9kMhklE8gY7bIJUXsXDk4M2lbwRCO
         5q59QmvsAU99gtQrowKR0AuO6UxsP2dBcUHtYKKnmCv/4VGzBfOEYirDkr1F+9tTejZl
         LxiMTqVafSEWmCQ9Ab1VWiHguhYqcpWrP3x4RDM1l0E/pkFOm9MdA4s+IWOieFx6UpRk
         c4HYbWqynjNbnQuQ/Cp5KhaFLrO41U/VEzgQuGUo23zhW/yRzGArak1UtrMYG/Y/2CRv
         Huyvo1M0eS9v73qXNkZiJGJIBpJbu6TajP5WZqU4UoL2rnFgiQAQo1Nvn/6B2tmTBX+F
         AqPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=t08pgRARfONYID5oKmw0vTX25J07bAbAivjLULLeJlI=;
        b=M7gU8VWl1/rP1hawuyNXMP76mU4hHc4stpMQX83UwO4pr0/CRG5QP3VnkR/KTp2uLZ
         7Os1MDnGUt5XTletvxdwx09HwUwnpu7txXGNrTyChgRGJvw1EbMC0lIkhE9gMDL4HrZq
         +3zerzV1GhRiTaDEpHqLlVNR2qpLM0nXY/d7EtSZ5ddTx0J9zvaBsR3sABe0rC0Wo2+P
         lDEu1ObiihU3LYRuRjI0ZEnxK0NiFhzNtcst+3cYn2l/aZ2OpA5yyUnIGfLgMvaJ8LmU
         soO81V2VSD0KOvaEx2Na4y3rTotJjalRLbh+KNcRGng0jRVQqVKRfdUplCapsKYuAdjk
         jP5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=OBv9mqk8;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id u7si331672pji.1.2021.04.14.05.34.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 05:34:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13ECXLjs082105;
	Wed, 14 Apr 2021 08:34:42 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37vjtv8vx4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 14 Apr 2021 08:34:42 -0400
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13ECYJmi088812;
	Wed, 14 Apr 2021 08:34:41 -0400
Received: from ppma04fra.de.ibm.com (6a.4a.5195.ip4.static.sl-reverse.com [149.81.74.106])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37vjtv8vwj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 14 Apr 2021 08:34:41 -0400
Received: from pps.filterd (ppma04fra.de.ibm.com [127.0.0.1])
	by ppma04fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13ECRL8P008697;
	Wed, 14 Apr 2021 12:34:39 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma04fra.de.ibm.com with ESMTP id 37u3n89rcr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 14 Apr 2021 12:34:39 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com [9.149.105.59])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13ECYFmI13107558
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 14 Apr 2021 12:34:15 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4C380A4051;
	Wed, 14 Apr 2021 12:34:37 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BFFA6A4055;
	Wed, 14 Apr 2021 12:34:36 +0000 (GMT)
Received: from sig-9-145-163-27.de.ibm.com (unknown [9.145.163.27])
	by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Wed, 14 Apr 2021 12:34:36 +0000 (GMT)
Message-ID: <c6f3c9a70e054e9087f657bf4f142732fd43784c.camel@linux.ibm.com>
Subject: Re: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: David Laight <David.Laight@ACULAB.COM>, "'Arnd Bergmann'" <arnd@arndb.de>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers
 <ndesaulniers@google.com>,
        clang-built-linux
 <clang-built-linux@googlegroups.com>,
        linux-arch
 <linux-arch@vger.kernel.org>,
        Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>,
        linux-s390 <linux-s390@vger.kernel.org>, Guo Ren <guoren@kernel.org>
Date: Wed, 14 Apr 2021 14:34:36 +0200
In-Reply-To: <40d4114fa34043d0841b81d09457c415@AcuMS.aculab.com>
References: <20210413115439.1011560-1-schnelle@linux.ibm.com>
	 <CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w@mail.gmail.com>
	 <84ab737edbe13d390373850bf317920b3a486b87.camel@linux.ibm.com>
	 <CAK8P3a2NR2nhEffFQJdMq2Do_g2ji-7p3+iWyzw+aXD6gov05w@mail.gmail.com>
	 <11ead5c2c73c42cbbeef32966bc7e5c2@AcuMS.aculab.com>
	 <CAK8P3a3PK9zyeP4ymELtc2ZYnymECoACiigw9Za+pvSJpCk5=g@mail.gmail.com>
	 <40d4114fa34043d0841b81d09457c415@AcuMS.aculab.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-14.el8)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: cXeDngAzJk4G47j_fUM_9aNOG6XcQ9XV
X-Proofpoint-ORIG-GUID: XfhqNwJhoXUPrB125TwaEW8uHjp9E7Ad
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-14_06:2021-04-14,2021-04-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 spamscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 bulkscore=0 adultscore=0
 mlxscore=0 mlxlogscore=999 clxscore=1011 phishscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104140086
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=OBv9mqk8;       spf=pass (google.com:
 domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted
 sender) smtp.mailfrom=schnelle@linux.ibm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=ibm.com
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

On Tue, 2021-04-13 at 14:12 +0000, David Laight wrote:
> From: Arnd Bergmann
> > Sent: 13 April 2021 14:40
> >=20
> > On Tue, Apr 13, 2021 at 3:06 PM David Laight <David.Laight@aculab.com> =
wrote:
> > > From: Arnd Bergmann
> > > > Sent: 13 April 2021 13:58
> > > ...
> > > > The remaining ones (csky, m68k, sparc32) need to be inspected
> > > > manually to see if they currently support PCI I/O space but in
> > > > fact use address zero as the base (with large resources) or they
> > > > should also turn the operations into a NOP.
> > >=20
> > > I'd expect sparc32 to use an ASI to access PCI IO space.
> > > I can't quite remember whether IO space was supported at all.
> >=20
> > I see this bit in arch/sparc/kernel/leon_pci.c
> >=20
> >  * PCI Memory and Prefetchable Memory is direct-mapped. However I/O Spa=
ce is
> >  * accessed through a Window which is translated to low 64KB in PCI spa=
ce, the
> >  * first 4KB is not used so 60KB is available.
> > ...
> >         pci_add_resource_offset(&resources, &info->io_space,
> >                                 info->io_space.start - 0x1000);
> >=20
> > which means that there is I/O space, which gets accessed through whiche=
ver
> > method readb() uses. Having the offset equal to the resource means that
> > the '(void *)0' start is correct.
>=20
> It must have been the VMEbus (and maybe sBus) sparc that used an ASI.
>=20
> I do remember issues with Solaris of some PCI cards not liking
> being assigned a BAR address of zero.
> That may be why the low 4k IO space isn't assigned here.
> (I've never run Linux on sparc, just SVR4 and Solaris.)
>=20
> I guess setting PCI_IOBASE to zero is safer when you can't trust
> drivers not to use inb() instead of readb().
> Or whatever io_read() ends up being.
>=20
> 	David

So "I guess setting PCI_IOBASE to zero is safer when you can't trust
drivers not to use inb()=E2=80=A6" in principle is true on other architectu=
res
than sparc too, right? So do you think this means we shouldn't go with
Arnd's idea of making inb() just WARN_ONCE() if PCI_IOBASE is not
defined or just that for sparc defining it as 0 would be preferred?

As for s390 since we only support a limited number of drivers I think
for us such a WARN_ONCE() for inb() would be preferable.

I guess one option would be to let each architecture opt in to leaving
PCI_IOBASE undefined but in the first patch push PCI_IOBASE 0 into all
drivers that currently don't define it at all _and_ do not define their
own inb() etc.

>=20
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1=
 1PT, UK
> Registration No: 1397386 (Wales)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/c6f3c9a70e054e9087f657bf4f142732fd43784c.camel%40linux.ib=
m.com.
