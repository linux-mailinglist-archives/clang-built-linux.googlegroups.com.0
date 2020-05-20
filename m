Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBFVYSP3AKGQEZVFNDKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id D585F1DAC00
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 09:28:24 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id l14sf1285622ooq.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 00:28:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589959703; cv=pass;
        d=google.com; s=arc-20160816;
        b=tt+n5sklUovJPodtI/qCaRvOGwb8+N+EeLNQ27e24xRHcikDnglIYPOh6ELLZK+Qhr
         w3GO1r9TfzkiY1tIvleQs3JeypP2bg7HZnj6yBBoLSdngPGySrCRQaqTUJxHgejSmB12
         kMBk5BtMkHHCIB1eiQ+PcsPa9n3Z7MS0/mW5/a8mv8OBh42+/EGka9UKPQ4r5n30J12L
         vE4lwTsr1XfuI0OavXt2GyKlLne5CQhXPpCzfldAMuyAgfN5DNX3bBL7RnO7i8s+4TQ/
         WclBXrcePAK9Ud+Z7A0YzvMbVZ0jzeYPCwmiEXr/9fkUwnKaxi0gZcjav9KH+5LWvApj
         kknw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=CYKYmUUBj29DlCm8PiNI4n6udUgsrvsYbAK3NVZ0qQQ=;
        b=m5X7LnseJgxWhSotDap85Y1xikaMURXyL/QFkfTXSio8OQdl+u5uYp25fmZmvitLaE
         x/ec11/WUJQAnVM+8VJr2rf7L84g18isb1xtzD0z2CeS7UjFiL5+bip7888TkP6HEYkf
         BXQhZPnAn4UszRxy468n8Ub0BdcUSQLw18qI/1I6U7NMooHZlEzEtW4xTCNc0GGkd2U2
         9FDfVhG68tAQEyi/Lx2wTBVrK5HTpR30DYDGfNSEgLF9l3T3qx6vc4zK3iWnn+fUNbYZ
         FZBzclIcmEP9tbVccgeV6ROlnNOWEQE2bc0vdw39dW3c5pPp5fM/jceTBIXRj3QCay6z
         ZcIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CYKYmUUBj29DlCm8PiNI4n6udUgsrvsYbAK3NVZ0qQQ=;
        b=VcKblA94KiVrqgC3nOOLUyHqRKRr+kHWldUDyENY4M2gO/ebossSUX2ZKX3YkMw/Ob
         NvH0pE7ePiG0F7qs5yUBWkBfETFhrrnsfejyI8tmTa4+ZnAt4f/dO/DXAIAFi3vLOJ/r
         2lI5M13N8AF0xAJ7vOHdEMK7+gpgp1zbQY6z3F/eEhzNtnOsIFBlU3as8Tc4496hvzNL
         Pxs4ptxWuyBSB4wOBvtiLljl5pGWZ6r03fx9LBmIe4IpUJhkioMKNC8E0TvYFgt5uILN
         ENEcTC3Z+jAYmGdFc8jpd0ZX88TzKj4eb2b18ERzdYxkTgYUhijySO86JMq96jNyKAPV
         Zrsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CYKYmUUBj29DlCm8PiNI4n6udUgsrvsYbAK3NVZ0qQQ=;
        b=pMwzJlj8j3OrPFGxSuQIqTCy4U6cyxwhPpC4TPmqk/NU4Elf1Qcuta1iXifFfBK4FK
         /PeZC8K9gEO5TlNDvA24YhBJdf9ij5UO7myfsweRGSkSJtk/+Rr3LTj9uAV6EKNF0XzX
         S47bQIJxgFjgvUqg3S6y8S5Wvv0WVhXs3pUpy4OYC8CemfxllmUuKPQ+4yArzEbgAGzp
         big83dFAgFpvxBKQhADuOXNzxlVkIdSQ6WJDTh8WAcf+61rhJsL/k+V43XD8X3IVC8Pb
         mTcvJCZdZzlRxa0k3nEcjCbNINbiwjRAJLjBIf/yerbeIqfq9sg5lOvBIp+GowM0PaeQ
         yQ3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316MDjqa8ct6Psokn5m50Ru1zkFEScbCNN0k5S3ItaT1PRORzXj
	Gv8OD6CJNDGkI9f+tmuCkdE=
X-Google-Smtp-Source: ABdhPJxaYMjbV6oKSusm3Tryzubx3rtilLH7VxJwNMrPycYTD3Pp6GfzN5pozOU0MMijg0zMGl8UFQ==
X-Received: by 2002:a54:480b:: with SMTP id j11mr310284oij.0.1589959703046;
        Wed, 20 May 2020 00:28:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e1a8:: with SMTP id 8ls121782ooy.4.gmail; Wed, 20 May
 2020 00:28:22 -0700 (PDT)
