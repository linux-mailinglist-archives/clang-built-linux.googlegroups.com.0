Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBROCQL6QKGQEZDQ5IRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 740252A378B
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Nov 2020 01:16:07 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id t6sf11706809ilj.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Nov 2020 16:16:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604362566; cv=pass;
        d=google.com; s=arc-20160816;
        b=EQRYg3urUFsj8RVPtNro20RQsml8LM5d30TJPbioS+/mewvBNQUsr3Kcl4M0RXcntQ
         11bi8uyEFoVu2rsXNaaZ1poiDe9V3rnZi1L9vhUvHOwSuS4UfWVULPIOvphNzJ47YjDf
         0BqxTPqIEfpsXA5DflEiAMOFaEblT9kNYNJKsejO2KgHVxH+K3yt0w1tWbrK4qwwZezO
         eMpPXemwdFjDu/Cg+4W2UZ3Rwkr/JY5tMFvi9Sc2Id51IDitqd+9ZpGJr4T0oVmPJyvO
         aV2cGGMSCjQw8sY+oY8OP8LuUzjwoepfrzDoGfIIwg/ue5PHwuIfjQoqa9Uq6cbXpEwR
         NoJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=naE3a7w93YCUpqaBeUWqr93SFcaIGNHsqRX+eaRIP80=;
        b=V4IyKXOz9/tU2yBkQVA1YpRVII4FHHyOwkIL05fUDv+xt38l1l/RIeVX6sK2Uyew9m
         V4vyMPbpaOz4FlZpITo7c19Es9gStGPA4LKdpmEEpjhE87CHmRB+J7m6cd3m3ZElhnP5
         WyPVYmB0EZ/vhDgNCa92JKgvfv6JBAS+CBcyShV24isblkKD7vzPpTts0HxCcjadS3Ju
         FcJ+FWJLSx11WorCYJLGzKvHvnAMLhEzOnSrHtyNCobF+1Xvk+0WCPP4aOGlsLr9W+Wu
         ufukeKpeqJnhYm39mfYmTQ/vpZpTAMHSjw6UcTHYw8G6oTEKH2oO1FF7cJcp26fdb9zU
         28xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=naE3a7w93YCUpqaBeUWqr93SFcaIGNHsqRX+eaRIP80=;
        b=XuC+lIcPVcEGxMeew/nPN/CprjQd39xc8T6JEzsrLcVwcaABFyPsA9S7GEUAhV5Hqx
         geOQTXjrDYZhvL1UH/X5B4Y3PW/uUU9jOX+k/J3qtRCvPaL5P/uDQsO8JRlqvdToxe3A
         e/83DKCK1rPCeLiE81PRrEHTAhIUdtAB1MKrUGl5uwPqbz+ZycNH8LaX+iyRC2cMvgJC
         9ELLG4qbJGB8rSJlqhOgdBBd0zxBMMv6dUQ+bQth0Lzk3qCotMMmkh1ZQuvQeHc2Z/U6
         lQdPtisbMWM5Ea0b7Y1yCbBSX1ECaAIW1273+KcsSLfQg6CUWlq9IZf8VZ2bBktRRYeT
         egSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=naE3a7w93YCUpqaBeUWqr93SFcaIGNHsqRX+eaRIP80=;
        b=Zah4FHwsuMlbFtGNgwoET3mrNiVsqvtxlaT/wp74aQvnb2yWfxsxUNE842nv7ZT1aS
         tpmKNRG42zDrDRfFDWThaSwneigFhCfF6oj7vjfGcK2Yfiml3iHvu2AtcEl/FfEgdMIz
         fUwqxqpFFVV7xP6i2+IX+Z/hLiXFL0HRqAdXjaRNP8UDcqR6ku8tLRqRrvsp4q654Mkd
         KkukhM27SswrDJS40My+WxWpirRbkb2H2DVIF38V0Qfx3wanFGfq9rUkynkybwPaqvMb
         dTUfY3pHZ8978eLgPehqnp0iTjstGYkPNKij9MZIsioleHGRLjhRn69hck9nFqixtTe9
         NTHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NzhGD6mS5cvIY1lF9Fi9qWVwo1Sje9ZEaN/YYJG7Ph/RSQZ0j
	rrFzROH+CWfn4zk05yJ/g1M=
