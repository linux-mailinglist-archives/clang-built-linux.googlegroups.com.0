Return-Path: <clang-built-linux+bncBCN5HJ6RQMJBBZHSR73QKGQEM364RSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E5C1F7E84
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 23:53:40 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id a11sf3145631lfk.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 14:53:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591998820; cv=pass;
        d=google.com; s=arc-20160816;
        b=L3plnN4Mon/Ry2NgWraY0xhjVGnXZ3GxLiRDJ9+g16rAC/X+UCymdW5Nmxal1f42WA
         QWnQzmZYslCUFClVWB6+Bv8nt1k4imOz4cLuPYQAtPPZiTF/2Uee6kcFLcjsTXaVt2a8
         EAb0fP/Ts1IPUUW5mv+7k2LKz8MxRnblsxGFHbJaVh6eDvmBg3pO3EOf1+v9190EN1t2
         7KBm2xGacictuxhGmbirmJON/Cdi6va/HzI/MuIwoMnhpXhUi/+oxoBoVoRqK8XttYxq
         Clk0qrZkiHLQubdxhHIIqLcLjCiW0XsYFCxOrfTdn+dhwqFkxAHuz8FliUHhb1copJzq
         0peA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=a8GwVF7hlmX1ad0dwoQt7yS3mtq2V+/9xjKllOstnAs=;
        b=nDs6QAvqiSmMbcLKRFQQpml/BAK80uY99gyucTH7EljmnHPHBOMGgwVjEqTEZC7aUC
         1eU6R7PGn+AEgegFGIeyuSY6vanRg0awHk88/u/F2iK2HU83TVUYNjvGKzmRbGO24M5r
         XoZeLt5so6PjCe07nvkJOhM0Vop01fxXnNNEmVUnevOaU8bl+/nBOKYzepJ2o/5dk43q
         t9Tkg9y1go61g6M+AN3II+wA04SWbtzOrc5qjtXxAyopmMOtEk0FyojGsCcIkr+P7Qip
         hx2FZQn1UGwT8jQj9VfKW2nN1J7MIKUKM1cMZXRb/OtGx/5bcl3VinGDdhi978JfiWps
         7wuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gXp9vM9n;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a8GwVF7hlmX1ad0dwoQt7yS3mtq2V+/9xjKllOstnAs=;
        b=gV0TUZuy1jfMeORUpdNlQ6P/I+24TifdtJzFf50WYvbema79HELqcIhStjLEVvcDiV
         IrrVFfS7x8JgpoEnlQh5vMDW9Ajv/h3Iq2q7KA3DGQkPFtySwyuVflWPiQ6ME0kmVGcm
         fpKfhT+Ss6bslXYrg4qKwIesxYCaUnAlfLZFEiIngDCetrgST5Lcw+cfa3sZK6fJ/thn
         IxEiOGNLusI9S/epgEurTKjTxidK/OV61KcpAeycVIYHCR9jRRZCnlG1SOYguzJnkFS/
         +mpKVwJBmd8hRd1d5RcDgD/rTQy61Z76GqluR9FVLPoKmpvO5637qpSXPmeercs2EFU2
         /yXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a8GwVF7hlmX1ad0dwoQt7yS3mtq2V+/9xjKllOstnAs=;
        b=dqNM48ytJETFHd2dZ7PeThim+n3yPMRfQYuOMrO31KG9+Vo9hEXhvkjvituCVz4Z8r
         Ums1ufDsNdaYfyVw3q0W6vHW9reTEac9ts6jTD41qCRhHu1fqwGFwS8Juwkf4QTYIQPm
         +3o+fdofnPiAQFwKjFrsw4xJhjdYAqkx23HUpuqyq1H3GCwSMgDh9yXkQLcF/5qdePoM
         Oy3+G1wDxnsVz6Hr3RsoxofS46tcRxXK2oCF/OPF9wYzEtx52S/mSqIK7ibUBN2KYRaJ
         /lyWNDVJlQu+rMYysR4eUljbK49ZI5Ni4ht8+AqHDV/QvnJl1UaINJEa46dJZMR/IO5P
         FRYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a8GwVF7hlmX1ad0dwoQt7yS3mtq2V+/9xjKllOstnAs=;
        b=mSWuT8vaELSpDqzANO1VkAwupps04++FGeuiI9h+7q8WN9g8WxmxF9Swe3GKoNo94i
         uQ22zidht7toLCX2AqVcOWd8f36G+Kjrg7tVDRAM4ySC5NAzEponOSSKsJWlkL7bf9B1
         jC1hNz1FEcSSrTaTmMuXTW4QNAvoVDaQcq3GWzbEcej9HsHYMcTyFgME7C7weJIoSRTA
         5+ldf/Cr2S2g8fcu2vQ/jLfwBffIm73vVNsEkMWwCcmLVk5S6NnH7REX2LwBBKJvPld2
         cBkFM+m3OpJkpmfVwIgPKf0P9JMnfiLem4NETidsIyG4NBwZCYQES5tLInbFnMwDPXbD
         JqqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oB4y19Q1DPRxQvjP0f4aiFehmhbG2qkF1BOGNJ1lxend462l8
	WVkDk+jwTKbLLO4yZ7tkVSY=
