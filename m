Return-Path: <clang-built-linux+bncBDFLHYPKYQGBBLVZ5X5AKGQEH6PHOIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 25303265EA8
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 13:17:04 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id r2sf5830604pga.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 04:17:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599823022; cv=pass;
        d=google.com; s=arc-20160816;
        b=ojkoCwxjX+Kz+QEc4elsAIN/kwHlfwwJm6VtBU4eHjexfNirbr24jN+eP14Nqr/WWh
         +/zbPr+jpTLzTCk2I98Nbe0eA8nNRRZ8LrdJC5HuT5uSVmCT9oo6OEaAKFRV5a1v+LXU
         +LPSm+lIO+q7g0XPbsspV2Fv1E1VyPM8qYUz1+1Ql4NXKXjX7b2LUN9R8vz2mUkA1VJG
         KXr0ueK0d1PMOn5lO6IdwTXvvCxfozDVi6R+u87bAIvgWH2CYLtgA++2fkJAHetKmzRq
         3dtdkPqs6GGLCOBK6iKSFxF8AKL87RHRMpBeNRIXoJ+H+7fCaS4NnJBpgY5IQUrWq+sr
         Foog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=q1VWgwS/vBKQAEj48dsKzStGdgDsDYb055SRp6HxJ9Q=;
        b=Vz74TjYL0KJHF+ArKgio9dDEJABg112mKbKqrNrYGjm4Slh4YJnX7NDdaVAh7dAejd
         82J9ltkW0Tinu+4vYjZkSD0qCTbOpmtb+soOR/h0zI/NGA3S8HKmD9DLr25qB6hgbqbH
         7rjZZITZr6JCRfL3sNg128T5OOtpx8haD6lh8HecLmH0ggYELbp6ZMiR73Z9txCvfOOo
         Pw4PSDMu8L/3nurGWuRtVZNArgOvsI+5dxYGKcRQAppsUOcV5nvTQULwwz+cqdhzqhHN
         QJ3OpFO76tjjvo+2LHqnZ/k22Q5t1X+dS2q7l9XjQL5m3nFPNLslddH0HX0J8WKO1+LG
         2m5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="PSSkBJ/b";
       spf=pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q1VWgwS/vBKQAEj48dsKzStGdgDsDYb055SRp6HxJ9Q=;
        b=Olb04/3COiGGDp+DyXGIksrHoLcqpadyGD73q6G1+Ry9ky+m5enOdJD6bcv3Hu4dCn
         f5Er0Cwm4aAihFGk165cYsnzujkTMZICk7zFH7G1vDG+OnIkC/qWFhaFgoCPwSDpSGmU
         fmY9ysB+nVjupU1V1eaGmHa6ac5EodXxE4Y4kzCBGqEtHkvQChaxkT7VDwsruNAqAJ//
         5kHjYH0ao6yDXmc0LBeOIuLCa6Sa9YpIrbyvdguJgBlD1t3rDR8foh9+h3yMN7B7pVYT
         qIbUvhtGi+NJ3YIuHxwFijCI8vzGzJsgVKet4QjZjqejpSNhvMiZqDClhNVT0sahwbVt
         fMvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q1VWgwS/vBKQAEj48dsKzStGdgDsDYb055SRp6HxJ9Q=;
        b=CBpqDF8qSug/99KqqeQ9sAbTLqIiYgadU4CWabAIC2WSh1kPGDH0xb/RQJIta5s9LV
         8RI9Yt8oOta2Dj3MlLsc5t/G1X8mD2SYBwmjXNZAaK+Vn7drVUYEy+BtgqFF814h5SoY
         HADxPFHfr81AfVCOGqt0Mxp7M2GB366oCSU4ci+rpza+SxWm1bBXWFaE95BAWrkp6E0I
         OCXcHUf4Tci1kODxzNM1/oFCAoDefm3VS6mjGjdaaJw87NeH01ffCUu42Ht28TKc8ePj
         iXR+Pdq7Q4ydfRHMrlaZrFthBk4MP2PdNzK3ZBQSx5su317dq4W7lDltb2S6LfPkLi3e
         1fjA==
X-Gm-Message-State: AOAM533NzuN4RdYkWgeIUvlFu7iJFfpkwbWWrKe/fLg+nCUsUfbEwhVn
	7B+KnvTjxmkqw09hRbqUsQs=
