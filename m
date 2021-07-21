Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBB4J36DQMGQEYYLGQYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A373D093C
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 08:54:00 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id n11-20020a170902e54bb029012b5431cb04sf465141plf.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 23:54:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626850439; cv=pass;
        d=google.com; s=arc-20160816;
        b=dC7oPJkmqCYX/ZeLDQ5q6ejsLzeOiXN218XxnA+EVT7R+L73OSAymb8cwRgaG2cJyP
         CN86hXPjDT7tujlFn3JS3tvYCbDopoqvCUhKtRmqddVHZjUkK6f7kklIRID2eLwUkVpJ
         HcKihs+412MQ5gxL8DXpXy+3tfT9IqDSx8UuyfhcdzU41s2gHls1LhHSVzo11UDIJduW
         vNzNe27DunfszaTNY4HIKod4OoOjJn4/QhFmvWBOiLvjNX5APJjcciHDpRkRlwkqiP5b
         8RVjssfT0TjEFOEmRB0MAr4uDs6HrpStifTkpAmbjoR9MVFCu6RLbiQ0iaXVNAx5PvEP
         LgLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=xwjvHIzkoI4D2AF9pHwvNqtsirmNWw9i1BooGuphuOM=;
        b=gWeynLkbNRxer98oUNo/PRzpgrdlNLI6PvMELu14++Jloc/UTcQFRzM72tJeRYs47c
         W86fNML0OsJfDKvsM3PGV8uVgDOxJ2bdcx7+vWkMKWw3CEx2V5HWgVZntElVYhDIvZmT
         HEjT/v1Ct6gdhjX83uxGf9c/w/hTpCOCvPs3BVX9mlTUhYbc9VthWyO/o2bCuF37E9KW
         X5blepPi35Z5YRnHT0SgrFxUHvT4CWoX+huiZwCL8qtOUESCqdu3mJAg/UtcQuZFfAgh
         F4DgLOp3UeEIUb4nc2GmEc1kh2jLbneQS8oG8RQe30QW3zWjjq54n51jpWX3d0/HqpmZ
         t/UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xwjvHIzkoI4D2AF9pHwvNqtsirmNWw9i1BooGuphuOM=;
        b=SpD9+5T2GOLu7B+DhGBfOvp+uybQgL932wm/COJKQZO3+Pnrl2l2/QxyXqwyw3a/ZE
         K4XaZN5lykacKPYdIdSlVAukmzDgx3Df3mXDpVThecxcWl/iXzLaQI3SeQXImTdSSuef
         JkMen1exEJCQkWLFqw+ArChIAUffidO7XKTolB/AjfKYCW3tQXzk0i/DuBsnd9cczvvv
         8RGkQoK5o2JeQ28WbsZO85xzkpLAHPDdKGWbQhHS874m1JDlRr5hWSFLYLqB88myqphn
         UB5D9HmxHVTKBomr9X52hRJJMkvGpYERXwv+XL+wlCN06tuGzrX+f/O+OyCj9LEnbFTB
         NBUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xwjvHIzkoI4D2AF9pHwvNqtsirmNWw9i1BooGuphuOM=;
        b=Zy53Q/O8D3/ddYaSypB4CRzX1lwxn9swTFYqUhWpflSvqBu1ht77ZROPZlGkiO5vcM
         XBh2vd2u+dqhDZXLNaHOml9cp3KBfb43Qu9exjeh4rcgVxzSZVNS8ZjhTt1VNIZ7hpIk
         oizh3hhk5JPTbCb45ZW9G+jxQoEn3XGuPB2rr5EhbIHnaYrOVfn5acn1yuri9jSkoGsu
         l8GPe6mx+urjy5E5LqNjskoZPZUhZb3XspWnirCA3XPRo0XNO77JBk10xST19yS8L6Jq
         BKg8lAbkcIwwud9pxC3AdcxM/FoJexgAhol37x5cP0pz4bgFwVgrX4nfMKoH4MoJSCCj
         AvUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531urwJCbW/uaCn3nki5CaIr1fIO0KTvI8ZdD7cH5rBRrONZdH/x
	XsK0L8SiP15iiAGolZWREFI=
