Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBKHM3OBQMGQE2Q4AN7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id B97B535F584
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 16:03:21 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id u7sf1133287qvf.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 07:03:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618409000; cv=pass;
        d=google.com; s=arc-20160816;
        b=t2COBKf0PuJuD9oecLK9P/honzB1onfk36sWRSIZRPGJzJRUKh6oX2/2DQsMcj9lFg
         V8FvO2wd7maXhF5jE6Ky6/2lsW4v8wzR3497FirAAxVNUen2GkYV+5seyHuQ1W5CP4vf
         9Hut/ughfPkNlyFH6MovV9Io8GJ1RxWpfpz9bseN23Ag3T0xONnG10qNHCljSbnVLd2g
         IiU8wz39elsm6Daj4gT/M2hymgidqhPf+YQBXpCKzeNgiLj+WY+gSNCIynMsAQSh9aUO
         rG0bCcaX8l85sUJmj0BMwOfLqVlE7ZYHwEXdGkI6grDF1czOm2jvplayqKomdSb6YWWw
         UoPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:date:cc:to:from:subject
         :message-id:sender:dkim-signature;
        bh=kJHVBMmKc+XTbWdEgRpX1TnmEBGvb4+p8BT5AI4PCdY=;
        b=ta7/ESFV4HqycBgHn2sHALhTVjv0rwdDfxocLdRLJvp6tMVjiTPu55rxmyRRyVhNks
         NSNskVtAftOp7WViEJcJg1N/f8O2WAzpraHMR7cShtRejnatSZ/N2oEQdZe2dXgLdf5c
         W+H2rRSyeU4V87vMMj2M21BevrAAq9n5COL2oQ0sUjla6HaNZKFTyNIWVGxWfTVF1SgF
         IQfWGi1+cFTFcn68xAjn4LrCPGVDP34W/de3JB3IG/nqaaIhF+M4yLwB6Ukk+hEN4RpL
         /40qkdPHoai20CfXZLN/9r85JH30P81OnK3VkkBqyweejgDas6n8aNdSKZyDZh4irhk1
         Oq3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=krausk2m;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kJHVBMmKc+XTbWdEgRpX1TnmEBGvb4+p8BT5AI4PCdY=;
        b=oCky+mEcddC8O/vVmZ643sBobV/E9GfzhUessZec6F5Z+Bd1lynpXV1WQb0NZJSbGn
         OF7GNxO0oc/OgFJk6Z0Eya2a/Q4VBPUQw6kEMILLlC/T/LysErqKu2+E1ZeHmM8MogE5
         81k9D4ECQaZeIgHAAK7gEg/LAjIXUDiX5ycHHUZi2Ob7BkyjA8r11p+cRJ0fhLXALIkq
         xyLdCL7ltekf8iZTZJJ0Zu1CvkoOmJUrfaqdSzW3uwb3YxqRijhLFIRgs90k6AQobXc0
         UhLtyhgdApW2vfaKDjU0LPEgpiBckFeUVes5frm8bIsJ96tm4ciXCoMtd3sYmQs11w4j
         5GQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kJHVBMmKc+XTbWdEgRpX1TnmEBGvb4+p8BT5AI4PCdY=;
        b=jrm4YU+LK8J7QGTgUqB0sjTAoPGqBPsx4IKu+dkUjjCqIa+V+nCx+zCWS7M6PymJKY
         2zMwKtUcQam8/l/3Mqf80JxXnadvYK/GrelDA2Eyh8W1RjJ/HeC5Ji1ndnlRioDDoKND
         sSLGL2f/VGwugtXF41BINPJ9VH3/kJkHf6Xi8SoPe7CH55+6imn3VFMvrXNhdlTfCFXH
         K/36OlQWM/+MQA3JgIf4H1RrjvU/YYiEJ2l/YBU/2a3pgdJBOhVMJd9npcu9MuFcIple
         DihUYqNJZ6V0hdvmBObqulGNLAD5SkuO4GM84lgCiz7Cs3ekqWRu7r4VAHKONR/YgziS
         Z0+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530iBL5yL4dUEFyxtFv2m6/XwuztOnmkcxSbIYCRJ5qQ4QzcVsrm
	jVCydpg1joLkER2BXHRRGkU=
X-Google-Smtp-Source: ABdhPJyLWDVXK0+oF01yr3IVjg7o2orucTRlRAkbWlDRP3NXS8bFypMtC8YbAYqKH1GZ0BHkgaSdcQ==
X-Received: by 2002:ac8:c46:: with SMTP id l6mr36043396qti.370.1618409000783;
        Wed, 14 Apr 2021 07:03:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5a88:: with SMTP id c8ls922982qtc.1.gmail; Wed, 14 Apr
 2021 07:03:20 -0700 (PDT)
