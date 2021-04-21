Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBDNDQCCAMGQEAJP5AMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C141366A23
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 13:50:39 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id h8-20020a92c2680000b02901646ecac1e5sf15745058ild.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 04:50:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619005838; cv=pass;
        d=google.com; s=arc-20160816;
        b=adm2DCZ2utnK9JrmBpZpzoHUHdZKiGys0dfEarOiNz5+o44VPG6hM/hOLn71id1QuT
         Xlpjxd97ORMf06eSbiCn92RYMu0mmm50P3V3veqZ/o03eq+MffnP41nB8tCnftOijYv5
         KTIjWJe6rz/2YjhzHJ5IUybB58yRfcLw6Uh5kjFhh/jGM9HKOP61TRnzGrIAZx8lvMqZ
         rupBUlu4tZ88DHMvTUi+b3q8yCTOqbqckDVnUBSVNbNT0pWcyTsrGxdNYY+rm8kIbXLA
         fqRaXKAHbbsSrV7rMjMrBp9sznuWMDa6PhP0LEygGXdtN72JSL/8G/gByMhTMvon+QDB
         /ZIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=NHlznynNdj0gCCpF+13m5oUxGZgpkW2th46aFguny3s=;
        b=AdBRJzJGighazfN3gI5BMb6zHTFP1IVJeX6roPM52nxbldCB5fG51kQ4FYwyMYKs5v
         75b9YPk6wuh6LrcZY3oOR7FydKHcOhHgbLEal6Ufiim2hTsQGw6vwl6EQPtETqQvXHLF
         8gi0o2c/Ow4/cFxjEl90b3ZH27qAUqMbBP7L5lyie3fp+2S9rUkiW9HRoFastHRblbtM
         jjRoa+/Xzhio9qwXcgZCfLlXd87Tmok/fNaNDmHoIjbsTs6YX+l7VSXTKWWahcp0Y8H5
         Y96b26ZShbk8l+vA5AJjy1a/40BJ3ZQIpemcGGkSZQdGfbzMEI5jP/EasUi1N02Xy5DT
         2dyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Fg+gjzmI;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NHlznynNdj0gCCpF+13m5oUxGZgpkW2th46aFguny3s=;
        b=NX2Q5Wst/o1LJm1622scelOJVH/QwF3wOxNX6MIjroycUskhTnHZeFpT3pY3VblWTK
         ajw7ruIibkcnvO/FbvX/6xgxMQA5YASpMtXpo+Htv6Pm2vwyQd8jygz/IZIKZskWK7gq
         CYpuqF4oa+uBCWnreBVxgd4tT8LWGUJgQmElrlZWwxL7Z7yd6tiMzdYllb7BU1+x9x8v
         NU+tMdpyiEuuITTAEB8yOe3oOWlVLH05ob4w7pEO+AHmXDLrLJON1KPk+tRUOEdHUmUi
         c8wk8YWrNUg7pcem+G+jaX5UC0xnIIzptqWGb30bc+iqrFunoLVgFaTR2Kbm2iFIbfMP
         nsdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NHlznynNdj0gCCpF+13m5oUxGZgpkW2th46aFguny3s=;
        b=RAxItfGT9Gf0Dm4Vzoxs0xUIfMNhWhCBS24g0+1oxpgvwfBPGO80VGEeudY+3dyXRf
         t1TfW4EpyqpyWiiCvaZAGVjXcfHoDzrTYeVQSaDreUpumAMLzYBOWe2r3GmjIMcTHjow
         O7m38ksI8R2doNl/LxR0/sUEBEd89zA71C8TVzkOPzbtvOfZ6OvTxB/2GWzCRFhWfJUS
         VmRdp07DCn5M920XA46WX1E2n3FUOx+RsM+g+F3Lonk5WKM17uKHkdZ/4oKDOm1sykHZ
         x9ZYK6cfcBCpzIjzyMbVOZJUS/NBXsgRrqZoFuJW3Kfh8NSlljyuNkszg9vwAwWJq14c
         JQZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tkDgdBL3U8OAZJswdO9DidltCwsA5a966MJpVoC1WX3TBRGVH
	amty+c8rI+NDfEUjZqvUDQU=
