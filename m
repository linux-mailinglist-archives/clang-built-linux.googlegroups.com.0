Return-Path: <clang-built-linux+bncBDPL7R4J6AKRBZNWVH7QKGQE3O5JUNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 591432E6B16
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Dec 2020 23:25:42 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id 202sf7613167lfk.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Dec 2020 14:25:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609194341; cv=pass;
        d=google.com; s=arc-20160816;
        b=wkDF51v3skwuBC3QCKwIPDsCW4uVfl8fDTVJ+No5p8rUeBtV5n19+JonCpCB7PKAa7
         teIIBxhY5GjXB+TG2tBROI+RikwvUOnjsVvOoQvD2jLUGvlxPRUhlm3jfeYJD7kxgEqD
         5HsV0LkQJdi18+bJSc9IXy//9+LJlTaV2TCgciTkm4Wb0ASH0HioZ+8P8FiMIRuAi4MT
         yJNPIYFF5sTrZgZVJiUwqiQNY3MXGvSGTKEdNzHG8oYU8wXeWSrp5psnteuOgZWPLA1q
         Ghv2EVpoO/wrAozRWTqQGxJ8pW7XkgcNOYsJLH54SdQiiD+lfPssgGt3vTZzu8WMwzsZ
         v7ZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=JdzzDtNCtY2TLvbSg4tRVHTo/+cS421p0v6lxCTOCpw=;
        b=N2XJ+L3ARi+FGAwpOaH5AMqcOGLHYM7svXt5w+ccoDokTuR8S3yQr+6JSq1MNu8txt
         7pj59v5FIp29uYlAMFhxKRvCxKpPT0vr2ZJ44Y1fkkFPPysJw6zljgFVmvRJ79LyJx4s
         +yxMfk5zga5b8g5dqX45tlUF+F2M6ODENKE9niOsDrPcvaULaSaW0uVYHuLv5Tu/UuK3
         fKRAcnEBPKrKOJe35wO2/uqbaGj83aDlfNmkWLxqkuNhTqQ3J50Ol3RhokqyKc1FcZ5M
         vPCZTKSZ48Xoiumz151L36CiXGsbn9gfjBFdbsNZqzMzNE5tOnKnS5iMzhOH1CCDTce4
         sqUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JdzzDtNCtY2TLvbSg4tRVHTo/+cS421p0v6lxCTOCpw=;
        b=ozh64xgGLx5ko6so5kI2cceJ0z1Y3tm5bJUsWH+zIcQ4d5nHIDpjUfPQTBxM2KQuf2
         dIQu4axQvk0u69ky//LPQjVtU2pTjULZgNR30Kl0bV7cO0yyTVuXbMgmXWFJRrIfU619
         yjkCCDAf5PkyLCiKhy/er59NHMMy5gpdwKdQdhnfOQUV4vNcL/+7oqwWPVRD8CPSizvO
         rDop1uIu1rdsBMieoxH7c8EhPZHfz2/Zw9f1bN8Sv9Yt29O4O5smM98X8/66Rd9QPpFW
         5Wjb83OqRYskku1zlKBaZAVve6L3YscxFg/Dl/tf9NwGWDmK5ZgeeOI6iksxFJHG5zqZ
         r9ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JdzzDtNCtY2TLvbSg4tRVHTo/+cS421p0v6lxCTOCpw=;
        b=d0Kp5d7onQnVxtG6aAO0uwFf3MbnE2hAFETCwjrK9jV34GEPJvxeEoxuV0qvu6glp+
         2PvAVzA5mE5t9tkfbabvO1KIXK8gZdaM4gDA73TdDMTtEw/XdWMPeuSQLSQBwa86NhK0
         wefgFJxkBvGVcYe0C+3CLfxU1eG3rA3hjIdq7cqioO9kEM8ONDzzLbfh9UHYyUKoAyXG
         HIl4B6ukX+IlsO5WiNRql67UChHuzymMoTDHpZLxyavw6lgUkZUOtYBfglDU1uLZb59F
         5DX+MSLOH5vqyI0yUw6F2dRIIji5tTVF4Tm5o/YTfdR0kD6dzTNqSc0zOZJJ9Iqp5cBZ
         wISQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uMwdT4+ss5l4qpLmDH9NV+qGaeOucg29jgrjQ0IzqRUaD4rs4
	FuBHhCLBHiyoPDj+dIgOdSM=
X-Google-Smtp-Source: ABdhPJwt0hJw5FDu8bv6JmZuEGnm6voXi9hszsHymoZH9hGKZII9HCFNU7EVgtjOdDIID+7cCohAHw==
X-Received: by 2002:a2e:bc15:: with SMTP id b21mr23295434ljf.350.1609194341797;
        Mon, 28 Dec 2020 14:25:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8055:: with SMTP id p21ls11651306ljg.5.gmail; Mon, 28
 Dec 2020 14:25:40 -0800 (PST)
