Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBXFYROAAMGQETABGYGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BDE82F8D4F
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 13:30:22 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id lr5sf5298254pjb.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 04:30:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610800221; cv=pass;
        d=google.com; s=arc-20160816;
        b=BFN3Xj+RDLp8POKBouxw0h68bl/v/5+N9R33JGGAOOIODU7d9SuhwCF0Ujv0qDDaZa
         NGV2obXSlv3Dh9pbSHGt1nMEpTMvnCRiFAU27zRJvrCYcNyz7x2vciKxbqr9c4H4SPLD
         msxYhruU1IP2O/SOx7BTyCZp8ItVdW9v/X1rJ4iPX3RMU9jBB8vpEAPg66KwxmBx3gFe
         +uxjnURrVpum8zu6ojI8XgK8TOhMrKUvrhxuFf79qNHMxZcouoMw6O+pR2zzE8AWSdY5
         7ls9HzEGnV67MqVO0dzz66+c297ZlZUrBgeZnsuNzM38L7xy4oq/HRdOpJUZcBRvSo63
         QYiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=xEH8t0p3g9rchC0AgLADS1CPM5R7LrXYG9TZAJK4Xgk=;
        b=OSPcmPKx6ktobV0DvgcN/TGGIridoktHEQgSKG7QmQvyNZcSgwNNowvLHhyTsOUy9h
         TmvOVsXJRTEpB58/CsV0cVCumasZ02fIjK3dQYQkg1VTDiOEDCG+PkpZ+W5Rkt/MnH5I
         /KjYyqiOQsaq+UIC+sIZ3Jv8xcmoYfNO/qJZjeOHijtgQNFqdVJ9Ii57oXszvIDusTjd
         oLiOKdy793ryIvKYuoRU0qt2vrbhPQPOcnrtJzLEs9Lpt4nFX2/oxm+Hzf+Xs2MAoIfq
         3rQk398hmuT/DdxBhtfpdS2GKvwrztyPCPNbVMLo/Op3lmzKKA4za5dIQZ2R/dxTRu9Y
         IvvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xEH8t0p3g9rchC0AgLADS1CPM5R7LrXYG9TZAJK4Xgk=;
        b=bUJxhd4vOpN0cyp5esN28tTtVi0byxsZwW19lg4qYSoI/XXVhPG23T2Re5WLKwRIQU
         uTr2om3xkNe4ojlEbS/16NOLFWY+t4S0jUoRflKO5eWeXB70eCmhnX2Xqd1kEPdwdIKh
         V96Ba83aZAhmQkH2PYh4iKoJ4bBeSkeHGKaI8B8EI7oZsnE0DNlu/564926+nzc98CiT
         xUGLHB3bPXrSpPuqLJ4GTILIhkgFUmDziMpLDMypXaD4eZ4e5PzPwKfqeWAyj5CK8KDc
         5S1xbIg6T5NrRTAZh9/76RlG3e4G6tpEJPFDaCDwxiNQ6lVOgj3O4ni+ufMs///unHwu
         3LMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xEH8t0p3g9rchC0AgLADS1CPM5R7LrXYG9TZAJK4Xgk=;
        b=GLyr2oJhWT+yrR51ffipWXiapMmdrtbg0qbokOLhLFHZBCTF7yPd2hm6tZMz25WWLy
         4xTtqeQVQyflxV0gu+GU8OWaAfbRi7vqSpA8mjyLTv45csfQEluE44fkTcCWCic7a4lE
         TADqGFcCqjbiOyypE9gLYXwFwpovAzB8ole3HAe9hgUEQrjkWx+tFyjbqJXymVydQYAj
         9PkPLMkzHAg1Ab9mY5d5Userj2jUP2Year9RKCEUQrd851Ndmsej0Ay0dq8P7dK9kGTv
         Sr/s5B3QyUCwtWXCRfbkIeiev4IEyesyZHkzuWVcqQYHgJNa5hStUqo78d3mWhiIzUJB
         LLxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Vj3PzcW9uEbhhXsBdkJs40vLlWk1mVYgw9fwNdH0RP7Jl9bDJ
	CS8iF/CzS914/MnWoThQvlw=
X-Google-Smtp-Source: ABdhPJxdouKTH9cHE//PE7R7zxeqsBOz8rR1qsMTkRupQSam5mxM7N15wqbIuvn1sfEqj41W0u9WVA==
X-Received: by 2002:a17:90a:e2ce:: with SMTP id fr14mr16319020pjb.89.1610800220598;
        Sat, 16 Jan 2021 04:30:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7614:: with SMTP id k20ls991067pll.5.gmail; Sat, 16
 Jan 2021 04:30:20 -0800 (PST)
