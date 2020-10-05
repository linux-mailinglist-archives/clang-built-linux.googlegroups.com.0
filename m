Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVXJ535QKGQE5TDTSLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 51544284324
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Oct 2020 02:05:44 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id w23sf354952plq.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Oct 2020 17:05:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601942743; cv=pass;
        d=google.com; s=arc-20160816;
        b=Oul+PBA5sZT4VzSV5tkndqMSkp86sUcc+2Tw9Q4UXP9ec5EOglpY1QZdkffft2RZ8F
         guRLq4WKqAh10aZzjylgKyAlqr8dOGusZmGWZ+bJaUCWAmt3hg/W+HZpoN1dYhxd2BX6
         +jV8fn0XzCXyGghJrn6TS0o7+68EW+J8fSSEWZUErZrx1Jcerclcw8RH9gnYFBLRaz0Q
         aLQBIE1JN5vCKp7fxZGvHpkbIys2je+kQqb0+B2l143mqBBD/TIM6JRwQQbUI8rQzXm4
         qzGgt3RPnxeCNn3520SbxAJksZbIIaHa7yqogtNIMDkJZtgruF+q+5rUI4clNc/WpoMc
         qrMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=7hHUaHUuTDfrYJsM2k0VOtJsXq/OsSz/n66g0Y4P2QE=;
        b=LYkPpBgfsWKLwUm7bc27T6qId5zhyhBq3nsdiHNCqVIUVq7/Itt3tDPafhRJ9caz3K
         rniinYaUUdD6VKYpMD/oSMor/O9TZlDOg/tgaeg+8uD9e33U70rbW/clinFM+7bEnZK/
         Fvpg0OjciIzDyG2XEuAIZ4Gz6kqoQddM5LzMavsQfWuTB/cldVUawdH27XB3hnDKvX50
         CNqXAraZqIMoAPTCtgeo1O9KCYwiV1iPbd6ivEBUwbdvplM35sjPFUPlSBRecBFTk4Qe
         DsR9HENDGt/QrY06FJK66SImZ9OnHWU/cP6HeHHfM8GVOt45FMkWslbOxfPeg4f0QRIx
         8KYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7hHUaHUuTDfrYJsM2k0VOtJsXq/OsSz/n66g0Y4P2QE=;
        b=f3iHYSdYvwj9K7sfp/mpdqja0YKV/NbOvxvwlCoo81zNvWAooIOAXzxgeYXnNoH0Be
         cvTap+GGPhj3ib7gLOgg7/o5kFPTNMqEXauCuOrhsp3BtO1yRj+eXDg/gLG2Jv+Al/ri
         I8ujRrPyduDdw15hCWbVC7DYhx64/vBJsGY+Eg5gv0lYTajxrUWsPCrsigb5WQKrEjgx
         RPX4uei5pJYt7fFmjWMDHcWX8ejNJLlMHEdGvtB3Bpjm5mq7G3v2LI3UTCt7Me1gE+JW
         x4YYgvkB3ubLJ0ih7Iygy4yKcmyiS5Bf3QYpQ1jl5gYVCcV1PqAGcsbNptEK6P/aEMCr
         KBlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7hHUaHUuTDfrYJsM2k0VOtJsXq/OsSz/n66g0Y4P2QE=;
        b=QtZ8wbRIq3b2FR3qfRl4sUBGZk+uESZBszcKwW7zPSXBu4spKgnQUguFRsuTounY1E
         KIA66omGwuj+1lX6azy1OoD05CLOl8qvww4mGW0qIxLSvocOBMUD+8Mf6p7PgIhmjaDs
         SP07aGR1u8YOA9CUaaRiGwl1BMVV/3owu9IK9Ji49LcjACBL5NoDbsT2cjwAAg2O336C
         kLozqZ7W/t9t9jIrBV7P6+pRkyT0ZgwpgGELpPvjgD9KNuDgtX/0YB2DQpwVU0mSTUpC
         OFM1U7WQqB0x4Oc5/kI63Zx5hV09KZKVGgf8pFatNiMNnwXylNOFh4ow0Ss9u6xKGdlL
         4Dag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qUhRHo9WfvFANOaL6Tp6PflSOH4cd6wGXpt83aiD1B/u1759r
	IfSDeCBAIGF7wxiXMyFaOvM=
