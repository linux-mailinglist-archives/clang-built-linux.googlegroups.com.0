Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQHAUSDAMGQEELXIUOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9D13A8C1B
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 00:57:05 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id m22-20020a0568200356b0290248e4270f00sf394171ooe.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 15:57:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623797824; cv=pass;
        d=google.com; s=arc-20160816;
        b=uv5Zi4N/BHLxHsHK8/xPzPxkWdWY767YQyBYaE35A+EtYF1uPH4/mZDGm+ZMNlOwh1
         +wjn2VFGZdT+GtY9kCaKvruFZr79Yh7JPtL7V4tKI21DbEUyCIUcING6/6k6MaTMicV9
         4YYkXCwAroPzbwZNn4rJOUZk4ArvQHpFQwkoIZZRAswiOYYDiS4DKAHQ4fsPtQSQgP+E
         p/2c9cCiVaY7oRW0eRvLAhOSSJ+Jr2s0qiuHV2uBWjMqPLohIPSE6Thh92JIbJWUTT/e
         4lvKNwk6x2QMhg0nXecJGNTDH004RM8pYlhKKJYyAbdsGDYyBwzWLPYDeN9S7FESXtE2
         J0Jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Dn/0LuvDrEuOS/NXXTmwq+FsBzSjE71HFDRJiK331w8=;
        b=l5i02CASNUfjjxEpXmuU8dZsEjCPY9zV5r9BeHt98/AVPoN9LvbkcxaUaXhUsuQImW
         WAXF2nQ5nMfCmJSnjE0L/H+aLz/RPC7DM3TxVC11g5EVr6xFkP3zseE7A5z8ESRjRAIm
         1GxQYBlDi4EA8Rvdp2E5nZ09Pj4Q+FJBapaPLub1httjWQ8N+4u9Fzk0Hmlgk3xt422v
         +S5mJY5Ei2Xq+TkPu9erJOBNFsslDn3N0levPHb+4Fr9K5yNRszp1NBxdL5wHOOeZXjH
         LDTWwXwsCiSJaI46N4M3jmQLfwYP/Jhox/IZtsIYFA8E5vSH19aeMhSCv5kFag91U+9S
         p56w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Dn/0LuvDrEuOS/NXXTmwq+FsBzSjE71HFDRJiK331w8=;
        b=gLpZl/X6GX1GvyMJ0Zpr+gLAGpQJplm1lgVHTBTG7nKUyYpusfzcGPDKu8KbD50CZP
         GyCTWWOJSEQSs4ABsNSfin34wxLTxiZ05fWXAdJBY4WA5tcldEBgOAHUr/TugrdW9Bbe
         gz2t4k+PGafvRncjXAIX8Gz+ha8e1QNYrzvgB0TgDvYpdhHPQIE7kgGLjlHSgHEH4OjX
         +1K7H3vcTCHt9cXiLnyQwI3l3jYdrh41J8kh8+TxZwULksqxNBfvZwHRoGom2VLZomPq
         V/p614NnEbYwC0W/apB2MmlxMOufaQUGGGT+4Gszcg38az7P4T9lU0P2uUNXW2urXact
         VevA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Dn/0LuvDrEuOS/NXXTmwq+FsBzSjE71HFDRJiK331w8=;
        b=KEaUUM3Ap7bTOj00g9GW5JHySGA9SaBaScvmUHgfq5JH+zE5AaXrk52gn5sHM/Rmbo
         6k+DmOG468VU5+Dax3NlaLlnQQHhWsLVo2exQnwXLHj0fE4GTz88msbgWSSsImL9fQmG
         cBrD6Tsc7YxzBWrGNwx57zq5hNoo0eKVqEgItxxxvLUh9Uzonvb584hJuh6mWZ3i/r0t
         Tt872ToMvHquY01OdXW7BdHkd5ODRCdYI4Dof5TN3tswnkE57qa3Dcrv0HqCHt5FGPAw
         cYD0bNzm20ttACVZquXgUVyxPel/uIZIM92XxmdCXuFZbNws3o+g7OMojBBCi78NWjOf
         kqeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/DdfJQArLGtvYiVFy8b8K5TPEiKdaqW7rZ7Cjbce6+3YF/KAR
	uOXWfT8Xp37IIvOxL5RsZ9U=
