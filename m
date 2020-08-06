Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPVBV34QKGQEEXCKWBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 4721A23D657
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 07:10:24 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id z8sf9920702vsj.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Aug 2020 22:10:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596690623; cv=pass;
        d=google.com; s=arc-20160816;
        b=CmcSPYbgs7Tr8XfyHVzU902s03bmwW18kMc+53JHe1Iw3OReSW+fMfduQTFqQuqXDq
         acNR50z3MhuuMGZANWfPpdYf8XTiQK/ZjAFxohLquKLEnFH6j7svJW5q4CB8HF5fZ5UB
         9O5zxL8Og+t4dkYfh+8jBGIvKl1nwrfBXN59xV3mPerlMOw8HNB6SIlLHVDnuGIkLWLk
         QZdMKGxpw9H5OH9VvYqQzB1iscdfHqGgQYyPhtn1cuxSYZGEvaZ9kliYEagY/q8i9Fwx
         8il+M21zOohNqt2YPt8B1Zjxh/T0oxsu/CyLA63aJbemKsIxupHc3tGdwUzGYgKxrYV/
         1cxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=7DfBGU+FBzz6YQJTwLYuwyY2zuupq1ttpW7OnNUTbAw=;
        b=JAeNaJQcYRD9V9XNKvZNSAJL4VLFthvIpFPMi8F5JzMODc1NQoGivUhLPJ3+iH5ZxU
         13JQun/+aQ+Wh1F5aF5wlPtIuCZgWLSUEL1gC87/0DmtDc/C3V/fJJLkQvDVH1PLuehi
         MDC3/Ryhq4ahT3cDtC+PMt5pWh5e2SvqqRlXNFwdiWjxNQAnlU3XcJy/Gr2ULL8tS6gv
         P6j9kJ4kVoVj6MSWUTplZkwuGz6hPf24I3VkvPd1LSKEtzCIPx85zWAcmFkiYHaH3OC9
         IZYIfbvl37Uy9MkGhZqQ4XAxX9WlvP/xEo+5CsGlyoEyGa/97QVWnzNS0US5XGFUr1Zj
         4gpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7DfBGU+FBzz6YQJTwLYuwyY2zuupq1ttpW7OnNUTbAw=;
        b=NWrUz97UO7oaboS1ZLp8eDwolDCEQZv7GjsmIFMKNOXQkuwm9WokO6lh9lbHljDXcD
         OlEuIshPQ/LFGZun3ZGgnevj+Yg9OxuXcBtyI99p6tGmsJU6e/KZxY2Mt+ip9qjefHHU
         3VtW3TKNOqjjvpeh611iWCEUMBjj+ShKWOtgVSK3OkRJenMbnboXadylhCfqRXArhKVM
         k0w+44qEEsc09qalAkzELmhR13OHl8hha7Xr1EgSCD09cKUOdRgcKfdSwk3yv7mxS5AI
         dQesFFTrYDyei+iC8pTBcmWrFQfSOhVH/EzZGx0xYfOK8OIGD0NILmKkD0qsKJz8fQ5A
         H/cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7DfBGU+FBzz6YQJTwLYuwyY2zuupq1ttpW7OnNUTbAw=;
        b=AzXjeed9aPxci7Dv5Uy8Pz7G8sbqCDMW6KLXetzDQ/IV/6DIVX/jnqlRBf3HYViRky
         hzuLvKUTwfnUdP9qZrbdegbgTA6aXLHYWOXwiQ9l4l2PcIUWZrTvQ2cos937gH7VmiA4
         78pgICu3SOLDgF0n4Qvwa5sk2YDVIhmgyIOenErel7PBmE69tKOWmWDD93dp1oemjiUw
         XBnNWV7hyMW9kYa8h7FmB//kmZ2WVnl1M/IYxpwHD/6YjnSBBVPCsuS+dhOwam0XMLZY
         Txw8H9P0gGkMpPD96kh3LvJBBy4JsMbp7NBT2kDjicFj+Dcl6yVgsYj+g540gCYVcnny
         t81A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mmYyoJGxFQzwxEgMSflu0SGMyq/oX86+2k4r5Zyp24hRZmqHm
	/hd1eYcLvaDpWBaIjM734m8=
X-Google-Smtp-Source: ABdhPJzsBgiUcX3BzTlkhbOJRDcNFkatgKOWEf15oLQAqzsa7i+eNCrEn2rx/M0zCjttOaA5z2qA6g==
X-Received: by 2002:ac5:cd52:: with SMTP id n18mr5133976vkm.56.1596690622770;
        Wed, 05 Aug 2020 22:10:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:91d0:: with SMTP id t199ls164788vkd.9.gmail; Wed, 05 Aug
 2020 22:10:22 -0700 (PDT)
