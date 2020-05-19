Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB45PR73AKGQEBVKVUDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F851D96D5
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 14:58:29 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id w20sf6921667ply.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 05:58:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589893107; cv=pass;
        d=google.com; s=arc-20160816;
        b=rYblj6alc7/5prb/V6grAl6XTzKW1pg8kEjjGqsDBQl88UlFPAoAeIxcFifHytBk+/
         FEm35qjpRr9iclIfjJCRP87UDIgcsPRdiWcjkk7zVOk+SbqSK/v+VIaWKCqny2hgjDWs
         HfcYXrlLJg6pNANmcA1gp/bBS0tgiax/PZbjm1ZnlX0XxjiwER2bMvKWPpuKGsJBqDlD
         OVMly6h6t3ptaPXB7gP+XEG9hbwBFg97US8VA9Vb6LDBbS+aGMQM/vIm4zjkC6kt/NDA
         2DGYElEupDy0G75C7oVfDuAws+bs5xenrPnxBB+GDD3y0DD1WJs1Y1lNK0FZaav4fMMV
         pgKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=1ZLNPG1BHCMNodQNDu2tk3NiIDIL6voquYDponErwyM=;
        b=nQ0IEDqlhVLzpTFayVVipEllKihZ1Rq/h8BzpyIDOfLH60m7V+FZ7XvZkY9h6yjgk4
         QRGPBX71kIa5mO7Claz4JSkOspXtzxKxQs40J98zMRz3axdzwpmPgLJtR6I76xaR72jr
         JvFevDJhYfC2/TdHJGlgBLc/BLddAJfUb0HyPI2iDZI2HXmVN3FKjcb2P7Ybsf+uqjS4
         /l2bFAwuXX6n+zkcUDhiTRSBEtAdIx9A0CMGdWW/dZ4U4EM06dLbnq+VyfcCAJufMZli
         3PafNzhDSKUtOhbMyrTER9Y1g7FFUaprkLPivJpACBfmLZv1fNfKd0xwmnnlkcgQEje6
         YvqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1ZLNPG1BHCMNodQNDu2tk3NiIDIL6voquYDponErwyM=;
        b=PqpXaR87W3dSqT2FMLw2mmPVzBSs5x2rdHHthNrmoFRT+WtLrjDHfm72vNpLONdF0L
         mN/h1dkgB9Ra7hKm12agQgPR8p17RGEnHq2bdDYQOmt4tA4n6GF8+wQ0FBi1axuP8WD/
         AJmtBfV1VYtUZd5GnA/7p/hRR/S2kO7Dz43pS8DiYELlNd/PRKEb8GnpMjJoTpaqVlcr
         cLSwJzSAzQ2ZQGf/MB+rxi9pHPIM1uu8QbMF/xtQ073Z1Xm7kHQ64EhSnDHcn8A6Hhwi
         vzgy31sVXr02BpbrbikSWo82csAtE9rsxUMWFP4ZJh18a/R2jB3LKA0B2UVaBqxZyfie
         h9dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1ZLNPG1BHCMNodQNDu2tk3NiIDIL6voquYDponErwyM=;
        b=ANbmZDVTA1SpfOPFmmmNKRWoPc1X5eZTHRQOCcbCQE9gogVM0QrEOCVYbRCvr5b03W
         gBPnYjXPSUZieuIxdE41v1gMkURTSwhKlS3aTwiJYifp46pWVnITZwKsgt67F0y9TR7B
         U9N6m5ZgcRG9WKHpQh324raASZQvfoetzD5QDhBBWQIrxGQI+nYubD4NwLw9CDi7zCck
         GcGLlyD+yb4RoncsXncI4Ft3CwcT7EHPCViKZl7LcMgvNz/bxMObapBLPz3nCsuWjFYg
         Bm2ZREYxp58NS7zH+WZaCtNwXDF8uW9XdLXUYS44Db/3pXSZsbr/jroYtls8npftJwSx
         TJFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZKxDIWfl0Ko0aQ0OFZRV8iQPYt22ji24yaxnobEhe289qqq1a
	uW6+cL1xMx6O8iZTL6KR4/k=
X-Google-Smtp-Source: ABdhPJznm37WfVdF7zaU0Z4GbNf2KMvn4x2pUC0iVutHA2ugcAoL6ZwBxc3NnoTR2Nh3QXfJR8Emkg==
X-Received: by 2002:aa7:988a:: with SMTP id r10mr13517124pfl.267.1589893107576;
        Tue, 19 May 2020 05:58:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8f8f:: with SMTP id z15ls4632259plo.8.gmail; Tue, 19
 May 2020 05:58:27 -0700 (PDT)
