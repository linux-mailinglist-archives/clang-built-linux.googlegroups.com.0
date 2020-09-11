Return-Path: <clang-built-linux+bncBDFLHYPKYQGBBDF45T5AKGQE66A67DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D582265994
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 08:49:50 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id p16sf6447813ilp.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 23:49:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599806988; cv=pass;
        d=google.com; s=arc-20160816;
        b=tcsKQnRUo+qjEM7mgH44HQx4i9J0nV36jx6Udg2uSw+laeO9IG5R39oB/wi/vQC9i9
         ykb/ik/o7YEwMo0UEI7a8p0sKSBV76GnOQhcHjxoBGUoE4Y17RTnfpfNOdiJ90vMD+6J
         R7raj+Z9P0lITbLPBfLxUj2tjESNSIGIV1IGnD+Jy4uHFFrZYLeRhWnbQJQbmjzeknzi
         nIzlAXj5BwvY6hIXDlYmv1MN+173JtbrlianF0d5JDR5pk6Uc7ouQJ3/ePvzxMtoIubn
         eymagUte0mEAE3NVLQbhxNkK6v0MRMCbgZ3I7NdfVRfLKuBwdgt1CQU3H+JMBvZr2Er3
         mZAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:dkim-signature;
        bh=ID5uturdmMoCmloFxWRsD3VR6MtwMKWd5b9P/vC090E=;
        b=QxguVrbVr1W6m7xA9dHCvVAA45mYO2p5UUOoaa4sK3lI0KceKuwGe2t+xxpOQ73QPE
         cGc4/BuAYmVnHrZqWubT+buoNaVKlc09uAFgWS5sXfQDGNfG/5v9TuAPbGeU1oYvta4Z
         hDQIb/2ZILjJufM15I+lMuQggRCJQnFcnrW3T5VJB2Re6Pdyrbg7suDBKAqXhi3dEqF2
         dNvoXjZI7ftveLqn/XTRX7WT2E9yi1nzSYvfhtUwfhbWSqEWORTjUl1U+QXjV42VGmQy
         me97EBs7PIKfWri6zeclUzec6o0kxPy8iijke+ABJffp2EdO/7zjWMSXwytinFGY76PH
         Cbwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="E2LN/rcf";
       spf=pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ID5uturdmMoCmloFxWRsD3VR6MtwMKWd5b9P/vC090E=;
        b=d06Aq07O9FkXA3RRZpJC1d6yjdvVZvpWqbMg3gqgX7bawIDODNY5MjO0wfarLQxcEE
         ZTir4dREjia90V6N8K5PM5GMehU3u/LcOJo5KMCkNgkmYJ76aLM65E+17Pzqfn7irrsm
         7qzEPFFWUrt65rkm7qQPN6jeM9S2/2+gbIfknteF1A9Fz9Fw9bHwknlhdgfHSZZgq2bm
         7HCkfD0uSH05XzpX4ls35/ZmmhWAI73duRvSkttvg5OXbxSP2D4G0TT/pQnJxMcBjXBg
         3H2g3gJBk3sVbzBd2Q58jPnp1aDsRIRqQ4rLsTkee650dUrULd+hHTSPLaYQ8nM3X48y
         m9vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ID5uturdmMoCmloFxWRsD3VR6MtwMKWd5b9P/vC090E=;
        b=Ypzsbmm7hyeoahlOjybI+AFC4eOmpogNZP6IQlJZgrHHRYozXrD8hDLh40kDIO/H2D
         m06WI8rvtOlfMwxBcKn5X/ePTMJIkbpaNaAC7yQDACBHcNSNTQKozIPnyutFcIBekmor
         u1U8wvCM2MsF5vU1IGYOxeky4vxi5itNyfsU9Uspfzbddp6YTNkZdZlCTR0DM3tEr+KO
         eSa+aIg7oVTMBJFRHPBYdZSWyeSkhu7er4k5oGx8Jn/s7eosfdheEbinHwO/ypHJbwqV
         JF897RbaND/FTUhbAvarPp0N89w25BvZ3zATkqxPKWNqJHEW4rubue/qLxxHAE/Y8TF0
         Xdtg==
