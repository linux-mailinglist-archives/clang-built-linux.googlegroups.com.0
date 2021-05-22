Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBEURUWCQMGQEZZFPFLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id BA49338D6D1
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 20:08:19 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id d89-20020a25a3620000b02904dc8d0450c6sf31664175ybi.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 11:08:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621706898; cv=pass;
        d=google.com; s=arc-20160816;
        b=uQ5Ujk2sfZXtv1RyHVAo2ESkUqVLtUvjGhr0xe30JEfnyy1L5tno0qUu2pc9q4A22z
         Mdv+agbxdemThLtjEBDHpI3PEI3yPjzanAvZKyrVTRih4UZGROye8In3KPoGUhY9Anbr
         aM0x8zXs0zqteUpJHaOfQpRHiieK/XPwvB9mrMY+EugI4zVNIh60+T1IFFfLQGrGgRmT
         FEcee5ItvRdelnEPKoK4MyvD56iJex2H4r4szgvYY1Ll0pIsHqwh97XKXmngU/u5zWUV
         gq4rHTItFYyfqQBk8LDQ/ow+7FjQpe01LiA74ETrMOvYaB397u/GLHnJjXsfVOsBzsCs
         h/ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=TogsfIs48jVyQpGmTNR2vJbK66oASmx4W1OOdYQeiyw=;
        b=V1chFydj0Ys506g4aeJUn0vWXgocLTK6LId3dG+VFqRZ7VHlWVvJXhBjs3sIzy7r+A
         h9J1hhUQcGEsAamucCW9c6oMQVMFdSqwTYqQJG9SKFvAEzg3vn9GZk/AM/YOoPGBnLSR
         yfwuAoqOHnxXTq6jgDD7bsEKXKeauZl5/q/RDsn4YqSn8H7QVpkuMX9pJmKvbPcmwSHc
         7VDg2Q1m1PJBAOeT1vuhcQEOu8R03DC9KylER+WGz4PzUq+zMhnqT/ZnVQi6Z/qGMd5e
         hqxY42eX2BzA1t2yK6vSt9PfMvmIsVwjyzCfxisLTaYoxAU6LjE0TUkedtKGNBchfjBL
         V/Hw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TogsfIs48jVyQpGmTNR2vJbK66oASmx4W1OOdYQeiyw=;
        b=qzwCgcTNRF4m8KI5lEOSEwjaC8fZmdzYIn+4gYZr06YO1uZAD9y7oyidmjgZSlKj7O
         11ZEXxjwVn76gLvnvci7htAhGih8NkZRMaK1zjbeg4DCFqLI2j0F3l9xEzErBJgRCuC5
         FQ10VjqR/YsXH3z7YRZC0oS/IX/BDYjR+xA1t5Ay5JMOgzKYwR8AmkqvLIlzVLwRAnqt
         eoKFq5w2lXjS3DMFGC3mQZ9cOBzMFOvdVR+pTcGw/tY5c7wMAykMU94Uyygr3onM6b6T
         MeSRsu4NSmLXWnZOjnF1Mx9d3+gHYwBa9nyXAQo9olcplwaitRv2WNTlab9RLyJjxfhw
         CzkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TogsfIs48jVyQpGmTNR2vJbK66oASmx4W1OOdYQeiyw=;
        b=f7CsE5gpw+rKRcNG43PNNJqtec7bGiGKiRmmhBc1FRfC0v2YU9uBJ9oN44qUVaTk/a
         xjI7Qb0bnaUvo3Uwp8DtYH49pwQJoQdVRxzwdw1gNXRl+CPPIGEj23pyO9AormOwac+t
         esbKq1VeV4JDy3hq5kiShcHYbY0K96TW7zntl6NojQlhDlN9npGokJLeBQVkbSZId5jV
         rhq+8TWtBXf5JL92QaDh7Fcr51HzFUP4Jrz5yCqikAyzdaojsw5WGjYZPgndj/7Xna79
         GOY/OjDPPtgbzgQGLskg6n+yvbG9xWdMVPdWDs+8SrGLV6eLhSRRquyrug3JakUR/D8i
         z0Gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mISAlqtv/DKgZJ8mQ4gthp4JKMo7xrBxms59NcAZ+d1yblyoI
	0BzboIuC43i7ePdNsoxMqmA=
X-Google-Smtp-Source: ABdhPJx8eTRg0EcwoVu3p4G7XSBPCJENqhL5stypdARJ8rZsw7t2rI0KUFyBbSURVO8O7Rr5ipuzMA==
X-Received: by 2002:a25:aaaa:: with SMTP id t39mr21505140ybi.479.1621706898769;
        Sat, 22 May 2021 11:08:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9307:: with SMTP id f7ls5003383ybo.10.gmail; Sat, 22 May
 2021 11:08:18 -0700 (PDT)