X-Google-Smtp-Source: ABdhPJwGDU2uR5yelut2hGSMXpYz3LoC7dfTj++o0rxRZg9m6+qOunH9Jen2hfwWyIp3JUUy4McI0Q==
X-Received: by 2002:a05:6e02:20c2:: with SMTP id 2mr6064578ilq.120.1619005837979;
        Wed, 21 Apr 2021 04:50:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:328c:: with SMTP id f12ls222045jav.4.gmail; Wed, 21
 Apr 2021 04:50:37 -0700 (PDT)
X-Received: by 2002:a02:8806:: with SMTP id r6mr15787579jai.134.1619005837716;
        Wed, 21 Apr 2021 04:50:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619005837; cv=none;
        d=google.com; s=arc-20160816;
        b=Sbu0sce12Ss0wAdSHp/eP0xajtCjjvX1vNFjSTrst7Y7tsqtwmF5UujcYMrCJ6deLv
         79hAO7erEY/mo8vrjmpqxwviGG2AohmBqhtvHwP00OWGXhT2ZEpVYT1PyEKTvwula9Rf
         8bOKqajkoWpHcRgXuOfT1AxOteJOzdKFEogqL+Kex6IqVGtClF27yoMMRCWvV06WhBhg
         ki3jRj+ZJJZBObLWQhlGrfRMIvJPHX0tpjKgpyEOT+DoRIhF2DPK1LRHubLoaDbc1jHm
         etGPv0nf4QDmC8rHOZIKCxzTX5BRddIHcIunHfgQSa5t6YCaGPg7D9AZhy1s+wvF+MJ4
         HBDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=umFa+41AGn1p0ze7VTHK1gWh/RUXya1ijTfV9QCSiUU=;
        b=weJrv1rg6ZMNHTZwymPPuWCooRx7fsuQMooVy5GO4YkER2knrVBQe0GWqgpmkPAW6Z
         KJ5fxqP0BxcivPgTfSw5IrRfbtJJ4IpgqJaYCJMWl0IDuqf7I4dLNFqCs9ztXYuWAf6l
         o395lmmUBx5sbT7HY6NsxomPuH/3ZCO3cCmD5ArIxmWfUznbQCXZB/nQrbPTc41vv+UI
         2pDCzz9tBds1n6nFh3rQYSFV92K6YY91KNsInO58BxjRhzyQpNGeNF4zUMaYgYA4z4th
         46vV7LJXicBlKtu2qNoVm5Iq23JL00dIyl6otPh8sw7g63PvWwTaewd+vxZWjQOmrSP3
         wszQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Fg+gjzmI;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id r15si96481ill.3.2021.04.21.04.50.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Apr 2021 04:50:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13LBiPCm166756;
	Wed, 21 Apr 2021 07:50:31 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 382keg84vr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 07:50:31 -0400
Received: from m0098421.ppops.net (m0098421.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13LBjTo5173888;
	Wed, 21 Apr 2021 07:50:31 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 382keg84v4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 07:50:30 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13LBmOZW023128;
	Wed, 21 Apr 2021 11:50:29 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
	by ppma03ams.nl.ibm.com with ESMTP id 37yqa8j915-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 21 Apr 2021 11:50:28 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com [9.149.105.58])
	by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13LBo3t334406874
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 21 Apr 2021 11:50:03 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 6D0CC4C044;
	Wed, 21 Apr 2021 11:50:26 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D968D4C04A;
	Wed, 21 Apr 2021 11:50:25 +0000 (GMT)
Received: from sig-9-145-20-41.uk.ibm.com (unknown [9.145.20.41])
	by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Wed, 21 Apr 2021 11:50:25 +0000 (GMT)
