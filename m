Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBE5KYD7AKGQEG6QKENQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 697842D3761
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 01:06:44 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id d4sf490607ybs.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 16:06:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607472403; cv=pass;
        d=google.com; s=arc-20160816;
        b=yXLsTclc4tI/3iVRJdkrT9xZks1mcLrGYpwIBYSM+1+9Pjg42et/D+ZsyP7rBQiemU
         jPjY2UeyIXBo3zcIkqLH4grYBKHGC+z+zrND4TsRnQ05ePXQU2ji91gIDSbX3SqqzbnL
         Qa2MOGptLVgc7mujt/iv3DDE3tkC2THpKHkY00aUbkzmCifR0nxSKps2taIlj3q5XdAr
         nXeOwYHQyY7tKCb2f+l75ZJ0GhEVs0DkNoUMh49wgUkfCkMtJjqAMIojCruSM62s7NSy
         N8OEirI+D6fHF0wRpoiZfzfhIFgR3pUV0idaPKypMLEJs/1vvvNHGQrbbS9GgYxcnblU
         +PfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=vLUUTjxKb+EocFPCN0u5JN44NjG8dYu7cvMsJL46Kj8=;
        b=Q9kwtdWXniSbVW7rjMrg+CsGFgH3vH/BichOICGAmDt1pdNiDr8WE7Qz12u+mQVwxE
         Ut68/78BSdDMClos7F0gkplfP696fIe5OpxNZFdg/xz8+QBhSDtNzsTxpry2XITsQiB7
         eDJffL7EtElntbsWFv0WzSXwZQ6XQAmELJtAnVKdEo/1fWECZBgXqL/OYsdsjtx7UViv
         YIZVoJxDDnKL4CFrZVivnsRtM098a6ewBRP+Uo9iTtELQLmXzgT8jTSz9PPV4qol6X6i
         yZk56cVCwlxVLl/PcLb+So+kDDeb2iP5SoRGGiwl1TdFZ9+7MKI5riYfUzyg11TFsqcR
         BFsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vLUUTjxKb+EocFPCN0u5JN44NjG8dYu7cvMsJL46Kj8=;
        b=V9aTfuiYA/Jw1YQnW8KrIwlJMXIjIryiioR1zTJE9yh9MgVvLQXUkMYLpg8taBmJKP
         bGnHuPe7t6M90GNVZ6+vGCwLdSwdQ23xqGKGFF9vWzNVKUsIzZ0LmRjZIMXtyInPVidM
         CvuW65kwqa7g1Sllc9lxalGx31BkwZ6qyz04O/7d4CfvMqRKAgnsdenqKpP49d5tCosd
         lcZgD5GQVdi4Ji6ZJFI5iIBOhc99/KBIZXdJTLEPlBzUJAg8zPtBwOIJYZpBk2l+pdjv
         uq66WvwFTxfFhY0DkdjKQRFmIJBWK6+TwYgCs181NYoW3ZCogoFf+n7Cvfg9aa8NeDd9
         jI5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vLUUTjxKb+EocFPCN0u5JN44NjG8dYu7cvMsJL46Kj8=;
        b=SdkmpvNZ+uKppYh/tPASGUt1Dn/Wlm0vrOQfiXPyLjNNZyn5e3uBWIzwb6+z3a30cP
         lB0namwH8H9GGVgTmPXxtspMPIvyOSXBPGJPJhhioMNHA1OU2bYgC2z2UeHaUGG9eLYs
         URZ78ms1BhZ+90Cnaq/OY+kNEs+NFAh0nvpKrDlL0nlYehKWL6gPHNggui3oN29GVpRu
         DLiXCtegAoLx4eKnRHQRLAYDvrGHvCRxh6AfJhmBirxHr7lCEmTyJnm48wiDOeRyGXNT
         MmFQ+pxHPfeXffQlRzPi6hwE0kU+DCUV5tP4DJkgPZ2xdFDrNX90FqcnFb/YPQtqbcO1
         dV5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327qUDxys5O6Jy5fGRUFsNnXPKrltQMXGtsoxYiaSkuZbsIgDBE
	e8TOZgD5XkIO+vjmFbwCn8w=
