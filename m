Return-Path: <clang-built-linux+bncBCV4DH5YZYMBB3HUYOCAMGQEQSBLIWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A903726A6
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 09:40:29 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id s143-20020a3745950000b029028274263008sf6948131qka.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 00:40:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620114028; cv=pass;
        d=google.com; s=arc-20160816;
        b=yABpfJUyAsdbedmtCvCCoQfhVKPdcePbfcMtAycMI9YjPhdBNOfHWj5VFRly9XF9DE
         RYHvrI/v+8506c6YgmspF6ff6udq7u+5hDCq3RbiRSEy2vx4U9U2F0C9GeWvx5avCUI2
         FwfLxP3VzE+9URnWpfry5a7x9lcBUfeHFM/NBel/v3Bl4POZhN95/eTJPm35xtHWN0I1
         R3Y2TWzyWyqP6D2zeDDXuLNz5AGBipTmekCqBXlmaVc5jrEwGFMExUwT3dhq3CpQRgEt
         GUErnPnTiLwR37tB9FsEMBg5Wl70f02smNFnjwyV9l9yMHTMI0LfMnML3dtroESrUMy+
         /xrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=BesFR4xrtPXifz1xGLwgVazYISePI3hwoSF9UTWUy9g=;
        b=m33sj1EPgdsUgisAqXimCSznzyMwZVMMRrfcTF3BYyQXWGqZUVXr2K/PHNv75ZqIHr
         E5brG5PzvsQ2JrJzI0v5uzM/IOlSyJy5o7NOCxb4QB7zbzPc32DjqSCwM6EdbSUteWgr
         s/Zkd8dy5AKBRtksnG5JmkhMeYOpMFTOY/C3kKm0iAtkf9zGoNSgziiUc9LCKHZBDo99
         RYRnHKTNdbRgmMLDQGPItYTk8yUQ0VEQ3O2iQ7ZreFoYqJ8jHoHCR6Y9LL1AOD455ZcM
         2bzPQaXijRCGU7B5cKRdNWh2PLkiMHOrJcnVXKY0CD6t8JxUQG8KRdLyh0bJCH6YQ9qk
         urZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=VrfZxHOx;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BesFR4xrtPXifz1xGLwgVazYISePI3hwoSF9UTWUy9g=;
        b=QaYe3LRA9Ev00Z7fzCcyFkzrfTX/HESjfxk+eYAnGMhVySya4N/ZIkTHkQqiirA9gr
         nZva5ygoMhPOlMThmQy7CSB+WseggR7VicrdlfZEQM+Vsgef6nsSmo2H6XzCjLtt4xKv
         HR+A69KN7V5ctsrtWr/kAdfhfgIcEFXtaDepQ62mQe1E8NvvPPO1ke+Fadxz5QT5BzKV
         X5Fbez9pv8CJ5ZCn9uCHR2j4P3cMaJW/mAE0YshBRsEwgPtRh+xqB6tJBLFQfJgM2Mw6
         ZyuHTZNdc0FqF6mrB4vSNZVVVxFSKhdxX/wLlHDD5IUegT6a1c4XrOHZjuZQVVunGo1m
         Nk3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BesFR4xrtPXifz1xGLwgVazYISePI3hwoSF9UTWUy9g=;
        b=fBYWw+VsbpEgWqO+oQetqIjT2MxNfnrqCfdsv6Z1agq9lID7OWFQTva2yTuDm8BZvh
         ftwcvjlYCuXES59MPYUlOIt9QfZ7F5hrMmY2CRzRgKLRdXvj1IdpuzOcbMz9Ul4k4Ilx
         VmPPu2uYhxR/7OVMR6QYiPNqGDuIb9C7QC2i1Qa2bMe/49As7Zq6y3h/Xh8tB6SG9V6G
         sQ2LN0Nc7sd6ip//yPdxWD8eU/Ks4UYHrqDKwKrMIWDTyglqbqfFclyH1a6H9HTRV0Do
         9jci7nHQaWEiRCF1l4OP6WDYLUH+HX/lBFhnPNuSyYniFHWmXTF51Hc2u0PEYgTlUG8b
         EoFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531l7PaNBJ2ec9xCfMDht/ic++Xh3CsWDqSM3Wjsmelnz31tAJMK
	kREmDNg9r7hK+b4ZNMQWUJY=
