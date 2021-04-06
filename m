Return-Path: <clang-built-linux+bncBCGMTBWO2MCBBBU6WCBQMGQERKUXPXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF45354DEB
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 09:34:32 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id g12sf12471261ion.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Apr 2021 00:34:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617694471; cv=pass;
        d=google.com; s=arc-20160816;
        b=K/TZtDBwODTkr8IhmzqiOAeWeKCFXk/CMUwklU8ZjQbP7+CdAkMcXnM5eZtRNcoDP+
         2a+kwGkXD8SMIkQ8lwpTXDV1Fxtu+/oxfmrNy0PMSK0XR+VAW0Jjde/LhrYF9qPehze6
         rNd5eBu0Cs9zb99g1WMc3LLco4jkBahTSqtkHcWQD0jAttXeoO/ePwkzp3vWHwXyQHCW
         9VsAQSwtrEYDezz0FO99O9bTOpffEnFHJn6MHbb704buIDlCrYU0rgaPt2WU0uWggXc+
         kV6cBWzCZZSZsqfpsb5S1T7OldlFbRpj2rQYg90f+BXrl4b8UJNHyXi9q5RMddNJbspb
         nvlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=YlFhFa6w3ePJufKaaxxEjJyXwxehDSo0JbhORnGnZn8=;
        b=biWKGUKhRyaxUS+629q+0EvGeznegTzXZUypEjWYFZg2G7EsSenF+s84a7D2fMOebT
         I2+rYANQrcQYZ4NKDLu1bdBrIEYxxOHAnaPdCqMVuEr7T/OkzwK8RDkSmMZuFW971I9D
         BiNaT5nIesnwsuaxh7FqCjPDuVNVK+AGdK353XWKu1MVHTd2ep7JRGKVKpp/qfrNElpd
         61GfG9E8gOSUS3uN0COjTO4Ylpx99p0FvIM0dd6SK375JPGNpZnujq+BFOjvuXvWT/6X
         5eLtQE62p/KFLibwXT3OBRdpJNjjEgQLRcYXHzr4ked7NHCPnvaqnCSfW3O6A/jOLUzs
         GOlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=rHnELZY2;
       spf=pass (google.com: domain of fparent@baylibre.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=fparent@baylibre.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YlFhFa6w3ePJufKaaxxEjJyXwxehDSo0JbhORnGnZn8=;
        b=NxCqiOYSH1tX+SbbkApQNOa7tmx+Z2AQuJYiVApts/ttKWxgko3G7OYKO4eFx3YGjV
         CyOdDINaAYOshQEMFi/G540MnPxwGrkFkVDc4XJo5avrRBRZES9TPkJ926IQVPUsRJtZ
         Pebc94ayyLGVu18BoWMo4lJ3G2fzDJqfG6XjnPHfTrzmdwY6HC7ks4VVGgaqDTvxwmnz
         9NoH8V4/Eji8ouvxYkZD/J+DtDzafhsCyFT8f3GIRvkR7SfuTwOTPpN67fZxH0nBg5B4
         S0PRL65lagkEC87Z1gXntY4OQowvVjUH64MaIKuPmrkGboE8QeCLDdkiaXmIEAfeS4tp
         qesQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YlFhFa6w3ePJufKaaxxEjJyXwxehDSo0JbhORnGnZn8=;
        b=ci2WGceh4EmEJGEJgJThiAxDSSSRa+ZKI4eahIQWT2utbdEYaPWvwvATKmKPmnPZvG
         eWGujyVk56RM1gMKwJKnvlevN1WYVSnSj4RZwd6IJGDndc5/loBra9/MtsdtSn8CbQhB
         KqZWkhcnvAIvfZvv18+jU8vGK3ExkO3c7bY1rBwm19PqPnSAcrSqeU6GywkGKkhQP3aH
         h1UrSNrMVf8iuxE9St2qSLM8brFQcBVSkw/CobhzC3bSTMMLUG+qOtc0Gbl6Tc2I/LEs
         YamaNqMdhAEUVXxlgXva6ruml5+doUt5gvgiDSNwvDLM7kUWpcvqZJy1Fg4/63xTkVP0
         y4sQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531E5nZhuGPs114QCwToGyAtOVEG6mXZ7PA1QX7gghzYAyIHrIqP
	PulkeEM101CXL6xz5SwhuvA=
X-Google-Smtp-Source: ABdhPJxvXoemAumLwz0egvhdWpvu6cbAPZRzzJvRSPoV/7mSmouvr+5ypXLvtyrqgZ8paDKH698/jw==
X-Received: by 2002:a92:2a07:: with SMTP id r7mr23481541ile.213.1617694471159;
        Tue, 06 Apr 2021 00:34:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1d82:: with SMTP id h2ls3988063ila.9.gmail; Tue, 06
 Apr 2021 00:34:30 -0700 (PDT)
X-Received: by 2002:a92:c085:: with SMTP id h5mr5653843ile.128.1617694470654;
        Tue, 06 Apr 2021 00:34:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617694470; cv=none;
        d=google.com; s=arc-20160816;
        b=hiTylxMSIecbZF9TCGC1rYbwJjOUsV3oICVfPGByDrytxyXewsBTAUz+rZDKjrYlpP
         iWNUIFCFnbxYcArQcuP5y73PKqqfk2xrNsXOXmnqqdvrPSM4ZqCohnU3PAn2ZY4RqM5x
         XFZyjSAvyU/kkJnhj4SIybvWF8dbn6vUTXgkZD49pRMotMVeVaL0JRFWvbscxQtuG6qs
         d8sQMz2DLunlS8lxiLAzliVgsq9CHkmvUch8CGIts1TH+TjQ7jf1aXplrIi/HSQidUtM
         dDUKh4WAU/i/4Rc7naky9+EX5K3jZ11jcqo8FbheqmYoIN8ml137eAZOqQaBgWljXakK
         /RkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O1rz64W3qpTMmQiYeFsZQrw5A/71EhMPvbEVoO9GiM8=;
        b=gUPCZ7BWfH64YZ3NGaNm6bbmOFWNQpsr2YF1rTvUd+aeuZY2t6G3JxFjjtVVkO+Jey
         3r9kwnLqqjnfo0VOYsFN3VBu7xWhZn/uIdK2IMlKDyX3MvMDVuFe+93wo+Qa9UWwCcSe
         XrVzgrV3mnlg3kkK9PsO1C+krIbBb7R7b6SVLO+lVhd4r4X23/Y6Zkl8CJtiE2/lVVIm
         prxRr1PKIYyoqZgSbJgxnT6NnUynsa5KMOH2AfSmvjQtOkL2tLt5EE6mLrx3XQ8ZCpLA
         KNNhXqv+iOo3iiEV0gKhRFKpuvqEED8brjodjz53ni99F8718xiZWtI+jawT21R6J8Pk
         5xQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623 header.b=rHnELZY2;
       spf=pass (google.com: domain of fparent@baylibre.com designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=fparent@baylibre.com
Received: from mail-il1-x136.google.com (mail-il1-x136.google.com. [2607:f8b0:4864:20::136])
        by gmr-mx.google.com with ESMTPS id y13si770211ilv.0.2021.04.06.00.34.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Apr 2021 00:34:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of fparent@baylibre.com designates 2607:f8b0:4864:20::136 as permitted sender) client-ip=2607:f8b0:4864:20::136;
Received: by mail-il1-x136.google.com with SMTP id c3so4119017ils.2
        for <clang-built-linux@googlegroups.com>; Tue, 06 Apr 2021 00:34:30 -0700 (PDT)
X-Received: by 2002:a05:6e02:1b85:: with SMTP id h5mr22800336ili.134.1617694470261;
 Tue, 06 Apr 2021 00:34:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210405200821.2203458-2-fparent@baylibre.com> <202104060814.berYSn6V-lkp@intel.com>
In-Reply-To: <202104060814.berYSn6V-lkp@intel.com>
From: Fabien Parent <fparent@baylibre.com>
Date: Tue, 6 Apr 2021 09:34:19 +0200
Message-ID: <CAOwMV_xn2pv1vVoqz5qb+jNsssCKwVtNGG=yEtcA324adau6Rg@mail.gmail.com>
Subject: Re: [PATCH 2/5] arm64: dts: mediatek: mt8167: add smi_common node
To: kernel test robot <lkp@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Mattijs Korpershoek <mkorpershoek@baylibre.com>, DTML <devicetree@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: fparent@baylibre.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@baylibre-com.20150623.gappssmtp.com header.s=20150623
 header.b=rHnELZY2;       spf=pass (google.com: domain of fparent@baylibre.com
 designates 2607:f8b0:4864:20::136 as permitted sender) smtp.mailfrom=fparent@baylibre.com
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

Hi,

I forgot to mention it, but this series depends on
https://patchwork.kernel.org/project/linux-mediatek/patch/20210405172836.2038526-1-fparent@baylibre.com/

On Tue, Apr 6, 2021 at 2:25 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Fabien,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on robh/for-next]
> [also build test ERROR on arm/for-next keystone/next soc/for-next rockchip/for-next arm64/for-next/core shawnguo/for-next clk/clk-next v5.12-rc6 next-20210401]
> [cannot apply to xlnx/master]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Fabien-Parent/arm64-dts-mediatek-mt8167-add-mmsys-node/20210406-041016
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
> config: arm64-randconfig-r011-20210406 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 2760a808b9916a2839513b7fd7314a464f52481e)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/bbbf216a8432b5af475e4e709bf481475c1af58f
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Fabien-Parent/arm64-dts-mediatek-mt8167-add-mmsys-node/20210406-041016
>         git checkout bbbf216a8432b5af475e4e709bf481475c1af58f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> Error: arch/arm64/boot/dts/mediatek/mt8167.dtsi:73.26-27 syntax error
>    FATAL ERROR: Unable to parse input tree
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAOwMV_xn2pv1vVoqz5qb%2BjNsssCKwVtNGG%3DyEtcA324adau6Rg%40mail.gmail.com.
