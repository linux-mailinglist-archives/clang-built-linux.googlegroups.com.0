Return-Path: <clang-built-linux+bncBAABBLHY3SCQMGQE2ZDJRLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 476343983D0
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 10:07:10 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id t19-20020a4ae4130000b029023950cb8d35sf1023997oov.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 01:07:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622621229; cv=pass;
        d=google.com; s=arc-20160816;
        b=0sQx5MF3Ahs3SoqpdjeMSC4G612lP4Vxd+M+XegIaHovFIb312Zxv2zDDVG5ik2ie9
         d1ArWLADxyp8/FAVEQLevsCdpDKCJ6rTm1e9nMfeFS5F7yqlwUA9DAPweBR9PIq84nVv
         PEShfgNxzbFg3LwntFQcWc4dOiTbcSmGPELKvuIkWJUuDdX1aOpqscsFCmkUFpUUH7/H
         VKYvuJbPG911XYiUQoeK4hZ8cu5+VbdEhCNyuCMivr329UpNz3VcbBXre04xO8hpVQMK
         Bciacone/fB1RaaLg1MFrxw54+rN9Iv4Lr/iKKJAZFbn+cjFL+a8Lo//6wVscpy0sZOG
         BywQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=1eNaS3iIU9uP1VIKIAUoKK3guys4BMr2C7pqNf24xPM=;
        b=dZaPK/a3PGn/gxmLfyRpFjZhuIXZN9DzEVevoelooqN1omWcOmoxFUblxgCf1RtqXv
         BmSrVyj/AbwLmTgAB4Nacfxs1CEDEvjbRXZdWsmtnokzExhbhqkkaXhlfchinHkYxbmh
         Ib/bSX34k5s71JYrMs1jZR5wRt5yRfpsrZt9BYeEM6/9g0k74skAWkhOxkeNUOXxdW2I
         vfyg/lQOiXk6rrsbjp04N9L3Cu9dhP34NPU/hQHgvH0kyaHlW9w/MAdx6knAWuF/UYDJ
         4uS+3NnBx9p7yuM32RDinKa8/KmfRACO/PwQ1Oh/4/5DjUYw4iRf1VeUhaKpfsyEe+YQ
         cTxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@email.cn header.s=dkim header.b=lX67xDTA;
       spf=pass (google.com: domain of bobwxc@email.cn designates 43.250.32.171 as permitted sender) smtp.mailfrom=bobwxc@email.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1eNaS3iIU9uP1VIKIAUoKK3guys4BMr2C7pqNf24xPM=;
        b=KwTLrRFXHP7weN2vPF7zNEB+CDHtPh57HFIOxC5Yi2MtUT78iCJPznAhezvSyzqcDP
         vluLZ2xCYqhdfgtJ+0YpGrQf81mUUcK6B5Qu1lirJ0mL9D81+olpMwh23DXBHsgK6HZg
         +Wqe7UYd5pQ/V91oTTLPGIzXjSJBhcCLBuJU5F25aHWY6/QtKSRx0sES7jrnNPyqIMQG
         j/7QQ5Ms/liKFruFa/MWU6S4WHgZl5XtuTjet9OrTT0funpGluk90REdCq8tBBMcWkxc
         aeeU19TOAzpY5ugJ4Mx4sZ6eRQr3ACcMIwpukksXcUXQXIA8/Uk6E0CYDGSL2bAm5GxK
         wvKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1eNaS3iIU9uP1VIKIAUoKK3guys4BMr2C7pqNf24xPM=;
        b=gH08H4I15wZmRxTWQb+AnwFy8QHYfiPKV1pv2eLyAfxWZGfloEXVXuKej3eQuSJIAH
         X6yTVrWM8ocoum8WsQGvmeNKoyYRg4NTNAv7dwMgRFjdcx1GYPbLRkCA3diz24GpxuRm
         v/oMLVfJgpyGBMZjE41K/o9ECvSTV80MI7PYOwSmRUylCUSAo4DJajJ247hP/s3ZGHb+
         bRhOKxjHDKh34IBAtZ1L7aHcjiMCrEjY/XqXYm+3jfIcZjPMzoKLiBbGlazcj6/uJIPh
         pzR/v7ulEDniyboGr3USylmaZj9ITJ5Go+B77gmNeh0V/rz8Fq0kKa0ligdPoZ10za2H
         JwqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532X+nWCzGCe8rF9b/Mxi2GfihdzlRoPnuCIOEo3biOawK4TAeMF
	waKWbWMAhzpqO6bbkkZ/Jxs=
