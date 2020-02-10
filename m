Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBW6BQ7ZAKGQEOQ7H3XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 885F61585DD
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 00:01:48 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id a20sf2791584vkm.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 15:01:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581375707; cv=pass;
        d=google.com; s=arc-20160816;
        b=DXYNgGgu/yhW1aiEsHYjyT7EWsS9p3vQKCPKsXoq/r8I8xxKTRgcubifiT+0laDckp
         JQYtLE86XAWskBumWfdzU0jCn81Tu0uxd+gyqMi/ppJbPC+I9YW9OyKV4+N06vXA1GCI
         lBpwzwqZl374/Bk6445//jiHZdlNNijJx0eXRr90rF29oLlAHNB0Hinc2PTu2vN0E8Cr
         dGK/xweF1AtIsorfNRWAEOh4mPaskhUqsazfTnixds6b3CV8FNLMkMdjNMuRAaqPaZMK
         2w+LXix0Pb2BcRifC6/RH2R0aeSswxJn/0veslAlkLyLAizXZ2GpeAy7QCS4YaD90PmH
         QP6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=x5mOqme5DabxpgqYhWbvrbHll/QtzipX+GYlCVqhidU=;
        b=hMwAsgg2h6yHWz+BZXwzakHJeMOdYXQgMPbwDaQMC/cdTQ2CJh2+iTHwmCq0BIfiMZ
         gqb5HrRloVdlYkcjEghPa6BGzxmIJeaaL7yyTS6KbktM/to7ct2aSxKPnMo2tnDBe0Dd
         KSb0lWo19FcreavgTIa2vTfjeTU0mG/zmM/RlrkWvUy777Ic1BylEgw7nbAeiSFiFED/
         8x6PdHwWm9nS2/CrZNU6uuyhgjPvxZ5i2t/uBYo/IKSyIC02i45+uGIzpVUKYIPyEwyv
         gEb+ogoDBjWQHEu/3RgGE7x26gEBR3ch/n/td4/fKPfeOl/k/E4gDTHBljQmU3kHSCX0
         u7xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bt9gLOPy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x5mOqme5DabxpgqYhWbvrbHll/QtzipX+GYlCVqhidU=;
        b=IwXna02NZQePkxQstcqPeaBLp0pn9m8hD16wDYzxcKnORP8vjUNfEHcQi59Nfon/F9
         n+B0sci68OEw1ezynSykbj+P8mutJmnzVgAc6WcE9sprSlIDshlxSC1oBqaDV3PgiYgo
         YUuFu3+lBpWkzyb85xY4NUaNbp980DUupJPvqYNiTWQeyo5g4Bo7XBZuyWgmmQpca0Sd
         ElMbVG7PqcFKGz7dwIN31lC9+CtphZCPBA+pBBnO/1hGFEJQixdp56gYxT0UULhjmXU3
         j5aHcTHXhYaPkUA8cWmHaQuRkXbgpoPMBmEX2xa94cXzyMnC2ZbLKPPk/kbAFym5yESA
         PtIA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x5mOqme5DabxpgqYhWbvrbHll/QtzipX+GYlCVqhidU=;
        b=V/ONXP86rq9b91Z0N3q3jMENZvGnxA5ZvlDgzd/M0QV6ANeAiW8hKCYc4jy5RVMh0N
         vKxThjDcX/6pOwOUo0QbhratU9hbpBh7mpm3+exs3l+ctA6o+ota6Cv82DzlxuQeivDC
         5N6+iUfIsxV0POskLSxCAbOTK2JDw3XV8SNdx1p6krjw3uUdL/eXInD1OkCqKAKNQkPd
         3gMGOH+Wd/2SBu8cenGGtP3gJbjyihqmUgQHK27jb2g3q0kPUP+fC1FGcu57nd5fNJQm
         dgdtdNExEw80Y1VTfG07tbKQSDnQi4pqS5TeutfhMB0pFYuwA4HZHdduOsT5PcLhLiDY
         aBug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=x5mOqme5DabxpgqYhWbvrbHll/QtzipX+GYlCVqhidU=;
        b=reWNnL8jzgKPQYPRwAvgIWJM2dKUTnIcbbaONiGFfc+J8NwzQa+prY58lSlDyZ4x1X
         I9QZrBaC4aWByZ8Nb78MGgJC4io4IEZfX9amB5tRF1rkohVmvsfalAoZ25P9BeT7bhg5
         0p1b6pfyEdC2K5O6XoFVL0bhv0efPN8n7Y89SAsp2zohebS/NTc6fEn6ELBxVh4iCJDi
         nNOy+Nav2x4sGtwDrMrUJl6tlRPMS9SMM4t95+uf1OCfy3NEDjAHLunty+QhkOqqcRDM
         TnO2YKzvp8qyHpgYfWvm7yI/eD4JwE4ibK5mSOjHu3ZwCAdRFjFVDPOVyXZ0ZkJEv+Ot
         1Jjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAViiITyB+mvFhsGlazn4tmCzsXqCoK4lcPZPmPFddXXk4DixJX+
	eSY9ON72zweF7Zv6gpQoGks=