X-Gm-Message-State: AOAM532UUpWkDWfhDSebHMcnDIM4Wl3tjpYxloAozeXCi6zq13BfpX/B
	7SuV6T/3/wUsNZaDpuN9bQM=
X-Google-Smtp-Source: ABdhPJwLQxYURP+QH1irSeqUYe+Y7qfCcbzbbKMJwQtVFODIWEaXOPqYm9Kolh6+np/Zsuxwv74J5g==
X-Received: by 2002:a6b:e812:: with SMTP id f18mr689432ioh.65.1599806988815;
        Thu, 10 Sep 2020 23:49:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce51:: with SMTP id a17ls341975ilr.0.gmail; Thu, 10 Sep
 2020 23:49:48 -0700 (PDT)
X-Received: by 2002:a92:290d:: with SMTP id l13mr706572ilg.114.1599806988438;
        Thu, 10 Sep 2020 23:49:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599806988; cv=none;
        d=google.com; s=arc-20160816;
        b=ZLuyIz27QBdN87m3tUkDtwx+0cFUUueOYTdvtKeDfsSNytxL3Pt6HcRS7O0KoOA4B9
         UBsET2T8QXiJ0rf914+Dp5ZDF071bnh8fVa5OJ/vH0DTm63ixFNFh8248bPIJ/AiCZ0z
         OcTF2ONt5K1UwVaE3Cm+UIS7AApY+IcdgCr9Fb7EoSMI+rTQpZdfe2h4uLpTOfYLnrjW
         yJilVubNSudhPLBaA+7ksggboUAoMdhMENLbRf7QOAyXjU2WOwbnvDGVblr+ZxXMlXSK
         9C9nZHu4oW4oh+JRrkoyMFwRNi+wmnRK6xGUdQFRpoVcNIKjHpmbQa5/HRFAAC2vS0sd
         lCXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=vX8YsLkv1Q4XtpxUF2Zt7HYumW021/duiky8+eTbx/Y=;
        b=TidctyepfRUo8yueVt25Lz9GW54oEdA1ylCZzXImKU4aOUUCxQQ1TlYm7dC/Qb4rPW
         dBFCkOhvXUvA5Fm4XhyXR5JdYHj8CcSjMxdnaYHHnHG/xYnyLDI1yUTE5XvOcXwvEIPk
         0UilBdECsMRb08hqQylF/CieKmZF6T6s9pwxhm9WN/LL9sgv+/NkX63CDst/An9GpacP
         0dr7OW6kOroqfe1A7pJcrLXGkqIVGLK9x1sggVBqC8K9dgxtacP7W91YrsSl602bxzcy
         8CKl96djDs4+1oRcE3cpwDD/hZkHeLmka+ePyHg2qMpN7NkDGA7/VBX+tKNyog5oEXyP
         rWfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="E2LN/rcf";
       spf=pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id c10si77284iow.3.2020.09.10.23.49.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 23:49:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08B6nlT3026910;
	Fri, 11 Sep 2020 01:49:47 -0500
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08B6nlrb056012
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 11 Sep 2020 01:49:47 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 11
 Sep 2020 01:49:47 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 11 Sep 2020 01:49:47 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08B6njXF093454;
	Fri, 11 Sep 2020 01:49:46 -0500
