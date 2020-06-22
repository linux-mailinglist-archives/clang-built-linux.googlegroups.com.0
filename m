Return-Path: <clang-built-linux+bncBD5M5IEQVMERBCHBYH3QKGQE5XHASZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id F3915203272
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 10:49:12 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id 23sf2037526wmi.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 01:49:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592815752; cv=pass;
        d=google.com; s=arc-20160816;
        b=kyJkMR6TVrZr4C7UUqWpLvaz5YwqkwcRZ98GZSzhUjlK46dywdXox/w6SFnT2EehUX
         4C1Rl1cOl4FHUc/4/ofazIrjtFVcqA0BxdU9g2M1K6Efbig4ZNhEzGMs31f9VXX9zzcM
         RgtEYLxHdQeFn09DodrfnDsPBJdKugGw+ym4jvBsiXyJ3gRiwCvEWaKYHtMSiA5oPZn2
         NjBq6OO/sXxYv0XrUGjbsI/QRasdyAIPtg1ag/d6Epq9spWaeH4ErZNsvCue0biG3Qxl
         yveMP1ww3Z/VjaJzr//g9pCrUYBiP6qrNRPt6TSwOZ5V0AXu+oXlQd0AlUrKcnqubVIv
         7LQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=FsI2duBiPwMrU+i/w8Sw+J7+YcnfP/NPQTjUeyEnkV4=;
        b=obfJ3bWkgeIhC28mto18m9Wk6MrZN3hp8PDrZt6GkYWtmVSCNz2fnGAPdBbiiP88Hc
         SODjBApPpjoo3zT/p7i3kGxZ1fkj2R9sB/zRBtM8Z9lj33yMV0TIGXcTsACI7/eqIpMK
         27G1bDLu63Uz6y6h5Tz+OLNXsOTpXOFTRAqclRdkm2tAHt1oIHyKkSuM3VtPTWAo2cK1
         PVdVXj2Zq6lZe/bizHIxnf7fSdEEtLxv8K5BX524/m515ifPq0+EHAZTk6ypcCiSBImV
         /NcqWx0UxxfaacSA9JxUjvyZPwXADP01LtCjTq2vjQO1bhOOldw2ROFaCjFqKadiM4S6
         oxsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@elastisys.com header.s=google header.b=HcRuvwy9;
       spf=pass (google.com: domain of cristian.klein@elastisys.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=cristian.klein@elastisys.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=elastisys.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FsI2duBiPwMrU+i/w8Sw+J7+YcnfP/NPQTjUeyEnkV4=;
        b=e4Oa6RrErcgXSAzM2DHryDgJc+Z82u7jhwUHUPpquQ81uN5/nRYNa65vfGmFo1MtBG
         oFZkmAI7TpLM6qW/5dj5gEDPxS28/1PP2XnxgGt9nfuC5kpuRYZkcOSrMG30R20GCLbj
         qdfZY7aE22fQTdzq2zKo56otrHJAlsRc3hJKeA8BSH1H4bXDOilul9nCw/QPeZCB+VO0
         2N0mYcSpnYA2PERzWISmtlN/WuhS5rYwsT3lD28oeE+y1+2tS/MNZykGvpcfrDfXlh1L
         ymXOGnTQyXTmYD5PhQR0WQR71TEtAyzvVtDKihOwg2Ur/xsS7MQdMymotrI+Ju1pIx3V
         wfjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FsI2duBiPwMrU+i/w8Sw+J7+YcnfP/NPQTjUeyEnkV4=;
        b=ih58V2zxD1s1IXoivJs6SZDiGt142GNq5azCz56VTKlFPEfOss61ZknehH6x4f72Ch
         UbVajjqOwE/8x+Rn8uznZNVR4caiz9bR1X/sQoX5c3lDdzJortGf5ukKd/p21dhjd4MT
         eVj3YdBBEs5obkMdQGToFhscmFo7/bK5QTppSiE/W+nNnzI/S7RSpQeq3gBIHekTycCj
         EwDYDne3xENln6gVjBWOFV6wRuqJyy/KxjlTBInZky+i1dQjPb+lUFIl5o4njYuFPqo4
         qVAR8uskVQUQlTG4ZY4QmQTmn7I5N8KYXnxpopylGtCXZt8KLwVMFXLkOrcTw77P5B/v
         Dfwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532YgVN9XoSH4hX7lVm4VW8QONOS4X7y1H2Wy2POtU6BY8xx3f5k
	q2L+OYKANyPIjQzBvxezMDc=
X-Google-Smtp-Source: ABdhPJwzba/PMN9HhLKoh5qNfJ8ROccSytOpPz7Vs8bUKn/pmYVLEnnaPjyi69nm9/A0eBFyWprY0g==
X-Received: by 2002:adf:828b:: with SMTP id 11mr19186126wrc.58.1592815752661;
        Mon, 22 Jun 2020 01:49:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ca:: with SMTP id 68ls4310339wrc.2.gmail; Mon, 22 Jun
 2020 01:49:12 -0700 (PDT)
X-Received: by 2002:adf:f74e:: with SMTP id z14mr18401513wrp.338.1592815752211;
        Mon, 22 Jun 2020 01:49:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592815752; cv=none;
        d=google.com; s=arc-20160816;
        b=wBotUsuEeQHXEVt5Pi55G5lhV6dFEmYyi3OXK0WbTO4wnqi/fmJI2SucHO2dbDHA7i
         CPYoVfgycg+AH0mWM9NpsM0qCz9R/F56BveH6XkeuitKagumeAiMp9t3J8PDHkWPueWS
         gcuH34mlgYVy7i1MN0QssJ8+ICTltDnqnyxtXGoVFh4qZMPKfOSysGW/P6BqFB8vVVa+
         Z2yoybBbY54r73LcMlc07t0ax4mCztZpC4DsUiYkPEMdQ3IgR6lJaqXHxtXOLWIXbv4Y
         xUYWmQylxA7CU0gjHAGGbj/8OQsusqFm2iWlO41o/Rqu7USk1AciL2D6NRPFLPKfVafE
         vz/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=or7+nROvjjE0YVOaSAamIl2MYflbZ/V2vgtV+9Eljjw=;
        b=PcbSvTdI8WpYxfWLetl6OVjjSmRyBEQwTErfiJ00egAElIe7tJ74sT7Qlk2k+0RbpC
         h9kpG9Qbit+GauRkxTsID/AfsCTatynZw31MU6knfMrVaDDgiMDxiIu71cG1txafyflt
         R+fGFwOqNJJwuUjewskFEszUkTfywB9BH1OskwXHZJwjvlgZBY9VEOdRxZzDz9wiziyT
         iFPpJRfL6pipym8aXMIUUwu9HYWGsdSJtTi4seyoDrmGbRJqSqntwxK4l2W1FNFLL9+d
         5AMpCvoJC/PYOHWCTYWx3fjuprLFeVkwg4tpXTw5Z8VflaKdwk7sNOqFMM0NVaoLHNAB
         mZdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@elastisys.com header.s=google header.b=HcRuvwy9;
       spf=pass (google.com: domain of cristian.klein@elastisys.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=cristian.klein@elastisys.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=elastisys.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id u17si735861wrq.1.2020.06.22.01.49.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 01:49:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristian.klein@elastisys.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id t9so200706lfl.5
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 01:49:12 -0700 (PDT)
X-Received: by 2002:a19:c8c2:: with SMTP id y185mr9237079lff.52.1592815751589;
        Mon, 22 Jun 2020 01:49:11 -0700 (PDT)
Received: from minitrue (90-224-48-115-no56.tbcn.telia.com. [90.224.48.115])
        by smtp.gmail.com with ESMTPSA id n21sm2604950ljj.97.2020.06.22.01.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 01:49:11 -0700 (PDT)
Date: Mon, 22 Jun 2020 10:49:09 +0200
From: Cristian Klein <cristian.klein@elastisys.com>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Jiri Kosina <jkosina@suse.cz>
Subject: Re: [hid:for-5.9/core 4/4]
 drivers/hid/intel-ish-hid/ipc/ipc.c:12:10: fatal error: 'client.h' file not
 found
Message-ID: <20200622084909.GA16222@minitrue>
References: <202006201202.0oBmfh6N%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006201202.0oBmfh6N%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: cristian.klein@elastisys.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@elastisys.com header.s=google header.b=HcRuvwy9;       spf=pass
 (google.com: domain of cristian.klein@elastisys.com designates
 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=cristian.klein@elastisys.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=elastisys.com
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

Hi test robot, :D

Sorry for top-posting. I could not reproduce this today.

I am unfamiliar with the status of clang and the Linux kernel. Does this
indicate a problem with the Linux kernel or with clang?

Cheers,
Cristian

On Sat, Jun 20, 2020 at 12:37:07PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/hid/hid.git for-5.9/core
> head:   470376737e88dc8e453f3d2739447c130f8ebeb6
> commit: 470376737e88dc8e453f3d2739447c130f8ebeb6 [4/4] HID: allow building hid.ko as an external module
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 487ca07fcc75d52755c9fe2ee05bcb3b6eeeec44)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 470376737e88dc8e453f3d2739447c130f8ebeb6
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/hid/intel-ish-hid/ipc/ipc.c:12:10: fatal error: 'client.h' file not found
>    #include "client.h"
>             ^~~~~~~~~~
>    1 error generated.
> --
> >> drivers/hid/intel-ish-hid/ipc/pci-ish.c:22:10: fatal error: 'ishtp-dev.h' file not found
>    #include "ishtp-dev.h"
>             ^~~~~~~~~~~~~
>    1 error generated.
> 
> vim +12 drivers/hid/intel-ish-hid/ipc/ipc.c
> 
> ae02e5d40d5f82 Srinivas Pandruvada 2016-08-07 @12  #include "client.h"
> ae02e5d40d5f82 Srinivas Pandruvada 2016-08-07  13  #include "hw-ish.h"
> ae02e5d40d5f82 Srinivas Pandruvada 2016-08-07  14  #include "hbm.h"
> ae02e5d40d5f82 Srinivas Pandruvada 2016-08-07  15  
> 
> :::::: The code at line 12 was first introduced by commit
> :::::: ae02e5d40d5f829c589412c6253f925e35cf7a22 HID: intel-ish-hid: ipc layer
> 
> :::::: TO: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
> :::::: CC: Jiri Kosina <jkosina@suse.cz>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622084909.GA16222%40minitrue.
