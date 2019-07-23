Return-Path: <clang-built-linux+bncBDZIZM7MZ4IBB5HF3XUQKGQENFSK7PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE4872114
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 22:49:57 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id x20sf33055809ywg.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 13:49:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563914996; cv=pass;
        d=google.com; s=arc-20160816;
        b=a6CrwtGCMdhYlNlBJdCxhKOU9AZkwcxiJ2EwkbGvsyzmZfmRZmBhUX019ozWvZVnKx
         1CNx6gjfcDCdJCGOr9qaU+nxL5hAQb9IVQoV2GDphmlGOoZEMfMIqOPG8jktZiG6klXZ
         7Qg65VBYQN6CFQlgFiTENqls+hxq5fqXwpS1cndqZth7ke4XywpWiJsHrWhbiehaqA/L
         vHGeMur60ronvD+FSK/K2yqDjCYSrUHKBYWy30rrC1QYHhYfjMs5uj/SSMo+UfwbEDCu
         DKOaBVRYCzuFe+JpBKfWq7pvTxLr+yhwD9xHZjK9+1yTrFLG8t1qMLC7xubblGaFR4kL
         M+Ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-version:dlp-product
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=PIceQAcbx01SPCm27DjLQGVMT2B/jKFPAh0zCE/79Ck=;
        b=RRJl25wRGP3K8Ne29Wo2yuJsyX8cGvuMLdDwayFVCe5vlZd772g9DZGzh5UFhh2cQ4
         fOdTKlvPlXE0TDUEHqJEhgnSSzLk+X958HkpywnpFh7gNDbyHWQECjwDnu35GGmw2qHR
         JFRhzJM+YIHsjcLlS0FwN2Qe+Sq5dW9yft30PIPqL68XnLbFjTlDEgRbRCgBZc/x3cI3
         kisutpfy3gFoL25b66TI+Q+F29O09QVN157cycgolrEoR+9GmZ3PHHbJ/vQmXBnFRSvg
         fsbUPEQyLZfShj3EX4rv9yzDg52QVHtrldApxVQvTD+xSJoUP+9j7oLs9ygFe3CbPZFF
         svDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robert.moore@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:dlp-product
         :dlp-version:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PIceQAcbx01SPCm27DjLQGVMT2B/jKFPAh0zCE/79Ck=;
        b=InR+wnhmNH6x24hN6TjHT3KGvugGTvYgwpC6stWROapKom4CiDCaBTK3DNnvoYOPTb
         eIEDTz2LsWe1ivFdqsmTOoN7gii0bjFjUxLlQO9JJhEgMX1lngYW2ovseKZ7zl8fiv5e
         rOkiH5ghWrGpW9O/R08pJ4ujP1rfTfE3C+NIqOHAr8lS4aQvhW6G/d9eMGXdLhF6/JRN
         gcXuGYv0L2Da3UvQyUTgmu8wVzlkWBB9TAArvpwEbIqPy4801OOZ2QSL57lPzgf515EP
         nuyhbIR1x8dYQe56VcVQVnmfzHbA7hPYRC+VDmqpvK2Fro4gvCTC6Tw1WUMjr8TzDl/V
         BSXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-version:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PIceQAcbx01SPCm27DjLQGVMT2B/jKFPAh0zCE/79Ck=;
        b=QRkyRXl85sYq585nexxXxhHaAWeey3S1dwmA+XFPpIPlNhrEVdrWnxuerd+q7yf2fo
         jpzczToEmp620C5JloG2YmgJFQRI8A20pcH+3qDJDw3Y4CEbMf7oEgASkBnT2AlKd1r0
         juDbR+UUGr0vAEiGNGU0zLLm0q58askM5X6qErqgl0TUOjnhQbRv74v5u1zdiw17EJ0i
         zDLNFpjaQpWSEbB3iZrFiSCr+IUDSwwhY6tKRBIG+noH4tP+Hd4WNpZ5uNKQ146VBb7I
         v9u//ebR+a5GUmeauKa7pqOc0do74M9wplkj69HggXYpsEPZGaziPqnlUrUwdpNsVAgA
         QJVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWJSv/8XNHeeC7R7U6BdoIFtiakZI5xO3YIBG407Ez7aKQsv7MA
	2tXolSs7QocIptSFyOVOFKc=
X-Google-Smtp-Source: APXvYqwOk6ecGvLRoqB2YPHEUy3OQUBCV7gjNx3vtMV/OpE/e4DEGILHFKoA+JbPCMAyIJN0s9HLlw==
X-Received: by 2002:a25:5744:: with SMTP id l65mr42930792ybb.467.1563914996262;
        Tue, 23 Jul 2019 13:49:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:a109:: with SMTP id y9ls5881162ywg.5.gmail; Tue, 23 Jul
 2019 13:49:55 -0700 (PDT)
