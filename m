Return-Path: <clang-built-linux+bncBCJP7WOE5UIBBM6K62BQMGQE2UCLQWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8E636474C
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 17:43:49 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id c6-20020a17090aa606b029014e6b52299asf14915690pjq.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 08:43:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618847028; cv=pass;
        d=google.com; s=arc-20160816;
        b=FGrF46fmN8fQQJXUM96V31W0yOejyNpr3MeqMJc+tiERIcLEsb4iFss9OIpFCdewRE
         gdS2tYl2E6RSwS3PNkrT5isDpnMJeDsbNd+AbIk+uHzkposUvgAx4EdJxkvr1rR+BemX
         LAccgmgMccferI0hsIgao2FQ5Fs9F9hcdsq6tx59Yqd/NVW3ZOCWS9njInF+Gzt/fLw5
         jZI/wEiLvEvltRI5NnuFXJGUUMIbR42wUssC6lsd145JW2v6aANfk9iSDffdRon75Ur2
         yxM3kx+czAvAnkxk8dqOIaoGhvdA1D+oaxaDVdnwvnbyQDkANrVq/GPzsNquSEiGqz5c
         8h5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=p25GSkBg0Vmsk3P7J0U2Ixsg37apLW6imzxXiSjG1oA=;
        b=djakc10UsA6Qz7rI5ET8s7VCqmULnCKz5Ztykewsea30QuWrFEBOb0Us+WKeEBW4Ap
         kMjqV1puGbQ3e36EAZOIEtnTf3fNM+JbNNaWAU5pb5s2l3F5SMHnZR2KFDhg6QvPYFqW
         6nuyVxxCcQrYxOjohJR5VYU59rF9mTh9CgxIarDKjQAzsGVOlx6IdL7hBLZSpS7iytWq
         H7KER6Y8Ef4H0KsKXo7uOAKuVDNodruoGw0c+5SOlGTFENQOeQm9PLbRCYL5o848fFDl
         Y6WGmACNc1QEmQQLAnDMmQ2VA782OhQRhwAqNquBRpkAx+hyVfXlMXmVJMTjrN6QR3sO
         jl4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LuajrzoV;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p25GSkBg0Vmsk3P7J0U2Ixsg37apLW6imzxXiSjG1oA=;
        b=G712IfdK0rGV81TWmpBHuWyZBY5h3j+jyvm3x0byxHAsnSbjgq7ILSvGPfBx8qDdv4
         7MpnhCY8Q1T5AFQ776uzv+q/lmFcbVx1QhpQEIssZ0IShFpK7eDYJCw9oxeYd9aWJ2B2
         nbzwvKwSah4uMfZH5PtMIqIsdP/Del3cjeokJmyt0O+fDw+rkIhQedjxTgCHCI404V5z
         IuqqqamDpoQZZKildSZB/97CW9fF9y1OqfbWbSd3xDXf0bttcfd6v7aV1SQFqqb+g9s8
         WoRL98GjVeEz2GuB2z7zi9iAVgwfJarmia+TyNBF2EBDmjBJg2y3RPCSuNWPiTXiNk1D
         qPrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p25GSkBg0Vmsk3P7J0U2Ixsg37apLW6imzxXiSjG1oA=;
        b=QHv8eaiRBAL0eQz2CiqcYzcSouofNlBqJrLwOhGu5idliF9BHPOuRdbNItIiY1PfM0
         FhcBZB+IhgQpePhp90D34wgSbQZr/S92xkK3T9R8Cc7nzf+PrZp/8/PatIdijDt7Vr+p
         0QS0cqM50wn9azKL3R/ZK32wLjjQzMLwSPu4Ak8aetyH3WAOAF9aTRKXo86GqLk8HQ+G
         hVts7PjzIqKFJHSSUNxyZIVKpiMAw32jpl+vHwRIyaVccOTwPzeruHbq2CYIEiLbeCX7
         rAFmB73+wUkVjG+LP8dmsFs04yqZa53FsTlaDDA870r28GuDiFb2Q1AQ1EPqau/NPtzK
         M3eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334pXp+IOH6YcDjE7Q8k7bqYe8eJR3WmXxcEqrCvjLKgVAzIBxz
	9dZRwvvzRBbPe39cAfZrgiU=
X-Google-Smtp-Source: ABdhPJwr5MnyKhn27C/xHpSFIZsPrDK6bz25nsWyVr9HKLPXS5DJHBV5CMkHz//iN01+p9flhF0I+g==
X-Received: by 2002:a63:5626:: with SMTP id k38mr12938542pgb.128.1618847027971;
        Mon, 19 Apr 2021 08:43:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:63c5:: with SMTP id x188ls5017964pfb.7.gmail; Mon, 19
 Apr 2021 08:43:47 -0700 (PDT)
