Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBOF74HUQKGQEBDDLBII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C147300F
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 15:40:09 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id w6sf35758118ybe.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 06:40:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563975608; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZKax9kq8aUljAz3+nQC4iqyF1lIDwghzwDmdrfeg/26XuupwStc3Qbp1UEMP6LoV0b
         9fCXL8/b/etHtXRh0V5PLKg2QHWOokoOVr3J9bpjZjEhwq3CF7LvQRGBfF6KmNA+80iU
         doQ6zS+/Ad/X5a2ydrsfDVG4Gn7ROSoP8UmWHrSwPlGgkIMXOzFW5SE3corcQNCXozsf
         k1jCyw+HVQhrZzaMl2l0+JtJ0giDKqoCgBi5ClOnEAUsPb02dJTpDH9B5TBxWUCui1wy
         RI/IjWMzJwCKtkBC9c0iVr/4YmoW/kidjhQr6kn0lr6cwBHPO9VxgJ2rB4onnmxslzpZ
         +vqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:date:cc:to:from:subject
         :message-id:sender:dkim-signature;
        bh=XNPckPi1wK5g3O6eYIvmCSNL7ouqYYBCnOJp/GlDaaY=;
        b=BOGQ8nqpb8l2RZTxDqwTWsy44rVy7NroRV99CZhI9tQHxcHXVvsxCv3GcRAMPJF7pB
         7M14Jq7iepJOQztOIXkshoLaXXLTs4A5uVVP0cIWu8xbEfS4FAIUZvhsrJs+TtvIBcoJ
         wbH0CP9gyBvtIqxZFxnIM65cgoQ4gmB67bPrn5Dkp1F/Ky+tpnnrgrb6xhEc1uqx+2Hf
         2aoRDA35x/sfRdP0jNVTCfgyJaCh2Kw5n5nyTnsZ3d9zafnNPKBM6Fqu1T62JRzhQTh1
         ZwndK3WXvbSap9SJLJFZFXVUHZ4VOVPZqkDYlT+fpDKaa+Qek8HP/QOMki0pW1w8djFk
         NOig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=GFq+S6tS;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XNPckPi1wK5g3O6eYIvmCSNL7ouqYYBCnOJp/GlDaaY=;
        b=O9uYgf/NCLCXqGt5LooVPR8VwXZXr1WBkJgazpEy4mlVAGZF3CZhadJIgPiZA3EYBq
         30Wt+59257IMIoBuZ2GohMOU9e3oW6oLd/3Y7bbyyCwPQGoXZ3m3HWUlAuQdq0gGbY1H
         eRbkPaWPJZOcxUpCXAV+26qhEWVIjw0nWPRIDSVCtJxdCYPx39ljW0S6MvDNxczLaKkv
         Hk5qgAJAqiSBCf2VEa3l0nIsw8VGbp2ik3QLhpQS1aDVRnoWgYdy839HQ6vAHh3ZtR1V
         kMRdutJ5rUzaVzH+D4zUT9jFDUvDk7smOGrLb9JkOm4p49kSLS8/gy1XkJBx7LIxDQ6j
         g0hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XNPckPi1wK5g3O6eYIvmCSNL7ouqYYBCnOJp/GlDaaY=;
        b=BQ+5bLIfgZ+tSC22Esd+XfqnE2Cn9vieROek18GFbslWQnsi2tIUgPmXgTU/uIm9oh
         xolFIgby7D6PYtMynW2WSEeAmOFTK4AU9mNiHrDLaKHvYRuUVrxNKVbyGh2Hr4FrvxlA
         3Yj6teWK4hM5yfqsZFgG/C8BC4qaQwW5+FMel5RVrFrBLyKdQA/GVYoihmXuVOGdk8ti
         +6jkKjCYWW1V8swA2uVw2X3judbmVyeNWgujYf2FFQTzoPqLoa2n/8eOgFueHDWjUwpU
         x3nxHCb0os6EuC6rJW3qc2mPs3ioTky3A052mCqkueYwG+V9iRA1xrSTNZPAUrkhrZwU
         T0/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW9srJztzz/3rUSF1YJfh4VyWgDPplkvVTD5BXFwkF0qYqF4a0n
	cA6E+kj1qG6XIaEAXno9OUI=
X-Google-Smtp-Source: APXvYqx35L1Hf4T0kx/t4iFeGxDii4bE2C5MPBB4bmyIzziozxqIJF+hQoAKjBHWNR8rlydsGu7eWw==
X-Received: by 2002:a25:a43:: with SMTP id 64mr21136808ybk.86.1563975608244;
        Wed, 24 Jul 2019 06:40:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3288:: with SMTP id y130ls4661797yby.5.gmail; Wed, 24
 Jul 2019 06:40:07 -0700 (PDT)
