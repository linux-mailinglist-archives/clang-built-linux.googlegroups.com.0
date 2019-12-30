Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIOLUXYAKGQELJIGLBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id F16D412CBFB
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Dec 2019 03:49:06 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id w205sf5968832oie.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 18:49:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577674145; cv=pass;
        d=google.com; s=arc-20160816;
        b=GCEAoIvXO583UHpLpqWgAxHIitH0+TLBWSnMkDeyC0RvwsMC+SE77vdW1P0jG9kjMx
         HAykDzBS9W+CEayU1qZdtTuAue9xr5TG6EfgK8zrEv3Kc2PxHUz2KxaowIsd8Ie1jmpP
         lTtNld8MrTGXNRryoXtUi0gLAblYVraTubUB385Th9VxLm4PL+2n4Vxzd2A7wDPafnY9
         2YI/6nJucAZBDs+WwS9dxQoaKtYuQmw80KR+4U4HM3AZV8xqaI+CJv5oWo6oqdmjA48W
         p4732x+00C8jYiR+ZXFjnu7qR40+g1mQBsZO1o8ZAsvS2BTgPC1pKhLWQZzXDHXOk6Ab
         rMoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=7wYwezlu3lXAuSZCXNRDMM9+8ulSIL1BOoCSlqesQ8k=;
        b=Pvo7sOB2RFXmbFLHfJ8AdT0k6JrmiDpMU2MkqTi/DQMk2OmlDWbEtw5/1fslsaGepd
         5YSXSp/oZXYvludUX68u+O31lGU2t5GdqBbJX92iwxFz9i7271yKeUlX0SbTsfW+3JkA
         u0E+IhMVlOyb7CoFeiuUFXey4xjWw0gDCjo2HkMa+CjCz9LkJPEwjeHlXqvVTZrZ9ed2
         MutFF+Pau5BOrlotCZBP9twAjWIx/7tGAVQmhmr3oFEMxrACNMsiIrRsiMuvqLtJmg9d
         8Cq0tLtIfGX8wmMybvIE4xPHejlUsvx88cdk46j7Dr9Mi6GnnUV/pVQlWlaej1LKRkYV
         F+1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CJiCGnKg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7wYwezlu3lXAuSZCXNRDMM9+8ulSIL1BOoCSlqesQ8k=;
        b=pjVj1KJwD0TNPiIYQcScLlhoez1tJ7Vvzzg/HZ6VAnSHPvflCIg+8a8adiuahp/RDy
         L4y0hcH4o6LM6S39DEZZG6iZUmx+EM0IjujK9rzfJEgptIB2TD4ywg7WFmjJjGvjl/05
         Pvq5gt69eQukaqbeINDAYB5jwOjALA5sNv/pNClHfTESX+b5HnP2NABe4/ZF02VdjZLz
         cZM6uMkxNlcg2QbCbCF/80VTbBWreol2kTDG35OddPr6BENRH3Qefi8+8u1d8pzgAR87
         gJt/X/qzyuqf64VELTtTmKT4CsErpwQ21hR2zjPSEoNMf94jz4HfcSYv5A3/ZhoqK0iV
         yFKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7wYwezlu3lXAuSZCXNRDMM9+8ulSIL1BOoCSlqesQ8k=;
        b=EojOk+1QIMohPjeXpyyGDEQ2ZH2wDCAO0F4bXrC3BCtLKY8ZAzDf0Xt/amaq1mxu3B
         BtUwHTgLjJlOeK6c/05Dt/VkoDB56xTLyMIVGPyEV0G6QQKVbM9A4pCrE98p0oRVpF4g
         VPTPwFvdp2ExrOaEFGGsFLOyKizEqJagwAL49i40ORv5Ow4l3frJ/p5TizH83PUtD5PW
         8/vuueN7zlm15rhsJ7tIxgXbbLFl8RlzE/yHy3t6wlr+j9SSikRf/6ReSQtVKgLmRSKa
         hroirV5Eco/npqoaQNVCeUn/YxLA/sMIE5KXAG72HBDTPNmyyyUunIPlPkcF91bPE7vb
         akKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7wYwezlu3lXAuSZCXNRDMM9+8ulSIL1BOoCSlqesQ8k=;
        b=gbckRj+m1ywtXjEd61pFHL61eaPhqqH2qYTUtzVKmcH5klvhWK96oCrop5TW45siFl
         FQHuQPbYumxRJG3b8M445UlAFe9mr42pdz+QCKY/p4yaD+u06LpKLI8S12EFw+mYjxOP
         7KqtuTFNrK1khkY4FeLMu3eJHHuA2oQu+BK4DgxpCx0kjK+oKnZGOqpREdIqWVFwQU4N
         MnFd36FziWqcks9C2TkmXWeTCqmpQNvdxO4vpKj+BynMgAjcA0gDSbOJOefFwlpM7wzR
         ytfvkdLtA3MnELXmfPyqY+VpKgUnraAM3wvKvkoAKfzvcV1Mg1aQk8WQ4gmTh4pQYjDe
         GlDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUFFMFXvOAdoxzykgTSQE1dq6cTm6LZVow+A4h0HWSkjSNl6Lj/
	6GMLtg6/o/lOEx85Sg35CBU=
X-Google-Smtp-Source: APXvYqzowc9CZXbyEXGKJzjRq0iMY4yOrQPEVIcVklGQAZBynmeodtI+zQ76w369Wx9ucSQJ/qRo9g==
X-Received: by 2002:a05:6830:149a:: with SMTP id s26mr1457066otq.55.1577674145399;
        Sun, 29 Dec 2019 18:49:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7dd6:: with SMTP id k22ls7988807otn.5.gmail; Sun, 29 Dec
 2019 18:49:05 -0800 (PST)