X-Received: by 2002:a17:90a:3e4f:: with SMTP id t15mr15826857pjm.57.1610800219771;
        Sat, 16 Jan 2021 04:30:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610800219; cv=none;
        d=google.com; s=arc-20160816;
        b=y+E1TTuYJTe6Syz0/HRl2A9oiMKnQVjj5HXYWLl2//8O76LiLDulOkTD+lnWXBOa7y
         13tcs1Wj+YOE0l45uJPzAAg4nhM6c3scAs1K2W6lkFh2jNvG9gvC3NbU6ABDzpjnW9ma
         VYMIT3W/bX3EQWNIwUkAk0DxQyolSjQpLZzifowhawebji3CcSIIxoyxjzr9utKsA+C3
         dwdO8pPNvF9dfkRpZnzSqA8QlRSZoWAY4uciW736w2YAsQ7/B8QwoLQ7+Pcujaw4132F
         oNd7yhkU+rJzbpSyT2mGHBje0pfCiCAamDjPfvkVDkAdfIfYnUUOvijs0c+PWkynt/m4
         j4sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=MnzVTxq8ZoHShDhrCdeA2R8I+r2CT5F1Z8PjA9TqiDo=;
        b=y4nJFzEENZSCaMd8SqTtSrTcihL54LWToqmKYFMiJoMHEmU9PWteDmus0wxVsxbW/G
         QXdyvoLXsE8YptOleSFSMHJoHsg2CrikqZxWttb2ot7n8BFAJY1qH+3Pk93pXHNUMsJj
         C4HvJzRrByq1Al6tC/lOOrt9tmtHhF7OBq22YSLZqaujPwDokPI/4oTUS/P1HS83scq9
         7c+TjcmenPmifvjQ2v4SYCmGA5GO/SJQ0xeAJqwUPhSFxFh+3hmdLdDk2imrbouxEVBB
         W2VWY2qocGjmUYaP6X084F8CG20Gqaa3FlkifnDUYqMpoK+DwA6+k2slsiFjgU2v3YSO
         J1Bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id jz6si619881pjb.1.2021.01.16.04.30.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Jan 2021 04:30:19 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: UrYoo7jqDKjWGgF9v6Ap4nfMgJLdJo4yKd9KuBgpcR8QdUAUJNz0xKj6AD6H+b04ef0S6cGoa5
 QkPyoopJkk/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9865"; a="158435318"
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; 
   d="gz'50?scan'50,208,50";a="158435318"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jan 2021 04:30:18 -0800
IronPort-SDR: 20DytsmUYXu9n5+UXUcSud0JNe3cqOnCkcEuBSzuuYh44STdlZy/cLf3pjf9WEfX0gGJ0lLjig
 LRj2MZFngtBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; 
   d="gz'50?scan'50,208,50";a="572856726"
Received: from lkp-server01.sh.intel.com (HELO 260eafd5ecd0) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 16 Jan 2021 04:30:16 -0800
Received: from kbuild by 260eafd5ecd0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l0kie-0000tq-6f; Sat, 16 Jan 2021 12:30:16 +0000
Date: Sat, 16 Jan 2021 20:29:17 +0800
From: kernel test robot <lkp@intel.com>
To: =?iso-8859-1?B?TOlv?= Le Bouter <lle-bout@zaclys.net>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: drivers/net/ethernet/aquantia/atlantic/aq_pci_func.c:122:31:
 warning: shift count >= width of type
Message-ID: <202101162011.zEFmYmoh-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="azLHFNyN32YCQGCU"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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


--azLHFNyN32YCQGCU
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi L=C3=A9o,

