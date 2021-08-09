Return-Path: <clang-built-linux+bncBDRPZAGFRAFBBJUYYSEAMGQEJFKNQLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B533E4460
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Aug 2021 13:06:15 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id x3-20020a19e0030000b02903c25cedaef5sf1677407lfg.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Aug 2021 04:06:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628507175; cv=pass;
        d=google.com; s=arc-20160816;
        b=f2TMcGqIbiLGL3mKSSJmU1qreszayiE0d9t0lW6Se4RBNmG6QwHITGOcEzT2pLoF5a
         9tA/592eqCSJWPufR1+cKavtdlBsqbP3F0QNkklC9RqYjj+twndKYqzpCFp9/qxuMtbp
         kgBxzBtNoH/5FSy6wW4wG29oPTyS4hfZ1nPlMPd8QGdr9Vqv6dAepmrxLjlB07SPgtPd
         j0UtwX4Q2VB5FzGqhLNMKhD5yoeJW+VRNcJP4zOYtjTCUSLNKyDs7YAmnJTKWOe9Y6q+
         vhSFWICDsUf+07MhLjJLDUOolrTuVNTzcQflv1VhbGgxVYzhm++KJxIhaADVDYdFU5wx
         7BDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=drUQzRXKMdxgl9hRpDKEQ2kj0FSjBkkQ/uXgDOG+7Q8=;
        b=XOQIdwAF3aiL04AyeR/w7bKtraTI+KR1Fe85Mq2d/wcz9z2tjUfmNnXJ34wp5VOUYK
         RZb1OfTXAL22ZxVlQ/rWwEcnstYfVeXwZk1HqB/d5VmSo65hPvexRBEByZuWKxFisoIT
         KQMhLZbR9ZCq7L6rPSqrphxPiz3xNpIcONY8IqpbJ9Rddo/U+g+Fyz4+ObzBhrGO2NtL
         a9P1tepKRANpSLdanEgJN9V0H4U2ZnHHUiUchxKiNKAmunjp3mqDtFrJH4RGVytcARuo
         aNurpzhoo6camPpHGgrZzgWsDyTotFisrLlP02UP6/+WPE8TTZ417bQvBgp2brYBNTb8
         iXGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RMbhx7C4;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=drUQzRXKMdxgl9hRpDKEQ2kj0FSjBkkQ/uXgDOG+7Q8=;
        b=J0X/1NjW+nnZosW1ZF2p3V3QKxYaysGn7e0NixhST9Kti33bBrXxtWjQ+THbelEE21
         IZt1htDIx2Our3/apelBg1jmMyz+Dr3Csc+jUrykCPket2vt1H8/UcdBHlNWiLMGgsQw
         nQTNApq+70qHUBaZ6PZY37yz7iLEjOvTEitCpBPRNCxSO2fNsdZpy2OsnlonT/hVzi/B
         J0u2DdUQtqKjCfX9ieuMc9SY7+VE/wwFwq34CxAT1zFcca4pXgEDBs/O5Ooq7oxfU9UC
         K3t6zhVlvLb+Xh7k85rGQPbn+b3k+frU3hCC+uEo9ylz3ROPnCXXoYl43Vq5CrwWiFPH
         JuOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=drUQzRXKMdxgl9hRpDKEQ2kj0FSjBkkQ/uXgDOG+7Q8=;
        b=oup5XuCeVwwylQuwVyOPFyCCNBPeaH4vCk0WIFvPU26Dtd4bhr4a+fFHXCLRO1RE37
         EZCrdimBurp0tjhRXN0hYokDtAxK3xA8RYnHiC6awMUbK7TJTxFa8daFR50wDVqMJSIt
         PdEBgdi3xCVNVPKmiMDBFkodnc7bKQ+X0yrIu9VHo0XzXdw3qWEsb6vDOUbTTNe2UesK
         TKXI74zlU4+a9PMNlACCv3rW1vyV04yPf5BMrU10pnqt/y3ZBcuRUNUfKyBQgzAgDeLs
         gnWwiWnL8hhi4NE6p7xOTFD50EC5L5sdb2hnvmy70wm2ha3gnNIdrb6TmBhFRyqZBSLp
         OTug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=drUQzRXKMdxgl9hRpDKEQ2kj0FSjBkkQ/uXgDOG+7Q8=;
        b=aDqWZv3eubUoehzx5XcFI+1L+MiN8BU84Zr38ix01UM/y9qH4fa1ZC7zENUcfK75wQ
         4WSFjSG9KqW9XHh8FFFniXCVZA26am8S89LZw7mxkPBa8t9Kep5NjltoC+h1EQyTfvmw
         x4lNoMSykM0FZRYqkK/zaQp6C+9DJKHw9e0YSewyhlzCKJ2V6Q6JllY/fXKlrTim8Pos
         lhgc/peqc6gax7lJRySE9muxDjE46/XaWDKECyJtfp3GiSLJg2GK8WT36x0O+XGzrRRd
         RaZ6G2tQp9Gs8L7EKOmGkN40TeQvxPcFcU2HTIBT9vTypBi2/xZbZiEmj1chyokt6FJs
         dSCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318Epje1/iFKpL8tbFcXjNNAPpveepk+HFRW6y5w931XXonDSmZ
	sFS0DqJO0dN0UFRf4XgM3qM=
