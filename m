Return-Path: <clang-built-linux+bncBDZIZM7MZ4IBBB4XRXVAKGQE6OZRYUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E8A7E415
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 22:28:56 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id x7sf65813007qtp.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Aug 2019 13:28:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564691335; cv=pass;
        d=google.com; s=arc-20160816;
        b=NxwQUZeGBpOP5cOZOvPvgXSVMyw1HrxSnWcfJ4oVmx2E9UHRFPcd6D4+GTIsxibv17
         SldB0ETwQ7KaN3Pkx47ASFPud6X/ZL/zDrY9/rHQ6tZbkSJBa0v06NxnKAEZlXO1AHDT
         iE4UgQ8sKPZ6E/eFji7aTa36QlmWp4coB93N1x2eY9R1Xi1GxYL+nmug2TjEzEErzaUh
         5RQB1qF/hN/2h55VJCwYViZTlNKC8H5hRoNVOLTY3wz3a5gpznRH1tgdDPHNhxsXqJsm
         2Uhy/6pK+OBol6oJ3AHKP6PhO1U5ZVoOTbxgUVsfFRldxaCWepIdoqoOUW55fP0xhf9N
         Bxtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-version:dlp-product
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=4Qp5Boa+ib21mw98zqO5xYg6AsTytOy8hlRGg1zVLS0=;
        b=oBsulLmUii7OViw+aI+M2wnfawfEJGozEfLtPWoTGVtoJSkMOBDfXO1KnFeHEt1oD9
         mswwpmQgs65/HNq837WAPiv6FZILFitwAt7xRCQ8cgYVL9KFDFOXKeC2HuXSQCfn5Tot
         H+ZRS9lA+pDajlVZzTGdzTSd6MAgGJ7CBgACff8YncgVUBzTelPLWj737ul+V/BJO6Vi
         nD3ll4LYk6M1nS5KcFb/Kl8TEyXcvrGCPYnpkGI2+63zCVCGLV2J8zUWjk+hlyO3F1Ma
         M2NpurAhdNxFVQcouujgLQPUnb1Nw1QQbz6HhYOCNh6znofNK6MOZmMHwEnLpwNmsStT
         R1ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robert.moore@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:dlp-product
         :dlp-version:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Qp5Boa+ib21mw98zqO5xYg6AsTytOy8hlRGg1zVLS0=;
        b=j5MmzXy67n9CEiXdEF53W3wCP5E0sHM3ZbCMm9mBvnWsFidZQyTMvwQMBfz4wjWfd7
         9aMB7IFw/VE0u2t0flvkQkbIohyQ8c8sdpVMWqQNWY0JaPsJirRYbyOt1mFE3rq9v8g1
         LxLrpbSWnMHgRzZYeMV8LcR2+2Z2rhTWzqRCQB9GEI53fEAhun8Cd5hshCNecAgfKMEq
         WWaonOdsUKSHOdvv802zNgGkOS9EIsr4wp5e7AwkcOdG0ic5PzHLf2yqYKKUPb8PVLdO
         zriHgwFM3E5HY13NCKBSMT20ulhFIjbhE0Zv7q1BYOTK3Iw1RhsC2OBc1se8YPoL7Xgr
         ngpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-version:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Qp5Boa+ib21mw98zqO5xYg6AsTytOy8hlRGg1zVLS0=;
        b=F0J7DZOZU6YIzcbH7qosgE1Tuy08DQkK+9J/pXBmqXQOGfNzpkfWRgK9eyKb4Dk6XB
         HLcqBjV2BA/KBEjym/KVKqc6U0awSW0EyFLlOLkIUgLl3bj5bZJtWS53h8uNupZQBTTi
         92d1+Pa4MP7MiYk8bfwhJXVp5AgugqzLr3vWTqYWuY2y70AaZxlGKyrDZtdsyS4ClTAJ
         ngMW2vZ+E/oHU02b9s+81xZDl02LzG9jztj+0oehtTI95YKnm5WVe4Tvg+Lfa4/gVKfR
         4FRmPKEYaRAIarYW1m3Zxessc/JKLr7oetw4PpSdDyjrOfrglIJDQvtx/vzSfioPriTJ
         7TQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVSMK/QBjP+gjaXaR1Zc1np+Aw+CmORzelWodK5SviNCFi1lN17
	8XfqBigHUy/z/ihX8PQZmb4=
