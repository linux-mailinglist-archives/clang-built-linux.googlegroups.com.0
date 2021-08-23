Return-Path: <clang-built-linux+bncBCVOD7PJWIARB2XXROEQMGQEAYCSJ2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E073F431E
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 03:37:53 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id v9-20020a17090a778900b001883abeabf0sf875131pjk.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 18:37:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629682666; cv=pass;
        d=google.com; s=arc-20160816;
        b=kfH8S5+XD6eedfoCrTxyMto1QTMyIF85f0P9trkAcP0+s5gSI/WaP2yBlTzBxADhS6
         si1sodOSeqwnGgtAfPjG57QqH+bvRchi02ppMnCnw9rDedbFVeFf7VP/vP2clG1gPVnQ
         xvMSU4ubx1k3mmP9GqkEbD/HQEYWPuE31IDqOJQcgn7nJ5RkqkrN5GwJP8GQXJOWKY10
         XvZc2lq1+P8NatrR+8LLc7jkilfCB1Rhq7RVYknzNsx+H/FPqjle/Va0FVJJR8S0zJ2m
         Btd2P9JM64zVyZz/r4GcowJmI39RHowGjpX/N9hg0AdESAIBEdjrI+Vd+3HXuVr2+GdH
         IqCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:authenticated-by:sender
         :dkim-signature;
        bh=G2arp45hAEyG8urv4TQx1k2UWKDKsjF3xnegSqnldYE=;
        b=dQtkUdnFYf6lJBsPLX+eMvI5/Cl+aoMVPbgnrTmDDaTJhWxZjlGgpMKZpbDhrqzDFm
         U/qtb4uc1Gq4ot5Ge2t7uGVQs869+H1ut0pV1m5IIBnDm2lPlGmii3pdBfXOjgqJOTv2
         PizM2g/GtdDV3790GAB1kHq1M9cNRTSLLqeRSr7/IUZrroztNF2CJauELgAZApr7yZrI
         f3NxO01hAGo+6ccV/SR+1xdP7qEeYy62QQMjRNqfutiNqf1pscThvX0IgQ8bK49NXzaW
         SEIUtfHBkyrHyQ98NiiMpdRdNealn34hqenorYr9Y9ubRMBMnoRM+1EyGMHRBqbMFpBV
         bUyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of pkshih@realtek.com designates 211.75.126.72 as permitted sender) smtp.mailfrom=pkshih@realtek.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:authenticated-by:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G2arp45hAEyG8urv4TQx1k2UWKDKsjF3xnegSqnldYE=;
        b=d7ZQVlXFcjk+HGGtmZRNVsUyZUva6m1swXhuhcW8c2VeARfBcHnNGnm9v3N0eWVqU/
         sEUzoYToCtEMOk4av64ip0z6yVAFwdxwbxE0oBkVJ7IwOrNcBC6vF6az7k8ELHoEAi79
         MAa7xIoWQxeHgHJyE4SY9JH1Gkjf0dtUYdKsksVY2R5zzCaReJ7yxrWBd7vbgLA0GBEF
         OIANnRK6czfILILK7A1rLFVfGxy2FUGxDb7cIlIQfrXnjf+Wiv498sylqZ+FwyjLut+9
         puhkGVKQxCf/a21it6uQjrbI+2AIk+tKFME4N5SZrbVNE0XDemI1wGLANnE7CwUIfATo
         cT3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:authenticated-by:from:to:cc:subject
         :thread-topic:thread-index:date:message-id:references:in-reply-to
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G2arp45hAEyG8urv4TQx1k2UWKDKsjF3xnegSqnldYE=;
        b=ai2H5Zv6ppl5xUJulPEN8FWAJd65F/8x2fFijRfjN7gnmN7LzhVkxwaoYxGy7g2Zi2
         508i+UncMd/aF5FltseezuiI5gSMKj52fH+dOOPM6o0HJRTcIPdrEPe7aizbPXulcq2u
         C79JcXRyyqO9j56FJ7uVdg+GWuXMu2H1q4YWAVd3Tjs/cuOTD2bEEjWKoKSRx0usQIHM
         CIoAV9B34L95xayDEvMKJi9ksDaeJZvMrhVqOap+8LCwzKit4GRCyMy7w4QMKlgpZ0Hj
         v+S41Wl2TQP/Yt860UYbueiU5+jNCEvihcCqTw+0ixved5lNYzN7GzljglFi0reJqFvB
         0x6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Y/R4T5PNZj38R74TocRW9qVNInEiQaA/lxDzvFB9pYNRgYgDo
	5ueJTqfd7LE2KC+zMjx54BU=
