Return-Path: <clang-built-linux+bncBCQYFH77QIORBWFHXX5AKGQEPR4VGSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-f62.google.com (mail-io1-f62.google.com [209.85.166.62])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E2D25A777
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 10:12:09 +0200 (CEST)
Received: by mail-io1-f62.google.com with SMTP id l8sf2751497ioa.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 01:12:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599034328; cv=pass;
        d=google.com; s=arc-20160816;
        b=Psy+1a6p/Hqo8HqwdzWGPhd8GOX7+bHql96BPVbH/3XKhBKf4TK4bt1rT9NKFGyWJO
         4VzNbwpEkbgSSr1zFRk3tbP3y/pxnL3KXZvPBMfoOXEEw/8sSrZmbnXZAfbt7ujWNX4d
         l+c/CeeRsXiNuKsoqoZMM58UFJZn5G5dz8amYFwWJ/of1Y6mA2zI2PWD+igCkng8tgGr
         sE7SAMrCBcZ++AHyNR7KubpWixvib+TRs43fBMig+HeopIYUOMUCYC7HAYmCc6tSc8Hm
         rs2GMPKuoHXa9/D54FrWhwLQ9PA2SGl92IcrUCZyCULY+7UNm6dBF8X+Qj2ps5tXAQua
         syow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=VoV773r94oKkydhxSvN11eKVCEZZ/UCeSCR0BsQ1XNo=;
        b=sFT0vwPCZgyFSFrlkhHw1GsIPzAe+xSLQVXNccu3aYz5Et7iRwbzlgnUmM35Uw6s49
         YpWqLdtUOg4nhw9nZfGccPDcU0yMhTBa2tIJtqqCRCOUz4mu3BLBg1/bn5YuUY0mlwIv
         Yohw51I3/plVLfO02AvrQdKpYTIwwHr3TVc6HPkEKeWtV23DChVf3KRrOYdlHThUER1G
         EMtSv+Z/xeeGsbEYHsTDX+9hr24cl01Kq0932Vp/l/0jX4R0CPkc2My1x4WA9+eZ5x93
         5voYwwFxN77jHj8DVoRAtu3dFxfi8WbeKmU1zfPuxOxv30s6QRvb69/LitunQZwFMJ0H
         OYVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=g0K6izRp;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.29 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VoV773r94oKkydhxSvN11eKVCEZZ/UCeSCR0BsQ1XNo=;
        b=IP8ivdxe99pWO1E/3GszOEA/o4n0dMQVPBiRs12bCA7AyWpKfZ7/iT0q3+X/hXOJWt
         qJ0ruGbpRvED4yXjy4d+YyceDmvxHJIfKIDwYGe/KL+woSq3MXaTEcQv5l+Zl1M6DW2B
         YkuWWHnQbWFUEutI1X9zXG0j6XdXni7VttoWHcFw/t9yfytnKywFFCLEvr2AkJeJH0f2
         fG8+/Rryewew806FnTBu5EDwG3IbnrApytol1A6WHhEtWHmHyGfShxKZjahzb39NdIsE
         r9FNv/gdXxuW86ftUoJjjaKPBLpSSry/2J4bGuPIdhZHTyfQefviptIrpT6jA3hI4Hq8
         NFaA==
X-Gm-Message-State: AOAM530A7neUx2gZEPETo0jlmXk5PLjho6NuzVmxY/9X54yI0LgBupCk
	QUdqP0dCm+PNzkjDt29Df1I=
X-Google-Smtp-Source: ABdhPJwCibFPgfj67xFdoxf7Yl0uL9ZlgR5Y9YnGn/MWmTbueVjrpbKvHpGlYjyRN87Bk784YDptCQ==
X-Received: by 2002:a5d:980f:: with SMTP id a15mr2625077iol.12.1599034328206;
        Wed, 02 Sep 2020 01:12:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:b603:: with SMTP id h3ls181077jam.4.gmail; Wed, 02 Sep
 2020 01:12:07 -0700 (PDT)
