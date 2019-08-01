Return-Path: <clang-built-linux+bncBDCNZ5MYWINBB5ERRXVAKGQECTHKRSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id BABEB7E3D4
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 22:17:58 +0200 (CEST)
Received: by mail-pl1-x63a.google.com with SMTP id q11sf40204601pll.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Aug 2019 13:17:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564690677; cv=pass;
        d=google.com; s=arc-20160816;
        b=kBujX0zGL4Ajy4moPQMsg/OzxXo+hCg4RIZV3//tXaO3PnQfmRr4xeEPXmYzxRMKMY
         B2uEWTxficYQFKWpeq8ry9d9AAPHIgYaMei9WsXp8whfmHJSGHpyW3y6hrjyVGLBpDEF
         8Wun0i6CweD9DiF1yFp2WHx+j7UT2FrMHiABmNfNYE8xJHQZhkafzfy2Mv3z6/CmvOr5
         0bGto/B9hTXdfTb3Z2PuOR+QGVupkBLFJamOQ6EPyrk/wwZA9/lpJu2+RqvltTLPDkA6
         87bAIYxOVdaWSlQtcXGtlpL/0WXrKNrFMqoBZNERnoNC35dP9kZ/zLpIohPTINzRCCXB
         oiwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-version:dlp-product
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=cLOlZmKRVn7M/XG5TvyM2pPtoJbaqZMdNDZnzW8EI0E=;
        b=vifoNLmYwE4SOH1jx42iSMomO1VGGUD9tvTmctyKaXTIRUSUhL8biYyrSbjxF0gNpe
         O1+y8aXmGIF4PCm6S1HnX/BUfsrnmmBeGvsZGteHZ81+Gj/nienE3K/hR/R4Rwh8ZHhh
         C5D0wpweLlYXR3fhzj6r9jXh0HBhOtmVzegyLn9V8r0ypu75+rHJpXgTyGcdOWDsb3Z+
         BpV45b7Ibl2lW7Zx+LClXMNBfqWwX1y1ztItzFIwi3Lmu/gABPEyPwPtbjFyejYPkN7S
         lAffiqLjT5+HN44OL9WeREOk48Hs+R4dnhetVQwtZbH8NYTnofC/aBggz8Lp5N3ZUUYn
         P/VQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of erik.schmauss@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=erik.schmauss@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:dlp-product
         :dlp-version:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cLOlZmKRVn7M/XG5TvyM2pPtoJbaqZMdNDZnzW8EI0E=;
        b=FF4F3hw8vrlcbPQlebKap+7j32p8NwcrBWK0i/0vABIaUVHRK8JhydNht0VNCfcjyV
         Ue9L1efJuSqYG7L8lxwBkySKxq+t9IXtP0b+0y2OfCprwtfpvTMKUeoNF5izqEP+LWEp
         VMM81q8HyWmu9IT3ySb0BLK8Cn7UjTNU8rxwaOyserv1usYUBa/Cow1/N63rAoVWaqZg
         kQGYRcJuDUF1eYpep5AZxKNA9SEDK3Ocnm/SvBRN0PbAgrrAWmAy8VEOkDhIgyk0a6Sk
         IJgoS1pEXVJoUgy8cXhXHMDqXF2LabY/nOzWx0NxzUWtdwVC/2PB7bAvCb4u17k+3y0v
         T2bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-version:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cLOlZmKRVn7M/XG5TvyM2pPtoJbaqZMdNDZnzW8EI0E=;
        b=jpNmiAkrM3gKLnZ2ebXVmvKSh/X58mgxrLOqRjWhtn+t02phDhv+1AfboP9HejPIk6
         bKluEIQChOGktVOH0kwfJP9A93jA2OHvKEWckPI87vbk2UQzQ4pptx5dWxqbwfvF+gO3
         /vsDJOc6vhzIZVeHucFUvjk7d0SCc/3mEsr2VgRk9cTSUXLM3wLuje/TfDhOKCfFlao0
         uYIj/efjV8ttWBAgcU+layusSlJ3WhxB+OlwLgkdhrtgoskWl+Do13v1qpBUkQ566i4+
         BKEPUAY0jjfqvrw/ar8S/8sAghYgjEdk23A3ljir0q50Ys/5hVM2OTR2MqO1RkvhNTBR
         Dz/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXsW+g03HOcRoqMhWfVb1gRlfe3kRtw7y5dcsn2Lf5VLOko5DJD
	CQ2H3vd/wbUmrOz3pc3bDi8=
X-Google-Smtp-Source: APXvYqzdWQFK44jTc7fRcEoUrkA88SKL5mJCXS/TCz9DWHF+oX4ArglFHJxglS6vT3CBMSZTBfvjVg==
X-Received: by 2002:a63:31c1:: with SMTP id x184mr117857458pgx.128.1564690676838;
        Thu, 01 Aug 2019 13:17:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3aa7:: with SMTP id b36ls2293076pjc.5.gmail; Thu, 01
 Aug 2019 13:17:56 -0700 (PDT)