X-Google-Smtp-Source: ABdhPJyq7lFIemXne3oFRCSblHBmWAOQNdUSEvVG4RNdeoa7CwnTM1teQqsnss9/N1rHA3QrKN9ucA==
X-Received: by 2002:a62:dd83:0:b029:30f:d69:895f with SMTP id w125-20020a62dd830000b029030f0d69895fmr35659512pff.17.1626850439420;
        Tue, 20 Jul 2021 23:53:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:6f24:: with SMTP id d33ls781747pjk.0.gmail; Tue, 20
 Jul 2021 23:53:58 -0700 (PDT)
X-Received: by 2002:a17:90a:bb0d:: with SMTP id u13mr20060306pjr.88.1626850438561;
        Tue, 20 Jul 2021 23:53:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626850438; cv=none;
        d=google.com; s=arc-20160816;
        b=vRkD1oj9EjOzl6BG3qoRXyXTr0F7exvj9QD9TzqMgydxdHQdos27kiweE1mRFZh5oZ
         zrVxUQam6JW5uZ1FMeBjaS8p3B5K0P0ra+qiKbdusW4pLxHxuro6cwX+Vr8PA4U9rNby
         S/Eafdy+t7TimOYqtb3f/qpikYgoYD7UOCqTiJpzAVECMWsUnZB9VRF5jsroKGye0tDr
         cRI2Bs/DwJD1F5m5Ta71a7QmlxvltoU2qpyDqy/eSSREmmOFHr/VYqgGtLEu1lHXwN6l
         FGOeRUElrFbY17TY3ZiabsXSRTHje0r7oNNH8L4n86OxrT6HwV+C5rcYSMb9+OeUCZgK
         qzWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=nBeYu5Mn4r5GdzcDOBcOfL5txy2kpGDSjNYswXN/xF8=;
        b=k9ANFbC8PlDQO6cnfS194MGQKmsxznUPxEfOvbLPUdectvkQ6HRXeCPp+HMdUo55Op
         jky+hSRnYdbOfle1Rz+31SSbez+G3JKRO9qAm8WVcbjwAcw8fh6qL6gHLYkl3njN+fj0
         A1E7iuXnzB/hfYNdKs5NqtIeFR6RFBw1S4+KkX/YCZ36u5ch26cqNFjl+e8NuAacbRha
         cvgsn+n4m+RRi8ucp4z014tyyUWOQqiNuiWLkPpcsbNrqWaNd2vjCOR9sCC0D/6HeBdA
         LZWDR0tY3dhFmLsN6Xl+kPdh1b4c5N3WQC9lMhJXUHRQH+FdIKacOO/awIrON8IiABd2
         Q7cA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id t15si1394249plr.0.2021.07.20.23.53.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 23:53:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-IronPort-AV: E=McAfee;i="6200,9189,10051"; a="190967305"
X-IronPort-AV: E=Sophos;i="5.84,257,1620716400"; 
   d="gz'50?scan'50,208,50";a="190967305"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Jul 2021 23:53:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,257,1620716400"; 
   d="gz'50?scan'50,208,50";a="501174301"
Received: from lkp-server01.sh.intel.com (HELO b8b92b2878b0) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 20 Jul 2021 23:53:55 -0700
Received: from kbuild by b8b92b2878b0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m6678-0000Al-Jv; Wed, 21 Jul 2021 06:53:54 +0000
Date: Wed, 21 Jul 2021 14:53:19 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Dave Airlie <airlied@redhat.com>
Subject: drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c:841:6:
 warning: performing pointer subtraction with a null pointer has undefined
 behavior
