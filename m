Return-Path: <clang-built-linux+bncBAABB5H37P3AKGQEVBHDGUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 705E81F3280
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 05:11:49 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id c5sf12203263ioh.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 20:11:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591672308; cv=pass;
        d=google.com; s=arc-20160816;
        b=pOVEnRpx4S8o2o4tz/diUEZ+UPZNIPvKvrOq6ItQDvu5s0w5iXjxKvDjtzBxQkRB7w
         4xOZ3dCDz+M0nU38qsWFsRn+BNSZNznUEhSXZAKLheMh9cdWbDTjN2PSWBBcjfGaoYqO
         i0/Lpe+ohqtRtkORN01cPHp+5cbGjsFOWqiYGYVarTrOXuq4XrC//htpAdj/Ai0x06eh
         Q3HUzi7DRT85WVuRhQUmzJro+YCIbyH0gKxCQZCPc0Uv9SPQTHDyah251f4SLoc3kOa8
         2ozuTmXO1wDijITIRoRqlcFd/HcFN7tcmw68ahwf+VM/8n/1QA6q7IEiwVAFKlbp90f7
         4bQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:reply-to:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=GQDxosDabT+nXrMgENQqlf2fGWa0v537eo/PDcoUoA8=;
        b=bPKxM/STMvCseqrMHmlM1fcWYl61X7qtrQHtnSdqaKKJqrTAUW/AJeAZl9N1V9MMcB
         3U98mLe6sIX2EIVWvAvXTn94nLKMrF2fA3WbvsVVPGBj8NNtLkotGk1nI3zHNj5mmhiP
         t5HVrb+IG6kf8Sl/MZCBeA0UpJ4oyqNctaEajKOtJou2/fpAwuU1HAHNSbBVqpOaBhLf
         Mgr9lp3NdosxL4+qt4Uvx8O5wE+fIc5G+QCjvrY1tXgeeqsy4TtduzMiXhk0Yx04dU7F
         pRc/PmPw981EEDC6HXSMa2NLkX0vZZn/DfdKcuDVJA5L6TzpX1lMLVkZH9dA9vzzc9D8
         3VoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of vadivel.muruganx.ramuthevar@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=vadivel.muruganx.ramuthevar@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:reply-to:subject:to:cc:references
         :from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GQDxosDabT+nXrMgENQqlf2fGWa0v537eo/PDcoUoA8=;
        b=JES73/uGa9wbc2V3aH+lSVs3OeiAKJBZVfiuQvxrwUB/rSUHpgQVDWqTRTbkPA9ZxG
         kJ3LY9ND354y4CgEYtPbETvj1wnd1Oj7dbwykxAe82MubxH/W9MQJRdJ2eeY+vG3K8xu
         Sf4OLSov/UDJLp2Q47MIrTETq+SbKMIl2KfhB2HxY8BtaQ0RGCe0iBjo8PgiK+54E/LR
         cxlc5qDyXdVtdeV1Fri5NmG3aGHr9GGm3IecQDCo7AGy7aDCte0FJtc6+R7OvH+pG+Dm
         CF3lQM5M8WkoKVFtRYxb/8xtT0k5LizbeHfUhSrLE3Cb0jIkcAIFyjiJjyoofn4m/X33
         Etbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:reply-to
         :subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GQDxosDabT+nXrMgENQqlf2fGWa0v537eo/PDcoUoA8=;
        b=I9PhxciouUxsSZclyFhjBg9iXkil0mAlTMv9kKZUQTmJsieQyIRUS+vKhl1scMT47B
         XM5y43lJWrwHrm4ig+AKIBOURcf/QbwLRadypB702uHRhviz84uMVvXOb+A1adtaQm8i
         WLQW4WOhb5YKfjATdJ1Vf30yWrBMxTyQnEkDldyv0jQNjU3590ygIWpbBlOhQVH2AagT
         OXBpo76pn6UtI5odUXPo5QrkSb6VNdlLrgUc6bxJihvIX6AXy2DkQ+sTSpCXhncwrPJn
         E1J/EPuteX6evwHyRWgWJfIj/1Bm8UHz0rshhRcpsY0kIf121JHWOFHwt3irx9vNYYZD
         RDYQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fqwKgxTZ1A+u6p9by75VfCTTATPZ6+zY1mxXQeZTVSZwEkudx
	DkBOs017arhRB6LZDnT1+/0=
X-Google-Smtp-Source: ABdhPJyn+xxU6t4Nq4JoE+nVjKaGXJu3r5N6Eg8N7+F8Qa0/6uCRqr3HA7RL/c9JAD0M/KZj/wZebA==
X-Received: by 2002:a05:6602:15c8:: with SMTP id f8mr24715964iow.183.1591672308433;
        Mon, 08 Jun 2020 20:11:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:228b:: with SMTP id y11ls2405790jas.10.gmail; Mon,
 08 Jun 2020 20:11:48 -0700 (PDT)
