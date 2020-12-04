Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5V3VD7AKGQEFAJGFVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4E32CED13
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 12:31:03 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id l69sf1918568vkl.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Dec 2020 03:31:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607081463; cv=pass;
        d=google.com; s=arc-20160816;
        b=HijKWRl+p9Q9walXYaZv6kTJkzGLtPHy4jjPagxUmmKLQjK1GO1fREbOhuquAKdD+p
         V9FtvTXxEaBUPBwtNJYIRdulAF0ayhCZ5KWH4lBq0iWB7DbnrR98GfDLIwht6EcLMin1
         lJLBXCFoEM4tgLkk3NuZvrYP6+Zj8I/3+fuNul8oO21U8lqF/QEk6nUkf20Xu5VhO6SA
         ZXV1MwkhPq/HB3EmXt6pScLg2i+MpvPcaLAWtrdCDLYqir5KnLPuJ/WxL/Xt337YyK42
         5BbtDpb+L3B/zkCPZwMFjq1pmgytYQ2toqy0lsJHQX6MAnTXjfZj1BqRUhfJLZo46vsK
         Y9Gg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=JsvdXacebYUBoLysXYq1AjI9EBP9EFOk2KPVij1Umqw=;
        b=GpWn0X6OvLJ9ZZa9Xua23X29wgKMBgUYFSD6W1UatcwJeDdgupwgmp3dgaEvlA8v3p
         /XOCfJOHDeUb3gqx9VLPUUE17rOkzyD2uL0w6kJWHAZAI87arhTO2oXTzFd1ImjHFufv
         RBs0vKhpOrUyU8Ot6XGo97OLH4V1OsefM/U0C+mtLIgSmID7yQcf9HrB0/hUvofEi08Y
         nrIZV6MRbU7h5r2REAunxt6an39uK6Ky8uigm8W1nn/7YbiaKwX7BrbppcFoQLNwfyLE
         1TSMMQjLL3GGlMhHvVXfZ4ykVZ8NdyUoHetcA9kBaUMQnGtmVVVt+wpAu5NtxRqxd/VP
         E07w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JsvdXacebYUBoLysXYq1AjI9EBP9EFOk2KPVij1Umqw=;
        b=cg5m3ZZg599xVPJdqQmRS5g8CiEuhsdoH4HuKbB6+hkKUA4jj6wCgypxQd2dUgyBSl
         zN6ccg2k1D0iZpHe1wurjyKRSG9CeNW62sx8xRIXe8/z8P+g+xozeOrWSTd5f2zXo27x
         4gxcNlVm645+xRBtsmx9UDrkdhtuZS4seuH01scE1XBUXUexJOABxfZqqcWElpbzxyMx
         xdx7SgpylNjjAJDwcLo7J0l3uNeAzStQA3khd9svQPFWDz6YnWgWo2tQodgKIQOF9Eua
         3yZHt9wbuqi1cmdEQT6Dj9cpZ0J6Jz2pR43C3cwV+0SsG9R74Ba7MarDmIgkhO1xYOLY
         bvmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JsvdXacebYUBoLysXYq1AjI9EBP9EFOk2KPVij1Umqw=;
        b=TJaI1muaM4WZgaB3gjChGk/HFLbLdKDwR2TZVNdqBS7cYVK+9mgO4gz7spIcPmhUwD
         Sf9oRq/zQKMxESeg+fFx3RgMYqvW8YmL8ietawU7RJV4Y1+3/uKOrcvTaKEn2mLnxnqn
         8owvt6MdmMi0ITsJKwxG3eog8N6+2GYyb5nBd+fjhRIIOBFmVsAYvrhDmxSmUq/NJcsc
         zE/rETg54t5wnBERFSjNopyXjVoedw++d6/QZGekrkkMYts33jKUHgdDWoVfbKQyCySw
         B1BBEc+MPLJALdaf6z444rGR9cJ7tQ5PFs6FgCIc1Tl+EHRlcfdo1ka4YNRtrr6kLX3l
         C9iA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DvVXNrEVcNQyWI8/AV4e/DMWJ9oZRBkMHqJQsI30FqZdadPSQ
	WPOqISYXa/E5M8Qs9mg4GWI=
X-Google-Smtp-Source: ABdhPJwMTA8gfaPEtYupLc+S6cphcWsB3zPTo0cs3Bp2hhAR2dQ+usBy7BAmVCpBUPah0YX75DT67w==
X-Received: by 2002:a1f:36d4:: with SMTP id d203mr2892878vka.22.1607081462820;
        Fri, 04 Dec 2020 03:31:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:bb04:: with SMTP id m4ls1230223vsn.2.gmail; Fri, 04 Dec
 2020 03:31:02 -0800 (PST)
X-Received: by 2002:a67:de97:: with SMTP id r23mr2938375vsk.44.1607081462143;
        Fri, 04 Dec 2020 03:31:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607081462; cv=none;
        d=google.com; s=arc-20160816;
        b=NPY9rIgi2EssOw48JPR2Cdy881DRsiXaXRjpB3kaq3Zylivqw/6x+JCDIoHr+j369L
         V5USNor2PSWJR0ZXgggMvhLqz+FAI9LrZEfzx93h8sbNlwv0KY3610J83GHLeUmsfbBb
         7XEA+N1BRBnfEqFUXYxkdFL3iKbPtDIWaO/VAfvrbhhxNrg/NpvNfnvS4y2tFXECpyBH
         m/aR9qs/bY/QFeBAQhEhDT+V7Jl6ee+2LRDvdPTAvWgO+TuGD0inW6I1Ca4SX9lmhV9b
         PnNKONk1uZjJTDZzF9RYkLcs3+jQWzE4ZwAAx+Z6u7bddEwdk7oD1NZhR78oli/NcFOc
         WDow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=MKtva8+WKP/GtiNXO8mPxB6dmLYcCFIdWpfDHVA+/E0=;
        b=tBPqSI9iZrw5Yo8IizSnl5gI4OrLMwkkkt52lsd8YZ3xx0eqj+jyrpbISAXFuRg7xK
         v/1BKVsZEtlY55h0BV6PuCeREXTtvpSs6WmbUNsbqZC9smDz9a37rwZFBIoAXer6+ZIB
         6O9Sl+b+IeUJkPTOZAyjLWcXVJA+w3PqhTgjGx20gDWAE4Kj33J9m4hrJudCoIM/m2Nn
         IvrlJSSx/+AB636tfEXf5PmQvhHnjRN4K3lmZqK9VyWNA5tuhL5DENJCsfAF7WFQBh+I
         nPeots8rOAbCGbU51r4GK8veuQilVW6nqAzrmYBLc8V2qwTiDzwZptJsa3NglAG/3Wop
         fXLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id y129si161366vkf.3.2020.12.04.03.31.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Dec 2020 03:31:01 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: 3y0hYXWZNrdEoPK8go1Ewh6kises/Zg057MQnaLUNMM9bUmayDuWLlxbNZxW4iRpL6S1wrCphV
 /2jiOj8Zk50Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="234967978"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; 
   d="gz'50?scan'50,208,50";a="234967978"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Dec 2020 03:30:57 -0800
IronPort-SDR: yFztqwcyfSHeY/c1D7DCOqf8gVyoWD2LoKfQXkUKRGeUdzTTWhaQKPF+HL9ra6hHHxMmKT5LvN
 2u3XBNJ5HTtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; 
   d="gz'50?scan'50,208,50";a="331185697"
Received: from lkp-server02.sh.intel.com (HELO f74a175f0d75) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 04 Dec 2020 03:30:52 -0800
Received: from kbuild by f74a175f0d75 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kl9IZ-00004k-53; Fri, 04 Dec 2020 11:30:51 +0000
Date: Fri, 4 Dec 2020 19:29:50 +0800
From: kernel test robot <lkp@intel.com>
To: AngeloGioacchino Del Regno <kholk11@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [ebiggers:mmc-crypto-testing 82/134]
 drivers/media/i2c/imx219.c:241:32: warning: unused variable 'imx219_auth'