Message-ID: <aac9ac52de09ff7162fc7caa6e817258d9dd313d.camel@linux.ibm.com>
Subject: Re: [PATCH v3 3/3] asm-generic/io.h: Silence
 -Wnull-pointer-arithmetic warning on PCI_IOBASE
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: David Laight <David.Laight@ACULAB.COM>, Arnd Bergmann <arnd@arndb.de>,
        Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller" <davem@davemloft.net>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers
	 <ndesaulniers@google.com>,
        "clang-built-linux@googlegroups.com"
	 <clang-built-linux@googlegroups.com>,
        "linux-arch@vger.kernel.org"
	 <linux-arch@vger.kernel.org>,
        "linux-kernel@vger.kernel.org"
	 <linux-kernel@vger.kernel.org>,
        "linux-s390@vger.kernel.org"
	 <linux-s390@vger.kernel.org>,
        "linux-snps-arc@lists.infradead.org"
	 <linux-snps-arc@lists.infradead.org>,
        "sparclinux@vger.kernel.org"
	 <sparclinux@vger.kernel.org>
Date: Wed, 21 Apr 2021 13:50:25 +0200
In-Reply-To: <bb21141706d7477794453f7f52f6bc98@AcuMS.aculab.com>
References: <20210421111759.2059976-1-schnelle@linux.ibm.com>
	 <20210421111759.2059976-4-schnelle@linux.ibm.com>
	 <bb21141706d7477794453f7f52f6bc98@AcuMS.aculab.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-14.el8)
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: GljSLrlc0NXVaepFAyeRF6XnrO1FeM8W
X-Proofpoint-ORIG-GUID: 50MlIDyyzltO3bQ54AWDJNeVxVPQ8cF6
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-21_04:2021-04-21,2021-04-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 suspectscore=0 mlxscore=0 bulkscore=0
 mlxlogscore=999 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2104060000 definitions=main-2104210090
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=Fg+gjzmI;       spf=pass (google.com:
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

On Wed, 2021-04-21 at 11:24 +0000, David Laight wrote:
> From: Niklas Schnelle
> > Sent: 21 April 2021 12:18
> > 
> > When PCI_IOBASE is not defined, it is set to 0 such that it is ignored
> > in calls to the readX/writeX primitives. This triggers clang's
> > -Wnull-pointer-arithmetic warning and will result in illegal accesses on
> > platforms that do not support I/O ports if drivers do still attempt to
> > access them.
> > 
> > Make things explicit and silence the warning by letting inb() and
> > friends fail with WARN_ONCE() and a 0xff... return in case PCI_IOBASE is
> > not defined.
> ...
> > diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
> > index c6af40ce03be..aabb0a8186ee 100644
> > --- a/include/asm-generic/io.h
> > +++ b/include/asm-generic/io.h
> ...
> > @@ -458,12 +454,17 @@ static inline void writesq(volatile void __iomem *addr, const void *buffer,
> >  #define _inb _inb
> >  static inline u8 _inb(unsigned long addr)
> >  {
> > +#ifdef PCI_IOBASE
> >  	u8 val;
> > 
> >  	__io_pbr();
> >  	val = __raw_readb(PCI_IOBASE + addr);
> >  	__io_par(val);
> >  	return val;
> > +#else
> > +	WARN_ONCE(1, "No I/O port support\n");
> > +	return ~0;
> > +#endif
> >  }
> >  #endif
> 
> I suspect that this might be better not inlined
> when PCI_IOBASE is undefined.
> 
> Otherwise you get quite a lot of bloat from all the
> WARN_ONCE() calls.
> 
> 	David

Hmm, I was wondering if we should rather have a large ifdef block of
all these functions stubbed to WARN_ONCE rather than in each function.
As I understand it this would be necessary if we want the inline gone.
They would still be static though so we still get a copy per
compilation unit that uses it or am I misunderstanding?

> 
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/aac9ac52de09ff7162fc7caa6e817258d9dd313d.camel%40linux.ibm.com.
