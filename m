Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYPDSODQMGQEMGKPVXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F783BE020
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 02:14:26 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id u63-20020acac4420000b029024085cadfcbsf681209oif.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Jul 2021 17:14:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625616865; cv=pass;
        d=google.com; s=arc-20160816;
        b=bRk64e+BczbFFIKvc9dnw8n0JsHsEamABDKnYlBVLJTlBPtg9X3hRW3ATQRwA/9XQw
         JvIpegjcUCMD/l6FMEydp5yl+u839q/uVfMis0tOtcopPsDgCk6a1YlHsu2D7pd7zPmv
         BJlaExfO5jvVSVcUUBcentepzbG6ApK7Yr+llmnilswRdQtOqBEe7ZOyZhLQjn/igXd2
         XD9XXCaEpH3eHcl7sczYEymrpcu+SIWa1ZoW8tYS96hF4Gc/2WCab9CBQzXF06fO8yhA
         2ok+Lne3b4AUIH64x2KH59UpLJBTzbdZwTnVunDl5pSfTVkzT8/Rv18yx+1Jkld1HPpc
         0jBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent
         :content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=x7s/dOMsq2Oga/6DQAx8YgDB6z/jzrwtXrkqX2+Amco=;
        b=hlcsDRDEPc8iFoSq1m/VCwcY8dahdKPCSmBbnvJj0UEKU3mH9aglB7f1UJGU+JPsiM
         JHBJ0iIAQx77NljAhCGVsslhgTZRduCn84Pj7SrhyDag3HvNWODYpJ4OSdT1B/3oF1Sa
         bNESt8bDtXIz/vbOTqgTrNKWjGQpXMOU+dRpXkOGzwFDt2jPA5Jet8Nhv7CtHRJiHRhg
         7kBu+a/HBshtE65B1R/yCJtg0lTKY3YHrLfg7t0HYpZogTLyhi/9rg17DvYbPl8Eeo0t
         jfdSU7VgjlChMaxgzPKA659OlcQ7rAGa7UiDcGTVBBhESbsL0m51qY3NNAjsANRxIv+F
         5p7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x7s/dOMsq2Oga/6DQAx8YgDB6z/jzrwtXrkqX2+Amco=;
        b=rfhYpAf65a4W9Awwb2hDABVm9GRuvHRepJp6M/ehGe/GqgPhkgJgf7rb0CzlKSM7Eu
         HoWLBE0zsmbz9m5McOVg77/SJ6ExGa/OI7OMK0hone39k2VzyePmxPrbfYTMD2uCqYRB
         23XK+3miqNpxHX1qGDg2jgkKSFv+6LDPzUucnWfqXJyn/3NKXrypW76OR7109b1z21iF
         aNlhuQ/xZhSauL2krKRtG37xg/qBTmOiw5TioP3x3+cVVdXntnzOIp1HiEVFcZ68NxHY
         7apyQRd/RNFUBYy74sGGdKl5DKy7RIrfQPGKo9PR1CoIMIf3XIhp4wewuXAZ7Q2JaK4l
         YtBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:content-transfer-encoding
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x7s/dOMsq2Oga/6DQAx8YgDB6z/jzrwtXrkqX2+Amco=;
        b=OKMzIR0PsG3bRA1S2gbKGqXHOrys0e+rS/DF5eO+36YNPBEe4DaX6tpztC9LDnnKSL
         UzweQUDVR0lbXWrvAxGpU2BA3cGH8jJlYLZMUQunnfWggoPu/DnngN8AEmvJfmEGZnzr
         LSrzfxSEMXMVHEnY3/hAye2LQRXqIfTPnUSO75nep0k55BAGDsttR7DZkZVGYk+4VWly
         0lNyPubgwhfmR+0TQZRWJydfoDHGsbVbIyrgISwNbXfvdigZ72TaQfLfoYsnkIkG4oVz
         Oe1jlHEI0RZTh4M2hI8cI6De0GCxSAlnXQRpbzREx4P+HmohVGOlFLNtEffQ1AVwudUc
         p4CA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321qG9AwrZ9tyrtEAfJybv8fr/3bq1bCa2ce1d+aI5GyNCYByfp
	rlsnnI8m9pJGjHXAlm3rhcs=
