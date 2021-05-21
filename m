Return-Path: <clang-built-linux+bncBDF4B3EXYABRBNMGT6CQMGQEWERF3WA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 690D038C92F
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 16:27:04 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id c13-20020a5d6ccd0000b029010ec741b84bsf9517718wrc.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 07:27:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621607224; cv=pass;
        d=google.com; s=arc-20160816;
        b=SuEkeNZ0DD190yXqqTMz8eLhq3NhdDZK2UYkSCTkis/sXUg+TdwBaac0yM5yS42YNj
         X23UTTfKKEIkHEb0YIg+XNcClgpG9BS+RrifpqbSc8TmHsDdNF3pYq+PaqMYUnErebtJ
         2sweXKcrR/0/PEjcCdI9HbyiscS//EyWEowhgzofVoSZuOCwlWa3/jIh6DWUu4whdabG
         NpKbHVA+HgDs2uO8n8kkWM9HJiFalyhzItQlYFYt9hwLVMZI/ESexgj+97TzoT4cVX6l
         266Zv6qBG2oGkU7qMrniMPS2nX+aBQHsY4W7BvU4Q3B3ItfLuYc8ak91WDaHkbAl2KLB
         faIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=SR7v+6tQeX/khbLkpmyvzp/ubgAusM6Y4kTwUIhPMls=;
        b=OZ7i6MkFufUWBczUNxavCW8UuCJdXmq/u8BteAJbXTYu2HGPDz/FtELvvACiwPMXaM
         MQ0iKAfH25IOSReWer7FMewNNyo3/lzWGI4c9iiDTJ+BO5vfbzIhYdXB8YgBloJMm+FQ
         hF4tHnbiAtBCZ6CtCVWkp7NTLTxESmae8po5DtCNLvesLFTiGg3u94jmeAYKG3CGBODd
         X78tXZP0xOheaJsaeFiLkCQm/tGvppaAdRkWDVSjCHszAri/uTDGA9Cof4TfFg9pnU9o
         tv4GgCmcffArW64+kKz9l4S2bTfs2sdDO5NdJHtAmynOv+Pj4v+qEL8f+Zvn27roS4Bd
         mV3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q+e4cetF;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SR7v+6tQeX/khbLkpmyvzp/ubgAusM6Y4kTwUIhPMls=;
        b=gzvLSSWYwOUXlzclVQXad4YEbaJO8kcQhf0d84TXEJ3Ni/lSwO7fKXLJdQZFl6BH0x
         4gJQAmXsF9RVRWXNus5wHV3NEJaNCn+mLXW3DsB9mW1BbjiJoe+68kKoKfDhn2EJnLeM
         z2alyBWbvviEBLz7TWtreDP7WVWUMAHVLIJSXIXXG+HwHEt9r3y0+RYxcmqRjhkaZgnx
         axZZX+HLU+gDciVZVPeX0tiQaJhrO+BAyfkdYe8YsO4bI4A3aaY2cRwHT7diHj7ZL4iX
         L11pRiixCliTZ92nnidjUDNAmhiCjWHkJ+07QDA38MaIQo1JWGSjhCAxdMllA2VqEDFQ
         NSyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SR7v+6tQeX/khbLkpmyvzp/ubgAusM6Y4kTwUIhPMls=;
        b=t2VGJSM5zHLfO+kfm+7iff8m3v7TothHHYsX+Hiec78w7/Wbi8kCt2/n9Vc/hQ+R40
         2BmdAynBBNr2PtJ2xVQIlaHxnIDi1kBEVB0/XSF4sCdrKNdwgOV2V08Vcnfwo+pRcUgq
         +o1vRYcN2Immu/dXLeAuhtQ8rp7bTWw90fUcQjiOJmegmT4kWV8ABrGWWMif3dAFDYFg
         yNQnPWTXjhEcqPYcSMvtUED8ZcUEUQDkoAYJGHshDWZsMawqg+icBkNXmEU5spEwJWLH
         nM2XGjxUvPJmo38Rg2t8TyroKFTCxwRSst5aU11/dv1u+tIyWkS4MhrHjseBGGfPJIy7
         O4mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SR7v+6tQeX/khbLkpmyvzp/ubgAusM6Y4kTwUIhPMls=;
        b=WOsFKtLPyJ+4fXVAovu5L8su7WjAw54Dgncxqpt7aDeuE3KPnNBUTwWLxPv/0g9ihR
         mqQUCuztzYb59LPeLGcBnEBHm+XftWdJIwa6rVjV5uphH7ZxTEtv7ARrKDb1A+TO0KR9
         1MbdbmWObqIvP8qGqViQlvyBDK5VrLxAx8VjD5RhktoqyVqh1Ti/cqBiSbBHYniYp1vm
         icKe4OPX1/W715aPJAScddGWCcNz6boih8jgMh3HTdjxeKoUZRnGwpUj6a7yP4O+p0FT
         6sCIKOs6dXJh6ntYnq3PBWXlMwTxW1dkWq6IF3zM0l/SIkRrG3hVmmLNVHnX4xz1CXX3
         mCsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332nrZhAyuuiHmX4/JvxMy2e1VgKzszN8gSMdyPEww6ZNwinwgx
	GWCGR5CjffrmN6Sv+1Albuw=