X-Google-Smtp-Source: ABdhPJyI/JK8rl9VQIftEt2HM4jYV6kiEvJqGj55Iq8Aiy38C+z235vuo8+FC0op9tIK7wiftmyNqQ==
X-Received: by 2002:a05:6830:2143:: with SMTP id r3mr25892928otd.165.1622621228830;
        Wed, 02 Jun 2021 01:07:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2093:: with SMTP id y19ls1582334otq.11.gmail; Wed,
 02 Jun 2021 01:07:08 -0700 (PDT)
X-Received: by 2002:a9d:8a7:: with SMTP id 36mr24963113otf.287.1622621228228;
        Wed, 02 Jun 2021 01:07:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622621228; cv=none;
        d=google.com; s=arc-20160816;
        b=kKLw9i9DZzFBifayE6cmeiJd7ZFUN4gSFKoCgZmYor+VlL/PRnjLGN9TbFX3M9O/QO
         vdz26vTj8nYPyO4KZtwcbFDLGU27VShRitwV1XFtiuOtwJCqYlMxZhZobNDWNS2l3vzF
         gZMzR0Z82glNgkNh5qvFK1EhMUTqDLkrHjAgWYXrdXL77wJoR8ECwFUYDAgtvMubTS0u
         4gRrUsPdZdWlypR+xk1SLrthG9VIzgMjaQ5THUC7yWH2MPQuyrr5IoprpJ1x4gqdh8B2
         m8pa8qBgHzKnUT83su7hRtYK8JeZZNyzSaDMwxXr4o+63vI0h3nZVoZnwfRRnKSIaE9p
         mP5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Qe7DVUGWTLR45yFMoXN0MFJz0EI9ND9xibka/59j2QM=;
        b=UkIi8ssL6jFcGiIqJV/8/78CyuWYxAlp0fjNiXUZHXq0ev94tmKvAlUEUhDO5G0Nm3
         uhEyq8uyF0qsi8aM5Y0otsSOM8vusDSiZDMWV+uSI+/cJPNVv4/sI4q72DRyeP7Y0aEr
         gb1MMzGbhf9PGgXkXzMZkds8m++SNo7/C5yu2WucGObKDnzpUrhE6x0WmKTvCCrxekhk
         s7l6xn/T8qNzHmoX2AKpL1hEjrM7G9NasUN3q91sqRKGYFPpHRNXvx/rjH4Z812CdGlr
         OuA+mMDHD1vQ4a0qU4bi0UWC/reHvwvKquDMlHL5sDkvXRld34btuAFIu1/SJLa7eTlB
         VXFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@email.cn header.s=dkim header.b=lX67xDTA;
       spf=pass (google.com: domain of bobwxc@email.cn designates 43.250.32.171 as permitted sender) smtp.mailfrom=bobwxc@email.cn
Received: from email.cn ([43.250.32.171])
        by gmr-mx.google.com with ESMTPS id c9si2220474ots.4.2021.06.02.01.07.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Wed, 02 Jun 2021 01:07:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of bobwxc@email.cn designates 43.250.32.171 as permitted sender) client-ip=43.250.32.171;
Received: from bobwxc.top (unknown [120.238.248.220])
	by v_coremail2-frontend-1 (Coremail) with SMTP id LCKnCgDXnUD6O7dgvSdUAA--.8870S2;
	Wed, 02 Jun 2021 16:06:21 +0800 (CST)
Date: Wed, 2 Jun 2021 16:06:18 +0800
From: "Wu X.C." <bobwxc@email.cn>
To: Jiabing Wan <wanjiabing@vivo.com>
Cc: teng sterling <sterlingteng@gmail.com>, Alex Shi <alexs@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Bernard Zhao <bernard@vivo.com>, Fangrui Song <maskray@google.com>,
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com
Subject: Re: Re: [PATCH] docs/zh_CN: add translations in zh_CN/dev-tools/kasan
Message-ID: <20210602080618.GA13557@bobwxc.top>
References: <CAMU9jJqwEvzp9T=A2dd-dMwTB69H==3G_ba0wnAw_pTenwdjvQ@mail.gmail.com>
 <AJsAIwDhDrLmLTPKOHKvbark.3.1622615414473.Hmail.wanjiabing@vivo.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xHFwDpU9dbj6ez1V"
