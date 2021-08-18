Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQEK62EAMGQEQ46CB5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 150AA3F0DE7
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 00:10:10 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id o22-20020ac872d60000b029029817302575sf1672393qtp.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 15:10:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629324609; cv=pass;
        d=google.com; s=arc-20160816;
        b=KYth2hezWypG72JcZHoJCeqEY8FGl86A0JvC7ewOBlpFrqUBgwrXHh07hUmEYoPHVv
         xJXEC0obev9JYhs/RY3zMndBFcbCYtGg5pX4jJafKCINapFvhSTMZuT8O/TaY6ed5C85
         A7A0AdtFm5iC3hwKyzSkEuM/C7OIcVBfzdzUPse+plWGAIzP61YTLCn6tZynBK2dN3xb
         78Wbz3koJWjeWcchxRVgb4vJzqGZHaG3xMO3LqOUndgG2iQuPT2PYItFKSPnf2MlGjU5
         EBPgOgsIkV65QuA9AqoLy+kGJhmEVT80mi3eD5FW4xgBYUJo3dpXGcUyj4tpQXY4ePSs
         iQrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Pq8cB4xaADL7s9sK9nNCzXRJflStlIlBoCcPwQyx1Bk=;
        b=NM/HHIt3oMJLNzIf7I2Cndf3wnMBi9+IyNT5lnW88Q4iZEKWK1nZEQtnfC/b4KYx/R
         GF5iftLz2vLCIHsLaXb5iGYAXCTXeFT99/IwtcLnOS/K1fKbruyoMMpfReAS5ny9vgK4
         p4lsFo0mcVIrdJHOxNML1DupF49IuJd+auguV+kGBoC0xRtKtdnzut9AfPW34TO31Sts
         5mAqLixemWm79vaSk+lVefewbpizWseVnCIqoboTfcEnAgEtXtVvNZq4R5xcCaJkzqeH
         DRmLfWf9ssQeNXmyRWJCtk1Fd3Y/xt4uRgSUt/xkjWas8IcLY1/WhkLIdNmOqe3v5Gf4
         /PVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Pq8cB4xaADL7s9sK9nNCzXRJflStlIlBoCcPwQyx1Bk=;
        b=AypTu0lJJmtEx5ZeIp1pPB+8fQLeSRE55x9B4sNGt3RHxGem41vFYn7/78hGaJuvSR
         9Dbusq24wtBwM2LwnrN387EHDsl/YbhALf9xK0Fltj+aY4pn0619vKGoU/Vgew2RHBle
         ueQfKoABhR2Hpqb49Ty/vA6Or0iuu/0wMqqFt89vxjGgnx+AcxiFVY6Dmi+Ew3MA+BlO
         sVsNR040XetGg2M/Bj9mOnb17c6YUP0hHsD1soOYLTuKjOWmkEm0d7sUooayhcYJSrv5
         CStQGQCuGPXLxMW0XPvirltxAHsO9erfkep/yA7rmNUj76CO0P9DGQJwVLT+02ikJkgK
         2CtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pq8cB4xaADL7s9sK9nNCzXRJflStlIlBoCcPwQyx1Bk=;
        b=Hq1G3R+KUyBSSwtJprp4POeIuXRgDG9i7Exau3KPAZYOSYcNu/BrFDUWx47LJeqNGo
         djwYD1hIUTpECg5T2loMLhHPP3npp+OOG0kdYcrsQcGK+R0fFMUqLFUhSoDnqoLgx5hn
         bGue6DHjm84Gz/mvn8n8ZBgpg2HC4tzPFIcUmN2L2UahLzGu0AqsL1UuL2nK9OTfkKAv
         KL29FKdyAZEDKj2l6z9LaYvxaGVs8LgFP1QCDhE+alJ2JsY1nzbQGp44nijaHvx+b2gE
         fl5wBRtteGDibkAkvFdId6AreRyMM6QEx2Pnc57o7I6bDnpPMxcNu6a1lac8P7MzvDY9
         izPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eiLIPXonacXbqY5YhTSNtXcqv1TQt+oVK4UnCZcdtHLOlLeLx
	jVNMsX0A6sw2rVuFiGiILOA=