X-Received: by 2002:a25:4ac4:: with SMTP id x187mr23873348yba.478.1621706898062;
        Sat, 22 May 2021 11:08:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621706898; cv=none;
        d=google.com; s=arc-20160816;
        b=wG7TMTiqstwHKVdzyHBYRKgg05KIkrRZJmV31Hsn8y+H94P0Gtbxv0Z013fAi310PD
         tGFSDZgLCZDi2Ap0mdw8ILmQR/gV9ay2o+vMqu1aQdym3R/ouw3NIi9u9FroVJZJrmhu
         Y3zExL1o4z5RhFdON1BC3iiuK+PVtPSl88v/KwD439AiDGugNP9W0oiRScy0nzN4O56x
         ShT1nVMi/zhbObdL5C1ya5PyuCZE84KB44QjX96V8c+bcSkw33MIMG7+m5u+W2QGl9Tc
         YzDAwcGdQCClEuJGf16fN7n17M6pHyaTj7nSXkNY7ohgt9q1iEE9dYiS1AzNYZTy7VAc
         olDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=jCetUmQonS4k12+2T+nGGUIk6K8BPmNXJ/3azU90BbM=;
        b=VoWvgExMWVHaV3pL6tD9UPYTZ1aWPSEWfMbZlkh21Uj4JI5FUWbMG31xGKtagO0hVg
         oukMb/pO0hJtjm5x8cl8UgYxCMZ7BhwRpmJZAcjdgZOXQOg0F3gxux1SrQc4OTUWcqS5
         WSEvi/Uss8XxPfAZnJN58Dtr+q1UWjZYrkmPExn0hef0E6xn16AmbtrIFS+WEhxJi8T+
         N4N33ElykpLcs1Tw5IyRNMh08OXK7WfY6SZKU+xdwdAPkX8K1eUk/me4453HMnQ87PkG
         cEDOEgNl9w3RRu/gQl19A5c0cS9bWuTF8XZxqgrUWY2fpB77dD/lIpjA9/NSnro2BdBL
         ec7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id l14si1269272ybp.4.2021.05.22.11.08.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 May 2021 11:08:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: mlyjjgEiRzZMaZaucpEXxTFn9wqe8Qo+sdaoRRbLfAIWIbHUY7X1rgyaiPCo9xbTLuDG03uzXb
 tVJVBLaWA0IA==
X-IronPort-AV: E=McAfee;i="6200,9189,9992"; a="181306594"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="181306594"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 May 2021 11:08:16 -0700
IronPort-SDR: 08NRIggFDiC3piy5Z04MvgCgq/sQvopSSIdmm8+iHL0sZ1r1ydnGHx5YTw2gXpEDiudp86AI0g
 5PUh0Ls1EyYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="545835615"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga004.jf.intel.com with ESMTP; 22 May 2021 11:08:13 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lkW2n-0000M6-0x; Sat, 22 May 2021 18:08:13 +0000
Date: Sun, 23 May 2021 02:08:01 +0800
From: kernel test robot <lkp@intel.com>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Michael Ellerman <mpe@ellerman.id.au>
Subject: drivers/net/vmxnet3/vmxnet3_drv.c:607:21: warning: result of
 comparison of constant 262144 with expression of type 'u16' (aka 'unsigned
 short') is always true
Message-ID: <202105230247.zfFXwhdL-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="k1lZvvs/B4yU6o8G"
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


--k1lZvvs/B4yU6o8G
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   45af60e7ced07ae3def41368c3d260dbf496fbce
commit: 4eeef098b43242ed145c83fba9989d586d707589 powerpc/44x: Remove STDBINUTILS kconfig option
date:   4 months ago
config: powerpc-randconfig-r021-20210522 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e84a9b9bb3051c35dea993cdad7b3d2575638f85)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=4eeef098b43242ed145c83fba9989d586d707589
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 4eeef098b43242ed145c83fba9989d586d707589
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/vmxnet3/vmxnet3_drv.c:607:21: warning: result of comparison of constant 262144 with expression of type 'u16' (aka 'unsigned short') is always true [-Wtautological-constant-out-of-range-compare]
                                  rbi->len  != PAGE_SIZE);
                                  ~~~~~~~~~~^~~~~~~~~~~~~
   arch/powerpc/include/asm/bug.h:73:27: note: expanded from macro 'BUG_ON'
           if (__builtin_constant_p(x)) {                          \
                                    ^
>> drivers/net/vmxnet3/vmxnet3_drv.c:607:21: warning: result of comparison of constant 262144 with expression of type 'u16' (aka 'unsigned short') is always true [-Wtautological-constant-out-of-range-compare]
                                  rbi->len  != PAGE_SIZE);
                                  ~~~~~~~~~~^~~~~~~~~~~~~
   arch/powerpc/include/asm/bug.h:74:7: note: expanded from macro 'BUG_ON'
                   if (x)                                          \
                       ^
