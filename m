Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB57Y2SBAMGQEB7LJTRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 52A9D342947
	for <lists+clang-built-linux@lfdr.de>; Sat, 20 Mar 2021 01:06:16 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id m35sf20381189qtd.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 17:06:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616198775; cv=pass;
        d=google.com; s=arc-20160816;
        b=bW9/TQuVPvnnrvUFEH0Ql+e+756YxpBO+7sXwJbzpXX/e4FJjJCZkQ+8GhpN5tRa9E
         thL5eQ9oMehMNQaP00qrCcVyRQGCGnh4+cZw7w0siPfc/OPGTec8wXnqtTzc5f0eo3B0
         1vGQAdRnVVi3ShrCwOJAFCA+XUwEdWPzRuPeBos10btFosQqz2t73Z+6bOPPkljtpK0Z
         Crs1WHlynHTcdgGazY7CpmBwbIIKPTMABd4vhSdqppnMMCdki6Y9HLgetsNB2ZW0sMdt
         fVtsTFKAywkhNjKIW/oRRYO9YdAWP9rrggCjSqQlGv9XJlmTzt5lroKGtx/YvIektW2o
         vR8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=OCx244vfSWxCS9+9aowwSSv/9BA/JDVPhXvmGmCclFk=;
        b=E5FiXkEYJn7SOjYYtHZ7fA7JuunwgnMBuhJhxQnmHsj+YKGqn7jX1ckYoOLjiQoxYy
         fwlUnxGUmmRtV5pmZzqzxaZ1wvPAP2adrSdDPwonfcD/vkkHvuQePBd+exX2IorYxIBE
         7I7YAXQmZqr5UgPm5POoLjrZ3J1B2nxVDR0CE+b5/Oc6UEHqD0OkdLmu44uQLIwYLdJ/
         IqDbDrQGXxNS7UWIliBsrhA/AqkaviuvCjEDXQoH/9ud1uENJ9L/99mUCnIy6P9yxTey
         /sIZa+aNN1nv01g0EG9HdjAX1sNVi2UffRHEtJT0B0ZrVufT5DRYI0h1/GXYYw2D+9R4
         E7qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OCx244vfSWxCS9+9aowwSSv/9BA/JDVPhXvmGmCclFk=;
        b=P8nUtiEVHywd/A3Eio1zeaUg4bqbU1FVReWgvJc+vsXt+DJOTeVSVYaslbDgl3HdTY
         F8WbH92BdUKSAJLAjJ+hZ/UXLOJEmilovnaj2H0KTtu7OAmVBAAcySLfab6h4xGqG4Dg
         KhIpfm7QDKv+FwZGsuJPiXXJKXBLsiQ9mpXuvVjQu3b5IIGKOtui7TRfa40P2OXmcMjE
         Bu2gq4RnkpVo1VEvfjO0Yz5h3cHESyIOpLIR1TyI98pkwRAU2pDfQ1r4/RsfiyDRh4u3
         sgeEWtEoZHkchkUxRARjF6Bp6B4U4u6kgzUMZNJS5MQ5pxy86oMs+dDBLVn7vkzRQp9C
         3uvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OCx244vfSWxCS9+9aowwSSv/9BA/JDVPhXvmGmCclFk=;
        b=mNkTZXIGy75oNOW4MHNklc45kPa2wwtWLo1mmtdzMwK6uePUkoQAkLM2b2a2cIV4Cy
         dWP7UNULFAhFbiavOJrWmwJ6U9vI7lyOXjL4J0+3FvgrOJUCZmkdF2sXQ6yfBvzfpFs1
         I5TlLg0fXNSbENKgXkw9zOfia/kYqGeGVtzd0Dxvc3QWNzEuEpdK7gTo0cmWSa0y3+sC
         1gq+j1tYTd7WutPqcDr3OI4HtT2nJdKGPHe7H53ZtpIMPibf99Nf+2gLjuCJMLxQJip8
         B8vLDAToSiAkitKSviaV9gRd47z/PDWGyVEXGKTu7d32BmlOIf+Hm06eMf0vqCva8jtH
         eHwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310FnZNa/YQMYXMhIlL/DDf24naMpbSC61/8aNgADXttIqP654O
	pMGMXVfWi0H+6+XlMkRMF4Y=
X-Google-Smtp-Source: ABdhPJxX6zRfgFW5RsMlsMQ1AXP3ENgOXCZOGApOhEYLoJw5OTntESvgQgLN0+3y/hrK/8kGd1KPiA==
X-Received: by 2002:a05:620a:110a:: with SMTP id o10mr1149527qkk.281.1616198775222;
        Fri, 19 Mar 2021 17:06:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:4096:: with SMTP id f22ls3729366qko.7.gmail; Fri,
 19 Mar 2021 17:06:14 -0700 (PDT)
X-Received: by 2002:a05:620a:1483:: with SMTP id w3mr1092503qkj.339.1616198774344;
        Fri, 19 Mar 2021 17:06:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616198774; cv=none;
        d=google.com; s=arc-20160816;
        b=qjEDRBa0rW7G6Z/qkQw6PFstUiHlm38LIYBfwso5LFr5BlAu2vtXs0lzO9H8CwSaEk
         QjZ1T3sDWiOhfkofi/8GUZ6QQ0ITOgxn0ZbjQN2NYFouEs068k4gZkSKaLqJgNMs0Kkt
         WvSqKpWUwfT9jy3k4bBInodT5rabYg3CvkXymxy/4pFngqwMSZx8rLMgXtyC9XuMwuRG
         M4tuaAaeYahi2hKwtUasBiaTV/kgQpi8apjh1lPcemowSwsCaKNacdJfuoybMa0pIUak
         Y/8l+YjG8Qly4zexUlQ11ZLBRtxtahi9oFSZ5gxRbRHUbZaWlPnKhlmWVOMTWIxsAKUL
         DsYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=AikYP+AXTTNAF2HV78ip7ok1p6jM3yn4vNvt8sqFkwY=;
        b=NBIVXavoGHgYorpLvCpPm+6gbZQQjPpNBSfqQHMQFYMVdLwFlQWfY+DjKws+uoQLu8
         qxXRoY4qGrcu//1SA49EI+hqRFYop8k5yjh7HsBYQrfvPJlai7JBqeMID7g3u+ICiL9S
         7KasLYohyqwTsZRVvfXuyyrmqonSfIrSmIiEAL1S79fBYvUS4pzSB15+fCpbZs3LKpSG
         rVYy3wjiTHiB+odVbNuroIdarO7xraIMnHi/M4sVNsc2n9pWUhVsYClC1DqJ7Pzi6f2H
         OdumOG8scXnwCS1Y8hDleSQl+ei/46kMNElXaTqoUSasWz8gEAqj1Fk5tvE6uaBdRi4U
         QD9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id w22si459126qtt.0.2021.03.19.17.06.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Mar 2021 17:06:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: 697ZVe/jeoNW24Z2VdzAm1b7a6VNfUw79E/cTZLF438aaBGOYu7eAbsE5gcqk/baYVBc01m412
 rsqYnSE1A1sA==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="190023577"
X-IronPort-AV: E=Sophos;i="5.81,263,1610438400"; 
   d="gz'50?scan'50,208,50";a="190023577"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2021 17:05:47 -0700
IronPort-SDR: A8on7g2u1rFKchFkNSqthu2yPSFGytXTU/7PtwA3QvtMiDuwZ5nqV0hg9YZTWUbh1thFQ+PVgo
 WgXVxZxF+fHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,263,1610438400"; 
   d="gz'50?scan'50,208,50";a="406993182"
Received: from lkp-server02.sh.intel.com (HELO 1c294c63cb86) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 19 Mar 2021 17:05:43 -0700
Received: from kbuild by 1c294c63cb86 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lNP7e-0002BD-Cz; Sat, 20 Mar 2021 00:05:42 +0000
Date: Sat, 20 Mar 2021 08:05:25 +0800
From: kernel test robot <lkp@intel.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [arnd-playground:randconfig-v5.12 491/597]
 drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3642:1:
 error: unknown type name 'ignored'