X-Google-Smtp-Source: ABdhPJxqoGkU1xvvvfAd+Ts1hUafSBq6Jofsp6lr9ambw6++NinS5+ciKk84m7L65lZ1fr5UAVrm3g==
X-Received: by 2002:aa7:8d4a:0:b029:152:4da3:df1 with SMTP id s10-20020aa78d4a0000b02901524da30df1mr1974586pfe.78.1601942742536;
        Mon, 05 Oct 2020 17:05:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4486:: with SMTP id t6ls631082pjg.0.canary-gmail;
 Mon, 05 Oct 2020 17:05:42 -0700 (PDT)
X-Received: by 2002:a17:902:dc86:b029:d3:d3cb:7748 with SMTP id n6-20020a170902dc86b02900d3d3cb7748mr878905pld.22.1601942741887;
        Mon, 05 Oct 2020 17:05:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601942741; cv=none;
        d=google.com; s=arc-20160816;
        b=KzAeBsyYy7lszLl/2xJ1fG5dzuIlv1xcL/HVhjrNhHIVt61SdASA0v7fi8gxftxXWy
         63z5BHf2OriMeiuOEI08wLWUi4frE4mwQTu1P2V670e4Jyn8eELovI6Vq7VON2u1pe49
         IgLu+Nx3f9qHrHt8wJQsUIsAe5sMDEndFzwZB1s/5DiUYW14pK92Z92yXOdH/lOmngfL
         AeF58F94CtZuLk6I8t2vliWVJeNgJD3we6rhYtAelCgJZL8D3HHRwd67GiA/VhYIQgeH
         ndux83SLUOuMtOqM8f6jgdhOdxr5ql+eWDkGE36iXE3W/DZ8MAppxIaYZ38kMvXBbDxL
         T+tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=H3QjkPklXLICTz4iMdyarwhRG7Ox4wYrfTNKXHf0pto=;
        b=UmbSNtWnh+0ZzXbAzNLyPc7oUMr8MWVdCrPOEwRPwjRPMCXyEKWEoQVlA1zP3feyjd
         3+wwacFyUHwprLZI2eE2bkPU5O8DhFvhh4zXx8+oZ4ktSr22IDPaRgIDvsf1b+s5bK5y
         rbtdTYPbScqnEgawmUPnPB5Z+iukL9lCGAsmzmJE4D83r+sHQlEZ2U7E9QbBpzh2Hhg5
         Io+LeprMHH0o3v293r+iS3XWk2Fo6MDgMd50zhzFLFgwZtcCIE+qWzLIhkRpXi3cYNOX
         BYwnij/gsD+WkbCPOSBgCPHrKgPzYBMwD3QxmyL8QaayG3i5he/5QZPPp9psUUcTla3V
         zpIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id mv6si73480pjb.0.2020.10.05.17.05.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2020 17:05:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: 9jtgkTMzdhCVQtp6BmyuK4q52J6LHpQvGd4T6/vdI4gwRiH4xlJ9E1nSr/QWi2pnILuvgtC1CQ
 HVIwkoq35nxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="248977423"
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; 
   d="gz'50?scan'50,208,50";a="248977423"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2020 17:00:57 -0700
IronPort-SDR: xRuQA7q0eZMljfhc8f1xSNtq5E2VfMEDSAfzn3kPA2PubUsdWKxu3B4Gunw8pe+yrmhayK7Gbf
 A8GOGxaOtnqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,341,1596524400"; 
   d="gz'50?scan'50,208,50";a="387273731"