X-Google-Smtp-Source: ABdhPJwwAJN/ZynoxEMQ2wwlKIX2KOBqwMCrzU4By7GuFSbMGdpiJ+t0YoIVXHlykHHeQ/eOGcynuQ==
X-Received: by 2002:a05:600c:221a:: with SMTP id z26mr9553252wml.122.1621607221507;
        Fri, 21 May 2021 07:27:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4ca:: with SMTP id 193ls3205906wme.1.gmail; Fri, 21 May
 2021 07:27:00 -0700 (PDT)
X-Received: by 2002:a1c:3c55:: with SMTP id j82mr9001720wma.21.1621607220598;
        Fri, 21 May 2021 07:27:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621607220; cv=none;
        d=google.com; s=arc-20160816;
        b=iXnw9azZ9IFnLvSxJsR+Uox4d7473aRsJ62IybYwAIWaTSUt99ppBG9uRf5w3o9umg
         Cc6RR6vDdrUT4PymLfmcwu2tcuL+GshlToUDax5/L3+aaH5mj5lH5VjOFDFLptigwL0j
         7M6uojaB0eOX61dRFyo53z0w3wVH/eFUdmyWu9HrSYROckAz3CETfdj8klHoCC/FvlHJ
         K6A79s/yFCMBBTU0ZPajNJnvt2bfhv5lFEarxEqqLz6iVEC0QDXxV5YcoQfJkSUghlVy
         nPYtQmlrZqiy+bYi1mvJMWxbIa+DgAbsDFZ/Zzve/3fALr7TiDnHdc0quvQqeePLRdC5
         ofag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bC+BVk3asPi+ZUSMC7dnd7LCiXtnDQzjMHToiE60iIU=;
        b=YMIXxtbWuc/4FJgHg21huRpjaLQZ3bzwxWvTdOeFhJfO2jlDzsCmMUqPH519NFfigU
         G48HsaU7yGP5J3c/JVx0Bj5SPVThsRAT1IrQN0I+mPBKtJDw3/N1tJUAmY+lsiLDFA4R
         6aeR7/nmLskbGiHAbPuSLL2dkiammpx952mau8Y3pvaaMDHAHEYL8USqpIFSEE/uGNIX
         V6oU+TCmVctfHFCBiQ68v8g3y+gpqMENZYvlkXz8YtaLRck4ms7GkOgi8SMvnJus7iZ/
         rXIS0SySmldVrrL7ROtPMp+3+GMQVYRHzqzwQGSf38GOwyUq3mRX8v4bC0nlYE5VC+lG
         RgnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q+e4cetF;
       spf=pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id p65si249634wmp.0.2021.05.21.07.27.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 07:27:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Received: by mail-ej1-x633.google.com with SMTP id z12so29321752ejw.0
        for <clang-built-linux@googlegroups.com>; Fri, 21 May 2021 07:27:00 -0700 (PDT)
