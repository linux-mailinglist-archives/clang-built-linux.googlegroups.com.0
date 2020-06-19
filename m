Return-Path: <clang-built-linux+bncBAABB77YWL3QKGQEQIECN2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id A71A92009EB
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 15:24:15 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id b14sf1375480ljp.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jun 2020 06:24:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592573055; cv=pass;
        d=google.com; s=arc-20160816;
        b=wxDo5w4HsD9lhkRjzttp1lRRmAllZRUqivxVtuPTfUeZO2NhbinEX4pPGjqYw5mEJx
         8yUuzT9LMg8Rh2typeq3pttWY61ovjHDtsMOQDiofAHkMn+0NHqXRw8KraifRmRB2HiD
         dITKU5OfW0UCZqiYcYWKlYyUn/iEeOqSbk5kL4q0bFrxqBXyj8b73WnBFucyEftbjVDD
         TRjQj5kA1BF1NWc/g0p9BB4MY39XeME0N/L95dPv8ZxCsescIDaD2vw6ZwhcnAlqBRNi
         fTI0y4d1YI4coRM9nPfaShCUXx3LSBStLVnQ6PfXrQkZB7ruLdZUQPxU5+o8ZRLgM/jT
         hbAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=F2T6SBfWsnO0lMsAx2cXE1AR4Xn2/PXMRPROlieIGG0=;
        b=xGS0rqtNOUSZ01macIILjzFqgJXItgQ+e8YPqa5tLODa3MOKjCCCpcarLBFopgw9Yh
         s5zFjgEjCth+keP0lZVRY+anjZwclVc6+v2TgpRzlzPZwFxC6NwmnXKrbczf56rh2ugm
         HJldtvn302gcU37KdwIY5xzNuWf3ayBcQfelXNlOb7axJfjYl6tfkdAle2Q32H2F210Q
         Pifj/RVdZEFJ8JAoOh9NmEWvqGe2BGf655p+jg8AuCZg50UVnd+bOctO/x5GjBoHBgFL
         a24+KI5JB02dg7B5N8CnAC+3pxK86JtCvKnyDTBXvndHPlEEEtKheuKSgIVnw3pCw37G
         hbrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F2T6SBfWsnO0lMsAx2cXE1AR4Xn2/PXMRPROlieIGG0=;
        b=glaeZxXWxAHXQ+7WLeVv89IIVF8iUrrDwaXb/jPMX7OmBuMvY2OV4x30alPsno0++s
         /g53VSRVbOa2Sbcjyp2pOZVNsgeCkkjmsR1/OWrbh3xVLsmd4+uqA0N6O0YCNx0MhY6G
         vCVfyQ1uEi8WPp69NIWNqFA6vgEr5qpjIj88yv9GnwCGwy3TEQ3GAWFeFUklZLVFMxGs
         8E5PsMkK7QpLvBvUGNzU+JUDukn8oex107Dds5z1k7i5lx2hvQtfbZidaMwmik488HDQ
         5Kfjtj9S01BSWD6IIfWqKncTYo9PEPME10/cvcTL4uZhR0yuOhN7jJDNTsNmQcbO9z89
         uTPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F2T6SBfWsnO0lMsAx2cXE1AR4Xn2/PXMRPROlieIGG0=;
        b=sdH+xvyDSGnJ7Criq9S3qD0s348NhwRlqF9+CXpdJpC12mkJdojCFepqd6Rd+tB+h1
         jdJIycCASVRcm+LfG84s+zJTuKtuyqq53j/PGdTMrRXfG+zLdZ6q1IHps2/DBwo78wru
         /UHsMBnuH/hY50+l5AEvI1gDnnos6s7XuGNvW3IEG48rFmPOK51p74f1mGn0hRuK0vCf
         8AyDD34X41Vbf8tgV5hOXfg9h6+TtvOZyDBZ9jwGw2oRrl3ogKJXbNvk3T+iKxOL5hIY
         m4yqBVLlGwaRJbxNhLIphxeQWX2Pc2nbgx0r8Ifdxz5dZrOm9SCbvZgNMvZB1njzzBzi
         7CwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CfsfLM64Cieiesx6djOXATjiBI7LDvDNEVfUJYnvo+lSSnevn
	1eTZ9HoYH9yAQj5JHOF8D7E=
