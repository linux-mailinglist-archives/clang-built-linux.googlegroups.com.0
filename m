Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBT576CAAMGQE2COBBZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id A73CF30F79E
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 17:24:48 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id f6sf3335577iox.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 08:24:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612455887; cv=pass;
        d=google.com; s=arc-20160816;
        b=kzKVL8nwQjTvGSwIbijVn/PS/gEAfWPCfVU0QSKgcJy1DTDzewnJaxjK/OKzpjDkCB
         DNdE0hGwZvzcenroOO5dpZMR2UjKP5B6pcRlZMZC3Bop6x/Y0XOEmHF6p8X4DMzpoAZV
         IapyuwnofuY3w6O6fop1bQVBS7Z3odIiwXZzzjXXL9OwPS+W/lZco8ZVj6BzomikZ6q4
         S94aGBO8pf4207dYwxCmqSuqfruZyWGTI2So4BubT0IRomT807Rqsqoorv/kRh7RmVH0
         1cFulvogqbFLP0QVFvY19HnxNHBWDGZokjzazHN+WlkbLv5Bn8HExk2eQwBQ17o6Q/Lt
         cohg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=yWAOyKmi9YAd8FcRjhPPnjz3Q9Dkj+GHS22Z4XmYzwA=;
        b=vcGidBmyO+bjMjt5tyiG01Xp6GHt3Vht0GAQ3SFU+a/Bw7SGJv934q7YBGQ7bK/aJJ
         /VYW7wv+h72iNEt/xZSbzfKv4xH7hgZr9jtUfuSzXejQSZntFBNEGuDvtQ/NScGZPNZ/
         g3FBk6Fr2n6Zjw7g7rbRRLJw9El44eaDVygJLktSdDkIVqghL9rcToBuVV5hLMt+iHgZ
         ki8gHd9ibKphY6ntSEXLPhD1sjbeBIU5AQvnwxZCEzx32/NwpYcXPnL4zLQ7AcXPZN59
         PUqpX/qviTJFBBQURi+5mrwez2evT9+Klbbwg5f3v1ZfPUyowKkNuG5Hr25xCJYzc7qV
         GLFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yWAOyKmi9YAd8FcRjhPPnjz3Q9Dkj+GHS22Z4XmYzwA=;
        b=UEuLm7p6t6E/OikckJ1I4BeuZPr8M6sv1xPdGf9StC4cCK6EteMxR/6BYhiD0QCpKQ
         5g2O5FL0G+80mN1kWFlwCG62D9Qw/z7m6ouU8dIqt8E8Lpv+0+S9gtFVoVG+WUbTAH/p
         7ew+hDHCgLlFMf6Bvv/I6pTb66bz/sgA9axAEzDbMV2S1VeyPqHCDwMNLnkOpraB8aEA
         At7RA4G3eCfYdq8bNK0rfAvnvOW/kWMlBJLfiaHe8ebswRmWeO6A1uIPeUe6xlBm9XUI
         LFGdqpvs1sW5rAw6OgNlQ5RKOlNIZMwJUVqo7vF5mvgluQyCf3WfXS+5FI2dRtQKNjq2
         tKrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yWAOyKmi9YAd8FcRjhPPnjz3Q9Dkj+GHS22Z4XmYzwA=;
        b=qL2SYwKnv6oAibbVdz6X/BrpKaZPUJXSHAZKgjVnX+V8+OpaQhVg+rddCb0wP/4Hyi
         4wow8Eeij/3HWlQuzX38zSqb86t4bCGhlegEZRsgxhh3Y8+JyRTQzD1+DwuFbuGfFpGp
         l98qhcamo5s38xiUopT8Yeigu3vjXWxDKl2jQLuR68HXPSEiR3GbNM8ce6r5xjcN+T1F
         74XtuHWX+MIECNo7sW3k+qCd9frx6w85nlq4cni4F0Tp5Pr8BG5yayacS7m9A1w6eN29
         o98vEFHR8o6BXT2Xk1BO908XFdzJAWKxRqpDDZ2OR/YPcrZXKBT3IXeLDTriDSecf/PI
         D6AA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530D32WUk0lztK4POA1Xld2Ax1IOd4FIAJJd9648yBA8GUlcq/vH
	mhahith5XKJ7Z7Ywpi8M8VM=
