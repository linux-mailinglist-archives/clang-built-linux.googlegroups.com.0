Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5MRZ3XAKGQEZP4PZUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D51101937
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Nov 2019 07:17:27 +0100 (CET)
Received: by mail-vs1-xe3f.google.com with SMTP id c68sf2876860vsc.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 22:17:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574144246; cv=pass;
        d=google.com; s=arc-20160816;
        b=zyEwNvXijJYhPiSyD9GjgQi+3bdBXVnti6DCnu3e23irdDTvyIZWQ3WYZ0Xs+wzxpt
         SrdhbhhVQIEpH3A8WzFRMUbHoWLxr89+/Vr0yMFBPXpvVlzaDGOpJMpjxa8rkMkYRW+t
         WLgtN4kvQwPDkQ9sHDGgRBsETjfpzksPV+/yZKePSv/GKBltywZApHDf4G9koUoLDtkD
         NSdEwv4JhOHjcOJbnDGo/MDJzTrr0r1Gnk8epGmW/mD9OS9CpxMLw/O5rWlgX1hrj5rp
         yATcnHdizktAc50x8io3dZK/fGK5uMGUiYZRUsNGGY9KGvi6pJGC0NRLEdIDDTnYLr4G
         MuoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nPpurbiO6Tiin3RQwWJuhVy1xlJxzc0lYvHzpF7CFT8=;
        b=qgrSWZn9VWcYDNmbb1s0JUuIu6c+3Y/0Cm/LlJ68/jU6g2+1IJHlRKITBSAeeVkUvn
         sGGpDdvqcAlaWch78FB+96T1Rs5PWvy1dsbENCrhEE50eF7BIrOJri6S8gZl0nrsczsx
         zfm4SFQ9+VwNyuOntPm61FufQgz0ajnneL2QrJIiTNXvvf+63piF8ikwMVK0pNkU1Kuu
         F7z8PibDgUdXRSlHPDK7vG+2dWiLMlclsIlqkJsG9G3kmUajPuUyVq8QJ6npg1Qea1x7
         zkb22cm5IuN/xoZ/2Wv2kY4qp2ND7QDFGSK+ReVSdPITIDzriMCc7GHD6nn2GdBzC6qi
         wXXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nPpurbiO6Tiin3RQwWJuhVy1xlJxzc0lYvHzpF7CFT8=;
        b=GGgG4msQYawxpMvxYSBGT1+lx0KF40/TYsNQ64wugSpJGwiSs5nuaq0q57TweB/MmC
         ozMUcEexN5zZs7uGZcmuRRynKDGomONlxy6FVFTtfhUY1InqE02Ldenc/OYEgfXADtjL
         7pbAiuik0vkGhIQMoQbVixCsazzVBrOSq6AqOzvqSX0tBmgQ83zy2PIX9vtXqWpsBW/1
         IQqYR2a6WAAOAgMKrCghdRgxIhPxz7hM9qPCSLIEckKCPxE5pJeXXbxC/wrkl8W7RwQ0
         tPcCdEMXLJeTfFdpOYSwmfKTwdU/cB4dK0sGOq5N7jO3Qs+NcgAAxE23ryyhyDFfHYWA
         JxTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nPpurbiO6Tiin3RQwWJuhVy1xlJxzc0lYvHzpF7CFT8=;
        b=FG9wkwpznhlmyYGqF/2J0c65tLRXq4BGe7LBgDCfAny/vX+llgG3v/GgeMxpvrGMID
         QsVQDz1v7Tg38RO+cKNzUuuhGxytR/KfJe9yeIPqiFcFlMEGrEOLVZ+8SMgI1O8j7L+n
         mRvQrvH/GGkk6JuBuOPwlx9Lj11Az9lDujRpvSEuzyubp1jgqKqZukxQAbY3If+fawoX
         LEpAqk+aKGDSqvSH8B779cnw7Xjl8w+rm6/cVjP0PwlTSjbuSF4syRtePVnk0OYUNXRj
         gdYytn+kKiCHcHdN45gTQhpwNvqYR6k9PMssgSbxQo9OpQGalOIojmdEMYtRbjeptM7x
         1AzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVVKH/xqaVELV5OO8ppBhgkp9xA0fiCVlQOrMTSoBUETictNXFo
	yg5Mt0DowYt7xjPCsdF7XTs=
