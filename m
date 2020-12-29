Return-Path: <clang-built-linux+bncBC433LF43MBBBYPGVX7QKGQE6PM4HBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE762E72F8
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 19:20:17 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id f187sf1565035wme.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 10:20:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609266017; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q8IqtQJvOV5wCPxBddTSuAZuJN6pQIorRt8DKusyANrEH6oJlbT77xXl1gRUoL9/rH
         /KMZf5edKz+5lJeLfs5MCvawByVi31A8IzlWGf/Y4xWMqlqL/b0Cu5Sv4q8Dx1K3JkUn
         XqeBTyAPHxjECQjTlcpK+VCPZ8TdOnohfqacD3YTwEbfSLV3wIxc2jsV5Yg6cVoev5/H
         cq2hVxLgiigGjpw0tzkg4S35G8GJKc03RyGl2I49MnNRp9bsCCuJJEsMVAuDeDCn4teG
         wAk4lBm/kmUzvbOJ8zzNmfCiu5ZJRJ679walii3ae7IwgTMecO1F0jO6DioGc6JnZHY1
         HCdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:sender:dkim-signature;
        bh=fsTnIdgyPkz/dkw9Ys/PV8HxvXcW8NWqLmdfjySzvEg=;
        b=aAa3WkvgKwsuTBSWFrkrVnWm86lOxmfsFND8+acl0kfs3hBnElpkmkly6gaFtazdYv
         /TfEoLYFWSSITi2bK+AssUQFd0H/jrYI7HNmaGy5CGfh/gENOivlHZR2wrDgrYMiQF5B
         Rf4PGsq9eeu0U9sHOeyCmkLvG/h434GbNI7EljZu2Vl/be0nCPJ7GN44Xglt+fvUOPlI
         WfVOjqT2Z0BIZEm86OYA8kJzW5vEeOPquJpjXTUSdkGcjRv98DjiRd/aD0dEo+4du43O
         DzaapbsQPKPSuNNd8GMmQccAZx0C6TxrJrqnPhUMC40tEv7AwDalPfocfRwDnYS76Ilz
         BESQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:subject:to:cc:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fsTnIdgyPkz/dkw9Ys/PV8HxvXcW8NWqLmdfjySzvEg=;
        b=k0N9CITtnn66j6LZpnN21HPATB53qjy3Tjgkj/eNeBVefZrM5vEm8knh8/VTEGUcy8
         VoR6jGwY5ji5Yol64aPDjbij3mqtuV0voZetvZrFOBV5WTnGtM9jupmZsD0XhR7QV6Oq
         raELXq96ywnCvf6KUSgEm8VG+FnfMZWlMi55r+RbufM3v9OkSS25z944HZWlDKQS6BKB
         xMuapAisurneQkNjJTNGD9SJG6WN3AbL7I1/2smMBpavCgqTTABs1XH1BbKFHb48jiVj
         YFJr+LjHLtm7CmiVWpaNBLq4TNJXoBZhuC01OYyBqbhABIke6ddZF94IqRITgAgj/BD1
         wsSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:subject:to:cc:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fsTnIdgyPkz/dkw9Ys/PV8HxvXcW8NWqLmdfjySzvEg=;
        b=j4qwq8j/7XYsbxL2f0/b/RDPrzvIU6JJonmPA7fvDqq/p6igwZGB/TgQqkaWlUdw7A
         py1qD+tMqDJ6vvts3o4tSueAJfLyCGcfXRDLg7sl9MczH2My5/yCOjHzGhKjHtQY+xXL
         Ao2FGwVt7YPwWKXN8L/PDQcKGK5ZZd+hkJjnL6tYO4EV8onC5yUc4Rv7qUuVou42yhnu
         ZN1EsNcjOHZ0Ls5KJkOCx1M9savZMWuqW16WzuPBH5Pzcosh7+HS8RCTg74SaCKnszw5
         ILcp6pbDVvEShZDelRjgJmdGvgRaw3+0lnp6JLL0AScHoqsxGEZtttMb7qHgLO3BYh1R
         lfNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lYArrfNdOyonqQe239xACoWCWCjHlskQBt74Q5MSK/Eum3pFT
	G9kvcIhuXfTAyMnnJYcgV2E=
