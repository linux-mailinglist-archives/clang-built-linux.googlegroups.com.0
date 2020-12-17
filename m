Return-Path: <clang-built-linux+bncBC433LF43MBBB4UH5P7AKGQEQW4HKDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 333C32DCB09
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 03:35:31 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id 140sf9425017lfm.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 18:35:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608172530; cv=pass;
        d=google.com; s=arc-20160816;
        b=bDgAtCj03e+SdTJK70Iz5U6Obq55IQ9rO7mtzanaga4pON1e5NFvvsW27OifkaVbKz
         vXscqUmAx9VJ0XEYfdQUAhUIYo2bAnxwBtCbsa1c7SFo/6zAuCXiSlThrIGXRdDKJs20
         +iRBWQ+PjyBr0gJ3smNEu3cJlLiHAgnrborRLVvBicRnMagX55a5k7+UZMVIqH5HKYim
         eOvdlOQmrRl0/ZgHd/CZ25ugNUtSDYTKq0KiX/Pwp+GXURYCeqI1+q+LXcPj4eT1B9y9
         3cSmtI9y/jmOnKJAcix2aW6DNnym2wu2BrlYDV/CUvD6+QlRqsBYBbpOoSomPh9HtV59
         AK4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:sender:dkim-signature;
        bh=PY+uHfQbvusylBGrsgkoii8EaktrT+lv0sXaShZAi/8=;
        b=FUwVzCG8mRbHLDmRfGb/Qnl/qN96jJgkhceOm+/6aqrHdAYmvrMRmO4ED42Ipo2Lsg
         2IEeLjPLOb6+OzuwB5+WflIXKBGUNwz+PeAjlqtdeTi3o1EfN/+Nba1ORlQKLlJwrzBi
         D7JtKkBLlABuPynQyOAR8IuSpvu6JUq7e8BGrQX1v1k7rv9xLGZ4anZIrOlV86RUXrAp
         yeA8QaOyj4jMtZGM21ctrt6J5RyZJJ5s+3AApyYTQ8RvLWYOccX/xpLzuCxAenWcw+m3
         YI2qhT2jEfrb/iwG/M4XmRfp8DUR9Xtv+w5aSKw4LQXotajAt3Y7bXGqv+Pb/j8Kbx6Y
         rXSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:subject:to:cc:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PY+uHfQbvusylBGrsgkoii8EaktrT+lv0sXaShZAi/8=;
        b=XILmNG7W1TYZaLm8KeQyFImxmhW7UFKO9rfvx+cwrJA8HQ5J/447MDU//Ng/HLMWse
         nvMP9/+Xv8qL3yavDEuKfCqw9x3/xB4rpZ/x/cFfeLn6LreFNhXCNq8BJwzRLddjtpGt
         eU+avUcM5C+r0eYUB1+AJW9MntxlNcLQiYMNJi2TZ1ppdTFwF6IIuxO6d/s0Ump9EZbS
         ax4uZ5Db7VP0Q5XmDMhqnnl5LeMJ0LRmGZgJfUAfbPzlmiu09z1NvONH05wlc5mgV/BZ
         LbkQoQOZfLSEUVZ1CB9bRuQqG2xIpF1vOvTZBTYRkSFpUj8vf8Y8vIwT/aMJMhuZ+aDZ
         TczA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:subject:to:cc:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PY+uHfQbvusylBGrsgkoii8EaktrT+lv0sXaShZAi/8=;
        b=Cbl2B5w7Y+XWw1g7ydllb9WmJtrL/fAcLpACljq7ImWFwXzve+sX1OZ1EeVpNqyi7+
         m6LGk7S9KyYJSBZc4pXlSrJIur9emu7DNC5UsJE8RnI10WNdbWpjZTGEZnxZOY6F9KW0
         MQPyrjcxiCSAlCDDChIRGOe1i/vdGS/VbmL3h/fBixw8zdS7HqZ8AfuWwU/HeyZexQbq
         ndZ+1RgQlB0bcz1lFPgPfMmLCvRiaIdpufWEUrwQD7D2WomQpyz8WewpbHiPMTLcKXhA
         q4Dmw2CGoIQmC07DyTtICAxfPZXIR4pqCIM8lK5URCfJINA9e/Yq7cLJOPKDfd3v9BJA
         aUuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wzsJ0hlUKbIeQtu8vmSlrUl13XoGoO/l/xxp8TxHR9OlIAzSU
	rzkyDQnT2YyeR6jLyxpGQBY=