First bad commit (maybe !=3D root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
master
head:   1d94330a437a573cfdf848f6743b1ed169242c8a
commit: 9b22fece786ed641909988da4810bfa8e5d2e592 atlantic: remove architect=
ure depends
date:   3 weeks ago
config: mips-randconfig-r011-20210116 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d7bc3b=
7ce23b664d6620cdc32370a8614523ca2f)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3D9b22fece786ed641909988da4810bfa8e5d2e592
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 9b22fece786ed641909988da4810bfa8e5d2e592
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dmips=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/net/ethernet/aquantia/atlantic/aq_pci_func=
.c:13:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_main.h:1=
2:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:161:9: error: unsupported inline asm: i=
nput with type 'unsigned long' matching output with type '__wsum' (aka 'uns=
igned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/aquantia/atlantic/aq_pci_func.c:122:31: warning: sh=
ift count >=3D width of type [-Wshift-count-overflow]
           err =3D pci_set_dma_mask(pdev, DMA_BIT_MASK(64));
                                        ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MA=
SK'
   #define DMA_BIT_MASK(n) (((n) =3D=3D 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   drivers/net/ethernet/aquantia/atlantic/aq_pci_func.c:124:43: warning: sh=
ift count >=3D width of type [-Wshift-count-overflow]
                   err =3D pci_set_consistent_dma_mask(pdev, DMA_BIT_MASK(6=
4));
                                                           ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:76:54: note: expanded from macro 'DMA_BIT_MA=
SK'
   #define DMA_BIT_MASK(n) (((n) =3D=3D 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   2 warnings and 1 error generated.
--
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_ring.c:1=
0:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_ring.h:1=
3:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:161:9: error: unsupported inline asm: i=
nput with type 'unsigned long' matching output with type '__wsum' (aka 'uns=
igned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/aquantia/atlantic/aq_ring.c:80:21: warning: taking =
address of packed member '' of class or structure 'aq_ring_buff_s' may resu=
lt in an unaligned pointer value [-Waddress-of-packed-member]
                                   aq_free_rxpage(&rxbuf->rxdata,
                                                   ^~~~~~~~~~~~~
   drivers/net/ethernet/aquantia/atlantic/aq_ring.c:95:24: warning: taking =
address of packed member '' of class or structure 'aq_ring_buff_s' may resu=
lt in an unaligned pointer value [-Waddress-of-packed-member]
                   ret =3D aq_get_rxpage(&rxbuf->rxdata, order,
                                        ^~~~~~~~~~~~~
   drivers/net/ethernet/aquantia/atlantic/aq_ring.c:427:23: warning: taking=
 address of packed member '' of class or structure 'aq_ring_buff_s' may res=
ult in an unaligned pointer value [-Waddress-of-packed-member]
                                                     aq_buf_vaddr(&buff->rx=
data),
                                                                   ^~~~~~~~=
~~~~
   drivers/net/ethernet/aquantia/atlantic/aq_ring.c:433:23: warning: taking=
 address of packed member '' of class or structure 'aq_ring_buff_s' may res=
ult in an unaligned pointer value [-Waddress-of-packed-member]
                                                     aq_buf_vaddr(&buff->rx=
data),
                                                                   ^~~~~~~~=
~~~~
   drivers/net/ethernet/aquantia/atlantic/aq_ring.c:436:49: warning: taking=
 address of packed member '' of class or structure 'aq_ring_buff_s' may res=
ult in an unaligned pointer value [-Waddress-of-packed-member]
                   memcpy(__skb_put(skb, hdr_len), aq_buf_vaddr(&buff->rxda=
ta),
                                                                 ^~~~~~~~~~=
~~
   drivers/net/ethernet/aquantia/atlantic/aq_ring.c:543:28: warning: taking=
 address of packed member '' of class or structure 'aq_ring_buff_s' may res=
ult in an unaligned pointer value [-Waddress-of-packed-member]
                   buff->pa =3D aq_buf_daddr(&buff->rxdata);
                                            ^~~~~~~~~~~~
   drivers/net/ethernet/aquantia/atlantic/aq_ring.c:560:19: warning: taking=
 address of packed member '' of class or structure 'aq_ring_buff_s' may res=
ult in an unaligned pointer value [-Waddress-of-packed-member]
                   aq_free_rxpage(&buff->rxdata, aq_nic_get_dev(self->aq_ni=
c));
                                   ^~~~~~~~~~~~
   7 warnings and 1 error generated.
--
   In file included from drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_a=
tl_b0.c:10:
   In file included from drivers/net/ethernet/aquantia/atlantic/hw_atl/../a=
q_hw.h:15:
   In file included from drivers/net/ethernet/aquantia/atlantic/aq_common.h=
:13:
   In file included from include/linux/etherdevice.h:20:
   In file included from include/linux/if_ether.h:19:
   In file included from include/linux/skbuff.h:28:
   In file included from include/net/checksum.h:22:
   arch/mips/include/asm/checksum.h:161:9: error: unsupported inline asm: i=
nput with type 'unsigned long' matching output with type '__wsum' (aka 'uns=
igned int')
           : "0" ((__force unsigned long)daddr),
                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c:1323:7: warnin=
g: taking address of packed member 'ns_mac' of class or structure 'hw_fw_re=
quest_ptp_adj_freq' may result in an unaligned pointer value [-Waddress-of-=
packed-member]
                                    &fwreq.ptp_adj_freq.ns_mac,
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c:1324:7: warnin=
g: taking address of packed member 'fns_mac' of class or structure 'hw_fw_r=
equest_ptp_adj_freq' may result in an unaligned pointer value [-Waddress-of=
-packed-member]
                                    &fwreq.ptp_adj_freq.fns_mac);
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c:1326:7: warnin=
g: taking address of packed member 'ns_phy' of class or structure 'hw_fw_re=
quest_ptp_adj_freq' may result in an unaligned pointer value [-Waddress-of-=
packed-member]
                                    &fwreq.ptp_adj_freq.ns_phy,
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/net/ethernet/aquantia/atlantic/hw_atl/hw_atl_b0.c:1327:7: warnin=
g: taking address of packed member 'fns_phy' of class or structure 'hw_fw_r=
equest_ptp_adj_freq' may result in an unaligned pointer value [-Waddress-of=
-packed-member]
                                    &fwreq.ptp_adj_freq.fns_phy);
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~
   4 warnings and 1 error generated.


