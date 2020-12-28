Return-Path: <clang-built-linux+bncBC433LF43MBBBGFZVH7QKGQEDYYCUUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9102E6B18
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Dec 2020 23:30:48 +0100 (CET)
Received: by mail-ej1-x63a.google.com with SMTP id u15sf4308238ejg.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Dec 2020 14:30:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609194648; cv=pass;
        d=google.com; s=arc-20160816;
        b=Curfa96ptLGnIQIjX0dYnCHcW5VFPvpuSo3f8Zuqj0QV3aeNXFY5YgHJ/HAxRXKuza
         HmAQEhOa5koBqZgnuzq+KdaxXMD5obT7EPWzYaiDx1e+dGU0LAS0Q4cKOSGjtjVHZF7J
         QhMtLBFrGy8hFl1tZHqkGpmJSGOWOxEOFlk0h8aIP9yGGdT79GfnknH2HBM+rQH1Yz2W
         yRUAP8K4jGL6Ss9SFjG6QZKpS83zjv+hll7dCQ1Ldoyl/nDlf0gLNdKeDLpKA/W3c2ZO
         Av9FdAftvGyf4aMfkBd4Z2xh+m+bhFwJGHQP/85HLUhX9klA7Otnhc2ntGu5GiUA8mDY
         +N5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:sender:dkim-signature;
        bh=WZEWx+O6PpQ6CRh8bHh3LShYGSKEHdSjVxTi419GA60=;
        b=hIMli2TDhkLTUfh07DOdEBh/AWQ22jD/PbftrreCF7RRosR8wJrMaMLekinroYCGlC
         mDY4IFGBM6xLztFAWEcdN63M5XMZpJm8B1fmUKy834He+6oYPBqRSCJ/XjndTQfVE9w0
         hRbOTWfYYN81GCFxh0n4ToEehk7zwR0Wd+O6uHAL99zQOmjgRw4Ies0egtHAAo7hiVXa
         vaLxr2kwdC/AXbOA7NOiuTRG2eRkDDrp8AXCkDUKQ+Kbhfj2V+YD1tPP+c+OqvSJJRQL
         9TO8/edl51GYnKpUNE9yhHLRE05lK1F2Thr1Xy5ISEQxz2hnnFs5SzY7oBjQIbLX3ZHv
         inqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:subject:to:cc:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WZEWx+O6PpQ6CRh8bHh3LShYGSKEHdSjVxTi419GA60=;
        b=qscfWeLhBv9FtW6h4WDNGnwfdU8F8oVtJg+VjKk2Ll8UKygffmB0V2cUnvKkSCNCY5
         mdAEsW/4YfvHKS7PMzLHs9febflBBC6ec3xtDc4LJxW/bI9XmxbooLENVa8ELkSMTOg5
         pgXYX7YpWwcWS7cQKELgNb2I82kl3bAHuRfUpLjrWX5Yt+o0AyAZndAiWrybEAtz+MM+
         yhYbwc304sxyHJJFq/93Q9X6aMGNdxxUdjuAWDfpDSt9C5H5N6Ny+CsoTM2429jORFwa
         8Eg/+5+eNli+qZifjwsMn3oENx/CG0h6CuAYPNSM4bit36J7146qvwIasZOMGYO9DRij
         YeGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:subject:to:cc:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WZEWx+O6PpQ6CRh8bHh3LShYGSKEHdSjVxTi419GA60=;
        b=mKTBdbT8QxJJldMQ3IoIzN4sUdvziAepf/2H0kHHGfZhQh1pNMQlcgGNDok2B2D2X8
         LP+7s/2JM2n1sSE6VWZnYX/FpM3vWksHHzXipGy7I3i7FYCg5C12r6cmkPZr+V/iPYYp
         tmkBCM9hebKxSii34UnqMbo2gAH/nSk398Azs6U1kIsYdATrbnr7lCzmaNMNxYsV7kbt
         oxyRLfLylyQfGMGISDu2ZMr/Wx7eQ1+UKVKPYLYfEWLLI790gBWO6e0cIqmXJNWsslts
         BYRM1VWK5qf2i0uvrw8i97xVaJvJgXjXRRF7do7tqGV+Cd9qfHnwRNjlNBB4LjoLj5fe
         7kAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533U2chlB1hHNBum387x6ZVy9spMCcaeX5igTf+GCJz4t6bmpUvM
	SWQoVqqi8Q7b4DTdN6J22Ns=
X-Google-Smtp-Source: ABdhPJxDdZW+NaaGfKCyRReomI+0ZPXtaApwQLn37gi/7d4gZ0pmLvd7twWuPf4mgv12CXM6jMuVVg==
X-Received: by 2002:a50:d88c:: with SMTP id p12mr43920572edj.370.1609194648639;
        Mon, 28 Dec 2020 14:30:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1432:: with SMTP id c18ls341994edx.0.gmail; Mon, 28
 Dec 2020 14:30:47 -0800 (PST)