X-Google-Smtp-Source: ABdhPJyWIaY76AQDQktF+decXUQ410M6Uc+XC9qFiAy6YG98yfmawebV4jKTV0KMu8KDxYncI8fArg==
X-Received: by 2002:a25:820e:: with SMTP id q14mr85713ybk.204.1607472403320;
        Tue, 08 Dec 2020 16:06:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:6af:: with SMTP id j15ls274269ybt.3.gmail; Tue, 08
 Dec 2020 16:06:42 -0800 (PST)
X-Received: by 2002:a25:e7d5:: with SMTP id e204mr3603ybh.375.1607472402822;
        Tue, 08 Dec 2020 16:06:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607472402; cv=none;
        d=google.com; s=arc-20160816;
        b=qC2epCk+3bcOXEgum8JB9Xv+MDb/FrRJhNy6AIqlp4/fXuYVUgEJePBn61OS328nBB
         S5jSZwxYdgw7deh95czW5x1K/9UZ59hsbhvkxNqyxv8sw7wr9ElmooLwaPbSptlhpGtW
         oLR+DMpr0iLboWXKiMSTfoLtEuKDdBKsf72sueCyGvxh+7aMN2SqzX07fU7pAzDZ1Woo
         7OD+HY1E0ZrmkJpqXsBcU7DkIbx2te44nZkxhRlLM3phAfjSKA0UmyoiyAJmIE6RW05H
         CyRHUIRLvv+rJW2G2DuwnvndJct3OpxyBQqXtqZlA3Pt18OIM79XAKnloNggsws1dUWE
         Bwig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=HqLKP4mR9khOXJwyoobqWaxa93nLTybOX0yAbiaciyU=;
        b=gDklblOs/rxZBvvFILkBBy4FrMIpSGz5QrJPgik4d9Cz8AaqOsBE0ajQ7atR33otiv
         7HIKebOPzSQp6v0Ssz9qcAvc60QR3FwKwBJKBI5DM4xsA/tt0b3T7eWoMOexA1jIMfI3
         f3GDX5zAZMOqJiOyYSBVr8RUBUObnzav0xaq/iUzwlSEbsDWB7TnvnAUX2nc41dGgeCn
         JKt48fcxp/9Ip7s9u0JLcxxW7LsDN2BPne5SQx1SF/gGFF4UhGmZp5VZxbDjQGpCpvll
         BY01N8O+CawAfKf9UyIVXjX4LsVKZZPmWiT4svFfcrqPSmS+9iWIAln+jigIpIS2UnzP
         nYmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id r12si40041ybc.3.2020.12.08.16.06.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Dec 2020 16:06:42 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: OQCIJVrhZByjLfZNnkWtPzren8Gq0fcoTBEPgBY1hI9LZCx6IEafrSmEAwFQSAOFe7ISSJr1go
 3rzceXYqH3UA==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="238096829"
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; 
   d="gz'50?scan'50,208,50";a="238096829"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Dec 2020 16:06:39 -0800
IronPort-SDR: TdB5hI6td2G+2aTd1OFBiqAnCibTCsDA8UmKTtRPxWGD+G/IpTjMj6OgPc9/jVR0w8QFKyD4L8
 h3Ksn7i7SgOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,404,1599548400"; 
   d="gz'50?scan'50,208,50";a="348104782"
Received: from lkp-server01.sh.intel.com (HELO 4e633a5ce5ea) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 08 Dec 2020 16:06:37 -0800
Received: from kbuild by 4e633a5ce5ea with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kmn08-00001W-Fr; Wed, 09 Dec 2020 00:06:36 +0000
Date: Wed, 9 Dec 2020 08:06:11 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Dutta, Ranjan" <ranjan.dutta@intel.com>
Subject: [intel-linux-intel-lts:5.4/yocto 1/1]
 drivers/platform/x86/socperf/socperfdrv.c:203:13: warning: no previous
 prototype for function 'SOCPERF_Read_Data3'
Message-ID: <202012090807.SAyEXN0k-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pWyiEgJYm5f9v55/"
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


