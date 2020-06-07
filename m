Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPFA6X3AKGQEWI2TO5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 010911F0FCC
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Jun 2020 22:38:22 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id k27sf8700270ook.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Jun 2020 13:38:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591562300; cv=pass;
        d=google.com; s=arc-20160816;
        b=FdxAcRUEZuYDOISkCGwERX2KxuVcy3n8tadehn8ftEQQMMd4XYcrQkMev5/oA1J3Hl
         AbLNQoSXyq7AJ3j4hkWHNMRsNwsRlYqGRxcFtgg7V2TLTG1SURwtqfxEVzI50kVI9x5t
         /a2zTfEDED0hf06nZncerxfKCQIgQIWPXG27h4d33AzlsbRT6odkjBVl9AmxPc0tig8z
         Jf7/7PZm+Yt7CWaJWJ6TeaJVPH8YP0BU8rS23RPyTOaZXsFNosNU3qQNCImlCd4Y6zai
         TbM1AaRxDwHhftM2AeSMPKRQ9EOYiglF55haOx8pKDJCPJrGK/QYkDEOZm57cBnJj1ap
         AkrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=50aEb0mPYGhbhLxLfdeDkLTtbFz//DAAATmVf1ArGrg=;
        b=z8NyqcBo3I6eY7PzqXKx6YnS8ZZFUj6716LCWjXcHrHkGIlXZPsTLbqZzfYOxOi4iK
         K1ybTMjYzrpN+G7/GG4nNARre02In4e9UsCR2WPirDEhiY83IPpkSinIxQIl2BHIs3pL
         n2H06AUAVT5tEBqxMsqSSxhO8w09UCcP1SWJvPBSxLmmOvuSTBH6QMBepn6DFr/DtRJA
         lx+S/EdNrZgcB6HelSMsjYhIJFzBQ0+rwV+kPFTBjSg+fknrP5GVrzH2kaViOAcviOxO
         53J45iA5PTVexT2AlPU+tP4kk/Viweix9DbcPqClAIocHYVFkabJakpuGU9QsLKP12aq
         Q3Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=50aEb0mPYGhbhLxLfdeDkLTtbFz//DAAATmVf1ArGrg=;
        b=Z+lD0NBdU/fUowzt3+ZsYAw5nCmr24VaXyMJXv8VNdcbM4SOVh1KaP/xyr8rNDWjyd
         MDE/ys1Qno5t7mO5qsvVzv/eImTsTJlp+Eg8/LHtG2Iljhp4oyzadtSCIvNtqtHT/ufC
         B0qWFhrZLZmzLTMayj8KZRTY+sELEhtXB5QIRDZCc32vUKxUwXCYvEAz2Eiy1MotYemI
         N+pVSk1KEU+dLHSuzmUDKr4zYaNpqb88q8WYpmwV0e6Ir2jT6OnV+TEgR0WfUzuBSv1y
         rTyE5dYZ0dGYdZBOQRmygL9e42imJdkkMHF43LgLFwhJ1gw6Rqq3LUFJe718rDelFi8k
         GKuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=50aEb0mPYGhbhLxLfdeDkLTtbFz//DAAATmVf1ArGrg=;
        b=hoFdWIG9pzJS9dYeU2IsHf2ExHpR2jpn/+BiaoBMPnPAkiRIYCpSYn6aJbaj/et4dx
         dr5TfNOy7B1dqRb27h+J6YhgFvnNbDiVoTJ5pbZK6kTMctn5C1xi6oOiIPNvUNALrUo7
         Uxu1jWKzFof9wDtyM1+jKjM0TBh2eq31kkKxZ0JSJXAwK1AY+VEOajtCkCgfY7h5QnDX
         Sry8YGF0w/bn04dmUVZRZ8VTKRQ//JvqB96eny4QYKXvjyEmu57y1WKUUlMvzyJHM0Eb
         MaWsPXmjh8iRVwFPtbQ56XsrUpZ7HQqa7BBEljlzuDDA/NdEfUNf0FXlWVD7Z8rSwt8F
         Q+hA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kGfLHXS62aMf1gwEu8U6FVCDRCCr7BXeDv9rxAwZIALeVl3VW
	xuwYX4VH2ui456SQ9o83klg=
X-Google-Smtp-Source: ABdhPJxdhc5ERPPxxwgOWzL5LCUuD/Wr/8oQb4UCY5V5sfzmkzw4O8HFKCyqhrJ9DZx3y6MWVIZX9w==
X-Received: by 2002:a9d:3ee4:: with SMTP id b91mr13776618otc.313.1591562300312;
        Sun, 07 Jun 2020 13:38:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4549:: with SMTP id p9ls702408oti.11.gmail; Sun, 07 Jun
 2020 13:38:20 -0700 (PDT)
