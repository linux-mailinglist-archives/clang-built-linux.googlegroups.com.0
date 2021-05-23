Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBINOU6CQMGQERWASFYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D5638D8A5
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 May 2021 06:16:35 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id x19-20020ac87a930000b02901f6125bcda0sf7796888qtr.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 21:16:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621743394; cv=pass;
        d=google.com; s=arc-20160816;
        b=pGj6QZNb0cIEgsfbH1AyYgANMk8OHpCcpzTbcX/yt/Dl9xoFNNt4girfbR/OUucj7T
         vMZ0YTzfm5eBU5c6tpV5NCRxFWuXn+KiTdkB1GaifqDodf7Pi+LfDVfrrAE6z5Ksp7iH
         tqkXtYD9OF8qFOqdfElgm8T5Tg7MuU6Zikn2qITmreef5SDu2vGebD/AeMqkUK9OYqyM
         XHVcfa9ItzsCOFypS7R0qC0NonDPV4ZyIg8EnuWJTSnYUjXcC9mwPBEdsWX85fgd+EZM
         oekdHPk6Ryn7RKtZVY89gQPbjQv7vGjVQv20jXtuX4YVjsE1FQOemxuVjv0cluXwkT8i
         MwGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=/vltth+IQd1RgbmsgTK7x88jPp3us/gwY4LnEgC7YMw=;
        b=snZ5NNaFPL7B4+0oPoaz0HkAib+UC9yPm0gavhwjsTrgHpYPHjcwZOuOxVOhVLYQgn
         9oBS1dRIOKYWITlAWFW9fSvvkenw1Nr6DiusuqtGs5xvJWxKBeyF5/PMauzwq3ENHDF/
         wTSdWFro1qrp0c9pgRZnFBKSh7MjGDzMgnCS+uuXe8lZJHmYBgBHnnb8E+TH5H4H9QB3
         I7/kd8+ee5Z4pBjJuMbNE89G5xncxiinsSZzAtcJUxxXD6w++174FZqFAMxa1CJHa80h
         sZ6q44TbUl+Fds7EZz3AbEMxXJ+9kUBgCrQLCmQbziMAENQUeCZTCwtKoLGX08ahgNJq
         3Sug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/vltth+IQd1RgbmsgTK7x88jPp3us/gwY4LnEgC7YMw=;
        b=M6m3qNnECo6tRqQgbg50IVXsPo5TwvNbDkSUYARB2fnaVUOoGa3aQxB6bo1QXKwfG/
         fqoltAnV6/zW+3oKP0PXnHCIBUFtz4r1mFV/ahM1cK31oX7xAARUy59kHQ0v35LzVXmx
         o/jd5H+IheGq4cNvpXeblPaJJDiyX48z37QGD/vdT2pUA9RC0Jyq5Rps/iCHuhnPLXiT
         pVxGYlBv+KpU29gTOTGdeSGrvRg4WJJsrGCp8Jj4gFXYATUEy9nN1VSZgFiV6JCRbfxt
         tKwVMzcLsgMV2Vg3mNenYz9jCXZn9L1jz1FBuEk7VoS8XvJME3GnDvtnLkoGsZjL+e/+
         kCWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/vltth+IQd1RgbmsgTK7x88jPp3us/gwY4LnEgC7YMw=;
        b=RoQXIDQYSYWoDJWWf0igzbUXVE2rAC5F34aTdFn9mczxadg/+Gto9XBzxJyuaHyHW7
         3L6kMJzFmqYGDv+z6elzBLp6Tf6Rd13FO+nz8e5cGW1bGPT0BnZBaxtm7qovqdyPDpxe
         o467mTjxt4+YBMTyTOr7JP9C9up1iKwAi69BhPsbW/4/4XHg1vXUIhREbWiFjsQTqy7G
         +nfxNqETKe5t2dzELQcwLT/5zgADA+W+/2V+aAttkaoXgv11fNaV+q3p0WpSEKcMEeVG
         4h9qugTDgFjB/4fbJ52ZGE11NNrVwlKFywJPoCuzqVHFTfFfX94sNdX5tI9KueMdJTEs
         9aeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320OpLUKLDEM9RUHgx+D6GTEQP1Ws+9AIrKeyTu4sXb4tuTJD6Q
	lttDWaZto12+n2xj2mMGezo=
