Return-Path: <clang-built-linux+bncBDZIZM7MZ4IBBX6Q4HUQKGQE6ZT5GIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1947315B
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 16:17:04 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id m198sf39354893qke.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 07:17:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563977823; cv=pass;
        d=google.com; s=arc-20160816;
        b=KnVRIyp7/+nXG7RVSF1FlQPrdt8YkmXE2GUs1rFy7fOIoLLck7zoPD6vCA3N0DDEP/
         zwVhy5aG41nXgM8Zp30cSh9fAEmmUH3d0U7HQvvE4q8xCa2l+NjUMv0BWbr2mMr+0f3Y
         NcY2moYANHxSEX6YlCcFaqDYAxhmNvuMCEWttPMESzY1tC13y+9GyumvMG6Gkd/C03GW
         QqL2l2TrlXGtD5ZUbX9SKkMtrNclk/N+EXTImtM5QjXtuhiaNKOtyP/3wocNTNRrokz7
         hzPU20l6a7IVqCqaXllRNObiZusfmT7cMSMIoSA1POhA+xmv/yBnkCAMwrw22A2/dIuS
         UXqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-version:dlp-product
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=k9yfBv+R+fRFoCgdqMEeOlVUNXm4S0R7JRnRnWnMreU=;
        b=U5Hkd43huuUnP+z4wmK0SDdMnS4lAsDTDRR/OZukPpBa0+gOtSOu/bbG3sOkb4d9gR
         84O5WIAr0t7FC6wiUK6lWM0d0IPaFOv0ib4nzdvdwpnQT6p7lHl9KhmNC6+hqmst+NoM
         pRqjiSt6w1+GOGxyovjcU5k5/YshWfl0XYkZ0dXxG4ecFedAgp/zNpX0KgxKwUam1J5e
         nXqLitJ3T2pB1iSdNeMo1Ovkng7tZMZPI0GzNL9TnfUOWW3oItbEOBNMzrZluspeBZt5
         I3WJPtb7E7Fy/zBA/xU8/6UBLfyCPzbK9PdMgUg4lc7r14zWkH3AlYR6qDE8hnmDNm9u
         Wceg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robert.moore@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:dlp-product
         :dlp-version:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k9yfBv+R+fRFoCgdqMEeOlVUNXm4S0R7JRnRnWnMreU=;
        b=ClIZFgSsOkL36EW5/lPSmTcuIgEX61LIheFM0DMNlCrFrJnnXzdvHVEsEgQMa4aC4q
         bTiveoDuVBpqEUOktX2tmtxCMKT6swyUtwW/pa4cx5Mv/jwSDXI8OcZnEjODzaZRkCx2
         QCq9X3kicvWy2Wd/HxlQCYVB7m9eLFimvu/JETrNhjgGqSaw04LJ1ckP+3W8f+y7uJqE
         2EcH+CJMWMzhY0MH2YjSqomAxsEVRKapiiy6+MinUDoazYjZTb8hjU1aVgjZ9hdi59yH
         Q+VUJrcMvAdbyXkaWr0zvEzK5kyLYZaRfuIsNxYZGEYD6siHaMlhektOyx0zzYBka1XD
         HhuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-version:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k9yfBv+R+fRFoCgdqMEeOlVUNXm4S0R7JRnRnWnMreU=;
        b=N2SpDV1ay3MeTLvdSYE/VX1ooeoU8mrky82gmtxTgAC0e116mtE/lHGFqEy5ju1lwD
         9kxYnpTrJsCpEr6ILGatrttdnkL2BVGYW0Cj/wJ1tCq/+miFJciJ9/z3EXs1g00p6jzL
         18T4moBCP1IRg/gDycHRTqnaw/+7pQBE6W/wX+cYILJcu+X7GYCBrFfwnTrauUZObnT2
         cs6Q5HLWPivyPHp6T5RthZTRjRc+xlo4+1bQTIQ730JcqFLUvovVsUHuPiDw1YkCaC+6
         YfILu2XSX8XsFR4Wq6LhoaXEU7hmbc3uxmfDuIH6TJRz1RF1O9selKQQqHNUsY7nd+bd
         P9Zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVoZbMhnHnU2aYmNtBRctJmK0DTs7VJ9U1LUaODp5S/djICU8Bh
	c8+kkmvzVIIt+dw8xkJHmCU=