X-Google-Smtp-Source: ABdhPJyVAmzEk+qA48WTaAnPdXY1XijkAWsPMZqwn510SnnZFFJt2EFs5KgHO7IULtUoG75lKcVCgg==
X-Received: by 2002:ac2:53a6:: with SMTP id j6mr16367807lfh.408.1628507174958;
        Mon, 09 Aug 2021 04:06:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5395:: with SMTP id g21ls10599226lfh.1.gmail; Mon, 09
 Aug 2021 04:06:14 -0700 (PDT)
X-Received: by 2002:a05:6512:324a:: with SMTP id c10mr6019712lfr.227.1628507174015;
        Mon, 09 Aug 2021 04:06:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628507174; cv=none;
        d=google.com; s=arc-20160816;
        b=QjBeChwbVa8nz5c5SvAzEQS8SuzW8bRQtdtY6Yc+zMYSSz0I79/8kNBKiijDTdl2pU
         jqFEY5QDGIzlpuYKZ+F6+gqy2cAunWv0YxmOxEe2wSR0/QJE0YsoohTFEeyWiRug0RHs
         gbT6X0GcY1T/IXg7vKtCjOGP3TMScRaEvec/O+lJ6ybkU8xlqTL1jHYrM5PZVndG1PZQ
         87zHPEiRYnzzxeA6xr8gNdwUwOkLvle+yse2T/u/zHyX8A7BQsamEmT8zwhVBjrZ3bpG
         eBceykB7JRZaTIw/TdLg+N6U16wXkIBYfxIM2m+XFSec3AxyM4rcGrgccem7RwLwEIkl
         w2mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=IfogMY+NLTARcLYNo9bcsRcf3RuTvaw1mxTZ9TlX2NY=;
        b=fb72ZTn+5Td3E+6+S8eSomf9mahLtVFQ/Z+aSUSenk13CFJYYbsP1Em0HulraLTaxI
         CzMm+ngnrDg35y/gMRKx96wW6IB7j9Qlne7IiOuT1AKigWFpEljOBEW2t++wBXSV1rUz
         iUAXy0+vzyxQxpUaBbskkH4zBS8tYs0A4vJTSnBCu21COQPE/cXGjKOuEpXO/m7RzBoZ
         ijz5b9p5mMZLAwbg2rQ3kLVezdRGfa8paEC58cRaWDcwgy5rwFH/UZhPtWJ8prRIAPhC
         tmh+RqHjISr2wuInSekp9UkIO4otUcDHX4b9iSJDM2NU/TzLRF4N+sjTgFZj4/JoRhPH
         SUSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RMbhx7C4;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id h20si696136lfv.7.2021.08.09.04.06.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 04:06:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id t9so33017304lfc.6
        for <clang-built-linux@googlegroups.com>; Mon, 09 Aug 2021 04:06:14 -0700 (PDT)