X-Google-Smtp-Source: ABdhPJyuVZp7S7liqIOY7ufGkdl6jXTgqVme0V8yj5d3h/YcmJsL4OqkGw+FN8NLNTIDBJnPxDlivA==
X-Received: by 2002:a5d:9cc7:: with SMTP id w7mr53173iow.189.1612455887581;
        Thu, 04 Feb 2021 08:24:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1c9:: with SMTP id w9ls997382iot.2.gmail; Thu, 04
 Feb 2021 08:24:47 -0800 (PST)
X-Received: by 2002:a6b:7d42:: with SMTP id d2mr96798ioq.176.1612455886914;
        Thu, 04 Feb 2021 08:24:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612455886; cv=none;
        d=google.com; s=arc-20160816;
        b=uFS9EhqsCqOK2iyHkXt34BhGlpWK6wORDNpFY0MNa4XXTKIhzQkOG+0ygVB2gul0Nn
         gfeZwDlxeNst+iclhBUIscrFQHLFBxfptwK+7eiUbhzww3hAlg9ouOUOm0Z9wIdZZ3mV
         v0z7AxXBLAXcDlHxi+MwjoUCyaOaY8h4I3jDxD03ckrgS6KARb46ymDgVEZRcBfvUzKg
         8mJODb6QDgKqCwWPRnQSAsbHzyPn5e2a8UKNn9HaoMbUmdEm+e3YlPwGg1x/rcL+9Ovm
         q2MtksFZZpOgO1zp2q5Wh/YeXF8IIPkKCJEC/SQJJ3ZmRo10CnNtJx0jI7PpoxYjEdy0
         ucXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=HOlSQLdnL6JkrKxaorR/mPPw7p728cu20RHAlTDNTrI=;
        b=w5WjdGoMnLiVjjueEwO5rxCebEyIKwPlBxOYC47R6pItKK5Ng4az0A9CogbARBNXmQ
         KCINsmQddblhsLKHg1+TlcYBsfywYGgfWUIfz7noeSkQZ7SYjf9dYd1pTWaUF0W+Udwd
         b5pMsCtjr/96dqaYAF3xkC4TIAgo/WRqDKCvW6aXSZZP7i6XUxzFZ356gLGZY4PHhXpo
         vLIVSntzWNI3+S4aW5pQ6LPbDgeurIVmIizKZALp934Xs78wT6sMtttn6Rnsyo7Ve0/9
         7Tsw2tXN5p2Cd0/REZmt5/crzSpSR7/qEu0Gi/yKgF2izJKzivMfIFuDug/WjsrGuU8u
         mI9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id y16si315275ili.3.2021.02.04.08.24.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Feb 2021 08:24:46 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: 9wmE6uZQo9andFf9pJp7/JoBGS9zgAwa5QRuH3xy1kARhb1+0/WimJN9x4QbALDw8S/9brzfxM
 zTt5dscxbgJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="181342421"
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; 
   d="gz'50?scan'50,208,50";a="181342421"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Feb 2021 08:24:39 -0800
IronPort-SDR: R9EC2CbBlKj0e3tjD7LwWfKZCe6ErOTUGROpe9nP7dNjOAys/Umc2njwK5wb7XSTNG9Qq+dqG3
 eOTnlGcQwW6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; 
   d="gz'50?scan'50,208,50";a="397099399"
