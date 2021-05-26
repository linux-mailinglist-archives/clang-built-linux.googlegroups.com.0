Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB4XHW6CQMGQET6U6JOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA2039112F
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 09:08:35 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id p2-20020a5d98420000b029043b3600ac76sf29786109ios.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 00:08:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622012914; cv=pass;
        d=google.com; s=arc-20160816;
        b=HCFYM92hjqpwukVu1N1QT31StS0gc1pc7emfh0I4Sv1iUf0WRc8R4F31LWWnhPaFjE
         ylLKNxOl7ET6/2Ftg4rsoT9cc87+UEdSf6IfCXBPvo5e2jofTxeZAjMl2x70jtDfm8sR
         hN6YMcVk57+yI5JwBtRLv4WlRKzaHFdB3yU4ui1M3OqM9himsZOsnFvyXu1imd+UE+0V
         3p7WfvtZjQuLU43f8jZimz/wybAeKnoT56jlECxMUnNJFaUw/BeqHuHOKoF/l0qEzRoF
         +PDbs3EY9H23XwNmzpfFF+cUrVZQSGidL6OBX3tpzeWqJa62S0B6PUXWnJOXgAfqGXeS
         sgCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=yRrkN9me62y8V/ufkPetZSb/kKy80t4V1uNiUSGQyQE=;
        b=pVJrosJfhYJHbT4QUarOADe1ewwPw7pDN75RxaKZRY0kJ+9Wdxf303WuarKUqazvp6
         uOlK3ON9TeHjEqR6gU8ZAjT2sIi1/e1ndMDq05DUNW3FJjoOr89JpCU6hV6juR16s547
         Eg33iT/GixrvYX3H51SmjhWVZr3JLm8I4uiU7zQ9uD8+5lM8rp3FE+x2LOd2CSi4d5Ih
         5ETQA0NBgvMCPG3Nns0MLHUmgdp6aRKbM1aYq3G4XFleLZPemCW4SpzhFzY+97iOnJfP
         IhC9nH96QjvKQZOTVeANnT75HrvpbM2ZTYl6oQJSxmX8ey8RyYr08WxKgXs75Jrxvhrf
         MvWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yRrkN9me62y8V/ufkPetZSb/kKy80t4V1uNiUSGQyQE=;
        b=r4NdUWnQQtpEJ8+FDMegynQxN9bi35HSTNDHGwUfIA1pIV8etpkYWw40JbOHFjBRx2
         U/WgGBmDhF1siU5VFQBx+N7MLbmBiNlVK6wy8UWhMcHcyFTFZh+T+oo+N9X38uskJ42R
         BpRri3zZJAb+APeYmh8OH81uCLOTBnzF6m+g5V2wFv32SHol2cc+EFdtyHLuUl3LOVkh
         8wBvSQpZYZV9LWFpnMTX+WjDwtLJmsFMZ+lnsUK4HNwe7VT6uTuGMnOUc7gXTFADQFqy
         ygzFFJeXn/AM5UkFadyjMTJW9Cuvti/4QUhwf8EWZI/EKOpUDzK7VgwFrJBYz9Rryy++
         6SKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yRrkN9me62y8V/ufkPetZSb/kKy80t4V1uNiUSGQyQE=;
        b=LMi33/VKyIukNFYlk6vEDqPv4+MrAft1Gkp+z3xDWzcYpK5Ue6UpXrKOkP5IBE3Tak
         3Zzav9pXOZ2JhnoqsVV2i+LvfcGCSl2srhMqDP/JOqHakiFACZx3gesVZWfx7AqKL9pd
         6bQ62iW9WTIEePyf47Z46elUMIpJrbAPnrLzjDJQ54JhGUsJ26zo74Xc1EftIgwoNvD7
         zfibC8kRxGmWalotdzE6zTevWATJsS9S+LKTkvUhRgcQEAyq/ZR4WwPnkuf4Poq12dAP
         VoSE8IDVrgPNQhPKJMyAb74sTnW2ONmFzk9ceZw9l+6x2SlKBws7lJv4/gUjk/pgZ76e
         UIRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53033b+R86T5HcenC4vgaOs1+1wZSJ1NkA7H2BCARDlJDmVJ32b4
	/JxBWSMmgL8VAu0NmcP3S+s=