X-Google-Smtp-Source: ABdhPJyYFyk2Paj3hgxipPzP5A8zg+IwAoRebQg8EiK442ZralqXZtdUpYCwPy9ngRqU3TPYaO+dbA==
X-Received: by 2002:a05:620a:1492:: with SMTP id w18mr22879714qkj.495.1621743393841;
        Sat, 22 May 2021 21:16:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f601:: with SMTP id r1ls3248180qvm.2.gmail; Sat, 22 May
 2021 21:16:33 -0700 (PDT)
X-Received: by 2002:a0c:9b96:: with SMTP id o22mr22675589qve.23.1621743393139;
        Sat, 22 May 2021 21:16:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621743393; cv=none;
        d=google.com; s=arc-20160816;
        b=diKfmwnyMHRvQI0uo9unhW9SMPwn4JZKSsd5yO5bUoVPR03Si6Sjy13a1V1EgufdCA
         siCY9esIiN3FmG/Whd5fyK3DqiSiZCBALDWk9UxcVOa6L8W7VOyA3nRxXT2G1TuCn1Py
         zT3ezUwNzETTKKljAfaBacbJmL41gIMpMrxHxmUssokXqUscStCOWSjg+QS6dok9JFxn
         wwS544AcRZTMeSvsoX5Od7ZOn339zyVNgotFxiIjZihsq3xRMYEYIgTulcKSLBDq76FS
         4gs6PBpIkCQNqWeFybpNZ7MJVBnveXl9tlqLx3+N1pllVXk1S8xKanmsPPq6TO+kGGj6
         1n0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=Um8GmHd/kyox3oSuU/x8IBwBGqTsk46auFSkzR+lQG0=;
        b=vNpGuEsym3VpSv0Z6oEOIOWHS6/+P3Pa2hoEL6RneKc5j1e3uMwzZOlMYlenWkWa87
         qVwNunDoCGcifngazWXIi2pFEGwD39hsj6/pIPwnBWpZgriynAW2ygbBM64xAFSxHED2
         m+Xnzdh10IDI8ZpOkoFzJwbzeqNdwMzXDvMStRj3JtlsqeiAOponPps8txFEKatNwz7J
         YMchJfMfj+wbTqEwwUCVBXyH+G0sFh1Eg9+GXfW+wJn4bO1hI6+ADE6flpW10VLgqXYS
         Gp2AF1Q8mg+hKtDHovJcn/H2NJI79v9LR7LloW6rTNFpeM9EOWndsXym7/sCyHg2DdMV
         KKsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id v64si1523708qkc.1.2021.05.22.21.16.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 May 2021 21:16:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: azdDp4EvioaHEwEpCg79XxkFkIXnTj0XK1QrW9HTuZQlTU/l+G7SVwquIRgiDKQHyTXRjHXe3u
 +bVPsO0T6yIw==
X-IronPort-AV: E=McAfee;i="6200,9189,9992"; a="181352251"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="181352251"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 May 2021 21:16:30 -0700
IronPort-SDR: femS0Bp0BqHWUTyaTamw+U8i58defM85eUdBOAiJbKPMMGJ5TVRN/SdXzSdbpOH/boAPuGI00E
 aMZ6VTUKziIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; 
   d="gz'50?scan'50,208,50";a="395892383"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 22 May 2021 21:16:28 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lkfXP-0000hA-C5; Sun, 23 May 2021 04:16:27 +0000
Date: Sun, 23 May 2021 12:15:32 +0800
From: kernel test robot <lkp@intel.com>
To: Aditya Srivastava <yashsri421@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org
Subject: arch/mips/cavium-octeon/executive/cvmx-interrupt-decodes.c:49:
 warning: This comment starts with '/**', but isn't a kernel-doc comment.
 Refer Documentation/doc-guide/kernel-doc.rst