X-Google-Smtp-Source: APXvYqzMSmF+949iUVeJr2Ps+EfggW1da0jPaifCtOv0KfRv4PwAwnARKUjLw3QQwl7TF2a9/95wdw==
X-Received: by 2002:a1f:7288:: with SMTP id n130mr2924334vkc.46.1581375707368;
        Mon, 10 Feb 2020 15:01:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fd78:: with SMTP id h24ls893140vsa.0.gmail; Mon, 10 Feb
 2020 15:01:47 -0800 (PST)
X-Received: by 2002:a05:6102:757:: with SMTP id v23mr7849868vsg.35.1581375706964;
        Mon, 10 Feb 2020 15:01:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581375706; cv=none;
        d=google.com; s=arc-20160816;
        b=bB6zKpuzVJgqLaYJqGcxVRCezMFZ37x96+2c2bDWZOf0cxzRvXJ2MxIS1z/klKzEfK
         EvC4j1SbL7j8sYd8m8OhoeioKdRI7LEQ6Ze1S8xZTe+EuZy1BPkksCoNq+btghaZA7kt
         GeB97akovgNKWyFw4HIxpQiC0g3aySx9wB9v6cCMCuRKnfOhwIiHrqhOqnStvo/MeyRR
         729Cim0fq+xgXbLDdPNlegd/+W2El/t4en1HoZnNkq5EmpP2hxzcoE4Ufixo5Zgf+83K
         bhIKoJrUU2iM0WF4v5sgjcWCZMszXRsk+Xb1xnj/iy8WaBsx5RUnIOuR7giGVG4LJs58
         wqPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cx6F1d/hnCfGE6zrKzLhGepP4eErtmjj+VvPm+Ykf6s=;
        b=brpjWY/DZqwQCBn+CfiWUhp0jj/zPq0gJUAKBgI8oZAxomPrhRHE+szOL7+C6IVDBa
         qgD3KNcWIU4TrOlW0bEUVCcBOJRGYaACmLxy/YIPobbStBuQkr2Sa0ac4/XbfR6m8CYq
         ybJnjvFDkHDF0Gqnn3dyjPeLm8S0eq0I9MygrjxFWnUCggNdqBX9b447yWmBMIm8pzSf
         zqhTgkiMh9sjPi1zp6i5S+nD6KrMMkiZ24KnQyAu/N2DtT4pbciztVeNl6aNaoVnOsgG
         N5mshooExkSRQ42TKOGcdsdv1Sk5C0mkaT/+mONfaE9l4VMy/m7udS9gTvmhztmXTDRl
         rCeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bt9gLOPy;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id h6si128001vkc.3.2020.02.10.15.01.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2020 15:01:46 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id j20so8199763otq.3
        for <clang-built-linux@googlegroups.com>; Mon, 10 Feb 2020 15:01:46 -0800 (PST)
X-Received: by 2002:a9d:4541:: with SMTP id p1mr2954756oti.199.1581375706533;
        Mon, 10 Feb 2020 15:01:46 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id s83sm527561oif.33.2020.02.10.15.01.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 10 Feb 2020 15:01:46 -0800 (PST)
Date: Mon, 10 Feb 2020 16:01:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [balbi-usb:testing/next 5/10]
 drivers/usb/dwc3/dwc3-meson-g12a.c:421:6: warning: variable 'ret' is used
 uninitialized whenever 'if' condition is false
