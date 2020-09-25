Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3FYXH5QKGQEPAX6PGY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD502792FD
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 23:09:02 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id e12sf3423911pfm.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 14:09:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601068141; cv=pass;
        d=google.com; s=arc-20160816;
        b=tWmfbHS8S1HfcrXhkLVzPq+AESQLvxT/H04ZHKFNI83AjBwtCsCeq7k9eZi/vCxuH3
         8xqHHBuofEb65eSoaEX3jT10VBaaRwr+R/y9aBJXeSYRsts+jwM/eJSUPmKAxzgYiD/c
         ts/BC4Q0wJiyYzmBadkcelvFRy5O1/mcxPI11wCW9D9gaIDYpKkTTaN2ATH4l4BpaaEo
         PFoUkfvfdMy+zj/cfRj0S53wB1BQf2yV+FfqLA0P4s02iPJPmH3TqbNnc1Aa8H8JPjOO
         qbKKl9rwlMiUQBO3GeTA6EktV1XB0uS/Il7daw1ONOUtFzEqq4aVnP5J/k5JtIMcFGkc
         YXtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=x9RE0s3Jaf5SSrJpRsSxlXiNi69JIHOXEfKw4tRbk6E=;
        b=m6/w6i4C9clabaFFUakVeMfv3M8CCqv2ZZjYrMWqqtck1f4XNjQgti3JLdEhRFMS0r
         Kq/dQgvdOqzI8SQp2bEPxJVmB+GIqdh0mT5GYLUz5U2c/C6NyKGYnzwN8lWX6xdw3+W8
         7i6lbBA8jC3f+je1CFJBJvgF/ukWxWuzBxbfeLBz4FbkaULp1NdCf+MgPQz7n1Pd8oBL
         bxQMn51XO2EgZFE22TIqbyJnY52uBYqLVOGDQuKJHJbUl61496nXDP+h5ym6ACM3oFCI
         dPl/GPidARc7UYykRcRJkZe57Ut2DmUuo1CaQykFHX6vAJFiE1/C9V0AC7dJO27Py/F9
         MNQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x9RE0s3Jaf5SSrJpRsSxlXiNi69JIHOXEfKw4tRbk6E=;
        b=kCSRVaMG11TwfEW4Okq4JxJgugnzQ14CwNYflKmZq4L8xd3rT1MiQAIQ8J/vzjbgae
         Kyzh3T6PGAlqfp07VPeNWHhCqERvtIhLmRviay94KQ1vrOTIF6KNAO+pS1fqqowsxyac
         zB8t6SI8kdjBVHgHaLVZww8ZYteCAQ0+slfVLV8h+bm65yy+acrm1JkTt8sjxh0wVbtU
         gJUcnV+lCLW+jK9LnMknt70/IYijS/HFiXu9oW8WL/YFWfIZvkz4P73qe2PzFT3CvGLs
         1+wEDYmYC5jWqP3oIlwe5tJXm7nwmkVFxYL5bBuAiJXVZ6wcNvk341f3M5qEnGNl4ujK
         Qtag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=x9RE0s3Jaf5SSrJpRsSxlXiNi69JIHOXEfKw4tRbk6E=;
        b=rBI0KU3k1XhooFDiiue2pVnMjSQ6pd65nsanGqfD3z80ujxp6OYA1RroMiH43j2SEc
         SfafZxwdoHkA8NL9mRKWVKqNTannWe2bILuNm5/gTr/Pp/1zYavcIsIKic2rERrhloWU
         r7WdWNngkggASIw6XNaYpuQz6RQiFbbu/mtO0ZD8naHktoyGzfZtQQO1XVdpJFvFChNQ
         nv3awIAKOPfOvaBEvCe75vhNkoJoda8SYdLVOOYtkuHMlT/SuxlahErdc1yMoVwHp+b6
         tCx3eKitYHXS5Kub6VFsviuTreZ/Z+q03/Vafm/nhm5WKjkWK+L/OZE8KCFmad1IQgd3
         bWbw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531VqjSAKzu5GxYpkgqoz5XqscYRzAjoj7z7TbuNgGYzvHWaR+DW
	ICmR0f9/jXUdJO08UFo87tE=