>> drivers/net/vmxnet3/vmxnet3_drv.c:1784:29: warning: implicit conversion from 'unsigned long' to 'u16' (aka 'unsigned short') changes value from 262144 to 0 [-Wconstant-conversion]
                           rq->buf_info[0][i].len = PAGE_SIZE;
                                                  ~ ^~~~~~~~~
   arch/powerpc/include/asm/page.h:24:34: note: expanded from macro 'PAGE_SIZE'
   #define PAGE_SIZE               (ASM_CONST(1) << PAGE_SHIFT)
                                    ~~~~~~~~~~~~~^~~~~~~~~~~~~
   drivers/net/vmxnet3/vmxnet3_drv.c:1789:28: warning: implicit conversion from 'unsigned long' to 'u16' (aka 'unsigned short') changes value from 262144 to 0 [-Wconstant-conversion]
                   rq->buf_info[1][i].len = PAGE_SIZE;
                                          ~ ^~~~~~~~~
   arch/powerpc/include/asm/page.h:24:34: note: expanded from macro 'PAGE_SIZE'
   #define PAGE_SIZE               (ASM_CONST(1) << PAGE_SHIFT)
                                    ~~~~~~~~~~~~~^~~~~~~~~~~~~
   4 warnings generated.
--
>> net/bluetooth/hci_core.c:2108:26: warning: result of comparison of constant 65536 with expression of type '__u16' (aka 'unsigned short') is always false [-Wtautological-constant-out-of-range-compare]
           if (!dev_num || dev_num > (PAGE_SIZE * 2) / sizeof(*dr))
                           ~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.


vim +607 drivers/net/vmxnet3/vmxnet3_drv.c