X-Google-Smtp-Source: ABdhPJwBdMjrqmgR0Rv1p7CMsrM4SGamHPXAvJwerz12V08WDkP0hZxYe3YwSp6Yg+8bY3Fx1iJnXQ==
X-Received: by 2002:aca:eb54:: with SMTP id j81mr4936176oih.97.1623797824390;
        Tue, 15 Jun 2021 15:57:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5903:: with SMTP id n3ls134277oib.6.gmail; Tue, 15 Jun
 2021 15:57:03 -0700 (PDT)
X-Received: by 2002:aca:b506:: with SMTP id e6mr994733oif.178.1623797823540;
        Tue, 15 Jun 2021 15:57:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623797823; cv=none;
        d=google.com; s=arc-20160816;
        b=W0/VIQ/WKyNZjpz2mOvX3ITtEJMCwFg2Ar7PvWqsPFdgWVxy7b6D4Sn8e3lAlI/WmV
         17oUOsmmnvql31l/h8w/+Xb5D12uR2DvLaQq891bu1EvW3Ap2sqIF2XElDBJsuQ2erlJ
         ydkun/97wjXF479tp+XKicO77JcVAMDZyj46Zd0b5EDDw6O/Sn8HHNvBkpeO/q5QKrf8
         00HgWXP3fohRqXi+kPUKe0oWp39bGSzmYffAeJpWivBEycmAqCPsF78/si42ErCRBh2l
         CkxAHUokTORwAup9WKqxZ2mv5pNoH4xQ8ICqUNVLCdgqQHn/cqs8pwa7xFBiyfRtICri
         3LhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=tq+rhXfygQulntpWqJFTglWveztc+Ucz1DKxqtajQEk=;
        b=H5vmX88vF4GRkQqq+6e8HDdOgseGl+og6IULAFNaxPCVWG/jntjF0ZdouNXjsg3WMS
         d20ghqNb+hqkrxgomKJcex5qdzoHrg4FCp1W+SteZ35qN32FGy4MmNHh3rvLialYlk8p
         yijvxdxah9kATKhr4pYZ5XSKQ9Gx+aXIpqQoH6EJZc+jrTJS6HBA5Gqvg0GWFA2gkoen
         scQxYP46+kCjlMGIBam1mWIQflVHbXnXHDNl6txbAcxDfRe+TIGy4AeCOCSVG+8qGrl2
         moeQbKc0eCxIHLeaOOi9klDrfWr6hNm2c/2eZbLUbxgg8jGKE/5KXDf2SOOBEpbdaaRU
         j2ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id y78si18058oia.0.2021.06.15.15.57.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Jun 2021 15:57:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: LyalBQt8maQOkzYwl44913J/S6DdAh//t/DXzI6bwWSuPvC136/Y1TQXygIQiAkdvWsUTpy7dx
 HLuOWGcZTLuQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="269931092"
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; 
   d="gz'50?scan'50,208,50";a="269931092"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jun 2021 15:56:58 -0700
IronPort-SDR: eRecubRl3fpAQS95YAikdrzE2atZVlSNZkCXP2VqebW5I0kxCmsHp1vyeuTwCRaXl5tHw4d9gg
 2EGmtLaTCqlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; 
   d="gz'50?scan'50,208,50";a="404367476"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 15 Jun 2021 15:56:56 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ltHzL-0000gf-QZ; Tue, 15 Jun 2021 22:56:55 +0000
Date: Wed, 16 Jun 2021 06:56:27 +0800
From: kernel test robot <lkp@intel.com>
To: Mika Westerberg <mika.westerberg@linux.intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [westeri-thunderbolt:next 14/29] drivers/thunderbolt/test.c:2209:13:
 warning: stack frame size of 10688 bytes in function
 'tb_test_credit_alloc_all'