X-Google-Smtp-Source: ABdhPJxlvqx5BjwlrFSFZBwm0vT+VzSBXGXYfkS74CKHy3qp8kCQk7kXgXz+NkjPXIbHp7zuEU0KCA==
X-Received: by 2002:a1c:4e0a:: with SMTP id g10mr4505485wmh.51.1609266017359;
        Tue, 29 Dec 2020 10:20:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb0e:: with SMTP id s14ls693750wrn.2.gmail; Tue, 29 Dec
 2020 10:20:16 -0800 (PST)
X-Received: by 2002:adf:f10f:: with SMTP id r15mr57867442wro.302.1609266016654;
        Tue, 29 Dec 2020 10:20:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609266016; cv=none;
        d=google.com; s=arc-20160816;
        b=im7d4HTtCXHnPls7GWf8rF3IOjT/2tNDB7KX+Pz89NJPBr7OpcNqjwixwtlOnBGUrB
         P6gEoTwre9sqOHvP4wLCgCXj2tn6CDzuY6tOo6+FjP6XgziLGmkPocUu/Z1yn1c3FjHF
         AnjHD5pX3YpdqgY2EZl61FNw6sD+Khhm1e1ckdGvz+uLHzjqMtoWmgTI0fNsT8j8ANJe
         T8mN4gPB5jFkrOUFj0QmiwtpH7WfK9593+BakMmJek1ub1/coc0htnqYDH9t37xBuzx6
         +x9MpmTFokPj54NdqVtToiJ1BGM2l0REUiW59xjlXLKL4VdEz7SbY+EoK+PDBVINJAjN
         TWhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:cc:to:subject:from:date;
        bh=+RiRPPVAWbZ+MBu5GuWMOeEA0LXbr8oYZU7ckN7KPJ8=;
        b=y/cR3Yqr02IcvddI2ulIAwAk+scb+RMXCz9jHeYNspodhI00XjhkpMCttB2/uSuBkx
         KcG8hlKinQ7qGuwRfBlnmpBVoDBZ8usV5xJV2oOX/bN2lAX4LHS2UIsesgvJCwkZwutX
         h/LD8Daz0DOP1xt1cbmYuZQ0afPCPhAi83FJ/G2Morbmhk4RYOWlLtmgCIVyXmakaC0g
         i9L4U8UGipcUQgqQoN7bNnTKl3b7eepduulTsb69zUlFjDDBqB4JyGof1U/g5f7TW7+A
         oKNavDsCh5M5+MExgKHJqtCBvX8wvp8hgzHgka9keOrMLau1i91bk0nTuBzkk+TQHCBQ
         a8IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
Received: from aposti.net (aposti.net. [89.234.176.197])
        by gmr-mx.google.com with ESMTPS id o135si114122wme.3.2020.12.29.10.20.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Dec 2020 10:20:16 -0800 (PST)
Received-SPF: pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) client-ip=89.234.176.197;
Date: Tue, 29 Dec 2020 18:20:04 +0000
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] MIPS: boot: Fix unaligned access
 =?UTF-8?Q?with=3F=3F=0D=0A?= CONFIG_MIPS_RAW_APPENDED_DTB
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers
	<ndesaulniers@google.com>, od@zcrc.me, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	stable@vger.kernel.org
Message-Id: <GL54MQ.XG61RLIPAFCV@crapouillou.net>
In-Reply-To: <20201229150810.GA7832@alpha.franken.de>
References: <20201216233956.280068-1-paul@crapouillou.net>
	<20201228222532.GA24926@alpha.franken.de>
	<0JM2MQ.PMKIEAOX7SCZ@crapouillou.net>
	<20201229150810.GA7832@alpha.franken.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: paul@crapouillou.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as
 permitted sender) smtp.mailfrom=paul@crapouillou.net;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
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

