Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYUZ5LVQKGQEAVDYCHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 28555B145A
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 20:22:28 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id x9sf34240710ior.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Sep 2019 11:22:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568312546; cv=pass;
        d=google.com; s=arc-20160816;
        b=mZUUsmPaTulOixPV3l5RVPhqjnz94Dn+Ht0LOSU0Nzsa4yfB9qgUxp3aRjdbBfV8FV
         GCLRMeJArwFyEnv03GvIm15YsiKmmh0O8+au3ey4idpBKoLEQ9Cm7TzzpSFG15JXowW/
         0/RRX1cEAPkdX11Hp2F5rB7LvBSqvMhh8LEZcLHyB+8w9r28eRZypcoPcr5qyxd7nSL8
         zsyuS2Nc/HBt1J23zSktkC/CqwQOJ/Tno53u8wIm+Jfz/c2H1T0T6O4y7KP7qZ358eQq
         mgtsEhrRqp3Iogywjj5SZzoQD3/vSD6VG/DxAGMrn6VkxfyV53YAyTv0o77jabJf52Ap
         70aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=m18YGWo5L9Ur44++W/aLXLMYubxNBGdvjyg94QJmlWg=;
        b=S1FrfkxGhJyp994QHzd4RD4R/9LTIAcNU9FooqXcCXgSm1UnaU1nu4lkLM1D7+6E75
         KPxQdkhyAFPeAepVvIgF2DkMbZ06rCIrjfR5BW29/ld5f3+vf8iEkmoO441Ytjzn2g7+
         zrY4n9DI/np3gO7l7AW1G6aFQr6gvV5fE40w74yVqrZjK4mz1uMGfBRAnBt7b04DoeU3
         Dq7+Jy2DWbw/lAlfR/fe2Dy+AV1VIrxNZjRduwTpwfkekovl5NKRFJYjgS5odibJbvUv
         b8TJopb+yg4GYN278cJ78hXC/UPFvFF0rV5enKXQtdTgtXyTg97lHW144Cx7vIAZJz4h
         2jWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MH2Ar13u;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=m18YGWo5L9Ur44++W/aLXLMYubxNBGdvjyg94QJmlWg=;
        b=b31r5UV2u7cVnuRVtYS+hfPrgWlSkpt5maNBjLNnkqovGVxahGivwGV1X9to6aKMtb
         tHGWOHFiAbR0UgCGCyJDHwxB9d80nC12HldMRdmPI6RwIniheMWw4gVZrVNnMc+k7Zs/
         4nQ20ShW2TkqgPqGEYxH4Lkmlpnf+HVrmbxLXzvXNG3bgfRjxvHg6yxAOJCN1iv8X3fg
         7CZrtiDplkJ2HZ6iwQSZMYvhHGdr0Gw5KPgAndWoo5Hu2koClSWgdjpZlVPYUMvKPXIB
         lg5Vb8UXAXdiB+lvQ7+/y1WM6Y0poH/F2a0SR9x4AYcnEaviQpevo6Y2gtrEnEmttP0i
         JnVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m18YGWo5L9Ur44++W/aLXLMYubxNBGdvjyg94QJmlWg=;
        b=MEh1ExUHKlSG5skhA2iUZaQQb7IsI47DDjc3B5B35OPwJCpvqAZ/jT3DGei1TkYpcM
         0ScxXeh/hVFicA66duLXScOIx+qy0Sn0ikozzyocb9hN+1ysgFXg47NcCgYoIZM8lXln
         b49Mxju34MxwgCgubkuzPpPt7kfyz+xM2NG7QveFilW2kiUDC75q/eHEfTCBOg7pOjtN
         QRywwWCHQBL3TzjrmkBzHk2C3nt8ShXKvTSii0We6AS8240Ck6C8TxaJ2IZLSjwfRiA4
         mNF17YwlQsPr0MecHXHPb9CBX7x7T9uHH3CeJAQTTd7aboLlVFSoMfzDsVXFz6o3WLFX
         f9tw==
X-Gm-Message-State: APjAAAUVc2mF3BXHPSet7Xz/1+QqE9EwFUwR5RNZPL/EgCBkzKfJP3zQ
	IFHbhXLntoMQXG85nprqoD4=