X-Google-Smtp-Source: ABdhPJwoI25rZeD1K97+kcbIS5HKxeGTit3FZXnUC8MkQe2sNiwFodUjaFHSm5BTe9ELNDVM0BXnmQ==
X-Received: by 2002:a5e:950a:: with SMTP id r10mr12446296ioj.34.1604362565720;
        Mon, 02 Nov 2020 16:16:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9186:: with SMTP id e6ls60753ill.3.gmail; Mon, 02 Nov
 2020 16:16:05 -0800 (PST)
X-Received: by 2002:a92:d302:: with SMTP id x2mr12720448ila.66.1604362565226;
        Mon, 02 Nov 2020 16:16:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604362565; cv=none;
        d=google.com; s=arc-20160816;
        b=RWZjQERKAdjgg91i1s2gSmi6QkfgKtXlOkwnU1HIHfXLyQPjm2ZX70q61y1Y229Ser
         N0BI3el9pQvITOFekjdbR5pB/lKCMHs4pOVKik/aNiFyfHbOpjZW2QjCW+XEg6XendQE
         iZ0DD2wKEWGuC2RgouVH47+TjZam8fl/cuY2MSOuDxeZzfF5MyVL8aLb3evhZL0o5oZh
         iJxz2NGRVLeOj4QrYUvx934fF23nG7guiOUfgLUA/6E8Uo5GTfMLi17JpI919OIGqKOs
         1BqX/6q8GrTg3Q1Oa+UfolWlSdc1upihLiDfG2Qhzi24UVxeVuaQ5cXqcSsH3S5FrsHy
         aluA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=x2S2K8hIc1WQ+kzcFDAPDFCWRZzcNmhO7lsG6ez9SsQ=;
        b=OyB9msat10URM6rkZYp5ltN9zkBu64CZ+mGqQ6hz9xKcfYEbE2RZb83jSbKj2IDY+I
         AF4RSbOvbuOH0iiSTcjCeYiSgxX1OrblHziXfw7kHKM2e2uyLXcvgoWq3OEoySahx4av
         rzmXSfF9vt8N+xqJ5h+GWu5THuBcb9aYU6V0FYpQnJtIMA6S/BebZMNlFqVDT2nScG9M
         bp671h8Bcsi7jZA0f62jwd1UGujB2xXovKzvTclAZQ/MJVP/wGXBtcKPxZJnrJ7QKimn
         u0jiB0er1PlPY79+0SEGKyDZz+Yon5Ncq+Z1BuPm9jh160KqRN3uJazfiXzPK61nYBV8
         RpHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id d25si965361ioz.2.2020.11.02.16.16.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2020 16:16:05 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: s8RU8TH4TYzl9YEufGJLgxsLRnQ18aEMQOsI8Ah4iRUQ+RQwN5QOBAPUBfbXbjqpF4sc62/GPX
 Q2zziEPrBvpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="166382582"
X-IronPort-AV: E=Sophos;i="5.77,446,1596524400"; 
   d="gz'50?scan'50,208,50";a="166382582"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Nov 2020 16:16:04 -0800
IronPort-SDR: azktejQ4PzLirfOMEjRQRMzyi9tH7ijzfAjY9VxMU3ezMeztYrarAhO0ihU3LypTuJM0YHrdY0
 pQyOjp5FjLjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,446,1596524400"; 
   d="gz'50?scan'50,208,50";a="528199192"