Message-ID: <202105231221.ujH7zer5-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   34c5c89890d6295621b6f09b18e7ead9046634bc
commit: f9bbc12ccb35ac8b3fa01cec1a19cb523a7707c7 scripts: kernel-doc: improve parsing for kernel-doc comments syntax
date:   5 weeks ago
config: mips-randconfig-r014-20210523 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b4fd512c36ca344a3ff69350219e8b0a67e9472a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f9bbc12ccb35ac8b3fa01cec1a19cb523a7707c7
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout f9bbc12ccb35ac8b3fa01cec1a19cb523a7707c7
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> arch/mips/cavium-octeon/executive/cvmx-interrupt-decodes.c:49: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * __cvmx_interrupt_gmxx_rxx_int_en_enable enables all interrupt bits in cvmx_gmxx_rxx_int_en_t
   arch/mips/cavium-octeon/executive/cvmx-interrupt-decodes.c:230: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * __cvmx_interrupt_pcsx_intx_en_reg_enable enables all interrupt bits in cvmx_pcsx_intx_en_reg_t
   arch/mips/cavium-octeon/executive/cvmx-interrupt-decodes.c:271: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * __cvmx_interrupt_pcsxx_int_en_reg_enable enables all interrupt bits in cvmx_pcsxx_int_en_reg_t
   arch/mips/cavium-octeon/executive/cvmx-interrupt-decodes.c:301: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * __cvmx_interrupt_spxx_int_msk_enable enables all interrupt bits in cvmx_spxx_int_msk_t
   arch/mips/cavium-octeon/executive/cvmx-interrupt-decodes.c:340: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * __cvmx_interrupt_stxx_int_msk_enable enables all interrupt bits in cvmx_stxx_int_msk_t
--
   arch/mips/cavium-octeon/executive/cvmx-l2c.c:285: warning: Cannot understand  * @INTERNAL
    on line 285 - I thought it was a doc line
   arch/mips/cavium-octeon/executive/cvmx-l2c.c:579: warning: Cannot understand  * @INTERNAL
    on line 579 - I thought it was a doc line
>> arch/mips/cavium-octeon/executive/cvmx-l2c.c:768: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Return log base 2 of the number of sets in the L2 cache
   arch/mips/cavium-octeon/executive/cvmx-l2c.c:861: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Flush a line from the L2 cache


vim +49 arch/mips/cavium-octeon/executive/cvmx-interrupt-decodes.c

