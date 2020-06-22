Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMEZYL3QKGQEMD7IIEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC91203516
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 12:49:21 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id v8sf11686344plo.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 03:49:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592822960; cv=pass;
        d=google.com; s=arc-20160816;
        b=W4nSl9NfO8nn/TL2tubuqa8G4ydhRmzTKsIcbcNMLRo0j+i7JECqtGtoYXvmFFnp2H
         FQiuPTs6t2u8fq+mjoWFMkxScZm6Bv8ry1xDdnsuVRVitEK81d5HGljXfqNOpGtnZdWL
         H/Rx9hqBqtJEBkXQUzyc3fRdjp4k3Ls/ch1iGUx8tiZ5nfKf3NxixA+LFuArwSG6rMUU
         GXMfOfEgTBPwbbSSfIorpWJcKSR4JBNMZ3bJtr31/3E0BqjuoTGhb4NE5zj6LGJUtmAJ
         TNs0G/g80tBHc48DU+zC1nKFp3ZjcRhsAonY4LLr7hqPbpmj8dAXP4sbznpC+5BB6wfe
         w6+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ER95MjSz/ZxDjvn4bcwYYAzN9eZJbsTZkh+aPh5xY2w=;
        b=pYDcoo/E4DDLal3TBXtdMPZr9pnXGSBlwmg9VntJMdLa2taiFJL6p63gmZMGhexuNU
         5KsORjt58z9J7PmPRmmQRSvluQsm8gBPFxBZi8dLFfcNbNyUA6ReuenuQ2s2QRIQgRwe
         sWMiY2KGFNZ6sTDb4Yw8+YLR/aXRvWbkGHSOofv1SW7FfduoWqaxYNLVA26IdGz5PdVk
         h+gyq28+EANPzpbWWwgPZAD8TlEK7ln9Z14zxcMPzEJXHdHdWwSN8gRYcegiuLpSV/w8
         5JotuukZvQOgVI25emxf1WaXWcBuG38Js/5TOveH/141aLPO5kLXhbo/UtnY/yqVpWv/
         kNhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ER95MjSz/ZxDjvn4bcwYYAzN9eZJbsTZkh+aPh5xY2w=;
        b=AbT2YIn5F2XA/vu2WZaXg7KUVOuQxeg+E3uynBDW9F9wi8E/bzg6N/vLMhr8GVGZzM
         Jo1pjZJAVKU/chQQKsjyHjfIKtOPN9YvRxKGaqe+NE+9OTiUUvsCOcuWB+gXOnYkP7dN
         8QGS/ny9Q2aowjvwC360V+b7/NcdZQ1lH4J5GSuOTX1kN7ZdaR+qJ3v2BM4FFSmaA+dQ
         hTaBSvcyNyKPnKqB+l7s/Dd3ezZcGdZMKY+Arz0Dcj4CMoixx7EC25N+VSD6u5KhG/Xv
         IjPRdnYY5oZ4/+L1aXv0TVkt43K7t/Y2c7GN9EowJUazjpfhxvyDBtfcfMypLQjfXTMa
         dmVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ER95MjSz/ZxDjvn4bcwYYAzN9eZJbsTZkh+aPh5xY2w=;
        b=bcL+vbTOrQxrmjcDKXv6pTGG496Bebp4rdHNaAVhWPvY6NYHaaS1BjEwCD+sy15Rkn
         ++LgpxxLIFvqyxssEEspeb1Xo+lum6ztbKb628yG04hU6vxfxILGcY57R/uaUCYGwiFf
         GSm/cvguv+GuByAwq3YHD4ClZkyPht2OF88qnxytGx0BIywSh/eSfQ5Tx67ZABMN23p9
         EL7QPlCshmRxXBnBePqtLtRsL6Ej4A6aqLokDVtOHlzaIzZpAQve9CdB4/aqGW5KOQBR
         iQEBpfnlJEz0YQMh2FjN/1ie0S8PXVq/zQRHEz/eMgD6UdmjbzPprKuywLyKSmimOtsE
         fIog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530zS8q7CYpjMMXXNiAObQ3fP3vSX3gpnEGcaUDZw0fSsqmQ0e06
	txZVYYKVpFC0VACEEjMocsg=
X-Google-Smtp-Source: ABdhPJwnCGjeAJR/sZtFhaSJs0G+cRADjqvCP2ucKPo8Gl7NaUb3pLYAg+gFa5VIBrEojMjcSSMlIg==
X-Received: by 2002:a17:90a:a08d:: with SMTP id r13mr17855329pjp.28.1592822960064;
        Mon, 22 Jun 2020 03:49:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e312:: with SMTP id g18ls5459589pfh.9.gmail; Mon, 22 Jun
 2020 03:49:19 -0700 (PDT)