Message-ID: <202106160620.oi2NDE4T-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tKW2IUtsqtDRztdT"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--tKW2IUtsqtDRztdT
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Mika,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/westeri/thunderbolt.git next
head:   b18f901382fdb74a138a0bf30458c54a023a1d86
commit: bfa8f78e06ed0b495a5736380de0e7f833a5efbe [14/29] thunderbolt: Add KUnit tests for credit allocation
config: riscv-randconfig-r026-20210615 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/westeri/thunderbolt.git/commit/?id=bfa8f78e06ed0b495a5736380de0e7f833a5efbe
        git remote add westeri-thunderbolt https://git.kernel.org/pub/scm/linux/kernel/git/westeri/thunderbolt.git
        git fetch --no-tags westeri-thunderbolt next
        git checkout bfa8f78e06ed0b495a5736380de0e7f833a5efbe
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/thunderbolt/test.c:2209:13: warning: stack frame size of 10688 bytes in function 'tb_test_credit_alloc_all' [-Wframe-larger-than=]
   static void tb_test_credit_alloc_all(struct kunit *test)
               ^
   1 warning generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for LOCKDEP
   Depends on DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT && (FRAME_POINTER || MIPS || PPC || S390 || MICROBLAZE || ARM || ARC || X86)
   Selected by
   - LOCK_STAT && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT
   - DEBUG_LOCK_ALLOC && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT
   WARNING: unmet direct dependencies detected for ERRATA_SIFIVE
   Depends on RISCV_ERRATA_ALTERNATIVE
   Selected by
   - SOC_SIFIVE


vim +/tb_test_credit_alloc_all +2209 drivers/thunderbolt/test.c

  2208	
