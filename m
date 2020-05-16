Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2XN7X2QKGQE7YG4P3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id C4BB21D5EDB
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 May 2020 07:15:24 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id n22sf3528052pgd.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 22:15:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589606123; cv=pass;
        d=google.com; s=arc-20160816;
        b=TzrZV8CPZkSfLhWC7CasgB/Wxy3wvFWNikk6mtB8FThXko7fPqg0iyOhIadY5IYec7
         WhFmUs+obwkS/8WlRxAm7voMbABqebrBvu64FR0x9Ja7MSCjIOoOZZPMtAmvIMIiXaS2
         8b4vB8og16Sgy/6Gt8H5lH+WyU5OEWA9iwJyKA5SKCEaoY/LElPRJdzrYJl4ukTCCXB4
         GSYf3Q2g2rB0B74b2vUul7ObcJJ7z0Fq62oOxk/iOLQUsDJEBvodohHaFq8UUJMKSLzi
         OzWgpdG3pogGNlvtKy1ZXLao4croIaKVk7kQdgHg9CIP6GT+vHCZpE0ZW8mQ2VwSN03W
         6gOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=QgXyI4FxQ2l0De0GMkQ7fDgqHbxB3OhEZiVNtU/HDSI=;
        b=wh5D2pphyoREOmodgAoa4727icdFPHANcTkjGatJ6SYfA9Tphw6CWkLyrt8NbCdx+5
         VSh0Wlgvwf5vdJHwqCC7U2Aai/2M9YLJehkhaGJBezpg4gzQpfk+dOmfYJMx+SKQ2zoE
         nbFY4EswVDUrKMiwGQ5BJrV0/FbrWHafk/qfUIelwOvvOUl0JRjuEL2fCFFSb+hXWwqI
         X0ERuxnbcurWlL2qXcCrOGgMVr1XlVUyOYQN9c8d32QHYfCjSnq3hW/1A0FtvKMFAajU
         Kb8UX23WMrk1ih3ZLur268fCdu42h8VSfVZat8sIlHesE+wXEkVLVprY6xh2MzPS0GUx
         +mLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QgXyI4FxQ2l0De0GMkQ7fDgqHbxB3OhEZiVNtU/HDSI=;
        b=XM/ul9qEz/wT1Qt2dWSwMfqW3sCCxirRdhb710D+AbJPdAKFZ6/OtkEiZ4qamL3Kkg
         7/slkRq3VVcySDehdNaXJiZxeuC5Wr6hf4XN3ntn2xM2kcUdop8MTqy4/Jt84SCO6NJL
         Uk7rgm5BMf0/EeJED0BkwY5xFDcB7wlDZUZPdhyYkUEp0Ljwj3Oay0Sr4RtLma3sHHpT
         mgrRnXlCSAzOFHDI6HlveLSxjMHQC3RWtTVL9hEpkR0D+PJkau6//iF4NL7i0qAKUqIa
         ulOjZM3CHEH+uS4r4Ad5g2gCg+GYFgaIGjLJ8vrJmX0u+gcVzwIo0c4y5DOl7HNl6Dol
         AJRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QgXyI4FxQ2l0De0GMkQ7fDgqHbxB3OhEZiVNtU/HDSI=;
        b=bTqdeG02BdZwRR9bnn7xO+lnPMw9rZljOHoVm01mvK8UyQzyadBO7Ko9VetmR4oZc8
         o4TVfe3t5ImVIfvZCAljy8g+II/1+jeZBSSkmSZoThND/jlriqF5RM9FrBxc3XzW5+3b
         wxF5TZZ2l4p6ISfZ+dsVnQwnBnBdbaQR4Zzvq7igjPG/wNATpLLXmeH+72ZrqU8c7HcM
         lH9vZUQ6uPQwg0QWTHvr67df7suX0jpjK0kxaRBuNxbCrRzIhhk3jjfDonENe41BUo8y
         emps41Z5fOYxKVVAV9hCisUHeW7gsf33gyh4sCe8aUwDG2qFqQjs4FzYbcrF+i039vWW
         4wPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nL4OsuuQIstPNAVaVofN3I2z3FRdhY5F4et1X19puv8Hld2OU
	TDL1FvSXwxvNQ7e+SUbT0mM=
X-Google-Smtp-Source: ABdhPJyKY85SaT7IoOYZidM9NNQ4PBND6voT1z8ynDiDN2mw1yUAawaLLNkI3fBdzwTaAlmU+bEycw==
X-Received: by 2002:a63:4d0c:: with SMTP id a12mr6070586pgb.449.1589606122883;
        Fri, 15 May 2020 22:15:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1cca:: with SMTP id c193ls1411197pfc.9.gmail; Fri, 15
 May 2020 22:15:22 -0700 (PDT)