Message-ID: <202103200820.0VNUHyqv-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
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


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Arnd,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git randconfig-v5.12
head:   fd21c2581b744639b5207c11651ab40abf13701a
commit: 4add9311d7e505da69b887a4e24388b41f2528cf [491/597] fixup compiler-clang.h
config: x86_64-randconfig-a003-20210318 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project fcc1ce00931751ac02498986feb37744e9ace8de)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git/commit/?id=4add9311d7e505da69b887a4e24388b41f2528cf
        git remote add arnd-playground https://git.kernel.org/pub/scm/linux/kernel/git/arnd/playground.git
        git fetch --no-tags arnd-playground randconfig-v5.12
        git checkout 4add9311d7e505da69b887a4e24388b41f2528cf
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

                           ^~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:592:7: note: passing argument to parameter 'VActive' here
                   int VActive[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3168:5: warning: passing 'int *' to parameter of type 'unsigned int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                                   &BytePerPixY[k],
                                   ^~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:717:17: note: passing argument to parameter 'BytePerPixelY' here
                   unsigned int *BytePerPixelY,
                                 ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3169:5: warning: passing 'int *' to parameter of type 'unsigned int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                                   &BytePerPixC[k],
                                   ^~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:718:17: note: passing argument to parameter 'BytePerPixelC' here
                   unsigned int *BytePerPixelC,
                                 ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3172:5: warning: passing 'int *' to parameter of type 'unsigned int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                                   &Read256BytesBlockHeightY[k],
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:721:17: note: passing argument to parameter 'BlockHeight256BytesY' here
                   unsigned int *BlockHeight256BytesY,
                                 ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3173:5: warning: passing 'int *' to parameter of type 'unsigned int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                                   &Read256BytesBlockHeightC[k],
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:722:17: note: passing argument to parameter 'BlockHeight256BytesC' here
                   unsigned int *BlockHeight256BytesC,
                                 ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3174:5: warning: passing 'int *' to parameter of type 'unsigned int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                                   &Read256BytesBlockWidthY[k],
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:723:17: note: passing argument to parameter 'BlockWidth256BytesY' here
                   unsigned int *BlockWidth256BytesY,
                                 ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3175:5: warning: passing 'int *' to parameter of type 'unsigned int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                                   &Read256BytesBlockWidthC[k]);
                                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:724:17: note: passing argument to parameter 'BlockWidth256BytesC' here
                   unsigned int *BlockWidth256BytesC);
                                 ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3186:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           mode_lib->vba.ViewportWidth,
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:612:7: note: passing argument to parameter 'ViewportWidth' here
                   int ViewportWidth[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3187:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           mode_lib->vba.ViewportHeight,
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:613:7: note: passing argument to parameter 'ViewportHeight' here
                   int ViewportHeight[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3188:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           mode_lib->vba.SurfaceWidthY,
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:614:7: note: passing argument to parameter 'SurfaceWidthY' here
                   int SurfaceWidthY[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3189:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           mode_lib->vba.SurfaceWidthC,
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:615:7: note: passing argument to parameter 'SurfaceWidthC' here
                   int SurfaceWidthC[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3190:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           mode_lib->vba.SurfaceHeightY,
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:616:7: note: passing argument to parameter 'SurfaceHeightY' here
                   int SurfaceHeightY[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3191:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           mode_lib->vba.SurfaceHeightC,
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:617:7: note: passing argument to parameter 'SurfaceHeightC' here
                   int SurfaceHeightC[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3197:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           mode_lib->vba.BlendingAndTiming,
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:623:7: note: passing argument to parameter 'BlendingAndTiming' here
                   int BlendingAndTiming[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3202:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           mode_lib->vba.HActive,
                           ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:628:7: note: passing argument to parameter 'HActive' here
                   int HActive[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3210:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           mode_lib->vba.SwathHeightY,
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:636:7: note: passing argument to parameter 'SwathHeightY' here
                   int SwathHeightY[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3211:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           mode_lib->vba.SwathHeightC,
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:637:7: note: passing argument to parameter 'SwathHeightC' here
                   int SwathHeightC[],
                       ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3642:1: error: unknown type name 'ignored'
   __diag_ignore(CLANG, 8, "-Wframe-larger-than=", "this exceeds 2048 bytes")
   ^
   include/linux/compiler_types.h:348:2: note: expanded from macro '__diag_ignore'
           __diag_ ## compiler(version, ignore, option)
           ^
   <scratch space>:34:1: note: expanded from here
   __diag_CLANG
   ^
   include/linux/compiler-clang.h:72:34: note: expanded from macro '__diag_CLANG'
           __diag_CLANG_ ## version(__diag_CLANG_ ## severity s)
                                    ^
   <scratch space>:36:1: note: expanded from here
   __diag_CLANG_ignore
   ^
   include/linux/compiler-clang.h:75:29: note: expanded from macro '__diag_CLANG_ignore'
   #define __diag_CLANG_ignore     ignored
                                   ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3642:25: error: expected ')'
   __diag_ignore(CLANG, 8, "-Wframe-larger-than=", "this exceeds 2048 bytes")
                           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3642:1: note: to match this '('
   __diag_ignore(CLANG, 8, "-Wframe-larger-than=", "this exceeds 2048 bytes")
   ^
   include/linux/compiler_types.h:348:2: note: expanded from macro '__diag_ignore'
           __diag_ ## compiler(version, ignore, option)
           ^
   <scratch space>:34:1: note: expanded from here
   __diag_CLANG
   ^
   include/linux/compiler-clang.h:72:33: note: expanded from macro '__diag_CLANG'
           __diag_CLANG_ ## version(__diag_CLANG_ ## severity s)
                                   ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3642:1: warning: declaration specifier missing, defaulting to 'int'
   __diag_ignore(CLANG, 8, "-Wframe-larger-than=", "this exceeds 2048 bytes")
   ^
   int
   include/linux/compiler_types.h:348:2: note: expanded from macro '__diag_ignore'
           __diag_ ## compiler(version, ignore, option)
           ^
   <scratch space>:34:1: note: expanded from here
   __diag_CLANG
   ^
   include/linux/compiler-clang.h:72:9: note: expanded from macro '__diag_CLANG'
           __diag_CLANG_ ## version(__diag_CLANG_ ## severity s)
           ^
   <scratch space>:35:1: note: expanded from here
   __diag_CLANG_8
   ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3642:75: error: expected ';' after top level declarator
   __diag_ignore(CLANG, 8, "-Wframe-larger-than=", "this exceeds 2048 bytes")
                                                                             ^
                                                                             ;
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3922:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->ViewportWidth,
                           ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:612:7: note: passing argument to parameter 'ViewportWidth' here
                   int ViewportWidth[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3923:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->ViewportHeight,
                           ^~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:613:7: note: passing argument to parameter 'ViewportHeight' here
                   int ViewportHeight[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3924:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->SurfaceWidthY,
                           ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:614:7: note: passing argument to parameter 'SurfaceWidthY' here
                   int SurfaceWidthY[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3925:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->SurfaceWidthC,
                           ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:615:7: note: passing argument to parameter 'SurfaceWidthC' here
                   int SurfaceWidthC[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3926:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->SurfaceHeightY,
                           ^~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:616:7: note: passing argument to parameter 'SurfaceHeightY' here
                   int SurfaceHeightY[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3927:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->SurfaceHeightC,
                           ^~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:617:7: note: passing argument to parameter 'SurfaceHeightC' here
                   int SurfaceHeightC[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3928:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->Read256BlockHeightY,
                           ^~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:618:7: note: passing argument to parameter 'Read256BytesBlockHeightY' here
                   int Read256BytesBlockHeightY[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3929:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->Read256BlockHeightC,
                           ^~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:619:7: note: passing argument to parameter 'Read256BytesBlockHeightC' here
                   int Read256BytesBlockHeightC[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3930:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->Read256BlockWidthY,
                           ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:620:7: note: passing argument to parameter 'Read256BytesBlockWidthY' here
                   int Read256BytesBlockWidthY[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3931:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->Read256BlockWidthC,
                           ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:621:7: note: passing argument to parameter 'Read256BytesBlockWidthC' here
                   int Read256BytesBlockWidthC[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3933:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->BlendingAndTiming,
                           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:623:7: note: passing argument to parameter 'BlendingAndTiming' here
                   int BlendingAndTiming[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3934:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->BytePerPixelY,
                           ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:624:7: note: passing argument to parameter 'BytePerPixY' here
                   int BytePerPixY[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3935:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->BytePerPixelC,
                           ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:625:7: note: passing argument to parameter 'BytePerPixC' here
                   int BytePerPixC[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3938:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->HActive,
                           ^~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:628:7: note: passing argument to parameter 'HActive' here
                   int HActive[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3942:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->swath_width_luma_ub,
                           ^~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:632:7: note: passing argument to parameter 'swath_width_luma_ub' here
                   int swath_width_luma_ub[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3943:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]
                           v->swath_width_chroma_ub,
                           ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:633:7: note: passing argument to parameter 'swath_width_chroma_ub' here
                   int swath_width_chroma_ub[],
                       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c:3946:4: warning: passing 'unsigned int [8]' to parameter of type 'int *' converts between pointers to integer types with different sign [-Wpointer-sign]


vim +/ignored +3642 drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_mode_vba_30.c

6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3640  
3accc8b91f9c9e Arnd Bergmann      2021-02-03  3641  __diag_push()
3accc8b91f9c9e Arnd Bergmann      2021-02-03 @3642  __diag_ignore(CLANG, 8, "-Wframe-larger-than=", "this exceeds 2048 bytes")
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3643  void dml30_ModeSupportAndSystemConfigurationFull(struct display_mode_lib *mode_lib)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3644  {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3645  	struct vba_vars_st *v = &mode_lib->vba;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3646  	int MinPrefetchMode = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3647  	int MaxPrefetchMode = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3648  	int i;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3649  	unsigned int j, k, m;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3650  	bool   EnoughWritebackUnits = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3651  	bool   WritebackModeSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3652  	bool   ViewportExceedsSurface = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3653  	double MaxTotalVActiveRDBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3654  	long ReorderingBytes = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3655  	bool NotUrgentLatencyHiding[DC__NUM_DPP__MAX] = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3656  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3657  	/*MODE SUPPORT, VOLTAGE STATE AND SOC CONFIGURATION*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3658  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3659  	/*Scale Ratio, taps Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3660  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3661  	v->ScaleRatioAndTapsSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3662  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3663  		if (v->ScalerEnabled[k] == false
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3664  				&& ((v->SourcePixelFormat[k] != dm_444_64
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3665  						&& v->SourcePixelFormat[k] != dm_444_32
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3666  						&& v->SourcePixelFormat[k] != dm_444_16
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3667  						&& v->SourcePixelFormat[k] != dm_mono_16
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3668  						&& v->SourcePixelFormat[k] != dm_mono_8
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3669  						&& v->SourcePixelFormat[k] != dm_rgbe
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3670  						&& v->SourcePixelFormat[k] != dm_rgbe_alpha)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3671  						|| v->HRatio[k] != 1.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3672  						|| v->htaps[k] != 1.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3673  						|| v->VRatio[k] != 1.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3674  						|| v->vtaps[k] != 1.0)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3675  			v->ScaleRatioAndTapsSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3676  		} else if (v->vtaps[k] < 1.0 || v->vtaps[k] > 8.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3677  				|| v->htaps[k] < 1.0 || v->htaps[k] > 8.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3678  				|| (v->htaps[k] > 1.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3679  						&& (v->htaps[k] % 2) == 1)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3680  				|| v->HRatio[k] > v->MaxHSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3681  				|| v->VRatio[k] > v->MaxVSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3682  				|| v->HRatio[k] > v->htaps[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3683  				|| v->VRatio[k] > v->vtaps[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3684  				|| (v->SourcePixelFormat[k] != dm_444_64
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3685  						&& v->SourcePixelFormat[k] != dm_444_32
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3686  						&& v->SourcePixelFormat[k] != dm_444_16
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3687  						&& v->SourcePixelFormat[k] != dm_mono_16
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3688  						&& v->SourcePixelFormat[k] != dm_mono_8
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3689  						&& v->SourcePixelFormat[k] != dm_rgbe
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3690  						&& (v->VTAPsChroma[k] < 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3691  							|| v->VTAPsChroma[k] > 8
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3692  							|| v->HTAPsChroma[k] < 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3693  							|| v->HTAPsChroma[k] > 8
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3694  							|| (v->HTAPsChroma[k] > 1 && v->HTAPsChroma[k] % 2 == 1)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3695  							|| v->HRatioChroma[k] > v->MaxHSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3696  							|| v->VRatioChroma[k] > v->MaxVSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3697  							|| v->HRatioChroma[k] > v->HTAPsChroma[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3698  							|| v->VRatioChroma[k] > v->VTAPsChroma[k]))) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3699  			v->ScaleRatioAndTapsSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3700  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3701  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3702  	/*Source Format, Pixel Format and Scan Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3703  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3704  	v->SourceFormatPixelAndScanSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3705  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3706  		if ((v->SurfaceTiling[k] == dm_sw_linear && (!(v->SourceScan[k] != dm_vert) || v->DCCEnable[k] == true))
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3707  				|| ((v->SurfaceTiling[k] == dm_sw_64kb_d || v->SurfaceTiling[k] == dm_sw_64kb_d_t || v->SurfaceTiling[k] == dm_sw_64kb_d_x)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3708  						&& !(v->SourcePixelFormat[k] == dm_444_64))) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3709  			v->SourceFormatPixelAndScanSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3710  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3711  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3712  	/*Bandwidth Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3713  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3714  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3715  		CalculateBytePerPixelAnd256BBlockSizes(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3716  				v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3717  				v->SurfaceTiling[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3718  				&v->BytePerPixelY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3719  				&v->BytePerPixelC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3720  				&v->BytePerPixelInDETY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3721  				&v->BytePerPixelInDETC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3722  				&v->Read256BlockHeightY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3723  				&v->Read256BlockHeightC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3724  				&v->Read256BlockWidthY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3725  				&v->Read256BlockWidthC[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3726  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3727  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3728  		if (v->SourceScan[k] != dm_vert) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3729  			v->SwathWidthYSingleDPP[k] = v->ViewportWidth[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3730  			v->SwathWidthCSingleDPP[k] = v->ViewportWidthChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3731  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3732  			v->SwathWidthYSingleDPP[k] = v->ViewportHeight[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3733  			v->SwathWidthCSingleDPP[k] = v->ViewportHeightChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3734  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3735  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3736  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3737  		v->ReadBandwidthLuma[k] = v->SwathWidthYSingleDPP[k] * dml_ceil(v->BytePerPixelInDETY[k], 1.0) / (v->HTotal[k] / v->PixelClock[k]) * v->VRatio[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3738  		v->ReadBandwidthChroma[k] = v->SwathWidthYSingleDPP[k] / 2 * dml_ceil(v->BytePerPixelInDETC[k], 2.0) / (v->HTotal[k] / v->PixelClock[k]) * v->VRatio[k] / 2.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3739  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3740  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3741  		if (v->WritebackEnable[k] == true
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3742  				&& v->WritebackPixelFormat[k] == dm_444_64) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3743  			v->WriteBandwidth[k] = v->WritebackDestinationWidth[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3744  					* v->WritebackDestinationHeight[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3745  					/ (v->WritebackSourceHeight[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3746  							* v->HTotal[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3747  							/ v->PixelClock[k]) * 8.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3748  		} else if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3749  			v->WriteBandwidth[k] = v->WritebackDestinationWidth[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3750  					* v->WritebackDestinationHeight[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3751  					/ (v->WritebackSourceHeight[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3752  							* v->HTotal[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3753  							/ v->PixelClock[k]) * 4.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3754  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3755  			v->WriteBandwidth[k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3756  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3757  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3758  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3759  	/*Writeback Latency support check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3760  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3761  	v->WritebackLatencySupport = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3762  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3763  		if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3764  			if (v->WritebackConfiguration == dm_whole_buffer_for_single_stream_no_interleave ||
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3765  			    v->WritebackConfiguration == dm_whole_buffer_for_single_stream_interleave) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3766  				if (v->WriteBandwidth[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3767  						> 2.0 * v->WritebackInterfaceBufferSize * 1024
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3768  								/ v->WritebackLatency) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3769  					v->WritebackLatencySupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3770  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3771  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3772  				if (v->WriteBandwidth[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3773  						> v->WritebackInterfaceBufferSize * 1024
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3774  								/ v->WritebackLatency) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3775  					v->WritebackLatencySupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3776  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3777  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3778  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3779  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3780  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3781  	/*Writeback Mode Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3782  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3783  	v->TotalNumberOfActiveWriteback = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3784  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3785  		if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3786  			v->TotalNumberOfActiveWriteback =
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3787  					v->TotalNumberOfActiveWriteback + 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3788  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3789  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3790  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3791  	if (v->TotalNumberOfActiveWriteback > v->MaxNumWriteback) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3792  		EnoughWritebackUnits = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3793  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3794  	if (!v->WritebackSupportInterleaveAndUsingWholeBufferForASingleStream
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3795  			&& (v->WritebackConfiguration == dm_whole_buffer_for_single_stream_no_interleave
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3796  					|| v->WritebackConfiguration == dm_whole_buffer_for_single_stream_interleave)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3797  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3798  		WritebackModeSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3799  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3800  	if (v->WritebackConfiguration == dm_whole_buffer_for_single_stream_no_interleave && v->TotalNumberOfActiveWriteback > 1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3801  		WritebackModeSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3802  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3803  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3804  	/*Writeback Scale Ratio and Taps Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3805  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3806  	v->WritebackScaleRatioAndTapsSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3807  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3808  		if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3809  			if (v->WritebackHRatio[k] > v->WritebackMaxHSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3810  					|| v->WritebackVRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3811  							> v->WritebackMaxVSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3812  					|| v->WritebackHRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3813  							< v->WritebackMinHSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3814  					|| v->WritebackVRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3815  							< v->WritebackMinVSCLRatio
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3816  					|| v->WritebackHTaps[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3817  							> v->WritebackMaxHSCLTaps
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3818  					|| v->WritebackVTaps[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3819  							> v->WritebackMaxVSCLTaps
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3820  					|| v->WritebackHRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3821  							> v->WritebackHTaps[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3822  					|| v->WritebackVRatio[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3823  							> v->WritebackVTaps[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3824  					|| (v->WritebackHTaps[k] > 2.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3825  							&& ((v->WritebackHTaps[k] % 2)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3826  									== 1))) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3827  				v->WritebackScaleRatioAndTapsSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3828  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3829  			if (2.0 * v->WritebackDestinationWidth[k] * (v->WritebackVTaps[k] - 1) * 57 > v->WritebackLineBufferSize) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3830  				v->WritebackScaleRatioAndTapsSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3831  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3832  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3833  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3834  	/*Maximum DISPCLK/DPPCLK Support check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3835  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3836  	v->WritebackRequiredDISPCLK = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3837  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3838  		if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3839  			v->WritebackRequiredDISPCLK = dml_max(v->WritebackRequiredDISPCLK,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3840  					dml30_CalculateWriteBackDISPCLK(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3841  							v->WritebackPixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3842  							v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3843  							v->WritebackHRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3844  							v->WritebackVRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3845  							v->WritebackHTaps[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3846  							v->WritebackVTaps[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3847  							v->WritebackSourceWidth[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3848  							v->WritebackDestinationWidth[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3849  							v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3850  							v->WritebackLineBufferSize));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3851  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3852  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3853  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3854  		if (v->HRatio[k] > 1.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3855  			v->PSCL_FACTOR[k] = dml_min(v->MaxDCHUBToPSCLThroughput, v->MaxPSCLToLBThroughput * v->HRatio[k] / dml_ceil(v->htaps[k] / 6.0, 1.0));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3856  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3857  			v->PSCL_FACTOR[k] = dml_min(v->MaxDCHUBToPSCLThroughput, v->MaxPSCLToLBThroughput);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3858  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3859  		if (v->BytePerPixelC[k] == 0.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3860  			v->PSCL_FACTOR_CHROMA[k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3861  			v->MinDPPCLKUsingSingleDPP[k] = v->PixelClock[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3862  					* dml_max3(v->vtaps[k] / 6.0 * dml_min(1.0, v->HRatio[k]), v->HRatio[k] * v->VRatio[k] / v->PSCL_FACTOR[k], 1.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3863  			if ((v->htaps[k] > 6.0 || v->vtaps[k] > 6.0) && v->MinDPPCLKUsingSingleDPP[k] < 2.0 * v->PixelClock[k]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3864  				v->MinDPPCLKUsingSingleDPP[k] = 2.0 * v->PixelClock[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3865  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3866  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3867  			if (v->HRatioChroma[k] > 1.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3868  				v->PSCL_FACTOR_CHROMA[k] = dml_min(v->MaxDCHUBToPSCLThroughput,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3869  						v->MaxPSCLToLBThroughput * v->HRatioChroma[k] / dml_ceil(v->HTAPsChroma[k] / 6.0, 1.0));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3870  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3871  				v->PSCL_FACTOR_CHROMA[k] = dml_min(v->MaxDCHUBToPSCLThroughput, v->MaxPSCLToLBThroughput);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3872  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3873  			v->MinDPPCLKUsingSingleDPP[k] = v->PixelClock[k] * dml_max5(v->vtaps[k] / 6.0 * dml_min(1.0, v->HRatio[k]),
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3874  							v->HRatio[k] * v->VRatio[k] / v->PSCL_FACTOR[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3875  							v->VTAPsChroma[k] / 6.0 * dml_min(1.0, v->HRatioChroma[k]),
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3876  							v->HRatioChroma[k] * v->VRatioChroma[k] / v->PSCL_FACTOR_CHROMA[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3877  							1.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3878  			if ((v->htaps[k] > 6.0 || v->vtaps[k] > 6.0 || v->HTAPsChroma[k] > 6.0 || v->VTAPsChroma[k] > 6.0)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3879  					&& v->MinDPPCLKUsingSingleDPP[k] < 2.0 * v->PixelClock[k]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3880  				v->MinDPPCLKUsingSingleDPP[k] = 2.0 * v->PixelClock[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3881  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3882  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3883  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3884  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3885  		int MaximumSwathWidthSupportLuma = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3886  		int MaximumSwathWidthSupportChroma = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3887  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3888  		if (v->SurfaceTiling[k] == dm_sw_linear) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3889  			MaximumSwathWidthSupportLuma = 8192.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3890  		} else if (v->SourceScan[k] == dm_vert && v->BytePerPixelC[k] > 0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3891  			MaximumSwathWidthSupportLuma = 2880.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3892  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3893  			MaximumSwathWidthSupportLuma = 5760.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3894  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3895  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3896  		if (v->SourcePixelFormat[k] == dm_420_8 || v->SourcePixelFormat[k] == dm_420_10 || v->SourcePixelFormat[k] == dm_420_12) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3897  			MaximumSwathWidthSupportChroma = MaximumSwathWidthSupportLuma / 2.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3898  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3899  			MaximumSwathWidthSupportChroma = MaximumSwathWidthSupportLuma;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3900  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3901  		v->MaximumSwathWidthInLineBufferLuma = v->LineBufferSize * dml_max(v->HRatio[k], 1.0) / v->LBBitPerPixel[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3902  				/ (v->vtaps[k] + dml_max(dml_ceil(v->VRatio[k], 1.0) - 2, 0.0));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3903  		if (v->BytePerPixelC[k] == 0.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3904  			v->MaximumSwathWidthInLineBufferChroma = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3905  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3906  			v->MaximumSwathWidthInLineBufferChroma = v->LineBufferSize * dml_max(v->HRatioChroma[k], 1.0) / v->LBBitPerPixel[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3907  					/ (v->VTAPsChroma[k] + dml_max(dml_ceil(v->VRatioChroma[k], 1.0) - 2, 0.0));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3908  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3909  		v->MaximumSwathWidthLuma[k] = dml_min(MaximumSwathWidthSupportLuma, v->MaximumSwathWidthInLineBufferLuma);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3910  		v->MaximumSwathWidthChroma[k] = dml_min(MaximumSwathWidthSupportChroma, v->MaximumSwathWidthInLineBufferChroma);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3911  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3912  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3913  	CalculateSwathAndDETConfiguration(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3914  			true,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3915  			v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3916  			v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3917  			v->MaximumSwathWidthLuma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3918  			v->MaximumSwathWidthChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3919  			v->SourceScan,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3920  			v->SourcePixelFormat,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3921  			v->SurfaceTiling,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3922  			v->ViewportWidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3923  			v->ViewportHeight,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3924  			v->SurfaceWidthY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3925  			v->SurfaceWidthC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3926  			v->SurfaceHeightY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3927  			v->SurfaceHeightC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3928  			v->Read256BlockHeightY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3929  			v->Read256BlockHeightC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3930  			v->Read256BlockWidthY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3931  			v->Read256BlockWidthC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3932  			v->odm_combine_dummy,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3933  			v->BlendingAndTiming,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3934  			v->BytePerPixelY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3935  			v->BytePerPixelC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3936  			v->BytePerPixelInDETY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3937  			v->BytePerPixelInDETC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3938  			v->HActive,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3939  			v->HRatio,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3940  			v->HRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3941  			v->DPPPerPlane,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3942  			v->swath_width_luma_ub,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3943  			v->swath_width_chroma_ub,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3944  			v->SwathWidthY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3945  			v->SwathWidthC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3946  			v->SwathHeightY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3947  			v->SwathHeightC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3948  			v->DETBufferSizeY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3949  			v->DETBufferSizeC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3950  			v->SingleDPPViewportSizeSupportPerPlane,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3951  			&v->ViewportSizeSupport[0][0]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3952  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3953  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3954  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3955  			v->MaxDispclkRoundedDownToDFSGranularity = RoundToDFSGranularityDown(v->MaxDispclk[i], v->DISPCLKDPPCLKVCOSpeed);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3956  			v->MaxDppclkRoundedDownToDFSGranularity = RoundToDFSGranularityDown(v->MaxDppclk[i], v->DISPCLKDPPCLKVCOSpeed);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3957  			v->RequiredDISPCLK[i][j] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3958  			v->DISPCLK_DPPCLK_Support[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3959  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3960  				v->PlaneRequiredDISPCLKWithoutODMCombine = v->PixelClock[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3961  						* (1.0 + v->DISPCLKRampingMargin / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3962  				if ((v->PlaneRequiredDISPCLKWithoutODMCombine >= v->MaxDispclk[i] && v->MaxDispclk[i] == v->MaxDispclk[mode_lib->soc.num_states]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3963  						&& v->MaxDppclk[i] == v->MaxDppclk[mode_lib->soc.num_states])) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3964  					v->PlaneRequiredDISPCLKWithoutODMCombine = v->PixelClock[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3965  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3966  				v->PlaneRequiredDISPCLKWithODMCombine2To1 = v->PixelClock[k] / 2 * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3967  						* (1 + v->DISPCLKRampingMargin / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3968  				if ((v->PlaneRequiredDISPCLKWithODMCombine2To1 >= v->MaxDispclk[i] && v->MaxDispclk[i] == v->MaxDispclk[mode_lib->soc.num_states]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3969  						&& v->MaxDppclk[i] == v->MaxDppclk[mode_lib->soc.num_states])) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3970  					v->PlaneRequiredDISPCLKWithODMCombine2To1 = v->PixelClock[k] / 2 * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3971  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3972  				v->PlaneRequiredDISPCLKWithODMCombine4To1 = v->PixelClock[k] / 4 * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3973  						* (1 + v->DISPCLKRampingMargin / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3974  				if ((v->PlaneRequiredDISPCLKWithODMCombine4To1 >= v->MaxDispclk[i] && v->MaxDispclk[i] == v->MaxDispclk[mode_lib->soc.num_states]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3975  						&& v->MaxDppclk[i] == v->MaxDppclk[mode_lib->soc.num_states])) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3976  					v->PlaneRequiredDISPCLKWithODMCombine4To1 = v->PixelClock[k] / 4 * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3977  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3978  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3979  				if (v->ODMCombinePolicy == dm_odm_combine_policy_none) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3980  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_disabled;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3981  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithoutODMCombine;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3982  				} else if (v->ODMCombinePolicy == dm_odm_combine_policy_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3983  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_2to1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3984  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine2To1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3985  				} else if (v->ODMCombinePolicy == dm_odm_combine_policy_4to1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3986  						|| v->PlaneRequiredDISPCLKWithODMCombine2To1 > v->MaxDispclkRoundedDownToDFSGranularity) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3987  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_4to1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3988  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine4To1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3989  				} else if (v->PlaneRequiredDISPCLKWithoutODMCombine > v->MaxDispclkRoundedDownToDFSGranularity) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3990  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_2to1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3991  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine2To1;
5ec37c089e7d02 Dmytro Laktyushkin 2020-08-06  3992  				} else if (v->DSCEnabled[k] && (v->HActive[k] > DCN30_MAX_DSC_IMAGE_WIDTH)) {
5ec37c089e7d02 Dmytro Laktyushkin 2020-08-06  3993  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_2to1;
5ec37c089e7d02 Dmytro Laktyushkin 2020-08-06  3994  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine2To1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3995  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3996  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_disabled;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  3997  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithoutODMCombine;
f8b9f9a599db59 Chris Park         2020-06-09  3998  					/*420 format workaround*/
f8b9f9a599db59 Chris Park         2020-06-09  3999  					if (v->HActive[k] > 4096 && v->OutputFormat[k] == dm_420) {
f8b9f9a599db59 Chris Park         2020-06-09  4000  						v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_2to1;
f8b9f9a599db59 Chris Park         2020-06-09  4001  						v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine2To1;
f8b9f9a599db59 Chris Park         2020-06-09  4002  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4003  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4004  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4005  				if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4006  					v->MPCCombine[i][j][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4007  					v->NoOfDPP[i][j][k] = 4;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4008  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 4;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4009  				} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4010  					v->MPCCombine[i][j][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4011  					v->NoOfDPP[i][j][k] = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4012  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4013  				} else if ((v->WhenToDoMPCCombine == dm_mpc_never
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4014  						|| (v->MinDPPCLKUsingSingleDPP[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) <= v->MaxDppclkRoundedDownToDFSGranularity
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4015  								&& v->SingleDPPViewportSizeSupportPerPlane[k] == true))) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4016  					v->MPCCombine[i][j][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4017  					v->NoOfDPP[i][j][k] = 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4018  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4019  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4020  					v->MPCCombine[i][j][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4021  					v->NoOfDPP[i][j][k] = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4022  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 2.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4023  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4024  				v->RequiredDISPCLK[i][j] = dml_max(v->RequiredDISPCLK[i][j], v->PlaneRequiredDISPCLK);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4025  				if ((v->MinDPPCLKUsingSingleDPP[k] / v->NoOfDPP[i][j][k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4026  						> v->MaxDppclkRoundedDownToDFSGranularity) || (v->PlaneRequiredDISPCLK > v->MaxDispclkRoundedDownToDFSGranularity)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4027  					v->DISPCLK_DPPCLK_Support[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4028  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4029  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4030  			v->TotalNumberOfActiveDPP[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4031  			v->TotalNumberOfSingleDPPPlanes[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4032  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4033  				v->TotalNumberOfActiveDPP[i][j] = v->TotalNumberOfActiveDPP[i][j] + v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4034  				if (v->NoOfDPP[i][j][k] == 1)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4035  					v->TotalNumberOfSingleDPPPlanes[i][j] = v->TotalNumberOfSingleDPPPlanes[i][j] + 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4036  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4037  			if (j == 1 && v->WhenToDoMPCCombine != dm_mpc_never) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4038  				while (!(v->TotalNumberOfActiveDPP[i][j] >= v->MaxNumDPP || v->TotalNumberOfSingleDPPPlanes[i][j] == 0)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4039  					double BWOfNonSplitPlaneOfMaximumBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4040  					unsigned int NumberOfNonSplitPlaneOfMaximumBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4041  					BWOfNonSplitPlaneOfMaximumBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4042  					NumberOfNonSplitPlaneOfMaximumBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4043  					for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4044  						if (v->ReadBandwidthLuma[k] + v->ReadBandwidthChroma[k] > BWOfNonSplitPlaneOfMaximumBandwidth
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4045  								&& v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_disabled && v->MPCCombine[i][j][k] == false) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4046  							BWOfNonSplitPlaneOfMaximumBandwidth = v->ReadBandwidthLuma[k] + v->ReadBandwidthChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4047  							NumberOfNonSplitPlaneOfMaximumBandwidth = k;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4048  						}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4049  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4050  					v->MPCCombine[i][j][NumberOfNonSplitPlaneOfMaximumBandwidth] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4051  					v->NoOfDPP[i][j][NumberOfNonSplitPlaneOfMaximumBandwidth] = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4052  					v->RequiredDPPCLK[i][j][NumberOfNonSplitPlaneOfMaximumBandwidth] = v->MinDPPCLKUsingSingleDPP[NumberOfNonSplitPlaneOfMaximumBandwidth]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4053  							* (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100) / 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4054  					v->TotalNumberOfActiveDPP[i][j] = v->TotalNumberOfActiveDPP[i][j] + 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4055  					v->TotalNumberOfSingleDPPPlanes[i][j] = v->TotalNumberOfSingleDPPPlanes[i][j] + 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4056  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4057  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4058  			if (v->TotalNumberOfActiveDPP[i][j] > v->MaxNumDPP) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4059  				v->RequiredDISPCLK[i][j] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4060  				v->DISPCLK_DPPCLK_Support[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4061  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4062  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_disabled;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4063  					if (v->SingleDPPViewportSizeSupportPerPlane[k] == false && v->WhenToDoMPCCombine != dm_mpc_never) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4064  						v->MPCCombine[i][j][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4065  						v->NoOfDPP[i][j][k] = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4066  						v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 2.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4067  					} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4068  						v->MPCCombine[i][j][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4069  						v->NoOfDPP[i][j][k] = 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4070  						v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4071  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4072  					if (!(v->MaxDispclk[i] == v->MaxDispclk[v->soc.num_states - 1] && v->MaxDppclk[i] == v->MaxDppclk[v->soc.num_states - 1])) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4073  						v->PlaneRequiredDISPCLK = v->PixelClock[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4074  								* (1.0 + v->DISPCLKRampingMargin / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4075  					} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4076  						v->PlaneRequiredDISPCLK = v->PixelClock[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4077  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4078  					v->RequiredDISPCLK[i][j] = dml_max(v->RequiredDISPCLK[i][j], v->PlaneRequiredDISPCLK);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4079  					if ((v->MinDPPCLKUsingSingleDPP[k] / v->NoOfDPP[i][j][k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4080  							> v->MaxDppclkRoundedDownToDFSGranularity) || (v->PlaneRequiredDISPCLK > v->MaxDispclkRoundedDownToDFSGranularity)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4081  						v->DISPCLK_DPPCLK_Support[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4082  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4083  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4084  				v->TotalNumberOfActiveDPP[i][j] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4085  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4086  					v->TotalNumberOfActiveDPP[i][j] = v->TotalNumberOfActiveDPP[i][j] + v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4087  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4088  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4089  			v->RequiredDISPCLK[i][j] = dml_max(v->RequiredDISPCLK[i][j], v->WritebackRequiredDISPCLK);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4090  			if (v->MaxDispclkRoundedDownToDFSGranularity < v->WritebackRequiredDISPCLK) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4091  				v->DISPCLK_DPPCLK_Support[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4092  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4093  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4094  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4095  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4096  	/*Total Available Pipes Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4097  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4098  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4099  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4100  			if (v->TotalNumberOfActiveDPP[i][j] <= v->MaxNumDPP) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4101  				v->TotalAvailablePipesSupport[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4102  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4103  				v->TotalAvailablePipesSupport[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4104  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4105  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4106  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4107  	/*Display IO and DSC Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4108  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4109  	v->NonsupportedDSCInputBPC = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4110  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4111  		if (!(v->DSCInputBitPerComponent[k] == 12.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4112  				|| v->DSCInputBitPerComponent[k] == 10.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4113  				|| v->DSCInputBitPerComponent[k] == 8.0)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4114  			v->NonsupportedDSCInputBPC = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4115  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4116  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4117  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4118  	/*Number Of DSC Slices*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4119  	for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4120  		if (v->BlendingAndTiming[k] == k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4121  			if (v->PixelClockBackEnd[k] > 3200) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4122  				v->NumberOfDSCSlices[k] = dml_ceil(v->PixelClockBackEnd[k] / 400.0, 4.0);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4123  			} else if (v->PixelClockBackEnd[k] > 1360) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4124  				v->NumberOfDSCSlices[k] = 8;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4125  			} else if (v->PixelClockBackEnd[k] > 680) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4126  				v->NumberOfDSCSlices[k] = 4;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4127  			} else if (v->PixelClockBackEnd[k] > 340) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4128  				v->NumberOfDSCSlices[k] = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4129  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4130  				v->NumberOfDSCSlices[k] = 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4131  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4132  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4133  			v->NumberOfDSCSlices[k] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4134  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4135  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4136  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4137  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4138  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4139  			v->RequiresDSC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4140  			v->RequiresFEC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4141  			if (v->BlendingAndTiming[k] == k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4142  				if (v->Output[k] == dm_hdmi) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4143  					v->RequiresDSC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4144  					v->RequiresFEC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4145  					v->OutputBppPerState[i][k] = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4146  							dml_min(600.0, v->PHYCLKPerState[i]) * 10,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4147  							3,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4148  							v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4149  							v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4150  							v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4151  							v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4152  							false,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4153  							v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4154  							v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4155  							v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4156  							v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4157  							v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4158  							v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4159  							v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4160  				} else if (v->Output[k] == dm_dp || v->Output[k] == dm_edp) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4161  					if (v->DSCEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4162  						v->RequiresDSC[i][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4163  						v->LinkDSCEnable = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4164  						if (v->Output[k] == dm_dp) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4165  							v->RequiresFEC[i][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4166  						} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4167  							v->RequiresFEC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4168  						}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4169  					} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4170  						v->RequiresDSC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4171  						v->LinkDSCEnable = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4172  						v->RequiresFEC[i][k] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4173  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4174  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4175  					v->Outbpp = BPP_INVALID;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4176  					if (v->PHYCLKPerState[i] >= 270.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4177  						v->Outbpp = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4178  								(1.0 - v->Downspreading / 100.0) * 2700,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4179  								v->OutputLinkDPLanes[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4180  								v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4181  								v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4182  								v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4183  								v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4184  								v->LinkDSCEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4185  								v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4186  								v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4187  								v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4188  								v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4189  								v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4190  								v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4191  								v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4192  						v->OutputBppPerState[i][k] = v->Outbpp;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4193  						// TODO: Need some other way to handle this nonsense
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4194  						// v->OutputTypeAndRatePerState[i][k] = v->Output[k] & " HBR"
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4195  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4196  					if (v->Outbpp == BPP_INVALID && v->PHYCLKPerState[i] >= 540.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4197  						v->Outbpp = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4198  								(1.0 - v->Downspreading / 100.0) * 5400,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4199  								v->OutputLinkDPLanes[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4200  								v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4201  								v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4202  								v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4203  								v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4204  								v->LinkDSCEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4205  								v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4206  								v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4207  								v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4208  								v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4209  								v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4210  								v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4211  								v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4212  						v->OutputBppPerState[i][k] = v->Outbpp;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4213  						// TODO: Need some other way to handle this nonsense
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4214  						// v->OutputTypeAndRatePerState[i][k] = v->Output[k] & " HBR2"
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4215  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4216  					if (v->Outbpp == BPP_INVALID && v->PHYCLKPerState[i] >= 810.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4217  						v->Outbpp = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4218  								(1.0 - v->Downspreading / 100.0) * 8100,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4219  								v->OutputLinkDPLanes[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4220  								v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4221  								v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4222  								v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4223  								v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4224  								v->LinkDSCEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4225  								v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4226  								v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4227  								v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4228  								v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4229  								v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4230  								v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4231  								v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4232  						if (v->Outbpp == BPP_INVALID && v->ForcedOutputLinkBPP[k] == 0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4233  							//if (v->Outbpp == BPP_INVALID && v->DSCEnabled[k] == dm_dsc_enable_only_if_necessary && v->ForcedOutputLinkBPP[k] == 0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4234  							v->RequiresDSC[i][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4235  							v->LinkDSCEnable = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4236  							if (v->Output[k] == dm_dp) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4237  								v->RequiresFEC[i][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4238  							}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4239  							v->Outbpp = TruncToValidBPP(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4240  									(1.0 - v->Downspreading / 100.0) * 8100,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4241  									v->OutputLinkDPLanes[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4242  									v->HTotal[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4243  									v->HActive[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4244  									v->PixelClockBackEnd[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4245  									v->ForcedOutputLinkBPP[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4246  									v->LinkDSCEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4247  									v->Output[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4248  									v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4249  									v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4250  									v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4251  									v->AudioSampleRate[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4252  									v->AudioSampleLayout[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4253  									v->ODMCombineEnablePerState[i][k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4254  						}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4255  						v->OutputBppPerState[i][k] = v->Outbpp;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4256  						// TODO: Need some other way to handle this nonsense
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4257  						// v->OutputTypeAndRatePerState[i][k] = v->Output[k] & " HBR3"
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4258  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4259  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4260  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4261  				v->OutputBppPerState[i][k] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4262  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4263  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4264  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4265  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4266  		v->DIOSupport[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4267  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
91a51fbf24e2d9 Wesley Chalmers    2021-01-29  4268  			if (!v->skip_dio_check[k] && v->BlendingAndTiming[k] == k && (v->Output[k] == dm_dp || v->Output[k] == dm_edp || v->Output[k] == dm_hdmi)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4269  					&& (v->OutputBppPerState[i][k] == 0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4270  							|| (v->OutputFormat[k] == dm_420 && v->Interlace[k] == true && v->ProgressiveToInterlaceUnitInOPP == true))) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4271  				v->DIOSupport[i] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4272  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4273  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4274  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4275  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4276  	for (i = 0; i < v->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4277  		v->ODMCombine4To1SupportCheckOK[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4278  		for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4279  			if (v->BlendingAndTiming[k] == k && v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4280  					&& (v->ODMCombine4To1Supported == false || v->Output[k] == dm_dp || v->Output[k] == dm_edp || v->Output[k] == dm_hdmi)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4281  				v->ODMCombine4To1SupportCheckOK[i] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4282  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4283  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4284  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4285  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4286  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4287  		v->DSCCLKRequiredMoreThanSupported[i] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4288  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4289  			if (v->BlendingAndTiming[k] == k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4290  				if (v->Output[k] == dm_dp || v->Output[k] == dm_edp) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4291  					if (v->OutputFormat[k] == dm_420) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4292  						v->DSCFormatFactor = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4293  					} else if (v->OutputFormat[k] == dm_444) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4294  						v->DSCFormatFactor = 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4295  					} else if (v->OutputFormat[k] == dm_n422) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4296  						v->DSCFormatFactor = 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4297  					} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4298  						v->DSCFormatFactor = 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4299  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4300  					if (v->RequiresDSC[i][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4301  						if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4302  							if (v->PixelClockBackEnd[k] / 12.0 / v->DSCFormatFactor
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4303  									> (1.0 - v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) * v->MaxDSCCLK[i]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4304  								v->DSCCLKRequiredMoreThanSupported[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4305  							}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4306  						} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4307  							if (v->PixelClockBackEnd[k] / 6.0 / v->DSCFormatFactor
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4308  									> (1.0 - v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) * v->MaxDSCCLK[i]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4309  								v->DSCCLKRequiredMoreThanSupported[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4310  							}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4311  						} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4312  							if (v->PixelClockBackEnd[k] / 3.0 / v->DSCFormatFactor
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4313  									> (1.0 - v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) * v->MaxDSCCLK[i]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4314  								v->DSCCLKRequiredMoreThanSupported[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4315  							}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4316  						}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4317  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4318  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4319  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4320  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4321  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4322  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4323  		v->NotEnoughDSCUnits[i] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4324  		v->TotalDSCUnitsRequired = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4325  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4326  			if (v->RequiresDSC[i][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4327  				if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4328  					v->TotalDSCUnitsRequired = v->TotalDSCUnitsRequired + 4.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4329  				} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4330  					v->TotalDSCUnitsRequired = v->TotalDSCUnitsRequired + 2.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4331  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4332  					v->TotalDSCUnitsRequired = v->TotalDSCUnitsRequired + 1.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4333  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4334  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4335  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4336  		if (v->TotalDSCUnitsRequired > v->NumberOfDSC) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4337  			v->NotEnoughDSCUnits[i] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4338  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4339  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4340  	/*DSC Delay per state*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4341  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4342  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4343  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4344  			if (v->OutputBppPerState[i][k] == BPP_INVALID) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4345  				v->BPP = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4346  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4347  				v->BPP = v->OutputBppPerState[i][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4348  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4349  			if (v->RequiresDSC[i][k] == true && v->BPP != 0.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4350  				if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_disabled) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4351  					v->DSCDelayPerState[i][k] = dscceComputeDelay(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4352  							v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4353  							v->BPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4354  							dml_ceil(1.0 * v->HActive[k] / v->NumberOfDSCSlices[k], 1.0),
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4355  							v->NumberOfDSCSlices[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4356  							v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4357  							v->Output[k]) + dscComputeDelay(v->OutputFormat[k], v->Output[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4358  				} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4359  					v->DSCDelayPerState[i][k] = 2.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4360  							* dscceComputeDelay(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4361  									v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4362  									v->BPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4363  									dml_ceil(1.0 * v->HActive[k] / v->NumberOfDSCSlices[k], 1.0),
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4364  									v->NumberOfDSCSlices[k] / 2,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4365  									v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4366  									v->Output[k]) + dscComputeDelay(v->OutputFormat[k], v->Output[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4367  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4368  					v->DSCDelayPerState[i][k] = 4.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4369  							* (dscceComputeDelay(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4370  									v->DSCInputBitPerComponent[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4371  									v->BPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4372  									dml_ceil(1.0 * v->HActive[k] / v->NumberOfDSCSlices[k], 1.0),
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4373  									v->NumberOfDSCSlices[k] / 4,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4374  									v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4375  									v->Output[k]) + dscComputeDelay(v->OutputFormat[k], v->Output[k]));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4376  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4377  				v->DSCDelayPerState[i][k] = v->DSCDelayPerState[i][k] * v->PixelClock[k] / v->PixelClockBackEnd[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4378  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4379  				v->DSCDelayPerState[i][k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4380  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4381  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4382  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4383  			for (m = 0; m <= v->NumberOfActivePlanes - 1; m++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4384  				if (v->BlendingAndTiming[k] == m && v->RequiresDSC[i][m] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4385  					v->DSCDelayPerState[i][k] = v->DSCDelayPerState[i][m];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4386  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4387  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4388  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4389  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4390  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4391  	//Calculate Swath, DET Configuration, DCFCLKDeepSleep
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4392  	//
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4393  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4394  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4395  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4396  				v->RequiredDPPCLKThisState[k] = v->RequiredDPPCLK[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4397  				v->NoOfDPPThisState[k] = v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4398  				v->ODMCombineEnableThisState[k] = v->ODMCombineEnablePerState[i][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4399  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4400  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4401  			CalculateSwathAndDETConfiguration(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4402  					false,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4403  					v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4404  					v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4405  					v->MaximumSwathWidthLuma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4406  					v->MaximumSwathWidthChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4407  					v->SourceScan,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4408  					v->SourcePixelFormat,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4409  					v->SurfaceTiling,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4410  					v->ViewportWidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4411  					v->ViewportHeight,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4412  					v->SurfaceWidthY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4413  					v->SurfaceWidthC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4414  					v->SurfaceHeightY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4415  					v->SurfaceHeightC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4416  					v->Read256BlockHeightY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4417  					v->Read256BlockHeightC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4418  					v->Read256BlockWidthY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4419  					v->Read256BlockWidthC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4420  					v->ODMCombineEnableThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4421  					v->BlendingAndTiming,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4422  					v->BytePerPixelY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4423  					v->BytePerPixelC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4424  					v->BytePerPixelInDETY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4425  					v->BytePerPixelInDETC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4426  					v->HActive,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4427  					v->HRatio,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4428  					v->HRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4429  					v->NoOfDPPThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4430  					v->swath_width_luma_ub_this_state,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4431  					v->swath_width_chroma_ub_this_state,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4432  					v->SwathWidthYThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4433  					v->SwathWidthCThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4434  					v->SwathHeightYThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4435  					v->SwathHeightCThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4436  					v->DETBufferSizeYThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4437  					v->DETBufferSizeCThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4438  					v->dummystring,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4439  					&v->ViewportSizeSupport[i][j]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4440  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4441  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4442  				v->swath_width_luma_ub_all_states[i][j][k] = v->swath_width_luma_ub_this_state[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4443  				v->swath_width_chroma_ub_all_states[i][j][k] = v->swath_width_chroma_ub_this_state[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4444  				v->SwathWidthYAllStates[i][j][k] = v->SwathWidthYThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4445  				v->SwathWidthCAllStates[i][j][k] = v->SwathWidthCThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4446  				v->SwathHeightYAllStates[i][j][k] = v->SwathHeightYThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4447  				v->SwathHeightCAllStates[i][j][k] = v->SwathHeightCThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4448  				v->DETBufferSizeYAllStates[i][j][k] = v->DETBufferSizeYThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4449  				v->DETBufferSizeCAllStates[i][j][k] = v->DETBufferSizeCThisState[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4450  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4451  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4452  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4453  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4454  	for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4455  		v->cursor_bw[k] = v->NumberOfCursors[k] * v->CursorWidth[k][0] * v->CursorBPP[k][0] / 8.0 / (v->HTotal[k] / v->PixelClock[k]) * v->VRatio[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4456  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4457  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4458  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4459  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4460  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4461  				v->swath_width_luma_ub_this_state[k] = v->swath_width_luma_ub_all_states[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4462  				v->swath_width_chroma_ub_this_state[k] = v->swath_width_chroma_ub_all_states[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4463  				v->SwathWidthYThisState[k] = v->SwathWidthYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4464  				v->SwathWidthCThisState[k] = v->SwathWidthCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4465  				v->SwathHeightYThisState[k] = v->SwathHeightYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4466  				v->SwathHeightCThisState[k] = v->SwathHeightCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4467  				v->DETBufferSizeYThisState[k] = v->DETBufferSizeYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4468  				v->DETBufferSizeCThisState[k] = v->DETBufferSizeCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4469  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4470  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4471  			v->TotalNumberOfDCCActiveDPP[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4472  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4473  				if (v->DCCEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4474  					v->TotalNumberOfDCCActiveDPP[i][j] = v->TotalNumberOfDCCActiveDPP[i][j] + v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4475  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4476  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4477  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4478  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4479  				if (v->SourcePixelFormat[k] == dm_420_8 || v->SourcePixelFormat[k] == dm_420_10 || v->SourcePixelFormat[k] == dm_420_12
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4480  						|| v->SourcePixelFormat[k] == dm_rgbe_alpha) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4481  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4482  					if ((v->SourcePixelFormat[k] == dm_420_10 || v->SourcePixelFormat[k] == dm_420_12) && v->SourceScan[k] != dm_vert) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4483  						v->PTEBufferSizeInRequestsForLuma = (v->PTEBufferSizeInRequestsLuma + v->PTEBufferSizeInRequestsChroma) / 2;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4484  						v->PTEBufferSizeInRequestsForChroma = v->PTEBufferSizeInRequestsForLuma;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4485  					} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4486  						v->PTEBufferSizeInRequestsForLuma = v->PTEBufferSizeInRequestsLuma;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4487  						v->PTEBufferSizeInRequestsForChroma = v->PTEBufferSizeInRequestsChroma;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4488  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4489  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4490  					v->PDEAndMetaPTEBytesPerFrameC = CalculateVMAndRowBytes(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4491  							mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4492  							v->DCCEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4493  							v->Read256BlockHeightC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4494  							v->Read256BlockWidthY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4495  							v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4496  							v->SurfaceTiling[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4497  							v->BytePerPixelC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4498  							v->SourceScan[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4499  							v->SwathWidthCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4500  							v->ViewportHeightChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4501  							v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4502  							v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4503  							v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4504  							v->GPUVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4505  							v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4506  							v->PTEBufferSizeInRequestsForChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4507  							v->PitchC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4508  							0.0,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4509  							&v->MacroTileWidthC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4510  							&v->MetaRowBytesC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4511  							&v->DPTEBytesPerRowC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4512  							&v->PTEBufferSizeNotExceededC[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4513  							&v->dummyinteger7,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4514  							&v->dpte_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4515  							&v->dummyinteger28,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4516  							&v->dummyinteger26,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4517  							&v->dummyinteger23,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4518  							&v->meta_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4519  							&v->dummyinteger8,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4520  							&v->dummyinteger9,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4521  							&v->dummyinteger19,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4522  							&v->dummyinteger20,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4523  							&v->dummyinteger17,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4524  							&v->dummyinteger10,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4525  							&v->dummyinteger11);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4526  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4527  					v->PrefetchLinesC[i][j][k] = CalculatePrefetchSourceLines(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4528  							mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4529  							v->VRatioChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4530  							v->VTAPsChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4531  							v->Interlace[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4532  							v->ProgressiveToInterlaceUnitInOPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4533  							v->SwathHeightCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4534  							v->ViewportYStartC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4535  							&v->PrefillC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4536  							&v->MaxNumSwC[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4537  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4538  					v->PTEBufferSizeInRequestsForLuma = v->PTEBufferSizeInRequestsLuma + v->PTEBufferSizeInRequestsChroma;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4539  					v->PTEBufferSizeInRequestsForChroma = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4540  					v->PDEAndMetaPTEBytesPerFrameC = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4541  					v->MetaRowBytesC = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4542  					v->DPTEBytesPerRowC = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4543  					v->PrefetchLinesC[i][j][k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4544  					v->PTEBufferSizeNotExceededC[i][j][k] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4545  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4546  				v->PDEAndMetaPTEBytesPerFrameY = CalculateVMAndRowBytes(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4547  						mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4548  						v->DCCEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4549  						v->Read256BlockHeightY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4550  						v->Read256BlockWidthY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4551  						v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4552  						v->SurfaceTiling[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4553  						v->BytePerPixelY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4554  						v->SourceScan[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4555  						v->SwathWidthYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4556  						v->ViewportHeight[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4557  						v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4558  						v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4559  						v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4560  						v->GPUVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4561  						v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4562  						v->PTEBufferSizeInRequestsForLuma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4563  						v->PitchY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4564  						v->DCCMetaPitchY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4565  						&v->MacroTileWidthY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4566  						&v->MetaRowBytesY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4567  						&v->DPTEBytesPerRowY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4568  						&v->PTEBufferSizeNotExceededY[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4569  						v->dummyinteger4,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4570  						&v->dpte_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4571  						&v->dummyinteger29,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4572  						&v->dummyinteger27,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4573  						&v->dummyinteger24,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4574  						&v->meta_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4575  						&v->dummyinteger25,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4576  						&v->dpte_group_bytes[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4577  						&v->dummyinteger21,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4578  						&v->dummyinteger22,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4579  						&v->dummyinteger18,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4580  						&v->dummyinteger5,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4581  						&v->dummyinteger6);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4582  				v->PrefetchLinesY[i][j][k] = CalculatePrefetchSourceLines(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4583  						mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4584  						v->VRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4585  						v->vtaps[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4586  						v->Interlace[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4587  						v->ProgressiveToInterlaceUnitInOPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4588  						v->SwathHeightYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4589  						v->ViewportYStartY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4590  						&v->PrefillY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4591  						&v->MaxNumSwY[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4592  				v->PDEAndMetaPTEBytesPerFrame[i][j][k] = v->PDEAndMetaPTEBytesPerFrameY + v->PDEAndMetaPTEBytesPerFrameC;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4593  				v->MetaRowBytes[i][j][k] = v->MetaRowBytesY + v->MetaRowBytesC;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4594  				v->DPTEBytesPerRow[i][j][k] = v->DPTEBytesPerRowY + v->DPTEBytesPerRowC;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4595  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4596  				CalculateRowBandwidth(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4597  						v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4598  						v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4599  						v->VRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4600  						v->VRatioChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4601  						v->DCCEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4602  						v->HTotal[k] / v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4603  						v->MetaRowBytesY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4604  						v->MetaRowBytesC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4605  						v->meta_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4606  						v->meta_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4607  						v->DPTEBytesPerRowY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4608  						v->DPTEBytesPerRowC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4609  						v->dpte_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4610  						v->dpte_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4611  						&v->meta_row_bandwidth[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4612  						&v->dpte_row_bandwidth[i][j][k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4613  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4614  			v->UrgLatency[i] = CalculateUrgentLatency(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4615  					v->UrgentLatencyPixelDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4616  					v->UrgentLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4617  					v->UrgentLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4618  					v->DoUrgentLatencyAdjustment,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4619  					v->UrgentLatencyAdjustmentFabricClockComponent,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4620  					v->UrgentLatencyAdjustmentFabricClockReference,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4621  					v->FabricClockPerState[i]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4622  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4623  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4624  				CalculateUrgentBurstFactor(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4625  						v->swath_width_luma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4626  						v->swath_width_chroma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4627  						v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4628  						v->SwathHeightYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4629  						v->SwathHeightCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4630  						v->HTotal[k] / v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4631  						v->UrgLatency[i],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4632  						v->CursorBufferSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4633  						v->CursorWidth[k][0],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4634  						v->CursorBPP[k][0],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4635  						v->VRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4636  						v->VRatioChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4637  						v->BytePerPixelInDETY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4638  						v->BytePerPixelInDETC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4639  						v->DETBufferSizeYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4640  						v->DETBufferSizeCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4641  						&v->UrgentBurstFactorCursor[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4642  						&v->UrgentBurstFactorLuma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4643  						&v->UrgentBurstFactorChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4644  						&NotUrgentLatencyHiding[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4645  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4646  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4647  			v->NotUrgentLatencyHiding[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4648  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4649  				if (NotUrgentLatencyHiding[k]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4650  					v->NotUrgentLatencyHiding[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4651  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4652  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4653  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4654  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4655  				v->VActivePixelBandwidth[i][j][k] = v->ReadBandwidthLuma[k] * v->UrgentBurstFactorLuma[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4656  						+ v->ReadBandwidthChroma[k] * v->UrgentBurstFactorChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4657  				v->VActiveCursorBandwidth[i][j][k] = v->cursor_bw[k] * v->UrgentBurstFactorCursor[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4658  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4659  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4660  			v->TotalVActivePixelBandwidth[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4661  			v->TotalVActiveCursorBandwidth[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4662  			v->TotalMetaRowBandwidth[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4663  			v->TotalDPTERowBandwidth[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4664  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4665  				v->TotalVActivePixelBandwidth[i][j] = v->TotalVActivePixelBandwidth[i][j] + v->VActivePixelBandwidth[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4666  				v->TotalVActiveCursorBandwidth[i][j] = v->TotalVActiveCursorBandwidth[i][j] + v->VActiveCursorBandwidth[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4667  				v->TotalMetaRowBandwidth[i][j] = v->TotalMetaRowBandwidth[i][j] + v->NoOfDPP[i][j][k] * v->meta_row_bandwidth[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4668  				v->TotalDPTERowBandwidth[i][j] = v->TotalDPTERowBandwidth[i][j] + v->NoOfDPP[i][j][k] * v->dpte_row_bandwidth[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4669  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4670  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4671  			CalculateDCFCLKDeepSleep(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4672  					mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4673  					v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4674  					v->BytePerPixelY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4675  					v->BytePerPixelC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4676  					v->VRatio,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4677  					v->VRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4678  					v->SwathWidthYThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4679  					v->SwathWidthCThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4680  					v->NoOfDPPThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4681  					v->HRatio,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4682  					v->HRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4683  					v->PixelClock,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4684  					v->PSCL_FACTOR,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4685  					v->PSCL_FACTOR_CHROMA,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4686  					v->RequiredDPPCLKThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4687  					v->ReadBandwidthLuma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4688  					v->ReadBandwidthChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4689  					v->ReturnBusWidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4690  					&v->ProjectedDCFCLKDeepSleep[i][j]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4691  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4692  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4693  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4694  	//Calculate Return BW
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4695  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4696  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4697  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4698  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4699  				if (v->BlendingAndTiming[k] == k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4700  					if (v->WritebackEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4701  						v->WritebackDelayTime[k] = v->WritebackLatency
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4702  								+ CalculateWriteBackDelay(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4703  										v->WritebackPixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4704  										v->WritebackHRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4705  										v->WritebackVRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4706  										v->WritebackVTaps[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4707  										v->WritebackDestinationWidth[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4708  										v->WritebackDestinationHeight[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4709  										v->WritebackSourceHeight[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4710  										v->HTotal[k]) / v->RequiredDISPCLK[i][j];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4711  					} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4712  						v->WritebackDelayTime[k] = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4713  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4714  					for (m = 0; m <= v->NumberOfActivePlanes - 1; m++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4715  						if (v->BlendingAndTiming[m] == k && v->WritebackEnable[m] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4716  							v->WritebackDelayTime[k] = dml_max(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4717  									v->WritebackDelayTime[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4718  									v->WritebackLatency
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4719  											+ CalculateWriteBackDelay(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4720  													v->WritebackPixelFormat[m],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4721  													v->WritebackHRatio[m],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4722  													v->WritebackVRatio[m],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4723  													v->WritebackVTaps[m],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4724  													v->WritebackDestinationWidth[m],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4725  													v->WritebackDestinationHeight[m],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4726  													v->WritebackSourceHeight[m],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4727  													v->HTotal[m]) / v->RequiredDISPCLK[i][j]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4728  						}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4729  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4730  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4731  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4732  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4733  				for (m = 0; m <= v->NumberOfActivePlanes - 1; m++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4734  					if (v->BlendingAndTiming[k] == m) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4735  						v->WritebackDelayTime[k] = v->WritebackDelayTime[m];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4736  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4737  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4738  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4739  			v->MaxMaxVStartup[i][j] = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4740  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4741  				v->MaximumVStartup[i][j][k] = v->VTotal[k] - v->VActive[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4742  						- dml_max(1.0, dml_ceil(1.0 * v->WritebackDelayTime[k] / (v->HTotal[k] / v->PixelClock[k]), 1.0));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4743  				v->MaxMaxVStartup[i][j] = dml_max(v->MaxMaxVStartup[i][j], v->MaximumVStartup[i][j][k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4744  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4745  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4746  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4747  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4748  	ReorderingBytes = v->NumberOfChannels
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4749  			* dml_max3(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4750  					v->UrgentOutOfOrderReturnPerChannelPixelDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4751  					v->UrgentOutOfOrderReturnPerChannelPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4752  					v->UrgentOutOfOrderReturnPerChannelVMDataOnly);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4753  	v->FinalDRAMClockChangeLatency = (v->DRAMClockChangeLatencyOverride > 0 ? v->DRAMClockChangeLatencyOverride : v->DRAMClockChangeLatency);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4754  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4755  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4756  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4757  			v->DCFCLKState[i][j] = v->DCFCLKPerState[i];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4758  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4759  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4760  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4761  	if (v->UseMinimumRequiredDCFCLK == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4762  		UseMinimumDCFCLK(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4763  				mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4764  				v->MaxInterDCNTileRepeaters,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4765  				MaxPrefetchMode,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4766  				v->FinalDRAMClockChangeLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4767  				v->SREnterPlusExitTime,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4768  				v->ReturnBusWidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4769  				v->RoundTripPingLatencyCycles,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4770  				ReorderingBytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4771  				v->PixelChunkSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4772  				v->MetaChunkSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4773  				v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4774  				v->GPUVMMaxPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4775  				v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4776  				v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4777  				v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4778  				v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4779  				v->DynamicMetadataVMEnabled,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4780  				v->ImmediateFlipRequirement,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4781  				v->ProgressiveToInterlaceUnitInOPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4782  				v->MaxAveragePercentOfIdealSDPPortBWDisplayCanUseInNormalSystemOperation,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4783  				v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4784  				v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4785  				v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4786  				v->VTotal,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4787  				v->VActive,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4788  				v->DynamicMetadataTransmittedBytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4789  				v->DynamicMetadataLinesBeforeActiveRequired,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4790  				v->Interlace,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4791  				v->RequiredDPPCLK,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4792  				v->RequiredDISPCLK,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4793  				v->UrgLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4794  				v->NoOfDPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4795  				v->ProjectedDCFCLKDeepSleep,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4796  				v->MaximumVStartup,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4797  				v->TotalVActivePixelBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4798  				v->TotalVActiveCursorBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4799  				v->TotalMetaRowBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4800  				v->TotalDPTERowBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4801  				v->TotalNumberOfActiveDPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4802  				v->TotalNumberOfDCCActiveDPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4803  				v->dpte_group_bytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4804  				v->PrefetchLinesY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4805  				v->PrefetchLinesC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4806  				v->swath_width_luma_ub_all_states,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4807  				v->swath_width_chroma_ub_all_states,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4808  				v->BytePerPixelY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4809  				v->BytePerPixelC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4810  				v->HTotal,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4811  				v->PixelClock,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4812  				v->PDEAndMetaPTEBytesPerFrame,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4813  				v->DPTEBytesPerRow,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4814  				v->MetaRowBytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4815  				v->DynamicMetadataEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4816  				v->VActivePixelBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4817  				v->VActiveCursorBandwidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4818  				v->ReadBandwidthLuma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4819  				v->ReadBandwidthChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4820  				v->DCFCLKPerState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4821  				v->DCFCLKState);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4822  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4823  		if (v->ClampMinDCFCLK) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4824  			/* Clamp calculated values to actual minimum */
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4825  			for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4826  				for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4827  					if (v->DCFCLKState[i][j] < mode_lib->soc.min_dcfclk) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4828  						v->DCFCLKState[i][j] = mode_lib->soc.min_dcfclk;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4829  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4830  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4831  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4832  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4833  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4834  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4835  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4836  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4837  			v->IdealSDPPortBandwidthPerState[i][j] = dml_min3(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4838  					v->ReturnBusWidth * v->DCFCLKState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4839  					v->DRAMSpeedPerState[i] * v->NumberOfChannels * v->DRAMChannelWidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4840  					v->FabricClockPerState[i] * v->FabricDatapathToDCNDataReturn);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4841  			if (v->HostVMEnable != true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4842  				v->ReturnBWPerState[i][j] = v->IdealSDPPortBandwidthPerState[i][j] * v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelDataOnly
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4843  						/ 100;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4844  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4845  				v->ReturnBWPerState[i][j] = v->IdealSDPPortBandwidthPerState[i][j]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4846  						* v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData / 100;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4847  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4848  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4849  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4850  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4851  	//Re-ordering Buffer Support Check
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4852  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4853  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4854  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4855  			if ((v->ROBBufferSizeInKByte - v->PixelChunkSizeInKByte) * 1024 / v->ReturnBWPerState[i][j]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4856  					> (v->RoundTripPingLatencyCycles + 32) / v->DCFCLKState[i][j] + ReorderingBytes / v->ReturnBWPerState[i][j]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4857  				v->ROBSupport[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4858  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4859  				v->ROBSupport[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4860  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4861  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4862  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4863  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4864  	//Vertical Active BW support check
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4865  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4866  	MaxTotalVActiveRDBandwidth = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4867  	for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4868  		MaxTotalVActiveRDBandwidth = MaxTotalVActiveRDBandwidth + v->ReadBandwidthLuma[k] + v->ReadBandwidthChroma[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4869  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4870  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4871  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4872  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4873  			v->MaxTotalVerticalActiveAvailableBandwidth[i][j] = dml_min(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4874  					v->IdealSDPPortBandwidthPerState[i][j] * v->MaxAveragePercentOfIdealSDPPortBWDisplayCanUseInNormalSystemOperation / 100,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4875  					v->DRAMSpeedPerState[i] * v->NumberOfChannels * v->DRAMChannelWidth * v->MaxAveragePercentOfIdealDRAMBWDisplayCanUseInNormalSystemOperation
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4876  							/ 100);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4877  			if (MaxTotalVActiveRDBandwidth <= v->MaxTotalVerticalActiveAvailableBandwidth[i][j]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4878  				v->TotalVerticalActiveBandwidthSupport[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4879  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4880  				v->TotalVerticalActiveBandwidthSupport[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4881  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4882  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4883  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4884  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4885  	//Prefetch Check
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4886  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4887  	for (i = 0; i < mode_lib->soc.num_states; ++i) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4888  		for (j = 0; j <= 1; ++j) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4889  			int NextPrefetchModeState = MinPrefetchMode;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4890  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4891  			v->TimeCalc = 24 / v->ProjectedDCFCLKDeepSleep[i][j];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4892  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4893  			v->BandwidthWithoutPrefetchSupported[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4894  			if (v->TotalVActivePixelBandwidth[i][j] + v->TotalVActiveCursorBandwidth[i][j] + v->TotalMetaRowBandwidth[i][j] + v->TotalDPTERowBandwidth[i][j]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4895  					> v->ReturnBWPerState[i][j] || v->NotUrgentLatencyHiding[i][j]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4896  				v->BandwidthWithoutPrefetchSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4897  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4898  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4899  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4900  				v->NoOfDPPThisState[k] = v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4901  				v->swath_width_luma_ub_this_state[k] = v->swath_width_luma_ub_all_states[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4902  				v->swath_width_chroma_ub_this_state[k] = v->swath_width_chroma_ub_all_states[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4903  				v->SwathWidthYThisState[k] = v->SwathWidthYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4904  				v->SwathWidthCThisState[k] = v->SwathWidthCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4905  				v->SwathHeightYThisState[k] = v->SwathHeightYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4906  				v->SwathHeightCThisState[k] = v->SwathHeightCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4907  				v->DETBufferSizeYThisState[k] = v->DETBufferSizeYAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4908  				v->DETBufferSizeCThisState[k] = v->DETBufferSizeCAllStates[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4909  				v->ODMCombineEnabled[k] = v->ODMCombineEnablePerState[i][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4910  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4911  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4912  			v->ExtraLatency = CalculateExtraLatency(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4913  					v->RoundTripPingLatencyCycles,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4914  					ReorderingBytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4915  					v->DCFCLKState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4916  					v->TotalNumberOfActiveDPP[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4917  					v->PixelChunkSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4918  					v->TotalNumberOfDCCActiveDPP[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4919  					v->MetaChunkSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4920  					v->ReturnBWPerState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4921  					v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4922  					v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4923  					v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4924  					v->NoOfDPPThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4925  					v->dpte_group_bytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4926  					v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4927  					v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4928  					v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4929  					v->HostVMMaxNonCachedPageTableLevels);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4930  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4931  			v->NextMaxVStartup = v->MaxMaxVStartup[i][j];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4932  			do {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4933  				v->PrefetchModePerState[i][j] = NextPrefetchModeState;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4934  				v->MaxVStartup = v->NextMaxVStartup;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4935  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4936  				v->TWait = CalculateTWait(v->PrefetchModePerState[i][j], v->FinalDRAMClockChangeLatency, v->UrgLatency[i], v->SREnterPlusExitTime);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4937  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4938  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4939  					Pipe myPipe = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4940  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4941  					myPipe.DPPCLK = v->RequiredDPPCLK[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4942  					myPipe.DISPCLK = v->RequiredDISPCLK[i][j];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4943  					myPipe.PixelClock = v->PixelClock[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4944  					myPipe.DCFCLKDeepSleep = v->ProjectedDCFCLKDeepSleep[i][j];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4945  					myPipe.DPPPerPlane = v->NoOfDPP[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4946  					myPipe.ScalerEnabled = v->ScalerEnabled[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4947  					myPipe.SourceScan = v->SourceScan[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4948  					myPipe.BlockWidth256BytesY = v->Read256BlockWidthY[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4949  					myPipe.BlockHeight256BytesY = v->Read256BlockHeightY[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4950  					myPipe.BlockWidth256BytesC = v->Read256BlockWidthC[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4951  					myPipe.BlockHeight256BytesC = v->Read256BlockHeightC[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4952  					myPipe.InterlaceEnable = v->Interlace[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4953  					myPipe.NumberOfCursors = v->NumberOfCursors[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4954  					myPipe.VBlank = v->VTotal[k] - v->VActive[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4955  					myPipe.HTotal = v->HTotal[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4956  					myPipe.DCCEnable = v->DCCEnable[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4957  					myPipe.ODMCombineEnabled = !!v->ODMCombineEnabled[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4958  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4959  					v->NoTimeForPrefetch[i][j][k] = CalculatePrefetchSchedule(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4960  							mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4961  							v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4962  							v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4963  							&myPipe,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4964  							v->DSCDelayPerState[i][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4965  							v->DPPCLKDelaySubtotal + v->DPPCLKDelayCNVCFormater,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4966  							v->DPPCLKDelaySCL,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4967  							v->DPPCLKDelaySCLLBOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4968  							v->DPPCLKDelayCNVCCursor,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4969  							v->DISPCLKDelaySubtotal,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4970  							v->SwathWidthYThisState[k] / v->HRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4971  							v->OutputFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4972  							v->MaxInterDCNTileRepeaters,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4973  							dml_min(v->MaxVStartup, v->MaximumVStartup[i][j][k]),
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4974  							v->MaximumVStartup[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4975  							v->GPUVMMaxPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4976  							v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4977  							v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4978  							v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4979  							v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4980  							v->DynamicMetadataEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4981  							v->DynamicMetadataVMEnabled,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4982  							v->DynamicMetadataLinesBeforeActiveRequired[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4983  							v->DynamicMetadataTransmittedBytes[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4984  							v->UrgLatency[i],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4985  							v->ExtraLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4986  							v->TimeCalc,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4987  							v->PDEAndMetaPTEBytesPerFrame[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4988  							v->MetaRowBytes[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4989  							v->DPTEBytesPerRow[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4990  							v->PrefetchLinesY[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4991  							v->SwathWidthYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4992  							v->BytePerPixelY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4993  							v->PrefillY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4994  							v->MaxNumSwY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4995  							v->PrefetchLinesC[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4996  							v->SwathWidthCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4997  							v->BytePerPixelC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4998  							v->PrefillC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  4999  							v->MaxNumSwC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5000  							v->swath_width_luma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5001  							v->swath_width_chroma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5002  							v->SwathHeightYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5003  							v->SwathHeightCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5004  							v->TWait,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5005  							v->ProgressiveToInterlaceUnitInOPP,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5006  							&v->DSTXAfterScaler[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5007  							&v->DSTYAfterScaler[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5008  							&v->LineTimesForPrefetch[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5009  							&v->PrefetchBW[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5010  							&v->LinesForMetaPTE[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5011  							&v->LinesForMetaAndDPTERow[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5012  							&v->VRatioPreY[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5013  							&v->VRatioPreC[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5014  							&v->RequiredPrefetchPixelDataBWLuma[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5015  							&v->RequiredPrefetchPixelDataBWChroma[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5016  							&v->NoTimeForDynamicMetadata[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5017  							&v->Tno_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5018  							&v->prefetch_vmrow_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5019  							&v->Tdmdl_vm[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5020  							&v->Tdmdl[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5021  							&v->VUpdateOffsetPix[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5022  							&v->VUpdateWidthPix[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5023  							&v->VReadyOffsetPix[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5024  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5025  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5026  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5027  					CalculateUrgentBurstFactor(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5028  							v->swath_width_luma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5029  							v->swath_width_chroma_ub_this_state[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5030  							v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5031  							v->SwathHeightYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5032  							v->SwathHeightCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5033  							v->HTotal[k] / v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5034  							v->UrgentLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5035  							v->CursorBufferSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5036  							v->CursorWidth[k][0],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5037  							v->CursorBPP[k][0],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5038  							v->VRatioPreY[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5039  							v->VRatioPreC[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5040  							v->BytePerPixelInDETY[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5041  							v->BytePerPixelInDETC[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5042  							v->DETBufferSizeYThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5043  							v->DETBufferSizeCThisState[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5044  							&v->UrgentBurstFactorCursorPre[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5045  							&v->UrgentBurstFactorLumaPre[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5046  							&v->UrgentBurstFactorChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5047  							&v->NoUrgentLatencyHidingPre[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5048  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5049  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5050  				v->MaximumReadBandwidthWithPrefetch = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5051  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5052  					v->cursor_bw_pre[k] = v->NumberOfCursors[k] * v->CursorWidth[k][0] * v->CursorBPP[k][0] / 8.0 / (v->HTotal[k] / v->PixelClock[k])
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5053  							* v->VRatioPreY[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5054  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5055  					v->MaximumReadBandwidthWithPrefetch = v->MaximumReadBandwidthWithPrefetch
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5056  							+ dml_max4(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5057  									v->VActivePixelBandwidth[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5058  									v->VActiveCursorBandwidth[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5059  											+ v->NoOfDPP[i][j][k] * (v->meta_row_bandwidth[i][j][k] + v->dpte_row_bandwidth[i][j][k]),
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5060  									v->NoOfDPP[i][j][k] * v->prefetch_vmrow_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5061  									v->NoOfDPP[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5062  											* (v->RequiredPrefetchPixelDataBWLuma[i][j][k] * v->UrgentBurstFactorLumaPre[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5063  													+ v->RequiredPrefetchPixelDataBWChroma[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5064  															* v->UrgentBurstFactorChromaPre[k])
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5065  											+ v->cursor_bw_pre[k] * v->UrgentBurstFactorCursorPre[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5066  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5067  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5068  				v->NotEnoughUrgentLatencyHidingPre = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5069  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5070  					if (v->NoUrgentLatencyHidingPre[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5071  						v->NotEnoughUrgentLatencyHidingPre = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5072  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5073  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5074  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5075  				v->PrefetchSupported[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5076  				if (v->BandwidthWithoutPrefetchSupported[i][j] == false || v->MaximumReadBandwidthWithPrefetch > v->ReturnBWPerState[i][j]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5077  						|| v->NotEnoughUrgentLatencyHidingPre == 1) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5078  					v->PrefetchSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5079  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5080  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5081  					if (v->LineTimesForPrefetch[k] < 2.0 || v->LinesForMetaPTE[k] >= 32.0 || v->LinesForMetaAndDPTERow[k] >= 16.0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5082  							|| v->NoTimeForPrefetch[i][j][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5083  						v->PrefetchSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5084  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5085  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5086  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5087  				v->DynamicMetadataSupported[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5088  				for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5089  					if (v->NoTimeForDynamicMetadata[i][j][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5090  						v->DynamicMetadataSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5091  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5092  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5093  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5094  				v->VRatioInPrefetchSupported[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5095  				for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5096  					if (v->VRatioPreY[i][j][k] > 4.0 || v->VRatioPreC[i][j][k] > 4.0 || v->NoTimeForPrefetch[i][j][k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5097  						v->VRatioInPrefetchSupported[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5098  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5099  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5100  				v->AnyLinesForVMOrRowTooLarge = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5101  				for (k = 0; k < v->NumberOfActivePlanes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5102  					if (v->LinesForMetaAndDPTERow[k] >= 16 || v->LinesForMetaPTE[k] >= 32) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5103  						v->AnyLinesForVMOrRowTooLarge = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5104  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5105  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5106  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5107  				if (v->PrefetchSupported[i][j] == true && v->VRatioInPrefetchSupported[i][j] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5108  					v->BandwidthAvailableForImmediateFlip = v->ReturnBWPerState[i][j];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5109  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5110  						v->BandwidthAvailableForImmediateFlip = v->BandwidthAvailableForImmediateFlip
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5111  								- dml_max(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5112  										v->VActivePixelBandwidth[i][j][k] + v->VActiveCursorBandwidth[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5113  										v->NoOfDPP[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5114  												* (v->RequiredPrefetchPixelDataBWLuma[i][j][k] * v->UrgentBurstFactorLumaPre[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5115  														+ v->RequiredPrefetchPixelDataBWChroma[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5116  																* v->UrgentBurstFactorChromaPre[k])
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5117  												+ v->cursor_bw_pre[k] * v->UrgentBurstFactorCursorPre[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5118  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5119  					v->TotImmediateFlipBytes = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5120  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5121  						v->TotImmediateFlipBytes = v->TotImmediateFlipBytes + v->NoOfDPP[i][j][k] * v->PDEAndMetaPTEBytesPerFrame[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5122  								+ v->MetaRowBytes[i][j][k] + v->DPTEBytesPerRow[i][j][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5123  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5124  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5125  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5126  						CalculateFlipSchedule(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5127  								mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5128  								v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyPixelMixedWithVMData,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5129  								v->PercentOfIdealDRAMFabricAndSDPPortBWReceivedAfterUrgLatencyVMDataOnly,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5130  								v->ExtraLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5131  								v->UrgLatency[i],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5132  								v->GPUVMMaxPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5133  								v->HostVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5134  								v->HostVMMaxNonCachedPageTableLevels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5135  								v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5136  								v->HostVMMinPageSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5137  								v->PDEAndMetaPTEBytesPerFrame[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5138  								v->MetaRowBytes[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5139  								v->DPTEBytesPerRow[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5140  								v->BandwidthAvailableForImmediateFlip,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5141  								v->TotImmediateFlipBytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5142  								v->SourcePixelFormat[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5143  								v->HTotal[k] / v->PixelClock[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5144  								v->VRatio[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5145  								v->VRatioChroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5146  								v->Tno_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5147  								v->DCCEnable[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5148  								v->dpte_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5149  								v->meta_row_height[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5150  								v->dpte_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5151  								v->meta_row_height_chroma[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5152  								&v->DestinationLinesToRequestVMInImmediateFlip[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5153  								&v->DestinationLinesToRequestRowInImmediateFlip[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5154  								&v->final_flip_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5155  								&v->ImmediateFlipSupportedForPipe[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5156  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5157  					v->total_dcn_read_bw_with_flip = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5158  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5159  						v->total_dcn_read_bw_with_flip = v->total_dcn_read_bw_with_flip
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5160  								+ dml_max3(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5161  										v->NoOfDPP[i][j][k] * v->prefetch_vmrow_bw[k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5162  										v->NoOfDPP[i][j][k] * v->final_flip_bw[k] + v->VActivePixelBandwidth[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5163  												+ v->VActiveCursorBandwidth[i][j][k],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5164  										v->NoOfDPP[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5165  												* (v->final_flip_bw[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5166  														+ v->RequiredPrefetchPixelDataBWLuma[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5167  																* v->UrgentBurstFactorLumaPre[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5168  														+ v->RequiredPrefetchPixelDataBWChroma[i][j][k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5169  																* v->UrgentBurstFactorChromaPre[k])
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5170  												+ v->cursor_bw_pre[k] * v->UrgentBurstFactorCursorPre[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5171  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5172  					v->ImmediateFlipSupportedForState[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5173  					if (v->total_dcn_read_bw_with_flip > v->ReturnBWPerState[i][j]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5174  						v->ImmediateFlipSupportedForState[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5175  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5176  					for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5177  						if (v->ImmediateFlipSupportedForPipe[k] == false) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5178  							v->ImmediateFlipSupportedForState[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5179  						}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5180  					}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5181  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5182  					v->ImmediateFlipSupportedForState[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5183  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5184  				if (v->MaxVStartup <= 13 || v->AnyLinesForVMOrRowTooLarge == false) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5185  					v->NextMaxVStartup = v->MaxMaxVStartup[i][j];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5186  					NextPrefetchModeState = NextPrefetchModeState + 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5187  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5188  					v->NextMaxVStartup = v->NextMaxVStartup - 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5189  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5190  			} while (!((v->PrefetchSupported[i][j] == true && v->DynamicMetadataSupported[i][j] == true && v->VRatioInPrefetchSupported[i][j] == true
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5191  					&& ((v->HostVMEnable == false && v->ImmediateFlipRequirement != dm_immediate_flip_required)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5192  							|| v->ImmediateFlipSupportedForState[i][j] == true))
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5193  					|| (v->NextMaxVStartup == v->MaxMaxVStartup[i][j] && NextPrefetchModeState > MaxPrefetchMode)));
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5194  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5195  			CalculateWatermarksAndDRAMSpeedChangeSupport(
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5196  					mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5197  					v->PrefetchModePerState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5198  					v->NumberOfActivePlanes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5199  					v->MaxLineBufferLines,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5200  					v->LineBufferSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5201  					v->DPPOutputBufferPixels,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5202  					v->DETBufferSizeInKByte,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5203  					v->WritebackInterfaceBufferSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5204  					v->DCFCLKState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5205  					v->ReturnBWPerState[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5206  					v->GPUVMEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5207  					v->dpte_group_bytes,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5208  					v->MetaChunkSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5209  					v->UrgLatency[i],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5210  					v->ExtraLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5211  					v->WritebackLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5212  					v->WritebackChunkSize,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5213  					v->SOCCLKPerState[i],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5214  					v->FinalDRAMClockChangeLatency,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5215  					v->SRExitTime,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5216  					v->SREnterPlusExitTime,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5217  					v->ProjectedDCFCLKDeepSleep[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5218  					v->NoOfDPPThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5219  					v->DCCEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5220  					v->RequiredDPPCLKThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5221  					v->DETBufferSizeYThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5222  					v->DETBufferSizeCThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5223  					v->SwathHeightYThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5224  					v->SwathHeightCThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5225  					v->LBBitPerPixel,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5226  					v->SwathWidthYThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5227  					v->SwathWidthCThisState,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5228  					v->HRatio,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5229  					v->HRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5230  					v->vtaps,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5231  					v->VTAPsChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5232  					v->VRatio,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5233  					v->VRatioChroma,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5234  					v->HTotal,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5235  					v->PixelClock,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5236  					v->BlendingAndTiming,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5237  					v->BytePerPixelInDETY,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5238  					v->BytePerPixelInDETC,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5239  					v->DSTXAfterScaler,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5240  					v->DSTYAfterScaler,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5241  					v->WritebackEnable,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5242  					v->WritebackPixelFormat,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5243  					v->WritebackDestinationWidth,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5244  					v->WritebackDestinationHeight,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5245  					v->WritebackSourceHeight,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5246  					&v->DRAMClockChangeSupport[i][j],
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5247  					&v->UrgentWatermark,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5248  					&v->WritebackUrgentWatermark,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5249  					&v->DRAMClockChangeWatermark,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5250  					&v->WritebackDRAMClockChangeWatermark,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5251  					&v->StutterExitWatermark,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5252  					&v->StutterEnterPlusExitWatermark,
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5253  					&v->MinActiveDRAMClockChangeLatencySupported);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5254  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5255  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5256  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5257  	/*PTE Buffer Size Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5258  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5259  	for (i = 0; i < v->soc.num_states; i++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5260  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5261  			v->PTEBufferSizeNotExceeded[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5262  			for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5263  				if (v->PTEBufferSizeNotExceededY[i][j][k] == false || v->PTEBufferSizeNotExceededC[i][j][k] == false) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5264  					v->PTEBufferSizeNotExceeded[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5265  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5266  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5267  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5268  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5269  	/*Cursor Support Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5270  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5271  	v->CursorSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5272  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5273  		if (v->CursorWidth[k][0] > 0.0) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5274  			if (v->CursorBPP[k][0] == 64 && v->Cursor64BppSupport == false) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5275  				v->CursorSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5276  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5277  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5278  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5279  	/*Valid Pitch Check*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5280  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5281  	v->PitchSupport = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5282  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5283  		v->AlignedYPitch[k] = dml_ceil(dml_max(v->PitchY[k], v->SurfaceWidthY[k]), v->MacroTileWidthY[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5284  		if (v->DCCEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5285  			v->AlignedDCCMetaPitchY[k] = dml_ceil(dml_max(v->DCCMetaPitchY[k], v->SurfaceWidthY[k]), 64.0 * v->Read256BlockWidthY[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5286  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5287  			v->AlignedDCCMetaPitchY[k] = v->DCCMetaPitchY[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5288  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5289  		if (v->SourcePixelFormat[k] != dm_444_64 && v->SourcePixelFormat[k] != dm_444_32 && v->SourcePixelFormat[k] != dm_444_16 && v->SourcePixelFormat[k] != dm_mono_16
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5290  				&& v->SourcePixelFormat[k] != dm_rgbe && v->SourcePixelFormat[k] != dm_mono_8) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5291  			v->AlignedCPitch[k] = dml_ceil(dml_max(v->PitchC[k], v->SurfaceWidthC[k]), v->MacroTileWidthC[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5292  			if (v->DCCEnable[k] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5293  				v->AlignedDCCMetaPitchC[k] = dml_ceil(dml_max(v->DCCMetaPitchC[k], v->SurfaceWidthC[k]), 64.0 * v->Read256BlockWidthC[k]);
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5294  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5295  				v->AlignedDCCMetaPitchC[k] = v->DCCMetaPitchC[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5296  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5297  		} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5298  			v->AlignedCPitch[k] = v->PitchC[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5299  			v->AlignedDCCMetaPitchC[k] = v->DCCMetaPitchC[k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5300  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5301  		if (v->AlignedYPitch[k] > v->PitchY[k] || v->AlignedCPitch[k] > v->PitchC[k] || v->AlignedDCCMetaPitchY[k] > v->DCCMetaPitchY[k]
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5302  				|| v->AlignedDCCMetaPitchC[k] > v->DCCMetaPitchC[k]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5303  			v->PitchSupport = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5304  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5305  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5306  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5307  	for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5308  		if (v->ViewportWidth[k] > v->SurfaceWidthY[k] || v->ViewportHeight[k] > v->SurfaceHeightY[k])
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5309  			ViewportExceedsSurface = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5310  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5311  		if (v->SourcePixelFormat[k] != dm_444_64 && v->SourcePixelFormat[k] != dm_444_32 && v->SourcePixelFormat[k] != dm_444_16
71f49c4898eef4 Ye Bin             2020-09-17  5312  				&& v->SourcePixelFormat[k] != dm_444_8 && v->SourcePixelFormat[k] != dm_rgbe) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5313  			if (v->ViewportWidthChroma[k] > v->SurfaceWidthC[k] || v->ViewportHeightChroma[k] > v->SurfaceHeightC[k]) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5314  				ViewportExceedsSurface = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5315  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5316  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5317  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5318  	/*Mode Support, Voltage State and SOC Configuration*/
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5319  
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5320  	for (i = v->soc.num_states - 1; i >= 0; i--) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5321  		for (j = 0; j < 2; j++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5322  			if (v->ScaleRatioAndTapsSupport == 1 && v->SourceFormatPixelAndScanSupport == 1 && v->ViewportSizeSupport[i][j] == 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5323  					&& v->DIOSupport[i] == 1 && v->ODMCombine4To1SupportCheckOK[i] == 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5324  					&& v->NotEnoughDSCUnits[i] == 0 && v->DSCCLKRequiredMoreThanSupported[i] == 0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5325  					&& v->DTBCLKRequiredMoreThanSupported[i] == 0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5326  					&& v->ROBSupport[i][j] == 1 && v->DISPCLK_DPPCLK_Support[i][j] == 1 && v->TotalAvailablePipesSupport[i][j] == 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5327  					&& EnoughWritebackUnits == 1 && WritebackModeSupport == 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5328  					&& v->WritebackLatencySupport == 1 && v->WritebackScaleRatioAndTapsSupport == 1 && v->CursorSupport == 1 && v->PitchSupport == 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5329  					&& ViewportExceedsSurface == 0 && v->PrefetchSupported[i][j] == 1 && v->DynamicMetadataSupported[i][j] == 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5330  					&& v->TotalVerticalActiveBandwidthSupport[i][j] == 1 && v->VRatioInPrefetchSupported[i][j] == 1
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5331  					&& v->PTEBufferSizeNotExceeded[i][j] == 1 && v->NonsupportedDSCInputBPC == 0
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5332  					&& ((v->HostVMEnable == 0 && v->ImmediateFlipRequirement != dm_immediate_flip_required)
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5333  							|| v->ImmediateFlipSupportedForState[i][j] == true)) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5334  				v->ModeSupport[i][j] = true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5335  			} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5336  				v->ModeSupport[i][j] = false;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5337  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5338  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5339  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5340  	{
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5341  		unsigned int MaximumMPCCombine = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5342  		for (i = v->soc.num_states; i >= 0; i--) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5343  			if (i == v->soc.num_states || v->ModeSupport[i][0] == true || v->ModeSupport[i][1] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5344  				v->VoltageLevel = i;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5345  				v->ModeIsSupported = v->ModeSupport[i][0] == true || v->ModeSupport[i][1] == true;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5346  				if (v->ModeSupport[i][1] == true) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5347  					MaximumMPCCombine = 1;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5348  				} else {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5349  					MaximumMPCCombine = 0;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5350  				}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5351  			}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5352  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5353  		v->ImmediateFlipSupport = v->ImmediateFlipSupportedForState[v->VoltageLevel][MaximumMPCCombine];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5354  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5355  			v->MPCCombineEnable[k] = v->MPCCombine[v->VoltageLevel][MaximumMPCCombine][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5356  			v->DPPPerPlane[k] = v->NoOfDPP[v->VoltageLevel][MaximumMPCCombine][k];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5357  		}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5358  		v->DCFCLK = v->DCFCLKState[v->VoltageLevel][MaximumMPCCombine];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5359  		v->DRAMSpeed = v->DRAMSpeedPerState[v->VoltageLevel];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5360  		v->FabricClock = v->FabricClockPerState[v->VoltageLevel];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5361  		v->SOCCLK = v->SOCCLKPerState[v->VoltageLevel];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5362  		v->ReturnBW = v->ReturnBWPerState[v->VoltageLevel][MaximumMPCCombine];
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5363  		v->maxMpcComb = MaximumMPCCombine;
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5364  	}
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5365  }
3accc8b91f9c9e Arnd Bergmann      2021-02-03  5366  __diag_pop()
6725a88f88a7e9 Bhawanpreet Lakha  2020-05-21  5367  

:::::: The code at line 3642 was first introduced by commit
:::::: 3accc8b91f9c9ee44543333d720caeb59670fff8 amdgpu: disable one frame size warning

:::::: TO: Arnd Bergmann <arnd@arndb.de>
:::::: CC: Arnd Bergmann <arnd@arndb.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103200820.0VNUHyqv-lkp%40intel.com.

--envbJBWh7q8WU6mo
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
BTs/iDcCAA==

--envbJBWh7q8WU6mo--
