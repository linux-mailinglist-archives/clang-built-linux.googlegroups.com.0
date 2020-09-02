Return-Path: <clang-built-linux+bncBCQYFH77QIORB25GXX5AKGQESAZUP2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-f64.google.com (mail-io1-f64.google.com [209.85.166.64])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8AC25A765
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 10:10:20 +0200 (CEST)
Received: by mail-io1-f64.google.com with SMTP id j4sf2733703iob.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 01:10:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599034219; cv=pass;
        d=google.com; s=arc-20160816;
        b=s/PiKNUR/0392V1SwdMtaz+HO0VIwvuhs5f/SDxzuXe8oWJQYMmc3qJMTQtYD0OwVT
         w5P7ReRfOkMeQsMgv6KMfjYWN+dvvfcJX0ejshNgA3mUIoUqc757qcTgF8P2eeHx3VAa
         6OUd4JAJquiLrNikzXf+OlKKZtRPG0aEcIqLLrneGD3HqJzct5M/2WzxDCT1xOT+eprF
         Vm2y/QHc3rNJeRjXBJAz91RAPVeohA5n2H+aTY6yY/YrjIoSlt5K/H2K+D/6rpZ0rRcj
         7fIrCfHA+yl7mBvk30uAcErpVnIJ0i/1trgNJ+WLdhoGDdaQcHhTak8QCzj4EuTL7Ecv
         slfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=8l6PuaQssk2nDDjHPx7bLtmSjg2uIE/wfF3dafjaVh8=;
        b=UoFfG4uGfbdDKvoeGwS+4IuFbr8ehtLH4g960vMdKAkHbeKpwtEeOGx8d4C7NILuGU
         c8hHsZfFTeJ7v5UlaCCthTNoJAtKJcgr+gQN3Y4Jvj7dIuKy0pgcGrN8+xYHXa6+Mb42
         PJdRVOerhLyzvQFp/p54qiZ+AteyYtPXHDszrijH8/Eae41zrSlEY3DF+HaE9kEouxoB
         QQkSujkSCppHUYAL0ZJKa9Zua1R2kyDOoR/bT6UkItL3ptNJlhB2WU2JB48o+Bn53cU0
         PLe5SOoTk9piTcr4AJSB+Up1EC3qdNNUj6jg4Qznk3WASmkc3TiAuEYkmNBueqPAz43l
         7Hqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=NIacyPsw;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.29 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8l6PuaQssk2nDDjHPx7bLtmSjg2uIE/wfF3dafjaVh8=;
        b=MFUG8KvXe5cXUisLl/6exSyF0+QaElxPaAJECmE/47o/eyHNzS6kWiFImndXaoV97F
         GwoyLWO1PBP8oID5lnUkQMkip1LBNGx8lXbwD7TFbwJhC1Th9yAY5uvaFrhcep+0SWeI
         PzYxMfRhULV+1CqYADVm7ygG/yqRCfil47lTlkufTp9Id+pcLRjwDLEQ7UemFMYxt0in
         MSVHPoei+wn9P3eLw8QvcnAKN8u0vKqyeGGqZhCKFGHWr1ZokXIENUxvzf6QScWZK8Rs
         9CjMrodFkIT/vgYcoINcYbd+L//Pmth6fjii0SKYt5n/ioNuhSZA6QyEQPmQGK1du8AN
         ZmLQ==
X-Gm-Message-State: AOAM532nsrP/dMEctdupEeUiIkRP8l/y5O5tzGYT5TJvF9CFi4Efn7E5
	dUksXLaFenaCMhp8Mvn1SXQ=
X-Google-Smtp-Source: ABdhPJysZ8ejJe7u/iL/kfPBqeAPmzviQ77IEEJRACD34eaNqoUkAY8B/GMIsJeB9PEMHTG+zY4UFg==
X-Received: by 2002:a02:94c8:: with SMTP id x66mr2279815jah.64.1599034219483;
        Wed, 02 Sep 2020 01:10:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:c5c1:: with SMTP id v184ls282140iof.1.gmail; Wed, 02 Sep
 2020 01:10:18 -0700 (PDT)