X-Google-Smtp-Source: ABdhPJyHQ3h9QFp8Kv8HF7TjwIkC+8hmrvQyxRaf2Jx9jl9wwqW/KFQPZ0U7JhDLUW2IkLD9pv22Bw==
X-Received: by 2002:ac2:43dc:: with SMTP id u28mr445934lfl.17.1592573055148;
        Fri, 19 Jun 2020 06:24:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3047:: with SMTP id b7ls162868lfb.1.gmail; Fri, 19
 Jun 2020 06:24:14 -0700 (PDT)
X-Received: by 2002:ac2:54b4:: with SMTP id w20mr1986545lfk.48.1592573054606;
        Fri, 19 Jun 2020 06:24:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592573054; cv=none;
        d=google.com; s=arc-20160816;
        b=0RjfXGMzhP8mA5VMhOSnZBer28ezqh7Y9LlL1OZCVKhZdyvPeoqQZQiSZmjSmRs7Gp
         W7uQ9KDkoDDTn4RTVLONU9syGrTzX8kOE5mC9l2cnesVZAY/WR5n4hDG+Yl9Whdxq14E
         Li/NLPLDB+PhD6/mSujO7y9HiEQXG+779bD5qZyiVw2qNA6a8qkWdJ08TTRvhaNUVTu6
         7XRK//K6borftKFOQPHQGwSssClt4ki/HyyrIz/mPHaEUmm4ElcxjPB56+Hkl7JDkWkY
         sJDbLGjzFbge5FHqodDB6rjq0AIiHqlM580BppUZ8akghShlxFfNWbyDURp3F03Bu0ri
         78bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Z8dkGDUs8G9lrF3FdmcUPv58ggqU9XdT+DaEd8CEtUI=;
        b=pCyYwahzynAg3RvO17R/eweOQpX5F2nP1NYH8fffXx4fcWY2keCRHwENAL6kJM47NE
         D1lKBOqz/dxYWm00RRzF17G687Tea9p821+zn9xxdN5dEnq/PHE7QPsEditM86ELiadK
         fYtQVPHUGwAeHt/3Y57syi/QtMxPdWImjTBppKpqNRBtqZmvP4DJWkKLnS8ANuVoq84h
         QzJ3RPgmG2vviX7lcVLvLb+VniuzLSnJrObECtXGtWjeBqBsrJsYiZcMxYBm4sSDcgPV
         6t40ONpB7q/CMENPL+AqrRtttp63SjouuYI8rHUmtOduZs89ZVNADcJzPkHpeIXOV57I
         R4oQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@csgroup.eu
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id u23si363134ljg.7.2020.06.19.06.24.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Jun 2020 06:24:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@csgroup.eu designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 49pKJq4RZsz9v02q;
	Fri, 19 Jun 2020 15:24:11 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id pR3xHgsATSCG; Fri, 19 Jun 2020 15:24:11 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 49pKJq3ZJpz9v02n;
	Fri, 19 Jun 2020 15:24:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 6A1038B86E;
	Fri, 19 Jun 2020 15:24:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id 12HEOEBDIMx0; Fri, 19 Jun 2020 15:24:13 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id F1A788B868;
	Fri, 19 Jun 2020 15:24:11 +0200 (CEST)
Subject: Re: ld.lld: warning:
 drivers/built-in.a(misc/ds1682.o):(.data..compoundliteral) is being placed in
 '.data..compoundliteral'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>,
 Segher Boessenkool <segher@kernel.crashing.org>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <202006180904.TVUXCf6H%lkp@intel.com>
From: Christophe Leroy <christophe.leroy@csgroup.eu>
Message-ID: <150a9a49-8d61-ea34-94d4-fff158aae802@csgroup.eu>
Date: Fri, 19 Jun 2020 15:24:01 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <202006180904.TVUXCf6H%lkp@intel.com>
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



Le 18/06/2020 =C3=A0 03:12, kernel test robot a =C3=A9crit=C2=A0:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t master
> head:   1b5044021070efa3259f3e9548dc35d1eb6aa844
> commit: 74016701fe5f873ae23bf02835407227138d874d powerpc/32s: Fix another=
 build failure with CONFIG_PPC_KUAP_DEBUG

