Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMEV3L6QKGQE2TNQSRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 503F42B95D2
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 16:09:38 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id x3sf3949259plr.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Nov 2020 07:09:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605798577; cv=pass;
        d=google.com; s=arc-20160816;
        b=VfmHOxHYS/7zauFfXjWWvRqhGbB8H57sDqxHDzbIEyjoNoXTuyAkZoCg0uMA/Ov/Zk
         VsQpJkbM9vxLGFVwaoGlj3JwSqA45JmRBie5jtDD4tIMEwELkAasQrfcbWseBDrmt7OT
         0mCSxBfoI9zFU/stOayH6g0JA+1cLQgvWObfauk2Ex6a8TREt2inL29kQM949XrCvPxc
         18yeMUaldhfNbhx4gMgN2taWIG99yQiWfAwXIrQ4Ei968Y5Xtr7lZ97RW/Gf+NEp+WzH
         o7pIRlKybAB2g8lQzVHZbGTqyQm2sKbjC3c7ilY1BzaU6yTX2Os9+Oena62YvhG7oIq3
         iJtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=yOC0ul8hY244xeWdwK/dxeEvDpfd12BFMkF6MysIc2I=;
        b=dP4B3MquUwHu0wQyH/+JQhUt9GWfWAebWoQrkqFox+AVcO/p6cU8YePE7/q/9xsnrA
         nBAg61eyz9b15kNlayOkN7hunzT4nDBL2nwFfSJJlMfcjV/uPLFpP6RjeDp/nVIpP13N
         B9LJukbhhIav57UPELy305wMhl59OkEdd1t+1VWN5D2so9dxbkrk4A8b2jgncqIGt5VM
         2xSpppbDbOUZHc53ymImA9UgT8dfYv00+Wp8iVYJ4FlfAnATxBFBDiNFZPzu6XW9glIx
         6AQxRoGgT6cDD3RELwmEZf4XxJBNeC0LJrQBmyevfgJ3r+5fv+D0aeAJLAk9QldMbiR5
         zPng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yOC0ul8hY244xeWdwK/dxeEvDpfd12BFMkF6MysIc2I=;
        b=T3k+Ct90NkkkRv7Q/tFn3m5vJk/9xx90QTlApXwBz5WePxNSluEynQ02VCZlJ51mE+
         srI3axyJZtnihQa4axpMMGjuduJdKjjdCe0dA9a8kTcza2MZrABbHKvJUUhqZTCHlH6u
         YZ8fS8GXgR8dJeEiBSVmw5l/ZN1jX1lWzozsOID6vk6KRyTSb4b3GztFcwalIHq6fJkg
         3OelW9r/PJzRsmvhcyYDHwFT7kSMoPyT36oc84KxFXKEleDSNNOn0Qz5VEiA1gZDQ2C8
         iuEq8P7sTI/AYQr0svdJq+LU6KERRo5WXxL8+IKK0cZ3mBjwlYsIu2bcRY7IZCkpx36V
         Ldrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yOC0ul8hY244xeWdwK/dxeEvDpfd12BFMkF6MysIc2I=;
        b=hqVrX+XBYRb4WOT/QI7EoHSgI32AhSndenpVBlx5Bsd/M9qSV10GjSFl+clBbabD5m
         a5RAdHQJBLj8KJfAVJ0hCVA7pn5asIGftYAUdSBDvECwO+mIgdkuZH2mysDqtRqI4yGz
         33Z68+/qkSnW6XgAA3sC1533ATPLXMrGYO8/FhD1Kju4fuiOxZF1d0VNBaZ8sTm3VJ3Y
         8doUFl4OeHZIiScm4OGJclkP1X+wSG3qprU6mErL2IPIgQeYjqNTLtFG7J5yeox84AuZ
         BDnGdWWWeVA8xo5L5dey4NlMn7uUfI+uR16f8i1TJakw0NpgltMLNAprRuSrryhEDOUw
         Envw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xGV6blVqGDoG0/k9hLhxCWQoYlZs/Y6CfQt4UL2t1SLW3x0PV
	tAqWSIUgNDRaWMwnQBBOcfs=
X-Google-Smtp-Source: ABdhPJzj5K8iRYfOFGD/5f4f0MAuP26zBqDT8EuktYrM6QteGpiMKVzXUPukR3ycweDA1YkbR+/Sjg==
X-Received: by 2002:a63:cd50:: with SMTP id a16mr8842417pgj.219.1605798576842;
        Thu, 19 Nov 2020 07:09:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b82:: with SMTP id y2ls1629045plp.5.gmail; Thu, 19
 Nov 2020 07:09:36 -0800 (PST)