X-Received: by 2002:a62:9246:: with SMTP id o67mr19407038pfd.109.1592822959598;
        Mon, 22 Jun 2020 03:49:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592822959; cv=none;
        d=google.com; s=arc-20160816;
        b=dNl4nqGBUN4yFNv4pMfyWNZ/7/uvs3SWS8B4A390Dptn9tHA+Z9fWPqeNCh9z5xfgg
         56rk2+HBUPJngWobGiqZ0LcRmgo7vYSQvDsANW9SIGwS8YBhPoQxUKA3Jecwj0PGjKYo
         4Y6vqCIjJ+Q33ZRG5l2+beLJ2JU2QI+MA1R2Oao44qyi6cFMkFj3FfnPbMFOjFd/c1s8
         X0pVBDFVMMkZBNkkMwh5JX/1vn4Uw7m3ob0MjMHSVz++awVZvL7HG52aWfGpRDXF35Vn
         s6tWIlTgN4q5h3ZNbwypbboqAnV/F7tnqFu0sIVWS+TRYSBA+I4lE7SZEFPU6WiS6oDG
         E7Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=JiUIZ+L2RteHO8iJDnULNmT4GNwJXGF43fohMSUxQ6Y=;
        b=aR74/EaF/5vjvYCpKOV0UEOgdSoFGYcqhsh/exyFWoIsFSrBVCp1mbMJayNFlgDhtf
         jDuznPmPYnIW4FyzI1sRT6VSAjPMLWhCOE4Nzalm5qwXjmJKQXB2wbSn87QEoQ1mYBgj
         z5xrjPTL0pNLSvXJwV9SBCLJVzDOv56Tnwifg+WdFlbl3iiYVyaursZJAUU0MtTa4me7
         FwKzhVXTosiJOLj6/au7g1t9PNyxzaOlHsos2M78tV0oiZb8v0Mn4aeYbnTD3G1slNq3
         ZMWvQhYe1G1d37Aw6w0S1kHyJEYVIl/1WHCNbSIAYYryHeYJ1YSZ/9lW51YtuQ1bKKq8
         fXBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id gv9si807928pjb.3.2020.06.22.03.49.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jun 2020 03:49:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: Q9gGMuwAaufddiuI4ncFFvigZmdgFlHZTAK7vdZ5eIVR16A9Ev+YZqT35vZ/pbf/mgvVfdFc3d
 AYl0PaT22QmQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="131110237"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; 
   d="gz'50?scan'50,208,50";a="131110237"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2020 03:49:15 -0700
IronPort-SDR: 8H63IqM+ryr7+53yg5yNH+o3M31krQ7fuDgchG7S3Svf0TXBCTXd8GpoOSP5d9I8btMNrBy8Ci
 OMKhl+sjLPYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; 
   d="gz'50?scan'50,208,50";a="300799708"
Received: from lkp-server01.sh.intel.com (HELO f484c95e4fd1) ([10.239.97.150])
  by fmsmga004.fm.intel.com with ESMTP; 22 Jun 2020 03:49:12 -0700
Received: from kbuild by f484c95e4fd1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jnK0m-0000E3-9v; Mon, 22 Jun 2020 10:49:12 +0000
Date: Mon, 22 Jun 2020 18:48:52 +0800
From: kernel test robot <lkp@intel.com>
To: Eric Dumazet <edumazet@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [linux-next:master 2782/3273] net/ipv6/icmp.c:442:6: warning: no
 previous prototype for function 'icmp6_send'
