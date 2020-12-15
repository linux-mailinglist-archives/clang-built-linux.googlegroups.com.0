Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZGJ4P7AKGQELOHSO7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C64A2DB173
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 17:31:34 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id z4sf14447820pgr.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 08:31:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608049893; cv=pass;
        d=google.com; s=arc-20160816;
        b=RVPXYc4tQ0BP1TocOa5ElvAT3q32jImeOyEteYGq2HKzERQuhTCPlK1Vt5B22Ze0lW
         IhDbMrz0SyH58VJywNbSlV4nASrpD8Ga/aA1SWmgdD3nuTVcvm8XQKFo2sMla0DauvVU
         gMsH3pZHYlgPmlSEuUSbtTZJ5EJhgaN66iiS3QMKNosH0NpATOwvVHSG8lmjeVYgl+AZ
         Cl1I5ye359hRb5A36S3pjxo4qcjJ6eQYMLUISPCCDvTf2oqjazBvGXzn/PzyZ9tv6Gzy
         HUFX3pvlI44Meq8//1HjN2FnifMVKjBRmClh9ISk0UFP/GCQJP8JL9aqXDXd/LkhfWGG
         DSTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=yNfERq7tby+VMnQ+lk+2Z+yq7Ex4hYweT1ZQ6SFwaKw=;
        b=DUjbNyznEFH1j/2lYu6sjwyKDKSkubz6YpDzrbjqiDqOHYlB487Lln8l1XO5u0Xydx
         W1wiT0Am/6iTwzwgD8Xq11MZ1s5SrM6fwYTZh8t1MmvA6Ewc0AqaaijTX435tadEH/mO
         mIHTM/hDQigsIAykqwfi3/JwEXTfdDiHSxhqHBAYeNTTj7DGTvbgvrRjzPsysSMBps78
         THG/lP/vBo6RSRNTZ+EEtMLc8xA1lyv8qDvWZHkm5eA2xtipmiq9EjKibTBCKMfxiR3F
         MnqACHXpc/jv1WvE653NZDiYjsBVvPzcLXFj9FiVE1xv13eU8XjSeVHlifYbV7r4oVR6
         ehzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yNfERq7tby+VMnQ+lk+2Z+yq7Ex4hYweT1ZQ6SFwaKw=;
        b=BiLAXrYgw7DPxuVhvHkmdYkdq031SAj7LCZMYr0c4/EHQzJYAXWbOC33S2MS3XFMo5
         kFpErNE1M1LNTP5J7rsrgV09ufKkMSaUxYy/hYnQh/BC+uO5BVWdaBi074Q6S9oHFaiu
         ebpDvvetjSsym1lKkJsQjayTbkz/0B0xmb9cCYZuvoLCDeSM+zRG6VjyowbqKIqXXNEv
         I9MyRYWofXZUUSnm4usOYiqFF8KnfAw2mGo5EKucQwVgZSEccURFri0WhW2ZWTmWdU1S
         shm0uZVVgcTwVXeuhkaVl9/XZ1BS3xZJahKWV5TlY/2gBEQJYa24kh6Wt3IpJIvkbr62
         uPeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yNfERq7tby+VMnQ+lk+2Z+yq7Ex4hYweT1ZQ6SFwaKw=;
        b=iTrUj4xpoJOOtvauUrdSZOpDlqMeufBuTCgzvPFs6QxyL9ke9+244dgerGE7tcXv01
         vyxi8k8O13qIE9lrAIcBteID4tUUVClZ8N8V8Nm+KxTXJManOesK5rps+DG1B1fwjiUB
         hBkiVtR+WALyPfVj3gegA2OGrQxWaOc/NsuTeCVQ5tJxgiSDBmRc5TOzdNntoJvayC7O
         KlTR0CGtluaynInU9TXWcgYEhd6+PZEGhWeFlioF8S+jVN+86kPEH7BmHKt7X/Iz/Lwb
         Lfot7crqOyhRswFfcwWl46Tjc6SFAL6GJfwYgJfIcr7zPxVPJBHX7BOVy3BOfnmPzv4E
         qggQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tpRFXjPrSDketUtkHkGBOlqp7ub2SnXrA528YTyeH155zL8Lk
	5A6n1zJT3FL8/wCIwc9Dlwc=
X-Google-Smtp-Source: ABdhPJwR+hUnr2BFpnWN693C2PklHfj71mwjCZ89pRu120a4M6PCHxs4wKfUj59yEVhxY4SfJu9cbA==
X-Received: by 2002:a63:4857:: with SMTP id x23mr29390261pgk.404.1608049893132;
        Tue, 15 Dec 2020 08:31:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:f0f:: with SMTP id br15ls10736414pjb.3.canary-gmail;
 Tue, 15 Dec 2020 08:31:32 -0800 (PST)
X-Received: by 2002:a17:902:d351:b029:db:e003:3b88 with SMTP id l17-20020a170902d351b02900dbe0033b88mr23752257plk.70.1608049892386;
        Tue, 15 Dec 2020 08:31:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608049892; cv=none;
        d=google.com; s=arc-20160816;
        b=0yqCLan/eB6IyQ2wASAs653m61IPO8a3QBOwzG2moqXV6pJvDqiO/nCu2PnOgICtBn
         +fHCA7umIkPD3Lqq4WDwVNOhnIxPxInTts3iKqyTXza91NAFEiiHbcCdb4u3/YPyTbaG
         lKX7hmCPhyNedFjhlvkLcDlrHgB4XCQ4vLTUH2XBdqpGs9FxZ82oofCGaSml/R53/55b
         WVHuEO9Ii0XFimXX9zf/uD4NBMkrPZWg4VCMT3/Pk05PX+dJPXK6TI3BgvkCM9HgtDbB
         ICjdVniS4mek/MoLoSJ1YWmyGl0x4LeEQsIl2IFFpiaS1X+d8RqIOEnJasNRrCWcvY7n
         fvTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=5zq/WL2B46COHpzzrvIP4WNx0FvMfsSX5N45qN7ZfGA=;
        b=sD8ry8CL0MzD17sy4EkPPeCtSV64Of+U59hhEPIoeGvVaPxfNsiWyFj4jKIXFcCeCP
         0nwDfV3cLf7znNSqf4ikZWTFNanlpE7gFsmZq6+ZE7CB+kwa1Ol3H7uTH0gIxz9cRUtx
         ks/PbOlrK4Nu2CFDsFumr6262jXvJ3ednfUsrhvZE8dubYfLMs7Ye8PhNmlAel1PnoNe
         VuwZH2j3fH8/85qW68fXZVEJSYfzWcwGLj6N5sGXGvvJfLp3l/29QlTZgqQaucOvgwdv
         PRfGMIb+8DdZche8EuzL8c4hDwMF9ylMj8TuWBLYAhFQZvxgCCrFGsm69dWrnBlVyvuU
         RUrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id f15si466438pgf.3.2020.12.15.08.31.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Dec 2020 08:31:32 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: I0UH0tw6uZknSIpoZTVUimLXMDDih8KbJNE4yy+Xdu0FgGomEgtqEuJRpWTExEGjAleOpYNyTY
 XECsXKqqADpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="193282275"
X-IronPort-AV: E=Sophos;i="5.78,421,1599548400"; 
   d="gz'50?scan'50,208,50";a="193282275"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Dec 2020 08:31:31 -0800
IronPort-SDR: Pzzj9rbo+CsPR61THYMYuqWSzbWsjl//zyfaZBeSmsR3yq5KFoY9+dKXsJkkxz4WNYUFhVSNjW
 8Vc44LQln+pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,421,1599548400"; 
   d="gz'50?scan'50,208,50";a="337401952"
Received: from lkp-server02.sh.intel.com (HELO a947d92d0467) ([10.239.97.151])
  by fmsmga008.fm.intel.com with ESMTP; 15 Dec 2020 08:31:29 -0800
Received: from kbuild by a947d92d0467 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kpDEW-0000ov-L5; Tue, 15 Dec 2020 16:31:28 +0000
Date: Wed, 16 Dec 2020 00:31:25 +0800
From: kernel test robot <lkp@intel.com>
To: Jiri Slaby <jslaby@suse.cz>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [jirislaby:devel 11/38]
 drivers/tty/serial/cpm_uart/cpm_uart_core.c:503:52: error: no member named
 'low_latency' in 'struct tty_port'
Message-ID: <202012160018.On9NnSJC-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6TrnltStXW4iwmi0"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--6TrnltStXW4iwmi0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jirislaby/linux.git devel
head:   698e3a58826090599c520290c429d0314cd62e19
commit: 51878b6de4959a889168784499d8d60c498b3ad7 [11/38] tty_port: drop low_latency
config: powerpc-randconfig-r024-20201215 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a29ecca7819a6ed4250d3689b12b1f664bb790d7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/jirislaby/linux.git/commit/?id=51878b6de4959a889168784499d8d60c498b3ad7
        git remote add jirislaby https://git.kernel.org/pub/scm/linux/kernel/git/jirislaby/linux.git
        git fetch --no-tags jirislaby devel
        git checkout 51878b6de4959a889168784499d8d60c498b3ad7
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/tty/serial/cpm_uart/cpm_uart_core.c:503:52: error: no member named 'low_latency' in 'struct tty_port'
               (pinfo->port.state && pinfo->port.state->port.low_latency))
                                     ~~~~~~~~~~~~~~~~~~~~~~~ ^
   1 error generated.

vim +503 drivers/tty/serial/cpm_uart/cpm_uart_core.c

^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  484  
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  485  static void cpm_uart_set_termios(struct uart_port *port,
1bda8f3056126cc drivers/serial/cpm_uart/cpm_uart_core.c     Scott Wood         2007-05-08  486                                   struct ktermios *termios,
1bda8f3056126cc drivers/serial/cpm_uart/cpm_uart_core.c     Scott Wood         2007-05-08  487                                   struct ktermios *old)
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  488  {
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  489  	int baud;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  490  	unsigned long flags;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  491  	u16 cval, scval, prev_mode;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  492  	int bits, sbits;
e789d2688720dba drivers/tty/serial/cpm_uart/cpm_uart_core.c Fabian Frederick   2014-10-05  493  	struct uart_cpm_port *pinfo =
e789d2688720dba drivers/tty/serial/cpm_uart/cpm_uart_core.c Fabian Frederick   2014-10-05  494  		container_of(port, struct uart_cpm_port, port);
c1dcfd9d199043f drivers/serial/cpm_uart/cpm_uart_core.c     Scott Wood         2007-07-24  495  	smc_t __iomem *smcp = pinfo->smcp;
c1dcfd9d199043f drivers/serial/cpm_uart/cpm_uart_core.c     Scott Wood         2007-07-24  496  	scc_t __iomem *sccp = pinfo->sccp;
6e62bdc07e1b397 drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  497  	int maxidl;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  498  
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  499  	pr_debug("CPM uart[%d]:set_termios\n", port->line);
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  500  
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  501  	baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk / 16);
59733ef7e510f6f drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  502  	if (baud < HW_BUF_SPD_THRESHOLD ||
d6c53c0e9bd0a83 drivers/tty/serial/cpm_uart/cpm_uart_core.c Jiri Slaby         2013-01-03 @503  	    (pinfo->port.state && pinfo->port.state->port.low_latency))
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  504  		pinfo->rx_fifosize = 1;
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  505  	else
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  506  		pinfo->rx_fifosize = RX_BUF_SIZE;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  507  
6e62bdc07e1b397 drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  508  	/* MAXIDL is the timeout after which a receive buffer is closed
6e62bdc07e1b397 drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  509  	 * when not full if no more characters are received.
6e62bdc07e1b397 drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  510  	 * We calculate it from the baudrate so that the duration is
6e62bdc07e1b397 drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  511  	 * always the same at standard rates: about 4ms.
6e62bdc07e1b397 drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  512  	 */
6e62bdc07e1b397 drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  513  	maxidl = baud / 2400;
6e62bdc07e1b397 drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  514  	if (maxidl < 1)
6e62bdc07e1b397 drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  515  		maxidl = 1;
6e62bdc07e1b397 drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  516  	if (maxidl > 0x10)
6e62bdc07e1b397 drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  517  		maxidl = 0x10;
6e62bdc07e1b397 drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  518  
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  519  	/* Character length programmed into the mode register is the
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  520  	 * sum of: 1 start bit, number of data bits, 0 or 1 parity bit,
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  521  	 * 1 or 2 stop bits, minus 1.
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  522  	 * The value 'bits' counts this for us.
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  523  	 */
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  524  	cval = 0;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  525  	scval = 0;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  526  
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  527  	/* byte size */
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  528  	switch (termios->c_cflag & CSIZE) {
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  529  	case CS5:
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  530  		bits = 5;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  531  		break;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  532  	case CS6:
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  533  		bits = 6;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  534  		break;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  535  	case CS7:
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  536  		bits = 7;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  537  		break;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  538  	case CS8:
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  539  		bits = 8;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  540  		break;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  541  		/* Never happens, but GCC is too dumb to figure it out */
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  542  	default:
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  543  		bits = 8;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  544  		break;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  545  	}
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  546  	sbits = bits - 5;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  547  
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  548  	if (termios->c_cflag & CSTOPB) {
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  549  		cval |= SMCMR_SL;	/* Two stops */
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  550  		scval |= SCU_PSMR_SL;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  551  		bits++;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  552  	}
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  553  
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  554  	if (termios->c_cflag & PARENB) {
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  555  		cval |= SMCMR_PEN;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  556  		scval |= SCU_PSMR_PEN;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  557  		bits++;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  558  		if (!(termios->c_cflag & PARODD)) {
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  559  			cval |= SMCMR_PM_EVEN;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  560  			scval |= (SCU_PSMR_REVP | SCU_PSMR_TEVP);
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  561  		}
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  562  	}
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  563  
dc320815305c5f0 drivers/serial/cpm_uart/cpm_uart_core.c     Laurent Pinchart   2008-07-02  564  	/*
dc320815305c5f0 drivers/serial/cpm_uart/cpm_uart_core.c     Laurent Pinchart   2008-07-02  565  	 * Update the timeout
dc320815305c5f0 drivers/serial/cpm_uart/cpm_uart_core.c     Laurent Pinchart   2008-07-02  566  	 */
dc320815305c5f0 drivers/serial/cpm_uart/cpm_uart_core.c     Laurent Pinchart   2008-07-02  567  	uart_update_timeout(port, termios->c_cflag, baud);
dc320815305c5f0 drivers/serial/cpm_uart/cpm_uart_core.c     Laurent Pinchart   2008-07-02  568  
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  569  	/*
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  570  	 * Set up parity check flag
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  571  	 */
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  572  	port->read_status_mask = (BD_SC_EMPTY | BD_SC_OV);
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  573  	if (termios->c_iflag & INPCK)
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  574  		port->read_status_mask |= BD_SC_FR | BD_SC_PR;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  575  	if ((termios->c_iflag & BRKINT) || (termios->c_iflag & PARMRK))
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  576  		port->read_status_mask |= BD_SC_BR;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  577  
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  578  	/*
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  579  	 * Characters to ignore
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  580  	 */
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  581  	port->ignore_status_mask = 0;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  582  	if (termios->c_iflag & IGNPAR)
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  583  		port->ignore_status_mask |= BD_SC_PR | BD_SC_FR;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  584  	if (termios->c_iflag & IGNBRK) {
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  585  		port->ignore_status_mask |= BD_SC_BR;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  586  		/*
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  587  		 * If we're ignore parity and break indicators, ignore
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  588  		 * overruns too.  (For real raw support).
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  589  		 */
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  590  		if (termios->c_iflag & IGNPAR)
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  591  			port->ignore_status_mask |= BD_SC_OV;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  592  	}
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  593  	/*
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  594  	 * !!! ignore all characters if CREAD is not set
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  595  	 */
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  596  	if ((termios->c_cflag & CREAD) == 0)
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  597  		port->read_status_mask &= ~BD_SC_EMPTY;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  598  
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  599  	spin_lock_irqsave(&port->lock, flags);
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  600  
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  601  	/* Start bit has not been added (so don't, because we would just
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  602  	 * subtract it later), and we need to add one for the number of
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  603  	 * stops bits (there is always at least one).
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  604  	 */
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  605  	bits++;
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  606  	if (IS_SMC(pinfo)) {
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  607  		/*
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  608  		 * MRBLR can be changed while an SMC/SCC is operating only
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  609  		 * if it is done in a single bus cycle with one 16-bit move
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  610  		 * (not two 8-bit bus cycles back-to-back). This occurs when
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  611  		 * the cp shifts control to the next RxBD, so the change does
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  612  		 * not take effect immediately. To guarantee the exact RxBD
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  613  		 * on which the change occurs, change MRBLR only while the
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  614  		 * SMC/SCC receiver is disabled.
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  615  		 */
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  616  		out_be16(&pinfo->smcup->smc_mrblr, pinfo->rx_fifosize);
6e62bdc07e1b397 drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  617  		out_be16(&pinfo->smcup->smc_maxidl, maxidl);
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  618  
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  619  		/* Set the mode register.  We want to keep a copy of the
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  620  		 * enables, because we want to put them back if they were
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  621  		 * present.
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  622  		 */
ae2d4c396e19f45 drivers/serial/cpm_uart/cpm_uart_core.c     Nye Liu            2008-07-23  623  		prev_mode = in_be16(&smcp->smc_smcmr) & (SMCMR_REN | SMCMR_TEN);
ae2d4c396e19f45 drivers/serial/cpm_uart/cpm_uart_core.c     Nye Liu            2008-07-23  624  		/* Output in *one* operation, so we don't interrupt RX/TX if they
ae2d4c396e19f45 drivers/serial/cpm_uart/cpm_uart_core.c     Nye Liu            2008-07-23  625  		 * were already enabled. */
ae2d4c396e19f45 drivers/serial/cpm_uart/cpm_uart_core.c     Nye Liu            2008-07-23  626  		out_be16(&smcp->smc_smcmr, smcr_mk_clen(bits) | cval |
ae2d4c396e19f45 drivers/serial/cpm_uart/cpm_uart_core.c     Nye Liu            2008-07-23  627  		    SMCMR_SM_UART | prev_mode);
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  628  	} else {
5b04ec4ad8e2ffd drivers/serial/cpm_uart/cpm_uart_core.c     Baurzhan Ismagulov 2010-11-11  629  		out_be16(&pinfo->sccup->scc_genscc.scc_mrblr, pinfo->rx_fifosize);
6e62bdc07e1b397 drivers/tty/serial/cpm_uart/cpm_uart_core.c Christophe Leroy   2012-09-24  630  		out_be16(&pinfo->sccup->scc_maxidl, maxidl);
c1dcfd9d199043f drivers/serial/cpm_uart/cpm_uart_core.c     Scott Wood         2007-07-24  631  		out_be16(&sccp->scc_psmr, (sbits << 12) | scval);
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  632  	}
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  633  
80776554b6c93cf drivers/serial/cpm_uart/cpm_uart_core.c     Laurent Pinchart   2008-07-28  634  	if (pinfo->clk)
80776554b6c93cf drivers/serial/cpm_uart/cpm_uart_core.c     Laurent Pinchart   2008-07-28  635  		clk_set_rate(pinfo->clk, baud);
80776554b6c93cf drivers/serial/cpm_uart/cpm_uart_core.c     Laurent Pinchart   2008-07-28  636  	else
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  637  		cpm_set_brg(pinfo->brg - 1, baud);
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  638  	spin_unlock_irqrestore(&port->lock, flags);
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  639  }
^1da177e4c3f415 drivers/serial/cpm_uart/cpm_uart_core.c     Linus Torvalds     2005-04-16  640  