X-Received: by 2002:a17:902:be0a:: with SMTP id r10mr120504634pls.51.1564690676526;
        Thu, 01 Aug 2019 13:17:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564690676; cv=none;
        d=google.com; s=arc-20160816;
        b=X4ytAJq5zYDRuUrSthnmeQ6pvoIFqOEauoSR9hppU8mmxjyswHgzjUJ5h8H9Lqw4R8
         DcRywKnDl8UxkRG5XAyARRxVSupQh0ffMm5vHP8U5IiaV/sLc5c8wIlH5Ig8Rz5ygGOS
         RU2lX9MzqxnJX4p/1AVBjQCdrocE2eakuR2DDfD/RtT+ISYIuXhAI2Y6Pypz2eUEcqaw
         zQP91uU1wpvfuGUZ8aI1sEYWF7wurSxyxpbm6EGDcE6wKFdFhYEDGMrRr3333Qla+vPT
         OnizGCNSI2Rs1jurBe046LG2yVPrq2DkrEu5O8BK4zWfcJCtaLkWLL3vSxWEkPriXYMC
         77zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-version
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from;
        bh=1Y+591c4JsmyZ5fvggK4ypbQI1t/QF4DrrfZ1iPoTZI=;
        b=v4worvqWrYcXbO6wrgOeQzRKUqS68svYgeNE33F+u37jZiJbjVBBsepD69HESwKnn2
         6yRpYmb6uoEyzUd4pjcla1Smt1ioC9XxGr0WNa9CPbw/ZAf3pVWAi5JH65bN73COX1Kn
         8i4s2raG4ggS+Kxd5t+6BU50/DejhfmEnYfBPNKowckBx4vN8RQx5jCqWBAXhTETvDmE
         n0tCy+RFlF8Qa+bI0QLjeqgOHe9QYjGnDBM1u2eiI+APX2dszWMLHcqZLDfA/aJkMC7C
         c53BIc2Hvg2pD1jIO5cB4MypsRXrwJLZMsXPuUFZY+Fud86mNorFRzA8f95+JXZlVSbk
         wDvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of erik.schmauss@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=erik.schmauss@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id m128si498014pfb.5.2019.08.01.13.17.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 13:17:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of erik.schmauss@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Aug 2019 13:17:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,335,1559545200"; 
   d="scan'208";a="372728424"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
  by fmsmga006.fm.intel.com with ESMTP; 01 Aug 2019 13:17:55 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 1 Aug 2019 13:17:55 -0700
Received: from orsmsx122.amr.corp.intel.com ([169.254.11.68]) by
 ORSMSX160.amr.corp.intel.com ([169.254.13.251]) with mapi id 14.03.0439.000;
 Thu, 1 Aug 2019 13:17:54 -0700
From: "Schmauss, Erik" <erik.schmauss@intel.com>
To: Qian Cai <cai@lca.pw>, "Moore, Robert" <robert.moore@intel.com>,
	"Wysocki, Rafael J" <rafael.j.wysocki@intel.com>
CC: "jkim@FreeBSD.org" <jkim@FreeBSD.org>, "lenb@kernel.org"
	<lenb@kernel.org>, "ndesaulniers@google.com" <ndesaulniers@google.com>,
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org"
	<devel@acpica.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
Thread-Topic: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
Thread-Index: AQHVPaHqe/gnJU6NbEKNryIU7CFGuabdzLyAgAloioD//5trIA==
Date: Thu, 1 Aug 2019 20:17:55 +0000
Message-ID: <CF6A88132359CE47947DB4C6E1709ED53C618109@ORSMSX122.amr.corp.intel.com>
References: <20190718194846.1880-1-cai@lca.pw>
	 <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661CBD@ORSMSX110.amr.corp.intel.com>
 <1564686979.11067.48.camel@lca.pw>
In-Reply-To: <1564686979.11067.48.camel@lca.pw>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODI2ZGY1OTItNDEyMS00ZGYzLWFiYjgtOTUzMDk4MzM4OWY5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiakVRcDFSYXhteXJsblwvTnFwZ3ZPcVwvQkJvQjh6bVZSRXBnTmt6dkhsbkViTU11SEl0SkZCY2NpZVU1MWdNbElkIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Original-Sender: erik.schmauss@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of erik.schmauss@intel.com designates 134.134.136.65 as
 permitted sender) smtp.mailfrom=erik.schmauss@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