Subject: Re: [linux-next:master 4238/6654] include/linux/dmaengine.h:1576:
 undefined reference to `dma_request_chan'
From: "'Peter Ujfalusi' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: kernel test robot <lkp@intel.com>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
        Vinod
 Koul <vkoul@kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>
References: <202009101830.GfC9Ewv4%lkp@intel.com>
 <b2bfc310-481e-92c5-9426-74395b24c4be@ti.com>
X-Pep-Version: 2.0
Message-ID: <7ccb1302-940c-e731-0d90-24421f6aa735@ti.com>
Date: Fri, 11 Sep 2020 09:49:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <b2bfc310-481e-92c5-9426-74395b24c4be@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: peter.ujfalusi@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="E2LN/rcf";       spf=pass
 (google.com: domain of peter.ujfalusi@ti.com designates 198.47.23.249 as
 permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
X-Original-From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Reply-To: Peter Ujfalusi <peter.ujfalusi@ti.com>
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



On 10/09/2020 14.18, Peter Ujfalusi wrote:
> Hi,
>=20
> On 10/09/2020 13.46, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.=
git master
>> head:   7ce53e3a447bced7b85ed181c4d027e93c062e07
>> commit: 7547dbd3b198f309aaff54e3528898a8a196faff [4238/6654] dmaengine: =
Mark dma_request_slave_channel() deprecated
>> config: arm64-randconfig-r025-20200909 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0a5=
dc7effb191eff740e0e7ae7bd8e1f6bdb3ad9)
>> reproduce (this is a W=3D1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install arm64 cross compiling tool for clang build
>>         # apt-get install binutils-aarch64-linux-gnu
>>         git checkout 7547dbd3b198f309aaff54e3528898a8a196faff
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Darm64=20
>=20
> I'm not sure what is wrong, but can not reproduce it with GCC.

I have tried with clang/llvm (10.0.1) without luck to reproduce.

>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>    aarch64-linux-gnu-ld: warning: -z norelro ignored
>>    aarch64-linux-gnu-ld: fs/orangefs/orangefs-debugfs.o: in function `or=
angefs_debug_read':
>>    fs/orangefs/orangefs-debugfs.c:375: undefined reference to `stpcpy'
>=20
> Is this also caused by the blaimed patch?
>=20
>>    aarch64-linux-gnu-ld: security/apparmor/lsm.o: in function `param_get=
_mode':
>>    security/apparmor/lsm.c:1559: undefined reference to `stpcpy'
>>    aarch64-linux-gnu-ld: security/apparmor/lsm.o: in function `param_get=
_audit':
>>    security/apparmor/lsm.c:1530: undefined reference to `stpcpy'
>>    aarch64-linux-gnu-ld: drivers/tty/tty_io.o: in function `tty_line_nam=
e':
>>    drivers/tty/tty_io.c:1139: undefined reference to `stpcpy'
>>    aarch64-linux-gnu-ld: drivers/tty/tty_io.c:1139: undefined reference =
to `stpcpy'
>>    aarch64-linux-gnu-ld: drivers/tty/tty_io.o:drivers/tty/tty_io.c:1139:=
 more undefined references to `stpcpy' follow
>>    aarch64-linux-gnu-ld: drivers/tty/serial/fsl_lpuart.o: in function `l=
puart_remove':
>>    drivers/tty/serial/fsl_lpuart.c:2663: undefined reference to `dma_rel=
ease_channel'
>>    aarch64-linux-gnu-ld: drivers/tty/serial/fsl_lpuart.c:2666: undefined=
 reference to `dma_release_channel'
>=20
> #ifdef CONFIG_DMA_ENGINE
> struct dma_chan *dma_request_chan(struct device *dev, const char *name);
> #else
> static inline struct dma_chan *dma_request_chan(struct device *dev,
> 						const char *name)
> {
> 	return ERR_PTR(-ENODEV);
> }
> #endif
>=20
> static inline struct dma_chan * __deprecated
> dma_request_slave_channel(struct device *dev, const char *name)
> {
> 	struct dma_chan *ch =3D dma_request_chan(dev, name);
>=20
> 	return IS_ERR(ch) ? NULL : ch;
> }
>=20
> And in the included config we have:
> # CONFIG_DMADEVICES is not set
> CONFIG_DMA_ENGINE=3Dy

The .config get corrected all the time and the CONFIG_DMA_ENGINE goes
away, I can not make it stick.

- P=C3=A9ter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/7ccb1302-940c-e731-0d90-24421f6aa735%40ti.com.