:::::: The code at line 503 was first introduced by commit
:::::: d6c53c0e9bd0a83f9f9ddbc9fd80141a54d83896 TTY: move low_latency to tty_port

:::::: TO: Jiri Slaby <jslaby@suse.cz>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012160018.On9NnSJC-lkp%40intel.com.

--6TrnltStXW4iwmi0
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICLPZ2F8AAy5jb25maWcAjFxbdxu3rn7vr9BqX/Z5aKuLr+csP3A4HInV3ExyJNkvXIqs
ZPtsx86RnTT59wfg3MAR5bSrK40AErwC+ABi+tsvv43Y17eXz9u3x9326enH6NP+eX/Yvu0f
Rh8fn/b/M4qLUV6YkYil+QMap4/PX7//+eXl7/3hy250/sdk/Mf498PucrTcH573TyP+8vzx
8dNXkPD48vzLb7/wIk/k3HJuV0JpWeTWiI25+XX3tH3+NPq2P7xCu9Fk+gfIGf3r0+Pbf//5
J/z5+fFweDn8+fT07bP9cnj53/3ubbSdXu93u+3l1eR6e7F/OJuejx9mF1fXHybTD5OPFxdn
Hz5cXo8fLv/r13bUeT/szbglpvExDdpJbXnK8vnND9IQiGka9yTXous+mY7hn645EexzQPqC
act0ZueFKYg4n2GLypSVCfJlnspcEFaRa6Mqbgqle6pUt3ZdqGVPiSqZxkZmwhoWpcLqQpEB
zEIJBsvMkwL+gCYau8Kx/Taau3vwNHrdv3390h+kzKWxIl9ZpmDJMpPmZjbtJ5WVEgYxQpNB
0oKztN2ZX3/1ZmY1Sw0hLthK2KVQuUjt/F6WvRTKSe8zdopDtteX89vIJ6OQ0ePr6PnlDRcZ
4BeU3TBjkbAqNW4fyLxb8qLQJmeZuPn1X88vz3u4ip1YvWZlcDx9p1ey5IHB1szwhb2tREVP
XhVa20xkhbqzzBjGFz2z0iKV0WBvmAIprAINhqHgLNL2jOG6jF6/fnj98fq2/9yf8VzkQknu
bpNeFOte3JBjU7ESaZifybliBs88yJb5X4KfZvMFPXykxEXGZO7TtMxCjexCCoWrvvO5CdNG
FLJnw/7kcSqGKpQUiou40Q5JbYIumdICG4WnHYuomifaXbf988Po5eNgk4ednGqu+nMZsDko
zxL2ODdkiu480TAYyZc2UgWLOaMaF+j9brOs0LYqY2ZEezPM42cwzaHL4cYscgHHT0Qt7m0J
sopYcqpqeYEcCVscuN2OSUTI+cIqod2WKG8Lj2bTj1AqIbLSgLA8NEbLXhVplRum7ujsGuY7
3XgBvdo94WX1p9m+/mf0BtMZbWFqr2/bt9fRdrd7+fr89vj8abBL0MEy7mTUl6gbeSWVGbBt
DsqyEkELgTfLXZS+ebBdpGOYesEFGAhoaoKNSi19erPJ/2B5nQmCmUtdpK16u+1RvBrpwH2B
rbTA6w8aflixgetC7o/2Wrg+AxK4Ju26Nrc2wDoiVbEI0Y1iPDAnbUAF0Ydl1CghJxdgDbSY
8yiVVIGQl7Ac3DZxgj0RrCNLbiYXnqiCR7h/9DYMZmWdT86i4Cn5u9wZrWX9Fyq1pbkbEb5W
ywWMBLoW0IC0QA+dgJWXibmZXFI6Hn/GNpQ/7TVH5mYJbj0RQxmz+p7o3b/3D1+f9ofRx/32
7eth/+rIzfoC3H7CfK6KqgxNF30u2Ga4+cQXgtXL6W8tlEcoZez95gvBl2UBC0A7BMhK0P3U
wI7BjZrCzSIwCbDiiQYXANaDgy0luHHIsaspuUUiZcRRRekSWq4cwlBEhvvNMpCjiwr8E0Ef
Kj4COUCKgDQNHjwwh+in52zuB3LCQMgxzgZN77WJA22jokBbOryhAG+LEuyavBfoctGDwH8y
lvOQKR+21vCXAdABPBmj7vACFB/cGbMCIWo+gCHQrFAluH4AWCr3TombdPgbbBUXpXGhC6oo
XUFtxgKTzQAMSrxwRNpcmAw03R45+/p2HJGTGpyQ+1pouendo6dxFPETvCLSBHZDESERA/yS
VN5AFcRkg5+gHERKWXjzlfOcpQm5m25OlOBAByXoBSBWAmEkwemysJXyYBaLVxKm2WwJWSwI
iZhSkm7sEpvcZfqYYr397KhuC1Dr0OHS44zKpB0zcKZ4nA7l03V1WKyfmcX+EePLEGQjzfRd
zgeHA9jy1rtfWSTiWIR0yl141BjbwUNnR5s4vNwfPr4cPm+fd/uR+LZ/BkfOwMJydOWApWpA
01ygXkjQ5fxDie3EVlktrAZPLZJrlRgiRGYAjC5D9jNlkWdx0yoKR0zQEHZSzUUbeJ1ulgCW
QK9tFWhTkf2DhgumYsAYcbjpokoSCHFLBoPDOUNsC44iDLRUkch0gNU6hAOWxLkaD+j6QXen
4SWfTT3gWvKLMyrVHWd5eNntX19fDgCUv3x5Obx5h1xyNMPLmbazaQjxAv/q/Pv3wTD26vv3
4OLOxifoZ98D0rtIwwc+4vx8PEZiUJS4CHC7nuMxMYEwUaRk3KclJYKpuT6iEmOnU9QypwQe
7sPNEn67AcnJasgzSjfCXpxFkgDFcnGnj2jQPcsQEYJdWJyi29nUZ9WjYQvvqKCDcyMhtcpI
JJ0r3FF9c0ZlxkWhIuFsZXcVj29Tp+CxLuisEA5GeCZ5LBnZwdnUW289Y2oPs4yVVuWAVCRA
NUCUBGeGGkD0P5mEG7R25WeCvHaePNgYCLP0zXmPZfNMWkn9IEQIfFnjdF2VpZ9Kc2QQkaRs
ro/5GIoDADxmtLqxWAuIgP0LMjj6xnHkhS4F4Qmm0rsjHFCyvMkvYHwyuerSkTWQLTJpwOYB
brbODlGPWu8Zu2ucDFzzeDCVKo7mdnIB+nu8EBOhZyPSMPPkZB639cAKIXbuuZ0c0eE211bJ
DIzw0MfKSKga8CFe0jJKh02aE8CUhyoiMbAOAD3qLE7AcvQ8ybi+mYZ58Xu8FfC6kyjndVLW
ZdFIH7QqCAxyAW6Ll1nr28un7Rv6YGLguzMtMpJ8InJ0wTvDRRIF/HoymwBkDztYPr2ewbnL
cDqi7j21t7EO8rOSX52fjWHZ7/AvfsL//t3yOGTOWm4WU1yIxNmFPaJBwxANFk6OdjKejBtS
b1En4+nUnphhzVRxCMUgbzaUZtbKMcJOE85IQVgYHmupJe5WYKSN0O2CPNhkNnZezoLCzG2G
RxNCJI4zIQbNEa68VSDp/PxU7wtiDHTEh73LkiEpOC8AUzIrZ+GEfLbKxBTce/goQL9uBbg/
capFq0mNeTk1e38TlwBj55XQoeBOlKyE42SKYR7PNxHgbCH424CB9TxHVtKMFf6qYyZfV3s6
RKZLUXkRvWNmeq5OoDd5NT2/JrnKUXLY/9/X/fPux+h1t32q05P9poDTBsR7eyoVGOjdCpYP
T/vRw+Hx2/4ApG44JJMHP0wRetFrS7HzYmVTBmGN8iIDys5EHkJ9Xhsjis4uFmuhSt5NYxS7
2XmJpdNt6KrrRRAKXWw/2VuYQilDaRGw1lP/UKtUTs4vz+lGZJ7Ps8pwD3kNrTyN616+4MPq
a7/RmDavQ+tudot7OzmhC8ACTTrFmo1DlqEWR3R7cX8zIc+bNZ5YKMx5exeWmQVg66pOE4cE
F6ZMq3kTFVB9xhev2OpS5gibhnE0XgPnuhElCAjmB3yRO6/aPJE1o/ysjYK/rYikpdhQjAUj
YajHPDhRh5SYkIq8WYA1B+QeV9ngCcvllxF9+3MBxGhgIs2cvLxQD1YW1VyYNKLuXaapmLO0
hUh2xdJKEHQBO3m2dJHqAMe44HWYuW3egrtkbYu2MI02bOseyFwO+L7IRaFQl3sozbPYPVb3
CUqxAXhsDYOIHQLenk41oWwAjEcB5ITpwDjA4unS+92ix/oJkKx4fWud8luRJBIwTW5aCPle
f1skVCkH6tcdgWY2zphlztg7RY2+vh5rafdGWLf3j0NC4KQEN4i4jsCbT6hbdCqGpDQKZ/eR
p3wb1a2GzrGLdrCiAFSVNw/g7XrYwzfM+TwMKwG6oylcctRL86TFGi+0dqpRFKFsGmlyM/4+
G9f/HIngLLN5lf1EStPqpr+1dznL0F+KDBblnHSPGPD2F0miAROcEEuawOR2R5NrSgSc6FMy
aJugEEwKSM5+IsZvBYLGraBhA5bKeY4NzvwGxiWd26MgAK+l+7Nrrsjg2Ol9TWVk1UKwo+qM
NvVHE6RIzDKa7kXKKqGUrjcayeiuZFoHmCv3YOqyprLwEvUIwypY/v0g0Q+9/GFdIGQXqyHS
ExuIUPFtIZiscy3a9JLXDzHZUR6uTeJtD7t/P77td/iK9fvD/gts7P757dg21N7CTwQ77zOg
uY0o6qyiF839BY4GEFUkQvfH9eotX5W7a4IvWRzfiQeuqNLCFeYYmUOYtz46YgkzwlwKzMIM
j2gYTddUJUyYUVMtxOlJ+65C+UmVu/IQK5QqVKhcpK9tcf0XcLbHuQTE4w4y1u5tmC1gGn2Z
kcld+6rmN3A5LLQEdrhcLMrKiripaxquDnMHFtBBnTJq9rrxEl67OuFPSS4d7+ceerp7w6xl
+vCi34z+Nni5NzsHOAad64wDJruDbHx//kmTGj14r29u4DWD+4U5NLdfDE5rBUEt9DzadJgq
5tbcIzHPyg1fDOHZWrBli+5A1G0lVXg4h2awJKctMAvsiBYc837vsCyolJcBC3cJlG0M9eO4
UmPQAu5MM3QpuEy8sLCIqxRUApUQH+4wBxaQ74wVKIYrgMKrELjUrnuLTkML91Kr7+VlCa7r
e+crBR63KOnjeQpI0OKz15opmnIpsMpPznUFC87jIzprtXr4RlSrHm5mwKq5WdTAAzxf42rV
ehPYCm3ADhi/DcmVDJinxkJJLotvigbAEaQC2kievEJJq/7Gnnp89lOTdbYQNc29MbVYbM6L
1e8ftq/glv9TA9Ivh5ePj09e7RE26jHccBGO2ziR5n20f356T/zwjeon7q2LkYzN8EGZOgD3
AKszHJ3goeb6h1J+jWK4uqAU7HxFNDPC/ac/AdRwLUF7biuvDrUtrIj0PEj0Cif7Kgwj5kqa
YIFGw7JmMj5mY2QU++QmMKotlpf9QO46CiWbanF4G2joR6ndSJ407ZA5S4OxATaoK4oh6OTq
rhxG6HVaZXt4e8TTHJkfX/YEscD8jXTOuQ0C6OgMYEvetwlpg9z0fGIRdOKRe4kZ2In3JQI4
luHOGePvds10XOhwV6yni6VensJWgBdhJbqKAovB8jgltd1cXYTWWkFPMACil9/z0jgLzwcZ
7tRDr3xzGRwnBQu3CYvT1fvHtGQqYyGhIjmx11jKfHH1rlCiA6R/m/oa3Dh63bNbPz5uaOiT
aSyB5P7FBOLfrqKMXGDoJ4s6b4UFQ35pPWEu7yKKClpylNzSWfuDdErSVaYCvJR+yQ7DrAox
zjqfeFejVk3Mf8Ev3775foKZAsNclZEibWdu686gocU6p0tQa41Rd5jpPNkJXhcenE7O/SRt
RzqrdbjrEb1zWznOCDBeysoSq2VZHCuE1K7orz1t8X2/+/q2/fC0dx+vjFy9yhs590jmSWYQ
HZHLnCZ+nIW/HLruXhoRTTWlkp55qKVprmQZrkBpWmRSh54dcKAGxXd36dQS3Pqy/eeXw49R
tn3eftp/DgaTTS6RZI2AALsXu1wnGMMhpsWaeDunDtXt+VKI0hUr+bevyZfS4t9W9csU4Fpp
3B1qSgx8SMdPWAQXTyiBF9qDy4EPCOA/BmfYYKJWAOIyvBDWdEUW/REAJAvWEzowD2guovnY
uvCiVlgv2NdZQER7PxxgBmfgJnFzNr6+IEuHGCbnDOxG0Bh6SBJ+nrTvHY/CACSCE2H6pqt3
uC+9JM99VBEQcj9LCvo9070DYXQvWwpGFoEihbrUoMkC0Km7GNudJAbjy3AipS43WAn8aokc
n1AYU+GAnnrBpXRfEr0LyY2oAylGC/3wONxXR1SzTitPP2QuQqM5PeFYHPiX7L4GiPffHnf0
pYk29hzV8MdxhhqJfflnnyDk0mkF3NCQ2gCX6TIb9kBaqCxu2MTlxDXzKyB9LvqZuk346bVr
HC7c9RrCUYWL73Dxmf9NAuFg5L8cbFX7FuCJ0MYvFiQswdlwl+AKr07OplTyNI9pGSzHbN6y
Bgl6QgajyMNyaSO9KI8zithx9/L8dnh5wsr4B/K6SaaWGPhzEnzCQzZ+mnb0dUPH6L+q8E9t
gxWMm9OnWvPxTfPklm1Q9olJrWYQqGRyeDqYzAHTH/xsyA3LMF3Dht3cSsyiymNMU4nTU/Ia
4vU42RKizXyuA8FRvH99/PS83h727nj4C/xFk7rLxuq816z26S8f4DQfn5C9PynmnVb1NdhC
8L3b1+z+qrwGS0FxAzmgGVBXWyI8wO04uQN/XU4nItCkfSP/6cgduA/f4u6Gi+eHLy+Pz8O5
Yl2he+EMDu917ES9/v34tvt3WGeozVjDv9LwhRH+C/y7InoJnNEPNEqegR8a/oYbhF8kSL8M
GjoOrHoz999328PD6MPh8eHT3tPwO5GbcHlMGV9cTq8DmiKvpuNrWj7qJtw/9A1z0ayUMQ2l
ThEwZu0rC2ckhdM2aF7X1cYaiD0xUgl9QdJK8592exn47Afmlh/z+CJjXuDZMjIczPJYrI72
Vm2/PD5gqFYf7NGFaEUYLc8vNyHhvIRwPpQhpF0vrk51BTMYqrxum6iNazKjF/HEnPtnpsdd
g0BGxTASqOqU5EKkJY3jPDK4M7PA9/huwrBzJivDdcSG5THDNC+5UqoWl0gIQTGd4b7qbjFS
8nj4/DeavqcXsBIHEqWsnVp49U8tyaHIGD8cIzGaqx9oByEFBH0v9zIyXGyQDSFP/X0GPai+
JcYqGFoGzc1wRe1ALrWLWT8S07VYFeD0+gRvQCWn4IpFlQRHGIw7HFuslNDH3RAzN31tXdUS
NhuZvS20XVb4Rf8JnF0zG1nl8MN+UtXvvotzL3ph9qpK4QeLAC0YSVPBrjyVRmBKzL0gtf5t
5ZQf0TR9Tmto68kRyX99buXRL7ixgkMv4Ga5a5f4oR8yE+cr3TNj8Fqc0MWuHuTBBQuePWcq
azLI+AGJTUPxZWQmlpU0K42EjQeXsmJjRNh7L6SG/YYfNg3+7wVusWhYRJK4CC2zEgO5rDkU
r5okc0cVLtFcyGMeKTZpN6C7Gzl9esZfgAOVF8U5YobfkoYYWqqk5/QxI/KqaNOwwnMNfqMY
G3LBmtqf7hfm5MwJHQEu1nXFJqKPXolLvBjvDRWIdfwcZC2L6C+P0KS4PJp3bQt8IoSFruDe
DkoAgVVny+7CM45dNqHOXvBiIZTIiWLXr4D4NUL3BUDJVPPZAqmjcaSTDwwhJ5yvMkHwbRt2
A7UtdhiKcMzAIlwf95ml82H0fzqAnMU6CyabHDNhERgmsrM1lR9JqSvWgrfaW0mN5B9fd0TT
272Mz6fnGwsQlm5wT/QtG2V45g08RHbXHD+pIAK3U4QsB1oWUFgZQ9hNpBiZZEcb7YiXm80k
JIfr69lUn42JWcUEY2q1pl+g5DwtdAX+H6+j5L5bWoC5TUPFss4AccD2XNAPNR0Z85KKfgHD
ylhfX42njH4PKnU6vR6PZ14qytGm4SpXLXJdKA1QLZ2en6iEbdtEi8nl5ftN3KSuxyFQuMj4
xeyc2NZYTy6uPDi+gBOsvO8E0DDA9kFMWs6aL6ZDSEwxWjhJYqSBh26icx0ntJYV09EWMDl5
LS9X7nMh79TAe8AfS3EH4OnUZyJDA1Cn4QUggez4I5WaDvdn6n033pNDXxY0XKx05eQRtiFn
bHNxRYurG/r1jG8uAtTN5uyYLGNjr64XpaA70vCEmIzHZ16G3l9dl4qNLifjQcVWTRvEN4Ro
mdb/z9mXNTeO7Oj+FT3dOCdiepqLSFEzcR4okpJY5mYmJdH1onBXubscx2XXtV0z3f/+Aplc
ckHSHfehFuEDc1+QSCQAkt9oPik8rzz8ef+2yp/f3l9/fuevbN++gcD5dfX+ev/8hlmunh6f
H1ZfYbV5/IH/lfUE/x9fm4O6yJmPq8/iyOdMsHaRTEI9gyeGht6Ds+RILQh8ZMZFgs4AZK3p
NGJ1/doMaGN0HMTxLq7ia5wrmmB5oVaOwHkq9Z74MTy8erh/e4CEH1bpyxfestzB2a+PXx/w
z3++vr3jVc3q28PTj18fn39/Wb08ryABcWSTtgOgXXuQMNGmQc1rsD9kKjHuFKOxyfYAICbu
ECUVfHY90K+Wpc8S6mgn4ZCfXi60E9UsLpGOfkWEUYK4aoXafvn2+AOSHSfHr7/9/OP3xz/l
+o85od4JdcZk1bg8vt9PrZ/kcupv5soifauMG/EbBw0Ip1dhp25kWO/3u1rR5IwIoRSdPoJZ
G3rUlqnVQxuwIxpnSeiRyoSJA9+N9L5ZqrhMN+u+N4GkTMN1T+XWtfm+yJZyS1gQeIQVC9J9
h0rz2HR+GC4k+anMk1Z5Uj0ALEH/eCa9yXOy9HkXuRtKdSIxeC7RUpxONFTFos3aDYgSpInn
QLdclVsyA62yC1Gr8+XGsNABcq49U52AIvIS1yFKwYpk62RhSPdkCcLNQluc8xjS7Xt6HCRR
mDjOx8N2nHpoSTUsldSjU5AQYB2T9XMgceLZRj7hA5f6Szeg47RhNTGECV6CIevV+18/Hlb/
gM3r3/+xer//8fAfqyT9BXbjf8on66kZqWNecmwFqBxlJirtV2uCkyO9J2IFJhmYEtiQIeF6
V8WTG6cX9eGg+QfjdJbElbB3pxulG7f0N61LYOumOgE2DGalF/kO/iE/MPsK6fwKhZWkHyTO
0zZTZrN3J63cWjtcNHeCOadz70HcuYE5VfzLFYZ6zweeVvhjw2KNBNxbbWaMdKiSrSbxoOZX
v4njBDO1fpQnm15epAcCLtIML0yx+CDpS47DRg4806MyEQ7v15L9K1AejYxMQn4UenbSwk5m
Q7dD/yISaTOuwe26wXvAUmW2emW2H1Zm+3cqs/17ldnqlTHyUaui9TywbddaDZCgC+di5ORi
jBt9Xp4Xhkl5PpXGQtfg+b7WC4NGkzCgdXKblKzViBnk6EnEEs5BfJWFPQjEEwKQ7e1nYpwX
u7onEP1gNQHmcgAnFZ+kergg4GtABhud60XUV0u4Ryw9Zdx2zW1u9MFpz46JddoBCnK0uLM0
1gM4ZzVGeiAYwgKc0+cYUcC7ljpajJg5TFiVU+rWYevrfXfr6ovVXvduKlPVsxBHDml31Eh5
o7cheozL9cEHxNiVpS9RZMUDmCDdlYGfRDBHPCvCnz4KNSUa5fEzjWvjHdSNXQxnnNkposaF
o4RzhGsbh1Dnq02eN7QPJg7e8g6+wsCjBCfRLYm/Df7UJyRmud2sNXLFGtUdE6de0o27pSRs
kT6xzDRl5HC9mpqQMGi112bcJof7ZTtjqgkr8h6siXSzak/eMvHlL27zkpoIScY5FYnnrN3V
+G4FX2upEH8srCXb8PsuIbVJNgP/+/j+DUr8/Auc/lbPcMT+n4fVI7oX+/3+i+RcgCcRH5VZ
gaSy3uGrhoLbLxU5LGvSZjN9NJ09adUFcuQl+RAEoSQ7y5a7SLqt21zRy/Ks9owyGefQIUPL
ceMLoCUunAptn3FBhKo3ywtvrTa6dHzGtvyiN/KXn2/vL99XKXqBlBpYMipAtzWkj0ie5S1T
bPhEMXpFr4ekXamlIQ70ef3Ly/PTX3rRlALg5/xE61w1wymZoxwOjTJNHO8cjVoLTbiagTmH
FNRQUoiU9jKiJth+RtcIRo3HC8Lf75+efrv/8u/Vr6unhz/uv/xFGKZgMtOuPGu6qD1P3E9o
WscuKa+5ZreLNHzxI28HSGvU01lR1w3ejA8JS/27a2bafCl4YtS7kTzLspXrb9erf+wfXx8u
8Oef5ulxn7fZRXnWN1Ku9VF75j4CUAxKDzDhVc3u5PPGYkmkto0TEBlr9NnAr7pJD7NnpbPh
57WBU4hZ+ecfP9+tR+a8Eg7+Z6UdEqC7SVdHAtzv8XavEFeB2ofCHzkavFo/L2N8AXIjLtV5
EU9vD69P6OB5mvnKzBs+q08s067wFIZP9R3AZpGy89JX2VlshFJb2SxpxQc32Z2mnRspsD41
g9JqttNWsIh2NqQxUaZTM0t3s0vJHG471wkogULh2NDFu+08l/TpNHEkRcM2rqy9miB8rwLH
37wNo4BMvbiBQi8lnjV4FUIkjV5tyCQRwE21IJ2RTmxdEodrNyRSBiRauxGBiAFKV6SMfI/2
ZKXw+B/wgFS58YPtB0ykanyGm9b1XKL8rDrDIfjSAoFAQZQgqHB66xRPBSNQN1mFyzmjMopL
dpJfSMy9UxfpPof1a/IFa1YPNuxLfFENAigu/D+qnpbaAoohpoUBHMXnVEPcMpBtqCrD0rSm
RkzpXbv6lBxFw5pl7bsPhnkSNzCDqDx3SUmNxA7fjskGh9JaKB2R8SdsnR5BusaFfA6b6bu7
lCLj0QT+bRoKZHdVDFJLQiY4gXBWVt+wTCzJXaNakMwQf6XBr4wpNCviqstkh40mZs+WZWh9
oN6bSDnzLs1Jr9kT0x5fb9hKMGasJb5k8sMZ4qYpMp69NW8YF4Fy4hPk5C5uYjNHbAr9DlRh
OLO+72PiS4v3sKEiU88qtiE6eGKK6cC0KzN0xEU2g2Dh7h1os52BAZuIJW2WUYvAMCVyZkyT
KMIjbX+tK2UpFGAM52P1ckqmW2+SFSbtTlplaXM8E1/a3alTltYB5kYrsCDwyunoroxd2ZXp
IKv4vXOdktPlI9hSNmHgiNouSF/ItvWvR95rxsqSuP4m8u3lLkvYNs2i8e14l2WNaqsogWmG
XvAp61GJ6Zzv2thsqpzbjXaZZ6aNq3sDo14wLHTZTd99Io3SOcqfF5Ui4IwC3GUxSjc6OSld
Z6sT2+yAzuXq1tK4bdadlJbVx3nDwsBzo5nHPrr6xoOR3WQ3RDKXInTglMob05rCySL6N8k+
CjZre0tdyrmjDYTsQN61bY3hbvBWqk7Nb9N440XO0G7MRLdO4NHzmGOBHQt9GruAmObi2mBU
I5HNfcf53hf+ureQ1WVRhRSjOQHlJYhncrCXgXzLvHBrNF5Sxr7i7VAhU1nnaQa7A8g+Bfxv
F5tt3Z69EAaPrbERDoNleGOD+V0Fn01Em7do08KapTnAEm/T9x+MXdahVOTqHduW+VoPYIAk
1VYbKaqlNqeUO42yd3yTwjf1WqN76WCFpPO7rkHxdIrvGJS1QYl1ShCMZ9bj/etX/gIg/7Ve
6bevamEJM1qNg/+85pGz9nQi/K36CRfkJskVwVNQi3wnqJKZFtLb+GIx4kJ0sA7sG4ZiFaXp
42yDMReZARBLa/gF8XWbLKfe7IgK1QW6zW5YY2YJZ491vpikOKvKiZ7Gdp8NxeMyM62XB7UR
1ceTSonS7wj1ybf71/sv7/hSTDcC7mT/MWc5wmMN47jgTwsqJp7UM5lzZJhpx4tJA76ZjE4H
1KB16GtkC7tcd6c6aeQ6Rk4m+6/gz7zwYQe+jDFtEB5eH++fTP2lEMOFpXuieAgQQOQFjt6r
A1mOkDR4lbSOrPET7oQ+vp5B/ouNCCYE/x5No2nxWGYbGtMyxkYu9WJOArI+bm2VJNUMMkPV
Xk9x20lBGmS0RbdiZbbEkvVdVqWqVx4ZL+PqzvosT2aMWYOhz86nWF+JRg7+bEa3S1e7tEPX
phgF8aM2bxl53SAndlGcNMkQnNy8yA/iU28tyeWD1NvOiyLr57AiuRFpsSdzwVxrjprzCBmH
iZlZroeVvORTu9J1ip2LBPCXRAakXlWIJxgvz7/gF5A3n8DcsMq07RLf82MTUZfhOGVOEpqx
SS336zITLJKxfScBtlElusQz6Mjs7QsHMl/cf+ufCmShg4UqT/8MqH+nIZBtXBOX+HCqFXm3
sPKwI0ht5rojyPPi4dG4sXkM8JHhCPc9WV1mQNavVSlQItq/UD1XzNSPl95PrDRrn+/zs5mL
IEuF0DNEZVZ+a8/rlkgzSaq+sZCt9WWJG+Zs01NDaMKsahCD0W6ezxlhh9hlbRovNSOsmKFP
lmdAPu6JQTT81MWHk+Zlmeb420mSO46E4WzlO5ixA8pMu/iUYmSNf7lu4MmWZwTvhyXL933Y
KzEuBB3f8ZDFHYGF4Vf2DCSs2PKKbmAa5HQQ0z/iLFE9+vdqM7GardwmFM06shGDVUf0hmuU
qbUEoRxg7sK80StG8OQVmrBbhpnG8XcWZPgFUho+284PeQIyrsWCaJh5HQhDC9s2a1pzY0ai
fUHoSt+jqdZvynO2O9G9JiDbh/WF2sWB+vFAgVXESA5o9jLmxS6LUePF9KOujl7pGazy2PLB
TZJsiRHgtmTjqLSwyDNztI9SzzV62ZKuLYxr0gEUnjWqNG7pZzg8Th0PHnM8X3d3eL8R08LA
dKEHQhFljFB/rlWvOUP04PrUkTrfIWiZolk9npPB3kFOCKkY3cs+ILi71JMpn/LnItg6UGZV
dSFM2syezJsyH0Owa1Tul0b1kijoPKoZv+ZUlFkzhi59LfGxOZcwVeYvZNt9TLqG43yyXYwg
gDBh5HmJu+SY1gv5ceVcvd/b8rlJ2HUnRy4cDl1I5ww71e981SQlSgAyTluyiXR2Hck2F2Fn
NImibRBupAmSiFSU14q7wRndxWvfpQDdY+eMoIzcVgf1GeqE8qWRqMLMUWZM8QA+A3JgvJmc
9XdVzSgEG5mi4/VHJzygECVMYPiTZ4+ZpYfjYSYf1PBSErafOcabsEj7Ylcm4YsQbgEia4PR
NBCO9de1o55tZvra8pI5ab21dqSa3CBZijJmCuNG6Xz4faM5IuCewokWaePLvPgMNFyvOT07
w/ElCKVkdd8DXQJ/GiphEJaKO+1+eKTBcZisqKm5m78dx3p7YjxGRyfcxJh2XyC5m+Zeym2B
h5H4oD9ATqlVsnB5rtF4HNqzSiy5ekO4G/j59P744+nhTyg2Zp58e/xBlgAEtJ3QiUKSRZFV
B2X4DskaV9IEA/xNLSEDXnTJ2ndCKu0mibfBmnQwoHD8adQWL/lMYln0SVOk8ra92BxqiQY3
QKjZtJRotDCYejZ++uPl9fH92/c3rWmLQ61EOR2JTbKniLFcZC3hKbNJ/YyeU+YeHZaHFRQO
6N9e3t4XHZyJTHM38AO9JEAMfYLY+3rn4VvTgHrkOYCRK9+58MbN++CYeioxj1RDd05jpB0G
QmjTu9b5K25HTm0AHD3naR7DGD3p37GcBcE2sA5twEOfXhsHeBvahv1Z9vc2EJq2lkfO219v
7w/fV7+hExzRRat/fIe+e/pr9fD9t4evXx++rn4duH55ef4FHzn/U+/FTtkyOI1v7hqt2xqt
jDSMb41BYDBYPWzZVRdTlumcu+/1Gg16VYOITy5qfXUD8k1d6Sngu6Zup61uuBwPYrRMVrVC
SErjc16RBuAczTAaPXc9pvs10WDeCB+nYtp86wyqbTJHqROkhGd75ajHSQfP0ZaNrMzOOhcX
ULTGN1uNL+7idY2Ik1O3ehExTGARV9rOpU7IkhJdBAKre2NsZnndKFakSPv0eb2JHJV2k5VN
oY3Vokm8G5WkSW+c1CR6RcouDEgtvAA3oWfMgfIcrnv7Nz1TMx0EbJVYa0aZnKY4KuOUS6ES
YMW3jKimhFmhfd5UWq5NHxsEMZD1OgpXOtZp0ua51nntja9lxvzEU55NcOJxeFVjLqslnF9t
+2fe7o0PGsupmIMWezQOweTZrz/AN7aSdCdflYg59VSFcDLzLrb2Ahn79gQnIWMe8WuW664h
Hz4jA3UBJNOv5EEQt47R563+5aWkVGOICMWgzt8XtnWoL5qtPrDbhN9UDv7zQQZ+vn/CjetX
IWbcf73/8U77HBYrX402kCfSBpInX+/qbn/6/Pla68dnbM24ZnCYJz1YIZxXd4OZo7LHNvjY
TLwJ4AWq378JqW8otLTZqjupLDdK5D3TlOmSgEYKY8pQoabjsOMKV0GWIcZZ0F8TOpfTtxt8
6UxvaNxvEAiT1q0MGcYDkFQRQhb2SYWmEvG+Md8uAqmMmRouC2nZdIbFy4ny/g3Hzfy6z3zg
wf0UGI6cObXd+mvyJo67NjhutuYXZZzGV39jCXwrPizJMC4CAznpxHTt8vjVFVaDlDY/5Ty9
8LoAZ6tcVQ4gdRChrOWar64tyc83NSbxemSix/Qkr7f28sKRZRdXWqcOLqFJ4lh/DZzfqCi5
z9KStc7iBYoVNmakguGNgfUCbOAgOkzhEY/897Cc+PSlPvDgfR5eKRANbDHgRgjkKPh3r7WV
8g4ECZ+0O1MgFU0Urd0hHrReY8XwYSAqoaRHotFNSDQ7D6mZQeVCGP4vSSyA6iaRQ4ZIpsEb
zVOSBt9cK9vlC3ZCw98uUvHAJ7gx6iHudQcvhUp6tdhXLMmhTOete2NId/nSfMKvMEj2jVqI
utVCpIDMkSfa4/GReGW3tuRB6vP06S9omgUS0OFQdpMc80bPo12aDLcn0o8LICAUhms9b5a4
EZyaHU8jHzGQQ73XqXpRgO+4VBpxaW8rkHrRNlCucaq1g369NpJ4N+p0HCdrjYhmhgYpNBaC
SVK0lLfsc2MIciHSdSmj7wn2HFidithsvQlFHbAthbpJiny/xytotQ5d329VCmmxBPQeY0VY
0jcFT04tGmufokUai+GffXMgrbyA5zM0JdE9SC6b6+GWWIbjkjBMROlD0gaatk3YLbMiFfmb
15f3ly8vT4PYogkp8EfRxPKGLLLQ6x1jOFi0DKxRnMPghUzJSv7aDPWzcjJHOhhKo6i04ac1
VFDVNQO7UBk2bPXl6VF4g9TbAtOBoYI+3G/4fc5cSAnipqAkMigjpoz+4NEh319eTc1l10Ax
Xr78WweyZx7uqjnewR63wnfJVdZd6vYGAzvxSybWxSVG/Vq9v6zQByOI+3Aw+cojxcFphaf6
9p+yH0wzM6np8gqvKYmGw8oo++xA4M5o0c0w7MIlyOqBOxlX1XtNHzN+kre3wzI8AEIwN5l5
tAKCdD27GnV2RyhTdYfpnMgfvDrzXYGIffT9/sePh68rLrsY5yP+HToW1Bymc7qughRETQcp
Ea+MqOgouCulB/5d1rZ3KBP2yq4l3jgNKkX6lnzk6A9M6CMX2IQW0s4wSLqWYUG8xxbPrC6K
g3ZOy/Jk3KbULCwRaQTWx7QMJJR7Hf7juNSTcXlskI4pBENrEVk5eiwuekcKZ0kyhbvROevj
b7CLNamDLaFajHIXhWxDC4uCoUEvP0sMhjipoL1ePqHfU9Pgy+7YTbakFOWbGKyJ/LpHkFKd
icVlHKQeLDP17mTkbMo2Gl7h2gpz2lYqVf4RJFjv+0t8p5PvWKI++eFkLj/YCyBkk4i68xE4
W0eqQo2TRynC9tm5j4JAKyAPDHVl+vQxhQtBLigZlUOf9dEHYsF1nxxlFcjCEjjd1XDqw58/
YA8yl8bBo4Sek6CqjvkHpNIn0OFyVRTh0lLtUFRPr9dA1e3txXDFG1SfOsrO8EbPRrw+NBu7
gyOJF9mXGxgF22EUSComrf3E1rNP/0a7enrB4jb/LG6StGU83biRR/v1EAsyf7toK7d4vajl
9SmuPl872b0xJ+vXFsO6Fm18s72QHIS0imfqOVi3rA06Pic2Um6ToAsi37ocFF6UmMWc7X91
AN+8OlFI9Lh4DGvtccSjUB+RnLx19e4byJ5Ovi37KNSJ4v2sUSLxYtTepIiTDlhGdLtVHLcT
I3FyL22MUDWr4abblteui6itroA9lHYYO8y9RTC/8rBQrnUl5nHcOI/s/GvYlWD3HfRyUkwz
qvZ4+lmcnyASuqGeAX8rsTWkIbGWuWZTJL4fkd73RE1yVjN9Z+1hG1o7SjgsoqzCoRHbLddB
uTKYkiM+48mdH1/ff8K5YkFOjg8H2KNjxQeaqGmdiOj0Uy5kauM3PFwRz9T95X8fh1sG4wx6
cQeNO/eVI7vxnJGUebAk25BI0TlJ6fW0yCx/7V4oNcDMMUj6xLfsQN+rEHWV24A93f+P6pLq
MtowdMestZRGMDDFIG0iYxvIrrZVILICcLqKUz1WmMLjUkuzmkpoSd7zaSCyllT1xK5CtIZV
5fmwrL6lKQKnt+W8Iee1yuFaKpo5axvibuRJpI4M6SzPw9RyJ8OUzmQMYtsUknAsU/XLLQXj
MYQkLI0FrrSEcGuAQ4TUoQ44+R0+IEU62XE8ipsBDyDaBh7QhA1kJyeUWncXdzDx7q5x0kXb
dRCbSHLxHMX1/UDHfgpVR/8SQvaxwuBaP6Wff4wsbEe/2R2raMPLuIoJXEt9d+upbrg1QLXQ
1MFjemsH0+56giEB/aT7BpxqbxNFRwbYLt2NJvpo2Iefe+r129hsOWvw84WxA19HW9nnwgig
LOttTLq+zs8J8Z5Y7MWi88OAXqFGFvFQuOYFc9chaXUolX2Ulklk69MFhRpvKQl35OBWNKzc
7cyEodvXbtBbgC1RFAS8YEOVBKGNT4U7kjgCkR31cRCRMSBkjm1EFAmq5q+Jrh2E/w01EA/x
6ZChca+3JS14J77hyQpV5LaDxWipuuiGxHepT08Jcx2HmgZTbdPtdhvITjyqoAvRrc+w6A5k
bTnnP0EyVNR0gjiYXxxzZUUXr6eFU2LC68EQECyFeii2qxKypq98ZAZp/53ppeuoVm0qZLEs
UHio2aRybC05+9ac3Q1ldSVxbL21Q6XabXrXAviuQ2fXoUvfxeyQw6VTXYeeBdhYyrHeBGQ5
mP9RRDiWWPSTE0efX/dxhc+hQJgv6GxQib6URtc3ZL9ghNDmTL+lFBwJ/BXn7TURhspGCiPe
MPLKfeDibze6TA1bO4Es/CD8HsbCW2ykwQVVnCZkBlyNs/B5HtzAoX1n9i06zO3Jrt1vAn8T
0B4xBMforE0USgMPReBG6sP0CfAcVlJZHkDisjhwnzloPzcDzO8G4srM9ZgfQ9cnBne+K+OM
KCbQm6ynSvkpIaWQEYZVtnU9j5y2RV5lIBssVrGokyMIEJbbj4mL7z9LXS44NmQxBGRx1ahz
6dfMMrxdHtaCx/beeeIBQWJp7COH55KDlEPexxl46+VNgfOQDohVDmI9RfHMpRZaBDyy/REJ
HYt6VGFyKZeBCkdI7JAIbG05+yAjL41fwUJNFQwuGdIbL4f8Dwobhmti2+FAYMtuuyEBKOGW
nGFl0viOzbpqjHWahMGS4FFm1d5zd2UyiUhmNu0GVjFKfTBvmonqOmQYRmXokwO53CyOvnLj
U4nJoT4lKtFoQCVGSlFGRMujC2m6kNEH06iMlkSgotySuW09Orct7cZaYgg8n7aEV3jWy+NB
8CytpVWXCFVbzrS3JBNH0m0iUiyfOKZnFObHLPY/EBDqJLk20YI/lGHzwfurLbWYNqX2Rn34
gCajOOuFoQWgRt0O3RrtMxOAjfSa7PcNkUtesebUYqQe1Zhnwls/8BbFIuCInJA8X+Rtw4I1
GdtvYmFFGIEMQ48+L3DIeI7K5sYnFb3vbaLZI+tyMn5E727DPrG4VvE9wKG3H8+xreOABPQ3
sLJGRPcisl6v6TU37qMwovQIE0cDzUGk2pThJlx3LYH0Gex+ZHa3wZp9cp0oXt724Qy/dtaL
Wx2wBH64IU56pyTdOrpXrBnynKXFuk+bDCRA6uPPBVRqeaajG9u9xQ3GyCNbCdkiu08SvnEj
OiG7jpGiHTt27tJyCLhHjB4g+3+S5IQUGoiXqBpHBkeMtUPsfAB4rgUIUaNLFKNkyXpTultC
BmFdx8gJwcoShBNqGUxcL0ojWj/BNpFnAzbUkRwKHVEtmlex52zJ1a2K6XC5EoPv0cJal5D+
lSf4WCaUPNaVjeuQo5ojS8IQZyBaBOhrqq+Qbil72QTkFdPIcM7jMApjM81zF3m07uYS+ZuN
T3t4mTkiN7V9vHWXdBOcwyPmHweIMczp5IYgEFweLBabEmMB63hHbLoCCpXXLiPEL2doujwi
uCgUFwYBA5x3OVP9Mo9YVmbtIavQw+rgAWYOg+nozIbgPQI19VxwBC9tzp35Y3xnVaIYOcag
e4caQ95mzfWSM8rEkeLfoxaI+/f8KGV0r4uaFdJ6cvzASJLApyJSOSIDvlrif32Q0VwiOaU0
O+/b7HbkpO/dpu47CX+8i1xoKksUhT8uMkYNPqOmiFFZmvQb36SNRkQmwposbiXyPJNOVZRT
FR7w8bmImSQaO1qoMKyJ0t3k7c2lrlMTSevx6l6mDk/2iEJzP/LeYjfhqyECH8JKvT88oZH4
63fFQTEH46TJV3nV+WunJ3imG+dlvtkbNJUVT2f3+nL/9cvLdzKToRaDUfJC/6B1c8XMxkM6
U3t8KJI1X55x9/Dn/RsU++399ed3/iRgoXhdfmV1QvfDkNvH6Qkro/vvbz+f/1hqcBuLVByY
97W1129/3j9BtRfbm9/vdbjMk5WxJjGn8Ln3tuFmocP4ayRiTFOOwsZP2A72CMbyneLmTjaM
RRaGj4lVUpPkPA639PU882fclif376QnQDJoJUnzejHfkcGSsXD8pL2FgBEdE+VAssYkssZA
nkT2CgdteTBxsJrSB3N8KKLm7EOGSthy7emPVSzj5JqU9CaiMDYW70uCSX/pM3uA+v3n8xd8
BzO6pDduJst9qrnnRYppIIJU4Vv/0GjXLvwD5m9IC8gR9KRzhnjWZIbn47xx50Ubh5fJlpz8
GFuh41NsfJGbyDNhho5FIt/NIMAjOjmqHorT022wccsLFaqQJ8gjvmiZiCgwwmZESa1En2D0
VY5onzyhdXu8pXC/Iy23JzTw9ByHCzL6TarEoBi4TPTApMlXpBPNJ7J1A/pAz+GiohQQCKGt
/83O3/rGiBBebq5FEzOLrQ8wHeIuw0dh7Hog/bDyXkhcX7H2kYjqs2gZoLqz8UKP0u5zsIey
trE+0MreC2BvIabOMQ/hdMc705IkcARBr8WeO3bJteEjR6VBeRX1BobKyOV3nkhgSug0yAKd
OxaQgzal9Kh8SOP28ElZp/LyjIBuEY80EfTLoYiB3hCcHDq0TbeYRr27DkizggHm8q/W8IYx
0EyVjc1n6tYY1pwerek5OjBEW2ezjFssMSZ8u1AxtEwyStWFPnlJN4LybRGnjTc5Mzn73I8h
lpS0EyRaklbMpSU6BtTS02mSfQDrhL3loMtt77n4lsN9pNqnhmzKLpO7wCHNWTko3kwY39xE
DqW15ZiwGdK2wywxnLBwer7ehL2xg6k8gxrSkh8rA9VOfiLaXEtwhpu7CCaIsRkMUZwszRjv
+sBxjJrEOwyE8EEturKx7dKDE6U20bbi6d2ZROvwqbbvwxrXsYRYIovG3y7MPjRJtATzHVIv
ypMV5t4ZTiB36iKpOk7joowp8w80jnMd1RZPPKMhDZIEtNHWVOrdzUwnrfkmWBjmafUd3yGZ
5CAMiLw9fXCbD3omqvKeR6J6NNWUMSbE2HQBgd1C1Ut2l2Lt+FaJcIyvZwqxl8L1Nj4BFKUf
+L7eOtKTKLUPEj+ItpT8xVHtzRJfINXXjDzL0YxFExmnd2wm0Wy3ETCaLWHrTeGt9ZJfysB1
6GuhEXbtwhp/ImXbkjioDRmgrfWtXtehzjSzegPdqJ2ub51pZBriXZeySl3WkV6Itj6W4rmg
KfyPGAjI1g1h+tzTdwXuRqRoRncJ+oIJIIeotUSw8Gh6RqJ7o5iXJNX9YCn4zTFOY7QBoSz1
xuB/1AYmhMHSdUzn4bI7XdvZcspivO6V9INTTE7tZcUM7PMeY0rVRRcfMooBHYSfRIQGdtLa
eOZCFS/X8E58VCNM7CB7HsRqR6Q1CLGLCeCJOZKXVhUaDtNE4nEa+KTVucRSwT8NmbR2spYQ
7YA6I9SRV0LNF7Q0jy0B81mDjYm66lRZQs+eR0iJdwqLEo9dQTz1Kl3DaPMYaYTGVeAHAS3N
a2z0s8aZSVVySSFr+ZGPQnJWwCGZHGhowOFtXMtAIy0pTS4QtTZku3GEHGv8SQhZWPM9tIp9
MAYMeUWCxLZsg8JNSEF4ggwiG6SdHnUssGFRuCYLwqHQ+hUcGK1QQDY0cRDUC0m6ZtCZ1BOu
hkYWkUFnIx8NSEyD/kSLAKvgm8hWEACjLaUrknkaF/qEbqgmWLuhJe0migJKe6OyhOSALpvb
zdazrB545v5w9UAmb3ntQpbA1sv8XP9BHs0uJ88qEkcSb9f0gFYjLkv0fdQ79Bf70+fMtWBn
WALpOcChyNKWHCQPPhLPpaTS5dc4bVMe6ZSHV1wpsiwmLxgVz1waiKfGs2IxODPIRkk8qjxL
2iyrrnGH/gXJL0y9hAQKDcRigVEoJRPu1pFDrultV55to5l5ZROTBoMqD3PJpFlQRpuQXOGm
51wmQmgwJLQ4wIHmA0FMiNi7uh580FLpcJZzm+13J8qAQudsLqQIa0jqMsSPHNdzqUbnkTig
ok5I3wkoXJFHurrVeDYVVQy06HND39Kco+bigzIgm6cpGi1ssBovr2ym9kPH6M2ZY65PrvWm
EsTAIju2tpfFsgWYOhADszc412580JILzpKkUxCaPFFF0E/cKhJYJrs4uy/mqB+ttbWwiHf5
TvFU2CY2nU0ya04lSlV3+T5XQv5kGLUDMXxzrwX54YkcNz5p04qg8Ekb12ougnpwvVhASnoW
5SovgQgdC+tao3/FOvoqWWBaWCoFNbxtDRhuLM2pYFmEbHJ+iLRxXjE43NcXROnzP2+5odWM
q+HD6/2Pb49fCIeP8UHa+8+HePA+qRJ4KKZDA/ueG85Zov1S3pzOvl1nnKreOYTFDdDmIFaz
gY1E5vT96/33h9VvP3//HZ2F61Gv9rtrUqaFcK890/iQupNJclvu87bkQTugsShNPCSQyvd4
8BtDPF3PGYulESkVAf7s86Jos8QEkrq5g8xiA8jL+JDtitz8pM3O1ybvswINWHlIQIWF3TE6
OwTI7BCQs5ubAgoOvZYfqmtWwdChTKjHHGv58QK2UbYHOSdLr/JRFplhuCj+Mvc4cvDmMFMT
QPcYRX44qpVAviEYk8qOURCw/J0IY2+Ojm+jU37D2gHbNW9bNf4XEJuSWkSQ2/DryDus175P
7kDU82jRBGAlZir8rvf69zV/7GspQxcGgSyrY4osLzCivZZOXrKOvsMAELpDdRclg4cdPWWx
cc6tpXXqJqu0yCfY726qXbRjgYdQ4dLc5DGZCJJ+5T4DNpe2M4c8lOQE2vxMrbPYZJu1ow3R
wYmS/L0gYuzRIqvyE+2pU+K7gz3h9kTtfTPTgchW1WhLCcbnrFKANk4z1Sh4Ilpess44PeEG
UNPM8r67c71Iy0oQ56QsI7+705O6aosVkkb/pEWSmtlcD5QAPGB0VZivJcN8XMoti1p8jtWg
dxPR3pIDHieJNqxZzvTfVy3GzEh1aRUiTtXcMlqrrIblO9fnx81dS9uHAeane0v7nes6rWtX
Ke65i0LZ8xSut22eioCq8op2o/xuSvWbBPZvfTMeaCAFxOU1O6sGkAqYnFhHRkaBVEAMDVTb
EU7sYAzBAbih1B5Yvh7WvkgpDo97kJ/0lFzbIj7FOroOZmTyZ11pMdDjY882hoZbfpnCktNe
X3xOKW3ljKvXroTp0a0DW6klvyvSjh1r6ns+5Pi1imXFymAVqupS7VD01utp6/xA4waYB6OZ
RrTIS+t2M/JYp96ureOUHbNMX+RZXjZkrGrEGGxKssKVt/ZGParhloYRHqirubKB0cJUQ5mB
Nm7fBXlmQ64mrrICzn/1ETZh6XwD0CCSDmIvKeUKg/H7L/9+evzj2/vq/6xgAI6XboYEDxhI
LTFjQ9xeucCIFeu943hrr3NogwrOUzIv8g97h1LPc4buDEfJW8kxOVJBJNl68kXASPRltToS
u7T21qVKOx8O3tr34rVe4tFptaUscC7zw+3+IDvSGyoB0+tm7/h6gsceDsLUzTaCNR7YPNU3
2rDF6O1q4MLMVF8eZvymS72AbvaZSVgnEKWbWRTF50yeTEENhJ/QL4Xsjn0GJ40BUZjBSveD
IgNXFJGmaBqP7E9HqXHoO2SLc2hLIk2k3JDNiKRENDDaldWIWo7/UqZnaIxN0VBJ79LQdSwJ
wwGgTyqLnffENdzJL5cgU5yUfrAqSAd3fIwmDVoQl0GUUI9Y4i3Ey/PbyxOcnR7ffjzd/zWc
oaR1Zio4agMSEbSdKHJ6Kss7M6i7QoZ/i1NZsX9FDo239QVjPU9rNggHIJ3u4bxppkyAg9e4
a9PCobe9W+Zt646/6FI2BDLN4bjbxTdZfdZd241Bo5ebcVpx6oN0aMZf6BUHYxjDdqusWzNk
P8dJTElx6jxvTZbNUP+M+bP6VKnPOiszgMoxT81d55hLSwv8mB04dm1WHbqjgrbxRdFpHUn1
CyYzB7UQD4V+PHx5vH/iZTAO98gfr6HDlYsfTk1aMnoax5pGHkWcdGozVTrlNcqKm5zSiyCY
HPGqR00mOebw605PZ/CgRXagwE/0JT2CZZzERWGmyfV9trLdNXBEZ2rhoA8OddVqjyln6nVP
3Yzgl1nJANRLkBVZUtPHYg5/vsmooFqij8td3mrj57BXo1RwWoEhs06UiI/wGc74hRzoCYmQ
Lb9906h3mZ74JS66mlp7RdLZhdWVYn+PBbprjSUD6TlGC7G2Rd5R6yUin+KdHEYFSd0lr46x
kcNNVrEc5pXlASqyFInNPyxHM63Bi6yqz7WeDwb1wBllHY5wFi2hS7QZVEJjtoo7RU68G0NW
SVRYSfmg03jzpK1Zve80MgjaWZtpE608FV0+9rJS/Kqj3r8gUrdddqOzg5iOb/NgmNGxaDlP
1sXFXWVbThoM9ZxobTsQhaxP0Aklhgxb04NO1KZ1g5HtWhypzKgcboK2YsOKJNpDofEbDz0d
7nxQjy6mcnRZTEnrA5YVDNb0zCggZNYU1tndltrMPuB1esxkFeJEIhYoBhJA96m+07NQmLr8
TD/YTjFoGsv0SdMdYRKWOq09sU6PgSpTRemkT064I14b5qvkS56XdadNrT6vylolfc7aGqsl
V3mkaeu4UtvPdynsjKS7FN5i3N/B9XjaGW0pEKGmGX7ZtteiUWLNUjv45KVfFS2UOy9NRFBH
to5JHvzlJKdILqQII+KgK9K1ziu9H8/Z0ZIMN57NMYqhlhj5nbgDK9MV2wuAGVdyJTT43kiO
/GYElRykVqyPSX7FqxOQY8U9zzySEDcutZCIkf7UPQ6pBUrAbU6p4xE+FRhIVjaNEUlVlWbz
iGQ4HkH9YnY9yiudCO2sZNqQIcx5ElUFwmuSXavsMpzQpyNN+fj25eHp6f754eXnGx8VLz/Q
cFmSHTGJ0WcFnoZy1ul57yHhvMo7fOeEyxc5HHk6d1WMLzPLvKpbO1vd2doOEFit6/SUdEXO
tN7ANZ83PHd/zHZmf8WnrmYnWKarVPgU+Zcnw6Iv5zn38vZOx2FWSpuEm95xsIMshe5xaOn9
J6jp7qA9MZsgVBPCASFjpL3azEbELZszzbXIbTpD2d0QpSrPmRqBa0LQi4W125YixSGeDe1g
69v+5LnOsTGbCn2yu2FPA37oDYA6JmGoQHIL+XFPZZ5rplqT/TVShcsQG9blekFmzE882hWz
wkYEgFNwfOP9URqoqvUtRUzjc14l9mI2TYLBGS2XnhRr8TdYGbONQ84ii74TUTxv1pbJinHb
WWSwVNA2I1gRua4+HlTrkSgOw2C7WRg0w4zE/x/NRZnnrzpeGKmKV4qRyGNVoKpJhZRM5BVJ
qL1XydP925t5yucrXGLUG6RbPBpYKnRJSzXzrpx0ChWIWP+14m3X1S36I/768AP20bfVy/OK
JSxf/fbzfbUrbnBbubJ09f3+r9FdzP3T28vqt4fV88PD14ev/73C8KNySseHpx+r319eV99f
Xh9Wj8+/v6gVGfiMThRk876b5EJlBQjvlqpPacVdvI+17hnBPQjOwmkCmUPOUtrHn8wE/4+N
TXMEWZq2zvbDqiAb+SZAZvp0Kht2rK15xUV8Sm1WVSNTXWWaXkBGb9D7kC39QZ8Ca1Sc2PeB
kRsdG5x2oUfGIuOSUqyM/vz7/R+Pz39INlHyap4mWnhFTsXDsjYC1M07rRhlDCan0Z20tRQp
18G7i5odAoc4PWS0qcnEk+IzrZZWD89MqrkBp/OVI20Nw7eSeqar46Jk5KdkgUSUt6f7d5in
31eHp58Pq+L+r4dXreX5qgF/hY5rdgBPnFk8vkwcpz6weLucWLgeT+tKIcPylbGMYSX5+iC5
b+FrX17DeJaDGPHyXBLfpHDBnCBTHc2BDzqa8/zddhWypXnEmRKqlVjFE3naI82sb7I7mGmV
bYhxntnkk0gbtnZxb0xguuzNibeKd5mB7BGF84yhKowv77/+8fD+a/rz/umXV7wiwB5dvT78
35+Prw/ieCJYxhMcxrWGPeaBB8L+qgvmPCM4suTNMWvJ+/uJa+omsrDLmw1n6do4uYHlhjGM
4VzvbTI7uozL00xr7pF6PclGlQpSstKCCJs7CjHiXisot7DV68vDH6n3ldP6y1uccA7G13TI
iPAthp+pZ0xSasnKPDTGCRA9+jKHCzrpqTvRBvqiPGdGxgI+8YPioe7UGDecrEtz43aW3G2S
0Ncx7qtMO4+ko8ZXPYt0KUizxf+j7MmaG7eZ/Cuu7yl5yEYkdT7sAwVSEmNeJihKnheW16NM
VJmxXLanNvn3i8ZB4mhI3oepsbobQONgA2j0gZqO8r7AQwuYS+Sx8X7B4X2xyXgedZG2x7d5
Z+xeuzZMKHiXnHsRW6glSbts3XjCTfN+VIe4abLKGiA4rpqQdEfTVhxjN9mx3TeWrMgo6G43
B5uLR0aJKVx5nV/4mB1Ds6rdfg3/h7PgaJ+kaUbgj2hmGjTouOkczenFxygr73s28pDOKXVF
PRv2iuJPNHDhFUfsrBTieVj09V//vp+fn76LDRNf9fVO25eUtHYxZSWCcBxJmmlmJTIsCBEG
NkDh4Fg1JpwfAnheT0P/1Ma7rpKUQ98HoAj5tn5UWiDfmoG7uG60JVYMkzFmd/h27+y0XCkG
b0mm0uaPL9PFYiIrMLSXngE2eqqOOw4MO1pJTAcBfNxPWC8HluVXlFwmqW8jUM2xiej5q2+I
YNVJudwXvXhrp4xubE2KXczWYFyJp7fz61+nNzZUoy7LXIijykEXWpQvKkcsK8XKHjUa5cw3
7j6mrtZ2beZ92l+nRmcJ4voYhwuL96JzOQBYZAl4WtaWt42CsuJckWDVAX1wRmTNaP2cwzg+
WC2wG1YYLpyKJLiHw+yN1SVyvV/VbE3kGJjbJn+j6jsmTX3nIW5mojRq+heHLiRTkq7ZCbCu
aNZaHd5IxYT+xcvFaxPi0Gqd2usTkuVSTU9g4DbUhhh2GAIkNSM2uLVZFX/aVSroyLG5byg0
67nvMKhI3N4NKKuTeBObPgc7Tv8tdyT0n0xHGmeoNNw4Zr4WWuK6MmlH99e30/Plx+vl/fT1
7vny8uf528+3J/XmYNQJD3U3vgNvbzb7koD9gbMOBjh+OvavKfnhtXAIszcVzxLY3tC9bWFt
QFhzp5zvTU9gk/UWM8fgcjI+6Nd8PWH3zeEfjgOPdaoNC//JZrUuEJipSBbgpg0WQYDnaNcK
gpjKcLsYQbUBYe8JuSAodklEaRSGaDgx0RJ3O10ebdYpKCyC+cRBcHtQGU9yWLrtv6+n34iI
7fP6/fTP6e335KT9uqP/e/54/gt7oRW1Fnt2Gssi3qGZ7fWoTdL/tyGbw/j7x+nt5enjdFfA
1RkLTc35Seo+zlvQPN9ixVOjsebA9o8estYInanHUqwPDU0f2I0OAQ4qBs14nPTrvCKY3hYC
JPd7M8BtQdTBXeiDCvI7TX4HyitPeFph6zAIIJoY7wsDqIcU9oSwS2Glu96N+NouxiRMtTNH
Q6PO202BISq2YTYxNa2bTLST6dJDZz0X4VQp/HWbbJcf0LiMOk1yIAXdod0FhZJKI+kgwTCs
1I3HNZR49MFQnHHb7XBEQwD9qwwrJYiDoBHaBZo1G3Qmj3EX+RAhWpN8RkS4Zm17z4AjFUSy
v69KTJ0/Em3gfyty8IAssnydxnvsRqet+LqpiF1e6g3R0H8DujjyKvCyHInH6wSa6uh843Js
LCiPUbmzvsXDmiYmJM6Jrs3QxoBaH2CbbYreLj4+mmpALHEzrxgPLQ0YZ1FFkDtQSLWseXBq
YmhPUFOJTQpn9QqJQ1DxBEH2re4WrGkrEKQEOxW4EjHjfs+MCfdjybi9T1NCyhMHrwI5mFCy
XgTOUu3AWz8pCjTOLUzNwZqqAyZWGXSd79NNlub21B6ch2YJ3mXRYrUkXThxmGLYe0/UVcmC
J4Y+Hxy+H2SYFTHv8H4duS3u6c43AnsY7TnbhSdmF+Trpx2Ln7OwL4++RUoenL1vRx+s5VHR
XbaO3e2OCaVwGVkCXliZIALomJYeM11t0yjwcMsDQVzMZ1O7/uqA6fuLtICkQ5rNi4IMhwBx
hDj9uLz9Sz/Oz38jeQFUkX1J4w08MkMQRYMByDjhHmE0vIt02r19dFF8cIlVUKRTf/D3z7KP
lub+qPDNDI0kNuKNFSSxYEZmmtdywyvuAYbBemXaPLSv4biBMqnyCjcr4pTrBpTIJWjimawk
u7jcpq7zBSPFzru8hrhk94jZCt9RBUXDJAMyFAJJo7mR8kFAIX1cZAHZ+p9Hpkf4CJ9hQarE
YDSTSTANgqlVXZoHkD7WyjDIUdwZDrv4jNjQqm2I7uvUNEczVQ/YleG6qKCTwIaKCG5OA9zy
yRPKXHS/WrOF1j/s19hpTSdp4geneojYZl2qdLRpVCm4h6jZ9lgDcOYMWT2zAoIq8IxH8Cvw
nIqSCFz/cHY9saUGgjma1oKjVTDgNm739gdnBwTmQNv5UQJJEE7pRM/hKVrXPSg5RI9Wa63q
JPTFRBQj0EazFeawKT4gN8+JWEUi/qGvWEntvpRpe1xnWwvakhgiajnVtzmZrQI0J6Jo3glp
qYFX9gcP39TsH6eRqsXNgkRVbrYBDgcn2PnK7l1Go2CTR8HKXYYSZSV4tMQht7L6n+/nl79/
CX7lV/tmu+Z4Vubny1fQKrim53e/jFb8v2o+1Hza4cmscD9zHr/e2+n8yBaS1TeIRWyBKFhH
G/F8xKzxUPWjxbUjohZ2gTH6vDFkdWTPLN0WUcBDnQwj176dv30zdlvduNj+6pTNsRPY2sBW
bAfbVdhlyyBLMnrvqX/Hbowtu7G1HjziLGPgSb33YGLSZl2mRyQx0IgIHdiVpuGj6fT59QPM
Md7vPsQgjsusPH38eQZ9ktQ83v0CY/3x9Pbt9GGvsWFMm7ikmRFkw+xTzMY89g56HZcZdm62
iMAjs/RWEu/xm6rQBGXrLDeGLg6CR3ZoiSEijuaMq9w0n/7++QoDwJ1g319Pp+e/xr6DVuB+
r1n6SIDUMGeGG9qAeyzbHeOmbCmmDXDJaoI0ILB1lefXGtkndYtmqTbI1iX115GkpM1R5Z5N
lh5bH6MJq8KHu08f/T3MRUEPb+BYd5MzWt9X+9ZfSXusUWtCqwfw0PbfpgMQtjZU6ZRt2T3b
hsGBgpJmr73rc5TjoQJQnUlOlafbmDyCrEbfTjiNpRAVDed94dZW1GQ585zsOMERXlmQdpqW
9EYENABAEuf5Mli6GOtyAaAdYZfQRxyoAlH85+3jefIfnYCClYWundSA/lJ2SH4GKjt2S1Jf
NQPcnV+YYPvzyTBMBcKsbDdiuM0KOFzq1mwwYwSH9vss5RlWTXTSdIYKHLyzgCfn7qqIRdz+
o1tLvF7PvqRmkKgRl1Zf0PDQA8ERrVQ6hqB18jD96PpRJAmF8DQ3SRbTWyTzBRo2WxLsHovl
TLfyUgh28JuvzAuYhvImtzJo8DQGI4WVcUthGjojkRFZXiIymgehnijbRITeIuEc68eRYdB4
8xJfk81yFqKLgqOslAM4UYTnJdBJsOHniCU2L9OgXU588P6QtMhKfIjCe6wbKqztFQ616LZY
cSd+rT2XSAxrDTUPcB8ARUPZ1X01wbZ3RbFhp9gIGY+GfZQBDp8tA5w+nGF8pkU0CbHoQEPR
jhEgqxLgVqzlAbNcesItDT2f4Y/EAz5h4mHpXIBAC39VBsI6WXnWlRHNV5dDaCc45tr3AwRT
dOo55tqQAsEKW+UglQJMZqwWE3RWp/hsg4iZInMmxB4iSNgHGQYhNnCkFuno9Y0rZEeHMpGp
i4aJeWInnpubVEKjMEIYEPAh9TvK3gJfhOGKeJYh4ESVVxdbc5xbmaFMY/6rHSJFRdF1FWLC
n8FnATJjAJ8hww873HLWb+IiM8OgmAQ3d8nldUHESBbh8sZqX0yXqAQB1PJ2YXTSw+kE+yot
5ZYBn+FwbJuh7X2waOMlxnUxXbZ49hCNIEI7DBg8pYYioMU8xDq8fpgusc+vqWfEzICoMLCG
0UDlEu/EP9fgM0TEiOSIWEv87fpKS18ey4disIe+vPxG6r31aSAnwWIVopHSxqlzPFcHVLZ1
XxHs/ZHm/aYtwAlOt9sfJgKepdEp5O/VHT/jeys3XnaH/bJeRUdkwLtmGuADC9YaDRsHPOC8
RkTjYuVW7Ji0DS227JCGnlx4MsprHYOXQuS2cZyuIoSDokO71RRxEkfLa8crx/5jmLeW/YWe
YEi1W02CKEK/BsjAefW8aeRyGbYwKz6zQoAh+hRhIa/50waKMG2qh4Z5Wlfs/mZYogwcHQm6
KI+k765dZ2jZIXuNbVcxwNtwESDCZsiV6zLQLuY3Lm7X7v5cki0iXJD5MwMMRdskCNDMk6M4
qUVMmiEyGz29vF/eru/QmElHAjnKedQMZ9tnKMiTMsbMGBVCjyXhfgK4Gacs6LIvEGyeutQJ
0S9xNM03cNmnFpOA26Wx7WoplUsWq2PJeH+UrkcIO+BzZLpFmRrIPRiPoJYMgKmlTLIsWwCV
FGkhUfgIgaGdJ4MD4GjakIpiF0reMITYdcx7GQJeimxW6mZPUTNihis281A7dDBu+/VjzR+u
4zLe6o8XECWYraGsM4Pys01n1+HU5lAKCLwNYUkpu6Q2lNwdd8qxiWVMl+e3y/vlz4+73b+v
p7ffurtvP0/vH4ZxqkpWeYNUtb5t0se1GUVJgvqUYlKItvE2MwNkkQo8eNEvls4MXYaIPzxz
fInTwqNplK31Tqg/EULo5evb5fzVSKEhQRa7vUrdPdS8yZr0wP4h/o1qHGi/qbcxZL/QllqZ
0UcKto5GZeu+RbXLBcwl95wo07LVDTkAkWRFaIGsNABqLoCJBo0OrihUXo+xPoUxbP4V0MkX
MCAqzLdyxFY1vEW5Fdam16UCi6iXFlD5KLqYdZMl2zQZ3MIstCdWrUJ7Bq8+4GoGhfdYKw5o
3aNNAU1D5QFqOtopMIR6wrZLsPPkMWlNKz1padV3ZJcZ4tVA9EUR4yHS62xqxlKWLtjvf58+
sLQzFmas6JjlfXzMYHFtsBHiNnfczU3Xau8KMMuBjlMzGBYEBJYYLXq4WbBuqk1W6m4Y9+wc
ZlnJSJA/544iwO01FdZIO6GAiRkDAxwtd1k0X0xgctGXn4JHY+I0eklIKrzL5hCHCGiwBeaE
qVcQNoW1YXdGduzrT4cAOLg/UJHmeVxWx2vBwyt2eu2PVbDQLtB032wgafBQuzYlEJ2Z6O9x
7Ae8VjBBYDxmKkI2gWltiCHxrm9VMsDGq6s4Y32/DIZ53LoBUiI1pz9Pb6cXyLZ8ej9/M49j
GUEjY0DVtF5Kna6KT/y52rVhZ7XsaILb+mmduJKG1KRaTXWrHA035L7FqqcEXT8GRZ35Cmez
aIo7ClhUs89QBfhjjEk0/QzRArsJayTrIliamTI1JElIupjcGHAgWoX4gBMqREjtaYDrFPL0
iIsQi5DGvtHfpkVWejKljVRXXD70MROJJz2rvT3k88nUN15MjMP/7OiMt8JIHqomw4/sgM1p
MAmXMRMSeZLhITO05pwLIkZ0LTmzRmaYrWnw6ljG1NPdjmCaSP1bLOpQWH+gdY/ZvpEJ58na
C8OMng8xdz80OQI2D2x94KlKBvRCzyM7QK2nSc5XnN3Hed/6FgGcEBZB0Cdd7RQVhwd/wX5u
qLR0aL8VcfTtCn1eKtpoZeZDuCpIHrelfjZQ8F0TYu2UaIaAEYsWoujCYkgtTa1HGDNZOCed
ZaxvU+DadJNqjuo9LZrFlWaUn8KtWuahmcYbonfAsUTb5tv9GiXW130FoSq0O8mRONs/+GQt
iwKBlQisRmAParvPXr6dXs7Pd/RCkPgx7N6WlhljYOtaB+q4QYM3HgosbDjDY5bZdAs8UpVN
trxNdrRz9nqolqiht6JpyV4OvxZRFxkyZCZV1JFxyNpM2nHKKvEDV3H6en5qT39DA+NU6JJT
RuvyLFnQN05uHiSEVvI21Xwxx5+1LKrFzW8RqDw5xA0qr+7TpvpEi8sg+gT3y2D+Cb6ACjYs
NoWfJM6KrUXsJS02W7LZohJBURTCIutKe12Skk81uIiuVLSIRFu3q1leq2YZid39kzWBsen1
DjIad0CvEdd7fj+9Ibgt6sA7B5IoTvJbJAxZXu+ImO5PMabm3UsgZ/0qSVqSq4M7s1O7+O5r
hnDS5JcKGsfvdD++X74xAfkqH+4NVcdnyFEuH3yJPvh5whvMWT+9u5kFaETm08HZBKhwJeis
7iAuD04miYSnYx+FM51Qb01STD9Vz+xmPbNw7mPJIZ16uXdJw891lF3d51OTQ4uAyUoqrnr6
wUFiGdw29BVBnK83LohCtF2Om0aeUROX3k2Geq2D8y5eJyAoWS1hrG3rZoWKYu+o8lY9HqEc
3hNixANnwKzrNwFh5xcKSHxF7svZJOtjmAGCPWooggCu2ETzTdARDYrazX1gl37Ka3LpMwc0
Z5RRgPR2yRBhdK2nQBHdpFhG7Q2SnVOHge4iirOXpOGNmpvpxF/1Cpib4FU3nmKa2GKnxjhh
l357LSs/b7/CYFvAGRfF7w60zkrUUVZIaHr5+faM5LLmfjgilbQBYZfMta5zzO9pQ9Qd3dGf
8zIoY+pOe4VE2qq4FAqvDFYGpyGFOPRxvXZdiTZtWzQTtoz9bWbHGvYJX5PcjmVutwc6BAvU
JLHbvviOfHWLz2lHnWIiAKCvmDBLcRsra1IsrnRF2or0bUts5qUZkQ2Wc52sIdAwWwik2Jtr
VSQz97YYt3lMFy6nxZFemRGeWCj0Vlqy9d2kNqsQNmHLX77YSnBblD2pM9rGZIe+SUkSbkbR
6ykZ2XbYLQru72B4wYvsnLWZ+F4AKR7gWDUhjivexzNlc+UbAa6d65ua2oNQtPferv8BZ2Dg
Fhd2O/m1kwL1wVHoot3rBi8yvmDFBs1Y9oq8LXAhlcrOQeqHayNVH9EkdOxmz9Zq0WjP3wMs
MGz1JbjG2RA8ZBBV5ZHtEKiL1rAswDhJn3zCxjLAvsNBw+CZPoVnbVZ6YBYFN4A8FgFEH4ap
m0+N5L6oPB8Kxlm+rjSlI3SzWJuZ6NWzVF/s8BESNmh9BHKlObA1CTWglIzLe86nTaFqytuU
CTWbA8kmd8RB6+WhxeKagBMqbtkCG0udEF/D4oNmhYn5oZAieVDsGIeZgm5NKJwGbb45W1Ap
vqmwTX6PRcgXjk+nH5eP0+vb5RmxqUohRZcdPWiE9iRJu6vKr47dUxsgxXazlr9n6YsIYUYw
+frj/RvCX82GR5MA8LMvqQ0ZGzLAfNS24AjtxwDAxmqGP4ptg71hqiDhKJieKB0c+zhevh7O
b6ch+bXMtEHZ+PxC/33/OP24q17uyF/n11/Bd/D5/Ce7sTphQ2DDr4s+qdh6LanMcWueB0a0
alzdf9mNGguIAgayJC4786VFwrk2MKb7Bo3EJQNJsf6SrNzoMYcUxuDGQKapibRaLoZaUb0B
1ifRWfHOhvZVxk+F93EmZI3zroaiZWUmzLSJ6jDm5THpIijG8RgZdvkaZfgqgCK9bsUzAOmm
URO5frs8fX2+/LB65xx+nQSZ445YERHNBI2gwLGau59Kxow1K3LMHOvfN2+n0/vz0/fT3cPl
LXvw8QaHiaSOsX30YZ8R0qflNtN12XsGo3l1MCDjj4fUjI4NdYeaw/bA/S0ehdv7fxVHfM3A
drWtSRd6ViufN3jxQJepU694E2Fn/X/+8bQn7gEPxVY/VQpgWRs9Q6rh1ac8o8Jdfv44icbX
P8/fwYV/kCtOq3nW6kFs+U/eNaIb8Qwtf74FGRlp1OkhEkhugoYMaHlaorj27R7s82piodA2
CkHwz/7Q4FGnxGZg6SlHqDbDuPFNe+8qrkdzTKyTvPsPP5++s8/H/myNg0VFaf+gv6RxMFzS
wQErMWzOxB7FNtme4g/wgoCuMZUQx+U5IU6NbIvDw74qbI2Fj+RIWiRyuzQLHUhJqSMrhyFD
B0YXRvJgbxxB2AnYTmSnSjxSwnHamYmDlvFisVoZLj4aAkstoJeb4OUWmGOQVs5TbIU9z2vo
wFPM80imU+CPkToF/minUeDvYhrBEnvs0PALX7fja9wV1TpD0ymNFUwXE2xap55Znd7qyRT3
W9UIyPWuTvWXHA0c4+C17gyo7ijbxsjnO8CzSsghhIGBxr8dyXu9Z4Pn+olw0ndV3vK0X9W+
Nmw0B6IIIzJa8tyaeUIoeaJxbh3H8/fzi2fzE4Hx+04qMqWYQErovH7Rww19OYar+cIeHBWj
41OHbVUV1JF2myYdbBnkz7vthRG+XHTOJarfVp0MitxXZZKC9NYHTSdjJ3e480JGF0zHqFPC
eY7GndZPHQ1xmGgdEw8aPB6yLrU74dwt2B1bPZ1Ig1/Zd/0Wzs9DGtp3W5e6Q4TKGd0+7YwI
QQZYcVRW+i0OJalrUy1oEg3fTbLBtsX02JIxClL6z8fz5UVlbHRGShCzI228mprmixLjMWKX
WMjwEOnurSPcClImEXVbzgLdyVPCxd4L1slFRgnCR9MuV4sIO3NLAlrMZrqfqgSrVDMYgvB0
cZEZ+q1Ii6p5RBdDhg5F2Wpnd/aDSYrWBIiY5K0ezB7AdVZu68p8ZAV4W1XYhYwXSfWwz5wY
4lKZ8Xa6IpWm7HwFsJ/s3nP++g2ZfiAl8Sogx6lhlAbwlmbBFIsXAshNfJ8aDVye3r5i9WdA
/X+VPUlzGzmvf8U1p/eqMt9YsmLLhxyobkrquDf3Ism+dDmOkqgmsV1eapL36x/ApZsg0Zp8
hxlHAJo7QRDEcjE/fe9Sj61GpKWh2Ig5JfzoI9gMCrdtdiQxGmKVApnbtxbXrdMI86z4dWlk
Ey0oGLVjQTRqixixMTRoE5OWfiWrNOENXRX6SDZjxNsng5FK421EW+87AyPMqMcpcJ0sNg0F
JdnKB+wmAcQNemBAXVN6pesk7Okq84cjua7Pp6d8iFTEp2WExq5w0eG1m4bGD0bo4et6NDTy
QMA4JhAqpd4ZGXd17UvqkvaaM0dT8B1/T0OciiweZ2O6byRRkTpdW30F3AkKoPcJBTGvDU3Z
+i2yh8xIjYN9iAtUFgN+SXU6nUdlyt24FNqPP6+B1Sg9TW2tQWN+uj0WZnScAJ8UR7Hq9B/H
JjJib+gGua4CrtL7wDuw296nBB1R70Gac9wk7elTXeOEOHo12LQJYUIf1YuUSNgIAWauYeNF
WBacPlQfbtBQC/8aYQiqWzEZp7KTraphWtHUIGac+jHmXQtSzxPXq3091z1wFErVdf+8D12P
aWJZ5D1AUTeSfzhCdN5krcMQjQyG5YJQskhyEhq0gAMblbplhH5PZPQJLqtHAq+j26TvbGy1
YP7c980sMasncU9TLqKwcaPECwtvUrElZRE1rKeotraOitClTWNEs764DIC7ekJCqimo0r/O
3gdgdaLR1aXgR44yQoG/ohF/QWMs7vk5ESTM6oXfJn3erLY+PBV5Q/0WDVwfM6N1hGE6BrA2
5oS7A+eCp+nQsiD8+thjuqboVWx+P3S+IDfZnIajN1YAC1LdGDhyyqycvGcDQWmSIkI346BE
E53DK7A34h4tL0zAQOHdKm2lj8SwLm5lxgDIuhEcd2OwVMarQIdNWt+c1G+fXtR9euC4xnWf
5o10gHBXKZMuJmgEWxEF7x5FQ+R7RI/Fo1Cp61ZZF5SnbV48d12DwNdV2wruGNJUl2Ofo7Ea
3oH4Aw67iAt6rlOeHifqVrv0t8gmU/Hf0J2hpMaN10AqditF5HdwwKoxQpJO5IL3Gmc+CKfW
vDipPJEUo32EbDPoJ11d0See3nILxyGccO0mZNNeOoi8nurkiG76FPUFpoCtRSMYMDPzpk1H
BrY3bSqqiug0XGTseb67uBp2b8VehVwikW4KWjbeRbTfDR0yvd92wMRHpkZv6fAjzRA4OJ40
eMQzRdWYNiYvmCmwskpQnj5Juk21m6JpF7McDUUFUo6//q1IpwMUXbxX6om0BbmlYpaHOl+5
6dYIZsKzDVyROygZmtY2rIOuSzZXZt5BxXCl6KbzPFPpjEdQ4YghimtSVp6NuKn3aFMP/Q5N
ssa5HaJbN8itBe7qoD8IXsdZElQhynKNSZCzOIO1w50mSFZEMi0alLhi6VWohCiu18bK5Xp2
Ork80nt9nMMa8sZSwfXrWljs9ciq6glUFuWaKdGkm627pcyaottwtbYmjfUoSs3/WOFcrTAM
89PzXbiVKqHMVkI43GDxAD7z8u8qXK8VVb92pyNota25SacUR4aSEsZ1EvKi4WkjOA56lJfe
EnHm6hGXOtAGi1Tcz6JJB6zy2GPq9Mg3hpItG3WbUAT72Hp2+NmYh7oV24or3jdcZQG3Yt2R
4XVpvDnuUeGwDldAkjVKtbvRSobJGTQehi88swaKmaEYH8AmWc9OL45sXa1vADz8CJiX0iZM
LmddOeVM2ZEkFkZ2pL2Is/mk3yukTJV4ynChkTI/Xkwnstsmt0OZSq1kboH0iAGpHSN6eGOv
EpVOJ9620teqKymzhbjxE2sGeKbxvR5QncR8nl1KJ/kcbEqy1o9ufdjH/mZNBXynZHyO8hQ4
w1U9Yu9v9BEfukRe3YNQT/Zkz+Oq8LPpjoSBioVz07YB3t2foRZcg5U6I+EiqQz4IioaR4mk
PYQ7uWxr6ddi7zES7SSDNlgsKU6j0BrdqwePWq8SfWYtubLVS1AdC9ds0fJNr5QezrQDxVyv
HaZ8tUcxSo2bYtuyEHYwNstzYB9+r6yBH/sJxj6EYVqV7vUWQ8/U5TCmg+JGhTnVJfG6NbSa
DdA6ruD25PX57v7w8DXUG9auYh9+oPsJnPEL4clWAwoNiFibdaCw2SIcUF20VeRmGAlxTMYY
B7tsKvLkq/d6sw4hNANcD12xtHVD4if2cDjfOFVgX0XDVWFTL/Sblhly+5HRkAwGg/C7y1aV
1Z4wtfsk6Ck2tMJYepcViExekswApZ4t2Notae1HmholjTacarunQj7bUXVQjzOsmIQj65FJ
JGenI7hMROtdMWWwOtya2zXTzGUl5a00eLZjpjUl5gkyBiBjHavkKnFdMIslD1fAeJkGQw2w
Tiy5JdajySomw5mV/oC6QTHgh0p7iDGt8iKWFJMJdV2kr90OYu2manHgAqP+LUdQJnqpg6oj
l18ryEJizDUyEgAuIvYFQPYPx/BPYl9rdpYL7hkt5meEadvJ3oTYTUceWmK2u07Eq4vLKdmJ
BlxPZqfcyzai6fAhpHfMs+aRTMW9FAIHTkluZ3XC+1CkSeaFskSQMZbkTbJVIlv4dy6jhrIo
C/UzUPu4eca/ZoZ0nMo2pLoeaYbqRVGDkHA2QhE8IBJsnwnX0fG2SMBNmvbuGeYYI1OqG2nM
SUI6yKWOAThEpaUGCWp9LQ+Y+0hJjMT8ewOX01g0cGzBXUtUNc9KavRYEWQlyF0z7fhsR7vm
rKMCnQGBhFonsGYjbj1YmlpGbUVSfwFm1rlKEAUAyaFbFpVqiFfX7Dfqmh2py0/VhLArEKia
zoYItvLmIp7SX/63UEm2iOAUIHr/BMYZMCR7kQUCaUSzqViM8u/xPS/CMrudaJqKLeFfhsWl
C4fmo23x8EL7L+V9HC3HGyVF2IgmQRdKZ1B2QZUIMX5T3YYPdYck123R8O/cu39pM+Jd+yP8
XeRw4Mo+Pxgpy+Aw9GLC+3Yg1VZUvFHMzg4Gi10ta3+T9bhFo2eKReZJeuTT5TT40mBui1wG
Y45NFBzblzucB7ozNUSnYobTw43anKQSA89deTGM0RYTHXNvCAXPhmQeVTdlQ2UXFwxS1IpE
iu420iw/tz8aeGTkB5pFm8BpncPRt8pF01asWmJZB3HFe4BzLimQMgrjKxWagmX0cGLo4OVJ
JGy0O4NUq91RVVRw/GigWnjeeGtE0HWCbSrp3m2XGey2iQ+Yei2IGuq61TbFsp7xC00j/YWm
eDpHXsBkpOKGcMwBBrsvTio8auHPcQKRbgVcCJeYkHHr1u0QJ3ksueXukGQSuluUN1Z8i+7u
v7k56pa1x/MNQHE5b3NpBD7gFKtKcKe8pQnOFg0uFh+xa2niOgYrFG6omoP5RTmYviGuSGH6
p/sa/wmX/b/iTaykCkaoSOriEl+p2Kls46Wddls4X6C2ii7qv5ai+Uvu8P9541XZb5yGLI2s
hu8IZOOT4G+bZjWC20cp4DY2O7vg8EmBIftr2Xz44/DyOJ+/v/xz8oe7bQfStllysrhqvifD
jNTw9vpl7hSeNwyXt4LescHRtgAv+7fPjydfuEFT4oRnfoqgKz+2s4vcZObGTr/RYJPrEdUq
rBUZUqIJRZO6zAqAOPjA4kDCciOTa3/mdZLGlXT4/ZWscnckvTSQTVbSTikAf+Z7NEpwYvHr
diWbdMEu6ExivOmoksJ1eNB/BhZndbfhhDgnYVLr/BYYS0JmXGV56nQVftgVRFamg7ZLu4Ol
7Q4KwV2ccTYylMSNWk0wc9cA3sNMRzHjpV2MYc5H6zmfjGKmo52ej6RX9Ig4LzSPZLQv5+ej
mMsRzOXZ2DeXNHeD9xVvf0KJZnzcRNqyi7EOA1PH9dXNR9o3mY4uBEB5MyTqKEn87tgaeG84
l2K8t5ZifG4txb/105tVCz7nwcHmsgjOG5F09owvcDIbgXvtuiqSeVf5tSsop7VDZCYifC0Q
OS0JwZEEWTfyS9OYvJFtxfqMWJKqAMmULfamStLUfW23mJWQPBwE0KsQDKdL6rlu9ai8TTg9
P+kx2zoQ6q9ILgBE4EHuVgPXf1zPnCKp6LbXLo8nuhYdTWJ///Z8eP3lJDXqDzM3gCP+Aln1
upWo1jES5HDSyqoG4Qy9poAQhPwVq37RdyEZh2V38RquZLISQbRsRJLLBafkMzd5TDNUK+vF
pkoiGsjPkBz52j2qVeYCkHtimUNzW5V+qLwBGR3ugCZJyXAC+2ScnAx3T7xg6ZcY0jBULkTq
2wxmUcfnYEqw8tjQV+EszrTOPvyBQXU+P/7z8O7X3Y+7d98f7z4/HR7evdx92UM5h8/vMGX1
V5zsd5+evvyh5/9q//yw/37y7e758/4BH1mGdWAc8X88Pv86OTwcXg933w//d4dYJwRwBN2v
1Z2p24gKlnrSgMzUNCAJORIHR3UrK6LKVkC0y72C+WYNNx0KmAinGq4MpMAqxspRF3KYzX5g
i7Ak9NiD3e6QsMLuyBhZ9PgQ916m/ibsBw73S9Ff5Z5/Pb0+ntw/Pu9PHp9Pvu2/P+2f3duN
Jgc5rWTDjmqsSFeChDh3wdMQLkXMAkPS+ipKyjUJw0YR4SewLNYsMCStXC32AGMJe9kzaPho
S8RY46/KMqS+KsuwBDTlC0mDXGAUToPUExQ6NolFKrVulxUbvA/krsHwez45JV4tJ9M5ySlv
EHmb8sCwU6X6yzRd/eF8iuwgtc0azgG7pMu3T98P93/+vf91cq9W99fnu6dvvxwGY+a0FkEb
4nDlSDfeSw9jCauYKbLOwq4Cu93I6fv3k0vbaPH2+m3/8Hq4v3vdfz6RD6rlsG9P/jm8fjsR
Ly+P9weFiu9e75j9GUWcKsXODnVYsJ+s4cgV09OySG9Gkk/3W3OVYIbhsG/yOtkwA7EWwOs2
tm8LFZntx+NnV2dkG7EIRzdaLkJYE672yH2c6OsOv02rbQArmDpKrjE7qsCye1XejIR3sUt8
bYc13NMxyGVNm4VtRw95O2jru5dvY2OWibCdaw640z3yW78B2sAOJT583b+8hpVV0dmUmSME
h/XtWOa7SMWVnIYDruHhJELhzeQ0TpYBZsWWPzrUWTxjYBzd+64suaHKEljMynCdexC3nCSL
ud2BYPcaP4Cn78858Nk0pK7XbigPB2gaHCC4sgH8fsIcrmtxFgIzBoYa8kURHpbNqppchgVv
S12dZlSHp2/kgb/nKuHMA6xrQkFikRZbmsDMQwRpO+xKEpirLAm5ciR0vsSMimgO9gg/RHQ4
yNqQPBCc1N/xsmqR1oKZd8udGZ5bldqrw6+qzrhbvp2pbcGOoIEPY6Hn7PHH0/P+5UUL5n5F
IAmlouHEactxbwumffORcDj9RyPJvHr0mndcNQS3dRPGeanuHj4//jjJ33582j+frPYP+2f/
umFWXl4nXVRyEmFcLVYqTyqPYTmvxnDMSmG44wwRAfBjghcSiaa+5U2AxQo6E+PPFee/Hz49
38H14fnx7fXwwBwhabJg9x/CDVcOs9+GNCxOr9yjn2sSHtWLRsdLcCWoEB2P9M2eFCD8Jbfy
w+QYyVB9sBQdsqNLtu/q70hZSN3zb7+o9ZZ7VqxvskyiXkKpNNArYei1gyzbRWpo6nZhyIZH
+fenl10kK6MPkYxlzKCUuYrqOT65bpAQCwyJ9ULcP79iPCOQWV9U+gvMeHj3+gbXzPtv+/u/
4c5Kc13jE0DXVOg2FVuFD29Kq0lhBUZX+AjIE9vHtt9ohh2wRZKL6ka/Jy/thkpHdxIaQoiq
q0S+oowfHb75J/1FAucoJnd2k+can1Q4YvOovOmWlXK7ISluHZJU5iPYHF1vmyT1TK+qmJVc
MKy4hItYtiC5prWyTKRh8ZgP25pF2ZlostI8grmbLYLLCHAtApqcU4pQvIu6pGk7+hWVMOFn
n7ic7hCFgRUuFzfccyQhmDGfimrrHWcexWIkUDhg2ScTgBPBM3KeeWCbhzJ15EiPvRA9WDSJ
PC4yp/ucLQuyDzgKUvIuBwex8gaspOvFhVA0pg3hMxa+u0Ww/7vbzc8DmPLKKEPaRJzPAqCo
Mg7WrGFZBghMhR2Wu4g+BjCzQAxw6FC3uk1KFrG7ZcEwHuFGcPW1BqXsHzeYLpEYkogaI/DC
jtpI6FYlnPMbVZcJdWHQIGXqRXYZwnWuYAPIVWzfFQI7YAfEgF7hEIEeQqgGdptTRWuFE3Fc
dU13PlskjYc2lXUqHoKonTcJhMLQpKJCd4G1pJ7F9TYpmnRByQX6+va29xwCusHuK9uDhcwj
EK8qNkPOKtVz4ewjNCYcTJecuUuLBf3lchJ/gpsCbnvuco3S264RTgkYYAQOdIdNZmUCG5Ds
8qUbS6xIYmWGDjycLANYGrbeTVwXYWtWssHwQcUydtfPssgbaxlIobVHNP85DyAuN1ag85+T
iQe6+DkhrFIB0dEuxSJ5gy4kEXDk5MdJMFFtN/vJ5dS1rTkNqp6c/pwcKRPTzPycjBYJ6Mn0
53TqdRK27eT855kPPnfHrEbvndTdKTU6nxUps3VKdB0imvAeBZhKar+9rBRomgXLlKFrRRQh
71mmbb32zKpq2LCeYXKJbuecwXex+ChWzn0Cn6/yFT1AjZAUyDj0FccKawr69Hx4eP37BG5V
J59/7F/ctx3HRgYYos69wQuRGh+JlPfliLQ3UpcWqxTEpbTXvF+MUly3iWw+zPrdCCOIT/FB
CTOHx9zkAsM0j5kGErznuQOi9aJAkVpWFVCRkJdIDf+BmLcoahIpe3Ts+iv34fv+z9fDDyOc
vijSew1/Dl9TlxVUrWweP0xOpzN3pktMYoPNpFGLpYiV8h+QTI/XgAZpEI4zODlc5mZ4tVR5
h9FuJxNN5Jw6Pka1CW2FiUGoLmVZoNvYVoorfOGFG3fLC+6/Oxpq7NS9/nBv12y8//T29Ss+
iyUPL6/Pbz/2D69khWZipVOOsAGrTENrfwCWtTpwtp2gWap6LL6tKAJlv8qfbLSkkVdJdS4o
lnC1olG38Td3E+zZx6IWGF4iTxq44PotVVh2vH9rBOlwoGWaZAYC7bqC+6B5z+zLJfwCt6rc
NTKvE/85lJSMhOrI59kKFlNscz7UHiLLIqkL30B4KBr2x/JI7drwlHsEM/sjdUUENYVmoID3
p7Dg/fX0b3A8M9RJ02llxfnp6anfqJ62f09eHutDT67ezevIXw20Q+rRu0VOyt/E4XCKDZXM
Yy1+HSlvwzGdQezUNEnVtIJZVQYxOvo69qt6Y2dmV3MalCnH5+8KT2eU7QPOt05Wa09W7ydX
dR9tpZeeiTWDPr7TRe2a63gIfLPxhF1tAKGxoapMY7dFhboI4DMDSwDpX9/ufGODYXN6C3ut
Y/7pZyIkOiken17enaSP93+/PWnGvL57+Oqa2wqVvAlOAeIVQcDojtWiEm5YUcWyQY+IFvUK
Dey2YiQ1nkJ2awx20cA1hSXaXsM5BKdRXPC6oeM90ZZMcPJ8fsPjxmVcZPl7puUaSNPQKNhg
Cm8NNJiy6bijAHUlZakZllZH4UvqwJz/5+Xp8ICvq9CFH2+v+597+Mf+9f4///nP/zqaKnRO
UUWulAjoXxvKChYo56uiEZXY6iJykBvHtHKKAPs4ur3wXts2cieDc9WmaPThI+TbrcaovCwg
Sq99gmpbyyz4TLXQ20MIi2XJkTJgfTGEaiX/CQ4uXm2tjF3TijAeF15LO1+BNXRoXL1TR8vw
eyu//xeLwpan3PbxHrtMhetCpPiV9ekfWojyHFo/tXktZQwrXKukxnmpPiwp0/hbyxaf717v
TlCouEc9LIler0Yyodobxb8N0GeurNyuUNq8j+g21Rmed7FoBIrzVWs9qzyOMNJMWn5UwTDk
TSLSPlh3FbUcmzCbyE0T24O8znoTbKV2oMOQmuHCQYz7DefkCCQg1tACHByeikraV9wGMxVP
J14FuBhGSpbXg28N+UgbS3Yrtcrg9E0KPnwKHTNvn1+by0KlDu/gjqX2FIiNqIJ29cbQo3XR
lKk+fRtpI+U4uxGgeXTTFG5wkaLUXXX0euoMXra5vt0cx0JXyzVPY2+SfqwMXYDeiZlykoap
Qo29R4JOJGqGkBJkWKLkURSR+VCX4iwoVXZEmavSAyza5dJtqE5PgPQJeQGFocMh1mHwg+6V
lZQZbKPqmm9cUJ7VavkFGUJGpRXwokVRKI2Y/YbXCdFJ48VXJbgeIcDgwyBOHy1DHfchgZ2c
LSy1oLNmys20Uu8dRdrVOQiqsIiZIvW3C+C/GMW4KpYYHoPsP4KTY1dMixY5sEqBj276OxlO
H4MxdfQ9GypPVcosNBMfYxx2O6glx9RG35hu8mYdkKLXHtAnqxXh8Hps9FJO8o8k1MKwPget
MrsnOLQtWKRKLY0D56zpCNObmOH097id60DbbBGNAP5depx52I0BRT/SLg3i+vXE8Wqne3yN
LkUfJUFts1imDY2b5cwJbuixo4dMUnhM1AIjGbPessOVUIe+MtoSSTwhzBGjaQJ9w9PjP/vn
p3vuQDbCXBKrgAr1ze2iIANbllFvJbuVVVWw+gQg0kiXG+Lq0mwFxEcQTM9nLr3M2lTtNHsX
6JlsjI/uwGA9De2wVGDJ7WDOQlxWJ53WCrNvo1gtcme8WKkHnVF1586zhMLfVqnAsj5NAONU
g7S9SDkPBbeMriq6jMS90TcSj33EiTlrRsYcHyBu/EuXhwARIPMHwUXDeol4pw+mIHVf/nD6
88vp6enky5e5S1o26PtJVLzBsnN16c3+5RUldLxlRpi96e7r3nGOaXP3lUGH4FDtcFWRQ2QO
HyZ3akcFjEJjlQAxYsRtheVOLWjDOknUARgHlsitx/j22o+PbewrYJmBrqKGIwU4qeZo1BgT
6dlFWIG4o2QBfTVVVlosIcx5mFSZOlOws2PbqG5AWVLXWEtcRG1mTiTvjrRI9PjwLszem8r/
A04ObJEC7gEA

--6TrnltStXW4iwmi0--