X-Google-Smtp-Source: ABdhPJzSL8zWKxmKbcCkjebXLVUbYKEGl3ptd0oDxKlEOrVRa4xvIophYJR5wcaVAn7uGfZRwX3iQA==
X-Received: by 2002:a05:620a:1036:: with SMTP id a22mr11415575qkk.186.1620114028246;
        Tue, 04 May 2021 00:40:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1d0d:: with SMTP id e13ls1688719qvd.5.gmail; Tue,
 04 May 2021 00:40:27 -0700 (PDT)
X-Received: by 2002:ad4:58c9:: with SMTP id dh9mr24388244qvb.52.1620114027879;
        Tue, 04 May 2021 00:40:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620114027; cv=none;
        d=google.com; s=arc-20160816;
        b=J1SUeR6S6uBdppAxhySe56W+M2HoES8NFQhlDaEusiLmu2Bq01DudtFDBmFOUTUGUk
         zeH8ur3bm1O500NGTtu7eSD3riPlCpvSIZvsmordvMg8HXILr+sP3gTZXK5KZ/KFXmFU
         tnX19t5qGfTDGm4+ZQ0VcsB01j4tbgOVRIZ5cW1jljRs6Cv+ftsZIWcuiuS31s1ZIlQu
         ykvc2898HuBpuydAEubFnhqmj7Wzp1ypZsP2LWW+g4roiDkFCEAGXoTPGVSDrS4P1Nik
         7soaAAa0TZRiG98JImPjJlQymr/J5ltcP0naBb+M9UG34eCRIzXE5Or/b+wyqEVwCMfX
         CVnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=SNzRA80G7BEoftP4TQQcROGHJxxlHWljovtZ2dqle6M=;
        b=Emz8b5MYBY4NBeXxKVNrPEm1FXc+E16pKKJxPuVzaVBIB6E9t23vjvBcd4shkSOaC0
         2cdwdL6/TC/cTQ/cpFhMOtD8k0V1ZSdUFwcaVcf1dop1/mHxmWAKTdOWRKx9/c71on9K
         207zUjs2JmMgb+S8dm+EMKQcuDlnr+JXYw6FYupLUHoodBfZM1FCMwD6nNOcJM0/b17x
         k+C6pkIHJ6amYEEE2IgiIvaJ884FAW8zxvAduvrfItRzr17lNyGLxnBlWkIwKJm2DdO+
         ZpCUeMrQVCLZXW7jCR54txGL1LCgqpvyosFyaAZzSVc+mCcrXdwkDh5QzhW/xMgNBSgf
         z1bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=VrfZxHOx;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id q12si281584qtl.3.2021.05.04.00.40.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 May 2021 00:40:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 1447Y8TK073727;
	Tue, 4 May 2021 03:39:46 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38b1wb09kp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 May 2021 03:39:46 -0400
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 1447Yca9075458;
	Tue, 4 May 2021 03:39:46 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38b1wb09k2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 May 2021 03:39:46 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 1447WEC0016838;
	Tue, 4 May 2021 07:39:44 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
	by ppma03ams.nl.ibm.com with ESMTP id 388xm8h27c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 04 May 2021 07:39:44 +0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com [9.149.105.62])
	by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 1447dGux30474742
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 4 May 2021 07:39:16 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A213FAE055;
	Tue,  4 May 2021 07:39:41 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 19DA5AE045;
	Tue,  4 May 2021 07:39:41 +0000 (GMT)
Received: from sig-9-145-90-245.uk.ibm.com (unknown [9.145.90.245])
	by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Tue,  4 May 2021 07:39:41 +0000 (GMT)