X-Received: by 2002:a05:6512:3905:: with SMTP id a5mr16555249lfu.406.1628507173799;
        Mon, 09 Aug 2021 04:06:13 -0700 (PDT)
Received: from [192.168.1.11] ([46.235.67.232])
        by smtp.gmail.com with ESMTPSA id c9sm1418981lfb.181.2021.08.09.04.06.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 04:06:13 -0700 (PDT)
Subject: Re: drivers/net/usb/pegasus.c:461:2: warning: Value stored to 'ret'
 is never read [clang-analyzer-deadcode.DeadStores]
To: kernel test robot <rong.a.chen@intel.com>,
 Petko Manolov <petkan@nucleusys.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org
References: <202108080902.ZhmxmJZr-lkp@intel.com>
 <28df02cc-8b34-3d4e-2ed6-30af0ff44a42@intel.com>
From: Pavel Skripkin <paskripkin@gmail.com>
Message-ID: <94550f41-1204-8996-ef32-c25429481ceb@gmail.com>
Date: Mon, 9 Aug 2021 14:06:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <28df02cc-8b34-3d4e-2ed6-30af0ff44a42@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: paskripkin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RMbhx7C4;       spf=pass
 (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::133
 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 8/9/21 1:37 PM, kernel test robot wrote:
> 
> tree:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   85a90500f9a1717c4e142ce92e6c1cb1a339ec78
> commit: 8a160e2e9aeb8318159b48701ad8a6e22274372d net: usb: pegasus:
> Check the return value of get_geristers() and friends;
> date:   4 days ago
> :::::: branch date: 8 hours ago
> :::::: commit date: 4 days ago
> config: x86_64-randconfig-c001-20210808 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project
> 41a6b50c25961addc04438b567ee1f4ef9e40f98)
> reproduce (this is a W=1 build):
>           wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>           chmod +x ~/bin/make.cross
>           # install x86_64 cross compiling tool for clang build
>           # apt-get install binutils-x86-64-linux-gnu
>           #
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8a160e2e9aeb8318159b48701ad8a6e22274372d
>           git remote add linus
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>           git fetch --no-tags linus master
>           git checkout 8a160e2e9aeb8318159b48701ad8a6e22274372d
>           # save the attached .config to linux build tree
>           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> ARCH=x86_64 clang-analyzer
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

Hi, @Petko!

For you not to scan all these warnings:

>>> drivers/net/usb/pegasus.c:461:2: warning: Value stored to 'ret' is never read [clang-analyzer-deadcode.DeadStores]
>              ret = set_registers(pegasus, EthCtrl0, 3, data);
>              ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>      drivers/net/usb/pegasus.c:461:2: note: Value stored to 'ret' is
> never read
>              ret = set_registers(pegasus, EthCtrl0, 3, data);
>              ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is the real bug, I think. Can be fixed like this:

diff --git a/drivers/net/usb/pegasus.c b/drivers/net/usb/pegasus.c
index 22353bab76c8..f2b8891c7b36 100644
--- a/drivers/net/usb/pegasus.c
+++ b/drivers/net/usb/pegasus.c
@@ -459,6 +459,8 @@ static int enable_net_traffic(struct net_device 
*dev, struct usb_device *usb)

  	memcpy(pegasus->eth_regs, data, sizeof(data));
  	ret = set_registers(pegasus, EthCtrl0, 3, data);
+	if (ret < 0)
+		goto fail;

  	if (usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS ||
  	    usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS2 ||


It was caused by our last refactoring: enable_net_traffic() now returns 
0 on success and this ret is never checked.


With regards,
Pavel Skripkin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/94550f41-1204-8996-ef32-c25429481ceb%40gmail.com.