X-Google-Smtp-Source: ABdhPJxc6gwFFeSzFDZxvSMxsDhqUK5J/SDjUBPDfBN1GiBzr6pHv8V/a/mpQhBdfsb1kyGKFu4XAQ==
X-Received: by 2002:a02:c912:: with SMTP id t18mr1668802jao.100.1622012914511;
        Wed, 26 May 2021 00:08:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1a45:: with SMTP id u5ls2532331ilv.5.gmail; Wed, 26
 May 2021 00:08:34 -0700 (PDT)
X-Received: by 2002:a92:da06:: with SMTP id z6mr25378081ilm.66.1622012913956;
        Wed, 26 May 2021 00:08:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622012913; cv=none;
        d=google.com; s=arc-20160816;
        b=jFXDTA5vqEUhf0cxEPn3tHmVylINH6cSdZgRJC7NAKZpT3PCTkvI/oF0QVMeX1xWrY
         WzYZcNTA8T2LuaokfGUY7KLZ0vh1wVMt37jd9sELoiVTEJODuejAgLvr+UEarHaPfim+
         6mSiK7IRmT8J40g2ZMKzB0rczvJIrupjx1y6VqMDZu8Al7pO9wiKUjVNslG4Fk7YhjJQ
         7zMUxM9E/IbOCZ0egGIPfEsOfLustz9vEtZ3VK11vDiLlBTbsR9zKD147yFX4OuaKRdy
         qq5zazrDb96ly1G9IyjSssInpPz7rKDNOdfbepPDrKD5iOG+elnx9LaH9oSs3VRD50a6
         51VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=sx2vaiKZdihp8sJVlMg00eTMVkEqM30Qjz8sWFKv8Cc=;
        b=W28vWHHKTG3OWMQJoh3OLlGCRsGI3wf2Jmr0SQ79PX2u2jiulo0xyT/8Ay8y7xv4V5
         yC/Gh1uznrJj5SIqdFcx3QW+f9TZ9lSafPUwxc11l3hf16xvFAFKh9ggG5rT7aoaqxq7
         B4ukbqSz4KiWaeu0Dww+C9s6lYZ8SCBglkcPJtSrnJ3LN8V6agUmv6tQqdnB1jYp0z2j
         L4otm+ILVBD+WQ+FJ+kfKMxRE5W6BDliINdrBPW5A3VryLdmkvka+Mhsee7i/mzaphY2
         zFVDmm68ERKTBw8HvjJU4HQXrZhnUK8Xhs5XWVrjA9MyLMXl4X35IeE1G9NbW5J2Lxn0
         JMKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id w1si1924197ilv.0.2021.05.26.00.08.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 May 2021 00:08:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: XmmtjORebPEihVBFyZaDlUz34TMmb8asMVJ8EjarUyFyXnhTzUDhuQUNIMo6syD4VA0neBQign
 0oVPaDiwvPIA==
X-IronPort-AV: E=McAfee;i="6200,9189,9995"; a="263602390"
X-IronPort-AV: E=Sophos;i="5.82,330,1613462400"; 
   d="gz'50?scan'50,208,50";a="263602390"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 May 2021 00:08:32 -0700
IronPort-SDR: OGt0y/UBVyF6JN4aHhIdp+k4N0E+AI9bdgSQyUxmJxCX/KCyusnwxw/wvYlBsNC7xnRPLYCNRO
 jQbKLTFM9MJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,330,1613462400"; 
   d="gz'50?scan'50,208,50";a="397188000"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 26 May 2021 00:08:29 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1llneW-00023U-UV; Wed, 26 May 2021 07:08:28 +0000
Date: Wed, 26 May 2021 15:08:04 +0800
From: kernel test robot <lkp@intel.com>
To: Sagi Grimberg <sagi@grimberg.me>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
	Max Gurtovoy <mgurtovoy@nvidia.com>,
	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: [linux-nvme:nvme-5.14 4/21] ERROR: modpost: "blk_cleanup_queue"
 [drivers/nvme/host/nvme-tcp.ko] undefined!
Message-ID: <202105261556.ZMSo9xWq-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Sagi,

First bad commit (maybe != root cause):