Message-ID: <20200210230144.GA36828@ubuntu-x2-xlarge-x86>
References: <202002101031.n02cVUXX%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202002101031.n02cVUXX%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Bt9gLOPy;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Feb 10, 2020 at 10:02:49AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> CC: linux-usb@vger.kernel.org
> CC: linux-omap@vger.kernel.org
> CC: Felipe Balbi <felipe.balbi@linux.intel.com>
> TO: Hanjie Lin <hanjie.lin@amlogic.com>
> CC: Felipe Balbi <balbi@kernel.org>
> CC: Yue Wang <yue.wang@amlogic.com>
> CC: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git testing/next
> head:   b081f1dc121c0bdeacc45cf02c35d1ee95120680
> commit: 729149c53f048f16aff9e662bf444c275b59ba8a [5/10] usb: dwc3: Add Amlogic A1 DWC3 glue
> config: arm64-defconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 4dcc029edbe4bd5e30d4f0cdcf123ea4ed2b6418)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 729149c53f048f16aff9e662bf444c275b59ba8a
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/usb/dwc3/dwc3-meson-g12a.c:421:6: warning: variable 'ret' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (priv->otg_mode == USB_DR_MODE_OTG) {
>                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/usb/dwc3/dwc3-meson-g12a.c:455:9: note: uninitialized use occurs here
>            return ret;
>                   ^~~
>    drivers/usb/dwc3/dwc3-meson-g12a.c:421:2: note: remove the 'if' if its condition is always true
>            if (priv->otg_mode == USB_DR_MODE_OTG) {
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/usb/dwc3/dwc3-meson-g12a.c:415:9: note: initialize the variable 'ret' to silence this warning
>            int ret, irq;
>                   ^
>                    = 0
>    1 warning generated.
> 
> vim +421 drivers/usb/dwc3/dwc3-meson-g12a.c
> 
>    410	
>    411	static int dwc3_meson_g12a_otg_init(struct platform_device *pdev,
>    412					    struct dwc3_meson_g12a *priv)
>    413	{
>    414		enum phy_mode otg_id;
>    415		int ret, irq;
>    416		struct device *dev = &pdev->dev;
>    417	
>    418		if (!priv->drvdata->otg_switch_supported)
>    419			return 0;
>    420	
>  > 421		if (priv->otg_mode == USB_DR_MODE_OTG) {
>    422			/* Ack irq before registering */
>    423			regmap_update_bits(priv->regmap, USB_R5,
>    424					   USB_R5_ID_DIG_IRQ, 0);
>    425	
>    426			irq = platform_get_irq(pdev, 0);
>    427			ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
>    428							dwc3_meson_g12a_irq_thread,
>    429							IRQF_ONESHOT, pdev->name, priv);
>    430			if (ret)
>    431				return ret;
>    432		}
>    433	
>    434		/* Setup OTG mode corresponding to the ID pin */
>    435		if (priv->otg_mode == USB_DR_MODE_OTG) {
>    436			otg_id = dwc3_meson_g12a_get_id(priv);
>    437			if (otg_id != priv->otg_phy_mode) {
>    438				if (dwc3_meson_g12a_otg_mode_set(priv, otg_id))
>    439					dev_warn(dev, "Failed to switch OTG mode\n");
>    440			}
>    441		}
>    442	
>    443		/* Setup role switcher */
>    444		priv->switch_desc.usb2_port = dwc3_meson_g12_find_child(dev,
>    445									"snps,dwc3");
>    446		priv->switch_desc.udc = dwc3_meson_g12_find_child(dev, "snps,dwc2");
>    447		priv->switch_desc.allow_userspace_control = true;
>    448		priv->switch_desc.set = dwc3_meson_g12a_role_set;
>    449		priv->switch_desc.get = dwc3_meson_g12a_role_get;
>    450	
>    451		priv->role_switch = usb_role_switch_register(dev, &priv->switch_desc);
>    452		if (IS_ERR(priv->role_switch))
>    453			dev_warn(dev, "Unable to register Role Switch\n");
>    454	
>    455		return ret;
>    456	}
>    457	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

Patch submitted:
https://lore.kernel.org/lkml/20200210225816.36598-1-natechancellor@gmail.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200210230144.GA36828%40ubuntu-x2-xlarge-x86.