Message-ID: <202012041947.07TtWU4Y-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="C7zPtVaVf+AK4Oqc"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git mmc-crypto-testing
head:   4a151975f421e11263e7dc0e72d521017e3b12bd
commit: 13225a287e64e905fa45dde2d1a61ffe648ba00d [82/134] media: i2c: imx219: Rewrite tables and implement more modes
config: arm64-randconfig-r024-20201204 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 32c501dd88b62787d3a5ffda7aabcf4650dbe3cd)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git/commit/?id=13225a287e64e905fa45dde2d1a61ffe648ba00d
        git remote add ebiggers https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git
        git fetch --no-tags ebiggers mmc-crypto-testing
        git checkout 13225a287e64e905fa45dde2d1a61ffe648ba00d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/media/i2c/imx219.c:241:32: warning: unused variable 'imx219_auth' [-Wunused-const-variable]
   static const struct imx219_reg imx219_auth[] = {
                                  ^
>> drivers/media/i2c/imx219.c:250:32: warning: unused variable 'imx219_unknown_seq' [-Wunused-const-variable]
   static const struct imx219_reg imx219_unknown_seq[] = {
                                  ^
>> drivers/media/i2c/imx219.c:332:32: warning: unused variable 'mode_1920x1080_cropped' [-Wunused-const-variable]
   static const struct imx219_reg mode_1920x1080_cropped[] = {
                                  ^
   3 warnings generated.

vim +/imx219_auth +241 drivers/media/i2c/imx219.c

   221	
   222	/*
   223	 * The authentication sequence is needed to access registers beyond 0x3000,
   224	 * which the datasheet calls "Manufacturer Specific Registers", with a range
   225	 * going from 0x3000 to 0x5fff, but its documentation is full of holes:
   226	 * it is infact documenting registers from 0x3000 to 0x32ff as OTP Data
   227	 * and, as for the others, it docuemnts 0x4053, 0x5e54 and 0x5e59.. and
   228	 * nothing else.
   229	 *
   230	 * On both Raspberry Pi and Xperia XA2 i2c dumps, there is an unknown
   231	 * write sequence that is totally the same between the two, but the sensor
   232	 * seems to work regardless of this being sent.
   233	 * Spirit here is to not send unknown things, especially if they don't seem
   234	 * to do anything... and that's what was done. Also, remember that the auth
   235	 * commands will allow to write to the OTP area, which may actually damage
   236	 * the sensor functionality (for example, factory calibrations may be damaged).
   237	 *
   238	 * The authentication sequence and the unknown one are kept here in case one
   239	 * day they get documented somehow, or a use for them gets found.
   240	 */
 > 241	static const struct imx219_reg imx219_auth[] = {
   242		{ 0x30eb, 0x05, IMX219_REG_VALUE_08BIT, false },
   243		{ 0x30eb, 0x0c, IMX219_REG_VALUE_08BIT, false },
   244		{ 0x300a, 0xff, IMX219_REG_VALUE_08BIT, false },
   245		{ 0x300b, 0xff, IMX219_REG_VALUE_08BIT, false },
   246		{ 0x30eb, 0x05, IMX219_REG_VALUE_08BIT, false },
   247		{ 0x30eb, 0x09, IMX219_REG_VALUE_08BIT, false },
   248	};
   249	
 > 250	static const struct imx219_reg imx219_unknown_seq[] = {
   251		{ 0x455E, 0x00, IMX219_REG_VALUE_08BIT, false },
   252		{ 0x471E, 0x4B, IMX219_REG_VALUE_08BIT, false },
   253		{ 0x4767, 0x0F, IMX219_REG_VALUE_08BIT, false },
   254		{ 0x4750, 0x14, IMX219_REG_VALUE_08BIT, false },
   255		{ 0x4540, 0x00, IMX219_REG_VALUE_08BIT, false },
   256		{ 0x47B4, 0x14, IMX219_REG_VALUE_08BIT, false },
   257		{ 0x4713, 0x30, IMX219_REG_VALUE_08BIT, false },
   258		{ 0x478B, 0x10, IMX219_REG_VALUE_08BIT, false },
   259		{ 0x478F, 0x10, IMX219_REG_VALUE_08BIT, false },
   260		{ 0x4793, 0x10, IMX219_REG_VALUE_08BIT, false },
   261		{ 0x4797, 0x0e, IMX219_REG_VALUE_08BIT, false },
   262		{ 0x479b, 0x0e, IMX219_REG_VALUE_08BIT, false },
   263	};
   264	
   265	static const struct imx219_reg mode_24mhz_regs[] = {
   266		{ IMX219_REG_EXCK_FREQ_MHZ, (24 << 8), IMX219_REG_VALUE_16BIT, false },
   267		{ IMX219_REG_DPHY_CTRL, 0, IMX219_REG_VALUE_08BIT, false },
   268		{ IMX219_REG_VT_PIX_CLK_DIV, 5, IMX219_REG_VALUE_08BIT, false },
   269		{ IMX219_REG_VT_SYS_CLK_DIV, 1, IMX219_REG_VALUE_08BIT, false },
   270		{ IMX219_REG_PREPLLCK_VT_DIV, 3, IMX219_REG_VALUE_08BIT, false },
   271		{ IMX219_REG_PREPLLCK_OP_DIV, 3, IMX219_REG_VALUE_08BIT, false },
   272		{ IMX219_REG_OP_PIX_CLK_DIV, 10, IMX219_REG_VALUE_08BIT, false },
   273		{ IMX219_REG_OP_SYS_CLK_DIV, 1, IMX219_REG_VALUE_08BIT, false },
   274		{ IMX219_REG_PLL_OP_MULTIPLIER, 84, IMX219_REG_VALUE_16BIT, false },
   275	};
   276	
   277	static const struct imx219_reg mode_24mhz_2lane[] = {
   278		{ IMX219_REG_CSI_LANE_MODE, IMX219_CSI_LANE_MODE_2LANE,
   279						IMX219_REG_VALUE_08BIT, false },
   280		{ IMX219_REG_PLL_VT_MULTIPLIER, 57, IMX219_REG_VALUE_16BIT, false },
   281	};
   282	
   283	static const struct imx219_reg mode_24mhz_4lane[] = {
   284		{ IMX219_REG_CSI_LANE_MODE, IMX219_CSI_LANE_MODE_4LANE,
   285						IMX219_REG_VALUE_08BIT, false },
   286		{ IMX219_REG_PLL_VT_MULTIPLIER, 82, IMX219_REG_VALUE_16BIT, false },
   287	};
   288	
   289	static const struct imx219_reg mode_8mhz_regs[] = {
   290		{ IMX219_REG_EXCK_FREQ_MHZ, (8 << 8), IMX219_REG_VALUE_16BIT, false },
   291		{ IMX219_REG_DPHY_CTRL, 0, IMX219_REG_VALUE_08BIT, false },
   292		{ IMX219_REG_VT_PIX_CLK_DIV, 5, IMX219_REG_VALUE_08BIT, false },
   293		{ IMX219_REG_VT_SYS_CLK_DIV, 1, IMX219_REG_VALUE_08BIT, false },
   294		{ IMX219_REG_PREPLLCK_VT_DIV, 1, IMX219_REG_VALUE_08BIT, false },
   295		{ IMX219_REG_PREPLLCK_OP_DIV, 1, IMX219_REG_VALUE_08BIT, false },
   296		{ IMX219_REG_OP_PIX_CLK_DIV, 10, IMX219_REG_VALUE_08BIT, false },
   297		{ IMX219_REG_OP_SYS_CLK_DIV, 1, IMX219_REG_VALUE_08BIT, false },
   298		{ IMX219_REG_PLL_OP_MULTIPLIER, 90, IMX219_REG_VALUE_16BIT, false },
   299	};
   300	
   301	static const struct imx219_reg mode_8mhz_2lane[] = {
   302		{ IMX219_REG_CSI_LANE_MODE, IMX219_CSI_LANE_MODE_2LANE,
   303						IMX219_REG_VALUE_08BIT, false },
   304		{ IMX219_REG_PLL_VT_MULTIPLIER, 63, IMX219_REG_VALUE_16BIT, false },
   305	};
   306	
   307	static const struct imx219_reg mode_8mhz_4lane[] = {
   308		{ IMX219_REG_CSI_LANE_MODE, IMX219_CSI_LANE_MODE_4LANE,
   309						IMX219_REG_VALUE_08BIT, false },
   310		{ IMX219_REG_PLL_VT_MULTIPLIER, 88, IMX219_REG_VALUE_16BIT, false },
   311	};
   312	
   313	/* Please select BANK OFFSET */
   314	static const struct imx219_reg mode_3280x2464[] = {
   315		/* MAX: 4-Lane @ 30FPS - 2-Lane @ 15FPS */
   316		{ IMX219_REG_FRAME_LEN_LINES, 2691, IMX219_REG_VALUE_16BIT, true },
   317		{ IMX219_REG_LINE_LEN_PCK, 3448, IMX219_REG_VALUE_16BIT, true },
   318		{ IMX219_REG_X_ADDR_START, 0, IMX219_REG_VALUE_16BIT, true },
   319		{ IMX219_REG_X_ADDR_END, 3279, IMX219_REG_VALUE_16BIT, true },
   320		{ IMX219_REG_Y_ADDR_START, 0, IMX219_REG_VALUE_16BIT, true },
   321		{ IMX219_REG_Y_ADDR_END, 2463, IMX219_REG_VALUE_16BIT, true },
   322		{ IMX219_REG_X_OUTPUT_SIZE, 3280, IMX219_REG_VALUE_16BIT, true },
   323		{ IMX219_REG_Y_OUTPUT_SIZE, 2464, IMX219_REG_VALUE_16BIT, true },
   324		{ IMX219_REG_X_ODD_INC, 1, IMX219_REG_VALUE_08BIT, true },
   325		{ IMX219_REG_Y_ODD_INC, 1, IMX219_REG_VALUE_08BIT, true },
   326		{ IMX219_REG_BINNING_MODE_H, 0, IMX219_REG_VALUE_08BIT, true },
   327		{ IMX219_REG_BINNING_MODE_V, 0, IMX219_REG_VALUE_08BIT, true },
   328		{ IMX219_REG_BINNING_CAL_H, 0, IMX219_REG_VALUE_08BIT, true },
   329		{ IMX219_REG_BINNING_CAL_V, 0, IMX219_REG_VALUE_08BIT, true },
   330	};
   331	
 > 332	static const struct imx219_reg mode_1920x1080_cropped[] = {
   333		{ IMX219_REG_FRAME_LEN_LINES, 2691, IMX219_REG_VALUE_16BIT, true },
   334		{ IMX219_REG_LINE_LEN_PCK, 3448, IMX219_REG_VALUE_16BIT, true },
   335		{ IMX219_REG_X_ADDR_START, 680, IMX219_REG_VALUE_16BIT, true },
   336		{ IMX219_REG_X_ADDR_END, 2599, IMX219_REG_VALUE_16BIT, true },
   337		{ IMX219_REG_Y_ADDR_START, 692, IMX219_REG_VALUE_16BIT, true },
   338		{ IMX219_REG_Y_ADDR_END, 1771, IMX219_REG_VALUE_16BIT, true },
   339		{ IMX219_REG_X_OUTPUT_SIZE, 1920, IMX219_REG_VALUE_16BIT, true },
   340		{ IMX219_REG_Y_OUTPUT_SIZE, 1080, IMX219_REG_VALUE_16BIT, true },
   341		{ IMX219_REG_X_ODD_INC, 1, IMX219_REG_VALUE_08BIT, true },
   342		{ IMX219_REG_Y_ODD_INC, 1, IMX219_REG_VALUE_08BIT, true },
   343		{ IMX219_REG_BINNING_MODE_H, 0, IMX219_REG_VALUE_08BIT, true },
   344		{ IMX219_REG_BINNING_MODE_V, 0, IMX219_REG_VALUE_08BIT, true },
   345		{ IMX219_REG_BINNING_CAL_H, 0, IMX219_REG_VALUE_08BIT, true },
   346		{ IMX219_REG_BINNING_CAL_V, 0, IMX219_REG_VALUE_08BIT, true },
   347	};
   348	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012041947.07TtWU4Y-lkp%40intel.com.

--C7zPtVaVf+AK4Oqc
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICEAZyl8AAy5jb25maWcAnDzLdtu4kvv+Cp3uzZ1Fd/S2M3O8AElQQosgGYCUZG9wFFtO
e64fubKd7vz9VIEvAASVnLmLvhGq8Koq1Jv+7ZffRuT97eXp8PZwe3h8/D76cnw+ng5vx7vR
/cPj8X9GUTZKs2JEI1b8AcjJw/P7Px8Op6flfLT4YzL+Y/z76XY22hxPz8fHUfjyfP/w5R3m
P7w8//LbL2GWxmylwlBtqZAsS1VB98XVr7ePh+cvo2/H0yvgjSbTP2Cd0b++PLz994cP8N+n
h9Pp5fTh8fHbk/p6evnf4+3baDa9XYwnd3eXl5+X04vLi7vZYXF/f3e4OBw+397Pl4vx3efj
7Pbuv35tdl11216Nm8Ekasems8VY/884JpMqTEi6uvreDuLPds5k6kxYE6mI5GqVFZkxyQao
rCzysvDCWZqwlBqgLJWFKMMiE7IbZeKT2mVi040EJUuignGqChIkVMlMGBsUa0FJBIvHGfwH
UCROBY78NlppBj+OXo9v7187HrGUFYqmW0UEUIlxVlzNpt2heM5gk4JKY5MkC0nSUObXX62T
KUmSwhiMaEzKpNDbeIbXmSxSwunVr/96fnk+dkyU13LL8hA2/W1UD+1IEa7Vp5KWdPTwOnp+
ecO7tEcVmZSKU56Ja0WKgoRrc3IpacICz7w12VK4O6xMSpB12BculzREA/qPXt8/v35/fTs+
dURb0ZQKFmr25CILDD6aILnOdsMQldAtTfxwGsc0LBgeLY4Vr9joweNsJUiBfPCCWfonLmOC
10REAJJK7pSgkqaRf2q4Zrkth1HGCUvtMcm4D0mtGRVI1GsbGhNZ0Ix1YDhOGiXUFHnr/Dnr
A7hkCBwEeA+qYRnnpUkJ3Lo5sbWiPmsmQhrVL4qZqkHmREjqP4PenwblKpZa/I7Pd6OXe0eO
vJyE58AacvTX1S9+20mnAw7hTW5AnNLCoKSWatQ3BQs3KhAZiUJiPmTPbAtNP4Hi4Qn0te8V
rG9UDvOziFnvNM0QwuAe5nNzwHGZJL5XnKVoKVQhSLipiN5OdGEVhzyL6B3MmWu2WqOwayoK
aR+r5lDvmt30XFDK8wLWTf1XahC2WVKmBRHXnkPVOB3xm0lhBnN6w9Wb1QwI8/JDcXj99+gN
jjg6wHFf3w5vr6PD7e3L+/Pbw/OXjiVbJmDFvFQk1Os6JNSCYIM9R/UsgqJiPw8tkNYupkKV
4RreDtmu6lfSkUoyL/l/4pKGJMDZmMwSrfnM5TS9RFiOZF9aCyCsAlifA9Yg/FB0D3Jt8ERa
GHohZwgUtNRT6yflAfWGyoj6xlG8af9MsoCHjwaZm9ocISkFUku6CoOEma8bYTFJwQe5Ws77
g2B+SHw1WZqQIMvcFfQQqLSEXF+B39QxQW+dhQFyw/sqnOso7ZnwwMt+m2fdGmxT/cO7Adus
YUnnQbc+CjokMRhaFhdXkwtzHMWHk70Jn3YywdJiA15MTN01Zq7arIRcK8/mrcrbv45374/H
0+j+eHh7Px1f9XB9Sw/U0tWyzHNw56RKS05UQMAFDa23VfuPcMTJ9NJR9O3kFtqpXGs5Ly3D
lcjKXPphaxpu8gzWRSUKDqpfC9ZvviwyvZaHKWC+YgmyBA8vJAWNzDO6MLWdelYQWg47ZzjZ
wJSt9i6F4cjo34TDgjIrwUig59kJbqRWN8x3PoAEAJkaLyBSyQ0n1sDesi0aI/MSRIPm/n1u
ZGGcFx4ZGgL8t8XsDAwBZzcUTR3aWvg/Dkyklll00CT8w0/7sEhAtYVUW5fqYRpHyOPuR6sA
2120ewJOtPCzfkULdFJV7aAM8r5zYNq5ceXz+A1rJtneY7Wtx2oqdP14U254jeCKGT8I+G3o
elgHKMGt8KxO88x0tSRbpSSJLaHVJ4sj79m1P2XDmpXWEKYYr5dl5posU6UYeqYk2jK4Qk1G
/3OFxQMiBLN5VQM3OO2aG15iM6Isx7Id1STDZ4fRiCUuqueNaj20I2nRxneI9iezJAmFSAO9
tGl91u4WsE8KPiqoHevdSfrJxzQe0CiixtvS/gi+HeX6x3oQjqO2HK6RGUY7DyfjeaPT6xxH
fjzdv5yeDs+3xxH9dnwG54SAWg/RPQHPsXM0vHvpmMC3Y2scfnKbjgJbXu1SeZA9v7b1mnlO
gBFi43+5CQkGAKUvXJZJFlhqG+YDr8SKNjz3CnwZxxBq5QTQ9MUJWBHjaV1DWMhVRAqCGRcW
s9AJaiHIjlli2UKtv7RVsiItO83RiRVfzru5y3nADD/HCgs1anXU2vAvbRDGISovGvDCB+VR
HwqCzTnJlUjBzDAw1ByC1Mn8HALZX00v/AgNX5uFfgYNlusuA1ESy9BjgHEj0gc/M9xUTlvt
URhmNUnoiiRKUx0e5pYkJb0a/3N3PNyNjf8ZiaINWPT+QtX6EBrECVnJPrzxsCzlbQy2Cqk5
iid/sN5RCPt80a4suWeUJCwQ4HnUvm6LcANRn4pMH6AZmU0d1UdTnZKrk1DrrMgT8wJ+HAH/
MjWr5AY3NlSkNFE8g1ghpeaLiMEwUiKSa/itLHuSr6rMoE4vyauptX3rJZY6b+VmC2AwVBvU
tVXGtlaB+ePhDbUSvKrH462d5K1yZzrLJE3NUI2vWOI1rvVh0j1zTkCSvMqL2gsFIZ9ezhZD
KwFYMTy8s1pARaJTQc5qrMCkj9/EagQRcln4NWPFxv11mvk1bnW1nIj9Yhi+mQ3DQPxAokOS
+52iCmc12QyaTyZdqm4omtPrHiE4jRjIvN821BjSjrEt4BbMWn/RfTi83ifQSEPLQYSYwGGc
swt4oZK4kgq83tQ5SofyM1/gUIEoKYqEOivJAlOo+8nYHb9OP5Wgp0Rvi4KuBBncJDcjkQp/
XaaRmdUzR6e95cuU5Wu/+6bhW3DPIRBzKQKeIRof1ltvjzpumCM3+zMwoAHPbXhtaD06wXSX
4i7+1cNgHUfH0+nwdhj9/XL69+EEDs3d6+jbw2H09tdxdHgE7+b58Pbw7fg6uj8dno6IZWoZ
NK5YCiEQXKJhSyhJQWtD0GlfGPGoAJaWXF1Ol7PJx4Hr2YgXP4s4Hy8/ejljoU0+zi8s82BB
Z9PxxWIQOp/NJx+HoJPxdH4xuXTBBmVkTsOyNo+kGCbOZLJcLKb+x2LhAWVmy4vBAy1m44/T
2ZkDCZrDw1NFErAzp5leLi/HFz8+zXw5m04XZxZazKfzn+LlZDG+nE98BAjJlgFCgzidzkx2
udDZZD4/B12cgV7MF8tB6Gw8mVg3reHFftqtMPFJY1xC1CXLFms8AbdsYgRFYCIShq5DS4zl
ZDkeX44NoUVVrWKSbDJhiN949kOMj+aZNc6nKIaHM+7OM176jaNvRQrB2MQfpGQhuB1YFGiV
NWZ14epelfX/00Gu+Mw3OjoYMv6IMll6cCyMZbOK+262pHLW59O+iLewyzN7N0iL4Zddo1zN
p+7k3LuDF2XRU2815GrR1Y/zEoYgKk/BzbDcMIQkDK1xDTyTUuR+d6ICSu6LOFOBO4Dzu2jj
ndodx/Hu4JgZNX6Bmy3rwK2NyzBch7gdD6zzqIikmJtgkLQoc8SrCifgyRjLYoK+AekEBXjv
QkLgDh6A4e2ss4Ri+lYHGCax1jf4qrxEANB0MfZQAACz8bi/ih/3atZFbXacUCcuQFSdHEnr
5koK4Ucd1wyC6+SAC6cJDYsmGMIoJ3HoWkUlcYqxpkl0eS27M67LFQXrEvtqn9pDUNhroTOj
Ti4dObcmUbbD+C+pgl8jkiKCYDGsPzJc/trQPbXKoXoAGD6Q4gwFkWsVldyXkN7TFOvThme6
N+twugCqSxkoMZlAH3MyMVJtKaYB6hgSLDBN/EIkMp16wcRom7mr+OlP0eFjlztVFIEYA0lS
VxEUZLXCUkAUCUVso1/lI3o1O5j37fKPyehwuv3r4Q3cyXfM4Vg1FGuH9U6ROAr8kUSli3qn
2taeYmcMzm1pHGv608cqib8SUJ8J5PwMGAQBwsrCH2zp1FKa9y8weDjjArPhC9gHLATWb9bO
I8GmAJJW2YECKBuCR9dvasL8OAJKkWrO2wGK1DgwtzcWxgw05AozL4LgCyw8bBq8gXHL+U/e
kvBS07l3EgBvL9W8b3dBt8DZ0hUd8irO7W6ccPHTghQUzOeWDnIDJ/Qc9HHuBqIwEdSJi1hf
nxfUhXAfLwZv4SiIbW+5XNIyyuz6TAWprYxgmWDFtW54srSqoDppXJuYTnHp+2DlC8sUXu64
4aimdfACaC9fMWg1xCPkke7J08XCerqF6Uvkoe3RyWKzFatKmr38fTyNng7Phy/Hp+OzZ0NZ
QqxmNmDVAyoWlN7YiYcGBITJdUXEVw/jSiaUGvnDZqTOKnaFNa4LtRrmX2hHNkjzjbQWa0fr
VsFJ5zZY0JVZTOHOzprZ/l3DZGPt12RnqyYt4yy7TyrPduBT0ThmIaNdzencfA95XIzMKIOi
v5Zz5w2tWQAGVXMa65OSedyemlcGuEubDElF0+tTY/AWo8mgIIzdPR5NbaE7YXrV066npprQ
To9Px/+8H59vv49ebw+PVeeQtRYI3qfBtTyzTXDv3Hrx+OH09PfhdBxFp4dvVZ3M1HXgxXOm
VVkWZr66cYej2e329lXgvFvC0d410Jg7tAd69VhKiK2yODjqfAfuPPqoVp0EcZMudwiurNgy
c6aLIKTZ6lMKwUDlZnsldoX1QIKQzy/2e5VuBfH5N6ssW4HeaQ5mTq1BmL7XHQVaX3qWYHyv
ImkpBBySYTlAnFyGTMVGL2vtmwPZeBiGQ+MqwpTkloprh2EaCMF7FUdVbYbHL6fD6L6Rljst
LWbzzABCA+7JWbMhuuslBA83Tkmx9qnEdW51cOvfGBRA6OiWDTvgYjJtgYYr34AnzepDPn+7
iRdxeDtlSlgHnw2dlM/OzONzE+iebrXGwOTHxyNUDuzeQny7m0BwbPh5hMC0Cz0ErIx5UcI1
RH9kOm5qZ+4d8yy5nszGCw0fvmK6thDPnCSQV067veErHX+/O34FcfX6AlUcWHc5WKGjPSbB
2YutQtufEDuqhATUpz71g+xsZJnCS1ilGJyFoeWha8SNWxSsRsHB9ALiMtV1P8zUZcLfbQ5o
lr/XRfW6CLzOso0DjDjRVXS2KrPSU9gFV0bbvLo1u4+ggdi8U2VlPEkBCJwLFl833WF9hA24
CW5TWQtEFlQpiwFgxIROa5j2wrh39Y1G9bWH2q0Z2AmrcbNClRwTIvVnFi7lBV2ByKE7iBmL
mpmK5C6hsUtmiGn4wcfgRAiwAzhm1fbnwHQXC57AN47tPfWpMKnhI0AnsOehnrYjDrEbhIpr
2KMqcqOn7AVjx6kPpWZUJZZVn2fI8324dluY69Hqa5cBWJSVlvfX3ULSEFMdZ0CYEirMouC5
KUjPBNjhZh1xHD0fGlYNNV24YEGGC/B1Bu1MEuwMqKJFv2XfBP+wmVxj/bijHJsksK9mQJOk
mGpEDdfEYz48hGHrlUFjeGIlZl0xy0uTWIuc51VrUBNs+pa2GnecBWyY0/FjtcsVWQ60TqsZ
CbnOrI/HEuw7CYDK4PdFlgmou3xmU9hB0/Hsh05IgZaVRjtZM3quLQ+0FgOtVecUxW5vCMow
yJ1eUd3G6c5Xf3Um1NoHzYFFs2mTEbB1IwafZlOcLyEME0VrpME7/f3z4fV4N/p3lSf4enq5
f3i0vqlApPpWnuU0tGpPo6ppbW160c4sb10MP1nE4gRLvb1sP/Ah2iQJEBZ7WU07rds3JXYb
Xhm9+7XUexjdvAf9kUMCxrm0woQAKewL3QlmkM2MWmpUG8u0+tpRSTCq8KvumPdqIlLAGwsV
BDfGI8VbVZPBbsEDMdWm2EnKh4BaIAZgVa8FkEd/UhhpNCfjMQxxJ4udf2pvvBWcFE8E5j0h
eY5Ksc6ZYs3E65LU3bZqJ2CCeY8uWaRlmv5zvH1/O3x+POoveUe6m/TNirsDlsYcywHxYD9V
i9FmZHv2E4FoYTxEWaUlgrCJ3Oo5qpeVoWB54Q2NagwOgeNAO6ugbrGkfS9DV9d358enl9N3
Iz/hycedK0d1tSxO0pL4IN2QLvnpnvkc1IKuK/pWArsp4B8+0LZKOHR1tc60uzhDyh6/tlSr
ngOMvq1ur7afoS5uNjD8gNh4fxVB2k+uepBeq6M9Xh/ZvISD0BjATOsJn14a7pfME4b9uPqp
66Lv3JkUYOXSPHU9UJlNJ2Lxjen8rqCooCzHxPP1bRW4KLeffH0tq3JY4ek9BvmAaISZb3oj
DWFqiKPlAVijV7qajz8uLb62KrS+dkxYUgof1WuI/6stjy/lf4nYgKWrq77AWZfVO1wQraGs
bwszy7c4iEV0cJc+dsvc5JmdI+wgQen/CuNGVp32vkRaHS7qLlrFQLFUnmE7F+gOgS1tQzUt
BhgV+r9Gi5oO98YTPudH5brR2PZFY0HwI9/Gl3eUqqw+Y4UpSndNG9JVdSegojbD5TJXAU3D
NSfCtbbNCbBVjBHLZxlWk91VU+rruaiMQvfFh9a60fHbw62Z/G2PwRXhgeEyVCFkaFWL4af/
u6AwBBe4V0XW/tLDbb3bKHP1e1m5hmuaWAbUGgYWFmvrezFgU8Hz2N/vA0RPI5Kc+TJYr92m
kfUfSegdvE1ePr4c7nTasxGJHbgwxOodbYe0sEX4hWIHRINCutxw9wcXulk6QHdJ4AVjH1YS
WBFfh4d60q7xxjujHdPNytYXa3DrqGfb2nOT6/hgdxbUS9uqZhgJth34Kq1GoFvhdXUrMP5p
i3oR5ZqW9tsADF9LCM78f+oBwdsygR8kYGCMmGXsM/xiwRgQdGW9+uq3YtOwNyZzM3NWD3LO
sv5s828RNLPDMDCMCOgNCOVFJTGxXVxEYAy6otJdPoXe3LWKt7M8S7LVdS9W6b+9qtz6/jq6
04rA0QBhaFeCddEEbWomVGJXRaqGfLViMgBMf2d+UEwUyc/A9r6qetcLmdh/cET3ItKATf0v
n3H07XKO7PVjlOlizEDOpudQ9kwJ6fvUqmnz7j4M7T5ZlIni4eCqfM36sKagbfCiZW5qvmNe
tEWZ/HB6e0BGjr4eTq+WAgcs4MMFdkQVVi4CAUHIl7P9vgL6vDnAqavt7QIGKIv9y2ovUijG
QfEVxGdf9ali6Vu0nlyIvbssPoscKHrutPBudEnNs3ADqrK+2uHUnvXvE3sbawmdidcZDOp3
XPozMGsM/vG1l619TmkGlq9Ykn3Bj86r7wiL0+H59VH/naZRcvjuFGQ18bOBz8BrIhYMPV4M
b/CPuYieLQMn5oPI+If48fD61+j2r4evda3OEZ4wZjYd/6QRDR0Vi+Ogeto/smMdBjuHSLTV
nz9n6RDnUBUGJN2oHYuKtZrYizvQ6Vno3Ibi/mziGZt6xrAaXH1R5d6AR9a34M04eBakP1oW
LHHEj3BnIOMupUggwQvxCs4ZdlVh8+Hr14fnL80gxtQV1uEWVIjL0wx14h7phjkN9wVCFGQn
X7vBOoXphwEpRHE1/ufS/rzQREmo8ce+TACyT3Ov+xDOBJvtHtY0MBceQjZgLMtA5DfQ02li
rjCY9nuxFlrOMh3XDUixDBfTcRg5xANHXAPs0UIuFmNnLIfIvZKUztP/AWerP2hxfLz//fbl
+e3w8Hy8G8FStfUwHrWtTHOIp5TkPkur4UlPYPN1b+j/KLuW7lhxJP1XvJrTvagp3pCLXpBA
ZlJGgBHpxN5w3GV3lU/7Po7tO13z70ch8dAjRN5Z3CpnfIEUeoekiBD7p9PYb6Z49Gkl7Hjl
7e+EMv2LTla+rpdM+4/Xj3//0nz9JYOC2TYjkGPeZEfJs2HPz6FrphsS6cR+pYKB+BrX42ol
cVlqtlVQMwWK4dnOJ+G6AMxSh/yzAkwoLmzbxBRC5VACZwCjC33iuHBG+6d7HkNNzOpP//mV
rSxPb28vb7wgN/8SEwYr9fs3RtXrk6eTF3DfjGQggDHv9YJzNCVgd171qXXYcLaGDRzMyWFh
YHuzY4PkPi34CJL2pKhQmdgu+r6o8NOHNeEqAyXS9wbM53VNa2VDZABV19IuzVCnFKGDPlge
MlTw+0PkOmN9wI5AVokG/GN6Gg9V1mOWBWtbpvdlnWGt3A/Drs4PBE/7t8cgTjB3BKlYlk+5
2rz1Jej0oRMgMoFSj5CJHEdEqpYSF8DmAbpK2BPfG1nRPSxZ8KlF6LAIoNnB7A2xX7ZyzNi2
XAsNs3ZrNjOmZqQs8vrxuz5/c374D9vfbLZ6SW+bWvfARWChu4GiBpFrNqc05CNhR+5sse73
/aUr+R2FuADJMjYx/8Gm4puPH9+/f3v/RGamIlOCb2DfzBiftnnKVQsL9H+J/3s3bUZuvojj
MlTD5WxqM9/xyJyrNjtlcT1htYrPe1vvPz20RSfOG1bHnz3bK6YkCrFYRHkvLQtcG1q+Y9uw
c132cEKCfMhQuI7K+z2VE4DDyb5XTC4YUZyxotBts/9NIeQPdUpKRSrToYDRlDOP5sCjWbI5
OlejIQigqe7VXMXN24NCm5zB1sM7tko0nemsUt+T4oYuXWvtKDJ9GWDSycd6wpWHXjiMedtg
NZufCXnQAlJmdOd7NJB9OPlaNVIq1RSbAKqGnrtiNkeVLyThNCNr2FRdKDF72pzuEsdLKzns
LK28neLpKSiypsl2FLTpKNM2K4/pm3LFzdD+5MYxNsPPDDzznSNbAZAs8mXXwpy6USL9prMW
O/0eICzMMNL8UKAm8fdtWsudKfOmUCNirijYWCTSPLGkKxBWyR42aiYUwqFkUieayCQdoiRW
PHcnZOdnQ4TqEBMD26mMye7UFhT3yp/YisJ1nADd0GlFmoxr/3r6uCm/fny+//jCYwp9/Pn0
zlTVTzgOAL6bN5j7nll/ff0Of6qWt//vr82+UJXUh0NO3AEKLKG480+LqRpFdpLUuDMYrSkb
GXmUiV1LRstZBTfWAADhcldOAvtg6ZL8YgIc5OZleO49ZVEUN66/C27+dnh9f7mwf3/H+tKh
7IpLqV+4zaFhtxIR2Xz9/uPTWpyyFiGm14soILCumWMnIgKEmMIFqZQZVSBgNpkX9zpZXODe
ahbwgBC2ryyHCVnOnN4ggucrRKz615Ny6jt91JxpIbLRxJ6RsaXpGVOiNTaasfWkHod/QFyE
bZ6Hf8RRorL81jwghS3uUaIIRiS1iLGd1MpyWzzsG+2eypRQUZ8a7m1M0V0Nx9i8Pl/YKfTs
IW1RhbQRlm1pPd0waN/NiD40cSZKlKsMgd7TYRiUsypOnpRZVXq2tLc9W8zU646lMSgEqF3p
M2VM2W6xOWKAn2PUPEOpJULNmn2XIvTjwVPM41agK/H7KIVjRP15V5YzxNIisvHMgnEvlDTr
0dxpmbOpBOLGbCXfE7QGSu4wbAVGT45otYAXCMOnWpcuGJzEV1WK2c6vIoNBU9Pt8fIAuMdD
Rq5MYHZR4BL0lzJnP7Y+fzwV9emMNXJKQ8d1EQAmBu1WcsEOtEwj/JJJdGRudowpdhPcnLOT
mJPWnCXibDmlXCPKeJK0JIlkrUlG0zxO4t0Wpg4+FbcBHZtf3Y0PuS5KBqXTogxj72NBXhTe
M9silUNWdnhm+7PnOq6/AXqW8sN+EYxoy6xOfDmIjsL0kGQ9Sd3AsRVGcBxdF3enV1n7nrb8
jO8neQODGWHN053jB7j8gMkatILBBNw1OHhKSUtPpextIsNFocaWUrBjWqXYcm0yrUsYxjJk
viOfXcvgFNTGJsOxafLymgwnNn/KHqAyxnYSrO9YhpUWXU6GaEQf4sjFweO5fiys1XbbHzzX
uzYgYP211FfV2NK+pLDhuySOg8fOMXlt2rnMybY2rpuoSWJsGQ2t7UgIdV1L52WzxAF80cvW
xsB/4Fjd+9Ew2BqQDNG5YtvVzFZjZV0MZXOtZLexaxlcbVGTKZg/3tpsb3fow8HBd4Aya5fS
dl903UMLfpfXRCqPjWWq5H93ahxMA7+Ult7Vw+2k74fDVq2JmfqKiJe8T8Cp1bqAkMz148S3
ZcL/LnvPxcMmKqw0SNAoNypTxuchy0zIYM9xBs31zuQIrPJy+Nq47sjYW9Z4WlbCtw1NnpbU
orArXL0rNDo8jZ4cUHMHjam1zl50SPAzRaUmWhqFTmwZlI9FH3metdkfbU98KLXYnMi07Ft0
gvKOhrZp4REMOksJnLZmJTU2KLPeNTY129qhqA1kipcbGJkIKrYXEupSxjZL02ynqZh7pp+g
YZ+mzao/OKxK+l6+Zpg2+CTZBe7YXjpETAay+XO855Fw5TllhsuMM+Bfs7Uhjllj41Ug0J3P
1AzYAiJwsvPC5Vv9XEDMD5CzKNeG/k1ImgQbtcPv2vdMDSiMEnIoL7ImV7cbEsorx5r27dD/
tjO/7IojhGRsuqn01u8hgM5aSF08Ppg8N7FzpEPrsU7YylFUp28vVeD4zkbiEwMvIAJGTmAB
z5YzqDY7hE7ks1YjWGSBhSkJ48DoaxdiaSNAUDF483QNPMADJ+F4GwrtWHQzq0xpPlQ+Nl45
GRuwbIrxop0hUkZSVZ9VyFhCEPLrdp/DudWhA9fKOkcK0d17MBGJzoSba0mcUfjTnDHGqfDB
1aoIqIEOVLbwxfMUgqTRkTIwY/kDEV/POESJZMjKKQf5bmKm6Cs6p3v5dASt88v7/oni6RTf
MSiBQUl1SmjwhOF8cnh6en/mBtHlr80NHOQq7keK+PwnN5K/lc2ABbkq9y31dGqXXozvxdE6
wsxIRImXM33QZRO3dIbPgXaPn0wKuKnajPHQVk+QnuugxATg41Whn7UqOKakmK5rFmFm2ljT
MMQDYS4sFX5FgjXCchyPHbaLs90/n96ffv98ecdu9Pr+ARVFbHa5MbtmkTuPGraoms++cSpc
N4yqX6Wgw42WcHNVxt+KgZst6n/CeZgwZYZGu+EwLY1UKS0xV0GO8WcZ8+ZoigJzRHOwfnib
UabHKAHhWnCbAzpn2KvWH3WbEZhaZBy/TRLp7PttNgbujbrA7MMvRty0hSRegCkb5cp5Rfdp
4LtyGVaInyeMXX30bJE9F9bG4uO3MICPvWo5IuVDBsgFr4KVDWb1KyzcpOUKjxEtHuPpMQ/i
FReh9bHqhB6A0dlCRPtGfk11xbKs75RgAgsylO2p6JQbf/DIssRo7DP2r8VMYoayqh6Ue5GZ
MttTzEGyjAlEWgKn7tSdaW99UU1hAstw4YtjGCjAUmreEyq6hpeN/G5KdfQEsm6Iy2nwaqhy
J8aI5DzMqxr58fb5+v3t5S9WNsicW1tiEoDrhpj3WZJVVdRyoIYpUe3maKWKDNfxOwFVnwW+
eqaicbRZugsDF/tYQH/hE8TMU9asE2E3FDMHU+9VgfNC+tAsC6mGrK2UG+jNKlRlmryzwCPJ
ItN8T7f0hvTtj2/vr59/fvnQmqM6Noo76kxkWjlGTGWRtYSXzJblFXxN0F5wKofwlHuyhOLp
v5t/gnvKZJD8ty/fPj7f/vfm5cs/X56fX55vfp24fvn29RewVP67XpheG8+cylcDS0Wl/c7o
FkCDd43AmxHeQWMzfN2ntuZPh6E08kReK9FxsQBsctw2NbrRBFi4Q2mjdLEAlIkwD5kjyjDa
FL0WgrhyP0VdRddgXj0W2SQ2yWBCZiiPZdZUyvkCIxcHop5WcSIp0IcAOcYXilBNxSwqn27m
V6h/MyLliP54PFWp5VaV344TbYDDslq1xpxaNq0vnzQBTdi5qjSmK3u32rxQDXttzGl2opzU
R+IoS52l+jjysDN5Dt5HwaALRQaqEmqmZeTlrZ7ypHRZ+2kDHQXVawFU7UWActFmQzalWHpJ
S1gX1z5va60Y7ZAaBNE59YII8zeLP/HCcCxqzLIS8K5UbYE57dZHbVRgCvYzL3C1ZqenkbD5
ttLGKC1JXxiJ07JDdWeAlDdmOKU3Pgd17YAdz65orCdy9h1d5HMdMV3eu2hzhfw6jkTmhtEI
ady3RGvM+ZkbnDpqY2HxuFHJF2IUXFgEWtt5qHBvYYG1O9R0nzd2lkpBVvhTEW+wdP3KVlu2
aj09P33nut1iDsQ5m88/xYo+sUkLnLp6rTqBRDxMmzFpxUVXV6Vlpu6vkybbQaOfcAyMfM9a
aANlTgdfafU6ZKWDbmAuFoDYvFBlDXVJz5fNNPOaAmXyMlyB/KKS1512i43cyYVa4mI7QkIJ
P8vWHYnnLYL8fBb7oWjK4hSHbZZUz5eV/PYKJpLSK+ksAdCfZSla1cVS+Nr2Lfv42+//llQm
0de+8og27emhKvf8aey66OF5HXAe4xtQ2qcE/O1uPr+x9F7EYybPz9wflPVRnurHf8smnWZm
s7iGzjp7fk/AKB4KXnFGF4q5yQ+q7hxuUP0C/sKzEIC0I+OBwa0a+CxVSv3Y89Q8OB3Ow3cI
nSl5TC8IEIQoB64zeU/cBPVWmRnyNAmdsT3LQddnjC33bqIu2zNEstbzqYO9tzKzSE+daQhl
jS7PiAt9cEPZkGGh9+SAkMG6SjGSnoEmK6qmx8RmC/lma4DOjdStOJk5BliSM4irzToXtt9b
2grUb3dASjop5lj24kAGlMXN/LOHY800aoIap85Mem8XtNZw8Fkx72qK7agMs6VE8wuHyIBw
bOzj/hhkvYnO7/npaXVMN0zHtE2cyIpmresiGU6oH2PNMWmXJqDodRLRC9FBBEi8VX2EErTL
tXesSJiOpHAkyDRRtneB4yIzSynStAAxDkSObI0mSZ14XoROGwyKoq35CDh2EdIiJCe7yA3x
7AZMQJ6Ua5VjF28NRs6xQ0e8gHBrGJUHP+efee4yGjhbrch1e770t0TV4lUOuhccm7nRLHY3
VwKakyhysFwYkgTYI6YLA0ncEP+UdQX1Tlv45b58ffl4+rj5/vr198/3N1O1XBYR/RXNJWF4
XwmZ+wVd209LICzsFhS+4xt3HOqSNI53O3QWXvGt9pRSQStrwWP8HUAzna32XLnwppFwbA9u
CpVsp+L/lCzuVuVGyPCWUGRWkFB3WzzsOMbkSq5UFeoXZrAFm6n4abDZvN1jits+Sgw/VZog
3i7N5pheubbGQ+BvgcikvILZVnMGxVZHCdLtxg72Wz26e6ytn9NT7Dm4tZ7OFm234sKGPXSp
McWepS445m0IG/vXJhxgCuOtJJJr3YAzoevohPopfhloFOWnajZGfRdVpsGXDxhsy4kx/6eE
nuVrtRlYLu8MmQQC+uCGTCtThGoM/FTNchwp8URXedoOYqrskk0Vih+SoWKIszVve3WZuDb7
7XQOF6CdYgKvJ3BCpw8OkdYNYwSbnl438+TWGqm7WS/nOizRNCP2qY/OCQs44sdvEl/C+Lyt
RXDi8bEyCyjx0V3rio7YSb8hw9jZcjhZ8z5tfHXvo0ODgTsQa3vsL1zXZIegcym2A1kxi4gc
dR1cAV3h600InKdNRXfiwfv9DF7JqC/HEoI0p7jtzcyGvac+hYR+fn3qX/5t156Lsu7V2CDL
vsRCHDGtF+ikUU5PZahNuxLtGKT3YtTXYmWIIw/pipy+w5NMXH+rZYDBQ2YMkMVFZ0PSR3G0
nWQUxxZpIqYKbm8AoSi43YkscnQtlcSNt+YUYEjQmkzcHdqkSegipyGsRP4ultdUay8zpaya
7FSnx3RrgBMw+UBOR9geOK58RO/nwA7RiwSAlO0enu2qe3R96El7H8eog8WyiN+dy6rcd+VZ
utKDnSIjGgQepRxi7k4vCobuEqetOWj7y/mTsrvTA8+Ic2Lr6R2/A6YP1BLFV1ik5MU9UiqO
TSfUqijcpN13VisYEbLly9P37y/PN1wWY0Lh38VMPdHiuIr4b7MBg0Kcz1JVaadzUKoXWeHp
T7InqLCPljyLiqHV0NnswMgOgOFIN6wWBJuwS7AJhMQoEvSqpbHrYid4wiL/krZ746uiFDeh
tq8KYnxy6OF/DqrdyA2N3EkLuDN75HiqLrlGKhu9ZqvmWGb3eg9aLwY06hQbTJWe7JOIouec
Am65d4b5mc06QKDqma+gDUZXl+0FhOFu5cg+j4IGl2pzs+jYYPYquFK1ydXlJj/bdqRh7rGZ
ptnjJnKCrTyU97i/7YQ31kqkdUvHTDHoEnRRIi2hvh2Hi0X9mOeczGIRyXFbILEVdJNIE0V4
uBnCYGqOyjFA77ZlxsGRajP0dJuuE6vWyP7RWqUpycfD5MWkRpnHpsrFIoxTX/76/vT1WQuv
MQXLbMMwsRiAC4YaM5sV4/gyKnft0nTuYFQPGVWCDouRLRduXOjrlTdR1QBPKxLrAggHGVOA
vi0zL7FPZayb7KZuIt26a7UqFq5Dbta2Udee2eX2eeyEHnZ3OcNu4iVaefY5K6RLLvcaXfdb
n6ZCfyfvbSdiEhvVuuhFZjOBU9rGEK28BCwvrDPC5AOp1r1wxMLISYS1FQN2lngBguOODAl+
FSJw4Z1lbWzhn2VkfOGXL6gNBtLq+gg6Hjt4mR19QE7UbpPdyg/MXNxZGXJ/+c/rZKRCnj4+
lT51cSf7jTGnXpAom4oVY4sQkq38rXshctYzoC7RK50eFWMaREJZcvr29D8vqtCTqcyp6NR8
BZ0qTgALGYrohDYg0couQzzi9x5/kE1hdX17KniXUngsh4kyT+Jg+zslFdlXSgVcG2AX2/fZ
GmxpfokrwVNWbB9kQLHDVAGLkEmhOnmrmBujI0vtQcv2iD9CDVEK5Zv3lWjasEgYKNaTYm5B
hTnwul+TYBGDGnXIwfnxPYXOAn/yyNyoTOBRYhNI2JWIH1elqfrM24XoPY3EBftu5SREwjbl
nJ9ZsMlqKE0o1+yCckVKoQ7ashLoz7dTJ4xJr+T5KA2G6WFweNpsJU7ZopgiHnftXDGId0m2
PoMXqaoHs7SCbn0Rqs1TwaisZvMDJHk27tOezeeY++7sRW58zp954VTkqyk9ObDS8iGY7h3B
24KpQGzDs/F1mvXJLggVFWTGsovnuLhh08wCsxB6GyEzyPOXQnctdM+kV8WR7Y3vfRMx7MBm
gMoxXucaUYgkrdOVaBRufwddB9shLNJCRCOsdLNWaLQIQ/AYCNKnwphCb0ruI29mtdCXrGZv
eku/AThJxsO5qMZjepZ9meY0IV5OLBQzHPGw6uKYh56HzCyztz4RMbuM2pn7MtrnZqbZQX+z
Y3ZDiN+iz6nwQedgh6szxySs2RSgycuHzTNdVeHWjHgnQ5Lp/Sh0sQ8GNwhjJIO8EC8jC5Yo
jLA6xPYOKMvON3MQFkVkvzchNhoCNxwsgGrSIkNeiEWUkTli+QBYAkI3RGc1gJIdvi2ReXaW
u6llLiB7P8BP4OduxAeIWMyDrWn02FT5oaQnc8R0fej4SE13PZt2Q6x4sGL5WGbrkDVWtfnb
c0Zdx/GQ6hSbXgzY7Xahoi52ddhHEK9Dn0EWjtOFNFj4RL7LUMKkCQJ/5q+ESITUxApSMEnq
7GHRIUZ+PTYSKYb6zKwG+56pEEqdP5ved6XlIaCZdX6X8tjcM6mKdryUFA3Wg/Af0rIT75Fh
Qsic4kH5FvfNnj+4nuTPCgl8+7Q+8v+YNaxKJPWB9mw2WV7cH7rizt6WBTkvL6oaEsMFASIo
j79hpAj+aBgxIUSiL3nc+jMVyeGu6UpEaPGyi0nmN9sGeTZaR5AMS4ZTWd/1Tei27G4vTZMj
FdzM+/FUeZubmxwjxQZlIvI2ig63set3U6zfz5c3cKl4//L0pnv3pFlb3pR17wdspTV5lh3h
Nt8aewLLSjyh9/7t6fn3b1/QTOZ5MiNe7LobxZvM380qm5/XM4GMjDXF6bRT6nh+YM4mqSUS
uVmgeRyU/PFEc/CUWNOCr+FWpwY8MBMDcoh2lS6NQ7SrbMRFR4tMn758/Pj6h72gk9ETUpe2
T5eqgAduMOnl3RJSBC7X3Y+nN9ZOm12KKzE9BNBBV4LVrrovSDumlWbdtRTEmtea1uPg7aJ4
owUXz0BkZupydJY7sXmAjiT7P8qebLlxJMdf0dNGT+xONO/jMUVSEsu8iklRdL0wPC53lyNc
VoXtmuner988eOSBpGof6hAAIpEHkBcSOJPJodpgLcQwUSDaQ+gFUdUXdF+f4fOLhYpHdmHB
GqZU3tA580JeNyzsYpkRxuuMvaDZDfZsmC4PH4/fvl7/3DVvTx/P35+uPz92xytp1der3InL
502bTbzpPKYNiIWhObA5rg/dwg8yMHxtBAaFmSJvbXzNKHzjx4F76+PAAbqSn4Nvg3leUxoK
MEFidowyqw6OTfOn6AyY8g0AYkpJAVXjS5639PRwox5lMdBwmeJX8w3F1mc0eypuIgtuPobd
YwRyEKnmtzo3CHEZO4G1KU8X2y2hsiyghSgSozKGG4nf8npb3CdHAvDzQ0eaz7Jh6dZC+Pvs
zRF1AflnTezeaiA6rWyxbqrBs6wIaJopMANYMlm1tV2+XfK849gonCed1YueAywBQ306bAB7
qytpzIOBiJZslcpvrSHmOHTAUmkaFXeAxwjfdzub/UeWv86kSiskPBeNql8s6OJmq5b1gNqO
fgcPprw90LXKVqN31K0Dqj57Hg/Vkc2uSpGLXcJ1NR6H/R5qN4YEWy1Lc9Rld9uVXeJz3LQW
NKngNtHk4LJtKQqEQ6Ae05MluQtnYPsFKb04eURtirOsIbZ1qEttO94Umi05oCZu2FO5rU9n
7zpYm2g6T0OnkzW3x/RTrve8qDd+xDy65FYUofwcXsKFlhupxeTlsSGrSZMKlA2V3CQ6i0ES
WCrPkkb7d2wj04GHjoa7siw2Owjvx6bGON8X0voNg7m2SZ2RSC6A5V/jqSaajOtE6QE055Av
lVMTkQQfyEg/mb48ligZkxI6DJLIpKNRjsmE3DQskNQfP18fWY5nLVnr3PIHIPEogc2ZmO5x
eQRz0VKa9aJDgPKHA8dGyiHByLEbisE2Z5h01cmiMeheJowWdU4UWqa0CIyEhmw6Y+mOj8Np
GOVDkQ1y1scFdSoSTVyeVk3JPHlgSc392IIze1K07tbC2CmXDStMjshG4boLywo1RudnPUk9
eW3oin7Byo/eFzD4ZGnBil7DK9DRegjnCehbTXuVXewMSlervj6Uy7Q/UNMUzRj49mxGB7CH
+IKGxJuQyoNbCqWecHd7Nwb9bRgB37IXDRJTaFHMkcyvNDgHHo9Y7d7EdqVATAIQqnbZOIHh
iRFDD0SAlqjbBoXjk+XVFskpDzxigNVHzzKF7w/zw+kJcSJrvYZ1uwwjtZD86iiD/DMOZP85
Cr3LStjniiJ5LHVl8HGgDwADVcGEex9Flfiq0VDsfN8DfxZBr9xXtHgHtEAjzwWYRTGYGmDB
OpquMrDhocSKh50hGb4LXPByeUbGoSL9vPGVwXSlLEPmK0RpDTTH/TaNvIXA4GnCGJeRpizi
E35RqvliSKpzm/idH8F3mwx/F4FhVxiO76KU0rNECYHEoLkXBmqqCI4gIzzjKqBa+nlHr8qM
Sx9878Nwd/cRGdWS9UX7wbc2p8bZe5EfRXbl8+Pb9enl6fHj7fr6/Pi+Y3h28sxS9enJ0RnB
Yp7mg8lfZ6RUkIcTaxMwuTAlmD1kBJiUh0RbXywuolJB9GbZ4B08sSxK2IWcDT5UlAhMjtHg
wLbky1Se4gJ0xBWyX8jFM7jB33MlMNzMLgSObbIjtH6zl6xWcYLwwQdbAmNl7AuerSo0tjWD
OcEdU1ZBTkIsvOgbOB8y6Jo0Y9A5lTK2TDkJ9A8uhe2ELoAoStfXLUWXuH4UmxZ23DNX4TM/
1NKWQm3+he6rzBW/lJFnaS1GoK49bC7yKIlvbXPmgVYk9b94ka10G8+YQp2zVQM7Y+QLbvkb
FcNTnRcNC4UNoRgCa6auo4bcaOzkSFVsxbCc5svw2YGPmg7+bkMOqmvaC60nClNuDvlIaE7Y
YfJSWykO+ZARMeqiQ8cMZkIjdJ9RQUZkhc8l6Ey0EtP7ZXa9vJDDTMna50hUEj7CEKlKOCGS
QhNYwhpgxdHdXhT4sAjzVvCGDCj13RiaawWSivzTgALM+0eIMdtHbjPWvLpWHPB+Aaaio36z
FE2bRJS2MRRGl7IRkjCObFkVHKQ6wqBEle/6vg+xZrgoMjA3rMmEFDZsRwB/nOOC7JrgvZpE
FTihfWvYbD2HFajI/B/aUD0ZBmxc5ncG9pY+a8o4H5o3BRI+lxi+J8gADJa10uguazLOF6ci
CcV2Nmacb8JFgRcbUYHxq9gK4VpOW5gbfcuoQK9uhSZ0zXXaaovY/F1kgYOC4xyY57RNl5cU
Mj6M4CIJKorhEpPGJh0D4xrfk2Ouibgo8qGoIDJJYBjHZfM5jB14bSlQkW3hDSOjOt3LGD8y
FM/2mzdKb/Y5gp0OBJoExZ7haZdIpTu56kSH85dMiXwhYHtiLcH9s0JjsqkMCQYZE2jE10wr
mN0CtU15MiKnGLcw8oz3Y8+zAQByia/B5XS9XV5BDvbCp+oWWUCRtSII77zIMszkfA9/oyvb
ruzB05uVBDtlg0yFUCS2YW9mgcovo9AQT0KgMvmWCiTAjl3AFkefjLhbw5evofd1Td+w/RJt
32aH/Rl+PqLSNpfbPNkOYuzLEkzQtRKSyloBMlT2PoocD9piKTRhBY0cslv07cA1tOS8Kb9R
E0rmKMdgBjJik2+NxXlrv1klRmS7oIHXN9oKTtpuK7jYtDSc99XbYi3++ACHzXfkwpaGxvrY
LAV6WbVi+T54k4G6oVVMW4H2uehe3yZ6ZjkaKRx6BV7krfjOpTkwCHvF5CgMpnSQ0GkQw9IE
UmIyhZZeH4g88nZOeAI5KZDVcEd2emKy85zuKatOyuHYatkgWjkGEfldnfu6U2guebWvq3Qq
QJRJfdchCFQeFVoCocnljOTj6QJ8UWVgokuO/CQGw5hgpIL3AB/q1A114oxG1X0NCZxAa/UF
GUgjp6jrhr61lWTiwUm0luMvrsE8AWwaJziJt5KcoeUeOKB+USRLGWfE5ob0BS13SIOFEt8A
JtoxNoVUdZcfpGwMFNqIoaWZ9wgDi7ozkY1kFUF3dtUn6aBn+YS++atb2JeF0kx4/eMJQTSi
ME2AM+E+bXuWFglnRZZIZa3xvuZjoI+/f4jPuydJUcmuvxdhJCyqUFEfx643EVDPmQ4VGxQt
SllKRBCJ09aEmuPRmPDsfaPYhmLwKbnKQlM8Xt+e9AxNfZ5mNAtur3V9XXVtXUiZCtN+v1pd
qVCJOSu0f/76dPWK59eff+2uP+iZ3Ltaau8VwmS5wuQrFAFOez0jvd5Ij405AUp7/fhOoeGH
d2VesdVwdQST2bCSDpdKeuPKvifrLOpsDUDTkjdYLp1IQk0gdcicVEJvILUPaNNDra5xYPzT
5z+fPx5edl2vc6Z9WEq5ehgEDaQFUdPRw1s7EFHpfYXoNT5rNml+Z1iW/AxnLO8DMawY0+hH
sKsZIT8XGdRLU60AuUVd1l2UuYbNgoP+V7yHHMUKrnBgEDJ4mZW1mPpixUidrfMrUVHU6vhd
PsTiR16x6jr3+FELJF3VTIZKH/KTY+zGgJ8dTPsmJ4M0x40SPtFMTNORn+X11URVBp4XjEmS
QvP9TOP6PiOBvncDf8yVJKNGufcZJLdCTj1wScsrDvqyeVCyVHAoPtGvNFuTayApHcNaqKvX
j79NMV0kcBqWwuAvlSHPWoVKrA0C7NKEb2V+0BBsX5cm4pkAx8yuk0mm1WWK5zv5tXhjrpW3
YmiGyFJ+sjYx8RtiTg3ZVleSMm/yMcG5UTdn7xrKiyzLO1VHF1kYwZaoDVdM07hFpeeGZGfb
HKDbc06jxr8SobQWTjvonTOhu0Y1BzOm77TZjD2AowxBRJ8DDc5d1XK81eIzDbzcnHqFue4l
GEqgtFAEjEIVriNQ+dENtWDEUDo0NsRkwIymX7V0ICFdFW0R8umgTH7HxPDvCNs5FZf8cqXE
IyWgec7hpiBys1UUUIQgskiiTnykSboenMXk2UqYwB5eH59fXh7e/tZdNHkD0+0KW/rw94Y/
vz5fyXLu8UrjNf3P7sfb9fHp/f369s4SQ31//kup9tRLPbs6N3Zvl6LQk09XFkRMtunmDzMU
eLavDWYGF28jJpOJG9ezNHCCXdeKdKjvej4ELVwHaSUWvetYKE8cd6/izimyXU9TrEsZhaGv
V5rCXdjvbpoMGifEZQOfN00KQ3ay4747jBrZ/CL0l3qS5/hI8UKo9y1GKNDi4M3h3MUv1yW4
yE1dMNPcJmpDcTAwsVGEF221A6UILDjA/0oRedDRCMfvaQBeVSIC9AMAGGjAO2xJ4YyngVhE
AREsCIFZDKHQBp15RPwA6Aq9+SNqtFHXrm98GzwFFfCy/+GCCC3L3EjdxYnkQFUzPI4NWRgE
AtgNaSUwxK2blWFwHfBQfmpqNMQOu6gTBiAd4g+SBqhDkTVzqE28yeD4kSdFNVSGtFDK0+uG
0oRkWGx3cqQZH6YIIawfkCWhCHdzRDAKMOPLivdF73kJTE9WdFTsRrFmA9FdFIGj9oQjLQW9
1LJLKwot+/yd2Kt/P9FXzzuaiVnrvnOTBp7l2pqd5ojI1XtQ57lOeb9zkscroSFWknrzgMVS
Yxj6zgmL7Lc5cMfItN19/Hwlm2aFLV18kBHszN07+z8q9HxGf35/fCKT+evT9ef77tvTyw+B
n97sobupmaXvhAb/v2llADqCzZsAtsxOLUc6ITALyCV8+P709kC4vZJ5aElSr84RTZdX9ECq
ULsWlzlqmgmjCHvKfR9yfJiqUpIW9lR+DKqZfgr1tcUChYYgh1hTVwJ1Qb6ur2l83TuBBxhk
Cgdv4Fe0Po8yKFRE6AG0fmCAAoaGweEby5kggAMZrd/rdo1BAXn9IAagoePbkGRh6JhnPIIG
qxmC4qgJoWZ4FG0MrrqPwSJiySVmhtpupI+uHgeBA0yvZReXFuiwLeChdTVF2IaL6IWiUa7x
dIpOKRygsG3zqoHge0ufXBjY1ZbLFGzbQBfj1nKtJgEfy3CKqq4ry2Y0Gle/rAttA92mKCn1
/UP7yfcqSAL/LkCwN5lAYJ5lCdrLkqO22iBwf4/0IxZm6HQxsi7K7uCVOGxamdUtCMy0+0Op
H+nNgO5CF1pupJc4tLfW2pQggBwZF3RkhWOflOKsIcnHJD68PLx/E+YHbU1DvZq25jbqhm24
h18IAi8AW1IunM/eTa5Pt/NMreKUe5NzlS1ZvZOf7x/X78//+0RPm9n0LtVO+GJ63LFxG8XJ
yP7ZVvM2wmSRNFFpSHElrBcQSjqh4OMoAl8JiFQZ8kMxmr+ODGFk2TnWYJCN4uQ8mBoWfJYn
EzlBsMHCNphIkexzZ8OvM0SiIXEsJzKVNCS+BToryESeZRk6sRwKwsHHW9hQv9Xj2MTzcGS5
xmag61P4PYc2UqR3HQL2kFiWbRxFDAvNIxqRuzVMbQfGZlO7Gcomy71bTV9GUYsDwsXQhN0Z
xZZlrB/OHRuMrSgS5V1su4ah3hIrbeq9oXAtuz3A2M+lndqk4eQ4oBrFnlQNjuIO2SzRmL0/
sSPRw9v19YN8skQuY08j3j/IRvzh7evut/eHD7IzeP54+sfuD4FUOt7E3d6KYvhgbMIHNqgl
HNtbsfWXembKwKB2TtjAti3hXmSF2jKQ6pBoiRgsilLs2kx1oFo/Pvzr5Wn337uPpzeyKfx4
e354kesv8Erb4U7mPtvexElTRcCcKqQiSxVFnuiNvgIX8Qjon9jYGcJ3yeB4UrrtBei4aguX
nQvqLsV9KUiHuYHMhwNjraf8k+2BBz1zPzpRpHbUPlBUe6GNod2T0OfgQDGOLjpJWqL/9dxB
lhUFGjRy5CS37PA+w/YAnsSwjyYTkNqSiV9RvEd0AUhRg0qPAltvFM4APopb8ZCRWvtebzQy
EMGIBUwQTKY8pTJEXbQK0rRDyNZbkVQitMWh2+1+M2qSLFZD1iTGkUSRgza0nRBsMwKGn/4v
Q9Y144lOp0ZkQXbUEbS3W6vvKWJWQweNd6KBvlkIqm6ubxp4ab6nPVLuVaYzAr78myhCSmHm
TNENwDiGFztCxRVFR4fYsjXLkyXb04Ern7/zHk0dMpdCL34WtGfLL+Ioou0KJwJ3oCtWsb3M
SCv1+JLaZLKmHix1Ko7sZJorjAaZWo9IVSbeVo4NQrXW4lZRUnB+ANphUnx1ffv4tkNkF/n8
+PD6+9317enhddet6vZ7wiaztOuNQpLh6ViWMmbr1rcddTKlQFttsH1Ctm3qpFMc08515Qd2
AhxalQroAKncSJ8oJTAltmJlwJ0j33Eg2EhaAIT3XgEwthcLluN024SJn8aONoEQvYnMesOM
qGNhqTR5rv+v/5cIXUJfDkLrCc9dUhLO3lMCw9319eXvaaX4e1MUqm0moM05kFST2H1wDmQo
to3l2/Ismd3R5v367o/rG1/lqMUSU+zGw/0n03ip9ic5LMYCNa0jCLJRdY/BHJUNfY7oGR4t
Lngwg96K1dSZ7uhNRr044uhY+OrYJ0B1BYu6PVnEutqUQoxIEPh/mUUeHN/yoXyW07q4JZO/
PlNROw6+lKLIU92esatoLMJJ3TmZDDxlBfeB5718/f79+iqEhvgtq3zLcex/iN6K2gnYbO+t
WNF93Ei3GqaNDo83fL2+vO8+6P3gv59erj92r0//Ma9L0nNZ3o8H5VxH8uHQHTYYk+Pbw49v
NAyG5k1LI3PnzblXwxGkYhIp8oP7RaVy0hwKTxtiwQYWZV7JUCqTsQyoJTjbL2icFQfqwSKX
fFdi2mWN5Nc7wQ97EMXZEdFK3I1d3dRFfbwf2+yAVfEPzD93iXRuEK+oUTqSXW86HvK2vCCl
pWhJ0l0nhR2zcmQh2Qyim3D0O3yi/kkQFienbJn76R3bdP+5I5bLdKdHvyOkpI/Iigq6iZgJ
cF7YYmbuGV4NDTuqi6NhA+lr2fxMsvGFQ1vql3iU6SktklTtJwYk7VJfxnOVZm17htNWsqGK
inzDd5R1QF1mUwbP+RpWEEdm15MeMbDpSUfKLcK9+xbb0naJUjtO4NMcYvTpTqVWdPIuLPMB
jMMgkPR5ms8FZdMtOHNd2L89f/1TbdXpI0CDJ8wpLSEPO0mmxdML//zXPwHvZoH46EDhswSC
XL6jEDBGL02Bpq07Q+Y/gQgnqFAVaBYPK+o6ZwQQZVqyBPCnFflAFB0ocSFL0opQgBzSi9bA
INFsZrcJ86qqf4Ff0afgu7AZ3x7F92kL9I6sfAPGXmki6uqZntVe466hRtPOv7qY+FEZATBN
9JHJL56Y+aO+oAAI4L7CJ9ssCc2xtICsMg1U7lYKaAxPKgF0qUbD1FiTi2akIJCRhxSRjU3e
djQDbHM28G1QlS3ZH9Ln9x8vD3/vmofXpxdF4RkhC4NLnUHJ7FYok9ZEgM94/GJZZJ4s/cYf
q871/TiASPd1Np5yGvbACWPNQq80XW9b9uVcjlVhmm048dT3ABv9AksjyYo8ReNd6vqdLebd
WSkOWT7k1XhHpCHrHGePLAcujRDe06Qqh3uydXC8NHcC5FqmYcG/yanr9x39J44iO4HKp1pa
kLVRY4XxlwTBZX9K87HoSLllZqm3OAD5XV4dp6mN1N2Kw9Tgvii0coZSKmrR3ZESTq7tBZdf
/4TIdErtCN7HLB9Udc8iN7PRI23CF5ISVR2xoGWBDpYfXjLZHWOlq4u8zIaRTvfkv9WZdGF9
Q9y6zTHNmHUa645GE4qhnNUCOU7pHzIsOsePwtF3OwxJTP5GuK7yZOz7wbYOlutVyqZkoTWE
KrgheIvu05woSlsGoR2DWziIlrrEQQK3dbWvx3ZPRlPqghTzSwocpHaQ3iDJ3BNybpAE7idr
kC//DHQlePYA0UYRskby0/Od7GDZNySIEILrkeV39ei5l/5gHw3y0Ze7Y/GZjITWxgPoKqNR
Y8sN+zC9WIbxu5B5bmcXmcEFRjR1Hek3ohm4C8NbIki0planzt0oGTzHQ3fNrdIpcUpjfvcs
b1/quY4zW65f+bYhu6aM3aGyL7v2XMAPn5Tv+vqepWRk30Vjl6OqhH1k1g8Z82mGCsfL5+G4
reh9jol09UB1JnakjfpCQ8xLk5GRNDSN5fuJE0q7d2WCFT/ft/9H2ZMtyY3j+CsV/bDR8zAR
KSkP5cM+UEdK6hIlWWQe5ReFx1P2ONptd9jVsbt/vwB18QCzqsPhsBMAQYoHCIIgUGUFuaUu
GGOPXg0MpH4OuiOpnacljLgErnh6o40feACdtgQANSpzoNmuGlig7KjlcR9YCwo34QFjCFh7
GM8LhvogqNEy624YXqjIhyTebS7RcLra7WyuNam86iRwUuxkE233zoLtWZYPnYj3oSNwFtTW
Eb1wXoW/Vbz3RAsaaarjhnTxm7FhtHUZq+Co40B6WcuyajDBV7qPoBMD0Bw8tchWlFXCJh/8
vaOFWHj/hm4RktdtLllsdqmJNT21FB52sFO39bjVTxSi2e9gpD0xQmc2XRaEYkOG/kaS5VjF
mtveeE1jYw9G9DoDmzk6NFolJhd0b+vUcuNl1sW7rU9JXQ8tpilrBEM1YvA9XNLp5tOHJVJc
eWBYVvjN+Sx+U8uhrkEa3HtiOhPLi0+DRmydJWaPItA9RjlZdzUgWg6dA0zkubPEs7ds2KXy
GwlZn3aF7+CjMgs+Vr0e80HJqZtwAKfElmVGcJIF5Bvirva5v6qZfcmdNwka+pZ7zYiVnrBh
2jBOfWtbPKdcIcXJmvM8zawNR1aZcI5Q75+ad7yDhSHOibeVNYp3n3lsUavzRiq76PDuXPWP
VkfXVYJBCTKVvGB0vfzx4Y/nh3/99enT848pT5e2zZ2SIeUZ6PTaRwBMxfZ40kHa/ydzqzK+
GqVS+Huq6rqH7c5BpG33BKWYg4ABKPIEjm4Ops8voMvc8lrA7B6SJ2k2UjwJujpEkNUhQq9u
6X1seNvnVdEMeZOB3kMMwlyj8aD/hMELTnDIgLmhRxo+YTSEFIMDmcRo3airojQbjHSTadkk
RwsBtlVWTUEO6H8+/Pj3/3z4QeTrgNKs56llt8WerTuB79HoTxyFnM4jNcelVdEkDFiR5PZv
fND731sN1l360CDCxHV4vyGs5okgU4ET6eapx8lWiSsHBYjaz7DaGzOu7JE80E9qWGMJA5BA
Tw+1FWwAR4DOqYrFIrNn8H39eMnR54WylRnoKuFDcZPbnVW7m70Y5xQzNtdTMkzxgFcYZroZ
b0pOShttzLXIczyWtDy3vifpW5aJMs/pHDn4HT47D+IEujscLJ4qcgLlC4kSDzZFnXyGaWFJ
PCVPRqwSUoyNiU4/fPz965fP/3l5+K8HGMA5dI1zrYbWi7RmQkwRuPRWIW5+MU40Z1m1NgMH
Pz6eN3PErNhHmYU744i44sZA4+SgrETd9X7z7NQpJkYPG7xi1gQSDmrMJ1bnGd3kKf3O3RYB
TRzrhwsLdSBRWpIOqhfuJ6HXenQfbajjqEVzpJpQgxq6I7uyw/21ZxRKi9/ofq6V1WjFWAma
1iZcoHcPdUfhkmwf6OG3tXr69JY2DclwGsk58e79lTOXVw8s6C3KVtRA/bcMg1NVzm33zEG0
58aYXsK0/aslXlaZu57LyigHP5e870L2eVPIkpwgQGgFpltQZ6zInS7IesqPO2/C4s/nj+ga
gwWISzcswbZo/vSwY2l/vtnNV8DhRMe0UQSd7wmJwp5B36FccVTX5PWjrqYjLC3ROmrDqnSM
qacD27OVuQChoODAwYfSV1UZ5ZJu8XlywjsiGMajaJveSrNukOToWHDyVIWx2/RsXQr2/jF/
sisqcp5UvXeIT73FpKhB327PwoTCcYnVWWUCoTZlY7agT7kJuLLaumEaOeZXZdX2fn/x1Puc
IRBdYRQnmytoIB7y31hihoJCoLxWTclo8/j4hY0ANVS2fpI67doruaErrB46aQQ07aW1YG1R
4bqxWzfD8UdHW1AXEnKiILY/86TOO5aFQLPWi6jiuN04wCvoSbUwwOPELyrQ7c8it+E1Kl02
8GlO4qdB4bygJr1FW6Vw8mxP0gKjftfn1qLk51pW85wz+qqR9CU04tpe5o+eAYKNDTNew6TX
BkoDOh3R5ZLVT3qwIwXFXKCpI5wnMOh1vuonAv2MRHLAvcr3fQtNTt6z6yRGBFWFqFmjjPmp
I6K6Hi9ZvbUKVvm7dboYMetS5gQ4dz9aYJkzblcOQJiGsP2QoQYVxbnpaltO9dySUQVefzGh
S+UF5Iyt4KyXv7VPJl8d6hSRlb2aQdaJ3F72aKMtnI+UZX8WkjM7aLVGcsaNe+hEZPK7VhVv
pbUWb1XDrca8z/t2+pql5hl2b9d9/5TBzuyVvZjrHnNcnBOrA0d4Cl+FIdfVL5OC1Z0RdoJS
KhanMlIHQrPqrAdpTl4G7YzQgXN5jPXelmmFQdMkHIBH44feQUhxJxKrmfSyu/YifwebtcdZ
aMJ7T5hQbpicDbUYXWOYrvL7z5eHdPX+JHLNY3F/9E7Esp7DP7R0RLzIypS6KkHcnEF5HcMV
ym+qqBel6/cKpbJDm+fidMwBXtIxzdS3jQENPe1zDQmqOzkGJDbTWk1gEwLtr1yIMnlloOnZ
bVVIDDndN6xWFJ5mzcHBTd7Z1f4N0leeuANN6nN+qnIjReSIWdz6THBZRYdjnF6M+/gJ9xjZ
nwHA2cnKPylK/KeilAr1gdgV+76trfpUyGYTlL6D6WWCSvHOBEzJma35osftVlPlaljBOOjH
skqpHajJr2oz1DSbHG8Xa2Yq4it0UPoKpUKtJEr5UCm/Lb5Jjzt3g9m1yiu6IDfF6hwLFK6h
UhVzs3IqMGuiTbg7MhsMW2Ftw66h9aBobE/K95EnYdNKsKNCHCi0PPdwMIGl2VR2K5TFZkMB
Q6cZd6w7M35PhjRbsEczI6qCj9lUfKVElIbbm1sqbRNQVId354SSwTpJz945pTGFyi7yNnWy
ZVhfhwkX6SvUBU9m9pmwOyNiwAzcqew6dmTRBUs+v1ixEcFwHzrAeGc6lczgmEzusvbQzu33
Ce5Ll7XQ7CO37GjY85WyjXsjKz07jILoeeuMJZCF8YaYszLakQ9SxvW25N42ZqSd1UhBG2E3
rsnlLdFjH4+LLWWYIcOG1unuGBATeU5TdWfZ7Hb/6xRrZUg+uhp5umlsFbwSUXCqo+DoNmNC
headhSXw1Dumf3398u33X4N/PIBW9dAXicJDmb++oUs+of49/LoqzP+wRGaCpwfutGZMh+qd
X5gQObYHrb6NaRB1IOYUtAdCpUD1rjkUUnREqbH0vZwrY0d25nvMpQvljy+fP7ubhoS9pjDs
kTp4sNJLGrgWdqiylR4sl5nzeTOuzEFzS3JGqcMGIXHVZ+BT86LewLEUzlKVpGxrBh0pbWdk
lp8YbNODORtUp3758wXffv58eBl7dp2EzfPLpy9fX/BdyPdvn758fvgVB+Dlw4/Pzy/2DFw6
umeNwHtp35c6occNdMcsyxdNhKbdxlPDnOd1qYClKaggVYIuwVQv5nCkczMj9BLDRycmYNaU
NFCZyhbWGQmcL4d++fHycfPL2iIkAbSE4xa5AhDvzRwKuOaCV6qTIgWAhy+zs4oZzB5zqjfy
hHWdPOnQZhLrcZjekP5iHMTwUIl1OsrbTOzqbwbGSqc5oViS7N7ngsyztpDk7fujy5Ult5iq
LelT0IQTooDK++nCM2FfaJqYIYV5fe7JzGYaoR5J0IQP10x62O8P9Bv/maR84vGOjHg0U8AO
uD/qBx0NMeVbpBD6bZ+GmPMjOg3pxS6NDmTqxYmiEnUQbmKq8IgK73/qRERmupxIbkBAtLtL
T/HOfExroOiQUQZJtI88fL2ImEDwbSBjaiwUfJoH9ny1MycviHdR+Eh91JSJ625vzsnA7q3u
NSeYi5nzbLsTIcUUfmQeyYlCwDnnuGEu2xOPgoioroeFbKUmWzG72JN6TysckvlVJ4KcwwGS
WAb9JdpQ3Y5wK2ncgonjzb2pJHbc5ScykCHxLEYxtJxXjCoXyQYtw5VOj68HXxW/mYBzINls
mK0hHbfY6IpjGs6Vdl8/vICy+sdrNQYhLSwA4/Py1Ek84f508RjvhhPjFXnFqNEdtqRcD7cb
Sijb6ZPngZKPwUEyUoLxbSzje6IJCaKdr+iODoC1kAi+D8mz/yoLttb5bBm7bpeS7xNmAhxb
YtFhKsobsX2KLjfvebVp5He5mIlGJ0dH2fz+7Z+g61rTyVUGBD+GdMbUZeiU+ZMY06pYbFEO
35Ooh5PkA6sZ6duzDMPkj+qOjzLjXpTK5S3djsmQnMIiuqPtoXzqjhHp67YwKN3vvfTbgBq9
rt5QEhbBgQtm8hj00OeU+oA4wfiR+qTJE+LuZ10kbLz3xlK94yTmn2kzXbak2/YYEVogvxBN
7znLWBQT/TOlOiL2Jgn/8+xCaVtipCJP1MhVfHDyGfLc0DEZtFvzb++3RijnGV53s+3ORaCl
gRhlHt9upJot86KnvKCWtjcXQfTtfEVhw2V4CAgBOuZopuCHPaV43wor6eUi0w6R54GW1tmk
AXLhILNgNNQ4MmbK37R4FYkxvO7drc69WMlgitlZPFfYeIzTP03DXZwz3vgiiTPXOZuJpyaF
yT/kDUvqXFnT1WOtayVTszlAUhhO3AibfEbncmZjh1a7vWWYKZHBVlRkujs84wnGbd/oi4nd
qvlCaIJMK0QPFIr8cWqb2a1V6jIWBDePoz6iUS4QQ5td9YqXIqP4RDDlrwqSPze+ByHvDAgm
9uRZOphA9birAtjeeIY0wdtuYHSNj5HJCBZrEI/t46a7F09Pqm3UnVJVJzk7S3Su07t5gd/c
+7hu6DzMOEYC4YbxhcPiaz15MRVquNCHNX4Tnq5uku40jc/a4PZam4CujqLNYLVmyj7meWi4
YPmZ2iVHNLdZdn3maeh0J+JMJCUjw83AusTblpEm2PhGX1Y8sb9uvv1UbaT3zIXk5iVRstLz
RVN+MKOjJ9j86MRskoX0TJz3FksuH4dSOKDUXE7KYbjElTPwgksKoQmJqxoGO8rR1RkccfJN
7zlBnT0BSoTkQ8I8LoVjAAz60nrmiZ4PzjSpnFVriK/Wyh29yPb065fnby+G4rtId/rTAGrF
XVqk/NCzag02yBmmbndSdCrupzHCxNoxVwUnqjuPfCxxjWlJeXvJpwdBdDORaA4TZe4xiClz
1nmgyh6acw8y5UYwIOs7l+3ofJve3a1symw7bT2alGciraph9Eub6WSwf9TjVHTqjdV4aY16
v2D6a+JuiqbRygX3i2bgxXBbyn2thq2V9ibSSagrGg1v+QxOmBVw1v034AeskFE3r3rjzhZR
GUauGlHUyGPh/mx6A1xOnuRvvZ7LToPqzZkCpvC8MW44JvAl66j5PmETTHzaNg6zqunO0q2C
U/Uql5fxVZubbR2rN1oFv9EjiRywS9liYhz4EGdV8y8ff3z/+f3Ty0P5f38+//jn5eHzX88/
XzQfLS2Lzn1SRXt7/jZfFTpuXvjWx+kYDajyzPZPQ9nKrj4XJo1I+3MCk7dQmqm6EjK2AyBR
8dYuoFPSrr1jTb6wPIA1Y7ghOYj7jskR5+WJtyXlU5f3l0qQcaOQCP4m6J/nPHJCZNFII+v0
ChsWeaajetZI9bVWel0NCVLWQoK63co6QSKzRAcLAeaZCcRs4sOtZtJIcE2M7lyo6POnxPRK
FJKBnKdugrSzyEI9w4au6ujtDgMW8Hx54UR5kfK8rhnGZZiJ9BpaUGRBMQwOlKm1ZLA/pLXm
oAQ/sI9hZj6etccrMyH0W94xI528ulGemIx75NfvH3/Xr87ReNM/f3r+8fzt4/PDv59/fvms
73ZVKoxZjdWILvY8mEfsJb+pxwhDa2dDnaNEvq0JJldQkSgnrPUDyXsWE33cxnRkUY2srPa7
HaURazQiNR/nGKiOOmXpFNUu2ga+4oDcUWZHkybY+st73IFMIjLit0aS8CA2j5gaMs3S/ODJ
VGiRHck7BJ1IxT4d0s5TFx4sBXulS4ucV01FzfrVMEF2RMg7EZDdDVh5rfcb3YSks4UjGfw7
pps35um7tq8oZQBxtQg2YawStmVV4WmUOpK81rcgRsuGFYyS7RrZ6KlEMWhvDaP3D43okr66
XOAYHHoDQ+gTKjsExstbfYyrW55ZGofqZJW1Xtg9jKdfQRtBF7QVoH6B01kLVGUqxEZSSTFc
exggADZhXHap2aaEVY+sHmRgs09kMKTp2ROzWafIqovFM+XhIQiG7NI5XEefVR/HlA/7yLRN
6vChYORLpZnmsW0YOSJV17cpxTV9KpoztcvNBGUfUuUaQXsBr3jK7DhjRW/z1CKQ3Z93ZQXy
dJ9eoo1PmikK6uLVpNnvaUmAqIMX5TpMm1tNaNwh5SKXKvSHqbKcE43cY8xZaLChry3aBHRv
8pjEb6mjcGDggphzewQUlDxqzUhnMiuoIRtHF5hvn5+/ffn4IL6nRPK1OfpKWmj+cQTOtvfb
uHBnpG2w0eSGaBPFHv63wIrfbSJjj1PBTCVBKED/kLoS2TnEXHrM0QNKt1PLavJYvKv9qUja
8vl3rGDtdF3A42NTmT96Vg9eWpD3pBaNfrHhoGB36AyvL5ei4sUrFL91RZanrxDxU5GefDvv
TMOByVu+CK8cXqvwkjd3SPaH/c7bGESOW6vVnjvkKbMbf4e4gOP7m4nf1CuKchmqO9wuKgbb
36j9VPwN4qqrNuxv0idv/TykDtj9MR2Jkle7AclCu6X3qV9henhlJ0Ma/TLRQY0DfacGIBlH
+C0VaUvkDr9pkbw+XHjh+SaqV3shDiL/youDPe1u7VDh+nxDVyjSV9aFohnl05vYzePkJbgv
neLgEN1pyyF624qPg/gemzgiJZiXeJRf3iYDxau9iDTdWd19vKoIWfSv7mMLNcvqtzShoc1+
Lrk77veI3zowr66+keitqy/e2TnRfAYdQ6vQFI/JQjcaff74+v0zaDZ/Tl5xPz3qB/oI9Xkx
ugH5CLqSCdLsNeEF/nc8eFHfVtwSOnicceR/ZV0Cgesur1cShOxO993vm+VWRjnhDKwb0s7J
mTEhowO+39LV+KVUvNlPWqGDTLsg2KxI6gvwrtGj8U93e+bJIef5xTkO9u8Z7YSikAdM5+S3
LfYxO0TMY+Ga8HAM8DVSYd0WKTDlgbpid+aXjUDj3LdAWUBBExKakhxyx7qg4AfqLeWKPRKs
jhT/I9WUY0gBtxSQ6ovjnqxpT1a1JzmQvXmMSSj9XXTLmE0LkH1hZFVHsChhZtmkeJsNh7QQ
VkdBoyIP6iwSKFW36SNe4VoE00U4lBy4EP09rOxoLAgzLW+Btkip3B4I726eY6gqdIHFT1q9
EfkYjYlJzSKPURDSb85mdEy/Dp7QIRmoeEJG5pOHGep5bzyjyYTqM1IPia0bge0gIlPSFBCL
+615gWIRgOonFAtDnCpHGJCkRsnVUqOwoYalDTpIto08ZPqsrU7VJbdmsoINp/Nuuxm6Xnfs
VQ48npYhSqTHeL/x1LdSRMwurepFH1OqHMLR9Km149xUl+EUYFZK4aB2m2pg2Pmpcc09YwK8
MEip0Lk6Re8pXu7vFwY8VXSr2NpFDeaVn/EeSkcBwTYGRBjdY4sUkUNh4uNI0rzL+wUvkdv5
mOwlD2l2/fZuDxyxKXfGBjnYjLWVKCt8+2zaz40JNjt0+a5XCo4WN517eRVd1aAUdsyOo9Yl
vv/14yMR5FU9cTU8OUdI17eJudxEn853F0u1k9l+LEO0dja+Ly9pV9eg0RXfW3LxyLcf4aIf
Z5fcgxpfc5KS9xuY0E4LqluHfny+BiyZk6yalJ69t6F46WKB+oz47HGB+eocF1cpLE7KbdDl
NbrIu8wWgqZL+YH6xHWyjf7sg5Spt1HTswq3/mlOZMkNmwHyl1PLYQ4WbHcPkzUTB5cruoj6
G6yiaIX3vhnWQZ/fIZgNyN7vRR9d6G8JU485oz99c1cJiXkUWgcDa3t8dmeCRzfT2lZW1Jrq
yDsh1k9Dop01Vtiw3yZ6vGs2BlovnV424Oiig5EtzQBhysu5hy8+A+1mE+88zgN4YVNjbMeF
OtgHG/WHpB8Vi5kW2B5DmnDakGbKc/PYtNeGMlIwFR0dv0TAEW9rfOflwJU7YKWnFxuj6XZG
VymQ7hc5DcScEC+1/UDUAE65aaz4uUYn4iMh/8RTN9FD3xHTe+6HJzG/KBfogZrq/q/oK2sN
rtJTbJjFQ/Iz8TW/oRUIu4VqxTxZjOoXKJdn/S3GpKW3MMEJ4rH2WZ1cxk5WRJuWhGb0rqeW
3c2MORlHKP94T2nDCzLYE2XITGxTLZgyoeioSaDyL3T0BBg/DSlU8HjpEbizOEDPfmqCyxRG
Jdhs7HFd7tBoMNTZmv5LMwbAZEtUpEi1wUGFIE3uWGws3WGZkayqk/ZmChteaiOOvcFHklWC
T95hSEmL+DoKN6oYLQAWy09/hfXG/5+ya2tuXMfRfyV1nmaqdvbY8v1hHhRJttXRLaLsdveL
KpP4dLsqibO5zPaZX78AqQtAgc7Zl+4YgHgnCJLgB1aCbtHm5PZxCiOaK+QBEe+eB4VuqqoR
DYRSad90vwgQgITCdoP1U4SBlQVS10l0KNNhNugPn4a3rtobAztVG+s7rQgc3+iyQbFIuWIw
RXfw7963aX4R26Qe4sIEHT4+Yzj4K828Ku5+HDUOyJUaAAs2mdTFpsK3R8PsWw5MBZ/5mIsC
nYO4fMVsf6IXBCUO6s+qYKeq31s5nFBbCYOTUvhKVdsy320k8LN8bcTtluBPXhDBrxXr146O
6kb46MKI8jyaxXWQZFxgavtUSa7UOJMVS6alNCFG6rCqr+MsBC3DTt07sTBWuh+uv2GjwH9t
I13IDbZpYlr7Sa32jtc9kxXuw76a+klTBgWkJsW55vrIzBnejq0XeUM1ICrHp/P78eX1fC+8
/YsQUrTxLxrQ6sB4HQ/U9b7YgY0AErLSrrTnpTishcKYQr48vf0Q300XoElMXTeIBIUEMVcj
aBpAzppl0TU9ArN/jcsuaBqsI88PX0+vR/JQ0TCgun9Tf769H5+u8uer4Ofp5e9Xbwhm9QfM
09BuWtxsFWkdwqyIs2EYcc5uM2+vGtRZeKhpLk8CP9vTo/2Gqi9XfLUrmZJqwTyhmkGcrSW3
wE6ElcZKIYoI25lI2uXzT+ITLtXJVBYa7/gg1xXS6b1Fuz2ejk2ETtpguSQiQ2U5xx1veIXn
64/EkSEUpDd1VmNdGI7C35HVmplQJlLH6/nu4f78JNesPY3QEOJsfcwDg9IoPpTX3A71p49t
IOWlS5Edit/Xr8fj2/0dLBu359f41ipQl/PtLg6C5tGVdMpR+D6ekWYq58+scDtRBvZ8bEr2
Wf4GoOu/04PcTMa+DfaeY1zqPkEXNjHzQbrGt+1QTH/9crVCc9Rym27EDbfhZgV77yCkaF7N
kCtXKa/WhpKmEqr8bF36lmsU0guwh+uvpe8AcTV613V7jOzBZXX/eEcqsS7y7cfdI4wwx3A2
VmUOq+ct9zHUDDxPRLCXUAJDN0odFpSa3hYbqrqOLVKSBMEgfVD6W7E6YqHpXBpckeoDiO4e
iS/xyGnutByHCL2EfK1DJGafS8inCh2f3thR8kgmj0Uyf1BAGKLzJeH7jg+nwWcVm0auM5hO
wnEbTSSuRRwY2Kti37EjhkAk9XeTvS7pGfJlNv1Sap2eT+99yVcjkeoqhFRDwqbdT8lyJrT7
CdkTqUs5jYVM5iPBMEyIsU9acSqOMcJ3tIwIH0TYE8dnwSfZRWIbMd8BQqbOA92GZlOyR8Vk
o2MWr0ubIfcK1xzoOa/xVOnTE6086F747/Ok8jcRxrQpkqGhocUmAzG531BeBpPf6VN1Yx8N
7KDD6fH07Fxum/f5e/sCq31JOPyYVvM7DYTw/eCt5gu7GdtoA3/JbG+TwjSi/bqMbluTvPl5
tTmD4POZrn0Nq97k+zZub56FEa547BaJiMEeAM+V/CwQLS0qifah8ul1MmUjbq0q/MDBxv2s
uYpmlRjsUnD72hwp4/PTvu6Ej6bYJeYS2izEO5aOz3bH5mKoLYHjuLwZtWIWxl2gDtNgyO/7
q472DJqVkds6ZnlQfCJSFHRDzUW6GRuuiXkSHapA+xzopo5+vd+fn5vNoxS+wYjXfhjUX3wR
y76RWCt/NaUauaHzOGoNMfUP4+lssZAYk8lsJtEXi/mKqUzKWoo+WI1EUWWz8WwkfKvNMgWG
ap3GSjo8buTKarlaTHwhBZXOZiNJ0Td8BKzgTWCehZNOC63LpSIZL7w6LXgYj+aOJQQdKh9k
GIHoWtZ9zW4Mtkdreb3DJ2YJbJwq+Q4dL9ijVIy3gPgbwLEO3DZW+TvipWgge2DhKL4WH4rh
Dg5vWbKoqgN6IQ30eE0OhcyDmzqLKGK43nBYIYx9DQQE6qCSXt61NzFlEcRsvTRXj+s08Oz2
bgWaqy3eBGbOzqYegufIo01PalXSwGkxHTwxojHs1mt2YdHR6uBaJHMgJUa3IaoIF0NFwDZ6
l9qZ3azjtZbi5Ab3OQrFEpo/10r8ZiCqc1W4AHUiHhVRXwfxPhuymGJftFbvmjOd+/vj4/H1
/HR8t9SeHx6SCcxCBPkUZ0vqj5dikM3Un9I3e+Y3pkNpAagjDYedyFQuH/qehdnlT1xht1O/
DEdioHbNIQa/JlCsWRIfyRRiElqtW7UM/xArBw8RU1t+7yFwUKEMuHlzCL7cjEdjSX2nwcSj
2ImwOwdjezYg8NZCIntxCYQlC/8JhNVsNq7tCDyayk4xNEks2iGAbmWGP5Dm3kzecqvqZjkZ
y+9PkHft2/vs9rCPj1Azap/vHs8/rt7PVw+nH6f3u0dEhYd1+53bSuFitBqXdPMdLjzqvwu/
56O5/Rs0KdhpYJKVfpLQ8QnsFcXv88NYv2X3aVjd5gCT0/D40Q+t1QyPJP3Un4Ue8iRL61B4
o8PgQ6Aul/Yn1HvKvEB2JHodlWDIe3aqAToTjsaOj0J/hTNzU1hfRdk+SvIC8WyqKKgc8G2t
y6eY9PbAws/Gme8dDrz52msMTkwPC6uZW1w7mzgZpJhUgTddjC3CcmYR6FsvNNgYIjdCYsxp
0dOgmEwppmT7+hNfaoGph6BQVvs17ytgpDl6M/N3sI7L0wY9sRyNqq26PZqsw6gYmmdgOetD
fuF7bRXGrN16+t6qSc8Bhgh9rY/qvpU574kyQ+jupT0cO8t92Dat0tBYwTwxjRNsJ6X0KMFg
9ibKjJSWtmZMc1GF2NFtUrhWYdoKW0aR4bk6FBFZIzdXe/Lpaea0QcNgtBxfYCtYS2QdjOwU
NhcHx6hpMNxhZNMaaySPiTD59+u5Rh10gAOa84LDgN/q9Us6nGr59ev5+f0qen6gtw2w3paR
CvyEHe8Pv2hu6V4eT3+c2OKwTYOpN2Mf91LGDvp5fDrdQ7kMGCtdWNDLsC62ffREotWRFX3P
G57DdIrmoukUBGo5Zutv7N/iKBPHfzgZDYegprpsNixTXMaocjaF40GDKtREKtv++7IJMtS6
8djtY9BrTw8tei100lVwfno6P7Po2K2FZexcjklgsXtLtg8XKaZPx0WqmiRUYxWZ22BVtN91
ZerPnAZMy7DjCcq8pivM+U0zpGF035kxyQwUYmTPRnP5DBtYE3GQAGM6Ze5nQJmtJqKbbTgz
mE7k92pu2dZFXsECz6Z2qKZTbyok2EHHMgjYuTfhMP+wNs7GEro/MpYeNzGDAgEmXNoSNaoD
fxT0GbBms4V0AG+0U1uvFq3xUr+YO0cYVA8fT09/NseY7MYRO9ycG4a7NP0m6rVBAjqF9evx
fz6Oz/d/Xqk/n99/Ht9O/8E4WmGofi+SpHVZMJ5x2pXo7v38+nt4ent/Pf3rA7El6Xi9KGei
Jfy8ezv+IwGx48NVcj6/XP0N8vn71R9dOd5IOWja/98v2+8+qSGbFj/+fD2/3Z9fjtB0rW4l
2nEzFgH31wdfeWCl0sHb0/igJopE2xx0I5cWu8loNhoQmhR4d1fN97ifk521qs3ECtw2GG7D
+hpdebx7fP9J1peW+vp+Vd69H6/S8/Pp3Woefx1NpyNZZ+DZ4WgsojQ1LI/pUiknwqSFM0X7
eDo9nN7/JN3Wlir1JmNiPofbiprG2xC3F8y9EEjeaCwVlUUvTuMwriiIaqU8b2z/tjq/2lER
FS9GNEQP/vZGrCHsejXQOqAYMPLd0/Hu7eP1+HQEq+ID2ol6h6TxeM4OO/A3L876kKvlgh6J
tBQud5Me5mwntK/jIJ16c/oppVrLEXBgJM/1SGYnZpQhDvFEpfNQHWR95m4FEwjv9OPnuzAg
wi/Qi5Mx223vDuO25VtaMhk5XiwDCyaW7KHnF6FaTexZR5krUYX4ajHxaJmut+MFVQX424Lu
gxVovBTBDdImuk3/e0Ljd8LvOT8gQcpc9BbYFJ5fjEYkNUOBBhiN2MlrfKvmMOD9RDof7uwU
lXirEYW+5xwaY0hTxjT2Fj0Go/D8hF6U3Fn4i/LHnuN4pyzKkRz2tC2UCUNL00uqcuZ4AZLs
YcRMA4fTjH8A7egYGA1TPobLcn8Mq4DIy4sKBptcnAIq7o1sdqdqxmOK5Iy/6Wt4Vd1MJjzA
B0zH3T5WIvRjFajJdExeqGjCwht2cwWdysKEacLSIizop0CYzmhElp2ajZceWTj3QZZMR1Qb
GQoNC72PUr1dZBtFTRN9CPYJbP5Jgt+hqaE5x1Q7cw1j/LXufjwf382ZoGRD+DfL1UKyXzWD
ngjejFYrphDMGXTqbzKRaJ20+htQcayyZJKgfFTlaVRFJVgg8phMg8nME0EXGuWsc5XPm9sC
DY+b23EA29zZcjqxd4SWVJnCIBwNR5Ghd4tG63omNb7plo/H99PL4/EXdw3ETdmO7R2ZYLPY
3j+engc9KuwLsyCJs65RHU1vrkbqMq98hMF0rGxClrowbWDXq39cvb3fPT/ATuH5yCu0LZvH
SNJliw5AX+6Kiu1gWd+Zl3ssDecQQFk7N5ZchfFckzwvPksKg29Ku2q5ws36/gxmoo73dvf8
4+MR/n45v51wqzHsJ704TesiV3wCf54E2x+8nN/Byjj1t1L99tWjKitUoDzYuoH7y6kYhQe3
mWZFZDvP2UTS21WR2Mayo2xiuaENeVCFJC1W48Gy5EjZfG22ca/HNzS6BPvquhjNR+mGKqnC
W47s39ZeP9mCJiYqPSzUxKm/NBC1ZKAXI7KQxEGBzzXZfioZ082A+W1pziKZcCE146fp+rf1
EdAmi4Ea1OWUqfz7ajalJd8W3mjO7OHvhQ8mnYzTNOiL3vx9Pj3/YMsQXbkYs+nV86/TE+43
cEo8nHDK3Qt9rC0zE+i9HUdx6JfwbxXVe3rRcD1mlmgRU0iOch0irA+1Esr1iIFgq8Nq4jDD
gSXDBWMixIxEU4BH9dsns0kyOtjLxye1b97AvJ0fEQ/LdcVHHqhclDTq/Pj0gicl4kTSKmvk
g6qOuEM0mQjIklRKcliN5tQeMxR+FlalYNhL99GaQUZzBeqZdrb+7YVMTws16Tr9K3GZgB9G
29OSINHteoJc7UEjFLXj1dskCINhXt2to51fC9bgzFIAaeZ8fV/pKNMgrjISW3AATjUxuTit
eV/Nidv4el9xUpxu7HrF6cGxHzBMMbZpw8PnvoP0zDB0fJQUk9V0wgvVHsWqoBoweCw+JLZx
JCmpQlQ3VdiCHWQtpR4GI0m7M4XpBVgFECoCfzVfSnsZzeVPr5GE14QO6dYZqeIR6jWruS50
lsPtmKu5LQ4Q/ybxlkGRSMFFNNsOSmqIpWzna2YleUoZTsr0d0sy4A6cWkQWCe8MOUm7Z1qk
OAr8YkDblhbKvaZ/dekA4GCEe56MgQzhtO84/IxhX95e3f88vQzDxwCngdpqbZoyrTdxMCCg
VVdn5T/HNn0/GcruYbND4z35MMVpmg2oSxxUxLMDAyGWfm2CFDW0LxrOwKfftiMQ7PsAhWGd
FZhQrSEVgfssVju+dHJU7U+XuOmiZaFg14zRJr9dKisZ40kILVLYtJhiFhlSHqaxTSviQWoq
ogPNhy0Qbq7QRy3gcxLK2AeQ8+Mwkl7ooiYEQVVFbP+E1KyyAhM2LiSYbpCn13Hm0DkYdmij
MS0DDDzjePAK1qEVdKrfFNrDlVSq8IObWnbM1A9ettjPGoYeqFWZJwmD7hly+iMyzfOr7cIR
lNnwD0rGmTNss1LaGdJHiBKjuUe/kK0jeIxhohvOMG0TknLz9UKqiZ9VYqyPhm1Wt2HSeiFz
fmYcajSQKPSJUGt0mrlQqg6D54JM94TOWQrjYsPcXDSdBF6wWU1UHE7Td40DKi4MaTGeCe2u
8mBdbOSQhJpvBTLWxA7r3ma0M3iYTze3N8nOEcpQy2E0R5HdAJe1QRvsuAuyVBPwweyhtt+u
1Me/3vRDkX5NaaJA18Dua0OIGgYcdr2UjeTWmEJn9bzi1h6wB2FlCK/Bz5DTbYASINkJZzTP
uMeer8EuLzEnoMziSJJA0NyGx4rbc3WxUKQJ0eKoQ/OOGXPb2omZqCU6EdmyMd/DfhA/d/ok
asQ2jeuJXXcpoUwHuZTOcFAiU56JgVmGdklRo4GlV4lWdMuHbwffmdJfrGEHapaXsObKeCFU
LrRqKYioGMGpBs3dcv1kL73/Rxnt7q/jgTTVoX0fH0D1OoZjg0QjtEEDXGP1IBPAxQIXXyFV
FYPKz/J2KLOUjaKv9+XBQ0Q3q5GHgiXYOHxKNLHTFzOkB8lO4dGvKQXvR70AXhwBRkKovzFw
IJORBh+9NEap6K5KRZueiC0PTYJylgY5epglEYRtUu0tM9iaKmqTMdZQiSBrODrSYiJWH4HA
LlYaBHZraclruQc1GBh5ECU5ekiVYaTsLLW1c2HANRhDt9PReDWsiFliYTB5At162t7TL+gV
LYCKRWWFqtdRWuX1fjCYO6mt0u3ubK8+OfmiktZwOZofLjRE6WsgFaHXOoRl15cdzPJwBel5
zeLEU+5ezkkHX5YE/jqMrORbdpTyJ0CMqZXGNnTOIS4YqjgU5lH/LtetW3rgzW9FFDiKOhhk
za4jLOo97GFyO+MW2w91rRZw9nT7VtFdwPa91G49mCgdyz14O3tMUsCUKb3kYDLDgdLv47YU
DFmXrDKnIOMJqDBohoH10/GnPZ/XrYq309Hiwug35yDAhx+DgaQPOsaraV14Dtw3EDJv3Nw5
+Ol8Nu2VFOF8WXjjqP4af+/J+tSr2cRxKxPMaIx0OphKZi90E0Xptf9NTwdnSY2oRuKFdda1
+vdS0txicdTliwxmOpOv8QVz4AIrCVjzGRv8+IrxFfTx/ZNxIBue8uC5TBBA23CkrIaML8OK
VO67RmT269cnItJ2UHPSzM7yUkKh2l3kw1Ae8ts2vdAUZFPEo0Y2Xu4Pr+fTA2mwLCzzmOIo
GYKGRkM0yII/B2JccYW2EmhjT//2r9Pzw/H1v37+b/PHv58fzF+/ubPuEPPotURbh+6MzSen
z9k+jdgRoyaY2wnZE0fz9TlQLEXM6Pl5kFOE/+bRa7TeUYAaI95u8CJEShOK0/IhQWeWiCJs
ZYmGj5WfsTTWBXvC2tQZ38eokGJA9OskT6Wjm+ys0uKORZfEWVajNjG+stT2Bowilo+qO4Wv
i+TMwThY2+3RAouJnaCyvYKW3hQU5cW847HkNfhkSzO+p1+v3l/v7vVlqq1jDE4scaFK0UGt
wrDtKhYdXzoJxFWliLTA0L7dnKTyXRlEEqYW4W5hpauuI1/Ev+3F1lVpYCD6g0Wt0CsZGUmo
d5soHvX05cRfdbop20MgmoPNQzR+SVEYSNMCZ/rgacmAqVFXhVS6zHANchYSWqGKD2ONRmLx
r8s43Eh5r8so+h41fHHsNqtfgVpOwEihuZTRJqZnXvlapmtiuE6GlNpf78RWNotv7TiKW/MQ
pfCzziL9mrvO8lCacCiS+nrby5EUCGO7u7ZTbTjwbx2sxeZiUvhu1ZG5Cqgy05TrCN/Ac2LO
Ib+qSKpMukuqGDrmoA8Wbb8xAUZxh+/VNouVx4Y0krExxBwOfVCBocfZAKCmAGVaECWmYgsJ
F35rRBU7v14iiVPrYoDN7hL+zqJAmi0wSlGA6ZvO3yvIKkvZELexIJPSQyyK24jUBgHEb3d+
GEb86WkH1VwF1zWYfdVOfGeWWhDQ+FsDjcq+TBxGxbx9OT0er4y1ScF4Aj/YgnGdg6LHd/OK
7Xv2Prq6VKAtFV40KXkaK/Q0i2F4BGR2RgeEFqYwCy2lvtYRhfKCZbWOEQwYGLF4PwyfRVlQ
fisqrhUUYouzpwkdyThZSIzrXQyDP4MRtcl8bHBFpbK8itcUF8UmxIagwYTIh34n11XqdpeL
h2D+rsrXalrT5jE0RsKFlxECtjo3sLVUIIcaJv63mm9feyqo1TAuYQrU8J84TyRZP/nqwwK9
zpMk/ypUh3yDFupBKk+dYRceGrxpKbsDtKtuhc/KlUaVH+QFOyUzbn539z+PzONvrfT4FidJ
I232UG/Hj4fz1R8wR/op0m/J8B2/w0w2iL/bOAnLSNoB3URlRnuodQdq9URaDH5K08kwDn5V
sXsgQ45xwZpLjtbb3SaqkmuaRUOC+byhoBNRug7roAS7iVC7+9RNvMFj4cD6yvzXjtp+GzZs
zS6fWAV6rmM4hyilQ7f0s01kzYBIT3lrOHdEtHOVv7E0Rif3Zb1WnqvfgtJPxW0aGOtWIQzl
2g9uEFIGj1lDm4nWNqUWqrLsNkNBpOwEFSqeNNt+nbZs8j3/i3JTUW4gtQ06OaFoy6n3F5L5
rqqQpsK5TgbPvQUMF0rB0r8ALG5l2KX42+N/pj/vfxuk22wa3CkhEPag2CUPp5KJz31gp4ah
oKlgQwJLskxhDf2u3d8dMPfty026PpvH0sf7j1f00Dy/oJM2WbUx0E1fVvwFyvp2F6FNgPqO
1CMq1f9VdmTLbSO59/0K1TztVmVmbMfJJFvlhybZkjjiFR6W7BeWYiu2KvFRkjyz2a9fAM0m
+wBl70MqFgD23bgajY5hp2U1kpVuTveg+5zpVSduYcl3tfUfwe82moMAlyX1i1+clQwbJYZh
l9JJdF3GIX9kp2nZDTkFkYHiVhlupoYmkCOhFE5hrN1U4Swa+Fc9v/jl9/3X7ePvL/vN7uHp
dvPr/ebHs+Fu0Sn/hx6Y16yTKoVF9nTz/fbp78d3P9cP63c/nta3z9vHd/v1tw00fHv7bvt4
2Nzh3L37+vztFzWdi83ucfNjcr/e3W4oGnmY1i778cPT7udk+7jFi37b/667+8aaYYXEiVFA
gl6GNzBifJWgBq3VUIhYqmtZWl5zAmKExQIWKHuiblCIJDGq4cpACqxirBw8BAfNIewHNvdL
wsR9YFYaJOwmGRkjjR4f4j7HgLun+oHDxZ5rUyjc/Xw+PE1unnabydNuohaIMRdEDL2aWa9q
WOAzHy5FxAJ90moRxsXcep3KRvifwLTPWaBPWppx6QOMJTRYtdPw0ZaIscYvisKnXpg2ny4B
2bpPmopMzJhyO/joB/2LFch8K49qNj09+wT2sIfImoQH+jUV9L8Hpv+YSW/qOfBXf3bj1Cfu
M+MpTfXl64/tza/fNz8nN7RI73br5/uf3tosK8tO76DRfEQZUjWFr+HLiH1TRDc/9QcGWOil
PPvw4fSz7oF4OdzjDZub9WFzO5GP1A28hPT39nA/Efv9082WUNH6sDbVcF3iSOiYns2Qfd+5
+3YO4lGcnRR5coX3TJkhEnIWV6dn7CusXTflF3qF2x2cuQBWdqm7GVB2CJQve29ywsCf+3Aa
+LDaX+whs4Jl6H+blEumd/mUO3/rFzHTrhVTH2gAmE/f3xtzY2CdYY1isCCa1G87ptzVgzZf
7+/7MfMmPhWcF1mzulQwjVc9cku6dErS18c2+4M/V2X4/oyZLgQzRa9WyHPHmxkkYiHP/OlS
cH+ooZ769CQy05rqhc5y/CMrO404E7FH+nOWxrCmKYzJ73+ZRqfm/XUDbD2j3YPPPnzkwO/P
fOpqbr0/3gO5IgD84ZQRoHPx3gemDKwGtSPIZ8x41bPy9DN31t/hl4WqWS3V7fO95TDt2Yk/
pwBra19vCJJ8OY2ZOdUIL1GTXiMilUkSCwaBFoGXe87AcndCDLQ/3hHTn6kWfm4NlUgq4Lav
82N/WmRZWImp+yk892D1MmeHrYMPA6Am6unhGe8Q2sq17hxZ5z4vvc49GJjLDJ3fOrJ8PSia
ubpF5frx9ulhkr08fN3sdD4hrnkiq+I2LDj1LSoDdOJkDY9hmaPCcEyEMJzwQYQH/DNG60Bi
MEZx5WGxgrZ73cjUrX9sv+7WoMvvnl4O20dGSCZxwO4ehHfcUscUM0vPoBpffp1/61ISuVqM
bH0KZVQ3RsKjeh3oeAmmquSjuZ2HcM3xQeWLr+XF52Mkx6ofFd1D7yzFyScaYdHzJcNFLtEm
XMZZxujziFU5GG1HFYNucTccUwc74k+wcdjXR12qYzUS+sjdTY767e0D4uOqA5IWcZivQkl2
CVdUF+JWsocoZpUfiuMluE3hSNVd1M6YOV5fR8os4QFbcyt8QFfM7hqwTkolDy/DN7UQl/DJ
OV9RGPoabwdvo2hs2RSIf20kUwFbP0lgjR6zr5DyS+iLpw5ueg24SpBEZuoJzYS7W8jTvr1U
GLzXS62WdJEwkdkFqE8sET5RlXEaGaLjdFbL8A1bRcfusMPVxQaMLUj/+q2BVOduLIruMBSM
EMaVIKZypTKtc/0Kw5I9qDdIKMK/kowkx/WbJjnevJytfJ+Fg3dPRq1GnjXWG4FXaSrRcUte
XwzbZZFFEyQdTdUENtnqw8lnWNjoxI1DPPtQJ8kDQbEIq0/4/PslYrEMjuKP7rSH//4P8u3g
xwMcj3fxEUOpDpfx8JdaEBvKIGZV+0auiP3kG0YLbu8e1cX+m/vNzfft450R30RHVm1d4tWH
SPvTjfo8fHXxi3ES0eHlqi6FOSBcoJKEPyJRXjG1ueWBlhMukrjqPfz8aecbeqprD+IMq4YZ
yeqpHqpkVF9L4gwTPtP5nXnyI+gwfwAEMdha+BS4sThI+SI1jMPqK2NgpGVhcdVOSwrnNyff
JAGe4mDDvIysyxplnMo2a9IAKhrA6hxDJH6xRUjv65q+Drz87T36QF3A4/owLVbhfEahDKWc
OhTom5+iUdaF38RmY/syYF+Brp91WZPMnCpZdyJf2PwnxAjd2rKWQvttdKRRfgSWxYRtXDet
XYDr3gAAe4JlEwAbkMHVJ+ZTheFTZnYkolw6+8GhCGL+AAmw7Pk3wC2LLDQSfYDG6vt2QsOl
oVw5xvw0UVyrWUL/tKg58wN2QZSnx4fKPGkdikcohsu58GtUrcGAsi3Ta2USOFDzyNiGciWb
B8cW1D4oNqjZ9vEnwgTm6FfXbWTKMPW7XZkZkjsYxcLbgdYdJhbsfHdYUaZeWQCr57DxPUQF
8sRvThD+yVQ7MqFDN9vgOjZPLgxMcm2+fmMgVtcsuHMROAyJTtIwgb7BvfCliypP8tS+PDxA
8TD30wgKajyCOjUmJQiNzUDxdJcCtHb4xNQJ8C1j4FvE1kth5ozFrAxdJLQBst4Egh9dYFgH
yKg9CgHsfVbPHRwi8DIIHve6/BhxIorKtm4/ngPrsOuB3iWCIgPm5L1gWHUl66bwG9Xja5B7
Ub7MjpBUV1lI6GmfD+81qtBUIHsSxMLCKJj2Vss4r5PA7l6WZ5oS348pbGyPKvI8sVGl9Kg7
qcNgwtQ6ZqJGyhIELKF8H/vm2/rlxwFzQx22dy9PL/vJgzrSXe826wlmq/634QiCUtCn0abB
Fey8i9OPHgaTXkA3MCrp9MSQBxpfofuavublhkk3lMVJEqvE2PanWjjB5YZAEpGAQprizH2y
R0zgLWHXq6DndpaoPW+wgiQP7F/mdRBdYXLd1sIKRsa0HUXOWn5pEYM8sWTjNDJKw9snGJEN
Wpa1o2GXa8Z0GVWGTqKhM1ljmGw+jQSTCgC/oRjb1tRyKrx4kMTuhqRgg6VIDKOMQJEscjP3
Et5TNgPKgz/FzNaba9SSj0fjeNquHcKhLQOCPu+2j4fvKo/aw2Z/58frkCa9oJ5auigCQ2En
KAlVoBIokLME9OGkP4D/Y5TiSxPL+uK8n8zOTvJK6CmCPK91/ZFMzKmJrjKB72U7JqIFdt9n
uUqDHM0/WZZAZQVCKXr4B5p9kFd8JOboAPYO++2Pza+H7UNnq+yJ9EbBd/5wd+6ItMHTj7kM
jRUzLaGB7VKU2cXZyfmnfxhLogDhhReizKDEUopIOUwqU2xJTFSEcZewAM0QAdVbMN4o3CuN
q1TUptB0MdSQNs+SK3/MQBLgNZUmU58Q82jfn3HHt7Q9lgK4uepekZN0rtxud3C3vaqmpRQL
eudOJxHShuNbh58mi04vtjd6p0Sbry93dxiJEz/uD7sXTFtuP+ku0CcBlmzJJaHp2ld5La6I
Jy5bYTtCeywGfBBBinH9LOt3ShoJhBrs08Ussrgp/h6bC5TXTVAJzIKQxTWKBmudEM4sTBHX
Y2/UK3QAfYnYAERCY2itU4UhcmymvQgRi6pmnNg5aN80gfZsYIizZObBfcrUjHLryzWYJPIs
uarxdRz7vFIVh3iShFwMJ34LipjtpSQoLPoqz8ZihIeiYa/zt3MUSZlHohZjBsCgpRHxcuU3
f8mpBb2boY6a1MwLR78dPtsBqTh/T4Cck1ZsiAVmNAQbP7XUeBtHF10qv0sav8zLxZGh02SY
UgRZ5xtIVS4zfStnlDNo8o7hazl3aq31bpGC4ZEAi3P7+BocI+NJSSYND1TQk5OTEco+dnE6
HS2NAjOr0FRQOqFBoZRNZcXXVyC9og4ls8gVZs6qu4SGzmocCX+qLrmgKOazkZLjsm6EJ+gG
sLvz6WlhiuzklE2FpesydMG1LCmjOM4ls+2VSEIjj82CPDBoUZnD6iDoSVYxM939KlRWYf2D
URM79i0ufFQls3zg82Bv6vh6O2h1YHnOzM9VLsHOQAKiSf70vH83wdd/Xp6VtJ2vH+9MhVJg
HkJQC3LL6rTAeHurkcNmUEjSxpv6ol/E6KhEI7d7OtJYfPm09pFD6DjokPg4Z2oSUh3MLI0T
d6009hRW1c4x1UYtKmtfqu3Vo/q+nJ6dcO0aCF9vlkPbt6ovdvkFNCxQ2aKc968fnzgVzw/a
0+0Lqkym9BtCkxm0uxmwxwspi1fEGfDytKg92YvtMiT6P/fP20eMUoQmP7wcNv/ZwB+bw81v
v/32L8O7j5f1qNwZWU1N0d3h6s2Y/LK/uWdJX0KUYqmKyED4jDWbCNCDM8qkSnSZ13IlPQFX
wWDg9y58hHy5VJi2Aq2PbgM4BOWysu4lKSi10LHDERbJwmdZHWK0M6LO0ZaqEmneEB2+xXFG
n4CW2ZVdJ2Y/w1uLbZ8AQq/Rvm+sadsLlalVAuetqCJV01LEdW8KDsbx/7GOdJF03R5dENPE
4qQk3PRdfN0PtIrwVkGTVVJGIAKVV90f6YXSAI7shY4CtDuQv2weBUNJGOxUmx9/V8rw7fqw
nqAWfIPnZpYd001ePDLm3b508fZCnrlrQUtI+8oO6j1ZS9oo6If4vsXY0xpHG+82LixhpLM6
dp40UhFqYcNq7GqHm4lsexCNxQB3lqw2r4GOng9l4ONfgKI++hVqCmSU98Lh7NQq1c36gED5
5VhUDzWS7i61M1rEoJHEecSOuD1QngnwpbO1S1JpeI8kdGAOUilROiFdFaQ0R8y6yeipEWiS
IbVpNfdeg+NY6E4x52m0v2fqbE0G2S7jeo7ewcqtR6FT0uKBAA9jHRLMeEqThZTknnALCbsP
VSnGgqJWUyiJ00RVa2jLBPL4Bc10avZUXqIHHOmtc2occLBD0a2OPhp3fIyiOt9BtbRyeivp
i95WtltefdoIdCvqCH2R604KqjHkRR2KHm5A20uBlwhkYPgEHRqzQ4NNM7TPEPHU1aNlkwlz
hGC+TARXgtVXvVAqbwFUGdgF89xfGRrRGxD2LAUgUjA5dZlTcAi6fxzlheDdMTxe/KUPRs4R
GqAPpFpQI9chrzLYJUcIMLOnfhSIp1AjoRatspaY8RqWXBtIaHAqSn4bcGhdg0joTA1HwByU
WZhf9iOjJoZtqJ6zWpR4fjaiZJhtMUkN3UBg5uXKBWiZzpqrKitV59WTfYz1evfw8ZyVYTFm
ftd7Po7s4BFZ4ZtODAiDXhYVZuZqK/zLHCabqKdp65QNQeypFVERN1x9hJR1cHl6wqJVViNZ
p+crFm++rzGAcV+4wWADso75bgGCzn9nKm6GeD8rDt1RNw9R6s3+gNojGknh01+b3fpuY2pU
i4b3HrBuA8dhWKQ8GZ9ZYkoiZrxwjiuRJWrW3SPiRLkTtbEw7Ar7G4pUctNYjJAafnCjOKgp
TUN98/sNxQy6Nm7t2os9IocH7HHPz1EB64Otrz614zGQntvcIKxJIimrT19NGCy+RVTz1/go
jo/C2SoQeuMkKezauRSclUX4yhKZQd9ztI1cxTHAIAbPnLJiIUaYmBUG4RSrzLyP53ayPrON
c7lCl+5oF9RBpbq6XnlfA7oK2fWjYiEBX9splAiuwvrGvgriWh3y2x81TcxlpSLcygn0ICDm
a5kCC3bAJYZUOc5GNRRWqBWB4kg4kP5sd9gFcYZ5EQ1hN9bKaVymYFi69Tb6/NPur+XgHCsS
RE0Iukvhdl2fONuTReGQ5qm2LqOD2g2g2/DISDinJ3zkJn88xlUNDwFa1mlcVbiuojxsUlcf
sUzwIFaMsGJq0ofg/wMNZV9h/CkCAA==

--C7zPtVaVf+AK4Oqc--