--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/intel/linux-intel-lts.git 5.4/yocto
head:   6cdd6994370fad0c3584eb40036c5269234b6528
commit: 6cdd6994370fad0c3584eb40036c5269234b6528 [1/1] Merge tag 'v5.4.31' into lts2019/yocto
config: x86_64-randconfig-r013-20201208 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a2f922140f5380571fb74179f2bf622b3b925697)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/intel/linux-intel-lts/commit/6cdd6994370fad0c3584eb40036c5269234b6528
        git remote add intel-linux-intel-lts https://github.com/intel/linux-intel-lts.git
        git fetch --no-tags intel-linux-intel-lts 5.4/yocto
        git checkout 6cdd6994370fad0c3584eb40036c5269234b6528
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/platform/x86/socperf/socperfdrv.c:203:13: warning: no previous prototype for function 'SOCPERF_Read_Data3' [-Wmissing-prototypes]
   extern VOID SOCPERF_Read_Data3(PVOID data_buffer)
               ^
   drivers/platform/x86/socperf/socperfdrv.c:203:8: note: declare 'static' if the function is not intended to be used outside of this translation unit
   extern VOID SOCPERF_Read_Data3(PVOID data_buffer)
          ^
>> drivers/platform/x86/socperf/socperfdrv.c:885:1: warning: no previous prototype for function 'SOCPERF_Switch_Group3' [-Wmissing-prototypes]
   SOCPERF_Switch_Group3(VOID)
   ^
   drivers/platform/x86/socperf/socperfdrv.c:884:8: note: declare 'static' if the function is not intended to be used outside of this translation unit
   extern OS_STATUS
          ^
   drivers/platform/x86/socperf/include/lwpmudrv_defines.h:372:19: note: expanded from macro 'OS_STATUS'
   #define OS_STATUS int
                     ^
>> drivers/platform/x86/socperf/socperfdrv.c:1070:6: warning: no previous prototype for function 'lwpmudrv_Stop_Mem' [-Wmissing-prototypes]
   VOID lwpmudrv_Stop_Mem(VOID)
        ^
   drivers/platform/x86/socperf/socperfdrv.c:1070:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   VOID lwpmudrv_Stop_Mem(VOID)
   ^
   static 