X-Google-Smtp-Source: ABdhPJzZG9dPHPX3VWINGSFucV8hF06PMI3MZ4iNXYuYtrgCljUUek5kePQ+BqjemjmVhnBhzlDA6A==
X-Received: by 2002:a17:902:9a06:b029:d0:cb2d:f276 with SMTP id v6-20020a1709029a06b02900d0cb2df276mr1853944plp.15.1599823022327;
        Fri, 11 Sep 2020 04:17:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e64b:: with SMTP id p11ls629872pgj.10.gmail; Fri, 11 Sep
 2020 04:17:01 -0700 (PDT)
X-Received: by 2002:aa7:9494:: with SMTP id z20mr1728616pfk.144.1599823021679;
        Fri, 11 Sep 2020 04:17:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599823021; cv=none;
        d=google.com; s=arc-20160816;
        b=DEz8fTbhDTbM2MYNltHSP4RTh67jfiMcObwFkFroO4RLn/XATmc07ouq6ZGdyTcuam
         ARNqlLdolf61DhJCcM/sO8qgepPaVp4UYUArZVqVtKGPKDADqipz3NLWndbDnHnuuMb/
         WwMSdZMX0ON+qXERpmqtm89t0RsFxsdftyaM6nuPD4+2ocwr3Er9cpiVfoNvJd8G8AZ+
         VE5ZWP06xlLJeMx5hefbQA9rhhh0ZPI0yF+3eSuM0CbJ3fExD6cx6ZJMTGNFRFVTLzch
         7IKks1QRfdk5pI/sYYhtgqHyRTJO0Bm9W33skhiLLEntG/5ovKCRp9zxbgVm1BP+rWxC
         yBgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=k0BY8udCZhHFwLTEfXUrZmm7VTQi5nHaumTIWC9vdKc=;
        b=oNmzDjS8z/cJyzymHrQRlMVB1Ln/oLF9PthrkJB++WnmSBF/FDIt64+4L79UPXUlB1
         WZlmfoFDudFLTmsu3eHMGDc2XHKrOwUa6+stzx/LRrqZWXGhHqbyvQFDdQOv3m30NZbR
         hgpFzgKhO8eTVbiv6vwLtGhYOzVBtjm8es6sBI02+Mkq69qv1dldTdjySSw5gXV6cTlR
         o6NPj9C9jEIRabp+yUDTvXLKuWkGn/IYuEjDlPQZuBx3TRFxn+rTJ7jEvsk/cAnwwtCD
         kBFUvnY9mdPRlGZt6XFwqaStQG6XoSViut+707lv4l+C8WzUBrGIWWmj51aJBbpSPOiy
         0VZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="PSSkBJ/b";
       spf=pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=peter.ujfalusi@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id lx5si56092pjb.2.2020.09.11.04.17.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Sep 2020 04:17:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter.ujfalusi@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08BBH0CM035252;
	Fri, 11 Sep 2020 06:17:00 -0500
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08BBH065069111
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 11 Sep 2020 06:17:00 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 11
 Sep 2020 06:16:59 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 11 Sep 2020 06:17:00 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08BBGtHj063285;
	Fri, 11 Sep 2020 06:16:58 -0500
