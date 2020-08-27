Return-Path: <clang-built-linux+bncBAABBE42TX5AKGQEMCMANDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C94253D61
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 08:05:07 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id z11sf1522694edj.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 23:05:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598508307; cv=pass;
        d=google.com; s=arc-20160816;
        b=YDbSda7vY6e2zEbPhSv20TysTBM8jAtMG03z1GzkSaJyynLoU1qQg4qJwKXz0SIzxb
         RN5G1urWTbyDfvWhuXKflj4kPCmxpiql3RTNcI1Ja2xhPLxXYZiWaFI2poJWppgMqC+P
         3klcdD2MLSHW7rXzY2r2ZjAuqYFy0KKppx5l79uKZ56jbl114b2Z2MbOSyPsBxaHb7Ap
         gKweafSPVRX59ezV8rmyGXq2sOLkuC3HXJLqj3bazjRQOieXaDPyDHPiGGX+7ww32Ys2
         yklo7/qitLKAVHP0jPAfJGWOfzFQp0PWno8TK6RGqxjSUUAb5xVLbqyOkQUJPA3KP2cv
         2Jkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=gfHId+N2+orxBaM2zNeorfJx2VEZDkhXmHtzgKKOBow=;
        b=bJCSM/GrBWaq5sjkpHCGQrq3ru9gI0BMg8+lr4PpoYmOMRLAfkyLXhx1v/7w6dNyRJ
         +MhKWvrxK3zAp0H6EafBOU51LzRxLoGfWYycYTGlIJzwBPTnpjrSGL9uVV67Vn6NejYR
         XBwLDINnyaXza458tHySydN93PBthA1gAUghdjscG7J/dyib48F3a7eJyWkdoD7v5y4R
         kP33pAy4/c+G5sBgh/C1sS+o6VY786HPPRjEvDPHvUwyiBvyTEXAql0zlMx588l8hLZg
         RlRXsjtv3AwJIChYo9apr7fc0ooKP6nNcuxp+ytNAlZEuV8C60l4Ol20oyRhisHQ3cDh
         ISOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gfHId+N2+orxBaM2zNeorfJx2VEZDkhXmHtzgKKOBow=;
        b=qHAEPyuAeo038FUedFTOQ5/H4G2STiDHvYnd7dSTLf2/QMQzXSiolRWBGv9ovBwI7l
         XIk1gVeum1TuaIh6nf2lCX8VlWEnTQhriwX1sST88ShRRiZHqMYRNJxXEOFtgvqMxe77
         7wPSS1zigy54a/AcTYr+UK/zNvmB9lvkUZNC1PudZGXyPqKAHvMN9rtPPVAG//1bgEUT
         eivu5i0HlwM11BBH8hnXZYBmyQxlqEnxl8y37u3VtDDG8f+yFK4jb/VztPDAjEUvovjm
         1nsrpOZj5Q9paYDDfqc7x6Oi0rLnFGxbvt13fI2pBLXx/9DGhKdYMlKnovDqgPOgQHUs
         UO8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gfHId+N2+orxBaM2zNeorfJx2VEZDkhXmHtzgKKOBow=;
        b=tXPr6Wk5huBVosTNSShCun1Szdtcedo4lstOr1HR+bcoHa4Data6bOFrIbV46bSlSe
         su7AHC7u0AfHaPidt9CuVD2oY2Y9vmPy8dj7JX3TkrLGBoVSvfDUR5AX4zBzhSXNmsGl
         bzfE/iWgBIOw6XladAlm12TSyHdMJQagp/g3CvUukcB3xa8n9+1QrdNDALIawcVJO3Ia
         tOJbXV8M/81lRGQ4fugnZHPKDuJdYDGfxMaGjxpYtAIg2EcfrcHo/PgoHTv8m8dJEooi
         Au14hT2kCb6wiC1NDZ5s9vdnl+AfDYfcCg/V+j4JwK/CIW7cRl7haB9Fi0oJPwul7xoH
         LYvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314yx1LFnSQFvR9OQDG9uf/jHwWA+kx68uUopg7pzsM0YJB9mYs
	sC7z5KHj/gJRnNPetux4TTQ=
X-Google-Smtp-Source: ABdhPJyp7ejwIj4WrHgYM2T4LuGW+a7450ngrJPX9tAvPWJhV8fT/FxZSo0W2KJV8af+Ci3jNZ38BQ==
X-Received: by 2002:a05:6402:15:: with SMTP id d21mr6083260edu.324.1598508307409;
        Wed, 26 Aug 2020 23:05:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d342:: with SMTP id m2ls1124929edr.3.gmail; Wed, 26 Aug
 2020 23:05:07 -0700 (PDT)