tree:   git://git.infradead.org/nvme.git nvme-5.14
head:   67dbcdc3689a25249092be0c851848efbcc62f38
commit: 65cfb175bf6cb3997679099aa3238849029b64cf [4/21] nvme-tcp: remove incorrect Kconfig dep in BLK_DEV_NVME
config: s390-randconfig-r011-20210526 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 99155e913e9bad5f7f8a247f8bb3a3ff3da74af1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        git remote add linux-nvme git://git.infradead.org/nvme.git
        git fetch --no-tags linux-nvme nvme-5.14
        git checkout 65cfb175bf6cb3997679099aa3238849029b64cf
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

ERROR: modpost: "ioremap" [drivers/pcmcia/pcmcia.ko] undefined!
ERROR: modpost: "iounmap" [drivers/pcmcia/pcmcia.ko] undefined!
ERROR: modpost: "devm_ioremap" [drivers/input/keyboard/samsung-keypad.ko] undefined!
>> ERROR: modpost: "blk_cleanup_queue" [drivers/nvme/host/nvme-tcp.ko] undefined!
>> ERROR: modpost: "blk_mq_start_request" [drivers/nvme/host/nvme-tcp.ko] undefined!
>> ERROR: modpost: "blk_mq_map_queues" [drivers/nvme/host/nvme-tcp.ko] undefined!
>> ERROR: modpost: "blk_mq_tag_to_rq" [drivers/nvme/host/nvme-tcp.ko] undefined!
>> ERROR: modpost: "blk_mq_complete_request" [drivers/nvme/host/nvme-tcp.ko] undefined!
>> ERROR: modpost: "blk_mq_update_nr_hw_queues" [drivers/nvme/host/nvme-tcp.ko] undefined!
>> ERROR: modpost: "blk_mq_init_queue" [drivers/nvme/host/nvme-tcp.ko] undefined!
ERROR: modpost: "blk_mq_free_tag_set" [drivers/nvme/host/nvme-tcp.ko] undefined!
ERROR: modpost: "blk_sync_queue" [drivers/nvme/host/nvme-tcp.ko] undefined!
ERROR: modpost: "blk_mq_alloc_tag_set" [drivers/nvme/host/nvme-tcp.ko] undefined!
ERROR: modpost: "blk_mq_quiesce_queue" [drivers/nvme/host/nvme-tcp.ko] undefined!
ERROR: modpost: "blk_mq_unquiesce_queue" [drivers/nvme/host/nvme-tcp.ko] undefined!
ERROR: modpost: "blk_mq_complete_request_remote" [drivers/nvme/host/nvme-tcp.ko] undefined!
ERROR: modpost: "blk_steal_bios" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_requeue_request" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_cleanup_queue" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_io_opt" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_status_to_errno" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_freeze_queue_wait" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_max_hw_sectors" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_tagset_busy_iter" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_unfreeze_queue" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_io_min" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_split" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_freeze_queue_start" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_freeze_queue" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_max_write_zeroes_sectors" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_chunk_sectors" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_complete_request" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_virt_boundary" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_set_queue_dying" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_rq_unmap_user" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "__alloc_disk_node" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_init_queue" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_max_segments" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_alloc_queue" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_freeze_queue_wait_timeout" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_set_stacking_limits" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_max_discard_segments" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_max_discard_sectors" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "del_gendisk" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_stack_limits" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_alloc_request" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_alloc_request_hctx" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_sync_queue" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "submit_bio_noacct" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "set_capacity" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_execute_rq_nowait" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_rq_map_user" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "bio_endio" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_flag_clear" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_rq_map_kern" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_free_request" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_flag_set" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_poll" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_execute_rq" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_physical_block_size" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_update_readahead" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "put_disk" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_delay_kick_requeue_list" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_end_request" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "kblockd_schedule_work" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_flag_test_and_set" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_write_cache" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_quiesce_queue" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_dma_alignment" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_unquiesce_queue" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_mq_tagset_wait_completed_request" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "device_add_disk" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "blk_queue_logical_block_size" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "set_disk_ro" [drivers/nvme/host/nvme-core.ko] undefined!
ERROR: modpost: "set_capacity_and_notify" [drivers/nvme/host/nvme-core.ko] undefined!

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105261556.ZMSo9xWq-lkp%40intel.com.

--Q68bSM7Ycu6FN28Q
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
r+YgRkk/Hv0DNLDQ2zzlAAA=

--Q68bSM7Ycu6FN28Q--