X-Received: by 2002:a05:622a:454:: with SMTP id o20mr34938901qtx.292.1618409000290;
        Wed, 14 Apr 2021 07:03:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618409000; cv=none;
        d=google.com; s=arc-20160816;
        b=mt3QrjaY9YVHL2gfOIcvT6gmCyW4+6O+JN/wFafJERd5rIkGUlwtLxfm9unAwWxwvX
         zwuWepZ1IarqNmto8KUBJ48sS5b/v5dZ5+jFdSgavy3/ysK0EERgOlSLEeGO7YV6pqoL
         dDUbEy5TsSBVe9TZpnQYeEmwAXLI9FirM+Rqr2Sv0j+aL1Oi0yLJq8bhdH4+VrZMqmob
         WkoBFrlc0C1YfP5l4KKA9etX0LLuEgWmMlvNiah62Ko4TgzZthwnZeueKVYudD9qgqyD
         6/BvlQos9T1H/4427ptIKZ33OnyfPd7oncw/zElnwhTEPqYcc3IG6x28l8ZTL7zjmlWk
         KVAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=UuYTtjiOghyjalpQ0VaVzpDijY3LboOM0WowrtBxbRU=;
        b=jFs/T7DlsHF4cmc7c3svYq/vuGYLVRtY5nwMpwPx0LbFfmC9Gg6TOujRmOLPXt7jiM
         IW+PFsP3D3oB52WIPwjGIhkNOhmcNPxpnKJRr7vDleSZ3gZDwRwx4MHH7tIN9KGTfV5X
         zZi8r0l6LP7ucsajRFOSFARKepK0I5VmSHeQBwG5TNctCfExux6ZijSTfP7ETNvUuKuK
         MmxWVfdDGUJ6HbHIzVSMXfdT23zooNzSl0V2cDTgmMlC5mo9Ua5AQeTnZVzVeC8aATID
         C1NQ/hip5kpX3tDH98oEPmPs1r5FbOXcygAvwVJfhA0PaZF1wcr6lrJpn+oPdD9YenbC
         RxGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=krausk2m;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id t7si906093qkp.7.2021.04.14.07.03.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 07:03:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098416.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13EE2rvZ172241;
	Wed, 14 Apr 2021 10:03:15 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 37x093k4gu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 14 Apr 2021 10:03:14 -0400
Received: from m0098416.ppops.net (m0098416.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13EE39Y5174425;
	Wed, 14 Apr 2021 10:03:12 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0b-001b2d01.pphosted.com with ESMTP id 37x093k4cy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 14 Apr 2021 10:03:11 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13EDvTiI011743;
	Wed, 14 Apr 2021 14:03:02 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma03ams.nl.ibm.com with ESMTP id 37u3n8bbbf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 14 Apr 2021 14:03:01 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13EE2bnu32506180
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 14 Apr 2021 14:02:37 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A47EB52054;
	Wed, 14 Apr 2021 14:02:59 +0000 (GMT)
Received: from sig-9-145-163-27.de.ibm.com (unknown [9.145.163.27])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id 2318B52051;
	Wed, 14 Apr 2021 14:02:59 +0000 (GMT)
Message-ID: <3ed30ec5a241c50689fc954103214ce5ed36c463.camel@linux.ibm.com>
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
Date: Wed, 14 Apr 2021 16:02:58 +0200
In-Reply-To: <ac3447d8db2146798b86135e9f49891d@AcuMS.aculab.com>
References: <20210413115439.1011560-1-schnelle@linux.ibm.com>
	 <CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w@mail.gmail.com>
	 <84ab737edbe13d390373850bf317920b3a486b87.camel@linux.ibm.com>
	 <CAK8P3a2NR2nhEffFQJdMq2Do_g2ji-7p3+iWyzw+aXD6gov05w@mail.gmail.com>
	 <11ead5c2c73c42cbbeef32966bc7e5c2@AcuMS.aculab.com>
	 <CAK8P3a3PK9zyeP4ymELtc2ZYnymECoACiigw9Za+pvSJpCk5=g@mail.gmail.com>
	 <40d4114fa34043d0841b81d09457c415@AcuMS.aculab.com>
	 <c6f3c9a70e054e9087f657bf4f142732fd43784c.camel@linux.ibm.com>
	 <ac3447d8db2146798b86135e9f49891d@AcuMS.aculab.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-14.el8)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: 9yPIgPn0VkFBidXyLmxozlYX3xZAJTVD
