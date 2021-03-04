Return-Path: <clang-built-linux+bncBDRZXY4CYYORBHEXQOBAMGQE2X7AUMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E0632D21D
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 12:59:25 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id c1sf7612333qke.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 03:59:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614859164; cv=pass;
        d=google.com; s=arc-20160816;
        b=n2KOQ3hIL7AgVO0ZAQeLzjpNXAAfq8Vc7AinvOXJ2LQ1NNoHIcAW9+o6u8QuMBAo84
         k3aVc6ZKSlutB8ckkzUUCTHqAEojmGSNYNUeaNjdnJaRWvT8PSRySYWQQwNVEl5V8mUY
         0WLNge+7/1pAahDvHmIwPhRu7xr20+0Xguyc8dydTAo8KZ8aYUBjJpwC61SQ2rS+ApnD
         aJBz9cwJxw0tRcdPXE1OeUEvzZDSXCEPYrgxCVX4BX4+5B6pt1bCKd7b7lJvgBGwH8Xr
         IBQMZEnyDvno+23znMQO1V3Ux4wW3b7vjL/Sc5S1VZmZv/GHAZqfvyY4r9iCrVofgC4A
         HB2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=v7HvcuT4K1E51pc8RZYmTx7U8Hy6WTfg5rmdrskzU/s=;
        b=0v5f3OhjDqqvDi4RZKMO5xqtlkh45TD3k/POHqnNPjNURBus1Y+bVZEjnjCJqAqwm5
         6Lg4fUChK1Wl4N4wGeq3YNVwgCMVn1PBAwDfF6mFf5VkYOFfzLuDBsHqwRIA2WsJ1QTC
         etIOuZhflAjx0GHTRZF3iem5CnNWysHf8b9576iZ2aMi1KjgzFQXK/6uP1eU7+NOhnsx
         4N46dE64feabxyw4hmNHTFrD8gnVGJlhAsnwpMi3M/5j+5ruMVoF4Qdu3UO0/ZwzkHts
         et/4hT2bpbCAuOW6ZCP9VjoR4DUT/WILKfCweBwHE62gTMjOuxyFpAQC1/yxs3eKEsMO
         tpEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=H82A2sdO;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v7HvcuT4K1E51pc8RZYmTx7U8Hy6WTfg5rmdrskzU/s=;
        b=bMNVuokwbj1t5aQJv/WAzNoHiCBlP/y9nxo7nsgQQvQ0reITO32ga3sp3DL0UvFdKT
         ser1/t0m9WVsBWNSpmtxclOnzoJrMRyp6ABw9tc8EVMSkhbwvXUGBfbCgj2uEx3IaHYB
         xf+XlakO6WA1mU+7SwfjtBSGPLJhwMf05dNF0xxtXAPDoVffyfqtS5RVi6RTVQiOGgXZ
         1DIDX0XBiYdXJ8sWMUx4CVFhD2xGhYKVcydIKLZHk1Mc4R8DBfRpGKDpbLDO3geA0BfB
         fZUzLZ7jEdA8bpPeAbe+DApL5ery1a/FPn2W49NZwQuDJj9Qa0xq0BIQvrlq45zo/obv
         spEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v7HvcuT4K1E51pc8RZYmTx7U8Hy6WTfg5rmdrskzU/s=;
        b=IdI2GTHOMRj9vLiao3Qqv7I4A6CLi6LZMt5Phsl5kSZCHkx39+MTVtjVnFV5Ih20mj
         qMaEHLcLmdjm3MSl39OYVPPnMlYd+qDE/BDvj0OCvCZ09BjsbLrUQlc1RGBww8pzESPw
         /SPeCu5wZGEUIiqoDU24WU9DiAS3c2YVoLB3V6TswDECbnHmkPiEz8rWRr0OjEAi3a2M
         W1nh+vAQ7JQIN/lfBrUowDQxeUuimKjTMAWXiXTQBXgSmlTZxodtcINthwq5S2wLjEBT
         Qp/wmG2o8F6XGCVTcy9ZocdYxSmL+Q5tpXbQm5HYQMZXEEEO8wN1I+8WfTRJrpCmsKxo
         O/sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qZNvCjKJ9bE2ce13TbPTgqN3VgtGHoxQuaQDhPYmvmnLhM+C5
	dRvDiVuFGhGM7e/G/l3yylo=
X-Google-Smtp-Source: ABdhPJzOXgBi97LjJRljeou7O8EvYVo7apyr6LOUJ6DSUQDhJiJzmCRozXRq7bqLNo6dQhLSsVP6iA==
X-Received: by 2002:a37:f50d:: with SMTP id l13mr3434999qkk.34.1614859164574;
        Thu, 04 Mar 2021 03:59:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:b19:: with SMTP id t25ls2940787qkg.1.gmail; Thu, 04
 Mar 2021 03:59:24 -0800 (PST)