X-Received: by 2002:a17:90a:e510:: with SMTP id t16mr5218338pjy.234.1605798576123;
        Thu, 19 Nov 2020 07:09:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605798576; cv=none;
        d=google.com; s=arc-20160816;
        b=XxRBGf4XT/rvS7Q1OBhMf1mkWwgPsrXIVwKrkceiTH/bg5r1VOweX9Bem2JBN1vli/
         VXUhrm3CRv5/saf82CR+9Pgd2pEiQjC/r1aE5ZN05DXsf2Eik+/POdRI+PtgnVzAKkdX
         PrarR2dMoFFs369bP019lGHWoF7/kptkzQeUGhAAQNM4Qn0Cq41CkE48kmgQm6u258pk
         L+56hSXoVrdPC6HsXZeYF8wOGJ1TcVNlZ5MWXSIsumMTlv67eiACUQM+0XhLGu12Hc2p
         CRckKa3/r6cmg4pWFxgh9savan4O/wnN2tjwgRn1iRDfZIYuEjt22AIIfU33FcUYQlJR
         U6Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=J7A05gNd1bmKcLIfkE1GFJTHb0shj+MkCokO0OmUSjA=;
        b=vjO4ZKIYjDa9l8PapR/0uRX0SK92Gc+cmNgT2Y+To6Lh239X9LCcQOuET/oeQOB/fZ
         qpoGu41lKu/NvK4tnqid8xxQrpgtxPfjhoN5rjQpyznb9Q8LYNe3ngxQ1/rue0vXLIRg
         fQR5rvr9Ht1+ZuQz1N16XiJW28opDN3ora6WNBL6T79JcqOMmiz0NGDb9VLkJdSGBLY9
         rz/WlJ+YAxrJVRwch2XuKR/HGWxigv6Bjxhcj86NO4uLncmRnX4Uf6wTB/In7bwacdw6
         YtIH2liq7RdhbEnc0KB0K0crqv/ZrC8i644hy1jMn9cCT98bU52dIB0LFRLbLrhm7qfZ
         YKcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id u133si13672pfc.0.2020.11.19.07.09.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Nov 2020 07:09:36 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: sNRTKmVDOCtgxxjmUHnjVTaC9vp7ED7FWHZVSBfQwabX62XE9hrsiNW3ARWw7REXn5A14ysD/g
 goq0TtWlrjwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="170519749"
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; 
   d="gz'50?scan'50,208,50";a="170519749"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Nov 2020 07:09:34 -0800
IronPort-SDR: 4ETpjNafH5LF7L4kPIaYsrWFMQ3JrsUITyntyG68L+yDrDd7adZUUjK7n0Ka7zn9anPO6OM5Yn
 mH/7mewoGBEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,490,1596524400"; 
   d="gz'50?scan'50,208,50";a="330961178"
Received: from lkp-server01.sh.intel.com (HELO 1b817e3f8ad2) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 19 Nov 2020 07:09:32 -0800
Received: from kbuild by 1b817e3f8ad2 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kflYx-00004X-UJ; Thu, 19 Nov 2020 15:09:31 +0000
Date: Thu, 19 Nov 2020 23:09:31 +0800
From: kernel test robot <lkp@intel.com>
To: Wendy Liang <wendy.liang@xilinx.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2 3/9] misc: xilinx-ai-engine: Implement AI engine
 cleanup sequence
Message-ID: <202011192350.4R8DhExA-lkp@intel.com>
References: <1605743289-26575-4-git-send-email-wendy.liang@xilinx.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline
In-Reply-To: <1605743289-26575-4-git-send-email-wendy.liang@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Wendy,

I love your patch! Yet something to improve:

[auto build test ERROR on char-misc/char-misc-testing]
[also build test ERROR on robh/for-next soc/for-next linus/master v5.10-rc4 next-20201119]
[cannot apply to xlnx/master]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Wendy-Liang/Xilinx-AI-engine-kernel-driver/20201119-074938
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git 93c69b2d17372463ae33b79b3002c22a208945b3
config: arm64-randconfig-r005-20201119 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2613fb2f0f53691dd0211895afbb9413457fca7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/56558096e393a45b91b5cf57ac87396d15822987
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Wendy-Liang/Xilinx-AI-engine-kernel-driver/20201119-074938
        git checkout 56558096e393a45b91b5cf57ac87396d15822987
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/misc/xilinx-ai-engine/ai-engine-aie.c:9:
>> include/linux/firmware/xlnx-zynqmp.h:363:9: error: implicit declaration of function 'ERR_PTR' [-Werror,-Wimplicit-function-declaration]
           return ERR_PTR(-ENODEV);
                  ^
>> include/linux/firmware/xlnx-zynqmp.h:363:18: error: use of undeclared identifier 'ENODEV'
           return ERR_PTR(-ENODEV);
                           ^
   include/linux/firmware/xlnx-zynqmp.h:367:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:371:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:376:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:380:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:384:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:388:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:392:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:396:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:400:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:404:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:408:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:412:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:416:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:420:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:424:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:428:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   include/linux/firmware/xlnx-zynqmp.h:432:10: error: use of undeclared identifier 'ENODEV'
           return -ENODEV;
                   ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   20 errors generated.

vim +/ERR_PTR +363 include/linux/firmware/xlnx-zynqmp.h