X-Received: by 2002:a02:cc49:: with SMTP id i9mr25354006jaq.52.1591672307758;
        Mon, 08 Jun 2020 20:11:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591672307; cv=none;
        d=google.com; s=arc-20160816;
        b=k8EzUmunvoHj8STQhCHF8sBwJH+WKLpdBZgxkmvUJzZ0/K2S1KiCy4orqBa50aQxS6
         63O5Pg5BRSyybpIjETGdW9YQnIhULlZC5/InDBx2K6igTMX5P+z3BBTqUm3zq4Bn3DBv
         1QoCGv19jlBlHqF7bMOYWpA+sgThC5U8MIYkx9AkFHmjNR6wuFOnbHjZVSSjliI6+mwG
         N2T/h4NLqhrYGDaY7yoUqlZ2Eg2jdtDFJyg3II6noawL2c1tWqKMWIUj7egTZf5us1Az
         xUDTFLAmbJ+iA9ET8rtctUDDLTeYp+vafB8ZGBNoK9/17Ll4DV8KiaveugidLa1kGMjq
         usmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:reply-to
         :ironport-sdr:ironport-sdr;
        bh=LdMKxjgbbXZXuKbmp0tBbgKRSkjN+kJ/yxcDU1sE4iA=;
        b=YU9HnWSwzlEXXYZZ0iW2Dh/RCMs9AlOXq5IosvavpC2jgujInH3hmAJLfRF0xlYyl8
         q+AaJbAU1fqyJuoWdgDYpTqCZ06Zzp1fz2zTfH0jgaXBLbTR3Miim5pt7ztOjM/9sfAu
         OMyo4AuDoIFILDN0gsY1t7mV/C/8cknSNPeoxC1+KmgH5jsm0E7oDV+lnkeX+2okpi+p
         MjJrMz1sLd8+/t0Nq5as4E4xbsZSyM7/l1nuCikGWSEFpIc5VB2N3jMkWejQHxcwaCKl
         kcx+AnWpvCZr1Fv4jqD3maHQxciy/xGNfkTQAxmIQg5vanrFjsK/6qHAAzD74YCT0PGr
         5fWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of vadivel.muruganx.ramuthevar@linux.intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=vadivel.muruganx.ramuthevar@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id y22si853504ioc.0.2020.06.08.20.11.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 20:11:47 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of vadivel.muruganx.ramuthevar@linux.intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: ubj9M37PWwU9+WSRJdrzMtdli1OkRUdAydb5vL3jSkmYB/psoqpXs2Q2hKoz+N+A2si8CK3uFx
 D97s39mixJUQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2020 20:11:47 -0700
IronPort-SDR: 41gQ4+UFJ1LwzdlsxqTdkKI9KQT7UgNLO+3RdRxfrxQgI3+2UblSq+sKyvzJmVtsKkAzmsz5sK
 aITrlSyXvLtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,490,1583222400"; 
   d="scan'208";a="349380289"
Received: from linux.intel.com ([10.54.29.200])
  by orsmga001.jf.intel.com with ESMTP; 08 Jun 2020 20:11:46 -0700
Received: from [10.213.44.24] (unknown [10.213.44.24])
	by linux.intel.com (Postfix) with ESMTP id BEFB75805EF;
	Mon,  8 Jun 2020 20:11:44 -0700 (PDT)
Reply-To: vadivel.muruganx.ramuthevar@linux.intel.com
Subject: Re: FATAL: drivers/phy/intel/phy-intel-emmc: sizeof(struct
 of_device_id)=200 is not a modulo of the size of section
 __mod_of__<identifier>_device_table=512.
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Andy Shevchenko <andriy.shevchenko@intel.com>
References: <202006081031.R2VosrSx%lkp@intel.com>
From: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Message-ID: <8fda2c12-a243-043f-3f56-b70fdb0fb033@linux.intel.com>
Date: Tue, 9 Jun 2020 11:11:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <202006081031.R2VosrSx%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: vadivel.muruganx.ramuthevar@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of vadivel.muruganx.ramuthevar@linux.intel.com
 designates 192.55.52.151 as permitted sender) smtp.mailfrom=vadivel.muruganx.ramuthevar@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On 8/6/2020 10:23 am, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   af7b4801030c07637840191c69eb666917e4135d
> commit: 9227942383307f97fa6992416f73af4a23ef972c phy: intel-lgm-emmc: Add support for eMMC PHY
> date:   5 months ago
> config: x86_64-randconfig-a011-20200607 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e429cffd4f228f70c1d9df0e5d77c08590dd9766)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          git checkout 9227942383307f97fa6992416f73af4a23ef972c
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>, old ones prefixed by <<):
> 
> WARNING: modpost: missing MODULE_LICENSE() in drivers/phy/intel/phy-intel-emmc.o
> see include/linux/module.h for more information
>>> FATAL: drivers/phy/intel/phy-intel-emmc: sizeof(struct of_device_id)=200 is not a modulo of the size of section __mod_of__<identifier>_device_table=512.
> Fix definition of struct of_device_id in mod_devicetable.h
Thanks for the report!

Noted, will fix it.

Regards
Vadivel

> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8fda2c12-a243-043f-3f56-b70fdb0fb033%40linux.intel.com.