Message-ID: <9e52895227515143bf3cd9197876ff1ed596682b.camel@linux.ibm.com>
Subject: Re: [PATCH v4 0/3] asm-generic/io.h: Silence
 -Wnull-pointer-arithmetic warning on PCI_IOBASE
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller"
 <davem@davemloft.net>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick
 Desaulniers <ndesaulniers@google.com>,
        clang-built-linux
 <clang-built-linux@googlegroups.com>,
        linux-arch
 <linux-arch@vger.kernel.org>,
        Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>,
        linux-s390 <linux-s390@vger.kernel.org>,
        "open list:SYNOPSYS ARC ARCHITECTURE" <linux-snps-arc@lists.infradead.org>,
        sparclinux <sparclinux@vger.kernel.org>
Date: Tue, 04 May 2021 09:39:40 +0200
In-Reply-To: <CAK8P3a3mCujxC0=_cL6Z88Xh2cb=OY_Ct7DVpJNvRn1v9=FhkQ@mail.gmail.com>
References: <20210430111641.1911207-1-schnelle@linux.ibm.com>
	 <CAK8P3a3mCujxC0=_cL6Z88Xh2cb=OY_Ct7DVpJNvRn1v9=FhkQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-14.el8)
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: 1Pftu_AEJr1ccZfm4uSBQRSXbzHt5fUN
X-Proofpoint-GUID: NnNsF52RJSWhrfL8DmTT5s-OsatqEN8Z
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-04_02:2021-05-04,2021-05-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1015 malwarescore=0 mlxscore=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 mlxlogscore=880 bulkscore=0 phishscore=0
 impostorscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2104060000 definitions=main-2105040057
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=VrfZxHOx;       spf=pass (google.com:
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

On Mon, 2021-05-03 at 18:07 +0200, Arnd Bergmann wrote:
> On Fri, Apr 30, 2021 at 1:16 PM Niklas Schnelle <schnelle@linux.ibm.com> wrote:
> > From: Niklas Schnelle <niklas@komani.de>
> > 
> > This is version 4 of my attempt to get rid of a clang
> > -Wnull-pointer-arithmetic warning for the use of PCI_IOBASE in
> > asm-generic/io.h. This was originally found on s390 but should apply to
> > all platforms leaving PCI_IOBASE undefined while making use of the inb()
> > and friends helpers from asm-generic/io.h.
> > 
> > This applies cleanly and was compile tested on top of v5.12 for the
> > previously broken ARC, nds32, h8300 and risc-v architecture
> > 
> > I did boot test this only on x86_64 and s390x the former implements
> > inb() itself while the latter would emit a WARN_ONCE() but no drivers
> > use inb().
> 
> This looks all fine to me, but with the merge window open right now, I
> can't add it into linux-next yet, and it wouldn't qualify as a bugfix for 5.13.
> 
> Please resend them to me after -rc1 is out so I can merge it for
> 5.14 through the asm-generic tree.

Thanks for the great feedback I appreciate it. Will do the resend of
course.

> 
> Please add two small changes to the changelog texts:
> 
> - for patch 3, please include a 'Link: tag' to the lore archive of the
>   previous discussion, that should cover any questions that people
>   may have

Done

> 
> - for the risc-v patch, I would suggest explaining that this fixes
>   an existing runtime bug, not just a compiler error:
>   | This is already broken, as accessing a fixed I/O port number of
>   | an ISA device on NOMMU RISC-V would turn into a NULL pointer
>   | dereference.
>   Feel free to either copy this, or use your own explanation.

I mixed the above in with the current commit message:

    Without MMU support PCI_IOBASE is left undefined because PCI_IO_END is
    VMEMMAP_START. Nevertheless the in*()/out*() helper macros are left
    defined with uses of PCI_IOBASE. At the moment this only compiles
    because asm-generic/io.h defines PCI_IOBASE as 0 if it is undefined and
    so at macro expansion PCI_IOBASE is defined. This leads to compilation
    errors when asm-generic/io.h is changed to leave PCI_IOBASE undefined.
    More importantly it is currently broken at runtime, as accessing a fixed
    I/O port number of an ISA device on NOMMU RISC-V would turn into a NULL
    pointer dereference. Instead only define the in*()/out*() helper macros
    with MMU support and fall back to the asm-generic/io.h helper stubs
    otherwise.



> 
>        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9e52895227515143bf3cd9197876ff1ed596682b.camel%40linux.ibm.com.