X-Received: by 2002:a1f:9e8d:: with SMTP id h135mr5275304vke.4.1596690622360;
        Wed, 05 Aug 2020 22:10:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596690622; cv=none;
        d=google.com; s=arc-20160816;
        b=M8EnpaRIyuQ/igbLvwxEpHEtfceN2DppBZpeF0SSQPD/UqOosyT0sgVSM0A99Ale6u
         dG1fHnQpnKmkJbmWMJFl0O+bIhFB9VKa2cLYElxt3pE0wWnZOg2WginQwNmM2lVacyIV
         lQ6eoV8O5B9s+bc2kfBe3t5hWI/U518yBlkAre1w7bp4XreWjCEGpoghKdpomfGcBB0W
         whMHttSfk7LSjgo+L+BBIsWFkC5bCrbLrnXW48ahIrL9bkNBBgxmTSje4COhKyVn4D5t
         zl3dv769vbOxhNN9bOkJQulXf2Aoup3L21qbgYIwvDSPHjHtvB4K4e0mtWe5AKOYg1xg
         J1qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=V5RmrIAqs28zK7qhqJ22I8L5/PZn7fbDmH14cpYyjcM=;
        b=fTZVn/EDXnKmnb1v6fCZTIqN/zQFsoNsqX0RUbohECp6V4u6HIXIeEiAwEZqn+gVWJ
         iVCto+ixWPODlOc1ks9RBmv67o1sxBlICc10xcaWNQL5oWs82SKXy1FltioPT4qn+sbg
         741o2/KSAvA/joGoo+xx0J0k5XwfCK8ZHFy4/ynEXEgNGHERxyM+fVAHUvgGraLjlEY3
         /TqWN+pkIL6XSmcj0dJT7mxuSon+/z3dP8R7vz7slqakSdXD4EeCmZ6Fa4pGLEgnGXzM
         ak5AectE4G77Zfda4mmgJi8y8eOGR3fXHkNak03cIs7UMWUHQ1KMemjckMoNDQKWn0to
         aZng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id p197si318586vkp.0.2020.08.05.22.10.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Aug 2020 22:10:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: UExJXqxnj47SZG/c4421O2/lzCI7CtnkiK/bcdLOI77oGnd9q/QgdLhQ1fhRwrfRIBNkEh6dl0
 oBmcABcnLlXg==
X-IronPort-AV: E=McAfee;i="6000,8403,9704"; a="151955660"
X-IronPort-AV: E=Sophos;i="5.75,440,1589266800"; 
   d="gz'50?scan'50,208,50";a="151955660"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Aug 2020 22:10:20 -0700
IronPort-SDR: 1qFhjrHEI/gLF1yEBJaFXhA2bNspE8Tl5nDHU5Ro0PehBmjohYnO8dE0FPX/JCOlqGD3lVAaWe
 4c9hPkbDdQ9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,440,1589266800"; 
   d="gz'50?scan'50,208,50";a="306925516"
Received: from lkp-server02.sh.intel.com (HELO 37a337f97289) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 05 Aug 2020 22:10:18 -0700
Received: from kbuild by 37a337f97289 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k3YAU-00016g-AD; Thu, 06 Aug 2020 05:10:18 +0000
Date: Thu, 6 Aug 2020 13:09:21 +0800
From: kernel test robot <lkp@intel.com>
To: Andy Lutomirski <luto@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [luto:random/fast 6/6] drivers/char/random.c:1012:26: warning: shift
 count >= width of type
Message-ID: <202008061320.zT3fgCkn%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="k1lZvvs/B4yU6o8G"
Content-Disposition: inline
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


--k1lZvvs/B4yU6o8G
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/luto/linux.git random/fast
head:   5d6c76f82fe830854425a14c7aaafd42144c109d
commit: 5d6c76f82fe830854425a14c7aaafd42144c109d [6/6] random: Don't waste arch random output in __extract_crng()
config: mips-randconfig-r021-20200805 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 076b120bebfd727b502208601012a44ab2e1028e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        git checkout 5d6c76f82fe830854425a14c7aaafd42144c109d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/char/random.c:1012:26: warning: shift count >= width of type [-Wshift-count-overflow]
                           crng->state[15] ^= (v >> 32);
                                                 ^  ~~
   drivers/char/random.c:2339:6: warning: no previous prototype for function 'add_hwgenerator_randomness' [-Wmissing-prototypes]
   void add_hwgenerator_randomness(const char *buffer, size_t count,
        ^
   drivers/char/random.c:2339:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void add_hwgenerator_randomness(const char *buffer, size_t count,
   ^
   static 
   2 warnings generated.

vim +1012 drivers/char/random.c

   997	
   998	static void __extract_crng(struct crng_state *crng, __u8 out[CHACHA_BLOCK_SIZE])
   999	{
  1000		unsigned long v;
  1001	
  1002		/*
  1003		 * state[14] is the middle 32 bits of the nonce.  Scramble it with
  1004		 * 32 bits of arch randm output to help protect against attackers
  1005		 * who are able to learn the ChaCha20 state, e.g. by a side channel.
  1006		 * If we're on a 64-bit architecture, do the same with the high 32
  1007		 * bits of nonce in state[15].
  1008		 */
  1009		if (arch_get_random_long(&v)) {
  1010			crng->state[14] ^= (u32)v;
  1011			if (BITS_PER_LONG > 4)
> 1012				crng->state[15] ^= (v >> 32);
  1013		}
  1014	
  1015		chacha20_block(&crng->state[0], out);
  1016	
  1017		/*
  1018		 * chacha20_block() increments state[12], which is the ChaCha20
  1019		 * block counter.  This counter is 32 bits.  To prevent a possible
  1020		 * failure mode in which we repeat the output after 256 GiB without
  1021		 * reseeding, increment the low 32 bits of the nonce (state[13])
  1022		 * if the block counter wraps.
  1023		 */
  1024		if (crng->state[12] == 0)
  1025			crng->state[13]++;
  1026	}
  1027	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008061320.zT3fgCkn%25lkp%40intel.com.

--k1lZvvs/B4yU6o8G
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--k1lZvvs/B4yU6o8G--