X-Received: by 2002:a63:fc56:: with SMTP id r22mr12014730pgk.324.1618847027403;
        Mon, 19 Apr 2021 08:43:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618847027; cv=none;
        d=google.com; s=arc-20160816;
        b=wsT35H7bnl0gO+uah/AG7qJ1Q53su7pZVcOFS+JBygZITmf+kXkVlnmsW77n4LUnzV
         taVFWC4c2/MzVnwzKURDlEgllTlKUKMwe9890iZgPP5fThkfA50MqEDc2XemfW9SfCgR
         6niNEZbgYujQtD4Y93y4ONM3Lb78NDERryIz3FW3+hN2eqNJ1HqnQhaG6YfSsCSSsRbE
         YK8ZFKNHGT7TfzgpkRTT7JiA8oIiDxv9EuB/spqE0ievVWRWHYlinggXoKRI5wobupph
         oLR2pD5UQD88yCwpSo4mJnumDdtgtoWSbBOCtUzlJ3BBZjY4ddGTC8dRYdXjr6l6y6UG
         fhxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gY9I1iBHQGPcCB4nWpZeR+9X7MDWUZ4aIohnT6sq9KM=;
        b=VaC+Ad0+uEaPuxTSV1RyuipXUSo8jh5Fnnb5keJVlfEmr/I9QQSKgmVqPcbgNMaBzY
         S5xTOWcnx7XJXeI9+gUwbRZ+wCgDsYWHxwHSSVFZIx7izG0AgiHD56MICwT6SGX596ru
         taE0gQHHCvNbIhhjV+kZBF2izNfvSIecDtYv5o5T2RA/8TfLYZ1aHL/P9E4Myx/FN5tM
         lWgvKGMMo8oKTkAdatHwho/Wn2R1CR18UBE4kPgbe80d+n/WUYpB+HJYijvZi1VGARen
         f9QdVNG1tqAizxawdZmnAemqfEBtfURusHm6uECw2qD6YInn2O7mYzDm+p4uUWvjOBCy
         BfBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=LuajrzoV;
       spf=pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::835 as permitted sender) smtp.mailfrom=dianders@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com. [2607:f8b0:4864:20::835])
        by gmr-mx.google.com with ESMTPS id q16si214182plx.3.2021.04.19.08.43.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 08:43:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::835 as permitted sender) client-ip=2607:f8b0:4864:20::835;
Received: by mail-qt1-x835.google.com with SMTP id j7so26385626qtx.5
        for <clang-built-linux@googlegroups.com>; Mon, 19 Apr 2021 08:43:47 -0700 (PDT)
X-Received: by 2002:ac8:5545:: with SMTP id o5mr6701775qtr.330.1618847026246;
        Mon, 19 Apr 2021 08:43:46 -0700 (PDT)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com. [209.85.219.170])
        by smtp.gmail.com with ESMTPSA id l4sm10097338qkd.105.2021.04.19.08.43.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 08:43:45 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id o10so39267807ybb.10
        for <clang-built-linux@googlegroups.com>; Mon, 19 Apr 2021 08:43:45 -0700 (PDT)
X-Received: by 2002:a25:244d:: with SMTP id k74mr17981842ybk.79.1618847024707;
 Mon, 19 Apr 2021 08:43:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210416153909.v4.15.I3e68fa38c4ccbdbdf145cad2b01e83a1e5eac302@changeid>
 <202104171051.46GyYIaF-lkp@intel.com>
In-Reply-To: <202104171051.46GyYIaF-lkp@intel.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 19 Apr 2021 08:43:33 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WL3tWAg-jtB6qoq0nrCxaZZwYKwKCCoxytzR2YMS9iPA@mail.gmail.com>
Message-ID: <CAD=FV=WL3tWAg-jtB6qoq0nrCxaZZwYKwKCCoxytzR2YMS9iPA@mail.gmail.com>
Subject: Re: [PATCH v4 15/27] drm/bridge: ti-sn65dsi86: Break GPIO and
 MIPI-to-eDP bridge into sub-drivers
To: kernel test robot <lkp@intel.com>
Cc: Andrzej Hajda <a.hajda@samsung.com>, Neil Armstrong <narmstrong@baylibre.com>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@siol.net>, Sam Ravnborg <sam@ravnborg.org>, 
	Wolfram Sang <wsa-dev@sang-engineering.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Rob Clark <robdclark@chromium.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dianders@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=LuajrzoV;       spf=pass
 (google.com: domain of dianders@chromium.org designates 2607:f8b0:4864:20::835
 as permitted sender) smtp.mailfrom=dianders@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Apr 16, 2021 at 7:32 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Douglas,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on next-20210416]
