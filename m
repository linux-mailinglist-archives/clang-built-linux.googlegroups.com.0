Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2OTUD5AKGQEAROS3TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9122550BA
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 23:47:22 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id s26sf3553266otg.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 14:47:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598564842; cv=pass;
        d=google.com; s=arc-20160816;
        b=W9/d42e4U0lQSe2faYOp9MzZown2ukPOabr4cSOLoYdGCTjvUUBC5OrO4lK0/e+dOn
         klBTLl0UwN9dz9XPhs9s8z/VrYwGqLLZaddndKDghgJhnxVoSBBQLP0wqAHrPOog/kBi
         UfasWWbVy+KFCtB+8Lzg111PAGRG8vbu2qVHurCkXodVelCWiDbc6zMQ8A8KhOKtg0ka
         IasY7LNbCg7bC/5Ccjrv35ziu5sKl6LPxfZ96UTYxhQExjiwdrQ078GsUIFrzySN1Gcx
         u+vhLXoHMyRFMFHkQyDgAI2E7k3rBdPXmh2GPlbu0HcRg33dagk8XlxB4eFWnNSDuESr
         PJTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=6x/GKD/j5bV14DvDFwNCrHFBJ/6nRU2nkorGO2ktf5I=;
        b=QeqIVF18LtDI3ubm/kAujoFRdi2xZY2g8M1In3dbNcWwH71OVtKzn0l6wvEtSKQhgh
         /kthurMMaSIt02PTsHO+N7Rh0NbJNxAONpQtSnjFiCxm5Cd9I9LVcsWhNhsDq/ooTf0h
         Z5jIdIwRzz8PSjPPHoOLmsTYsEaaRFtgfICRYK4digCPHpLMKZnH0Rn1+J6iucnYOePP
         2lFsaIO+HInUuIQV+PCGKZrF0lXQAaf/KM6BY1Brk9BVils9PwVesBc4prhFAdqpA7Uz
         9Ms7OyUE+dpHoKbgDGXYM/jqORA4VQE2QHp8zBpLy8YIKoKE/eZJkSQCQ6acxv/qMsd1
         jIzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6x/GKD/j5bV14DvDFwNCrHFBJ/6nRU2nkorGO2ktf5I=;
        b=IgG/VnBW/DOyD1pSOtCUhZZWJPf/sotFqb9rKEGejksV3C6G1uIobm/8KYofT5xOA1
         Bzf1B7g9Iu0QTUxWtLwC7vjsq87NS4DyJSabdnY6PGf6Kp3qKm9Ng+bCE/dUk9nKJu44
         FVPmVNwTR8vi86EKN2ZNRPHqyyLK/jD03TWKXJRi7shWg1sOMdQKFghRdsz2T2pd6yBJ
         tgZG1ngmN6O+q4Q+UZrWOUGJMailQpzEcIvpoGXsHA+uXxD2kEyrNqeQa9gLHguCH9af
         KFIBwGv6ZNPxMaRVUiLG6/ZI3taYhimrbLkENHbvDU9UL5xPhqxd65Q8h0n5LoEoFPX/
         OhhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6x/GKD/j5bV14DvDFwNCrHFBJ/6nRU2nkorGO2ktf5I=;
        b=F002mcBNY2pzw/1HaECZWQ1y7AEXlw7qPzJJr730dHEdr+10euux9vJcSdbsqM+qVC
         r5ymY0dozbzMJ5tJ304UWassDr5GExyb3FtEpTufxJK40x6Wh/JodW24MP0XfkPhW16M
         1PTwlsU9Iy/NInRxOgnsoq0liXCfZ1dVmcCNaUBeqe+czQpQEws9qAseOmftER3f4f+e
         E41FBrkoMDoqsR90jZzTbpfa+UvB5Plr6EBuaSGfuvXirPAavNOX3rzi8mVlByX0jvrJ
         /wVNBfz3pztOo1K4zuTwPt7O9ujCcZJyA+OjUIr/xnoMZL7NWTY3BNRv25on1WyQXWjJ
         /V+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wmzxX7FVUwntWUMJhY0lmkM7hwMrpppCtCsjhRFDHOYkQJz/2
	sTdKAm7lIp7z3wPi4lk0ydQ=
X-Google-Smtp-Source: ABdhPJxegdd5atHegt8itXAktHYBeb3/mGQFXo4XEXcSe1riKG7Wsys3aJZ15aPEdhxA5OtKgjs1mw==
X-Received: by 2002:aca:aad8:: with SMTP id t207mr607913oie.162.1598564841822;
        Thu, 27 Aug 2020 14:47:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d555:: with SMTP id q21ls279596oos.11.gmail; Thu, 27 Aug
 2020 14:47:21 -0700 (PDT)