X-Proofpoint-GUID: 6N4qSzjHCicifyAYz62M8ZbSLz8WIomL
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-14_07:2021-04-14,2021-04-14 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 adultscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0 phishscore=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 impostorscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104140098
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=krausk2m;       spf=pass (google.com:
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

On Wed, 2021-04-14 at 13:50 +0000, David Laight wrote:
> From: Niklas Schnelle
> > Sent: 14 April 2021 13:35
> >=20
> > On Tue, 2021-04-13 at 14:12 +0000, David Laight wrote:
> > > From: Arnd Bergmann
> > > > Sent: 13 April 2021 14:40
> > > >=20
> > > > On Tue, Apr 13, 2021 at 3:06 PM David Laight <David.Laight@aculab.c=
om> wrote:
> > > > > From: Arnd Bergmann
> > > > > > Sent: 13 April 2021 13:58
> > > > > ...
> > > > > > The remaining ones (csky, m68k, sparc32) need to be inspected
> > > > > > manually to see if they currently support PCI I/O space but in
> > > > > > fact use address zero as the base (with large resources) or the=
y
> > > > > > should also turn the operations into a NOP.
> > > > >=20
> > > > > I'd expect sparc32 to use an ASI to access PCI IO space.
> > > > > I can't quite remember whether IO space was supported at all.
> > > >=20
> > > > I see this bit in arch/sparc/kernel/leon_pci.c
> > > >=20
> > > >  * PCI Memory and Prefetchable Memory is direct-mapped. However I/O=
 Space is
> > > >  * accessed through a Window which is translated to low 64KB in PCI=
 space, the
> > > >  * first 4KB is not used so 60KB is available.
> > > > ...
> > > >         pci_add_resource_offset(&resources, &info->io_space,
> > > >                                 info->io_space.start - 0x1000);
> > > >=20
> > > > which means that there is I/O space, which gets accessed through wh=
ichever
> > > > method readb() uses. Having the offset equal to the resource means =
that
> > > > the '(void *)0' start is correct.
> > >=20
> > > It must have been the VMEbus (and maybe sBus) sparc that used an ASI.
> > >=20
> > > I do remember issues with Solaris of some PCI cards not liking
> > > being assigned a BAR address of zero.
> > > That may be why the low 4k IO space isn't assigned here.
> > > (I've never run Linux on sparc, just SVR4 and Solaris.)
> > >=20
> > > I guess setting PCI_IOBASE to zero is safer when you can't trust
> > > drivers not to use inb() instead of readb().
> > > Or whatever io_read() ends up being.
> > >=20
> > > 	David
> >=20
> > So "I guess setting PCI_IOBASE to zero is safer when you can't trust
> > drivers not to use inb()=E2=80=A6" in principle is true on other archit=
ectures
> > than sparc too, right? So do you think this means we shouldn't go with
> > Arnd's idea of making inb() just WARN_ONCE() if PCI_IOBASE is not
> > defined or just that for sparc defining it as 0 would be preferred?
> >=20
> > As for s390 since we only support a limited number of drivers I think
> > for us such a WARN_ONCE() for inb() would be preferable.
> >=20
> > I guess one option would be to let each architecture opt in to leaving
> > PCI_IOBASE undefined but in the first patch push PCI_IOBASE 0 into all
> > drivers that currently don't define it at all _and_ do not define their
> > own inb() etc.
>=20
> How much code outside of legacy x86 drivers should be using inb() etc?
> I'm not sure any other (modern) cpu have separate IO instructions.
>=20
> Because some PCI(e) resources might be available on memory or IO BARs
> (possible duplicate BAR on some cards) aren't there also ioreadb()
> functions (with addresses as parameters)?
> IIRC on x86 they treat small values as IO ports and large ones
> as memory mapped addresses.
> If PCI IO space is memory mapped then these would be directly equivalent
> to readb() (etc).
>=20
> So perhaps inb() should just not be defined at all except on x86?
> (Perhaps except for COMPILE_TEST).
> If it is defined, then maybe it should never be called?
> So a WARN_ONCE() returning ~0 for reads might even be best.

Ok yeah I think that's also what I'd like best.

>=20
> Of course, there will be some obscure fallout - there always is.

Let me come up with a patch, then if this decision is wrong it's at
least one of us s390 people breaking someone else's architecture
instead of the usual other way around ;-D

>=20
> 	David
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
clang-built-linux/3ed30ec5a241c50689fc954103214ce5ed36c463.camel%40linux.ib=
m.com.