> 2209	static void tb_test_credit_alloc_all(struct kunit *test)
  2210	{
  2211		struct tb_port *up, *down, *in, *out, *nhi, *port;
  2212		struct tb_tunnel *pcie_tunnel, *dp_tunnel1, *dp_tunnel2, *usb3_tunnel;
  2213		struct tb_tunnel *dma_tunnel1, *dma_tunnel2;
  2214		struct tb_switch *host, *dev;
  2215		struct tb_path *path;
  2216	
  2217		/*
  2218		 * Create PCIe, 2 x DP, USB 3.x and two DMA tunnels from host to
  2219		 * device. Expectation is that all these can be established with
  2220		 * the default credit allocation found in Intel hardware.
  2221		 */
  2222	
  2223		host = alloc_host_usb4(test);
  2224		dev = alloc_dev_usb4(test, host, 0x1, true);
  2225	
  2226		down = &host->ports[8];
  2227		up = &dev->ports[9];
  2228		pcie_tunnel = tb_tunnel_alloc_pci(NULL, up, down);
  2229		KUNIT_ASSERT_TRUE(test, pcie_tunnel != NULL);
  2230		KUNIT_ASSERT_EQ(test, pcie_tunnel->npaths, (size_t)2);
  2231	
  2232		path = pcie_tunnel->paths[0];
  2233		KUNIT_ASSERT_EQ(test, path->path_length, 2);
  2234		KUNIT_EXPECT_EQ(test, path->hops[0].nfc_credits, 0U);
  2235		KUNIT_EXPECT_EQ(test, path->hops[0].initial_credits, 7U);
  2236		KUNIT_EXPECT_EQ(test, path->hops[1].nfc_credits, 0U);
  2237		KUNIT_EXPECT_EQ(test, path->hops[1].initial_credits, 32U);
  2238	
  2239		path = pcie_tunnel->paths[1];
  2240		KUNIT_ASSERT_EQ(test, path->path_length, 2);
  2241		KUNIT_EXPECT_EQ(test, path->hops[0].nfc_credits, 0U);
  2242		KUNIT_EXPECT_EQ(test, path->hops[0].initial_credits, 7U);
  2243		KUNIT_EXPECT_EQ(test, path->hops[1].nfc_credits, 0U);
  2244		KUNIT_EXPECT_EQ(test, path->hops[1].initial_credits, 64U);
  2245	
  2246		in = &host->ports[5];
  2247		out = &dev->ports[13];
  2248	
  2249		dp_tunnel1 = tb_tunnel_alloc_dp(NULL, in, out, 0, 0);
  2250		KUNIT_ASSERT_TRUE(test, dp_tunnel1 != NULL);
  2251		KUNIT_ASSERT_EQ(test, dp_tunnel1->npaths, (size_t)3);
  2252	
  2253		path = dp_tunnel1->paths[0];
  2254		KUNIT_ASSERT_EQ(test, path->path_length, 2);
  2255		KUNIT_EXPECT_EQ(test, path->hops[0].nfc_credits, 12U);
  2256		KUNIT_EXPECT_EQ(test, path->hops[0].initial_credits, 0U);
  2257		KUNIT_EXPECT_EQ(test, path->hops[1].nfc_credits, 18U);
  2258		KUNIT_EXPECT_EQ(test, path->hops[1].initial_credits, 0U);
  2259	
  2260		path = dp_tunnel1->paths[1];
  2261		KUNIT_ASSERT_EQ(test, path->path_length, 2);
  2262		KUNIT_EXPECT_EQ(test, path->hops[0].nfc_credits, 0U);
  2263		KUNIT_EXPECT_EQ(test, path->hops[0].initial_credits, 1U);
  2264		KUNIT_EXPECT_EQ(test, path->hops[1].nfc_credits, 0U);
  2265		KUNIT_EXPECT_EQ(test, path->hops[1].initial_credits, 1U);
  2266	
  2267		path = dp_tunnel1->paths[2];
  2268		KUNIT_ASSERT_EQ(test, path->path_length, 2);
  2269		KUNIT_EXPECT_EQ(test, path->hops[0].nfc_credits, 0U);
  2270		KUNIT_EXPECT_EQ(test, path->hops[0].initial_credits, 1U);
  2271		KUNIT_EXPECT_EQ(test, path->hops[1].nfc_credits, 0U);
  2272		KUNIT_EXPECT_EQ(test, path->hops[1].initial_credits, 1U);
  2273	
  2274		in = &host->ports[6];
  2275		out = &dev->ports[14];
  2276	
  2277		dp_tunnel2 = tb_tunnel_alloc_dp(NULL, in, out, 0, 0);
  2278		KUNIT_ASSERT_TRUE(test, dp_tunnel2 != NULL);
  2279		KUNIT_ASSERT_EQ(test, dp_tunnel2->npaths, (size_t)3);
  2280	
  2281		path = dp_tunnel2->paths[0];
  2282		KUNIT_ASSERT_EQ(test, path->path_length, 2);
  2283		KUNIT_EXPECT_EQ(test, path->hops[0].nfc_credits, 12U);
  2284		KUNIT_EXPECT_EQ(test, path->hops[0].initial_credits, 0U);
  2285		KUNIT_EXPECT_EQ(test, path->hops[1].nfc_credits, 18U);
  2286		KUNIT_EXPECT_EQ(test, path->hops[1].initial_credits, 0U);
  2287	
  2288		path = dp_tunnel2->paths[1];
  2289		KUNIT_ASSERT_EQ(test, path->path_length, 2);
  2290		KUNIT_EXPECT_EQ(test, path->hops[0].nfc_credits, 0U);
  2291		KUNIT_EXPECT_EQ(test, path->hops[0].initial_credits, 1U);
  2292		KUNIT_EXPECT_EQ(test, path->hops[1].nfc_credits, 0U);
  2293		KUNIT_EXPECT_EQ(test, path->hops[1].initial_credits, 1U);
  2294	
  2295		path = dp_tunnel2->paths[2];
  2296		KUNIT_ASSERT_EQ(test, path->path_length, 2);
  2297		KUNIT_EXPECT_EQ(test, path->hops[0].nfc_credits, 0U);
  2298		KUNIT_EXPECT_EQ(test, path->hops[0].initial_credits, 1U);
  2299		KUNIT_EXPECT_EQ(test, path->hops[1].nfc_credits, 0U);
  2300		KUNIT_EXPECT_EQ(test, path->hops[1].initial_credits, 1U);
  2301	
  2302		down = &host->ports[12];
  2303		up = &dev->ports[16];
  2304		usb3_tunnel = tb_tunnel_alloc_usb3(NULL, up, down, 0, 0);
  2305		KUNIT_ASSERT_TRUE(test, usb3_tunnel != NULL);
  2306		KUNIT_ASSERT_EQ(test, usb3_tunnel->npaths, (size_t)2);
  2307	
  2308		path = usb3_tunnel->paths[0];
  2309		KUNIT_ASSERT_EQ(test, path->path_length, 2);
  2310		KUNIT_EXPECT_EQ(test, path->hops[0].nfc_credits, 0U);
  2311		KUNIT_EXPECT_EQ(test, path->hops[0].initial_credits, 7U);
  2312		KUNIT_EXPECT_EQ(test, path->hops[1].nfc_credits, 0U);
  2313		KUNIT_EXPECT_EQ(test, path->hops[1].initial_credits, 14U);
  2314	
  2315		path = usb3_tunnel->paths[1];
  2316		KUNIT_ASSERT_EQ(test, path->path_length, 2);
  2317		KUNIT_EXPECT_EQ(test, path->hops[0].nfc_credits, 0U);
  2318		KUNIT_EXPECT_EQ(test, path->hops[0].initial_credits, 7U);
  2319		KUNIT_EXPECT_EQ(test, path->hops[1].nfc_credits, 0U);
  2320		KUNIT_EXPECT_EQ(test, path->hops[1].initial_credits, 32U);
  2321	
  2322		nhi = &host->ports[7];
  2323		port = &dev->ports[3];
  2324	
  2325		dma_tunnel1 = tb_tunnel_alloc_dma(NULL, nhi, port, 8, 1, 8, 1);
  2326		KUNIT_ASSERT_TRUE(test, dma_tunnel1 != NULL);
  2327		KUNIT_ASSERT_EQ(test, dma_tunnel1->npaths, (size_t)2);
  2328	
  2329		path = dma_tunnel1->paths[0];
  2330		KUNIT_ASSERT_EQ(test, path->path_length, 2);
  2331		KUNIT_EXPECT_EQ(test, path->hops[0].nfc_credits, 0U);
  2332		KUNIT_EXPECT_EQ(test, path->hops[0].initial_credits, 14U);
  2333		KUNIT_EXPECT_EQ(test, path->hops[1].nfc_credits, 0U);
  2334		KUNIT_EXPECT_EQ(test, path->hops[1].initial_credits, 14U);
  2335	
  2336		path = dma_tunnel1->paths[1];
  2337		KUNIT_ASSERT_EQ(test, path->path_length, 2);
  2338		KUNIT_EXPECT_EQ(test, path->hops[0].nfc_credits, 0U);
  2339		KUNIT_EXPECT_EQ(test, path->hops[0].initial_credits, 0U);
  2340		KUNIT_EXPECT_EQ(test, path->hops[1].nfc_credits, 0U);
  2341		KUNIT_EXPECT_EQ(test, path->hops[1].initial_credits, 14U);
  2342	
  2343		dma_tunnel2 = tb_tunnel_alloc_dma(NULL, nhi, port, 9, 2, 9, 2);
  2344		KUNIT_ASSERT_TRUE(test, dma_tunnel2 != NULL);
  2345		KUNIT_ASSERT_EQ(test, dma_tunnel2->npaths, (size_t)2);
  2346	
  2347		path = dma_tunnel2->paths[0];
  2348		KUNIT_ASSERT_EQ(test, path->path_length, 2);
  2349		KUNIT_EXPECT_EQ(test, path->hops[0].nfc_credits, 0U);
  2350		KUNIT_EXPECT_EQ(test, path->hops[0].initial_credits, 14U);
  2351		KUNIT_EXPECT_EQ(test, path->hops[1].nfc_credits, 0U);
  2352		KUNIT_EXPECT_EQ(test, path->hops[1].initial_credits, 1U);
  2353	
  2354		path = dma_tunnel2->paths[1];
  2355		KUNIT_ASSERT_EQ(test, path->path_length, 2);
  2356		KUNIT_EXPECT_EQ(test, path->hops[0].nfc_credits, 0U);
  2357		KUNIT_EXPECT_EQ(test, path->hops[0].initial_credits, 0U);
  2358		KUNIT_EXPECT_EQ(test, path->hops[1].nfc_credits, 0U);
  2359		KUNIT_EXPECT_EQ(test, path->hops[1].initial_credits, 1U);
  2360	
  2361		tb_tunnel_free(dma_tunnel2);
  2362		tb_tunnel_free(dma_tunnel1);
  2363		tb_tunnel_free(usb3_tunnel);
  2364		tb_tunnel_free(dp_tunnel2);
  2365		tb_tunnel_free(dp_tunnel1);
  2366		tb_tunnel_free(pcie_tunnel);
  2367	}
  2368	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106160620.oi2NDE4T-lkp%40intel.com.

--tKW2IUtsqtDRztdT
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--tKW2IUtsqtDRztdT--
