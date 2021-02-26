Return-Path: <clang-built-linux+bncBD4M5UFGUEERBLUV4WAQMGQES4ZVM3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id B76A3326764
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 20:23:27 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id p16sf510176lft.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 11:23:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614367407; cv=pass;
        d=google.com; s=arc-20160816;
        b=TZfVq/5gbe86TWjB0JmvZlaQkb8y0bxu+/CWMf9EQGMatofGFUZu2MJpFTChlReuws
         5vFAFsAh7wdT6iPABBwYrzBs9NRDTTI7JvhkbD1qdCqtyUshtpuBBgz2b7jv/l4PPmFt
         QHbR7gnUXHdm+43pmQFg3i9mn2/T5IRcqx0d0Q6V5tzp4muDA4vLIPj/D8xmmkeoA86F
         FXsARJPu9J9tthiOmTx72+M7AhikYJ+GQ/N4b6zqu2yzuQbCSOubpwMF11gaAE2Iju1e
         5nITW+Dnd9ndTn5BffMKkBTjYSu+DJjBHbslcjIRa8SzkcnE3zTKetbe+Fl8U3dQSrbO
         LG6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature:dkim-signature;
        bh=gcdtDPfbtRkTxVZtHT+mp2D9nKDuMetKxI2T1RZJCK8=;
        b=HpQj8SR7nuhp4DZ2hhKF4o0OPzmUCJCcnfEl3TyCD/eS7hqHwQpi/HG4HXgwDhP+CI
         gdtdURNshGrKNuvKPZPY747iXaI5PShSTqW5I4TJqbSc7PTtkDJMLE1zH10aFMFgqEY8
         XJpXtIAxstVkdq099SlVI0sctG+zmZl0gkdJEz6+YTu1P71O/X+dnkViGKnZq188LJXf
         mRczOFMqancyPXxK6uWmTZV9VaYQoYcIdcs7AKI1FLsOmX33HJJrBRWxPmAaED12hPpO
         ALXKbTDYnjkmiNJVh8cIV9VmKXXb9mXG2qUhcrIUZ5UsGUteeQUilVwoq7vKuTOyklbI
         /tFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mvJeaORv;
       spf=pass (google.com: domain of alexander.sverdlin@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=alexander.sverdlin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gcdtDPfbtRkTxVZtHT+mp2D9nKDuMetKxI2T1RZJCK8=;
        b=pdc0tfagl/Ibo9BXb2BBEAeG5qjlyej27gsDXYLv4UemwokbufY2A8OoLDVHX6c5R5
         yfJqfayXWv7sT5qugaWMcX/eZaA1x0XoNFDMzrvMvctl8JIM+xQXBipZ9HCI8EWSzjzQ
         PslU//XLlXZQ74PUItZLLxwoSyp+LL5OdS1vh6nQLjlLv4FT5G7Y+MvnE+ySzTk0RKZ7
         jktHk72ykbo3BDMlYBrB6YhQzMbGQJkiNI3kx0c2n4mNJw+ds0hmHRKRkgh6sBfOfFTz
         gsrpvcJVYYIRWOPJISud1rLZeNkM0hjKeHAtXmr/dk8T6HzadLPzEBbo4aiY/h9rR51S
         Jemw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gcdtDPfbtRkTxVZtHT+mp2D9nKDuMetKxI2T1RZJCK8=;
        b=M+Yvl9NgXjnxkNsyFx1jkuijtICEgTZ3QS0XaDBjs3zhf/9RlTVAi0KVPxO6AzlmGb
         9h5AOhmUMk3OPZ1otLZKdw/3mgBzm8fwNotltcdsPNxRrVGDTXsgn8/vmHGlBmaGDYmm
         CXDOhKLCOt1sqh2fE5sIyA6NYgyxlHle/2BmwIgvbFpQJDhTOuoGpW4U+uGaPXU7L1+I
         tZWzucy3zrp3ayUBkvEQbAZUeolEgCermbmbMVM6xxr2CHoZ1oGcisn5dHaWYFIS5wmi
         AV9p7ogNYIxHancbM22eSH2I9LFUrnVEC5BDu1WBvZ6SjjeoGbhBN2XgTRT0iNGh6jiW
         jV/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gcdtDPfbtRkTxVZtHT+mp2D9nKDuMetKxI2T1RZJCK8=;
        b=TYybGCitN3FriHd7o9WrkqmOw6xN93RJZFfi16AU1iZwBxNH90fbqgb3+54U26bTfv
         XZ5EAYv3qSCTHhu3nP/Glu/x57tT9bbUHnjEXwykgZ0q+sHc1yVntCAmPgGjSjnx6tBQ
         TEJ2u9yZzOboE16BETTKQ6fV7dHnXnohubgxDBATR6oSKoLyIaxwEFP8DuhTGzIzIeCA
         2kk1gCiuDYLWd7ZAU1ZD5brqjD8D2wZR06QhEiIVcaJglpWj65TRtKfrhiHhlkutJYNO
         RZ77hb/RdPYVL875lK1BEOhaymBZyaod8dj25Nxe+romHKn0mgfZ9wdu7OWJDs4J1k9i
         0skg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DmBgLK7GN4Rl+H2kYSKjWI0sMax3tAlCy2nSHDRC38KHuWyt5
	8+KXE4idcCfBLmZ4UF30SoE=
X-Google-Smtp-Source: ABdhPJxtatBSnuqMQ2Z3fTw2XVhdFjJyz/yrJkdFJf03fAhuf2Ri3pv1GKESwEHSgwyZTTevIkmYQg==
X-Received: by 2002:a2e:b547:: with SMTP id a7mr2486561ljn.453.1614367407202;
        Fri, 26 Feb 2021 11:23:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ac46:: with SMTP id r6ls1666791lfc.2.gmail; Fri, 26 Feb
 2021 11:23:26 -0800 (PST)
X-Received: by 2002:a19:6554:: with SMTP id c20mr2707559lfj.598.1614367406051;
        Fri, 26 Feb 2021 11:23:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614367406; cv=none;
        d=google.com; s=arc-20160816;
        b=nI0LjIigYQV1EPdQ9I6neM6gFK1D4Wz89cW2UzHEKR0WFg7YcvcgmJYpdhPGVXrGsC
         iYEwQUFCqEIzdzB6hfMSrgt7/6A6PsT5l+uHm6E/jDd2Xa/5XRN54y8H1/h2VvTVdw9D
         OK2fSS8rPYcsIu+w/GBmX1ZaYDdnLRC+o/a3m188lk+GYQHwgea2ZM3owjRyTDvb+3K6
         bRziFxofzpN9YqRwvs/EJHiBaKjSaJC9hcrItCymcgUzAdZ05E3YxPNKisyIWy/ZlRHx
         2DpEFyi1yQj9I1LDG08ybGkhVeFiQFPR23PuAg2RGQK+xaqF3HugwP1zZyEworlph0A2
         3HSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=OsztXS2pxF0mqVb9NZgLRR6d9O9wIrx2e3naQfnixyw=;
        b=ySa03IzIgtwAXSVX/OZU0fm42dbLOYhQ/z2Bwbs7M2RS5VrKRh3DXbr5JRNGgm29fl
         /YFTcHvtBcgJo6iUuMRRng+Un3t6VSiQDmvRlRcT9+k5L9q3rdW5pq9nAdefgvJWc0qM
         vaig4gWjmLmC5nVrASesIJZic/cVQL+2JNbWsAi5Mi+9GVu9PpPSmoqC8WeLTdT1pE5e
         wklMu/VfwuXh2a9Sny61WfJGXrgHYasztCIm/jhwuKRnDsNgfyI5LnNA/X1Bhqc4wHWj
         y31RTMVCVU2cBuGnabGhNIlA4pMA2W4Gm4JWDhyzHdV2eUgx+rFIIIgXzdtT3IdJaA+M
         +orQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mvJeaORv;
       spf=pass (google.com: domain of alexander.sverdlin@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=alexander.sverdlin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com. [2a00:1450:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id j2si329122lfe.5.2021.02.26.11.23.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 11:23:26 -0800 (PST)
Received-SPF: pass (google.com: domain of alexander.sverdlin@gmail.com designates 2a00:1450:4864:20::42e as permitted sender) client-ip=2a00:1450:4864:20::42e;
Received: by mail-wr1-x42e.google.com with SMTP id b3so9626258wrj.5
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 11:23:26 -0800 (PST)
X-Received: by 2002:adf:d20c:: with SMTP id j12mr4729579wrh.76.1614367405841;
        Fri, 26 Feb 2021 11:23:25 -0800 (PST)
Received: from [192.168.1.21] ([195.245.17.255])
        by smtp.gmail.com with ESMTPSA id t23sm13630703wmn.13.2021.02.26.11.23.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Feb 2021 11:23:25 -0800 (PST)
Message-ID: <141f3098744ea8d1cc39abcdce89c0e513bfbc70.camel@gmail.com>
Subject: Re: [PATCH] ARM: ep93xx: don't use clang IAS for crunch
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>, Hartley Sweeten
	 <hsweeten@visionengravers.com>
Cc: soc@kernel.org, Arnd Bergmann <arnd@arndb.de>, Russell King
 <linux@armlinux.org.uk>, Nathan Chancellor <nathan@kernel.org>, Nick
 Desaulniers <ndesaulniers@google.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 clang-built-linux@googlegroups.com
Date: Fri, 26 Feb 2021 20:23:24 +0100
In-Reply-To: <20210226164345.3889993-1-arnd@kernel.org>
References: <20210226164345.3889993-1-arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: alexander.sverdlin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mvJeaORv;       spf=pass
 (google.com: domain of alexander.sverdlin@gmail.com designates
 2a00:1450:4864:20::42e as permitted sender) smtp.mailfrom=alexander.sverdlin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi!

On Fri, 2021-02-26 at 17:43 +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
>=20
> Randconfig builds with ep93xx fail with the clang integrated
> assembler that does not understand the maverick crunch extensions:
>=20
> arch/arm/mach-ep93xx/crunch-bits.S:94:2: error: invalid instruction
> =C2=A0cfstr64 mvdx0, [r1, #0] @ save 64b registers
>=20
> It is unclear if anyone is still using support for crunch: gcc-4.8 droppe=
d
> it in 2012 when it was already too broken to be used reliabled. glibc
> support existed as an external patch but was never merged upstream.
> We could consider removing the last bits of the kernel support as well.

This was my impression already in 2006, that Cirrus is not going to work
on Crunch support. From my PoV it's OK to remove the support in the
kernel completely.

> Turn off the integrated assembler for this file for now.
>=20
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> =C2=A0arch/arm/mach-ep93xx/Makefile | 2 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm/mach-ep93xx/Makefile b/arch/arm/mach-ep93xx/Makefil=
e
> index 86768495f61d..f686577ba059 100644
> --- a/arch/arm/mach-ep93xx/Makefile
> +++ b/arch/arm/mach-ep93xx/Makefile
> @@ -7,7 +7,7 @@ obj-y=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0:=3D core.o =
clock.o timer-ep93xx.o
> =C2=A0obj-$(CONFIG_EP93XX_DMA)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0+=
=3D dma.o
> =C2=A0
> =C2=A0obj-$(CONFIG_CRUNCH)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0+=3D crunch.o crunch-bits.o
> -AFLAGS_crunch-bits.o=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0:=3D -Wa,-mcpu=3Dep9312
> +AFLAGS_crunch-bits.o=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0:=3D -Wa,-mcpu=3Dep9312 $(cc-option, -fno-integrated-as)
> =C2=A0
> =C2=A0obj-$(CONFIG_MACH_ADSSPHERE)=C2=A0=C2=A0=C2=A0+=3D adssphere.o
> =C2=A0obj-$(CONFIG_MACH_EDB93XX)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0+=3D edb93x=
x.o

--=20
Alexander Sverdlin.


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/141f3098744ea8d1cc39abcdce89c0e513bfbc70.camel%40gmail.co=
m.