X-Received: by 2002:aa7:8f0a:: with SMTP id x10mr3249001pfr.320.1589606122350;
        Fri, 15 May 2020 22:15:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589606122; cv=none;
        d=google.com; s=arc-20160816;
        b=zEm+bnIIjsgR6INvNasCKEZgUhFL6h+jAaNX8dFvFDOBBak9s3p5r/ucE+6i2IjDhT
         x4AH4xkzV4+81YMcyAftCt7H2pUyuuOgsxh8C4pUxHbQihy0Gj+3rkVaQcrDPRqN+r6R
         IF1W9rfOLMJsuVdKH1v4vAyG08llcEGmn+DOg9jO+OMur9t43HayTFeqR0Rj8o/LTO+o
         jQeV3N2W47/bVb0rknarZHBIzx/kT0ne45+iXj07oWqqhhqrZtH0BF1LOQvTInFFrXDJ
         GwY9NV+d5Ip+D9d8/AjxYPirUr+FL9usqTbb/eiJN78cI5wtvXQkl5oHOnXzJApX9cYf
         0zlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=2WB3l99J1zi5OxI5Fjz5G5Jvnlg5NymyV9+4VVpftRE=;
        b=vr0o9PFyZBwfJ3OlJlrupkhA2w+s/PdaULS7y7+FyV7rBo7Wur0hAFmgN3YotqjbuT
         Fqn1+jddCfjc2p7hjGiRZ52uptKE27rlukULU59DQQo6Lpf/omeohMd2e7OsOw1TxiaF
         aDfJ5wCro4FMB7QKeAXJuQxBc4MOIqFV9K+go7Mmdt41gyCal+yqKEBaMZetgL31Zv7F
         fDwzn9zzj16CDX2vDiR3nK6UD++E5sBS3bgcpotUMJdlcgnwuBT2I4SVblsNrZxZixuJ
         DOUpJeznZbwFvT8jVym4IauMqxFajwm5Uvuh/fExtqG32pWxYvBNafZHCWtm6MSPfogT
         TntA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id m81si290943pfd.2.2020.05.15.22.15.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 May 2020 22:15:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: kKDarA3FiS4rcsMFJ4g2PhADlhYqCzgl14q/eFv8HItJXdfgiVOS2kyXCCu1u4Orn1RhZu1KMj
 utbWkG0059TQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 May 2020 22:15:21 -0700
IronPort-SDR: oY/Pb3+cWEQBmvcuKYOjpHpXMQOhElFYlfsxDrU+XmaGmfl+WX7qn4YmBmW4G8o7IDha92xwYg
 /jjwHfl6xaSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; 
   d="gz'50?scan'50,208,50";a="464968597"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 15 May 2020 22:15:19 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jZpAM-0004hd-Kj; Sat, 16 May 2020 13:15:18 +0800
Date: Sat, 16 May 2020 13:14:38 +0800
From: kbuild test robot <lkp@intel.com>
To: Jesper Dangaard Brouer <brouer@redhat.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
	Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Subject: [jkirsher-next-queue:dev-queue 7/115]
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8157:14: warning: division by
 zero is undefined
Message-ID: <202005161317.Uba1bwFZ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="h31gzZEtNLTqOjlF"
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