Hi Thomas,

Le mar. 29 d=C3=A9c. 2020 =C3=A0 16:08, Thomas Bogendoerfer=20
<tsbogend@alpha.franken.de> a =C3=A9crit :
> On Mon, Dec 28, 2020 at 10:30:36PM +0000, Paul Cercueil wrote:
>>  Le lun. 28 d=C3=A9c. 2020 =C3=A0 23:25, Thomas Bogendoerfer
>>  <tsbogend@alpha.franken.de> a =C3=A9crit :
>>  > On Wed, Dec 16, 2020 at 11:39:56PM +0000, Paul Cercueil wrote:
>>  > >  The compressed payload is not necesarily 4-byte aligned, at=20
>> least
>>  > > when
>>  > >  compiling with Clang. In that case, the 4-byte value appended=20
>> to the
>>  > >  compressed payload that corresponds to the uncompressed kernel=20
>> image
>>  > >  size must be read using get_unaligned_le().
>>  > >
>>  > >  This fixes Clang-built kernels not booting on MIPS (tested on a
>>  > > Ingenic
>>  > >  JZ4770 board).
>>  > >
>>  > >  Fixes: b8f54f2cde78 ("MIPS: ZBOOT: copy appended dtb to the=20
>> end of
>>  > > the kernel")
>>  > >  Cc: <stable@vger.kernel.org> # v4.7
>>  > >  Signed-off-by: Paul Cercueil <paul@crapouillou.net>
>>  > >  ---
>>  > >   arch/mips/boot/compressed/decompress.c | 2 +-
>>  > >   1 file changed, 1 insertion(+), 1 deletion(-)
>>  > >
>>  > >  diff --git a/arch/mips/boot/compressed/decompress.c
>>  > > b/arch/mips/boot/compressed/decompress.c
>>  > >  index c61c641674e6..47c07990432b 100644
>>  > >  --- a/arch/mips/boot/compressed/decompress.c
>>  > >  +++ b/arch/mips/boot/compressed/decompress.c
>>  > >  @@ -117,7 +117,7 @@ void decompress_kernel(unsigned long
>>  > > boot_heap_start)
>>  > >   		dtb_size =3D fdt_totalsize((void *)&__appended_dtb);
>>  > >
>>  > >   		/* last four bytes is always image size in little endian */
>>  > >  -		image_size =3D le32_to_cpup((void *)&__image_end - 4);
>>  > >  +		image_size =3D get_unaligned_le32((void *)&__image_end - 4);
>>  >
>>  > gives me following error
>>  >
>>  > arch/mips/boot/compressed/decompress.c:120:16: error: implicit
>>  > declaration of function =E2=80=98get_unaligned_le32=E2=80=99
>>  > [-Werror=3Dimplicit-function-declaration]
>>  >    image_size =3D get_unaligned_le32((void *)&__image_end - 4);
>>  >
>>  > I've added
>>  >
>>  > #include <asm/unaligned.h>
>>  >
>>  > which fixes the compile error, but I'm wondering why the patch=20
>> compiled
>>  > for you ?
>>=20
>>  No idea - but it does compile fine without the include here.=20
>> Probably a
>>  defconfig difference.
>=20
> # CONFIG_KERNEL_LZO is not set
> # CONFIG_KERNEL_LZ4 is not set
>=20
> this makes the difference. Both decompress.c files include=20
> asm/unaligned.h.
>=20
> I've added the #include, fixed the get_unaligned_le32 in the=20
> description
> and applied it to mips-fixes.

Alright, great! Thanks!

Cheers,
-Paul


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/GL54MQ.XG61RLIPAFCV%40crapouillou.net.