X-Google-Smtp-Source: ABdhPJzMp4U7oTZ8PIY/iFZf9FuNln13se0VabfEKCRlcJP9sshnAsRJKmUKRhdingx7WEQA6a9ctg==
X-Received: by 2002:a05:6808:910:: with SMTP id w16mr16206601oih.53.1625616865804;
        Tue, 06 Jul 2021 17:14:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1541:: with SMTP id l1ls8311091otp.6.gmail; Tue, 06
 Jul 2021 17:14:25 -0700 (PDT)
X-Received: by 2002:a9d:2aa5:: with SMTP id e34mr9226344otb.366.1625616864925;
        Tue, 06 Jul 2021 17:14:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625616864; cv=none;
        d=google.com; s=arc-20160816;
        b=Y4ZwNeK8gU0ViKxkzRPkdLiSOQlItEsjJWMtDwt1AnTaMZhcavCw8zPRiUCLoldoo9
         qUwY7eNAjDr2A1UGW+BzXdUZY1gEvj7qA9knaGpf3U+BJ15BGx8J0B+5tzI5kHJyyCVb
         MpwS1TvpSjo47IRrUXWeDMpZcQQwkak2pJUnbc3XJSCy7HAHM8sq+wCV7C+ayRoRh9/H
         QrD4hPSvvG/kGf7axi7b3yb1X8hPDJepIc6oxALoEyLylFQ9pVSCiphvzWx8pIJt/uVy
         dlIFe2CIIup5YIXE6Po8IZlLhhdZMIqFHU3FcQSEKYslXHrooyOeMxRbtYy/at2dGR+W
         XPeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date;
        bh=JDZMeU6wWaUZPFS3aMnCZkDB4bAZSfYCKr99DiohV5M=;
        b=B57D2VlHtXXHDqGTJpLHihrIwI6n1TvPiuoc66upGmmWoi61UzY7+V/xDMYaomTvXb
         ckzqYWGrvCjTmVDjtpidc53GaPEcfOCLl4OTxNPmvDr8M/zk0WKJ93pB3grkZlRYuqPG
         YQHQ1cT+8A2Y6vD2tLMG7PLFZK6uH5mF39R3mMUGrY14RFrocYNTQN/k4znX1zawPIpZ
         XZyUmaV+oLv+9YI/jvIEyxy79i7qK/KbgokjbQcZUc2meYtWlGqPbESi1J6o/pNHpVhD
         o9jxuGAz90QtcEJltxbhj+K2RmHCdpLnxfQQVr3rRP3cfJ1aIapKAe63u5SekVr9Jnps
         zSAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id j26si2826453ooj.0.2021.07.06.17.14.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 17:14:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="273061441"
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; 
   d="gz'50?scan'50,208,50";a="273061441"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jul 2021 17:14:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,330,1616482800"; 
   d="gz'50?scan'50,208,50";a="410395379"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 06 Jul 2021 17:14:15 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m0vCg-000DGT-C5; Wed, 07 Jul 2021 00:14:14 +0000
Date: Wed, 7 Jul 2021 08:13:27 +0800
From: kernel test robot <lkp@intel.com>
To: Atish Patra <atish.patra@wdc.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org,
	Palmer Dabbelt <palmerdabbelt@google.com>,
	Ard Biesheuvel <ardb@kernel.org>
Subject: drivers/firmware/broadcom/bcm47xx_sprom.c:187:13: warning: stack
 frame size (47552) exceeds limit (8192) in function
 'bcm47xx_sprom_fill_auto'
Message-ID: <202107070814.e6haUJck-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="7AUc2qLy4jB3hD7Z"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
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