X-Received: by 2002:a4a:5147:: with SMTP id s68mr2366709ooa.86.1589959702567;
        Wed, 20 May 2020 00:28:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589959702; cv=none;
        d=google.com; s=arc-20160816;
        b=ORGPcgke9ZWK2644OamXk18BOmcv0ZYVafwKOwxGgl6211Fg1ChZYq8MT2Z1wRPs+V
         rP9T/GGULlCRXr2nub3cQOcJO6AC91ZZ8AsYL5pHTgWtILNpqiqenTIaqIaHeM5q2FmD
         Ggy7Hc71MO1Lb4RY8CihqUBLMTAjeZTRQs0NTVq8oLtUUogs1GZoBmsyF7d3LkFy7dl5
         jmvf6CrPNZewO6oE6M0+8DxOl+RtdvdJJv5w7F9DxJ0XQJNaRlapTsfiYaZ/91HbxPDI
         Jy6nsYHzd7F5+nV3Z2t20Lz7yVQmgLQ+xA+kCC1OuIqFWpw2pVW5Qrya1i8HSQloPP0s
         8k3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=NQd8e3ZbMOwx5IuU0lbBT4yooOpCmUIZrYu1zR4iYZg=;
        b=aF0wI+sARyzo3aDLTFMCQm0tDNavy0qP4OPikUbDISPTH5/FtsPer/+KOtIM7w1rGM
         lVQXtFcSVvC7mqotTqR1mFvzAjFxzNtjJn09a7Mdqcjezz0RzXy8a1FmY3KkkP8hN82i
         RF9dQAW4cJpl28bt4l2SKsmsMpuH5F62ntreqApNMpM/NneDhvRsBYkVtGKPMgiE5T/K
         Mlh3iJGkwwT+vF1+VL+PYgWJ+T9+mfsGWsPkhKXX7ckXHThQlZ+uZxxMUOsjlMHBEs0g
         NmZu8P60l+C59hMW7SE3QpCiQvCkkPN0GWSnlhdxCXbQi60oTaTXKfKdzTuF4BYw03wQ
         b/tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id a62si126887oii.1.2020.05.20.00.28.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 May 2020 00:28:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: rqdUqUPiPY3oLNyfISxvNcz6C9uaSe/FbfGHskWnRRJYpzH5PuwVdV/LC0L6e5tjF3ilLiIfIj
 LuoO1RKD0xZQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2020 00:28:21 -0700
IronPort-SDR: 6kQ7YEUPy/r6wyxSARxPm6dgo+uxvynoOUF+Juee0g5PS56WkfdgZscpKYPW+aAEtaGZDBwQw/
 DJq6heN9Bnsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,413,1583222400"; 
   d="gz'50?scan'50,208,50";a="299847172"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga002.fm.intel.com with ESMTP; 20 May 2020 00:28:19 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jbJ9G-0002qc-CV; Wed, 20 May 2020 15:28:18 +0800
Date: Wed, 20 May 2020 15:28:04 +0800
From: kbuild test robot <lkp@intel.com>
To: Atish Patra <atish.patra@wdc.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Palmer Dabbelt <palmerdabbelt@google.com>
Subject: [linux-next:master 3391/10701]
 drivers/firmware/efi/libstub/efi-stub.c:148:14: warning: no previous
 prototype for function 'efi_entry'
Message-ID: <202005201544.eSxyUcjp%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IS0zKkzwUGydFO0o"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Atish,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   fb57b1fabcb28f358901b2df90abd2b48abc1ca8
commit: 2e0eb483c058dd013be8e3d0ec1767be531485a2 [3391/10701] efi/libstub: Move arm-stub to a common file
config: arm64-randconfig-r026-20200519 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        git checkout 2e0eb483c058dd013be8e3d0ec1767be531485a2
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

drivers/firmware/efi/libstub/efi-stub.c:68:6: warning: no previous prototype for function 'install_memreserve_table' [-Wmissing-prototypes]
void install_memreserve_table(void)
^
drivers/firmware/efi/libstub/efi-stub.c:68:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void install_memreserve_table(void)
^
static
>> drivers/firmware/efi/libstub/efi-stub.c:148:14: warning: no previous prototype for function 'efi_entry' [-Wmissing-prototypes]
efi_status_t efi_entry(efi_handle_t handle, efi_system_table_t *sys_table_arg)
^
drivers/firmware/efi/libstub/efi-stub.c:148:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
efi_status_t efi_entry(efi_handle_t handle, efi_system_table_t *sys_table_arg)
^
static
2 warnings generated.

