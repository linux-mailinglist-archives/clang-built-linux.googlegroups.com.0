Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBCXUYL3AKGQEXQBVEUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8411E76A6
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 09:30:18 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id r5sf247134wrt.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 00:30:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590737418; cv=pass;
        d=google.com; s=arc-20160816;
        b=YX7J2nNExV6sHcgxImekaW1gtb2d8B2Y8IjXyLMBNxidv2Wiibl3+w/N1KselE1Z52
         7MmF0FAQzqNHWNtIeEdHxoy56X4LerWYyB1fXG5Q7QKP8M7HsBnMywYbcxgb7G1tLpp+
         DLT3W4BNkhfQsU4/4EV3F4T4ncJQXbDeC8hA/hLWOuoThBkPvn+7T6WBIJEx8LFEirWo
         Lq899UDkoZDBauSjvIDjieFzleXa2p7INag4YnlWPRhdcv06j5FDSVhMyNoLcB56Dowq
         uU09Ikl7OUGiyrdwEPgQp6fZ2l8kFkQb+7PBbDuqSTp4yBIZdrJBJYtX9Ig/pD+DDqcL
         qlQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=9EZcmFRMlPgn3gOECt33Xe7FQ5Tlny+WgcBKqvEASp4=;
        b=Lmc5NUA3ucfxJZ/Y6p3BrmNkSHVNlHHk6yge8HA/zcivztyEOk4YT6zeEXZAggwylV
         8djWhQjZ39V/8JFucvC1bm1U9C3FYIqDa3PCO1PPDSj1QAOhsaBi/Zebqgn2/AR/KtCb
         EsQN2JVCY+wrjKs83ngnBQfJ3l2vgkEcWJftQYQmYIbbYX4DZYhC6BXQDqfkB5QbNjuO
         whVhbjzOI5eIw32vjsWnWS0GJ0SHynCP+OvPTl3YXngFiyuTtj3jXH7uFJfLsgFqm2px
         dfOfo3i3fhup6puCP1wJXmlgrzv4KKydCbcHK0Z1pET6uG0rpJtaYpnFfq8H95M1Sh3t
         nCXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Je+yv0rY;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9EZcmFRMlPgn3gOECt33Xe7FQ5Tlny+WgcBKqvEASp4=;
        b=rooWGnhm+NPLjT0Mcw/JRvjpuSQUOr18rn8Vjy1XWYE8dL/q8UP5JKI2dNeT2Ab1Es
         BM10/YAEWUvA+MHbsHHlcPSAbD9H7sdVeOZjvF4PBDWtfpL8GxoLTddps2+tRog6ekqV
         InK1zBAmcHOf+K0yCV4pKxIK/5WBMfECthJ2v24gwCb4FINMecoZADmnF5UXm68zj/f/
         AbHoRVGrTmOy3rUBMrpVRs+aJmO7P+YaGLgLmx3f/18WIvFx6Utcw7IZjJZZmMFQoKpX
         kvKpYNidH6dLF/zj+ie4UEy3gue4NBWhChFx/lGdSF7u+dIh2f5Q2OlK+zXByf5q8xTL
         xGew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9EZcmFRMlPgn3gOECt33Xe7FQ5Tlny+WgcBKqvEASp4=;
        b=r5DbwpfVIIiT4rBJBt21G66ADbq3A4sRGE1AZ6P5sNnNlzSFZ5HSkK1Hw/zTvIiyS9
         lSzYvSfkSNIo4sdb0dLgCcAwJG5dWXtNJdBwXoxsJhlUOXB/icWs6W0+bLDh88JTvBj5
         WBaGvNsJzFXzVniRxhdI3divm+Gq6xqPUAZg8Vgjnrl47YDwpZIrFstaLDOpJzZAhfzy
         yu7k0CS0Ly7WryGLD9BcsdbsJwde4d+XHlwTKzz8Gyljvg1skirbgTxaReZ9jRM1kDDv
         9vSyVhTUIhN9kMbW0kAF+JJ/l5VtlZjTofbxbHtZ6bsxcof2arpdp3kl43ZJ1PVH0kMe
         935w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532AxQ23cNpOopGiVmm9Lk2uuLzjFAMekXfGKacr9WdsEujM9Bd3
	+s3bNLJSZeW9HJRlerwnLsw=
X-Google-Smtp-Source: ABdhPJzLLaXmrEs7gphoEUUkozPBUPNvX2hyaYGi0bFye6i12JulQyEu6wdtFnhsX0t/6PpWNAMEfw==
X-Received: by 2002:a7b:cf35:: with SMTP id m21mr7457323wmg.181.1590737418564;
        Fri, 29 May 2020 00:30:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9e15:: with SMTP id h21ls2442009wme.0.canary-gmail; Fri,
 29 May 2020 00:30:18 -0700 (PDT)