X-Received: by 2002:a6b:194:: with SMTP id 142mr2602308iob.18.1599034218805;
        Wed, 02 Sep 2020 01:10:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599034218; cv=none;
        d=google.com; s=arc-20160816;
        b=CXcRekCndhIiBiyXAUmRwOsm5B9JHodjMVR8BqrFxlyjYrm8PfRm2B+4V2TWIKmgEV
         33m0C6zrk2xLwFd/PtjmeRgRD/DPErceOXExO1eLv0GNDHsdLirZPKKmb7IySJW6zSiv
         M20nDovvx1OqSvooT80iliJMPPH40lRPokATmokkOQ/h4X7mhn9rErh22UdfDpRW7WBP
         oG4r53No7O8nuf82noLcEpVr4sa3iIetLGXHne8b0clGJ5Y4CKLKN1Uieg/jC1oumhi0
         67/IBP5HAq9TqaRUPv8GdpexWpML1ZP+vvb0JxRKiTKI/4HgC0w3Jeaiy4prgoGQOWjV
         fQQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=0D/hHOW0tWa2uqwWPxgRRtDyirDeND9KRToykH6q3T0=;
        b=DWd/NJIxvaEdnt/ooZnit2YP5JmYxBKBFQRInPo2RMSm0rh6ZMepcHTa3LVYavdcUw
         i3p2nn561e3j/mnzGkKFKZDD8QzRwgfuhyBH+9xydqDcHSa8jXyz89bSQjSm32rg3z6s
         sFW2pGW96SZ9fG85GW5Ng+/YH23ZRTBItpXfpE7YguHmfSUHazl2S9IotLjxWbWmK3y2
         ge/RAmUB/Glj+qg1oj+8YU7MfHOwob23H4XmdWK97cnQuhJrjzCUAq5Gs3yDF3HEDOMd
         vCSeOfw6nj96476tPOu1wE2sFuA0c8hogeX4JPuMc7eZrl0AwTNVZtSq+EOlN5tggVtl
         Ub9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=NIacyPsw;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.29 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from mail29.static.mailgun.info (mail29.static.mailgun.info. [104.130.122.29])
        by gmr-mx.google.com with UTF8SMTPS id f80si206361ilf.3.2020.09.02.01.10.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 01:10:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 104.130.122.29 as permitted sender) client-ip=104.130.122.29;
X-Mailgun-Sending-Ip: 104.130.122.29
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-east-1.postgun.com with SMTP id
 5f4f5362885efaea0a4bf79a (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 02 Sep 2020 08:10:10
 GMT
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 78048C4339C; Wed,  2 Sep 2020 08:10:09 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 6E404C433CA;
	Wed,  2 Sep 2020 08:10:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 6E404C433CA
From: Kalle Valo <kvalo@codeaurora.org>
To: kernel test robot <lkp@intel.com>
Cc: Lee Jones <lee.jones@linaro.org>,  kbuild-all@lists.01.org,  clang-built-linux@googlegroups.com,  linux-wireless@vger.kernel.org
Subject: Re: [wireless-drivers-next:master 127/131] drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c:361:25: warning: unused variable 'lcnphy_rx_iqcomp_table_rev0'
References: <202009012305.vGKHlIAu%lkp@intel.com>
Date: Wed, 02 Sep 2020 11:10:05 +0300
In-Reply-To: <202009012305.vGKHlIAu%lkp@intel.com> (kernel test robot's
	message of "Tue, 1 Sep 2020 23:14:11 +0800")
Message-ID: <877dtc61lu.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=NIacyPsw;       spf=pass
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
> commit: 38c95e0258a067812311e84d2a170fd56f05431d [127/131] brcmsmac: phy_lcn: Remove a bunch of unused variables
> config: arm64-randconfig-r012-20200901 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c10e63677f5d20f18010f8f68c631ddc97546f7d)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         git checkout 38c95e0258a067812311e84d2a170fd56f05431d
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>>> drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/phy_lcn.c:361:25: warning: unused variable 'lcnphy_rx_iqcomp_table_rev0' [-Wunused-const-variable]
>    struct lcnphy_rx_iqcomp lcnphy_rx_iqcomp_table_rev0[] = {

Lee, please send a patch fixing this.

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/877dtc61lu.fsf%40codeaurora.org.
