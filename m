Return-Path: <clang-built-linux+bncBC2IT2GSZUDRBDVO475AKGQEI5ZIX5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 92625263ED1
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 09:34:39 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id r16sf1911706wrm.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 00:34:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599723279; cv=pass;
        d=google.com; s=arc-20160816;
        b=LkOHDKPPMBLveYHqzgDFqmILlH84h/eMls/Nz+1IIUrRpz97nOkRn/tLJYdRq/G2Ps
         gyxWclbiNoHDaClWbEix6QPuhcR+9rVDJR56SsQmuDhCa8JGgjGkSrcUyTfNXnLMoWGT
         /hmuF3ighqiaOn0N0Ia0WpPcdZuI2G0TbKIDnOi0XOnJMrIhc6tDUdmoYH3Fec7/4gm+
         1kNMlFVog0e+/n85BDb91ziM7LDUIuwc0VN2z9IvD8ZmCVkwq5/A3XK+f6nBEgeDw4gC
         I2G44tyErPTKjzrvsRXeeicwg53My+0HeHHctFudwo49uTC/gXcFSpDBkuDSZItV8NcB
         0X0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=CWtRebpDsdRW0D+0v5eiHJRMINy/eXjGIiCDRVPGIjk=;
        b=u+hnD60aHMECeKDLrjvwphUcKDfpohJ1foPmkJzZ5XdykAOFgUDqTEHh1clQI0hc4A
         8U6HuKCOFFIfWG0sQYz22DOQhpZPYxcAL2BJmUYCHJPMlkxiNhsjYkqdyTKq8LwMg+Lm
         LoIXhYG0CmAdEaaXbObeoMRt1ApLuXzrOUxmPG+/qW/Z4SThSmFIY0wV1ycVAOnujYUk
         Osvg7dkgKNaTy0Fd7hlJUKlIGNUZFKplVv5euI8SW8GzckWlG/9m/V6HAvpRxiveh93E
         dYzGcWPHW71lsItijNUF9V9OHhPAllbcf5oeEG3RtYDFkHYTsojh29E7HLYKJLZl69ob
         IGtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@st.com header.s=STMicroelectronics header.b=nZkhw9kU;
       spf=pass (google.com: domain of amelie.delaunay@st.com designates 185.132.182.106 as permitted sender) smtp.mailfrom=amelie.delaunay@st.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=st.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CWtRebpDsdRW0D+0v5eiHJRMINy/eXjGIiCDRVPGIjk=;
        b=j/c779J9cnZMqm2mFQMD5/eIXPukrEuQBl5TJcFzmFa2gw7DnJfg9PDuKGO/9qqOt6
         GRq+1ungYFtzp3sDOF0uhCae8/Ymom7bP0NZ0v4x6XBIusc4XyNtUkRXmI7NSi+ogFKh
         olTfSgXGZ1XtCyUjl/gOtCAa2eglBgXjt4jyy9adp1u5hu6bqTfXhw7nO+kGmHj7k8+Q
         OZNN/8eZMwqWySubZ63UfbhVNsSiEk87UPMN1A0jMlwdxEWPfvDrH/02Tp+UU5UoP2yI
         WWX5zHgJ/jno6nHASZ3aS80VjFVQ9CCcI25jsGsFeQlThvgbAJKi2jjVZ7ncQBmN311Q
         e5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CWtRebpDsdRW0D+0v5eiHJRMINy/eXjGIiCDRVPGIjk=;
        b=YdQCkKua+bjdjayG/+F4xWpGMiTQCshMUA31x7ePUuO3EqRXnfQTnBV2RvPTRUdwuC
         +5jCShgIQK8Rcu9hc0YViiY7WAxFX9m4ybxV9t4EyZ36QXC9NKdN2hSxTn5x9VK9fWzC
         eZu3EecfaK/i6/fuDkvvRJ1pPsln+K7q2Y2eMYCxJaczeJJtLP0PP9edkOpDtKVXwrRI
         u4Yge7m22o3Iaaz745JaQOxchUbdf1xrl1krasqcIDnw2So7z8O2DoWRJXm9h5dkPGP6
         4R9EOOeMj42l88sD9hzjB5MmXE2MPM4Ehf81l0CcbITiUR0hc0DY6kDQswoo5461RVVt
         VqVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319tRjF6pN3VOE+BLsMl0iNJG/O7ruQDVW+1p1kZm2DDuvabutz
	sWjoUOOEUfb/HFMOqOs9tRk=
X-Google-Smtp-Source: ABdhPJxbucoOmq1B0RTAUGI1QlpK/JOQxdS9D7rk2gr5F+/obGwwDz7x3sgZRkZSz324QqnwEQb7rQ==
X-Received: by 2002:a1c:1902:: with SMTP id 2mr7534814wmz.26.1599723279010;
        Thu, 10 Sep 2020 00:34:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls5933327wrx.3.gmail; Thu, 10
 Sep 2020 00:34:38 -0700 (PDT)
