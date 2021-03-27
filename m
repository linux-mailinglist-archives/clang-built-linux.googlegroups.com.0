Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCMY7SBAMGQEBDRX2FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 801C634B649
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 11:42:18 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id v25sf4205213oiv.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Mar 2021 03:42:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616841737; cv=pass;
        d=google.com; s=arc-20160816;
        b=RlT15D4IOFO+/oK3DvdUgvFPTOB4HWAjcnRmNHjjRMFAxuWHGBiBm0FbBSOLrt/B57
         XCQr1pJM5/7h1lv9rZ6kbBxGTlxiCDoou63B+/Uexj7IU+llv0qPjijjbmvCFzSFm99r
         tgdAmiCQYayuN7pQQ17dCZJI+WyQnX/PIATEyV8khajdiDfsf22pgPa5nwj+zl01WzvX
         I6NuwL2ijdJs1CmBh53hM5TuSpftXJsaVW7ANqe63hnvjjxWU8oGOH2XgV15Wq6lVs9+
         JFFaGZgwWHeZtfe8GBx1RHH3jL5eBSfEpZ0Hbl+7/S/8v5Si3dV28FBD6QgWSKfuC0+E
         6mbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=dKkOdeWkGP0MDWZklkBvfhjtIWXhOqiAf1EfIpeK674=;
        b=HbUqU19j51TQ60hujiJziYzkiBfvrJA2SqjizJhxMsalTkkvemZjTBfxe4wzaeZQ7o
         Y3MPovraoIMNDwc6RIMZ5ZzMLACov9I9wyOwzhl/Bmb2CjnF0KNsoXELPvEsGRbhLTUb
         3SO2obAE6/F5yKmdBItx9MvbUiDat2r76WmNYtI3G+Kj0C2V6N4IQTqlPInNEAYv+kvc
         czp0HNS3rYuGJKnMkc7qKfrZPljXWKQRvaXTlLWnI+V6z57280wMoTriWMDm/w/1MCxG
         M6Z3KiG/ygiOOix+Xg/wr1sgbcFIn0T4gmZvZt/PcBnZdMVYyXB8JfvPQdiGKNoosO6j
         T++w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dKkOdeWkGP0MDWZklkBvfhjtIWXhOqiAf1EfIpeK674=;
        b=Rq6R+olqvyASNy34G2+kLZ68v10HGPXe1cMgm7VGeMECnX49cpDdX99dDdLi0G0mmX
         r8NVF3ZbOu8EQJ3b53iUPZt8DExazXf54aqdWQ6LvOO1i9I2xolXlOCORFyYXcRrbNSY
         fPgDK8zq+Km0N7Te1P+X99Z0NcMoDZ/KWoQwl1lN71/3OD8PhBDMvxiHiNc8oQcTuR/i
         AoggoOpANb9uVyU9j5zfNemj7olvwCNm8ZMlxfz5p8Ku+b9qHqWC7ZYcssVkLoMeOM0k
         3vl0J+1BkoyQgUTZG06YQ/wHy/1vkmSEI7DhNVle7cdsr4PyawWLwdkDQHotLIlhc6hN
         yHXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dKkOdeWkGP0MDWZklkBvfhjtIWXhOqiAf1EfIpeK674=;
        b=UQc7MuZR/qLFqSdzHjOFPsKfrpzovWxOLGyuMtpyQbqQQpDf2twHpm3oU20Bd6lmd3
         5NNpfDdWglXiPLEirDVwd/ZAtz110MvQusbzFAiTzA+Uctt1q6+JSNG5zI8udjJN9yoF
         86O0AKtgaWT4o2flFBFBnjeL2g2KYS04qmyWX77eywv4irItpFR9SBWAsx6y654uXrDR
         9/4hDRyVOVippyiKexyBzNWdPYPGIkG/u0m0oYVRdfOyYPMt5KcB1UpTG2tTiL/R86g1
         dkQyToKrpW2Jc72PERsLAt1ZTYmwwLY1yChT+kcYz5dGfSpL1yerzbR8pjl6RKNdyZG4
         yAig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532a7vPL6j97sSRdFgX8BFItSXIy6e7S/fXeWYBzcfNpnVzxBm7m
	ZbQqH0WR6jMC0i5Bk8nWPng=
X-Google-Smtp-Source: ABdhPJwCxLcRM8MYLpGZejsnhEwjdUUKoxyRgEdOK0VFfl5BmtpnIs3mL3MUIubCTwm2sBCDkL12Zw==
X-Received: by 2002:aca:4d4e:: with SMTP id a75mr12841431oib.107.1616841737229;
        Sat, 27 Mar 2021 03:42:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2421:: with SMTP id k1ls3067061ots.0.gmail; Sat, 27
 Mar 2021 03:42:16 -0700 (PDT)
X-Received: by 2002:a05:6830:1c26:: with SMTP id f6mr15423569ote.53.1616841736654;
        Sat, 27 Mar 2021 03:42:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616841736; cv=none;
        d=google.com; s=arc-20160816;
        b=V8PO9PiIQMQBM6Guy+HVwTl8Lu+G+nGdARxcQbXeNXn8hUFAwVGFoY9t5N3Ndr4bFZ
         OgPg7ZpKpZEvlpRrCWwbBgwRuCYE1CGEdfe5DsmlHnPdAjhULmhDBvpWfqXQkIswxbeE
         42SdwgbxLmMYuOlhThWsvypaS2CW/8IjOiQlaedtKsxpHuTkqltpHuw+AYtUr2Cas5MW
         cb8lmoQHpG4r2Y/X4Fiuhn2yk2k9gwTuMh7VzSazIRZfMJNUOTIarFzD+Ewsnodmp71j
         57WMWeKErGzd8m34FisjfpReYFxp+0Ex7BP8cX0pVLAbH+ecvOZFJWb1gd/oJqYOxvLi
         zPiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=cBcTdaBtXhrs6+rx0k15h73g6SjDj6l0/BZPICxYVjg=;
        b=h68EDYPrMJG1j+8LG2Q09GoAUf0LX6TVXD6oD95zHodl5lrLlohJmm+ZGQ0KVaLRmQ
         QAFID8nstDz/AAa+kOQgFSP8GAY0Mt02Hsxn8M+k99qiDWpNE+d2PtIC47TreMo6vu8Y
         UCCdvQ+qQNlzh7UV4u2sJbFiRvEPD8PKVejjYwbTrsIlBPUa5XLg+6ZXFmwxhDTsNpKR
         seiMnHjvVQC8tNjhz9CUpThRk1ztn5Oe2AM/7sj8o7R5OVSU7pkbTW7/E8r9FKGecxWW
         4FHUJwLP6TYFIfTiLiNXYv7ICvLn7T3DRKxVf7laT7kdrRy8C8DYUxCEMNowK0X4mCnu
         FHnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id v12si607241otj.0.2021.03.27.03.42.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Mar 2021 03:42:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: TNL8sxa2H0/QGkfqWQgDXcIi21xIRsuUZ2azm3EE3fzBFQnoTbUGCql1aOD/nu06ropZXTEi8j
 VTfsU26MhnrQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="191322077"
X-IronPort-AV: E=Sophos;i="5.81,283,1610438400"; 
   d="gz'50?scan'50,208,50";a="191322077"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Mar 2021 03:42:14 -0700
IronPort-SDR: wevxfUnl9oV877Ffk9tRpP8jUwvVydqil/wH0LEUx1IXwTwP+JzZKzCzVhNS/1YD83KRI9U3vE
 cygc5lX1qAkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,283,1610438400"; 
   d="gz'50?scan'50,208,50";a="453854960"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 27 Mar 2021 03:42:12 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lQ6OR-0003N9-Bq; Sat, 27 Mar 2021 10:42:11 +0000
Date: Sat, 27 Mar 2021 18:41:54 +0800
From: kernel test robot <lkp@intel.com>
To: Scott Branden <scott.branden@broadcom.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Desmond Yan <desmond.yan@broadcom.com>
Subject: drivers/misc/bcm-vk/bcm_vk_sg.c:52:24: warning: taking address of
 packed member 'address' of class or structure '_vk_data' may result in an
 unaligned pointer value
Message-ID: <202103271848.D8k9QkeE-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="zhXaljGHf11kAtnf"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--zhXaljGHf11kAtnf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   0f4498cef9f5cd18d7c6639a2a902ec1edc5be4e
commit: 111d746bb4767ad476f80fe49067e3df3d9a9375 misc: bcm-vk: add VK messaging support
date:   9 weeks ago
config: mips-randconfig-r035-20210327 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d50fe9f0d6b9ee61df8830a67ea0a33c27a637e7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=111d746bb4767ad476f80fe49067e3df3d9a9375
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 111d746bb4767ad476f80fe49067e3df3d9a9375
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/misc/bcm-vk/bcm_vk_sg.c:52:24: warning: taking address of packed member 'address' of class or structure '_vk_data' may result in an unaligned pointer value [-Waddress-of-packed-member]
           data = get_unaligned(&vkdata->address);
                                 ^~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:13:52: note: expanded from macro '__get_unaligned_le'
   #define __get_unaligned_le(ptr) ((__force typeof(*(ptr)))({                     \
                                                      ^~~
>> drivers/misc/bcm-vk/bcm_vk_sg.c:52:24: warning: taking address of packed member 'address' of class or structure '_vk_data' may result in an unaligned pointer value [-Waddress-of-packed-member]
           data = get_unaligned(&vkdata->address);
                                 ^~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:14:33: note: expanded from macro '__get_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) == 1, *(ptr),                      \
                                          ^~~
>> drivers/misc/bcm-vk/bcm_vk_sg.c:52:24: warning: taking address of packed member 'address' of class or structure '_vk_data' may result in an unaligned pointer value [-Waddress-of-packed-member]
           data = get_unaligned(&vkdata->address);
                                 ^~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:14:47: note: expanded from macro '__get_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) == 1, *(ptr),                      \
                                                        ^~~
>> drivers/misc/bcm-vk/bcm_vk_sg.c:52:24: warning: taking address of packed member 'address' of class or structure '_vk_data' may result in an unaligned pointer value [-Waddress-of-packed-member]
           data = get_unaligned(&vkdata->address);
                                 ^~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:15:33: note: expanded from macro '__get_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) == 2, get_unaligned_le16((ptr)),   \
                                          ^~~
>> drivers/misc/bcm-vk/bcm_vk_sg.c:52:24: warning: taking address of packed member 'address' of class or structure '_vk_data' may result in an unaligned pointer value [-Waddress-of-packed-member]
           data = get_unaligned(&vkdata->address);
                                 ^~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:15:65: note: expanded from macro '__get_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) == 2, get_unaligned_le16((ptr)),   \
                                                                          ^~~
>> drivers/misc/bcm-vk/bcm_vk_sg.c:52:24: warning: taking address of packed member 'address' of class or structure '_vk_data' may result in an unaligned pointer value [-Waddress-of-packed-member]
           data = get_unaligned(&vkdata->address);
                                 ^~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:16:33: note: expanded from macro '__get_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) == 4, get_unaligned_le32((ptr)),   \
                                          ^~~
>> drivers/misc/bcm-vk/bcm_vk_sg.c:52:24: warning: taking address of packed member 'address' of class or structure '_vk_data' may result in an unaligned pointer value [-Waddress-of-packed-member]
           data = get_unaligned(&vkdata->address);
                                 ^~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:16:65: note: expanded from macro '__get_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) == 4, get_unaligned_le32((ptr)),   \
                                                                          ^~~