X-Google-Smtp-Source: APXvYqxL8GqeypzO1QcSUXfjJZtC9HuI1f7TYuRCP0qjHjz1yT640ORbqd6lLscGV9JTDm5h4jtXKA==
X-Received: by 2002:a67:c58e:: with SMTP id h14mr19949581vsk.104.1574144245902;
        Mon, 18 Nov 2019 22:17:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e8ca:: with SMTP id y10ls2486378vsn.7.gmail; Mon, 18 Nov
 2019 22:17:25 -0800 (PST)
X-Received: by 2002:a05:6102:226a:: with SMTP id v10mr21904479vsd.71.1574144245484;
        Mon, 18 Nov 2019 22:17:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574144245; cv=none;
        d=google.com; s=arc-20160816;
        b=fEdbOE71wNHkoIxvMufHsR8fclcHPi5/XNXV6wCZ09iWnSjbssY8yB4fKsudvMzCEX
         QuylpeA2zL/c1Tqd9NCVE6jmR6KCdRA6IBMaRhzorqNysMPU7smQvTYTuh5z/pexJdk0
         LSVqlnD9mjVz5Qv1Ygf3f2YcIJQ7oIloq/DBbFlArMKysBYnlfOTL92BU+4lM+OyaKu/
         lHMgMP1vFp1O5DU9xbMDy+McYBZVXMsppw7awJDwIUnmmmys2EgQGdt15Jjn9nDimZ91
         jijDXHT65VFUlogBdrguDwscWY9j/KRmhySq1Yh/GWidNi8ai2BRMMsq5CraeEgyDtij
         bKRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=7VT9BXGW6ezUT+uC1mEYWQX37umBBc39H+0xaV0EORU=;
        b=tWpAvjX+VNRCvtT3m68ZjpfxONNJGRdf0h3YPkq593dGpF5ArOeYOdY32WOCLC8JR/
         RRfF9SH6CGaObNXEN0bL0lNwlG2YS6WNnL9D9xduUsOiOBwvRsH+tky3Z7l3W9wgdXGo
         zThnJFBi/Updz2yOo5gRxibSD7/hs3RfUmcifz3Exropr95k6/41sjsXaeiWkSld24mE
         tosbISrFxbiionF5Uy0Qeg0qG1v04+XkkoLcvNBzqq8kiItRNhYeb/99g9ozORe4V7yH
         q7KoTHvQs31Ev6gO059MSBUCHuVli/Ia4qSOfkIwqQd40Ns2kVWabR7oB30gydaucgAy
         2OCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id e11si1219499uaf.0.2019.11.18.22.17.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Nov 2019 22:17:25 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Nov 2019 22:17:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,322,1569308400"; 
   d="gz'50?scan'50,208,50";a="215461710"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 18 Nov 2019 22:17:21 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iWwpF-0007Mr-61; Tue, 19 Nov 2019 14:17:21 +0800
Date: Tue, 19 Nov 2019 14:16:27 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [atishp04:efi_stub 1/1]
 drivers/firmware/efi/libstub/arm-stub.c:203:7: warning: variable
 'secure_boot' is uninitialized when used here
Message-ID: <201911191421.oOPAr13c%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="glzykjxx6vyfswfj"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--glzykjxx6vyfswfj
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
TO: Atish Patra <atish.patra@wdc.com>

tree:   https://github.com/atishp04/linux efi_stub
head:   7dbf2060ab3115d2edcfba8f0f677a321a1611f1
commit: 7dbf2060ab3115d2edcfba8f0f677a321a1611f1 [1/1] Add efi stub
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 0213adde218530bc31e5c4e50b49704c6bb2f2e9)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 7dbf2060ab3115d2edcfba8f0f677a321a1611f1
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/firmware/efi/libstub/arm-stub.c:132:22: warning: unused variable 'si' [-Wunused-variable]
           struct screen_info *si;
                               ^