X-Google-Smtp-Source: ABdhPJzMfl6okWenFm4FUV0jvNyCpnEDPzqr65ODeQN6dSJCmWO0iwxdxhF8/hZ7JI65M7RsFUTL9w==
X-Received: by 2002:a2e:8953:: with SMTP id b19mr8209173ljk.187.1591998820079;
        Fri, 12 Jun 2020 14:53:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:43bb:: with SMTP id t27ls2100112lfl.3.gmail; Fri, 12 Jun
 2020 14:53:39 -0700 (PDT)
X-Received: by 2002:a19:6554:: with SMTP id c20mr7723065lfj.140.1591998819547;
        Fri, 12 Jun 2020 14:53:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591998819; cv=none;
        d=google.com; s=arc-20160816;
        b=RDi/vd9X5rwtyE4mOGVXj2uc61+mdvcJcl8kd8nnpnP5ukesGXlzjwEL/o23RzgbP2
         gVXqH374VGrmgAQjZ/hJPbxijFyuBVKD0rvqW53X9Tzz4NTn1z9PnY1GHwzweZQPbfFj
         Nj00hZgFLGSd4AY57bO6dnexcYoe9Prvo5YoZesgZ0HCvRhWGqFcmeZ4beE8IXRMFscv
         NQVzIpYRXYx5Rur4x4JVZEnVZDUE3WcwOXMZqZFY5sz3YmSKqvXDN5jXQwE9jOJR/bP6
         R/ibPAFZQ5ffEosdHfQlJCx39gpL2WzezO+AlMnbOjLdyS+oFUnqrNP6eE+tKCesmFt7
         nWjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=VOElnJrxFX82zCegdC8CJL4A4jdek0Vm1aStzl7y+ic=;
        b=zCON6/UF2YJmWru0v7VlwtUF0Sp3nwpbjihs8oEbqwCNToyscHtN0FGjz8GJeEMmPX
         ndjrNbikXctltmX0bpfNIcA/slrKl3/42iBqKYvplyeU43lSbm1XiQr4JgbF0nr4CPGu
         xzN5O2Fp89Pz/deq0hUlypzRj5gXiXFdw3WPBq8wF7yrisqPo9I3n+zTz83KCpC0/8LS
         ExQZZURpw0LFHbvW0t6SiZlbyLucnL2a6TWeTdIO12RELMz98e9w3auz20tC9G74xA9/
         ruzS9zx+6NIOz40lkveU778AkkIlPzVKk8yOXieEzgbC45nsglO10TDOILPtkXUKEhC1
         WcEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gXp9vM9n;
       spf=pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=digetx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id o10si405331ljp.3.2020.06.12.14.53.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2020 14:53:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id w15so6267203lfe.11
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jun 2020 14:53:39 -0700 (PDT)
X-Received: by 2002:a19:cb05:: with SMTP id b5mr7803699lfg.108.1591998819280;
        Fri, 12 Jun 2020 14:53:39 -0700 (PDT)
Received: from [192.168.2.145] (79-139-237-54.dynamic.spd-mgts.ru. [79.139.237.54])
        by smtp.googlemail.com with ESMTPSA id n1sm2046995ljg.131.2020.06.12.14.53.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jun 2020 14:53:38 -0700 (PDT)
Subject: Re: [PATCH v6 6/6] drm/tegra: output: rgb: Wrap directly-connected
 panel into DRM bridge
To: kernel test robot <lkp@intel.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 dri-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20200609132855.20975-7-digetx@gmail.com>
 <202006130511.AE6Kvrjm%lkp@intel.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <48645520-047f-da72-f8b1-3520911f242e@gmail.com>
Date: Sat, 13 Jun 2020 00:53:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <202006130511.AE6Kvrjm%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: digetx@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gXp9vM9n;       spf=pass
 (google.com: domain of digetx@gmail.com designates 2a00:1450:4864:20::142 as
 permitted sender) smtp.mailfrom=digetx@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

13.06.2020 00:23, kernel test robot =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> Hi Dmitry,
>=20
> I love your patch! Perhaps something to improve:
>=20
> [auto build test WARNING on linus/master]
> [also build test WARNING on next-20200612]
> [cannot apply to tegra/for-next robh/for-next v5.7]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Dmitry-Osipenko/Support-=
DRM-bridges-on-NVIDIA-Tegra/20200609-213026
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t abfbb29297c27e3f101f348dc9e467b0fe70f919
> config: arm64-randconfig-r026-20200612 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3b43=
f006294971b8049d4807110032169780e5b8)

Interestingly, GCC doesn't report this warning.

> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Darm64=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>=20
>>> drivers/gpu/drm/tegra/rgb.c:100:48: warning: unused variable 'tegra_rgb=
_connector_helper_funcs' [-Wunused-const-variable]
> static const struct drm_connector_helper_funcs tegra_rgb_connector_helper=
_funcs =3D {
> ^
> 1 warning generated.


There are two unused structs in the code and one is referenced by the
other, I'll remove the unused structs in v7.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/48645520-047f-da72-f8b1-3520911f242e%40gmail.com.