vim +/efi_entry +148 drivers/firmware/efi/libstub/efi-stub.c

b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21  124  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  125  /*
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  126   * This function handles the architcture specific differences between arm and
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  127   * arm64 regarding where the kernel image must be loaded and any memory that
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  128   * must be reserved. On failure it is required to free all
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  129   * all allocations it has made.
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  130   */
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  131  efi_status_t handle_kernel_image(unsigned long *image_addr,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  132  				 unsigned long *image_size,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  133  				 unsigned long *reserve_addr,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  134  				 unsigned long *reserve_size,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  135  				 unsigned long dram_base,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  136  				 efi_loaded_image_t *image);
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  137  
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  138  asmlinkage void __noreturn efi_enter_kernel(unsigned long entrypoint,
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  139  					    unsigned long fdt_addr,
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  140  					    unsigned long fdt_size);
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  141  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  142  /*
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  143   * EFI entry point for the arm/arm64 EFI stubs.  This is the entrypoint
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  144   * that is described in the PE/COFF header.  Most of the code is the same
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  145   * for both archictectures, with the arch-specific code provided in the
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  146   * handle_kernel_image() function.
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  147   */
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17 @148  efi_status_t efi_entry(efi_handle_t handle, efi_system_table_t *sys_table_arg)
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  149  {
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  150  	efi_loaded_image_t *image;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  151  	efi_status_t status;
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  152  	unsigned long image_addr;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  153  	unsigned long image_size = 0;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  154  	unsigned long dram_base;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  155  	/* addr/point and size pairs for memory management*/
79d3219d4e56b3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-04  156  	unsigned long initrd_addr = 0;
9302c1bb8e4758 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  157  	unsigned long initrd_size = 0;
345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  158  	unsigned long fdt_addr = 0;  /* Original DTB */
a643375f4b1755 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2015-03-04  159  	unsigned long fdt_size = 0;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  160  	char *cmdline_ptr = NULL;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  161  	int cmdline_size = 0;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  162  	efi_guid_t loaded_image_proto = LOADED_IMAGE_PROTOCOL_GUID;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  163  	unsigned long reserve_addr = 0;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  164  	unsigned long reserve_size = 0;
de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  165  	enum efi_secureboot_mode secure_boot;
f0827e18a7a1da drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-04-25  166  	struct screen_info *si;
b92165d2ba869a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  167  	efi_properties_table_t *prop_tbl;
ec93fc371f014a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  168  	unsigned long max_addr;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  169  
2fcdad2a80a6d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  170  	sys_table = sys_table_arg;
2fcdad2a80a6d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  171  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  172  	/* Check if we were booted by the EFI firmware */
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  173  	if (sys_table->hdr.signature != EFI_SYSTEM_TABLE_SIGNATURE) {
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  174  		status = EFI_INVALID_PARAMETER;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  175  		goto fail;
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  176  	}
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  177  
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  178  	status = check_platform_features();
b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-02-17  179  	if (status != EFI_SUCCESS)
b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-02-17  180  		goto fail;
b9d6769b5678db drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-02-17  181  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  182  	/*
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  183  	 * Get a handle to the loaded image protocol.  This is used to get
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  184  	 * information about the running image, such as size and the command
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  185  	 * line.
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  186  	 */
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  187  	status = sys_table->boottime->handle_protocol(handle,
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  188  					&loaded_image_proto, (void *)&image);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  189  	if (status != EFI_SUCCESS) {
8173ec7905b5b0 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  190  		pr_efi_err("Failed to get loaded image protocol\n");
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  191  		goto fail;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  192  	}
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  193  
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  194  	dram_base = get_dram_base();
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  195  	if (dram_base == EFI_ERROR) {
8173ec7905b5b0 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  196  		pr_efi_err("Failed to find DRAM base\n");
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  197  		status = EFI_LOAD_ERROR;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  198  		goto fail;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  199  	}
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  200  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  201  	/*
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  202  	 * Get the command line from EFI, using the LOADED_IMAGE
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  203  	 * protocol. We are going to copy the command line into the
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  204  	 * device tree, so this can be allocated anywhere.
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  205  	 */
1e45bf7372c48c drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  206  	cmdline_ptr = efi_convert_cmdline(image, &cmdline_size, ULONG_MAX);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  207  	if (!cmdline_ptr) {
8173ec7905b5b0 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  208  		pr_efi_err("getting command line via LOADED_IMAGE_PROTOCOL\n");
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  209  		status = EFI_OUT_OF_RESOURCES;
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  210  		goto fail;
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  211  	}
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  212  
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  213  	if (IS_ENABLED(CONFIG_CMDLINE_EXTEND) ||
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  214  	    IS_ENABLED(CONFIG_CMDLINE_FORCE) ||
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  215  	    cmdline_size == 0)
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  216  		efi_parse_options(CONFIG_CMDLINE);
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  217  
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  218  	if (!IS_ENABLED(CONFIG_CMDLINE_FORCE) && cmdline_size > 0)
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  219  		efi_parse_options(cmdline_ptr);
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  220  
8173ec7905b5b0 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  221  	pr_efi("Booting Linux Kernel...\n");
eeff7d634f4750 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  222  
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  223  	si = setup_graphics();
f0827e18a7a1da drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-04-25  224  
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  225  	status = handle_kernel_image(&image_addr, &image_size,
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  226  				     &reserve_addr,
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  227  				     &reserve_size,
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  228  				     dram_base, image);
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  229  	if (status != EFI_SUCCESS) {
8173ec7905b5b0 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  230  		pr_efi_err("Failed to relocate kernel\n");
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  231  		goto fail_free_cmdline;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  232  	}
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  233  
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  234  	efi_retrieve_tpm2_eventlog();
d99c1ba6a73b9e drivers/firmware/efi/libstub/arm-stub.c Xinwei Kong     2019-11-07  235  
ccc829ba3624be drivers/firmware/efi/libstub/arm-stub.c Matthew Garrett 2017-08-25  236  	/* Ask the firmware to clear memory on unclean shutdown */
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  237  	efi_enable_reset_attack_mitigation();
ccc829ba3624be drivers/firmware/efi/libstub/arm-stub.c Matthew Garrett 2017-08-25  238  
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  239  	secure_boot = efi_get_secureboot();
73a6492589c87c drivers/firmware/efi/libstub/arm-stub.c Linn Crosetto   2016-04-25  240  
345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  241  	/*
de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  242  	 * Unauthenticated device tree data is a security hazard, so ignore
de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  243  	 * 'dtb=' unless UEFI Secure Boot is disabled.  We assume that secure
de8cb458625c16 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  244  	 * boot is enabled if we can't determine its state.
345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  245  	 */
3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-07-11  246  	if (!IS_ENABLED(CONFIG_EFI_ARMSTUB_DTB_LOADER) ||
3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-07-11  247  	     secure_boot != efi_secureboot_mode_disabled) {
3d7ee348aa4127 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-07-11  248  		if (strstr(cmdline_ptr, "dtb="))
8173ec7905b5b0 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  249  			pr_efi("Ignoring DTB from command line.\n");
345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  250  	} else {
9302c1bb8e4758 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  251  		status = efi_load_dtb(image, &fdt_addr, &fdt_size);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  252  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  253  		if (status != EFI_SUCCESS) {
8173ec7905b5b0 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  254  			pr_efi_err("Failed to load device tree!\n");
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  255  			goto fail_free_image;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  256  		}
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  257  	}
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  258  
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  259  	if (fdt_addr) {
8173ec7905b5b0 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  260  		pr_efi("Using DTB from command line\n");
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  261  	} else {
345c736edd07b6 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  262  		/* Look for a device tree configuration table entry. */
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  263  		fdt_addr = (uintptr_t)get_fdt(&fdt_size);
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  264  		if (fdt_addr)
8173ec7905b5b0 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  265  			pr_efi("Using DTB from configuration table\n");
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  266  	}
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  267  
0bcaa9040d0586 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  268  	if (!fdt_addr)
8173ec7905b5b0 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  269  		pr_efi("Generating empty DTB\n");
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  270  
79d3219d4e56b3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-04  271  	if (!noinitrd()) {
ec93fc371f014a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  272  		max_addr = efi_get_max_initrd_addr(dram_base, image_addr);
79d3219d4e56b3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-04  273  		status = efi_load_initrd_dev_path(&initrd_addr, &initrd_size,
79d3219d4e56b3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-04  274  						  max_addr);
ec93fc371f014a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  275  		if (status == EFI_SUCCESS) {
ec93fc371f014a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  276  			pr_efi("Loaded initrd from LINUX_EFI_INITRD_MEDIA_GUID device path\n");
ec93fc371f014a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  277  		} else if (status == EFI_NOT_FOUND) {
ec93fc371f014a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  278  			status = efi_load_initrd(image, &initrd_addr, &initrd_size,
ec93fc371f014a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  279  						 ULONG_MAX, max_addr);
594e576d4b93b8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-03-29  280  			if (status == EFI_SUCCESS && initrd_size > 0)
ec93fc371f014a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  281  				pr_efi("Loaded initrd from command line option\n");
ec93fc371f014a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  282  		}
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  283  		if (status != EFI_SUCCESS)
ec93fc371f014a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  284  			pr_efi_err("Failed to load initrd!\n");
79d3219d4e56b3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-04  285  	}
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  286  
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  287  	efi_random_get_seed();
568bc4e87033d2 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-11-12  288  
b92165d2ba869a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  289  	/*
b92165d2ba869a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  290  	 * If the NX PE data feature is enabled in the properties table, we
b92165d2ba869a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  291  	 * should take care not to create a virtual mapping that changes the
b92165d2ba869a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  292  	 * relative placement of runtime services code and data regions, as
b92165d2ba869a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  293  	 * they may belong to the same PE/COFF executable image in memory.
b92165d2ba869a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  294  	 * The easiest way to achieve that is to simply use a 1:1 mapping.
b92165d2ba869a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  295  	 */
b92165d2ba869a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  296  	prop_tbl = get_efi_config_table(EFI_PROPERTIES_TABLE_GUID);
b92165d2ba869a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  297  	flat_va_mapping = prop_tbl &&
b92165d2ba869a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  298  			  (prop_tbl->memory_protection_attribute &
b92165d2ba869a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  299  			   EFI_PROPERTIES_RUNTIME_MEMORY_PROTECTION_NON_EXECUTABLE_PE_DATA);
b92165d2ba869a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  300  
38fb6652229c21 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-10-25  301  	/* hibernation expects the runtime regions to stay in the same place */
b92165d2ba869a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  302  	if (!IS_ENABLED(CONFIG_HIBERNATION) && !nokaslr() && !flat_va_mapping) {
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  303  		/*
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  304  		 * Randomize the base of the UEFI runtime services region.
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  305  		 * Preserve the 2 MB alignment of the region by taking a
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  306  		 * shift of 21 bit positions into account when scaling
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  307  		 * the headroom value using a 32-bit random value.
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  308  		 */
197decefdb79d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-17  309  		static const u64 headroom = EFI_RT_VIRTUAL_LIMIT -
197decefdb79d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-17  310  					    EFI_RT_VIRTUAL_BASE -
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  311  					    EFI_RT_VIRTUAL_SIZE;
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  312  		u32 rnd;
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  313  
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  314  		status = efi_get_random_bytes(sizeof(rnd), (u8 *)&rnd);
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  315  		if (status == EFI_SUCCESS) {
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  316  			virtmap_base = EFI_RT_VIRTUAL_BASE +
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  317  				       (((headroom >> 21) * rnd) >> (32 - 21));
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  318  		}
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  319  	}
e69176d68d26d6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  320  
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  321  	install_memreserve_table();
b844470f22061e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21  322  
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  323  	status = allocate_new_fdt_and_exit_boot(handle, &fdt_addr,
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  324  						efi_get_max_fdt_addr(dram_base),
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  325  						initrd_addr, initrd_size,
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  326  						cmdline_ptr, fdt_addr, fdt_size);
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  327  	if (status != EFI_SUCCESS)
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  328  		goto fail_free_initrd;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  329  
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  330  	efi_enter_kernel(image_addr, fdt_addr, fdt_totalsize((void *)fdt_addr));
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  331  	/* not reached */
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  332  
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  333  fail_free_initrd:
8173ec7905b5b0 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  334  	pr_efi_err("Failed to update FDT and exit boot services\n");
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  335  
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  336  	efi_free(initrd_size, initrd_addr);
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  337  	efi_free(fdt_size, fdt_addr);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  338  
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  339  fail_free_image:
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  340  	efi_free(image_size, image_addr);
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  341  	efi_free(reserve_size, reserve_addr);
2b5fe07a78a09a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  342  fail_free_cmdline:
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  343  	free_screen_info(si);
cd33a5c1d53e43 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  344  	efi_free(cmdline_size, (unsigned long)cmdline_ptr);
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  345  fail:
9f9223778ef385 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  346  	return status;
3c7f255039a2ad drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  347  }
f3cdfd239da56a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2014-10-20  348  

:::::: The code at line 148 was first introduced by commit
:::::: 9f9223778ef385e79dc67f5ee48ee4c1fb757f6b efi/libstub/arm: Make efi_entry() an ordinary PE/COFF entrypoint

:::::: TO: Ard Biesheuvel <ardb@kernel.org>
:::::: CC: Ard Biesheuvel <ardb@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005201544.eSxyUcjp%25lkp%40intel.com.

--IS0zKkzwUGydFO0o
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--IS0zKkzwUGydFO0o--