X-Google-Smtp-Source: ABdhPJzZq4H0jR6Uy1r/jmMFajBnfAous4ArBbNJjsSetRxPaFQP2B45MI5TvK0EZy4QshPw6qPbTA==
X-Received: by 2002:a19:6b19:: with SMTP id d25mr14217329lfa.282.1608172530770;
        Wed, 16 Dec 2020 18:35:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls5069357lff.0.gmail; Wed, 16
 Dec 2020 18:35:29 -0800 (PST)
X-Received: by 2002:a19:f718:: with SMTP id z24mr15531269lfe.532.1608172529562;
        Wed, 16 Dec 2020 18:35:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608172529; cv=none;
        d=google.com; s=arc-20160816;
        b=lBRI48Np1zxoSEpVWdztRfkEz/vmd0LzdUKIzZ6Ej8Pq1eV/OjTpCRXmykDBBeg3u1
         cBl0GVN4SILe70H/vA75s2wFMnlw19Kx5r0u2SEWHMQwkJpZLyzy0X48IX5MrPMOb69P
         SmzUtupW3MmfYC4MeiofE7JTkLV1w+mTs3xpCH0X9aMY5DsUPVcvtepVlhjRS/AcfB80
         BovBEtNVmOKNVH3V643vKRyul+VtNyLoi31LdssOVl7wADf3CGVV177IQZOobOBlg770
         Kp5zadtKtVbsl1IF3Xlvd3Qvvm0pPb1aPdkzIKbtgie5gPykJ3APmoZ5C8+pLaATgqVG
         Hn+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:cc:to:subject:from:date;
        bh=X/GynEUyVorercROtiRpru6DC9PmKde1y+6fOYM1FmI=;
        b=bVMK1ytqxMMeyd7jg0xADwIteKORPy+Yh5D+HEP1YA46c5F0oi2KVGrTKQvPRLwvib
         HmVQvHtVybkDE6phOIvnd/yQPeVcUkA5syVC/0I4IS9+7D2sZjsXQOWoPBNgNu/RgccE
         jQUhq+8sWs0SUauIVRSlkfLXxF8iAfSF9sDsoj/aj8ZC3uAmbNaca/vTxWwdhfW6ouj6
         F+Af2wEMJ4NJsZ+PeuGEgRCkZ8n+TS/JLRyqDnvTUCtfMDzVNRPCodtnB8kEX8jV+bjE
         v7Io/8LHWmGkI3Xyz8opz8T2JQTe+vFf/ZZYPH7Cdp77WrWw4rjaFdaAVOD0Ece8c5jK
         +KwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
Received: from aposti.net (aposti.net. [89.234.176.197])
        by gmr-mx.google.com with ESMTPS id m1si216254lfh.3.2020.12.16.18.35.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Dec 2020 18:35:29 -0800 (PST)
Received-SPF: pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) client-ip=89.234.176.197;
Date: Thu, 17 Dec 2020 02:35:14 +0000
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] MIPS: boot: Fix unaligned access with
 CONFIG_MIPS_RAW_APPENDED_DTB
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Nathan Chancellor
	<natechancellor@gmail.com>, od@zcrc.me, linux-mips@vger.kernel.org, LKML
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>
Message-Id: <QUPGLQ.GMF1AOUMK24W@crapouillou.net>
In-Reply-To: <CAKwvOdnmt7v=+QdZbVYw9fDTeAhhHn0X++aLBa3uQVp7Gp=New@mail.gmail.com>
References: <20201216233956.280068-1-paul@crapouillou.net>
	<CAKwvOdnmt7v=+QdZbVYw9fDTeAhhHn0X++aLBa3uQVp7Gp=New@mail.gmail.com>
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