> -----Original Message-----
> From: Qian Cai [mailto:cai@lca.pw]
> Sent: Thursday, August 1, 2019 12:16 PM
> To: Moore, Robert <robert.moore@intel.com>; Wysocki, Rafael J
> <rafael.j.wysocki@intel.com>
> Cc: Schmauss, Erik <erik.schmauss@intel.com>; jkim@FreeBSD.org;
> lenb@kernel.org; ndesaulniers@google.com; linux-acpi@vger.kernel.org;
> devel@acpica.org; clang-built-linux@googlegroups.com; linux-
> kernel@vger.kernel.org
> Subject: Re: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
>=20
> On Fri, 2019-07-26 at 19:35 +0000, Moore, Robert wrote:
> > We've taken the change to ACPI_TO_POINTER.
>=20
> I am a bit confused here. I saw the commit in the acpia repo.
>=20
> https://github.com/acpica/acpica/commit/02bbca5070e42d298c9b824300aa0
> eb8a082d797
>=20
> but how does that change will go into the linux kernel? Suppose Rafael wi=
ll
> need to pick it up manually?

I do that after every ACPICA release

Erik
>=20
> >
> >
> > -----Original Message-----
> > From: Qian Cai [mailto:cai@lca.pw]
> > Sent: Thursday, July 18, 2019 12:49 PM
> > To: Wysocki, Rafael J <rafael.j.wysocki@intel.com>
> > Cc: Moore, Robert <robert.moore@intel.com>; Schmauss, Erik
> > <erik.schmauss@inte l.com>; jkim@FreeBSD.org; lenb@kernel.org;
> > ndesaulniers@google.com; linux-acpi @vger.kernel.org;
> > devel@acpica.org; clang-built-linux@googlegroups.com; linux-
> > kernel@vger.kernel.org; Qian Cai <cai@lca.pw>
> > Subject: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
> >
> > Clang generate quite a few of those warnings.
> >
> > drivers/acpi/scan.c:759:28: warning: arithmetic on a null pointer
> > treated as a cast from integer to pointer is a GNU extension [-Wnull-po=
inter-
> arithmetic]
> > 		status =3D acpi_get_handle(ACPI_ROOT_OBJECT,
> > obj->string.pointer,
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~~~~~~~~~~
> > ./include/acpi/actypes.h:458:56: note: expanded from macro
> 'ACPI_ROOT_OBJECT'
> > =C2=A0#define ACPI_ROOT_OBJECT=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0((acpi_handle)
> > ACPI_TO_POINTER
> > (ACPI_MAX_PTR))
> > 							^~~~~~~~~~~~~~~
> > ./include/acpi/actypes.h:509:41: note: expanded from macro
> 'ACPI_TO_POINTER'
> > =C2=A0#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_ADD_PTR (void, (void *)
> > 0,
> > (acpi_size) (i))
> >
> > ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > ./include/acpi/actypes.h:503:84: note: expanded from macro 'ACPI_ADD_PT=
R'
> > =C2=A0#define ACPI_ADD_PTR(t, a, b)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_CAST_PTR (t,
> > (ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~~~~~~~~~~~
> > ./include/acpi/actypes.h:501:66: note: expanded from macro
> 'ACPI_CAST_PTR'
> > =C2=A0#define ACPI_CAST_PTR(t, p)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0((t *) (acpi_uintptr_t) (p))
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0^
> > This is because pointer arithmetic on a pointer not pointing to an
> > array is an undefined behavior (C11 6.5.6, constraint 8). Fix it by
> > just casting the corresponding pointers using ACPI_CAST_PTR() and skip
> > the arithmetic. Also, fix a checkpatch warning together.
> >
> > ERROR: Macros with complex values should be enclosed in parentheses
> > =C2=A0#45: FILE: include/acpi/actypes.h:509:
> > +#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_CAST_PTR (void, i)
> >
> > Signed-off-by: Qian Cai <cai@lca.pw>
> > ---
> >
> > v2: Use ACPI_CAST_PTR() in ACPI_TO_POINTER() directly without
> > =C2=A0=C2=A0=C2=A0=C2=A0arithmetic.
> >
> > =C2=A0include/acpi/actypes.h | 2 +-
> > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index
> > ad6892a24015..163181e2d884 100644
> > --- a/include/acpi/actypes.h
> > +++ b/include/acpi/actypes.h
> > @@ -506,7 +506,7 @@ typedef u64 acpi_integer;
> >
> > =C2=A0/* Pointer/Integer type conversions */
> >
> > -#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_ADD_PTR (void, (void *)
> > 0,
> > (acpi_size) (i))
> > +#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(ACPI_CAST_PTR (void, i))
> > =C2=A0#define ACPI_TO_INTEGER(p)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_PTR_DIFF (p, (void *) 0)
> > =C2=A0#define ACPI_OFFSET(d, f)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_PTR_DIFF (&(((d *)
> > 0)->f), (void
> > *) 0)
> > =C2=A0#define ACPI_PHYSADDR_TO_PTR(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0ACPI_TO_POINTER(i)
> > --
> > 2.20.1 (Apple Git-117)
> >

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CF6A88132359CE47947DB4C6E1709ED53C618109%40ORSMSX122.amr.=
corp.intel.com.