80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   46  
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   47  
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   48  /**
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  @49   * __cvmx_interrupt_gmxx_rxx_int_en_enable enables all interrupt bits in cvmx_gmxx_rxx_int_en_t
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   50   */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   51  void __cvmx_interrupt_gmxx_rxx_int_en_enable(int index, int block)
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   52  {
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   53  	union cvmx_gmxx_rxx_int_en gmx_rx_int_en;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   54  	cvmx_write_csr(CVMX_GMXX_RXX_INT_REG(index, block),
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   55  		       cvmx_read_csr(CVMX_GMXX_RXX_INT_REG(index, block)));
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   56  	gmx_rx_int_en.u64 = 0;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   57  	if (OCTEON_IS_MODEL(OCTEON_CN56XX)) {
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   58  		/* Skipping gmx_rx_int_en.s.reserved_29_63 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   59  		gmx_rx_int_en.s.hg2cc = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   60  		gmx_rx_int_en.s.hg2fld = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   61  		gmx_rx_int_en.s.undat = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   62  		gmx_rx_int_en.s.uneop = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   63  		gmx_rx_int_en.s.unsop = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   64  		gmx_rx_int_en.s.bad_term = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   65  		gmx_rx_int_en.s.bad_seq = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   66  		gmx_rx_int_en.s.rem_fault = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   67  		gmx_rx_int_en.s.loc_fault = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   68  		gmx_rx_int_en.s.pause_drp = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   69  		/* Skipping gmx_rx_int_en.s.reserved_16_18 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   70  		/*gmx_rx_int_en.s.ifgerr = 1; */
92a76f6d8545efc arch/mips/cavium-octeon/executive/cvmx-interrupt-decodes.c Adam Buchbinder 2016-02-25   71  		/*gmx_rx_int_en.s.coldet = 1; // Collision detect */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   72  		/*gmx_rx_int_en.s.falerr = 1; // False carrier error or extend error after slottime */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   73  		/*gmx_rx_int_en.s.rsverr = 1; // RGMII reserved opcodes */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   74  		/*gmx_rx_int_en.s.pcterr = 1; // Bad Preamble / Protocol */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   75  		gmx_rx_int_en.s.ovrerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   76  		/* Skipping gmx_rx_int_en.s.reserved_9_9 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   77  		gmx_rx_int_en.s.skperr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   78  		gmx_rx_int_en.s.rcverr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   79  		/* Skipping gmx_rx_int_en.s.reserved_5_6 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   80  		/*gmx_rx_int_en.s.fcserr = 1; // FCS errors are handled when we get work */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   81  		gmx_rx_int_en.s.jabber = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   82  		/* Skipping gmx_rx_int_en.s.reserved_2_2 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   83  		gmx_rx_int_en.s.carext = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   84  		/* Skipping gmx_rx_int_en.s.reserved_0_0 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   85  	}
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   86  	if (OCTEON_IS_MODEL(OCTEON_CN30XX)) {
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   87  		/* Skipping gmx_rx_int_en.s.reserved_19_63 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   88  		/*gmx_rx_int_en.s.phy_dupx = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   89  		/*gmx_rx_int_en.s.phy_spd = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   90  		/*gmx_rx_int_en.s.phy_link = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   91  		/*gmx_rx_int_en.s.ifgerr = 1; */
92a76f6d8545efc arch/mips/cavium-octeon/executive/cvmx-interrupt-decodes.c Adam Buchbinder 2016-02-25   92  		/*gmx_rx_int_en.s.coldet = 1; // Collision detect */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   93  		/*gmx_rx_int_en.s.falerr = 1; // False carrier error or extend error after slottime */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   94  		/*gmx_rx_int_en.s.rsverr = 1; // RGMII reserved opcodes */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   95  		/*gmx_rx_int_en.s.pcterr = 1; // Bad Preamble / Protocol */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   96  		gmx_rx_int_en.s.ovrerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   97  		gmx_rx_int_en.s.niberr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   98  		gmx_rx_int_en.s.skperr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05   99  		gmx_rx_int_en.s.rcverr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  100  		/*gmx_rx_int_en.s.lenerr = 1; // Length errors are handled when we get work */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  101  		gmx_rx_int_en.s.alnerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  102  		/*gmx_rx_int_en.s.fcserr = 1; // FCS errors are handled when we get work */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  103  		gmx_rx_int_en.s.jabber = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  104  		gmx_rx_int_en.s.maxerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  105  		gmx_rx_int_en.s.carext = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  106  		gmx_rx_int_en.s.minerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  107  	}
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  108  	if (OCTEON_IS_MODEL(OCTEON_CN50XX)) {
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  109  		/* Skipping gmx_rx_int_en.s.reserved_20_63 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  110  		gmx_rx_int_en.s.pause_drp = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  111  		/*gmx_rx_int_en.s.phy_dupx = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  112  		/*gmx_rx_int_en.s.phy_spd = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  113  		/*gmx_rx_int_en.s.phy_link = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  114  		/*gmx_rx_int_en.s.ifgerr = 1; */
92a76f6d8545efc arch/mips/cavium-octeon/executive/cvmx-interrupt-decodes.c Adam Buchbinder 2016-02-25  115  		/*gmx_rx_int_en.s.coldet = 1; // Collision detect */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  116  		/*gmx_rx_int_en.s.falerr = 1; // False carrier error or extend error after slottime */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  117  		/*gmx_rx_int_en.s.rsverr = 1; // RGMII reserved opcodes */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  118  		/*gmx_rx_int_en.s.pcterr = 1; // Bad Preamble / Protocol */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  119  		gmx_rx_int_en.s.ovrerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  120  		gmx_rx_int_en.s.niberr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  121  		gmx_rx_int_en.s.skperr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  122  		gmx_rx_int_en.s.rcverr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  123  		/* Skipping gmx_rx_int_en.s.reserved_6_6 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  124  		gmx_rx_int_en.s.alnerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  125  		/*gmx_rx_int_en.s.fcserr = 1; // FCS errors are handled when we get work */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  126  		gmx_rx_int_en.s.jabber = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  127  		/* Skipping gmx_rx_int_en.s.reserved_2_2 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  128  		gmx_rx_int_en.s.carext = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  129  		/* Skipping gmx_rx_int_en.s.reserved_0_0 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  130  	}
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  131  	if (OCTEON_IS_MODEL(OCTEON_CN38XX)) {
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  132  		/* Skipping gmx_rx_int_en.s.reserved_19_63 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  133  		/*gmx_rx_int_en.s.phy_dupx = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  134  		/*gmx_rx_int_en.s.phy_spd = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  135  		/*gmx_rx_int_en.s.phy_link = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  136  		/*gmx_rx_int_en.s.ifgerr = 1; */
92a76f6d8545efc arch/mips/cavium-octeon/executive/cvmx-interrupt-decodes.c Adam Buchbinder 2016-02-25  137  		/*gmx_rx_int_en.s.coldet = 1; // Collision detect */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  138  		/*gmx_rx_int_en.s.falerr = 1; // False carrier error or extend error after slottime */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  139  		/*gmx_rx_int_en.s.rsverr = 1; // RGMII reserved opcodes */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  140  		/*gmx_rx_int_en.s.pcterr = 1; // Bad Preamble / Protocol */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  141  		gmx_rx_int_en.s.ovrerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  142  		gmx_rx_int_en.s.niberr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  143  		gmx_rx_int_en.s.skperr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  144  		gmx_rx_int_en.s.rcverr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  145  		/*gmx_rx_int_en.s.lenerr = 1; // Length errors are handled when we get work */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  146  		gmx_rx_int_en.s.alnerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  147  		/*gmx_rx_int_en.s.fcserr = 1; // FCS errors are handled when we get work */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  148  		gmx_rx_int_en.s.jabber = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  149  		gmx_rx_int_en.s.maxerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  150  		gmx_rx_int_en.s.carext = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  151  		gmx_rx_int_en.s.minerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  152  	}
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  153  	if (OCTEON_IS_MODEL(OCTEON_CN31XX)) {
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  154  		/* Skipping gmx_rx_int_en.s.reserved_19_63 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  155  		/*gmx_rx_int_en.s.phy_dupx = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  156  		/*gmx_rx_int_en.s.phy_spd = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  157  		/*gmx_rx_int_en.s.phy_link = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  158  		/*gmx_rx_int_en.s.ifgerr = 1; */
92a76f6d8545efc arch/mips/cavium-octeon/executive/cvmx-interrupt-decodes.c Adam Buchbinder 2016-02-25  159  		/*gmx_rx_int_en.s.coldet = 1; // Collision detect */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  160  		/*gmx_rx_int_en.s.falerr = 1; // False carrier error or extend error after slottime */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  161  		/*gmx_rx_int_en.s.rsverr = 1; // RGMII reserved opcodes */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  162  		/*gmx_rx_int_en.s.pcterr = 1; // Bad Preamble / Protocol */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  163  		gmx_rx_int_en.s.ovrerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  164  		gmx_rx_int_en.s.niberr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  165  		gmx_rx_int_en.s.skperr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  166  		gmx_rx_int_en.s.rcverr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  167  		/*gmx_rx_int_en.s.lenerr = 1; // Length errors are handled when we get work */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  168  		gmx_rx_int_en.s.alnerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  169  		/*gmx_rx_int_en.s.fcserr = 1; // FCS errors are handled when we get work */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  170  		gmx_rx_int_en.s.jabber = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  171  		gmx_rx_int_en.s.maxerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  172  		gmx_rx_int_en.s.carext = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  173  		gmx_rx_int_en.s.minerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  174  	}
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  175  	if (OCTEON_IS_MODEL(OCTEON_CN58XX)) {
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  176  		/* Skipping gmx_rx_int_en.s.reserved_20_63 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  177  		gmx_rx_int_en.s.pause_drp = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  178  		/*gmx_rx_int_en.s.phy_dupx = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  179  		/*gmx_rx_int_en.s.phy_spd = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  180  		/*gmx_rx_int_en.s.phy_link = 1; */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  181  		/*gmx_rx_int_en.s.ifgerr = 1; */
92a76f6d8545efc arch/mips/cavium-octeon/executive/cvmx-interrupt-decodes.c Adam Buchbinder 2016-02-25  182  		/*gmx_rx_int_en.s.coldet = 1; // Collision detect */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  183  		/*gmx_rx_int_en.s.falerr = 1; // False carrier error or extend error after slottime */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  184  		/*gmx_rx_int_en.s.rsverr = 1; // RGMII reserved opcodes */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  185  		/*gmx_rx_int_en.s.pcterr = 1; // Bad Preamble / Protocol */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  186  		gmx_rx_int_en.s.ovrerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  187  		gmx_rx_int_en.s.niberr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  188  		gmx_rx_int_en.s.skperr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  189  		gmx_rx_int_en.s.rcverr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  190  		/*gmx_rx_int_en.s.lenerr = 1; // Length errors are handled when we get work */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  191  		gmx_rx_int_en.s.alnerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  192  		/*gmx_rx_int_en.s.fcserr = 1; // FCS errors are handled when we get work */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  193  		gmx_rx_int_en.s.jabber = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  194  		gmx_rx_int_en.s.maxerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  195  		gmx_rx_int_en.s.carext = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  196  		gmx_rx_int_en.s.minerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  197  	}
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  198  	if (OCTEON_IS_MODEL(OCTEON_CN52XX)) {
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  199  		/* Skipping gmx_rx_int_en.s.reserved_29_63 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  200  		gmx_rx_int_en.s.hg2cc = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  201  		gmx_rx_int_en.s.hg2fld = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  202  		gmx_rx_int_en.s.undat = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  203  		gmx_rx_int_en.s.uneop = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  204  		gmx_rx_int_en.s.unsop = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  205  		gmx_rx_int_en.s.bad_term = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  206  		gmx_rx_int_en.s.bad_seq = 0;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  207  		gmx_rx_int_en.s.rem_fault = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  208  		gmx_rx_int_en.s.loc_fault = 0;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  209  		gmx_rx_int_en.s.pause_drp = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  210  		/* Skipping gmx_rx_int_en.s.reserved_16_18 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  211  		/*gmx_rx_int_en.s.ifgerr = 1; */
92a76f6d8545efc arch/mips/cavium-octeon/executive/cvmx-interrupt-decodes.c Adam Buchbinder 2016-02-25  212  		/*gmx_rx_int_en.s.coldet = 1; // Collision detect */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  213  		/*gmx_rx_int_en.s.falerr = 1; // False carrier error or extend error after slottime */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  214  		/*gmx_rx_int_en.s.rsverr = 1; // RGMII reserved opcodes */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  215  		/*gmx_rx_int_en.s.pcterr = 1; // Bad Preamble / Protocol */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  216  		gmx_rx_int_en.s.ovrerr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  217  		/* Skipping gmx_rx_int_en.s.reserved_9_9 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  218  		gmx_rx_int_en.s.skperr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  219  		gmx_rx_int_en.s.rcverr = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  220  		/* Skipping gmx_rx_int_en.s.reserved_5_6 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  221  		/*gmx_rx_int_en.s.fcserr = 1; // FCS errors are handled when we get work */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  222  		gmx_rx_int_en.s.jabber = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  223  		/* Skipping gmx_rx_int_en.s.reserved_2_2 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  224  		gmx_rx_int_en.s.carext = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  225  		/* Skipping gmx_rx_int_en.s.reserved_0_0 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  226  	}
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  227  	cvmx_write_csr(CVMX_GMXX_RXX_INT_EN(index, block), gmx_rx_int_en.u64);
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  228  }
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  229  /**
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  230   * __cvmx_interrupt_pcsx_intx_en_reg_enable enables all interrupt bits in cvmx_pcsx_intx_en_reg_t
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  231   */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  232  void __cvmx_interrupt_pcsx_intx_en_reg_enable(int index, int block)
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  233  {
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  234  	union cvmx_pcsx_intx_en_reg pcs_int_en_reg;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  235  	cvmx_write_csr(CVMX_PCSX_INTX_REG(index, block),
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  236  		       cvmx_read_csr(CVMX_PCSX_INTX_REG(index, block)));
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  237  	pcs_int_en_reg.u64 = 0;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  238  	if (OCTEON_IS_MODEL(OCTEON_CN56XX)) {
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  239  		/* Skipping pcs_int_en_reg.s.reserved_12_63 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  240  		/*pcs_int_en_reg.s.dup = 1; // This happens during normal operation */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  241  		pcs_int_en_reg.s.sync_bad_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  242  		pcs_int_en_reg.s.an_bad_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  243  		pcs_int_en_reg.s.rxlock_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  244  		pcs_int_en_reg.s.rxbad_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  245  		/*pcs_int_en_reg.s.rxerr_en = 1; // This happens during normal operation */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  246  		pcs_int_en_reg.s.txbad_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  247  		pcs_int_en_reg.s.txfifo_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  248  		pcs_int_en_reg.s.txfifu_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  249  		pcs_int_en_reg.s.an_err_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  250  		/*pcs_int_en_reg.s.xmit_en = 1; // This happens during normal operation */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  251  		/*pcs_int_en_reg.s.lnkspd_en = 1; // This happens during normal operation */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  252  	}
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  253  	if (OCTEON_IS_MODEL(OCTEON_CN52XX)) {
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  254  		/* Skipping pcs_int_en_reg.s.reserved_12_63 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  255  		/*pcs_int_en_reg.s.dup = 1; // This happens during normal operation */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  256  		pcs_int_en_reg.s.sync_bad_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  257  		pcs_int_en_reg.s.an_bad_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  258  		pcs_int_en_reg.s.rxlock_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  259  		pcs_int_en_reg.s.rxbad_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  260  		/*pcs_int_en_reg.s.rxerr_en = 1; // This happens during normal operation */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  261  		pcs_int_en_reg.s.txbad_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  262  		pcs_int_en_reg.s.txfifo_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  263  		pcs_int_en_reg.s.txfifu_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  264  		pcs_int_en_reg.s.an_err_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  265  		/*pcs_int_en_reg.s.xmit_en = 1; // This happens during normal operation */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  266  		/*pcs_int_en_reg.s.lnkspd_en = 1; // This happens during normal operation */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  267  	}
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  268  	cvmx_write_csr(CVMX_PCSX_INTX_EN_REG(index, block), pcs_int_en_reg.u64);
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  269  }
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  270  /**
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  271   * __cvmx_interrupt_pcsxx_int_en_reg_enable enables all interrupt bits in cvmx_pcsxx_int_en_reg_t
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  272   */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  273  void __cvmx_interrupt_pcsxx_int_en_reg_enable(int index)
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  274  {
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  275  	union cvmx_pcsxx_int_en_reg pcsx_int_en_reg;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  276  	cvmx_write_csr(CVMX_PCSXX_INT_REG(index),
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  277  		       cvmx_read_csr(CVMX_PCSXX_INT_REG(index)));
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  278  	pcsx_int_en_reg.u64 = 0;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  279  	if (OCTEON_IS_MODEL(OCTEON_CN56XX)) {
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  280  		/* Skipping pcsx_int_en_reg.s.reserved_6_63 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  281  		pcsx_int_en_reg.s.algnlos_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  282  		pcsx_int_en_reg.s.synlos_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  283  		pcsx_int_en_reg.s.bitlckls_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  284  		pcsx_int_en_reg.s.rxsynbad_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  285  		pcsx_int_en_reg.s.rxbad_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  286  		pcsx_int_en_reg.s.txflt_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  287  	}
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  288  	if (OCTEON_IS_MODEL(OCTEON_CN52XX)) {
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  289  		/* Skipping pcsx_int_en_reg.s.reserved_6_63 */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  290  		pcsx_int_en_reg.s.algnlos_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  291  		pcsx_int_en_reg.s.synlos_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  292  		pcsx_int_en_reg.s.bitlckls_en = 0;	/* Happens if XAUI module is not installed */
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  293  		pcsx_int_en_reg.s.rxsynbad_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  294  		pcsx_int_en_reg.s.rxbad_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  295  		pcsx_int_en_reg.s.txflt_en = 1;
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  296  	}
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  297  	cvmx_write_csr(CVMX_PCSXX_INT_EN_REG(index), pcsx_int_en_reg.u64);
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  298  }
80ff0fd3ab64514 drivers/staging/octeon/cvmx-interrupt-decodes.c            David Daney     2009-05-05  299  

:::::: The code at line 49 was first introduced by commit
:::::: 80ff0fd3ab6451407a20c19b80c1643c4a6d6434 Staging: Add octeon-ethernet driver files.

:::::: TO: David Daney <ddaney@caviumnetworks.com>
:::::: CC: Ralf Baechle <ralf@linux-mips.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105231221.ujH7zer5-lkp%40intel.com.

--4Ckj6UjgE2iN1+kY
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--4Ckj6UjgE2iN1+kY--