Subject: Re: [linux-next:master 4238/6654] include/linux/dmaengine.h:1576:
 undefined reference to `dma_request_chan'
To: Andy Shevchenko <andy.shevchenko@gmail.com>
CC: kernel test robot <lkp@intel.com>, <kbuild-all@lists.01.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Vinod Koul
	<vkoul@kernel.org>
References: <202009101830.GfC9Ewv4%lkp@intel.com>
 <b2bfc310-481e-92c5-9426-74395b24c4be@ti.com>
 <7ccb1302-940c-e731-0d90-24421f6aa735@ti.com>
 <CAHp75VdAAQ+gKdmkU5vzQc6JpoVRN_R9DtfnDHRbxt4MgV4RBA@mail.gmail.com>
From: "'Peter Ujfalusi' via Clang Built Linux" <clang-built-linux@googlegroups.com>
X-Pep-Version: 2.0
Message-ID: <f99e1c36-d514-1d1c-169c-8144fbf81d25@ti.com>
Date: Fri, 11 Sep 2020 14:16:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAHp75VdAAQ+gKdmkU5vzQc6JpoVRN_R9DtfnDHRbxt4MgV4RBA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: peter.ujfalusi@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="PSSkBJ/b";       spf=pass
 (google.com: domain of peter.ujfalusi@ti.com designates 198.47.23.248 as
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



On 11/09/2020 13.00, Andy Shevchenko wrote:
> On Fri, Sep 11, 2020 at 9:49 AM Peter Ujfalusi <peter.ujfalusi@ti.com> wr=
ote:
>> On 10/09/2020 14.18, Peter Ujfalusi wrote:
>>> On 10/09/2020 13.46, kernel test robot wrote:
>>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-nex=
t.git master
>>>> head:   7ce53e3a447bced7b85ed181c4d027e93c062e07
>>>> commit: 7547dbd3b198f309aaff54e3528898a8a196faff [4238/6654] dmaengine=
: Mark dma_request_slave_channel() deprecated
>>>> config: arm64-randconfig-r025-20200909 (attached as .config)
>>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0=
a5dc7effb191eff740e0e7ae7bd8e1f6bdb3ad9)
>=20
> ^^^
>=20
>>>> reproduce (this is a W=3D1 build):
>>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/=
sbin/make.cross -O ~/bin/make.cross
>>>>         chmod +x ~/bin/make.cross
>>>>         # install arm64 cross compiling tool for clang build
>>>>         # apt-get install binutils-aarch64-linux-gnu
>>>>         git checkout 7547dbd3b198f309aaff54e3528898a8a196faff
>>>>         # save the attached .config to linux build tree
>>>>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross=
 ARCH=3Darm64
>>>
>>> I'm not sure what is wrong, but can not reproduce it with GCC.
>>
>> I have tried with clang/llvm (10.0.1) without luck to reproduce.
>=20
> ^^^
>=20
> 12.0.0 !=3D 10.0.1

Yes, I have noticed that.
11.0.0 is at rc2, 12.0.0 is only in master w/o tag.

I _could_ install sys-devel/clang-12.0.0.9999 locally, after all it
would go to different slot, but I would rather not.

>>>> If you fix the issue, kindly add following tag as appropriate
>>>> Reported-by: kernel test robot <lkp@intel.com>
>>>>
>>>> All errors (new ones prefixed by >>):
>>>>
>>>>    aarch64-linux-gnu-ld: warning: -z norelro ignored
>>>>    aarch64-linux-gnu-ld: fs/orangefs/orangefs-debugfs.o: in function `=
orangefs_debug_read':
>>>>    fs/orangefs/orangefs-debugfs.c:375: undefined reference to `stpcpy'
>>>
>>> Is this also caused by the blaimed patch?
>=20
> I think this is a part of the long (recent) discussion about clang
> optimisations.

Right, is there anything I could do or are we going to have similar mail
coming every day?

>=20
>>>>    aarch64-linux-gnu-ld: security/apparmor/lsm.o: in function `param_g=
et_mode':
>>>>    security/apparmor/lsm.c:1559: undefined reference to `stpcpy'
>>>>    aarch64-linux-gnu-ld: security/apparmor/lsm.o: in function `param_g=
et_audit':
>>>>    security/apparmor/lsm.c:1530: undefined reference to `stpcpy'
>>>>    aarch64-linux-gnu-ld: drivers/tty/tty_io.o: in function `tty_line_n=
ame':
>>>>    drivers/tty/tty_io.c:1139: undefined reference to `stpcpy'
>>>>    aarch64-linux-gnu-ld: drivers/tty/tty_io.c:1139: undefined referenc=
e to `stpcpy'
>>>>    aarch64-linux-gnu-ld: drivers/tty/tty_io.o:drivers/tty/tty_io.c:113=
9: more undefined references to `stpcpy' follow
>>>>    aarch64-linux-gnu-ld: drivers/tty/serial/fsl_lpuart.o: in function =
`lpuart_remove':
>>>>    drivers/tty/serial/fsl_lpuart.c:2663: undefined reference to `dma_r=
elease_channel'
>>>>    aarch64-linux-gnu-ld: drivers/tty/serial/fsl_lpuart.c:2666: undefin=
ed reference to `dma_release_channel'
>>>
>>> #ifdef CONFIG_DMA_ENGINE
>>> struct dma_chan *dma_request_chan(struct device *dev, const char *name)=
;
>>> #else
>>> static inline struct dma_chan *dma_request_chan(struct device *dev,
>>>                                               const char *name)
>>> {
>>>       return ERR_PTR(-ENODEV);
>>> }
>>> #endif
>>>
>>> static inline struct dma_chan * __deprecated
>>> dma_request_slave_channel(struct device *dev, const char *name)
>>> {
>>>       struct dma_chan *ch =3D dma_request_chan(dev, name);
>>>
>>>       return IS_ERR(ch) ? NULL : ch;
>>> }
>>>
>>> And in the included config we have:
>>> # CONFIG_DMADEVICES is not set
>>> CONFIG_DMA_ENGINE=3Dy
>>
>> The .config get corrected all the time and the CONFIG_DMA_ENGINE goes
>> away, I can not make it stick.
>=20
>=20

- P=C3=A9ter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/f99e1c36-d514-1d1c-169c-8144fbf81d25%40ti.com.
