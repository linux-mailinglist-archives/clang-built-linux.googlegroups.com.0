Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGPRUD3AKGQEPESC7MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 985451DF0B3
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 22:39:54 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id q3sf4342525uas.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 13:39:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590179993; cv=pass;
        d=google.com; s=arc-20160816;
        b=vN5eGPG4dwVq3WKfbKcee8zO5+Z3H1c3IkYbl6lMBytQn08aOnYXjqq96g87kwL5rs
         8spl3sIEHXCZWJWvfGRKjgACTP3kUPnORKC9SE8ucm1njvfLS9O0aPFNwHUmcpafsFLn
         vTibBUmWwvvYSZvWocWNbNV5/QqQMpS8d4Xv2Xbaa7zWb4imeMAW/jkm6wr3slSrZKhd
         Qqn4D94guodVSeJRSU03CmEUi3I10QHIs767KNILIf+B+BGeAMGHndEO9EGbzQ+Yo+1S
         wgFvkiYFXFZ9EBTk1GpddyBkjfTYu7iAZnVs0okhKnQaJIanH5v7pKyuLt18593X9MUB
         nRzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=4jVlaC6iNDDlW/MkS7wJp64nhi5QphIoHpWizvP87W4=;
        b=gjnMcnYEcR3k0CvvDT7Mf+AerfQSCn4XbFRDJk+QOOiPqKprf2LXtLzaMcXpUsJmf0
         210G/kkQuVEndg+5kk3LqMNPtTVz8RxAPu3Mbag2zUY5ez3dxLQMozLsutj3Fgm+vBdu
         43UhFbxtQb3uaZfahcknQ/DldEwFP7MwtfYxMSv0MbYv7i6RKl6aS+FgKpxg0SGbTF+w
         kuTJBeqJs7mLL+l8cnx8uTflCJNNVI/1u+MCTrTXzTZsQuymu54gLCw4VIOczGUK4yUv
         9zl8TJL/XaS8H0FCQTkBuEFoLbfQ+5Fjg7sMAARVjRm7smYfbM1XKZUdMOgmMr30ho3/
         dqKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4jVlaC6iNDDlW/MkS7wJp64nhi5QphIoHpWizvP87W4=;
        b=YyzblWEh8uicQuYB/F6COqPxlzMxzrIowmD+e6iadiwpjtOecLG+raPZGb8W9R7EFm
         TIkJHDVkbSS2T5tFj6lGSQQqCHWwG+iqsZTnlk9QNsUcELD2DXQmmboyvx5KCsFBn5BY
         /DaOd/ZSAUOM1A2YwLa910tRJuge92QYnZh4DQ2uyCEwwHBPiHVrreO9A+BhJUlx4ihE
         5V+5tI+GcjzGZj6Ku43PdjEahWX3t7V2uSY4JrhYhX2k/Qq7M6uocrsZjyKaxP7c4s7J
         VR3Li+HwEkgO1PeyrhiX12I3z6kiXZLXeQV9z+VA/7lJ4ilRpbFtILDOsmz3QCN85LRj
         bAew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4jVlaC6iNDDlW/MkS7wJp64nhi5QphIoHpWizvP87W4=;
        b=QBv3vc5A3xya9C8RoCgi72XL3Y6LgPRuB46GoZiIAvTaKQJ/+Yq5IN3Jpa8tbVrVaZ
         IGLE/vwTy4xEs7ASQEjEMK5pwXFuuSE+Q2DHWv3lnEUCot/SsBR1KigfgEO/ZST3IDqP
         wJEeRRYdusev0n5uQ1wA0zcsmHOMWgSFteuC9v/ZIB9z4QF7lMdtOcEsMULMbMt0iDT1
         amQfYIWnxnTJqX+Z1jtkpxjgXewXExMOWW8NU3VftLRdf+s0+60Ui5f0T8KujAoT4Ees
         PzEY+xbsKnPTjWhQihX6+xMdixwWC0NuKcNq99xgc6EFhrj1TAQC5RN9VnvUJeVklKZf
         K1mw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Bw6Zqtcw1UuE7wBg4M5AQDmqsLm4xJCIJQZ13MY5T3gcc/lMf
	Cz3vbXyxTmgThbOWyWtfYko=