X-Google-Smtp-Source: ABdhPJx8hNBB/dN7sf8LTsgzAkR/RmvqUZGOcoZrrRBK6zYMMLEzaXnOPClISDqXO4JWM11Ieb03eA==
X-Received: by 2002:a05:6a00:2ba:b0:3e1:d586:c92a with SMTP id q26-20020a056a0002ba00b003e1d586c92amr31366529pfs.43.1629682666648;
        Sun, 22 Aug 2021 18:37:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:149:: with SMTP id z9ls7798565pje.2.gmail; Sun, 22
 Aug 2021 18:37:46 -0700 (PDT)
X-Received: by 2002:a17:902:9009:b0:12d:8de4:bc2d with SMTP id a9-20020a170902900900b0012d8de4bc2dmr26678555plp.44.1629682666023;
        Sun, 22 Aug 2021 18:37:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629682666; cv=none;
        d=google.com; s=arc-20160816;
        b=UMBEHQ+hv9keWOc/gY66hEZYgoHilIleUQCmIoUUDftET4yj6HC9euENg6qelXcx00
         Z8R4iBUP+5z4GQQOAca7z4ZqSDeI5qaeNuP4kjVJUO4jQi+zn6M2RJx01Qa4ijsa0zML
         p0Uv4knSawF3gvf3If+nBHCXJbB0MjnorHxUR3hCtHzJJEfrJx+a0m/CvfDApXu6HcZE
         8ubCmuSX9aMvaoQeDZd3v6dzHuo47ZqCM9e0oETR8WrOffvLEE4bQZJ3AO2owxjuDqR1
         mOeMqEqxPzrUCteWwmwC+f31Syhh5erwZi+CRYx3xMfl+6+fv1vSITN+HhBMTn1TMUaG
         VmbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:authenticated-by;
        bh=zcG28WcqYNsf8nd4+cBhB5BQJ9lVQL1F42wA7IBxU04=;
        b=UM72zYu6azePfViTrNpZeBmUMBcVBfTsT6n4NRlv7xSfVc0iZdH2e8HQ7NMDwcT4jk
         tBl3BYcYpRAajtkB3xZmhOy6DrCbZBC7fo9dRGDgloshR3t4/zwEXk049s+JGeSkvcGV
         XyijaP45GEprj0UJ6JHJYXocgKBdjZ+rNeBj/bCi6eINJOhStqwbAh4aScn9JUlC3G5I
         vmClhXUOtCu9CzqozBGN5PFBUUPaOangLeEDbnigalP9O53qnjHsDjLFHQnLJRdVgBe6
         8T7CJim3pgEZ5e7rUrdpcDk0jUsfN+B2Twcnij2tzaGLm1FJfu+j7eF6UtHxBokdDdyt
         D2/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of pkshih@realtek.com designates 211.75.126.72 as permitted sender) smtp.mailfrom=pkshih@realtek.com
Received: from rtits2.realtek.com.tw (rtits2.realtek.com. [211.75.126.72])
        by gmr-mx.google.com with ESMTPS id 136si1074292pfz.2.2021.08.22.18.37.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 18:37:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of pkshih@realtek.com designates 211.75.126.72 as permitted sender) client-ip=211.75.126.72;