> [cannot apply to wsa/i2c/for-next robh/for-next linus/master v5.12-rc7 v5.12-rc6 v5.12-rc5 v5.12-rc7]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Douglas-Anderson/drm-Fix-EDID-reading-on-ti-sn65dsi86-solve-some-chicken-and-egg-problems/20210417-064243
> base:    18250b538735142307082e4e99e3ae5c12d44013
> config: x86_64-randconfig-a002-20210416 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project f549176ad976caa3e19edd036df9a7e12770af7c)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/a870b6e38fac3e5453e4b74fdfe6eb05c8be7ea7
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Douglas-Anderson/drm-Fix-EDID-reading-on-ti-sn65dsi86-solve-some-chicken-and-egg-problems/20210417-064243
>         git checkout a870b6e38fac3e5453e4b74fdfe6eb05c8be7ea7
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/gpu/drm/bridge/ti-sn65dsi86.c:1308:1: error: redefinition of '__inittest'
>    module_auxiliary_driver(ti_sn_bridge_driver);
>    ^
>    include/linux/auxiliary_bus.h:71:2: note: expanded from macro 'module_auxiliary_driver'
>            module_driver(__auxiliary_driver, auxiliary_driver_register, auxiliary_driver_unregister)
>            ^
>    include/linux/device/driver.h:262:3: note: expanded from macro 'module_driver'
>    } \
>      ^
>    include/linux/module.h:130:42: note: expanded from macro '\
>    module_init'
>            static inline initcall_t __maybe_unused __inittest(void)                \
>                                                    ^
>    drivers/gpu/drm/bridge/ti-sn65dsi86.c:1190:1: note: previous definition is here
>    module_auxiliary_driver(ti_sn_gpio_driver);
>    ^
>    include/linux/auxiliary_bus.h:71:2: note: expanded from macro 'module_auxiliary_driver'
>            module_driver(__auxiliary_driver, auxiliary_driver_register, auxiliary_driver_unregister)
>            ^
>    include/linux/device/driver.h:262:3: note: expanded from macro 'module_driver'
>    } \
>      ^
>    include/linux/module.h:130:42: note: expanded from macro '\
>    module_init'
>            static inline initcall_t __maybe_unused __inittest(void)                \

Ah, my mistake in individually using these in the same module:

module_auxiliary_driver(ti_sn_gpio_driver);
module_auxiliary_driver(ti_sn_bridge_driver);
module_auxiliary_driver(ti_sn_aux_driver);
module_i2c_driver(ti_sn65dsi86_driver);

What I had worked fine because I wasn't building as a module. I've
fixed this to have a manual init mechanism that will look something
like this at the end of the series:

---

static int __init ti_sn65dsi86_init(void)
{
    int ret;

    ret = i2c_add_driver(&ti_sn65dsi86_driver);
    if (ret)
        return ret;

    ret = ti_sn_gpio_register();
    if (ret)
        goto err_main_was_registered;

    ret = auxiliary_driver_register(&ti_sn_aux_driver);
    if (ret)
        goto err_gpio_was_registered;

    ret = auxiliary_driver_register(&ti_sn_bridge_driver);
    if (ret)
        goto err_aux_was_registered;

    return 0;

err_aux_was_registered:
    auxiliary_driver_unregister(&ti_sn_aux_driver);
err_gpio_was_registered:
    ti_sn_gpio_unregister();
err_main_was_registered:
    i2c_del_driver(&ti_sn65dsi86_driver);

    return ret;
}
module_init(ti_sn65dsi86_init);

static void __exit ti_sn65dsi86_exit(void)
{
    auxiliary_driver_unregister(&ti_sn_bridge_driver);
    auxiliary_driver_unregister(&ti_sn_aux_driver);
    ti_sn_gpio_unregister();
    i2c_del_driver(&ti_sn65dsi86_driver);
}
module_exit(ti_sn65dsi86_exit);

---

With that I can compile as a module and everything works fine with
this builtin. I'll plan to spin a v5 with that fix but I'll wait a
little bit to see if I get any feedback. If I happen to get drm-misc
commit access or can convince someone, I'll try to get the early
patches in the series landed so v5 isn't so giant.

NOTE: on my system sn65dsi86 doesn't actually work currently when
running as a module. That's a pre-existing problem and not one
introduced by my patch. Or perhaps, more appropriately, a pre-existing
pile of problems that I'm not going to try to tackle. A quick summary:

* Part of the problem of making this a module is that I run into the
looping I spent a little bit of time looking at in the past [1]. I
believe the main MSM graphics driver can't handle itself being builtin
but some of the things it needs being in modules.

* Part of the problem is fw_devlink. I don't think it understands the
circularness of the panel and HPD lines and it seems to get upset
unless in permissive mode.

* If I try permissive mode and move the whole MSM graphics to a
module, I get an error about 'disp_cc_mdss_mdp_clk_src: RCG did not
turn on'. Again, this is without my patch series.

Those are not small problems and not new, so I'll settle for making
sure I continue to compile as a module.


[1] https://lore.kernel.org/lkml/20200710230224.2265647-1-dianders@chromium.org/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAD%3DFV%3DWL3tWAg-jtB6qoq0nrCxaZZwYKwKCCoxytzR2YMS9iPA%40mail.gmail.com.
