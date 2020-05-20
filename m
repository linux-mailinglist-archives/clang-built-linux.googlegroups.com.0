Return-Path: <clang-built-linux+bncBDUNTBWEZAHBBJOVSP3AKGQE4IH4TOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id BED521DAD78
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 10:30:30 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id y7sf2023749plp.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 01:30:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589963429; cv=pass;
        d=google.com; s=arc-20160816;
        b=FQpwJRv8LwXva8rcozL/hcezdwzZmKyJsmFuyeBJvWLb0H+9gCaSdMeT3MAGMsrsb2
         edDRrPX13+r9SLVBibEADIr4sdYZUPQhpw6ybBDsPphVxWUjXTBOTfd1wa6iHTtDVmVb
         mg2x+FoKhyHPWlr2c7Ysk0SJQ8C+fs3P69qIawmMKXxwY901pLkAi2PAgzCPZBSYlFxz
         53TpK9k24OBvmrjV/8TUPQ9aAx8Gy4BIxwuYP2XXN9hJhdWpwy5ARtzuxQlLXkRT415N
         7vaUviIHFcKR11CkQPmCPBQ65PccEi6/lviZ8VKUpWs3SSux/YQJ1S2x3bHZbD9yqfCN
         Dfgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:authenticated-by:sender
         :dkim-signature;
        bh=v8DyM35j8YN9t3rhasb0lNqwFMgNFxPMi8IhCqPWhvk=;
        b=mum73B6Wmp2NEMXNFiv/S8Vrh23x4aoGkYRIY1oZw/A8Hk6e9gV8EDbiV4iIma3L0G
         3toiT1E6lgbrFHvcjTQcQkkTubTgN7VB7GtEftaZpteW868znbkz+AG4l3+QxYuS/z0H
         f2/aHpPukK6sIO6nSvgMX0ndb7X1aWrNH7pgxzi1uxC40M9h91DCh5oh+E4ZRlsdPG2o
         8SFLJKpx1n21rDcFeZkqUWo0pjscSNRq/PKT7BlMNV6rx+jyCehAvvxLVyPgd3ivW9mA
         GxULE0cQjzWKy36i2mv/RlXgp2vhjWMDb+hZFBZr0OwVWMC6KWpV0ZfJoaY+11sqyaYP
         renQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yhchuang@realtek.com designates 211.75.126.72 as permitted sender) smtp.mailfrom=yhchuang@realtek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:authenticated-by:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v8DyM35j8YN9t3rhasb0lNqwFMgNFxPMi8IhCqPWhvk=;
        b=MA+TZWBVnHRsfAZkJedNjcWaeF5Dai8ZX9m5A+P44MaIChLtr5BKHLg7mRX2Xk8OvS
         pmvZ/xL6UP5CkpxbsaYreUtUYq17IewRlqVuGdq83HcjD54ghuuvjqdMytFOglRT5Zlr
         6PJlB10+ocJCvCJD6JwSaz+ovMoQrjDFjK2hx2YYLKTfVji0qQGqYXGlCdb8RZQXAv4i
         sl2btUzU0PzYdhuW4n4LkPbJpQMaZT2tGYzpG37oiAqGlLhacUuuZV2QPVCn3zNlIypN
         wF2YCYYsGoFZsYEa12STAwz4rBQnzNalxFs0rIcCes6Ihg9VGCD4nW2KFxJQ58+8ffwP
         ks4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:authenticated-by:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references:in-reply-to
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v8DyM35j8YN9t3rhasb0lNqwFMgNFxPMi8IhCqPWhvk=;
        b=UXH+ZLDRQFiN72p+en8DTlZeEEpWoHPylHXnndmPJU8ikGskFZpf+MJHFk6AfzbCpb
         CpKDxeq1f6Va7safsliC8mi4FEd6YmVSEyVOyloxKDL4yzCkPy8enRXnKtHhphGmBdcM
         2mYuPNHyCRXrvkVNEEVBoUFUbO0Pcc6hMvxSvifxuD9QvrgPdjnn6zIwTO/0T1cwxrGQ
         uLVuq+1RaPYOyjXYU9JrEfnJG6vqqWmV4QJ8gr62PgXW+6Loytfd1zycTE0djSyMnjxm
         zXnBHjlKCvkXrr5VPzMEDTsnas2EGdF97GpoHk7RnKQjHlk5+suE+Z9N0/oRPBHohwBp
         EyrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533L2QXAMbwLHgGpERPUhkD/5ARO41K1OyZ62aQt6l/PNRDmcJ6K
	ZjayrJKVNov5pVA9XOzB66c=
X-Google-Smtp-Source: ABdhPJwuzWHoQa4c31Vh1p0MsDW1y1npm+LOHJTlMAmMlVDRfH807RSKmGNwjPWMEJGi3P+cQ6aaoQ==
X-Received: by 2002:a17:90a:e54c:: with SMTP id ei12mr3795866pjb.129.1589963429474;
        Wed, 20 May 2020 01:30:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e116:: with SMTP id z22ls694996pgh.9.gmail; Wed, 20 May
 2020 01:30:29 -0700 (PDT)