X-Received: by 2002:a7b:c0d9:: with SMTP id s25mr7599458wmh.175.1590737418086;
        Fri, 29 May 2020 00:30:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590737418; cv=none;
        d=google.com; s=arc-20160816;
        b=Jk7XKrlaJN4srghIvtxk3Rm6Tnl6sHu0o8YBl3scYnYWuS5k6dnadQhbFu1r4IDebU
         GD5DT9Hgfxd423+gVUPxcHBA+PqYBL/gS1Xt/HwWxadoXtRaVYsqku+9vP8FuMxEIaIl
         rRq1wG0WruFWGXEg4xnUd1C83zg/XN0h4vNpF1VhxDwdpB7IztoLpdY8CO5e2IkSuNlW
         3sLI3AU8/9Ycq0eSC+T6Ms48oiCPOACGJ7zh1zxcTX1iiTnfhAdaD+wGIxqDJJgnNvOX
         FPVTpJI710z7l58T/TbvnjJIN129pKM9ynm5V6Bv6p4vdqgt4EDGuILuTvO2pT82IwZ9
         zQ3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Lu7JAc3YfepkRtFpRq1xiOguFXwB8Pfr946uwrP9f7k=;
        b=kTjLLFUFQYSsD5gUXmfL2pWTbVbYpkD8Y3qjblooW4XBYXd3KfStU3s0JEFtOHiaSd
         25FkgvSZ+o36W4aQ2MIt5Jgvm17Vt4KX1Xert4FN37ObPjxzfYY6pQDkKg6J72hQ0gXt
         7GTkF2xNCcd8EPb/J3JgQCKZ9+6Ec766Jmk5oEBTKQ1ylriL0uJFn37xOt1Ay7KMpr3I
         fR6tBonZbF5GJXvSOyEczIZZObUsmUHKf49T3hj41hC6PvsiGpArEIafiyX/MYq/0RFF
         M7RF43KE6Qe2QyeX4RtR19zeuv3SOjcYZj2njuhaJlNe8/2uggfY3nDwZE50n+6W0+DT
         NY6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Je+yv0rY;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id m20si381496wmc.0.2020.05.29.00.30.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 00:30:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id f185so2132243wmf.3
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 00:30:18 -0700 (PDT)
X-Received: by 2002:a7b:cf35:: with SMTP id m21mr7457243wmg.181.1590737417542;
        Fri, 29 May 2020 00:30:17 -0700 (PDT)
Received: from dell ([95.147.198.92])
        by smtp.gmail.com with ESMTPSA id h137sm12232358wme.0.2020.05.29.00.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 00:30:16 -0700 (PDT)
Date: Fri, 29 May 2020 08:30:15 +0100
From: Lee Jones <lee.jones@linaro.org>
To: kbuild test robot <lkp@intel.com>
Cc: Gene Chen <gene.chen.richtek@gmail.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [linux-next:master 12774/13554] drivers/mfd/mt6360-core.c:148:2:
 warning: initializer overrides prior initialization of this subobject
Message-ID: <20200529073015.GQ3628@dell>
References: <202005291101.X3TXWqSi%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202005291101.X3TXWqSi%lkp@intel.com>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Je+yv0rY;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::343
 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Gene,