X-Google-Smtp-Source: APXvYqyhm4Z/6qZlDFVpBBWN7RPsB6DPHlWHDmtQZ+0kFhVxM0m4hL2rzVERServifbUyj4XA/8KQQ==
X-Received: by 2002:a37:4ac3:: with SMTP id x186mr84180654qka.138.1564691335724;
        Thu, 01 Aug 2019 13:28:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2a06:: with SMTP id k6ls648395qtk.4.gmail; Thu, 01 Aug
 2019 13:28:55 -0700 (PDT)
X-Received: by 2002:ac8:2bdc:: with SMTP id n28mr93549923qtn.197.1564691335467;
        Thu, 01 Aug 2019 13:28:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564691335; cv=none;
        d=google.com; s=arc-20160816;
        b=QOLIxpFfAnA5Z/hD+XhoGorXTLuEU+Nf/WQh8XIh0q80Zyv6d1fgZ0TlO6q7QNvITK
         z0x97TpmeEO5LCslpZAvlnmYUWbfeYI17Dadl8daofpAIugq/GfMl2gNlPyZLtb08PAr
         U7GrLml3SdpKcuyacCV6WkSjdlx7G/OkJN1sNojiG6ZTnMHFboF/al1V1DSuwsOAtW5U
         dAYsm25QsGO2uPJHBBOqUNFJfL63F5mwzJLrwoDaffbf63zYQOZi6AYD6qzfWxiDMk4I
         1jpAgLTcjTpqhefSlhCUjQekGnmxkkBdb7X4FHz6bOvOgARikAeYP0N3esNo993Oli/5
         G/PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-version
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from;
        bh=+CTTSmBPDmJLnDv7lr7Tv1gKPl7M0xLqhkQkxHgUhQQ=;
        b=K1o14+Hfi54oNaGJNJDNky63cBTlkJBLTpHs6w+GUZKWxWmlpLLlf4hJl8h3BBpfeE
         6IRqXw23mzo8FPaXzs2g87KgPcljLJLLT1FaUYaAg0aG4BubgvjZlwxCM7pHtTsCqhVG
         YSdQY8Uu3ZxKEvvC4yF+o5c5ooy1KEkGWe3lLLbz2WxqJVfCe1+/fdLkOfkSak8ZTyLg
         J17b9Tsep+ebGwEGtqKq9iivDXbkLSQqtiG1vEauhsoqiJsPKwGk+llFYx2gMeryNcC3
         sp3lKSRm2Z2JDxInFDc7BW3PYLSiRujvrmF3EZmpnifV3x84y9O92dYik52DCtYj58Xw
         Qd1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robert.moore@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id v19si1958759qth.1.2019.08.01.13.28.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 13:28:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of robert.moore@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Aug 2019 13:28:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,335,1559545200"; 
   d="scan'208";a="175366267"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
  by orsmga003.jf.intel.com with ESMTP; 01 Aug 2019 13:28:53 -0700
Received: from orsmsx126.amr.corp.intel.com (10.22.240.126) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 1 Aug 2019 13:28:52 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.211]) by
 ORSMSX126.amr.corp.intel.com ([169.254.4.77]) with mapi id 14.03.0439.000;
 Thu, 1 Aug 2019 13:28:52 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: "Schmauss, Erik" <erik.schmauss@intel.com>, Qian Cai <cai@lca.pw>,
	"Wysocki, Rafael J" <rafael.j.wysocki@intel.com>
CC: "jkim@FreeBSD.org" <jkim@FreeBSD.org>, "lenb@kernel.org"
	<lenb@kernel.org>, "ndesaulniers@google.com" <ndesaulniers@google.com>,
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>, "devel@acpica.org"
	<devel@acpica.org>, "clang-built-linux@googlegroups.com"
	<clang-built-linux@googlegroups.com>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
Thread-Topic: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
Thread-Index: AQHVPaHylXmfzBauvEybJLDaugeeCqbdV0WAgAneAYCAABE2gP//jYhw
Date: Thu, 1 Aug 2019 20:28:51 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B96643D0@ORSMSX110.amr.corp.intel.com>
References: <20190718194846.1880-1-cai@lca.pw>
	 <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661CBD@ORSMSX110.amr.corp.intel.com>
 <1564686979.11067.48.camel@lca.pw>
 <CF6A88132359CE47947DB4C6E1709ED53C618109@ORSMSX122.amr.corp.intel.com>
