Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDMQYP7AKGQEY3LVN4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3202D4269
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Dec 2020 13:50:22 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id z9sf1147289ile.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Dec 2020 04:50:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607518221; cv=pass;
        d=google.com; s=arc-20160816;
        b=yR9GEyu4laRrUikY97wLEY9NcOcdyFyQqMCY7f/dpBoSbd8EDAiIVwBhr3fbELOgN/
         /g97QoSY23aU+XgwQDbi4Q8sx7XhbyaoUgw3G1ehFWn3QENj/8d9OLT+pmAXoUScuMgE
         bMn9AqjVrhBhYxUnB1BjEh5L3G0uhZLV7rXNjoFZcSeVZdxzbu9QIOzV51geT6ROCD0P
         ChwAjYnwv4FKEdBjUVbG/wo1G3C/IiP7eZ34movbqXpP3POWNVTg28YMPTAtqgPEfSbN
         ThHf/YMzLKIF2cpijtBPBDd2GqPdVO7e/cfKqelQ0IhfkkTa6p4OmHZnRWCmS+ztvXXl
         nj4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=XLwBbVaYEh/Unw+53KET2N6eu6BcnoNZMAvyZZqrwJE=;
        b=Vx1ypSwezuelAxiaIwOLkbe4gFCI7FwKGAEBAiIooNNJKVC07KGRGcrfF6x1MQMfUv
         thaiyqOmKk3gRd0R1nyGVS48Br7za972o29oGe6Hql3J2ZEnPSINMHDSDJAK09LeqUTB
         2+W4WLo/o7b1UwTLeaXSyjA6FgOCna5QQxW4oIrO9HPHvj/lst7iJpsMXySwqhf+uE3B
         4WlHRzU7e+HnUW9+NCluRBnmYr3cmlLBlCH4qrSd7Xd5bDwAzyxaIhSOhYRpqZcneve9
         rKq4LMWeCt+oLlaBSLb73rHdGKSQdSsgZXKNOmdv7zuzoq2B1AXirGoLS7i5ZBcgUmdu
         fJJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XLwBbVaYEh/Unw+53KET2N6eu6BcnoNZMAvyZZqrwJE=;
        b=KT6CNfEgmKzrdnHkyR+ighZwL9qolWBvs/Kt3P0xxS5aXi3yFatHYH39VA5EqvxHl3
         mM5BMtGcUU7MTiICQRX1bq5p8oB7VUgkAupqFy+Ce2aZb7V1EqCAj7U39DjR67wBrlzp
         Cp07bHKoAwIpQwKO/7ic1DptnEPhdhto14sWwYLzZhr+aQxDX7UeAZb8qJTfriIjNxsf
         RruU13Fz91TZi+1pcdtiD7lc45rU+WbrOnQbhQkQkTzRdw3+mYqrPUj30Fy1rCU5zPq9
         A5loaHXOp5rAD2ADNJ6gR6prLHHfddpL70e02rfP5OXnR4w7mfJeNwTo5ZNUK3etCjxL
         5rxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XLwBbVaYEh/Unw+53KET2N6eu6BcnoNZMAvyZZqrwJE=;
        b=VoVX9G1/WzJblMH6GydJzUz5zefg9xJqfjuVp+JuCTltwt25pqgkyYEjU+V+YTW8ja
         3oieUkNMfQmiA+6FZwxH0KCNQZqjHJkADNJ33F5oiLZIpH5mhL1crF7eUxfuOonNwVaj
         QF2aSXWoX+WFtcSERIKYq2Vc53jQbkneF8s0vFR+QDGEAI0AEidhKBBaLaM9yCsz1veX
         aa3FYPSOWfzgyN3KQp+OBQM3Q7Xk/hrVQ4Fw1/tEPF1UiFjrrbEU7N83RmPxFAgBLztE
         sYKy/zEW0HQTsgVbIAe145v07D1Zd/PXMOmv7Dn/d0s2Iz6tfNOVHgNSh5z77EAALwRQ
         DVhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YoAdXAZwR2LzeKfRmm//p14+W3LEc7XFJZyChfn8frbyMziv8
	/XG4GQaK/njrm9uUfGlgLoE=
X-Google-Smtp-Source: ABdhPJyUGbeE3NTjJIE6fQihtUfM+Lsp/QqMIJVrDzRjeZZ62j3fzv161ajhYKmK2p7Qgj1EAXsBmw==
X-Received: by 2002:a6b:c8c1:: with SMTP id y184mr2602960iof.99.1607518221225;
        Wed, 09 Dec 2020 04:50:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:9e46:: with SMTP id j6ls275034ioq.8.gmail; Wed, 09 Dec
 2020 04:50:20 -0800 (PST)