X-Received: by 2002:a17:90a:20ae:: with SMTP id f43mr5182572pjg.29.1589893106925;
        Tue, 19 May 2020 05:58:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589893106; cv=none;
        d=google.com; s=arc-20160816;
        b=nDDrmz8Um8sPEk4qY6LIusl+tILT3VxktJN1faFJ4ErO29T/kC4OESSUHqZjrKI0+t
         omyiNfVPc9tHTH2ih6i5qqSsF7DKFQUznSWoFxNA8KBfb2wBysidUKPkvwFWqAlPnu1E
         cBQ/ZYxPO8ev0CtwPA63zK1A+LoJUS8ZxBRwned6lKHkJk3yJ3WBDe5OZN2eAzotf5G0
         /Bs7YRX13x0x6Mq8JMUefFBXvUiDnM4cj5+flguulG9tW2TQ4W2ToMj6pu+nokQrRVw9
         7NRVO5VeQcFXK0tO+6P5N+R99d8zFck7o8iLX3B0HR1W7GHzecG9irhaBiNdfZcCxK8T
         7Drw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=wSHgaYRKovpvZmMCns9caUbENjxwJeCPh7K0UzuBF3o=;
        b=scJKChZ/NsHeDVIjS0ZuNa2LXZ8Qj+QJIZ0OjRC7kxPcDbhJG2Rh8y6CRbjVQVdp1E
         FrFzcleUuH01SzPmYr/cH/GhsWRRA6Hi2pkByBxPXziixvzsumA8+4Eh3wuxvxEMfPNd
         4EyEFUtmkUds8kxEUANOQraTDfe8wbKxUNZzstdiUicGVOB4UVymUL6O6LFgfvbEcg/G
         j7apMtjc113KRRSrvGQUkNyQC9dFnjpBZpqeB5Uh4cA4BzL7qAtk6xIh4afLPfNHrgo3
         QKlGiRyi1js106X+15FtFA9Kfglu534KyeADyEFEcU/qwzM32N5HbHQc6tkycUKlST8D
         G7bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id l22si202280pgt.3.2020.05.19.05.58.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 May 2020 05:58:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: L8JfU6yrE0DINwyCQucyE6x0rbbayRioilDFl5GBI9TfhVhZdNeB3aFTaFCKkheIJGcXl4UTlO
 sM9MJovj64OQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 May 2020 05:58:26 -0700
IronPort-SDR: FUHv2jgYSfxaNBx02PzbnH3+EMyWR0iRlnc0nx7Aw1jkbGleboql3vTf1vNUQ7f3hdy0oxNUGg
 6Bivpx4pGj6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; 
   d="gz'50?scan'50,208,50";a="411624238"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 19 May 2020 05:58:24 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jb1p9-00042w-DL; Tue, 19 May 2020 20:58:23 +0800
Date: Tue, 19 May 2020 20:58:15 +0800
From: kbuild test robot <lkp@intel.com>
To: Daniel Borkmann <daniel@iogearbox.net>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Alexei Starovoitov <ast@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>
Subject: kernel/trace/bpf_trace.c:216:36: warning: unused variable
 'bpf_probe_read_compat_proto'
Message-ID: <202005192056.JWpR8L0N%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="lrZ03NoBR/3+SXJZ"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--lrZ03NoBR/3+SXJZ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   642b151f45dd54809ea00ecd3976a56c1ec9b53d
commit: 0ebeea8ca8a4d1d453ad299aef0507dab04f6e8d bpf: Restrict bpf_probe_read{, str}() only to archs where they work
date:   4 days ago
config: s390-randconfig-r021-20200519 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390-linux-gnu
        git checkout 0ebeea8ca8a4d1d453ad299aef0507dab04f6e8d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

