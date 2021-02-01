Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZVN4GAAMGQE6JGSWNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4815D30B061
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Feb 2021 20:30:48 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id k141sf13713091ybf.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Feb 2021 11:30:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612207847; cv=pass;
        d=google.com; s=arc-20160816;
        b=tXqHimyBZSk5pQOozXxGtjXaQnjTMD3CnxtwXhClQAeUQrBfYqprRIhN2bbhlafzgq
         R5hLmEKJq2f6tqpeSY2h6WZ7VZzBbsKV9rSFJB7LIIiVQNDEPFXpxRewJMCQdeRVYkeP
         SgdBRWcU4oOgyBEKLZyy7fz6NtfMEoVeEQVU+sdaV5F81VEKZ0I6/MdWiZCckxsgxLkO
         G1KI+vnfQhId2vVYqcqQxy+l2u4cd5Ad005M1MOAiO6W/pOBzJp7S7NiWSFimx3iZfvs
         R0BRr4e0/ZLMJVEF31j3LVk06OX7nW6+0eCqy7I/26lKaX+ct/kpQdwkmKQHQw8u0zwa
         G3xA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ppMbNhz5FfbvmtcICvjCa1rHQZeAUxlNYG09LSU3nec=;
        b=WlEidL94GzeqK22i4TI11M98orCzqGgFGHGD5mHuqS4NQ2Cas8mq2WjX7R7uikuK58
         lO/30/C+eqimlpCN9F8hgWYa4L7apYeCTwtkmFBAy0lQpxYII7cukmf9wJEZdQjLCCHV
         v3Iid9IpMakxcqgsYxPAJ/4ds7xH2za/23MoEUCl5x/DZ7QCzn7APxQdKyyQGslphwyZ
         UPmLbmtsBw3CgEMABim+xFKbyMdPEEPcUOcax2s5275Lw0eSA1tNEfwGELJOsJaDdzv5
         xpul98QMrVxr/mXmC2h0b8Sq4xmAuxuml3BdCHvTQQsD8sDeE5reEKc0STd8Xbgbn+3i
         FWDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ppMbNhz5FfbvmtcICvjCa1rHQZeAUxlNYG09LSU3nec=;
        b=pqUIy0ihicqMBQLNczQxAEOHcip4UFbH9MTUmazmHUiQ/kA87MBBf6zg//7KkC4FLc
         wQTUxhQuuu/BClzwH3Ocgi6HyHja8WnAqq8kq/EN+pVUyy5JHzA/V9Lwzrk4wm4PgpcW
         CxI93kebQciRdYb6mXANdN+tnWY+2/q5oklS4S0+nV93CZcrRR/2NdtaOr3B8h7zG11z
         vurbVUgipwRem1rishtlAwsaJv2m4/Uid0yRiRf3PE0yCtKJQweDhg2LSDe8goJ996GA
         +8C4Kp7EbJGysQb83AGsKhVGRgxLrLxsXbndh5w5wOww0cd+PaE320yVQX1wiwH8p5Wr
         tyTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ppMbNhz5FfbvmtcICvjCa1rHQZeAUxlNYG09LSU3nec=;
        b=l3HjxPHN3mtrzXBSF0M5yPGMKfVPX2EkWxPdS92w/jUe84pW6TLKQj5Y7TqztlH6zH
         nGfMaxz/Mp4r1k2R56oSOEcvBiApy7fUFmr120A5hKNPBKcVIQ941oRcVwl2GP5+Ygg6
         MAK/hlqzrMRc5EU70bA78hK9qgUZonZS+grp+ny67vQUUrwfqnFsm9y7YgVhZw8quAlw
         0BLJVErwa8//WNaoiyHgg42WoJaghF4DljzqKcm1/yF8ogC6+2haWn21KQgNHJU89bqs
         4EE9GpLIW40jGYga3uK9jnBjiltpxumsC1A3Lg6x1BquJjtNTYX7OrhGU3gQcUcmXiUq
         8Ttg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sG+PmVwpJ/yy4ZtNcPFSaXcENxA2cLgPHSk+mM6at4vdP6AI6
	D+3UC6D6GAr+OAaPlrI92Dc=
X-Google-Smtp-Source: ABdhPJyqgl6/kQTBXloPSoNA4JG7W5asS9p6lFcKHSPUImnQR2C+CMBX/JIqlOreWASH5wcJLaXfTg==
X-Received: by 2002:a25:b281:: with SMTP id k1mr17200222ybj.110.1612207847068;
        Mon, 01 Feb 2021 11:30:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3d03:: with SMTP id k3ls4751068yba.6.gmail; Mon, 01 Feb
 2021 11:30:46 -0800 (PST)
X-Received: by 2002:a25:ce8e:: with SMTP id x136mr27319501ybe.173.1612207846577;
        Mon, 01 Feb 2021 11:30:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612207846; cv=none;
        d=google.com; s=arc-20160816;
        b=Fg2hNhLFxP69PSNEnIL42nO0u/X3F600K+DX6bbmo3zCHF7eDPfA/s96806GfwbVIk
         j/MktvjXE7EAOV4uCCW3twpBexjK1zSUSXt2K9uAgefkPRLyyDC7iGzNxdTOG+v4POIZ
         upYTQ3PrdZdKD1oxeGiCKR8HqfBY02BRSvzvwt8ycbG4aSzOTHss7bqss/WxTtzvLXFK
         VE5iqnu+rWhRIkR6J2RKY7hq9yrZt87+FtcQvp9olgyPm2lEU+4GEecw3bkLUqKtVbcg
         j1AjkAz1iOiWQEIOFLD3bRdfACLRxv1mrW51hA/0IInzWlz9Xm7pRhbBpa0Je1N3cB7H
         q9eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=lUCCtMsmXxAto3H2CyrDtn5xaED8z/BNLRZVtIpwchM=;
        b=k3DqjQ8phadtF99++msaXdIIml7zyr10g/HGmesRhol+Io/4R0w0HtKmOOgcmqmeXV
         w6aGd0MpEN+H2gIGYUz6iRbo84TXQjfEy5zfe9XzTs1auNRAdvzX41C1XWzj3f1fh+3+
         3MuK1OVX9w9aRrqiEH7u+6ny/45DBvZcmKr12tyGb65axah77VR8P/3Le4DlKfbiw4JB
         7wdbv5vAx82/9dvXZKnOgG4A8zWxvkrLMfvy8Dy7IHWMIEJePq0tIPVApafSuLKZPQHl
         LxO+Yim6oWW75JLHWE2fWb+0JsjT84K8NArQj6JJuVIatJta+W41dMc19qALIefUK0l4
         s2sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id o71si568015ybc.3.2021.02.01.11.30.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:30:46 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: reJbziDIPNsxD5H93aaB/8jLc9OVShteWIjTQfiseUx5w05Vw2D2KSDJG60zbvZHFqDm1q16UI
 qdrW/2r3O73A==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="180817533"
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; 
   d="gz'50?scan'50,208,50";a="180817533"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Feb 2021 11:30:44 -0800
IronPort-SDR: J/vgjyJn38j2mUTQoyJZ2ypVEToVO1zMpv7X5bQh2wLyLcN5lIQZqpLrKnzvqICV+Z7IoH6NTs
 dZ23RlCEYXAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,393,1602572400"; 
   d="gz'50?scan'50,208,50";a="432497286"
Received: from lkp-server02.sh.intel.com (HELO 625d3a354f04) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 01 Feb 2021 11:30:42 -0800
Received: from kbuild by 625d3a354f04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l6euH-0008LD-OS; Mon, 01 Feb 2021 19:30:41 +0000
Date: Tue, 2 Feb 2021 03:30:06 +0800
From: kernel test robot <lkp@intel.com>
To: Prabhat Chand Pandey <prabhat.chand.pandey@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Pan, Kris" <kris.pan@intel.com>,
	Rajaram Regupathy <rajaram.regupathy@intel.com>,
	Abhilash K V <abhilash.k.v@intel.com>
Subject: [intel-linux-intel-lts:4.19/android_r 18600/21556]
 drivers/usb/host/xhci-dbgcap.c:191:6: warning: no previous prototype for
 function 'xhci_dbc_flush_requests'
Message-ID: <202102020300.KiZRf2or-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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