vim +122 drivers/net/ethernet/aquantia/atlantic/aq_pci_func.c

5b97b0d10eddeeec Igor Russkikh    2018-01-15  117 =20
ab3518acac42751f Mark Starovoytov 2020-06-26  118  static int aq_pci_func_i=
nit(struct pci_dev *pdev)
a4d36e20d035140b David VomLehn    2017-01-23  119  {
a26b0b53cc38eb41 Colin Ian King   2018-10-08  120  	int err;
a4d36e20d035140b David VomLehn    2017-01-23  121 =20
23ee07ad3c2fd5ad Igor Russkikh    2018-01-19 @122  	err =3D pci_set_dma_mas=
k(pdev, DMA_BIT_MASK(64));
b3f0c79cba2060c1 Igor Russkikh    2020-04-30  123  	if (!err)
23ee07ad3c2fd5ad Igor Russkikh    2018-01-19  124  		err =3D pci_set_consis=
tent_dma_mask(pdev, DMA_BIT_MASK(64));
a4d36e20d035140b David VomLehn    2017-01-23  125  	if (err) {
23ee07ad3c2fd5ad Igor Russkikh    2018-01-19  126  		err =3D pci_set_dma_ma=
sk(pdev, DMA_BIT_MASK(32));
a4d36e20d035140b David VomLehn    2017-01-23  127  		if (!err)
23ee07ad3c2fd5ad Igor Russkikh    2018-01-19  128  			err =3D pci_set_consi=
stent_dma_mask(pdev,
a4d36e20d035140b David VomLehn    2017-01-23  129  							  DMA_BIT_MASK(32=
));
a4d36e20d035140b David VomLehn    2017-01-23  130  	}
a4d36e20d035140b David VomLehn    2017-01-23  131  	if (err !=3D 0) {
a4d36e20d035140b David VomLehn    2017-01-23  132  		err =3D -ENOSR;
a4d36e20d035140b David VomLehn    2017-01-23  133  		goto err_exit;
a4d36e20d035140b David VomLehn    2017-01-23  134  	}
a4d36e20d035140b David VomLehn    2017-01-23  135 =20
23ee07ad3c2fd5ad Igor Russkikh    2018-01-19  136  	err =3D pci_request_reg=
ions(pdev, AQ_CFG_DRV_NAME "_mmio");
a4d36e20d035140b David VomLehn    2017-01-23  137  	if (err < 0)
a4d36e20d035140b David VomLehn    2017-01-23  138  		goto err_exit;
a4d36e20d035140b David VomLehn    2017-01-23  139 =20
23ee07ad3c2fd5ad Igor Russkikh    2018-01-19  140  	pci_set_master(pdev);
a4d36e20d035140b David VomLehn    2017-01-23  141 =20
23ee07ad3c2fd5ad Igor Russkikh    2018-01-19  142  	return 0;
a4d36e20d035140b David VomLehn    2017-01-23  143 =20
a4d36e20d035140b David VomLehn    2017-01-23  144  err_exit:
a4d36e20d035140b David VomLehn    2017-01-23  145  	return err;
a4d36e20d035140b David VomLehn    2017-01-23  146  }
a4d36e20d035140b David VomLehn    2017-01-23  147 =20

:::::: The code at line 122 was first introduced by commit
:::::: 23ee07ad3c2fd5adf6e9ef21afb9aec489dc3b4e net: aquantia: Cleanup pci =
functions module

:::::: TO: Igor Russkikh <igor.russkikh@aquantia.com>
:::::: CC: David S. Miller <davem@davemloft.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202101162011.zEFmYmoh-lkp%40intel.com.

--azLHFNyN32YCQGCU
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
QHz+9Q8lCzIjxekBAA==

--azLHFNyN32YCQGCU--