Content-Disposition: inline
In-Reply-To: <AJsAIwDhDrLmLTPKOHKvbark.3.1622615414473.Hmail.wanjiabing@vivo.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CM-TRANSID: LCKnCgDXnUD6O7dgvSdUAA--.8870S2
X-Coremail-Antispam: 1UD129KBjvdXoWrKr4DJFW7AFy5GF1kXFWrZrb_yoWxurX_X3
	yUA3W2kw1qgFyDAa9aqw4fAFZ3Kay2gFnYqFs5JwnxJa97XFs7Xas2vFnayF95Xrs8X3sx
	WFs8X34avw15ujkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbzxYjsxI4VWxJwAYFVCjjxCrM7CY07I20VC2zVCF04k26cxKx2IY
	s7xG6rWj6s0DM28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI
	8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E
	87Iv67AKxVWxJr0_GcWl84ACjcxK6I8E87Iv6xkF7I0E14v26r4UJVWxJr1le2I262IYc4
	CY6c8Ij28IcVAaY2xG8wASzI0EjI02j7AqF2xKxwAqx4xG64xvF2IEw4CE5I8CrVC2j2Wl
	Yx0E74AGY7Cv6cx26F4UJr1UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvEwIxGrwACI4
	02YVCY1x02628vn2kIc2xKxwCF04k20xvY0x0EwIxGrwCF04k20xvE74AGY7Cv6cx26F4U
	Jr1UMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7
	xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xII
	jxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw2
	0EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x02
	67AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7xRRJPEDUUUUU==
X-Originating-IP: [120.238.248.220]
X-CM-SenderInfo: pere453f6hztlloou0/
X-Original-Sender: bobwxc@email.cn
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@email.cn header.s=dkim header.b=lX67xDTA;       spf=pass
 (google.com: domain of bobwxc@email.cn designates 43.250.32.171 as permitted
 sender) smtp.mailfrom=bobwxc@email.cn
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


--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 02, 2021 at 02:30:14PM +0800, Jiabing Wan wrote:
> =20
> >> +
> >> +=E8=BD=AF=E4=BB=B6 KASAN =E6=A8=A1=E5=BC=8F=EF=BC=88#1 =E5=92=8C #2=
=EF=BC=89=E4=BD=BF=E7=94=A8=E7=BC=96=E8=AF=91=E6=97=B6=E5=B7=A5=E5=85=B7=E5=
=9C=A8=E6=AF=8F=E6=AC=A1=E5=86=85=E5=AD=98=E8=AE=BF=E9=97=AE=E4=B9=8B=E5=89=
=8D=E6=8F=92=E5=85=A5=E6=9C=89=E6=95=88=E6=80=A7=E6=A3=80=E6=9F=A5=EF=BC=8C
> >Delete the spaces before and after KASAN, these spaces don't look good
> >inside the html.
>=20
> I'll fix them,thank you.
> BTW, how about other English words, like "SLUB", "free"?
> It seems most english word in this document are surround with spaces...
>=20

Now we don't add spaces between Chinese and English.
It is easy to add spaces, but hard to remove someday ;)
I think the "space" should be resolved by format control like CSS or
xeCJK (yes, latex's xeCJK will control such space).

Thanks,
Wu X.C.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210602080618.GA13557%40bobwxc.top.

--xHFwDpU9dbj6ez1V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEERbo3U5kJpaCtFl1PtlsoEiKCsIUFAmC3O/MACgkQtlsoEiKC
sIVg9wwAuX8z8mM7cHYe/Wv0KjdN3jDlR089Cuq1f2ASG32BKLDMDzrqjN1cDIL8
QYnqTyph/Rjmx6Tmc7aUPxSy+k2K0XnKGn73FIeqI2aFp9l20Ixj01P7WqrwZJjV
f6kBI83DA3dq4x5cSxgw1S1n4T/hi7DI4FIcCPXIWXJ8oBcyZrtL0mm2W7bipKYP
15cw60hhhvzTlIvKTrdX1Tp9oORraCAdFms59pWGsVxqSYkv1AAzHsmktjiJRuiR
N2LzN+hSFmfpSUpsvEUG5Jwnp8pQBBtwdwP51rhjbgmbCCYLRTcluY7tDBTbXtNW
8HYFyGhQQ5v0IQgmqqWwBp19V23MeYMqcmF65d36CYDt9W+7sjvaV4fE0S0fceRp
gIVK2D1jn1WdSyawFqkrdIwilvy0W2kf3DTF65jm3kyeQyWBre6/Rn1FnbwK66Sp
hddbOrJknXjEiSWwSe52dczRf2xXc+75SqJuqN3x+AEOZeEthGS80rP/+uTFe7kL
4ACod2EB
=WKFE
-----END PGP SIGNATURE-----

--xHFwDpU9dbj6ez1V--