X-Google-Smtp-Source: ABdhPJxCZ3Uc9WosUOugW6nijOV5QMd2059CtzX+tixYeo6ctBNR3NVLnay7Wf066R658VhRTs9sWQ==
X-Received: by 2002:a9f:2c04:: with SMTP id r4mr12096976uaj.10.1590179993272;
        Fri, 22 May 2020 13:39:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:aac7:: with SMTP id t190ls118015vke.10.gmail; Fri, 22
 May 2020 13:39:52 -0700 (PDT)
X-Received: by 2002:a1f:5c14:: with SMTP id q20mr12941156vkb.32.1590179992495;
        Fri, 22 May 2020 13:39:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590179992; cv=none;
        d=google.com; s=arc-20160816;
        b=pIrxm0yXGf/qjh4XTPD3+d6q2Ny0Po+//04Uudil/ooVry2JR3VNWSp6Y1vSieHDt2
         m4WRjXKljWFxvMf6o6atstiaqYM9d5TXDEe2IVq5aQYhSvXeKA9hcVqS5g4mSuUw3Jkz
         yx6+hkZsFWwxMTGmnxf0hpjLV7YsKtvzLSiFE7ZVA9i1w2XrDeEcKJQPRT+HMmJng0d6
         XSFdKb8pr7jFB8aRWlLWwR2mSJiruCasivP8XbIBvJHRhUCtFlelUJCjciAm6BXgT709
         1qj61KmdeBhSFMZNw1hox1BzWwHdUGhrDgJgL1tOmKXTqV0U35eBt3zCMj/ZA17nXugf
         4mvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=fhPfvCfq5H35oGdIwiL3pwvfu4c6YX3HFcJOdE4CyOA=;
        b=qUSb8O/x1F7zWmD7TDSYnhgUu6DuUFtuQUWdZ79u6pQZxn/aU+hoWI+3a1O2faygT0
         bSiSnqIAIREGNhy/gN0pRzLD9c1AqedVbOAsQ2KCF09ZyEUtH5QRmmr57IwmB/oY4tFF
         aTN7mPk+oG5qB89E84Msem/lvc2ck36VLtWX/Z6s0/M6VTuXZWRRwdLf4yKGaadLp1Gf
         Ifh/z7sEC4myssPMvsq6CZFFg+BfvXDh0PWCycPlkozTRNKmkufjoCza4wFVWhtgqdQy
         BJpkpCTG2EuUZXpH0NMbxdDfAJpu84IRbx3Z+DfRNC8bDP0DKZv0c7SAaIGEmapQpRvr
         4UZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id b10si707128vso.1.2020.05.22.13.39.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 May 2020 13:39:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: pKsLWDymEOLqCADiZ185MtUG/n9WAb5sfpn+FiAu0jnNT187ZzW5RIeKpaKkytUn7SEK7xxxHp
 /e7YdAsbeflQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 May 2020 13:39:50 -0700
IronPort-SDR: aaQCEW+K3uJ1jXAgjMCRAYZBdg9ztEh9VJ08SnkNzb8V8gqlZeNRh+pijHCe9A50d3Si5d26Ka
 F/M1Whq0bhKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,423,1583222400"; 
   d="gz'50?scan'50,208,50";a="265542433"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 22 May 2020 13:39:47 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jcESI-000AAV-JA; Sat, 23 May 2020 04:39:46 +0800
Date: Sat, 23 May 2020 04:39:00 +0800
From: kbuild test robot <lkp@intel.com>
To: Atish Patra <atish.patra@wdc.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Palmer Dabbelt <palmerdabbelt@google.com>
Subject: [linux-next:master 3406/12102]
 drivers/firmware/efi/libstub/efi-stub.c:148:14: warning: no previous
 prototype for function 'efi_entry'
Message-ID: <202005230455.4NQIwgRZ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
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


--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Atish,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   c11d28ab4a691736e30b49813fb801847bd44e83
commit: 2e0eb483c058dd013be8e3d0ec1767be531485a2 [3406/12102] efi/libstub: Move arm-stub to a common file
config: arm64-randconfig-r026-20200521 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3393cc4cebf9969db94dc424b7a2b6195589c33b)
reproduce (this is a W=1 build):
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