X-Received: by 2002:a02:84ac:: with SMTP id f41mr2188315jai.56.1599034327934;
        Wed, 02 Sep 2020 01:12:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599034327; cv=none;
        d=google.com; s=arc-20160816;
        b=QzW0vAeRR5hLuxp5QdhCU7SEPE7lpniRlhmZZeMhsMLpeBga9T8OhkpAn6M6Gjtl1v
         5KbNGEOwWgPhIwDmjSF634zq+Wt5D7mcgwRLZTct/I1rmDeJYezPkGzzG6kx5JA3SORc
         ue8lxu8HJE8j91h7aY2Sz8C6zpQgGHkxDOWv/krCaXLaJSPhZUrDUK7YPGDNd/FGg+1Z
         vjvrovghddCkmvtdfyzIH6qEIV9i9y2xF95kunsbVIKHU4A4FpZraXbOB2ptXf+35ZgP
         r2cRVrVsLDoF4NukTJ8QbkZ3QbpwCgOi1WOPNkSDcn5WpQVxfvUbhY+fDuoBOutOLpmp
         ZXWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=nmLDL+thwRQUEO3OyOM6W+uqFyGoNpoiS3s1rgJWm40=;
        b=aQ6hLbf/wgk8LvQvyDeIXiyjdltwq/0boQTJF4BkMCksRcH3siJ87fYZZLBj+9/iY8
         fAQvnmXFWfB6PNW8M5zgL1a7aH+GnbGlCGRXWIrHu5k07L8gcfus8w7GFan+IfTGG5Cs
         yPRLF9nVGXXdIhLHgMaySlV3O7s2IYRQ+IoagPnvyfj9auivpnyB6EoMmVeNLFMJLVnW
         ZZCCfr6i4mTyUDROI9wHy/KUdQ2qyZhmEKG73wV0KG1sWdI4XQK57DAecDPhPWuvKal6
         XgyQG5snFyLzDQezkxoTbM5hZ9dQGnh14hkOnAIb38A7xxoCDkCpYAdrBNeR/p9oZeny
         x6Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=g0K6izRp;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.29 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from mail29.static.mailgun.info (mail29.static.mailgun.info. [104.130.122.29])
        by gmr-mx.google.com with UTF8SMTPS id f80si206361ilf.3.2020.09.02.01.12.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 01:12:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.29 as permitted sender) client-ip=104.130.122.29;
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 5f4f53d7698ee477d11d6bdc (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 02 Sep 2020 08:12:07
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id D9133C433CA; Wed,  2 Sep 2020 08:12:06 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 4317DC433C6;
	Wed,  2 Sep 2020 08:12:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 4317DC433C6
From: Kalle Valo <kvalo@codeaurora.org>
To: kernel test robot <lkp@intel.com>
Cc: Lee Jones <lee.jones@linaro.org>,  kbuild-all@lists.01.org,  clang-built-linux@googlegroups.com,  linux-wireless@vger.kernel.org
Subject: Re: [wireless-drivers-next:master 129/131] drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phytbl_lcn.c:108:18: warning: unused variable 'dot11lcn_gain_tbl_rev1'
References: <202009020057.jxONANsS%lkp@intel.com>
Date: Wed, 02 Sep 2020 11:12:03 +0300
In-Reply-To: <202009020057.jxONANsS%lkp@intel.com> (kernel test robot's
	message of "Wed, 2 Sep 2020 00:09:08 +0800")
Message-ID: <87364061ik.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=g0K6izRp;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 104.130.122.29 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

kernel test robot <lkp@intel.com> writes:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git master
> head:   2c92790b12033797474b9ba1b2e56a95360f66cd
> commit: ebcfc66f56a43601eec4a8abab6e82aaeb09dcbf [129/131] brcmsmac: phytbl_lcn: Remove unused array 'dot11lcnphytbl_rx_gain_info_rev1'
> config: arm64-randconfig-r012-20200901 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c10e63677f5d20f18010f8f68c631ddc97546f7d)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         git checkout ebcfc66f56a43601eec4a8abab6e82aaeb09dcbf
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>>> drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phytbl_lcn.c:108:18: warning: unused variable 'dot11lcn_gain_tbl_rev1' [-Wunused-const-variable]
>    static const u32 dot11lcn_gain_tbl_rev1[] = {
>                     ^
>    1 warning generated.

Lee, please also fix this one.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87364061ik.fsf%40codeaurora.org.