Message-ID: <202107211406.rfN2m4j6-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="n8g4imXOkfNTN/H1"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--n8g4imXOkfNTN/H1
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Dave,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   8cae8cd89f05f6de223d63e6d15e31c8ba9cf53b
commit: 0c8d22fcae2f9590a07b000e1724f665820b77f7 Merge tag 'amd-drm-next-5.10-2020-09-03' of git://people.freedesktop.org/~agd5f/linux into drm-next
date:   11 months ago
config: powerpc64-randconfig-r012-20210720 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c781eb153bfbd1b52b03efe34f56bbeccbb8aba6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0c8d22fcae2f9590a07b000e1724f665820b77f7
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 0c8d22fcae2f9590a07b000e1724f665820b77f7
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c:23:
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/inc/pp_debug.h:34:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:29:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:310:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c:841:6: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                                           GetIndexIntoMasterTable(DATA, PowerPlayInfo),
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c:1089:5: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                            GetIndexIntoMasterTable(DATA, FirmwareInfo),
                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   3 warnings generated.
--
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c:23:
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/inc/pp_debug.h:34:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:29:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:310:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c:319:4: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                           GetIndexIntoMasterTable(DATA, IntegratedSystemInfo),
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c:2044:5: warning: no previous prototype for function 'smu8_init_function_pointers' [-Wmissing-prototypes]
   int smu8_init_function_pointers(struct pp_hwmgr *hwmgr)
       ^
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu8_hwmgr.c:2044:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int smu8_init_function_pointers(struct pp_hwmgr *hwmgr)
   ^
   static 
   3 warnings generated.
--
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c:23:
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/inc/pp_debug.h:34:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:29:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:310:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/process_pptables_v1_0.c:136:14: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
           int index = GetIndexIntoMasterTable(DATA, PowerPlayInfo);
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   2 warnings generated.
--
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:23:
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/inc/pp_debug.h:34:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:29:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:310:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:31:
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppevvmath.h:336:7: warning: variable 'X_LessThanOne' set but not used [-Wunused-but-set-variable]
           bool X_LessThanOne, Y_LessThanOne;
                ^
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppevvmath.h:336:22: warning: variable 'Y_LessThanOne' set but not used [-Wunused-but-set-variable]
           bool X_LessThanOne, Y_LessThanOne;
                               ^
>> drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:145:5: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                                   GetIndexIntoMasterTable(DATA, VRAM_Info), &size, &frev, &crev);
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:191:4: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                           GetIndexIntoMasterTable(COMMAND, DynamicMemorySettings),
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:203:14: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
           int index = GetIndexIntoMasterTable(DATA, VoltageObjectInfo);
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:261:4: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                    GetIndexIntoMasterTable(COMMAND, ComputeMemoryClockParam),
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:308:4: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                           GetIndexIntoMasterTable(COMMAND, ComputeMemoryClockParam),
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:329:4: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                           GetIndexIntoMasterTable(COMMAND, ComputeMemoryClockParam),
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:359:4: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                    GetIndexIntoMasterTable(COMMAND, ComputeMemoryEnginePLL),
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:383:4: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                    GetIndexIntoMasterTable(COMMAND, ComputeMemoryEnginePLL),
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:420:4: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                    GetIndexIntoMasterTable(COMMAND, ComputeMemoryEnginePLL),
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:453:4: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                    GetIndexIntoMasterTable(COMMAND, ComputeMemoryEnginePLL),
                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:490:4: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                           GetIndexIntoMasterTable(DATA, FirmwareInfo),
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:610:5: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                                   GetIndexIntoMasterTable(DATA, GPIO_Pin_LUT),
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:678:6: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                                           GetIndexIntoMasterTable(DATA, ASIC_ProfilingInfo),
                                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:744:4: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                           GetIndexIntoMasterTable(COMMAND, ReadEfuseValue),
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:765:4: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                           GetIndexIntoMasterTable(COMMAND, ReadEfuseValue),
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:785:4: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                           GetIndexIntoMasterTable(COMMAND, ReadEfuseValue),
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomctrl.c:806:4: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
                           GetIndexIntoMasterTable(COMMAND, ReadEfuseValue),
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
--
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c:24:
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.h:27:
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/inc/hwmgr.h:26:
   In file included from include/linux/seq_file.h:7:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:109:
   In file included from include/asm-generic/bug.h:20:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:29:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:310:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c:60:8: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
           idx = GetIndexIntoMasterDataTable(voltageobject_info);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.h:34:74: note: expanded from macro 'GetIndexIntoMasterDataTable'
           (((char*)(&((struct atom_master_list_of_data_tables_v2_1*)0)->FieldName)-(char*)0)/sizeof(uint16_t))
                                                                                   ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c:168:8: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
           idx = GetIndexIntoMasterDataTable(gpio_pin_lut);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.h:34:74: note: expanded from macro 'GetIndexIntoMasterDataTable'
           (((char*)(&((struct atom_master_list_of_data_tables_v2_1*)0)->FieldName)-(char*)0)/sizeof(uint16_t))
                                                                                   ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c:258:8: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
           idx = GetIndexIntoMasterCmdTable(computegpuclockparam);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.h:32:80: note: expanded from macro 'GetIndexIntoMasterCmdTable'
           (((char*)(&((struct atom_master_list_of_command_functions_v2_1*)0)->FieldName)-(char*)0)/sizeof(uint16_t))
                                                                                         ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c:285:8: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
           idx = GetIndexIntoMasterDataTable(asic_profiling_info);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.h:34:74: note: expanded from macro 'GetIndexIntoMasterDataTable'
           (((char*)(&((struct atom_master_list_of_data_tables_v2_1*)0)->FieldName)-(char*)0)/sizeof(uint16_t))
                                                                                   ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c:469:8: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
           idx = GetIndexIntoMasterDataTable(smu_info);
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.h:34:74: note: expanded from macro 'GetIndexIntoMasterDataTable'
           (((char*)(&((struct atom_master_list_of_data_tables_v2_1*)0)->FieldName)-(char*)0)/sizeof(uint16_t))
                                                                                   ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c:505:7: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
           ix = GetIndexIntoMasterCmdTable(getsmuclockinfo);
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.h:32:80: note: expanded from macro 'GetIndexIntoMasterCmdTable'
           (((char*)(&((struct atom_master_list_of_command_functions_v2_1*)0)->FieldName)-(char*)0)/sizeof(uint16_t))
                                                                                         ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c:594:7: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
           ix = GetIndexIntoMasterDataTable(firmwareinfo);
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.h:34:74: note: expanded from macro 'GetIndexIntoMasterDataTable'
           (((char*)(&((struct atom_master_list_of_data_tables_v2_1*)0)->FieldName)-(char*)0)/sizeof(uint16_t))
                                                                                   ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.c:626:7: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
           ix = GetIndexIntoMasterDataTable(smc_dpm_info);
                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.h:34:74: note: expanded from macro 'GetIndexIntoMasterDataTable'
           (((char*)(&((struct atom_master_list_of_data_tables_v2_1*)0)->FieldName)-(char*)0)/sizeof(uint16_t))
                                                                                   ^~~~~~~~~
   9 warnings generated.
--
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_hwmgr.c:23:
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/inc/pp_debug.h:34:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:29:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:310:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_hwmgr.c:3075:14: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
           int index = GetIndexIntoMasterTable(DATA, FirmwareInfo);
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/atombios.h:7133:132: note: expanded from macro 'GetIndexIntoMasterTable'
   #define   GetIndexIntoMasterTable(MasterOrData, FieldName) (((char*)(&((ATOM_MASTER_LIST_OF_##MasterOrData##_TABLES*)0)->FieldName)-(char*)0)/sizeof(USHORT))
                                                                                                                                      ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_hwmgr.c:5207:5: warning: no previous prototype for function 'smu7_init_function_pointers' [-Wmissing-prototypes]
   int smu7_init_function_pointers(struct pp_hwmgr *hwmgr)
       ^
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/smu7_hwmgr.c:5207:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int smu7_init_function_pointers(struct pp_hwmgr *hwmgr)
   ^
   static 
   3 warnings generated.
--
   In file included from drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c:23:
   In file included from include/linux/module.h:12:
   In file included from include/linux/list.h:9:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:29:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:310:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
>> drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c:49:14: warning: performing pointer subtraction with a null pointer has undefined behavior [-Wnull-pointer-subtraction]
           int index = GetIndexIntoMasterDataTable(powerplayinfo);
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/ppatomfwctrl.h:34:74: note: expanded from macro 'GetIndexIntoMasterDataTable'
           (((char*)(&((struct atom_master_list_of_data_tables_v2_1*)0)->FieldName)-(char*)0)/sizeof(uint16_t))
                                                                                   ^~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c:1182:5: warning: no previous prototype for function 'vega10_pp_tables_initialize' [-Wmissing-prototypes]
   int vega10_pp_tables_initialize(struct pp_hwmgr *hwmgr)
       ^
   drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/vega10_processpptables.c:1182:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int vega10_pp_tables_initialize(struct pp_hwmgr *hwmgr)
   ^
   static 
   3 warnings generated.
..


vim +841 drivers/gpu/drm/amd/amdgpu/../pm/powerplay/hwmgr/processpptables.c

3bace359149391 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Jammy Zhou   2015-07-21  826  
3bace359149391 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Jammy Zhou   2015-07-21  827  static const ATOM_PPLIB_POWERPLAYTABLE *get_powerplay_table(
3bace359149391 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Jammy Zhou   2015-07-21  828  				     struct pp_hwmgr *hwmgr)
3bace359149391 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Jammy Zhou   2015-07-21  829  {
cf17039f489d3d drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Eric Huang   2016-05-31  830  	const void *table_addr = hwmgr->soft_pp_table;
3bace359149391 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Jammy Zhou   2015-07-21  831  	uint8_t frev, crev;
3bace359149391 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Jammy Zhou   2015-07-21  832  	uint16_t size;
3bace359149391 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Jammy Zhou   2015-07-21  833  
cf17039f489d3d drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Eric Huang   2016-05-31  834  	if (!table_addr) {
741deade2a704a drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Alex Deucher 2018-09-13  835  		if (hwmgr->chip_id == CHIP_RAVEN) {
3b4ca9e6494d19 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Rex Zhu      2017-08-24  836  			table_addr = &soft_dummy_pp_table[0];
3b4ca9e6494d19 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Rex Zhu      2017-08-24  837  			hwmgr->soft_pp_table = &soft_dummy_pp_table[0];
3b4ca9e6494d19 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Rex Zhu      2017-08-24  838  			hwmgr->soft_pp_table_size = sizeof(soft_dummy_pp_table);
3b4ca9e6494d19 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Rex Zhu      2017-08-24  839  		} else {
b3892e2bb519fe drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Rex Zhu      2018-03-26  840  			table_addr = smu_atom_get_data_table(hwmgr->adev,
3bace359149391 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Jammy Zhou   2015-07-21 @841  					GetIndexIntoMasterTable(DATA, PowerPlayInfo),
3bace359149391 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Jammy Zhou   2015-07-21  842  					&size, &frev, &crev);
3bace359149391 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Jammy Zhou   2015-07-21  843  			hwmgr->soft_pp_table = table_addr;
cf17039f489d3d drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Eric Huang   2016-05-31  844  			hwmgr->soft_pp_table_size = size;
cf17039f489d3d drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Eric Huang   2016-05-31  845  		}
3b4ca9e6494d19 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Rex Zhu      2017-08-24  846  	}
3bace359149391 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Jammy Zhou   2015-07-21  847  
3bace359149391 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Jammy Zhou   2015-07-21  848  	return (const ATOM_PPLIB_POWERPLAYTABLE *)table_addr;
3bace359149391 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Jammy Zhou   2015-07-21  849  }
3bace359149391 drivers/gpu/drm/amd/powerplay/hwmgr/processpptables.c Jammy Zhou   2015-07-21  850  

:::::: The code at line 841 was first introduced by commit
:::::: 3bace359149391c6547cefe3bf729f365bcf3ef6 drm/amd/powerplay: add hardware manager sub-component

:::::: TO: Jammy Zhou <Jammy.Zhou@amd.com>
:::::: CC: Alex Deucher <alexander.deucher@amd.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107211406.rfN2m4j6-lkp%40intel.com.

--n8g4imXOkfNTN/H1
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--n8g4imXOkfNTN/H1--