>> drivers/misc/bcm-vk/bcm_vk_sg.c:52:24: warning: taking address of packed member 'address' of class or structure '_vk_data' may result in an unaligned pointer value [-Waddress-of-packed-member]
           data = get_unaligned(&vkdata->address);
                                 ^~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:22:24: note: expanded from macro 'get_unaligned'
   # define get_unaligned  __get_unaligned_le
                           ^
   include/linux/unaligned/generic.h:17:33: note: expanded from macro '__get_unaligned_le'
           __builtin_choose_expr(sizeof(*(ptr)) == 8, get_unaligned_le64((ptr)),   \
                                          ^~~
   drivers/misc/bcm-vk/bcm_vk_sg.c:141:35: warning: taking address of packed member 'address' of class or structure '_vk_data' may result in an unaligned pointer value [-Waddress-of-packed-member]
                           put_unaligned(sg_addr, (u64 *)&sgdata->address);
                                                          ^~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:23:24: note: expanded from macro 'put_unaligned'
   # define put_unaligned  __put_unaligned_le
                           ^
   include/linux/unaligned/generic.h:30:18: note: expanded from macro '__put_unaligned_le'
           void *__gu_p = (ptr);                                           \
                           ^~~
   drivers/misc/bcm-vk/bcm_vk_sg.c:141:35: warning: taking address of packed member 'address' of class or structure '_vk_data' may result in an unaligned pointer value [-Waddress-of-packed-member]
                           put_unaligned(sg_addr, (u64 *)&sgdata->address);
                                                          ^~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:23:24: note: expanded from macro 'put_unaligned'
   # define put_unaligned  __put_unaligned_le
                           ^
   include/linux/unaligned/generic.h:31:19: note: expanded from macro '__put_unaligned_le'
           switch (sizeof(*(ptr))) {                                       \
                            ^~~
   drivers/misc/bcm-vk/bcm_vk_sg.c:152:33: warning: taking address of packed member 'address' of class or structure '_vk_data' may result in an unaligned pointer value [-Waddress-of-packed-member]
           put_unaligned(sg_addr, (u64 *)&sgdata->address);
                                          ^~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:23:24: note: expanded from macro 'put_unaligned'
   # define put_unaligned  __put_unaligned_le
                           ^
   include/linux/unaligned/generic.h:30:18: note: expanded from macro '__put_unaligned_le'
           void *__gu_p = (ptr);                                           \
                           ^~~
   drivers/misc/bcm-vk/bcm_vk_sg.c:152:33: warning: taking address of packed member 'address' of class or structure '_vk_data' may result in an unaligned pointer value [-Waddress-of-packed-member]
           put_unaligned(sg_addr, (u64 *)&sgdata->address);
                                          ^~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:23:24: note: expanded from macro 'put_unaligned'
   # define put_unaligned  __put_unaligned_le
                           ^
   include/linux/unaligned/generic.h:31:19: note: expanded from macro '__put_unaligned_le'
           switch (sizeof(*(ptr))) {                                       \
                            ^~~
   drivers/misc/bcm-vk/bcm_vk_sg.c:156:35: warning: taking address of packed member 'address' of class or structure '_vk_data' may result in an unaligned pointer value [-Waddress-of-packed-member]
           put_unaligned((u64)dma->handle, &vkdata->address);
                                            ^~~~~~~~~~~~~~~
   include/asm-generic/unaligned.h:23:24: note: expanded from macro 'put_unaligned'
   # define put_unaligned  __put_unaligned_le
                           ^
   include/linux/unaligned/generic.h:31:19: note: expanded from macro '__put_unaligned_le'
           switch (sizeof(*(ptr))) {                                       \
                            ^~~
   13 warnings generated.


vim +52 drivers/misc/bcm-vk/bcm_vk_sg.c

    34	
    35	static int bcm_vk_dma_alloc(struct device *dev,
    36				    struct bcm_vk_dma *dma,
    37				    int direction,
    38				    struct _vk_data *vkdata)
    39	{
    40		dma_addr_t addr, sg_addr;
    41		int err;
    42		int i;
    43		int offset;
    44		u32 size;
    45		u32 remaining_size;
    46		u32 transfer_size;
    47		u64 data;
    48		unsigned long first, last;
    49		struct _vk_data *sgdata;
    50	
    51		/* Get 64-bit user address */
  > 52		data = get_unaligned(&vkdata->address);
    53	
    54		/* offset into first page */
    55		offset = offset_in_page(data);
    56	
    57		/* Calculate number of pages */
    58		first = (data & PAGE_MASK) >> PAGE_SHIFT;
    59		last  = ((data + vkdata->size - 1) & PAGE_MASK) >> PAGE_SHIFT;
    60		dma->nr_pages = last - first + 1;
    61	
    62		/* Allocate DMA pages */
    63		dma->pages = kmalloc_array(dma->nr_pages,
    64					   sizeof(struct page *),
    65					   GFP_KERNEL);
    66		if (!dma->pages)
    67			return -ENOMEM;
    68	
    69		dev_dbg(dev, "Alloc DMA Pages [0x%llx+0x%x => %d pages]\n",
    70			data, vkdata->size, dma->nr_pages);
    71	
    72		dma->direction = direction;
    73	
    74		/* Get user pages into memory */
    75		err = get_user_pages_fast(data & PAGE_MASK,
    76					  dma->nr_pages,
    77					  direction == DMA_FROM_DEVICE,
    78					  dma->pages);
    79		if (err != dma->nr_pages) {
    80			dma->nr_pages = (err >= 0) ? err : 0;
    81			dev_err(dev, "get_user_pages_fast, err=%d [%d]\n",
    82				err, dma->nr_pages);
    83			return err < 0 ? err : -EINVAL;
    84		}
    85	
    86		/* Max size of sg list is 1 per mapped page + fields at start */
    87		dma->sglen = (dma->nr_pages * sizeof(*sgdata)) +
    88			     (sizeof(u32) * SGLIST_VKDATA_START);
    89	
    90		/* Allocate sglist */
    91		dma->sglist = dma_alloc_coherent(dev,
    92						 dma->sglen,
    93						 &dma->handle,
    94						 GFP_KERNEL);
    95		if (!dma->sglist)
    96			return -ENOMEM;
    97	
    98		dma->sglist[SGLIST_NUM_SG] = 0;
    99		dma->sglist[SGLIST_TOTALSIZE] = vkdata->size;
   100		remaining_size = vkdata->size;
   101		sgdata = (struct _vk_data *)&dma->sglist[SGLIST_VKDATA_START];
   102	
   103		/* Map all pages into DMA */
   104		size = min_t(size_t, PAGE_SIZE - offset, remaining_size);
   105		remaining_size -= size;
   106		sg_addr = dma_map_page(dev,
   107				       dma->pages[0],
   108				       offset,
   109				       size,
   110				       dma->direction);
   111		transfer_size = size;
   112		if (unlikely(dma_mapping_error(dev, sg_addr))) {
   113			__free_page(dma->pages[0]);
   114			return -EIO;
   115		}
   116	
   117		for (i = 1; i < dma->nr_pages; i++) {
   118			size = min_t(size_t, PAGE_SIZE, remaining_size);
   119			remaining_size -= size;
   120			addr = dma_map_page(dev,
   121					    dma->pages[i],
   122					    0,
   123					    size,
   124					    dma->direction);
   125			if (unlikely(dma_mapping_error(dev, addr))) {
   126				__free_page(dma->pages[i]);
   127				return -EIO;
   128			}
   129	
   130			/*
   131			 * Compress SG list entry when pages are contiguous
   132			 * and transfer size less or equal to BCM_VK_MAX_SGL_CHUNK
   133			 */
   134			if ((addr == (sg_addr + transfer_size)) &&
   135			    ((transfer_size + size) <= BCM_VK_MAX_SGL_CHUNK)) {
   136				/* pages are contiguous, add to same sg entry */
   137				transfer_size += size;
   138			} else {
   139				/* pages are not contiguous, write sg entry */
   140				sgdata->size = transfer_size;
   141				put_unaligned(sg_addr, (u64 *)&sgdata->address);
   142				dma->sglist[SGLIST_NUM_SG]++;
   143	
   144				/* start new sg entry */
   145				sgdata++;
   146				sg_addr = addr;
   147				transfer_size = size;
   148			}
   149		}
   150		/* Write last sg list entry */
   151		sgdata->size = transfer_size;
   152		put_unaligned(sg_addr, (u64 *)&sgdata->address);
   153		dma->sglist[SGLIST_NUM_SG]++;
   154	
   155		/* Update pointers and size field to point to sglist */
   156		put_unaligned((u64)dma->handle, &vkdata->address);
   157		vkdata->size = (dma->sglist[SGLIST_NUM_SG] * sizeof(*sgdata)) +
   158			       (sizeof(u32) * SGLIST_VKDATA_START);
   159	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103271848.D8k9QkeE-lkp%40intel.com.

--zhXaljGHf11kAtnf
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICC8JX2AAAy5jb25maWcAlDxbd9s2k+/9FTrpS79zepEsx0l2jx9AEJQQ8WYAlGS/8Kg2
nWprW1lZbpt/vzPgDQBBNduHJpoZDG5zxzA//vDjhLydDs+70/5+9/T0bfKleqmOu1P1MHnc
P1X/PQmzSZqpCQu5+hWI4/3L2z+/Pe+/vk7e/zqb/Tr95Xj/frKqji/V04QeXh73X95g+P7w
8sOPP9AsjfiipLRcMyF5lpaKbdX1u/un3cuXyV/V8RXoJrP5r9Nfp5OfvuxP//Xbb/D/5/3x
eDj+9vT013P59Xj4n+r+NHl4P32sPj1OH65+/1RVV7OHx48f59Pd1YdqN93N5/cXH3ZX8w/V
h/+8a2dd9NNeT1tgHA5hQMdlSWOSLq6/GYQAjOOwB2mKbvhsPoX/OnKDsY0B7ksiSyKTcpGp
zGBnI8qsUHmhvHiexjxlPYqLm3KTiVUPCQoeh4onrFQkiFkpM4Gs4A5+nCz0jT5NXqvT29f+
VnjKVcnSdUkErJ8nXF3PL4C8nT5Lcg6cFJNqsn+dvBxOyKHbcEZJ3O743TsfuCSFuV+9xFKS
WBn0S7Jm5YqJlMXl4o7nPbmJCQBz4UfFdwnxY7Z3YyOyMcSlH3EnFYpBdzTGes2TcfF61Z6j
s1fujtreneMJiz+PvjyHxo14FhSyiBSx0hJh3E0LXmZSpSRh1+9+ejm8VL2GyVu55jntD60B
4J9Uxebm8kzybZncFKxg3hVuiKLLchxPRSZlmbAkE7clUYrQpWcnhWQxD8yJSQGGy6TUKgEK
NHl9+/312+upeu5VYsFSJjjV+pWLLDBUzkTJZbbxY1gUMao4iA6JojIhcuWn4+lnpAPV8aLp
0tQEhIRZQnjqg5VLzgQRdHk75JVIjpSjiAHbJUlD0PmGszUUyaNMUBaWaikYCblpLs3Vhywo
FpHUt1C9PEwOj855u4O03Vqj0JA4HvKkYFRWbM1SJT3IJJNlkYdEsdbeqf0zeBbf/SpOV2WW
MrhAw9Au78oceGUhp6bkpBliOJyHVyBrdFTEsUcONdKYgS+WpWBS71RYJzNYbDsmF4wluQJW
2vL3mtTA11lcpIqIW+/qGqqB4NO8+E3tXv+cnGDeyQ7W8HranV4nu/v7w9vLaf/yxTktGFAS
SjOYq77wboo1F8pB4614l4NioW+5p/WcWiBDVDvKQNOB0LgiF1Ou5+ZSFCiaVERJ/1lIbsOb
o/+OszDsD2yUyywmqLWDYxW0mEiPvMEtlIAz1wo/S7YFgfN5VVkTm8MdEO5U82gUwIMagIqQ
+eBKEOogkDEcZByj+09M84SYlIHyS7agQcylMqXY3n9nMlb1X66fDUlYdRKaUc8J8NUSbEut
JI6qS7qE+bU1aFVd3v9RPbw9VcfJY7U7vR2rVw1uVuXBOsEVT9Xs4qN5PXQhsiL3CxI6QZnD
oUnPwmFxdJVnwBE1XWXC0tp67RgQaf5e9mAAIwnWE3SXgjnzeWrBYmLY+SBeAf1aO25hRKr6
N0mAm8wKMNmGUxdhG2f1EhmOhiqAsgMsAJhxlcZnzu9L67cbPAVZBmZD/93v6GmZ5WAr+B1D
f4OmGf5ISEqZ79Qdagl/cYI4CDpDECmYE9QA/AQpGUa7KbH973eSdaGN9Rs0mrJc6QwHtcq4
ojzqf9R63/9OILziELMIg9+CKYwbyoE7rMWjB3cnFtVe22/7dNxVu50RRwESu/KiwIv7jDSR
TLs9awkFJHZeJizPbA/ZiztfpCSOQi9Sr3gEp0OByKcecgkBohX98cxnY7KyEI43I+Gaw8aa
4/WfFTAPiBAQb/miehx2mxh2q4WU1jV2UH2QqNAYL1oakkftOvwhrtBxeWSplZDsxkMNK2Zh
yEJHJ1CpSjek0kBgX64TmDqzgqGczqaXA7fXpP15dXw8HJ93L/fVhP1VvYAPJWCBKXpRCG56
f2hP2zHXAeNgeq/P/s4ZjSglqScsddzhaEFrRCDVJaoMzIRaxsTKI2RcBH4xjrPAJ4owHgRG
LFibR9m8ywicO7rRUoD2ZskYdklECP7Pumu5LKIIwvScAHd9VgT8zYh6ZxGPnXCrO027MtBZ
JZ7L1sEmu/s/9i8VUDxV901Vp9cHIOy8c51i+vUG6UgMLjDxR6tEfPDD1fLi/Rjmwye/1TJX
5aegyeWHrd9cAe5qPoLTjGkWkFj58ZCTwmVTjESdINGm+Uzu/Em+xsJlsRTDHVcFWkdFIH6+
GR8fZ1m6kFk6v/h3mgsWeWTXIrm6NEVPo3IQTPiT+0sR+phAhRUZnz/n9Nzy1uJyNnIJgoA0
+/2VXEBSm1/4+TZIv5w1yI9nkPPpOeTInDy4VaykYslTv3tuKYhIRnSn55Gd5/GvBHIDs5wj
iLlSMZOF35K0XMCWZtJ/tQ1JwBejTFJejixCX7zazj+NaV+NvxzF85XIFF+VIng/ch+UrHmR
lBlVDAK1Mf1K46TcxgICVTC9ZyhyH0VjWIdm001mlhvGF0vDKXQFDRDwQED8D6bECvbrFCJL
uALvAJlIqZMNM3akbA3u5NLwYhSyRxtSGzHMoTwVFywjlbLI80worKpgCUxaEajOmhgR8W0T
OdrYbuwyU3lc6LTZUySSpAzNrMJBtGzAI2crZla9GjzJ+ci8EE+hN8QauLNnhmHVZ24W2CGl
r2W+ZGnISTrC83tolgXE7XEQSWdWhJeAaCl7dJo1SUMJDjp2hskcbthIIjBnYnE0v3Do4hnI
C8gFhAQ8UuXVWfT1VVcDsvy5eRxeo995FDiDJSZiCRgBv4YZPOb6iYJAupuG/njapoZfNMKI
tRgWWXxHfoenMhTOwTYa/IaRVZlBMCWswqUGC9YiyoDdZilksbGkZoHDPjPzyPCghXEvikDM
p7SoCra+vvCu/eoyADWuQyZbIP8/JPAD4sSbESyKHkaIrkjmC0hyp5iC68c4IzEQIbgIVpfi
tXHpwsAm7D59+1r1AqNX6DBfEzD/MPnlRyOvwDAVE/NydrWyguoec3W58kXRuuAMpn9b3oF3
05d0Pbvo1QKWDHYRRdw+BBSEXLCIwU5sTGtqwiLJUTGd9Uf5UFNxGNhQwBVDYK1fFiNEYalM
oo7LhAilWWcCpqAia8JrZ7WJJEPgxuEacsYHRrElFnzLbWgtmrr4uubDAfI2pc72ieRhYyym
QwTe7Bgcbl5w2+za0gjerk7OvebTxVpjrbOpfVROIOGFEWCR7EnTwnQs1iQ2SufBkqkix8yz
LmQLZhDoameL0nk0WGoBKRldFunKyr17p+N9CwiZ7CxwO/vGn4OHienZEvM91OdRrf1Z5Kle
t+we8UxT2OCury6tu6zB+EdCckR2G1zelRf+h0XAXH70bBrgs+nUPCSEjETYyP69P77WqKsx
FEwxOmw2tZfsOzEi0MZaLzV317P+7b4OuZYCX0KMCg7bMkNxqCByqe2JYfKWt5JDbIXFdDAl
038em/8+Xk6nZncA1jsyo0KIj+SKp2WoLENZ308GgU8OYQisCfDjyRdECqOUJp0gG4vOdHim
xe9KpBA1hsxjITEdXNXPCQNcvqg7EmIQ9Vhez2uHEry9Tg5f0Zm+Tn7KKf95ktOEcvLzhIHn
/Hmi/6fof4zaEeVlKDj2FgzfPrhpIZKkcMxFAgJdirSxVAlPDSfiIyDb69lHP0FbK2oZfQ8Z
snvf0qEjwyBWx3LdcX/3edhXPb8os7FEukY7ZQB9+Pnh7+o4ed697L5Uz9XLqZ25P2y9mSUP
IPrQsRjWkSG7Mw1tkytIFB8PusEMALqydaezlj4rbFByxXPtlTwCmyeljBkzdayBNHavDyoS
/c6icX5GG7JCi72SFrMO2jTDoB0wmfb4hX+BFjdd03SXFa4xeg5rpL9el+iGm/ZIzhxEN0MP
p7FhpTY3cCsbcF8sijjlWALtC5Gd3I2KQpcp1BRJRwGIDscfniqzIKgfSQdPEUYIXQ8wIQP2
ml+0Pz7/vTtWk/C4/8sqIYMLTnSUCs4f3ZTpOXlo/axfTBwQJakuJXDQwhQEm0W8jCAJDgi1
fPoiyxZgtdrpBjqkqi/H3eSxXeeDXqf5+DhC0KIHO7TiktXakCZ8aC9IzO/ap6i+rWedjNn2
GGwQbBWLZeU6lNm10wy2O97/sT9BPvN2rH55qL7CsryWoPZutH7ONB2gA4NIqjQPW28jq8vP
5lC3pvAZ4/CYBGaSowuoWFFGXw3ODDXC4VxnR3AoixTfVSl2Bji2CV1r604DuTFlZSWYchei
2XLYE5pwQLozDlZeQ8c4pWYgpyF6UdpJLrNs5SCxqoEZGV8UWeF7+4ZTQs1qem+crWI0D6mS
4tFt++LrzC2TMsnCpjHPXatgC4iF0ACjH29O0y6y1HTSTDb7TfnuUCM2BKwONoTpcL1rkPSw
kIyiyzyDwjKJcvxGjfGFnzq4x93gTTKqMnughRkbT+sMWd/ZyioaaDScNliQpdtlONIW4wra
sCFmRFxSzHXQerf5vEMH19rmRIzyyIyKAFXEkHugJmBMiI+NZ7GeRbIt6FmW1n1viphxcCd6
erR+xRq+vg/DK4dAT+CVanuUE7Fp0WqTG5XlYbZJ6xExuc3MPlqsxASFI880xjAMjT5Y99DM
x+vAbX6B9gVvyLNfjO5hTruG2e+26ZwVpVF60AVX4yHSPYU6oW2ffSEH6+w1zda//L57rR4m
f9Yh+dfj4XH/VHdq9e4KyDxPcO7KNVljlMu2jaB9DDwzk7VWbKzGVJSnVifbd3qWlhVoSYJd
A6bl1E/iEp9/jTJDLaZWNqRBTXEozogvTGpoihTxo4NrtH/40FiOWtGGpxS0a322+yNaAu7r
qGiQKDaidmPuuBY1aDkeITNbdBocPhNvIDSAOD01OplKnuhU2Jy0SMEkgDO4TYIs9r2XK8GT
lmpl9zyY0HKz5Eq/Yhv9R63V0b1tMTjCwgreA1QUX9RLsCXHvIp0dv3cz1p3yIMagbPHSx3Y
KbRyurs41ERO+D+OcQeLjX/oAN7nOVpP2T/V/dtp9/tTpb+rmOj2hdOrqcMBT6NE1/nHVLin
0DGS3TVS4yQVPPcX5xsKkAH/wxcGdFjG8EbvY+uvuwSq58PxmxHFD+PIrmLnFNh0C1Qes7pM
ZsSAXYWvjgYdexkRSJIWRe5c1AoTI2zTsSWgaRvv+jfNaWKw87nS9lkXxS6dQQFqjjmkAdSe
wmni9sF0kVswVDPLyyd8IYg7HCPAsu2+aRmguyFhKErl1tx1sAGeKDBjxiQp4DQhPOHm4+BK
GkffOk7tMBPQGWR/fTn9dGW0YHliD7/cxAzSWqyD+3prTB8JP4aJcQeMvL05+NwHwQEEAJ+6
EkqeZXGv/XdBERq/5lEWh2bL6Z0cNhT158CEQM1XoqCqviv9GUQfPoRtp80wDqzfYdeD+DJn
QhewR1uSQXLHPqzpowx8bceYjlhuelzXer3qPv1Jq9Pfh+Of4MKHGgmCugJK46BqSBly4nNT
YGS3lsndgrExZEpDcKzV7guL8dXEmcLHQYzgEyKsxLtFgdTr+AsOEcIpt4GpJ67TAt9BKmNx
8AMbZ5i5tkDwcESk10BbfpxezHw9dSGj9REbDWwIKQXEnd6lxLGhzvDjoj9H8Grxyua1xqJs
zBDh4bW9eG9uIia5r76bYzeIKcWMMdzPe+tht4eWadz8RfeocnzhJf6OFGOQxA8zfPebENrM
9mxceV1Pb2Xz5q16q0Ayf2vatJ2ItqEvaeDvdWrxy5FKeIePpE/zWzRKibtGbG3ITD9VQ7Wr
ujEPv8UIb7N2i5VR4BskI59wtVjFbuLhElQQDYE0kEMgKIZvUkVwb2cPbHF+N6FsNNaBw5+2
c2/IhRieb3KjT3gAl6vAf/R0ma3YEHwTea8DW7i9X+U0+OimJhkugJIVG0L1LK5YLSOP3HDm
mLJ2PsCcPXTMp86smEGEPpjNLOc6fj3y60yPHj2jliSPeJTpMGsYNTQLuH739XH/eCgfd6+n
d01R+Gn3+rp/3N87XwDjCBo7YgoAzPjM2K4FK8rTkG3tPSMi2rgHjNBi7vt4ocUKuc59oxB+
dWZcBBmTK156zbkvQDdHMeEbl2Bfhb+pG0mYxttnUcOawsv8woOiyWBvDSbFZryzc+G5jQxO
mN2+OaRomkd8gylJ+UjnXHMUECOf008QPUPqqNEFEabY4wVx/NqMbQOw4gSD2LXl3zto+9e1
Py/q6dKRjuGeYvB000YMtS+U5gJa2CCiGlJARpFjNcpPBVE+zzpi/8npSn8TfrVeOHdVDiHl
QmY2jQ5cnO8hNBwyySL1l5SQWyqXPaOlNAz9jVBWQIy/S5n4/IpGwTT24DJZ8h4izI4ZEelv
AM1q5TZ39im2mBLdlvjxiSEmpksdtAPiOFTe5vnPjqAnp+r11EYoTSQ+QDkIM+ruk9dEkJB3
zzH57v7P6jQRu4f9Aettp8P94cmqCpCt3QLf5kVmKyK+9Aiy6Q8MAYEZnCNgYdlOhHyefZp/
8jPHZFnl7TIBMAmrv/b35oucxWqNJH5O6y0u9tmml/H4AAiB7a1QElOsAuOHXmb+hbgoZj7+
C+Hwt7CrNZFMYE8B835IpCctPWw1ELw1UfhR2rmRyNzZBf3wYTpgiECsUY/x0vh2Qnc05Pj4
5+geEt8eknZ5o8eTfM8uayIF/7vcvt/aW82xq7I+XRshPxNs2rGBLJHD04o+zq6mM3ft/cWN
rKqd2R3YrWik9qX3uz3DuFm5bjXxbWn0jhS+Oc/GuGaRtrzPvZ7JHJaAnzE97u4r8yWW4Lf+
89lsO7hQml+8n23H7qnGujfRgUsJ7lrdmjUGzzK65RUysJdnLeUjpq+axLsWvGnAOtcvQwRe
2NCFh7K5/QE8oQEZQvWVD6BFqxHGXp092bYIv02DXXHKpHtGjknsXItVVQmwj52F/g8iADny
5abGjDROAy6REUZgnnMOlPUvMPTQ9indPyZiRBWCdfW5uk3r6a06HQ6nPyYP9VYf3H6MAP/Z
EGXmUrhfmli/hbLxS8oDZd2MAay7d7r2IXMHHQlMMHYwHU2ifOUTk0KYH/K2CBmamWkNLbCJ
zwODIxXorL55UMvL4eI1Is1W3P/9jEEUUOl76DEoiFrOV96Z7acnAzHfcOHLCAyS+i59XOtw
wsf2hv7rdsjiauuzTwZJItaedcOsF9P5yLd6NUUO5necdxDVcuaMWi+9hj5o1vHsAMpGKkwu
+gJGeKiVZwBAcafe55VRRWu54tXFVpMLjRZYY7NcZF3Fm+nacgIZvt/XNQPRqrE4wxbnDREp
uCFvAb6lpgwbTDitGwKztLDsS0cm2E0Ba9Wfd+O7GFuE/gKdMQI/XYrjIiYCPFzqzXAsamxk
2GI/LBfeNXRFjJHvTnq60WeHbtciJEZT65DHxm+FmwqodTstrBQUH12kEt7UyiRrazzvmgKL
PDxXk7/3x+qpen1thWRyrP73DWCT3QT/5bbJ/eHldDw8TXZPXw7H/emPZ+uj3ZZ7wqTvn1Dq
8Oh9rIywRYyfmslbtk8mbmJpsQHKtDjHSSqCryFL/RGI/tcdus4AEa3wy6ln+3e7bhvIU+vf
Vmugi9ytQn7K7YTwU95k325B51M+WgqghEd2psX/j7MnW44cx/FX/Djz0Du6pXzoB6WkzFRZ
V4nKTLleFO4qx5Rj63CU3bs9f78ESUkEBaY7NqIOG4B4giQAAuDhhsunQPMi+Wq0FCaEGN3U
ciAdUFnKlXbDfFkeNLNpdZXqvHaBlZZVi0wpxXAa2raaLQqms86qNQue2uiEOjFI4WtNwt8C
gcxfVNopRgI1n+/1voqL87AuuapPO9NyfMo6WlQA5NQNlHYD1dbMaJwtZdaME/d2syep0QfY
Ee+Z0XQr/wCODec9LiMdjEKLLK3NIsuWNnEBruupE09gIIoHF25484nBAicqzkAQsHAwp0Eg
1WZlH24gYunBkqpkprBkfKEIi96Df0iyOWDGUOmk2YXD1C4J6YG+bG0aMAiHgf/r4hATDQ15
8TZ5khaEhV+nEdIxUPKKGHYVuLiur9fnf/+4gp8wNDn7yX9gf768/Pz1hiIjuNh+NWYrv4p2
bKGgp9LQ+QPc4BlZ0FmLBP8XzMx3oOSaWx2QriM//+Bj//wN0E9mB9dLbzuVnLTHL0+QC0Sg
14mFvGprWXqnsjQvGtiQ5m7bOQ2R3hiED7HnFjfLUiRmGbNC+W4fFqd9mnsXzi5+fHn5+fwD
swjEL4ugTmMXUVCVkulgbjJ8v1fu16j6pYql0tf/fX77/JVeVfrGduV/yiE7DUWmq+G3i9CH
MbOF5fdpV+b4cnN1eX/+rE6pu3ZxhFg93qRn5qmoOstmwg/noe5IoYdLKE2eVq2eoLXrZYlL
tIJIfjqv6sX3/9tPPue/tOCGq3Bn1M/jBSR8UHJeEMonxQWspRLNy279CtIFqY7pK5skWI4v
opfrB5qf4oqbY3C38Q2qj4seI/12L4u3md4q6aSoY8kbSmGREaFg+O5TWWp6Mj+bRIvgGvkt
1yLq9qJNmsClEH80U8gcoItAtaRoAO/u89AaKUK5ZoIiUuTvU+llGxiryhp8tr6bcN1HWcGu
7oasrvVL8rkePVvnDPMzqo4pvdS6NxikXDilvWSvg85+gDqI7W/Oa4b9fbfLagnvk4qsbirq
s5oN++lYgpGn10Ov23HAHjUyTUVe2xKWgKQLIU+G6Dd/fSonObxrgRJ0Qw6fKWCXItMHaaF6
c980Kb7lkrUZTbD6ezXMklKMTsg7aCyjh4e2B3CzGnBADAce+NkEHrUIKNN0kKj7dv8BAfKH
Jq1LVKvwCUTrnMMQk7UQNMC3jwv4cerOHxIBl7T6nHIo6BpV+kB0WXr8Q0qUWXmAoBFT61Yg
+oBtus3W31zqgpInEFzKIc+vn7csy4qGtT1EBDK/ujgeMkimeeiF48TPT8oAwHev+gGPV3fi
m1+rmUaH8lAbcVQCFI+jtujLjO18jwWOq+38TVa1DOy1MP7KNj0LvnzdVy1qaZezHdenU9Kd
u2SVt3McX6tRQDztmmYeiIFjwhAFds+o/cmNY0uWJEUi2rEjrXWnOov8UMujkTM3SrQ7gQ68
ZE5nZMsD1uZ956pQ59/KKcn61KbnLfIPXlNSSp9YfihQjgSWTf3AtNuu7tKlDRbzTyVXB0/l
ffFguwnxOi09e1Hwc6TWJNV5igWc632eFrq/AsO1DQpYFcc0e9BbohB1OkZJTCdSUyQ7Pxsp
X5gFPY5BtKmxzIcp2Z26Qh8RhSsKrjkFuohndFTbO/ex64h1sFnAw9Nfj6935Y/Xt19/fhd5
/l6/cqniy93br8cfr1DO3TdItPSFL9/nF/hRz188YcH1/1HYlodhK5jE5dhWEtRJ0LGfgo9q
CqJiVyF54vqxMH9fLhKnou9bEFMy2DYfVsNXkZ30vPpZPV3u8eHJ2TStstZ2UbrwMb52XcHo
buaU7tMmndJSH0u0XyKzT5kvmbhZxsrZoL3hb0BCOIheKvWBJrSeGZV8GRxS71x/F9z9g0ud
T1f+95+U4sfl5MJyAzKjpqZl6Cb0ZtnIIqiuCLet+/Hy55t1EGa75FKSAGxu/hASMssXtbgM
+I4xMmjiHqRQA1OnQ1+O91I+Fe06vz79+gZJr6m7ZvVRC8E84n7LaN+MAaPjmdrODTKWcQmk
mcbfISvHbZqH3+MowSQf2gd0yyahxUX6iRhNKy6GgKfNgs1cKb/kG7bIKLRWNEP4Ua/J0Rq0
C8MEpY82cJRzzUoy3O+pyj4OrhMiRxGEiil7lEbhuZFDNDZXDmJ9lIREpdU9NGb7mTKRb5sC
COFfVdDa+EI4ZGkUuHQOF50oCVwqk8xCIlmYanqd+J5vQfgUgh+IsR/uyH7VGbXyVnTXu55L
ftkU14FMW7ZQtB2X2/gxx4g2sbRm5+ZIj3Vb5YeSnVS6oNtDyYb2ml5TOtPqSnVu+IS/V1Ld
0SbYhaT8yCKPvp5de813HSoVzzr5tTcN7Tk7cQgxMsO1ChzfIZfZOLzbiyztXFs20YXIcCjY
7lDofAUA3/osiVcElovlZUre7gm0jPCAPiMlVeB4W8JdTOdbkhTZQ9pRDmMSW0DwCogfm5Jn
DPy9UfxCxmrb1Yok5ONj08YkQdUeyz2Zo0IOYea6Tpdq+46EX9g4jmlqgvF1nRpnrrh2XAlg
dI9XtCGKG6cGP2IYZHmyMoFIYqQpCPL3SfirZEWWoogzHVl2Q0EVq9FwtfCKHp/ScPd7/oum
Ma6Yjov7TLchKZzkvOmaZm0dmHKAYDl50mrVrUAweUGO+lLfo3R8knR1EjnIB03HpzmLk4BS
JTBVnMSx1nQTt7uFM6eaoDAEdAspvQgQTc8lFte6XhDpUBfVVI/0ekCUZ35ylmNWUrFiOuH+
7LmO69NjIZCeZaDgBSHIcFBmTeK7SERBZA9JNtSpG1AyxZbwyJerbeCzh2Fg3UaLs1IG0vBx
s7TAHPgblGA6JYciT3eOH9gqAmxIRY8gIthF+tY2iqe07tiJ1ix0uqIYLG3kS7lKR1v5Ems/
UhDtmMHzc/TiPZw/lAM70204tm2uR3iiHnKlruhsY1hWpUf7YOlULGIPceTaCjmem0+0sIG6
dz8cPBen8abIKuz2jHF0/JtOIzbP6Zo4jvs3ad9nVC50um4ijHhkOVzwDB3yshlR1cx1A3p6
+f5zgFSiZWdl91r88k4dZT1G5wocl+l6yqYYsVaAqriPXVoyQhw1ZF1BCcvoMCqaGrKl0M0o
cq4LD+HoRLYhFT/3YFR+tz3i52v5bovEtm3r+jUfkngc/wYzXLlq4loWGxzucMnWshKneDCJ
5L7wbteEsJA2H0rKTG0S+jU92IArh/pmc4Zzv39/bQHpZrFb6PI6AzZ0LfuZaFQvxegbDeOb
Fxjg6OCqTdPg6ofLT5uFYv+iHVraLcCk/JCyoXiPNcRQVtbDRqC996UboPv0MPRtU/6tGgcu
HGZBKF3NLERy3VvRRcoe5smwLbFy8GwCDZ9occZZdxZO4DkOrRht6Wh795buvbOkryc9+hYd
aWWF0lZhHFM2YLJuNrgeGbWKierDYBHEhXJuLf3cH7hasjFU08RjEoWUgo7GqmNR6MSWLetT
MUSeboNBSOH7Z5FTW3jtoJwuh9ChKfr2VCtZ17d1t/zIQtK/HDUD8nqUSMhS+n1JZgjo6zIw
LucECN/nA0SKnqsfioDV1M2PQB0c3yiAQxTnY7iXqzsFk951NxDPhGCLiYJR06xQ6ZY8RGtI
GFJPj7++CL+O8l/tHdiy0W0p6gJxpWtQiF+nMnECzwTyf40cwwLcZWXHPH20FTm8w9JmPnkr
AwSczeBDozgImjRA6qpGEhu1cGBtc3BUX/eZ1TCkKLq9QYDQ0qyKKz8LFO1YkNbF1gajLi+o
uVouNqhrCXlb8vXx1+PnN/C+Mq/Dh0Gzz12wP3zL+bQqZNYgmWWJthxdhpmWugW+zki9bP7J
ioA0VrktHwzkoNklUzc80JXLK9Ib+FxcnZ2H1swLJ++znn49P37bOrYpk4twuMhwilaFSowE
59I74eeP3wTiVZYrbiC392SyhPtjvsdZRRWC6xW+kWsdYah9URFAOEolhUwaoc2GhaDpxc/s
d9egMNPDLsBtmfPMqmhtsxsfmMULSKJZeSgvFDPN+Cxrxo4oVyIobtxSulHJbG+GKSLi6TBM
oHaWD0N6FAFl5uAYeOvYW+im/UOX6u46mBzHsG1xwC0yFWBwg2ifnnN4nOh31w09PUG2oi0P
YzRGlBKrCMCNg2yK8rjo2EQODkbbx6bPKNgtemBh2XGThfvO2zSTw1aeXzNyKOyBVVPVkf3j
vxWjcH4sjyUXe9rePMVgxYKc4vpUwP/Mil2fU7zcwU0HxcnzzTreuoxSG/6lcGPFhfci4YTV
xp89ZFWaF7YbgjGV4YQV+QinwIvXUXSjPnhfiovKI4qhLRnlxtBMp1zPrLVck6FzSocqn7gN
N0C4MQrcbtpPbU3Wea4qUf4qrMpnlEXuL00Alq8hoBAaNdhw2Y2cP6Fh6jUtAiZfTvhdy8yn
8oHc2rjKri7Va+6UkZmj9yqoWcyR0BY0D7Lr5lXKBSSfZi1bcPjTBmzF79PAp8LdV4olomqD
ybKhb44UZiy7E9+FVlQ+VNpwwX0aX1Wabx3vHfJJ5L/fG6/DcpDJ2/PoZ/xvZ+ng0FE3WuKT
km2t2hJ+4wtsuV6BU9ZjT7sZB1dz4rbhRqHilo9DmqJttqUDtjlf2sFEimLN5l94j+FiaKQc
N5cGD77/qfMCoisKs7m2MfE2ZZXv/dXD5iZyDpvYiKuLXqOmqz+zQTyhtvjWS5cQLyP8cXTl
DkZJXA/zgUT2GEDIRNHU2gKkeLb1gouqz+Ncd/3nt7fnl29Pf/FmQzuyr88vZGPAT1rqBCJ1
VNHo+b9Voca96AqVFRrgasgC34m2iC5Ld2Hg2hB/EYiy4eu12iL64ojbkxc6/aapdTVmXYU8
wW6OkP69Cl0AmR03JK2OLUqWOgN5f+Z8G1DyoiWBY/c6Byqw5Y4r8hz+9efr283YFll46YZ+
aHKKAEc+vU/P+JFSXQW2zuMwwmPGYYmLY4vFek8cauMVKKZb5QDSleUYYFAjDDUerqu5lHmZ
cm46Y2JWsjDcbTrLwZFPyX8KuYsMnryU6QYAd23aDL3+5/Xt6fvdH3+uEc//+M4n5Nt/7p6+
//H05cvTl7t/KarfuE71mfPKP/HUZODZL9aJ0V4uvpTHRsToUPlurLSkXyUQFUfPGfAQFnVx
8czJgsZYayprKjAUMB8+BXHi4BFrZ58iVAZn81spfICkv/fH7QTWtI0akFIKn+em+Itvuz+4
VMlR/5Lr5PHL48ubbX3kZQueJWcvw+PTt/t2OJw/fZparsxh3JC2bOJHuQEtmwfspCo5h+8E
0oVPtbB9+yr3D9U8jYVw02CwZGaf1UJi2xsQRw9noxGsSi/GHi1Ayi+awoDr+VkmHTb4DUKW
LDfqKwHsafSntjNTP/qW8nxkq84g0x6HcbWQ0Ult86uGX7tVl1xyAcRJD+9GgU0g2xivFwHI
LEnAhMQmjS9cOqgfX4G7snUjJtKRiQAnobNSahQgx1L8z0/TstEM0wDjJ8Y+xRkLhCgmg0At
Ba4bAy6MD5F8IwKVBQG1luRbCg3xXZaqwGIBKc+Q0AgI01ETYHwb4f8fSF91jhbaarnHIw5A
OVuoqFYuOmuruzH1aOMHR4IeCR4puMUscxN+WjgeboC055j11yN5jQWogZ/oVXk4gG0B1zBC
dLYBmncwVPqnh+Zj3U3HjzYRVLBNTVgEgSk1UYVwOxetx07Sy6edyvinGBvlyxc8ioRIgM2J
ImW8itGNoSoibyStL1Cc2pnQJ2oH4jrdra/gYZKhqEWC+l7PvS4Y1owdY1z5RKoTqb13HQrQ
47/eCM5rhg4oNoMIsM/fnmUwBxHrLR67Fo+f3Qu9lSxcoxIGYLqxM4laaEv1/xbvnrz9/LWV
HoeON+7n5/82EcUP8ZBCd3rgy+8OnPCtWc/ffvJmPN3xc4yfrV+eIcaSH7ii1Nf/0kPatpUt
bTfF9DmOVSGmY9+e9QyaHI5UB40epPXDuRFPHOAv4Ce6CoSQB9OmSXNT0rHzHM2nbYZDtjqf
OQlW0DZYdMyY2C0G3kKpkLa+YEY3JC3nC8FQH5DsNCN4kQV95T5T9PeJE1KVtllRkbGES0/g
/WDYSCemZFnBAT3nwNfH17uX5x+f3359Q+ksFHfYSDY1gIacbsc/Y0Fc7TS5E+pHZ4cCiJTR
XDE+qTSq4fpuU3uYJXDjk7L/KE4Hg0m2xOaLflIxNiJUFuB0obQhgd48ICqgIizAWcRb9dLC
98eXF65gCHmdSBQivoyDcbSd2oJAyiNmy6VQobOCgOdXOqm/QB4G+M9xnU2flzVnF/olXW8q
QgJ8qq5ULLLAgR93dtHEdgVdspXgoup9ErGYWj4SXTSfXC/e9JuldRrmHme6dk8lhZJEG/FA
gVtrffCqlp6jRQCVIICB/IifDsqZCL+3QXHBoqAK6NNfL3wnp7hDxQlZeSNvOmNkj5BzJTeA
kj0dCuqNBlTYbLByp8NhydmaI0his5ouOyRhbFYzdGXmJcopWFMujAGRy+mQbwcKjUNffmob
c5Hs89gJvcSomEPdhIDylrv19bJdUhs3X4yvuiT2rQwE2DAKNyOP90oB7LNwCBN/y5/WWBo1
kOBek9BRUiuFR4ZIrfgkMjlagHeutxmR4WM9JpSfvsQuMTcGNHICZ1OW9Ga0lcWxux2KBCZY
Yckjc5NF9kMymj3scAyNgnHlJ+c/uNYeitw+gka3Wcs5zDPfc0d9FyBatgjx76x+fja4EeV3
My9f392525UqV7v1BKsz30+S7VR0JWsZpa7LTa8HX3/fZGSZfkObIKJbMmiU7W9PkGaC0UaP
+EwUd3n+9fYnF2dvnq3p8dgXx9SaWkP2ILs/02mVyDrmNovcKqJG9zfIqijsPBtd7Ooq24SI
QWy1TXDF5MwLdo4Noycy0DHutaYQ2KC/wtmx1GeJaLPeF/bt8X+ecDeUtncqelyvUvKMO70F
AV1wqEtpTJHYP04meODT+sIBInZpUzkukFrXiMLziR5yhJS9qS98x4ZwbQhLHRwxZbonAkYm
9FehM9KIGK9zjKJ2CNTfwglsXyeFG5OLBnOQpqmIF8Uh6QuppggsJEuttPt3Hbp5tFzHna41
liW7PJUU9MJX4m6aZ/BAB18ftHWKb6TJzgu3Jc0DIg4v8Ras/p6gAnfmay4iS5StLNUOMkoO
7gSPcFPFpUEnouNK5u+zq+e41IKbCWDq9TBvHY65BWEoZkEEmi1uhiuFliqT7cncuaqjHKt/
VKdNqsA3WrH/6MWjfsYbCGwAMJGn/ON2TGZkPkxnzlJ8AqdGf199GQAIFKPGVMiO1FRyjBvS
KW+0jw0Skx3A4jFSoysxxKcSsbCmBk2S6XAuqumYno8FVSYEIcVOcLvNiohyUkUknh7BMvdH
Y30DU7IOiqUGUqxRh7oCnSlmgZT4GKRzMiJMJ0gS6lPzEm7TLMGymqfiXOLgR6G7hcOwBKEe
2bqwSiEfG5ckUYhilrTP4zja3RoHMVK7ZFsB5/LADUeqWIHa3WJCoPBCotmAiP2QRISyOgKR
6JKQjtglBILVez8g6pY6EVWU0oViisMF64OXg7cLbm+ys2PYjXHph10QhttOnjPmOvrFxdJJ
U1tdEbvdTn8PcT7t9F+5+JybIHUJKO1j0m348Y1LsZS8vOTZymPfpeNkNJLApbQSRKB1ZIXX
EBKte7XpiND2RWRD7CwI31KHqy8vDbHzAiJhWZoP8eiSCcsA5bu0r+pKEejBZxjh2koNItrB
X6OIrU0KLJm6FhrmkylgVnwWR+QEjeV0gCeF1CUOVT/rCks+l4VkGDtKjJjxGf8nLfspMwKm
TXzHKBPfTJWzyCPGHZLCUV2TR7RK07Opsgzvp5SMx5kpDrHL9YLDtmBAJN7huGWsQxz6cci2
nxwZ2YjDwFW4M7zaTfvLLp9XoZtYPd4XGs9hlIF3oeDSYUoNP0fYolMUgTAyW97OmolO5Sly
STefZczBoiy2OGpChoQ6r2f0hyzwtgPOxZ3e9aikhPD0e3ostlMhT4HQhiD2EYUwXRVNtPWa
WKcjT1xM4ZFN4+e4a6k98Ei1AFF4xOAJRBBSHCFQFpd9nYLc7URQu0ufszoNKZ/pBJETEUeH
wLg7W81RRJlDdYodMcfC5BZToyQxPrHxQArFyHPJT6LI31HTJVDB7dUmaCwqBKLZxe/R8Jbf
5Lg663zHIxlryIwA0G35RXPw3H2dyUV9q5o+5puTT52Z2TiSbF1HdNzejI6pNV/HRB0cSq32
mhIZODShaBOyNmzS1+C3D2tOcIvzq3pH1rbz6IHa0aYxjSD0/NszKWiCWye4pCD3ii5LYj+6
za5AE3i32bUZMmmF/D/GrqQ5blxJ/xWdJmYOL4L7MhE+oLhUwUWQFMGqonRh+NnqbsfYVofc
PTH+94MENwBMlPogW8ovAWJHJpDIpNw41zUZs15McqSnAYhjtJACihPnngQGHKmuia5Qm7HY
8oprqV+ZhKkihLTSlfeuhK3u4VsVYb0owr4tofje+n4Qun1bFlit6YGNWVm2qIv6hafm7UUo
4i1vkQLTzg89bI0TQOJEAfrVruVhgF5TrCy8ihLXR2egFzpRZNme48SyWwEEJuaXyrwU2PP6
iWvbVqYaobuKg4iYAvGcWD+B0LHwXitMC3SCF8YPggDVB0Dbj/Sb4z1PKxrk3qBpWRRHQd8h
ItVQiO0V2e4ew4B/dJ2EIAKKUL4DR0gZKBL6UYwodJcsTx3zjeoGeajbm4VjyNvC9Tws8XMV
4fFZ1hreGAizWKfxQ4/apa34qXeRzUSQsTkiyP7/YUUUQHZvYCB29KtWwwohjdzbPwqW6fd5
CuC52C4sgAgOl5GKMZ4FMUPFvAVL70szE9vBf0dY4dkpjN7ZISSPj9+Hrzx9z41ZhxSJCQHr
rjaeuV6SJy4iDEhndh66DkkovtexRLR04qHNSWviOZhvWJVBPQRX6D66RPdZjG5n/Yll6PHz
ysBa10FEYUlHxo+koy0ikPsbATCgZWdt6CKfulISJRFBgN71XGQEX/vE85EP3BI/jv0jVmiA
Eheze1I5UjfHc029fF8MCSBzUtJDrJcmBBYqMLa7X5hKbCI9sntPUKS6kVQgMd1OyPHGhBSn
Eint5KEKGYI9uDl0nXHVBrbEUqYjil3nTFDCyW0XaTPEe9JTcL6JvpGcmQpWdMeiBt8NcOvR
lBBRryJPI+MfnH2eNiVlwZsSK8mto9KH5th31BI6cmFdIkwem6uoQNGON8ot3uuQFCUcgMmI
K3fKqCaQQXp4qz3SXfj0DLF6WQuJ8MHjh/GgeyNVYK0g20VDe1m4kOzz4lp2xaN9cBTsMnkM
wQpvs6pUbn+XjLfLc9Jnp7xR6rBQDLcUK7lubuSp0V2xr+D0jlo+IR2LGkYItmCs7ODlWRpx
Q37ODl5sWOXB/e3TX5//+PL6+0P79vLX1+8vr3//9XB8/d+Xtx+vmgXKkrjtijln6A6kIjqD
mLXaa14bW900WKglG3s7h7y4w6aO3oVdr7HNGTuEREd6UCMrX1J7bL59WdmwwTidFK/570zZ
7Em3MxAl9YY9O1GKILMdwb5Cs0eLfYpnSjsw0NgnkWTeImmWIHX7NPkNYZ9vUxF2OGzyB628
awOJNr/cayDet4xmLvI9UlEWu44LHhK3b9HId5yCH2bq+h144xg4QEU+QtmxFXMekqitPxLP
nYmTWS4n//r3p58vX7YBl316+6JFo8MGAaPwaAi1hJ5KuRgq2nLfrFcyun0Ct2jKeyw45YUf
3s1c8OCZL10BPh8bzulBd6XE0YA0h4wRlV0hK+YQwCRDW8qYoUjmGgd+9bpy8AZ7IiHxJfha
RneZzxCzbc8q05GRbMwYJgZobNorgwmZjZS2p/q//f3jMzy9MaNzr4OJlfmytWxDSdBI1idp
EKLO2gHmfqxfIy5UD9e0YIJN9uQefgon05PeS+J9RB2dSbqrhqeEYrzbiid5TlWWZ2YZpZN6
Bz0ok7Biia1muBi77GjzjYtCN82rN5qN13TEJzsFHq64+CHtivvv4AmmQK5o6piNM5GxE0jZ
f9LQSBGtV6Ia/wrymTcr4zmmglj9+C8s9ooBbLkKXGHsWH4G3XBX67yqsSoDdCR9Ae/bpttR
Ix3LXB/ss2yXaioP7llXcrRepNoSAO1EI6FxyvZVx8Wpz2TM4ww/TQdYfKetsE2gagWo+lIA
guZcAT48KUkt6/XyTNEyzPp/JPWzWKia3OIQAHjOBcPLA6A0uVJ9fm/EUC/Aapz1S589q9WS
3ujSHOnOQjMxoOcLG5xE5lydjJzQryWBbcxNJmLxruRg27kbUdJICjs429Bkl6iPbFcbC2zP
chEN1UoVz9J3Cu4aWC4TJqpgmiG9QgcZzGy5NitDMVltLac+Z1DJfejY06zPWFTiOdFtvCWx
DvsIfZYCKC8yQ+WSVBrE0YABLHRcfbhIkrFLS/r5KRGjVjsWJochdPb7nppq9po7Pd7o2dfP
b68v314+//X2+uPr558P0zMduoTEQrQTYDAd+07E3fq1PKb455/Rirq8WtOau4d36L4fDuC9
2BbBAhir1k+tk2m2iNznXbGLNceWVIyghzQtj1wnVH0DS9M91zEpsbH3L8+e9K5dDf/2VDD6
06l0fruFkuHRFpZJglCnt1N6g0yPp2zrm/K2CqHuAtKo2L29TjCJ1Rz1obbobZiouWDkkqMn
JvPjLTTtrXK92L83cSrmh76/+2bmh0lqEwKnJ2Z6U1+HJNyt11WTnWpyJNhlnhQRzZeBClE3
CFcB7TH4Kpap0TRl1VnoOt6uQQTV2u/yQVtsZjPvKTotMLfl9VjV+Jw8JLBLNzMDIgkCEjr3
k07P79RFWzrVhjeUgzFxFkS3YtXTmMis9xvrs/lAXpYly1M/wMbLcrQxu89bFtYjnQSnJjP2
Iu0Y+oPpOMymr61fW26P9eONmbj3Q7HjKOlQiMHcVD05KuXdGMDH4WVy+8kvTLXT33jgMFWe
pW5cv/ZcQmY7au86NUgX/AwocjSZbkNBLU3QazGFJw991dBcQeYJVuWNew8XgwKe9qAsi+K7
RwwVcUO2UYnUaB6Y6KJqcKFKq8qzU12VkbF7C6JhroffRmpMHrqwGCxo25SkDv0wDLGSSSxJ
HHxEW72NbSyTsnS3ZBPLNVRfyWwo5VXqOyFeALAC8WKXvFMIkFri99pQMmGqpsqSxB46imZp
Ae1BKTLcnxXbU3BLeou1hsI0bZr3vyJ4ojjCxsD+iYmOhaq+pUFJFKR450jQovvoXCkaLsPg
8SxjQIJosC2DJ/ZtVUjxFWmvaZpYassyBlsxvDsn1MOemipMWesKadVDs2/DwMV7sU0SPQCp
jkX31yjWPsaph85C0FNddFkGxw5BiCZqy2TA95G2vDxDJG+8qO1VrDio7bDBY1uXJIiarSo8
6iPpjfwIYbdMV1MGDFFprrYYlhtvR3h7KLruSXoTU0P6mT7P9klNRVmBZnV5D/RB4qBd1PXs
6lnamnusJaiBhc7D8b2DhyyJI3TZWFVpDKuOQj52LN03S373yyQyd1QzDg1KvGCw5A1gjB3f
bzxgceZGvodlvtdKdczzI3QuTNqn5+O9sOix7xVrUmut2afoZJOYa6/OrP7aioV7BzGZAmuL
mCqwgabu/aV75zNEkYZnb19I1lbfIRpLgK9OimsRfAGoyIEe0Eg8maFqdODKUgtxWNEOjQsE
3jWzJheyu3KV2Y11sQJbrlSuEBZ6hNI/XvF8eFM/4QCpnxocOZGuVZC1ahT2rWI8H/IFxW5a
u3FgLZoxnV4mYpViDPugbDRwN48+GN8dEgKlbnpa0kJT0VgBvogBBcXCGntYciEc8tTv+Pbp
zz/gEG7nb/t6JOBveyvGTABBABwg8w9utEB5p/qW79jk9zQ/UIzKDWrejuQy7L2ES0y+92QM
o/KiKqXfRw07Mz57wVabakslvsY4hP5tm6o5PokpUuIbIiQpD+A5bbXIwSwoBBd4Uh9FK+dC
Ee7YzbA7mquYoW6EAex7o3rXjrCtDjonSj+CM0q4S0YwaA8bBun4iRV4rlejWDw7FfkHxV/8
y4/Pr19e3h5e3x7+ePn2p/gNfE0rx8OQanIAHzt6XMoF4bTC3QEtDODhtRc6YJoMWPoVNl8N
Ke63bMWU9SAdUyI7afmfGzF1CJqtmkotcUdyLcLARpPHG21vNDFhObgS/65/eKKOHD8UVTgy
ijuQUVjmz77HdoQwMnKClHu3oiRrH/6T/P3l6+tD9tq+vYpa/3x9+y9wPPzb19//fvsEh0tm
64HzOEiINt8/ylDmmH/9+ee3T78eih+/f/3x8v4nc9ssm8CRU/V47G7ueuZ1c7kWBHulK+fK
sWB6t1/FxNMpl7zSCYT35phmR3LE7f/lUMpIByZMp5xRM6XEqmuObSmAPw7G1w+NkOyNMk+h
VKYhqdBbUhfVMvOXNms//Xj5Zkx2yTiSQz8+CdlnGJwoJvqInzngY0JkEKuq7nFUYeEXPj47
jliqWdiGY937YZhi2ueW5tAU44mCZuzFaW620MbTX13HvV1Ep1b3M4T2xMrPKWur3So/YUVF
czKecz/sXR+/U9+Yy4IOtB7PYA1GmXcg6Estjf8JbFLLJyd2vCCnXkR8J0e6C+JQ98VZ/Jf6
+nMRhIWmSeLaZs7MW9dNBWErnDh9zgie4cecjlUvisYKxxK+eWM+0/qYU96C4fI5d9I4dwI8
W4grCgWt+rPI9uS7QXR7p2GVJKIgp9xNPOyQSelSwvilhqB3qaO6TlCyFODB8cNH1dWFDh+D
MPbx8QwCcV0lTpCcKhfTERXW5kqg7HLI694aUKYoij3MpgplTh31DGZjYaTuKQQfIaUTxrdC
f3S98TUVZcUwVlkOv9YXMXyx+zUlQUc5uHs5jU0P5/MpsWTMc/gRM6H3wiQeQ7+3rWVTAvEv
4RDQd7xeB9cpHT+oVcVo47ScaOCsTzkVK0PHothNXWwcKCyJ51i6p2vqQzN2BzEXctQ1wH7k
8Sh3oxwdehtL4Z+IZTYrTJH/0RlQD0IWdmaphsFk3tS+y78T9ndsSUIcsTnzIPSKUo8Hj/MT
8g+bsylFhuh44AU9N2Pg366le0TbW6qK1aMYjJ3LBwcdBzMTd/z4Guc3xzJhVrbA792qQM+s
1J1FBqkeRt7HsTVLjem9PUbjTtLr/e+DXk2yIfACcm4tn595wigkZ9w3x8bc583YV2Ia3PjJ
xw/VFeZWMOeOl/RiwbjfUDNr4LO+IGj/SI726NpW0L67VE+zXBGPt8fheH8RvVIudMBmgImf
emmKjSyxGraFGHxD2zphmHnxdJhuiJuz6KRJYx3NVacdisCyIJr0tVnLHN6+fvn9xRDEZMCS
3eTLTmIgwE0xKGS+r4PLVixItXTOZbZaJdLCulf1aWRxcrFnuww2sQJkqxGORjK98xhEpT3R
Fl405u0Ado7HYjwkoXP1x/JmDsn6Vq3nCtYygZrY9rUfoKfzU1uDnja2PIm83fa+QqZgINRX
8UOTyNsBNHW8wSwskG0uCSYc5Mq5y23HBSdag9fSLPJFE7qOtxOa+oaf6IFM9igx6n0JYXsv
G+yqC2FL7meDvs2WbGJrLlvNv9RM5nUUis5NIrM1IUmbux7HvUNKFasm4K19EL8MkR+EhgKm
oHEyDBY0b+8ki7xQL7EMSZZf41C9eTCAySwJO9BYGIzjIo1PTm52ytskDGz6i0VLnMkjOR2s
plEqH/X4XNbvGJwVGba+7RcnrR1mF5q/EOJI1chqABR9Ta70ihL3j+hk93RZe7zsNOuBl9jR
t2xQ2nVC23wsmKH4HpnrXXx1csMVGCCnIfHDWDFHXQBQpjzV8ZsK+IGLA4FqGbYAjIqd0H/s
90hXtEQ7r1sAscVrV94KPfZD4/Rpiv9tzLe8NKZB53q7Oc2sW6UWwE5+mVw1oyDZfTK28ljC
NUnBe1TFFmpDUffy2HV8vNDubHBBqIw1LKvcGsu3T99fHv7992+/QSQsM1p7eRgzloNzrC0f
QZPn6k8qSV1llvNcebqL1FhkkOfK/gUfET8lrapO7KE7IGvaJ5Ed2QGUiUY6CHVcQ/gTx/MC
AM0LADWvrSYHaO6CHuuxqHNKsLPs5YtNy7VM86IUylMBhmda2/HrkUDUE5UXHAdX9HjSy8vE
Nj+fMXMtCzj/gaKKcXpE+/GPJeYc4uAR2k7OXHSlFGjLsL0Pkj0JddBz1PARKlV26i8tK3jG
KgMLWtrNzeWTDC2/KVik0QtzBEncQnHDl1dXSNK1iW3V7ugVm54wzOJAr7Lpwn0licUHAqwK
QU7rrwV84j19vBRGAWcUMxbcUO25EpTWODNfSaZd+QagLbDjMrxrC4D0T65qrrmSlGFr8JvM
Y9YbZQLi8v66yiyrhGQazMwtn+W+MWa4DyPSMvKM9XUlIc03AyTL9GjJGg8anRlGX9GIhYXq
nXd+6hqN4E/7h5ojkPbfNHDNblkQr02TN6pBJdB6IWj7GqkXkrLYJvRe6s7a3y0z2zMjHRMb
gbUJ4JGFpbUZzy6lPmGmc301A/A+dRz6IERPQAXD4mxXr95kJKtPxgJ094YVxhcgphAeYRAK
ycVipBu7yqLHrvHCbRbb0I1TLrSHT5//59vX3//46+E/HmBszwbESGw5OA/MKsL5fLONlGwd
7Brj1usbfu5zL9Q6bcMm03u06zam9oY94txw882hjugmrRs2m/PdzVnaWdyqQrt92OC9fQfC
RHKwecOGjsETa/7ZF2jvc1xrvch3iBVK8WJXQtUIsdGmsRhuxZXuADmtw61dN67F8OodtsX0
537zTBbVSDWNF85b+a+h58RVi2GHPHKdGMtN6BpDVtcYNNvwW0ax6Vd4norvTLjlK0LwAkcx
yrIvRAOxPqNi1qwHTrP19cfP129Cmpo1tUmqwiY0WHuIX3lToY9g8hVVxPILY0/vkMX/1YXV
/EPi4HjX3PgHL1SWro4wsZOXQgbFCrQ23TtVW74mNHel/+GvUV5jCBm11jRyBRJtgYZOUliy
6tJ781HMXKCdac2SjDeXWvWUVKv+lOpcekvpdFKbsR1hLCo9F0mkRZaGiU7PGZmi++7zOd3y
otVJHbkxIWjqxI9i6OqZAkWo7a10b6LFHAS04RzMZpBGWwo61VLL8tQhVZ8DqgqBtG7UYQ0Y
mCKJzTznH3xPpc/WTqPYZkeiBVuGj3dNNpbcLPEVXpjyQsIWkyCdjdb92VI/M57zQlpS61DW
V+OVwLWx6fZH1qUQgnadoUZpsg3aS+C444V0vd5wTVv5o6afzdRgT53cPxitKyemun4BkVS4
dxxZlL4lVz1jLuRiUo0XNwpVY+ut4Drtxvm+cBwUZ6a51prIyZjz1iS60Z4Kwcy1qpF89xWS
u0mQGLTn3o3UZ+Mz0fPdSCdmjCa+lyBE36h2xgPdL9tCM3IsuBslyY6WGG6Doc5ZhN+1A3i8
cClu6Y/+Z6QY+q7Agx1PDGKCmevA87MbmVnBUOMEdTIr0Z6m3oC28IJhrSIx3ygAo12za4AD
6vl6Hg7mACG3AhkzGW/1IcJ5RlqD8yb29BLuUMwSYJ5rTvm/pI2TGnl2pWnLHkR26gpSVQ0Y
KD0XH6LAqKDNw7psENzLrYAu/GCuJvAGwHbwu+AX4uo3jwuQEUoerQUBjqikFi8rC8eJlgQP
HV+DH5VcP5VZUsG5XbQnt02OlVOQT5a4DTNH39SFaQ9rsFyJWLmMwcebbEdYlX99lzVX8QbO
9lEPqws6Gczt8wcgexaaSey5KRtSOHgWO58W3l1n7fowCkKEZ3Jhg9aC0XPXyN2vb3T0kDHp
BAvuAm4nyvtqt0UXnB5reVAqmMweUVDRMLtpwl+zh8kW8LfXN6GLvrz8/PxJyHFZe/m5hAjP
Xr9/f/2hsL7+CSZ6P5Ek/62FgJkrV3IwKEMN2FUWTui+YQBgjxwHxFRidD9Iptw43S1UC9Tm
tHynMMVUGjS9kIdKahOuFqYhu3b7klE2yFJfBvXm5m4naDupB/EuIs915q5W94bJU5n8yn4Y
TB/HfX+tg7A/j4c+u3L77AU23pRgwF0VV/1M6Y4fC997ACdbn2QdVXXnrlsKNJXZorPrOkuV
Z1SuuXAEz2S8pbvVm5O8N0iGvmyPxPzu8zD2ORoMZekDuGWc9pQPs3s4eQuPhlBa1pUsjae7
+nsLWE4u46WnFdoOgLp+bPfStGPEbY3+n7EraW4cV9J/RfFO3YeeFklRomZiDhBJSWhzM0Fq
qYvC7VLXczzZqrFVEV3/fpAASWFJ0H2psvJLLMSSSACJTI1tYeqPd+TgRObW2qZijpN5i002
H4IuppoHYRXxvMiN8K3YCKidmg/ow8wzHPcrCPr+SWGYhVhtHmZh6Mpy7qGhKRSGmY8nDQM0
urLCEKK1yeJwrj8+66FV4sNp8Eimq4ZrxqWdacyCMAuQPpJA4ALQVpEQ6lJb4zC1UAHM/GyG
1oMDITJ+O8CKx6PBLi38zmGp7wO0cETUUHgCNEyawqA/B1cRPFCXyuD45oWHj/8OQ6ciYIcD
MqY6wJlj4Jk7th6YoYJDIKj78oEhDDI0T4iT4NvbOQ51S6klclFGP1z9Q87FP8lSKJpjE0tq
oli1uTI0JjylzYhu8tVjKVt4+BTjiCNEy8AQWfvxnm5uye90fAB0GDqkNk0+xxYcMI0/1Q/B
NEBnFt9DL6NpNCaNBQtX64mduYDC6cyBzBfOIpeuoAJaoYvg0xVZMuLhlLS6TNG6sDxa8g32
Pk46y6mxfBTmhG5oo96H9Ux8F+HNI6QjAFhESyeAd7kAl4gS3wGjqfCRAiA8H3YB7iwBNBx3
KnAwnVvOjZx84/oTcPFWJK6SAPtEFxrY3BUGb1KYLYLG4v+NtgUArqWuh8e/kc9JVADU2Vwe
Nln5ws7Zc8TZUFhQd2Qqwyy0S2WbJgut0w2B0E1O7KNMBcEHzIDW6UY+17YYhD0p4f/K18Mu
jn47aKH1utu6fKb9i90Kkj/L/cA8Qe2BOaYpdwA+sXoQbw6Wz0LVqcMANCTwkdkI9BAVWgzs
Ton7FgB4GsL80HFdqfG4YkwqPIu5I06ZyjOqP3GOzskCljhcoF4FNA4fbQkOca3+k9pxjWDm
jelAzZosowUimZtsF/hTQmMf0bsVEO9xlQEdLwND4CHn5hqDf5h9Klp17rFTWZ0bv/E3+JL4
4M1Gu5gFxPcX5um1QKRW60DwDV2bEC8YVeeFg7oAmbz7PAo9RJABHd+uCWS0LM4Q4VlqN/kq
HZPtQDcvEgY6IhuAjiv2gODRglQGZNgCfYFOJoGMbYSBIUKEIqdHmA4o6fjk6DB0XoCrkCle
dTMUoILgcVFVBnT7D8jik76HAHdobSJ0O/klCxyulgYOcea2nFc+0pygri5CRByBvyhs5y3o
SA05fT5HRm1BWr4nQWYOAOEMHRwARXgEbpUD+x4JoP3WVASCEzsv54Anq8Aea88IXBnUyJGJ
ZNjd8bvVhXZ0qKWTmgVczw+ngjhsVlsqHJuaVFuB2zdrNLH9lWy1aPE0GSLbs6ZOi02z1dCa
7O+/Wyttd6fTH5Cy7+fnl6eLKBg5JoUUZAZvXJFGFmBc6wrWQDytsSNeAVdVpoh6QWrhltDM
Z5VmDxSPUA1wvIWXryMw5b9G8FJEKB/BW9xVLYB8uJAsO+pfUdVlQh/SI9PJsXBUY9COVZ0y
zVQDyLz3NmVR4/GbgCHNGW9YPa80S+MyN2hfeD3M9tyk+YrWmCGvQNe1kckmK2tatlYtd3RH
MvTKD1BesHiKrOf1cEz1gbgnWVNWZhV3NN2Lp8/Obtkca5fLGoAphMjRi6aNQfiDrGqi16bZ
02JLCp34kBaM8gmmm64AksUiPpmzknjoKIkU5a7Uy4E3VzDHzMbo6fCjwv3LDyz6bNPwus1X
WVqRxMfnJPBslrMpDCzdTIzut2maMfdUFnbTOR8iRgvnvHNru9lyclxnhLmESZ3K8W8lo1w2
Q2AoVy3KgsvD1JiNeZs1VI5EI7+icY3dsm7SB71zKlLAYyw+FTRxrpBdbS9Spw3JjgW2RREw
F1FZnBhiRBLhxc5PjK7a1uuFdQx89GGGEypLTGsj84x/ELymjq3pXtXgecSRIRehVpN1D9X1
r2JVmiYiOKBOblKSWyQ+6PgqlTIj37aostYg1jk1VjjwgECYKnEHkjHERaY5qZs/yiPk7OzG
hu4wuxIBlRXjX2bOXXjMusGfkEu4blmTE9ag5m/A0sJSfqpYYNZ4T2leNq4V4kCL3JAvX9K6
FA2n3qZ2NPfc/nJMQCeyZqOMEHnattijQ7GYZxVTNSlMx+gjYBkaz1CQNKhxCdGKDu66+jxW
V85WvV9v1+frBVNlIMeHFZYjIL0MGyr9Sb4m23CF3rsQc3wX3FEb36W59NKSDbZVagFKpctt
TE/wxoyrm/Ltm6L5cbwzFtWJncHhT71luMiAJyfYCbYwnMoqetLinMusisIwOxdWWDUsWYSd
tnGiIWahhm2ZmkVRlC0EuivSfe9RsO/x/OXj+Xy5PL2drz8+RAd0NjN3jRmy6CMTgsk41f1R
AbzmGdOCNhBpBSQNOlNFPpqVrqO+ZbMxC+AkoRC2cZPx8t0JwT+BCEeaHrgwKCCsabvSWxS4
1ixHOo2JXtuktQgVh9t9Scu4pmQtl8FFIiOq/q+v52UEUr3PrevHDSzQb+/XywVe0ZiRUsRA
mC8O06nV36cDDFCcmqw2MakQAKLO8W1Nyogx2iSakQZsTXQo7cuxqTVE8+QNemqsISDwpoEx
JjwAOppOsK1ZhhfpqFF5aH1vuq26r9fKpazyvPkBIOeoW/MuB1OkLfruTnQYxJP3Pbt5S7TR
y/H6tl7g2y3IsshDShjI/FNK8+vqiMzn4HfEXXVI2QUd1AU+p8OzafGqFh2NXTDR+PL08eES
8iTGjISEvAHLdt19ZivCUroSNPmwUS74ivvfE/H1Tcm11HTy9fydy+ePCZjvxYxO/vxxm6yy
BxBXJ5ZMXp9+9kZ+T5eP6+TP8+TtfP56/vo/vJSzltP2fPkuzNNer+/nycvbX9c+JXwzfX36
9vL2TXHmqI6CJNYiQ3AaHaJrqF/JqbtuCLgGHWeBmI0jsCtghpABScECY30AkshTHz+56Oyk
jnV2SZbcMvzm5enGm+V1srn8OE+yp5/n975hcjEacsKb7OtZic8oupmWp7LIjmY/J/sYu/zv
IF+vDFC0ymyevn47335PfjxdfnuH5zhQ8uT9/H8/Xt7Pch2SLP1SPbmJTj+/Pf15OX81FifI
3XoJPSDdYwr3mgRMTQ3vVHLKWApnWY6XHXppsBrSMkFtGUSPbSnXrdSn9yq1bw8t8wHMmWsa
DSw0Pzhyvh9LGYJyMddHd0+0pdIAQNzRWj7UGiaR6BArnKeYhOIdhymKutcdXbWcLduxySO/
z7gIrWNY6B2t1HPVD4GnP0RQUPtIzOaJt5o3DgXZb/lmbZuSBkXBLEE+ZxYW5ChPXPFV6eCo
XHeodcoxixCFL82rdINmv24SyluzRMEdX21qR9G00u33EY4azTRNNu6v7UG+/8OrG3l+4Lug
MDig0EY80kYhWu1xetuidDhsrEhxqhIyhuNYpptxq1C5Av9PsUub7NjyuDm1rgYQD7xxpGSL
hep6xsCimQM7tM6eKsgud3xnlfnBNHB8adnQeRR+Ml4fY9LiXfnYkgw2VCjIqriKDqGjZEbW
n0gCRtO6Jnta8wnJGF7EMV+VLuHV4Je42oRdpTU8dxyvyH7vaFp4x1Q6oLygRdq4mp0njNEz
XIXpACcNp9yVx56y7ap0ODtQ24i1HvqITO3HxneU0lbJIlpPFw4Pf6r4NJWjYfHRd6zoKpTm
dG5VgRPRqDRCy03axh6UO5ZaGkWWbsrGeVotOJyaei/R4+MingfGQcJROKkyluxEnqRonEKq
802ncTwh7oE653x3RFBP+ZrvuQhrwHe+6gREfCblO9nVbmOIvMzQB7h+VMTpjq5qEQFOr2a5
JzXXhKy9AGw/nPtAljZyf7Kmh6atjWpRBmeya0OAHzmf0U3pF9EoB0NuwiaV/++H3sE6Kdky
GsMfQYj6PlVZZvPpTG8IOHQ98TZOpVMqoxe3pGRwV6R3jeq5X7Q5nN72h+lq8gNc9hl7yZRs
shSy0Pfv/B+Z7zAxqn///Hh5frpI3R6fGdVWU+SLspK5xSnFHH4CBkdSIh6QmrAh210JsCMR
qI+B7qa1MyzmNUDP60a+QO+9DeF6BL6vao4VanwGyUCHPbE9bbSw03rw4Wpfs/SRS4ocy6VD
WRItIsVCpCdLX9/3y2u4nO5eWw8F8IytSSF3YHn8O0t+h0Qjh0RaPq7tI2As4bvTe10GEp+q
QidlTHsjf8ermJr15Rp7uT0ZTaJxdEmzZo0f0QPPfsXQSNzQIHSd8zzMcnvnN65PrKyaxqsF
Hn6UYzsIbpIY/S2aEXcRDpC0rndl2K4CPcIXUFu2RUOKCijZ0jkfhlYiuK0Ht9vGCS7Kg085
8fWPVp9v2aNO6J1sViZn3jxotUpzxnUKTJOBM2Q4KlWcY8DBqXg8jtFO4o7yXpqCiDvFuMzK
2ki4qkH4F7BWbvcgVIvNPaQI3AZbsk0kswO1CzIhjecvtVaX9CKY+uES9zcjOVgwn4WYYbKE
9/7UC8y6wzNYP8KooUmN6+nUm3nezGieNPNCfxpM1bMoAQivRlODWxB96/NsD0gGCq+wrOzn
S/2lyUCfopahAoYYeWGguRtX6e44moJrHBURuXGz0gFH3zJ1aDg9mOOBE8PDwfIVMWC+hxED
hDj3LWKkxWLviQvVQ0NPjOZm94oGC836dtT+bshu47nDcFQw9EGQG9K02IWLYOocXb1axND8
woTEnj9j0yg0a6kGHBSUe7xgnQ5P8qZWyzVBuAysz2tiApHj3J/XZHG49FAXZwK3A1kOkyP8
2/iEPC3WvrfKY4MZ/IzxeWFQKQu8dRZ4S7O/OkDa2RoiSxxM/3l5efvPL96vQuepN6tJZ+Dy
4w3iDyEXvJNf7pfgvxpCbwUKaW41HDuyuMStveS3ZgfeP24cAgK5UQYXmMcG3y3KfqG8jdtu
krk6x442KBuwCmxpzTZ5YNg9D23bvL98+2avB91lnrks9Xd8hhMhDeM7YbYtGwe6Tblet9JO
/jRc9W5qNEvHEVdYiCCNhcQN3dHm6MzDFJwYT39vK+6oRXu9fL/BEfrH5CYb7T7wivPtr5fL
DQJfiQBHk1+gbW9P79/ON3PUDW3It4UMPPA62jgmvI2J8xMqYhinYUxF2oDnKLypK2G9WThL
sJyYDGxSD6YriG6DhittYuFj6KdKMNQcIG1jrlUdcWLvvPBf77fn6b/uZQMLh5sS1RYBta4z
gFjsuGJmzQCOTF56V9raNgHS0KJZQ1mOG42BBfxZjXPwb3EyJPUO39iAGQZUELle7NP1atto
5jJq+zgPWa3CLynDdJ47S1p+Wep9JemHSFUce3rCOheZKP0U85Hf1kc83UKPsakhp32Cb2EV
tjkerrtj2B7zKJwH5hABaCyidsfCl8X5Ej3HUzggcDWWv9vBpcaxjOx2QWJOd0gf+NcqrWZh
HIw2BWWZ5+OJJeTjL6sMJjRkdcdy4AyhXekqXkeaaqgBU7x7BBbMx4apYBlJHY0lzmdeY4SO
1pBPx94qWXDFDw2L23M8Bv4D1t5dONuRpEPMXHsEWFGhO4DxjcxS9UbaA+tcvMK3EtR8Mns4
PYw8nF+Nz9DT05zvEBfooNxxZKyFgEHflN2RKELPHYfPDXOkDRIub6J+EYcnZbpURXp6GWDF
CwTfUGnCbWzCCQZkOgB9hswGQV/gUnKJ9JOQTh4mJJaLKdp/M7xfQXSoruR08eej89b3fLzh
4mqxdAk91VuO0kdPb1//yQqYsMAPxhpcVgsVxmIkLuOx1PVhLqMb6XYgn1Qqzktsv6j0nY/J
cU7XQpqo9BCVaLDUReFpTXKauRSxjm8x8/Ec/Nn0kzEtNrNjs6558BYNwdasWdREc1yeRg3q
1EVlUN+PDXSWz338W1aPs2h08tVVGGOTAMYBMpfk/h8r6cuxeMwrS2O7vv0Gu5NR8QLPQgrV
KfcgkRv+11R989kj8jAVmaMLeU8wvNhi57cPvkkeLX9wjH73HpyTu2WrRbPVaQXb4XeNYA9l
hQfhxJP03qcV0ztlF2eVRZrplTiVa+VGLuP7FbDv2XBEZ4Mm0hfuZH8iBwogrpsLB3BQUXu4
0BzcLwt3g/dSqAjrRTltrlxrVdlBsA191nkWkwPklFRaHsJ1+RbyOOWbXNkC3wHls/ai8kbY
+I5qEczrB042v87EIAnqJpLvaOQ3DZ0ZX17ObzelMwk7FvGpOXRtpI4NdC/D6at2bRtIi2zW
VI/0yvaCjt1GyXy0vue/T3m5S61AMx3WBzFnFrJNSeWgii1mmhufdodjs2n7+Ez6dw7N1R6s
+2W4Uc50o9xtMoNhjHYaDErCYkodt+Tbxps/qK61OJuvXTxWIuqPvBI45XwDTzb4KVRXs9Mq
49MPe5WhMmgW/Argel/V6iexLTi+oPi7JcAqIbPSgta4W1TgSSC+us2jcJBUiX0BBJbWcam/
aBGlxRQztVM4irRRb9EhTd2q5xpAytdz/akwyLjeAzSSsYwKfc+jixKdp4UWZKsju+66OniX
VJhQ69AV+MBVz+47unAzbtcgV03gFGIf6elkrRwdE8gXiMuZ8sEgPMsr2fAKqo1D1/EOHwA7
YUIJzWDf+oIvyY/rX7fJ9uf38/tvu8m3H+ePG+Z48jPWvl6bOj1qT0s6will+qP7hvBVDL0/
hpiKvV273TRcNzht99rNSc34fId4MaoLdXuJ7imnilbq81UIgBBnyqs3/gPMvnkXP7SVzQhO
kCveKUoCccrcZXKfxwN1LJ6GwtUfTmDCQuNaztTrDwWzDjEUjNEwQP2TGTx6RGUd9DD3CDrL
bOZoA44tcKmsMMVJnC6mn7QAMC390FHNmInYWDH+xFatkJ9XDI1xDWizz+ZT3QOCktaI3IKx
7GJMM1cYVsnCdJOuoGt64NMexMRnBa34/Ebe+9C3b+e3l2fwmYuYqfWBDONNizwiU1HbCsHJ
5oerf8TnGAcmW4Sd46hMB2+qB7bWwQg9COp5mrgdZmz/Zg9rMkWz2PM9dZGVul2C3Lters//
4el+vD+f7cYWNz2aFi4pVV2uUqz+Ah6pO1estHcYPd2w6BdPrcEqn4u8Zj4zOqd3jYFVfRDG
hGarUjmYHgRzvm3VkdtvKzgzJtNlNr3F2v17+chr+5eN9sXC+fV6O39/vz4jO7EUXs3CpYG2
tRyoXEikmEVZ31I7vozUIrnyTBQpUFbk++vHN6QOFd9FaUc1QBD6G7Z/FmChLI2SIrYtG/0t
tYkAwS5Iaglop+o1VpZdiOmyN5zfy+OiMp78wn5+3M6vk/JtEv/75fuvkw+4C/6Lz4i7DZhg
Jq+X6zc5UbQjnK50DJaBut6vT1+fr6+uhCguX2wdqt/v/r4fr+/00ZXJZ6zyGvK/8oMrAwsT
YCqe/kyyl9tZoqsfLxe4txwaCTnMymiTHqQX1RJe5GeZea3dlfnPcxfZP/54uvB2cjYkiqvD
IDYMykXiw8vl5e1vI099T76LW1ViYimGl+L/aEQNgkXoeus6fewPY7qfk82VM75d1cp0EFfp
dr2HnrJI0pyoMYpUpiqthVNz7dBIYwCbasY1PDw9mCOwijhTQ+SSXWrWHLGcvH/mKd2lBWae
nB6a+H5fnv59e76+9W8lrQe7kvlEkljGPlKERA/V9EtZYLuZjmHNCFcolSOzjm7a+3Rkrn96
s3CBBTa7cwRBGOJphTUMuvx3PFVThB7q0KxjqJtouQiIVV+Wh+FUMSnryL0NMdI0HOLzACyx
fdTMkq8m6uWq8GOfrOHJk/AhOWQnlRW+rUXtdqm6/aOwfZR7OXUdHKinGLOvVHDtoEyndweD
r2i+YMhYFqx1KBac8WFN14Jdz7+zZFD3oFr+8s81tiVXkiu6ikwjasJgYg4svp4x2yNBGk2O
Lu144bzuYrL1p3Hk+fl8Ob9fX883bTKRhDJv7qsWdD1pqZIOmRajvSPo7u16oubXThAXvkVA
ufT8VjnxIm07wik+Om45MFP9t8rfVnZA08pd5TGfePLRIE4181AQLaeE+HpdExKgOy0+autk
qlzjSMLSIKgH+g8HliyNn3rpkmS45H04xH88eFPUY3geB75q1prnZDELQ4ugf35PtCzByWKO
+vzjSDRTLRo5YRmGnnE63VFNgnYpmB9i3n3YBpMjcz/UvRHGJHBE3moeosAzDmYeohUJp6iW
YkwcOZnenri2B++jv758e7k9XcB8iy9S5tSSboDBX8X/U/Z0za0iO/6V1DztVs3UGoy/tmoe
MGCbCRgC2HHyQnkSz4nrJnEqcerec3/9St2ApW7huftyciypm/5Uq9X6qHy61ieDmVOw9gLM
EYNwImLGds/EHY+Nou5MWmgKYRSdTY2inhj0EhBjukT171oliIKTv/BBqEt60Ma+hsNvbPye
1g6H8I2DEN4hjpKWMyCm04lRy0xMQoEIj/G2yWy240Vn3lg2gAXeqJ6HfDHps7/L3QFmU2Pb
EKHTqVnkotYI8Erv9FQZ+jNkOMvcp9nso/U2SrIc1ahVFFTcq3gVTz3+RHpB7SYiT2qviOwj
2qbJ7E1SBa43kSpRmClhIQowG1ulZ5IghTKWYfmBIMdwfTSQkj0IYlzqQI6A4XjIALOxw5R+
aZCDRCTrKxHnudIDMWJmNAZuGq3rR8cetTR3x+6sdw2s/c3EeILucOpKXOZpXMd9xS8k278n
AQoxKUqoJOo0CzsLcsIgU1hrfVVXqs7B1JHWb4vkhjkt1CsHrrSUNN5xnSGxJGmAg2npUDuS
lnZaGumhG8TYKceioZnCQ100GKyGTWY89riGToeexKEbJMsI2VStrPaNiqok8EaezN4aUy5Y
nyIvUPrZocUMtouxM+BbdxvnGIEDA7waC7G50+6syWyPu2tHGz38Fp+n9zPc4Z+phhXkzyKC
szdhocjsEo1G5eMV7sXGmTkd0vNilQZeo/buFC1dKX3JfDm8KQdGbcTAbp5+lfggb6+akG8S
x1YU0WPWkFBJLxpPB+ZvUxpUMHbiBUE5pRwh9u+4rJOn5WTAIjwH4XBgCEQaZqZYUEDtrS3t
YIz2WcR4LVzmLKtNXnLr/u3jdLYTp98aTW0jcnxubURgipucfyx5pkhAl0VaNiNcNr3SGrgy
b8t1lZJCgO5KaY09USVyAgw5RkP2WRWzYpXRGBnH5tXANdOldR/NToFNs9dLXRYHR4Mxe90F
yFCUmhFB1x789lyH//YMIRAgUph/QIxmLvpHlJFRAOF9JYaFSTyQpdPR2PUKU+YbMXNj/du8
MyB0Nu6N6w/oyUgWYhRKOvgRwVPIKUhPwyeTQcEaCUInkwqNoBvAmqYDmW+HeVahm5Ykv5We
x9/0QQRy5MsSCkdjGo0kHbtD9tvfjRxTRBpNxSMURBN8nTJkHG8myjFwLkHzB1NXeZnxAwsQ
o5Eo8GnkZEjZXQMbO6TZ+oAKffbwcHXT6Nc84CTP329vbcJ4ynAsnEIuMJrV4f3p50358/38
cvg6/htducKw/J88SbqUper1Z3l4P3zuz6fP/wmPX+fP45/faHpDt+usTZjAXo16ymk7z5f9
1+G3BMgOzzfJ6fRx81/w3f+++atr1xdpFzupwgXI7LKkq3ATR+TX/98vtuX+ZqQYW/vx8/P0
9XT6OMCn2yP2ch0qnfGA8yoEOUPjSqeBcv6eRuHUwwp3RaldiSnEGxl6oaUjFl/s/NKFKwTl
8hcY5/4EzvhZmm+GA5oivQGIZ8fyocjqIVwRzZOqQaHV8hU0evmZ6GoJN5OBtHfsmdHH9WH/
en4hAlEL/TzfFPvz4SY9vR/PfCIXkedRoUQDPIPXDAdXrmOIdMVVKn6aIGlrdVu/347Px/NP
suIuqyV1h450gwlXFb/TrfC20HOnA5w7cOS+rKrSFXnqqtrQY7iMQZAb8d8umyirH42ZArA5
9Dd9O+y/vj8PbweQi79hXKyd5Q2EbeT1bBSFm4zMreiZKtTYuZKqrEHL2bsWu6ycTqietYWY
O6mBch1luhtTwXi9reMg9WDfswZSeE+aM0bCpTTAwPYcq+3JHiEogu1bgpAEvqRMx2G564OL
TKDFXamvjofsOLyyJmgFOKXKRfJNgl6eWbSf7vHHy1li2n+EdTl0DElpg/oXcWUlQ2ZeDr8x
KRIB5GE5MyJzKJiRluaCLCdDV1REzVfOhLJa/E1PlyCFgjTBIAKoiAS/h9yZJMBICqJdEiDG
3PRrmbt+PhB9ATQK+j0Y0Neiu3LsOjAkPLNye7koEzi65Gy/jISmS1IQh0tuf5S+4zqii0Je
DFj4hLZiHYuCC57FaCAq7rYwv17AugD8HPh/P7NHpHTfWGc+d1TK8gqWBhvlHDqjYm3I0nQZ
O86wJ90toDxRe1XdDocs71VVb7Zx6Y4EkJGUqQMbN5QqKIeeI/u4KJzoIdmOfwXTOKJKRwWY
GoDJhKusysQbiSkMN+XImbrkqX8brBOP5SzUEJoUbBulSmPE7v4KJias2yZj473tEWYPpkqW
PTl70da1+x/vh7N+KxHP7lsz3xRH9Vz4bgezmcwu9HNc6i+ZOzoB95wglIILe/5y6DjsYSwY
jlxuFdmwclVaSWtX1sEqDUZT6qFnICwlj4HuyaPZUBUprPqBXbmG99XdYK0sea3hszSLen6/
X8/Hj9fDv7hhJep3mixKbRWUsBF6nl6P78LS6A5AAa8I2lATN7/dfJ33789wWXw/8K+rsNjF
Jq+6h3V+7KIvPkF1H5Wrbg7Pd5BalTvh/v3H9yv8/+P0dcTLnn2kqmPAq/OM5Y34T6pgN62P
0xmO/aPwSD9y6RN6WMI+5e8ZI89UFHhTxwRw1UGQe/LZhBhnaD6P9DAmRazlgwsby5Peu0BP
X8VxgDk5c9uyNJ851qnUU7MurS/mn4cvlKoEYWieD8aDdMnZR+72eNOEyQq4p+RHE+YlO4BW
OZ2hOMhxkNglMnEcrp5RkB6G1SDNh/c8AW4lvomXI/OFS0F6Bf8GLbMbRNIUjQ0D1CnARKgo
F2sM47fViF07V7k7GJOCj7kP4t3YAvDqW2A7Oq1yxJz1i1T8jgHp7cVQDmfDEd/CJnGznk7/
Or7hxQ439/MRmceTsLqULMfDU8WhXygbyXrLjv507sgOyXlMMxEVi3Ay8Vh23mLB8k/uZkO+
GwEykk0hoCQRPFF+GA5oXONtMhomg113jHTjerX3jSHz1+kVoy/1GUmQm4dbzvo0X27puD3b
/W++oI+Ow9sHauvEra+Y9sDHkKgpydCMWtjZlJuewBmf1ipabBZkm1wMgZ4mu9lg7HCViYKJ
01qlcNEgC1v9Zgy6gmOrR0RWKFdOhICaGGc6GouDJg1IJ7pXJPIO/IBdH1OLPQTFPXEsEKcj
fVZRzxN3NVdLOc/WcgwsJKiyLOkvHRWSU2HTUiM0rKoNIyU1Ebcv8m8aYSIgaaPdkyAQ8EOL
DRzUOjUTkF+lUVKvkiAMmiouF50OXYk2jqrG+8Asgi7Gi0r2tkF8nEpOZAqjlzRvYOMG/kZh
KobddGR+WT3099Rd3bM43Q3IzBSoZb3i7ubp5fhhpwIFDDpnUN/sehETJ8t46o5IsCB0GS98
LEYOk+JOe8wF+Ub0JAk2dZ/bJ3GIk5cpOjkuy2wNLDoDqfJviFbV39azqrY9O6IjyYP/oD1I
BMtc3NXWeHdDlWOKDeacqK0CqjyIXX5xaOL3Z0HlE9MuOLGjiljyc9cTxM2LIC1ht+mHf0lF
oci0H/yS5HbVcEznrgLn/d68pmK04vL7zy9lRX9ZOY17bRNO2QbikohBCltZaVOSZWqGQG7H
Ikjr22ztq7DVqma6wKHOJugC8KWikC3XKVXI2kYxOhI+2YIU5yfbzPwwsoA43U3TOzP8LCNL
4x0MatfzXrp2a8ihbJEi3/m1O12nKgw370SHwlEy+gd8RIWz5l1L/TxfZeuoTsN0POb+aojP
gijJ8C29CHsSlyGVMlnSkcF7Gk0oaOoVRDUpHHWbGQaN3x3XYXp6vuY6anSQYEm+0oD0FH5Y
wZsBlOSBxRDzwyfGf1Fi0pt+AZE8jq+RkW3n92RxY6IH/tbHFVx974tYzLeoiVJfH56tqfj7
8+fp+MxktHVYZD1Z/1ry7iLkE985FT7P+Gmeqw0QbdPKkObSLND7uMzrCN3b0rZ5q/ub8+f+
Scnk5vFS0rDv8APdDSt0XmeL+oLAeIHMOw9R4SZNJW6BuDLbFLBnAVJmCTOoINguVqX4dIFs
kKa8biHmWurgy0qKh9Chy4qEeu6gsPoFaF7F/MRs4FY4lssLlj3aba3oG2IFWcmLWsjfZSGV
U6W485XHSbosujJl32OUQRhsiRDfIRt7t5L6yXfIOIi8QYOzG5D6wWqXudc+Py/icBlZg7Ao
ougxsrBNW3KMEaqvEYXR4iJasnwk2UKGt245NqRepJEMxT7ROWE43dS+brZUXTPsSvyFFF21
Q6/jrGyWG4gk9Xo44M9FHWFfkIpFKeolMJw5jOPu8uhFNI+Sd2K6Qfvs5WTmSu5hDbZ0vAGJ
SoXQxp2KQJoYF5LK0/IpztM6y8k5UsYZszjH3yim9QWYLZM4ndPEwQjQx19QFYm5pwv4/zoS
sx/BulMpBOnYA+e62/hhKCZyuDhUwx0GhJa8SRxyGVEr5V6rj+P+e9pC5/gKF091zJKb+NZH
tUgVwSyjd0FJfacQlJUxzEuQUEc3vNctWJyaFlbP0V8dBlw6JjFmUI141KpQv3E44tDs+YFR
SBWUNYhtxYPOHET5Rolp7+TAtouyCzJ0USVqkMjaFUZ5YJKB8M1ARXebrPKNnxhoRrlPq3Ww
YO6bKn1kQ3bvF2s9BKy0cb/VwArY2WXt3y3Sqt6SaGgaQKQsVSqoyHRh9tZF6dX02Newms/h
Avpci451GQxu4j+wKi4wTL0eF7Dk65AmBpcI/OTeh2N/AdeZ7F4kjddhxMK3Edwa539n+u5L
lDuYRtXJvyNMIxitLH+wpMZg//RCI6Et4IIVrCK+6BRIxZqXJemWYhWXVbYsfFmt0FL1ZThp
8dn8DxzDpE1I3JrG6ZZqWffr8P18uvkLdrq10VWYAj7jCnSLMoEk5CNymypxwiyjwY2/JApt
eV8FeL+kq1EBcx+jWWXruKK5MHQchVWchHDfu4Bvo2JNF54hwVZpzjulABe+Jav/cI34VVXY
BWHlhJFot7raLGF/z+nHG5DqEDmzonQR1kEBUiiL2oN/LruuvXfYU3Zh/6UOtKYDm9HNV2BA
sLaulgcrzogg6nrcApvoYTJjDWBtGksD88vKrrDA5e6z4pa2TFIN0qiA8KONzf77L8ev03Q6
mv3m/ELRAQy7WhcefexgmMlwwqu8YKjpFcNMqUWLgXF7apuO+mvrawFmtyDDbuCkxzuDhEXH
NHCSK51B4l35uvRGZZCMr3x9Jq8CSjQbSk4+nKR3ImbDvolAX8Ge4Z54vLa4zHBR1dOeAo7b
+31AOWb3VdS+ni61n3L4p1qwa85Ei5DNaiiFxHUofiT3edz3RcnXj+Jncn3OsK9CMSAXIxjx
QbnN4mldCLANh2E0zCJjWThbcBBh2iSzRRoDctamkA/5jqjI/Cr2paQcHclDEScJ1VK0mKUf
yXCQym6lJsFxmIA0e+Vj8XoTV3YvVedjf20uRMSB1H9rZAZjNJtqISYhXce4xi+tbwD1GkOT
JPGjXymHpSbWJlFZZPX9HT2j2M1BOw8dnr4/8RXSig6KWWNpJ/A3CIB3G8x9qAQZWekYFSUI
NjCjWAKE5aV0qFTFBmhC/ZGuvc2d4AKnH6/DFVxHokJ1VhbTyijY4OUBg1KWSjdeFXEgC5kt
rWgXpFFMQEA12sovwmgNzduoEJb5Q40BHQOfST8WER1Eu4YFVDE3kq9eIUdGh8l8ZQEUJGq8
82gVmtxtkHGVDhufYcNoFSW5GAWjTcByGVKfbJ+kTH//5XX//ozeHL/iP8+nf77/+nP/todf
++eP4/uvX/u/DlDh8flXTPLxAxfZr39+/PWLXne3h8/3w+vNy/7z+aBMAy7rT2sgDm+nz583
x/cjGvQe/73njiVBAGNTqpsBXHwL2Ixx1eVU+XmV6jEqWHgaBYRhgdvuui+RLKGB6Wo/JN46
GaH4LYytg8uGJLnp/yjG2QEe1Uvb6k3k4WrR/aPd+fqZfOAiUcKOzFrFUPD58+N8unk6fR5u
Tp83L4fXD+VTxIihe0uf6goZ2LXhkR+KQJu0vA3ifEVv9AbCLrLyaTBPArRJC3qXv8BEwk4M
thre25IWc2F4DeI2z23qW6rramsIslQghRPHXwqD0sCZRNqgzDxZYsE6jEvMVV8bIZwbquXC
cafpJrH6s94kiUWNQLvpufpr1aD+hBYYdvIKDgkLzo+9BtiFNdI36u8/X49Pv/3j8PPmSS3i
H5/7j5efVK3ZTm4paTUbZGivpSiwGxQF4YqeXx24CK/VXqauPRSbYhu5o5Ezazeh/31+QeO8
p/358HwTvav+oD3kP4/nlxv/6+v0dFSocH/eW5szCFJ7JoPU/u4KznjfHeRZ8sCt0bsduowx
mYKFKKO7eCusuQjqA6bGwivq8H7KKfDt9EwVNW0z5vboBou51YWA6wA6qCR9dO2ZW1Unxb0w
b9lCevLtlvA8EMrsenRJ7faOHu4LX1K3tPtl1T/yIQiY1SaVVhgGlLMGeLX/eukbXxbQvmWP
KT3t2w5hP03gVlO2lqeHr7P9hSIYunZJBba+vNutWNrVBjxP/NvItadLw23WBJVXziCMF/ZS
F+vvHeo09ATYSFhqaQzLWxkS9ISoabhLGjqunOSKUPT4/FwoXNM2zaKQY9O1W3TlO/YZCtt9
NJbAI0c6QwAhKTQ6Xja0q0It+DxbCgu3WhbOTA7e0lDc5yPuvaN59/Hjhdl5d9zJXhUAq6tY
WETZvQr53Yewcq62q8xPI7hv+kJ3Ar+sZEcMQiDGq27OmagUal2ov9eqLf2k9K/NfMvW7bmJ
ipwlROzm0d4B1X0mDlgDv4yXnqLT2wdaEXMJvu3nItHaVbMnyaP0iNcgp57NOpJHz2o8wFY2
63kslWyhbWzhFnN6u1l/v/15+Gwd049NZA5j+azLuA7yokfzqvtTzJdt7gABIzJWjZHEVIXR
J5uNsIB/xHgtidDKLH+wsCjx1ZJY3iJqkTN22LJPeu0oJPGZImHNb22ZtqNQ1wB7zXf4aK1k
0WyOViOiJQ4R7uH2tDBvLa/HPz/3cEv6PH2fj+/CWYjenxLfUPAisPeBchfVR1BrRicWbo8p
qbzekFeLaxIZ1UmH12ugQqSN1tzGhrfHIsjE8WP0u3uNpP38tXqE6b307yJq9k8tUvccU6t7
e5dE28Z0OBYEkAtWkuAvWPzewPMFFoU0cEkvsl0drNeYnfsaQ9+izXEVBe0+k2qTQnPbVKW/
iHZBJFt5E7oggOP2epP8NMmWcVAvd0lPkwiFZOLUFPDLhzSNUN2mdHXVQ26HCg/QO/svdW35
Ugmlv44/3rUZ/dPL4ekfx/cfxApNPUjhzsGcxGWnTWTvh5xC7Xv1qvrLL+RZ9T/4auPT0sce
MNmKX9TqrY7asvutBUQDmMNaiDDNDNHVtta166iqN1VMH9OCrAiZyWURpxHck9M5S/6sNZ5+
YteJGXPiLKXGlS3KAAP3WiEnBXE/3wWrpbLNKCImHgewXuAEYSBnzCkaofqNwuJqU/NSQ9f4
edFNs02kMEkcRPMHSe/NCDyhqF/c+z3JvDUFTIhc75jxcs7ZA/I0CPzGvr4E5G2qua9Qg25/
HWYp6bPQAhBfUEYyXL8QikZtJvwRuR6cZwl7hn7UjNuAgtRE6yBwrxahq0CGi7Wg4CQ0XIEl
+t0jgunoaEi9E7PVNEhlMpwHZjV1zLK/NUC/SCVYtYJtJHy4zGEr9H96Hvxh1caVS5du1stH
6oRBEMkjyyV3Qewee+izHrgnwpX8am154S2iinZVGeHml2D1bZqL8HkqghclgSvTqK2faMOm
C6MpyyyIgWNtI5iGguZcQ1U8sCVqyqxBaAhUM3aFcJaPbx1FobKxBjL1hkE/iW1DnB+GRV3V
Yw+2PRk3FTw4SPwCTY5XSkAmh8h9nFXJnJMHVl49fNYCxuybuee03uPw1/779YyOc+fjj+/T
99fNm9bH7z8P+xsMC/W/RNbE5FwgTWGV+PCJFifOgHCuFl+iMmH+UEWiCotSkZp+9lUUy48M
nMgXBRgc2iRerlMcuSkfFxTM++yd2vmaR+sALj4FSZVVLhO9XglfxcwqbBWEd+TMWyeNmU9L
njzWlU8mDj2aQIAkRdI8xigvlJkvwoquMlik7e7ZhmVm76llVGFOnWwR0pWsHnjCKM/oQqpQ
OuEHXef/aggW5lfU/aJcJWE8tJvQIIteZHINCed9SJ9cKG7TIfmTXCuJKejH5/H9/A/tpPp2
+PphPxQH2o4fRIplAtJP0r2MTHop7jZxVP3udROl8yHaNXjk4fIhnWcgCtRRUaz9/6vsynoi
N4LwX0H7lEgbBKwU7QsPxseMMz4Gt82IvFiEHSGUQNAySPz81FfdtvuoHsgbdFX39FFdV1e5
ak/qm52OTnb2Qzz+s//t8PhkdL9XRr3X7T+tpS00DtpmY1IK6OtoIhwFekkWwnebFLZ0ZkjS
qJ039I5MXDZiCSgFpuXI1EPoGlGYTcl6FipP+aG/LlWd9DZP9yE8p7FtKjdYlkcpWqRXFEOj
u/DNHr9dSA5uu8MuTzZcdWFKGJzU689uKu8q+1ce7yday/Z/vT084EGyfH49/Hx7cgud1slK
F63qrq1bvTTOr6LaNXB59n4uYem0PHkEk7KnENeAIi9fvniLV/4pFIo5127UJ+TvruJHM0ao
ESYucl1vJP/d2eZPWlCvMouPhf+N67Zph04HbZu4UhtsVmnuoT1rBvPznjABBmKC+lb2HXNn
t+8mkyiHZw0pPlyppCFNncxkSBlvzxgaW/kmRVcoPeWUM2lo7lNU5J4agk/z4EYhMHNif+YJ
fR7MCrgFbyI1CJ8Gbht/DEA9UeYBJs/V8mK8RMtg6HbXiI+xDNy2pWrdKHM9vI4iViEJGoBo
f0RQC9lP4CJxcbngOkxQRJLG59KlA3O3T8wFysx2mHIsPpyVt7fn/rCqSiQCZQozpEEqaUXc
zV/ZR+0ID6bjaStWoC7Pfz87O4tgGhPCm9oMnoM7CrkUq4fO8SwqFW+OWTRHoAzKiWZW6ZqU
aA3KG7Lj1nkqHNmNJJnMdeHCRhyYEvYzsgEan8RLrA3nKSB2v3CSB44CTSjPJgFPCD2dGgoa
hBLWtAvDIZtAm6R+rMxy0b0JrMtuqSUGpJP235fXryf4QOzbi5Zu67vnB7c+V8J1FEnoyikz
Dhy5OgOJKxfIiubQX1q2gGqLHix92M5FKsTDAWhcI1W3T5RDsJqwZtD8I+cX1s9ctW2PgiS1
hchzEn4sijsvah52d016CGkjWSv7DHErRr28SO7Tsc3X4Yukcfx4g5ph8+1l/5jkY/aJhpqH
AruNE0FskpF+xqUa7Osmz7eaUWt/IoIaFtn0y+vL4zMCHWg1T2+H/fue/tgf7k9PT3+1XI3I
uuIhV2xO6BKXjsjoUG89nlvFI2AF/s2CkT2QOZ8HPHwqTxqIxxndu+u7nYYRd21326SXQ1rN
z+6UnFigwTxdT36ijcwrfzpLs/cTSd/W0OgqOoAjMzF7pl+zpsL0sR2kq4YkvaD06LL0uHtP
pYXff2JUKtPD75KynxPFFkvxf5CMY4ySapY6eh0bAAhBHBqV5xnRufZLRs9howVquLkGQLYL
CR8VevX1Lf1bq2I/7g53J9DB7uFgdyov8gmUSpIcaI7LslXYg5P4Sq+e+8LOoB40Y5b0CXzs
+KRdGYmbPDp5dx5pR9vY9GXCLnz9dpwOkr4YIx0oQVzXY4zQDRCOde7y4uMBIIPZfJx5/cW5
OwwTS6R3fq1CsnTXGTCDa2MidqwAyG4mVF8nwVFpCd/n09dQRGy4tJv0tm+l8ChWJGbzldfi
RF/b0BVZLGsZJ7ttEjCNYro6zgDcONashNK246XGQ0E+HG8yMLf4zI0fLZ6ajnoUy6NKPSK8
vYgdjUpQrNROnuOG+dY++e1cIlqF7V3ex0Ao4+jkU+t2U5y4Kr1vt/h4+j8x7dRg3BT4xiXe
FOsMke9X7qcfEKqPF0fSMgMm8/RIsl+6anxOpLAVVbJS0pbmSVfd6qzdjTA1vIlNPjEbdfyO
PKOFb9cZHgGh/VRBq+U0mPCgwHZllvsi7E+oT9YpGsEb3HY7k7RQIuvytsR24fX71wPkB5Sl
FFVw7x72tlq0GRrxYWxiq/CxtQiX/0P7lZYJb2sZacFoCyb7+HhWykze8wv68QG1BivMpUjK
Ctad26KtZk+h8MawUzMiGJb3Z7mdGL6u0ykLRs7B8AZaxDPyLGWLdvaWbNL2JrBqyJahZkPq
9rOYwV6OFWjGHobbJOngOhAdO8CEl7Eb4NQfHWejBnbXNK1cPw5cnr3jK8mWat8RR8NjNegW
vAwRT+J20GUOfRBuVoJMrUHqgvZK/wfTdaSlxOgBAA==

--zhXaljGHf11kAtnf--