X-Google-Smtp-Source: ABdhPJwjUBkj8IpWqxwZ1X41DFCPg0fPeDuICbAps4IRWuXq9zBrYrpte6Ims1u0dcM85Wjt2cwpdg==
X-Received: by 2002:a17:90a:1992:: with SMTP id 18mr382072pji.143.1601068140595;
        Fri, 25 Sep 2020 14:09:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2292:: with SMTP id f18ls1466683pfe.6.gmail; Fri,
 25 Sep 2020 14:09:00 -0700 (PDT)
X-Received: by 2002:a63:1657:: with SMTP id 23mr703236pgw.168.1601068139937;
        Fri, 25 Sep 2020 14:08:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601068139; cv=none;
        d=google.com; s=arc-20160816;
        b=FRO4hQSeZZIiTRwXmCR0YG8hX0EUmqVoUgVj8XzMw9tMDC7YUGghdCeZmWg7mKIuV4
         Nlv1Enop8acmPhSZTLTBCDQ2XSHRpS/i7JR4Tt+hsjJ2lD1/Oez+YT3b7aGIglhTJXXN
         UDRzBQe2Q23mOcwRH8EbG9ST8HlMNREunDb6cRyux9di7R8wIp8igqLby4cWPG72pTBG
         4Hf70Tf2/9xiJhvLEBYA2Kgpo3WgzCr2mlx61LnW5VpMhY80b6FiqFbLQs/4NKd+bKta
         qWczwZEgBMOLLjGbjO6DQ9AJIWcbtsKGNOCExdvURh6hxFyakwUh4BG2W1w+0pGXF0Ok
         3mUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=10GTu7ie/Mt8bnUX9kdgrkyC8fzunqm17TSS4pttBOM=;
        b=LZUF3wHgwLDaIvr0e3yPSBQEsWML0bUjiz1hRqLf0IEwwffss1AnKY07G30TFj6/ve
         BPeAFgd8cSPM1lFKz1EyjOlBKwQfcFJdNXnUcKo3UwyQ/ubaEY8lt+4OWTBgvRgTH7Td
         xKhTfdHvJciIoHfmlig8sQ79ihVIgS8wdokdu/Pbcn5YGIO/u5KpYq23ErlrtQGy53ju
         BgLXjGmyGCgxt7K+hofYCkUQ96Qxn+TY+F/hT3TlYGvZ4ubGVc4smK9Tcc8lo/+/RLyN
         6E/APfDB2FnNK60rg84oy9eFMo/FqAJPw+798X4XeJ2gdKKLLVABGAY8OkR334D1MUt4
         O9fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id d60si19529pjk.0.2020.09.25.14.08.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Sep 2020 14:08:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: UnqUjUrzpw6IzOh6hZk9wWFGnJhoEPujWARLAEoRMIpL9uCm08XSxnkZsfcZggFAn3eoRscdAw
 0Q/9vseuZMmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="160894706"
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; 
   d="gz'50?scan'50,208,50";a="160894706"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Sep 2020 14:08:59 -0700
IronPort-SDR: pWL7xyJ+n37krIxCaNrCLz0s4VZRFU0gQtyS+fZVVvlnCZYMchVixd1h0MRiXk6vOS29SnBmCu
 1riIvkdyl8Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,303,1596524400"; 
   d="gz'50?scan'50,208,50";a="513147771"
Received: from lkp-server01.sh.intel.com (HELO 2dda29302fe3) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 25 Sep 2020 14:08:56 -0700
Received: from kbuild by 2dda29302fe3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kLuxc-0000Fn-C0; Fri, 25 Sep 2020 21:08:56 +0000
Date: Sat, 26 Sep 2020 05:08:50 +0800
From: kernel test robot <lkp@intel.com>
To: Faycal Benmlih <faycal.benmlih@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [mchinth:sep_socwatch_linux_5_9 19/41]
 drivers/platform/x86/socperf/socperfdrv.c:1336:63: error: too few arguments
 to function call, expected 4, have 3