>> drivers/platform/x86/socperf/socperfdrv.c:1155:15: warning: no previous prototype for function 'socperf_Service_IOCTL' [-Wmissing-prototypes]
   IOCTL_OP_TYPE socperf_Service_IOCTL(IOCTL_USE_INODE struct file *filp,
                 ^
   drivers/platform/x86/socperf/socperfdrv.c:1155:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   IOCTL_OP_TYPE socperf_Service_IOCTL(IOCTL_USE_INODE struct file *filp,
   ^
   static 
   drivers/platform/x86/socperf/inc/control.h:80:23: note: expanded from macro 'IOCTL_OP_TYPE'
   #define IOCTL_OP_TYPE long
                         ^
>> drivers/platform/x86/socperf/socperfdrv.c:1274:6: warning: no previous prototype for function 'socperf_Device_Control' [-Wmissing-prototypes]
   long socperf_Device_Control(IOCTL_USE_INODE struct file *filp,
        ^
   drivers/platform/x86/socperf/socperfdrv.c:1274:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   long socperf_Device_Control(IOCTL_USE_INODE struct file *filp,
   ^
   static 
>> drivers/platform/x86/socperf/socperfdrv.c:1294:6: warning: variable 'local_args' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           if (arg) {
               ^~~
   drivers/platform/x86/socperf/socperfdrv.c:1300:12: note: uninitialized use occurs here
                                          local_args);
                                          ^~~~~~~~~~
   drivers/platform/x86/socperf/socperfdrv.c:1294:2: note: remove the 'if' if its condition is always true
           if (arg) {
           ^~~~~~~~~
   drivers/platform/x86/socperf/socperfdrv.c:1278:2: note: variable 'local_args' is declared here
           IOCTL_ARGS_NODE local_args;
           ^
>> drivers/platform/x86/socperf/socperfdrv.c:1358:5: warning: no previous prototype for function 'SOCPERF_Abnormal_Terminate' [-Wmissing-prototypes]
   int SOCPERF_Abnormal_Terminate(void)
       ^
   drivers/platform/x86/socperf/socperfdrv.c:1358:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int SOCPERF_Abnormal_Terminate(void)
   ^
   static 
   7 warnings generated.
--
>> drivers/platform/x86/socperf/haswellunc_sa.c:399:16: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           .read_power = NULL,
                         ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   drivers/platform/x86/socperf/haswellunc_sa.c:395:16: note: previous initialization is here
           .read_power = NULL,
                         ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   1 warning generated.
--
>> drivers/platform/x86/socperf/npk_uncore.c:494:16: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           .read_power = NULL,
                         ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   drivers/platform/x86/socperf/npk_uncore.c:490:16: note: previous initialization is here
           .read_power = NULL,
                         ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   1 warning generated.
--
>> drivers/platform/x86/socperf/soc_uncore.c:893:16: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           .read_power = NULL,
                         ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   drivers/platform/x86/socperf/soc_uncore.c:889:16: note: previous initialization is here
           .read_power = NULL,
                         ^~~~
   include/linux/stddef.h:8:14: note: expanded from macro 'NULL'
   #define NULL ((void *)0)
                ^~~~~~~~~~~
   1 warning generated.
--
>> drivers/platform/x86/socwatch/sw_output_buffer.c:398:6: warning: no previous prototype for function 'reset_output_buffers' [-Wmissing-prototypes]
   void reset_output_buffers(void)
        ^
   drivers/platform/x86/socwatch/sw_output_buffer.c:398:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void reset_output_buffers(void)
   ^
   static 
   1 warning generated.
--
>> drivers/platform/x86/socwatch/sw_collector.c:86:1: warning: no previous prototype for function 'sw_copy_driver_interface_info_i' [-Wmissing-prototypes]
   sw_copy_driver_interface_info_i(const struct sw_driver_interface_info *info)
   ^
   drivers/platform/x86/socwatch/sw_collector.c:85:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct sw_driver_interface_info *
   ^
   static 
>> drivers/platform/x86/socwatch/sw_collector.c:116:5: warning: no previous prototype for function 'sw_init_driver_interface_info_i' [-Wmissing-prototypes]
   int sw_init_driver_interface_info_i(struct sw_driver_interface_info *info)
       ^
   drivers/platform/x86/socwatch/sw_collector.c:116:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int sw_init_driver_interface_info_i(struct sw_driver_interface_info *info)
   ^
   static 
>> drivers/platform/x86/socwatch/sw_collector.c:138:5: warning: no previous prototype for function 'sw_init_ops_i' [-Wmissing-prototypes]
   int sw_init_ops_i(const struct sw_hw_ops **ops,
       ^
   drivers/platform/x86/socwatch/sw_collector.c:138:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int sw_init_ops_i(const struct sw_hw_ops **ops,
   ^
   static 
>> drivers/platform/x86/socwatch/sw_collector.c:157:8: warning: no previous prototype for function 'sw_get_payload_size_i' [-Wmissing-prototypes]
   size_t sw_get_payload_size_i(const struct sw_driver_interface_info *info)
          ^
   drivers/platform/x86/socwatch/sw_collector.c:157:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   size_t sw_get_payload_size_i(const struct sw_driver_interface_info *info)
   ^
   static 
>> drivers/platform/x86/socwatch/sw_collector.c:175:1: warning: no previous prototype for function 'sw_alloc_collector_msg_i' [-Wmissing-prototypes]
   sw_alloc_collector_msg_i(const struct sw_driver_interface_info *info,
   ^
   drivers/platform/x86/socwatch/sw_collector.c:174:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   sw_driver_msg_t *
   ^
   static 
>> drivers/platform/x86/socwatch/sw_collector.c:211:26: warning: no previous prototype for function 'sw_alloc_ops_i' [-Wmissing-prototypes]
   const struct sw_hw_ops **sw_alloc_ops_i(pw_u16_t num_io_descriptors)
                            ^
   drivers/platform/x86/socwatch/sw_collector.c:211:7: note: declare 'static' if the function is not intended to be used outside of this translation unit
   const struct sw_hw_ops **sw_alloc_ops_i(pw_u16_t num_io_descriptors)
         ^
         static 
>> drivers/platform/x86/socwatch/sw_collector.c:323:6: warning: no previous prototype for function 'sw_free_driver_interface_info_i' [-Wmissing-prototypes]
   void sw_free_driver_interface_info_i(struct sw_driver_interface_info *info)
        ^
   drivers/platform/x86/socwatch/sw_collector.c:323:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sw_free_driver_interface_info_i(struct sw_driver_interface_info *info)
   ^
   static 
>> drivers/platform/x86/socwatch/sw_collector.c:329:6: warning: no previous prototype for function 'sw_free_ops_i' [-Wmissing-prototypes]
   void sw_free_ops_i(const struct sw_hw_ops **ops)
        ^
   drivers/platform/x86/socwatch/sw_collector.c:329:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sw_free_ops_i(const struct sw_hw_ops **ops)
   ^
   static 
>> drivers/platform/x86/socwatch/sw_collector.c:335:5: warning: no previous prototype for function 'sw_reset_driver_interface_info_i' [-Wmissing-prototypes]
   int sw_reset_driver_interface_info_i(struct sw_driver_interface_info *info)
       ^
   drivers/platform/x86/socwatch/sw_collector.c:335:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int sw_reset_driver_interface_info_i(struct sw_driver_interface_info *info)
   ^
   static 
>> drivers/platform/x86/socwatch/sw_collector.c:453:6: warning: no previous prototype for function 'sw_free_collector_msg_i' [-Wmissing-prototypes]
   void sw_free_collector_msg_i(sw_driver_msg_t *msg)
        ^
   drivers/platform/x86/socwatch/sw_collector.c:453:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sw_free_collector_msg_i(sw_driver_msg_t *msg)
   ^
   static 
>> drivers/platform/x86/socwatch/sw_collector.c:459:6: warning: no previous prototype for function 'sw_handle_per_cpu_msg_i' [-Wmissing-prototypes]
   void sw_handle_per_cpu_msg_i(void *info, enum sw_wakeup_action action)
        ^
   drivers/platform/x86/socwatch/sw_collector.c:459:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void sw_handle_per_cpu_msg_i(void *info, enum sw_wakeup_action action)
   ^
   static 
   11 warnings generated.
--
>> drivers/platform/x86/socwatch/sw_telem.c:671:5: warning: no previous prototype for function 'read_telem' [-Wmissing-prototypes]
   int read_telem(u64 *dst, enum telemetry_unit unit, bool should_retry)
       ^
   drivers/platform/x86/socwatch/sw_telem.c:671:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int read_telem(u64 *dst, enum telemetry_unit unit, bool should_retry)
   ^
   static 
   1 warning generated.

vim +/SOCPERF_Read_Data3 +203 drivers/platform/x86/socperf/socperfdrv.c

ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  189  
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  190  /* ------------------------------------------------------------------------- */
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  191  /*!
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  192   * @fn       VOID SOCPERF_Read_Data
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  193   *
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  194   * @brief    Reads counter data
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  195   *
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  196   * @param    param   data_buffer - buffer for reading counter data.
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  197   *
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  198   * @return  None
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  199   *
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  200   * <I>Special Notes:</I>
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  201   *              <NONE>
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  202   */
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01 @203  extern VOID SOCPERF_Read_Data3(PVOID data_buffer)
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  204  {
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  205  	if (dispatch_uncore && dispatch_uncore->read_current_data) {
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  206  		dispatch_uncore->read_current_data(data_buffer);
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  207  	}
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  208  	SOCPERF_PRINT_DEBUG("%s called\n", __func__);
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  209  }
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  210  EXPORT_SYMBOL(SOCPERF_Read_Data3);
ce90b353c3baeb4 Manisha Chinthapally 2019-05-01  211  

:::::: The code at line 203 was first introduced by commit
:::::: ce90b353c3baeb4be07d35612c8f68134c71bd79 platform/x86: SOCPERF3 support for sep & socwatch

:::::: TO: Manisha Chinthapally <manisha.chinthapally@intel.com>
:::::: CC: Qin, Chao <chao.qin@intel.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012090807.SAyEXN0k-lkp%40intel.com.

--pWyiEgJYm5f9v55/
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
EyKQ39B5zvt/OUAChn/nAQA=

--pWyiEgJYm5f9v55/--
