Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBB7VRTVAKGQEBNE2MJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9F57E32E
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 21:16:25 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id x83sf31148540vkx.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Aug 2019 12:16:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564686983; cv=pass;
        d=google.com; s=arc-20160816;
        b=ky+yaJD8lxBIt2+XUC480852dRVc0AcujXAjsTwoNPa9W2Jukjp4S42FZBAF+vlea7
         u+F828G5wTlbE7zqwE6ZYAdLRgiWb5jYVzyvF7E6kKZt1NHlxHAaFU1eKKmqinm6jy+P
         7EUkBVhZOQegS0yrs0w1ARxkDw5+mm/TYQpA98o3OJfOreThTGp9d2k7ewPeLuZ4lKrJ
         rLBxp8aAaMtgdrCOGQ4PkaIunNCRf5xPcb9o0NbR/AR7y6aF/tjlTIT+rrVe2iNCw1wc
         V5yLcKL3xCi4IupG2m3xclI83Kdx/uO5lhN+aQ01CDShNsLm0DiWVNApQHbDVTn0g087
         2r0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:date:cc:to:from:subject
         :message-id:sender:dkim-signature;
        bh=PiiK6beSxrrh3N2RDx7E4D3+zE/m84olWNfMn3Vaebw=;
        b=CokX+kVYVtOJ1C6WJqkMu2cUS4O9zo7YqVghO0xSC4JSqaemksMIq7t56sPuNChRzx
         UIErbwg7pq0K9WqhVAvjyvIbTSVAOIM1qdvvR2RoYhdXek+JnC+RUSgfoDOIeK04pMaq
         EAPUpFj2II6fnNzb/lyjoVENf/Rt+Xq7HK2x6BvA3M6aSwlBkYDNkZ2PHvNOf2g8Mo6y
         0QiwFma4Y/CnKNaQ2kcuL+QM7iO1/8mqwrtnRvCnq8okkUbXCY0FcahjfjyxUyWljWpZ
         ed8YpyqBts80mCfmyfGbNkh+6+NZF7eFDSKVllaoK9M8td9q85sKtVV4pLNl/TQ3qs3p
         Z19w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b="A8/G7jLp";
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PiiK6beSxrrh3N2RDx7E4D3+zE/m84olWNfMn3Vaebw=;
        b=HpNCeXza2qXpXJNHAdkPlDcXgu46nDymLlaxsvgnW9+oXiOfG57OHm1YTIoXOAeT4I
         uYy7adglzpK8SOOPguSrv4PlIvjl6TYpE0xbnjf0dOB+hlWmxpMc7IePrRJOJ6uTKlNP
         8UT6HbYPkev1rLGeHSVzU7rNA3nAn81jA1OPFGEwGJ6lYfv64j9WA1jFAh8Ak9wChbx/
         rFPsDXu/usfOeuahVw6aXkWoIFji949g9iwjE/euY39ISKpvN7Y63Jk31lLg45xr/eyZ
         DyYBapIGOQnmp3wPvkH8nhowAl1CGMPUzT8FYxCbMvIlArIDgUaDFjA/y10pZjE2h/uy
         HrOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PiiK6beSxrrh3N2RDx7E4D3+zE/m84olWNfMn3Vaebw=;
        b=loX4cbLGgMQU8yOL9iQBEOmMHIwavUMCQ2qDESHIb319uenKAiCXKqqVp5B/b3fmk8
         oko1cxGMcdxTfVB01T91qnvqN+tnWSeSVr2AVcmUXYKyOcVX63FRHj448e1/tDYwIwGx
         BW/OXTQQRW5p2wHVjwSf7cBHfivIXiv15USNoMM6XCRKYAQLVisx8NGj3w/jGLFZxXWk
         ky5F53gbn0gdzHI1+GZLVr/Pn+BEPfc7kG16na7bxTDxO38X/CXJHZ21W9QR58miT6Tn
         UxKQuAxgL6ddHn3pc+DmV0LehuEofJ3oCzxGJohRrnHmG/lhrhamju3A5ctfpmQuggeT
         DgvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXFadpZoFxom/tkRC8j0PeoJHUHp6zwWzkI77lO5GEwevsguJ7c
	LqmKJUrYP7upRgq8nY8CYJo=