In file included from include/linux/skbuff.h:31:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |                                 ^
In file included from kernel/trace/bpf_trace.c:10:
In file included from include/linux/filter.h:13:
In file included from include/linux/skbuff.h:31:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |                                 ^
In file included from kernel/trace/bpf_trace.c:10:
In file included from include/linux/filter.h:13:
In file included from include/linux/skbuff.h:31:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
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
In file included from kernel/trace/bpf_trace.c:10:
In file included from include/linux/filter.h:13:
In file included from include/linux/skbuff.h:31:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:492:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
~~~~~~~~~~ ^
include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
__fswab32(x))
^
In file included from kernel/trace/bpf_trace.c:10:
In file included from include/linux/filter.h:13:
In file included from include/linux/skbuff.h:31:
In file included from include/linux/dma-mapping.h:11:
In file included from include/linux/scatterlist.h:9:
In file included from arch/s390/include/asm/io.h:72:
include/asm-generic/io.h:503:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writeb(value, PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:513:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:523:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
__raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
~~~~~~~~~~ ^
include/asm-generic/io.h:585:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
readsb(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:593:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
readsw(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:601:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
readsl(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:610:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
writesb(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:619:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
writesw(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
include/asm-generic/io.h:628:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
writesl(PCI_IOBASE + addr, buffer, count);
~~~~~~~~~~ ^
>> kernel/trace/bpf_trace.c:216:36: warning: unused variable 'bpf_probe_read_compat_proto' [-Wunused-const-variable]
static const struct bpf_func_proto bpf_probe_read_compat_proto = {
^
>> kernel/trace/bpf_trace.c:271:36: warning: unused variable 'bpf_probe_read_compat_str_proto' [-Wunused-const-variable]
static const struct bpf_func_proto bpf_probe_read_compat_str_proto = {
^
22 warnings generated.

vim +/bpf_probe_read_compat_proto +216 kernel/trace/bpf_trace.c

6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  215  
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02 @216  static const struct bpf_func_proto bpf_probe_read_compat_proto = {
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  217  	.func		= bpf_probe_read_compat,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  218  	.gpl_only	= true,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  219  	.ret_type	= RET_INTEGER,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  220  	.arg1_type	= ARG_PTR_TO_UNINIT_MEM,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  221  	.arg2_type	= ARG_CONST_SIZE_OR_ZERO,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  222  	.arg3_type	= ARG_ANYTHING,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  223  };
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  224  
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  225  static __always_inline int
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  226  bpf_probe_read_kernel_str_common(void *dst, u32 size, const void *unsafe_ptr,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  227  				 const bool compat)
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  228  {
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  229  	int ret = security_locked_down(LOCKDOWN_BPF_READ);
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  230  
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  231  	if (unlikely(ret < 0))
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  232  		goto out;
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  233  	/*
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  234  	 * The strncpy_from_unsafe_*() call will likely not fill the entire
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  235  	 * buffer, but that's okay in this circumstance as we're probing
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  236  	 * arbitrary memory anyway similar to bpf_probe_read_*() and might
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  237  	 * as well probe the stack. Thus, memory is explicitly cleared
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  238  	 * only in error case, so that improper users ignoring return
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  239  	 * code altogether don't copy garbage; otherwise length of string
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  240  	 * is returned that can be used for bpf_perf_event_output() et al.
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  241  	 */
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  242  	ret = compat ? strncpy_from_unsafe(dst, unsafe_ptr, size) :
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  243  	      strncpy_from_unsafe_strict(dst, unsafe_ptr, size);
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  244  	if (unlikely(ret < 0))
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  245  out:
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  246  		memset(dst, 0, size);
074f528eed408b4 Daniel Borkmann    2016-04-13  247  	return ret;
2541517c32be253 Alexei Starovoitov 2015-03-25  248  }
2541517c32be253 Alexei Starovoitov 2015-03-25  249  
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  250  BPF_CALL_3(bpf_probe_read_kernel_str, void *, dst, u32, size,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  251  	   const void *, unsafe_ptr)
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  252  {
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  253  	return bpf_probe_read_kernel_str_common(dst, size, unsafe_ptr, false);
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  254  }
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  255  
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  256  static const struct bpf_func_proto bpf_probe_read_kernel_str_proto = {
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  257  	.func		= bpf_probe_read_kernel_str,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  258  	.gpl_only	= true,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  259  	.ret_type	= RET_INTEGER,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  260  	.arg1_type	= ARG_PTR_TO_UNINIT_MEM,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  261  	.arg2_type	= ARG_CONST_SIZE_OR_ZERO,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  262  	.arg3_type	= ARG_ANYTHING,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  263  };
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  264  
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  265  BPF_CALL_3(bpf_probe_read_compat_str, void *, dst, u32, size,
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  266  	   const void *, unsafe_ptr)
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  267  {
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  268  	return bpf_probe_read_kernel_str_common(dst, size, unsafe_ptr, true);
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  269  }
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  270  
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02 @271  static const struct bpf_func_proto bpf_probe_read_compat_str_proto = {
6ae08ae3dea2cfa Daniel Borkmann    2019-11-02  272  	.func		= bpf_probe_read_compat_str,
2541517c32be253 Alexei Starovoitov 2015-03-25  273  	.gpl_only	= true,
2541517c32be253 Alexei Starovoitov 2015-03-25  274  	.ret_type	= RET_INTEGER,
39f19ebbf57b403 Alexei Starovoitov 2017-01-09  275  	.arg1_type	= ARG_PTR_TO_UNINIT_MEM,
9c019e2bc4b2bd8 Yonghong Song      2017-11-12  276  	.arg2_type	= ARG_CONST_SIZE_OR_ZERO,
2541517c32be253 Alexei Starovoitov 2015-03-25  277  	.arg3_type	= ARG_ANYTHING,
2541517c32be253 Alexei Starovoitov 2015-03-25  278  };
2541517c32be253 Alexei Starovoitov 2015-03-25  279  

:::::: The code at line 216 was first introduced by commit
:::::: 6ae08ae3dea2cfa03dd3665a3c8475c2d429ef47 bpf: Add probe_read_{user, kernel} and probe_read_{user, kernel}_str helpers

:::::: TO: Daniel Borkmann <daniel@iogearbox.net>
:::::: CC: Alexei Starovoitov <ast@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202005192056.JWpR8L0N%25lkp%40intel.com.

--lrZ03NoBR/3+SXJZ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
2vBfHYuGLiWUAQA=

--lrZ03NoBR/3+SXJZ--