X-Received: by 2002:a9d:4602:: with SMTP id y2mr15394452ote.199.1591562299927;
        Sun, 07 Jun 2020 13:38:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591562299; cv=none;
        d=google.com; s=arc-20160816;
        b=OT/Gh+T/rjxXA3AkiD1OKA4rtc8dtW/VFUTR3H6dAnPH0dPNJOek//nblhKPaA98hU
         rLZqAgrZp9Vav7n6lvv4sMJi2tNRqpvNFJJ+eMBt5EOqs/7JeH9COEzRc7dQiujkXEtJ
         VR7djxE1JdjHHl/WtcT31kUi20/M0VmHDkTB5LcZUW6Z16YEggBZM0Rukcw3L98C7X9g
         FUq+DkAfFt9Wirpav0hYvw3Rc/uVTKq07UwSV3cU/KXgos5EcSm0SislR8HLuvAPG3MX
         ejSGGzILJLOgU9s9+m3XI4FstwWqxNM/IOvQfa+Do6aBFrW8gn9rtiv6rSetjjl4RDEP
         jDLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=vQSwbHWg3vh9EmUycBryDesF1yLzEn9LM6VTQjodnPs=;
        b=JOCtWs8t7qLxhs9fBLIGfKGe/skCT8bhnL4Vs5ZdtPXmKuMTowvqvzzTXtWLEu/Jtf
         48YAzUViF/WMZzFBHbfHqbqN9kL07s8Tp4FVhPMr5kjBsxqMssp09yMhHXXMp/hZQX2u
         4R+0dDVClZ/p9jrBKVg0BRLat8asRwyHFocSlgD3Ip9Z8a+rOL+EevmTNaF9tWo0nj4T
         +V2nwy/BIFZ3BrnMsTH7IFjJT+bKSuSbGjDyub3kHJfwiFwPwRuMFChk5eks/HhLx9LF
         ocY+eNsFRVg8YrkMbpJxLxKDFtGR/eAjdWzOIvP1qqXIXHShfbUlgEcIrQcAJtnb7YbR
         s20Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id o199si501083ooo.0.2020.06.07.13.38.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Jun 2020 13:38:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: IuubhVAeuU+ZEHz/z0LkSMrO0KT739MfWYsjjnDJ1goggxLXe1ZytRGCoo5NPq/xQxEx3J/bQw
 WQ+ekI8Oy4tQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2020 13:38:17 -0700
IronPort-SDR: gp3cOCFNdV9oYgqagtEn+3HE45Oew8prsp3BwzoYxdHs7J+mnkdI0iq5chvm7L0teGbR/S11lZ
 XPtAV/ERXo8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,485,1583222400"; 
   d="gz'50?scan'50,208,50";a="313704238"
Received: from lkp-server01.sh.intel.com (HELO 3b764b36c89c) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 07 Jun 2020 13:38:15 -0700
Received: from kbuild by 3b764b36c89c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ji23a-0000PE-Ut; Sun, 07 Jun 2020 20:38:14 +0000
Date: Mon, 8 Jun 2020 04:37:44 +0800
From: kernel test robot <lkp@intel.com>
To: Sasha Neftin <sasha.neftin@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
	Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Subject: [jkirsher-next-queue:dev-queue 36/44]
 drivers/net/ethernet/intel/igc/igc_mac.c:373:6: warning: variable 'link' is
 used uninitialized whenever 'if' condition is true
Message-ID: <202006080436.snNxuRyC%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="KsGdsel6WgEHnImy"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--KsGdsel6WgEHnImy
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git dev-queue
head:   bb74886dd020cb7d62869fc4a57c50b8bda718ad
commit: 4cbe66aa3a43a5910d9afe165b726711438d3612 [36/44] igc: Add initial LTR support
config: s390-randconfig-r023-20200607 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e429cffd4f228f70c1d9df0e5d77c08590dd9766)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390-linux-gnu
        git checkout 4cbe66aa3a43a5910d9afe165b726711438d3612
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