X-Google-Smtp-Source: APXvYqwrHzsqODkv1iE7u5/BbvsBebkK8SCUbQAKkNmSF71fAccudpyDjUFqARdBZ/52Brehb+RT8Q==
X-Received: by 2002:a02:3b6f:: with SMTP id i47mr20143267jaf.24.1568312546605;
        Thu, 12 Sep 2019 11:22:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:830d:: with SMTP id x13ls7137727iom.2.gmail; Thu, 12 Sep
 2019 11:22:26 -0700 (PDT)
X-Received: by 2002:a5d:9904:: with SMTP id x4mr6007938iol.20.1568312546294;
        Thu, 12 Sep 2019 11:22:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568312546; cv=none;
        d=google.com; s=arc-20160816;
        b=m0S6QUehOywi1xIOVeY3DERzHIQto0qS+ZHp1Gd0ygEodey8HE/KM1GZzfFW/iA1LE
         R24x3UdIHpI2vWcdrB/av376FJkSEyLA4JcGBrUFDeaj5Gom5Yvf2hhoailZ2kgI8I7x
         jumETNBA0sm4DwUCSjzVqixVJZ0YxbfttIca7MlXXc4ssoYdTP/CyGZQ/nZ7JGl4DMXB
         VLz/SiWYXajczoZnO+pUzQPoTvgn/NGEB8lyYPi0J5mUb7PtZuFdcFnh+DfcjE/peR9l
         kjBK2D2pWvYAM5TXk6pSKfZZBrWOwEYjQy8N14lcBydbN+k/Zv0FcrVfbPm6nCt3dATv
         Wm/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=AV53qnBcqG91OokA4kg58AdEN/YxWUqmk/57JP3r53s=;
        b=OvSf+kTbzQ3DCxeDn7Yg/YYLTuyp3+opZu/5rZbrSfBP8J3wd2zghnCl5Q+RH5WC9G
         WUEh4KJPaVGcml7g9JInrWaroXNbII3levX3lCHEUcDSozWQEH0bfx9sDnwPlSQBxWAL
         ZfoOShCjwAA6uI2t4zz4HxBT/RTocT4GRl/MTttEypk9s86z4nAT94hNHgA28yX7jnpY
         lM0oMnd7hnAztzhMj4QPfA1vl8NqXAtBnwqkqpfMWNzH3aikWt3kSOUVQFE3x8XcTofS
         WOtMrj5g+iSr9SlK+4eC/vOBBly0ToAqg6/x9CCV3jVhJUfeuJ83ipMn5UhzzW31uQSL
         fUPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MH2Ar13u;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id a26si946389ioq.2.2019.09.12.11.22.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Sep 2019 11:22:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id f19so12116194plr.3
        for <clang-built-linux@googlegroups.com>; Thu, 12 Sep 2019 11:22:26 -0700 (PDT)
X-Received: by 2002:a17:902:7296:: with SMTP id d22mr44321542pll.179.1568312545181;
 Thu, 12 Sep 2019 11:22:25 -0700 (PDT)
MIME-Version: 1.0
References: <201909130102.Qc438kZF%lkp@intel.com>
In-Reply-To: <201909130102.Qc438kZF%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 12 Sep 2019 11:22:14 -0700
Message-ID: <CAKwvOdk4-RDXEnovq82kzEWWCCrYPqXqMMTceAr8bK2ssjL0=g@mail.gmail.com>
Subject: Re: [pinctrl:for-next 88/90] drivers/pinctrl/mediatek/pinctrl-mt6765.c:1077:14:
 error: incompatible pointer types initializing 'int (*)(struct mtk_pinctrl *,
 const struct mtk_pin_desc *, bool)' (aka 'int (*)(struct mtk_pinctrl *, const
 struct mtk_pin_desc *, _Bool)') with an expression of type 'int (struct
 mtk_pinctrl *, const struct mtk_pin_desc *, u32, u32)' (aka 'int (struct
 mtk_pinctrl *, const struct mtk_pin_desc *, unsigned int, unsigned int)')
To: kbuild test robot <lkp@intel.com>, light.hsieh@mediatek.com
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linus Walleij <linus.walleij@linaro.org>, kbuild-all@01.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MH2Ar13u;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