X-Received: by 2002:a9d:6f0d:: with SMTP id n13mr74481590otq.165.1577674145065;
        Sun, 29 Dec 2019 18:49:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577674145; cv=none;
        d=google.com; s=arc-20160816;
        b=WE4puzY8cMduAQlgE068cIEKSFS2xhZcH5wrKp8tc3EOtXGr6fIeNTWDvQlHs+Nsou
         xoVhjFyDZd2rADT39Qw/b8nLTpuaG1QBZeu/wzZuhYt5r/r0o8LhpMdOXFRUA/LWn5rQ
         31M28pjM5gvqufRgG53Fp1FWnXvjOOtSC+XYlJfYMfU0yd9OulS/q9KiPmKXeyH5gCbI
         kDqwtJAUaZ19pWUKdP4cLAe9Np/FqdcHvKDinrqJ59J+a9c29tmWNipPeWOxSXZaNPwY
         ld8BoMIk0sOi7cq7jFpvusUsg7N8HpKybyAPsl+TspyDtY2L8hDVjxUSbW2JXFy+7XFk
         M8Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ljaYHvAJPbOYdDbpArTS86K57jbaDWixPGW2I7v0BGI=;
        b=BbRg4aq5m9c/R34ULw8Akg8UrTKAz0X6eYgCuSLpj7f7rvpPbNmCfK9fLVo0ZOR9cf
         686nkhZfICfnTt8Kws/nX0d2YumihM950NfMfnesGrG3JqIvXDQFBITQNaOM2MDC+vKL
         GgZsUJD9bJ1fE7Xliyx2uN50vugiNzv0yZ+LX6JdgQoidp4Tci9sendSvAHaAekdzdDX
         muqsJf2cnqmlohY0KKeXFvlbGe9t65QfB90wi6ZDMQ/hz0eOTAiW3jkHiNNmm5Q6Z8jF
         EaxgMPPiMWm8a/SvrMDVVSR7mHGBAh+tGR4iU0MSUdYBjcYUMDSm/HFO8qSXeDhwzZ4b
         T+dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CJiCGnKg;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id a12si1330791otq.5.2019.12.29.18.49.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Dec 2019 18:49:05 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id k14so44528725otn.4
        for <clang-built-linux@googlegroups.com>; Sun, 29 Dec 2019 18:49:05 -0800 (PST)
X-Received: by 2002:a05:6830:110a:: with SMTP id w10mr74404590otq.300.1577674144764;
        Sun, 29 Dec 2019 18:49:04 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t13sm11921015otp.33.2019.12.29.18.49.03
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 29 Dec 2019 18:49:04 -0800 (PST)
Date: Sun, 29 Dec 2019 19:49:02 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 09/12] pm80xx : IOCTL functionality for SGPIO.
Message-ID: <20191230024902.GB6257@ubuntu-m2-xlarge-x86>
References: <201912260547.jCLcrf9B%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201912260547.jCLcrf9B%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CJiCGnKg;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Dec 26, 2019 at 06:16:43AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191224044143.8178-10-deepak.ukey@microchip.com>
> References: <20191224044143.8178-10-deepak.ukey@microchip.com>
> TO: Deepak Ukey <deepak.ukey@microchip.com>
> CC: linux-scsi@vger.kernel.org
> CC: Vasanthalakshmi.Tharmarajan@microchip.com, Viswas.G@microchip.com, de=
epak.ukey@microchip.com, jinpu.wang@profitbricks.com, martin.petersen@oracl=
e.com, dpf@google.com, yuuzheng@google.com, auradkar@google.com, vishakhavc=
@google.com, bjashnani@google.com, radha@google.com, akshatzen@google.com
>=20
> Hi Deepak,
>=20
> Thank you for the patch! Perhaps something to improve:
>=20
> [auto build test WARNING on mkp-scsi/for-next]
> [cannot apply to scsi/for-next v5.5-rc3 next-20191220]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Deepak-Ukey/pm80xx-Updat=
es-for-the-driver-version-0-1-39/20191225-181036
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git for-=
next
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 9a77c2095439=
ba41bd8f6f35931b94075b2fd45b)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
>    In file included from drivers/scsi/pm8001/pm8001_ctl.c:43:
>    In file included from drivers/scsi/pm8001/pm8001_sas.h:58:
>    drivers/scsi/pm8001/pm8001_defs.h:102:9: warning: 'CONFIG_SCSI_PM8001_=
MAX_DMA_SG' macro redefined [-Wmacro-redefined]
>    #define CONFIG_SCSI_PM8001_MAX_DMA_SG   528
>            ^
>    ./include/generated/autoconf.h:10861:9: note: previous definition is h=
ere
>    #define CONFIG_SCSI_PM8001_MAX_DMA_SG 128
>            ^
> >> drivers/scsi/pm8001/pm8001_ctl.c:1049:6: warning: variable 'timeout' i=
s uninitialized when used here [-Wuninitialized]
>            if (timeout < 2000)
>                ^~~~~~~
>    drivers/scsi/pm8001/pm8001_ctl.c:1020:23: note: initialize the variabl=
e 'timeout' to silence this warning
>            unsigned long timeout;
>                                 ^
>                                  =3D 0
>    2 warnings generated.

Responded on the mailing list while messing up this list's CC :(

https://lore.kernel.org/linux-scsi/20191230024728.GA693@ubuntu-m2-xlarge-x8=
6/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191230024902.GB6257%40ubuntu-m2-xlarge-x86.