Received: from lkp-server02.sh.intel.com (HELO 9353403cd79d) ([10.239.97.151])
  by fmsmga005.fm.intel.com with ESMTP; 02 Nov 2020 16:16:02 -0800
Received: from kbuild by 9353403cd79d with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kZjzV-0000Es-Jv; Tue, 03 Nov 2020 00:16:01 +0000
Date: Tue, 3 Nov 2020 08:15:57 +0800
From: kernel test robot <lkp@intel.com>
To: Martin =?iso-8859-1?Q?Hundeb=F8ll?= <martin@geanix.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Mark Brown <broonie@kernel.org>
Subject: [linux-next:pending-fixes 383/622] drivers/spi/spi-bcm2835.c:1264:9:
 warning: variable 'lflags' is uninitialized when used here
Message-ID: <202011030848.eQpooX4P-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0OAP2g/MAC+5xKAE"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Martin,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git pending-fixes
head:   a2808d2bc1fbfd71e47ffe18f53b4ab14ba1775f
commit: 5e31ba0c0543a04483b53151eb5b7413efece94c [383/622] spi: bcm2835: fix gpio cs level inversion
config: mips-randconfig-r032-20201030 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project fa5a13276764a2657b3571fa3c57b07ee5d2d661)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=5e31ba0c0543a04483b53151eb5b7413efece94c
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next pending-fixes
        git checkout 5e31ba0c0543a04483b53151eb5b7413efece94c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/spi/spi-bcm2835.c:1264:9: warning: variable 'lflags' is uninitialized when used here [-Wuninitialized]
                                                     lflags,
                                                     ^~~~~~
   drivers/spi/spi-bcm2835.c:1196:2: note: variable 'lflags' is declared here
           enum gpio_lookup_flags lflags;
           ^
   1 warning generated.

vim +/lflags +1264 drivers/spi/spi-bcm2835.c

