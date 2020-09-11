Return-Path: <clang-built-linux+bncBAABBTUT5T5AKGQEL6L7BSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DDF52658B0
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 07:23:27 +0200 (CEST)
Received: by mail-ej1-x63d.google.com with SMTP id rs9sf4078682ejb.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 22:23:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599801806; cv=pass;
        d=google.com; s=arc-20160816;
        b=zdXSTECb4p14alcWJgdnwzccygsfQvqU15XlxrHM5R+e6b+BNYUIgao2NZERvWmay5
         95T9QrHKg1lJu7DHZHPI0ZLI96XW5a25kYvHOwH+jcRGVwqWz39SgE3yGk4WrIsd6O2o
         3+PofzzKu3ithJWk4TvsVda71ueNlkXTp2FoxwyInItEZLEgBDJBhuTMFT+pzVdYM+JA
         CsosOGUYbApj8LUCap/n/6OY3zGMZ+4dEF9ntxdWCyKj+isTkV0XlvgDqHzDVUW6sQu7
         Urzo2xB75V/iadZYGkSjutNVPLxaVHsjTMlMZaAcKRP4tUkUBmELlVq3LMSafRGMz0Ai
         TQzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=TW65n3xALhXzVsJgWV0XYJmt/W+nMQAUJaBpuiCQDT8=;
        b=PrTuLtnMOue7+oMffoZmMpCygHKRR7gHsbDdHtIXFCV+Sn1wKo+sRzTJ1R2q0OXppj
         cmZYAs/Igu0rBSlVWcHa+aCLR5vleYxb9uB4MTJUJZpM8XkxXRDRYuXKYWou27Tbgfbp
         rQVRn9elISnRRmXPHRqwXPsR5XZo6F4XcjXShHKg5CsLlB28FVRWGJ0TaywY/FqLk0zu
         TO8mkOksCT8c+DwLPqbxdQRDJ7NRvChVtmEK6+I38l0DPtIxE5UCkUCMslI1NG2BO4n4
         0VvOSCDmSFHVjFZAeaoCiuVwDru9JZhQo5Jbv/D1SaWjlZeCk37yp08D68XdlicHqg26
         DyTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TW65n3xALhXzVsJgWV0XYJmt/W+nMQAUJaBpuiCQDT8=;
        b=HLsD+bnzpiXyyeClZPalOTsP18KUQwRPrOa/ikXxFBTQ482HHm/XgE30tRTNtfLVsF
         +hWS4uDXPPdUg2d1OuxGMBxyGqEUXImZMk6iqTSsfTWQa0l0nTbfmkVEuXSeuEa23l05
         u8nICBswyHkwqaxgz8VjvbJnJqIvF7aRGG9HHoED/m0b20M3f1UW83+aA1LQMWTmK4fR
         0FmC0umdlLfx/9ZTqS3jELzD2rSzZ8t4nXqFXp8EgztJbQzZwuaqA44XAvvmqD1z/lDV
         wyucRWfMqtK37J+6UAdhdXcfkAPWzyckTvfmpH7mCJv4ae/7HDHnzmMUvckLkbEW5eWQ
         T2NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TW65n3xALhXzVsJgWV0XYJmt/W+nMQAUJaBpuiCQDT8=;
        b=mEjYCK6AimH+wogiqD7hg4AizgCqWVWiV9S2T1SCDvxiMezaduJWPIlHxvG2uCrCKZ
         4MWWXfoprZmdKHa1qOrCh4CuX60k9+1G22AGuHs0u5lYrchntaR/rDp1+zw/K/ykuX0N
         TkAQhxq+CRiTVHarUu5WWZwUCFa438ji+CTXIJw1dkGRq4EAQyoNm+OND5fcdRSrwXtB
         475G6YjzSmJbpaAWO7/cVXo+0FzskA1QN94SBZkbHAMvH+nQBbIhc/7ktdk70bBrCI7U
         /BUcQRyPbZxLmQd+jpS3rpT48+6i9HWHhojR3Bh8DfrCAIKBRqGErS6SioOgs7KwsuU1
         kkfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KUSXTDhvcV715T8o7TJopHjN3RpT1/V9kNfgovbcIlIuHcvoj
	xYxzU4oNanUz88Em+kdQkmQ=
X-Google-Smtp-Source: ABdhPJzBAeRTPjBdjoS7mOBA648CPu3Dt+zgiXgSGu0nbGpTBIyLMnX1DSCQp8UOBUT3OflJ8gDz2A==
X-Received: by 2002:a17:906:ce30:: with SMTP id sd16mr395928ejb.53.1599801806653;
        Thu, 10 Sep 2020 22:23:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f996:: with SMTP id li22ls432459ejb.10.gmail; Thu,
 10 Sep 2020 22:23:25 -0700 (PDT)