X-Received: by 2002:a81:1289:: with SMTP id 131mr47984855yws.19.1563914995932;
        Tue, 23 Jul 2019 13:49:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563914995; cv=none;
        d=google.com; s=arc-20160816;
        b=VyrLEtsdWZADZ3dn3mRRZ+Q/BDTnJarY9Vp10OWNSqHoABMyK8anwuikiGUcl+O156
         qrAgdigNtGaM9mkJDISDQ3VbBDy9g/E4qjAv2WjtwTAe0HkZvxwwtWYBzQP+M3xg61+N
         kDTNq6dnhJgLcIAratiHsVbbnVDgE5MkQfKjeVa8qZA1djApU3jetYdDAnhfaY8mq80R
         vWGKBRD3UBcX1pJeL2miEuMLeJnTb+vuMybFk77WbyQpecWjE7DTV1qbDRUye2LYqvjU
         uku77l3SvvPYKnNAmOlHDfjBLqHH1bSe6ZoaQ/XEjc6cYifd21/gUyakjsBUJtsRvjO3
         xTcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-version
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from;
        bh=ssThDhof9CANpuWJO6Y7aWEIBWsYtJkLj0XM9UE6wVw=;
        b=Iah0EfxUhVEVO9KyJy8hl0vNt1rGEyR8jBzoac1kM+WWxWF9GPhGGBS9VfbiV3A+iB
         WuzSKEPtvQTcXriTJSu9qzIkkOL37pzMDmc1zkimBg24fyIZrEeJjM5Mlu7oYLV8P8EF
         Un7+AY7p5kil1MdPolC/ynmGQy6EJoTfoZOp7+jEWw56CwrCeO5BdZYYUnLpLSyTyHmv
         CIUqGJRhjJ+c+simFEs39Lk4GlCrK3E8zcv51zN3+Od0uVxLY7ukcR2iCMlrjItCu4j1
         DCxJMs3Ay5UY1EjW6Gkw30mI9nYrpUxfY28BPbwJky8m9FtD86iotxxkE9Is0OI1WVio
         Hb9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robert.moore@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=robert.moore@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id j15si1929943ywa.3.2019.07.23.13.49.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 13:49:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of robert.moore@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Jul 2019 13:49:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; 
   d="scan'208";a="174659991"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
  by orsmga006.jf.intel.com with ESMTP; 23 Jul 2019 13:49:53 -0700
Received: from orsmsx126.amr.corp.intel.com (10.22.240.126) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jul 2019 13:49:53 -0700
Received: from orsmsx110.amr.corp.intel.com ([169.254.10.211]) by
 ORSMSX126.amr.corp.intel.com ([169.254.4.77]) with mapi id 14.03.0439.000;
 Tue, 23 Jul 2019 13:49:53 -0700
From: "Moore, Robert" <robert.moore@intel.com>
To: Qian Cai <cai@lca.pw>, Nick Desaulniers <ndesaulniers@google.com>
CC: "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, "Schmauss, Erik"
	<erik.schmauss@intel.com>, "jkim@freebsd.org" <jkim@freebsd.org>, Len Brown
	<lenb@kernel.org>, "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
	"devel@acpica.org" <devel@acpica.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings
Thread-Topic: [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings
Thread-Index: AQHVPFEYIycQ0k5IUUyXy4NqYzTqpqbP0wgAgAAvDoCACLPGAA==
Date: Tue, 23 Jul 2019 20:49:52 +0000
Message-ID: <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661869@ORSMSX110.amr.corp.intel.com>
References: <20190717033807.1207-1-cai@lca.pw>
 <CAKwvOdmPX2DsUawcA0SzaFacjz==ACcfD8yDsbaS4eP4Es=Wzw@mail.gmail.com>
 <73A4565B-837B-4E13-8B72-63F69BF408E7@lca.pw>
In-Reply-To: <73A4565B-837B-4E13-8B72-63F69BF408E7@lca.pw>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWEwZGI5NTgtYTE0NC00ZWFjLWJjMDYtYjIyYWY5MmFhOTQ1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiY2pvUjE2Mm1qbUl2ejllMmdwQVwvejNWcEJib1RyQ2JUb2Q3R2dnRk14VXo0QVhuUUMrdjJmZUtiSjhJM2dTVTIifQ==
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
 (google.com: domain of robert.moore@intel.com designates 134.134.136.126 as
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
Sent: Wednesday, July 17, 2019 5:50 PM
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Wysocki, Rafael J <rafael.j.wysocki@intel.com>; Moore, Robert <robert.m=
oore@intel.com>; Schmauss, Erik <erik.schmauss@intel.com>; jkim@freebsd.org=
; Len Brown <lenb@kernel.org>; linux-acpi@vger.kernel.org; devel@acpica.org=
; clang-built-linux <clang-built-linux@googlegroups.com>; LKML <linux-kerne=
l@vger.kernel.org>
Subject: Re: [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings



> On Jul 17, 2019, at 6:01 PM, Nick Desaulniers <ndesaulniers@google.com> w=
rote:
>=20
> On Tue, Jul 16, 2019 at 8:38 PM Qian Cai <cai@lca.pw> wrote:
>>=20
>> Clang generate quite a few of those warnings.
>>=20
>> drivers/acpi/scan.c:759:28: warning: arithmetic on a null pointer=20
>> treated as a cast from integer to pointer is a GNU extension=20
>> [-Wnull-pointer-arithmetic]
>>                status =3D acpi_get_handle(ACPI_ROOT_OBJECT,
>> obj->string.pointer,
>>                                         ^~~~~~~~~~~~~~~~
>> ./include/acpi/actypes.h:458:56: note: expanded from macro=20
>> 'ACPI_ROOT_OBJECT'
>> #define ACPI_ROOT_OBJECT                ((acpi_handle) ACPI_TO_POINTER
>> (ACPI_MAX_PTR))
>>                                                       =20
>> ^~~~~~~~~~~~~~~
>> ./include/acpi/actypes.h:509:41: note: expanded from macro=20
>> 'ACPI_TO_POINTER'
>> #define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0,
>> (acpi_size) (i))
>>                                        =20
>> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> ./include/acpi/actypes.h:503:84: note: expanded from macro=20
>> 'ACPI_ADD_PTR'
>> #define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t,
>> (ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
>>                                         ^~~~~~~~~~~~~~~~~
>> ./include/acpi/actypes.h:501:66: note: expanded from macro=20
>> 'ACPI_CAST_PTR'
>> #define ACPI_CAST_PTR(t, p)             ((t *) (acpi_uintptr_t) (p))
>>                                                                  ^=20
>> This is because pointer arithmetic on a pointer not pointing to an=20
>> array is an undefined behavior. Fix it by doing an integer arithmetic=20
>> instead.
>=20
> Hi Qian, thanks for the patch.  How do I reproduce this issue,=20
> precisely?  I just tried:
> $ make CC=3Dclang -j71 drivers/acpi/scan.o on linux-next today and don't=
=20
> observe the warning.  My clang is ToT built sometime this week.  It=20
> looks like drivers/acpi/scan.o when CONFIG_ACPI=3Dy, which is set in the=
=20
> defconfig.  Is there another set of configs to enable to observe the=20
> warning?

# make W=3D1 -j 256

With the config,

https://raw.githubusercontent.com/cailca/linux-mm/master/arm64.config=20

>=20
> Also, the fix is curious.  Arithmetic on pointers to different=20
> "objects" (with one element passed the end) may lead to provence=20
> issues due to undefined behavior, but I would have expected some cases=20
> to uintptr_t, then arithmetic on that type, as the solution (which is=20
> what I suspect ACPI_CAST_PTR is doing).
>=20
> Further, you seem to have modified ACPI_ADD_PTR but not ACPI_SUB_PTR;=20
> I would have expected both to be afflicted together or not at all=20
> based on their existing implementations.

Yes, I thought about that, but ACPI_SUB_PTR does not seem used anywhere, so=
 I thought maybe just start a new discussion to remove it all together late=
r.

ACPI_SUB_PTR is used in the iasl data table compiler.


>=20
>>=20
>> Signed-off-by: Qian Cai <cai@lca.pw>
>> ---
>> include/acpi/actypes.h | 4 ++--
>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index=20
>> ad6892a24015..25b4a32da177 100644
>> --- a/include/acpi/actypes.h
>> +++ b/include/acpi/actypes.h
>> @@ -500,13 +500,13 @@ typedef u64 acpi_integer;
>>=20
>> #define ACPI_CAST_PTR(t, p)             ((t *) (acpi_uintptr_t) (p))
>> #define ACPI_CAST_INDIRECT_PTR(t, p)    ((t **) (acpi_uintptr_t) (p))
>> -#define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t, (ACPI_CAST_PT=
R (u8, (a)) + (acpi_size)(b)))
>> +#define ACPI_ADD_PTR(t, a, b)           ACPI_CAST_PTR (t, (a) + (acpi_s=
ize)(b))

We have some questions concerning this change. If (a) is not cast to a u8, =
the addition will be in whatever units are appropriate for (a) i.e., the ty=
pe of (a). However, we want ACPI_ADD_PTR (And ACPI_SUB_PTR) to simply perfo=
rm a byte addition or subtraction - thus the cast to u8. I believe that is =
the original thinking behind the macros.

>> #define ACPI_SUB_PTR(t, a, b)           ACPI_CAST_PTR (t, (ACPI_CAST_PTR=
 (u8, (a)) - (acpi_size)(b)))
>> #define ACPI_PTR_DIFF(a, b)             ((acpi_size) (ACPI_CAST_PTR (u8,=
 (a)) - ACPI_CAST_PTR (u8, (b))))
>>=20
>> /* Pointer/Integer type conversions */
>>=20
>> -#define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, (void *) 0,=
 (acpi_size) (i))
>> +#define ACPI_TO_POINTER(i)              ACPI_ADD_PTR (void, 0, (acpi_si=
ze) (i))
>=20
> IIUC, these are adding `i` to NULL (or (void*)0)? X + 0 =3D=3D X ?
> --
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/94F2FBAB4432B54E8AACC7DFDE6C92E3B9661869%40ORSMSX110.amr.=
corp.intel.com.