Message-ID: <202009260546.KUSueuDA%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://github.com/mchinth/linux sep_socwatch_linux_5_9
head:   7296486889985b9d9895a39f551764a4b0425bea
commit: e65547c5a9bb37e907edecece4da7cb12dadea96 [19/41] platform/x86: Use =
$(srctree) instead of $(src) to adapt to kbuild regression
config: x86_64-randconfig-r036-20200925 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c32e69=
b2ce7abfb151a87ba363ac9e25abf7d417)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/mchinth/linux/commit/e65547c5a9bb37e907edecece=
4da7cb12dadea96
        git remote add mchinth https://github.com/mchinth/linux
        git fetch --no-tags mchinth sep_socwatch_linux_5_9
        git checkout e65547c5a9bb37e907edecece4da7cb12dadea96
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dx86_64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/platform/x86/socperf/socperfdrv.c:203:13: warning: no previous p=
rototype for function 'SOCPERF_Read_Data3' [-Wmissing-prototypes]
   extern VOID SOCPERF_Read_Data3(PVOID data_buffer)
               ^
   drivers/platform/x86/socperf/socperfdrv.c:203:8: note: declare 'static' =
if the function is not intended to be used outside of this translation unit
   extern VOID SOCPERF_Read_Data3(PVOID data_buffer)
          ^
   drivers/platform/x86/socperf/socperfdrv.c:885:1: warning: no previous pr=
ototype for function 'SOCPERF_Switch_Group3' [-Wmissing-prototypes]
   SOCPERF_Switch_Group3(VOID)
   ^
   drivers/platform/x86/socperf/socperfdrv.c:884:8: note: declare 'static' =
if the function is not intended to be used outside of this translation unit
   extern OS_STATUS
          ^
   drivers/platform/x86/socperf/include/lwpmudrv_defines.h:372:19: note: ex=
panded from macro 'OS_STATUS'
   #define OS_STATUS int
                     ^
   drivers/platform/x86/socperf/socperfdrv.c:1070:6: warning: no previous p=
rototype for function 'lwpmudrv_Stop_Mem' [-Wmissing-prototypes]
   VOID lwpmudrv_Stop_Mem(VOID)
        ^
   drivers/platform/x86/socperf/socperfdrv.c:1070:1: note: declare 'static'=
 if the function is not intended to be used outside of this translation uni=
t
   VOID lwpmudrv_Stop_Mem(VOID)
   ^
   static=20
   drivers/platform/x86/socperf/socperfdrv.c:1155:15: warning: no previous =