--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   1ae51690bc317eb011c6fcc8f5549b151b347167
commit: cc703d543a3b97138318bfe7d3c86cbf78136395 [7/115] ixgbe: fix XDP redirect on archs with PAGE_SIZE above 4K
config: arm64-randconfig-r025-20200515 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project b31cb3aa5ee7ea92d830b06a0a7e42c7f2791dd4)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        git checkout cc703d543a3b97138318bfe7d3c86cbf78136395
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2271:15: error: redefinition of 'truesize'
unsigned int truesize = ring_uses_build_skb(rx_ring) ?
^
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:2267:15: note: previous definition is here
unsigned int truesize = ixgbe_rx_frame_truesize(rx_ring, size);
^
>> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8157:14: warning: division by zero is undefined [-Wdivision-by-zero]
cmd_type |= IXGBE_SET_FLAG(tx_flags, IXGBE_TX_FLAGS_HW_VLAN,
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8147:26: note: expanded from macro 'IXGBE_SET_FLAG'
((u32)(_input & _flag) / (_flag / _result)))
^ ~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8161:14: warning: division by zero is undefined [-Wdivision-by-zero]
cmd_type |= IXGBE_SET_FLAG(tx_flags, IXGBE_TX_FLAGS_TSO,
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8147:26: note: expanded from macro 'IXGBE_SET_FLAG'
((u32)(_input & _flag) / (_flag / _result)))
^ ~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8165:14: warning: division by zero is undefined [-Wdivision-by-zero]
cmd_type |= IXGBE_SET_FLAG(tx_flags, IXGBE_TX_FLAGS_TSTAMP,
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8147:26: note: expanded from macro 'IXGBE_SET_FLAG'
((u32)(_input & _flag) / (_flag / _result)))
^ ~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8169:14: warning: division by zero is undefined [-Wdivision-by-zero]
cmd_type ^= IXGBE_SET_FLAG(skb->no_fcs, 1, IXGBE_ADVTXD_DCMD_IFCS);
^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8147:26: note: expanded from macro 'IXGBE_SET_FLAG'
((u32)(_input & _flag) / (_flag / _result)))
^ ~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8180:19: warning: division by zero is undefined [-Wdivision-by-zero]
olinfo_status |= IXGBE_SET_FLAG(tx_flags,
^~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8147:26: note: expanded from macro 'IXGBE_SET_FLAG'
((u32)(_input & _flag) / (_flag / _result)))
^ ~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8185:19: warning: division by zero is undefined [-Wdivision-by-zero]
olinfo_status |= IXGBE_SET_FLAG(tx_flags,
^~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8147:26: note: expanded from macro 'IXGBE_SET_FLAG'
((u32)(_input & _flag) / (_flag / _result)))
^ ~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8190:19: warning: division by zero is undefined [-Wdivision-by-zero]
olinfo_status |= IXGBE_SET_FLAG(tx_flags,
^~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8147:26: note: expanded from macro 'IXGBE_SET_FLAG'
((u32)(_input & _flag) / (_flag / _result)))
^ ~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8198:19: warning: division by zero is undefined [-Wdivision-by-zero]
olinfo_status |= IXGBE_SET_FLAG(tx_flags,
^~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:8147:26: note: expanded from macro 'IXGBE_SET_FLAG'
((u32)(_input & _flag) / (_flag / _result)))
^ ~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:10796:45: warning: shift count >= width of type [-Wshift-count-overflow]
if (!dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64))) {
^~~~~~~~~~~~~~~~
include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
#define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
^ ~~~
9 warnings and 1 error generated.

vim +8157 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c

9a799d71034c4e2 drivers/net/ixgbe/ixgbe_main.c                Auke Kok        2007-09-15  8143  
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8144  #define IXGBE_SET_FLAG(_input, _flag, _result) \
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8145  	((_flag <= _result) ? \
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8146  	 ((u32)(_input & _flag) * (_result / _flag)) : \
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8147  	 ((u32)(_input & _flag) / (_flag / _result)))
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8148  
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8149  static u32 ixgbe_tx_cmd_type(struct sk_buff *skb, u32 tx_flags)
9a799d71034c4e2 drivers/net/ixgbe/ixgbe_main.c                Auke Kok        2007-09-15  8150  {
d3d0023979c87ee drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2011-07-15  8151  	/* set type for advanced descriptor with frame checksum insertion */
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8152  	u32 cmd_type = IXGBE_ADVTXD_DTYP_DATA |
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8153  		       IXGBE_ADVTXD_DCMD_DEXT |
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8154  		       IXGBE_ADVTXD_DCMD_IFCS;
9a799d71034c4e2 drivers/net/ixgbe/ixgbe_main.c                Auke Kok        2007-09-15  8155  
d3d0023979c87ee drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2011-07-15  8156  	/* set HW vlan bit if vlan is present */
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07 @8157  	cmd_type |= IXGBE_SET_FLAG(tx_flags, IXGBE_TX_FLAGS_HW_VLAN,
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8158  				   IXGBE_ADVTXD_DCMD_VLE);
3a6a4edaa59273f drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Jacob Keller    2012-05-01  8159  
d3d0023979c87ee drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2011-07-15  8160  	/* set segmentation enable bits for TSO/FSO */
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8161  	cmd_type |= IXGBE_SET_FLAG(tx_flags, IXGBE_TX_FLAGS_TSO,
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8162  				   IXGBE_ADVTXD_DCMD_TSE);
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8163  
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8164  	/* set timestamp bit if present */
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8165  	cmd_type |= IXGBE_SET_FLAG(tx_flags, IXGBE_TX_FLAGS_TSTAMP,
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8166  				   IXGBE_ADVTXD_MAC_TSTAMP);
9a799d71034c4e2 drivers/net/ixgbe/ixgbe_main.c                Auke Kok        2007-09-15  8167  
62748b7bde84618 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-07-20  8168  	/* insert frame checksum */
472148c320c0d11 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-11-07  8169  	cmd_type ^= IXGBE_SET_FLAG(skb->no_fcs, 1, IXGBE_ADVTXD_DCMD_IFCS);
62748b7bde84618 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2012-07-20  8170  
d3d0023979c87ee drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2011-07-15  8171  	return cmd_type;
d3d0023979c87ee drivers/net/ethernet/intel/ixgbe/ixgbe_main.c Alexander Duyck 2011-07-15  8172  }
9a799d71034c4e2 drivers/net/ixgbe/ixgbe_main.c                Auke Kok        2007-09-15  8173  

:::::: The code at line 8157 was first introduced by commit
:::::: 472148c320c0d11245932ba1315bc4ec0667ed57 ixgbe: Update ixgbe Tx flags to improve code efficiency

:::::: TO: Alexander Duyck <alexander.h.duyck@intel.com>
:::::: CC: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005161317.Uba1bwFZ%25lkp%40intel.com.

--h31gzZEtNLTqOjlF
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
+x/PFT2+on8CAA==

--h31gzZEtNLTqOjlF--