X-Received: by 2002:a4a:924b:: with SMTP id g11mr15927083ooh.9.1598564841298;
        Thu, 27 Aug 2020 14:47:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598564841; cv=none;
        d=google.com; s=arc-20160816;
        b=UsNTiTp6tl+GDYnPVqWE3kf42f4I8VEpYvQKtBtaSgJucdrq9phNXvfot2AHISgH4N
         YHPdkWpy2pQbSJ0MwZoRdY50UU0z9dlN9vRrr8gskUwcVpdL/tD192465VAnSjq0RmXD
         xHvDcD3QyapE8cp9OrEHFvxD0gtnP/1Az/7Q0iSEtsiDdpU793X2vHT5fUUdejWYogJ+
         ABzMkIuuP35NyXQKDS1J7c1CulYX4piTOR/kxgBKplgF2TTPm5XHLZ5K5Kev3/3MXSXi
         WoXuVcq+QIu1canCqGIrjmG5MfAq6AnJUDvs/S2ClWr4NcHm6SRcO5tMBtPWY9irzTWv
         cIFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=2pUtm1CfTRn8vGxxPFkUNsuchNJK0gQJiYHheqMrmSA=;
        b=ax0vSPZLE9kKP3JJHs1qf0s1s/AmEsn2EwT/Z2D0Cxk9gtRGvt3QaIggffoStFv9SB
         YcTCEAR+jPxB4ayUlZFbrLGv+9Y0rWT4nVnEw5AoHsQB5b8GSIeKCcz3bT06AhS9NShf
         GtAc/VZtW4iuaCSLPxwvMuhdQ7g1P4ZEgRzPRztGZy+aQERhkNCmzwiic1hCrcIUYgx4
         TgG9DorwAMtpPBI7R/ff3abcqGu7JkE61NpzwazBtTr7GkhvoRPXpBAvwKnrYRBUL4Wk
         uuRayBrpFnd7gdS78Vj9vXupHc4bnRRGmFmpvLc5/yxzVShbK9FeTcXRfs9Wh44596F1
         9hyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id m19si225056otn.1.2020.08.27.14.47.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Aug 2020 14:47:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: LguUaeKAHbUj16uEyhjOEtxEfROMxHBwQk/voC6yPVnA/FWAD9d44QQQQJLLnytnlvOUnhI5Ou
 iTbYjCwH/2cQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9726"; a="136116476"
X-IronPort-AV: E=Sophos;i="5.76,361,1592895600"; 
   d="gz'50?scan'50,208,50";a="136116476"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Aug 2020 14:47:19 -0700
IronPort-SDR: UxVTrGlXTVeJHLFfooeA9Sq5MX3tZWo6UMqlfn/L9Uq8/684k1oV1DGV3Zvgf1O8nT7RCxdC1X
 dtDhgTcso+iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,361,1592895600"; 
   d="gz'50?scan'50,208,50";a="295909677"
Received: from lkp-server01.sh.intel.com (HELO 4f455964fc6c) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 27 Aug 2020 14:47:16 -0700
Received: from kbuild by 4f455964fc6c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kBPjn-0002Jl-VH; Thu, 27 Aug 2020 21:47:15 +0000
Date: Fri, 28 Aug 2020 05:47:04 +0800
From: kernel test robot <lkp@intel.com>
To: "Daniel J. Ogorchock" <djogorchock@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Jiri Kosina <jkosina@suse.cz>
Subject: [hid:for-5.10/nintendo 5/14] drivers/hid/hid-nintendo.c:132:45:
 warning: unused variable 'joycon_rumble_frequencies'