prototype for function 'socperf_Service_IOCTL' [-Wmissing-prototypes]
   IOCTL_OP_TYPE socperf_Service_IOCTL(IOCTL_USE_INODE struct file *filp,
                 ^
   drivers/platform/x86/socperf/socperfdrv.c:1155:1: note: declare 'static'=
 if the function is not intended to be used outside of this translation uni=
t
   IOCTL_OP_TYPE socperf_Service_IOCTL(IOCTL_USE_INODE struct file *filp,
   ^
   static=20
   drivers/platform/x86/socperf/inc/control.h:84:23: note: expanded from ma=
cro 'IOCTL_OP_TYPE'
   #define IOCTL_OP_TYPE S32
                         ^
   drivers/platform/x86/socperf/socperfdrv.c:1299:33: error: expected expre=
ssion
           status =3D socperf_Service_IOCTL(IOCTL_USE_INODE filp, _IOC_NR(c=
md),
                                          ^
   drivers/platform/x86/socperf/inc/control.h:85:25: note: expanded from ma=
cro 'IOCTL_USE_INODE'
   #define IOCTL_USE_INODE struct inode *inode,
                           ^
   drivers/platform/x86/socperf/socperfdrv.c:1274:6: warning: no previous p=
rototype for function 'socperf_Device_Control' [-Wmissing-prototypes]
   long socperf_Device_Control(IOCTL_USE_INODE struct file *filp,
        ^
   drivers/platform/x86/socperf/socperfdrv.c:1274:1: note: declare 'static'=
 if the function is not intended to be used outside of this translation uni=
t
   long socperf_Device_Control(IOCTL_USE_INODE struct file *filp,
   ^
   static=20
>> drivers/platform/x86/socperf/socperfdrv.c:1336:63: error: too few argume=
nts to function call, expected 4, have 3
           status =3D socperf_Service_IOCTL(filp, _IOC_NR(cmd), local_args)=
;
                    ~~~~~~~~~~~~~~~~~~~~~                               ^
   drivers/platform/x86/socperf/socperfdrv.c:1155:15: note: 'socperf_Servic=
e_IOCTL' declared here
   IOCTL_OP_TYPE socperf_Service_IOCTL(IOCTL_USE_INODE struct file *filp,
                 ^
   drivers/platform/x86/socperf/socperfdrv.c:1307:6: warning: no previous p=
rototype for function 'socperf_Device_Control_Compat' [-Wmissing-prototypes=
]
   long socperf_Device_Control_Compat(struct file *filp, unsigned int cmd,
        ^
   drivers/platform/x86/socperf/socperfdrv.c:1307:1: note: declare 'static'=
 if the function is not intended to be used outside of this translation uni=
t
   long socperf_Device_Control_Compat(struct file *filp, unsigned int cmd,
   ^
   static=20
   drivers/platform/x86/socperf/socperfdrv.c:1358:5: warning: no previous p=
rototype for function 'SOCPERF_Abnormal_Terminate' [-Wmissing-prototypes]
   int SOCPERF_Abnormal_Terminate(void)
       ^
   drivers/platform/x86/socperf/socperfdrv.c:1358:1: note: declare 'static'=
 if the function is not intended to be used outside of this translation uni=
t
   int SOCPERF_Abnormal_Terminate(void)
   ^
   static=20
   drivers/platform/x86/socperf/socperfdrv.c:1389:2: error: field designato=
r 'ioctl' does not refer to any field in type 'struct file_operations'
           IOCTL_OP =3D socperf_Device_Control,
           ^
   drivers/platform/x86/socperf/inc/control.h:83:19: note: expanded from ma=
cro 'IOCTL_OP'
   #define IOCTL_OP .ioctl
                     ^
   7 warnings and 3 errors generated.
--
   drivers/platform/x86/sepdk/sep/lwpmudrv.c:6962:31: error: expected expre=
ssion
           status =3D lwpmu_Service_IOCTL(IOCTL_USE_INODE filp, _IOC_NR(cmd=
),
                                        ^
   drivers/platform/x86/sepdk/inc/control.h:64:25: note: expanded from macr=
o 'IOCTL_USE_INODE'
   #define IOCTL_USE_INODE struct inode *inode,
                           ^
>> drivers/platform/x86/sepdk/sep/lwpmudrv.c:7003:61: error: too few argume=
nts to function call, expected 4, have 3
           status =3D lwpmu_Service_IOCTL(filp, _IOC_NR(cmd), local_args);
                    ~~~~~~~~~~~~~~~~~~~                               ^
   drivers/platform/x86/sepdk/sep/lwpmudrv.c:6485:22: note: 'lwpmu_Service_=
IOCTL' declared here
   static IOCTL_OP_TYPE lwpmu_Service_IOCTL(IOCTL_USE_INODE struct file *fi=
lp,
                        ^
   drivers/platform/x86/sepdk/sep/lwpmudrv.c:7083:2: error: field designato=
r 'ioctl' does not refer to any field in type 'struct file_operations'
           IOCTL_OP =3D lwpmu_Device_Control,
           ^
   drivers/platform/x86/sepdk/inc/control.h:62:19: note: expanded from macr=
o 'IOCTL_OP'
   #define IOCTL_OP .ioctl
                     ^
   drivers/platform/x86/sepdk/sep/lwpmudrv.c:7099:2: error: field designato=
r 'ioctl' does not refer to any field in type 'struct file_operations'
           IOCTL_OP =3D NULL, //None needed
           ^
   drivers/platform/x86/sepdk/inc/control.h:62:19: note: expanded from macr=
o 'IOCTL_OP'
   #define IOCTL_OP .ioctl
                     ^
   drivers/platform/x86/sepdk/sep/lwpmudrv.c:7112:2: error: field designato=
r 'ioctl' does not refer to any field in type 'struct file_operations'
           IOCTL_OP =3D NULL, //None needed
           ^
   drivers/platform/x86/sepdk/inc/control.h:62:19: note: expanded from macr=
o 'IOCTL_OP'
   #define IOCTL_OP .ioctl
                     ^
   drivers/platform/x86/sepdk/sep/lwpmudrv.c:7125:2: error: field designato=
r 'ioctl' does not refer to any field in type 'struct file_operations'
           IOCTL_OP =3D NULL, //None needed
           ^
   drivers/platform/x86/sepdk/inc/control.h:62:19: note: expanded from macr=
o 'IOCTL_OP'
   #define IOCTL_OP .ioctl
                     ^
   drivers/platform/x86/sepdk/sep/lwpmudrv.c:7138:2: error: field designato=
r 'ioctl' does not refer to any field in type 'struct file_operations'
           IOCTL_OP =3D NULL, //None needed
           ^
   drivers/platform/x86/sepdk/inc/control.h:62:19: note: expanded from macr=
o 'IOCTL_OP'
   #define IOCTL_OP .ioctl
                     ^
   7 errors generated.
--
   drivers/platform/x86/sepdk/pax/pax.c:724:29: error: expected expression
           status =3D pax_Service_IOCTL(IOCTL_USE_INODE filp, cmd, local_ar=
gs);
                                      ^
   drivers/platform/x86/sepdk/inc/control.h:64:25: note: expanded from macr=
o 'IOCTL_USE_INODE'
   #define IOCTL_USE_INODE struct inode *inode,
                           ^
>> drivers/platform/x86/sepdk/pax/pax.c:753:13: error: use of undeclared id=
entifier 'PAX_IOCTL_COMPAT_INFO'
           if (cmd =3D=3D PAX_IOCTL_COMPAT_INFO) {
                      ^
>> drivers/platform/x86/sepdk/pax/pax.c:758:50: error: too few arguments to=
 function call, expected 4, have 3
           status =3D pax_Service_IOCTL(filp, cmd, local_args);
                    ~~~~~~~~~~~~~~~~~                      ^
   drivers/platform/x86/sepdk/pax/pax.c:672:22: note: 'pax_Service_IOCTL' d=
eclared here
   static IOCTL_OP_TYPE pax_Service_IOCTL(IOCTL_USE_INODE struct file *filp=
,
                        ^
   drivers/platform/x86/sepdk/pax/pax.c:776:2: error: field designator 'ioc=
tl' does not refer to any field in type 'struct file_operations'
           IOCTL_OP =3D pax_Device_Control,
           ^
   drivers/platform/x86/sepdk/inc/control.h:62:19: note: expanded from macr=
o 'IOCTL_OP'
   #define IOCTL_OP .ioctl
                     ^
>> drivers/platform/x86/sepdk/pax/pax.c:778:18: error: incompatible functio=
n pointer types initializing 'long (*)(struct file *, unsigned int, unsigne=
d long)' with an expression of type 'S32 (struct file *, unsigned int, unsi=
gned long)' (aka 'int (struct file *, unsigned int, unsigned long)') [-Werr=
or,-Wincompatible-function-pointer-types]
           .compat_ioctl =3D pax_Device_Control_Compat,
                           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/platform/x86/sepdk/pax/pax.c:891:39: error: incompatible pointer=
 types passing 'struct file_operations *' to parameter of type 'const struc=
t proc_ops *' [-Werror,-Wincompatible-pointer-types]
                   proc_create("pax_version", 0, NULL, &pax_version_ops);
                                                       ^~~~~~~~~~~~~~~~
   include/linux/proc_fs.h:107:122: note: passing argument to parameter 'pr=
oc_ops' here
   struct proc_dir_entry *proc_create(const char *name, umode_t mode, struc=
t proc_dir_entry *parent, const struct proc_ops *proc_ops);
                                                                           =
                                                 ^
   6 errors generated.

vim +1336 drivers/platform/x86/socperf/socperfdrv.c

f57492d07625ddd Manisha Chinthapally 2019-05-01  1305 =20
f57492d07625ddd Manisha Chinthapally 2019-05-01  1306  #if defined(CONFIG_C=
OMPAT) && defined(DRV_EM64T)
f57492d07625ddd Manisha Chinthapally 2019-05-01  1307  long socperf_Device_=
Control_Compat(struct file *filp, unsigned int cmd,
f57492d07625ddd Manisha Chinthapally 2019-05-01  1308  					  unsigned long=
 arg)
f57492d07625ddd Manisha Chinthapally 2019-05-01  1309  {
f57492d07625ddd Manisha Chinthapally 2019-05-01  1310  	int status =3D OS_S=
UCCESS;
f57492d07625ddd Manisha Chinthapally 2019-05-01  1311  	IOCTL_COMPAT_ARGS_N=
ODE local_args_compat;
f57492d07625ddd Manisha Chinthapally 2019-05-01  1312  	IOCTL_ARGS_NODE loc=
al_args;
f57492d07625ddd Manisha Chinthapally 2019-05-01  1313 =20
f57492d07625ddd Manisha Chinthapally 2019-05-01  1314  	memset(&local_args_=
compat, 0, sizeof(IOCTL_COMPAT_ARGS_NODE));
f57492d07625ddd Manisha Chinthapally 2019-05-01  1315  	SOCPERF_PRINT_DEBUG=
("Compat: type: %d, subcommand: %d\n",
f57492d07625ddd Manisha Chinthapally 2019-05-01  1316  			    _IOC_TYPE(cmd=
), _IOC_NR(cmd));
f57492d07625ddd Manisha Chinthapally 2019-05-01  1317 =20
f57492d07625ddd Manisha Chinthapally 2019-05-01  1318  	if (_IOC_TYPE(cmd) =
!=3D LWPMU_IOC_MAGIC) {
f57492d07625ddd Manisha Chinthapally 2019-05-01  1319  		SOCPERF_PRINT_ERRO=
R("Unknown IOCTL magic:%d\n", _IOC_TYPE(cmd));
f57492d07625ddd Manisha Chinthapally 2019-05-01  1320  		return OS_ILLEGAL_=
IOCTL;
f57492d07625ddd Manisha Chinthapally 2019-05-01  1321  	}
f57492d07625ddd Manisha Chinthapally 2019-05-01  1322 =20
f57492d07625ddd Manisha Chinthapally 2019-05-01  1323  	MUTEX_LOCK(ioctl_lo=
ck);
f57492d07625ddd Manisha Chinthapally 2019-05-01  1324  	if (arg) {
f57492d07625ddd Manisha Chinthapally 2019-05-01  1325  		status =3D copy_fr=
om_user(&local_args_compat,
f57492d07625ddd Manisha Chinthapally 2019-05-01  1326  					(void __user *)=
arg,
f57492d07625ddd Manisha Chinthapally 2019-05-01  1327  					sizeof(IOCTL_CO=
MPAT_ARGS_NODE));
f57492d07625ddd Manisha Chinthapally 2019-05-01  1328  	}
f57492d07625ddd Manisha Chinthapally 2019-05-01  1329  	local_args.len_drv_=
to_usr =3D local_args_compat.len_drv_to_usr;
f57492d07625ddd Manisha Chinthapally 2019-05-01  1330  	local_args.len_usr_=
to_drv =3D local_args_compat.len_usr_to_drv;
f57492d07625ddd Manisha Chinthapally 2019-05-01  1331  	local_args.buf_drv_=
to_usr =3D
f57492d07625ddd Manisha Chinthapally 2019-05-01  1332  		(char *)compat_ptr=
(local_args_compat.buf_drv_to_usr);
f57492d07625ddd Manisha Chinthapally 2019-05-01  1333  	local_args.buf_usr_=
to_drv =3D
f57492d07625ddd Manisha Chinthapally 2019-05-01  1334  		(char *)compat_ptr=
(local_args_compat.buf_usr_to_drv);
f57492d07625ddd Manisha Chinthapally 2019-05-01  1335 =20
f57492d07625ddd Manisha Chinthapally 2019-05-01 @1336  	status =3D socperf_=
Service_IOCTL(filp, _IOC_NR(cmd), local_args);
f57492d07625ddd Manisha Chinthapally 2019-05-01  1337  	MUTEX_UNLOCK(ioctl_=
lock);
f57492d07625ddd Manisha Chinthapally 2019-05-01  1338 =20
f57492d07625ddd Manisha Chinthapally 2019-05-01  1339  	return status;
f57492d07625ddd Manisha Chinthapally 2019-05-01  1340  }
f57492d07625ddd Manisha Chinthapally 2019-05-01  1341  #endif
f57492d07625ddd Manisha Chinthapally 2019-05-01  1342 =20

:::::: The code at line 1336 was first introduced by commit
:::::: f57492d07625dddac7920eccdb5be08c55ee16fa platform/x86: SOCPERF3 supp=
ort for sep & socwatch

:::::: TO: Manisha Chinthapally <manisha.chinthapally@intel.com>
:::::: CC: Faycal Benmlih <faycal.benmlih@intel.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202009260546.KUSueuDA%25lkp%40intel.com.

--LZvS9be/3tNcYl/X
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
RauZqft4PXw/786fnfPp43o4EoJrHE3rg4yA8+PFvuTIJ+xNKEhckh7C2QkxbRr7wqy1IvkT
WYFE3WzjVun27tnWYG0VjfDGruF0FMsHeCNx5kX0LfxXr3eL5tbHIKnW9aXtHZYkckhniwfi
08HMP2MBvGPfOuY2FSsTGfKOOPAUFrQIbix0qzuwZQqg8P3M0TmOqYIb+wJo7hl1ntaYKljc
TYZ/k2GQDUq/v91ub9TkjzwqUpyjvY190dEaEvhbTW1mtxuzk+AgJKST3LoiKOK5SeJ0HvnV
fEvZerDiMUlCeBQQzwiQOLVdVwiZradxTVOsp06yMktomu2wO/m/yo5sOW7c+J6vcO1TUpW4
ZK/K602VHjgkZ4YRL4GkZkYvLMU7q6i8kl06Uvr89AGSDaAx6zz4GHQDBEGgL/QxpjleCRQp
OpKzF7m4D7lMu8/oD3mNUBxjxlhce+zoUQ90HOQX4EJdh1cT8wBMTjF/ye9khHqmeoLP93eP
HGP45T/HL1/vH+8W0souNvIexhTSWBvCu4uffvKg+b7H6I3lpYP+AcZItOX87NdPM2YO/8kS
c1Ams9yo8HBAijFFfTdfKenOdD+wENPTV0WNjyY31fW0kmWUI6FLb2JGg7U4pVNaMjkaz8OC
IoiVn8SSTJF3oCPWaXsY14bC2eQekShlXkegNdan7gvphzGB1kWdwV8GVgimIAhoYzJJreF9
q3ysh2rlFFfk6zVZ6HkOF0wLP/ZhAnnNxBbRmSmt2n26ZQ8jk689DLw8WieYeQJLnLRlId90
HgMOHshkddP7936pSYGwgljkNH345GKE1hqYbj+Mbq+fP3o/55A0pye2A4nIV4fPLsUSkJja
RiiJ2cUquDDGqohExpg0opO4wk8q4vCBjYY2uFQYhGfT2fzt66yp5MvPIBDPyXnajenHVoys
8ttvkIODnOdK/zcsenitoAwoI2OrNjLJ/Cr+uYq/v8Fm+bG4xTfiu0CK9my1bkUS0cstPImU
31nA/RaO3CmcDmi6xucteJX+S5mXHz1pocuSjJubQhxRAdjfhAea7lATxyOWnPyvk5Ld8Rem
lxiTHPgIS3bZNWkBJxZEY0JYQHjqgV7IMExuQpfG0aEj2I55rZdZVwkGeywNNRUNYgBQy40M
qSQYAmBMuo/3PVwRlmSZGXvQZx1a2e2Kpi9X7oNTmglbvI+/377+8YK5CV7u716/vT6/e+Db
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
AA==

--LZvS9be/3tNcYl/X--