I'm really having hard time understanding the link between this commit=20
and the issue reported below.

Can Clang people help understand what the problem might be ?

Christophe

> date:   2 weeks ago
> config: powerpc-randconfig-r032-20200617 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 487c=
a07fcc75d52755c9fe2ee05bcb3b6eeeec44)
> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install powerpc cross compiling tool for clang build
>          # apt-get install binutils-powerpc-linux-gnu
>          git checkout 74016701fe5f873ae23bf02835407227138d874d
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Dpowerpc
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>=20
>>> ld.lld: warning: drivers/built-in.a(misc/ds1682.o):(.data..compoundlite=
ral) is being placed in '.data..compoundliteral'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral) is being placed in '.data..compoundliteral'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.29) is being placed in '.data..compoundliteral.29'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.31) is being placed in '.data..compoundliteral.31'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.33) is being placed in '.data..compoundliteral.33'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.bss..compoundli=
teral.35) is being placed in '.bss..compoundliteral.35'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.37) is being placed in '.data..compoundliteral.37'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.39) is being placed in '.data..compoundliteral.39'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.41) is being placed in '.data..compoundliteral.41'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.43) is being placed in '.data..compoundliteral.43'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.45) is being placed in '.data..compoundliteral.45'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.47) is being placed in '.data..compoundliteral.47'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.49) is being placed in '.data..compoundliteral.49'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.51) is being placed in '.data..compoundliteral.51'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.53) is being placed in '.data..compoundliteral.53'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.55) is being placed in '.data..compoundliteral.55'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.57) is being placed in '.data..compoundliteral.57'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.59) is being placed in '.data..compoundliteral.59'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.61) is being placed in '.data..compoundliteral.61'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.63) is being placed in '.data..compoundliteral.63'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.65) is being placed in '.data..compoundliteral.65'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.67) is being placed in '.data..compoundliteral.67'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.69) is being placed in '.data..compoundliteral.69'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.71) is being placed in '.data..compoundliteral.71'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.73) is being placed in '.data..compoundliteral.73'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.75) is being placed in '.data..compoundliteral.75'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.77) is being placed in '.data..compoundliteral.77'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.79) is being placed in '.data..compoundliteral.79'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.81) is being placed in '.data..compoundliteral.81'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.83) is being placed in '.data..compoundliteral.83'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.85) is being placed in '.data..compoundliteral.85'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.87) is being placed in '.data..compoundliteral.87'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.89) is being placed in '.data..compoundliteral.89'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.91) is being placed in '.data..compoundliteral.91'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.93) is being placed in '.data..compoundliteral.93'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.95) is being placed in '.data..compoundliteral.95'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.97) is being placed in '.data..compoundliteral.97'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.99) is being placed in '.data..compoundliteral.99'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.101) is being placed in '.data..compoundliteral.101'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.103) is being placed in '.data..compoundliteral.103'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.105) is being placed in '.data..compoundliteral.105'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.107) is being placed in '.data..compoundliteral.107'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.109) is being placed in '.data..compoundliteral.109'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.111) is being placed in '.data..compoundliteral.111'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.113) is being placed in '.data..compoundliteral.113'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.115) is being placed in '.data..compoundliteral.115'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.117) is being placed in '.data..compoundliteral.117'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.119) is being placed in '.data..compoundliteral.119'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.121) is being placed in '.data..compoundliteral.121'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.123) is being placed in '.data..compoundliteral.123'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.125) is being placed in '.data..compoundliteral.125'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.127) is being placed in '.data..compoundliteral.127'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.129) is being placed in '.data..compoundliteral.129'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.131) is being placed in '.data..compoundliteral.131'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.133) is being placed in '.data..compoundliteral.133'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.135) is being placed in '.data..compoundliteral.135'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.137) is being placed in '.data..compoundliteral.137'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.139) is being placed in '.data..compoundliteral.139'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.141) is being placed in '.data..compoundliteral.141'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.143) is being placed in '.data..compoundliteral.143'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.145) is being placed in '.data..compoundliteral.145'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.147) is being placed in '.data..compoundliteral.147'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.149) is being placed in '.data..compoundliteral.149'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.151) is being placed in '.data..compoundliteral.151'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.153) is being placed in '.data..compoundliteral.153'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.155) is being placed in '.data..compoundliteral.155'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.157) is being placed in '.data..compoundliteral.157'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.159) is being placed in '.data..compoundliteral.159'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.161) is being placed in '.data..compoundliteral.161'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.163) is being placed in '.data..compoundliteral.163'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.165) is being placed in '.data..compoundliteral.165'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.167) is being placed in '.data..compoundliteral.167'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.169) is being placed in '.data..compoundliteral.169'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.171) is being placed in '.data..compoundliteral.171'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.173) is being placed in '.data..compoundliteral.173'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.175) is being placed in '.data..compoundliteral.175'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.177) is being placed in '.data..compoundliteral.177'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.179) is being placed in '.data..compoundliteral.179'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.181) is being placed in '.data..compoundliteral.181'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.183) is being placed in '.data..compoundliteral.183'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.185) is being placed in '.data..compoundliteral.185'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.187) is being placed in '.data..compoundliteral.187'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.189) is being placed in '.data..compoundliteral.189'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.191) is being placed in '.data..compoundliteral.191'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.193) is being placed in '.data..compoundliteral.193'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.195) is being placed in '.data..compoundliteral.195'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.197) is being placed in '.data..compoundliteral.197'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.199) is being placed in '.data..compoundliteral.199'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.201) is being placed in '.data..compoundliteral.201'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.203) is being placed in '.data..compoundliteral.203'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.205) is being placed in '.data..compoundliteral.205'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.207) is being placed in '.data..compoundliteral.207'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.209) is being placed in '.data..compoundliteral.209'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.211) is being placed in '.data..compoundliteral.211'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.213) is being placed in '.data..compoundliteral.213'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.215) is being placed in '.data..compoundliteral.215'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.217) is being placed in '.data..compoundliteral.217'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.219) is being placed in '.data..compoundliteral.219'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.221) is being placed in '.data..compoundliteral.221'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.223) is being placed in '.data..compoundliteral.223'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.225) is being placed in '.data..compoundliteral.225'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.227) is being placed in '.data..compoundliteral.227'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.229) is being placed in '.data..compoundliteral.229'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.231) is being placed in '.data..compoundliteral.231'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.233) is being placed in '.data..compoundliteral.233'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.235) is being placed in '.data..compoundliteral.235'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.237) is being placed in '.data..compoundliteral.237'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.239) is being placed in '.data..compoundliteral.239'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.241) is being placed in '.data..compoundliteral.241'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.243) is being placed in '.data..compoundliteral.243'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.245) is being placed in '.data..compoundliteral.245'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.247) is being placed in '.data..compoundliteral.247'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.249) is being placed in '.data..compoundliteral.249'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.251) is being placed in '.data..compoundliteral.251'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.253) is being placed in '.data..compoundliteral.253'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.255) is being placed in '.data..compoundliteral.255'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.257) is being placed in '.data..compoundliteral.257'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.259) is being placed in '.data..compoundliteral.259'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.261) is being placed in '.data..compoundliteral.261'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.263) is being placed in '.data..compoundliteral.263'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.265) is being placed in '.data..compoundliteral.265'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.267) is being placed in '.data..compoundliteral.267'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.269) is being placed in '.data..compoundliteral.269'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.271) is being placed in '.data..compoundliteral.271'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.273) is being placed in '.data..compoundliteral.273'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.275) is being placed in '.data..compoundliteral.275'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.277) is being placed in '.data..compoundliteral.277'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.279) is being placed in '.data..compoundliteral.279'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.281) is being placed in '.data..compoundliteral.281'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.283) is being placed in '.data..compoundliteral.283'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.285) is being placed in '.data..compoundliteral.285'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.287) is being placed in '.data..compoundliteral.287'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.289) is being placed in '.data..compoundliteral.289'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.294) is being placed in '.data..compoundliteral.294'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.295) is being placed in '.data..compoundliteral.295'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.296) is being placed in '.data..compoundliteral.296'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.297) is being placed in '.data..compoundliteral.297'
>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.18) is being placed in '.data..compoundliteral.18'
> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundlite=
ral.19) is being placed in '.data..compoundliteral.19'
> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundlite=
ral.20) is being placed in '.data..compoundliteral.20'
> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundlite=
ral.21) is being placed in '.data..compoundliteral.21'
> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundlite=
ral.22) is being placed in '.data..compoundliteral.22'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundli=
teral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundli=
teral.15) is being placed in '.data..compoundliteral.15'
> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundlite=
ral.16) is being placed in '.data..compoundliteral.16'
> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundlite=
ral.17) is being placed in '.data..compoundliteral.17'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundl=
iteral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundl=
iteral.2) is being placed in '.data..compoundliteral.2'
> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundlit=
eral.3) is being placed in '.data..compoundliteral.3'
> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundlit=
eral.4) is being placed in '.data..compoundliteral.4'
>>> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundlit=
eral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundlit=
eral.10) is being placed in '.data..compoundliteral.10'
> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundliter=
al.11) is being placed in '.data..compoundliteral.11'
> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundliter=
al.12) is being placed in '.data..compoundliteral.12'
>>> ld.lld: warning: drivers/built-in.a(cpufreq/cpufreq-dt-platdev.o):(.dat=
a..compoundliteral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(hid/hid-cp2112.o):(.data..compoundl=
iteral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliter=
al.2) is being placed in '.data..compoundliteral.2'
> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral=
.3) is being placed in '.data..compoundliteral.3'
> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral=
.4) is being placed in '.data..compoundliteral.4'
> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral=
.5) is being placed in '.data..compoundliteral.5'
> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral=
.6) is being placed in '.data..compoundliteral.6'
> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral=
.7) is being placed in '.data..compoundliteral.7'
> ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundlit=
eral) is being placed in '.data..compoundliteral'
> ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
> ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
> ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
>>> ld.lld: warning: drivers/built-in.a(misc/ds1682.o):(.data..compoundlite=
ral) is being placed in '.data..compoundliteral'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral) is being placed in '.data..compoundliteral'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.29) is being placed in '.data..compoundliteral.29'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.31) is being placed in '.data..compoundliteral.31'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.33) is being placed in '.data..compoundliteral.33'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.bss..compoundli=
teral.35) is being placed in '.bss..compoundliteral.35'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.37) is being placed in '.data..compoundliteral.37'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.39) is being placed in '.data..compoundliteral.39'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.41) is being placed in '.data..compoundliteral.41'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.43) is being placed in '.data..compoundliteral.43'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.45) is being placed in '.data..compoundliteral.45'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.47) is being placed in '.data..compoundliteral.47'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.49) is being placed in '.data..compoundliteral.49'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.51) is being placed in '.data..compoundliteral.51'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.53) is being placed in '.data..compoundliteral.53'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.55) is being placed in '.data..compoundliteral.55'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.57) is being placed in '.data..compoundliteral.57'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.59) is being placed in '.data..compoundliteral.59'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.61) is being placed in '.data..compoundliteral.61'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.63) is being placed in '.data..compoundliteral.63'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.65) is being placed in '.data..compoundliteral.65'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.67) is being placed in '.data..compoundliteral.67'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.69) is being placed in '.data..compoundliteral.69'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.71) is being placed in '.data..compoundliteral.71'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.73) is being placed in '.data..compoundliteral.73'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.75) is being placed in '.data..compoundliteral.75'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.77) is being placed in '.data..compoundliteral.77'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.79) is being placed in '.data..compoundliteral.79'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.81) is being placed in '.data..compoundliteral.81'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.83) is being placed in '.data..compoundliteral.83'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.85) is being placed in '.data..compoundliteral.85'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.87) is being placed in '.data..compoundliteral.87'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.89) is being placed in '.data..compoundliteral.89'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.91) is being placed in '.data..compoundliteral.91'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.93) is being placed in '.data..compoundliteral.93'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.95) is being placed in '.data..compoundliteral.95'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.97) is being placed in '.data..compoundliteral.97'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.99) is being placed in '.data..compoundliteral.99'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.101) is being placed in '.data..compoundliteral.101'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.103) is being placed in '.data..compoundliteral.103'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.105) is being placed in '.data..compoundliteral.105'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.107) is being placed in '.data..compoundliteral.107'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.109) is being placed in '.data..compoundliteral.109'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.111) is being placed in '.data..compoundliteral.111'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.113) is being placed in '.data..compoundliteral.113'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.115) is being placed in '.data..compoundliteral.115'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.117) is being placed in '.data..compoundliteral.117'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.119) is being placed in '.data..compoundliteral.119'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.121) is being placed in '.data..compoundliteral.121'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.123) is being placed in '.data..compoundliteral.123'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.125) is being placed in '.data..compoundliteral.125'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.127) is being placed in '.data..compoundliteral.127'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.129) is being placed in '.data..compoundliteral.129'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.131) is being placed in '.data..compoundliteral.131'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.133) is being placed in '.data..compoundliteral.133'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.135) is being placed in '.data..compoundliteral.135'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.137) is being placed in '.data..compoundliteral.137'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.139) is being placed in '.data..compoundliteral.139'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.141) is being placed in '.data..compoundliteral.141'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.143) is being placed in '.data..compoundliteral.143'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.145) is being placed in '.data..compoundliteral.145'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.147) is being placed in '.data..compoundliteral.147'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.149) is being placed in '.data..compoundliteral.149'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.151) is being placed in '.data..compoundliteral.151'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.153) is being placed in '.data..compoundliteral.153'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.155) is being placed in '.data..compoundliteral.155'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.157) is being placed in '.data..compoundliteral.157'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.159) is being placed in '.data..compoundliteral.159'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.161) is being placed in '.data..compoundliteral.161'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.163) is being placed in '.data..compoundliteral.163'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.165) is being placed in '.data..compoundliteral.165'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.167) is being placed in '.data..compoundliteral.167'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.169) is being placed in '.data..compoundliteral.169'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.171) is being placed in '.data..compoundliteral.171'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.173) is being placed in '.data..compoundliteral.173'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.175) is being placed in '.data..compoundliteral.175'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.177) is being placed in '.data..compoundliteral.177'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.179) is being placed in '.data..compoundliteral.179'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.181) is being placed in '.data..compoundliteral.181'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.183) is being placed in '.data..compoundliteral.183'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.185) is being placed in '.data..compoundliteral.185'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.187) is being placed in '.data..compoundliteral.187'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.189) is being placed in '.data..compoundliteral.189'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.191) is being placed in '.data..compoundliteral.191'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.193) is being placed in '.data..compoundliteral.193'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.195) is being placed in '.data..compoundliteral.195'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.197) is being placed in '.data..compoundliteral.197'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.199) is being placed in '.data..compoundliteral.199'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.201) is being placed in '.data..compoundliteral.201'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.203) is being placed in '.data..compoundliteral.203'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.205) is being placed in '.data..compoundliteral.205'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.207) is being placed in '.data..compoundliteral.207'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.209) is being placed in '.data..compoundliteral.209'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.211) is being placed in '.data..compoundliteral.211'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.213) is being placed in '.data..compoundliteral.213'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.215) is being placed in '.data..compoundliteral.215'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.217) is being placed in '.data..compoundliteral.217'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.219) is being placed in '.data..compoundliteral.219'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.221) is being placed in '.data..compoundliteral.221'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.223) is being placed in '.data..compoundliteral.223'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.225) is being placed in '.data..compoundliteral.225'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.227) is being placed in '.data..compoundliteral.227'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.229) is being placed in '.data..compoundliteral.229'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.231) is being placed in '.data..compoundliteral.231'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.233) is being placed in '.data..compoundliteral.233'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.235) is being placed in '.data..compoundliteral.235'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.237) is being placed in '.data..compoundliteral.237'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.239) is being placed in '.data..compoundliteral.239'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.241) is being placed in '.data..compoundliteral.241'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.243) is being placed in '.data..compoundliteral.243'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.245) is being placed in '.data..compoundliteral.245'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.247) is being placed in '.data..compoundliteral.247'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.249) is being placed in '.data..compoundliteral.249'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.251) is being placed in '.data..compoundliteral.251'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.253) is being placed in '.data..compoundliteral.253'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.255) is being placed in '.data..compoundliteral.255'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.257) is being placed in '.data..compoundliteral.257'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.259) is being placed in '.data..compoundliteral.259'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.261) is being placed in '.data..compoundliteral.261'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.263) is being placed in '.data..compoundliteral.263'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.265) is being placed in '.data..compoundliteral.265'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.267) is being placed in '.data..compoundliteral.267'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.269) is being placed in '.data..compoundliteral.269'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.271) is being placed in '.data..compoundliteral.271'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.273) is being placed in '.data..compoundliteral.273'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.275) is being placed in '.data..compoundliteral.275'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.277) is being placed in '.data..compoundliteral.277'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.279) is being placed in '.data..compoundliteral.279'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.281) is being placed in '.data..compoundliteral.281'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.283) is being placed in '.data..compoundliteral.283'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.285) is being placed in '.data..compoundliteral.285'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.287) is being placed in '.data..compoundliteral.287'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.289) is being placed in '.data..compoundliteral.289'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.294) is being placed in '.data..compoundliteral.294'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.295) is being placed in '.data..compoundliteral.295'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.296) is being placed in '.data..compoundliteral.296'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.297) is being placed in '.data..compoundliteral.297'
>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundli=
teral.18) is being placed in '.data..compoundliteral.18'
> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundlite=
ral.19) is being placed in '.data..compoundliteral.19'
> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundlite=
ral.20) is being placed in '.data..compoundliteral.20'
> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundlite=
ral.21) is being placed in '.data..compoundliteral.21'
> ld.lld: warning: drivers/built-in.a(hwmon/ina3221.o):(.data..compoundlite=
ral.22) is being placed in '.data..compoundliteral.22'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundli=
teral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundli=
teral.15) is being placed in '.data..compoundliteral.15'
> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundlite=
ral.16) is being placed in '.data..compoundliteral.16'
> ld.lld: warning: drivers/built-in.a(hwmon/max6650.o):(.data..compoundlite=
ral.17) is being placed in '.data..compoundliteral.17'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundl=
iteral) is being placed in '.data..compoundliteral'
>>> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundl=
iteral.2) is being placed in '.data..compoundliteral.2'
> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundlit=
eral.3) is being placed in '.data..compoundliteral.3'
> ld.lld: warning: drivers/built-in.a(hwmon/max31790.o):(.data..compoundlit=
eral.4) is being placed in '.data..compoundliteral.4'
> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundliter=
al) is being placed in '.data..compoundliteral'
> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundliter=
al.10) is being placed in '.data..compoundliteral.10'
> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundliter=
al.11) is being placed in '.data..compoundliteral.11'
> ld.lld: warning: drivers/built-in.a(hwmon/tmp102.o):(.data..compoundliter=
al.12) is being placed in '.data..compoundliteral.12'
> ld.lld: warning: drivers/built-in.a(cpufreq/cpufreq-dt-platdev.o):(.data.=
.compoundliteral) is being placed in '.data..compoundliteral'
> ld.lld: warning: drivers/built-in.a(hid/hid-cp2112.o):(.data..compoundlit=
eral) is being placed in '.data..compoundliteral'
> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral=
) is being placed in '.data..compoundliteral'
> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral=
.2) is being placed in '.data..compoundliteral.2'
> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral=
.3) is being placed in '.data..compoundliteral.3'
> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral=
.4) is being placed in '.data..compoundliteral.4'
> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral=
.5) is being placed in '.data..compoundliteral.5'
> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral=
.6) is being placed in '.data..compoundliteral.6'
> ld.lld: warning: net/built-in.a(ipv6/addrlabel.o):(.data..compoundliteral=
.7) is being placed in '.data..compoundliteral.7'
> ld.lld: warning: net/built-in.a(ipv6/addrconf_core.o):(.data..compoundlit=
eral) is being placed in '.data..compoundliteral'
> ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
> ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
> ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'
> ld.lld: warning: drivers/built-in.a(misc/ds1682.o):(.data..compoundlitera=
l) is being placed in '.data..compoundliteral'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral) is being placed in '.data..compoundliteral'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.29) is being placed in '.data..compoundliteral.29'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.31) is being placed in '.data..compoundliteral.31'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.33) is being placed in '.data..compoundliteral.33'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.bss..compoundli=
teral.35) is being placed in '.bss..compoundliteral.35'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.37) is being placed in '.data..compoundliteral.37'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.39) is being placed in '.data..compoundliteral.39'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.41) is being placed in '.data..compoundliteral.41'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.43) is being placed in '.data..compoundliteral.43'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.45) is being placed in '.data..compoundliteral.45'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.47) is being placed in '.data..compoundliteral.47'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.49) is being placed in '.data..compoundliteral.49'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.51) is being placed in '.data..compoundliteral.51'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.53) is being placed in '.data..compoundliteral.53'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.55) is being placed in '.data..compoundliteral.55'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.57) is being placed in '.data..compoundliteral.57'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.59) is being placed in '.data..compoundliteral.59'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.61) is being placed in '.data..compoundliteral.61'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.63) is being placed in '.data..compoundliteral.63'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.65) is being placed in '.data..compoundliteral.65'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.67) is being placed in '.data..compoundliteral.67'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.69) is being placed in '.data..compoundliteral.69'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.71) is being placed in '.data..compoundliteral.71'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.73) is being placed in '.data..compoundliteral.73'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.75) is being placed in '.data..compoundliteral.75'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.77) is being placed in '.data..compoundliteral.77'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.79) is being placed in '.data..compoundliteral.79'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.81) is being placed in '.data..compoundliteral.81'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.83) is being placed in '.data..compoundliteral.83'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.85) is being placed in '.data..compoundliteral.85'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.87) is being placed in '.data..compoundliteral.87'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.89) is being placed in '.data..compoundliteral.89'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.91) is being placed in '.data..compoundliteral.91'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.93) is being placed in '.data..compoundliteral.93'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.95) is being placed in '.data..compoundliteral.95'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.97) is being placed in '.data..compoundliteral.97'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.99) is being placed in '.data..compoundliteral.99'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.101) is being placed in '.data..compoundliteral.101'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.103) is being placed in '.data..compoundliteral.103'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.105) is being placed in '.data..compoundliteral.105'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.107) is being placed in '.data..compoundliteral.107'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.109) is being placed in '.data..compoundliteral.109'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.111) is being placed in '.data..compoundliteral.111'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.113) is being placed in '.data..compoundliteral.113'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.115) is being placed in '.data..compoundliteral.115'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.117) is being placed in '.data..compoundliteral.117'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.119) is being placed in '.data..compoundliteral.119'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.121) is being placed in '.data..compoundliteral.121'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.123) is being placed in '.data..compoundliteral.123'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.125) is being placed in '.data..compoundliteral.125'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.127) is being placed in '.data..compoundliteral.127'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.129) is being placed in '.data..compoundliteral.129'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.131) is being placed in '.data..compoundliteral.131'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.133) is being placed in '.data..compoundliteral.133'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.135) is being placed in '.data..compoundliteral.135'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.137) is being placed in '.data..compoundliteral.137'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.139) is being placed in '.data..compoundliteral.139'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.141) is being placed in '.data..compoundliteral.141'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.143) is being placed in '.data..compoundliteral.143'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.145) is being placed in '.data..compoundliteral.145'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.147) is being placed in '.data..compoundliteral.147'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.149) is being placed in '.data..compoundliteral.149'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.151) is being placed in '.data..compoundliteral.151'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.153) is being placed in '.data..compoundliteral.153'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.155) is being placed in '.data..compoundliteral.155'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.157) is being placed in '.data..compoundliteral.157'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.159) is being placed in '.data..compoundliteral.159'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.161) is being placed in '.data..compoundliteral.161'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.163) is being placed in '.data..compoundliteral.163'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.165) is being placed in '.data..compoundliteral.165'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.167) is being placed in '.data..compoundliteral.167'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.169) is being placed in '.data..compoundliteral.169'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.171) is being placed in '.data..compoundliteral.171'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.173) is being placed in '.data..compoundliteral.173'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.175) is being placed in '.data..compoundliteral.175'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.177) is being placed in '.data..compoundliteral.177'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.179) is being placed in '.data..compoundliteral.179'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.181) is being placed in '.data..compoundliteral.181'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.183) is being placed in '.data..compoundliteral.183'
> ld.lld: warning: drivers/built-in.a(net/phy/mdio_bus.o):(.data..compoundl=
iteral.185) is being placed in '.data..compoundliteral.185'
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/150a9a49-8d61-ea34-94d4-fff158aae802%40csgroup.eu.