3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15   67  
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  @68  void install_memreserve_table(void)
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   69  {
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   70  	struct linux_efi_memreserve *rsv;
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   71  	efi_guid_t memreserve_table_guid = LINUX_EFI_MEMRESERVE_TABLE_GUID;
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   72  	efi_status_t status;
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   73  
966291f6344d7eb drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24   74  	status = efi_bs_call(allocate_pool, EFI_LOADER_DATA, sizeof(*rsv),
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   75  			     (void **)&rsv);
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   76  	if (status != EFI_SUCCESS) {
8173ec7905b5b07 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24   77  		pr_efi_err("Failed to allocate memreserve entry!\n");
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   78  		return;
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   79  	}
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   80  
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   81  	rsv->next = 0;
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   82  	rsv->size = 0;
5f0b0ecf043a531 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-11-29   83  	atomic_set(&rsv->count, 0);
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   84  
966291f6344d7eb drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24   85  	status = efi_bs_call(install_configuration_table,
966291f6344d7eb drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24   86  			     &memreserve_table_guid, rsv);
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   87  	if (status != EFI_SUCCESS)
8173ec7905b5b07 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24   88  		pr_efi_err("Failed to install memreserve config table!\n");
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   89  }
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21   90  
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10   91  static unsigned long get_dram_base(void)
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10   92  {
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10   93  	efi_status_t status;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10   94  	unsigned long map_size, buff_size;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10   95  	unsigned long membase  = EFI_ERROR;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10   96  	struct efi_memory_map map;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10   97  	efi_memory_desc_t *md;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10   98  	struct efi_boot_memmap boot_map;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10   99  
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  100  	boot_map.map		= (efi_memory_desc_t **)&map.map;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  101  	boot_map.map_size	= &map_size;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  102  	boot_map.desc_size	= &map.desc_size;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  103  	boot_map.desc_ver	= NULL;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  104  	boot_map.key_ptr	= NULL;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  105  	boot_map.buff_size	= &buff_size;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  106  
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  107  	status = efi_get_memory_map(&boot_map);
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  108  	if (status != EFI_SUCCESS)
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  109  		return membase;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  110  
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  111  	map.map_end = map.map + map_size;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  112  
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  113  	for_each_efi_memory_desc_in_map(&map, md) {
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  114  		if (md->attribute & EFI_MEMORY_WB) {
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  115  			if (membase > md->phys_addr)
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  116  				membase = md->phys_addr;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  117  		}
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  118  	}
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  119  
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  120  	efi_bs_call(free_pool, map.map);
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  121  
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  122  	return membase;
b87174541abcad8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  123  }
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21  124  
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  125  /*
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  126   * This function handles the architcture specific differences between arm and
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  127   * arm64 regarding where the kernel image must be loaded and any memory that
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  128   * must be reserved. On failure it is required to free all
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  129   * all allocations it has made.
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  130   */
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  131  efi_status_t handle_kernel_image(unsigned long *image_addr,
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  132  				 unsigned long *image_size,
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  133  				 unsigned long *reserve_addr,
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  134  				 unsigned long *reserve_size,
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  135  				 unsigned long dram_base,
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  136  				 efi_loaded_image_t *image);
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  137  
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  138  asmlinkage void __noreturn efi_enter_kernel(unsigned long entrypoint,
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  139  					    unsigned long fdt_addr,
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  140  					    unsigned long fdt_size);
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  141  
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  142  /*
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  143   * EFI entry point for the arm/arm64 EFI stubs.  This is the entrypoint
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  144   * that is described in the PE/COFF header.  Most of the code is the same
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  145   * for both archictectures, with the arch-specific code provided in the
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  146   * handle_kernel_image() function.
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  147   */
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17 @148  efi_status_t efi_entry(efi_handle_t handle, efi_system_table_t *sys_table_arg)
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  149  {
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  150  	efi_loaded_image_t *image;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  151  	efi_status_t status;
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  152  	unsigned long image_addr;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  153  	unsigned long image_size = 0;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  154  	unsigned long dram_base;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  155  	/* addr/point and size pairs for memory management*/
79d3219d4e56b3c drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-04  156  	unsigned long initrd_addr = 0;
9302c1bb8e47582 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  157  	unsigned long initrd_size = 0;
345c736edd07b65 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  158  	unsigned long fdt_addr = 0;  /* Original DTB */
a643375f4b17556 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2015-03-04  159  	unsigned long fdt_size = 0;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  160  	char *cmdline_ptr = NULL;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  161  	int cmdline_size = 0;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  162  	efi_guid_t loaded_image_proto = LOADED_IMAGE_PROTOCOL_GUID;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  163  	unsigned long reserve_addr = 0;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  164  	unsigned long reserve_size = 0;
de8cb458625c164 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  165  	enum efi_secureboot_mode secure_boot;
f0827e18a7a1da5 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-04-25  166  	struct screen_info *si;
b92165d2ba869a9 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  167  	efi_properties_table_t *prop_tbl;
ec93fc371f014a6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  168  	unsigned long max_addr;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  169  
2fcdad2a80a6d6f drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  170  	sys_table = sys_table_arg;
2fcdad2a80a6d6f drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  171  
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  172  	/* Check if we were booted by the EFI firmware */
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  173  	if (sys_table->hdr.signature != EFI_SYSTEM_TABLE_SIGNATURE) {
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  174  		status = EFI_INVALID_PARAMETER;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  175  		goto fail;
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  176  	}
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  177  
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  178  	status = check_platform_features();
b9d6769b5678dbd drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-02-17  179  	if (status != EFI_SUCCESS)
b9d6769b5678dbd drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-02-17  180  		goto fail;
b9d6769b5678dbd drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-02-17  181  
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  182  	/*
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  183  	 * Get a handle to the loaded image protocol.  This is used to get
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  184  	 * information about the running image, such as size and the command
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  185  	 * line.
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  186  	 */
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  187  	status = sys_table->boottime->handle_protocol(handle,
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  188  					&loaded_image_proto, (void *)&image);
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  189  	if (status != EFI_SUCCESS) {
8173ec7905b5b07 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  190  		pr_efi_err("Failed to get loaded image protocol\n");
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  191  		goto fail;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  192  	}
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  193  
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  194  	dram_base = get_dram_base();
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  195  	if (dram_base == EFI_ERROR) {
8173ec7905b5b07 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  196  		pr_efi_err("Failed to find DRAM base\n");
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  197  		status = EFI_LOAD_ERROR;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  198  		goto fail;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  199  	}
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  200  
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  201  	/*
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  202  	 * Get the command line from EFI, using the LOADED_IMAGE
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  203  	 * protocol. We are going to copy the command line into the
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  204  	 * device tree, so this can be allocated anywhere.
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  205  	 */
1e45bf7372c48c7 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  206  	cmdline_ptr = efi_convert_cmdline(image, &cmdline_size, ULONG_MAX);
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  207  	if (!cmdline_ptr) {
8173ec7905b5b07 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  208  		pr_efi_err("getting command line via LOADED_IMAGE_PROTOCOL\n");
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  209  		status = EFI_OUT_OF_RESOURCES;
2b5fe07a78a09a3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  210  		goto fail;
2b5fe07a78a09a3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  211  	}
2b5fe07a78a09a3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  212  
eeff7d634f47503 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  213  	if (IS_ENABLED(CONFIG_CMDLINE_EXTEND) ||
eeff7d634f47503 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  214  	    IS_ENABLED(CONFIG_CMDLINE_FORCE) ||
eeff7d634f47503 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  215  	    cmdline_size == 0)
eeff7d634f47503 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  216  		efi_parse_options(CONFIG_CMDLINE);
eeff7d634f47503 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  217  
eeff7d634f47503 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  218  	if (!IS_ENABLED(CONFIG_CMDLINE_FORCE) && cmdline_size > 0)
eeff7d634f47503 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  219  		efi_parse_options(cmdline_ptr);
eeff7d634f47503 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  220  
8173ec7905b5b07 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  221  	pr_efi("Booting Linux Kernel...\n");
eeff7d634f47503 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  222  
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  223  	si = setup_graphics();
f0827e18a7a1da5 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-04-25  224  
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  225  	status = handle_kernel_image(&image_addr, &image_size,
2b5fe07a78a09a3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  226  				     &reserve_addr,
2b5fe07a78a09a3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  227  				     &reserve_size,
2b5fe07a78a09a3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  228  				     dram_base, image);
2b5fe07a78a09a3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  229  	if (status != EFI_SUCCESS) {
8173ec7905b5b07 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  230  		pr_efi_err("Failed to relocate kernel\n");
2b5fe07a78a09a3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  231  		goto fail_free_cmdline;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  232  	}
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  233  
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  234  	efi_retrieve_tpm2_eventlog();
d99c1ba6a73b9e9 drivers/firmware/efi/libstub/arm-stub.c Xinwei Kong     2019-11-07  235  
ccc829ba3624beb drivers/firmware/efi/libstub/arm-stub.c Matthew Garrett 2017-08-25  236  	/* Ask the firmware to clear memory on unclean shutdown */
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  237  	efi_enable_reset_attack_mitigation();
ccc829ba3624beb drivers/firmware/efi/libstub/arm-stub.c Matthew Garrett 2017-08-25  238  
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  239  	secure_boot = efi_get_secureboot();
73a6492589c87cd drivers/firmware/efi/libstub/arm-stub.c Linn Crosetto   2016-04-25  240  
345c736edd07b65 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  241  	/*
de8cb458625c164 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  242  	 * Unauthenticated device tree data is a security hazard, so ignore
de8cb458625c164 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  243  	 * 'dtb=' unless UEFI Secure Boot is disabled.  We assume that secure
de8cb458625c164 drivers/firmware/efi/libstub/arm-stub.c David Howells   2017-02-06  244  	 * boot is enabled if we can't determine its state.
345c736edd07b65 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  245  	 */
3d7ee348aa4127a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-07-11  246  	if (!IS_ENABLED(CONFIG_EFI_ARMSTUB_DTB_LOADER) ||
3d7ee348aa4127a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-07-11  247  	     secure_boot != efi_secureboot_mode_disabled) {
3d7ee348aa4127a drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-07-11  248  		if (strstr(cmdline_ptr, "dtb="))
8173ec7905b5b07 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  249  			pr_efi("Ignoring DTB from command line.\n");
345c736edd07b65 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  250  	} else {
9302c1bb8e47582 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  251  		status = efi_load_dtb(image, &fdt_addr, &fdt_size);
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  252  
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  253  		if (status != EFI_SUCCESS) {
8173ec7905b5b07 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  254  			pr_efi_err("Failed to load device tree!\n");
2b5fe07a78a09a3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  255  			goto fail_free_image;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  256  		}
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  257  	}
0bcaa9040d05868 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  258  
0bcaa9040d05868 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  259  	if (fdt_addr) {
8173ec7905b5b07 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  260  		pr_efi("Using DTB from command line\n");
0bcaa9040d05868 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  261  	} else {
345c736edd07b65 drivers/firmware/efi/arm-stub.c         Ard Biesheuvel  2014-04-03  262  		/* Look for a device tree configuration table entry. */
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  263  		fdt_addr = (uintptr_t)get_fdt(&fdt_size);
0bcaa9040d05868 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  264  		if (fdt_addr)
8173ec7905b5b07 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  265  			pr_efi("Using DTB from configuration table\n");
0bcaa9040d05868 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  266  	}
0bcaa9040d05868 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  267  
0bcaa9040d05868 drivers/firmware/efi/libstub/arm-stub.c Mark Rutland    2014-10-23  268  	if (!fdt_addr)
8173ec7905b5b07 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  269  		pr_efi("Generating empty DTB\n");
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  270  
79d3219d4e56b3c drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-04  271  	if (!noinitrd()) {
ec93fc371f014a6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  272  		max_addr = efi_get_max_initrd_addr(dram_base, image_addr);
79d3219d4e56b3c drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-04  273  		status = efi_load_initrd_dev_path(&initrd_addr, &initrd_size,
79d3219d4e56b3c drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-04  274  						  max_addr);
ec93fc371f014a6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  275  		if (status == EFI_SUCCESS) {
ec93fc371f014a6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  276  			pr_efi("Loaded initrd from LINUX_EFI_INITRD_MEDIA_GUID device path\n");
ec93fc371f014a6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  277  		} else if (status == EFI_NOT_FOUND) {
ec93fc371f014a6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  278  			status = efi_load_initrd(image, &initrd_addr, &initrd_size,
ec93fc371f014a6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  279  						 ULONG_MAX, max_addr);
594e576d4b93b8c drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-03-29  280  			if (status == EFI_SUCCESS && initrd_size > 0)
ec93fc371f014a6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  281  				pr_efi("Loaded initrd from command line option\n");
ec93fc371f014a6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  282  		}
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  283  		if (status != EFI_SUCCESS)
ec93fc371f014a6 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-03  284  			pr_efi_err("Failed to load initrd!\n");
79d3219d4e56b3c drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-04  285  	}
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  286  
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  287  	efi_random_get_seed();
568bc4e87033d23 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-11-12  288  
b92165d2ba869a9 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  289  	/*
b92165d2ba869a9 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  290  	 * If the NX PE data feature is enabled in the properties table, we
b92165d2ba869a9 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  291  	 * should take care not to create a virtual mapping that changes the
b92165d2ba869a9 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  292  	 * relative placement of runtime services code and data regions, as
b92165d2ba869a9 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  293  	 * they may belong to the same PE/COFF executable image in memory.
b92165d2ba869a9 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  294  	 * The easiest way to achieve that is to simply use a 1:1 mapping.
b92165d2ba869a9 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  295  	 */
b92165d2ba869a9 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  296  	prop_tbl = get_efi_config_table(EFI_PROPERTIES_TABLE_GUID);
b92165d2ba869a9 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  297  	flat_va_mapping = prop_tbl &&
b92165d2ba869a9 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  298  			  (prop_tbl->memory_protection_attribute &
b92165d2ba869a9 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  299  			   EFI_PROPERTIES_RUNTIME_MEMORY_PROTECTION_NON_EXECUTABLE_PE_DATA);
b92165d2ba869a9 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  300  
38fb6652229c214 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-10-25  301  	/* hibernation expects the runtime regions to stay in the same place */
b92165d2ba869a9 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-10  302  	if (!IS_ENABLED(CONFIG_HIBERNATION) && !nokaslr() && !flat_va_mapping) {
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  303  		/*
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  304  		 * Randomize the base of the UEFI runtime services region.
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  305  		 * Preserve the 2 MB alignment of the region by taking a
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  306  		 * shift of 21 bit positions into account when scaling
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  307  		 * the headroom value using a 32-bit random value.
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  308  		 */
197decefdb79d6f drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-17  309  		static const u64 headroom = EFI_RT_VIRTUAL_LIMIT -
197decefdb79d6f drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-17  310  					    EFI_RT_VIRTUAL_BASE -
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  311  					    EFI_RT_VIRTUAL_SIZE;
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  312  		u32 rnd;
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  313  
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  314  		status = efi_get_random_bytes(sizeof(rnd), (u8 *)&rnd);
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  315  		if (status == EFI_SUCCESS) {
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  316  			virtmap_base = EFI_RT_VIRTUAL_BASE +
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  317  				       (((headroom >> 21) * rnd) >> (32 - 21));
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  318  		}
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  319  	}
e69176d68d26d63 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2017-04-04  320  
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  321  	install_memreserve_table();
b844470f22061e8 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2018-09-21  322  
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  323  	status = allocate_new_fdt_and_exit_boot(handle, &fdt_addr,
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  324  						efi_get_max_fdt_addr(dram_base),
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  325  						initrd_addr, initrd_size,
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  326  						cmdline_ptr, fdt_addr, fdt_size);
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  327  	if (status != EFI_SUCCESS)
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  328  		goto fail_free_initrd;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  329  
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  330  	efi_enter_kernel(image_addr, fdt_addr, fdt_totalsize((void *)fdt_addr));
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  331  	/* not reached */
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  332  
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  333  fail_free_initrd:
8173ec7905b5b07 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  334  	pr_efi_err("Failed to update FDT and exit boot services\n");
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  335  
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  336  	efi_free(initrd_size, initrd_addr);
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  337  	efi_free(fdt_size, fdt_addr);
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  338  
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  339  fail_free_image:
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  340  	efi_free(image_size, image_addr);
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  341  	efi_free(reserve_size, reserve_addr);
2b5fe07a78a09a3 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2016-01-26  342  fail_free_cmdline:
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  343  	free_screen_info(si);
cd33a5c1d53e43b drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2019-12-24  344  	efi_free(cmdline_size, (unsigned long)cmdline_ptr);
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  345  fail:
9f9223778ef385e drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2020-02-17  346  	return status;
3c7f255039a2ad6 drivers/firmware/efi/arm-stub.c         Mark Salter     2014-04-15  347  }
f3cdfd239da56a4 drivers/firmware/efi/libstub/arm-stub.c Ard Biesheuvel  2014-10-20  348  

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005230455.4NQIwgRZ%25lkp%40intel.com.

--4Ckj6UjgE2iN1+kY
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--4Ckj6UjgE2iN1+kY--