#define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
^
include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
___constant_swab32(x) :                                               ^
include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
(((__u32)(x) & (__u32)0x000000ffUL) << 24) |                                 ^
In file included from drivers/net/ethernet/intel/igc/igc_mac.c:4:
In file included from include/linux/pci.h:39:
In file included from include/linux/io.h:13:
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
In file included from drivers/net/ethernet/intel/igc/igc_mac.c:4:
In file included from include/linux/pci.h:39:
In file included from include/linux/io.h:13:
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
In file included from drivers/net/ethernet/intel/igc/igc_mac.c:4:
In file included from include/linux/pci.h:39:
In file included from include/linux/io.h:13:
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
In file included from drivers/net/ethernet/intel/igc/igc_mac.c:4:
In file included from include/linux/pci.h:39:
In file included from include/linux/io.h:13:
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
In file included from drivers/net/ethernet/intel/igc/igc_mac.c:4:
In file included from include/linux/pci.h:39:
In file included from include/linux/io.h:13:
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
>> drivers/net/ethernet/intel/igc/igc_mac.c:373:6: warning: variable 'link' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
if (!mac->get_link_status) {
^~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/igc/igc_mac.c:423:33: note: uninitialized use occurs here
ret_val = igc_set_ltr_i225(hw, link);
^~~~
drivers/net/ethernet/intel/igc/igc_mac.c:373:2: note: remove the 'if' if its condition is always false
if (!mac->get_link_status) {
^~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/net/ethernet/intel/igc/igc_mac.c:366:11: note: initialize the variable 'link' to silence this warning
bool link;
^
= 0
21 warnings generated.

vim +373 drivers/net/ethernet/intel/igc/igc_mac.c

ab4056126813c8 Sasha Neftin 2018-10-11  353  
ab4056126813c8 Sasha Neftin 2018-10-11  354  /**
ab4056126813c8 Sasha Neftin 2018-10-11  355   * igc_check_for_copper_link - Check for link (Copper)
ab4056126813c8 Sasha Neftin 2018-10-11  356   * @hw: pointer to the HW structure
ab4056126813c8 Sasha Neftin 2018-10-11  357   *
ab4056126813c8 Sasha Neftin 2018-10-11  358   * Checks to see of the link status of the hardware has changed.  If a
ab4056126813c8 Sasha Neftin 2018-10-11  359   * change in link status has been detected, then we read the PHY registers
ab4056126813c8 Sasha Neftin 2018-10-11  360   * to get the current speed/duplex if link exists.
ab4056126813c8 Sasha Neftin 2018-10-11  361   */
ab4056126813c8 Sasha Neftin 2018-10-11  362  s32 igc_check_for_copper_link(struct igc_hw *hw)
ab4056126813c8 Sasha Neftin 2018-10-11  363  {
ab4056126813c8 Sasha Neftin 2018-10-11  364  	struct igc_mac_info *mac = &hw->mac;
ab4056126813c8 Sasha Neftin 2018-10-11  365  	s32 ret_val;
ab4056126813c8 Sasha Neftin 2018-10-11  366  	bool link;
ab4056126813c8 Sasha Neftin 2018-10-11  367  
ab4056126813c8 Sasha Neftin 2018-10-11  368  	/* We only want to go out to the PHY registers to see if Auto-Neg
ab4056126813c8 Sasha Neftin 2018-10-11  369  	 * has completed and/or if our link status has changed.  The
ab4056126813c8 Sasha Neftin 2018-10-11  370  	 * get_link_status flag is set upon receiving a Link Status
ab4056126813c8 Sasha Neftin 2018-10-11  371  	 * Change or Rx Sequence Error interrupt.
ab4056126813c8 Sasha Neftin 2018-10-11  372  	 */
ab4056126813c8 Sasha Neftin 2018-10-11 @373  	if (!mac->get_link_status) {
ab4056126813c8 Sasha Neftin 2018-10-11  374  		ret_val = 0;
ab4056126813c8 Sasha Neftin 2018-10-11  375  		goto out;
ab4056126813c8 Sasha Neftin 2018-10-11  376  	}
ab4056126813c8 Sasha Neftin 2018-10-11  377  
ab4056126813c8 Sasha Neftin 2018-10-11  378  	/* First we want to see if the MII Status Register reports
ab4056126813c8 Sasha Neftin 2018-10-11  379  	 * link.  If so, then we want to get the current speed/duplex
ab4056126813c8 Sasha Neftin 2018-10-11  380  	 * of the PHY.
ab4056126813c8 Sasha Neftin 2018-10-11  381  	 */
5586838fe9ced0 Sasha Neftin 2018-10-11  382  	ret_val = igc_phy_has_link(hw, 1, 0, &link);
ab4056126813c8 Sasha Neftin 2018-10-11  383  	if (ret_val)
ab4056126813c8 Sasha Neftin 2018-10-11  384  		goto out;
ab4056126813c8 Sasha Neftin 2018-10-11  385  
ab4056126813c8 Sasha Neftin 2018-10-11  386  	if (!link)
ab4056126813c8 Sasha Neftin 2018-10-11  387  		goto out; /* No link detected */
ab4056126813c8 Sasha Neftin 2018-10-11  388  
ab4056126813c8 Sasha Neftin 2018-10-11  389  	mac->get_link_status = false;
ab4056126813c8 Sasha Neftin 2018-10-11  390  
ab4056126813c8 Sasha Neftin 2018-10-11  391  	/* Check if there was DownShift, must be checked
ab4056126813c8 Sasha Neftin 2018-10-11  392  	 * immediately after link-up
ab4056126813c8 Sasha Neftin 2018-10-11  393  	 */
5586838fe9ced0 Sasha Neftin 2018-10-11  394  	igc_check_downshift(hw);
ab4056126813c8 Sasha Neftin 2018-10-11  395  
ab4056126813c8 Sasha Neftin 2018-10-11  396  	/* If we are forcing speed/duplex, then we simply return since
ab4056126813c8 Sasha Neftin 2018-10-11  397  	 * we have already determined whether we have link or not.
ab4056126813c8 Sasha Neftin 2018-10-11  398  	 */
ab4056126813c8 Sasha Neftin 2018-10-11  399  	if (!mac->autoneg) {
ab4056126813c8 Sasha Neftin 2018-10-11  400  		ret_val = -IGC_ERR_CONFIG;
ab4056126813c8 Sasha Neftin 2018-10-11  401  		goto out;
ab4056126813c8 Sasha Neftin 2018-10-11  402  	}
ab4056126813c8 Sasha Neftin 2018-10-11  403  
ab4056126813c8 Sasha Neftin 2018-10-11  404  	/* Auto-Neg is enabled.  Auto Speed Detection takes care
ab4056126813c8 Sasha Neftin 2018-10-11  405  	 * of MAC speed/duplex configuration.  So we only need to
ab4056126813c8 Sasha Neftin 2018-10-11  406  	 * configure Collision Distance in the MAC.
ab4056126813c8 Sasha Neftin 2018-10-11  407  	 */
ab4056126813c8 Sasha Neftin 2018-10-11  408  	igc_config_collision_dist(hw);
ab4056126813c8 Sasha Neftin 2018-10-11  409  
ab4056126813c8 Sasha Neftin 2018-10-11  410  	/* Configure Flow Control now that Auto-Neg has completed.
ab4056126813c8 Sasha Neftin 2018-10-11  411  	 * First, we need to restore the desired flow control
ab4056126813c8 Sasha Neftin 2018-10-11  412  	 * settings because we may have had to re-autoneg with a
ab4056126813c8 Sasha Neftin 2018-10-11  413  	 * different link partner.
ab4056126813c8 Sasha Neftin 2018-10-11  414  	 */
4eb8080143a9d9 Sasha Neftin 2018-10-11  415  	ret_val = igc_config_fc_after_link_up(hw);
ab4056126813c8 Sasha Neftin 2018-10-11  416  	if (ret_val)
ab4056126813c8 Sasha Neftin 2018-10-11  417  		hw_dbg("Error configuring flow control\n");
ab4056126813c8 Sasha Neftin 2018-10-11  418  
ab4056126813c8 Sasha Neftin 2018-10-11  419  out:
4cbe66aa3a43a5 Sasha Neftin 2020-06-02  420  	/* Now that we are aware of our link settings, we can set the LTR
4cbe66aa3a43a5 Sasha Neftin 2020-06-02  421  	 * thresholds.
4cbe66aa3a43a5 Sasha Neftin 2020-06-02  422  	 */
4cbe66aa3a43a5 Sasha Neftin 2020-06-02  423  	ret_val = igc_set_ltr_i225(hw, link);
4cbe66aa3a43a5 Sasha Neftin 2020-06-02  424  
ab4056126813c8 Sasha Neftin 2018-10-11  425  	return ret_val;
ab4056126813c8 Sasha Neftin 2018-10-11  426  }
ab4056126813c8 Sasha Neftin 2018-10-11  427  

:::::: The code at line 373 was first introduced by commit
:::::: ab4056126813c889ee6c8fb24ca8f75b84c981ab igc: Add NVM support

:::::: TO: Sasha Neftin <sasha.neftin@intel.com>
:::::: CC: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006080436.snNxuRyC%25lkp%40intel.com.

--KsGdsel6WgEHnImy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
RE7bUe80Wd7gwpT0PyGXVVl2wgEA

--KsGdsel6WgEHnImy--