Authenticated-By: 
X-SpamFilter-By: ArmorX SpamTrap 5.73 with qID 17N1bYeS5010968, This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexh36502.realtek.com.tw[172.21.6.25])
	by rtits2.realtek.com.tw (8.15.2/2.71/5.88) with ESMTPS id 17N1bYeS5010968
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 23 Aug 2021 09:37:34 +0800
Received: from RTEXMBS02.realtek.com.tw (172.21.6.95) by
 RTEXH36502.realtek.com.tw (172.21.6.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Mon, 23 Aug 2021 09:37:32 +0800
Received: from RTEXMBS04.realtek.com.tw (172.21.6.97) by
 RTEXMBS02.realtek.com.tw (172.21.6.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 23 Aug 2021 09:37:32 +0800
Received: from RTEXMBS04.realtek.com.tw ([fe80::cdd5:82a3:e854:7098]) by
 RTEXMBS04.realtek.com.tw ([fe80::cdd5:82a3:e854:7098%5]) with mapi id
 15.01.2106.013; Mon, 23 Aug 2021 09:37:32 +0800
From: Pkshih <pkshih@realtek.com>
To: kernel test robot <lkp@intel.com>,
        "kvalo@codeaurora.org"
	<kvalo@codeaurora.org>
CC: "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
        "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
        "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: RE: [PATCH v6 24/24] rtw89: add Kconfig and Makefile
Thread-Topic: [PATCH v6 24/24] rtw89: add Kconfig and Makefile
Thread-Index: AQHXlX0xpCE0hegcRECFLaWxl/538at+XqMAgAH08qA=
Date: Mon, 23 Aug 2021 01:37:32 +0000
Message-ID: <a91a82ca75174a138c50c013a1135641@realtek.com>
References: <20210820043538.12424-25-pkshih@realtek.com>
 <202108221143.6tdhCMqC-lkp@intel.com>
In-Reply-To: <202108221143.6tdhCMqC-lkp@intel.com>
Accept-Language: en-US, zh-TW
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.69.146]
x-kse-serverinfo: RTEXMBS02.realtek.com.tw, 9
x-kse-attachmentfiltering-interceptor-info: no applicable attachment filtering
 rules found
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: =?us-ascii?Q?Clean,_bases:_2021/8/22_=3F=3F_10:00:00?=
x-kse-bulkmessagesfiltering-scan-result: protection disabled
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-KSE-ServerInfo: RTEXH36502.realtek.com.tw, 9
X-KSE-Attachment-Filter-Triggered-Rules: Clean
X-KSE-Attachment-Filter-Triggered-Filters: Clean
X-KSE-BulkMessagesFiltering-Scan-Result: protection disabled
X-KSE-AntiSpam-Outbound-Interceptor-Info: scan successful
X-KSE-AntiSpam-Version: 5.9.20, Database issued on: 08/23/2021 01:21:35
X-KSE-AntiSpam-Status: KAS_STATUS_NOT_DETECTED
X-KSE-AntiSpam-Method: none
X-KSE-AntiSpam-Rate: 0
X-KSE-AntiSpam-Info: Lua profiles 165716 [Aug 23 2021]
X-KSE-AntiSpam-Info: Version: 5.9.20.0
X-KSE-AntiSpam-Info: Envelope from: pkshih@realtek.com
X-KSE-AntiSpam-Info: LuaCore: 454 454 39c6e442fd417993330528e7f9d13ac1bf7fdf8c
X-KSE-AntiSpam-Info: {Headers: Tracking_susp_links, url2}
X-KSE-AntiSpam-Info: {Tracking_uf_ne_domains}
X-KSE-AntiSpam-Info: {Tracking_from_domain_doesnt_match_to}
X-KSE-AntiSpam-Info: d41d8cd98f00b204e9800998ecf8427e.com:7.1.1;github.com:7.1.1;realtek.com:7.1.1;raw.githubusercontent.com:7.1.1;127.0.0.199:7.1.2;git.kernel.org:7.1.1;git-scm.com:7.1.1
X-KSE-AntiSpam-Info: Rate: 0
X-KSE-AntiSpam-Info: Status: not_detected
X-KSE-AntiSpam-Info: Method: none
X-KSE-AntiSpam-Info: Auth:dkim=none
X-KSE-Antiphishing-Info: Clean
X-KSE-Antiphishing-ScanningType: Heuristic
X-KSE-Antiphishing-Method: None
X-KSE-Antiphishing-Bases: 08/23/2021 01:23:00
X-Original-Sender: pkshih@realtek.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of pkshih@realtek.com designates 211.75.126.72 as
 permitted sender) smtp.mailfrom=pkshih@realtek.com
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


> -----Original Message-----
> From: kernel test robot [mailto:lkp@intel.com]
> Sent: Sunday, August 22, 2021 11:43 AM
> To: Pkshih; kvalo@codeaurora.org
> Cc: clang-built-linux@googlegroups.com; kbuild-all@lists.01.org; linux-wireless@vger.kernel.org
> Subject: Re: [PATCH v6 24/24] rtw89: add Kconfig and Makefile
> 
> Hi Ping-Ke,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on wireless-drivers-next/master]
> [also build test WARNING on wireless-drivers/master v5.14-rc6 next-20210820]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:
> https://github.com/0day-ci/linux/commits/Ping-Ke-Shih/rtw89-add-Realtek-802-11ax-driver/20210820-1
> 24025
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git master
> config: i386-randconfig-a015-20210822 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project
> 9e9d70591e72fc6762b4b9a226b68ed1307419bf)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O
> ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/6c4e6c23950c253389ad130ffe0367bbca3af99e
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review
> Ping-Ke-Shih/rtw89-add-Realtek-802-11ax-driver/20210820-124025
>         git checkout 6c4e6c23950c253389ad130ffe0367bbca3af99e
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/net/wireless/realtek/rtw89/phy.c:1522:6: warning: variable 'active_entry' set but not used
> [-Wunused-but-set-variable]
>            u64 active_entry = 0;
>                ^
>    1 warning generated.
> 

[...]

Thanks for the finding. I'll remove this variable.

Ping-Ke

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a91a82ca75174a138c50c013a1135641%40realtek.com.