X-Received: by 2002:a6b:b8d6:: with SMTP id i205mr2630065iof.135.1607518220674;
        Wed, 09 Dec 2020 04:50:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607518220; cv=none;
        d=google.com; s=arc-20160816;
        b=YTWF3KCCVC0pQxcdGvKIDnVHffzRe6aSp4rYBmo9heh4Z5GuIsLPhF1FOnkxLR9DFG
         TVd+vBcm3/REgHRkYL8QWp5KSRulvuqfVmSFJQlhOUZArdTWJVB0O/kqA+/APL32wboM
         7GN5Mz56JvDbVS/vX1DBSpTCNF27ga4ypyi1s788UBG6hD8hMeVE4OB9f6cfn+ydS9wS
         CwyPWIJR6wNWESbDb/97CgPJxETUofWpyy41afJXoCeOUQ4ehBtva4k8D5yYDLJfAkQW
         o44hJJ1PhxDen33BQANlo4/Dd/+IVKGe1wu1NoLob1jGZXAHTPKBkrMyx1xEMGCK9R3W
         nE7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=QrLoly5l4IbVnFyNSiAFNlM0u2dctSJcWC4AFW2aw3Y=;
        b=OI88kl5qPJXQsEUVdB14H8iy6SXaGQRO1E+hczRKBdxGH2zKQwbVKJXwkF1ISCUgWm
         uVHsX+MtxrfMb5KgxtnzECH7Of7qLdhGWpWlhyhCondKmd7xNoJ6ywNRRggDdUHEJV17
         VEMb/6XfbOOTo3hQH63IgYF3yISHxHABfxWCgSM5oe8eO0C/7pwLEwgzT9s3HfGIX05C
         IvuzPSQRoJc8THT5mfKDehzTNPHNU8lWkSk8toWdbBvZV4rkAVL/zGVXnKoTPZRlPcrW
         EU8e56PpnBCaFcOodE/2frUBdv9ybvNXjyyTv9/n+0V0D4nqXK6f+pqSG1qQoVwRzuWd
         byRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id j4si114853ilr.2.2020.12.09.04.50.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Dec 2020 04:50:20 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: ZCPBBymucsa0O/u8XzZx3e93IOeShqruvwEggNicYJQcaJfPUgjn81J5SAZEg0Eyzs+IQOtYkq
 n+N/TPtaNdNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="174215214"
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; 
   d="gz'50?scan'50,208,50";a="174215214"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Dec 2020 04:50:18 -0800
IronPort-SDR: kw/GxLElSDJovUBFhY4L4ntp8GR/ohfr1NGrWyNYHxYjRCgxvpQbmpFA7cthONkrGKUIeXL9cs
 /rb5G189a15g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; 
   d="gz'50?scan'50,208,50";a="364121323"
Received: from lkp-server01.sh.intel.com (HELO 2bbb63443648) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 09 Dec 2020 04:50:16 -0800
Received: from kbuild by 2bbb63443648 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kmyv9-0000HG-Sp; Wed, 09 Dec 2020 12:50:15 +0000
Date: Wed, 9 Dec 2020 20:49:36 +0800
From: kernel test robot <lkp@intel.com>
To: AngeloGioacchino Del Regno <kholk11@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [ebiggers:mmc-crypto-testing 82/134]
 drivers/media/i2c/imx219.c:241:32: warning: unused variable 'imx219_auth'
Message-ID: <202012092032.FEcM7UpD-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi AngeloGioacchino,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git mmc-crypto-testing
head:   59de920e6312f7cf742790b1aa61a1385493d66e
commit: 13225a287e64e905fa45dde2d1a61ffe648ba00d [82/134] media: i2c: imx219: Rewrite tables and implement more modes
config: x86_64-randconfig-a004-20201209 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1968804ac726e7674d5de22bc2204b45857da344)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git/commit/?id=13225a287e64e905fa45dde2d1a61ffe648ba00d
        git remote add ebiggers https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git
        git fetch --no-tags ebiggers mmc-crypto-testing
        git checkout 13225a287e64e905fa45dde2d1a61ffe648ba00d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012092032.FEcM7UpD-lkp%40intel.com.

--ew6BAiZeqk4r7MaW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ew6BAiZeqk4r7MaW--