Received: from lkp-server02.sh.intel.com (HELO 8b832f01bb9c) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 04 Feb 2021 08:24:37 -0800
Received: from kbuild by 8b832f01bb9c with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1l7hQq-00014c-6T; Thu, 04 Feb 2021 16:24:36 +0000
Date: Fri, 5 Feb 2021 00:23:48 +0800
From: kernel test robot <lkp@intel.com>
To: Kyle Tso <kyletso@google.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-usb@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>
Subject: [usb:usb-testing 155/158]
 drivers/platform/chrome/cros_ec_typec.c:778:8: error: use of undeclared
 identifier 'CABLE_ATYPE'
Message-ID: <202102050042.DpTJdrHK-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wac7ysb48OaltWcw"
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


--wac7ysb48OaltWcw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Kyle,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
head:   d021e0694d77ee3cdc5d3fca2c8d53ae7575499a
commit: 0e1d6f55a12e47942ce207dfb93e23049b454c9e [155/158] usb: pd: Update VDO definitions
config: mips-randconfig-r011-20210204 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 275c6af7d7f1ed63a03d05b4484413e447133269)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/commit/?id=0e1d6f55a12e47942ce207dfb93e23049b454c9e
        git remote add usb https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git
        git fetch --no-tags usb usb-testing
        git checkout 0e1d6f55a12e47942ce207dfb93e23049b454c9e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/platform/chrome/cros_ec_typec.c:778:8: error: use of undeclared identifier 'CABLE_ATYPE'
                   case CABLE_ATYPE:
                        ^