Received: from lkp-server02.sh.intel.com (HELO b5ae2f167493) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 05 Oct 2020 16:52:35 -0700
Received: from kbuild by b5ae2f167493 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kPaHR-0000zl-OR; Mon, 05 Oct 2020 23:52:33 +0000
Date: Tue, 6 Oct 2020 07:51:58 +0800
From: kernel test robot <lkp@intel.com>
To: Pujin Shi <shipujin.t@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Jiri Slaby <jirislaby@kernel.org>, linux-serial@vger.kernel.org,
	linux-kernel@vger.kernel.org, hankinsea@gmail.com,
	shipujin.t@gmail.com
Subject: Re: [PATCH] tty: serial: mvebu-uart: Remove unused variable 'ret'
Message-ID: <202010060711.5pN0bDpq-lkp@intel.com>
References: <20200930081459.1269-1-shipujin.t@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="RnlQjJ0d97Da+TV1"
Content-Disposition: inline
In-Reply-To: <20200930081459.1269-1-shipujin.t@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--RnlQjJ0d97Da+TV1
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Pujin,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on usb/usb-testing]
[also build test ERROR on v5.9-rc8]
[cannot apply to tty/tty-testing next-20201002]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Pujin-Shi/tty-serial-mvebu-uart-Remove-unused-variable-ret/20200930-161555
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
config: powerpc-randconfig-r035-20201005 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 39fc4a0b0af69772ee360b5f729b1ec453217793)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://github.com/0day-ci/linux/commit/c2857134bbb1c0f004f4d026e62a2b90aa2015a0
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Pujin-Shi/tty-serial-mvebu-uart-Remove-unused-variable-ret/20200930-161555
        git checkout c2857134bbb1c0f004f4d026e62a2b90aa2015a0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> drivers/tty/serial/mvebu-uart.c:915:2: error: use of undeclared identifier 'ret'; did you mean 'reg'?
           ret = uart_add_one_port(&mvebu_uart_driver, port);
           ^~~
           reg
   drivers/tty/serial/mvebu-uart.c:801:19: note: 'reg' declared here
           struct resource *reg = platform_get_resource(pdev, IORESOURCE_MEM, 0);
                            ^
>> drivers/tty/serial/mvebu-uart.c:915:6: warning: incompatible integer to pointer conversion assigning to 'struct resource *' from 'int' [-Wint-conversion]
           ret = uart_add_one_port(&mvebu_uart_driver, port);
               ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/tty/serial/mvebu-uart.c:916:6: error: use of undeclared identifier 'ret'; did you mean 'reg'?
           if (ret)
               ^~~
               reg
   drivers/tty/serial/mvebu-uart.c:801:19: note: 'reg' declared here
           struct resource *reg = platform_get_resource(pdev, IORESOURCE_MEM, 0);
                            ^
   drivers/tty/serial/mvebu-uart.c:917:10: error: use of undeclared identifier 'ret'; did you mean 'reg'?
                   return ret;
                          ^~~
                          reg
   drivers/tty/serial/mvebu-uart.c:801:19: note: 'reg' declared here
           struct resource *reg = platform_get_resource(pdev, IORESOURCE_MEM, 0);
                            ^
>> drivers/tty/serial/mvebu-uart.c:917:10: warning: incompatible pointer to integer conversion returning 'struct resource *' from a function with result type 'int' [-Wint-conversion]
                   return ret;
                          ^~~
   2 warnings and 3 errors generated.

vim +915 drivers/tty/serial/mvebu-uart.c