tree:   https://github.com/intel/linux-intel-lts.git 4.19/android_r
head:   968adf904a287574c10a384c2e3b1e88994ad843
commit: b88d999a5b9ae9022e12e1a5810b12b21cb77996 [18600/21556] usb: xhci: dbc: make DbC modular, introducing dbc_function structure
config: x86_64-randconfig-r011-20210201 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 275c6af7d7f1ed63a03d05b4484413e447133269)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/intel/linux-intel-lts/commit/b88d999a5b9ae9022e12e1a5810b12b21cb77996
        git remote add intel-linux-intel-lts https://github.com/intel/linux-intel-lts.git
        git fetch --no-tags intel-linux-intel-lts 4.19/android_r
        git checkout b88d999a5b9ae9022e12e1a5810b12b21cb77996
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/usb/host/xhci-dbgcap.c:9:
   In file included from include/linux/dma-mapping.h:7:
   In file included from include/linux/device.h:16:
   In file included from include/linux/kobject.h:20:
   In file included from include/linux/sysfs.h:16:
   In file included from include/linux/kernfs.h:14:
   In file included from include/linux/idr.h:15:
   In file included from include/linux/radix-tree.h:27:
   In file included from include/linux/preempt.h:81:
   In file included from arch/x86/include/asm/preempt.h:7:
   In file included from include/linux/thread_info.h:38:
   In file included from arch/x86/include/asm/thread_info.h:53:
   arch/x86/include/asm/cpufeature.h:164:2: error: implicit declaration of function 'asm_volatile_goto' [-Werror,-Wimplicit-function-declaration]
           asm_volatile_goto("1: jmp 6f\n"
           ^
   arch/x86/include/asm/cpufeature.h:195:4: error: expected ')'
                    : : [feature]  "i" (bit),
                    ^
   arch/x86/include/asm/cpufeature.h:164:19: note: to match this '('
           asm_volatile_goto("1: jmp 6f\n"
                            ^
>> drivers/usb/host/xhci-dbgcap.c:191:6: warning: no previous prototype for function 'xhci_dbc_flush_requests' [-Wmissing-prototypes]
   void xhci_dbc_flush_requests(struct xhci_dbc *dbc)
        ^
   drivers/usb/host/xhci-dbgcap.c:191:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void xhci_dbc_flush_requests(struct xhci_dbc *dbc)
   ^
   static 
   1 warning and 2 errors generated.


vim +/xhci_dbc_flush_requests +191 drivers/usb/host/xhci-dbgcap.c

   189	
   190	
 > 191	void xhci_dbc_flush_requests(struct xhci_dbc *dbc)
   192	{
   193		xhci_dbc_flush_endpoint_requests(&dbc->eps[BULK_OUT]);
   194		xhci_dbc_flush_endpoint_requests(&dbc->eps[BULK_IN]);
   195	}
   196	EXPORT_SYMBOL_GPL(xhci_dbc_flush_requests);
   197	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102020300.KiZRf2or-lkp%40intel.com.

--h31gzZEtNLTqOjlF
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICOtPGGAAAy5jb25maWcAlDxbc9s2s+/9FZr0pX1o4lvc9DvjB5AEJVQkwQCkZPmFo9p0
6lNbyifLbfLvzy7AC0Au1TmZTBtiF7fF3rHQjz/8OGNvx/3L9vh0v31+/j77Uu/qw/ZYP8we
n57r/5lFcpbJYsYjUbwH5ORp9/btw7dP19X11ezq/flv76/OZ8v6sKufZ+F+9/j05Q16P+13
P/z4A/z9ERpfvsJAh//M7p+3uy+zv+vDK4Bn55fvz96fzX768nT8z4cP8N+Xp8Nhf/jw/Pz3
S/X1sP/f+v44u/j14/319vHXh18fz+uH68vt2eXD2cc/rq4+XV2dX9ZXV7+eX15eXP/2M0wV
yiwW82oehtWKKy1kdnPWNkKb0FWYsGx+871rxM8O9/zyDP50MJnpQpVhIZXuewj1uVpLtexb
glIkUSFSXvHbggUJr7RURQ8vFoqzqBJZLOE/VcE0djaEmRtCP89e6+Pb1379IhNFxbNVxdS8
SkQqipvLC6Rju7A0FzBNwXUxe3qd7fZHHKHtnciQJe2W3r2jmitWFnKwg0qzpHDwF2zFqyVX
GU+q+Z3Ie3QXEgDkggYldymjIbd3Uz3kFOAKAB0BnFW5+x/CzdpOIeAKT8Fv7073lgT1vRU3
bRGPWZkU1ULqImMpv3n3026/q39+14+pN3ol8pAYMJda3Fbp55KXvB/SbcXOYZE4XK2k1lXK
U6k2FSsKFi5c8pWaJyIgt8ZKkHFiEeYwmAoXFgMnZEnSsjHIxOz17Y/X76/H+sURQ55xJUIj
MrmSgbN8F6QXck1DeBzzsBA4dRxXqRWcAV7Os0hkRi7pQVIxV6xAWSDB4cJlbWyJZMpERrVV
C8EVUmEzHivVgl5DAxgN662RFQqOE0gKQgr6hsZSXHO1MnupUhlxf4mxVCGPGm0jXCWnc6Y0
b1bXHbU7csSDch5r4uBDWNFSyxLGrtasCBeRdEY2HOGiRKxgrnbtISuWCIDyKmG6qMJNmBDs
YLToqueuAdiMx1c8K/RJYBUoyaIQJjqNlsKRsuj3ksRLpa7KHJfcsnnx9AKGi+L0QoTLSmYc
WNkZKpPV4g61dWqYr6M8NOYwh4xESAqh7SeihBMHYoFx6dLHtHkziPkC2cUQVGla1LNISREZ
U1DpUqMgVQEHSRdSUXpIcZ7mBUyWcXeutn0lkzIrmNqQszVYJ8YNJXRvSR3m5Ydi+/rX7Ag0
n213D7PX4/b4Otve3+/fdsen3Zee+CuhoHdeViw0Y3i8TwDxiH3RMWxH9TZqT4cLkCu2mg8l
KNAR6rWQg7KF3tTm0Njrghl+7fphI4hcwjanulW3CBz1E9JZKSWwsFehZdKqPENOFZYzTbAt
kL4CWL9h+AAvBrjTYWPtYZg+gybc5Hgc2HeS9OzvQDIOBNV8HgaJcGUP/leADwVzsHDpHcQQ
YrWdP2rMMlkWN9dX48Yq4Sy+ufABuugEx12bDAMk4tA7CkR2ETpss7T/GLcYluibE4kjxGDl
RFzcXJy57XhWKbt14OcXvViIrFiCUxbzwRjnlx57luClWq/T8KnRbwMNrcs8B5dUV1mZsipg
4PSGHnkN1pplBQALM0yZpSyviiSo4qTUi6kBYY3nF5+cc5orWeYet4MbEs5JnWCR7bpPIeQi
olVYA1fRhBvXwGNg2TuuTqEsyjmHzdIoOThMxckVRHwlQn4KAwYZyvpom1zFpycBI00bDPAp
wciDIqIUwoKHy1zCSaFFAOfC096NcgMbYCYhhwd7HGuYHjQ1eCf+WbWSg9rMEZkEFdzKBDIq
cmQEv1kKo1mvwAk3VNRGGd280DRy4XtQE1642BP+ukGmfHUD8CILCBJlDuZA3HFUMeZMpEpB
XihbPMTW8A9Hbw68ctBEGVAAHDc9RAKdG/LcOHao4ZxBjIjnoc6XsBhQ6rgah8553H8M9XYK
IYcA1lXeeQOfoyNdNU4WsSt73L0T5vIBrnW6Z7wApyLxvQMTp4zdEE/LOWGN1XpZKlz962iq
MSl6c8zAyUXHiFpZCeajH8V8gl5xiJdL16PSYp6xJHZY12zBbTA+pNugF6Dq3AUxQTEdi1ZC
85aKDitA74ApJbjj/i8RZZPqcUvlech9awC2H3aHnOtZsQ7DkAnlFQMrj355fOJskZFMFOtu
2RiDBdPO2mGIDLzngZqB+OMzKZvQj0cRqVMs68Os1dDlN42woGqVmpDJY7jw/OzKHc04QE12
Kq8Pj/vDy3Z3X8/43/UOPEoGvmWIPiW49r1nRE5rFPDJyVep7WSdWZrldVIGdihP8cg0Z2B+
1ZJWwQkLJsbyJDSRNBoL4IjUnLepCL8TQNFGojNWKRBhmU4N0qEtmIogUnLZH/eFHg1Em4Vg
rjBtdMFTExtiqk3EImy9Uyc+kLFIaJfWqERjwZzDuL4KhKPsbk020vv2XOdSBRKiG9AZSAOk
NhhD6nhEk/RDXYyIkSuO4Erm4E0ak1DcvKufH6+vfvn26fqX66t3nkwAmRv/8N32cP8nJks/
3JvU6GuTOK0e6kfb4mbolmBlW+/KIWABXq+hwhiWpuVAHlP03BQGc8LGuDcXn04hsFvMLpII
LVe2A02M46HBcOfXw2ja0+FOY6eIKnO+XBGB/WLNIZx1tqzWGtjpNlzMWQS+SzKXShSLdNwT
VJkIFCYdIt8/6fQW8isu4ZaCMfCNKuBJPjDsHQZwLCy5yufAvc76bNTIC+vT2ehTcScvYuKf
FmQ0IAylMC2yKLPlBF7OQHxJNLseEXCV2eQQGF0tgmS45DbInwAb/x8d4SpPITwDCScxDHFZ
0rrMPcqdBEqBK37p5INNttB0noogWgcKE+RA63FY0mE26hfI0OrdzrRpluGCI7muZBwD6W/O
vj08wp/7s+6PrykqneZTE5UmWelwYgwuDGcq2YSYeeMOp0Ub8L0xC7nYaNBqySBJmc9taJaA
VQBT/9FxHJF/YNncCjcyEA9t5s8YrPywv69fX/eH2fH7V5sBeay3x7dD7VipluKOpnB3hTuN
OQPdx22I4GpEBN5esHwiB4XgNDeJQxI+l0kUC70gY4ECnCnhZ4lQuBNwuOkICGeD8B6YExm+
8e2IoRHPjpTkerQdlvadiZCsXYnUcZUGwltd03YixrKBkkyBnWMIYTqFRTkuG5BZcPIgIpiX
3E1wAD0ZZqTGLWOPoIPoHCQDE6l0Gi9UGUUp7plX+KzyFY0HgMXK4emuacBN0KxRs/VRpAOx
whnr0TCOmMKILT36u5RV2vWlE4ctGQZJOiqYaFHbHEg3yO9MJAuJTptZAJ1WDaQsBh58uvxE
LirNNS02KTq+9J0TeAykX9UZK9dbbxldYbjYWCKb/bl2UZLzaVihQ3+8MM3RZg68JEx0r/wW
sPQiLVNjdWJQb8nGSaohgjkwCAVT7cWWTS4UA2GecDKxiUOCnrVC7KSNmmaQ4HFjCA41Kx0v
bJFzyw7e7FEqKOqCMwribb2k3tsGp4GpjQVMnNYtcD/FKMYaa/STwVIGfI7+FQ0EdXbz8XwE
bF3wnqYNxGmx2kanrhNomtJw3IJRs/SP0Fz2VqjdBzwliUbFlcSQEVMYgZJLEFyUBUx3j3Rs
6utUa6ucqOplv3s67g9egt4JphrtXWYmQHxxeGeEo1hOxaFjxBAT7DgYgWFMgly7Pjzu4vx6
FDxwnYOZHwpHexcFXlqZDG4RxaeluwNwA4D/QVwn7BYKy4tPTDh0QUW+CPtofAZ/NZFQIFbV
PEAnaHQ0Yc7QmSggPBMhFdq40TowZ6g2uUMEJJUP6G2MDwItbFz2YNPy8tRkqHGho+IYKTRO
cp+1LP20reeLGc/DzskIT7YD9/GsBzf6p70Bx7tSh5IiSfgcpKMx4HgzWXJ0GOvtw5nzZ0Bd
TKNCiCM1JjdUabJ1E2dnL2oxb792ZDotlKew8BtdQFGIqew0DgaR1RSVbKzu84gGUo/tCIhc
6idXewiYhZOuVkPFxkXF+GLJN46h57HnS8EnsGFJ59I1DzFYJGGLu+r87Izyp+6qi49n7hzQ
cumjDkahh7mBYTpvhN9yL3djGjCkm8jjK6Yhri9Jo9C5/yB/CoOP8yELQZCJV/vIy6f6Q8A6
z6D/hReytFFGcxIQyuJFV28PZZEn5bzxIPp8HuhwdIlSF4EmmvXAptAaJJSacDNUiZ6XP0TB
u2KammlkAmtYI6XkQWJFDBuNimpUDGCi6wT0T45XVURUjkmBVkG6MKtJWiI2m6VxdJ6An49h
cF4Q92kNFkbAJionSkxcvGKReyjWaO7/qQ8zMJrbL/VLvTuaEI+FuZjtv2LtnBPmNXG7Y/ib
QL652PKSeQ1IL0VuUrGUIDSpAnQskySA8NPNrYLbn3Cej1v8cABa8dZojLtmS27CFbq1qWc7
d4XDg8/JIijPLc/TcaDWg8LEOa/1Z2v/sZZIhAJzsxMmo43+8Qwc2OirZXIjy7AdKZflMJWQ
YsKqKZrCLnkUDgZpcqJ2bcaB0U5uz4nu8iYonU+YCDtaHqpqSrnYReeuw2M7NUfnD4VOfKzt
wqYGU3xVyRVXSkScyiYhDujSpqqo98wMgIWDhoAVYIY3o5UEZVGQJtZAY5YNZixY5DpYlnTA
UlMjmPBGcWAQrQdD9ZFM41xOgUU02niY5yEweTDVZ9Au8lQMCDKhzwdTs/lcAScWZLGOJciC
q9RNxNv1lRC+gwBpUK5o7Zw72F6FWnqi8ipzUFwRHy3Eg05z5nRCxW4nRD6UpIdjFish9gND
MaRaSyIh/XDGMnYw5DmIk0as0dAh5cVCUk645cE5IY+KRyWW2uEdyJopXsks2VB6tpN/lnNH
i/jtzWWnPwUCaEudF/FYOB3NKPBOGhiD9k5bosK/XcE0fmbaxdStLTGOXVuPNYsP9X/f6t39
99nr/fbZi/BaUfKDdyNcc7nCElTMCRQT4HGFXAdG6ZsqyrAYbW0tDjRxW/8vnZCYmNiaSFeM
OuBNqKm2IFfsYsosgsgnmyhuoXoArKnxXP0/tmASAWUhKFfKo7RDoImz6KjRM4cHP735qU3T
p95vdWKybl8uGz4O2XD2cHj627u97WOXfKC+DaOHJtlm+HUQkLd2AWGTARk4WDwC620zU0pk
1C2/mejKZiLBm2038Prn9lA/jF08f1xrPbodi4fn2pc1MaiyaNsM1RJwgEnb7WGlPHPyjZZa
zbBm4uDttV3m7CdQ07P6eP/eeWMBTY6DB2rcJif8tjS1H37rrVt/abqa0mi3FML0w+Tj+ZlX
uo7YYRZcnMEuPpdCUcYdcDj6UUHpjNgaDBwAEQaDcjalUBGmcypxiyDQmqOhIGaYQMda8AGB
JorDEWb2p4e7n3R8Qxt2eyyNKfhQYCVWrLCCkpRK7IlsmmAda3de3qRCrqaog8nHaRjTZILL
TMkCngwnslcnlC3tz89LBDjHaoInMiXgIIXIyv+GpBf+SwwbsEHH+/3ueNg/P0Pk1isdK6fb
hxrzn4BVO2hYLf716/5wdMqVU/RFTKeofn36sluDSjCjh3v4hx7iG5aK1h5vYEPlxV1NG15/
jfixaTfPT6b4uMUxg3b75buHr/unnb8azGub3Nnw8Nr2zsGYOHmex+btUksGnOn1n6fj/Z80
gV0OX8NfAXF/wd1iXM0qK+39jR40RSnDbDflBkFknwX++kPw5ujyQRgjIku5jNbe6LjT1sHT
bnv4PuMvb8/bVsP3S2KXF30eedK83F5SBY/22mVl9iRzV7GhM9neIc3L7vjip8PLP8hZUUfH
PkUX0TuNhUqNQ5tyrO2YSBUlSaWCklhjFEYB064CEjpEBRfEGGpM+EHxugrjpuqQusCRcp7w
bmnumTUgvEow9xU2JBmqAbNxHovZT/zbsd69Pv3xXPfUEVj49bi9r392JM/LZa4YWcaFIK79
6ADbFF5PpkBCRiUKESNmy5bCXhLVlIK3wL7Uxh10DbyY2yIZb9KQ5brEOgPJaNOPSIW9erVP
Weovh+3ssaWClbVe1Ozbu5WXdMGb1ZIl4m7Evt5TRix3ejrW91iq8MtD/bXePWB2a+Tx2Hxq
6F0k2xSs39bqZe8uzKxP2poxB7dtwZBqGMwsu6KO/la4THNrhgiKybwYloGM6kLMMvrEUpmZ
9C3WU4cYpA+SQngZgm8JCpFVgV67p7/EmglqcCG9uxPveMgOkyMR+3GHAbe9iqna47jMbNKf
K4UJj+x3ewkwQPMqdvvXgmbEhZTLARDVGHwXYl7Kkqj50nAyxlW1z9mILC/EMQXmiJtC8jEC
xJtNrpdcmH2Ua2v9qvVCFNx/i9IVPOku/W7e39gegyEh3tb4oMoW8zTHj7ZniKfdGNk0edlK
07JYVwEsbtnaWBeWiltgrx6szdQDJIzRsAqnVFmVSaCSV1I8LKsljg4TG+gRmkcHti7J9KAG
IeZvK2RVQw68NKHOoJe/IZnCslHmmOGeBIqsfVQ4On7Lkfb1TFP3MFxBI6oNB2Aef3gytp+9
S5+ARbL0Up/95pqbrqZGcIAxqvlqlWJTF+aB2xd3Dc5U30En2JccPWWzTC2KBaggezamlml4
gCiZ9DssA/7XN3VWdf3rw7pWQ2R4ncub4kPiICbxqryMKFxTxLjy7KtzMBK8EQhWi6FegDC9
vV3mIRYpO/GojEpM9qMK50lsSkaJ7fJbUaAiNa+akbyEWjLdzb2tV1Par8+rzh3aGpyAVIl+
r77gtznPfNNqvCIZDmoZoRGlsWaHvQp7KdZVIY88b0LVmVXhGUxSAjhUgOQ1D+bV+tbl5UnQ
sLs9GrI7Beq6K6zQLv0gpm2bekXSbywHqoA339zqAtF061nNQ7n65Y/ta/0w+8s+Ovh62D8+
NfnS3ncFtGZ/pyo1DFrr1YyvQfGHLtA78pInIJwpvm9xxdo8+tD4YOHmfMDUQy63TyuNK+nS
pgGWGQLokikZNT8vQVfyNSNoFXa/QuFTeYQp6JuDBkwV8fcF/0qksFgQ2Kha4rsX+pbZSLV5
0trd4/X358nE5ZHOzh2nMDN1y9yUaRryTD+/xApA8CMgknGIbp4imc5AEbn27jpspfsEEGea
gnUOp/mBiKivIe1RpiHDzmpNdx2197LZvgFqn1ygN+D/ZIGDa2sFmtimx+hvt20I962+fztu
MXrDX6WZmZKzoxNRBCKL0wIVrBNWJbEfTjRIOlTCLX5qmlOhvZoQ7Dss+TCLSeuXPQT6aX99
P761P1WD1BcwpSwrGQUZWqe2Codr7rqFTqXULTByyinQyoabo2KqEcZ40sBnaK+5MtWpXjf7
+gXICC6k270XXq/8gnpnZGsvTN2FLYvsKqjMO5NB9EHUXmA1DVaBqKoYPhOylcSy8nLDS+1W
9Df3KoZe9gciInVzdfZbV1w74bE4qofwVFiyZhtKCZHYqX0kSEYjWE3iR4/DIYwza+qCPV5O
OMtM60RFDv2GGpmjd5mIDdzlUjr8exeUnt24u4xlQhuMO21f0J0oScpZhheaEDAzW9RzooDa
vNBoI2Z3CXCkELz6vr55iky9DsCg0yCMnd9OZdl3F+aBwVhravvrG+D6VHHC5pR6zP0COvtU
sxr9TsQc4q+AZ+EiZeRFRz9ewa3T6iqSjHfZnqw+/rM//IV3ZSM1BQK15N6DBPyG02bOzsHI
3borw2+DQtvehGL029h/rovfxi7QmVCEmvrMmE3c5hoUXQYVvjYJ6Z8dMThWRZwahKya7QtV
ObqiFO8LS+Q+35nbV9f40zPkUIAAoo33r2A+seiaStYBUp65P0pkvqtoEeaDybDZlPlNTYYI
iikajvsS+cRvaFng3DyXTEuqQtRiVEWZZXzwTjwDVS2Xgk/TU+Srgr6IQWgs6ar8BtZPS0+A
x1KxxTSM6wmK2aUNS1RdaLddt9GyGRpDq4u9F5pDjNMDBJwP+/qyaFcR5m3z/xH2ZE2O2zz+
FVcetpKHVCz5kh/yQOuwNNbVomzL86Lqb6a3pmu7p6d6enaTf78AqYOkQOthkjYAHuIBAiAA
6p0/B6V9YwqKil1nKBALs44WBHpXYevw53FYy9S51tP454OqSvfna4//+7cvv/7z/OU3vfYs
2BjS/7CmL1t9E1y23U5C2YhOoCGIZKAh7vI2sGgw+PXbewtne3flbImlo/chS8qtZWFt5xfR
dmYVbafLyOjfiBdD1sVe2u+jRKeNjaqieFJPJgNg7bailoRA5ygcCsGxvpXhpLT8rjsjiOy1
RMOwcL+8Qyi+0I7n4XHbpte59gQZHMCWTF1hjbkg0dhnntETGpBKhT0MDpusNALYVGJpMCSx
h/IOEnhi4PvWk4D7llOisiTXqY10hKODmu7eMMBTt6a4Jq+Vo+xQJYFq35O/2+SYQQ/zoig1
gavDXlKWd3bUqRFRMCyuZYLpQERfRE3e0nW0PF4jtD1eLGelQpMZNANj81EaeNV/d7xJ0dpT
X/uhBkvXLNV0JbzwBaU4DRFBiVTuZmwvZaXm/FHGIKXSUsg2La4gWdNLJQxD/M7N2rZA7yRs
Cnw67CPI0eDGC8w/Sq9sWFQMdS3az6Qow/wiL/6pWeWY0k+XnXvY5Kjr8fKi+5L5yVheGT1U
FJNiQFHGQOGqohYehyhN8pNxbGdlys1FirD2yAvymwUSV88dXtHmnD6sYk6Ps5g+MY6wtqwU
6Qrj2PFIvUeV+5w6GCrVO6GKRGo8LZBNTw/WJbfCCjGMkdZNRxo/ZZz2KRKbDXOp8VurJ/M5
PKg/yqj9pJoEhEwJG6ILTNBVpsXH088Pw3QrunqqQe20Dk1QFSDDFKBiFvQ8xCyrGO1U4rNc
XYjwE0U2mrA9+JniOwmA47X3qoFfi+Dpf5+/qC4gCuVFNqRCmgmIp0R3bItC4lBtl7oxtWsO
qtEN892EQaVBqgjdgdUmB2BbkwYIrCYPy7HjHQAjY83btx6F92QFhY2TQDcCA4j+jlY1pImf
ATdK8jCNLEmaD/UQHtH7Dr38evp4e/v4tvgqZ23iAAVljLhp/Bx1BeBQ1To+9pNDfeYH86M6
sAzikUFDNGdWaKEt+lMGCqL1M0bEvU5hMDoVrBOKvI3XJDgHnZIZS6PHHXxOncoKBavj1Yms
NyU73a6uie5wpODERNxvT44FVfjBp4QTtavHbdOQfcqqy3R+/cxdrprpwBxK5iwp1b1DR7gu
jKm5xKpj74FoUY6j3tgVczdRIgpWUJ+6NTCKkBGw6somX0btiVxoUQILTL+ywhlKNVebK15c
6zZ/AdKzcvrREYUcR+1UngqQ8JPK6DjuvhgyuDAtMDUPiBGYtEY/03oyP0QnlS7dVVvkZzJB
Y09dhejyK+690DOhCo/BYdplcTPT34wiSR+OO22+17XLu82OfGjS/Spg04xTAxrHVRFwmN8P
qQGR963+lBSAaGLndaUyNQrbxpqiSZJcYorRqqSDbf9um3184G+vz99/frw/vbTfPn6bEIIi
F5NdwnOAFuh6Cnu2bbV23huhpc5jqUb48d+rCdRNHP9YeBeKPFZK4OU1ASglw0WnRGWK8nd/
xOnAJC/VYOQOeiyTQhOJ272iBsrfnZBtSsWAaO7IVnsiE+oggCSRLqwk0V1irBDPoFcNKLni
WEtYxq2RML/vT6QEM8IPkPmPCShrOjD3kwkA712nQJNPIjz2p+6s+dPj+yJ6fnrB3IWvr7++
P38R/saL36HEH50AoUgOWE9dRbv9bsnM+nlC8VrE4LZ3lkuzQBSQeVGwQL5ZrUxyAcQxvVeo
TVzfLIgHj1mOIIAhs9SMCZ7F0OvfK6DY4N1i3QRpRfOmRJSt3Cq6VvlGn9UOSH0fr/ebOCIq
KzkD5U9LjyLs0hFtzqKMWB0qwGRx3UVgBwJVClZ0OlVGYR9YzvCM3cSh01EoN/QsSTEO2DDJ
hKOO1YU5GFrI6DD8/KUDLwrzYuosM2nGYap5BWhgTI4RKwGs0MM6K9WzrIeANmY4+wBjzAOW
2jIUlJVsaPCJF2nAJztxcCR/eXv8qrpQR9fOG1txRmiAnY+e7GO3B1rpNWl+MomGwZex+4qc
w0R0+2VwW1BMSylquDTOgBo3sEGVXMhbqkHTq3SvaglHIaorC1JKVpDhlYKICWeRjlQ+EzLs
ICU3llBULK+IIPpyTjEv4QEE0TpRRUSQkTQPBfm725A6jKtebB3s6kzIskxNt9TXp779ge7N
IoFigHnbI3UyERWFuR8OmZ6HcLsJ24b/5b2Xp7IwC79z3aUuw3NVGMZfqGcl4kgaL5YFOKmi
Dmeppz0fmrF0zwxqxfUQfohJ1ExnCIQvFyEZmAuWFHSAps8BImg0CadGR8zdtLCMFnp8/3gW
h92Px/efCkM5w49F9vb118uTTOtbvz9+/ykDcRbp47+aLo1tFBhIo36YTF2Lsjrm1RIWsH5+
Kpb9VRXZX9HL489viy/fnn9M9XPxUVGiV/kpDELfWNYIP2JsXgfWvhxqQDuouK8yXOkUKlxy
B5afQIQL6rh19DkxsO5d7FrHYvuJQ8BcAoZaMGoBryaGZXD2BFM4cF02hYoYXw0K420uiaqg
7x3EcjmgV9RkrWSPP34oEcLoMybn7vELZtdUrXqiKwWeuw0OEF5E2MYe/YuQpbwSwC4Xrj5U
Pa7PDuTpGUlVkjRUnixTEThhYr7GbHPiw7Ngt21gaMxllPhxc2/EQn5w7+H9k7dcmzUoeO4f
XHRwAS1IGwcQJT6eXszepOv18khpGqKrIvj4go7ulTFwKavlShBTxZ9e/vtPDBF8fP7+9HUB
FFNbmdZsmfmbjWNpFvNRyw/4lwS31yqpQ5mx+majKerSXKeZuyk9KoGSQPpx6a5O7mar18h5
7W5SA5bitxsjWcYAtFVeB7LECMP0T3VRY2oq1P1UP7YOC4cm7zIcO67XSWzPP//nz+L7nz7u
lYn4pvUnKPzjytKfnInk0JXB+oC9IoYEdsMtx14fjp6iO/Xp4oV626gi3AbZ7ZHgKzmdrEDM
QJm0XVfFd6dlEFSL/5L/dxelny1epSeoZQHKAncqLypzgrPac/75BzH3ywmRfC3unvUXChEv
t5SmY2pgEUdtQ/VvK2gDfD4k+sACoL2mIqyAx0UamGtLEBzCQ3ev4i71z0QsvsFDx0n2FMf0
HOqpegtKYzKTLpU+HuW62aoHqFekEtTS7+51SNZ43m6/VfJLdgjYLetJ9RhwBfUp8FxjEMKR
qzPcCBMPIeC8v328fXl7UZ308rJLRCXV/0sWKuGq8qh7/vllKkHCqchhccAc8FV6WbrKpmPB
xt00bVAWuml2BJs6MknDyQBr0CWym5CJh/aSQwayvrKqyhj0lULbjvyIuQb8NaUrJFFm8BIB
2jWNZsVNfL5fuXy9pNg+yN1pwTEfNqYewSsqtWgMUnxK30CyMuB7b+kym8cZT939ckkxQoly
l8p26yalBsxmQyAOsbPbaXaXHiP6sSdt+nHmb1cbV3FA4M7WU353V94H1AUL7VIPb27krXAb
cbZfe3SWQOALNYxZC/LsqovxJ+k4fUJpKQK6+P9+u6NPEAj7yp2H73a7VfsNCwsqZ1XrOmLg
ZGRAWKKcMsm0IOEtq931WM8I3CiauQTKzG4T2ow1W2+3mcD3K7/ZTirZr5pmvZ0Qg+jWevu4
DHmjfNRh5yyNVS1hfTrwKRA2EQdNXQs6qp/+efy5SNBc/etVPGvSJZr5QBUIR2XxAiLT4isw
iecf+Kf6dmGrxr2qHKNTkkUT7OXj6f1xEZVHpsSNv/3fdzR8LF6F2rX4HXPzPL+D/gUllWQx
DO9ZRXbaUpHz+/SiCQGCf9quHuB1Y3HqGigCUqFVHD76T8LY/5dFlvhwor8/vYgHj3/qXHUk
QQU96MPkzVbFYxZTTs79JLIURBRZ5lKUliKAIUuMfYzffn6MBQ2k//j+1UCK/lnp334MbxDw
DxgcNdrld7/g2R+mSQ/7HhipBEBauz7oJh34Pebpl2HlVeijIfGmXk6Efkz5Rwy8QpdhRrC8
7O65oojNDAY7Cyak6JWGCcMQ2SpktqYOEp25Floif8u7lKMUmIf+dri0OB4Nlx05smEYLpzV
fr34PYItcoV/fyhdGKtJqhCvNclV3iNBzOCUL0SG10V1gZlqhUFNt6swH/OPZJgI/1BT6eHk
dYg4F7W7GvM5p0MhHt2lfb3w6Ccx4YPIH2FxARNuzSGzaKTMRw882jWvsWGOFpdHqA2kZlsv
4C9eWLIA12e6JYC3FzFS4ullS+lLWJP+a9LXTHoPKtfRmcUrF6Rdw7Ovc/iB3TwyfEIjEbdb
hhONjuQiLyizJZ9DkpjTfvsCKT9l0jXQJz/en//zCzksl5l+mJInZGpKCzF3ZR4abloXEB+A
Wax8XWq8gGAQNvS83Mq4IDMhKvWxgJW1ngy6AwmLTWRsRqKCY6jvj7B2Vo4tZqIvlDIflVz9
bW6eJsBaKcuTVrQO9YSJzA/zxCKsy7O35nMfkbHPeqWgOA8TMVdWi/mCn57jOK2x3EclCNfv
in4mA1MzNcfDXGeBleR1orn9sgdLSna1nOqGoMLxMwuNW7I6tfSwTh0rwpIKFTC22ZlbJmc4
H/XvFJA2P3gemedcKSzfwdZ3y2FNe/Ye/AwtK7TH8CFv6MHwbcuuTo5FvrJWRm9XmRUZBX1b
wZmFCB/sG9lqDznlbKWUwQK5ntASDgjyulotdEnO2rjW8TnHOzoMWCzpOBSV5DJPcjhamJpC
U5FWVdm7ttSNk2nycDYzmU2QRseIL4/DlOteGx2orel9MaDp5TCg6XU5omd7BiJgoTOwhLzk
V4pgFqFc215+0+Izt7RsM8sJA/0ckRFjaUJ6TCilunv1saHUtTwECVNveY1WqQ+zzIVaxOYh
dGf7Hn7246Qk+WOsLaS4pB9qUAuc2TXUUzUms7OReO5G9XtUUZ3j6zi3dBcQvDTplhaV8Uj7
lgDcsjuTxlbEPLJ0jK26ta1ngLCVsUTDRpmzpJfMp2xmtWSsuoT6U7/ZJbMxCn460j3gpxuV
uVBtCFpheaEtzCxt1q3F3QtwG6F72LD8ehcdUW7zan8Sv9JX1Yl73po+6RC1oRmcREGLdCDZ
iX+GWoW+Ot+fotuDChPzXe/TljbJAbJx14C1Wezy3Xo1I2GIVnmoZgFTsbdK28b421lalkAU
sjSfaS5nddfYyCUliFbIuLfy3BluA3+GlfGiLHctC/jSkGkE9OqqIi/01L55NMPEc3oAvdV+
qR8J7ml+KeQXOIy1c0mk5QloDVIpWJz013jquJjhul3Ef5gfk1x35YlBJ4DlSI7iLUSXoiiZ
Ebgf0uKYaEfiQ8pWTUNLNg+pVZ58SC1rDhrDPMfWcmR0strDM0tFyInaRwDAIWqJ+qyy2aO0
CrRvrrbL9cwSrkJU1DQhgFnMF56z2lsCPRFVF/S6rzxnu5/rBKwAxsl1XGGcW0WiOMtALtG8
lDkee6YCSJQM1YSIKqJIQfOGf9oe5BE9IxzdUnEaZ1YjT1KmMwl/7y5X1FWRVkrbFfBzb+G3
gHL2MxPNMz3HUFgmvmOrD2j3jmNRlhC5nmONvPDRn6mhTSm8Ftxf94vMhKFwdurOuc4ryvKW
hYw+AnF5hLRpz8eAvtzC/BPKt13txC0vSq6HPwRXv23So7F7p2XrMD7XGrOUkJlSegnMKA5S
CLPZCw3T5LS+i87l4WdbgahsMSAm+IJ6ClNKRsIp1V6Tz7meAUBC2uvGttgGAtvTalEQWHKn
J6Ul9bqINz2YD7KNwgQqnNOXekdDUXwzHO/HokJ2Q9Frv99YcheVqSW5SVnScE5rang/KsM6
JzZ1RIG2SLMlRJ5AD7KYwRBdhkfGz/SlchdQ5zkbevRGPC2xIh4lQM9y2iIe/tlsPoiOLcHJ
iEvKmGYSV4PJ9kFa7TWgDJtIPppiM/MQDDLPdSgOrZWrY/3kjO+9PFTHG1pVEhhTOFOxe2u5
/amNLcvAZ1W6d3b0JELR7YlmmqzabFzaZnJN0q3rWGu0qYJXP19tG0pA1wcz07UiAbC0tdv6
m2Vjie9Qa6VtkRYL4Xol7+JpbOVn3CacITKieb/am95WRKAmpoakvLo2pok414a7puv9dmPD
rfZrK+6aRNQ5ZHaz4onWU3zhwZK3H98Cs+RLKTfr7g0mGl0lPNtQPjlqdwgjQorvDNaMbrRH
tpiMGGMiaC6PA2G528muqUeFq2i9CkGLMjhKBmt26ViefQbcP8s7ONdibBA4SlhRe1Mx085X
1W5D2rG0YlPVQLB9i5uOxO2ISgGDzCjQvJ4E+d61nMAdlt/FWh6AQ+zOXbG7WIvZTH6EF95t
9w4Wzow77eL30pOMWNBOZ2eSa2Ig/Gz35IWfWohr8ph/ddzZqdelzWvquBYTFKIsxzygbBLA
NTXNZ0QfPt8CNpF5PgfQe7oriHKcirK9qdWKG7ww143vD3WOzBvEIjgzxcs09HYbIouvRvii
1kmREgQTTomGVTLpN/ZdZJO9PmMQ7O/TJIl/LD7egPpp8fGtpyIu1a+khC9MEsKbYnh6SRPz
swavQGkx+/wpqfm5tXDrLu+MTWqTjVqCOjHVSR+zpz3TEkxHJ/n+49eH1VXGiPoVP434YAmL
IkwhqsfoSwwmadESQEiwzEl7MnJ4SlzG6ippTobP8BD984Jv6D73L7r8NHrbCscXosUejoGX
58aK5aBwwKw2fztLd32f5vb3buuZnf9U3IzMKRo6vMiuGaXCiyHGKpNjS+8iS57C26EAbq/Z
tzsYiNXlZuN55BIyiCib0UhSnw50Cw+1s7TIvAqN61gs2wNN0CVTqrYeLS4NlOkJ+nKfBMPS
5ynE0rSkuBoIa59t1852lshbOzPDLFf1zLdl3sqiC2g0qxkaYGK71WY/Q2RJhDoSlBXw+Ps0
eXitLRLlQIN5vfAEmmmusy/OENXFlV0ZrTKMVOd8dpHUmdvWxdmPjaSvU8qmnq0sq0/iVVbr
vhe8QwmtwJ/AiVwC1LJUT541Yg43W1L+ngIN8fD/kjJwjFT8lrMSM+HSzfg3e8r9kUqkThZ+
3nfbClOUAHT/J6UnIeph5MApLYlp0rNQjtgIX27BFmb6e8nE33eorHGyEi2T9GFfzFk7+Nlm
v1tP++ffWEk5pkgsDo0eoqzDBe5fC45nxmN4En/hINgye5siZYdR57AczAQGJtqWp2E4+jDx
Km2UkCQinyeZkVuicXDl6Tr2UQFicFeJ2XZU11UVzwK+81S/fB2583Y7W0HA7e+U2+sTReC1
OCwNj4aVNlMDaDX0GY6ipPETTVpTKQ5n11k6VNjJhMq1fAPeN2M+88TPvc1yYyG6eX6dHR1n
acPXNS/N+JwpgXWkOrx1pCR+PfFEpmjo1B4UpZHjQyUJ2H65ofwZNCJc/1VBL5yYZSWPEzUT
lYoOw9ryreGRpWyIvLd8bNj4qyWpP6pUnS5B9+BYFEHS2AYgToIwpA4LlShJE1haDf0dfMtv
u61DI4/n/LNtZE515DruzjI6qZqkUMdYZuLK8D736i2Xls5IAuviBKHJcbylYxsqkJc283OR
Zdxx1pYWwjRiHPND2wjk6ULikjxsEsunZ6ed49LFQPbqk6JQgxmA7lZvmqWFZYq/Kwy5pMuL
v6+JhVvXmCFgtdo0bc0tgz4wPmq+gtrbNY15KKkk4mKmyMqCJzVl4dDnz1ntvNWdD01AUVlZ
PoX7YqtaJgDQ7nLZ3GGNksIy7xJp4coSadknVdaqWWm1jZmk+IKYZeR4wq2Rnxpd7bjkW7U6
URZZu3EWjzusurwrdCONt7WkItZGouTbzXJn8ZdVCD+H9dZ15w7Mz8LZxjKuRZx1J6qW66qT
5hNOHT5VlqyNJSBAehYahGgnoIRkBwMSLZW12EO6RahTukEX0GfSO84E4moWTQFbUTytQ63N
CjYYUCmsE/Hj+1f5uu5fxQLtRlpEsrZViMhtg0L8bBNvudY6KMHwX9NbXMP7tef6O0eLsUV4
ySq0W7ya9ZU+6kjW6tLkoGlmElqx67RnXdiFUZvZHHcxob21PRgdoQoOve+Mf4Npx/gsabxQ
e3g2RvPIslCPi+8hbc43G0/9kAGTUpc/AzbMzs7ypB2OAy7KPN1KLC2n3x7fH7984CPfZsB6
LZ5lHO2k1Njg6zN7ry1r9REdeV9oBbbysT93s1VHjKX4uKbMBFYpYX/C16nuxmm02N/8lAUW
Y0VWNExeHaYWE5Og4BkzI6TGNfH/hF1Jd+M4kv4rOnYfalokxUUzbw4USElIc0uCsmRf9Fxp
VZXf2Okc29lT+e8HEeACgAH54Jep+IJAYN9iuasYXHaRwUcG8LzTNXnq+7rUzWeFroN43meF
6XXuvBP0bTn6opIzf0Uf0diGnYvMmtqmpzwM6QD+uZyxAbMcAowRxZLAjQp21nt4eXt6eJ7b
g/WNhSGemG6Q2QOJHy7tMdiTZRZNCxr9eUb5VCI/aSqyCTSOLTT1DSkHmMaDAaFTnpI6gxvZ
G845NCA/pS2NlLiN2dBg1aKbRC2Smo4OwcWvsOQneMDIM1eRyrS6Q3eRlH6HzohO0UxfaWZT
QfTaHidzasm4DkYaR7oS2s5PkhOdb9EI4ahXPlslRkiO59nUVr1+/w1QScGejKaYhJVvn5A8
WQRO5T+dhXpb7Bmg3QrwlmMXYACm9vcsDtNPska80oe/OKaQHhaMVSeHdtXA4UVcxKQaSs/S
L55funSHLlHnUlgcg7yfJtkn58SgurEjzwaCzrRJDxmEFPtvzwv9yZEXwTnVo8nDt6foFC2J
viXX/Gu11zau7YkEt6KQfdlRZRP4eW3BdHLvBeGsT8EjF9wuTlvjDoJSytnQ0E9ACuk2smmU
w93pPfOWOf399pbRbnF5U3K5cayyItcmRqQ2GDoQHSVqT3oTAkGCTZ1lBJU2Ih16TucT3MpP
CNP5MBKPKYTaqOlIViBKfczbervVdnjHPjz0JPRIwvhBcjtnRgcdUSs4wASAee48g171lCD3
XpmHXcOt5TQLbrs5oz3DHeUmXsur0U244de5tB52R+Lgd5t+9E6rHdvn7EZVAXV8Y/KvKaly
AvmXwSdPuNZ5XFGNI3HPSDs4GlC4b1f6cnZa6ppeUqq8rmi0OtzWnQ1WxoUI21HJa8ka8lrj
SENYu7GZb2W9wLX5iVIlHkvfBcF9ozvQsRHr2sxG7SvWvGB2XGV9l+g4zZ14UdwZQVsHCiqJ
GCfXpqSfIgCwvV3bM831j604iBPY97P2AP6Wm8NsVwDXKXMVCr3eoDvgkU42rTb2gDx6lJym
FqDKnZRDnUCiUtLBy0358/nj6cfz5W953AI50KcfsSPpP5s9kVtw0bFVoF8KDkDD0nW48lzA
38bc2ENtTs6MPVoWJ9YUmf1h7/8YzhuOj9UD2MtU9+nzn69vTx9/vbwb1S9X6l0N8YFfbGLD
thQx1RMdbznAXY/lN6hhCymEpP8FLnnAZeXb6/MzHHjnCkQqee6FQegoD6JRYFcEkk/0gz/i
ZRaHtIJCD4OXBkeePFlabSkPeXubUlp113B+WpmkCu/SfJJ4Fqt1EpqQ4CIM16FdWEmOAoee
rYLXEbWjBPCWp2YekgDPNoNrKyan+NmRE1NlJdeb/P3X+8flZfE7OGvuXcr+40W28POvxeXl
98vj4+Vx8a+e6zd5EgBfs/80k2QwZ5nREYCc5RD1A11UmSuTBWrOGY3yaywz/y2OlPRDpoVt
0ruuTU3dYmDJy/yWvs8C1KlcA+BNXjaOONAA1241EOxXLB2L7hr0vAQnLla9nCAwzWk2Ied/
f1zevsvzmeT5lxqpD48PPz6MEarXDa/hdf1gT9lZUVk9m3AzqZHPBVx1OkrQ1pu62x7u78+1
vZeUaJfWQm5nXcXveHV3NuL5qI4up8rhqhBLXn/8pRaCvthaX56tBmr+ddV3d7Ayw45nrl1I
6l3gzbsseLNz2m9PLDD3fsKyISPrGP7cwbWR5VUPSKObb52mXUjJqaF8eIeOwaZZnPCFC9+p
gx8tyDk9YUyJ3s7WzFCuQZu0siTbHDo4gxSaQ0IgD+5KXsyCDWPXoh/7cW7IKaklz+yLqBlL
SW4EEFXd3vjCsW8AqCjj5bkoGlO2WnVas9DNKfV1FxATDQvyy8wT7mlBf8GRr2BeIpeN5UzW
E5g7OMs+nzMM+P6u+lo2591X62Qw9pfBgWvfcWbdRP65QuhhbdV1A4EdznboOIOrK/LIP1Hv
M6MPL7MW1VCE45PZDIquPO/ASbtr60Ln0P0C7IX5w9iyqqcfwbXtzugZEMnPT+CaUq8NSAI2
suQ9gaHCJH/OLbrUVqsRQ9LzPTZ8xgoOgTxu8OQ4lUyD8AKbRKbZfI71i/goxJ8Q0OTh4/Vt
vhvsGini67f/sYFeA703cwTtZWe0YE0V/eHxEQMgyOULU33/D63AvGJdq90CSEKpKzUDg/yf
9v7TB9GYAO08BnNrnyTZE3sM9pJX8ZI1fiCWtCLswDTsOqje0LOwfd62d7c8P5olAsy6/hhT
lSfcznQNMaaWVlVdFekNtV0amfIsbeW+wwh5N4ByKr7N2460Ox94dnnJKw65aN1okJnlCBDC
FfmRi82hpU5IA484VC0XOapazkteQsyYdJ4pE6u4CML5Bwigt4qhb8guLnvmjICeuyH2Tu/c
O/R8nePcO6u2PuLtV9u5iephzo0jJianJjJYGoKDM3gjM6XlvJyOwMpH+8vDjx9yg465zXZ5
Su4yazorrewIgZV/WULBS8wnMpF7dWTgDo1UBIu76uTSnVWF2ySRiDWdK0XNq3ulM2UmV8ol
8kAtkIjenpLp2b6RM9NvfSXBy71VUWa629hLEnqRVGXsSBM01aL6QXKgBJ53sqr+yCvwNGrx
HoUXsVWin8tQ0svfP+QMSjSqMnWw6wu7yJKi+nbd4g2GGWCzp2+TMKZOnQh3DWd+4o1+qstt
NpfUTDFt+X1NOqxDeJOtw9grj7eWgEpZ0SYaZxMkfUmr+3PXFRZZnc1mxSuaYO0w0O3xJA6u
dAE1/7hrB1R2kmiWLQJrj3rmUO1fJuv1alx5Gf+k+dU1x2wEbzqXVZwSXk7O9ZVhCt7M0V+e
wwRkYMoVl0+qUABPm7HA98a5CjaQV8uD74Frbzb+sT978/HPgiAhw5EoCbmoRWuNu1ObeivU
MVKmVWLzWb+dzplERkej8o8e7DJn2zjvt/976u/SiG2z/KiPSA7GMrXDmnFkyoS/Iv2wmCy6
d3wd8Y7ag8EE6Bu+Xlzx/PDviy1pv9MGi2tahH7LbTzjjGQQbBm6gERvYAsCQ+EMTg6u2pmY
SZVxM7nImROpPqdzJMvQ+XHgsF81eD6VLkjoCoqTpdXXNIh0IqGLnaMWJvl1knsxKTi+4J3T
W4dpPaJtLkjTBoVCgN3C0HrS6c74pU2WKkbzeUV0ikrr8ciz1g7ElUviMqJbYpPCtcMdVllE
jSGdwaxuA6Fq22DQBt9AFxvtZXkQVhEnNaq0SnvyVfk3X/3Y5WdslMOl5K8xqEATs09BJzym
vXpZLEQ5EfH1OXwoLBcNfKPnOEDyo2RNhhgZOGBB1tXmB3o/cREpYlVe7SpFx4LIYXSuSeat
wpja7w0ssjVWXkgUGIH1khIPID+kh53OE5MPJxpHmNAZiHITrCiph3bapYddDlXgr1ce1Qva
LlySs9WQRdutV6H2wrE/lvqDL/6Uq2dmk/rLUXVcUppFDx9yJ07tx8fgMFkceNQ+Q2NY6RYI
Bj2h6KW39I2CmxBV7yZH5P6Ysis2OAJXzmufHHcTRxefPCKuDgCBRwfWkdDK+yzVlR7e3AAi
3wHEDjlWcUjKIVgc+dTcOXDcJOAim/r2xlsC5NAeUjzbtPTC/XyJsMUAg0ZRMlrEjVtlbWBp
ctLv4sjQnRqydTMRkR7tJtyLfKIRsrwo5HguCQTneFnnbI7x8EaeDzZzAE63y3BLSYgHX3/r
CH00MoVBHNLakIqjtzmh5drK83CZzem7IvQSUVJiSchfOlXzeh65oDuu/CcOWr1MwXu+j7yA
6NF8U6Y5UfmS3uQnSl4ehqTF1IDDu1Df0e0vuySeU7+wFTEEZT9vPZ8KvgWhZ+XiRwA424cO
YE0l1TG5thGdEgDfo5Na+T4hLwKOzFe+rS+oQ9emDLRf88jxBlC0jK5N5MjirZ1fR8knH6+J
5sJTbExVAUTbIoc4AoFLjihaXeu5yEHFWkNgHTtSlTKur091JWuC5dUJuyxObQ7B0qt57h2L
QmJBLvNq63ubktn7hWkFYSdyWBVlRG1HJphajyQ1oBOLr3UMCRMtK6kJnRh5C6HBAZVYQi6T
kk7vCycG8vyvwdToK9eOeliHfnBtZ4UcK2oKQIAY0A1L4oAe0ACtfGpfOnBUHVP3C1x0dTtP
vGKdHJZEfQIQx4Q4EpCHOZ8SB6D18lrpq4aVMd0f8Yp0TR8fmnLj8Hw5fC32nUc7fdE4rg4+
iQd/z4sryYxoLUL3aNxGlLkXB9caJZdLOtyazVKVgO85gOjoLylBSsFWcXkFWZNtpdBNsL4+
OkTXidhxqJuSKqOr64Kcgzw/yRKPHO6p3KktvevfizjxyWOHBGJqpy3rK6GWBl6l/pJcGQBx
WBqMDIFPpdmxeEWl2O1LFl6bW7qy8ZbE7IJ0ohcgnagGSV9RfQPolMDgHJg1B3rTJMEoiVKq
QLedZzlYJVgSn/SSPTAckyCOgx2VPECJRz8P6zxr79qBATn8zJXB+tqihwzkoFYILM3OF26N
tYiT0GHhpPNE1W5e/xKK/HhPnigUlu/pgB8D1wmeFWfX5pbu4nwYsoZ/ftrrbpamaw9YW1Lt
Mb0nQDy0joveP5CF5WXeShnB3rK3aoBTWXp3LsUU0n5ghvje4PHl3LXc1PQYOHpzgPOuvpXZ
5s35yB0ueqgvtilvlbUZUW7qAzCUBd9zZiAoirO/8S2KmqUdGaV7+MoUhErXWTiCDzTEzqaa
mA5fL8Angk9XY6CcP3xFcmT57bbNv17lmbrEoUgdUdlU6FSUiRWpPmf1ochrds46OUHXYmsZ
qpkMU2edRoTkCFbLE6jLvL1QBqU9w/jxmDkOmEH+Np+Fq23Y3s6xe/v5/vFLH31oCUD7Drti
ESTAH3gtBN9Yhnekb+UNK1OdXSNrF87ABF6B8b2SStzgcGWDuKzv2YfKI/q1T8W2SMXelG/4
DHz0n1lZOVDDH5VCev3NybDhj5/fv4Eu1OCoctbQ5Tazeg9Q0C3X8qTdRyNVe16f3hskkJ4a
f3lyesXAPFpQzyW9lW2zmSrORLO8fE10wxEE5jCq7ZgZAzmhNlojqqv0gC+6QV/AqJL+nszy
xTEg5LXQCAampOOriU4ztBGwnMyDQDAkcV76ATCqS+7iz00qOAvMsqih+vWQtjejZrrmFaBh
oIIzJQMEoftumyYYrC627zJQVjUlUkym6bBJV3pQVl/SYHrYABMqarCyznQ7AQBGVQ2NliSN
PFsvKWJody31UGPLBMoDcbSmdT16hmS9pE4/iHaRPHGYTTBeYeh55fdoDkS6IJTfaNrqRlpt
3h1skeXBMpQdj9r34SejVoVOxNcakyb4Ko5G9zxGFqIMl9SmF7Gbu0RWpdal080pXC6JuUbc
Caa7LACa4f8ozZiJKsUbU84O1KiNWgA9GW8ZOnzeoHYN+aAx+Mqx0p/UcaxcUcuHYF571gwy
UOdT2ogQswt4ro6DK3HcoELKIHQ29aDDps/XSo2KJM6lGwDDXGCcPP3VTOIylAc8hzQAesv5
J8l67Ro+CCbEJ4F3cpifjp8ZR9QW1UqaWV0OcL6D7ZjhDGgg2aYRE7Dlp1xWcl10xnX5xACm
kwf0G1CJQ2nqI0xcsD3F3enId01CmL52SXSi8pumOyKblHVJQl5baDxZGKwTKum0kv80VC3M
NwwaNtfK0+p1WGoJYdXaeVVWyeJ7jrIiRk1QWuOlVRiE+gP0hJlGaBOdi2IdmBo8BijPqh6l
1TcxyeEaBWRVwcym3+xYiE9ninoN1CWOyUIXExQYwmTtgqI4oiBtpSSxMHF9lkQrMjOEoqUL
WutriQb12x7Ld5iBK9d1RL0BmKypmUrjkWu3+TRkYqSyl8mCSz/xebM93DvCtGpMt0mypKsF
ocQNrWnoWNKlwaB+YM9CLjMTn1OnY2KZr/4TJte60JP15sAiP6BLqxZg39GUVx3c2WxJdFV6
ZPLcEob+6kS36BXV3IlpXJcGhM28tkpSSe4CC64HaG/BvI/VmRVzi0OEzhGirhZkI7JwYNC2
9UCPNLqe5JfbT5IUdXVHpinS6q4ekRcjVbj5aa6nW8o18WaTaQlM2KlsyCy50hGyAKwvcF8i
DFoqd3FtXtZdbglnXSiayVvVgzm26ZHsgKoUdAwo+LaTqz43S9Y70DIF6h1iuPJoc/C6Qw1N
qOmuzdPyPm2MiupNCGbZ813dNsVhpyxmjYLuDmlFa0lItOvkF5zcu7DRcs+qOqfzcMBM384Y
rwg1Py0/GHjjsXt7+PHX0zfCzi3dGWY18ifovUfUox1glqkUkATXjrFAMLzDqEPrrjPcUNzu
Url3pv1lACaOvAODLUc80swR80nSz5ncxJqXKcPd3uIf6c/Hp9cFe23eXr9d3t9f3/4Jprl/
PP358+0BroIG4zqwSSuefn97ePu1eHv9+fH0XXc0CLmc0Jk4Mm/fHl4ui99//vEHmPeOXglH
obZ0MaG10aT7XLCMareeT9QHMwCMqLJZ6fY8m7esJGomlzybdGVlf692Ztw7ibuG6AFSnwsG
KQ42VIMFwo/LN3BdBh/MrtOAP131Xvt1GmsPxgPwSDxvt458Ucls9o0gTbkROkAkLO32B2oj
L254ZdKUkaBN4/KXTaxbkfLWLAmrD7vUpuG4tD5WoRBMoqz+XY02eXq5Jqq7MvJSSNDMNi9y
VpdmDvn9TX5nV9ouL+WkRL+xIb51jDUAZXro39Yh2M1dbkpwTAs4JBm03V2L9/y2YBys1R0J
Gy7rgPAl3bSpWQOdnL/3ZjRJJXIluOz85MMCMBRMqcZb37mCuiisqm8pC3YE6x3HTv9CUeFH
Y6hkjgjZ3oC2h3JT5E2a+UazA7Rbr5aKaKR33Od5Idw9qEx3nFnRRBT9zrqDByqupbt5i6lo
8PWWmsUQr8EzWn5n5XEoOj64KDfSqzpXzNjsLOfKnDZWAbRJK3hoKWrSqAg58i4Fc0mzVRo5
0uVsbLd9T8YgVe48eybG6ecx5IGwJW1dceaaqJqWyyOdKZWcaAyHoYo2xM3WiaA628cJ1Mmd
3N1YSXbQIeTUnVuzkExU7m2EXQNtSV0l4fAFz9ap4IZ+wEi0upyRZu+Q2B0/BeUBp7df6jsQ
yiFBx29ra+jXjZA1YfcnCBe5o+yqFAgPb71LD/2qVKO7BxD4dDyeGxFY8x3n/d5ZI554VdYm
6V7udOxqH2jXqhDi68kx55rK1CP9eX/Y2FXRI0wWDU62+MuZC4QOmu04YMdu7jqm/QJE/3Vu
GRrclRhpbF4l2+j6glBJwGjIGypFQIaJa3KvRcuFHsD4fPPEv39cnhdc7OltlNrAShg3VC96
zvWecXnw7Loilyciuc5rd/WA97s6k6jipZo09GW+T8V5zzID0XsEBn12BBjGRKpK7hXlkbDK
j8NpblbY8un92+X5+eH75fXnO7ZAH7LQru9Bb6GBULEObyLId1el8NJV8kruiRxNVHc7uySS
dD7uOQRqupI6cG0K3CqLDnryVc6toIY3BrOWUzcojOzAskYSTNccqhcZCxqQjthcm3RL937w
z3bdsw9+H8Wn5RIa1iHaCTqR3e6Kmm12TD+VjsDoH8CA8iGllxlVnqSw+s5dR3zTddBnhNz9
ZnSKukMCvc5PEMxg38wzBWM0LzrNga1sJ/nNHACV6ZXvzWuiJuunnklm9a+DF/h2rRsMokg8
70q7tEkaReE67kU1pzeGigD0WX9gQIvKss7mqlfQffoIjOz54f19fljC8cys6u5d45rEY2b1
gq5ko+GXXHz+c4GF7Wq5Z8sXj5cfl++P74vX7wvBBJfH1o/FprhB57wiW7w8/BrOwA/P76+L
3y+L75fL4+XxvxbgQkZPaX95/rH44/Vt8fL6dlk8ff/jdfgSSsdfHv6EeKgzL/3Y1BmzXmHg
ZsT5+ISfYKVmLbM6DZJrDI+rbPqfHz6kUC+L3fPPy6J4+HV5G8QqsdZlm728Pl70UYqJgCl6
XRWUQ1Oc5Y4ssDsB0M6HgnxlG3G3cGq+WAh7vek/9c1WBYqR2O7h8c/Lx7+ynw/Pv8kZ6ILF
Wrxd/vfn09tFzeyKZVjRwA+QbM8LOg56nOdnv+ON9Ft4WRe5PcAQw3h9ELpE5HJXUZPeVswM
YEHhdaY7XsFpcs/Bt1VqV/JAx7I7EkfL12hpJtgT5zPHCIBmUqs8bI/9FiuKHI0HIWLdGgjH
goqzZYnc+7vu70YcMg8ezXmpbjLmUMpbBnqONNjeBHKCdWStrjbcM1/vrX0frGjlXY0Jl+h9
nrqX6MG9N99xOWWxvMgdN1n/z9iTLDduA/srqjklVS8v1mbLhzlwlTDiZoKUZF9YHo3iUcW2
pmT5JfP3Dw2AZANoenJIPOpuYl+60RuuutC5v8h2qeeRJqW8gxBdlBbRkhyduAohzHZOIjeM
5+VA1azw7j6ulA19GoXL/9DxlsowCcItX0BmpIEqBHI+EDUFrztPSGuUSGD0c0tWz+qahK+j
ey6Eaogc8BF+oN3rhA+dkS1F7jMI71+RpadB1dQTrHXCyKgq6YlOc34zsGUVbjzvorT9JBsO
VIsZ7cWFyXa1PfMUWeZtUjLjN6IpkskUW/ojVF6x68V8QeLuAq/e0ZjaS0DiIJG8CIrFbk7j
vDgamE9AiZELQ9JR1zjdolIIxqyMEvXeSZZ2n/o5bQyMqKpfrKDg3o/KL6BBoWvZidOUjDuP
z7otdrTDQ1/YL5QYmWYsI4N0WCUEOV36DuTvJqXX/lYInn6e0bcA5/X4il7gdxW9XeoivFnE
VzdTm//qznEyVCLcjaboSF6SUcquLcZFgCbXZlO8sK5wYEFV+4ZHjpAoOAXa11fJdMu80m+1
GOyy6+2NEtzfBKTVjCKSxtmWHBNaz6JShoHrRSeTNCVwUEuEgsFIBpJJy54yLv5slpQhjGy/
03zBZAmxfsP8ctD4XrY133qlGLFhCjssqCHp8ahSIkvMdlVdWiuOcdBVxda1cS/orImMHuQQ
7azlB7Kn+DuZj3e+heEsgH9M51cOi93iZtekF6EcLshsJcZbyPXQerPsYOXlfC2fnLtlXHz/
+XbcPz4r6YBex8XKiKqT5YWSvYOIUXHzAaeCWZkJTrzVJgek8aDYAhUD6t9T2SssdtWKziWr
8wQnQV851X1BWpPLDSX4Xa1ddfaaQHH92gWPDMMvKfIhxZx1EIN0dpe+0C39WpOmpK17lMpE
z/3wtRDLdl9GZOSX4/5vwmS//aTO5CUldn2dRtSnw683dlEVi1NwRDJ07Rr3Reo8sma6oGzM
OrJyjn2Ge3AEYZ/XZjx1B1vjyNzwtAdvWUjtAy9bQeJxEta0+pteHwQ4X6ZfzeBMXG1hl2TL
yH0YBZ2XM8Tye49Pr2dzxAtKqLS1Ne6VFkx72HfYq/HO+cq1IDPxKrIiHVJeEgyGBlXVgqE0
nR20w88/KD0p5vMJLT31+A+aD/jrD8tf0CbkfedxTCQMbX0W3PG6nlLLVKK7OJDmV6EXjCcz
frWgfalVyVtaQyyRnXHXUMV+OLG8x1X/q+l8wKtALQ9lvThUahV4YPRmDVCVBPPb8c4eN1i3
838tIPZCsHaDfPb6+nx8/fu38e/yTimX/khriN8hzCFlCTH6rVdC/Y7fn9QwyPSNQ91RgSCc
QQLL6OEhylhws/DdDAbQ0Op8fHpy97V+IbePkvbhXMXBtldWixVcKl/l9J1kEKYVJTcYJKvI
Kys/8ip7BjW+s55xxqSlsJLpUCReULENq+4HyxgITG/QtHoSydzL8T3+uMAT29vooga5XxXZ
4fLX8RkyAuyl2dHoN5iLy+P56XBxl0Q36oL94xA3/FdNCbw0kmYQdDkFJC/7VRlCkoEsa72B
VxBE4PrHEmbmV5WJpJjvZdRcRuLcaMSuB8UQD8oaxYGWKEcxVlZBY4SLBgBERbhejBca01UN
OHm7ETWH4ANnGTL2sI6V6A1setyGFn3gyTi0n7EF0EnHADAzfLVO55fypcCZgyd1igJKGtpp
dO5V6jsNlmbIK/iqSZep8WjRo6gx2ULbAssSXEMdgGZHur4HbvB9D1LKNtVuICGpgEpW/Kc7
Wk3p9fpfAfbrGCkgNbksPWZG7sOthCI9P1gPNKoEGqpt9CiMjAtu2DhgrEz8B8+3lAbbqkDm
kmrKneChhFiLXprDAE2cV++0VIgaFM5mKghmO+kpDGzAmJZgNVjsWuxKLH92z1ZXFrjM5bDN
TbDi78SNxjk44vw0sT6oBlvcp08tEsIQWrYw9QBDBW482vWW2pJdVkDjAxV43E14lh7359Pb
6a/LaPXzx+H8x2b09H54uxDmjdJ+xJrhDXjFFUYvNbyuWGIw8Rrug1c7EVV4d3htr3unaph4
/V1fDwDlWddA/by9GEwC0LNFGyF9mR/GSGoEMpW4TWPQwMk67rluO+MkWwVE4j/IFhWXYHNl
2o8CeplVdAY4iRT3TSVbKh3+zZZpJBx1Eol2KMurxNe7zqit2ASCuG/NQL2FWEEBjl0HwChm
5gjKDbdLIIWqCQ9MB0FeeUvIfkHUtbjutMau1bsXRGD7rZ8sDfAqRKndPEjlIVNebXEebR1N
0Ge5sdgQGOjJbYRpeEqnvBYU4vPGM6OydvAhK0VddL5YkK9pEl36lTFzcf2FVbxuZLANivfw
UpaIsy9es8QICx82hUyCbsYtWxVKO2RA3HEGYGrksNbxA0OvMEZU3ZHiCEnyLdU4LpY/NY0F
0xV0JcHA+WlO2XapSoCgWtVZCIrQBKd0ibw7uzQwPqu8skm8QvyTfqDJ+UpwTo1f6dEjam5p
Vl6BA6ZoqFWnamawqmRwimk8kBZLcRVZdXV1NWk2Q9kaJZW0F5YJcF9MxEatErPIgttkRRo4
jtHMTwXrRr/0p7vU3hdGeSU301gqL3swDhSQLApoqaPYODyvVQS0kxUUV8xrmcQX7tSpTKiF
X+/1x3XGKvi8HxAhqBG2Moq8qsXyATuXZmqPYBsmQMjSchv2X8qElonAsEwsq6xinuWLI7+X
rDYvJqI/RFegk0Bh18rzQMYUsRvKI2RzBD/QbizE7WaFaytApS9lUcfaBdFA60OvDCWNcVAL
ZMrENl46n5s03o6iwc0QF4gYHjFbLEGsWLAq87TPf8htjDhuC7BqiQhE5adG6BIZqwNcruAZ
tBNCybe/JPGyfEeYaumojkJUBjci411RYch9GSRruJIFz7Gu0fSswHFb4ETnI8EV4j5IO0PA
tfx2cHp5Ob0Khh7ySUm3lX9O5797tqb/Agb7dobzayIcZ/MpjllqomYzEhOEQXRjZgbAWD65
gggI9HmJCK23pnYQtryAFRT0XZV95Kf3MxXZRZQkmLCGLSZzvBXhZ6NL6Sn9JLQpU48lfo5T
YwXoDGilPqDAO1X0oh500CoPL6fL4cf5tHebqzzwxEHUGXaVP17engjCQoiaSIaGn5KRx+1Q
UCkwLqXypCQPDUXm8u7SHwkuVqcL4jgZ/cZVntP8VWYL/n30Bg9hfx336IFduVi9PJ+eBJif
AtQPifLPp8dv+9MLhct2xZ/x+XB42z8+H0Z3pzO7o8iO/5vuKPjd++OzKNkuuuuaDNWix3h3
fD6+/ktTqjx/zSZA5hJF2ga46uRb9XO0PImvX0+mbWgbDEvG8ZJWQE0uOIyUflDB1OK0hQMF
dIJI3sQEoBTlRho/jO7iKWCuFX3tcc42kd0JR0HS91dzCv0Tzw5u5baA6N/LXpw62t6RsJJV
5EOPbRrbMS/T2e21XRUZnaZHTadz+vlak5TV4vZmShtzahKezudk4A6NbzWAhh4nL80XM7J/
WYVevcQP8L7E3QAQC6krRmK0O6ZBrvR7VUQzPkABeQGLnJSOAF3leWI2Ctac3Sr5Ljlg8rRJ
o0YlXZczLX6KbX389kQuACAOvNtxsCPVRICuOBvPUOYWgMUq/V1fwenx/I0unwH9zeJq7hxa
8KGzNNsVjpP5iB/duxEC2QF3FIw7VCpmk0tH2i8DUuprFm6DWXk32puJ2Nt7R4izS7DEFxxm
Vn4ed/daATaaajY0SEZKairRosmVEdVZW4flQYXdJWUWmjbDZ2KqABROMKgqWBG55OLUdcgt
Vvcj/v5VZbxGiaraDHgr9FbmB2mzhjg7YEEgUWgpQr7LYuc1k0WWSoMBigPGNFCIXYC8DpXF
AS1JmDQDMgVQac8sWcsgEbiCjydkjCUV1tDwRVcSkFcYlqYsFDcGy75Ysk97+gToVBE/7BS4
AEoKYlYOZ7BQfnzdg0Hx6/FyOlOuNKVHDxOSkp2ivddv59MRGR6Lm67MsY+yBjQ+g0JMwcrC
tc82n74eQbPyP9//0f/4v9dv6l+fhksV6zyJrRdqU6gBTluAqONxg1I8r7ajy/lxD4buzm7k
FU5qUKUgSFa5kBk4CygEPOtVJiKs0/TeBAnuq9SBkHLTAxphO+XZB4JvRTntxsXSMMDWnGwB
ozYcZgu+atJl2ZHzgdBTNmGwQaJlh9S8lRHGr0OmXrDa5RMC65csXBojogsqShnuohYcFvVa
Kj8WUhfD8r0EhnHiQsRZZlSC4dDCoRpaEreZBlo15KNCvLgmWmXeLWmTF0ZUBx4OuPZnDNad
fEkeSITOcqQuh19wk1i8Dk9YatwvAFDnpU4prCIlHAXPrg58rEoLxJxGzTYvQ61t7MuJIQ8H
ZzuBSDDTB1yH+TLewhpfhqHNC6ozoByRAh7LDCUgMN1go3BvUNCLnTdRFpT3xUBs2phnecVi
g/ELFYh83JIYyZIbb6/e4Cd3dV5hnSD8BK2tFOWkf1BsBfKVbkOacOuVGf0qrvCWD4gCVmVk
FHgXp1WzoYxTFGZiFRBUOGJIXeUxnzVY5aFgBiiuIeSBMcVBTQY6zjdRCbGiY+N5uIeCv7oQ
V4OqCQdcsylaL9l6YmfEgt/J6b2DvoKbhbosEMlOTLXsJ+4RwqeRGKe8uHeuzeBx/x1rnmMu
94uxWhRIhtim7+WWYgVZH5alRwn8LY2jIm8RuQ/MRmP7ayq+4e3w/u00+kvscGeDw8OFNZUS
tB7w95JI4CbxspFAUKyBoyYzIhFKVLBiSVhije86KjPMrVvMe5UWZpskoD9uaP5G0uy8qqIO
+lW9FPvQx7VoUGOqJAULIeP+RoYWS/1p90F/ssVs45VNTM9syrjSlYvuVVFKE7Wp4QfoWqoE
NVz86DSYn45vp8VifvvH+BMqM4FMS2Ek52RGprcwSG6mN2bpPebGiExs4BZkvgSLBNlWWpj5
IMZ4KjBx17TDh0VEHX8WyWSgwwsc9djCzD5oFxWb0iK5HqzydrDg2ymdh9gk+vVE3E6HJuJ2
djvUrpuZiRGcCCy1ZjHY3PHk100RNGOzXGlZQVc1tldfi6DlN0xB2R9i/MwckBY8tzvXIqjo
exjvrNoWQWVENPo4pVsyHhj+8dyEr3O2aEoCVpswsB8q8xQHQmjBQZRU2OuzhwumpS5zexYk
rsy9ipFOUx3JfcmShCp46UU0XLAza3M4ACzkycQzTSU6VFYz8gUO95iZwYZaXFWXa4gtMbSU
6ipekMgwSZ1rlh/27+fj5adrMwUeeMYNq8I2gCWTQAkOcDmQ81Z/S6mgIfJJFKqiu+HS3G8L
R9ftfROuBOMdqXhORmt4FNQlq+4hFxKXb0ZVyQaUti0tqeRTKOMRDva7SggiFq/KGWGpx1Ze
GUaZaDGw2cBk9ZksMKVF9AFK8OdJYofrc6mkHVBBrt5YCCvA+CuJHTEpkCUlkEWAonMVJQX2
byLRop5q9fnTn29fj69/vr8dzuAJ/sf3w/MPeAUx1016+vYuhDB+eD7sdcS7drlpO9Z+qjy0
d2wsNhSD5ZB3irfzzx+X02gPQQFO55FqBdK8SWIx/ksPG0oa4IkLj7yQBLqkfrIOWLHCg2Zj
3I9WRowrBHRJSxx0qYeRhK4JWNv0wZZ4Q61fF4VLvS4KtwSwHSOawz0HFrqdjgICqJM9D8Hd
yqQ4+0JTCymMq/Q94hDgzqfLeDxZpHXiILI6oYFGhGwNL+RfSouu8MAN39VRHTklyj8hUWSq
MMNlCuFuJQ5HQ8OtMANudxrLWeou7mVSwzue3N67xXW7u7z3y/fD6+W4f7wcvo2i1z3sNshh
8s/x8n3kvb2d9keJCh8vj86uC3BAkbYiAhashLznTa6KPLkfQzxvd+stGRfzRAxTi6LlJ0w0
mVPcjlWM+AfPWMN5NCEGtqsMkf2Xev8jeZqLG/B6wP/bovlvhYm2/ro0IPrvxTXeZkdpzdrV
Fd2xDbHNVx7LJEKp3KW5BNwbb+6q8QNinoOYitjbIiv3sAgq7iy0CGspNCwpt+SG9im9jsbu
Kk58IziSbWnGilav9o9v34f6muJLr70IFNAufmc1ycZvxGdO3eHx6fB2cestg+nErVmBtZLX
2aWApKFiuBLqDBXIanwVstg9BsgrcPAAaBHSlvZ6Rh2XIeXY0CHn1CdMrEqw6SRVeO09loZj
nPkRga+viEIFwjpoCIopmTi83UErb+zUB0CxR3k0pVBwxCik2yCBnkM6E0B/1CxZQ0p70Jo1
/ZII6ks/2K6qHGeS1Zd0FyjBt8Wm7phUyxLSjrpFbYv5+MNzTi7MRi7nJmNqK7hvpMcf300D
r/a8p84FAaXDSSB8t65dVNsKquSs9hklSrX4Mpg5Y+Mn+TZmxO5rEU7EQBs/0FhwBxOSseee
ERrxqw/1NSkumOF97tJONPEH14PHq6FOAW5OtFhAcUMogmuyeQKOPhxuVBi5zKiATZsojIYG
KpZ/CcZkvfIePNoUv90lXsK9j46dlglzR0gjhholQ5+6wLJQNlpOQxRGMhy/HKSW2FgSgyST
QZrUncHKjP3VQrd5bL2ekARDy6lFDzTERDfTLfbQsmiMPrf2tD/Oh7c3JUfbTRfCH3ipDDc9
eciJ+VjMPjwPkwfaab1Hrz7kSh545Tr6l4+v304vo+z95evhPFoeXg9dPHz3iOOsCYqS1CG2
PS/9pXTucjcUYFYUk6UwFBMiMRRHCQgH+IVBjPsILJUKdy6lkTr18tAiVBPcddjhuRbQh3vf
kZY4m6+NJJ805F3HsphaFyvay+U+hQBYLJDvbxD5oy8UIYvaTzQNr32TbDe/um2CCN6jWADm
84VXciztF+uA37QeggNYGThGhZfXcM6W8BhWREqnvolKVT7rLUODw/kCtsFCYn2TPvVvx6fX
x8v7+TDafz/s/z6+PmGnUNBb4UfJkuG3GBfP0SOVxka7CuxO+s463zsUoiMP0efZ1e01eoXM
wZXhnmhM/4qpiutj12oaYhJ9lkFhUk0ft2MznH7CZ1UZgaslarx6csVpl1s7Ol6VWQAvlqU0
XsMzh0mSKBvAZlGlfScdVMyyUPyvhDA2rHLxkDiW5Sm2ZWtRFljGPwaNf5AWu2C1lCYYZRRb
FBAhOQbmQbrEFAkzH6WCJgjE9sebLhhbXEHQKAmI3L+iXVXdmAVMjectEK6Q9RguGDBik0X+
Pf2eb5AMHeKSxCu3QxcH4I2xFiCTHTI5zACHwGC+ljMxAc5m52Vhnpo91KgH8TGcTKbfpbjB
pKtqaRjtABQsrlz4jITvHgCMR1NB4LYlh0mjpaVkQd92moTR/vUa65lWtz20WtUDQpWm4eIU
pIRUjfaDL3b3rOBU/Tg0yweGdgJCJA/Y+d9AzPDWD9lOmuioXZGXRmInj/M8YOJ42ESiZ6Xh
ge5BimxlzmiAZIBKY38C3AhFkEUQ71V59idtMhmMk0EKPOn2hVeM3MbSezgMy6YSzJSxmgGj
DXBy7PeonYsRYJnYDsjKv8bWmARFLSR83JfwDh+TSe6bv/rFjzSEYPCBykweQOOEAGLQsaZR
9A0vLFbewYsJ5eaZFswIe5HL/BpLcWGUaKbqgE/gmDYuvO5EVD4+LCNQhZhdk9/pULWytWvi
pOar1qSoHd1K3FphVOTGGaca0I2Pw0WuD+fXw/Po+2N7c0voj/Px9fL3SHCYo28vh7cnV3Up
L761DC6Dh1RauEL6kkTcdkmnS7kZpLirWVR9nnVDqxkWp4QZ0n5C7ANdfxhZUfvaydQB7o0o
ZMD6H58Pf1yOL5pZeZNd3Cv42e2lCn6smTsHBoZndRAZigeE5eKuo7WliCjcemVMXyzL0IfY
BKyoqNeJKJMKmbQGsXwVYf+3uBTyvbQa/LwY307MxVCI0wWcIkhrolIwuLJYQYN7VWe1jBUt
o35SH0qFbr7N8C5WvTQMqyLIdc7t9ipCwaEBPwTGUalX4YRTNkZ2TQb+tvtc5CrYurkpmo2X
sLDlYq1ZiHOwvt5G3lp6xNIRiGSuHWAPy7u+bATsVK1qVj5f/TvGhqo93WBuONUYMH+LOtNb
FfpuFB6+vj89GXy1HG7B9UJeJKpTgJcnLe3MIEWCnPF8wKy0L6Qx+DkFL3Mxll5jc1MKqewN
abMFntR+S0bp1yVe2kPiS2wTtYMjzsVEzJNbaYsZ7IpaBrWOpGJ9vaEMK7sjV9OopMf2UAyA
lRuZ2OCMGCG9yuCiJbPj9B2WrQZz0zjJt25BBnqoJNmPtcexcU/7sytPApQURU6cwuc12CtT
LK7CsyxRoZV6y0spYALyoxFeBzlWdgXqfvQyAZah6v+/smtrsdsGwn9lH1sISzYJpX3ogy86
x2aPjx1f4t2+mBCWUkrTQBJo/33nG8m2Rhr50IeFs57RXXOVZkR7VSiawD9gq0OFaKvoDAdE
dHf5+9Of379Yrl99/Py7iDjDK1gwYSa8wTnSLlYTteDGiMNiNsYikJaiEXf3PSytLq/LAC4V
go/GbNBfx5rfLxzyX7b69fYO+RKIpJZWv0Ev4GCGkxFJiOqCB0Hru3/md0Xia8X8ObqyLMpY
WjPXUmfzaOnRmM6qRdZsxjnmxuXufvj65Y/PONv8+urur+/fXv55oR8v3z7d39//6KW+a9ck
o2dWcMLkZF1PpOHFDfjFMICIq8FAHc2TyEFmN9Qepi6pXEefZwshdtbOfMsnbGkeTBMV444F
2jG+laaLSd8BkvxuzeJ2ManSmDN2jTnFUOfY3Cnau0gtnLoRsY83MkAt9RI5kgl69i0DbBEG
7t9YptP4kQWWbBHaSNayVbi9lTHJwdOf8vqFG3rq3SLHm+tbGENaXnL0Ry0SMVpAQXqiQRaQ
yxZb2xeTKtd50xLQm0Nv9j0Dspg4vDeSwgDcWDCgQADRKlwuG+W/eQgqwfKoEwGoeT/ESceD
qSK2ZZWrPqVWoRcuo4a1OddwVc8udZO6mL7He/QcOynCvrpGRxK3bjlBoo6nXfSbrlbjDBsV
0T7Q9zaQTj40pGvxHKQUWnVqeJV3Sog5GBJYM0hceKT9sXXvGHrus67ScVbz6BQQoQJc5nqs
YN6GSpkDN0U7XUdCgD0doCAehPcYMFk3jyqB0/85+Fi42mzVITspJC9m8zafTid/kDYbIPAF
88fuIi3HxdpHU9P1xjTdCMtf7XFU3+oYDStyiPGSbvO9byO5lrp83/vFA9N5NYFJgzkdVWQF
9AFCNdOWVRBE99dllYE4XGYZrqTVBvlkHUaOhPjVmu6Qdvc1CHiz3/EgHlhB6QqYhC3BWkay
p49UXW7cdHk+Gf1z8HVfHDfeMSOG2qX4adPUbUBH6waQ/jicKHjJencDca0gakFOL+/HJSeW
UjVZr+uKHjn8D8wbI/Q2IDtcAr+o7bv5gFdVsi5IArpOhZ3dKM01JF5dGn4a7uHtL+/YmwjD
SRcscEKSkI5Ezzom4hd1Y+eR59+eZ0qDhE92htTbL4yShNp9xeYJrlsn1yvf2TppRWm8Pmcn
cBLO7gxM7DEaqQKQpYnls9rgT+/UQxAeb2WeyqlJJL7jCbFuROuoTaQRYGOPEMdWC6tk8HZc
Jkvl9dhkB60TnMT2Rb+bwRjTVB9ANSNZYvQ4xeWAhDQOUNLQutSy6toN9+hd17XdhezneAX5
Pe9EwhY+q6PB36Bk9wBI3yCz5cEacnTmwRymnKluB3AUg4srkSWFMyTdQGOagsSLvtAETFMT
e4wWdjuRYtBPUSD3LhcyZGVKOlasO+RcitTU+P/IQTHlcG8wyde/GRgpwjea3/BvkOYJj349
sHk3+xd9pIEU6wsm6y/Pq697GrwzB1xqcVYOO8T99HJ+qURdZX4WhqEAmpN20S7sy/JUykvG
nKJ1TPIRqnXpzuOSRHBWg8Y8ynYi0lzjMoISiN7FeYhSzh4vBfHxvBF2mbtPuhgJju6QekQ7
OdlqX8Xhc2eW108/v979JyGMVv1Bh1my+/WNDmU16a0nEFYomjvqEzf5r1IwJvMYB62qdq6z
evwu7uNy5jcfz2R91sh7nF12YDHiqa0GxMVOxFQeB9sAmwwH8GtTq6sWLC87/6VZustTThIK
uXnQ5+k62+w0rXqsvIHDo4n/AOUsmWeBhwEA

--h31gzZEtNLTqOjlF--