X-Received: by 2002:a25:d10a:: with SMTP id i10mr53693257ybg.101.1563975607920;
        Wed, 24 Jul 2019 06:40:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563975607; cv=none;
        d=google.com; s=arc-20160816;
        b=kRvqT6fHsx18olCkdC1JazzUECl63CEL+W+zCgJyIh6c//kYVOdm6SpG6OLYkT4pMC
         Mbk8JoJj/s3xTvGtjeEDcA2b8fbsilcTepSzXDX23pRi7C89gOcQ01DWrTZyzzxp0Id0
         ouquZvypWgAZFD3rXVeHIGystsCGDoO14m33Pp6N0nmyfHeDLR/M9dk0JbMu8lu62onb
         DqsW5aKE+STY9mJdQInFaTwiW4XFDz15zgkmiwTjB4xi+Xo02fTHkkmzOt8W69zotiMi
         FMnpYNkoItJSZvn5eEGAI9bz1AYsXx90+iPVkOw90l2XskEeTBk5hbXhTYNbkOWbK32Y
         Cy4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=5XZ9K/SwxKdddKyC7k0SqQ29rr6lzsU+b9jBDeXxEMs=;
        b=A6E/DZ19odVm3ycFYYDexpPdGF7S4XDNfCuzU2y4zWozSuW6FrpjajrtlgcWSU3kZo
         ngWL/5+mJfsBsY5RbkBk7CWN3oKtBQEcOg4VErK2+LRrLM61SB8615BQhs8z7POGEk7/
         64MsZrlJNaQdFijtAbEQPekegi4RgLifn50JoHBEN+FRnT26PIkXTdf7FDYdDCDFiq8Q
         UsYBSVUEz5YVmF08Fk2npPrBVKBlKBa5pPcdp40EznhqkVj+6pm3sKWqVbmNOCQ8jQ/q
         l/cRKSHP+IEbM8HnUcAwunJvhiklULwEF74mbvvB3XOuNItJWleyBf92tXeSBz39AVEJ
         jL/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=GFq+S6tS;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id j15si2017750ywa.3.2019.07.24.06.40.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 06:40:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id r6so33784625qkc.0
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 06:40:07 -0700 (PDT)
X-Received: by 2002:a37:484a:: with SMTP id v71mr53222506qka.29.1563975607570;
        Wed, 24 Jul 2019 06:40:07 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
        by smtp.gmail.com with ESMTPSA id f133sm22561094qke.62.2019.07.24.06.40.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 06:40:06 -0700 (PDT)
Message-ID: <1563975605.11067.8.camel@lca.pw>
Subject: Re: [PATCH] acpica: fix -Wnull-pointer-arithmetic warnings
From: Qian Cai <cai@lca.pw>
To: "Moore, Robert" <robert.moore@intel.com>, Nick Desaulniers
	 <ndesaulniers@google.com>
Cc: "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>, "Schmauss, Erik"
 <erik.schmauss@intel.com>, "jkim@freebsd.org" <jkim@freebsd.org>, Len Brown
 <lenb@kernel.org>, "linux-acpi@vger.kernel.org"
 <linux-acpi@vger.kernel.org>,  "devel@acpica.org" <devel@acpica.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,  LKML
 <linux-kernel@vger.kernel.org>
Date: Wed, 24 Jul 2019 09:40:05 -0400
In-Reply-To: <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661869@ORSMSX110.amr.corp.intel.com>
References: <20190717033807.1207-1-cai@lca.pw>
	 <CAKwvOdmPX2DsUawcA0SzaFacjz==ACcfD8yDsbaS4eP4Es=Wzw@mail.gmail.com>
	 <73A4565B-837B-4E13-8B72-63F69BF408E7@lca.pw>
	 <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661869@ORSMSX110.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=GFq+S6tS;       spf=pass
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

On Tue, 2019-07-23 at 20:49 +0000, Moore, Robert wrote:
> > > Signed-off-by: Qian Cai <cai@lca.pw>
> > > ---
> > > include/acpi/actypes.h | 4 ++--
> > > 1 file changed, 2 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/include/acpi/actypes.h b/include/acpi/actypes.h index=C2=
=A0
> > > ad6892a24015..25b4a32da177 100644
> > > --- a/include/acpi/actypes.h
> > > +++ b/include/acpi/actypes.h
> > > @@ -500,13 +500,13 @@ typedef u64 acpi_integer;
> > >=20
> > > #define ACPI_CAST_PTR(t, p)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0((t *) (acpi_uintptr_t) (p))
> > > #define ACPI_CAST_INDIRECT_PTR(t, p)=C2=A0=C2=A0=C2=A0=C2=A0((t **) (=
acpi_uintptr_t) (p))
> > > -#define ACPI_ADD_PTR(t, a, b)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_CAST_PTR (t, (ACPI_CAST_PTR
> > > (u8, (a)) + (acpi_size)(b)))
> > > +#define ACPI_ADD_PTR(t, a, b)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_CAST_PTR (t, (a) +
> > > (acpi_size)(b))
>=20
> We have some questions concerning this change. If (a) is not cast to a u8=
, the
> addition will be in whatever units are appropriate for (a) i.e., the type=
 of
> (a). However, we want ACPI_ADD_PTR (And ACPI_SUB_PTR) to simply perform a=
 byte
> addition or subtraction - thus the cast to u8. I believe that is the orig=
inal
> thinking behind the macros.

I posted a v2 a while ago, and should clear this concern.

>=20
> > > #define ACPI_SUB_PTR(t, a, b)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_CAST_PTR (t, (ACPI_CAST_PTR
> > > (u8, (a)) - (acpi_size)(b)))
> > > #define ACPI_PTR_DIFF(a, b)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0((acpi_size) (ACPI_CAST_PTR (u8,
> > > (a)) - ACPI_CAST_PTR (u8, (b))))
> > >=20
> > > /* Pointer/Integer type conversions */
> > >=20
> > > -#define ACPI_TO_POINTER(i)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ACPI_ADD_PTR (void, (void *) 0,
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
clang-built-linux/1563975605.11067.8.camel%40lca.pw.