59ecdd778879f1 Rajan Vaja  2018-09-12  316  
76582671eb5d00 Rajan Vaja  2018-09-12  317  
e178df31cf41ba Jolly Shah  2019-01-29  318  int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
e178df31cf41ba Jolly Shah  2019-01-29  319  			u32 arg2, u32 arg3, u32 *ret_payload);
e178df31cf41ba Jolly Shah  2019-01-29  320  
dceeb0f0e61071 Tejas Patel 2020-01-09  321  #if IS_REACHABLE(CONFIG_ZYNQMP_FIRMWARE)
b9b3a8be28b31a Rajan Vaja  2020-04-24  322  int zynqmp_pm_get_api_version(u32 *version);
21cd93bab92b28 Rajan Vaja  2020-04-24  323  int zynqmp_pm_get_chipid(u32 *idcode, u32 *version);
6366c1bac3149c Rajan Vaja  2020-04-24  324  int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out);
3637e84cd2e910 Rajan Vaja  2020-04-24  325  int zynqmp_pm_clock_enable(u32 clock_id);
f5ccd54b67b3f0 Rajan Vaja  2020-04-24  326  int zynqmp_pm_clock_disable(u32 clock_id);
5e76731dd370ca Rajan Vaja  2020-04-24  327  int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state);
fc9fb8fb985c09 Rajan Vaja  2020-04-24  328  int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider);
0667a8d144bc83 Rajan Vaja  2020-04-24  329  int zynqmp_pm_clock_getdivider(u32 clock_id, u32 *divider);
7a1e10621a215d Rajan Vaja  2020-04-24  330  int zynqmp_pm_clock_setrate(u32 clock_id, u64 rate);
7a1e10621a215d Rajan Vaja  2020-04-24  331  int zynqmp_pm_clock_getrate(u32 clock_id, u64 *rate);
70c0d36462ca5b Rajan Vaja  2020-04-24  332  int zynqmp_pm_clock_setparent(u32 clock_id, u32 parent_id);
70c0d36462ca5b Rajan Vaja  2020-04-24  333  int zynqmp_pm_clock_getparent(u32 clock_id, u32 *parent_id);
426c8d85df7a7b Rajan Vaja  2020-04-24  334  int zynqmp_pm_set_pll_frac_mode(u32 clk_id, u32 mode);
426c8d85df7a7b Rajan Vaja  2020-04-24  335  int zynqmp_pm_get_pll_frac_mode(u32 clk_id, u32 *mode);
426c8d85df7a7b Rajan Vaja  2020-04-24  336  int zynqmp_pm_set_pll_frac_data(u32 clk_id, u32 data);
426c8d85df7a7b Rajan Vaja  2020-04-24  337  int zynqmp_pm_get_pll_frac_data(u32 clk_id, u32 *data);
426c8d85df7a7b Rajan Vaja  2020-04-24  338  int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value);
426c8d85df7a7b Rajan Vaja  2020-04-24  339  int zynqmp_pm_sd_dll_reset(u32 node_id, u32 type);
cf23ec35314623 Rajan Vaja  2020-04-24  340  int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
cf23ec35314623 Rajan Vaja  2020-04-24  341  			   const enum zynqmp_pm_reset_action assert_flag);
1b413581fe2640 Rajan Vaja  2020-04-24  342  int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset, u32 *status);
9474da950d1e39 Rajan Vaja  2020-04-24  343  int zynqmp_pm_init_finalize(void);
951d0a97e41caf Rajan Vaja  2020-04-24  344  int zynqmp_pm_set_suspend_mode(u32 mode);
bf8b27ed2324b5 Rajan Vaja  2020-04-24  345  int zynqmp_pm_request_node(const u32 node, const u32 capabilities,
bf8b27ed2324b5 Rajan Vaja  2020-04-24  346  			   const u32 qos, const enum zynqmp_pm_request_ack ack);
07fb1a4619fcb3 Rajan Vaja  2020-04-24  347  int zynqmp_pm_release_node(const u32 node);
cbbbda71fe37fe Rajan Vaja  2020-04-24  348  int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
cbbbda71fe37fe Rajan Vaja  2020-04-24  349  			      const u32 qos,
cbbbda71fe37fe Rajan Vaja  2020-04-24  350  			      const enum zynqmp_pm_request_ack ack);
bc86f9c546160a Rajan Vaja  2020-04-24  351  int zynqmp_pm_aes_engine(const u64 address, u32 *out);
4db8180ffe7c07 Rajan Vaja  2020-04-24  352  int zynqmp_pm_fpga_load(const u64 address, const u32 size, const u32 flags);
4db8180ffe7c07 Rajan Vaja  2020-04-24  353  int zynqmp_pm_fpga_get_status(u32 *value);
4f680b72ea07a3 Rajan Vaja  2020-04-24  354  int zynqmp_pm_write_ggs(u32 index, u32 value);
4f680b72ea07a3 Rajan Vaja  2020-04-24  355  int zynqmp_pm_read_ggs(u32 index, u32 *value);
4f680b72ea07a3 Rajan Vaja  2020-04-24  356  int zynqmp_pm_write_pggs(u32 index, u32 value);
4f680b72ea07a3 Rajan Vaja  2020-04-24  357  int zynqmp_pm_read_pggs(u32 index, u32 *value);
fdd2ed88ca9713 Rajan Vaja  2020-04-24  358  int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype);
a2cc220a9a9227 Rajan Vaja  2020-04-24  359  int zynqmp_pm_set_boot_health_status(u32 value);
76582671eb5d00 Rajan Vaja  2018-09-12  360  #else
76582671eb5d00 Rajan Vaja  2018-09-12  361  static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
76582671eb5d00 Rajan Vaja  2018-09-12  362  {
3d0313786470ac Rajan Vaja  2019-03-04 @363  	return ERR_PTR(-ENODEV);
76582671eb5d00 Rajan Vaja  2018-09-12  364  }
b9b3a8be28b31a Rajan Vaja  2020-04-24  365  static inline int zynqmp_pm_get_api_version(u32 *version)
b9b3a8be28b31a Rajan Vaja  2020-04-24  366  {
b9b3a8be28b31a Rajan Vaja  2020-04-24  367  	return -ENODEV;
b9b3a8be28b31a Rajan Vaja  2020-04-24  368  }
21cd93bab92b28 Rajan Vaja  2020-04-24  369  static inline int zynqmp_pm_get_chipid(u32 *idcode, u32 *version)
21cd93bab92b28 Rajan Vaja  2020-04-24  370  {
21cd93bab92b28 Rajan Vaja  2020-04-24  371  	return -ENODEV;
21cd93bab92b28 Rajan Vaja  2020-04-24  372  }
6366c1bac3149c Rajan Vaja  2020-04-24  373  static inline int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata,
6366c1bac3149c Rajan Vaja  2020-04-24  374  				       u32 *out)
6366c1bac3149c Rajan Vaja  2020-04-24  375  {
6366c1bac3149c Rajan Vaja  2020-04-24  376  	return -ENODEV;
6366c1bac3149c Rajan Vaja  2020-04-24  377  }
3637e84cd2e910 Rajan Vaja  2020-04-24  378  static inline int zynqmp_pm_clock_enable(u32 clock_id)
3637e84cd2e910 Rajan Vaja  2020-04-24  379  {
3637e84cd2e910 Rajan Vaja  2020-04-24  380  	return -ENODEV;
3637e84cd2e910 Rajan Vaja  2020-04-24  381  }
f5ccd54b67b3f0 Rajan Vaja  2020-04-24  382  static inline int zynqmp_pm_clock_disable(u32 clock_id)
f5ccd54b67b3f0 Rajan Vaja  2020-04-24  383  {
f5ccd54b67b3f0 Rajan Vaja  2020-04-24  384  	return -ENODEV;
f5ccd54b67b3f0 Rajan Vaja  2020-04-24  385  }
5e76731dd370ca Rajan Vaja  2020-04-24  386  static inline int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state)
5e76731dd370ca Rajan Vaja  2020-04-24  387  {
5e76731dd370ca Rajan Vaja  2020-04-24  388  	return -ENODEV;
5e76731dd370ca Rajan Vaja  2020-04-24  389  }
fc9fb8fb985c09 Rajan Vaja  2020-04-24  390  static inline int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider)
fc9fb8fb985c09 Rajan Vaja  2020-04-24  391  {
fc9fb8fb985c09 Rajan Vaja  2020-04-24  392  	return -ENODEV;
fc9fb8fb985c09 Rajan Vaja  2020-04-24  393  }
0667a8d144bc83 Rajan Vaja  2020-04-24  394  static inline int zynqmp_pm_clock_getdivider(u32 clock_id, u32 *divider)
0667a8d144bc83 Rajan Vaja  2020-04-24  395  {
0667a8d144bc83 Rajan Vaja  2020-04-24  396  	return -ENODEV;
0667a8d144bc83 Rajan Vaja  2020-04-24  397  }
7a1e10621a215d Rajan Vaja  2020-04-24  398  static inline int zynqmp_pm_clock_setrate(u32 clock_id, u64 rate)
7a1e10621a215d Rajan Vaja  2020-04-24  399  {
7a1e10621a215d Rajan Vaja  2020-04-24  400  	return -ENODEV;
7a1e10621a215d Rajan Vaja  2020-04-24  401  }
7a1e10621a215d Rajan Vaja  2020-04-24  402  static inline int zynqmp_pm_clock_getrate(u32 clock_id, u64 *rate)
7a1e10621a215d Rajan Vaja  2020-04-24  403  {
7a1e10621a215d Rajan Vaja  2020-04-24  404  	return -ENODEV;
7a1e10621a215d Rajan Vaja  2020-04-24  405  }
70c0d36462ca5b Rajan Vaja  2020-04-24  406  static inline int zynqmp_pm_clock_setparent(u32 clock_id, u32 parent_id)
70c0d36462ca5b Rajan Vaja  2020-04-24  407  {
70c0d36462ca5b Rajan Vaja  2020-04-24  408  	return -ENODEV;
70c0d36462ca5b Rajan Vaja  2020-04-24  409  }
70c0d36462ca5b Rajan Vaja  2020-04-24  410  static inline int zynqmp_pm_clock_getparent(u32 clock_id, u32 *parent_id)
70c0d36462ca5b Rajan Vaja  2020-04-24  411  {
70c0d36462ca5b Rajan Vaja  2020-04-24  412  	return -ENODEV;
70c0d36462ca5b Rajan Vaja  2020-04-24  413  }
426c8d85df7a7b Rajan Vaja  2020-04-24  414  static inline int zynqmp_pm_set_pll_frac_mode(u32 clk_id, u32 mode)
426c8d85df7a7b Rajan Vaja  2020-04-24  415  {
426c8d85df7a7b Rajan Vaja  2020-04-24  416  	return -ENODEV;
426c8d85df7a7b Rajan Vaja  2020-04-24  417  }
426c8d85df7a7b Rajan Vaja  2020-04-24  418  static inline int zynqmp_pm_get_pll_frac_mode(u32 clk_id, u32 *mode)
426c8d85df7a7b Rajan Vaja  2020-04-24  419  {
426c8d85df7a7b Rajan Vaja  2020-04-24  420  	return -ENODEV;
426c8d85df7a7b Rajan Vaja  2020-04-24  421  }
426c8d85df7a7b Rajan Vaja  2020-04-24  422  static inline int zynqmp_pm_set_pll_frac_data(u32 clk_id, u32 data)
426c8d85df7a7b Rajan Vaja  2020-04-24  423  {
426c8d85df7a7b Rajan Vaja  2020-04-24  424  	return -ENODEV;
426c8d85df7a7b Rajan Vaja  2020-04-24  425  }
426c8d85df7a7b Rajan Vaja  2020-04-24  426  static inline int zynqmp_pm_get_pll_frac_data(u32 clk_id, u32 *data)
426c8d85df7a7b Rajan Vaja  2020-04-24  427  {
426c8d85df7a7b Rajan Vaja  2020-04-24  428  	return -ENODEV;
426c8d85df7a7b Rajan Vaja  2020-04-24  429  }
426c8d85df7a7b Rajan Vaja  2020-04-24  430  static inline int zynqmp_pm_set_sd_tapdelay(u32 node_id, u32 type, u32 value)
426c8d85df7a7b Rajan Vaja  2020-04-24  431  {
426c8d85df7a7b Rajan Vaja  2020-04-24  432  	return -ENODEV;
426c8d85df7a7b Rajan Vaja  2020-04-24  433  }
426c8d85df7a7b Rajan Vaja  2020-04-24  434  static inline int zynqmp_pm_sd_dll_reset(u32 node_id, u32 type)
426c8d85df7a7b Rajan Vaja  2020-04-24  435  {
426c8d85df7a7b Rajan Vaja  2020-04-24  436  	return -ENODEV;
426c8d85df7a7b Rajan Vaja  2020-04-24  437  }
cf23ec35314623 Rajan Vaja  2020-04-24  438  static inline int zynqmp_pm_reset_assert(const enum zynqmp_pm_reset reset,
cf23ec35314623 Rajan Vaja  2020-04-24  439  			   const enum zynqmp_pm_reset_action assert_flag)
cf23ec35314623 Rajan Vaja  2020-04-24  440  {
cf23ec35314623 Rajan Vaja  2020-04-24  441  	return -ENODEV;
cf23ec35314623 Rajan Vaja  2020-04-24  442  }
1b413581fe2640 Rajan Vaja  2020-04-24  443  static inline int zynqmp_pm_reset_get_status(const enum zynqmp_pm_reset reset,
1b413581fe2640 Rajan Vaja  2020-04-24  444  					     u32 *status)
1b413581fe2640 Rajan Vaja  2020-04-24  445  {
1b413581fe2640 Rajan Vaja  2020-04-24  446  	return -ENODEV;
1b413581fe2640 Rajan Vaja  2020-04-24  447  }
9474da950d1e39 Rajan Vaja  2020-04-24  448  static inline int zynqmp_pm_init_finalize(void)
9474da950d1e39 Rajan Vaja  2020-04-24  449  {
9474da950d1e39 Rajan Vaja  2020-04-24  450  	return -ENODEV;
9474da950d1e39 Rajan Vaja  2020-04-24  451  }
951d0a97e41caf Rajan Vaja  2020-04-24  452  static inline int zynqmp_pm_set_suspend_mode(u32 mode)
951d0a97e41caf Rajan Vaja  2020-04-24  453  {
951d0a97e41caf Rajan Vaja  2020-04-24  454  	return -ENODEV;
951d0a97e41caf Rajan Vaja  2020-04-24  455  }
bf8b27ed2324b5 Rajan Vaja  2020-04-24  456  static inline int zynqmp_pm_request_node(const u32 node, const u32 capabilities,
bf8b27ed2324b5 Rajan Vaja  2020-04-24  457  					 const u32 qos,
bf8b27ed2324b5 Rajan Vaja  2020-04-24  458  					 const enum zynqmp_pm_request_ack ack)
bf8b27ed2324b5 Rajan Vaja  2020-04-24  459  {
bf8b27ed2324b5 Rajan Vaja  2020-04-24  460  	return -ENODEV;
bf8b27ed2324b5 Rajan Vaja  2020-04-24  461  }
07fb1a4619fcb3 Rajan Vaja  2020-04-24  462  static inline int zynqmp_pm_release_node(const u32 node)
07fb1a4619fcb3 Rajan Vaja  2020-04-24  463  {
07fb1a4619fcb3 Rajan Vaja  2020-04-24  464  	return -ENODEV;
07fb1a4619fcb3 Rajan Vaja  2020-04-24  465  }
cbbbda71fe37fe Rajan Vaja  2020-04-24  466  static inline int zynqmp_pm_set_requirement(const u32 node,
cbbbda71fe37fe Rajan Vaja  2020-04-24  467  					const u32 capabilities,
cbbbda71fe37fe Rajan Vaja  2020-04-24  468  					const u32 qos,
cbbbda71fe37fe Rajan Vaja  2020-04-24  469  					const enum zynqmp_pm_request_ack ack)
cbbbda71fe37fe Rajan Vaja  2020-04-24  470  {
cbbbda71fe37fe Rajan Vaja  2020-04-24  471  	return -ENODEV;
cbbbda71fe37fe Rajan Vaja  2020-04-24  472  }
bc86f9c546160a Rajan Vaja  2020-04-24  473  static inline int zynqmp_pm_aes_engine(const u64 address, u32 *out)
bc86f9c546160a Rajan Vaja  2020-04-24  474  {
bc86f9c546160a Rajan Vaja  2020-04-24  475  	return -ENODEV;
bc86f9c546160a Rajan Vaja  2020-04-24  476  }
4db8180ffe7c07 Rajan Vaja  2020-04-24  477  static inline int zynqmp_pm_fpga_load(const u64 address, const u32 size,
4db8180ffe7c07 Rajan Vaja  2020-04-24  478  				      const u32 flags)
4db8180ffe7c07 Rajan Vaja  2020-04-24  479  {
4db8180ffe7c07 Rajan Vaja  2020-04-24  480  	return -ENODEV;
4db8180ffe7c07 Rajan Vaja  2020-04-24  481  }
4db8180ffe7c07 Rajan Vaja  2020-04-24  482  static inline int zynqmp_pm_fpga_get_status(u32 *value)
4db8180ffe7c07 Rajan Vaja  2020-04-24  483  {
4db8180ffe7c07 Rajan Vaja  2020-04-24  484  	return -ENODEV;
4db8180ffe7c07 Rajan Vaja  2020-04-24  485  }
4f680b72ea07a3 Rajan Vaja  2020-04-24  486  static inline int zynqmp_pm_write_ggs(u32 index, u32 value)
4f680b72ea07a3 Rajan Vaja  2020-04-24  487  {
4f680b72ea07a3 Rajan Vaja  2020-04-24  488  	return -ENODEV;
4f680b72ea07a3 Rajan Vaja  2020-04-24  489  }
4f680b72ea07a3 Rajan Vaja  2020-04-24  490  static inline int zynqmp_pm_read_ggs(u32 index, u32 *value)
4f680b72ea07a3 Rajan Vaja  2020-04-24  491  {
4f680b72ea07a3 Rajan Vaja  2020-04-24  492  	return -ENODEV;
4f680b72ea07a3 Rajan Vaja  2020-04-24  493  }
4f680b72ea07a3 Rajan Vaja  2020-04-24  494  static inline int zynqmp_pm_write_pggs(u32 index, u32 value)
4f680b72ea07a3 Rajan Vaja  2020-04-24  495  {
4f680b72ea07a3 Rajan Vaja  2020-04-24  496  	return -ENODEV;
4f680b72ea07a3 Rajan Vaja  2020-04-24  497  }
4f680b72ea07a3 Rajan Vaja  2020-04-24  498  static inline int zynqmp_pm_read_pggs(u32 index, u32 *value)
4f680b72ea07a3 Rajan Vaja  2020-04-24  499  {
4f680b72ea07a3 Rajan Vaja  2020-04-24  500  	return -ENODEV;
4f680b72ea07a3 Rajan Vaja  2020-04-24  501  }
fdd2ed88ca9713 Rajan Vaja  2020-04-24  502  static inline int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype)
fdd2ed88ca9713 Rajan Vaja  2020-04-24  503  {
fdd2ed88ca9713 Rajan Vaja  2020-04-24  504  	return -ENODEV;
fdd2ed88ca9713 Rajan Vaja  2020-04-24  505  }
a2cc220a9a9227 Rajan Vaja  2020-04-24  506  static inline int zynqmp_pm_set_boot_health_status(u32 value)
a2cc220a9a9227 Rajan Vaja  2020-04-24  507  {
a2cc220a9a9227 Rajan Vaja  2020-04-24  508  	return -ENODEV;
a2cc220a9a9227 Rajan Vaja  2020-04-24  509  }
76582671eb5d00 Rajan Vaja  2018-09-12  510  #endif
76582671eb5d00 Rajan Vaja  2018-09-12  511  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011192350.4R8DhExA-lkp%40intel.com.

--VS++wcV0S1rZb1Fb
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
wLgalKS5iBXjrZia2uu6/wWOAJb6ThYCAA==

--VS++wcV0S1rZb1Fb--