Hi Nick,

Le mer. 16 d=C3=A9c. 2020 =C3=A0 18:08, Nick Desaulniers=20
<ndesaulniers@google.com> a =C3=A9crit :
> On Wed, Dec 16, 2020 at 3:40 PM Paul Cercueil <paul@crapouillou.net>=20
> wrote:
>>=20
>>  The compressed payload is not necesarily 4-byte aligned, at least=20
>> when
>>  compiling with Clang. In that case, the 4-byte value appended to the
>>  compressed payload that corresponds to the uncompressed kernel image
>>  size must be read using get_unaligned_le().
>=20
> Should it be get_unaligned_le32()?

Indeed.

>>=20
>>  This fixes Clang-built kernels not booting on MIPS (tested on a=20
>> Ingenic
>>  JZ4770 board).
>>=20
>>  Fixes: b8f54f2cde78 ("MIPS: ZBOOT: copy appended dtb to the end of=20
>> the kernel")
>>  Cc: <stable@vger.kernel.org> # v4.7
>>  Signed-off-by: Paul Cercueil <paul@crapouillou.net>
>=20
> Hi Paul, thanks for the patch (and for testing with Clang)!
> Alternatively, we could re-align __image_end to the next 4B multiple
> via:
>=20
> diff --git a/arch/mips/boot/compressed/ld.script
> b/arch/mips/boot/compressed/ld.script
> index 0ebb667274d6..349919eff5fb 100644
> --- a/arch/mips/boot/compressed/ld.script
> +++ b/arch/mips/boot/compressed/ld.script
> @@ -27,6 +27,7 @@ SECTIONS
>                 /* Put the compressed image here */
>                 __image_begin =3D .;
>                 *(.image)
> +               . =3D ALIGN(4);
>                 __image_end =3D .;
>                 CONSTRUCTORS
>                 . =3D ALIGN(16);

Actually that would not work (I did try that), since the 4-byte size=20
appended to the compressed payload is inside the *(.image) section. The=20
code that appends it (in scripts/Makefile.lib, I think) doesn't seem to=20
take care about aligning it to a 4-byte offset. I have no idea why it=20
does with GCC and doesn't with Clang, and I have no idea why the=20
compressed payload's size isn't aligned either.

> The tradeoff being up to 3 wasted bytes of padding in the compressed
> image, vs fetching one value slower (assuming unaligned loads are
> slower than aligned loads MIPS, IDK).  I doubt decompress_kernel is
> called repeatedly, so let's take the byte saving approach of yours by
> using unaligned loads!
>=20
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks.

Cheers,
-Paul

>>  ---
>>   arch/mips/boot/compressed/decompress.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>>  diff --git a/arch/mips/boot/compressed/decompress.c=20
>> b/arch/mips/boot/compressed/decompress.c
>>  index c61c641674e6..47c07990432b 100644
>>  --- a/arch/mips/boot/compressed/decompress.c
>>  +++ b/arch/mips/boot/compressed/decompress.c
>>  @@ -117,7 +117,7 @@ void decompress_kernel(unsigned long=20
>> boot_heap_start)
>>                  dtb_size =3D fdt_totalsize((void *)&__appended_dtb);
>>=20
>>                  /* last four bytes is always image size in little=20
>> endian */
>>  -               image_size =3D le32_to_cpup((void *)&__image_end - 4);
>>  +               image_size =3D get_unaligned_le32((void=20
>> *)&__image_end - 4);
>>=20
>>                  /* copy dtb to where the booted kernel will expect=20
>> it */
>>                  memcpy((void *)VMLINUX_LOAD_ADDRESS_ULL +=20
>> image_size,
>>  --
>>  2.29.2
>>=20
>=20
>=20
> --
> Thanks,
> ~Nick Desaulniers


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/QUPGLQ.GMF1AOUMK24W%40crapouillou.net.