X-Received: by 2002:a17:906:a293:: with SMTP id i19mr425680ejz.428.1599801805891;
        Thu, 10 Sep 2020 22:23:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599801805; cv=none;
        d=google.com; s=arc-20160816;
        b=uF5+I44NmF4VnM4P8v4qxXz/G9vFZsVE5ny/DIyiszyPEvAhAuYUFwYcywdOoBHMev
         8EuNN69N4hL2lZD0yuQdLL6PKvQpDN95HOv4KUdBuF0gq5sMovIAPZPClrg/kH8O0HSy
         c1F/rlX3pcEz7NAceYQ91tjMgDZTAXK/L1MPYz6w5F1dNAEGcCm3OGhICLN3+e7ed4+w
         s494JoM+dy70HcRqA/KOXxMMwG9w3jg/FbL16wdJtJxWJkayNNy7EwpkVSntCdyB6Krh
         ZXutftPf1SlDhv6vF7vRtOgbuT9Dmf1BKB9WbadqD37bRPY+THnNhVVO0R9mCvjb8R/D
         vAZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=ETQ563OgPXg/gyYleu8rce+40/M7cSjiIcX6Veg6EvA=;
        b=OsLzMEzxaRdZdI2ND0tAKGFDScoKxywguzSgeVVpf0lwWQid0XSWoj/HLbAXnnY1BN
         82IUeJynKNH0OZyBf2sdnG25DU/a70rP8Qx8ywDQxGyuuw08Z2ZgB19N9E/blMJGmb3S
         whzuhlrgmUP1Y7/nmYesZDPriQfQuZIXtdIsBpWiz6XehKaUAqrB/92Vpm87t/4Yrhg/
         A45zPgyitiTlioeHSBPcTkJTRket+nXOvAR9IJ7O7Y0leCn7oIxl4Qhp9dxZB0d0k2kz
         SCVfFEnSaDX7GpcxMf7Sz3EFzDvFqzrjKCrZECRXfJ/oFEkTDV1DMFNCyGJJQAGW6+vt
         ZT5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id a16si69035ejk.1.2020.09.10.22.23.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 22:23:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 4BnkgJ3jM1z9v03j;
	Fri, 11 Sep 2020 07:23:24 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id VGkpMiS7z88l; Fri, 11 Sep 2020 07:23:24 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 4BnkgJ1Z4Mz9v03h;
	Fri, 11 Sep 2020 07:23:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 0F58A8B832;
	Fri, 11 Sep 2020 07:23:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id pWdoUNXdGK84; Fri, 11 Sep 2020 07:23:24 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id A5B308B75E;
	Fri, 11 Sep 2020 07:23:24 +0200 (CEST)
Subject: Re: [linuxppc:next-test 146/147]
 arch/powerpc/kernel/process.c:1957:7: warning: variable 'val' is used
 uninitialized whenever 'if' condition is true
To: kernel test robot <lkp@intel.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
References: <202009110950.rYP0olyT%lkp@intel.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <07fc9016-5fe3-fea4-6bba-b42769283ef9@csgroup.eu>
Date: Fri, 11 Sep 2020 07:23:21 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <202009110950.rYP0olyT%lkp@intel.com>
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



Le 11/09/2020 =C3=A0 03:10, kernel test robot a =C3=A9crit=C2=A0:
> tree:   https://github.com/linuxppc/linux next-test
> head:   b86acbffee8165a25d69876c37b0a1bab8e4f66d
> commit: 887af0b0a569ff6f5af0ec24fcb1c6cde264a18a [146/147] powerpc/proces=
s: Remove useless #ifdef CONFIG_SPE
> config: powerpc-randconfig-r005-20200911 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0a5d=
c7effb191eff740e0e7ae7bd8e1f6bdb3ad9)
> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc cross compiling tool for clang build
>          # apt-get install binutils-powerpc-linux-gnu
>          git checkout 887af0b0a569ff6f5af0ec24fcb1c6cde264a18a
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Dpowerpc
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
>>> arch/powerpc/kernel/process.c:1957:7: warning: variable 'val' is used u=
ninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>                     if (cpu_has_feature(CPU_FTR_SPE)) {

This can NEVER be true when CONFIG_SPE is not selected. Apparently clang=20
doesn't see it while gcc does.

If we want to fix it, I suppose we can initialise var to 0 as suggested=20
below by clang, but for me that's clang that should be fixed.

Michael, you can do the change if you want to make clang happy.

Christophe



>                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/kernel/process.c:1979:18: note: uninitialized use occurs=
 here
>             return put_user(val, (unsigned int __user *) adr);
>                             ^~~
>     arch/powerpc/include/asm/uaccess.h:90:40: note: expanded from macro '=
put_user'
>             __put_user_check((__typeof__(*(ptr)))(x), (ptr), sizeof(*(ptr=
)))
>                                                   ^
>     arch/powerpc/include/asm/uaccess.h:192:33: note: expanded from macro =
'__put_user_check'
>             __typeof__(*(ptr)) __pu_val =3D (x);                         =
     \
>                                            ^
>     arch/powerpc/kernel/process.c:1957:3: note: remove the 'if' if its co=
ndition is always false
>                     if (cpu_has_feature(CPU_FTR_SPE)) {
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>     arch/powerpc/kernel/process.c:1954:18: note: initialize the variable =
'val' to silence this warning
>             unsigned int val;
>                             ^
>                              =3D 0
>     1 warning generated.
>=20

Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/07fc9016-5fe3-fea4-6bba-b42769283ef9%40csgroup.eu.