a30a555d7435a44 Martin Sperl  2015-04-06  1190  
e34ff011c70e5f4 Martin Sperl  2015-03-26  1191  static int bcm2835_spi_setup(struct spi_device *spi)
e34ff011c70e5f4 Martin Sperl  2015-03-26  1192  {
8259bf667a0f9ea Lukas Wunner  2019-09-11  1193  	struct spi_controller *ctlr = spi->controller;
8259bf667a0f9ea Lukas Wunner  2019-09-11  1194  	struct bcm2835_spi *bs = spi_controller_get_devdata(ctlr);
a30a555d7435a44 Martin Sperl  2015-04-06  1195  	struct gpio_chip *chip;
3bd158c56a56e87 Linus Walleij 2019-08-04  1196  	enum gpio_lookup_flags lflags;
571e31fa60b3697 Lukas Wunner  2019-09-11  1197  	u32 cs;
571e31fa60b3697 Lukas Wunner  2019-09-11  1198  
571e31fa60b3697 Lukas Wunner  2019-09-11  1199  	/*
571e31fa60b3697 Lukas Wunner  2019-09-11  1200  	 * Precalculate SPI slave's CS register value for ->prepare_message():
571e31fa60b3697 Lukas Wunner  2019-09-11  1201  	 * The driver always uses software-controlled GPIO chip select, hence
571e31fa60b3697 Lukas Wunner  2019-09-11  1202  	 * set the hardware-controlled native chip select to an invalid value
571e31fa60b3697 Lukas Wunner  2019-09-11  1203  	 * to prevent it from interfering.
571e31fa60b3697 Lukas Wunner  2019-09-11  1204  	 */
571e31fa60b3697 Lukas Wunner  2019-09-11  1205  	cs = BCM2835_SPI_CS_CS_10 | BCM2835_SPI_CS_CS_01;
571e31fa60b3697 Lukas Wunner  2019-09-11  1206  	if (spi->mode & SPI_CPOL)
571e31fa60b3697 Lukas Wunner  2019-09-11  1207  		cs |= BCM2835_SPI_CS_CPOL;
571e31fa60b3697 Lukas Wunner  2019-09-11  1208  	if (spi->mode & SPI_CPHA)
571e31fa60b3697 Lukas Wunner  2019-09-11  1209  		cs |= BCM2835_SPI_CS_CPHA;
571e31fa60b3697 Lukas Wunner  2019-09-11  1210  	bs->prepare_cs[spi->chip_select] = cs;
3bd158c56a56e87 Linus Walleij 2019-08-04  1211  
8259bf667a0f9ea Lukas Wunner  2019-09-11  1212  	/*
8259bf667a0f9ea Lukas Wunner  2019-09-11  1213  	 * Precalculate SPI slave's CS register value to clear RX FIFO
8259bf667a0f9ea Lukas Wunner  2019-09-11  1214  	 * in case of a TX-only DMA transfer.
8259bf667a0f9ea Lukas Wunner  2019-09-11  1215  	 */
8259bf667a0f9ea Lukas Wunner  2019-09-11  1216  	if (ctlr->dma_rx) {
8259bf667a0f9ea Lukas Wunner  2019-09-11  1217  		bs->clear_rx_cs[spi->chip_select] = cs |
8259bf667a0f9ea Lukas Wunner  2019-09-11  1218  						    BCM2835_SPI_CS_TA |
8259bf667a0f9ea Lukas Wunner  2019-09-11  1219  						    BCM2835_SPI_CS_DMAEN |
8259bf667a0f9ea Lukas Wunner  2019-09-11  1220  						    BCM2835_SPI_CS_CLEAR_RX;
8259bf667a0f9ea Lukas Wunner  2019-09-11  1221  		dma_sync_single_for_device(ctlr->dma_rx->device->dev,
8259bf667a0f9ea Lukas Wunner  2019-09-11  1222  					   bs->clear_rx_addr,
8259bf667a0f9ea Lukas Wunner  2019-09-11  1223  					   sizeof(bs->clear_rx_cs),
8259bf667a0f9ea Lukas Wunner  2019-09-11  1224  					   DMA_TO_DEVICE);
8259bf667a0f9ea Lukas Wunner  2019-09-11  1225  	}
8259bf667a0f9ea Lukas Wunner  2019-09-11  1226  
e34ff011c70e5f4 Martin Sperl  2015-03-26  1227  	/*
e34ff011c70e5f4 Martin Sperl  2015-03-26  1228  	 * sanity checking the native-chipselects
e34ff011c70e5f4 Martin Sperl  2015-03-26  1229  	 */
e34ff011c70e5f4 Martin Sperl  2015-03-26  1230  	if (spi->mode & SPI_NO_CS)
e34ff011c70e5f4 Martin Sperl  2015-03-26  1231  		return 0;
3bd158c56a56e87 Linus Walleij 2019-08-04  1232  	/*
3bd158c56a56e87 Linus Walleij 2019-08-04  1233  	 * The SPI core has successfully requested the CS GPIO line from the
3bd158c56a56e87 Linus Walleij 2019-08-04  1234  	 * device tree, so we are done.
3bd158c56a56e87 Linus Walleij 2019-08-04  1235  	 */
3bd158c56a56e87 Linus Walleij 2019-08-04  1236  	if (spi->cs_gpiod)
e34ff011c70e5f4 Martin Sperl  2015-03-26  1237  		return 0;
a30a555d7435a44 Martin Sperl  2015-04-06  1238  	if (spi->chip_select > 1) {
a30a555d7435a44 Martin Sperl  2015-04-06  1239  		/* error in the case of native CS requested with CS > 1
a30a555d7435a44 Martin Sperl  2015-04-06  1240  		 * officially there is a CS2, but it is not documented
a30a555d7435a44 Martin Sperl  2015-04-06  1241  		 * which GPIO is connected with that...
a30a555d7435a44 Martin Sperl  2015-04-06  1242  		 */
a30a555d7435a44 Martin Sperl  2015-04-06  1243  		dev_err(&spi->dev,
a30a555d7435a44 Martin Sperl  2015-04-06  1244  			"setup: only two native chip-selects are supported\n");
a30a555d7435a44 Martin Sperl  2015-04-06  1245  		return -EINVAL;
a30a555d7435a44 Martin Sperl  2015-04-06  1246  	}
3bd158c56a56e87 Linus Walleij 2019-08-04  1247  
3bd158c56a56e87 Linus Walleij 2019-08-04  1248  	/*
3bd158c56a56e87 Linus Walleij 2019-08-04  1249  	 * Translate native CS to GPIO
3bd158c56a56e87 Linus Walleij 2019-08-04  1250  	 *
3bd158c56a56e87 Linus Walleij 2019-08-04  1251  	 * FIXME: poking around in the gpiolib internals like this is
3bd158c56a56e87 Linus Walleij 2019-08-04  1252  	 * not very good practice. Find a way to locate the real problem
3bd158c56a56e87 Linus Walleij 2019-08-04  1253  	 * and fix it. Why is the GPIO descriptor in spi->cs_gpiod
3bd158c56a56e87 Linus Walleij 2019-08-04  1254  	 * sometimes not assigned correctly? Erroneous device trees?
3bd158c56a56e87 Linus Walleij 2019-08-04  1255  	 */
a30a555d7435a44 Martin Sperl  2015-04-06  1256  
a30a555d7435a44 Martin Sperl  2015-04-06  1257  	/* get the gpio chip for the base */
a30a555d7435a44 Martin Sperl  2015-04-06  1258  	chip = gpiochip_find("pinctrl-bcm2835", chip_match_name);
a30a555d7435a44 Martin Sperl  2015-04-06  1259  	if (!chip)
f8043872e79614a Chris Boot    2013-03-11  1260  		return 0;
e34ff011c70e5f4 Martin Sperl  2015-03-26  1261  
3bd158c56a56e87 Linus Walleij 2019-08-04  1262  	spi->cs_gpiod = gpiochip_request_own_desc(chip, 8 - spi->chip_select,
3bd158c56a56e87 Linus Walleij 2019-08-04  1263  						  DRV_NAME,
3bd158c56a56e87 Linus Walleij 2019-08-04 @1264  						  lflags,
3bd158c56a56e87 Linus Walleij 2019-08-04  1265  						  GPIOD_OUT_LOW);
3bd158c56a56e87 Linus Walleij 2019-08-04  1266  	if (IS_ERR(spi->cs_gpiod))
3bd158c56a56e87 Linus Walleij 2019-08-04  1267  		return PTR_ERR(spi->cs_gpiod);
a30a555d7435a44 Martin Sperl  2015-04-06  1268  
a30a555d7435a44 Martin Sperl  2015-04-06  1269  	/* and set up the "mode" and level */
3bd158c56a56e87 Linus Walleij 2019-08-04  1270  	dev_info(&spi->dev, "setting up native-CS%i to use GPIO\n",
3bd158c56a56e87 Linus Walleij 2019-08-04  1271  		 spi->chip_select);
a30a555d7435a44 Martin Sperl  2015-04-06  1272  
a30a555d7435a44 Martin Sperl  2015-04-06  1273  	return 0;
f8043872e79614a Chris Boot    2013-03-11  1274  }
f8043872e79614a Chris Boot    2013-03-11  1275  

:::::: The code at line 1264 was first introduced by commit
:::::: 3bd158c56a56e8767e569d7fbc66efbedc478077 spi: bcm2835: Convert to use CS GPIO descriptors

:::::: TO: Linus Walleij <linus.walleij@linaro.org>
:::::: CC: Mark Brown <broonie@kernel.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011030848.eQpooX4P-lkp%40intel.com.

--0OAP2g/MAC+5xKAE
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--0OAP2g/MAC+5xKAE--