>> drivers/platform/chrome/cros_ec_typec.c:781:8: error: use of undeclared identifier 'CABLE_BTYPE'
                   case CABLE_BTYPE:
                        ^
   drivers/platform/chrome/cros_ec_typec.c:1000:3: warning: format specifies type 'unsigned char' but the argument has type 'unsigned int' [-Wformat]
                   typec->pd_ctrl_ver);
                   ^~~~~~~~~~~~~~~~~~
   include/linux/dev_printk.h:123:39: note: expanded from macro 'dev_dbg'
           dynamic_dev_dbg(dev, dev_fmt(fmt), ##__VA_ARGS__)
                                        ~~~     ^~~~~~~~~~~
   include/linux/dynamic_debug.h:162:19: note: expanded from macro 'dynamic_dev_dbg'
                              dev, fmt, ##__VA_ARGS__)
                                   ~~~    ^~~~~~~~~~~
   include/linux/dynamic_debug.h:147:56: note: expanded from macro '_dynamic_func_call'
           __dynamic_func_call(__UNIQUE_ID(ddebug), fmt, func, ##__VA_ARGS__)
                                                                 ^~~~~~~~~~~
   include/linux/dynamic_debug.h:129:15: note: expanded from macro '__dynamic_func_call'
                   func(&id, ##__VA_ARGS__);               \
                               ^~~~~~~~~~~
   1 warning and 2 errors generated.


vim +/CABLE_ATYPE +778 drivers/platform/chrome/cros_ec_typec.c

8fab2755191f86 Prashant Malani 2020-11-16  750  
3b3dd1f0dbfe92 Benson Leung    2021-01-28  751  static int cros_typec_handle_sop_prime_disc(struct cros_typec_data *typec, int port_num, u16 pd_revision)
8b46a212ad11f2 Prashant Malani 2020-11-16  752  {
8b46a212ad11f2 Prashant Malani 2020-11-16  753  	struct cros_typec_port *port = typec->ports[port_num];
8b46a212ad11f2 Prashant Malani 2020-11-16  754  	struct ec_response_typec_discovery *disc = port->disc_data;
f4edab68e10119 Prashant Malani 2020-11-16  755  	struct typec_cable_desc c_desc = {};
f4edab68e10119 Prashant Malani 2020-11-16  756  	struct typec_plug_desc p_desc;
8b46a212ad11f2 Prashant Malani 2020-11-16  757  	struct ec_params_typec_discovery req = {
8b46a212ad11f2 Prashant Malani 2020-11-16  758  		.port = port_num,
8b46a212ad11f2 Prashant Malani 2020-11-16  759  		.partner_type = TYPEC_PARTNER_SOP_PRIME,
8b46a212ad11f2 Prashant Malani 2020-11-16  760  	};
72d6e32bd85bd1 Prashant Malani 2020-11-16  761  	u32 cable_plug_type;
8b46a212ad11f2 Prashant Malani 2020-11-16  762  	int ret = 0;
8b46a212ad11f2 Prashant Malani 2020-11-16  763  
8b46a212ad11f2 Prashant Malani 2020-11-16  764  	memset(disc, 0, EC_PROTO2_MAX_RESPONSE_SIZE);
8b46a212ad11f2 Prashant Malani 2020-11-16  765  	ret = cros_typec_ec_command(typec, 0, EC_CMD_TYPEC_DISCOVERY, &req, sizeof(req),
8b46a212ad11f2 Prashant Malani 2020-11-16  766  				    disc, EC_PROTO2_MAX_RESPONSE_SIZE);
8b46a212ad11f2 Prashant Malani 2020-11-16  767  	if (ret < 0) {
8b46a212ad11f2 Prashant Malani 2020-11-16  768  		dev_err(typec->dev, "Failed to get SOP' discovery data for port: %d\n", port_num);
8b46a212ad11f2 Prashant Malani 2020-11-16  769  		goto sop_prime_disc_exit;
8b46a212ad11f2 Prashant Malani 2020-11-16  770  	}
8b46a212ad11f2 Prashant Malani 2020-11-16  771  
8b46a212ad11f2 Prashant Malani 2020-11-16  772  	/* Parse the PD identity data, even if only 0s were returned. */
8b46a212ad11f2 Prashant Malani 2020-11-16  773  	cros_typec_parse_pd_identity(&port->c_identity, disc);
8b46a212ad11f2 Prashant Malani 2020-11-16  774  
72d6e32bd85bd1 Prashant Malani 2020-11-16  775  	if (disc->identity_count != 0) {
72d6e32bd85bd1 Prashant Malani 2020-11-16  776  		cable_plug_type = VDO_TYPEC_CABLE_TYPE(port->c_identity.vdo[0]);
72d6e32bd85bd1 Prashant Malani 2020-11-16  777  		switch (cable_plug_type) {
72d6e32bd85bd1 Prashant Malani 2020-11-16 @778  		case CABLE_ATYPE:
f4edab68e10119 Prashant Malani 2020-11-16  779  			c_desc.type = USB_PLUG_TYPE_A;
72d6e32bd85bd1 Prashant Malani 2020-11-16  780  			break;
72d6e32bd85bd1 Prashant Malani 2020-11-16 @781  		case CABLE_BTYPE:
f4edab68e10119 Prashant Malani 2020-11-16  782  			c_desc.type = USB_PLUG_TYPE_B;
72d6e32bd85bd1 Prashant Malani 2020-11-16  783  			break;
72d6e32bd85bd1 Prashant Malani 2020-11-16  784  		case CABLE_CTYPE:
f4edab68e10119 Prashant Malani 2020-11-16  785  			c_desc.type = USB_PLUG_TYPE_C;
72d6e32bd85bd1 Prashant Malani 2020-11-16  786  			break;
72d6e32bd85bd1 Prashant Malani 2020-11-16  787  		case CABLE_CAPTIVE:
f4edab68e10119 Prashant Malani 2020-11-16  788  			c_desc.type = USB_PLUG_CAPTIVE;
72d6e32bd85bd1 Prashant Malani 2020-11-16  789  			break;
72d6e32bd85bd1 Prashant Malani 2020-11-16  790  		default:
f4edab68e10119 Prashant Malani 2020-11-16  791  			c_desc.type = USB_PLUG_NONE;
72d6e32bd85bd1 Prashant Malani 2020-11-16  792  		}
f4edab68e10119 Prashant Malani 2020-11-16  793  		c_desc.active = PD_IDH_PTYPE(port->c_identity.id_header) == IDH_PTYPE_ACABLE;
72d6e32bd85bd1 Prashant Malani 2020-11-16  794  	}
8b46a212ad11f2 Prashant Malani 2020-11-16  795  
f4edab68e10119 Prashant Malani 2020-11-16  796  	c_desc.identity = &port->c_identity;
3b3dd1f0dbfe92 Benson Leung    2021-01-28  797  	c_desc.pd_revision = pd_revision;
8b46a212ad11f2 Prashant Malani 2020-11-16  798  
f4edab68e10119 Prashant Malani 2020-11-16  799  	port->cable = typec_register_cable(port->port, &c_desc);
8b46a212ad11f2 Prashant Malani 2020-11-16  800  	if (IS_ERR(port->cable)) {
8b46a212ad11f2 Prashant Malani 2020-11-16  801  		ret = PTR_ERR(port->cable);
8b46a212ad11f2 Prashant Malani 2020-11-16  802  		port->cable = NULL;
f4edab68e10119 Prashant Malani 2020-11-16  803  		goto sop_prime_disc_exit;
f4edab68e10119 Prashant Malani 2020-11-16  804  	}
f4edab68e10119 Prashant Malani 2020-11-16  805  
f4edab68e10119 Prashant Malani 2020-11-16  806  	p_desc.index = TYPEC_PLUG_SOP_P;
f4edab68e10119 Prashant Malani 2020-11-16  807  	port->plug = typec_register_plug(port->cable, &p_desc);
f4edab68e10119 Prashant Malani 2020-11-16  808  	if (IS_ERR(port->plug)) {
f4edab68e10119 Prashant Malani 2020-11-16  809  		ret = PTR_ERR(port->plug);
f4edab68e10119 Prashant Malani 2020-11-16  810  		port->plug = NULL;
f4edab68e10119 Prashant Malani 2020-11-16  811  		goto sop_prime_disc_exit;
8b46a212ad11f2 Prashant Malani 2020-11-16  812  	}
8b46a212ad11f2 Prashant Malani 2020-11-16  813  
1563090965421f Prashant Malani 2020-11-16  814  	ret = cros_typec_register_altmodes(typec, port_num, false);
1563090965421f Prashant Malani 2020-11-16  815  	if (ret < 0) {
1563090965421f Prashant Malani 2020-11-16  816  		dev_err(typec->dev, "Failed to register plug altmodes, port: %d\n", port_num);
1563090965421f Prashant Malani 2020-11-16  817  		goto sop_prime_disc_exit;
1563090965421f Prashant Malani 2020-11-16  818  	}
1563090965421f Prashant Malani 2020-11-16  819  
f4edab68e10119 Prashant Malani 2020-11-16  820  	return 0;
f4edab68e10119 Prashant Malani 2020-11-16  821  
8b46a212ad11f2 Prashant Malani 2020-11-16  822  sop_prime_disc_exit:
f4edab68e10119 Prashant Malani 2020-11-16  823  	cros_typec_remove_cable(typec, port_num);
8b46a212ad11f2 Prashant Malani 2020-11-16  824  	return ret;
8b46a212ad11f2 Prashant Malani 2020-11-16  825  }
8b46a212ad11f2 Prashant Malani 2020-11-16  826  

:::::: The code at line 778 was first introduced by commit
:::::: 72d6e32bd85bd1e5cb5aa467f4eb5d0a69559953 platform/chrome: cros_ec_typec: Store cable plug type

:::::: TO: Prashant Malani <pmalani@chromium.org>
:::::: CC: Benson Leung <bleung@chromium.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102050042.DpTJdrHK-lkp%40intel.com.

--wac7ysb48OaltWcw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ZXiklGIVy82dP1Wsh/H/D5s24AH/JQIA

--wac7ysb48OaltWcw--