X-Google-Smtp-Source: ABdhPJy35vTEvEd2vPZ793w4kv1kWQteIF3ZnJkTy485TvDdS/lgPbtBzcjUH2hCrODPkiRDABj4Sw==
X-Received: by 2002:a05:6214:d83:: with SMTP id e3mr11261014qve.23.1629324608881;
        Wed, 18 Aug 2021 15:10:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:710:: with SMTP id 16ls488289qkc.1.gmail; Wed, 18
 Aug 2021 15:10:08 -0700 (PDT)
X-Received: by 2002:a37:749:: with SMTP id 70mr464425qkh.461.1629324607751;
        Wed, 18 Aug 2021 15:10:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629324607; cv=none;
        d=google.com; s=arc-20160816;
        b=1EUZrdTGjI9MckACTVaWkeT/ufIZq1Gf+hqhulbNAsazISp8oUNTfVrqKfkQ73Aywa
         EWhrDS+GmqFTEfpOjiDDq/lQRbM6lAabxkFNpNP82/yjWIQBP+k76r9VinQCxU3Aj6Il
         s6Sh7oIdJOlV445Jr8MhDFE8JZgRonauGxTCJvBzek+oJbQSeiFmyoDmQM0DWI3kVKLq
         73shecdSFvNT470+flE9MI9LrgWkcDcifEvvTrjGHUAuzCvMMNpLm3hCn2jB7W2Q9+pJ
         yY1wB7kBuyTZPCgqpLFNfd5BiDXhneOgv3JIeKD+WDYVGf4KGRvvGNmhZGMhegK8zki7
         eWvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=FSTDUPpfryBGbdyso3/wx5eQZiJQXqrwvNx6wvGOklA=;
        b=k7fK5+ywI1iwAG5hHuyDhLnWW949tpoCDgHtyQ0QZ/GLKdxuHccEbHkK2FhhVrYuiP
         4WalGw+FvY1pnLGSTxLI4c/Q8th9PLXTGPXZpFDhLvZtoKgw/piUuDYN5guNtLWjK1S2
         VDTHusEHi7bDmpJ7r/zjxkNkqjK5hz9QYWmUcPilXHi1qvBxdDE7mEDu5k5gMfQDUsJO
         AD13unyDU7NkPg2SIFsov2UA0Uf8N/jLkLeCyclGZEpoAN+W+ZikxUzdgdXJiP4DSPEf
         7ycO3TKERtA1OcGR8/w3MPDXN30fY7p4+BgMfldf7O8lg6CISXQcnuh9qd61GiJjNvbt
         0vQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id j8si64402qkk.0.2021.08.18.15.10.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 15:10:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="280175232"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; 
   d="gz'50?scan'50,208,50";a="280175232"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2021 15:10:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; 
   d="gz'50?scan'50,208,50";a="511386033"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 18 Aug 2021 15:10:02 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mGTl4-000TMx-4t; Wed, 18 Aug 2021 22:10:02 +0000
Date: Thu, 19 Aug 2021 06:09:39 +0800
From: kernel test robot <lkp@intel.com>
To: Rui Miguel Silva <rui.silva@linaro.org>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-usb@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [usb:usb-testing 54/97] drivers/usb/isp1760/isp1760-hcd.c:735:2:
 warning: Value stored to 'scratch' is never read
 [clang-analyzer-deadcode.DeadStores]
Message-ID: <202108190619.wLK5u4fO-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="huq684BweRXVnRxX"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--huq684BweRXVnRxX
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
head:   e4788edc730a0d2b26e1ae1f08fbb3f635b92dbb
commit: 7de14c88272c05d86fce83a5cead36832ce3a424 [54/97] usb: isp1760: remove debug message as error
config: riscv-randconfig-c006-20210818 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d2b574a4dea5b718e4386bf2e26af0126e5978ce)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?id=7de14c88272c05d86fce83a5cead36832ce3a424
        git remote add usb https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
        git fetch --no-tags usb usb-testing
        git checkout 7de14c88272c05d86fce83a5cead36832ce3a424
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv clang-analyzer 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