X-Received: by 2002:a05:6402:2377:: with SMTP id a23mr43499377eda.34.1609194647848;
        Mon, 28 Dec 2020 14:30:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609194647; cv=none;
        d=google.com; s=arc-20160816;
        b=OPxSkR5eWLQAmcBB/7hGjhLJgLZZ73ofxR5aS6npx9YHKmqAmDgBaZwoLiTWVvsAxV
         btA9Zbuw1IPj9T1kZvnUwnq4zwrr66X69RooFp5pJSLXH2nP/pok5d+VbIbhVdSz+0Yi
         1eXKy96136uhkVHoAPDDiUB0KTn5IDvlbXggJ85L2mjFVZj853l6Wi/jFOo9hhp1afbP
         p0V58aRTDBSMGY0Gas69uFrf7rtEHZZy9QLdJspfRIpCLQKF//KuHfduImOAxwjI7iBs
         Zcspvm5RKY+xQBAMetB1yWWERk9c98RRnXr6Y3UwA4ddjZKWdfDSzp3mXKMkwLWNHoTX
         gfGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:cc:to:subject:from:date;
        bh=2YKSwhsmVaDlQ2BNDVsC8EmlP5z1iX/mCwgPUo3DZcI=;
        b=KgHQK0ylmGJ/nCfmjOAX9v3k6YC7XUGpXTe/bCH05++eNTp+nn0JaLQ8ZfCnDco45a
         aS67jXRkZqRKsrY1iJAQxoO8abwKrWbqc4vGdVRl6c+zKRGNKzzL4eiQpR7jk066XJ8+
         ZbrugyHDicPoKXAUG1D930zv4Ns/82v2GWtw3Ff4AfRRZa2ix3lBzeG5t4+lOirvx6nL
         Wr/hHNNojenFzcL308xLkfQvmNMYhRnE5mB2tyFiiy0BKcyHH1RDucl35gEcSzHXRNHX
         xqe9z0H/p/Fi2PJXttkmg7H5Ds9tFe24xPXqlFTd98Z2H2yFN3n+HWPgH8mQ1YJfSlQt
         RYxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) smtp.mailfrom=paul@crapouillou.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=crapouillou.net
Received: from aposti.net (aposti.net. [89.234.176.197])
        by gmr-mx.google.com with ESMTPS id i6si1015982edk.4.2020.12.28.14.30.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Dec 2020 14:30:47 -0800 (PST)
Received-SPF: pass (google.com: domain of paul@crapouillou.net designates 89.234.176.197 as permitted sender) client-ip=89.234.176.197;
Date: Mon, 28 Dec 2020 22:30:36 +0000
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] MIPS: boot: Fix unaligned access =?UTF-8?Q?with=0D=0A?=
 CONFIG_MIPS_RAW_APPENDED_DTB
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers
	<ndesaulniers@google.com>, od@zcrc.me, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
	stable@vger.kernel.org
Message-Id: <0JM2MQ.PMKIEAOX7SCZ@crapouillou.net>
In-Reply-To: <20201228222532.GA24926@alpha.franken.de>
References: <20201216233956.280068-1-paul@crapouillou.net>
	<20201228222532.GA24926@alpha.franken.de>
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

Le lun. 28 d=C3=A9c. 2020 =C3=A0 23:25, Thomas Bogendoerfer=20
<tsbogend@alpha.franken.de> a =C3=A9crit :
> On Wed, Dec 16, 2020 at 11:39:56PM +0000, Paul Cercueil wrote:
>>  The compressed payload is not necesarily 4-byte aligned, at least=20
>> when
>>  compiling with Clang. In that case, the 4-byte value appended to the
>>  compressed payload that corresponds to the uncompressed kernel image
>>  size must be read using get_unaligned_le().
>>=20
>>  This fixes Clang-built kernels not booting on MIPS (tested on a=20
>> Ingenic
>>  JZ4770 board).
>>=20
>>  Fixes: b8f54f2cde78 ("MIPS: ZBOOT: copy appended dtb to the end of=20
>> the kernel")
>>  Cc: <stable@vger.kernel.org> # v4.7
>>  Signed-off-by: Paul Cercueil <paul@crapouillou.net>
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
>>   		dtb_size =3D fdt_totalsize((void *)&__appended_dtb);
>>=20
>>   		/* last four bytes is always image size in little endian */
>>  -		image_size =3D le32_to_cpup((void *)&__image_end - 4);
>>  +		image_size =3D get_unaligned_le32((void *)&__image_end - 4);
>=20
> gives me following error
>=20
> arch/mips/boot/compressed/decompress.c:120:16: error: implicit=20
> declaration of function =E2=80=98get_unaligned_le32=E2=80=99=20
> [-Werror=3Dimplicit-function-declaration]
>    image_size =3D get_unaligned_le32((void *)&__image_end - 4);
>=20
> I've added
>=20
> #include <asm/unaligned.h>
>=20
> which fixes the compile error, but I'm wondering why the patch=20
> compiled
> for you ?

No idea - but it does compile fine without the include here. Probably a=20
defconfig difference.

Cheers,
-Paul


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0JM2MQ.PMKIEAOX7SCZ%40crapouillou.net.