X-Google-Smtp-Source: APXvYqwTkHoZEBCkeQR0ohAo1t+ZCqcU2NbwYE1yCwHrmp/C+oiE+dbpfafrbseVWDWFNnpE/xCZDg==
X-Received: by 2002:a37:a389:: with SMTP id m131mr56111516qke.168.1563977823491;
        Wed, 24 Jul 2019 07:17:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:129b:: with SMTP id w27ls14018520qki.1.gmail; Wed,
 24 Jul 2019 07:17:03 -0700 (PDT)
X-Received: by 2002:a37:9904:: with SMTP id b4mr52044470qke.159.1563977823203;
        Wed, 24 Jul 2019 07:17:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563977823; cv=none;
        d=google.com; s=arc-20160816;
        b=Nv9qh8+XWWWgeLbrAPz0ZOkrDeTAerndARLiq12ab1ZMcw4jgnvDdAc/JXbUrE+Y+t
         yBARKaJEV6k8CcYqClBAs0Dv/sFDo7Rz7x+S+cgG7EzRRRigAOr5vYYAHLWRiEXa+U+U
         wTJcyUE3ul6m2lSq/xunUDwN08p/7vOMDAnF7FFGdII6JG7RVi/Or6+Tfi9xpyCoJf24
         s+AmTZTC44RhNKb1S39Lzg5qkTGwvS94mYTS0MSZ4gnyWB6rVVE9Hxyv5LzViXVfbW51
         e2PcZgUz0tnFuJEeQ/13GKyWIkfG+pmv4sBJc8Vll0cdYcofDZr3/Ckx2++xhmib8ahT
         MLdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-version
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from;
        bh=q5F9KAhlIz7VsY5Wiyft04KRrEq3aKd0v2PYZgtfzN0=;
        b=vCY7sVdo1Fe4mlh7IYzVhOJ3gVthZ9yY3BGhgd5angRCsJvujMLF8Oex878QNZUDoi
         OJeiFIuoT6zXbGitHS3j6HBk8yLTRcomnHcy2nWMdMHgc+JgxDm0vFqjccnfcXfUoS/0
         DHogtW7iGo3W+mgeKLYuyVZsYtP4Y8THrxYF2CXgMij5irxm5g/XSGB4IQwbfNQdssH6
         ycdVo5Yqyrh53LRzB0gd6H+VztJzj+RZHHWefnX0s1arOobk80wDwPrwhNHeNlEc2Bcb
         pNUg5j5444kP8L/A22+6O80z2mnpMS36J7V28riJtfCW6yOzBcn/jDiNeBtPzZJ5+fX6
         8l1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robert.moore@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id c39si2151847qta.5.2019.07.24.07.17.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 07:17:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of robert.moore@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Jul 2019 07:17:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; 
   d="scan'208";a="169940375"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
  by fmsmga008.fm.intel.com with ESMTP; 24 Jul 2019 07:17:01 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 24 Jul 2019 07:17:00 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.211]) by
 ORSMSX160.amr.corp.intel.com ([169.254.13.251]) with mapi id 14.03.0439.000;
 Wed, 24 Jul 2019 07:17:00 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: Qian Cai <cai@lca.pw>, Nick Desaulniers <ndesaulniers@google.com>
CC: "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, "Schmauss, Erik"
	<erik.schmauss@intel.com>, "jkim@freebsd.org" <jkim@freebsd.org>, Len Brown
	<lenb@kernel.org>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
	"devel@acpica.org" <devel@acpica.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings
Thread-Topic: [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings
Thread-Index: AQHVPFEYIycQ0k5IUUyXy4NqYzTqpqbP0wgAgAAvDoCACLPGAIABkXSA//+Ut6A=
Date: Wed, 24 Jul 2019 14:17:00 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B96618DB@ORSMSX110.amr.corp.intel.com>
References: <20190717033807.1207-1-cai@lca.pw>
	 <CAKwvOdmPX2DsUawcA0SzaFacjz==ACcfD8yDsbaS4eP4Es=Wzw@mail.gmail.com>
	 <73A4565B-837B-4E13-8B72-63F69BF408E7@lca.pw>
	 <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661869@ORSMSX110.amr.corp.intel.com>
 <1563975605.11067.8.camel@lca.pw>
In-Reply-To: <1563975605.11067.8.camel@lca.pw>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjQzMDk3MjEtZGJkZi00NDhkLWE2NjYtNzY3MGNkODBkZDdhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVXE1WTNsUUNTQWJPbTRuU2NKTXJtaUFKQmhaN1NKcEtRcTluTGNpN0dmZW9QaUhKWFd3U2NHbTZJb0Z1WGUzZCJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Original-Sender: robert.moore@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of robert.moore@intel.com designates 192.55.52.115 as
 permitted sender) smtp.mailfrom=robert.moore@intel.com;       dmarc=pass
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



-----Original Message-----
From: Qian Cai [mailto:cai@lca.pw]=20
Sent: Wednesday, July 24, 2019 6:40 AM
To: Moore, Robert <robert.moore@intel.com>; Nick Desaulniers <ndesaulniers@=
google.com>
Cc: Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Schmauss, Erik <erik.sc=
hmauss@intel.com>; jkim@freebsd.org; Len Brown <lenb@kernel.org>; linux-acp=
i@vger.kernel.org; devel@acpica.org; clang-built-linux <clang-built-linux@g=
ooglegroups.com>; LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings

On Tue, 2019-07-23 at 20:49 +0000, Moore, Robert wrote:
> > > Signed-off-by: Qian Cai <cai@lca.pw>
> > > ---
> > > include/acpi/actypes.h | 4 ++--
> > > 1 file changed, 2 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index
> > > ad6892a24015..25b4a32da177 100644
> > > --- a/include/acpi/actypes.h
> > > +++ b/include/acpi/actypes.h
> > > @@ -500,13 +500,13 @@ typedef u64 acpi_integer;
> > >=20
> > > #define ACPI_CAST_PTR(t, p)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0((t *) (acpi_uintptr_t)=20
> > > (p)) #define ACPI_CAST_INDIRECT_PTR(t, p)=C2=A0=C2=A0=C2=A0=C2=A0((t =
**)=20
> > > (acpi_uintptr_t) (p)) -#define ACPI_ADD_PTR(t, a, b)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
> > > ACPI_CAST_PTR (t, (ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
> > > +#define ACPI_ADD_PTR(t, a, b)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_CAST_PTR (t, (a) +
> > > (acpi_size)(b))
>=20
> We have some questions concerning this change. If (a) is not cast to a=20
> u8, the addition will be in whatever units are appropriate for (a)=20
> i.e., the type of (a). However, we want ACPI_ADD_PTR (And=20
> ACPI_SUB_PTR) to simply perform a byte addition or subtraction - thus=20
> the cast to u8. I believe that is the original thinking behind the macros=
.

I posted a v2 a while ago, and should clear this concern.

OK then this change only affects ACPI_TO_POINTER?

+#define ACPI_TO_POINTER(i)              ACPI_CAST_PTR (void, i)


>=20
> > > #define ACPI_SUB_PTR(t, a, b)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_CAST_PTR (t,=20
> > > (ACPI_CAST_PTR (u8, (a)) - (acpi_size)(b))) #define=20
> > > ACPI_PTR_DIFF(a, b)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0((acpi_size) (ACPI_CAST_PTR (u8,
> > > (a)) - ACPI_CAST_PTR (u8, (b))))
> > >=20
> > > /* Pointer/Integer type conversions */
> > >=20
> > > -#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_ADD_PTR (void, (void=20
> > > *) 0,
> > > (acpi_size) (i))
> > > +#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_ADD_PTR (void, 0,
> > > (acpi_size) (i))
> >=20
> > IIUC, these are adding `i` to NULL (or (void*)0)? X + 0 =3D=3D X ?
> > --
> > Thanks,
> > ~Nick Desaulniers
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/94F2FBAB4432B54E8AACC7DFDE6C92E3B96618DB%40ORSMSX110.amr.=
corp.intel.com.