--7AUc2qLy4jB3hD7Z
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
master
head:   77d34a4683b053108ecd466cc7c4193b45805528
commit: d7071743db31b4f6898b1c742e4b451bb4bc4b02 RISC-V: Add EFI stub suppo=
rt.
date:   9 months ago
config: riscv-randconfig-r004-20210706 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 873e8b=
96b1226d64e4f95083147d8592ba7bd5d8)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3Dd7071743db31b4f6898b1c742e4b451bb4bc4b02
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout d7071743db31b4f6898b1c742e4b451bb4bc4b02
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Driscv=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/firmware/broadcom/bcm47xx_sprom.c:563:6: warning: no previous pr=
ototype for function 'bcm47xx_fill_sprom' [-Wmissing-prototypes]
   void bcm47xx_fill_sprom(struct ssb_sprom *sprom, const char *prefix,
        ^
   drivers/firmware/broadcom/bcm47xx_sprom.c:563:1: note: declare 'static' =
if the function is not intended to be used outside of this translation unit
   void bcm47xx_fill_sprom(struct ssb_sprom *sprom, const char *prefix,
   ^
   static=20
   drivers/firmware/broadcom/bcm47xx_sprom.c:705:5: warning: no previous pr=
ototype for function 'bcm47xx_sprom_register_fallbacks' [-Wmissing-prototyp=
es]
   int bcm47xx_sprom_register_fallbacks(void)
       ^
   drivers/firmware/broadcom/bcm47xx_sprom.c:705:1: note: declare 'static' =
if the function is not intended to be used outside of this translation unit
   int bcm47xx_sprom_register_fallbacks(void)
   ^
   static=20
>> drivers/firmware/broadcom/bcm47xx_sprom.c:187:13: warning: stack frame s=
ize (47552) exceeds limit (8192) in function 'bcm47xx_sprom_fill_auto' [-Wf=
rame-larger-than]
   static void bcm47xx_sprom_fill_auto(struct ssb_sprom *sprom,
               ^
   3 warnings generated.


vim +/bcm47xx_sprom_fill_auto +187 drivers/firmware/broadcom/bcm47xx_sprom.=
c

019eee2e34e2d1 arch/mips/bcm47xx/sprom.c Hauke Mehrtens 2012-02-28  172 =20
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  173  /* This is one-function-only macro, it uses local "sprom" variable!=
 */
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  174  #define ENTRY(_revmask, _type, _prefix, _name, _val, _allset, _fall=
back) \
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  175  	if (_revmask & BIT(sprom->revision)) \
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  176  		nvram_read_ ## _type(_prefix, NULL, _name, &sprom->_val, \
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  177  				     _allset, _fallback)
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  178  /*
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  179   * Special version of filling function that can be safely called fo=
r any SPROM
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  180   * revision. For every NVRAM to SPROM mapping it contains bitmask o=
f revisions
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  181   * for which the mapping is valid.
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  182   * It obviously requires some hexadecimal/bitmasks knowledge, but a=
llows
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  183   * writing cleaner code (easy revisions handling).
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  184   * Note that while SPROM revision 0 was never used, we still keep B=
IT(0)
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  185   * reserved for it, just to keep numbering sane.
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  186   */
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2 @187  static void bcm47xx_sprom_fill_auto(struct ssb_sprom *sprom,
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  188  				    const char *prefix, bool fallback)
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  189  {
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  190  	const char *pre =3D prefix;
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  191  	bool fb =3D fallback;
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  192 =20
590605c6bc31d5 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-06-2=
1  193  	/* Broadcom extracts it for rev 8+ but it was found on 2 and 4 too=
 */
590605c6bc31d5 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-06-2=
1  194  	ENTRY(0xfffffffe, u16, pre, "devid", dev_id, 0, fallback);
590605c6bc31d5 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-06-2=
1  195 =20
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  196  	ENTRY(0xfffffffe, u16, pre, "boardrev", board_rev, 0, true);
1387fe7d292b66 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-05-1=
2  197  	ENTRY(0xfffffffe, u32, pre, "boardflags", boardflags, 0, fb);
1387fe7d292b66 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-05-1=
2  198  	ENTRY(0xfffffff0, u32, pre, "boardflags2", boardflags2, 0, fb);
1387fe7d292b66 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-05-1=
2  199  	ENTRY(0xfffff800, u32, pre, "boardflags3", boardflags3, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  200  	ENTRY(0x00000002, u16, pre, "boardflags", boardflags_lo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  201  	ENTRY(0xfffffffc, u16, pre, "boardtype", board_type, 0, true);
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  202  	ENTRY(0xfffffffe, u16, pre, "boardnum", board_num, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  203  	ENTRY(0x00000002, u8, pre, "cc", country_code, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  204  	ENTRY(0xfffffff8, u8, pre, "regrev", regrev, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  205 =20
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  206  	ENTRY(0xfffffffe, u8, pre, "ledbh0", gpio0, 0xff, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  207  	ENTRY(0xfffffffe, u8, pre, "ledbh1", gpio1, 0xff, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  208  	ENTRY(0xfffffffe, u8, pre, "ledbh2", gpio2, 0xff, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  209  	ENTRY(0xfffffffe, u8, pre, "ledbh3", gpio3, 0xff, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  210 =20
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  211  	ENTRY(0x0000070e, u16, pre, "pa0b0", pa0b0, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  212  	ENTRY(0x0000070e, u16, pre, "pa0b1", pa0b1, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  213  	ENTRY(0x0000070e, u16, pre, "pa0b2", pa0b2, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  214  	ENTRY(0x0000070e, u8, pre, "pa0itssit", itssi_bg, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  215  	ENTRY(0x0000070e, u8, pre, "pa0maxpwr", maxpwr_bg, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  216 =20
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  217  	ENTRY(0x0000070c, u8, pre, "opo", opo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  218  	ENTRY(0xfffffffe, u8, pre, "aa2g", ant_available_bg, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  219  	ENTRY(0xfffffffe, u8, pre, "aa5g", ant_available_a, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  220  	ENTRY(0x000007fe, s8, pre, "ag0", antenna_gain.a0, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  221  	ENTRY(0x000007fe, s8, pre, "ag1", antenna_gain.a1, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  222  	ENTRY(0x000007f0, s8, pre, "ag2", antenna_gain.a2, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  223  	ENTRY(0x000007f0, s8, pre, "ag3", antenna_gain.a3, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  224 =20
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  225  	ENTRY(0x0000070e, u16, pre, "pa1b0", pa1b0, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  226  	ENTRY(0x0000070e, u16, pre, "pa1b1", pa1b1, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  227  	ENTRY(0x0000070e, u16, pre, "pa1b2", pa1b2, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  228  	ENTRY(0x0000070c, u16, pre, "pa1lob0", pa1lob0, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  229  	ENTRY(0x0000070c, u16, pre, "pa1lob1", pa1lob1, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  230  	ENTRY(0x0000070c, u16, pre, "pa1lob2", pa1lob2, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  231  	ENTRY(0x0000070c, u16, pre, "pa1hib0", pa1hib0, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  232  	ENTRY(0x0000070c, u16, pre, "pa1hib1", pa1hib1, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  233  	ENTRY(0x0000070c, u16, pre, "pa1hib2", pa1hib2, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  234  	ENTRY(0x0000070e, u8, pre, "pa1itssit", itssi_a, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  235  	ENTRY(0x0000070e, u8, pre, "pa1maxpwr", maxpwr_a, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  236  	ENTRY(0x0000070c, u8, pre, "pa1lomaxpwr", maxpwr_al, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  237  	ENTRY(0x0000070c, u8, pre, "pa1himaxpwr", maxpwr_ah, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  238 =20
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  239  	ENTRY(0x00000708, u8, pre, "bxa2g", bxa2g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  240  	ENTRY(0x00000708, u8, pre, "rssisav2g", rssisav2g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  241  	ENTRY(0x00000708, u8, pre, "rssismc2g", rssismc2g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  242  	ENTRY(0x00000708, u8, pre, "rssismf2g", rssismf2g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  243  	ENTRY(0x00000708, u8, pre, "bxa5g", bxa5g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  244  	ENTRY(0x00000708, u8, pre, "rssisav5g", rssisav5g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  245  	ENTRY(0x00000708, u8, pre, "rssismc5g", rssismc5g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  246  	ENTRY(0x00000708, u8, pre, "rssismf5g", rssismf5g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  247  	ENTRY(0x00000708, u8, pre, "tri2g", tri2g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  248  	ENTRY(0x00000708, u8, pre, "tri5g", tri5g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  249  	ENTRY(0x00000708, u8, pre, "tri5gl", tri5gl, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  250  	ENTRY(0x00000708, u8, pre, "tri5gh", tri5gh, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  251  	ENTRY(0x00000708, s8, pre, "rxpo2g", rxpo2g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  252  	ENTRY(0x00000708, s8, pre, "rxpo5g", rxpo5g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  253  	ENTRY(0xfffffff0, u8, pre, "txchain", txchain, 0xf, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  254  	ENTRY(0xfffffff0, u8, pre, "rxchain", rxchain, 0xf, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  255  	ENTRY(0xfffffff0, u8, pre, "antswitch", antswitch, 0xff, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  256  	ENTRY(0x00000700, u8, pre, "tssipos2g", fem.ghz2.tssipos, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  257  	ENTRY(0x00000700, u8, pre, "extpagain2g", fem.ghz2.extpa_gain, 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  258  	ENTRY(0x00000700, u8, pre, "pdetrange2g", fem.ghz2.pdet_range, 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  259  	ENTRY(0x00000700, u8, pre, "triso2g", fem.ghz2.tr_iso, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  260  	ENTRY(0x00000700, u8, pre, "antswctl2g", fem.ghz2.antswlut, 0, fb)=
;
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  261  	ENTRY(0x00000700, u8, pre, "tssipos5g", fem.ghz5.tssipos, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  262  	ENTRY(0x00000700, u8, pre, "extpagain5g", fem.ghz5.extpa_gain, 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  263  	ENTRY(0x00000700, u8, pre, "pdetrange5g", fem.ghz5.pdet_range, 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  264  	ENTRY(0x00000700, u8, pre, "triso5g", fem.ghz5.tr_iso, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  265  	ENTRY(0x00000700, u8, pre, "antswctl5g", fem.ghz5.antswlut, 0, fb)=
;
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  266  	ENTRY(0x000000f0, u8, pre, "txpid2ga0", txpid2g[0], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  267  	ENTRY(0x000000f0, u8, pre, "txpid2ga1", txpid2g[1], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  268  	ENTRY(0x000000f0, u8, pre, "txpid2ga2", txpid2g[2], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  269  	ENTRY(0x000000f0, u8, pre, "txpid2ga3", txpid2g[3], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  270  	ENTRY(0x000000f0, u8, pre, "txpid5ga0", txpid5g[0], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  271  	ENTRY(0x000000f0, u8, pre, "txpid5ga1", txpid5g[1], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  272  	ENTRY(0x000000f0, u8, pre, "txpid5ga2", txpid5g[2], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  273  	ENTRY(0x000000f0, u8, pre, "txpid5ga3", txpid5g[3], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  274  	ENTRY(0x000000f0, u8, pre, "txpid5gla0", txpid5gl[0], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  275  	ENTRY(0x000000f0, u8, pre, "txpid5gla1", txpid5gl[1], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  276  	ENTRY(0x000000f0, u8, pre, "txpid5gla2", txpid5gl[2], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  277  	ENTRY(0x000000f0, u8, pre, "txpid5gla3", txpid5gl[3], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  278  	ENTRY(0x000000f0, u8, pre, "txpid5gha0", txpid5gh[0], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  279  	ENTRY(0x000000f0, u8, pre, "txpid5gha1", txpid5gh[1], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  280  	ENTRY(0x000000f0, u8, pre, "txpid5gha2", txpid5gh[2], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  281  	ENTRY(0x000000f0, u8, pre, "txpid5gha3", txpid5gh[3], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  282 =20
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  283  	ENTRY(0xffffff00, u8, pre, "tempthresh", tempthresh, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  284  	ENTRY(0xffffff00, u8, pre, "tempoffset", tempoffset, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  285  	ENTRY(0xffffff00, u16, pre, "rawtempsense", rawtempsense, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  286  	ENTRY(0xffffff00, u8, pre, "measpower", measpower, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  287  	ENTRY(0xffffff00, u8, pre, "tempsense_slope", tempsense_slope, 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  288  	ENTRY(0xffffff00, u8, pre, "tempcorrx", tempcorrx, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  289  	ENTRY(0xffffff00, u8, pre, "tempsense_option", tempsense_option, 0=
, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  290  	ENTRY(0x00000700, u8, pre, "freqoffset_corr", freqoffset_corr, 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  291  	ENTRY(0x00000700, u8, pre, "iqcal_swp_dis", iqcal_swp_dis, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  292  	ENTRY(0x00000700, u8, pre, "hw_iqcal_en", hw_iqcal_en, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  293  	ENTRY(0x00000700, u8, pre, "elna2g", elna2g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  294  	ENTRY(0x00000700, u8, pre, "elna5g", elna5g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  295  	ENTRY(0xffffff00, u8, pre, "phycal_tempdelta", phycal_tempdelta, 0=
, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  296  	ENTRY(0xffffff00, u8, pre, "temps_period", temps_period, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  297  	ENTRY(0xffffff00, u8, pre, "temps_hysteresis", temps_hysteresis, 0=
, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  298  	ENTRY(0xffffff00, u8, pre, "measpower1", measpower1, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  299  	ENTRY(0xffffff00, u8, pre, "measpower2", measpower2, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  300 =20
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  301  	ENTRY(0x000001f0, u16, pre, "cck2gpo", cck2gpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  302  	ENTRY(0x000001f0, u32, pre, "ofdm2gpo", ofdm2gpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  303  	ENTRY(0x000001f0, u32, pre, "ofdm5gpo", ofdm5gpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  304  	ENTRY(0x000001f0, u32, pre, "ofdm5glpo", ofdm5glpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  305  	ENTRY(0x000001f0, u32, pre, "ofdm5ghpo", ofdm5ghpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  306  	ENTRY(0x000001f0, u16, pre, "mcs2gpo0", mcs2gpo[0], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  307  	ENTRY(0x000001f0, u16, pre, "mcs2gpo1", mcs2gpo[1], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  308  	ENTRY(0x000001f0, u16, pre, "mcs2gpo2", mcs2gpo[2], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  309  	ENTRY(0x000001f0, u16, pre, "mcs2gpo3", mcs2gpo[3], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  310  	ENTRY(0x000001f0, u16, pre, "mcs2gpo4", mcs2gpo[4], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  311  	ENTRY(0x000001f0, u16, pre, "mcs2gpo5", mcs2gpo[5], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  312  	ENTRY(0x000001f0, u16, pre, "mcs2gpo6", mcs2gpo[6], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  313  	ENTRY(0x000001f0, u16, pre, "mcs2gpo7", mcs2gpo[7], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  314  	ENTRY(0x000001f0, u16, pre, "mcs5gpo0", mcs5gpo[0], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  315  	ENTRY(0x000001f0, u16, pre, "mcs5gpo1", mcs5gpo[1], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  316  	ENTRY(0x000001f0, u16, pre, "mcs5gpo2", mcs5gpo[2], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  317  	ENTRY(0x000001f0, u16, pre, "mcs5gpo3", mcs5gpo[3], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  318  	ENTRY(0x000001f0, u16, pre, "mcs5gpo4", mcs5gpo[4], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  319  	ENTRY(0x000001f0, u16, pre, "mcs5gpo5", mcs5gpo[5], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  320  	ENTRY(0x000001f0, u16, pre, "mcs5gpo6", mcs5gpo[6], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  321  	ENTRY(0x000001f0, u16, pre, "mcs5gpo7", mcs5gpo[7], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  322  	ENTRY(0x000001f0, u16, pre, "mcs5glpo0", mcs5glpo[0], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  323  	ENTRY(0x000001f0, u16, pre, "mcs5glpo1", mcs5glpo[1], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  324  	ENTRY(0x000001f0, u16, pre, "mcs5glpo2", mcs5glpo[2], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  325  	ENTRY(0x000001f0, u16, pre, "mcs5glpo3", mcs5glpo[3], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  326  	ENTRY(0x000001f0, u16, pre, "mcs5glpo4", mcs5glpo[4], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  327  	ENTRY(0x000001f0, u16, pre, "mcs5glpo5", mcs5glpo[5], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  328  	ENTRY(0x000001f0, u16, pre, "mcs5glpo6", mcs5glpo[6], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  329  	ENTRY(0x000001f0, u16, pre, "mcs5glpo7", mcs5glpo[7], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  330  	ENTRY(0x000001f0, u16, pre, "mcs5ghpo0", mcs5ghpo[0], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  331  	ENTRY(0x000001f0, u16, pre, "mcs5ghpo1", mcs5ghpo[1], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  332  	ENTRY(0x000001f0, u16, pre, "mcs5ghpo2", mcs5ghpo[2], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  333  	ENTRY(0x000001f0, u16, pre, "mcs5ghpo3", mcs5ghpo[3], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  334  	ENTRY(0x000001f0, u16, pre, "mcs5ghpo4", mcs5ghpo[4], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  335  	ENTRY(0x000001f0, u16, pre, "mcs5ghpo5", mcs5ghpo[5], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  336  	ENTRY(0x000001f0, u16, pre, "mcs5ghpo6", mcs5ghpo[6], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  337  	ENTRY(0x000001f0, u16, pre, "mcs5ghpo7", mcs5ghpo[7], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  338  	ENTRY(0x000001f0, u16, pre, "cddpo", cddpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  339  	ENTRY(0x000001f0, u16, pre, "stbcpo", stbcpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  340  	ENTRY(0x000001f0, u16, pre, "bw40po", bw40po, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  341  	ENTRY(0x000001f0, u16, pre, "bwduppo", bwduppo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  342 =20
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  343  	ENTRY(0xfffffe00, u16, pre, "cckbw202gpo", cckbw202gpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  344  	ENTRY(0xfffffe00, u16, pre, "cckbw20ul2gpo", cckbw20ul2gpo, 0, fb)=
;
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  345  	ENTRY(0x00000600, u32, pre, "legofdmbw202gpo", legofdmbw202gpo, 0,=
 fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  346  	ENTRY(0x00000600, u32, pre, "legofdmbw20ul2gpo", legofdmbw20ul2gpo=
, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  347  	ENTRY(0x00000600, u32, pre, "legofdmbw205glpo", legofdmbw205glpo, =
0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  348  	ENTRY(0x00000600, u32, pre, "legofdmbw20ul5glpo", legofdmbw20ul5gl=
po, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  349  	ENTRY(0x00000600, u32, pre, "legofdmbw205gmpo", legofdmbw205gmpo, =
0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  350  	ENTRY(0x00000600, u32, pre, "legofdmbw20ul5gmpo", legofdmbw20ul5gm=
po, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  351  	ENTRY(0x00000600, u32, pre, "legofdmbw205ghpo", legofdmbw205ghpo, =
0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  352  	ENTRY(0x00000600, u32, pre, "legofdmbw20ul5ghpo", legofdmbw20ul5gh=
po, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  353  	ENTRY(0xfffffe00, u32, pre, "mcsbw202gpo", mcsbw202gpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  354  	ENTRY(0x00000600, u32, pre, "mcsbw20ul2gpo", mcsbw20ul2gpo, 0, fb)=
;
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  355  	ENTRY(0xfffffe00, u32, pre, "mcsbw402gpo", mcsbw402gpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  356  	ENTRY(0xfffffe00, u32, pre, "mcsbw205glpo", mcsbw205glpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  357  	ENTRY(0x00000600, u32, pre, "mcsbw20ul5glpo", mcsbw20ul5glpo, 0, f=
b);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  358  	ENTRY(0xfffffe00, u32, pre, "mcsbw405glpo", mcsbw405glpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  359  	ENTRY(0xfffffe00, u32, pre, "mcsbw205gmpo", mcsbw205gmpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  360  	ENTRY(0x00000600, u32, pre, "mcsbw20ul5gmpo", mcsbw20ul5gmpo, 0, f=
b);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  361  	ENTRY(0xfffffe00, u32, pre, "mcsbw405gmpo", mcsbw405gmpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  362  	ENTRY(0xfffffe00, u32, pre, "mcsbw205ghpo", mcsbw205ghpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  363  	ENTRY(0x00000600, u32, pre, "mcsbw20ul5ghpo", mcsbw20ul5ghpo, 0, f=
b);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  364  	ENTRY(0xfffffe00, u32, pre, "mcsbw405ghpo", mcsbw405ghpo, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  365  	ENTRY(0x00000600, u16, pre, "mcs32po", mcs32po, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  366  	ENTRY(0x00000600, u16, pre, "legofdm40duppo", legofdm40duppo, 0, f=
b);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  367  	ENTRY(0x00000700, u8, pre, "pcieingress_war", pcieingress_war, 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  368 =20
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  369  	/* TODO: rev 11 support */
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  370  	ENTRY(0x00000700, u8, pre, "rxgainerr2ga0", rxgainerr2ga[0], 0, fb=
);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  371  	ENTRY(0x00000700, u8, pre, "rxgainerr2ga1", rxgainerr2ga[1], 0, fb=
);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  372  	ENTRY(0x00000700, u8, pre, "rxgainerr2ga2", rxgainerr2ga[2], 0, fb=
);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  373  	ENTRY(0x00000700, u8, pre, "rxgainerr5gla0", rxgainerr5gla[0], 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  374  	ENTRY(0x00000700, u8, pre, "rxgainerr5gla1", rxgainerr5gla[1], 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  375  	ENTRY(0x00000700, u8, pre, "rxgainerr5gla2", rxgainerr5gla[2], 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  376  	ENTRY(0x00000700, u8, pre, "rxgainerr5gma0", rxgainerr5gma[0], 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  377  	ENTRY(0x00000700, u8, pre, "rxgainerr5gma1", rxgainerr5gma[1], 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  378  	ENTRY(0x00000700, u8, pre, "rxgainerr5gma2", rxgainerr5gma[2], 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  379  	ENTRY(0x00000700, u8, pre, "rxgainerr5gha0", rxgainerr5gha[0], 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  380  	ENTRY(0x00000700, u8, pre, "rxgainerr5gha1", rxgainerr5gha[1], 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  381  	ENTRY(0x00000700, u8, pre, "rxgainerr5gha2", rxgainerr5gha[2], 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  382  	ENTRY(0x00000700, u8, pre, "rxgainerr5gua0", rxgainerr5gua[0], 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  383  	ENTRY(0x00000700, u8, pre, "rxgainerr5gua1", rxgainerr5gua[1], 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  384  	ENTRY(0x00000700, u8, pre, "rxgainerr5gua2", rxgainerr5gua[2], 0, =
fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  385 =20
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  386  	ENTRY(0xfffffe00, u8, pre, "sar2g", sar2g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  387  	ENTRY(0xfffffe00, u8, pre, "sar5g", sar5g, 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  388 =20
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  389  	/* TODO: rev 11 support */
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  390  	ENTRY(0x00000700, u8, pre, "noiselvl2ga0", noiselvl2ga[0], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  391  	ENTRY(0x00000700, u8, pre, "noiselvl2ga1", noiselvl2ga[1], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  392  	ENTRY(0x00000700, u8, pre, "noiselvl2ga2", noiselvl2ga[2], 0, fb);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  393  	ENTRY(0x00000700, u8, pre, "noiselvl5gla0", noiselvl5gla[0], 0, fb=
);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  394  	ENTRY(0x00000700, u8, pre, "noiselvl5gla1", noiselvl5gla[1], 0, fb=
);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  395  	ENTRY(0x00000700, u8, pre, "noiselvl5gla2", noiselvl5gla[2], 0, fb=
);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  396  	ENTRY(0x00000700, u8, pre, "noiselvl5gma0", noiselvl5gma[0], 0, fb=
);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  397  	ENTRY(0x00000700, u8, pre, "noiselvl5gma1", noiselvl5gma[1], 0, fb=
);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  398  	ENTRY(0x00000700, u8, pre, "noiselvl5gma2", noiselvl5gma[2], 0, fb=
);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  399  	ENTRY(0x00000700, u8, pre, "noiselvl5gha0", noiselvl5gha[0], 0, fb=
);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  400  	ENTRY(0x00000700, u8, pre, "noiselvl5gha1", noiselvl5gha[1], 0, fb=
);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  401  	ENTRY(0x00000700, u8, pre, "noiselvl5gha2", noiselvl5gha[2], 0, fb=
);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  402  	ENTRY(0x00000700, u8, pre, "noiselvl5gua0", noiselvl5gua[0], 0, fb=
);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  403  	ENTRY(0x00000700, u8, pre, "noiselvl5gua1", noiselvl5gua[1], 0, fb=
);
e754dfcfe37f49 arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  404  	ENTRY(0x00000700, u8, pre, "noiselvl5gua2", noiselvl5gua[2], 0, fb=
);
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  405  }
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  406  #undef ENTRY /* It's specififc, uses local variable, don't use it (=
again). */
d55a52ccf8f80c arch/mips/bcm47xx/sprom.c Rafa=C5=82 Mi=C5=82ecki  2015-04-0=
2  407 =20

:::::: The code at line 187 was first introduced by commit
:::::: d55a52ccf8f80cdf51af2c5c6e56c825f98c4f85 MIPS: BCM47xx: Add generic =
function filling SPROM entries

:::::: TO: Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com>
:::::: CC: Ralf Baechle <ralf@linux-mips.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202107070814.e6haUJck-lkp%40intel.com.

--7AUc2qLy4jB3hD7Z
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
7T2PLkuA8lziwgoynzYj3Kj+B245bUW6CQIA

--7AUc2qLy4jB3hD7Z--