X-Received: by 2002:a2e:7a07:: with SMTP id v7mr22237706ljc.119.1609194340851;
        Mon, 28 Dec 2020 14:25:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609194340; cv=none;
        d=google.com; s=arc-20160816;
        b=v6XBomFaAfkFkuY4Jts3t+XuKoKd8o0qOD2/+7aVL4MvCCN7HOXxlsvcopYmw9/TQf
         8SYML3MBsE/Gb/PiRuA1QyMTLf2e4d7EWuFfsSosi0ns1eAH1PszsCR1yLKmyFLK/PML
         fi4LBvm11UIKhqhoNMaM6OBFDaiPS27ksWvLvHWI8UD4Mj9+hBU56e8wZHbUjvv8T7wV
         eiYFQhcAYRw+JQeQ6YYKuP9FqIH4FX3df/2auTBbTrfOlwXtf6loTyr9seIA1GtpINkA
         F8kqp6oCILJhZ67mMMi875dmWtZl5O6QY2XAr+1b2nvhfjBh5ZpH4X15/eB5RjzECjFY
         +oEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=8/1xH0Vf0C5OsaL2hdsfSl4lyI7O+tsVABhGj4dOmJo=;
        b=iIT+VDOrk/Yv+V8hVUM/bjdkx7GIKvmaD4ITfBgcdoeRFraJ0g/4H+byyg9QTq3Hvo
         pz1eLIaweqe0tcocrQ+sjzW8Y+hxQ7ISwf1J8eFBr5E/j4et6ezjmQRSblH9ngNqvpyy
         4jR6IEOiDmWwIcjx0Bx9/SFhQG8qsUJxo0BO/BrAsW30Tfxv9gHVsLK3j1zwbNp6b0MO
         Au5XMsJOqudbGgUnCaX1hwilUf20miFh1mrJUEhs21uM816gntK4Iw3amDieBQDCXKlO
         KZ0TcPiWyLOd90SakZaM+0LPori0jhnDwAwTHCH540jxA0MYCjMIPDjGmhBJlcRWj1Rf
         h1pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id 70si1169412lfo.4.2020.12.28.14.25.40
        for <clang-built-linux@googlegroups.com>;
        Mon, 28 Dec 2020 14:25:40 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1ku0xP-00069Q-00; Mon, 28 Dec 2020 23:25:39 +0100
Received: by alpha.franken.de (Postfix, from userid 1000)
	id 8475EC05C4; Mon, 28 Dec 2020 23:25:32 +0100 (CET)
Date: Mon, 28 Dec 2020 23:25:32 +0100
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Paul Cercueil <paul@crapouillou.net>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>, od@zcrc.me,
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [PATCH] MIPS: boot: Fix unaligned access with
 CONFIG_MIPS_RAW_APPENDED_DTB
Message-ID: <20201228222532.GA24926@alpha.franken.de>
References: <20201216233956.280068-1-paul@crapouillou.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20201216233956.280068-1-paul@crapouillou.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Wed, Dec 16, 2020 at 11:39:56PM +0000, Paul Cercueil wrote:
> The compressed payload is not necesarily 4-byte aligned, at least when
> compiling with Clang. In that case, the 4-byte value appended to the
> compressed payload that corresponds to the uncompressed kernel image
> size must be read using get_unaligned_le().
>=20
> This fixes Clang-built kernels not booting on MIPS (tested on a Ingenic
> JZ4770 board).
>=20
> Fixes: b8f54f2cde78 ("MIPS: ZBOOT: copy appended dtb to the end of the ke=
rnel")
> Cc: <stable@vger.kernel.org> # v4.7
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  arch/mips/boot/compressed/decompress.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/mips/boot/compressed/decompress.c b/arch/mips/boot/comp=
ressed/decompress.c
> index c61c641674e6..47c07990432b 100644
> --- a/arch/mips/boot/compressed/decompress.c
> +++ b/arch/mips/boot/compressed/decompress.c
> @@ -117,7 +117,7 @@ void decompress_kernel(unsigned long boot_heap_start)
>  		dtb_size =3D fdt_totalsize((void *)&__appended_dtb);
> =20
>  		/* last four bytes is always image size in little endian */
> -		image_size =3D le32_to_cpup((void *)&__image_end - 4);
> +		image_size =3D get_unaligned_le32((void *)&__image_end - 4);

gives me following error

arch/mips/boot/compressed/decompress.c:120:16: error: implicit declaration =
of function =E2=80=98get_unaligned_le32=E2=80=99 [-Werror=3Dimplicit-functi=
on-declaration]
   image_size =3D get_unaligned_le32((void *)&__image_end - 4);

I've added

#include <asm/unaligned.h>

which fixes the compile error, but I'm wondering why the patch compiled
for you ?

Thomas.

--=20
Crap can work. Given enough thrust pigs will fly, but it's not necessarily =
a
good idea.                                                [ RFC1925, 2.3 ]

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201228222532.GA24926%40alpha.franken.de.