>> drivers/firmware/efi/libstub/arm-stub.c:203:7: warning: variable 'secure_boot' is uninitialized when used here [-Wuninitialized]
                secure_boot != efi_secureboot_mode_disabled) {
                ^~~~~~~~~~~
   drivers/firmware/efi/libstub/arm-stub.c:131:2: note: variable 'secure_boot' is declared here
           enum efi_secureboot_mode secure_boot;
           ^
   2 warnings generated.

vim +/secure_boot +203 drivers/firmware/efi/libstub/arm-stub.c

b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   92  
b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   93  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15   94  /*
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15   95   * This function handles the architcture specific differences between arm and
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15   96   * arm64 regarding where the kernel image must be loaded and any memory that
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15   97   * must be reserved. On failure it is required to free all
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15   98   * all allocations it has made.
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15   99   */
bd669475d14e32 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-07-02  100  efi_status_t handle_kernel_image(efi_system_table_t *sys_table,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  101  				 unsigned long *image_addr,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  102  				 unsigned long *image_size,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  103  				 unsigned long *reserve_addr,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  104  				 unsigned long *reserve_size,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  105  				 unsigned long dram_base,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  106  				 efi_loaded_image_t *image);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  107  /*
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  108   * EFI entry point for the arm/arm64 EFI stubs.  This is the entrypoint
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  109   * that is described in the PE/COFF header.  Most of the code is the same
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  110   * for both archictectures, with the arch-specific code provided in the
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  111   * handle_kernel_image() function.
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  112   */
ddeeefe2dfbe1f drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2015-01-12  113  unsigned long efi_entry(void *handle, efi_system_table_t *sys_table,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  114  			       unsigned long *image_addr)
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  115  {
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  116  	efi_loaded_image_t *image;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  117  	efi_status_t status;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  118  	unsigned long image_size = 0;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  119  	unsigned long dram_base;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  120  	/* addr/point and size pairs for memory management*/
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  121  	unsigned long initrd_addr;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  122  	u64 initrd_size = 0;
345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  123  	unsigned long fdt_addr = 0;  /* Original DTB */
a643375f4b1755 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2015-03-04  124  	unsigned long fdt_size = 0;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  125  	char *cmdline_ptr = NULL;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  126  	int cmdline_size = 0;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  127  	unsigned long new_fdt_addr;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  128  	efi_guid_t loaded_image_proto = LOADED_IMAGE_PROTOCOL_GUID;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  129  	unsigned long reserve_addr = 0;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  130  	unsigned long reserve_size = 0;
de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  131  	enum efi_secureboot_mode secure_boot;
f0827e18a7a1da drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-04-25 @132  	struct screen_info *si;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  133  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  134  	/* Check if we were booted by the EFI firmware */
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  135  	if (sys_table->hdr.signature != EFI_SYSTEM_TABLE_SIGNATURE)
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  136  		goto fail;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  137  
b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-02-17  138  	status = check_platform_features(sys_table);
b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-02-17  139  	if (status != EFI_SUCCESS)
b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-02-17  140  		goto fail;
b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-02-17  141  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  142  	/*
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  143  	 * Get a handle to the loaded image protocol.  This is used to get
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  144  	 * information about the running image, such as size and the command
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  145  	 * line.
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  146  	 */
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  147  	status = sys_table->boottime->handle_protocol(handle,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  148  					&loaded_image_proto, (void *)&image);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  149  	if (status != EFI_SUCCESS) {
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  150  		pr_efi_err(sys_table, "Failed to get loaded image protocol\n");
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  151  		goto fail;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  152  	}
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  153  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  154  	dram_base = get_dram_base(sys_table);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  155  	if (dram_base == EFI_ERROR) {
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  156  		pr_efi_err(sys_table, "Failed to find DRAM base\n");
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  157  		goto fail;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  158  	}
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  159  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  160  	/*
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  161  	 * Get the command line from EFI, using the LOADED_IMAGE
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  162  	 * protocol. We are going to copy the command line into the
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  163  	 * device tree, so this can be allocated anywhere.
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  164  	 */
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  165  	cmdline_ptr = efi_convert_cmdline(sys_table, image, &cmdline_size);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  166  	if (!cmdline_ptr) {
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  167  		pr_efi_err(sys_table, "getting command line via LOADED_IMAGE_PROTOCOL\n");
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  168  		goto fail;
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  169  	}
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  170  
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  171  	if (IS_ENABLED(CONFIG_CMDLINE_EXTEND) ||
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  172  	    IS_ENABLED(CONFIG_CMDLINE_FORCE) ||
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  173  	    cmdline_size == 0)
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  174  		efi_parse_options(CONFIG_CMDLINE);
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  175  
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  176  	if (!IS_ENABLED(CONFIG_CMDLINE_FORCE) && cmdline_size > 0)
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  177  		efi_parse_options(cmdline_ptr);
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  178  
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  179  	pr_efi(sys_table, "Booting Linux Kernel...\n");
7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish Patra     2019-11-18  180  #if 0
f0827e18a7a1da drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-04-25  181  	si = setup_graphics(sys_table);
7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish Patra     2019-11-18  182  #endif
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  183  	status = handle_kernel_image(sys_table, image_addr, &image_size,
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  184  				     &reserve_addr,
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  185  				     &reserve_size,
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  186  				     dram_base, image);
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  187  	if (status != EFI_SUCCESS) {
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  188  		pr_efi_err(sys_table, "Failed to relocate kernel\n");
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  189  		goto fail_free_cmdline;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  190  	}
7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish Patra     2019-11-18  191  #if 0
ccc829ba3624be drivers/firmware/efi/libstub/arm-stub.c Matthew Garrett 2017-08-25  192  	/* Ask the firmware to clear memory on unclean shutdown */
ccc829ba3624be drivers/firmware/efi/libstub/arm-stub.c Matthew Garrett 2017-08-25  193  	efi_enable_reset_attack_mitigation(sys_table);
ccc829ba3624be drivers/firmware/efi/libstub/arm-stub.c Matthew Garrett 2017-08-25  194  
73a6492589c87c drivers/firmware/efi/libstub/arm-stub.c Linn Crosetto   2016-04-25  195  	secure_boot = efi_get_secureboot(sys_table);
7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish Patra     2019-11-18  196  #endif
345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  197  	/*
de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  198  	 * Unauthenticated device tree data is a security hazard, so ignore
de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  199  	 * 'dtb=' unless UEFI Secure Boot is disabled.  We assume that secure
de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  200  	 * boot is enabled if we can't determine its state.
345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  201  	 */
3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-07-11  202  	if (!IS_ENABLED(CONFIG_EFI_ARMSTUB_DTB_LOADER) ||
3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-07-11 @203  	     secure_boot != efi_secureboot_mode_disabled) {
3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-07-11  204  		if (strstr(cmdline_ptr, "dtb="))
73a6492589c87c drivers/firmware/efi/libstub/arm-stub.c Linn Crosetto   2016-04-25  205  			pr_efi(sys_table, "Ignoring DTB from command line.\n");
345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  206  	} else {
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  207  		status = handle_cmdline_files(sys_table, image, cmdline_ptr,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  208  					      "dtb=",
a643375f4b1755 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2015-03-04  209  					      ~0UL, &fdt_addr, &fdt_size);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  210  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  211  		if (status != EFI_SUCCESS) {
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  212  			pr_efi_err(sys_table, "Failed to load device tree!\n");
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  213  			goto fail_free_image;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  214  		}
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  215  	}
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  216  
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  217  	if (fdt_addr) {
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  218  		pr_efi(sys_table, "Using DTB from command line\n");
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  219  	} else {
345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  220  		/* Look for a device tree configuration table entry. */
a643375f4b1755 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2015-03-04  221  		fdt_addr = (uintptr_t)get_fdt(sys_table, &fdt_size);
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  222  		if (fdt_addr)
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  223  			pr_efi(sys_table, "Using DTB from configuration table\n");
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  224  	}
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  225  
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  226  	if (!fdt_addr)
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  227  		pr_efi(sys_table, "Generating empty DTB\n");
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  228  
138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  229  	status = handle_cmdline_files(sys_table, image, cmdline_ptr, "initrd=",
138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  230  				      efi_get_max_initrd_addr(dram_base,
138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  231  							      *image_addr),
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  232  				      (unsigned long *)&initrd_addr,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  233  				      (unsigned long *)&initrd_size);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  234  	if (status != EFI_SUCCESS)
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  235  		pr_efi_err(sys_table, "Failed initrd from command line!\n");
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  236  
568bc4e87033d2 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-11-12  237  	efi_random_get_seed(sys_table);
568bc4e87033d2 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-11-12  238  
38fb6652229c21 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-10-25  239  	/* hibernation expects the runtime regions to stay in the same place */
38fb6652229c21 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-10-25  240  	if (!IS_ENABLED(CONFIG_HIBERNATION) && !nokaslr()) {
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  241  		/*
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  242  		 * Randomize the base of the UEFI runtime services region.
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  243  		 * Preserve the 2 MB alignment of the region by taking a
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  244  		 * shift of 21 bit positions into account when scaling
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  245  		 * the headroom value using a 32-bit random value.
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  246  		 */
197decefdb79d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-17  247  		static const u64 headroom = EFI_RT_VIRTUAL_LIMIT -
197decefdb79d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-17  248  					    EFI_RT_VIRTUAL_BASE -
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  249  					    EFI_RT_VIRTUAL_SIZE;
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  250  		u32 rnd;
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  251  
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  252  		status = efi_get_random_bytes(sys_table, sizeof(rnd),
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  253  					      (u8 *)&rnd);
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  254  		if (status == EFI_SUCCESS) {
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  255  			virtmap_base = EFI_RT_VIRTUAL_BASE +
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  256  				       (((headroom >> 21) * rnd) >> (32 - 21));
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  257  		}
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  258  	}
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  259  
b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21  260  	install_memreserve_table(sys_table);
b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21  261  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  262  	new_fdt_addr = fdt_addr;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  263  	status = allocate_new_fdt_and_exit_boot(sys_table, handle,
138728dd4ee30d drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  264  				&new_fdt_addr, efi_get_max_fdt_addr(dram_base),
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  265  				initrd_addr, initrd_size, cmdline_ptr,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  266  				fdt_addr, fdt_size);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  267  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  268  	/*
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  269  	 * If all went well, we need to return the FDT address to the
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  270  	 * calling function so it can be passed to kernel as part of
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  271  	 * the kernel boot protocol.
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  272  	 */
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  273  	if (status == EFI_SUCCESS)
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  274  		return new_fdt_addr;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  275  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  276  	pr_efi_err(sys_table, "Failed to update FDT and exit boot services\n");
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  277  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  278  	efi_free(sys_table, initrd_size, initrd_addr);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  279  	efi_free(sys_table, fdt_size, fdt_addr);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  280  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  281  fail_free_image:
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  282  	efi_free(sys_table, image_size, *image_addr);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  283  	efi_free(sys_table, reserve_size, reserve_addr);
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  284  fail_free_cmdline:
7dbf2060ab3115 drivers/firmware/efi/libstub/arm-stub.c Atish Patra     2019-11-18  285  	//free_screen_info(sys_table, si);
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  286  	efi_free(sys_table, cmdline_size, (unsigned long)cmdline_ptr);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  287  fail:
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  288  	return EFI_ERROR;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  289  }
f3cdfd239da56a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2014-10-20  290  

:::::: The code at line 203 was first introduced by commit
:::::: 3d7ee348aa4127a7893c11261da9b76371a970e6 efi/libstub/arm: Add opt-in Kconfig option for the DTB loader

:::::: TO: Ard Biesheuvel <ard.biesheuvel@linaro.org>
:::::: CC: Ingo Molnar <mingo@kernel.org>

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911191421.oOPAr13c%25lkp%40intel.com.

--glzykjxx6vyfswfj
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
PysdlI08o/K/cLHjJwsWAwA=

--glzykjxx6vyfswfj--