94228f9561bb6c Allen Yan     2017-10-13  798  
30530791a7a032 Wilson Ding   2016-02-16  799  static int mvebu_uart_probe(struct platform_device *pdev)
30530791a7a032 Wilson Ding   2016-02-16  800  {
30530791a7a032 Wilson Ding   2016-02-16  801  	struct resource *reg = platform_get_resource(pdev, IORESOURCE_MEM, 0);
5218d76958644a Miquel Raynal 2017-10-13  802  	const struct of_device_id *match = of_match_device(mvebu_uart_of_match,
5218d76958644a Miquel Raynal 2017-10-13  803  							   &pdev->dev);
30530791a7a032 Wilson Ding   2016-02-16  804  	struct uart_port *port;
5218d76958644a Miquel Raynal 2017-10-13  805  	struct mvebu_uart *mvuart;
c2857134bbb1c0 Pujin Shi     2020-09-30  806  	int id, irq;
30530791a7a032 Wilson Ding   2016-02-16  807  
95f787685a224e Miquel Raynal 2017-10-13  808  	if (!reg) {
95f787685a224e Miquel Raynal 2017-10-13  809  		dev_err(&pdev->dev, "no registers defined\n");
30530791a7a032 Wilson Ding   2016-02-16  810  		return -EINVAL;
30530791a7a032 Wilson Ding   2016-02-16  811  	}
30530791a7a032 Wilson Ding   2016-02-16  812  
32f47179833b63 Aditya Pakki  2019-03-18  813  	if (!match)
32f47179833b63 Aditya Pakki  2019-03-18  814  		return -ENODEV;
32f47179833b63 Aditya Pakki  2019-03-18  815  
94228f9561bb6c Allen Yan     2017-10-13  816  	/* Assume that all UART ports have a DT alias or none has */
94228f9561bb6c Allen Yan     2017-10-13  817  	id = of_alias_get_id(pdev->dev.of_node, "serial");
94228f9561bb6c Allen Yan     2017-10-13  818  	if (!pdev->dev.of_node || id < 0)
94228f9561bb6c Allen Yan     2017-10-13  819  		pdev->id = uart_num_counter++;
94228f9561bb6c Allen Yan     2017-10-13  820  	else
94228f9561bb6c Allen Yan     2017-10-13  821  		pdev->id = id;
94228f9561bb6c Allen Yan     2017-10-13  822  
94228f9561bb6c Allen Yan     2017-10-13  823  	if (pdev->id >= MVEBU_NR_UARTS) {
94228f9561bb6c Allen Yan     2017-10-13  824  		dev_err(&pdev->dev, "cannot have more than %d UART ports\n",
94228f9561bb6c Allen Yan     2017-10-13  825  			MVEBU_NR_UARTS);
94228f9561bb6c Allen Yan     2017-10-13  826  		return -EINVAL;
94228f9561bb6c Allen Yan     2017-10-13  827  	}
94228f9561bb6c Allen Yan     2017-10-13  828  
94228f9561bb6c Allen Yan     2017-10-13  829  	port = &mvebu_uart_ports[pdev->id];
30530791a7a032 Wilson Ding   2016-02-16  830  
30530791a7a032 Wilson Ding   2016-02-16  831  	spin_lock_init(&port->lock);
30530791a7a032 Wilson Ding   2016-02-16  832  
30530791a7a032 Wilson Ding   2016-02-16  833  	port->dev        = &pdev->dev;
30530791a7a032 Wilson Ding   2016-02-16  834  	port->type       = PORT_MVEBU;
30530791a7a032 Wilson Ding   2016-02-16  835  	port->ops        = &mvebu_uart_ops;
30530791a7a032 Wilson Ding   2016-02-16  836  	port->regshift   = 0;
30530791a7a032 Wilson Ding   2016-02-16  837  
30530791a7a032 Wilson Ding   2016-02-16  838  	port->fifosize   = 32;
30530791a7a032 Wilson Ding   2016-02-16  839  	port->iotype     = UPIO_MEM32;
30530791a7a032 Wilson Ding   2016-02-16  840  	port->flags      = UPF_FIXED_PORT;
94228f9561bb6c Allen Yan     2017-10-13  841  	port->line       = pdev->id;
30530791a7a032 Wilson Ding   2016-02-16  842  
95f787685a224e Miquel Raynal 2017-10-13  843  	/*
95f787685a224e Miquel Raynal 2017-10-13  844  	 * IRQ number is not stored in this structure because we may have two of
95f787685a224e Miquel Raynal 2017-10-13  845  	 * them per port (RX and TX). Instead, use the driver UART structure
95f787685a224e Miquel Raynal 2017-10-13  846  	 * array so called ->irq[].
95f787685a224e Miquel Raynal 2017-10-13  847  	 */
95f787685a224e Miquel Raynal 2017-10-13  848  	port->irq        = 0;
30530791a7a032 Wilson Ding   2016-02-16  849  	port->irqflags   = 0;
30530791a7a032 Wilson Ding   2016-02-16  850  	port->mapbase    = reg->start;
30530791a7a032 Wilson Ding   2016-02-16  851  
30530791a7a032 Wilson Ding   2016-02-16  852  	port->membase = devm_ioremap_resource(&pdev->dev, reg);
30530791a7a032 Wilson Ding   2016-02-16  853  	if (IS_ERR(port->membase))
4a3e208474204e tangbin       2020-03-05  854  		return PTR_ERR(port->membase);
30530791a7a032 Wilson Ding   2016-02-16  855  
5218d76958644a Miquel Raynal 2017-10-13  856  	mvuart = devm_kzalloc(&pdev->dev, sizeof(struct mvebu_uart),
30530791a7a032 Wilson Ding   2016-02-16  857  			      GFP_KERNEL);
5218d76958644a Miquel Raynal 2017-10-13  858  	if (!mvuart)
30530791a7a032 Wilson Ding   2016-02-16  859  		return -ENOMEM;
30530791a7a032 Wilson Ding   2016-02-16  860  
68a0db1d7da20f Allen Yan     2017-10-13  861  	/* Get controller data depending on the compatible string */
5218d76958644a Miquel Raynal 2017-10-13  862  	mvuart->data = (struct mvebu_uart_driver_data *)match->data;
5218d76958644a Miquel Raynal 2017-10-13  863  	mvuart->port = port;
30530791a7a032 Wilson Ding   2016-02-16  864  
5218d76958644a Miquel Raynal 2017-10-13  865  	port->private_data = mvuart;
5218d76958644a Miquel Raynal 2017-10-13  866  	platform_set_drvdata(pdev, mvuart);
30530791a7a032 Wilson Ding   2016-02-16  867  
68a0db1d7da20f Allen Yan     2017-10-13  868  	/* Get fixed clock frequency */
68a0db1d7da20f Allen Yan     2017-10-13  869  	mvuart->clk = devm_clk_get(&pdev->dev, NULL);
68a0db1d7da20f Allen Yan     2017-10-13  870  	if (IS_ERR(mvuart->clk)) {
68a0db1d7da20f Allen Yan     2017-10-13  871  		if (PTR_ERR(mvuart->clk) == -EPROBE_DEFER)
68a0db1d7da20f Allen Yan     2017-10-13  872  			return PTR_ERR(mvuart->clk);
68a0db1d7da20f Allen Yan     2017-10-13  873  
68a0db1d7da20f Allen Yan     2017-10-13  874  		if (IS_EXTENDED(port)) {
68a0db1d7da20f Allen Yan     2017-10-13  875  			dev_err(&pdev->dev, "unable to get UART clock\n");
68a0db1d7da20f Allen Yan     2017-10-13  876  			return PTR_ERR(mvuart->clk);
68a0db1d7da20f Allen Yan     2017-10-13  877  		}
68a0db1d7da20f Allen Yan     2017-10-13  878  	} else {
68a0db1d7da20f Allen Yan     2017-10-13  879  		if (!clk_prepare_enable(mvuart->clk))
68a0db1d7da20f Allen Yan     2017-10-13  880  			port->uartclk = clk_get_rate(mvuart->clk);
68a0db1d7da20f Allen Yan     2017-10-13  881  	}
68a0db1d7da20f Allen Yan     2017-10-13  882  
95f787685a224e Miquel Raynal 2017-10-13  883  	/* Manage interrupts */
95f787685a224e Miquel Raynal 2017-10-13  884  	if (platform_irq_count(pdev) == 1) {
95f787685a224e Miquel Raynal 2017-10-13  885  		/* Old bindings: no name on the single unamed UART0 IRQ */
95f787685a224e Miquel Raynal 2017-10-13  886  		irq = platform_get_irq(pdev, 0);
1df217868178bd Stephen Boyd  2019-07-30  887  		if (irq < 0)
95f787685a224e Miquel Raynal 2017-10-13  888  			return irq;
95f787685a224e Miquel Raynal 2017-10-13  889  
95f787685a224e Miquel Raynal 2017-10-13  890  		mvuart->irq[UART_IRQ_SUM] = irq;
95f787685a224e Miquel Raynal 2017-10-13  891  	} else {
95f787685a224e Miquel Raynal 2017-10-13  892  		/*
95f787685a224e Miquel Raynal 2017-10-13  893  		 * New bindings: named interrupts (RX, TX) for both UARTS,
95f787685a224e Miquel Raynal 2017-10-13  894  		 * only make use of uart-rx and uart-tx interrupts, do not use
95f787685a224e Miquel Raynal 2017-10-13  895  		 * uart-sum of UART0 port.
95f787685a224e Miquel Raynal 2017-10-13  896  		 */
95f787685a224e Miquel Raynal 2017-10-13  897  		irq = platform_get_irq_byname(pdev, "uart-rx");
1df217868178bd Stephen Boyd  2019-07-30  898  		if (irq < 0)
95f787685a224e Miquel Raynal 2017-10-13  899  			return irq;
95f787685a224e Miquel Raynal 2017-10-13  900  
95f787685a224e Miquel Raynal 2017-10-13  901  		mvuart->irq[UART_RX_IRQ] = irq;
95f787685a224e Miquel Raynal 2017-10-13  902  
95f787685a224e Miquel Raynal 2017-10-13  903  		irq = platform_get_irq_byname(pdev, "uart-tx");
1df217868178bd Stephen Boyd  2019-07-30  904  		if (irq < 0)
95f787685a224e Miquel Raynal 2017-10-13  905  			return irq;
95f787685a224e Miquel Raynal 2017-10-13  906  
95f787685a224e Miquel Raynal 2017-10-13  907  		mvuart->irq[UART_TX_IRQ] = irq;
95f787685a224e Miquel Raynal 2017-10-13  908  	}
95f787685a224e Miquel Raynal 2017-10-13  909  
9c3d3ee1239bab Allen Yan     2017-10-13  910  	/* UART Soft Reset*/
9c3d3ee1239bab Allen Yan     2017-10-13  911  	writel(CTRL_SOFT_RST, port->membase + UART_CTRL(port));
9c3d3ee1239bab Allen Yan     2017-10-13  912  	udelay(1);
9c3d3ee1239bab Allen Yan     2017-10-13  913  	writel(0, port->membase + UART_CTRL(port));
9c3d3ee1239bab Allen Yan     2017-10-13  914  
30530791a7a032 Wilson Ding   2016-02-16 @915  	ret = uart_add_one_port(&mvebu_uart_driver, port);
30530791a7a032 Wilson Ding   2016-02-16  916  	if (ret)
30530791a7a032 Wilson Ding   2016-02-16 @917  		return ret;
30530791a7a032 Wilson Ding   2016-02-16  918  	return 0;
30530791a7a032 Wilson Ding   2016-02-16  919  }
30530791a7a032 Wilson Ding   2016-02-16  920  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010060711.5pN0bDpq-lkp%40intel.com.

--RnlQjJ0d97Da+TV1
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--RnlQjJ0d97Da+TV1--