Message-ID: <202008280502.zZlUH7iw%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qMm9M+Fa2AknHoGS"
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


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/hid/hid.git for-5.10/nintendo
head:   e02b104cdb01afc87077405ffb6f8964f9fc8d48
commit: a02e381399477026bec15facaa3451c0cc439d5e [5/14] HID: nintendo: add rumble support
config: x86_64-randconfig-r035-20200828 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 71f3169e1baeff262583b35ef88f8fb6df7be85e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout a02e381399477026bec15facaa3451c0cc439d5e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

                   ^
   drivers/hid/hid-nintendo.c:44:17: warning: unused variable 'JC_OUTPUT_RUMBLE_ONLY' [-Wunused-const-variable]
   static const u8 JC_OUTPUT_RUMBLE_ONLY           = 0x10;
                   ^
   drivers/hid/hid-nintendo.c:45:17: warning: unused variable 'JC_OUTPUT_MCU_DATA' [-Wunused-const-variable]
   static const u8 JC_OUTPUT_MCU_DATA              = 0x11;
                   ^
   drivers/hid/hid-nintendo.c:49:17: warning: unused variable 'JC_SUBCMD_STATE' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_STATE                 /*= 0x00*/;
                   ^
   drivers/hid/hid-nintendo.c:50:17: warning: unused variable 'JC_SUBCMD_MANUAL_BT_PAIRING' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_MANUAL_BT_PAIRING     = 0x01;
                   ^
   drivers/hid/hid-nintendo.c:51:17: warning: unused variable 'JC_SUBCMD_REQ_DEV_INFO' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_REQ_DEV_INFO          = 0x02;
                   ^
   drivers/hid/hid-nintendo.c:53:17: warning: unused variable 'JC_SUBCMD_TRIGGERS_ELAPSED' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_TRIGGERS_ELAPSED      = 0x04;
                   ^
   drivers/hid/hid-nintendo.c:54:17: warning: unused variable 'JC_SUBCMD_GET_PAGE_LIST_STATE' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_GET_PAGE_LIST_STATE   = 0x05;
                   ^
   drivers/hid/hid-nintendo.c:55:17: warning: unused variable 'JC_SUBCMD_SET_HCI_STATE' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_SET_HCI_STATE         = 0x06;
                   ^
   drivers/hid/hid-nintendo.c:56:17: warning: unused variable 'JC_SUBCMD_RESET_PAIRING_INFO' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_RESET_PAIRING_INFO    = 0x07;
                   ^
   drivers/hid/hid-nintendo.c:57:17: warning: unused variable 'JC_SUBCMD_LOW_POWER_MODE' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_LOW_POWER_MODE        = 0x08;
                   ^
   drivers/hid/hid-nintendo.c:59:17: warning: unused variable 'JC_SUBCMD_SPI_FLASH_WRITE' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_SPI_FLASH_WRITE       = 0x11;
                   ^
   drivers/hid/hid-nintendo.c:60:17: warning: unused variable 'JC_SUBCMD_RESET_MCU' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_RESET_MCU             = 0x20;
                   ^
   drivers/hid/hid-nintendo.c:61:17: warning: unused variable 'JC_SUBCMD_SET_MCU_CONFIG' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_SET_MCU_CONFIG        = 0x21;
                   ^
   drivers/hid/hid-nintendo.c:62:17: warning: unused variable 'JC_SUBCMD_SET_MCU_STATE' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_SET_MCU_STATE         = 0x22;
                   ^
   drivers/hid/hid-nintendo.c:64:17: warning: unused variable 'JC_SUBCMD_GET_PLAYER_LIGHTS' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_GET_PLAYER_LIGHTS     = 0x31;
                   ^
   drivers/hid/hid-nintendo.c:66:17: warning: unused variable 'JC_SUBCMD_ENABLE_IMU' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_ENABLE_IMU            = 0x40;
                   ^
   drivers/hid/hid-nintendo.c:67:17: warning: unused variable 'JC_SUBCMD_SET_IMU_SENSITIVITY' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_SET_IMU_SENSITIVITY   = 0x41;
                   ^
   drivers/hid/hid-nintendo.c:68:17: warning: unused variable 'JC_SUBCMD_WRITE_IMU_REG' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_WRITE_IMU_REG         = 0x42;
                   ^
   drivers/hid/hid-nintendo.c:69:17: warning: unused variable 'JC_SUBCMD_READ_IMU_REG' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_READ_IMU_REG          = 0x43;
                   ^
   drivers/hid/hid-nintendo.c:71:17: warning: unused variable 'JC_SUBCMD_GET_REGULATED_VOLTAGE' [-Wunused-const-variable]
   static const u8 JC_SUBCMD_GET_REGULATED_VOLTAGE = 0x50;
                   ^
   drivers/hid/hid-nintendo.c:74:17: warning: unused variable 'JC_INPUT_BUTTON_EVENT' [-Wunused-const-variable]
   static const u8 JC_INPUT_BUTTON_EVENT           = 0x3F;
                   ^
   drivers/hid/hid-nintendo.c:81:17: warning: unused variable 'JC_FEATURE_LAST_SUBCMD' [-Wunused-const-variable]
   static const u8 JC_FEATURE_LAST_SUBCMD          = 0x02;
                   ^
   drivers/hid/hid-nintendo.c:82:17: warning: unused variable 'JC_FEATURE_OTA_FW_UPGRADE' [-Wunused-const-variable]
   static const u8 JC_FEATURE_OTA_FW_UPGRADE       = 0x70;
                   ^
   drivers/hid/hid-nintendo.c:83:17: warning: unused variable 'JC_FEATURE_SETUP_MEM_READ' [-Wunused-const-variable]
   static const u8 JC_FEATURE_SETUP_MEM_READ       = 0x71;
                   ^
   drivers/hid/hid-nintendo.c:84:17: warning: unused variable 'JC_FEATURE_MEM_READ' [-Wunused-const-variable]
   static const u8 JC_FEATURE_MEM_READ             = 0x72;
                   ^
   drivers/hid/hid-nintendo.c:85:17: warning: unused variable 'JC_FEATURE_ERASE_MEM_SECTOR' [-Wunused-const-variable]
   static const u8 JC_FEATURE_ERASE_MEM_SECTOR     = 0x73;
                   ^
   drivers/hid/hid-nintendo.c:86:17: warning: unused variable 'JC_FEATURE_MEM_WRITE' [-Wunused-const-variable]
   static const u8 JC_FEATURE_MEM_WRITE            = 0x74;
                   ^
   drivers/hid/hid-nintendo.c:87:17: warning: unused variable 'JC_FEATURE_LAUNCH' [-Wunused-const-variable]
   static const u8 JC_FEATURE_LAUNCH               = 0x75;
                   ^
   drivers/hid/hid-nintendo.c:90:17: warning: unused variable 'JC_USB_CMD_CONN_STATUS' [-Wunused-const-variable]
   static const u8 JC_USB_CMD_CONN_STATUS          = 0x01;
                   ^
   drivers/hid/hid-nintendo.c:94:17: warning: unused variable 'JC_USB_CMD_EN_TIMEOUT' [-Wunused-const-variable]
   static const u8 JC_USB_CMD_EN_TIMEOUT           = 0x05;
                   ^
   drivers/hid/hid-nintendo.c:95:17: warning: unused variable 'JC_USB_RESET' [-Wunused-const-variable]
   static const u8 JC_USB_RESET                    = 0x06;
                   ^
   drivers/hid/hid-nintendo.c:96:17: warning: unused variable 'JC_USB_PRE_HANDSHAKE' [-Wunused-const-variable]
   static const u8 JC_USB_PRE_HANDSHAKE            = 0x91;
                   ^
   drivers/hid/hid-nintendo.c:97:17: warning: unused variable 'JC_USB_SEND_UART' [-Wunused-const-variable]
   static const u8 JC_USB_SEND_UART                = 0x92;
                   ^