d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  558  
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  559  /*
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  560   *    starting from ring->next2fill, allocate rx buffers for the given ring
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  561   *    of the rx queue and update the rx desc. stop after @num_to_alloc buffers
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  562   *    are allocated or allocation fails
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  563   */
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  564  
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  565  static int
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  566  vmxnet3_rq_alloc_rx_buf(struct vmxnet3_rx_queue *rq, u32 ring_idx,
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  567  			int num_to_alloc, struct vmxnet3_adapter *adapter)
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  568  {
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  569  	int num_allocated = 0;
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  570  	struct vmxnet3_rx_buf_info *rbi_base = rq->buf_info[ring_idx];
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  571  	struct vmxnet3_cmd_ring *ring = &rq->rx_ring[ring_idx];
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  572  	u32 val;
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  573  
5318d809d7b4975 Shreyas Bhatewara  2011-07-05  574  	while (num_allocated <= num_to_alloc) {
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  575  		struct vmxnet3_rx_buf_info *rbi;
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  576  		union Vmxnet3_GenericDesc *gd;
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  577  
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  578  		rbi = rbi_base + ring->next2fill;
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  579  		gd = ring->base + ring->next2fill;
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  580  
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  581  		if (rbi->buf_type == VMXNET3_RX_BUF_SKB) {
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  582  			if (rbi->skb == NULL) {
0d735f13d8842d9 Stephen Hemminger  2013-01-15  583  				rbi->skb = __netdev_alloc_skb_ip_align(adapter->netdev,
0d735f13d8842d9 Stephen Hemminger  2013-01-15  584  								       rbi->len,
0d735f13d8842d9 Stephen Hemminger  2013-01-15  585  								       GFP_KERNEL);
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  586  				if (unlikely(rbi->skb == NULL)) {
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  587  					rq->stats.rx_buf_alloc_failure++;
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  588  					break;
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  589  				}
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  590  
b0eb57cb97e7837 Andy King          2013-08-23  591  				rbi->dma_addr = dma_map_single(
b0eb57cb97e7837 Andy King          2013-08-23  592  						&adapter->pdev->dev,
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  593  						rbi->skb->data, rbi->len,
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  594  						PCI_DMA_FROMDEVICE);
5738a09d58d5ad2 Alexey Khoroshilov 2015-11-28  595  				if (dma_mapping_error(&adapter->pdev->dev,
5738a09d58d5ad2 Alexey Khoroshilov 2015-11-28  596  						      rbi->dma_addr)) {
5738a09d58d5ad2 Alexey Khoroshilov 2015-11-28  597  					dev_kfree_skb_any(rbi->skb);
5738a09d58d5ad2 Alexey Khoroshilov 2015-11-28  598  					rq->stats.rx_buf_alloc_failure++;
5738a09d58d5ad2 Alexey Khoroshilov 2015-11-28  599  					break;
5738a09d58d5ad2 Alexey Khoroshilov 2015-11-28  600  				}
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  601  			} else {
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  602  				/* rx buffer skipped by the device */
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  603  			}
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  604  			val = VMXNET3_RXD_BTYPE_HEAD << VMXNET3_RXD_BTYPE_SHIFT;
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  605  		} else {
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  606  			BUG_ON(rbi->buf_type != VMXNET3_RX_BUF_PAGE ||
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13 @607  			       rbi->len  != PAGE_SIZE);
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  608  
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  609  			if (rbi->page == NULL) {
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  610  				rbi->page = alloc_page(GFP_ATOMIC);
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  611  				if (unlikely(rbi->page == NULL)) {
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  612  					rq->stats.rx_buf_alloc_failure++;
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  613  					break;
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  614  				}
b0eb57cb97e7837 Andy King          2013-08-23  615  				rbi->dma_addr = dma_map_page(
b0eb57cb97e7837 Andy King          2013-08-23  616  						&adapter->pdev->dev,
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  617  						rbi->page, 0, PAGE_SIZE,
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  618  						PCI_DMA_FROMDEVICE);
5738a09d58d5ad2 Alexey Khoroshilov 2015-11-28  619  				if (dma_mapping_error(&adapter->pdev->dev,
5738a09d58d5ad2 Alexey Khoroshilov 2015-11-28  620  						      rbi->dma_addr)) {
5738a09d58d5ad2 Alexey Khoroshilov 2015-11-28  621  					put_page(rbi->page);
5738a09d58d5ad2 Alexey Khoroshilov 2015-11-28  622  					rq->stats.rx_buf_alloc_failure++;
5738a09d58d5ad2 Alexey Khoroshilov 2015-11-28  623  					break;
5738a09d58d5ad2 Alexey Khoroshilov 2015-11-28  624  				}
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  625  			} else {
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  626  				/* rx buffers skipped by the device */
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  627  			}
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  628  			val = VMXNET3_RXD_BTYPE_BODY << VMXNET3_RXD_BTYPE_SHIFT;
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  629  		}
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  630  
115924b6bdc7cc6 Shreyas Bhatewara  2009-11-16  631  		gd->rxd.addr = cpu_to_le64(rbi->dma_addr);
5318d809d7b4975 Shreyas Bhatewara  2011-07-05  632  		gd->dword[2] = cpu_to_le32((!ring->gen << VMXNET3_RXD_GEN_SHIFT)
115924b6bdc7cc6 Shreyas Bhatewara  2009-11-16  633  					   | val | rbi->len);
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  634  
5318d809d7b4975 Shreyas Bhatewara  2011-07-05  635  		/* Fill the last buffer but dont mark it ready, or else the
5318d809d7b4975 Shreyas Bhatewara  2011-07-05  636  		 * device will think that the queue is full */
5318d809d7b4975 Shreyas Bhatewara  2011-07-05  637  		if (num_allocated == num_to_alloc)
5318d809d7b4975 Shreyas Bhatewara  2011-07-05  638  			break;
5318d809d7b4975 Shreyas Bhatewara  2011-07-05  639  
5318d809d7b4975 Shreyas Bhatewara  2011-07-05  640  		gd->dword[2] |= cpu_to_le32(ring->gen << VMXNET3_RXD_GEN_SHIFT);
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  641  		num_allocated++;
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  642  		vmxnet3_cmd_ring_adv_next2fill(ring);
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  643  	}
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  644  
fdcd79b94b24418 Stephen Hemminger  2013-01-15  645  	netdev_dbg(adapter->netdev,
69b9a712661cbd4 Stephen Hemminger  2013-01-15  646  		"alloc_rx_buf: %d allocated, next2fill %u, next2comp %u\n",
69b9a712661cbd4 Stephen Hemminger  2013-01-15  647  		num_allocated, ring->next2fill, ring->next2comp);
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  648  
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  649  	/* so that the device can distinguish a full ring and an empty ring */
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  650  	BUG_ON(num_allocated != 0 && ring->next2fill == ring->next2comp);
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  651  
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  652  	return num_allocated;
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  653  }
d1a890fa37f27d6 Shreyas Bhatewara  2009-10-13  654  

:::::: The code at line 607 was first introduced by commit
:::::: d1a890fa37f27d6aca3abc6e25e4148efc3223a6 net: VMware virtual Ethernet NIC driver: vmxnet3

:::::: TO: Shreyas Bhatewara <sbhatewara@vmware.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105230247.zfFXwhdL-lkp%40intel.com.

--k1lZvvs/B4yU6o8G
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ONzrE/D/ASxGH49mqAEA

--k1lZvvs/B4yU6o8G--