X-Received: by 2002:a05:6402:1d97:: with SMTP id dk23mr7242906edb.350.1598508307022;
        Wed, 26 Aug 2020 23:05:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598508307; cv=none;
        d=google.com; s=arc-20160816;
        b=WyxZhmr34C/80Iwr+jyfEfTpaop2XkFyLtWylxTXVs6WzNTPy+WyG5pNhPHU611l2+
         2MUSFxsUtC/JMKMiSrtJ38/X+GeB8oBBLD8mUpjeqVKwCSBd4qUDqsjb5l7PLFvcfJf3
         TCrBtKGDwzeXg3/KsDrQpuUZZQLq+VXe7nRqDbJ9MA2WUFTvDI0qK1sg+bjz4ADB4dTL
         Q9KGR+NH7jSc/uTS3Q5ZPQKCSYjx3IyBGf9dRTiUaXFD2DxpfZXGOanGBpLWkaXflnFL
         ac0gVzWuU7xd4wR7ZBSuF4LwzG8WD99310gwGX3ENUfWCTEkMb+g3aUO7vQhwnzUD2+I
         XI5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=qWYkQv8TKgwAxB0FnHaKfooaGp4zBCH5H2UeWSEV+pg=;
        b=VtbrK9+hLvY89opUgN6PjYx4OWZizvpuoVqDrlV4ETBwLGH5HXrHlJKr8c4YWzmJru
         REaW9v2FNuNGWkEJPtlppcxt0T1dsSlKlvM3xwiVEEBz8DUVt6lnZ8qCsA8xjLLjR3aP
         zC8rifkFDUahOYBo8rF47kEBllm44pCxzgJhBmRdWrx2e5zmJoxRyPdHJZCLLdSJOsDw
         4JfMk7RPUeZkfLtYltc97AT0Q/vTidphB2AvFjy+O0BxMG+jn3rf26h3ZckCy8UuQgjt
         Y5B4kdmOtk0wcnbtjkC4IG1mYTLrNjYQSRzNdZKkwqSJMGSuQpwV/cxUfOsS/njQ5P+8
         INUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id z23si36392ejr.0.2020.08.26.23.05.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Aug 2020 23:05:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4BcXJK4t9Tz9vBmd;
	Thu, 27 Aug 2020 08:05:05 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id 6_wQ-K_gUoYq; Thu, 27 Aug 2020 08:05:05 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4BcXJK43MPz9vBmc;
	Thu, 27 Aug 2020 08:05:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 5DB7E8B85B;
	Thu, 27 Aug 2020 08:05:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id CsDNzZ1D0dpH; Thu, 27 Aug 2020 08:05:06 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 980408B85A;
	Thu, 27 Aug 2020 08:05:05 +0200 (CEST)
Subject: Re: [linuxppc:next-test 70/80] /usr/bin/powerpc64-linux-gnu-ld:
 warning: discarding dynamic section .rela.opd
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Michael Ellerman <mpe@ellerman.id.au>,
 Nick Desaulniers <nick.desaulniers@gmail.com>
References: <202008270909.Z8PiAoi5%lkp@intel.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <649d9ca6-807e-dff8-a266-564938b8ab2b@csgroup.eu>
Date: Thu, 27 Aug 2020 08:04:57 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <202008270909.Z8PiAoi5%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@csgroup.eu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as
 permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
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



Le 27/08/2020 =C3=A0 03:39, kernel test robot a =C3=A9crit=C2=A0:
> tree:   https://github.com/linuxppc/linux next-test
> head:   f46b75a9ae95df302fcb070678773574f6812216
> commit: 6dcaaad9830c73908a23200ccc5da12583e04f1a [70/80] powerpc/vdso: Sw=
itch VDSO to generic C implementation.
> config: powerpc64-randconfig-r005-20200826 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 7cfc=
ecece0e0430937cf529ce74d3a071a4dedc6)
> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc64 cross compiling tool for clang build
>          # apt-get install binutils-powerpc64-linux-gnu
>          git checkout 6dcaaad9830c73908a23200ccc5da12583e04f1a
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Dpowerpc64
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
>>> /usr/bin/powerpc64-linux-gnu-ld: warning: discarding dynamic section .r=
ela.opd
>=20

We have /DISCARD/ *(.rela*) in the VDSO linker scripts.

What is going on here with clang ?

Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/649d9ca6-807e-dff8-a266-564938b8ab2b%40csgroup.eu.