clang-analyzer warnings: (new ones prefixed by >>)
                   ^      ~
   drivers/target/target_core_configfs.c:2627:23: warning: Value stored to 'alua_lu_gp_cg' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct config_group *alua_lu_gp_cg = &lu_gp->lu_gp_group;
                                ^~~~~~~~~~~~~   ~~~~~~~~~~~~~~~~~~~
   drivers/target/target_core_configfs.c:2627:23: note: Value stored to 'alua_lu_gp_cg' during its initialization is never read
           struct config_group *alua_lu_gp_cg = &lu_gp->lu_gp_group;
                                ^~~~~~~~~~~~~   ~~~~~~~~~~~~~~~~~~~
   drivers/target/target_core_configfs.c:2731:2: warning: Value stored to 'alua_lu_gp_ci' is never read [clang-analyzer-deadcode.DeadStores]
           alua_lu_gp_ci = &alua_lu_gp_cg->cg_item;
           ^               ~~~~~~~~~~~~~~~~~~~~~~~
   drivers/target/target_core_configfs.c:2731:2: note: Value stored to 'alua_lu_gp_ci' is never read
           alua_lu_gp_ci = &alua_lu_gp_cg->cg_item;
           ^               ~~~~~~~~~~~~~~~~~~~~~~~
   drivers/target/target_core_configfs.c:2748:25: warning: Value stored to 'lu_gp' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct t10_alua_lu_gp *lu_gp = container_of(to_config_group(item),
                                  ^~~~~
   drivers/target/target_core_configfs.c:2748:25: note: Value stored to 'lu_gp' during its initialization is never read
           struct t10_alua_lu_gp *lu_gp = container_of(to_config_group(item),
                                  ^~~~~
   drivers/target/target_core_configfs.c:3026:23: warning: Value stored to 'alua_tg_pt_gp_cg' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct config_group *alua_tg_pt_gp_cg = &tg_pt_gp->tg_pt_gp_group;
                                ^~~~~~~~~~~~~~~~   ~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/target/target_core_configfs.c:3026:23: note: Value stored to 'alua_tg_pt_gp_cg' during its initialization is never read
           struct config_group *alua_tg_pt_gp_cg = &tg_pt_gp->tg_pt_gp_group;
                                ^~~~~~~~~~~~~~~~   ~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/target/target_core_configfs.c:3163:2: warning: Value stored to 'alua_tg_pt_gp_ci' is never read [clang-analyzer-deadcode.DeadStores]
           alua_tg_pt_gp_ci = &alua_tg_pt_gp_cg->cg_item;
           ^                  ~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/target/target_core_configfs.c:3163:2: note: Value stored to 'alua_tg_pt_gp_ci' is never read
           alua_tg_pt_gp_ci = &alua_tg_pt_gp_cg->cg_item;
           ^                  ~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/target/target_core_configfs.c:3179:28: warning: Value stored to 'tg_pt_gp' during its initialization is never read [clang-analyzer-deadcode.DeadStores]
           struct t10_alua_tg_pt_gp *tg_pt_gp = container_of(to_config_group(item),
                                     ^~~~~~~~
   drivers/target/target_core_configfs.c:3179:28: note: Value stored to 'tg_pt_gp' during its initialization is never read
           struct t10_alua_tg_pt_gp *tg_pt_gp = container_of(to_config_group(item),
                                     ^~~~~~~~
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   6 warnings generated.
   drivers/misc/eeprom/at24.c:334:2: warning: Value stored to 'client' is never read [clang-analyzer-deadcode.DeadStores]
           client = at24_client->client;
           ^        ~~~~~~~~~~~~~~~~~~~
   drivers/misc/eeprom/at24.c:334:2: note: Value stored to 'client' is never read
           client = at24_client->client;
           ^        ~~~~~~~~~~~~~~~~~~~
   drivers/misc/eeprom/at24.c:397:2: warning: Value stored to 'client' is never read [clang-analyzer-deadcode.DeadStores]
           client = at24_client->client;
           ^        ~~~~~~~~~~~~~~~~~~~
   drivers/misc/eeprom/at24.c:397:2: note: Value stored to 'client' is never read
           client = at24_client->client;
           ^        ~~~~~~~~~~~~~~~~~~~
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   5 warnings generated.
   drivers/usb/isp1760/isp1760-core.c:490:2: warning: Value stored to 'udc_enabled' is never read [clang-analyzer-deadcode.DeadStores]
           udc_enabled = ((devflags & ISP1760_FLAG_ISP1763) ||
           ^             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-core.c:490:2: note: Value stored to 'udc_enabled' is never read
           udc_enabled = ((devflags & ISP1760_FLAG_ISP1763) ||
           ^             ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   4 warnings generated.
   Suppressed 4 warnings (4 in non-user code).
   Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
   9 warnings generated.
>> drivers/usb/isp1760/isp1760-hcd.c:735:2: warning: Value stored to 'scratch' is never read [clang-analyzer-deadcode.DeadStores]
           scratch = isp1760_hcd_read(hcd, HC_CHIP_ID_HIGH);
           ^         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-hcd.c:735:2: note: Value stored to 'scratch' is never read
           scratch = isp1760_hcd_read(hcd, HC_CHIP_ID_HIGH);
           ^         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-hcd.c:1855:38: warning: Division by zero [clang-analyzer-core.DivideZero]
                                   && !(urb->transfer_buffer_length %
                                                                    ^
   drivers/usb/isp1760/isp1760-hcd.c:1887:2: note: Control jumps to 'case 3:'  at line 1891
           switch (usb_pipetype(urb->pipe)) {
           ^
   drivers/usb/isp1760/isp1760-hcd.c:1893:3: note:  Execution continues on line 1911
                   break;
                   ^
   drivers/usb/isp1760/isp1760-hcd.c:1911:6: note: Assuming the condition is false
           if (usb_pipein(urb->pipe))
               ^
   include/linux/usb.h:1937:27: note: expanded from macro 'usb_pipein'
   #define usb_pipein(pipe)        ((pipe) & USB_DIR_IN)
                                    ^~~~~~~~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-hcd.c:1911:2: note: Taking false branch
           if (usb_pipein(urb->pipe))
           ^
   drivers/usb/isp1760/isp1760-hcd.c:1914:2: note: Calling 'packetize_urb'
           packetize_urb(hcd, urb, &new_qtds, mem_flags);
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-hcd.c:1783:6: note: Assuming field 'transfer_buffer' is non-null
           if (!urb->transfer_buffer && urb->transfer_buffer_length) {
               ^~~~~~~~~~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-hcd.c:1783:28: note: Left side of '&&' is false
           if (!urb->transfer_buffer && urb->transfer_buffer_length) {
                                     ^
   drivers/usb/isp1760/isp1760-hcd.c:1792:2: note: Taking false branch
           if (usb_pipein(urb->pipe))
           ^
   drivers/usb/isp1760/isp1760-hcd.c:1797:2: note: Taking false branch
           if (usb_pipecontrol(urb->pipe)) {
           ^
   drivers/usb/isp1760/isp1760-hcd.c:1809:2: note: The value 0 is assigned to 'maxpacketsize'
           maxpacketsize = max_packet(usb_maxpacket(urb->dev, urb->pipe,
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-hcd.c:1820:2: note: Loop condition is true.  Entering loop body
           for (;;) {
           ^
   drivers/usb/isp1760/isp1760-hcd.c:1823:9: note: Calling 'qtd_alloc'
                   qtd = qtd_alloc(flags, urb, packet_type);
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-hcd.c:980:6: note: Assuming 'qtd' is non-null, which participates in a condition later
           if (!qtd)
               ^~~~
   drivers/usb/isp1760/isp1760-hcd.c:980:2: note: Taking false branch
           if (!qtd)
           ^
   drivers/usb/isp1760/isp1760-hcd.c:989:2: note: Returning pointer (loaded from 'qtd'), which participates in a condition later
           return qtd;
           ^~~~~~~~~~
   drivers/usb/isp1760/isp1760-hcd.c:1823:9: note: Returning from 'qtd_alloc'
                   qtd = qtd_alloc(flags, urb, packet_type);
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-hcd.c:1824:8: note: 'qtd' is non-null
                   if (!qtd)
                        ^~~
   drivers/usb/isp1760/isp1760-hcd.c:1824:3: note: Taking false branch
                   if (!qtd)
                   ^
   drivers/usb/isp1760/isp1760-hcd.c:1827:7: note: Assuming the condition is false
                   if (len > mem->blocks_size[ISP176x_BLOCK_NUM - 1])
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-hcd.c:1827:3: note: Taking false branch
                   if (len > mem->blocks_size[ISP176x_BLOCK_NUM - 1])
                   ^
   drivers/usb/isp1760/isp1760-hcd.c:1836:7: note: 'len' is <= 0
                   if (len <= 0)
                       ^~~
   drivers/usb/isp1760/isp1760-hcd.c:1836:3: note: Taking true branch
                   if (len <= 0)
                   ^
   drivers/usb/isp1760/isp1760-hcd.c:1837:4: note:  Execution continues on line 1844
                           break;
                           ^
   drivers/usb/isp1760/isp1760-hcd.c:1844:6: note: Assuming field 'transfer_buffer_length' is not equal to 0
           if (urb->transfer_buffer_length != 0) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/usb/isp1760/isp1760-hcd.c:1844:2: note: Taking true branch
           if (urb->transfer_buffer_length != 0) {
           ^
   drivers/usb/isp1760/isp1760-hcd.c:1847:7: note: Assuming the condition is false
                   if (usb_pipecontrol(urb->pipe)) {
                       ^
   include/linux/usb.h:1946:32: note: expanded from macro 'usb_pipecontrol'
   #define usb_pipecontrol(pipe)   (usb_pipetype((pipe)) == PIPE_CONTROL)
                                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/usb.h:1943:28: note: expanded from macro 'usb_pipetype'
   #define usb_pipetype(pipe)      (((pipe) >> 30) & 3)
                                   ^
   drivers/usb/isp1760/isp1760-hcd.c:1847:3: note: Taking false branch
                   if (usb_pipecontrol(urb->pipe)) {
                   ^
   drivers/usb/isp1760/isp1760-hcd.c:1853:14: note: Assuming the condition is true
                   } else if (usb_pipebulk(urb->pipe)

vim +/scratch +735 drivers/usb/isp1760/isp1760-hcd.c

db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  718  
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  719  static int isp1760_hc_setup(struct usb_hcd *hcd)
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  720  {
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  721  	struct isp1760_hcd *priv = hcd_to_priv(hcd);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  722  	u32 atx_reset;
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  723  	int result;
1da9e1c0687335 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  724  	u32 scratch;
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  725  	u32 pattern;
1da9e1c0687335 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  726  
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  727  	if (priv->is_isp1763)
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  728  		pattern = 0xcafe;
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  729  	else
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  730  		pattern = 0xdeadcafe;
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  731  
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  732  	isp1760_hcd_write(hcd, HC_SCRATCH, pattern);
3faefc88c1a32b drivers/usb/host/isp1760-hcd.c    Nate Case         2008-06-17  733  
3faefc88c1a32b drivers/usb/host/isp1760-hcd.c    Nate Case         2008-06-17  734  	/* Change bus pattern */
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13 @735  	scratch = isp1760_hcd_read(hcd, HC_CHIP_ID_HIGH);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  736  	scratch = isp1760_hcd_read(hcd, HC_SCRATCH);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  737  	if (scratch != pattern) {
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  738  		dev_err(hcd->self.controller, "Scratch test failed. 0x%08x\n", scratch);
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  739  		return -ENODEV;
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  740  	}
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  741  
5171446a3aec60 drivers/usb/host/isp1760-hcd.c    Laurent Pinchart  2015-01-21  742  	/*
5171446a3aec60 drivers/usb/host/isp1760-hcd.c    Laurent Pinchart  2015-01-21  743  	 * The RESET_HC bit in the SW_RESET register is supposed to reset the
5171446a3aec60 drivers/usb/host/isp1760-hcd.c    Laurent Pinchart  2015-01-21  744  	 * host controller without touching the CPU interface registers, but at
5171446a3aec60 drivers/usb/host/isp1760-hcd.c    Laurent Pinchart  2015-01-21  745  	 * least on the ISP1761 it seems to behave as the RESET_ALL bit and
5171446a3aec60 drivers/usb/host/isp1760-hcd.c    Laurent Pinchart  2015-01-21  746  	 * reset the whole device. We thus can't use it here, so let's reset
5171446a3aec60 drivers/usb/host/isp1760-hcd.c    Laurent Pinchart  2015-01-21  747  	 * the host controller through the EHCI USB Command register. The device
5171446a3aec60 drivers/usb/host/isp1760-hcd.c    Laurent Pinchart  2015-01-21  748  	 * has been reset in core code anyway, so this shouldn't matter.
5171446a3aec60 drivers/usb/host/isp1760-hcd.c    Laurent Pinchart  2015-01-21  749  	 */
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  750  	isp1760_hcd_clear(hcd, ISO_BUF_FILL);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  751  	isp1760_hcd_clear(hcd, INT_BUF_FILL);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  752  	isp1760_hcd_clear(hcd, ATL_BUF_FILL);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  753  
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  754  	isp1760_hcd_set(hcd, HC_ATL_PTD_SKIPMAP);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  755  	isp1760_hcd_set(hcd, HC_INT_PTD_SKIPMAP);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  756  	isp1760_hcd_set(hcd, HC_ISO_PTD_SKIPMAP);
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  757  
6bda21bc0941c1 drivers/usb/host/isp1760-hcd.c    Arvid Brodin      2011-02-26  758  	result = ehci_reset(hcd);
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  759  	if (result)
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  760  		return result;
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  761  
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  762  	/* Step 11 passed */
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  763  
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  764  	/* ATL reset */
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  765  	if (priv->is_isp1763)
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  766  		atx_reset = SW_RESET_RESET_ATX;
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  767  	else
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  768  		atx_reset = ALL_ATX_RESET;
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  769  
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  770  	isp1760_hcd_set(hcd, atx_reset);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  771  	mdelay(10);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  772  	isp1760_hcd_clear(hcd, atx_reset);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  773  
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  774  	if (priv->is_isp1763) {
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  775  		isp1760_hcd_set(hcd, HW_OTG_DISABLE);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  776  		isp1760_hcd_set(hcd, HW_SW_SEL_HC_DC_CLEAR);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  777  		isp1760_hcd_set(hcd, HW_HC_2_DIS_CLEAR);
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  778  		mdelay(10);
3faefc88c1a32b drivers/usb/host/isp1760-hcd.c    Nate Case         2008-06-17  779  
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  780  		isp1760_hcd_set(hcd, HW_INTF_LOCK);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  781  	}
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  782  
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  783  	isp1760_hcd_set(hcd, HC_INT_IRQ_ENABLE);
60d789f3bfbb74 drivers/usb/isp1760/isp1760-hcd.c Rui Miguel Silva  2021-05-13  784  	isp1760_hcd_set(hcd, HC_ATL_IRQ_ENABLE);
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  785  
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  786  	return priv_init(hcd);
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  787  }
db11e47dd7b09b drivers/usb/host/isp1760-hcd.c    Sebastian Siewior 2008-04-24  788  

:::::: The code at line 735 was first introduced by commit
:::::: 60d789f3bfbb7428e6ba2949de70a6db8e12e8fa usb: isp1760: add support for isp1763

:::::: TO: Rui Miguel Silva <rui.silva@linaro.org>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108190619.wLK5u4fO-lkp%40intel.com.

--huq684BweRXVnRxX
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
qYtslBICAA==

--huq684BweRXVnRxX--