X-Google-Smtp-Source: APXvYqwy8/Iu2dsSAJMdLxL70bHw6TVN1RRqKqkXbmjYT0T1ispx4Bct3Tbh1ISKiHzOVluLB6GbPQ==
X-Received: by 2002:a67:6282:: with SMTP id w124mr85913609vsb.4.1564686983792;
        Thu, 01 Aug 2019 12:16:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8bc3:: with SMTP id n186ls9657155vsd.12.gmail; Thu, 01
 Aug 2019 12:16:23 -0700 (PDT)
X-Received: by 2002:a67:e3da:: with SMTP id k26mr85391104vsm.131.1564686983519;
        Thu, 01 Aug 2019 12:16:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564686983; cv=none;
        d=google.com; s=arc-20160816;
        b=sCyYYpN/Z18U7T3pjMZxHKMrhMDCI05Z4yfUVDxb+UKYh8NNo9G8zZFX4pzMhFdsld
         oJq6gK2Ld5OzJCZ/Gqzl6VgJD6fZ6xWKus8yP9rQa43eteHfgQRadeF97sjW9P6X7XPJ
         8iDT+7nnzrzl2nk6tuJMz5inIdzFHVSXi7074OAWLox42Q9upOjU/u076Az9yIkt9VIt
         pFHq8w2AzSRynzsaZ16H7IQmXhAxEGx9BaWe4bZHz6ZSWJnxnSgxnwXHCoewUAoMWs0M
         IGr74Ku1700NwRqwxxGHgLlmgqRTFJlbz0vwNKz+YO8aTHfCJ1EZpp2OuLxHEv7eR1BO
         fNFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=5t3tzqXqpNbdKtPEsmdz9Dwf6r6pNTpWJhNvYjQG3h4=;
        b=dPn7arL/Fh0mq4om5/cyOAtETKMAKObGQPfkZY9FjCevafDA3Bu73cFsZL7trb0YRK
         9fTXVa5CcR8c3YW/6mnNsqodnYlbfKwYQ6eOeWCkBidZz68G+5VEm+yTnK/bjpnvKs78
         cl5pq/5r+ort/S/U1lGss9xzu6WRs60Z5cv3CkL7sGw8cT6vmTtY/dkWjTJWomd+wmKf
         DJ5vh/Q9KEfPzrT6AZneIePQ8cCl4UoOLd41ve8ZQEXDAgu8En+YZcf7HvqxZuQxIR3B
         MwDviF5wu4D05VmETF01UiMFTmE2YQ/wlVkw78uxllkLb+ZV8lwZK14/fYx2nPwUjkzG
         TP9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b="A8/G7jLp";
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id u189si4918530vkb.2.2019.08.01.12.16.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 12:16:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id m14so27228951qka.10
        for <clang-built-linux@googlegroups.com>; Thu, 01 Aug 2019 12:16:23 -0700 (PDT)
X-Received: by 2002:a05:620a:1404:: with SMTP id d4mr87089021qkj.228.1564686983047;
        Thu, 01 Aug 2019 12:16:23 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id c5sm33070187qkb.41.2019.08.01.12.16.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 12:16:22 -0700 (PDT)
Message-ID: <1564686979.11067.48.camel@lca.pw>
Subject: Re: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
From: Qian Cai <cai@lca.pw>
To: "Moore, Robert" <robert.moore@intel.com>, "Wysocki, Rafael J"
	 <rafael.j.wysocki@intel.com>
Cc: "Schmauss, Erik" <erik.schmauss@intel.com>, "jkim@FreeBSD.org"
	 <jkim@FreeBSD.org>, "lenb@kernel.org" <lenb@kernel.org>, 
	"ndesaulniers@google.com"
	 <ndesaulniers@google.com>, "linux-acpi@vger.kernel.org"
	 <linux-acpi@vger.kernel.org>, "devel@acpica.org" <devel@acpica.org>, 
	"clang-built-linux@googlegroups.com"
	 <clang-built-linux@googlegroups.com>, "linux-kernel@vger.kernel.org"
	 <linux-kernel@vger.kernel.org>
Date: Thu, 01 Aug 2019 15:16:19 -0400
In-Reply-To: <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661CBD@ORSMSX110.amr.corp.intel.com>
References: <20190718194846.1880-1-cai@lca.pw>
	 <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661CBD@ORSMSX110.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b="A8/G7jLp";       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