On Fri, 29 May 2020, kbuild test robot wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.g=
it master
> head:   ff387fc20c697cdc887b2abf7ef494e853795a2f
> commit: 7edd363421dab1d4806802ac65613d1c0ec85824 [12774/13554] mfd: Add s=
upport for PMIC MT6360
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2d06=
8e534f1671459e1b135852c1b3c10502e929)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 7edd363421dab1d4806802ac65613d1c0ec85824
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>=20
> >> drivers/mfd/mt6360-core.c:148:2: warning: initializer overrides prior =
initialization of this subobject [-Winitializer-overrides]
> REGMAP_IRQ_REG_LINE(MT6360_CHG_TREG_EVT, 8),
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/linux/regmap.h:1191:10: note: expanded from macro 'REGMAP_IRQ_REG=
_LINE'
> [_id] =3D {                                                  ^~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~
> drivers/mfd/mt6360-core.c:124:2: note: previous initialization is here
> REGMAP_IRQ_REG_LINE(MT6360_CHG_TREG_EVT, 8),
> ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/linux/regmap.h:1191:10: note: expanded from macro 'REGMAP_IRQ_REG=
_LINE'
> [_id] =3D {                                                  ^~~~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~
> 1 warning generated.

Could you fix this today please?

> vim +148 drivers/mfd/mt6360-core.c
>=20
>    122=09
>    123	static const struct regmap_irq mt6360_pmu_irqs[] =3D  {
>    124		REGMAP_IRQ_REG_LINE(MT6360_CHG_TREG_EVT, 8),
>    125		REGMAP_IRQ_REG_LINE(MT6360_CHG_AICR_EVT, 8),
>    126		REGMAP_IRQ_REG_LINE(MT6360_CHG_MIVR_EVT, 8),
>    127		REGMAP_IRQ_REG_LINE(MT6360_PWR_RDY_EVT, 8),
>    128		REGMAP_IRQ_REG_LINE(MT6360_CHG_BATSYSUV_EVT, 8),
>    129		REGMAP_IRQ_REG_LINE(MT6360_FLED_CHG_VINOVP_EVT, 8),
>    130		REGMAP_IRQ_REG_LINE(MT6360_CHG_VSYSUV_EVT, 8),
>    131		REGMAP_IRQ_REG_LINE(MT6360_CHG_VSYSOV_EVT, 8),
>    132		REGMAP_IRQ_REG_LINE(MT6360_CHG_VBATOV_EVT, 8),
>    133		REGMAP_IRQ_REG_LINE(MT6360_CHG_VBUSOV_EVT, 8),
>    134		REGMAP_IRQ_REG_LINE(MT6360_WD_PMU_DET, 8),
>    135		REGMAP_IRQ_REG_LINE(MT6360_WD_PMU_DONE, 8),
>    136		REGMAP_IRQ_REG_LINE(MT6360_CHG_TMRI, 8),
>    137		REGMAP_IRQ_REG_LINE(MT6360_CHG_ADPBADI, 8),
>    138		REGMAP_IRQ_REG_LINE(MT6360_CHG_RVPI, 8),
>    139		REGMAP_IRQ_REG_LINE(MT6360_OTPI, 8),
>    140		REGMAP_IRQ_REG_LINE(MT6360_CHG_AICCMEASL, 8),
>    141		REGMAP_IRQ_REG_LINE(MT6360_CHGDET_DONEI, 8),
>    142		REGMAP_IRQ_REG_LINE(MT6360_WDTMRI, 8),
>    143		REGMAP_IRQ_REG_LINE(MT6360_SSFINISHI, 8),
>    144		REGMAP_IRQ_REG_LINE(MT6360_CHG_RECHGI, 8),
>    145		REGMAP_IRQ_REG_LINE(MT6360_CHG_TERMI, 8),
>    146		REGMAP_IRQ_REG_LINE(MT6360_CHG_IEOCI, 8),
>    147		REGMAP_IRQ_REG_LINE(MT6360_PUMPX_DONEI, 8),
>  > 148		REGMAP_IRQ_REG_LINE(MT6360_CHG_TREG_EVT, 8),
>    149		REGMAP_IRQ_REG_LINE(MT6360_BAT_OVP_ADC_EVT, 8),
>    150		REGMAP_IRQ_REG_LINE(MT6360_TYPEC_OTP_EVT, 8),
>    151		REGMAP_IRQ_REG_LINE(MT6360_ADC_WAKEUP_EVT, 8),
>    152		REGMAP_IRQ_REG_LINE(MT6360_ADC_DONEI, 8),
>    153		REGMAP_IRQ_REG_LINE(MT6360_BST_BATUVI, 8),
>    154		REGMAP_IRQ_REG_LINE(MT6360_BST_VBUSOVI, 8),
>    155		REGMAP_IRQ_REG_LINE(MT6360_BST_OLPI, 8),
>    156		REGMAP_IRQ_REG_LINE(MT6360_ATTACH_I, 8),
>    157		REGMAP_IRQ_REG_LINE(MT6360_DETACH_I, 8),
>    158		REGMAP_IRQ_REG_LINE(MT6360_QC30_STPDONE, 8),
>    159		REGMAP_IRQ_REG_LINE(MT6360_QC_VBUSDET_DONE, 8),
>    160		REGMAP_IRQ_REG_LINE(MT6360_HVDCP_DET, 8),
>    161		REGMAP_IRQ_REG_LINE(MT6360_CHGDETI, 8),
>    162		REGMAP_IRQ_REG_LINE(MT6360_DCDTI, 8),
>    163		REGMAP_IRQ_REG_LINE(MT6360_FOD_DONE_EVT, 8),
>    164		REGMAP_IRQ_REG_LINE(MT6360_FOD_OV_EVT, 8),
>    165		REGMAP_IRQ_REG_LINE(MT6360_CHRDET_UVP_EVT, 8),
>    166		REGMAP_IRQ_REG_LINE(MT6360_CHRDET_OVP_EVT, 8),
>    167		REGMAP_IRQ_REG_LINE(MT6360_CHRDET_EXT_EVT, 8),
>    168		REGMAP_IRQ_REG_LINE(MT6360_FOD_LR_EVT, 8),
>    169		REGMAP_IRQ_REG_LINE(MT6360_FOD_HR_EVT, 8),
>    170		REGMAP_IRQ_REG_LINE(MT6360_FOD_DISCHG_FAIL_EVT, 8),
>    171		REGMAP_IRQ_REG_LINE(MT6360_USBID_EVT, 8),
>    172		REGMAP_IRQ_REG_LINE(MT6360_APWDTRST_EVT, 8),
>    173		REGMAP_IRQ_REG_LINE(MT6360_EN_EVT, 8),
>    174		REGMAP_IRQ_REG_LINE(MT6360_QONB_RST_EVT, 8),
>    175		REGMAP_IRQ_REG_LINE(MT6360_MRSTB_EVT, 8),
>    176		REGMAP_IRQ_REG_LINE(MT6360_OTP_EVT, 8),
>    177		REGMAP_IRQ_REG_LINE(MT6360_VDDAOV_EVT, 8),
>    178		REGMAP_IRQ_REG_LINE(MT6360_SYSUV_EVT, 8),
>    179		REGMAP_IRQ_REG_LINE(MT6360_FLED_STRBPIN_EVT, 8),
>    180		REGMAP_IRQ_REG_LINE(MT6360_FLED_TORPIN_EVT, 8),
>    181		REGMAP_IRQ_REG_LINE(MT6360_FLED_TX_EVT, 8),
>    182		REGMAP_IRQ_REG_LINE(MT6360_FLED_LVF_EVT, 8),
>    183		REGMAP_IRQ_REG_LINE(MT6360_FLED2_SHORT_EVT, 8),
>    184		REGMAP_IRQ_REG_LINE(MT6360_FLED1_SHORT_EVT, 8),
>    185		REGMAP_IRQ_REG_LINE(MT6360_FLED2_STRB_EVT, 8),
>    186		REGMAP_IRQ_REG_LINE(MT6360_FLED1_STRB_EVT, 8),
>    187		REGMAP_IRQ_REG_LINE(MT6360_FLED2_STRB_TO_EVT, 8),
>    188		REGMAP_IRQ_REG_LINE(MT6360_FLED1_STRB_TO_EVT, 8),
>    189		REGMAP_IRQ_REG_LINE(MT6360_FLED2_TOR_EVT, 8),
>    190		REGMAP_IRQ_REG_LINE(MT6360_FLED1_TOR_EVT, 8),
>    191		REGMAP_IRQ_REG_LINE(MT6360_BUCK1_PGB_EVT, 8),
>    192		REGMAP_IRQ_REG_LINE(MT6360_BUCK1_OC_EVT, 8),
>    193		REGMAP_IRQ_REG_LINE(MT6360_BUCK1_OV_EVT, 8),
>    194		REGMAP_IRQ_REG_LINE(MT6360_BUCK1_UV_EVT, 8),
>    195		REGMAP_IRQ_REG_LINE(MT6360_BUCK2_PGB_EVT, 8),
>    196		REGMAP_IRQ_REG_LINE(MT6360_BUCK2_OC_EVT, 8),
>    197		REGMAP_IRQ_REG_LINE(MT6360_BUCK2_OV_EVT, 8),
>    198		REGMAP_IRQ_REG_LINE(MT6360_BUCK2_UV_EVT, 8),
>    199		REGMAP_IRQ_REG_LINE(MT6360_LDO1_OC_EVT, 8),
>    200		REGMAP_IRQ_REG_LINE(MT6360_LDO2_OC_EVT, 8),
>    201		REGMAP_IRQ_REG_LINE(MT6360_LDO3_OC_EVT, 8),
>    202		REGMAP_IRQ_REG_LINE(MT6360_LDO5_OC_EVT, 8),
>    203		REGMAP_IRQ_REG_LINE(MT6360_LDO6_OC_EVT, 8),
>    204		REGMAP_IRQ_REG_LINE(MT6360_LDO7_OC_EVT, 8),
>    205		REGMAP_IRQ_REG_LINE(MT6360_LDO1_PGB_EVT, 8),
>    206		REGMAP_IRQ_REG_LINE(MT6360_LDO2_PGB_EVT, 8),
>    207		REGMAP_IRQ_REG_LINE(MT6360_LDO3_PGB_EVT, 8),
>    208		REGMAP_IRQ_REG_LINE(MT6360_LDO5_PGB_EVT, 8),
>    209		REGMAP_IRQ_REG_LINE(MT6360_LDO6_PGB_EVT, 8),
>    210		REGMAP_IRQ_REG_LINE(MT6360_LDO7_PGB_EVT, 8),
>    211	};
>    212=09
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



--=20
Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
Linaro Services Technical Lead
Linaro.org =E2=94=82 Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200529073015.GQ3628%40dell.