+ Light
Light, 0day bot is now testing with Clang. It looks like the function
signature of the provided callback does not match what's expected.
Can you please fix this?

On Thu, Sep 12, 2019 at 10:30 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> CC: linux-gpio@vger.kernel.org
> TO: Light Hsieh <light.hsieh@mediatek.com>
> CC: Linus Walleij <linus.walleij@linaro.org>
>
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/linusw/l=
inux-pinctrl.git for-next
> head:   5a85bd8e3af3a78fd05d059835a52f5a7ee2cbc9
> commit: dbe733ac908ef232f42a6586fa848d9c6910eeab [88/90] pinctrl: mediate=
k: Backward compatible to previous Mediatek's bias-pull usage
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb0=
6f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout dbe733ac908ef232f42a6586fa848d9c6910eeab
>         # save the attached .config to linux build tree
>         make.cross ARCH=3Darm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/pinctrl/mediatek/pinctrl-mt6765.c:1077:14: error: incompatible=
 pointer types initializing 'int (*)(struct mtk_pinctrl *, const struct mtk=
_pin_desc *, bool)' (aka 'int (*)(struct mtk_pinctrl *, const struct mtk_pi=
n_desc *, _Bool)') with an expression of type 'int (struct mtk_pinctrl *, c=
onst struct mtk_pin_desc *, u32, u32)' (aka 'int (struct mtk_pinctrl *, con=
st struct mtk_pin_desc *, unsigned int, unsigned int)') [-Werror,-Wincompat=
ible-pointer-types]
>            .bias_set =3D mtk_pinconf_bias_set_combo,
>                        ^~~~~~~~~~~~~~~~~~~~~~~~~~
> >> drivers/pinctrl/mediatek/pinctrl-mt6765.c:1078:14: error: incompatible=
 pointer types initializing 'int (*)(struct mtk_pinctrl *, const struct mtk=
_pin_desc *, bool, int *)' (aka 'int (*)(struct mtk_pinctrl *, const struct=
 mtk_pin_desc *, _Bool, int *)') with an expression of type 'int (struct mt=
k_pinctrl *, const struct mtk_pin_desc *, u32 *, u32 *)' (aka 'int (struct =
mtk_pinctrl *, const struct mtk_pin_desc *, unsigned int *, unsigned int *)=
') [-Werror,-Wincompatible-pointer-types]
>            .bias_get =3D mtk_pinconf_bias_get_combo,
>                        ^~~~~~~~~~~~~~~~~~~~~~~~~~
>    2 errors generated.
>
> vim +1077 drivers/pinctrl/mediatek/pinctrl-mt6765.c
>
>   1065
>   1066  static const struct mtk_pin_soc mt6765_data =3D {
>   1067          .reg_cal =3D mt6765_reg_cals,
>   1068          .pins =3D mtk_pins_mt6765,
>   1069          .npins =3D ARRAY_SIZE(mtk_pins_mt6765),
>   1070          .ngrps =3D ARRAY_SIZE(mtk_pins_mt6765),
>   1071          .eint_hw =3D &mt6765_eint_hw,
>   1072          .gpio_m =3D 0,
>   1073          .base_names =3D mt6765_pinctrl_register_base_names,
>   1074          .nbase_names =3D ARRAY_SIZE(mt6765_pinctrl_register_base_=
names),
>   1075          .bias_disable_set =3D mtk_pinconf_bias_disable_set,
>   1076          .bias_disable_get =3D mtk_pinconf_bias_disable_get,
> > 1077          .bias_set =3D mtk_pinconf_bias_set_combo,
> > 1078          .bias_get =3D mtk_pinconf_bias_get_combo,
>   1079          .drive_set =3D mtk_pinconf_drive_set_direct_val,
>   1080          .drive_get =3D mtk_pinconf_drive_get_direct_val,
>   1081          .adv_pull_get =3D mtk_pinconf_adv_pull_get,
>   1082          .adv_pull_set =3D mtk_pinconf_adv_pull_set,
>   1083  };
>   1084
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Ce=
nter
> https://lists.01.org/pipermail/kbuild-all                   Intel Corpora=
tion



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdk4-RDXEnovq82kzEWWCCrYPqXqMMTceAr8bK2ssjL0%3Dg%40m=
ail.gmail.com.