X-Received: by 2002:a63:d918:: with SMTP id r24mr3111215pgg.119.1589963429141;
        Wed, 20 May 2020 01:30:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589963429; cv=none;
        d=google.com; s=arc-20160816;
        b=DSrJ4VyvAuHk8EA3GYAYc/yDSywivDYARAMLTchRL5Yeb+x83WvmRRu3Zaxqvq/KMV
         8uVsgO/gDImEk3MbSn8P12um7cCeNTRe+Sl9UB9fIGTg5mShtdkoIrIhMo+2AfJSFqge
         GCZHl4Msrkck8rccZSVW1HQZt+ZBfvtWuUJ5oUSbPCoOasc+h+/HQpAXoVx3S+aCoYqr
         wNmxu07/TL6momi1WJN7Y9wKH4Pw/KiitgkvU8t4AGZwdX/6h2NChiqRxyYtBWsRNrqJ
         qT6hy+QD1nUkzbtFefiFntmHtQ5LPaU8XQk2ON1mtz4mKZgezrDRvIP2vVFdsvJRbqLc
         5sCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:authenticated-by;
        bh=8+yrKIQrpaEKn2K3nTxkZG3MVeyjwexBulhb+dZpHTM=;
        b=ENwAFmR0mMgp6ofb5LM4DtWL6x0AfgZb0pJB+TRuHwaCdvJKCKxpRhs+bNwpF/G0z+
         lYMDJ4hw4odEUf7of6HADbjoNE2snBNnPJeIjwxZqJrYCtnBK3tgvDNSUR2AbFKlpA9Y
         dfz/s553Ag5mw2liiqP8H3JmrYLnteO6ogVnDiQybCLLxBV6r2ZmYqKxKhsLCz/V+RIM
         wlOH18b5xaSqlCcq0ZjHWaeTk+zPeqOqXDWaXEtSfsCjXlfNW9g9SZRkd0Vc0aT+Y9Jh
         UPFx7sN0NKGHN7xG7JYYMk7MMJsZDEprArvk6mCZD2GEjNbyHpUXCjJu+7gaH6qyAed3
         1KSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yhchuang@realtek.com designates 211.75.126.72 as permitted sender) smtp.mailfrom=yhchuang@realtek.com
Received: from rtits2.realtek.com.tw (rtits2.realtek.com. [211.75.126.72])
        by gmr-mx.google.com with ESMTPS id m81si244834pfd.2.2020.05.20.01.30.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 May 2020 01:30:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of yhchuang@realtek.com designates 211.75.126.72 as permitted sender) client-ip=211.75.126.72;
Authenticated-By: 
X-SpamFilter-By: ArmorX SpamTrap 5.69 with qID 04K8UL7Z0011639, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexmb06.realtek.com.tw[172.21.6.99])
	by rtits2.realtek.com.tw (8.15.2/2.66/5.86) with ESMTPS id 04K8UL7Z0011639
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 20 May 2020 16:30:21 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB06.realtek.com.tw (172.21.6.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 20 May 2020 16:30:21 +0800
Received: from RTEXMB04.realtek.com.tw (172.21.6.97) by
 RTEXMB03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Wed, 20 May 2020 16:30:20 +0800
Received: from RTEXMB04.realtek.com.tw ([fe80::8001:f5f5:a41e:f8d4]) by
 RTEXMB04.realtek.com.tw ([fe80::8001:f5f5:a41e:f8d4%3]) with mapi id
 15.01.1779.005; Wed, 20 May 2020 16:30:20 +0800
From: Tony Chuang <yhchuang@realtek.com>
To: kbuild test robot <lkp@intel.com>, Kevin Yang <kevin_yang@realtek.com>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
        "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
        Kalle Valo <kvalo@codeaurora.org>
Subject: RE: [linux-next:master 10024/10701] drivers/net/wireless/realtek/rtw88/pci.c:1477:5: warning: no previous prototype for function 'rtw_pci_probe'
Thread-Topic: [linux-next:master 10024/10701]
 drivers/net/wireless/realtek/rtw88/pci.c:1477:5: warning: no previous
 prototype for function 'rtw_pci_probe'
Thread-Index: AQHWLn++kQ3xtS1Gw0qA9eDYtZYiFqiwo+gw
Date: Wed, 20 May 2020 08:30:20 +0000
Message-ID: <cd6a53995365404ca33f325e9cc5ba03@realtek.com>
References: <202005201637.yF4tG9Py%lkp@intel.com>
In-Reply-To: <202005201637.yF4tG9Py%lkp@intel.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.68.175]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: yhchuang@realtek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yhchuang@realtek.com designates 211.75.126.72 as
 permitted sender) smtp.mailfrom=yhchuang@realtek.com
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

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> master
> head:   fb57b1fabcb28f358901b2df90abd2b48abc1ca8
> commit: 72f256c2b948622cc45ff8bc0456dd6039d8fe36 [10024/10701]
> rtw88: extract: export symbols about pci interface
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project
> e6658079aca6d971b4e9d7137a3a2ecbc9c34aec)
> reproduce:
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O
> ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 72f256c2b948622cc45ff8bc0456dd6039d8fe36
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> drivers/net/wireless/realtek/rtw88/pci.c:1477:5: warning: no previous
> >> prototype for function 'rtw_pci_probe' [-Wmissing-prototypes]
> int rtw_pci_probe(struct pci_dev *pdev,
> ^
> drivers/net/wireless/realtek/rtw88/pci.c:1477:1: note: declare 'static' if the
> function is not intended to be used outside of this translation unit int
> rtw_pci_probe(struct pci_dev *pdev, ^ static

These exported symbols are used outside in rtw88 driver's
new entry points such as rtw8822be.ko/rtw8822ce.ko.
But for easier to review the patch is split and the patch that
contains the entry point is applied after this.
So it can be treated as false alarms.

Yen-Hsuan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/cd6a53995365404ca33f325e9cc5ba03%40realtek.com.