X-Received: by 2002:a17:906:7c9:: with SMTP id m9mr10446393ejc.98.1621607220367;
        Fri, 21 May 2021 07:27:00 -0700 (PDT)
Received: from agape.jhs ([109.52.244.91])
        by smtp.gmail.com with ESMTPSA id bh3sm3564556ejb.19.2021.05.21.07.26.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 07:27:00 -0700 (PDT)
Date: Fri, 21 May 2021 16:26:57 +0200
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	devel@driverdev.osuosl.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [staging:staging-next 201/268]
 drivers/staging/rtl8723bs/core/rtw_security.c:89:6: warning: stack frame
 size of 1120 bytes in function 'rtw_wep_encrypt'
Message-ID: <20210521142656.GA1409@agape.jhs>
References: <202105201711.QuzeTqRK-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202105201711.QuzeTqRK-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: fabioaiuto83@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Q+e4cetF;       spf=pass
 (google.com: domain of fabioaiuto83@gmail.com designates 2a00:1450:4864:20::633
 as permitted sender) smtp.mailfrom=fabioaiuto83@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Transfer-Encoding: quoted-printable
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

Hi robot,

On Thu, May 20, 2021 at 05:03:14PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.gi=
t staging-next
> head:   b9f38e913a926b455e5048a95f53a993b515509f
> commit: 1b11e893eda0907fc9b28696271e2d9c4337e42d [201/268] staging: rtl87=
23bs: replace private arc4 encryption with in-kernel one
> config: powerpc64-randconfig-r011-20210520 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project bf9e=
f3efaa99c02e7bfc4c57207301b8de39a278)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.=
git/commit/?id=3D1b11e893eda0907fc9b28696271e2d9c4337e42d
>         git remote add staging https://git.kernel.org/pub/scm/linux/kerne=
l/git/gregkh/staging.git
>         git fetch --no-tags staging staging-next
>         git checkout 1b11e893eda0907fc9b28696271e2d9c4337e42d
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Dpowerpc64=20

can't compile this, I get the following error:

make CONFIG_OF_ALL_DTBS=3Dy CONFIG_DTC=3Dy HOSTCC=3D/home/fabio/0day/clang/=
bin/clang CC=3D/home/fabio/0day/clang/bin/clang LD=3D/home/fabio/0day/clang=
/bin/ld.lld HOSTLD=3D/home/fabio/0day/clang/bin/ld.lld AR=3D/home/fabio/0da=
y/clang/bin/llvm-ar NM=3D/home/fabio/0day/clang/bin/llvm-nm STRIP=3D/home/f=
abio/0day/clang/bin/llvm-strip OBJDUMP=3D/home/fabio/0day/clang/bin/llvm-ob=
jdump OBJSIZE=3D/home/fabio/0day/clang/bin/llvm-size READELF=3D/home/fabio/=
0day/clang/bin/llvm-readelf HOSTCXX=3D/home/fabio/0day/clang/bin/clang++ HO=
STAR=3D/home/fabio/0day/clang/bin/llvm-ar CROSS_COMPILE=3Dpowerpc-linux-gnu=
- --jobs=3D8 LLVM_IAS=3D1 ARCH=3Dpowerpc drivers/staging/rtl8723bs/
  CC      scripts/mod/empty.o
clang: error: unsupported argument '-me500' to option 'Wa,'
make[1]: *** [scripts/Makefile.build:272: scripts/mod/empty.o] Error 1
make[1]: *** Attesa per i processi non terminati....
make: *** [Makefile:1226: prepare0] Error 2

moreover I had to add LLVM_IAS=3D1, and ARCH=3Dpowerpc64 is not a valid arc=
hitecture (used powerpc instead).

Could you help me?

thank you,

fabio

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210521142656.GA1409%40agape.jhs.
