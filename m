Return-Path: <clang-built-linux+bncBC32535MUICBBTFR337QKGQEQIGB3VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 159CE2EE9BA
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 Jan 2021 00:27:10 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id x19sf6758330qvv.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 15:27:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610062028; cv=pass;
        d=google.com; s=arc-20160816;
        b=wg0GC00yOVjnzNM1MPpLxSbBQsuktglycACqZbBrDUb6DMTbX9p7Aaat2sLUeoXLRD
         IifS6TNWRxUyBSI9nu5rFpIStugK71ukvwvJwDbt57MP/9q8cV6KBCr0VXg6XOfAVYgA
         gB89wWRKbU9OvtABfJ9Io/uNRZhKo8XIuvXnYlc/fxZaAODd5Ft1DQ03ZM/Ya1wu6i22
         Jp6gy9b96HVSCc1mIWC5DnzU79QbQ43H58qDmWjjViZbTieGTIhpO65v+Yhb51wYpr3q
         805v9LKjZs/bhzPVpBE0TVF9ZlEBVhAPIgF4DZO7SO+W+ic3xJL4lK383eNqnVsIPIWj
         vqSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :thread-index:thread-topic:to:in-reply-to:cc:references:message-id
         :date:subject:mime-version:from:sender:dkim-signature;
        bh=hVaPdsFb/fJ4gDvbuMHgAm8MobgCOT6C8LQsQK+6v8c=;
        b=VaFby6HL9szcWd54PfktRzwHLvuUQ9Nmu3uq16MHYETCWiYgSwtO8hUIQ6YbK9XJ9B
         4xt54naeF0NczYCKhFM2lhsEpKCUN3XGap3nBEYn8beisMIAcZrpCUwg24DIxaHyNuKM
         nSPCNY7uYDj3Gw3r3zyHd1w3Z1cn0+loUJiDY2iwaOYpRBTPMfYOR/vB56U3gNuyBM+1
         Czfr8BaeF5c92+BFDyIe5oeZ30MP1j3iJjDZCA3YkKpbBUfVf5isM4x7K7FncPtNU0Cp
         KPq7BHHQONmGNYVfxkoUMkrIGBVLdgTojKtPrNk62dmWseYRbP7p/R7TyO6FwxDc0GwL
         8bDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ghfb8pHz;
       spf=pass (google.com: domain of dhildenb@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=dhildenb@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:mime-version:subject:date:message-id:references:cc
         :in-reply-to:to:thread-topic:thread-index:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hVaPdsFb/fJ4gDvbuMHgAm8MobgCOT6C8LQsQK+6v8c=;
        b=Sgfs/6t5HQ+KpF9tBDg/F7aHeNW7VOXuCYlk/8FRaSdXLDzzOgp/hdH3l+dURQpzJy
         GRTE+qsyK41/ZASeYxQ1XRHSxxmta7KKpZDpr1WVP7m0Ymd/JBQ2G+vsJhqDKwBpiM3c
         ruzhmr7zxxWNlWMJ0EoV8jQdBm78bGp82gsl0rMCFAx/LciIFv8FWhu+t5WoTyRGnlkf
         riKm8OMrAMpLx4Fm/QA/zIt0uJ65PPbR1wlJWwXedk2uPqn1pzJNncGGcV1rsycRoK0W
         4rR4QkHoUMRPbI4h5kuvkPaHN0PbGPG0FvXY/Blf0weM2jC2ElWj4pAEiTVAwRKgDawx
         gDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to:thread-topic:thread-index
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hVaPdsFb/fJ4gDvbuMHgAm8MobgCOT6C8LQsQK+6v8c=;
        b=QuVR14mVw9OeCyz74im9E4voEzA3mnEWmchTwg24Xy91lW6kdqZHwgpVGvdkmCcPDW
         vR0d1VMPuVVkqa6hKvLOCR2Uu+yDiMYm6moNZ+kRGoLOjOvG7zA5VPQGRXMMKbfocKxU
         EUFKDqPjIVtSYnuMOmOiKf3OyFclGOL4Hl+x+ZGv69dn0zYwR+V8dZ6k4uOIcOM2+oEW
         D20G4J2ocH5UwlbG6dZvfN0xYAfy+3YqmGoqgjJXLDeHrGpi/NbMlFZlB49oAaV88FAU
         r9HOnGKdTsxJJay6lyz7+Xd0fV0HeVSKDnS0psQve+lIzJf6+mfzRHRfa0tjklc/Uxpj
         p/rQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530IJZTiY8EsfZD5bFmtqkfeUD2cFYU/lHCJwZlNcqJboR5u5ptC
	/b9QHdBLzkJnz3XFr4qC40o=
X-Google-Smtp-Source: ABdhPJxfr0wIkgo0lYUUO5CY7Cg1OjbiBsoKBxZJvdee+9jJ97UHQtKDD9kTaeraCmSog6u2XOKd0g==
X-Received: by 2002:ac8:6b86:: with SMTP id z6mr1038784qts.26.1610062028725;
        Thu, 07 Jan 2021 15:27:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e193:: with SMTP id p19ls2101747qvl.10.gmail; Thu, 07
 Jan 2021 15:27:08 -0800 (PST)
X-Received: by 2002:a0c:a366:: with SMTP id u93mr937379qvu.53.1610062028344;
        Thu, 07 Jan 2021 15:27:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610062028; cv=none;
        d=google.com; s=arc-20160816;
        b=SBV0YpG0SKH5BOgUqhPLPV+QVBUK+2QDsX4sWJ/hjY8htVrZTHYCNux3XopBcFMbk9
         bzs6nlsQps5AnEN0rTW99sJsIlMrVxJvEyRtyssPIM4c5cWnx/bY6Iyued7/zvo1msc9
         WvVavg7Px7B62/aSNaSnoT/8jqEPbEd3sEmU27Nw4EwrQD/WVbAdrysz/ZlJPHn7VQcX
         834syjTcf4KXSd/aO6veI6jn41Kp3bWTGAbd3A7aV5r3uAw5B2LKh82P4lIdw1p2voQV
         Iyb4xTEzjsSt4ljkEZosNfQfo3bAXWTFevEm4eky+8GBn9IXv1ikFa3cpfNNcy/jdf1X
         BuBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:thread-index:thread-topic:to:in-reply-to
         :cc:references:message-id:date:subject:mime-version:from
         :dkim-signature;
        bh=nFf/sTw+WhqYSSvncC0EG/Vl47KepAu4FDPOmxpXM8A=;
        b=hknzTkXLL0rv5semVF8wy07EKsbbuK6loPmzQovDTGa/Ns/avo/dv+qddFV/1T5USw
         BIyeadbKyVEze4XLUpp5EhROehyzUC2C5LFmNpWnqX5NH4/qhJRfStMi1L1CHfmPy7//
         SmBeNRauHn4KrdGfE/y/IexPc/97ugKYWruH6xqsx4JyVM2WfvoY3EKvCl5B0b4YKK3Y
         MI6f9awCnEfYjqMEopWs2PmJIqM0I7NtyjiB9eAU959milWlPiibbG3UyEDdeGuneoWf
         jpBzuJmsddZVis9aGZOTqfuZxKeEJ/jVY9g876WGyr5d4QCgIjepUHhpklKHtwEK9Rfr
         Znjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ghfb8pHz;
       spf=pass (google.com: domain of dhildenb@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=dhildenb@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id z94si1134881qtc.0.2021.01.07.15.27.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Jan 2021 15:27:08 -0800 (PST)
Received-SPF: pass (google.com: domain of dhildenb@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-489-9kDoTAi3Nk2VSp-VIureBw-1; Thu, 07 Jan 2021 18:27:04 -0500
X-MC-Unique: 9kDoTAi3Nk2VSp-VIureBw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9221210054FF;
	Thu,  7 Jan 2021 23:27:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8782160BF1;
	Thu,  7 Jan 2021 23:27:02 +0000 (UTC)
Received: from zmail19.collab.prod.int.phx2.redhat.com (zmail19.collab.prod.int.phx2.redhat.com [10.5.83.22])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 306E518095FF;
	Thu,  7 Jan 2021 23:27:02 +0000 (UTC)
From: David Hildenbrand <dhildenb@redhat.com>
MIME-Version: 1.0
Subject: Re: [PATCH v1] s390x/tcg: Fix RISBHG
Date: Thu, 7 Jan 2021 18:27:01 -0500 (EST)
Message-Id: <B6050D16-4BD3-4355-878F-33E3E7C3A75D@redhat.com>
References: <CAKwvOdmE=Z9pV4txRw-kpcv5FOSr6eEXfmGnc++R_Vzv8MnRDQ@mail.gmail.com>
Cc: David Hildenbrand <david@redhat.com>, qemu-devel@nongnu.org,
 qemu-s390x@nongnu.org, Thomas Huth <thuth@redhat.com>,
 Cornelia Huck <cohuck@redhat.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>
In-Reply-To: <CAKwvOdmE=Z9pV4txRw-kpcv5FOSr6eEXfmGnc++R_Vzv8MnRDQ@mail.gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Thread-Topic: s390x/tcg: Fix RISBHG
Thread-Index: NcBNapSGPJMT1dP5vMuuN3FE2lAuOw==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dhildenb@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ghfb8pHz;
       spf=pass (google.com: domain of dhildenb@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=dhildenb@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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


> Am 08.01.2021 um 00:21 schrieb Nick Desaulniers <ndesaulniers@google.com>=
:
>=20
> =EF=BB=BFOn Thu, Jan 7, 2021 at 3:13 PM David Hildenbrand <david@redhat.c=
om> wrote:
>>=20
>> RISBHG is broken and currently hinders clang builds of upstream kernels
>> from booting: the kernel crashes early, while decompressing the image.
>>=20
>>  [...]
>>   Kernel fault: interruption code 0005 ilc:2
>>   Kernel random base: 0000000000000000
>>   PSW : 0000200180000000 0000000000017a1e
>>         R:0 T:0 IO:0 EX:0 Key:0 M:0 W:0 P:0 AS:0 CC:2 PM:0 RI:0 EA:3
>>   GPRS: 0000000000000001 0000000c00000000 00000003fffffff4 00000000fffff=
ff0
>>         0000000000000000 00000000fffffff4 000000000000000c 00000000fffff=
ff0
>>         00000000fffffffc 0000000000000000 00000000fffffff8 00000000008e2=
5a8
>>         0000000000000009 0000000000000002 0000000000000008 000000000000b=
ce0
>>=20
>> One example of a buggy instruction is:
>>=20
>>    17dde:       ec 1e 00 9f 20 5d       risbhg  %r1,%r14,0,159,32
>>=20
>> With %r14 =3D 0x9 and %r1 =3D 0x7 should result in %r1 =3D 0x900000007, =
however,
>> results in %r1 =3D 0.
>>=20
>> Let's interpret values of i3/i4 as documented in the PoP and make
>> computation of "mask" only based on i3 and i4 and use "pmask" only at th=
e
>> very end to make sure wrapping is only applied to the high/low doublewor=
d.
>>=20
>> With this patch, I can successfully boot a v5.10 kernel built with
>> clang, and gcc builds keep on working.
>>=20
>> Fixes: 2d6a869833d9 ("target-s390: Implement RISBG")
>> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
>> Cc: Guenter Roeck <linux@roeck-us.net>
>> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
>> Signed-off-by: David Hildenbrand <david@redhat.com>
>> ---
>>=20
>> This BUG was a nightmare to debug and the code a nightmare to understand=
.
>>=20
>> To make clang/gcc builds boot, the following fix is required as well on
>> top of current master: "[PATCH] target/s390x: Fix ALGSI"
>> https://lkml.kernel.org/r/20210107202135.52379-1-david@redhat.com
>=20
> In that case, a huge thank you!!! for this work! ++beers_owed.
>=20

:) a kernel build for z13 should work with the (default) =E2=80=9E-cpu qemu=
=E2=80=9C cpu type.

>>=20
>> ---
>> target/s390x/translate.c | 18 ++++++++----------
>> 1 file changed, 8 insertions(+), 10 deletions(-)
>>=20
>> diff --git a/target/s390x/translate.c b/target/s390x/translate.c
>> index 3d5c0d6106..39e33eeb67 100644
>> --- a/target/s390x/translate.c
>> +++ b/target/s390x/translate.c
>> @@ -3815,22 +3815,23 @@ static DisasJumpType op_risbg(DisasContext *s, D=
isasOps *o)
>>         pmask =3D 0xffffffff00000000ull;
>>         break;
>>     case 0x51: /* risblg */
>> -        i3 &=3D 31;
>> -        i4 &=3D 31;
>> +        i3 =3D (i3 & 31) + 32;
>> +        i4 =3D (i4 & 31) + 32;
>>         pmask =3D 0x00000000ffffffffull;
>>         break;
>>     default:
>>         g_assert_not_reached();
>>     }
>>=20
>> -    /* MASK is the set of bits to be inserted from R2.
>> -       Take care for I3/I4 wraparound.  */
>> -    mask =3D pmask >> i3;
>> +    /* MASK is the set of bits to be inserted from R2. */
>>     if (i3 <=3D i4) {
>> -        mask ^=3D pmask >> i4 >> 1;
>> +        /* [0...i3---i4...63] */
>> +        mask =3D (-1ull >> i3) & (-1ull << (63 - i4));
>>     } else {
>> -        mask |=3D ~(pmask >> i4 >> 1);
>> +        /* [0---i4...i3---63] */
>> +        mask =3D (-1ull >> i3) | (-1ull << (63 - i4));
>>     }
>=20
> The expression evaluated looks the same to me for both sides of the
> conditional, but the comments differ. Intentional?

& vs |, so the result differs.

Cheers!

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/B6050D16-4BD3-4355-878F-33E3E7C3A75D%40redhat.com.
