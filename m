Return-Path: <clang-built-linux+bncBDLPNNEQZUFBBFE5273AKGQEWD2CKXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1EA1EB408
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Jun 2020 05:59:17 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id b131sf6968898pga.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Jun 2020 20:59:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591070356; cv=pass;
        d=google.com; s=arc-20160816;
        b=TmMLlvzg6BANXjVhFdRjWJSqcbyk6iehUO9/1qEX8e9i9p/GvNuk3UUzr+t0GDmZmt
         VDuhyepwlxE1NazTOnSvtduqd0CrTfUr7keyxzNu2vH+LuqpVqn4lCTtClObCTKsJScN
         2zb8Lj1sMOMMyQDDnMK4xCm3R7C/SUuUYxiaGxESIORFLyAJiL52UpQRmsJexdS+IdWV
         0ZNhvGjBw1cpFM7LNT04CjQTSm8bFOVdhfNENzqV5B9CDmqGtXBdviKu1x6EHJZ+Hp3n
         k58oV8mRTM4+a31Frr+UFPQgyF+1CXkkRiP8w/1oGCtRURBLqaXFlVu9KxKY0TRN1nkM
         Uftw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=qwwYrMFHSR97OXf/Pf+e1glpvtGH43xypikmOYvUkHc=;
        b=aa5inHl7dyobOaOpHuqbLigrIKvAHgdnPs6Z7qihkwxtrMwK39yS0N5CQyF2DRIb0F
         tFFbeV9ILTVrbuwJ9pF25zrRTR0LJhHL7pJI2MImwjy9H1tfW43DXcebSEKpuC3l/Hj0
         M3YELJxQPzUo+EH7+17h8ss+CGINp2TbQm2P+jA9pbY3RlOUGRy3eMRRt53WqpOKxXRA
         F8gCUvITuqzsYvd5Vxi65DUYjEVdP3hOq5ffL0WC9TUK7XTVXo7sut6Fc56KMcFSDoB2
         tHtxtY392PM7kYfg/X+PzR1ze1wBo8/z5VL4jH2ylgJ0UjHTmAAcupjUIgEgvYXpPm8V
         o00w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BQnjU+32;
       spf=pass (google.com: domain of gene.chen.richtek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=gene.chen.richtek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qwwYrMFHSR97OXf/Pf+e1glpvtGH43xypikmOYvUkHc=;
        b=bEbiP9x+cENfdA+BWiYxZb+ksFHs6esgR1sTNuwvY6WAF+fj9Q2bzroSZCOGasWied
         zhL5vTN7M6uZFKZo72muQVmHdx11spRbStQHmmblXsJVmc6VKE0kkswsD+mN9ESVVv1f
         ahYhSlITzr2aFbAX2j30vAcw8OHeiOwqCgR+goBpXjJrWG1NGMDuKWEerbUw5mZVP0lV
         Pd19b8OeVDc7CPtRia2O7nScHO426EXeqfF91TbL5SYlQVkkvaEonQhYSoEWl8vmM5Rn
         0NK7nXgwjpDy/viU/zFNfECfVkjE7vpCYYQy/QiOrtb1RU6JMUG96xsKmOy2mFfC1g0E
         yyZw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qwwYrMFHSR97OXf/Pf+e1glpvtGH43xypikmOYvUkHc=;
        b=h5oNLwAeRKJvWj0vNuadIw8WqOCp6HLGLIbJuPR0DuE4ELXI+yz/o3doffe2PdRKQN
         b/Kn3WJg+bAm61J8QtJxkkxwis0jdxYW38yqCHwWidygHDPqW7DPZEIxoZ3/1SMytMg2
         HBlvBEweJX6Im0WO74Jrk8r8wjsJzpUxT3irSJmh2g+ZU5YZMl8PcQbTq2Ss7rt44Fgd
         i7s9HPjdCYryJu3v2lHMLfgAIip7IBcWO6RrP/cR7o69DFSg1v1QosMlPrgi1Z+D9sEA
         9FhBV3vo3n5gV8PmRMdWDKRgaqwNr16zjhfofdrvuLpWd7hzbxKs4Ok7neXWNe/SJ9af
         Vgvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qwwYrMFHSR97OXf/Pf+e1glpvtGH43xypikmOYvUkHc=;
        b=AMzl+0wYIKs2xvDQRWJWXqOWUPLItzFGoI+ttErn7He7Q11Zo9M9ac/FJaqH3KqABu
         hgZ+rDg3qIGeoYergtUlzru0j7dU58Fx5lB61GLkUBhAlb+H98HIZdmKNF2PDj45s2WA
         jpJfo6Tp3/ZJYYFL956pnpWevNbOFa19xI9XVGUc7hyC+ZLTyAb0g813Pp1MMKb7rRdY
         VpDhejfhSrfEIRvuXLXc0yYufnOnpToEm5E282gZFe6MLOiKZYh8HIVd9hoI4FwcFocj
         ReFXlpuRwQV2ce9/6dsj6Z2XRh42SIUtjkVNHMGDOFDCBLAZJLkWHMHMsnfyFepD2Bng
         z8wA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533M8j5QvrIHN3C89qEnaTS4YtjdWYvRKaOMN+UXMIQf24w2ZxWI
	oRTHjUnoP/JENHOfsSewJlg=
X-Google-Smtp-Source: ABdhPJw7e/3NR8ESPvE8iIdOn37fNKYpw77ylPJ0APnBihZEUzY012npRHdrYRtm48Mgq59I/xETLg==
X-Received: by 2002:a63:dc0f:: with SMTP id s15mr21541828pgg.182.1591070356376;
        Mon, 01 Jun 2020 20:59:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1415:: with SMTP id u21ls3089505pgl.7.gmail; Mon, 01 Jun
 2020 20:59:15 -0700 (PDT)
X-Received: by 2002:a63:de06:: with SMTP id f6mr23258853pgg.238.1591070355905;
        Mon, 01 Jun 2020 20:59:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591070355; cv=none;
        d=google.com; s=arc-20160816;
        b=AuSrPKe92llk1JWOwGyenH+vb53iHwEsPhnRJp1BYwVBQEaEJnRzVUWFZ/dfF6DXmF
         NHbrQdjL3VjA0FFvQ3W2Kuiwi/nx8nGQnPzB7zStbKF1nSWypY+S/j42eVoZJ3+iXyu7
         97/i3z+djQInIImPl+VXSeie2JvW6cWx4ZixqLMzViVKMJS1+zz0C7zzzixBP6I/fINa
         AxDb3qX9Lkj8AWIiyMikuNqQpHpSUIV4C0xq+WsYI8YZcp6HPy/17jORRFHUT0S4U7Rc
         +zWmkMvPiyDuuIlQZNcEtYFx+Giadwk7VN/FQ1JJZZOsOMTRTHavH8zYOfLMbX0+uVHX
         I22w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2EkKSxFNSloHoz6pqPnY6y5JXq3EJ6iYhKX0julLF6A=;
        b=wGueU/i7A4Le3TTqsOUvGWqeyKxjUDG9SjojIAJhZ9eE1JQMBipQFMn+XJ0BLpHGCH
         Emnsl0/MVqrdL9phoVIv8CNahZwhZ872p4D9uV486OYV5xjt+jELG6JRAhOn/6ZwkU0X
         XDvnNridwTWF3tDsUmgikXg2Zx7zCP7Mmixkt5YZs5qpPbWH88BswY0vqUIPZAAX2DnJ
         SOZ3nZUkeGhEiOjXwN/lDdyfRJCGInvmE6oAetdSTnHRE3rrcx/AjbdeLd9YIdD5X4et
         ItTVSaRRUTShnhLXLTKoxbBCvYfE4pr1mwwvS6vLAW5MwOhbJg4C9iVUdpqJR51JC1TA
         eerw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BQnjU+32;
       spf=pass (google.com: domain of gene.chen.richtek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=gene.chen.richtek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id g6si56367pjl.1.2020.06.01.20.59.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jun 2020 20:59:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gene.chen.richtek@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id a13so6790050ilh.3
        for <clang-built-linux@googlegroups.com>; Mon, 01 Jun 2020 20:59:15 -0700 (PDT)
X-Received: by 2002:a05:6e02:e8c:: with SMTP id t12mr23747386ilj.186.1591070355374;
 Mon, 01 Jun 2020 20:59:15 -0700 (PDT)
MIME-Version: 1.0
References: <202005291101.X3TXWqSi%lkp@intel.com> <20200529073015.GQ3628@dell>
In-Reply-To: <20200529073015.GQ3628@dell>
From: Gene Chen <gene.chen.richtek@gmail.com>
Date: Tue, 2 Jun 2020 11:59:03 +0800
Message-ID: <CAE+NS37O=7+d2THMijcVRCTbWoT5i7K6QfcGuhgTD6_UGfYvHw@mail.gmail.com>
Subject: Re: [linux-next:master 12774/13554] drivers/mfd/mt6360-core.c:148:2:
 warning: initializer overrides prior initialization of this subobject
To: Lee Jones <lee.jones@linaro.org>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: gene.chen.richtek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BQnjU+32;       spf=pass
 (google.com: domain of gene.chen.richtek@gmail.com designates
 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=gene.chen.richtek@gmail.com;
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

Lee Jones <lee.jones@linaro.org> =E6=96=BC 2020=E5=B9=B45=E6=9C=8829=E6=97=
=A5 =E9=80=B1=E4=BA=94 =E4=B8=8B=E5=8D=883:30=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Gene,
>
> On Fri, 29 May 2020, kbuild test robot wrote:
>
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next=
.git master
> > head:   ff387fc20c697cdc887b2abf7ef494e853795a2f
> > commit: 7edd363421dab1d4806802ac65613d1c0ec85824 [12774/13554] mfd: Add=
 support for PMIC MT6360
> > config: x86_64-allyesconfig (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2d=
068e534f1671459e1b135852c1b3c10502e929)
> > reproduce (this is a W=3D1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         git checkout 7edd363421dab1d4806802ac65613d1c0ec85824
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross =
ARCH=3Dx86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> drivers/mfd/mt6360-core.c:148:2: warning: initializer overrides prio=
r initialization of this subobject [-Winitializer-overrides]
> > REGMAP_IRQ_REG_LINE(MT6360_CHG_TREG_EVT, 8),
> > ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/linux/regmap.h:1191:10: note: expanded from macro 'REGMAP_IRQ_R=
EG_LINE'
> > [_id] =3D {                                                  ^~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/mfd/mt6360-core.c:124:2: note: previous initialization is here
> > REGMAP_IRQ_REG_LINE(MT6360_CHG_TREG_EVT, 8),
> > ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > include/linux/regmap.h:1191:10: note: expanded from macro 'REGMAP_IRQ_R=
EG_LINE'
> > [_id] =3D {                                                  ^~~~~~~~~~=
~~~~~~~~~~~~~~~~~~~~~~~
> > 1 warning generated.
>
> Could you fix this today please?
>

fixed update patch v10, also sync latest patch in server
https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git/commit/?h=3Dfor=
-mfd-next

> > vim +148 drivers/mfd/mt6360-core.c
> >
> >    122
> >    123        static const struct regmap_irq mt6360_pmu_irqs[] =3D  {
> >    124                REGMAP_IRQ_REG_LINE(MT6360_CHG_TREG_EVT, 8),
> >    125                REGMAP_IRQ_REG_LINE(MT6360_CHG_AICR_EVT, 8),
> >    126                REGMAP_IRQ_REG_LINE(MT6360_CHG_MIVR_EVT, 8),
> >    127                REGMAP_IRQ_REG_LINE(MT6360_PWR_RDY_EVT, 8),
> >    128                REGMAP_IRQ_REG_LINE(MT6360_CHG_BATSYSUV_EVT, 8),
> >    129                REGMAP_IRQ_REG_LINE(MT6360_FLED_CHG_VINOVP_EVT, 8=
),
> >    130                REGMAP_IRQ_REG_LINE(MT6360_CHG_VSYSUV_EVT, 8),
> >    131                REGMAP_IRQ_REG_LINE(MT6360_CHG_VSYSOV_EVT, 8),
> >    132                REGMAP_IRQ_REG_LINE(MT6360_CHG_VBATOV_EVT, 8),
> >    133                REGMAP_IRQ_REG_LINE(MT6360_CHG_VBUSOV_EVT, 8),
> >    134                REGMAP_IRQ_REG_LINE(MT6360_WD_PMU_DET, 8),
> >    135                REGMAP_IRQ_REG_LINE(MT6360_WD_PMU_DONE, 8),
> >    136                REGMAP_IRQ_REG_LINE(MT6360_CHG_TMRI, 8),
> >    137                REGMAP_IRQ_REG_LINE(MT6360_CHG_ADPBADI, 8),
> >    138                REGMAP_IRQ_REG_LINE(MT6360_CHG_RVPI, 8),
> >    139                REGMAP_IRQ_REG_LINE(MT6360_OTPI, 8),
> >    140                REGMAP_IRQ_REG_LINE(MT6360_CHG_AICCMEASL, 8),
> >    141                REGMAP_IRQ_REG_LINE(MT6360_CHGDET_DONEI, 8),
> >    142                REGMAP_IRQ_REG_LINE(MT6360_WDTMRI, 8),
> >    143                REGMAP_IRQ_REG_LINE(MT6360_SSFINISHI, 8),
> >    144                REGMAP_IRQ_REG_LINE(MT6360_CHG_RECHGI, 8),
> >    145                REGMAP_IRQ_REG_LINE(MT6360_CHG_TERMI, 8),
> >    146                REGMAP_IRQ_REG_LINE(MT6360_CHG_IEOCI, 8),
> >    147                REGMAP_IRQ_REG_LINE(MT6360_PUMPX_DONEI, 8),
> >  > 148                REGMAP_IRQ_REG_LINE(MT6360_CHG_TREG_EVT, 8),
> >    149                REGMAP_IRQ_REG_LINE(MT6360_BAT_OVP_ADC_EVT, 8),
> >    150                REGMAP_IRQ_REG_LINE(MT6360_TYPEC_OTP_EVT, 8),
> >    151                REGMAP_IRQ_REG_LINE(MT6360_ADC_WAKEUP_EVT, 8),
> >    152                REGMAP_IRQ_REG_LINE(MT6360_ADC_DONEI, 8),
> >    153                REGMAP_IRQ_REG_LINE(MT6360_BST_BATUVI, 8),
> >    154                REGMAP_IRQ_REG_LINE(MT6360_BST_VBUSOVI, 8),
> >    155                REGMAP_IRQ_REG_LINE(MT6360_BST_OLPI, 8),
> >    156                REGMAP_IRQ_REG_LINE(MT6360_ATTACH_I, 8),
> >    157                REGMAP_IRQ_REG_LINE(MT6360_DETACH_I, 8),
> >    158                REGMAP_IRQ_REG_LINE(MT6360_QC30_STPDONE, 8),
> >    159                REGMAP_IRQ_REG_LINE(MT6360_QC_VBUSDET_DONE, 8),
> >    160                REGMAP_IRQ_REG_LINE(MT6360_HVDCP_DET, 8),
> >    161                REGMAP_IRQ_REG_LINE(MT6360_CHGDETI, 8),
> >    162                REGMAP_IRQ_REG_LINE(MT6360_DCDTI, 8),
> >    163                REGMAP_IRQ_REG_LINE(MT6360_FOD_DONE_EVT, 8),
> >    164                REGMAP_IRQ_REG_LINE(MT6360_FOD_OV_EVT, 8),
> >    165                REGMAP_IRQ_REG_LINE(MT6360_CHRDET_UVP_EVT, 8),
> >    166                REGMAP_IRQ_REG_LINE(MT6360_CHRDET_OVP_EVT, 8),
> >    167                REGMAP_IRQ_REG_LINE(MT6360_CHRDET_EXT_EVT, 8),
> >    168                REGMAP_IRQ_REG_LINE(MT6360_FOD_LR_EVT, 8),
> >    169                REGMAP_IRQ_REG_LINE(MT6360_FOD_HR_EVT, 8),
> >    170                REGMAP_IRQ_REG_LINE(MT6360_FOD_DISCHG_FAIL_EVT, 8=
),
> >    171                REGMAP_IRQ_REG_LINE(MT6360_USBID_EVT, 8),
> >    172                REGMAP_IRQ_REG_LINE(MT6360_APWDTRST_EVT, 8),
> >    173                REGMAP_IRQ_REG_LINE(MT6360_EN_EVT, 8),
> >    174                REGMAP_IRQ_REG_LINE(MT6360_QONB_RST_EVT, 8),
> >    175                REGMAP_IRQ_REG_LINE(MT6360_MRSTB_EVT, 8),
> >    176                REGMAP_IRQ_REG_LINE(MT6360_OTP_EVT, 8),
> >    177                REGMAP_IRQ_REG_LINE(MT6360_VDDAOV_EVT, 8),
> >    178                REGMAP_IRQ_REG_LINE(MT6360_SYSUV_EVT, 8),
> >    179                REGMAP_IRQ_REG_LINE(MT6360_FLED_STRBPIN_EVT, 8),
> >    180                REGMAP_IRQ_REG_LINE(MT6360_FLED_TORPIN_EVT, 8),
> >    181                REGMAP_IRQ_REG_LINE(MT6360_FLED_TX_EVT, 8),
> >    182                REGMAP_IRQ_REG_LINE(MT6360_FLED_LVF_EVT, 8),
> >    183                REGMAP_IRQ_REG_LINE(MT6360_FLED2_SHORT_EVT, 8),
> >    184                REGMAP_IRQ_REG_LINE(MT6360_FLED1_SHORT_EVT, 8),
> >    185                REGMAP_IRQ_REG_LINE(MT6360_FLED2_STRB_EVT, 8),
> >    186                REGMAP_IRQ_REG_LINE(MT6360_FLED1_STRB_EVT, 8),
> >    187                REGMAP_IRQ_REG_LINE(MT6360_FLED2_STRB_TO_EVT, 8),
> >    188                REGMAP_IRQ_REG_LINE(MT6360_FLED1_STRB_TO_EVT, 8),
> >    189                REGMAP_IRQ_REG_LINE(MT6360_FLED2_TOR_EVT, 8),
> >    190                REGMAP_IRQ_REG_LINE(MT6360_FLED1_TOR_EVT, 8),
> >    191                REGMAP_IRQ_REG_LINE(MT6360_BUCK1_PGB_EVT, 8),
> >    192                REGMAP_IRQ_REG_LINE(MT6360_BUCK1_OC_EVT, 8),
> >    193                REGMAP_IRQ_REG_LINE(MT6360_BUCK1_OV_EVT, 8),
> >    194                REGMAP_IRQ_REG_LINE(MT6360_BUCK1_UV_EVT, 8),
> >    195                REGMAP_IRQ_REG_LINE(MT6360_BUCK2_PGB_EVT, 8),
> >    196                REGMAP_IRQ_REG_LINE(MT6360_BUCK2_OC_EVT, 8),
> >    197                REGMAP_IRQ_REG_LINE(MT6360_BUCK2_OV_EVT, 8),
> >    198                REGMAP_IRQ_REG_LINE(MT6360_BUCK2_UV_EVT, 8),
> >    199                REGMAP_IRQ_REG_LINE(MT6360_LDO1_OC_EVT, 8),
> >    200                REGMAP_IRQ_REG_LINE(MT6360_LDO2_OC_EVT, 8),
> >    201                REGMAP_IRQ_REG_LINE(MT6360_LDO3_OC_EVT, 8),
> >    202                REGMAP_IRQ_REG_LINE(MT6360_LDO5_OC_EVT, 8),
> >    203                REGMAP_IRQ_REG_LINE(MT6360_LDO6_OC_EVT, 8),
> >    204                REGMAP_IRQ_REG_LINE(MT6360_LDO7_OC_EVT, 8),
> >    205                REGMAP_IRQ_REG_LINE(MT6360_LDO1_PGB_EVT, 8),
> >    206                REGMAP_IRQ_REG_LINE(MT6360_LDO2_PGB_EVT, 8),
> >    207                REGMAP_IRQ_REG_LINE(MT6360_LDO3_PGB_EVT, 8),
> >    208                REGMAP_IRQ_REG_LINE(MT6360_LDO5_PGB_EVT, 8),
> >    209                REGMAP_IRQ_REG_LINE(MT6360_LDO6_PGB_EVT, 8),
> >    210                REGMAP_IRQ_REG_LINE(MT6360_LDO7_PGB_EVT, 8),
> >    211        };
> >    212
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
>
>
> --
> Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
> Linaro Services Technical Lead
> Linaro.org =E2=94=82 Open source software for ARM SoCs
> Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAE%2BNS37O%3D7%2Bd2THMijcVRCTbWoT5i7K6QfcGuhgTD6_UGfYvHw=
%40mail.gmail.com.