X-Received: by 2002:a5d:620e:: with SMTP id y14mr8144918wru.371.1599723278097;
        Thu, 10 Sep 2020 00:34:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599723278; cv=none;
        d=google.com; s=arc-20160816;
        b=YLMQKjYTHOOMdwX7ixt8OuRod1pdD3xTRXN9VLwKhjwg1vzu0SpLVxmABxNm5CxxYo
         zhqF8qsfNzaxTI52epCgzrJshZjEJRckTaP6GK3t07A/3p8+9towXRRHKn+IfKCIksbU
         OMGxf8jWRNwiACAuzPVH+Y1AQtMunus/m5WXv46KLjXgZOnc5jJ0qgNBglaSOAQUzNNH
         +X/f5fNOKS2gQavZ/5Al9PNyM6sBQtZWwHkLYorI2/k+ElvkPKzNofEBUiu/Hi43EXSh
         3G3rR/legtJocNjhmq0VaHKDawDDE4ZbUqnlsLeZBAeSdK2C9eOrXuNlwawv8tVkMVOZ
         zNnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=yitzxd1EpxSR+UWF5RZLvTzZh1+/ExLz6X9wKwEHp6c=;
        b=sSIAkquxQhS4t7kGpMI3Z2VdsuOA1INbTpVQM0EFw28+ErtsE5Z9mV3tAulRueghdq
         K0KmKd5+P5ggjbvPzp3whFkf5bwHnlnEAmMarZuBHN+Nh8l6toN1f+XDHevQzSNQ7LTN
         KUmbIwkakdiICnWoM5dW5LYHdUpc0rs1pfc5MSeebHOwCVIZxT8TMAKlqFP9Q7i654E8
         ry/MGchdC+CbqfqDfcHJyo1uKFrFcL6shCbP44h+eHS8Z5lprWCHJj2ZEfHwGplAswNI
         rDvbULac33tX7PXygR+9g+uPlKOXiZQb7jIbhMrK0sK4rvSVVkOylAVy931FkXsn4Pw2
         BqPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@st.com header.s=STMicroelectronics header.b=nZkhw9kU;
       spf=pass (google.com: domain of amelie.delaunay@st.com designates 185.132.182.106 as permitted sender) smtp.mailfrom=amelie.delaunay@st.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=st.com
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com. [185.132.182.106])
        by gmr-mx.google.com with ESMTPS id z62si50362wmb.0.2020.09.10.00.34.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 00:34:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of amelie.delaunay@st.com designates 185.132.182.106 as permitted sender) client-ip=185.132.182.106;
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 08A7Qsvo001037;
	Thu, 10 Sep 2020 09:34:37 +0200
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com with ESMTP id 33c051hm4p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Sep 2020 09:34:37 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EBD7F10002A;
	Thu, 10 Sep 2020 09:34:36 +0200 (CEST)
Received: from Webmail-eu.st.com (gpxdag3node5.st.com [10.75.127.72])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D0F57212104;
	Thu, 10 Sep 2020 09:34:36 +0200 (CEST)
Received: from lmecxl0995.lme.st.com (10.75.127.46) by GPXDAG3NODE5.st.com
 (10.75.127.72) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 10 Sep
 2020 09:34:35 +0200
Subject: Re: [balbi-usb:testing/next 32/38] ld.lld: error: undefined symbol:
 usb_role_switch_get_drvdata
To: kernel test robot <lkp@intel.com>, Felipe Balbi <balbi@kernel.org>
CC: "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
        "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
        "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>
References: <202009100918.i31tdoK9%lkp@intel.com>
From: Amelie DELAUNAY <amelie.delaunay@st.com>
Message-ID: <497fbf82-805b-5b82-28f0-114c3f31756f@st.com>
Date: Thu, 10 Sep 2020 09:34:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <202009100918.i31tdoK9%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To GPXDAG3NODE5.st.com
 (10.75.127.72)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-09-10_01:2020-09-10,2020-09-10 signatures=0
X-Original-Sender: amelie.delaunay@st.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@st.com header.s=STMicroelectronics header.b=nZkhw9kU;
       spf=pass (google.com: domain of amelie.delaunay@st.com designates
 185.132.182.106 as permitted sender) smtp.mailfrom=amelie.delaunay@st.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=st.com
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

On 9/10/20 3:29 AM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git testing/next
> head:   3c9722514c3fb74bbe0af87c20bc6b4c47121287
> commit: a0f0bc95705446b8b1476338056bf869271ba36a [32/38] usb: dwc2: override PHY input signals with usb role switch support
> config: x86_64-randconfig-r022-20200909 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 8893d0816ccdf8998d2e21b5430e9d6abe7ef465)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          git checkout a0f0bc95705446b8b1476338056bf869271ba36a
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> ld.lld: error: undefined symbol: usb_role_switch_get_drvdata
>     >>> referenced by drd.c:71 (drivers/usb/dwc2/drd.c:71)
>     >>> usb/dwc2/drd.o:(dwc2_drd_role_sw_set) in archive drivers/built-in.a
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

fixed in v6 version: 
https://lore.kernel.org/patchwork/project/lkml/list/?series=461852

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/497fbf82-805b-5b82-28f0-114c3f31756f%40st.com.