>> drivers/hid/hid-nintendo.c:132:45: warning: unused variable 'joycon_rumble_frequencies' [-Wunused-const-variable]
   static const struct joycon_rumble_freq_data joycon_rumble_frequencies[] = {
                                               ^
>> drivers/hid/hid-nintendo.c:190:44: warning: unused variable 'joycon_rumble_amplitudes' [-Wunused-const-variable]
   static const struct joycon_rumble_amp_data joycon_rumble_amplitudes[] = {
                                              ^
>> drivers/hid/hid-nintendo.c:309:18: warning: unused variable 'JC_RUMBLE_DFLT_LOW_FREQ' [-Wunused-const-variable]
   static const u16 JC_RUMBLE_DFLT_LOW_FREQ = 160;
                    ^
>> drivers/hid/hid-nintendo.c:310:18: warning: unused variable 'JC_RUMBLE_DFLT_HIGH_FREQ' [-Wunused-const-variable]
   static const u16 JC_RUMBLE_DFLT_HIGH_FREQ = 320;
                    ^
   38 warnings generated.

# https://git.kernel.org/pub/scm/linux/kernel/git/hid/hid.git/commit/?id=a02e381399477026bec15facaa3451c0cc439d5e
git remote add hid https://git.kernel.org/pub/scm/linux/kernel/git/hid/hid.git
git fetch --no-tags hid for-5.10/nintendo
git checkout a02e381399477026bec15facaa3451c0cc439d5e
vim +/joycon_rumble_frequencies +132 drivers/hid/hid-nintendo.c

    88	
    89	/* USB Commands */
    90	static const u8 JC_USB_CMD_CONN_STATUS		= 0x01;
    91	static const u8 JC_USB_CMD_HANDSHAKE		= 0x02;
    92	static const u8 JC_USB_CMD_BAUDRATE_3M		= 0x03;
    93	static const u8 JC_USB_CMD_NO_TIMEOUT		= 0x04;
    94	static const u8 JC_USB_CMD_EN_TIMEOUT		= 0x05;
  > 95	static const u8 JC_USB_RESET			= 0x06;
  > 96	static const u8 JC_USB_PRE_HANDSHAKE		= 0x91;
  > 97	static const u8 JC_USB_SEND_UART		= 0x92;
    98	
    99	/* SPI storage addresses of factory calibration data */
   100	static const u16 JC_CAL_DATA_START		= 0x603d;
   101	static const u16 JC_CAL_DATA_END		= 0x604e;
   102	#define JC_CAL_DATA_SIZE	(JC_CAL_DATA_END - JC_CAL_DATA_START + 1)
   103	
   104	
   105	/* The raw analog joystick values will be mapped in terms of this magnitude */
   106	static const u16 JC_MAX_STICK_MAG		= 32767;
   107	static const u16 JC_STICK_FUZZ			= 250;
   108	static const u16 JC_STICK_FLAT			= 500;
   109	
   110	/* Hat values for pro controller's d-pad */
   111	static const u16 JC_MAX_DPAD_MAG		= 1;
   112	static const u16 JC_DPAD_FUZZ			/*= 0*/;
   113	static const u16 JC_DPAD_FLAT			/*= 0*/;
   114	
   115	/* frequency/amplitude tables for rumble */
   116	struct joycon_rumble_freq_data {
   117		u16 high;
   118		u8 low;
   119		u16 freq; /* Hz*/
   120	};
   121	
   122	struct joycon_rumble_amp_data {
   123		u8 high;
   124		u16 low;
   125		u16 amp;
   126	};
   127	
   128	/*
   129	 * These tables are from
   130	 * https://github.com/dekuNukem/Nintendo_Switch_Reverse_Engineering/blob/master/rumble_data_table.md
   131	 */
 > 132	static const struct joycon_rumble_freq_data joycon_rumble_frequencies[] = {
   133		/* high, low, freq */
   134		{ 0x0000, 0x01,   41 }, { 0x0000, 0x02,   42 }, { 0x0000, 0x03,   43 },
   135		{ 0x0000, 0x04,   44 }, { 0x0000, 0x05,   45 }, { 0x0000, 0x06,   46 },
   136		{ 0x0000, 0x07,   47 }, { 0x0000, 0x08,   48 }, { 0x0000, 0x09,   49 },
   137		{ 0x0000, 0x0A,   50 }, { 0x0000, 0x0B,   51 }, { 0x0000, 0x0C,   52 },
   138		{ 0x0000, 0x0D,   53 }, { 0x0000, 0x0E,   54 }, { 0x0000, 0x0F,   55 },
   139		{ 0x0000, 0x10,   57 }, { 0x0000, 0x11,   58 }, { 0x0000, 0x12,   59 },
   140		{ 0x0000, 0x13,   60 }, { 0x0000, 0x14,   62 }, { 0x0000, 0x15,   63 },
   141		{ 0x0000, 0x16,   64 }, { 0x0000, 0x17,   66 }, { 0x0000, 0x18,   67 },
   142		{ 0x0000, 0x19,   69 }, { 0x0000, 0x1A,   70 }, { 0x0000, 0x1B,   72 },
   143		{ 0x0000, 0x1C,   73 }, { 0x0000, 0x1D,   75 }, { 0x0000, 0x1e,   77 },
   144		{ 0x0000, 0x1f,   78 }, { 0x0000, 0x20,   80 }, { 0x0400, 0x21,   82 },
   145		{ 0x0800, 0x22,   84 }, { 0x0c00, 0x23,   85 }, { 0x1000, 0x24,   87 },
   146		{ 0x1400, 0x25,   89 }, { 0x1800, 0x26,   91 }, { 0x1c00, 0x27,   93 },
   147		{ 0x2000, 0x28,   95 }, { 0x2400, 0x29,   97 }, { 0x2800, 0x2a,   99 },
   148		{ 0x2c00, 0x2b,  102 }, { 0x3000, 0x2c,  104 }, { 0x3400, 0x2d,  106 },
   149		{ 0x3800, 0x2e,  108 }, { 0x3c00, 0x2f,  111 }, { 0x4000, 0x30,  113 },
   150		{ 0x4400, 0x31,  116 }, { 0x4800, 0x32,  118 }, { 0x4c00, 0x33,  121 },
   151		{ 0x5000, 0x34,  123 }, { 0x5400, 0x35,  126 }, { 0x5800, 0x36,  129 },
   152		{ 0x5c00, 0x37,  132 }, { 0x6000, 0x38,  135 }, { 0x6400, 0x39,  137 },
   153		{ 0x6800, 0x3a,  141 }, { 0x6c00, 0x3b,  144 }, { 0x7000, 0x3c,  147 },
   154		{ 0x7400, 0x3d,  150 }, { 0x7800, 0x3e,  153 }, { 0x7c00, 0x3f,  157 },
   155		{ 0x8000, 0x40,  160 }, { 0x8400, 0x41,  164 }, { 0x8800, 0x42,  167 },
   156		{ 0x8c00, 0x43,  171 }, { 0x9000, 0x44,  174 }, { 0x9400, 0x45,  178 },
   157		{ 0x9800, 0x46,  182 }, { 0x9c00, 0x47,  186 }, { 0xa000, 0x48,  190 },
   158		{ 0xa400, 0x49,  194 }, { 0xa800, 0x4a,  199 }, { 0xac00, 0x4b,  203 },
   159		{ 0xb000, 0x4c,  207 }, { 0xb400, 0x4d,  212 }, { 0xb800, 0x4e,  217 },
   160		{ 0xbc00, 0x4f,  221 }, { 0xc000, 0x50,  226 }, { 0xc400, 0x51,  231 },
   161		{ 0xc800, 0x52,  236 }, { 0xcc00, 0x53,  241 }, { 0xd000, 0x54,  247 },
   162		{ 0xd400, 0x55,  252 }, { 0xd800, 0x56,  258 }, { 0xdc00, 0x57,  263 },
   163		{ 0xe000, 0x58,  269 }, { 0xe400, 0x59,  275 }, { 0xe800, 0x5a,  281 },
   164		{ 0xec00, 0x5b,  287 }, { 0xf000, 0x5c,  293 }, { 0xf400, 0x5d,  300 },
   165		{ 0xf800, 0x5e,  306 }, { 0xfc00, 0x5f,  313 }, { 0x0001, 0x60,  320 },
   166		{ 0x0401, 0x61,  327 }, { 0x0801, 0x62,  334 }, { 0x0c01, 0x63,  341 },
   167		{ 0x1001, 0x64,  349 }, { 0x1401, 0x65,  357 }, { 0x1801, 0x66,  364 },
   168		{ 0x1c01, 0x67,  372 }, { 0x2001, 0x68,  381 }, { 0x2401, 0x69,  389 },
   169		{ 0x2801, 0x6a,  397 }, { 0x2c01, 0x6b,  406 }, { 0x3001, 0x6c,  415 },
   170		{ 0x3401, 0x6d,  424 }, { 0x3801, 0x6e,  433 }, { 0x3c01, 0x6f,  443 },
   171		{ 0x4001, 0x70,  453 }, { 0x4401, 0x71,  462 }, { 0x4801, 0x72,  473 },
   172		{ 0x4c01, 0x73,  483 }, { 0x5001, 0x74,  494 }, { 0x5401, 0x75,  504 },
   173		{ 0x5801, 0x76,  515 }, { 0x5c01, 0x77,  527 }, { 0x6001, 0x78,  538 },
   174		{ 0x6401, 0x79,  550 }, { 0x6801, 0x7a,  562 }, { 0x6c01, 0x7b,  574 },
   175		{ 0x7001, 0x7c,  587 }, { 0x7401, 0x7d,  600 }, { 0x7801, 0x7e,  613 },
   176		{ 0x7c01, 0x7f,  626 }, { 0x8001, 0x00,  640 }, { 0x8401, 0x00,  654 },
   177		{ 0x8801, 0x00,  668 }, { 0x8c01, 0x00,  683 }, { 0x9001, 0x00,  698 },
   178		{ 0x9401, 0x00,  713 }, { 0x9801, 0x00,  729 }, { 0x9c01, 0x00,  745 },
   179		{ 0xa001, 0x00,  761 }, { 0xa401, 0x00,  778 }, { 0xa801, 0x00,  795 },
   180		{ 0xac01, 0x00,  812 }, { 0xb001, 0x00,  830 }, { 0xb401, 0x00,  848 },
   181		{ 0xb801, 0x00,  867 }, { 0xbc01, 0x00,  886 }, { 0xc001, 0x00,  905 },
   182		{ 0xc401, 0x00,  925 }, { 0xc801, 0x00,  945 }, { 0xcc01, 0x00,  966 },
   183		{ 0xd001, 0x00,  987 }, { 0xd401, 0x00, 1009 }, { 0xd801, 0x00, 1031 },
   184		{ 0xdc01, 0x00, 1053 }, { 0xe001, 0x00, 1076 }, { 0xe401, 0x00, 1100 },
   185		{ 0xe801, 0x00, 1124 }, { 0xec01, 0x00, 1149 }, { 0xf001, 0x00, 1174 },
   186		{ 0xf401, 0x00, 1199 }, { 0xf801, 0x00, 1226 }, { 0xfc01, 0x00, 1253 }
   187	};
   188	
   189	#define joycon_max_rumble_amp	(1003)
 > 190	static const struct joycon_rumble_amp_data joycon_rumble_amplitudes[] = {
   191		/* high, low, amp */
   192		{ 0x00, 0x0040,    0 },
   193		{ 0x02, 0x8040,   10 }, { 0x04, 0x0041,   12 }, { 0x06, 0x8041,   14 },
   194		{ 0x08, 0x0042,   17 }, { 0x0a, 0x8042,   20 }, { 0x0c, 0x0043,   24 },
   195		{ 0x0e, 0x8043,   28 }, { 0x10, 0x0044,   33 }, { 0x12, 0x8044,   40 },
   196		{ 0x14, 0x0045,   47 }, { 0x16, 0x8045,   56 }, { 0x18, 0x0046,   67 },
   197		{ 0x1a, 0x8046,   80 }, { 0x1c, 0x0047,   95 }, { 0x1e, 0x8047,  112 },
   198		{ 0x20, 0x0048,  117 }, { 0x22, 0x8048,  123 }, { 0x24, 0x0049,  128 },
   199		{ 0x26, 0x8049,  134 }, { 0x28, 0x004a,  140 }, { 0x2a, 0x804a,  146 },
   200		{ 0x2c, 0x004b,  152 }, { 0x2e, 0x804b,  159 }, { 0x30, 0x004c,  166 },
   201		{ 0x32, 0x804c,  173 }, { 0x34, 0x004d,  181 }, { 0x36, 0x804d,  189 },
   202		{ 0x38, 0x004e,  198 }, { 0x3a, 0x804e,  206 }, { 0x3c, 0x004f,  215 },
   203		{ 0x3e, 0x804f,  225 }, { 0x40, 0x0050,  230 }, { 0x42, 0x8050,  235 },
   204		{ 0x44, 0x0051,  240 }, { 0x46, 0x8051,  245 }, { 0x48, 0x0052,  251 },
   205		{ 0x4a, 0x8052,  256 }, { 0x4c, 0x0053,  262 }, { 0x4e, 0x8053,  268 },
   206		{ 0x50, 0x0054,  273 }, { 0x52, 0x8054,  279 }, { 0x54, 0x0055,  286 },
   207		{ 0x56, 0x8055,  292 }, { 0x58, 0x0056,  298 }, { 0x5a, 0x8056,  305 },
   208		{ 0x5c, 0x0057,  311 }, { 0x5e, 0x8057,  318 }, { 0x60, 0x0058,  325 },
   209		{ 0x62, 0x8058,  332 }, { 0x64, 0x0059,  340 }, { 0x66, 0x8059,  347 },
   210		{ 0x68, 0x005a,  355 }, { 0x6a, 0x805a,  362 }, { 0x6c, 0x005b,  370 },
   211		{ 0x6e, 0x805b,  378 }, { 0x70, 0x005c,  387 }, { 0x72, 0x805c,  395 },
   212		{ 0x74, 0x005d,  404 }, { 0x76, 0x805d,  413 }, { 0x78, 0x005e,  422 },
   213		{ 0x7a, 0x805e,  431 }, { 0x7c, 0x005f,  440 }, { 0x7e, 0x805f,  450 },
   214		{ 0x80, 0x0060,  460 }, { 0x82, 0x8060,  470 }, { 0x84, 0x0061,  480 },
   215		{ 0x86, 0x8061,  491 }, { 0x88, 0x0062,  501 }, { 0x8a, 0x8062,  512 },
   216		{ 0x8c, 0x0063,  524 }, { 0x8e, 0x8063,  535 }, { 0x90, 0x0064,  547 },
   217		{ 0x92, 0x8064,  559 }, { 0x94, 0x0065,  571 }, { 0x96, 0x8065,  584 },
   218		{ 0x98, 0x0066,  596 }, { 0x9a, 0x8066,  609 }, { 0x9c, 0x0067,  623 },
   219		{ 0x9e, 0x8067,  636 }, { 0xa0, 0x0068,  650 }, { 0xa2, 0x8068,  665 },
   220		{ 0xa4, 0x0069,  679 }, { 0xa6, 0x8069,  694 }, { 0xa8, 0x006a,  709 },
   221		{ 0xaa, 0x806a,  725 }, { 0xac, 0x006b,  741 }, { 0xae, 0x806b,  757 },
   222		{ 0xb0, 0x006c,  773 }, { 0xb2, 0x806c,  790 }, { 0xb4, 0x006d,  808 },
   223		{ 0xb6, 0x806d,  825 }, { 0xb8, 0x006e,  843 }, { 0xba, 0x806e,  862 },
   224		{ 0xbc, 0x006f,  881 }, { 0xbe, 0x806f,  900 }, { 0xc0, 0x0070,  920 },
   225		{ 0xc2, 0x8070,  940 }, { 0xc4, 0x0071,  960 }, { 0xc6, 0x8071,  981 },
   226		{ 0xc8, 0x0072, joycon_max_rumble_amp }
   227	};
   228	
   229	/* States for controller state machine */
   230	enum joycon_ctlr_state {
   231		JOYCON_CTLR_STATE_INIT,
   232		JOYCON_CTLR_STATE_READ,
   233	};
   234	
   235	struct joycon_stick_cal {
   236		s32 max;
   237		s32 min;
   238		s32 center;
   239	};
   240	
   241	/*
   242	 * All the controller's button values are stored in a u32.
   243	 * They can be accessed with bitwise ANDs.
   244	 */
   245	static const u32 JC_BTN_Y	= BIT(0);
   246	static const u32 JC_BTN_X	= BIT(1);
   247	static const u32 JC_BTN_B	= BIT(2);
   248	static const u32 JC_BTN_A	= BIT(3);
   249	static const u32 JC_BTN_SR_R	= BIT(4);
   250	static const u32 JC_BTN_SL_R	= BIT(5);
   251	static const u32 JC_BTN_R	= BIT(6);
   252	static const u32 JC_BTN_ZR	= BIT(7);
   253	static const u32 JC_BTN_MINUS	= BIT(8);
   254	static const u32 JC_BTN_PLUS	= BIT(9);
   255	static const u32 JC_BTN_RSTICK	= BIT(10);
   256	static const u32 JC_BTN_LSTICK	= BIT(11);
   257	static const u32 JC_BTN_HOME	= BIT(12);
   258	static const u32 JC_BTN_CAP	= BIT(13); /* capture button */
   259	static const u32 JC_BTN_DOWN	= BIT(16);
   260	static const u32 JC_BTN_UP	= BIT(17);
   261	static const u32 JC_BTN_RIGHT	= BIT(18);
   262	static const u32 JC_BTN_LEFT	= BIT(19);
   263	static const u32 JC_BTN_SR_L	= BIT(20);
   264	static const u32 JC_BTN_SL_L	= BIT(21);
   265	static const u32 JC_BTN_L	= BIT(22);
   266	static const u32 JC_BTN_ZL	= BIT(23);
   267	
   268	enum joycon_msg_type {
   269		JOYCON_MSG_TYPE_NONE,
   270		JOYCON_MSG_TYPE_USB,
   271		JOYCON_MSG_TYPE_SUBCMD,
   272	};
   273	
   274	struct joycon_subcmd_request {
   275		u8 output_id; /* must be 0x01 for subcommand, 0x10 for rumble only */
   276		u8 packet_num; /* incremented every send */
   277		u8 rumble_data[8];
   278		u8 subcmd_id;
   279		u8 data[0]; /* length depends on the subcommand */
   280	} __packed;
   281	
   282	struct joycon_subcmd_reply {
   283		u8 ack; /* MSB 1 for ACK, 0 for NACK */
   284		u8 id; /* id of requested subcmd */
   285		u8 data[0]; /* will be at most 35 bytes */
   286	} __packed;
   287	
   288	struct joycon_input_report {
   289		u8 id;
   290		u8 timer;
   291		u8 bat_con; /* battery and connection info */
   292		u8 button_status[3];
   293		u8 left_stick[3];
   294		u8 right_stick[3];
   295		u8 vibrator_report;
   296	
   297		/*
   298		 * If support for firmware updates, gyroscope data, and/or NFC/IR
   299		 * are added in the future, this can be swapped for a union.
   300		 */
   301		struct joycon_subcmd_reply reply;
   302	} __packed;
   303	
   304	#define JC_MAX_RESP_SIZE	(sizeof(struct joycon_input_report) + 35)
   305	#define JC_NUM_LEDS		4
   306	#define JC_RUMBLE_DATA_SIZE	8
   307	#define JC_RUMBLE_QUEUE_SIZE	8
   308	
 > 309	static const u16 JC_RUMBLE_DFLT_LOW_FREQ = 160;
 > 310	static const u16 JC_RUMBLE_DFLT_HIGH_FREQ = 320;
   311	static const u16 JC_RUMBLE_PERIOD_MS = 50;
   312	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008280502.zZlUH7iw%25lkp%40intel.com.

--qMm9M+Fa2AknHoGS
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
36p88CKS1eP2/wBV57qF7rEBAA==

--qMm9M+Fa2AknHoGS--