In-Reply-To: <CF6A88132359CE47947DB4C6E1709ED53C618109@ORSMSX122.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiODI2ZGY1OTItNDEyMS00ZGYzLWFiYjgtOTUzMDk4MzM4OWY5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiakVRcDFSYXhteXJsblwvTnFwZ3ZPcVwvQkJvQjh6bVZSRXBnTmt6dkhsbkViTU11SEl0SkZCY2NpZVU1MWdNbElkIn0=
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Original-Sender: robert.moore@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of robert.moore@intel.com designates 192.55.52.93 as
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
From: Schmauss, Erik=20
Sent: Thursday, August 01, 2019 1:18 PM
To: Qian Cai <cai@lca.pw>; Moore, Robert <robert.moore@intel.com>; Wysocki,=
 Rafael J <rafael.j.wysocki@intel.com>
Cc: jkim@FreeBSD.org; lenb@kernel.org; ndesaulniers@google.com; linux-acpi@=
vger.kernel.org; devel@acpica.org; clang-built-linux@googlegroups.com; linu=
x-kernel@vger.kernel.org
Subject: RE: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings



> -----Original Message-----
> From: Qian Cai [mailto:cai@lca.pw]
> Sent: Thursday, August 1, 2019 12:16 PM
> To: Moore, Robert <robert.moore@intel.com>; Wysocki, Rafael J=20
> <rafael.j.wysocki@intel.com>
> Cc: Schmauss, Erik <erik.schmauss@intel.com>; jkim@FreeBSD.org;=20
> lenb@kernel.org; ndesaulniers@google.com; linux-acpi@vger.kernel.org;=20
> devel@acpica.org; clang-built-linux@googlegroups.com; linux-=20
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
> but how does that change will go into the linux kernel? Suppose Rafael=20
> will need to pick it up manually?

>I do that after every ACPICA release

Which happens about once per month.

>Erik
>=20
> >
> >
> > -----Original Message-----
> > From: Qian Cai [mailto:cai@lca.pw]
> > Sent: Thursday, July 18, 2019 12:49 PM
> > To: Wysocki, Rafael J <rafael.j.wysocki@intel.com>
> > Cc: Moore, Robert <robert.moore@intel.com>; Schmauss, Erik=20
> > <erik.schmauss@inte l.com>; jkim@FreeBSD.org; lenb@kernel.org;=20
> > ndesaulniers@google.com; linux-acpi @vger.kernel.org;=20
> > devel@acpica.org; clang-built-linux@googlegroups.com; linux-=20
> > kernel@vger.kernel.org; Qian Cai <cai@lca.pw>
> > Subject: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
> >
> > Clang generate quite a few of those warnings.
> >
> > drivers/acpi/scan.c:759:28: warning: arithmetic on a null pointer=20
> > treated as a cast from integer to pointer is a GNU extension=20
> > [-Wnull-pointer-
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
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0((acpi_handle)=20
> > ACPI_TO_POINTER
> > (ACPI_MAX_PTR))
> > 							^~~~~~~~~~~~~~~
> > ./include/acpi/actypes.h:509:41: note: expanded from macro
> 'ACPI_TO_POINTER'
> > =C2=A0#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_ADD_PTR (void, (void=20
> > *) 0,
> > (acpi_size) (i))
> >
> > ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > ./include/acpi/actypes.h:503:84: note: expanded from macro 'ACPI_ADD_PT=
R'
> > =C2=A0#define ACPI_ADD_PTR(t, a, b)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_CAST_PTR (t,=20
> > (ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~~~~~~~~~~~
> > ./include/acpi/actypes.h:501:66: note: expanded from macro
> 'ACPI_CAST_PTR'
> > =C2=A0#define ACPI_CAST_PTR(t, p)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0((t *) (acpi_uintptr_t)=20
> > (p))
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0^=20
> > This is because pointer arithmetic on a pointer not pointing to an=20
> > array is an undefined behavior (C11 6.5.6, constraint 8). Fix it by=20
> > just casting the corresponding pointers using ACPI_CAST_PTR() and=20
> > skip the arithmetic. Also, fix a checkpatch warning together.
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
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_ADD_PTR (void, (void=20
> > *) 0,
> > (acpi_size) (i))
> > +#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(ACPI_CAST_PTR (void, i))
> > =C2=A0#define ACPI_TO_INTEGER(p)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_PTR_DIFF (p, (void *)=20
> > 0)
> > =C2=A0#define ACPI_OFFSET(d, f)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_PTR_DIFF (&(((d *)=
=20
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
clang-built-linux/94F2FBAB4432B54E8AACC7DFDE6C92E3B96643D0%40ORSMSX110.amr.=
corp.intel.com.