X-Received: by 2002:a37:6c6:: with SMTP id 189mr3409053qkg.478.1614859164099;
        Thu, 04 Mar 2021 03:59:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614859164; cv=none;
        d=google.com; s=arc-20160816;
        b=kZ0s+XaDQOOaqK0xEfjG2JDPqIeagkKNoev7Qp+6NM5BWziDv+KkuFe5LRNdd3rHy6
         E6NylwWt0sC97ZEmVqNVbkqksSgctjbLK+k15lqzMsdkhMTGv4ERy0pMB6JdPLr0M4ai
         CmvvjL1SNQ+0KkhGUm/rZ8eRrp6/qY5RuNtqECibp0P4rxBMMB7sQhBbF4ecKdc466uH
         p7V4oYG9l0ZkkOEfN75xRHOYYi1H61MUs8Nred04GcN7HOYj9dRvK/vPT2isYK8U/GUk
         DtKxUkibYOkDa+EEGC3LZ4lUTcMv0XtGlVUJOkgc7BnuYkm0zOa+79cUBB3bjiFSAvCU
         p0Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=/MJvftENZSyG+T/fhjBwVMMf0E/2ReNg/vCq6tR49zo=;
        b=xECITeMOonktqQUlvH7D0zehlllMg4bNo+nBJfgAAJrVR311Y0PmneUcLsvQq74RFu
         fTPfYmSwh106fc142cfRuLh8H+GJT0faVfG8jF64T7c++p3DT89+0YIf9X+c5KhMdHdL
         +pOGtKHx1tcbMSdV9fTruj4o9PYcv4AxcRg99x3ysFuz82QrThJCBurHnWO4jBS5QApd
         H5Hw7bd53aE7LLqfpw76CuO6wQZupYcn1HcE/P5wvM8U72CKk5jm8UGf3k191e9ka6BR
         SHLjE4xH/29Ig0A2isJUbquNEuqKwl4J3x4QAxEORrMn+8hhYLron12NlpjwjHu6Vdho
         9stg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=H82A2sdO;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id j36si53611qtb.2.2021.03.04.03.59.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Mar 2021 03:59:24 -0800 (PST)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-13-kNCokwQSP6WylzKnRGOdAg-1; Thu, 04 Mar 2021 06:59:12 -0500
X-MC-Unique: kNCokwQSP6WylzKnRGOdAg-1
Received: by mail-ej1-f69.google.com with SMTP id rl7so6687519ejb.16
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 03:59:11 -0800 (PST)
X-Received: by 2002:a50:bf42:: with SMTP id g2mr3861262edk.101.1614859150050;
        Thu, 04 Mar 2021 03:59:10 -0800 (PST)
X-Received: by 2002:a50:bf42:: with SMTP id g2mr3861246edk.101.1614859149833;
        Thu, 04 Mar 2021 03:59:09 -0800 (PST)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id i6sm19633067ejz.95.2021.03.04.03.59.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 03:59:09 -0800 (PST)
Subject: Re: [linux-next:master 7714/11865]
 drivers/platform/x86/dell/dell-smbios-smm.c:27:35: warning: unused variable
 'dell_device_table'
To: kernel test robot <lkp@intel.com>,
 Mario Limonciello <mario.limonciello@dell.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>
References: <202102202323.OkXTM7bf-lkp@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <1b24561f-5d9d-dcfb-a231-11be10722074@redhat.com>
Date: Thu, 4 Mar 2021 12:59:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <202102202323.OkXTM7bf-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=H82A2sdO;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 2/20/21 4:16 PM, kernel test robot wrote:
> Hi Mario,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   abaf6f60176f1ae9d946d63e4db63164600b7b1a
> commit: f1e1ea516721d1ea0b21327ff9e6cb2c2bb86e28 [7714/11865] platform/x86: Move all dell drivers to their own subdirectory
> config: x86_64-randconfig-r014-20210220 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=f1e1ea516721d1ea0b21327ff9e6cb2c2bb86e28
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout f1e1ea516721d1ea0b21327ff9e6cb2c2bb86e28
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/platform/x86/dell/dell-smbios-smm.c:27:35: warning: unused variable 'dell_device_table' [-Wunused-const-variable]
>    static const struct dmi_system_id dell_device_table[] __initconst = {
>                                      ^
>    1 warning generated.

So this table is only there so that it can be passed to the MODULE_DEVICE_TABLE() macro for auto-loading the module.

I guess that that macro used to give enough of a reference to the table for the compiler to not complain but that
seems to have changed.

I suggest that we just add an __maybe_unused to the declaration of the table to silence the warning.

Regards,

Hans





> 
> 
> vim +/dell_device_table +27 drivers/platform/x86/dell/dell-smbios-smm.c
> 
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  26  
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01 @27  static const struct dmi_system_id dell_device_table[] __initconst = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  28  	{
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  29  		.ident = "Dell laptop",
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  30  		.matches = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  31  			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  32  			DMI_MATCH(DMI_CHASSIS_TYPE, "8"),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  33  		},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  34  	},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  35  	{
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  36  		.matches = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  37  			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  38  			DMI_MATCH(DMI_CHASSIS_TYPE, "9"), /*Laptop*/
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  39  		},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  40  	},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  41  	{
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  42  		.matches = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  43  			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  44  			DMI_MATCH(DMI_CHASSIS_TYPE, "10"), /*Notebook*/
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  45  		},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  46  	},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  47  	{
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  48  		.ident = "Dell Computer Corporation",
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  49  		.matches = {
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  50  			DMI_MATCH(DMI_SYS_VENDOR, "Dell Computer Corporation"),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  51  			DMI_MATCH(DMI_CHASSIS_TYPE, "8"),
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  52  		},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  53  	},
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  54  	{ }
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  55  };
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  56  MODULE_DEVICE_TABLE(dmi, dell_device_table);
> 549b4930f05765 drivers/platform/x86/dell-smbios-smm.c Mario Limonciello 2017-11-01  57  
> 
> :::::: The code at line 27 was first introduced by commit
> :::::: 549b4930f057658dc50d8010e66219233119a4d8 platform/x86: dell-smbios: Introduce dispatcher for SMM calls
> 
> :::::: TO: Mario Limonciello <mario.limonciello@dell.com>
> :::::: CC: Darren Hart (VMware) <dvhart@infradead.org>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1b24561f-5d9d-dcfb-a231-11be10722074%40redhat.com.