On Fri, 2019-07-26 at 19:35 +0000, Moore, Robert wrote:
> We've taken the change to ACPI_TO_POINTER.

I am a bit confused here. I saw the commit in the acpia repo.

https://github.com/acpica/acpica/commit/02bbca5070e42d298c9b824300aa0eb8a08=
2d797

but how does that change will go into the linux kernel? Suppose Rafael will=
 need
to pick it up manually?

>=20
>=20
> -----Original Message-----
> From: Qian Cai [mailto:cai@lca.pw]=C2=A0
> Sent: Thursday, July 18, 2019 12:49 PM
> To: Wysocki, Rafael J <rafael.j.wysocki@intel.com>
> Cc: Moore, Robert <robert.moore@intel.com>; Schmauss, Erik <erik.schmauss=
@inte
> l.com>; jkim@FreeBSD.org; lenb@kernel.org; ndesaulniers@google.com; linux=
-acpi
> @vger.kernel.org; devel@acpica.org; clang-built-linux@googlegroups.com; l=
inux-
> kernel@vger.kernel.org; Qian Cai <cai@lca.pw>
> Subject: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
>=20
> Clang generate quite a few of those warnings.
>=20
> drivers/acpi/scan.c:759:28: warning: arithmetic on a null pointer treated=
 as a
> cast from integer to pointer is a GNU extension [-Wnull-pointer-arithmeti=
c]
> 		status =3D acpi_get_handle(ACPI_ROOT_OBJECT,
> obj->string.pointer,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~~~~~~~~~~
> ./include/acpi/actypes.h:458:56: note: expanded from macro 'ACPI_ROOT_OBJ=
ECT'
> =C2=A0#define ACPI_ROOT_OBJECT=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0((acpi_handle) ACPI_T=
O_POINTER
> (ACPI_MAX_PTR))
> 							^~~~~~~~~~~~~~~
> ./include/acpi/actypes.h:509:41: note: expanded from macro 'ACPI_TO_POINT=
ER'
> =C2=A0#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_ADD_PTR (void, (void *) 0=
,
> (acpi_size) (i))
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> ./include/acpi/actypes.h:503:84: note: expanded from macro 'ACPI_ADD_PTR'
> =C2=A0#define ACPI_ADD_PTR(t, a, b)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_CAST_PTR (t,
> (ACPI_CAST_PTR (u8, (a)) + (acpi_size)(b)))
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0^~~~~~~~~~~~~~~~~
> ./include/acpi/actypes.h:501:66: note: expanded from macro 'ACPI_CAST_PTR=
'
> =C2=A0#define ACPI_CAST_PTR(t, p)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0((t *) (acpi_uintptr_t) (p))
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0^ This is
> because pointer arithmetic on a pointer not pointing to an array is an
> undefined behavior (C11 6.5.6, constraint 8). Fix it by just casting the
> corresponding pointers using ACPI_CAST_PTR() and skip the arithmetic. Als=
o,
> fix a checkpatch warning together.
>=20
> ERROR: Macros with complex values should be enclosed in parentheses
> =C2=A0#45: FILE: include/acpi/actypes.h:509:
> +#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_CAST_PTR (void, i)
>=20
> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>=20
> v2: Use ACPI_CAST_PTR() in ACPI_TO_POINTER() directly without
> =C2=A0=C2=A0=C2=A0=C2=A0arithmetic.
>=20
> =C2=A0include/acpi/actypes.h | 2 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index
> ad6892a24015..163181e2d884 100644
> --- a/include/acpi/actypes.h
> +++ b/include/acpi/actypes.h
> @@ -506,7 +506,7 @@ typedef u64 acpi_integer;
> =C2=A0
> =C2=A0/* Pointer/Integer type conversions */
> =C2=A0
> -#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_ADD_PTR (void, (void *) 0,
> (acpi_size) (i))
> +#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(ACPI_CAST_PTR (void, i))
> =C2=A0#define ACPI_TO_INTEGER(p)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_PTR_DIFF (p, (void *) 0)
> =C2=A0#define ACPI_OFFSET(d, f)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_PTR_DIFF (&(((d *) 0)-=
>f), (void
> *) 0)
> =C2=A0#define ACPI_PHYSADDR_TO_PTR(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0ACPI_TO_POINTER(i)
> --
> 2.20.1 (Apple Git-117)
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1564686979.11067.48.camel%40lca.pw.