Message-ID: <202006221849.M1dTXtaM%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--wac7ysb48OaltWcw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   27f11fea33608cbd321a97cbecfa2ef97dcc1821
commit: cc7a21b6fbd945f8d8f61422ccd27203c1fafeb7 [2782/3273] ipv6: icmp6: avoid indirect call for icmpv6_send()
config: s390-randconfig-r026-20200622 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1d4c87335d5236ea1f35937e1014980ba961ae34)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390-linux-gnu
        git checkout cc7a21b6fbd945f8d8f61422ccd27203c1fafeb7
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x000000ffUL) << 24) |                                 ^
In file included from net/ipv6/icmp.c:38:
In file included from include/linux/skbuff.h:31:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |                                 ^
In file included from net/ipv6/icmp.c:38:
In file included from include/linux/skbuff.h:31:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |                                 ^
In file included from net/ipv6/icmp.c:38:
In file included from include/linux/skbuff.h:31:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0xff000000UL) >> 24)))
^
In file included from net/ipv6/icmp.c:38:
In file included from include/linux/skbuff.h:31:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
__fswab32(x))
^
In file included from net/ipv6/icmp.c:38:
In file included from include/linux/skbuff.h:31:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writeb(value, PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
readsb(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
readsw(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
readsl(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
writesb(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
writesw(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
writesl(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
>> net/ipv6/icmp.c:442:6: warning: no previous prototype for function 'icmp6_send' [-Wmissing-prototypes]
void icmp6_send(struct sk_buff *skb, u8 type, u8 code, __u32 info,
^
net/ipv6/icmp.c:442:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
void icmp6_send(struct sk_buff *skb, u8 type, u8 code, __u32 info,
^
static
21 warnings generated.

vim +/icmp6_send +442 net/ipv6/icmp.c

   438	
   439	/*
   440	 *	Send an ICMP message in response to a packet in error
   441	 */
 > 442	void icmp6_send(struct sk_buff *skb, u8 type, u8 code, __u32 info,
   443			const struct in6_addr *force_saddr)
   444	{
   445		struct inet6_dev *idev = NULL;
   446		struct ipv6hdr *hdr = ipv6_hdr(skb);
   447		struct sock *sk;
   448		struct net *net;
   449		struct ipv6_pinfo *np;
   450		const struct in6_addr *saddr = NULL;
   451		struct dst_entry *dst;
   452		struct icmp6hdr tmp_hdr;
   453		struct flowi6 fl6;
   454		struct icmpv6_msg msg;
   455		struct ipcm6_cookie ipc6;
   456		int iif = 0;
   457		int addr_type = 0;
   458		int len;
   459		u32 mark;
   460	
   461		if ((u8 *)hdr < skb->head ||
   462		    (skb_network_header(skb) + sizeof(*hdr)) > skb_tail_pointer(skb))
   463			return;
   464	
   465		if (!skb->dev)
   466			return;
   467		net = dev_net(skb->dev);
   468		mark = IP6_REPLY_MARK(net, skb->mark);
   469		/*
   470		 *	Make sure we respect the rules
   471		 *	i.e. RFC 1885 2.4(e)
   472		 *	Rule (e.1) is enforced by not using icmp6_send
   473		 *	in any code that processes icmp errors.
   474		 */
   475		addr_type = ipv6_addr_type(&hdr->daddr);
   476	
   477		if (ipv6_chk_addr(net, &hdr->daddr, skb->dev, 0) ||
   478		    ipv6_chk_acast_addr_src(net, skb->dev, &hdr->daddr))
   479			saddr = &hdr->daddr;
   480	
   481		/*
   482		 *	Dest addr check
   483		 */
   484	
   485		if (addr_type & IPV6_ADDR_MULTICAST || skb->pkt_type != PACKET_HOST) {
   486			if (type != ICMPV6_PKT_TOOBIG &&
   487			    !(type == ICMPV6_PARAMPROB &&
   488			      code == ICMPV6_UNK_OPTION &&
   489			      (opt_unrec(skb, info))))
   490				return;
   491	
   492			saddr = NULL;
   493		}
   494	
   495		addr_type = ipv6_addr_type(&hdr->saddr);
   496	
   497		/*
   498		 *	Source addr check
   499		 */
   500	
   501		if (__ipv6_addr_needs_scope_id(addr_type)) {
   502			iif = icmp6_iif(skb);
   503		} else {
   504			dst = skb_dst(skb);
   505			iif = l3mdev_master_ifindex(dst ? dst->dev : skb->dev);
   506		}
   507	
   508		/*
   509		 *	Must not send error if the source does not uniquely
   510		 *	identify a single node (RFC2463 Section 2.4).
   511		 *	We check unspecified / multicast addresses here,
   512		 *	and anycast addresses will be checked later.
   513		 */
   514		if ((addr_type == IPV6_ADDR_ANY) || (addr_type & IPV6_ADDR_MULTICAST)) {
   515			net_dbg_ratelimited("icmp6_send: addr_any/mcast source [%pI6c > %pI6c]\n",
   516					    &hdr->saddr, &hdr->daddr);
   517			return;
   518		}
   519	
   520		/*
   521		 *	Never answer to a ICMP packet.
   522		 */
   523		if (is_ineligible(skb)) {
   524			net_dbg_ratelimited("icmp6_send: no reply to icmp error [%pI6c > %pI6c]\n",
   525					    &hdr->saddr, &hdr->daddr);
   526			return;
   527		}
   528	
   529		/* Needed by both icmp_global_allow and icmpv6_xmit_lock */
   530		local_bh_disable();
   531	
   532		/* Check global sysctl_icmp_msgs_per_sec ratelimit */
   533		if (!(skb->dev->flags & IFF_LOOPBACK) && !icmpv6_global_allow(net, type))
   534			goto out_bh_enable;
   535	
   536		mip6_addr_swap(skb);
   537	
   538		sk = icmpv6_xmit_lock(net);
   539		if (!sk)
   540			goto out_bh_enable;
   541	
   542		memset(&fl6, 0, sizeof(fl6));
   543		fl6.flowi6_proto = IPPROTO_ICMPV6;
   544		fl6.daddr = hdr->saddr;
   545		if (force_saddr)
   546			saddr = force_saddr;
   547		if (saddr) {
   548			fl6.saddr = *saddr;
   549		} else if (!icmpv6_rt_has_prefsrc(sk, type, &fl6)) {
   550			/* select a more meaningful saddr from input if */
   551			struct net_device *in_netdev;
   552	
   553			in_netdev = dev_get_by_index(net, IP6CB(skb)->iif);
   554			if (in_netdev) {
   555				ipv6_dev_get_saddr(net, in_netdev, &fl6.daddr,
   556						   inet6_sk(sk)->srcprefs,
   557						   &fl6.saddr);
   558				dev_put(in_netdev);
   559			}
   560		}
   561		fl6.flowi6_mark = mark;
   562		fl6.flowi6_oif = iif;
   563		fl6.fl6_icmp_type = type;
   564		fl6.fl6_icmp_code = code;
   565		fl6.flowi6_uid = sock_net_uid(net, NULL);
   566		fl6.mp_hash = rt6_multipath_hash(net, &fl6, skb, NULL);
   567		security_skb_classify_flow(skb, flowi6_to_flowi(&fl6));
   568	
   569		sk->sk_mark = mark;
   570		np = inet6_sk(sk);
   571	
   572		if (!icmpv6_xrlim_allow(sk, type, &fl6))
   573			goto out;
   574	
   575		tmp_hdr.icmp6_type = type;
   576		tmp_hdr.icmp6_code = code;
   577		tmp_hdr.icmp6_cksum = 0;
   578		tmp_hdr.icmp6_pointer = htonl(info);
   579	
   580		if (!fl6.flowi6_oif && ipv6_addr_is_multicast(&fl6.daddr))
   581			fl6.flowi6_oif = np->mcast_oif;
   582		else if (!fl6.flowi6_oif)
   583			fl6.flowi6_oif = np->ucast_oif;
   584	
   585		ipcm6_init_sk(&ipc6, np);
   586		fl6.flowlabel = ip6_make_flowinfo(ipc6.tclass, fl6.flowlabel);
   587	
   588		dst = icmpv6_route_lookup(net, skb, sk, &fl6);
   589		if (IS_ERR(dst))
   590			goto out;
   591	
   592		ipc6.hlimit = ip6_sk_dst_hoplimit(np, &fl6, dst);
   593	
   594		msg.skb = skb;
   595		msg.offset = skb_network_offset(skb);
   596		msg.type = type;
   597	
   598		len = skb->len - msg.offset;
   599		len = min_t(unsigned int, len, IPV6_MIN_MTU - sizeof(struct ipv6hdr) - sizeof(struct icmp6hdr));
   600		if (len < 0) {
   601			net_dbg_ratelimited("icmp: len problem [%pI6c > %pI6c]\n",
   602					    &hdr->saddr, &hdr->daddr);
   603			goto out_dst_release;
   604		}
   605	
   606		rcu_read_lock();
   607		idev = __in6_dev_get(skb->dev);
   608	
   609		if (ip6_append_data(sk, icmpv6_getfrag, &msg,
   610				    len + sizeof(struct icmp6hdr),
   611				    sizeof(struct icmp6hdr),
   612				    &ipc6, &fl6, (struct rt6_info *)dst,
   613				    MSG_DONTWAIT)) {
   614			ICMP6_INC_STATS(net, idev, ICMP6_MIB_OUTERRORS);
   615			ip6_flush_pending_frames(sk);
   616		} else {
   617			icmpv6_push_pending_frames(sk, &fl6, &tmp_hdr,
   618						   len + sizeof(struct icmp6hdr));
   619		}
   620		rcu_read_unlock();
   621	out_dst_release:
   622		dst_release(dst);
   623	out:
   624		icmpv6_xmit_unlock(sk);
   625	out_bh_enable:
   626		local_bh_enable();
   627	}
   628	EXPORT_SYMBOL(icmp6_send);
   629	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006221849.M1dTXtaM%25lkp%40intel.com.

--wac7ysb48OaltWcw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
vpd6Dqk8AQA=

--wac7ysb48OaltWcw--
