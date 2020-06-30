Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYFN5T3QKGQEVCLO63Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C56F20F2DE
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 12:41:38 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id i6sf11844927plt.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 03:41:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593513697; cv=pass;
        d=google.com; s=arc-20160816;
        b=AwvmY4dvZYwrEcpTcdbhTvYO6dR1UhqSP3MbfP5V+AxuN0XWVSzgFmSweUTAP+w4+J
         u2HtkTJzn4z88+xjCuQw3e65nIp9Oq5+BbVaQAlXBso/uEM8ortFpFyVc9bFS2w/ykkz
         oCaQJLXBFm8dUUJK1wzlkXrowpk+S/FzFyhJDYeDNGF7q2tl3ALhYi6a23s+x6e+EhcR
         A9hHJ3aYqM0B0Xwhf+On3tr9NUAI/xYzymW11YbO5oam406sMIvJSU/MVySrPTTK+RmA
         +A910iesbArWhv2qXHZQn6iivuvg+WfR5JSCfayhTHNCk+16nYfqN22Ry1K6QaApU0aH
         58nQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=V3wYJ1x5zJ+tXTEY6MNWzLwSAOiwbjAJwKjYC8L5Gx8=;
        b=H2ZbjxsROqa5cp7x9LUbZ1AH28yqphscYX3FhEGCYuS3Xb9jNm8CAPAJuZEO5Y8m7Z
         6rI6o8Kc8rEBk7rMxTwj8oL+BORsFR4sN19o0+nYvr9nD8PjDoc10KzUoiSR69mhAkzy
         z/+2afr2dOYbtPotKi8cqVA1eSqk2NLG4Pola+s5hP8FVW7n1kF44i7NAWp9Dkw6bDDa
         EBFZOVP8A0r32PBypKmjixEkKMTcu1xUctQUNGmYYUPp5L9MAxAUp6ATMO7Sp4BjjqnW
         nNZucWHUxYCMK64ElDBDMB8DeOKUNOhPsEMUOQhVI00QYh1IDVAKlEZnp5LsP4HtU1Bo
         XFlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V3wYJ1x5zJ+tXTEY6MNWzLwSAOiwbjAJwKjYC8L5Gx8=;
        b=h2wMCsMOyG73zbBVuPQGvM7l5WdV3vpRayQGfplyzzVq7MEg6y75WEfzc7h/ACkijb
         iPm8IEJqdGOiG6F7g+l5oTuf+IMABT7UR58XW6qec19drKst1xrXt+ziePkW4KM6vrYT
         j6O0YhBDW+0IcOnRlODORBeEy9JTw+5tHfWJx8E+qZJxI6hRLs92oduhWzyfIisbxJUs
         KSdSKD+0snH4APmMjDxqgN5rKwM+Nh1Ec7TSAx3At2XY6dRkGys7sufTUkSvaJNEIjRc
         nLTlKiooX31MhuIj5us+44bp8FxP4KhoDC8tMLbNK691r3CnTRJ5Ij1QOztR7K1B4+Ql
         7nJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V3wYJ1x5zJ+tXTEY6MNWzLwSAOiwbjAJwKjYC8L5Gx8=;
        b=JwAK2hzHEwea6Txa8EEwTyX7ftX8q+8/QI/DLmsU5r8JFKLLeAbQtDDgBgOzYjc3MP
         nGYJXjJ+Rf6hdY8btGOiGxVkL/UMsCIjI7vj5Yb2vg4dSgJZTgNsjGBWzd50WLa93+pM
         tJw8b9GR8FwYuphpnTui5jibIkgnA2AfPobqDzgqaVlv+7cSZ3mJrfezVPsCUtEZ+ZK/
         zKX7BZseQAbPe4jlrfm33reC0tWyAlTwwSK8HZE/xXDs1eO1rAS+G1Dl2/DR4giD5gWZ
         6DIgut9AVSkHNJ1R3PH5T/eW4VD1CTWwK/RXLut0vmJxJ0mpx1iAHxXOMjW1EsI/4F1I
         d0Cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ncBz3K6CYgItrYZ3JDbVRcFRtp94CZ4VpZeympSt76pFsjZzr
	KwFbutV47HUmnuYBYNc+mrU=
X-Google-Smtp-Source: ABdhPJzTaNh5csxERwaO1Bn12cFRc7KrEqSuc34i/QQlrreZord7tZ7jpr8pOpgUXIy2BeioB6uksw==
X-Received: by 2002:a17:902:8bc7:: with SMTP id r7mr17747423plo.57.1593513696681;
        Tue, 30 Jun 2020 03:41:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:565:: with SMTP id 92ls7481220plf.2.gmail; Tue, 30
 Jun 2020 03:41:36 -0700 (PDT)
X-Received: by 2002:a17:902:469:: with SMTP id 96mr16985990ple.93.1593513696150;
        Tue, 30 Jun 2020 03:41:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593513696; cv=none;
        d=google.com; s=arc-20160816;
        b=IQ78K6sBfee9TStu+2o0msj/RVDPWC7mZet8/ksl/CN65jcVuMB08CMWmb1Whf5FW7
         0VFFypXxNEmcnfKu7YuQQswvzucvoBGCHrQ82YszMlpeaCLosbXmw69tw/eSJf9jAq4o
         y5xxuAbkkDUpSS9wASXsP8/0GUsEZdwomaRzK5+7wd7NXhhq/pTclxUVB50eqWdMITVW
         IXvsinsShg42Arhk1B52btliDQRsDtOWwyymss0Jr9nfZnAOXToqbpUnigi3fml+wRXM
         xgZXW5gIeZSserdZ8yFpNfHK0XQO1WvkPWkvaSyglcXoHrev3vypELrVChhos9RdeFky
         KLTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=DpYfSii19w82EArO7spBkz53rH9YszkdDgiGwtJNojQ=;
        b=vM/Ow4PS3v3z+x2KFy7PER3nFYNOHxVY+B4bCYYglxsXrNvjoB+ZtQmzW5uTc57fOD
         pbfr8PbF+70PLbpRtJzfYQpAGGS1Fk/WBEQGDD96Tqn5mEw3VaX8+k5lWb4YpmSBEKVG
         2iWp1HLcOL+viiuaSRz68wrkALd5zCmz5c/z31h1gAHxhzXJVxKn3mF7TAdEgMaKdNCU
         dCCEug7CT/JDkDfs3xnt9pmECQAHiG7hc7P51cr4MAH2VsHDeGCr43Uc0aYvZ0A9bngl
         ZK0S6CFeM3ZuYVxnV/Ug9+/NJnJDpbzRWyg7bS7F0y+v2cePJuBizK7bhxU5+q/fcAd+
         1svQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id j23si184130pfr.0.2020.06.30.03.41.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jun 2020 03:41:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: CDY1crvJoq0jx4/9s2/UhD3WvN5OrSJVgjw83JTmGuLzl0sv4xhlVEHZatwwsPtve5MLGdDBkQ
 nTRwafmBBCjw==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="211262635"
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; 
   d="gz'50?scan'50,208,50";a="211262635"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2020 03:41:34 -0700
IronPort-SDR: ah+IBj4cCSoe2IFghyorHML+7MW7PPTh5NIk0daE743cVkmIvZUvlTCcRUncaBbqcWCqHZv20S
 mhIiE7gfevKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; 
   d="gz'50?scan'50,208,50";a="281190767"
Received: from lkp-server01.sh.intel.com (HELO 28879958b202) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 30 Jun 2020 03:41:32 -0700
Received: from kbuild by 28879958b202 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jqDhj-0001QQ-M0; Tue, 30 Jun 2020 10:41:31 +0000
Date: Tue, 30 Jun 2020 18:40:32 +0800
From: kernel test robot <lkp@intel.com>
To: Mathias Nyman <mathias.nyman@linux.intel.com>,
	Fabian Melzow <fabian.melzow@gmail.com>, linux-usb@vger.kernel.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] xhci: fix halted endpoint at stop endpoint command
 completion
Message-ID: <202006301801.3A1COP3e%lkp@intel.com>
References: <264e8287-b538-0798-36a6-7eafc4387a8d@linux.intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="+QahgC5+KEYLbs62"
Content-Disposition: inline
In-Reply-To: <264e8287-b538-0798-36a6-7eafc4387a8d@linux.intel.com>
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


--+QahgC5+KEYLbs62
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Mathias,

I love your patch! Yet something to improve:

[auto build test ERROR on usb/usb-testing]
[also build test ERROR on v5.8-rc3 next-20200629]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use  as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Mathias-Nyman/xhci-fix-halted-endpoint-at-stop-endpoint-command-completion/20200630-031254
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
config: arm-randconfig-r013-20200630 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project cf1d04484344be52ada8178e41d18fd15a9b880c)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/usb/typec/tps6598x.c:164:19: warning: unused function 'tps6598x_write32' [-Wunused-function]
   static inline int tps6598x_write32(struct tps6598x *tps, u8 reg, u32 val)
                     ^
   drivers/usb/gadget/function/u_serial.c:538: warning: Function parameter or member 'port' not described in 'gs_start_io'
   drivers/usb/gadget/function/u_serial.c:538: warning: Excess function parameter 'dev' description in 'gs_start_io'
   drivers/usb/gadget/udc/dummy_hcd.c:1597: warning: Function parameter or member 'dum_hcd' not described in 'handle_control_request'
   drivers/usb/gadget/udc/dummy_hcd.c:1597: warning: Excess function parameter 'dum' description in 'handle_control_request'
   drivers/usb/gadget/legacy/printer.c:24:19: warning: unused variable 'driver_desc' [-Wunused-const-variable]
   static const char driver_desc [] = DRIVER_DESC;
                     ^
   1 warning generated.
   2 warnings generated.
   drivers/usb/host/ehci-platform.c:478:36: warning: unused variable 'ehci_acpi_match' [-Wunused-const-variable]
   static const struct acpi_device_id ehci_acpi_match[] = {
                                      ^
   1 warning generated.
   drivers/usb/misc/iowarrior.c:251: warning: Function parameter or member 'dev' not described in 'iowarrior_delete'
   drivers/usb/misc/iowarrior.c:279: warning: Function parameter or member 'file' not described in 'iowarrior_read'
   drivers/usb/misc/iowarrior.c:279: warning: Function parameter or member 'buffer' not described in 'iowarrior_read'
   drivers/usb/misc/iowarrior.c:279: warning: Function parameter or member 'count' not described in 'iowarrior_read'
   drivers/usb/misc/iowarrior.c:279: warning: Function parameter or member 'ppos' not described in 'iowarrior_read'
   drivers/usb/misc/iowarrior.c:483: warning: Function parameter or member 'file' not described in 'iowarrior_ioctl'
   drivers/usb/misc/iowarrior.c:483: warning: Function parameter or member 'cmd' not described in 'iowarrior_ioctl'
   drivers/usb/misc/iowarrior.c:483: warning: Function parameter or member 'arg' not described in 'iowarrior_ioctl'
   drivers/usb/misc/iowarrior.c:599: warning: Function parameter or member 'inode' not described in 'iowarrior_open'
   drivers/usb/misc/iowarrior.c:599: warning: Function parameter or member 'file' not described in 'iowarrior_open'
   drivers/usb/misc/iowarrior.c:647: warning: Function parameter or member 'inode' not described in 'iowarrior_release'
   drivers/usb/misc/iowarrior.c:647: warning: Function parameter or member 'file' not described in 'iowarrior_release'
   drivers/usb/misc/iowarrior.c:753: warning: Function parameter or member 'interface' not described in 'iowarrior_probe'
   drivers/usb/misc/iowarrior.c:753: warning: Function parameter or member 'id' not described in 'iowarrior_probe'
   drivers/usb/misc/iowarrior.c:879: warning: Function parameter or member 'interface' not described in 'iowarrior_disconnect'
   1 warning generated.
   drivers/usb/gadget/udc/amd5536udc_pci.c:52:19: warning: unused variable 'mod_desc' [-Wunused-const-variable]
   static const char mod_desc[] = UDC_MOD_DESCRIPTION;
                     ^
   1 warning generated.
   drivers/usb/misc/ldusb.c:192: warning: Function parameter or member 'dev' not described in 'ld_usb_abort_transfers'
   drivers/usb/misc/ldusb.c:206: warning: Function parameter or member 'dev' not described in 'ld_usb_delete'
   drivers/usb/misc/ldusb.c:220: warning: Function parameter or member 'urb' not described in 'ld_usb_interrupt_in_callback'
   drivers/usb/misc/ldusb.c:281: warning: Function parameter or member 'urb' not described in 'ld_usb_interrupt_out_callback'
   drivers/usb/misc/ldusb.c:301: warning: Function parameter or member 'inode' not described in 'ld_usb_open'
   drivers/usb/misc/ldusb.c:301: warning: Function parameter or member 'file' not described in 'ld_usb_open'
   drivers/usb/misc/ldusb.c:372: warning: Function parameter or member 'inode' not described in 'ld_usb_release'
   drivers/usb/misc/ldusb.c:372: warning: Function parameter or member 'file' not described in 'ld_usb_release'
   drivers/usb/misc/ldusb.c:414: warning: Function parameter or member 'file' not described in 'ld_usb_poll'
   drivers/usb/misc/ldusb.c:414: warning: Function parameter or member 'wait' not described in 'ld_usb_poll'
   drivers/usb/misc/ldusb.c:439: warning: Function parameter or member 'file' not described in 'ld_usb_read'
   drivers/usb/misc/ldusb.c:439: warning: Function parameter or member 'buffer' not described in 'ld_usb_read'
   drivers/usb/misc/ldusb.c:439: warning: Function parameter or member 'count' not described in 'ld_usb_read'
   drivers/usb/misc/ldusb.c:439: warning: Function parameter or member 'ppos' not described in 'ld_usb_read'
   drivers/usb/misc/ldusb.c:526: warning: Function parameter or member 'file' not described in 'ld_usb_write'
   drivers/usb/misc/ldusb.c:526: warning: Function parameter or member 'buffer' not described in 'ld_usb_write'
   drivers/usb/misc/ldusb.c:526: warning: Function parameter or member 'count' not described in 'ld_usb_write'
   drivers/usb/misc/ldusb.c:526: warning: Function parameter or member 'ppos' not described in 'ld_usb_write'
   drivers/usb/misc/ldusb.c:651: warning: Function parameter or member 'intf' not described in 'ld_usb_probe'
   drivers/usb/misc/ldusb.c:651: warning: Function parameter or member 'id' not described in 'ld_usb_probe'
   drivers/usb/misc/ldusb.c:754: warning: Function parameter or member 'intf' not described in 'ld_usb_disconnect'
   drivers/usb/serial/quatech2.c:179:19: warning: unused function 'qt2_setdevice' [-Wunused-function]
   static inline int qt2_setdevice(struct usb_device *dev, u8 *data)
                     ^
   drivers/usb/core/ledtrig-usbport.c:42: warning: Function parameter or member 'usbport_data' not described in 'usbport_trig_usb_dev_observed'
   drivers/usb/core/ledtrig-usbport.c:42: warning: Function parameter or member 'usb_dev' not described in 'usbport_trig_usb_dev_observed'
   drivers/usb/core/ledtrig-usbport.c:71: warning: Function parameter or member 'usbport_data' not described in 'usbport_trig_update_count'
   drivers/usb/core/ledtrig-usbport.c:131: warning: Function parameter or member 'usbport_data' not described in 'usbport_trig_port_observed'
   drivers/usb/core/ledtrig-usbport.c:131: warning: Function parameter or member 'usb_dev' not described in 'usbport_trig_port_observed'
   drivers/usb/core/ledtrig-usbport.c:131: warning: Function parameter or member 'port1' not described in 'usbport_trig_port_observed'
   drivers/usb/misc/legousbtower.c:280: warning: Function parameter or member 'dev' not described in 'lego_usb_tower_debug_data'
   drivers/usb/misc/legousbtower.c:280: warning: Function parameter or member 'function' not described in 'lego_usb_tower_debug_data'
   drivers/usb/misc/legousbtower.c:280: warning: Function parameter or member 'size' not described in 'lego_usb_tower_debug_data'
   drivers/usb/misc/legousbtower.c:280: warning: Function parameter or member 'data' not described in 'lego_usb_tower_debug_data'
   drivers/usb/misc/legousbtower.c:290: warning: Function parameter or member 'dev' not described in 'tower_delete'
   drivers/usb/misc/legousbtower.c:306: warning: Function parameter or member 'inode' not described in 'tower_open'
   drivers/usb/misc/legousbtower.c:306: warning: Function parameter or member 'file' not described in 'tower_open'
   drivers/usb/misc/legousbtower.c:405: warning: Function parameter or member 'inode' not described in 'tower_release'
   drivers/usb/misc/legousbtower.c:405: warning: Function parameter or member 'file' not described in 'tower_release'
   drivers/usb/misc/legousbtower.c:452: warning: Function parameter or member 'dev' not described in 'tower_check_for_read_packet'
   drivers/usb/misc/legousbtower.c:468: warning: Function parameter or member 'file' not described in 'tower_poll'
   drivers/usb/misc/legousbtower.c:468: warning: Function parameter or member 'wait' not described in 'tower_poll'
   drivers/usb/misc/legousbtower.c:494: warning: Function parameter or member 'file' not described in 'tower_llseek'
   drivers/usb/misc/legousbtower.c:494: warning: Function parameter or member 'off' not described in 'tower_llseek'
   drivers/usb/misc/legousbtower.c:494: warning: Function parameter or member 'whence' not described in 'tower_llseek'
   drivers/usb/misc/legousbtower.c:503: warning: Function parameter or member 'file' not described in 'tower_read'
   drivers/usb/misc/legousbtower.c:503: warning: Function parameter or member 'buffer' not described in 'tower_read'
   drivers/usb/misc/legousbtower.c:503: warning: Function parameter or member 'count' not described in 'tower_read'
   drivers/usb/misc/legousbtower.c:503: warning: Function parameter or member 'ppos' not described in 'tower_read'
   drivers/usb/misc/legousbtower.c:587: warning: Function parameter or member 'file' not described in 'tower_write'
   drivers/usb/misc/legousbtower.c:587: warning: Function parameter or member 'buffer' not described in 'tower_write'
   drivers/usb/misc/legousbtower.c:587: warning: Function parameter or member 'count' not described in 'tower_write'
   drivers/usb/misc/legousbtower.c:587: warning: Function parameter or member 'ppos' not described in 'tower_write'
   drivers/usb/misc/legousbtower.c:669: warning: Function parameter or member 'urb' not described in 'tower_interrupt_in_callback'
   1 warning generateddrivers/usb/misc/legousbtower.c:724: warning: Function parameter or member 'urb' not described in 'tower_interrupt_out_callback'
   .
   drivers/usb/misc/legousbtower.c:752: warning: Function parameter or member 'interface' not described in 'tower_probe'
   drivers/usb/misc/legousbtower.c:752: warning: Function parameter or member 'id' not described in 'tower_probe'
   drivers/usb/misc/legousbtower.c:863: warning: Function parameter or member 'interface' not described in 'tower_disconnect'
   drivers/usb/gadget/function/f_fs.c:2361: warning: Function parameter or member 'type' not described in '__ffs_data_do_os_desc'
   drivers/usb/gadget/function/f_fs.c:2361: warning: Function parameter or member 'h' not described in '__ffs_data_do_os_desc'
   drivers/usb/gadget/function/f_fs.c:2361: warning: Function parameter or member 'data' not described in '__ffs_data_do_os_desc'
   drivers/usb/gadget/function/f_fs.c:2361: warning: Function parameter or member 'len' not described in '__ffs_data_do_os_desc'
   drivers/usb/gadget/function/f_fs.c:2361: warning: Function parameter or member 'priv' not described in '__ffs_data_do_os_desc'
>> drivers/usb/host/xhci-ring.c:857:3: error: implicit declaration of function 'xhci_reset_halted_ep' [-Werror,-Wimplicit-function-declaration]
                   xhci_reset_halted_ep(xhci, slot_id, ep_index, reset_type);
                   ^
   1 error generated.
   make[4]: *** [scripts/Makefile.build:281: drivers/usb/host/xhci-ring.o] Error 1
   drivers/usb/host/sl811-hcd.c:588:18: warning: unused function 'checkdone' [-Wunused-function]
   static inline u8 checkdone(struct sl811 *sl811)
                    ^
   drivers/usb/gadget/udc/mv_udc_core.c:56:19: warning: unused variable 'driver_desc' [-Wunused-const-variable]
   static const char driver_desc[] = DRIVER_DESC;
                     ^
   drivers/usb/host/xhci.c:1285: warning: Function parameter or member 'desc' not described in 'xhci_get_endpoint_index'
   1 warning generated.
   drivers/usb/gadget/udc/mv_u3d_core.c:35:19: warning: unused variable 'driver_desc' [-Wunused-const-variable]
   static const char driver_desc[] = DRIVER_DESC;
                     ^
   drivers/usb/host/xhci-plat.c:457:36: warning: unused variable 'usb_xhci_acpi_match' [-Wunused-const-variable]
   static const struct acpi_device_id usb_xhci_acpi_match[] = {
                                      ^
   drivers/usb/host/xhci-dbgtty.c:19: warning: Function parameter or member 'port' not described in 'dbc_send_packet'
   drivers/usb/host/xhci-dbgtty.c:19: warning: Function parameter or member 'packet' not described in 'dbc_send_packet'
   drivers/usb/host/xhci-dbgtty.c:19: warning: Function parameter or member 'size' not described in 'dbc_send_packet'
   drivers/usb/host/bcma-hcd.c:180: warning: Function parameter or member 'usb_dev' not described in 'bcma_hcd_usb20_old_arm_init'
   drivers/usb/host/bcma-hcd.c:268: warning: Function parameter or member 'bcma_hcd' not described in 'bcma_hcd_usb20_ns_init'
   1 warning generated.
   drivers/usb/host/xhci-dbgcap.c:20: warning: Function parameter or member 'xhci' not described in 'dbc_dma_alloc_coherent'
   drivers/usb/host/xhci-dbgcap.c:20: warning: Function parameter or member 'size' not described in 'dbc_dma_alloc_coherent'
   drivers/usb/host/xhci-dbgcap.c:20: warning: Function parameter or member 'dma_handle' not described in 'dbc_dma_alloc_coherent'
   drivers/usb/host/xhci-dbgcap.c:20: warning: Function parameter or member 'flags' not described in 'dbc_dma_alloc_coherent'
   1 warning generated.
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'xhci' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'num_segs' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'cycle_state' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'type' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'max_packet' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'flags' not described in 'xhci_ring_alloc'
   1 warning generated.
   drivers/usb/gadget/udc/pch_udc.c:239: warning: Function parameter or member 'request' not described in 'pch_udc_stp_dma_desc'
   drivers/usb/gadget/udc/pch_udc.c:315: warning: Function parameter or member 'irq_work_fall' not described in 'pch_vbus_gpio_data'
   drivers/usb/gadget/udc/pch_udc.c:315: warning: Function parameter or member 'irq_work_rise' not described in 'pch_vbus_gpio_data'
   drivers/usb/gadget/udc/pch_udc.c:482: warning: Function parameter or member 'ep' not described in 'pch_udc_write_csr'
   drivers/usb/gadget/udc/pch_udc.c:482: warning: Excess function parameter 'addr' description in 'pch_udc_write_csr'
   drivers/usb/gadget/udc/pch_udc.c:498: warning: Function parameter or member 'ep' not described in 'pch_udc_read_csr'
   drivers/usb/gadget/udc/pch_udc.c:498: warning: Excess function parameter 'addr' description in 'pch_udc_read_csr'
   drivers/usb/gadget/udc/pch_udc.c:662: warning: Function parameter or member 'ep_in' not described in 'pch_udc_ep_set_bufsz'
   drivers/usb/gadget/udc/pch_udc.c:977: warning: Function parameter or member 'ep' not described in 'pch_udc_ep_enable'
   drivers/usb/gadget/udc/pch_udc.c:977: warning: Function parameter or member 'cfg' not described in 'pch_udc_ep_enable'
   drivers/usb/gadget/udc/pch_udc.c:977: warning: Excess function parameter 'regs' description in 'pch_udc_ep_enable'
   drivers/usb/gadget/udc/pch_udc.c:1010: warning: Function parameter or member 'ep' not described in 'pch_udc_ep_disable'
   drivers/usb/gadget/udc/pch_udc.c:1010: warning: Excess function parameter 'regs' description in 'pch_udc_ep_disable'
   drivers/usb/gadget/udc/pch_udc.c:1030: warning: Function parameter or member 'ep' not described in 'pch_udc_wait_ep_stall'
   drivers/usb/gadget/udc/pch_udc.c:1030: warning: Excess function parameter 'dev' description in 'pch_udc_wait_ep_stall'
   drivers/usb/gadget/udc/pch_udc.c:1341: warning: Function parameter or member 'data' not described in 'pch_vbus_gpio_irq'
   drivers/usb/gadget/udc/pch_udc.c:1341: warning: Excess function parameter 'dev' description in 'pch_vbus_gpio_irq'
   drivers/usb/gadget/udc/pch_udc.c:1365: warning: Function parameter or member 'vbus_gpio_port' not described in 'pch_vbus_gpio_init'
   drivers/usb/gadget/udc/pch_udc.c:1510: warning: Function parameter or member 'dev' not described in 'pch_udc_free_dma_chain'
   drivers/usb/gadget/udc/pch_udc.c:1510: warning: Function parameter or member 'req' not described in 'pch_udc_free_dma_chain'
   drivers/usb/gadget/udc/pch_udc.c:1717: warning: Function parameter or member 'usbep' not described in 'pch_udc_pcd_ep_disable'
   drivers/usb/gadget/udc/pch_udc.c:2006: warning: Excess function parameter 'halt' description in 'pch_udc_pcd_set_wedge'
   drivers/usb/gadget/udc/pch_udc.c:2756: warning: Function parameter or member 'pdev' not described in 'pch_udc_isr'
   drivers/usb/gadget/udc/pch_udc.c:2756: warning: Excess function parameter 'dev' description in 'pch_udc_isr'
   drivers/usb/gadget/udc/pch_udc.c:2906: warning: Function parameter or member 'dev' not described in 'init_dma_pools'
   drivers/usb/gadget/udc/pch_udc.c:2906: warning: Excess function parameter 'pdev' description in 'init_dma_pools'
   drivers/usb/host/fotg210-hcd.c:5569: warning: Function parameter or member 'pdev' not described in 'fotg210_hcd_probe'
   drivers/usb/host/fotg210-hcd.c:5666: warning: Function parameter or member 'pdev' not described in 'fotg210_hcd_remove'
   drivers/usb/host/fotg210-hcd.c:5666: warning: Excess function parameter 'dev' description in 'fotg210_hcd_remove'
   make[4]: Target '__build' not remade because of errors.
   make[2]: *** [scripts/Makefile.build:497: drivers/usb] Error 2
   make[3]: *** [scripts/Makefile.build:497: drivers/usb/host] Error 2
   make[3]: Target '__build' not remade because of errors.
   make[2]: Target '__build' not remade because of errors.
   make[1]: *** [Makefile:1756: drivers] Error 2
   make[1]: Target 'drivers/usb/' not remade because of errors.
--
   drivers/usb/typec/tps6598x.c:164:19: warning: unused function 'tps6598x_write32' [-Wunused-function]
   static inline int tps6598x_write32(struct tps6598x *tps, u8 reg, u32 val)
                     ^
   drivers/usb/gadget/function/u_serial.c:538: warning: Function parameter or member 'port' not described in 'gs_start_io'
   drivers/usb/gadget/function/u_serial.c:538: warning: Excess function parameter 'dev' description in 'gs_start_io'
   drivers/usb/gadget/udc/dummy_hcd.c:1597: warning: Function parameter or member 'dum_hcd' not described in 'handle_control_request'
   drivers/usb/gadget/udc/dummy_hcd.c:1597: warning: Excess function parameter 'dum' description in 'handle_control_request'
   drivers/usb/gadget/legacy/printer.c:24:19: warning: unused variable 'driver_desc' [-Wunused-const-variable]
   static const char driver_desc [] = DRIVER_DESC;
                     ^
   1 warning generated.
   2 warnings generated.
   drivers/usb/host/ehci-platform.c:478:36: warning: unused variable 'ehci_acpi_match' [-Wunused-const-variable]
   static const struct acpi_device_id ehci_acpi_match[] = {
                                      ^
   1 warning generated.
   drivers/usb/misc/iowarrior.c:251: warning: Function parameter or member 'dev' not described in 'iowarrior_delete'
   drivers/usb/misc/iowarrior.c:279: warning: Function parameter or member 'file' not described in 'iowarrior_read'
   drivers/usb/misc/iowarrior.c:279: warning: Function parameter or member 'buffer' not described in 'iowarrior_read'
   drivers/usb/misc/iowarrior.c:279: warning: Function parameter or member 'count' not described in 'iowarrior_read'
   drivers/usb/misc/iowarrior.c:279: warning: Function parameter or member 'ppos' not described in 'iowarrior_read'
   drivers/usb/misc/iowarrior.c:483: warning: Function parameter or member 'file' not described in 'iowarrior_ioctl'
   drivers/usb/misc/iowarrior.c:483: warning: Function parameter or member 'cmd' not described in 'iowarrior_ioctl'
   drivers/usb/misc/iowarrior.c:483: warning: Function parameter or member 'arg' not described in 'iowarrior_ioctl'
   drivers/usb/misc/iowarrior.c:599: warning: Function parameter or member 'inode' not described in 'iowarrior_open'
   drivers/usb/misc/iowarrior.c:599: warning: Function parameter or member 'file' not described in 'iowarrior_open'
   drivers/usb/misc/iowarrior.c:647: warning: Function parameter or member 'inode' not described in 'iowarrior_release'
   drivers/usb/misc/iowarrior.c:647: warning: Function parameter or member 'file' not described in 'iowarrior_release'
   drivers/usb/misc/iowarrior.c:753: warning: Function parameter or member 'interface' not described in 'iowarrior_probe'
   drivers/usb/misc/iowarrior.c:753: warning: Function parameter or member 'id' not described in 'iowarrior_probe'
   drivers/usb/misc/iowarrior.c:879: warning: Function parameter or member 'interface' not described in 'iowarrior_disconnect'
   1 warning generated.
   drivers/usb/gadget/udc/amd5536udc_pci.c:52:19: warning: unused variable 'mod_desc' [-Wunused-const-variable]
   static const char mod_desc[] = UDC_MOD_DESCRIPTION;
                     ^
   1 warning generated.
   drivers/usb/misc/ldusb.c:192: warning: Function parameter or member 'dev' not described in 'ld_usb_abort_transfers'
   drivers/usb/misc/ldusb.c:206: warning: Function parameter or member 'dev' not described in 'ld_usb_delete'
   drivers/usb/misc/ldusb.c:220: warning: Function parameter or member 'urb' not described in 'ld_usb_interrupt_in_callback'
   drivers/usb/misc/ldusb.c:281: warning: Function parameter or member 'urb' not described in 'ld_usb_interrupt_out_callback'
   drivers/usb/misc/ldusb.c:301: warning: Function parameter or member 'inode' not described in 'ld_usb_open'
   drivers/usb/misc/ldusb.c:301: warning: Function parameter or member 'file' not described in 'ld_usb_open'
   drivers/usb/misc/ldusb.c:372: warning: Function parameter or member 'inode' not described in 'ld_usb_release'
   drivers/usb/misc/ldusb.c:372: warning: Function parameter or member 'file' not described in 'ld_usb_release'
   drivers/usb/misc/ldusb.c:414: warning: Function parameter or member 'file' not described in 'ld_usb_poll'
   drivers/usb/misc/ldusb.c:414: warning: Function parameter or member 'wait' not described in 'ld_usb_poll'
   drivers/usb/misc/ldusb.c:439: warning: Function parameter or member 'file' not described in 'ld_usb_read'
   drivers/usb/misc/ldusb.c:439: warning: Function parameter or member 'buffer' not described in 'ld_usb_read'
   drivers/usb/misc/ldusb.c:439: warning: Function parameter or member 'count' not described in 'ld_usb_read'
   drivers/usb/misc/ldusb.c:439: warning: Function parameter or member 'ppos' not described in 'ld_usb_read'
   drivers/usb/misc/ldusb.c:526: warning: Function parameter or member 'file' not described in 'ld_usb_write'
   drivers/usb/misc/ldusb.c:526: warning: Function parameter or member 'buffer' not described in 'ld_usb_write'
   drivers/usb/misc/ldusb.c:526: warning: Function parameter or member 'count' not described in 'ld_usb_write'
   drivers/usb/misc/ldusb.c:526: warning: Function parameter or member 'ppos' not described in 'ld_usb_write'
   drivers/usb/misc/ldusb.c:651: warning: Function parameter or member 'intf' not described in 'ld_usb_probe'
   drivers/usb/misc/ldusb.c:651: warning: Function parameter or member 'id' not described in 'ld_usb_probe'
   drivers/usb/misc/ldusb.c:754: warning: Function parameter or member 'intf' not described in 'ld_usb_disconnect'
   drivers/usb/serial/quatech2.c:179:19: warning: unused function 'qt2_setdevice' [-Wunused-function]
   static inline int qt2_setdevice(struct usb_device *dev, u8 *data)
                     ^
   drivers/usb/core/ledtrig-usbport.c:42: warning: Function parameter or member 'usbport_data' not described in 'usbport_trig_usb_dev_observed'
   drivers/usb/core/ledtrig-usbport.c:42: warning: Function parameter or member 'usb_dev' not described in 'usbport_trig_usb_dev_observed'
   drivers/usb/core/ledtrig-usbport.c:71: warning: Function parameter or member 'usbport_data' not described in 'usbport_trig_update_count'
   drivers/usb/core/ledtrig-usbport.c:131: warning: Function parameter or member 'usbport_data' not described in 'usbport_trig_port_observed'
   drivers/usb/core/ledtrig-usbport.c:131: warning: Function parameter or member 'usb_dev' not described in 'usbport_trig_port_observed'
   drivers/usb/core/ledtrig-usbport.c:131: warning: Function parameter or member 'port1' not described in 'usbport_trig_port_observed'
   drivers/usb/misc/legousbtower.c:280: warning: Function parameter or member 'dev' not described in 'lego_usb_tower_debug_data'
   drivers/usb/misc/legousbtower.c:280: warning: Function parameter or member 'function' not described in 'lego_usb_tower_debug_data'
   drivers/usb/misc/legousbtower.c:280: warning: Function parameter or member 'size' not described in 'lego_usb_tower_debug_data'
   drivers/usb/misc/legousbtower.c:280: warning: Function parameter or member 'data' not described in 'lego_usb_tower_debug_data'
   drivers/usb/misc/legousbtower.c:290: warning: Function parameter or member 'dev' not described in 'tower_delete'
   drivers/usb/misc/legousbtower.c:306: warning: Function parameter or member 'inode' not described in 'tower_open'
   drivers/usb/misc/legousbtower.c:306: warning: Function parameter or member 'file' not described in 'tower_open'
   drivers/usb/misc/legousbtower.c:405: warning: Function parameter or member 'inode' not described in 'tower_release'
   drivers/usb/misc/legousbtower.c:405: warning: Function parameter or member 'file' not described in 'tower_release'
   drivers/usb/misc/legousbtower.c:452: warning: Function parameter or member 'dev' not described in 'tower_check_for_read_packet'
   drivers/usb/misc/legousbtower.c:468: warning: Function parameter or member 'file' not described in 'tower_poll'
   drivers/usb/misc/legousbtower.c:468: warning: Function parameter or member 'wait' not described in 'tower_poll'
   drivers/usb/misc/legousbtower.c:494: warning: Function parameter or member 'file' not described in 'tower_llseek'
   drivers/usb/misc/legousbtower.c:494: warning: Function parameter or member 'off' not described in 'tower_llseek'
   drivers/usb/misc/legousbtower.c:494: warning: Function parameter or member 'whence' not described in 'tower_llseek'
   drivers/usb/misc/legousbtower.c:503: warning: Function parameter or member 'file' not described in 'tower_read'
   drivers/usb/misc/legousbtower.c:503: warning: Function parameter or member 'buffer' not described in 'tower_read'
   drivers/usb/misc/legousbtower.c:503: warning: Function parameter or member 'count' not described in 'tower_read'
   drivers/usb/misc/legousbtower.c:503: warning: Function parameter or member 'ppos' not described in 'tower_read'
   drivers/usb/misc/legousbtower.c:587: warning: Function parameter or member 'file' not described in 'tower_write'
   drivers/usb/misc/legousbtower.c:587: warning: Function parameter or member 'buffer' not described in 'tower_write'
   drivers/usb/misc/legousbtower.c:587: warning: Function parameter or member 'count' not described in 'tower_write'
   drivers/usb/misc/legousbtower.c:587: warning: Function parameter or member 'ppos' not described in 'tower_write'
   drivers/usb/misc/legousbtower.c:669: warning: Function parameter or member 'urb' not described in 'tower_interrupt_in_callback'
   1 warning generateddrivers/usb/misc/legousbtower.c:724: warning: Function parameter or member 'urb' not described in 'tower_interrupt_out_callback'
   .
   drivers/usb/misc/legousbtower.c:752: warning: Function parameter or member 'interface' not described in 'tower_probe'
   drivers/usb/misc/legousbtower.c:752: warning: Function parameter or member 'id' not described in 'tower_probe'
   drivers/usb/misc/legousbtower.c:863: warning: Function parameter or member 'interface' not described in 'tower_disconnect'
   drivers/usb/gadget/function/f_fs.c:2361: warning: Function parameter or member 'type' not described in '__ffs_data_do_os_desc'
   drivers/usb/gadget/function/f_fs.c:2361: warning: Function parameter or member 'h' not described in '__ffs_data_do_os_desc'
   drivers/usb/gadget/function/f_fs.c:2361: warning: Function parameter or member 'data' not described in '__ffs_data_do_os_desc'
   drivers/usb/gadget/function/f_fs.c:2361: warning: Function parameter or member 'len' not described in '__ffs_data_do_os_desc'
   drivers/usb/gadget/function/f_fs.c:2361: warning: Function parameter or member 'priv' not described in '__ffs_data_do_os_desc'
>> drivers/usb/host/xhci-ring.c:857:3: error: implicit declaration of function 'xhci_reset_halted_ep' [-Werror,-Wimplicit-function-declaration]
                   xhci_reset_halted_ep(xhci, slot_id, ep_index, reset_type);
                   ^
   1 error generated.
   make[4]: *** [scripts/Makefile.build:281: drivers/usb/host/xhci-ring.o] Error 1
   drivers/usb/host/sl811-hcd.c:588:18: warning: unused function 'checkdone' [-Wunused-function]
   static inline u8 checkdone(struct sl811 *sl811)
                    ^
   drivers/usb/gadget/udc/mv_udc_core.c:56:19: warning: unused variable 'driver_desc' [-Wunused-const-variable]
   static const char driver_desc[] = DRIVER_DESC;
                     ^
   drivers/usb/host/xhci.c:1285: warning: Function parameter or member 'desc' not described in 'xhci_get_endpoint_index'
   1 warning generated.
   drivers/usb/gadget/udc/mv_u3d_core.c:35:19: warning: unused variable 'driver_desc' [-Wunused-const-variable]
   static const char driver_desc[] = DRIVER_DESC;
                     ^
   drivers/usb/host/xhci-plat.c:457:36: warning: unused variable 'usb_xhci_acpi_match' [-Wunused-const-variable]
   static const struct acpi_device_id usb_xhci_acpi_match[] = {
                                      ^
   drivers/usb/host/xhci-dbgtty.c:19: warning: Function parameter or member 'port' not described in 'dbc_send_packet'
   drivers/usb/host/xhci-dbgtty.c:19: warning: Function parameter or member 'packet' not described in 'dbc_send_packet'
   drivers/usb/host/xhci-dbgtty.c:19: warning: Function parameter or member 'size' not described in 'dbc_send_packet'
   drivers/usb/host/bcma-hcd.c:180: warning: Function parameter or member 'usb_dev' not described in 'bcma_hcd_usb20_old_arm_init'
   drivers/usb/host/bcma-hcd.c:268: warning: Function parameter or member 'bcma_hcd' not described in 'bcma_hcd_usb20_ns_init'
   1 warning generated.
   drivers/usb/host/xhci-dbgcap.c:20: warning: Function parameter or member 'xhci' not described in 'dbc_dma_alloc_coherent'
   drivers/usb/host/xhci-dbgcap.c:20: warning: Function parameter or member 'size' not described in 'dbc_dma_alloc_coherent'
   drivers/usb/host/xhci-dbgcap.c:20: warning: Function parameter or member 'dma_handle' not described in 'dbc_dma_alloc_coherent'
   drivers/usb/host/xhci-dbgcap.c:20: warning: Function parameter or member 'flags' not described in 'dbc_dma_alloc_coherent'
   1 warning generated.
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'xhci' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'num_segs' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'cycle_state' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'type' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'max_packet' not described in 'xhci_ring_alloc'
   drivers/usb/host/xhci-mem.c:365: warning: Function parameter or member 'flags' not described in 'xhci_ring_alloc'
   1 warning generated.
   drivers/usb/gadget/udc/pch_udc.c:239: warning: Function parameter or member 'request' not described in 'pch_udc_stp_dma_desc'
   drivers/usb/gadget/udc/pch_udc.c:315: warning: Function parameter or member 'irq_work_fall' not described in 'pch_vbus_gpio_data'
   drivers/usb/gadget/udc/pch_udc.c:315: warning: Function parameter or member 'irq_work_rise' not described in 'pch_vbus_gpio_data'
   drivers/usb/gadget/udc/pch_udc.c:482: warning: Function parameter or member 'ep' not described in 'pch_udc_write_csr'
   drivers/usb/gadget/udc/pch_udc.c:482: warning: Excess function parameter 'addr' description in 'pch_udc_write_csr'
   drivers/usb/gadget/udc/pch_udc.c:498: warning: Function parameter or member 'ep' not described in 'pch_udc_read_csr'
   drivers/usb/gadget/udc/pch_udc.c:498: warning: Excess function parameter 'addr' description in 'pch_udc_read_csr'
   drivers/usb/gadget/udc/pch_udc.c:662: warning: Function parameter or member 'ep_in' not described in 'pch_udc_ep_set_bufsz'
   drivers/usb/gadget/udc/pch_udc.c:977: warning: Function parameter or member 'ep' not described in 'pch_udc_ep_enable'
   drivers/usb/gadget/udc/pch_udc.c:977: warning: Function parameter or member 'cfg' not described in 'pch_udc_ep_enable'
   drivers/usb/gadget/udc/pch_udc.c:977: warning: Excess function parameter 'regs' description in 'pch_udc_ep_enable'
   drivers/usb/gadget/udc/pch_udc.c:1010: warning: Function parameter or member 'ep' not described in 'pch_udc_ep_disable'
   drivers/usb/gadget/udc/pch_udc.c:1010: warning: Excess function parameter 'regs' description in 'pch_udc_ep_disable'
   drivers/usb/gadget/udc/pch_udc.c:1030: warning: Function parameter or member 'ep' not described in 'pch_udc_wait_ep_stall'
   drivers/usb/gadget/udc/pch_udc.c:1030: warning: Excess function parameter 'dev' description in 'pch_udc_wait_ep_stall'
   drivers/usb/gadget/udc/pch_udc.c:1341: warning: Function parameter or member 'data' not described in 'pch_vbus_gpio_irq'
   drivers/usb/gadget/udc/pch_udc.c:1341: warning: Excess function parameter 'dev' description in 'pch_vbus_gpio_irq'
   drivers/usb/gadget/udc/pch_udc.c:1365: warning: Function parameter or member 'vbus_gpio_port' not described in 'pch_vbus_gpio_init'
   drivers/usb/gadget/udc/pch_udc.c:1510: warning: Function parameter or member 'dev' not described in 'pch_udc_free_dma_chain'
   drivers/usb/gadget/udc/pch_udc.c:1510: warning: Function parameter or member 'req' not described in 'pch_udc_free_dma_chain'
   drivers/usb/gadget/udc/pch_udc.c:1717: warning: Function parameter or member 'usbep' not described in 'pch_udc_pcd_ep_disable'
   drivers/usb/gadget/udc/pch_udc.c:2006: warning: Excess function parameter 'halt' description in 'pch_udc_pcd_set_wedge'
   drivers/usb/gadget/udc/pch_udc.c:2756: warning: Function parameter or member 'pdev' not described in 'pch_udc_isr'
   drivers/usb/gadget/udc/pch_udc.c:2756: warning: Excess function parameter 'dev' description in 'pch_udc_isr'
   drivers/usb/gadget/udc/pch_udc.c:2906: warning: Function parameter or member 'dev' not described in 'init_dma_pools'
   drivers/usb/gadget/udc/pch_udc.c:2906: warning: Excess function parameter 'pdev' description in 'init_dma_pools'
   drivers/usb/host/fotg210-hcd.c:5569: warning: Function parameter or member 'pdev' not described in 'fotg210_hcd_probe'
   drivers/usb/host/fotg210-hcd.c:5666: warning: Function parameter or member 'pdev' not described in 'fotg210_hcd_remove'
   drivers/usb/host/fotg210-hcd.c:5666: warning: Excess function parameter 'dev' description in 'fotg210_hcd_remove'
   make[4]: Target '__build' not remade because of errors.
   make[2]: *** [scripts/Makefile.build:497: drivers/usb] Error 2
   make[3]: *** [scripts/Makefile.build:497: drivers/usb/host] Error 2
   make[3]: Target '__build' not remade because of errors.
   make[2]: Target '__build' not remade because of errors.
..

vim +/xhci_reset_halted_ep +857 drivers/usb/host/xhci-ring.c

   710	
   711	/*
   712	 * When we get a command completion for a Stop Endpoint Command, we need to
   713	 * unlink any cancelled TDs from the ring.  There are two ways to do that:
   714	 *
   715	 *  1. If the HW was in the middle of processing the TD that needs to be
   716	 *     cancelled, then we must move the ring's dequeue pointer past the last TRB
   717	 *     in the TD with a Set Dequeue Pointer Command.
   718	 *  2. Otherwise, we turn all the TRBs in the TD into No-op TRBs (with the chain
   719	 *     bit cleared) so that the HW will skip over them.
   720	 */
   721	static void xhci_handle_cmd_stop_ep(struct xhci_hcd *xhci, int slot_id,
   722			union xhci_trb *trb, struct xhci_event_cmd *event)
   723	{
   724		unsigned int ep_index;
   725		struct xhci_ring *ep_ring;
   726		struct xhci_virt_ep *ep;
   727		struct xhci_td *cur_td = NULL;
   728		struct xhci_td *halted_td = NULL;
   729		struct xhci_td *last_unlinked_td;
   730		struct xhci_ep_ctx *ep_ctx;
   731		struct xhci_virt_device *vdev;
   732		u64 hw_deq;
   733		struct xhci_dequeue_state deq_state;
   734		u32 comp_code;
   735	
   736		if (unlikely(TRB_TO_SUSPEND_PORT(le32_to_cpu(trb->generic.field[3])))) {
   737			if (!xhci->devs[slot_id])
   738				xhci_warn(xhci, "Stop endpoint command "
   739					"completion for disabled slot %u\n",
   740					slot_id);
   741			return;
   742		}
   743	
   744		memset(&deq_state, 0, sizeof(deq_state));
   745		ep_index = TRB_TO_EP_INDEX(le32_to_cpu(trb->generic.field[3]));
   746	
   747		vdev = xhci->devs[slot_id];
   748		ep_ctx = xhci_get_ep_ctx(xhci, vdev->out_ctx, ep_index);
   749	
   750		trace_xhci_handle_cmd_stop_ep(ep_ctx);
   751	
   752		ep = &xhci->devs[slot_id]->eps[ep_index];
   753		comp_code = GET_COMP_CODE(le32_to_cpu(event->status));
   754	
   755		if (comp_code == COMP_CONTEXT_STATE_ERROR) {
   756			/* endpoint is halted and needs to be reset */
   757			if (GET_EP_CTX_STATE(ep_ctx) == EP_STATE_HALTED) {
   758				ep->ep_state |= EP_HALTED;
   759			}
   760		}
   761	
   762		last_unlinked_td = list_last_entry(&ep->cancelled_td_list,
   763				struct xhci_td, cancelled_td_list);
   764	
   765		if (list_empty(&ep->cancelled_td_list)) {
   766			xhci_stop_watchdog_timer_in_irq(xhci, ep);
   767			ring_doorbell_for_active_rings(xhci, slot_id, ep_index);
   768			return;
   769		}
   770	
   771		/* Fix up the ep ring first, so HW stops executing cancelled TDs.
   772		 * We have the xHCI lock, so nothing can modify this list until we drop
   773		 * it.  We're also in the event handler, so we can't get re-interrupted
   774		 * if another Stop Endpoint command completes
   775		 */
   776		list_for_each_entry(cur_td, &ep->cancelled_td_list, cancelled_td_list) {
   777			xhci_dbg_trace(xhci, trace_xhci_dbg_cancel_urb,
   778					"Removing canceled TD starting at 0x%llx (dma).",
   779					(unsigned long long)xhci_trb_virt_to_dma(
   780						cur_td->start_seg, cur_td->first_trb));
   781			ep_ring = xhci_urb_to_transfer_ring(xhci, cur_td->urb);
   782			if (!ep_ring) {
   783				/* This shouldn't happen unless a driver is mucking
   784				 * with the stream ID after submission.  This will
   785				 * leave the TD on the hardware ring, and the hardware
   786				 * will try to execute it, and may access a buffer
   787				 * that has already been freed.  In the best case, the
   788				 * hardware will execute it, and the event handler will
   789				 * ignore the completion event for that TD, since it was
   790				 * removed from the td_list for that endpoint.  In
   791				 * short, don't muck with the stream ID after
   792				 * submission.
   793				 */
   794				xhci_warn(xhci, "WARN Cancelled URB %p "
   795						"has invalid stream ID %u.\n",
   796						cur_td->urb,
   797						cur_td->urb->stream_id);
   798				goto remove_finished_td;
   799			}
   800			/*
   801			 * If we stopped on the TD we need to cancel, then we have to
   802			 * move the xHC endpoint ring dequeue pointer past this TD.
   803			 */
   804			hw_deq = xhci_get_hw_deq(xhci, vdev, ep_index,
   805						 cur_td->urb->stream_id);
   806			hw_deq &= ~0xf;
   807	
   808			if (trb_in_td(xhci, cur_td->start_seg, cur_td->first_trb,
   809				      cur_td->last_trb, hw_deq, false)) {
   810				xhci_find_new_dequeue_state(xhci, slot_id, ep_index,
   811							    cur_td->urb->stream_id,
   812							    cur_td, &deq_state);
   813			} else {
   814				td_to_noop(xhci, ep_ring, cur_td, false);
   815			}
   816	
   817	remove_finished_td:
   818			/*
   819			 * The event handler won't see a completion for this TD anymore,
   820			 * so remove it from the endpoint ring's TD list.  Keep it in
   821			 * the cancelled TD list for URB completion later.
   822			 */
   823			list_del_init(&cur_td->td_list);
   824		}
   825	
   826		xhci_stop_watchdog_timer_in_irq(xhci, ep);
   827	
   828		/*
   829		 * If stop endpoint command raced with a halting endpoint we need to
   830		 * reset the endpoint first. If the TD we halted on isn't cancelled we
   831		 * must give it back with -EPIPE status, and move ring dequeue past it.
   832		 * If we can't find hw_deq, or the TD we halted on, do a soft reset
   833		 */
   834		   /* FIXME, is there a risk EP_HALTED is set from other cases */
   835		if (ep->ep_state & EP_HALTED) {
   836			enum xhci_ep_reset_type reset_type = EP_SOFT_RESET;
   837			struct xhci_td *td;
   838	
   839			if (deq_state.new_deq_ptr && deq_state.new_deq_seg) {
   840				reset_type = EP_HARD_RESET;
   841			} else if (ep->ep_state & EP_HAS_STREAMS) {
   842				/* soft reset, nothing else */
   843			} else if (!list_empty(&ep->ring->td_list)) {
   844				hw_deq = xhci_get_hw_deq(xhci, vdev, ep_index, 0);
   845				hw_deq &= ~0xf;
   846				td = list_first_entry(&ep->ring->td_list,
   847							     struct xhci_td, td_list);
   848				if (trb_in_td(xhci, td->start_seg, td->first_trb,
   849					      td->last_trb, hw_deq, false)) {
   850					halted_td = td;
   851					reset_type = EP_HARD_RESET;
   852					xhci_find_new_dequeue_state(xhci, slot_id,
   853								    ep_index, 0, td,
   854								    &deq_state);
   855				}
   856			}
 > 857			xhci_reset_halted_ep(xhci, slot_id, ep_index, reset_type);
   858			/* FIXME xhci_clear_hub_tt_buffer(xhci, td, ep); */
   859		}
   860	
   861		/* If necessary, queue a Set Transfer Ring Dequeue Pointer command */
   862		if (deq_state.new_deq_ptr && deq_state.new_deq_seg) {
   863			xhci_queue_new_dequeue_state(xhci, slot_id, ep_index,
   864						     &deq_state);
   865			xhci_ring_cmd_db(xhci);
   866		} else if (ep->ep_state & EP_HALTED) {
   867			xhci_ring_cmd_db(xhci); /* for endpoint soft reset command */
   868		} else {
   869			/* Otherwise ring the doorbell(s) to restart queued transfers */
   870			ring_doorbell_for_active_rings(xhci, slot_id, ep_index);
   871		}
   872	
   873		/* If TD we halted on wasn't cancelled give it back with -EPIPE */
   874		if (halted_td) {
   875			xhci_unmap_td_bounce_buffer(xhci, ep->ring, halted_td);
   876			list_del_init(&halted_td->td_list);
   877			inc_td_cnt(halted_td->urb);
   878			if (last_td_in_urb(halted_td))
   879				xhci_giveback_urb_in_irq(xhci, halted_td, -EPIPE);
   880		}
   881	
   882		/*
   883		 * Drop the lock and complete the URBs in the cancelled TD list.
   884		 * New TDs to be cancelled might be added to the end of the list before
   885		 * we can complete all the URBs for the TDs we already unlinked.
   886		 * So stop when we've completed the URB for the last TD we unlinked.
   887		 */
   888		do {
   889			cur_td = list_first_entry(&ep->cancelled_td_list,
   890					struct xhci_td, cancelled_td_list);
   891			list_del_init(&cur_td->cancelled_td_list);
   892	
   893			/* Clean up the cancelled URB */
   894			/* Doesn't matter what we pass for status, since the core will
   895			 * just overwrite it (because the URB has been unlinked).
   896			 */
   897			ep_ring = xhci_urb_to_transfer_ring(xhci, cur_td->urb);
   898			xhci_unmap_td_bounce_buffer(xhci, ep_ring, cur_td);
   899			inc_td_cnt(cur_td->urb);
   900			if (last_td_in_urb(cur_td))
   901				xhci_giveback_urb_in_irq(xhci, cur_td, 0);
   902	
   903			/* Stop processing the cancelled list if the watchdog timer is
   904			 * running.
   905			 */
   906			if (xhci->xhc_state & XHCI_STATE_DYING)
   907				return;
   908		} while (cur_td != last_unlinked_td);
   909	
   910		/* Return to the event handler with xhci->lock re-acquired */
   911	}
   912	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006301801.3A1COP3e%25lkp%40intel.com.

--+QahgC5+KEYLbs62
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICLoK+14AAy5jb25maWcAjDzbduM2ku/5Cp3Oy+xDEkm+tHv3+AEiQQkRSbABUJL9gqOW
1R3t2FavLHeSv98qgBeABJXJmTOJqgq3qkLdUPTPP/08Iu/n48v2fNhtn5//Hn3bv+5P2/P+
afT18Lz/n1HMRzlXIxoz9SsQp4fX979+255eRje/3v06/uW0uxot96fX/fMoOr5+PXx7h8GH
4+tPP/8U8Txhcx1FekWFZDzXim7U/Yfd8/b12+jH/vQGdKPJ5Nfxr+PRv74dzv/922/w/y+H
0+l4+u35+ceL/n46/u9+dx7tvk6extfXd9dX19df9jfT7dP2bvLxbn89eZrcfX2a3Gw/fbm7
G+/+60O96rxd9n5cA9O4DwM6JnWUknx+/7dDCMA0jVuQoWiGTyZj+MeZIyK5Tlm+dAa0QC0V
USzycAsiNZGZnnPFBxGal6ooVRDPcpiatigmPus1F84OZiVLY8UyqhWZpVRLLnAqEM3Po7kR
8/PobX9+/94Kayb4kuYaZCWzwpk7Z0rTfKWJAOawjKn7qynMUu+KZwWDBRSVanR4G70ezzhx
w00ekbTm3IcPIbAmpcsGs3MtSaoc+gVZUb2kIqepnj8yZ3suJn3MSBizeRwawYcQ14BoTuks
HTikv3x30ObRHdLFwg4uo68DC8Y0IWWqjGwcLtXgBZcqJxm9//Cv1+PrHm5GM618kCtWRMEl
Cy7ZRmefS1rSwKJroqKFNlhHKQWXUmc04+JBE6VItHBZUEqasllwNVKCWQksY6RABCxlKGDD
oCpprbug6aO39y9vf7+d9y+t7s5pTgWLzEUoBJ85O3RRcsHXwxid0hVNw3iW/04jhUrsqIuI
ASW1XGtBJc3j8NBo4eorQmKeEZb7MMmyEJFeMCqQGw/9yTPJkHIQ0VtnQfIYrmo1szcUyRMu
IhprtRCUxMy1ie5xYjor54k0Ut6/Po2OXztC6Q6K4LIvgbO5krUU1eEFXEBIkGAql2CCKMjD
MX2LR13AXDw2hrRRoZwjhsGZAnoE/0Kfo5Ug0dKexjFaPs4ePTCJWcHZB5svUNYaLavweNA7
Uj2mEJRmhYKpjMVub1sFX/G0zBURD+E7aakCW6vHRxyG14yNivI3tX379+gM2xltYWtv5+35
bbTd7Y7vr+fD67eW1SsmYHRRahKZOTo8MpLw0YFdBCZBwfuKZfxQeJWZjPHCRhSsCFCoIBMU
kUt0ozLMIsl8eCWR/4AXhmciKkcypIn5gwacu1v4qekGVDEkEGmJ3eEdEB7DzFFdjQCqBypj
GoKj5tJme9WJ/ZM0Elja/3Bksmx0iEcueAEX3+p146fRISdgHlmi7qfjVvlYriC2IQnt0Eyu
uvdfRguwKsYK1Goqd3/sn96f96fR1/32/H7avxlwdYwAtrnUc8HLQroyAd8TzYOKYYnt+pcI
ChaHNavCizgjl/AJ3MRHKi6RxHTFfAPTpQBtHdT/ep9UJJcXAcscMmIQCsgC9MXjW6mkzsPn
Bq8tOrha7iwGRKsfOVXeb2B1tCw4KAeaScWFZ/KsJmC4ZzYcXBv8fSLhKGDeIqIGBCdoSh4C
25ulS2S1iYuE447Nb5LBxJKXYOmdmEnEnYASADMATD2IH1kCwA0oDZ53fl87ES3naKb9OwjR
PC/AMLJHit7HCJeLjOSRx7IumYT/CNkeiJKUE7qYIKpk8eTW2UaRtD+sFWt/d2gzCCMZqoEn
vjlVGVgfXcVk4X0gk5uYrQInNvJoATbUbLyoZ1W6v3WeMTc98P0HkcCYMriZpAQn72wCf4IG
O0wouLtLyeY5SRNHb8wGXYAJY1yAXID9cTdEGA9shXFdio7rI/GKweYrZoVuG0w9I0IwI4Y6
L0Dah0z2IdpjeQM1HMILo9jKUy3Qh5AkPStg8okkDuzNROiYj7abhNlyCPfspa/vgqROlGks
VAcGw2kc07ijvHgfdBM11gqBQNiXXmWwa9d3FdFkfF27l6ooUexPX4+nl+3rbj+iP/av4PsJ
eJgIvT/Eaq2rD65l9xpYsfFT/+EyLUdXmV3Fxmyg+sGwNSuIgmR86V29lISzKJmWs9A9TPms
Ox4kJea0ThLDsy3KJIEMoSBAaM5LwIYHg0+esNTLEUxEYky/Fxf7xYZWe5xsB34YTZLoP7yE
BTHgfI0AGM+yso8yYNgr3N0MWHt/55giLcui4AIcHSmA9WDUSDeFQ02DIAjdr3OpIY1d2gir
msGNiKIleKc+wtJDuJukZC77+AQMHiUifYDf2hqNTqC0WFPIL1QfAVeUzQR4QxAeOD6XCXAJ
m0OWJvP1vDO4WwEuWnFdGfNafgvgDk8SSVVbDquXsya2ppzbApLJjeX9tArgTIg5Un9/37fX
qCMf2FqWEQifcvCokMjrDER7dwlPNveTG8dAGhL0RAUIDr1juJCAZHQmyWQyvkBQfLrabIbx
CTjpmWDxPOReDQXjxdV041lwA94U15cmjvkqHPgZbLEJh5YGKQYKNVbseN4LB5ZX0fTixjgw
f+KibYEFT/nXiL18f96/gDEzFd0R/47/QpPpEhXP2zOaPqMHjj3NiGH43Xg6+eSF6gifpwTS
3Xw5yObPd+Or6aSjSezz1WR67QRVZq58CizowGj2EaBeeeLikRpFBx1DGddOpDgdd/u3t+Op
o+WY7G7Qa7pVMICpRZnN4KoWeF181NX0x40PITNIm+nqRvngwsBTOifRg4+J4GjghNiqM0Kl
M726Xs9Yh7yY3PQh/g1FKBpWWw6S/XMnbW7mGF1zTn+W2O4uZtI/u7E/S5NNLGhaeLHeABhX
SCfVcW1GedMEUess2yhXsq4ZMpufvWMJ5vv34+nsZpQu2I0QEjf7bJy0LFKm9FU4qWzRGJiH
KiIVwdQL9mroJJSgGXdbW+O/7sb2H0//c6HnBeOtsV48okeBsGncLgKwIZMAqOkF1M0g6mp4
1I2P8jbh3MrF4/3EOY5NAhcC60uO3CkxOtzMz+F3FQxdLBIXSa5X4B9jdzDW6cDFhsIrUFe5
rkugBXGDgXU4EDTLrMFoWQdJUr0oIRNKZ77WZjwuMXRK3bGmroiOTT/ynHIRgxOeTJphddSC
wYOTgmIlAAtia6YWpr5RONZA0gjZ4nhoIgiW4fqQYOHND16bG2CvzxG4dWxsfZsIgHZ6jk9B
iBPg7qNJdQXP7HPf+K9xHzOT0iAcZ5RBfFbQHJIAHatQOBtlsXnwatP2DSuqJ5L22AgzgQ2J
Y4FrjMd37kVCPES/KZYVdAxncKwR3VD3jU4QCZ67dNmMZQv9iIkUzu5w0mNaXYUdFcc/96dR
tn3dfjNOp3adiEtO+/9737/u/h697bbPtijbZvygoYmgn4dqmoHRzcTs6bnjqVjcdUYIqaMq
sNmCrepKdpdozlcaT0tDGYBHBTpcBlZBlKJOZSRWFoHFXNp4HFCAZvej+HT44SVnqB6ArQ7S
cCI8yOWTZYYL6cnELJ88H7dYDR59Px5ez6P9y/tz/Yxtt3cePe+3byDj132LHb28A+jLHnjy
vN+d90+uvxmc0npYs42XZhvOjWszsVLijQgXvEOGbSDDMVFF1jFm1eRYhZHM89g2q2czuFlm
IpekOd3g/i07D6eXP7engCQTJrI1ERRNWubau2Sto6QqHrma6MJrGxDkyJzzOahVvUAvqFX7
b6ft6Gu9syezM1dgAwSNPLtn8pRTPBTeO775DcELmVR5bnu1GtT05haRoYvV0NxMpgMTECq7
o7skkEnD/6ZjCMJ4PrxMwdOHydX4plrI6w/YnnZ/HM6g3OAgfnnafwdm+NrqWUu/7mMMagfG
bdXAgRg33gcbLUSvg70A4LjAZ6xJ980foq9uvmvgXrWwjRNMer7gfNlBYg0Bfis2L3npzNW8
XmSFtVn2WbRPYJBYSATPrMqie5eIxCBAseShrj33CZaUFt2SdYOEWav39eCxzK7AoIoyUnq9
YIqmTKrOPFdTSLAxwtSqM4mgc1ClPLY1D10FHqTo8tCv2bUVOhwfgpvo3s7ZcaNNNMWKCCMV
rK1V/SGB81XRDlztVLkFjCG4GWnWBeVQNFLcQVYdND669zDro4eCz6j/vOyi//Fd1FCFH0dd
CogqK0YUNGKJ+2ZoA05pLgpNURRpQH0MBgTM8QkhxGGvBtMhoBtQm67iB0bd9aVb96IoXsR8
ndsBKXngZVcFI1481HqsUvcxKQXJ6BnwF4x67CA4NgixeeXGrnoI0unUqGqq9hYgv0PXTMFl
VnUUL9bOw8EFVDPcxJ1gT2P3nQhrhW7Ft4l45hFf/fJl+7Z/Gv3bxuHfT8evh24oiGRVlHup
Am/IKiNaPQK05dcLK3lSwKa5Ii3nthLQK9/+gy+opwKlz/CZxbXK5gFCYvn8ftLRXa84ZNlr
M6aUk3DsU1GV+SWKyp6EHzerGaSImv6zgQeQmpKFKwEVGpVLgNG8RIOl9LXOGMRSufMeq1lm
Krfh55ccLjao80M242mYBPQyq+mW+NgTekOqrIQSFNnKl8ZFtY9AqKMh5ZK5U4Irc9txCFYI
vDEy38vdvSo0UWBqIg2RWOCagK3VHPieQsKHrMBcCh2OYUd9O+hf+937efsFAnvsQx2Z15Wz
E3DMWJ5kCk2bd5QGqpO4YFHgVIDzQ5JqjIwEK7pOE/db4TFnDCyF4NArdIvFpslVge2ThWms
RNcSmAg0I1zpxd2i/wwmg0N8MkzM9i/H099OstOP23CD3kOE2XHOYxOhay9ENxzBOMW89/ny
r7r/mOTd7MPWvAplDCF4Q3n/yfzjHhBMszHXQ3UxQVGvPM+Ysbno5jkmhNOdV0F8Gso5BF/M
f8leylDkXbss46oyUHST6V+PP916BU2Ib4xnX/qReUpJbsqWwfqF1xgKP/vNGn1sEnwfBCyk
OETef2xqKwXnjut/nJVeMezxKgG/GKrWSOdNswNr3n0ye1ODO22IMZ8PLFCHyObZSzPQZU+n
bOSMMg716AGbTbFusO9rXhZ6RvNokRGxDF6Q4TvQCtS59XI5g4hH0dw4j9oa5fvzn8fTvzGb
D+TpoLxLGjo7mMyNZ0A3YGU8jTGwmJEwb9WAzd8kkHJidB3EYj/OkoZaY5g9akPJClsEiogM
vwUDAYlX2I8SawFRW7AKhBW33BWp+a3jRVR0FkMw1gDDXT8VgSAijMdzsYJdQs4FPo9m5Saw
TUuhVZnbgqHTbZSD6eBLRsPctgNXig1iE15ewrXLhhdAsWiyGMZBpDCMhBSKZ6GOdINtjusC
UeE6IBUVNdifvoyLYQU1FIKs/4ECsSAXiKF5uMMVV4f/nDfaFjhOQxOVMzcFapKMCn//Yff+
5bD74M+exTedGK7RutWtr6ar20rXsb023GxniGxPloTro+OBOBRPf3tJtLcXZXsbEK6/h4wV
t8PYjs66KMlU79QA07cixHuDzmOIUExooB4K2httNe3CVutys/EpAzfBEBruD+Mlnd/qdP1P
6xky8AvhoMqKuUgvTwQySMksmHllhYoco2d+9pTJQnETvW9j3DXwsx2sZvSdWIcGMkyTu4JD
zAY9MhDbikgQOysuIPFxJIoGzbOMBky3GGieVUOfmUDQGYSn04EVBtsybL0PjYz04qsKFH6/
TUmusTPhcxAd0yinYWGlaTQdOBBJw7LbTG/CU5Ei3M5VLPjQ8reQQhYkD8uHUopnurke0ooL
XdBxFHpyi3OJLbwcv9K6f3GEAeIjGBqvgpPxAnIduWYqChu+lcSPQQYiOrxy+MncoEfJigE3
avuQw0su5HCsZHca0/BhkCK9ghBYokcYovos1PACedT9OqGO423PNtIUgoW/AXNoopRIyUL2
2bjhjZ6V8kH7/ayzz16sg/2ev/ufXLkB7ui8fzt3ClBmd0sFcfzgAWPBwcPynHVqpU0Q3pu+
g3ADa0doJBMkHuLLwDWYhW8OSYBBg71UiV5GoWxwzQQFX+U/jSZzvGb9rqkG8brfP72Nzkd8
Gdy/Ym7+hHn5CNyAIfCapAwEMxysNSxMmwD2d7stHWsG0LDdTZYs2PaMUvnkuCf721SkGe+a
yU+BzwYcPrOBDw5osdBDH/blycDnhRIcVxp27iaYTcK4kJeujZRUtlXIeZYRHLaXpv5DImEp
lp1CJSG1UJA+17anWwCvLk2dDMb7H4dd4GnTPnxEzquJrWN6oO4Pp0++ZVLETL0DrnOYiYAn
sgh7UETqQoW0GZfLZGf9oe8EEfe5ZGIpO1sb/MQEcYLaYgDNTeHA/6rXHFeVs+6E2IOugi3M
iCVe8zcAaEQyH8L4qjenCIW+BkNkp1EIEtK0NMjenUbY7vh6Ph2f8Vukp0bm3mKJgv+fBDuh
EI2f4mKRK+Md/hpE7zswI8ENdlZvuqdaXUGYmA2cDEvM4KNIZyYLrARfKfDb4dvrGt+y8XzR
Ef5DNg1z7th43ZksXptN96G06MMKWzENQOtJfK2tkTSUzeLxU/JABVyXgvp8bOF2Hx7PIFrm
edArXeKDrZ8ev4C8D8+I3nf51FaYhqmsomyf9vhdgEG3yuQ2KbpciEhM84h2GFdB+3yuEUWn
PN1DGp4PaY5HWPGwbpr5x+03PSHhy9JcJPr6ZHphvAODqYjNFwNdudXw6qupYCHU0IH5wOTK
3bO3WrP+25+H8+6P8H12TdS6CgkVjbqTDk/hbj4iwSxakILFzP1IzAK0Sawxr8OH0atxF10Z
Uwjw1EabB5bAFBkBujnzn7Eb7IDJblcoM3yjc81QjcPaat4Hm1crHUFAXJsVsf1+eIJoTVoe
9Xhbj1SS3XzchLYZFVJvQrU7d+jt3dBQsKTh5KwmEhtDdBW0BgPbb7thDrvK5zud8G0h1z7x
2l7m4LvCSmWF39pUwyB0LvPg18SK5DFJuftnPgphV2oaqczfyqhl0DQpPR/h2p6cd561eU91
2yQakKm/x/j9boukGwVOo17EabpsRznN26FJHTTEXmk66zx7tZTh19Nu21V1oiY0tw0Gq+Z5
zHmnMi+tYVwH6sgCv/SynZBB8Rk0XQkq+8PQ/FRjIQLKOh971ILL9Gcu9bLEv6XSGKwKaWYg
5tu5ah7T1xSYxo6viWg9Ux351l8LYdcJBF+dv4MBiTcmic5tpnPvOcb+1mwa9WAQcLIeMMs8
e1aNdv+oBBomuQAdMgqWuLqCqMS4HdOY1Ws56F+4pr//ycTg7nOwiDKpZnrO5EwT4cWYK7ox
+lV5knBVYcF0L952vhyoF3TyHw4JyUB30DyXbhtZjq/bIBeSdoAZfj8fQkgmkjCmnG1aRLt9
FXI4sXLE6Hdv8wTfntTAX+wBLL4DY7+AO0H1iBdELfnsdw8QP+QkY94G6qd+D+ZpC/z2nuN4
Yv6siliB+nQ+sgWU7SIIvXTZ/iT8kq5Oy7DNzP8YbwgAxF4sUkEt08M5VzMQLGYSrlc4NLI0
f8jkIhnZ3N19/HQbsiMVxWR6d93fe86r/duyziqjoZDVg9tQ9/C2698qSXPJhYQ0X16lq/HU
7QCLb6Y3Gw0xmgoCfRsC5jZ78EVdLMCCcyeTUyzJOt2iBvRxs3HaUFgkP11N5fV44goJrEjK
ZQnuEJWFRTQULS7ANKWOuSJFLD/djafEbThjMp1+Gv8/Z9fSJbeto/9Kr+Yki8zVo/SoxV2o
JFWV3KKkFlmP7o1OJ+4Z9xkn8bGdO55/PwAplUgKVGVm4aQLH/gQCYIgCYJeaJxvSFpAre+m
FhLAEkWeca44QrujnyRraWU9tp5hEh1ZHocRbc4U3I/TgMqw11fG+GsY7zTQlrVj9Ku158CL
vZX23GVN5XBSCVD8FuvnsoQZiC1XOooOa/tAk+GRaF99G8ksu8ZpEi3o2zC/GocuI70qxJBu
j13JKYtyZCpLWLZv9JnHqvHEn+8S37OkU9GkCUASYULnYGYI3ZNAvP14/fZQ/fHt+9e/fpf3
xL99Auvm48P3r69/fMMiHz6///H28BHG4/sX/FO3MgVuoJBz1P8jX2qQm6N23DoAM7Sbg2/9
8f3t8wMo9od/e/j69llGCtRv201zbts559O1LLRuzI9UFAV0k4KK5RguIzdui0kEFkdXeyeH
4Dhxet/ymO2yJhsyaotF3sjSRcXQmcYuYFXcHNk4bv4rpuUwQBC98/RcqQQ36/pk+kir32rT
+FD+E6YEzb5WWN0eDtZJoerHsiwf/HC7efgJTOy3C/z7mepIWAKUuA1ONMgEwaTDn/VPWM1b
25JWEXGsUDK5FTBm1zaF66hTTiskgvU6nKx1+CxbT6esrlzxeqQ/RJnR+6ssy/H40HWo7ILO
VxeCJrvjdvgOzOZTQR+IHhwHpVA/XtI6Gr4L/uKta/8dzGfVKfQiunIeS4oT/WlAH86yT2WE
QEe551I4zgnlacXgKrWpmb2xN1t/ViK17/kO2vH9179Q34yr/ExzaTZ2d6ctwr+ZRDtJQFdt
YYo0LNgL0Fdh3hoW7BlmzJI+2BHP3bEl/SG1/LIi64Q5RY8kVNn9nh61egaH0hxrpfBD3+U8
NSWqs7yvoBAjyCOvq7zllNVlJBWlVF9zffPSZVGMk4/g9z6CZS9mpiVo8Kkj7qU1TgLgZ+r7
/uASyA7FKqQsLz1P0C2NqDJSBEAyaTpWtzW2FjJRu1wNat8JOMJMAOJq5Xvdferb3vCsUJSh
2aUpeeShJd71bVZYUr/b0A4Ku5yhKqTH+q650o2Ru8RHVIfW3unTMqOHHX/momS2JasnvCNQ
8MG4lW58b5Otp5k3/HUlTh2HGYnO1YmRspQfy5qbp7wjaRC04Nxgur1uMN1xM3ze36l01fcn
8zCdp9sfd4QoB6utNcd3RTn260mkt7ghtYeSVU1F6oXZnGCw8qNDHRR3dUlhamLlfFmTsYL1
VOOB81xQHdB+RPzUFOgbuZ4fXv8tjZXkrgzu1r18GQPUzm0sKUPTYUieBiYKGaLAHp/LnPZZ
D3PQs7HRK0CcXTEp9uKwRJfZqsu9Rn+Sm6xakmPFK5yUjKnhWF2jYxEMB5dfIKYa9qUb7ryN
c344Nhx9zmh/CQSd+g3A8M7nnLJLWZEDvkqD6HqloUaYzs4l3dTlGK7D4PMcTpgHeu0E9LPD
XfbqSgKAoxBEXNltXDUDwJXGEXlzz3yPHm/VgRaBD+yO4LGsP5emRwc7M5cfE3880DXjj893
LA0GpWRNa4x2Vl9BPmmzGLBILq9cKL+swvvLnfpUeW9K2yNP0w09cSMU+ZAtvaX6yF8g6WIp
Txfa2toLmiXZhHcsG5kS3SnIkcOee3N3AX77nqOv9mVWN3eKazIxFjbPEYpEr254GqbklqOe
ZylwJ9lQcTxwSNr5SjrQmtn1bdMyQ9E2+ztTWGN+UzVAOf+3SSMNt4byITa/tXk1eLwvFc25
Kipj/leBzS3NvUzYPhpfA/ztHVtD3f4ZD98N4+aYYTAyunufSzyk3Fd3lnhd2XC8uE2K6FPd
Hsxg6E91Fl4d8d6eaqetDHley2ZwwU/kfQy9IifckGOGmf+UZwlMIcMpcxjTTznuv7om2p7d
lZq+ML69j73NneGC3mmiNMyt1A+3Dod3hERLj6U+9ePtvcJAHDJO9lyPDtA9CfGMgaVn3MPh
OBfaRgeRstTDM+hAW2f9Hv6ZIQ4cLppAx/P6/N7uA1hXmal48m3ghf69VMYQgZ9bh2UIkL+9
06GccUMGOMu3Pi3+ZVc5jVCZzJEOi1gHN/e0NG9z3Du70rtCXMiJyPgMwfDKyP0eP5nGbdZ1
z6x0HFKiVJWOcDHoV9445qHqdKcSz03bwcLZWMRc8uFa20b2Mq0ojydhKFxFuZPKTFGh889F
3o3hjns8wtp8XeZ5NmcL+Dn0R1eoIUTBxINuFdThs5btpXppzDuXijJcIpcw3hjCe4uipY/o
eHKXXSu3Zh156hra2sWzLwpaGsDO6hxnK8rP7OwytKF7XM7iXe241Nl1jvjw9LL6xHfjdYRF
PDOE8kzQX4vgI6yuHKs6hLvykHGHOzbivahT3xFAccZpSxhxNFhTx8SNOPxzLR0RrrojrSwu
lo6eLjQMl4Laq0X2eXeZqbmSwoSx+Qs/V24QABq5TDYzU6bfVNUhbR+RQKcNIgKa1r8OqIdJ
zNCgLZ510rLYV5yZd6uITOe1HwWWYJM627TPzLsHBnYzXChQd+nXAd0xTKcLB//Lc6HbKzok
97TLRm6pqYN9ea/l4fKOV1N+Wl7j+Rnvv3x7e3v4/mniIpznL67TMnbFnXaXvG/cZ0Ly/IpX
9DyHyoG6BjKv+XlhVGg88f7y13fnEW7VqAfa5jyQMNQlOcAUuN+jM5N9sUhheH3LOoIzcC7D
ZT2aQRQkwjLRV9cRkTU/fXv7+hkfvXnHKPT/8fqbGeV2TNZi7JiVEj+0z8rL16CWZ5Jo+EIo
Ytaxrr1Ic1drT9ctGpXmsXzetZkeC22igF7KSWoXRanhGmxhlLk+s4jHHVXYk/A906vHgBJa
42s8gR9Ts/iNoxgvO/ZxGpHF1I9Qs7UcZEjgZc2RLIWppL5L5Fm88WOyRMDSjZ+uf5kStrV6
1SwNg5AoG4GQAkBJJGG0pZCcU9Su9wOf/IamvAhyAXPjwEuquNnFyfQd2OTplfRFv/HMK7UF
ItpLdtGD9M/QqVGStiwTY7HTJyxa14QgyKu1EiwYRHvKj0Ahyr8KV/F51sEyZzXvXc6obhCP
sr2WukyqFlrRTpoFwyc49l8liwwW4AhOohjwW3nel45Nz7EmVnClEexZtbEfK0GS8oLSNiOA
xhl1JCehvRdaGQBFOoy2Fj0oRncrm9/3F5TApoTeolL7kLJIFBRFk8Y9vn79KH3oq3+0Dzh9
GS6eRi3lT/yv6RqryDD1GGpypOZVxwObCsa+os5Wu6T3GbWLrLDxyJ/IDUgYP8ImZ30+kKVk
HZbuLEgpRzPhiTudcg8ZK5eHwqOLCNW4s6cbYTqoKfjT69fX377jBSLb6VYI4/js7IostE2H
TpjrbuU6Kcnkh9TyphFeDLBD5ylftbev76+flzd3lOvz7eUSsxcASIPII4naG14yXEqrvxOm
8/lxFHmwqM6AND0eQ7Dt0WinQtXpTLnycXLlYT3kRnBYfoU6VF4zyt9fZ2FlA/PVjv7Oppcb
ovyfGwrtMfwnK9dYZGwq9VISWUGWNc/DIqAgwZjxDgOZnbEsV2by3gZ6bd/JqygxTuro3k3m
1PN7jb7ntbPHLqQwG81CG/xGFUSQptT0NjK1+2F6YmbSm82ff/yCaYFbDgzpRrt04jRHh4wH
jcc65kXZkQubu65E6QQ08XUw3GTItzjMiUwjOvP8wNmCxqu99UiYAUx5uRuS53lz7agMJEBl
sOT044onjg2RkQmskTgkDZaRYZxOPojsMEr5Kr6iOBycw+65yxxRP82U9imIyTRuyXV8cIxG
k+F+Fyg3s0Vd+vxvJUUJU9dMbQnru2DRikCbRTIMLBSG9VB3ZPPP0ErLS6aq2dfl1XmSdJP0
BtQz3gqsDlUOM9yKppa37ag2UsDfkVHU8y9+GK0U0vWUnkYyXcDkAW5Ow1auLBd9ba36RqiB
TOWVUbNcedoknF5t+XNeZwV5Y4a110ztodV6cZLMWTYGE5kq8dzkuJo1L1ZO1OHgsOIdsXGa
4VjUjuPK4cAdGzztS0uGR2hOuN9tGlbj424V+QzV8TzdxDT2B5GaUyuJsQfweunuRNkv8uIp
9hzUwu6K2fBbPH8508aXyWNjS7KhQzJ2nbE5MzpSL2aBCpZt44PgvUWVgQDM91EUHW8AqXjW
xnpvxjBStsNdX3KpMwK1/brPSH82yafvaioCTECLMuWD9EVLR/bDOuHOU7vfG3ntFpWY4eNl
DJVOkNRboFVr3USccdXQ9MnJjSkHMSDf0c66Dh3WjLyhosxh3AD0uII5x7vI4R/5fghMM/Wz
cT94osgoEQR5vFQ6hYpYLGpuK9Kx/foTKFgMAXq7jK62BIOc2FnVryLBj0FuN8BcYJyVIuB8
IkqCYMSaW5VAZKfrVDb76/P39y+f335AtbEe+af3L9RFGEyW9Tu1doRM67psSIeaMf9JRRsZ
KDodoHTCa5FvQi+mknZ5to021BG7yfFj8bVDVzWofpZAXx5MogygqvEvasHqa97VBTl3rbam
XsoYGcCMEIQAZ4YEymavD+1uDsCE+d5W3eZrb2OsjwfIBOif/vz2fTXch8q88qMwsksEYhwS
xGtoN0nGiiSibuqOIF4psNNUqefqRVihH81yu6q6bkxSI92ZAosonZ5Avk5Wi1Y8iraRXQcg
xyG9gT3C25g2wBE+V9SKbkQ66c8wD231RN+veI9edcHDT79D33z+n4e33399+/jx7ePDP0au
X2DN9RsIzc/22MtR3+CYchQLFkx1aGRIDHMhZIG8zs5uVFsCOhj0AF6Ilaw8Wx1hGmcTZVBx
aqvmg/Ukiez1tgt1H16kPZasqwuT1i72rKWE5NlAvY+qsfSP4dUWCyZKS8XeXArGIPygy/8A
UxSgf6gh9frx9ct311AqqhbPDE+24i7qxmqhxd17WcV214r96eVlaNVUr2EiazmYHVa/iKp5
xgNBk3quQLNMx0fyQ9rvn5Q+Gr9Ck0RbzPa2PTpt5bmUjjVq6EBmEhoFz+SvZYg5denYNdbU
bWKna+7MgoryDovzUq42Bd9qHRpLpBzjgQJtDIZJfGZx0XDDCO4oq9wMKXLk5g9jvlf72FwP
MHV7iVaSP7/jrWe9NzELnPxJ+9iMagcLa1eIpEZ0I7uaWzo+lUXE74J8YLGDTq+P0lScv0eD
5CasXfyIjeOCrvLENKqXW33+U77P8v3Pr8uZUHRQ2z9/+y/KoAFw8KM0xTd2zDMY/YR/9NvB
U2RnFGLtqP/148d3dAAApSEL/vbv+nXKZX1un2ebJ0BQRprGAH/NhCnUzQIYH21f2i8jCRb4
YRLQvjg3lmsXeNSJ8cTA8i4IuZeaVqqNUqXj8y+OnYUby9WPPHrqvbEItqeMyFsNsmuSxIFH
1aDLahihq9n3j6lHhy2eONq8rFtSUEcGEKpjkx2ynmgetP2zJT3nm6TeakcJ4xssuOsICwdY
QMh5VDOP8DeI54IAcy0XHfol1RUDyzHybxtT7d6an6ckVf9k3yNQouQwOmRdpvcKddoc0VF/
heX31y9fwM6RmRFzj0yZbK5XGVPJVZwd4VEtRuyIgZJaXLLOCIOkbBCB//N8yilBrzxhCCm4
XzbecKwvhUVSj2jrFOmsfs4tKtulMU+uNrVsXvwgsamdPJO3qDxjWVQEIETt7rT4XrVp7ey9
ql1k98xz/YhLEpeelpL8Up5XuooVw368JG2+RUJJws1WltS3H19A4VISMvq5OAstGrvdDxhV
s1jUXTpbkB6mMxws+kVR7ZMedZyKK8+Q1lojwz6NEkppSVh0VR6k1qvtywZRQ2pf3GuoXZH4
aeBsqF2xjRKfXc72qMm2XhTYRGW/zpaFALN/TSt8yJqXQYjaysc26NW46NIktBsaiVEcLZp/
1JvLrkRd7256xeHwT1Wds5gTjL5RfidWdUTH4yjwU4qcxgvuJ3ZNY4t4YWno25xI1A+UJ+J2
a0TqIYTgFupzIRxG34t0oUVkGGF0YfbtKsr4qBLSYxVJqC/yMPCveqWIwpUrHt/dk9h52UIa
6EQOtm44HPrykDlC0kk5AENPf5704k+TlP/Lf7+PCxv2Cutwy0/TnwLgo99XS43hmaXgwUaf
xE0kDWjEvxj7njPkGGczAz9Ueg8QX6J/If/8+i/d2wLyUWswvBjOjLopOjeeR7uR8Vu8yAWk
TgB9eQs7FqbB41M3gc1cYkf2ur+dDqTOmoaeC/BdQOiseRgOeU+f2Zh8lFrWOSLvSpeepI76
JqnvqlZaeqTbtsHiJ4QMjbKiGb94mjBkZzIWscQwWqEZyngmEwsPggkjWT62ZvACG+eCjJau
cdmbzzaGfwr6UFpnrUUebKPAlRMTcRhQ4qozjSW58sCrGpmoXEsijVOZZn+T7XbyQ/nHlXgE
gYG3dJcIlczE5pNFPIbRQedH4yOY9fPyaxV95Z6EwXa8uIIbdUWmWEkUn4B3o5NxnxU5PuIC
2pO6v6QmZfnorjFZKPLkyz2PNTldr5Qqg9su4BHEHZoDDiowbL1YUzpj/YYsF+l2E2VLJL8E
nh8t6agOYo+mp8aK2ECoDXmDIVhmWZeHdijP4RLhO/0V4/EjFfFWvLokLckrZe+egkQtexb1
HiHchLifwXAsnohGAYM3pBprMoTn7b/xIwCxrjotk/qm0/ytk3FbhbIebp0tGbQNAPl7KXNI
T9Nhfyrr4ZCdyHO4KU8wfv3E2xDfOCIB1bQSCxz3PqfvgSUNCG1IacCJpeIdlkG1BhSRQuOv
JMZlgL4Mnui2dp9zlAK1WudahHFEybpWLX8TJUSxys+vHVniKF6yTCsNF7INSQRs+5T6IBDd
jR9REmNwbElpQyiIkjuJE/3sTwNgwUN8BWe7cEM0jVz0eHQ9xnUSVZFJ2qQMq9l2Q+jAXkSe
aXdNefcCdCPlgzQxnHLue15AfGKx3W4jbUkjpxzrJyxKCps0nkaorTLlJ/n6/f1fb5Tf8Bjg
tkg2vjEEDISyBmcG5nuB1iQmELmA2AVs6WoARF5d1zn8JHEk3gZk6IGZQyRX36OqJOD7nYBP
FwdQTPu2axwJGYtYQbTP2sgBNiqdlOdJHNABxG4812rYZ418iblvHffQb/mhA/JaTcS1Izq+
4Gpbe0H2Y0pO1Dxm3hqbsCp6HDK2WwL7xIcl055qBoTSYE8dFc0sUZhEfJntwXY5VGSW+2GS
hljHtVwFrHZPIhMlpzI51JGfkk9aaxyBZzr8jgBYSxlJDgiqOsluqDocq2Psh2sjodqxrCSq
APTODFt2Q3B/2TaGbR6RJss8P+Qbov5gSvR+QEkQPm4PsycBaCcZi/opnU2flZg8iW2m0Xxb
R4yKmQdmxDVVhRyBT2hGCQREm0hgEzk+bxOQVxhNDmLkoZEQezGZrcR86oDN4IhTOtst0d1A
D/0kJDoWI4eTukECITkjSGizpmUlBx3xXUJbar43K7ulKpt3ITnhiTyOyDmUlc0+8HcsvztO
ahaHZCezhL5rrTGszRkAEx0C1JQuLV2VJ1hOUpmllEQzauDXjGpYoFKiz7aOJtlGAXm5zuDY
kFO0gtZ1QpenSbg6sJBjE5AmRyNytV9ZcXq398aYCxhE5BcilKx2K3DAeploNAS23oYAupwl
V1KPt3k+dOldFSjZtrAipq8oTC2zT6OtNkY6tnC6HjmZ5e9CmHVBQkjWDhaW3Z6YDGCmGvL9
viOm96rh3QlWfB0n0T6MgoCUF4BSL6bv/s48HY823rr9VfE6TsGYuDOYA1i00tHVjJkooe+A
azxh6q8J0DgDEIKitLtH6+TAc6lxQCKyBZU+Te9UJtxsNnTGaZySuqq7ljBPrT780fGNt6Fm
VUCiME62S+SUF1sVb5MAAo+cU65FV/rk5vHE8VJDTYlMuwsbDTYL4EdBmQlApuYfIIc/qJoB
kK/ZI4T76c04ZyVM2eviWoJ5vPHW5yfgCXxyJ0XjiHG7kPguxvNNwkixmrAt7S1ksu3C7fqX
8PwYxcHf4AnXBycXgifRuibgjIF1sqr5cj9Ii9Qn5T4reGKdni95oEnTYK3nqyYLPEL+kU7P
EoCEwZ1FpsiTtXlZHFkeEcNAsM6nJjNJJywOSScbB5B7ihhZVpsGGCKfKPVcZXEaE6uxs/AD
nxDfs0iDkKBf0jBJwgMNpH5BfRhCW59+MsPgCdbW7ZKDNDkksm4WAUsNetxxfVnnia0giTMI
Y+x/CXuyJbdxGN/3K/y0b1ulwzq8W/NAS7TNWFdEyZbzoupJeiap7aRTncxWzd8vQUkWD9D9
kE43AIE3CZA4TngUYJ2InrDHoTuNYZqgwtX5JeUwNU3bDIAcDB2D+BbcxtGStkdaga/+/Ew1
5rQgt7Hkaubvhdwl2C94PbfbAr22TIbPGLtWyCQPPs/pZJp+rC+i1rQZr4xTjKNKeCCsnTzE
8Ucf5BOZEpI3uNPX8oHO2+46s5IIek+qo/yBo9dqKLeiTW+PpDSMVcCKXeDl0NKPC+pBayAe
O+m0pD0LSs+duBjxYMWpz3buIhdXuJXnAjEcIu7gqr6SW913CGryCpSuWnP+2RyhgiA698S1
asb6hUCaR6p1lffF16ffn79+ef1707w9//72/fn1n9+b4+v/Pb/9eDXjg818mpbOxcAIuhm6
okrx+tAhHTRfDuKIOFQRuqnNA7fDVR3HvgbLRi/ePWIwv7Miwzk9tGJsZwfxB1w/MdaCtYPN
dsn9jPE9dNe883wP5bwuh+tjfFtFXeynD3uNDODMj/fZsjQeF0K7/jEF7yBMkf+oGqRgZeJ7
giZXnVPi0PMo38/QO8PJng+gaHngIU4C38QvRmr/9efTr+cv69zNnt6+mKnlm+zRRMm7yRtp
sTBzcZzpBcXKTznYIL5lzTnbaxEiVK8aSZLJiBYq6dqzKx47UQWW56w2P0fQOnTOcqtbHO+z
kiBcAGwQTeVlzEF9x6stWREcDfwt8Uv2XdUVTEVA4NsxKyuLsdIgJ+85neDqm/rXPz8+g0vF
EkfIemYrD7mxwwPEtpuQUB4mqhi5wALdxqeUp00TRWhsY/kR6YI0MVMiSgzE8RwhYoPhy7wi
T0WGvnUAheiFaOepBpoSatvrSnaGvcAK0x0zAG56HawwM96X7FDwRfBxYfWOD9/BoxcSd6z+
WryCMSV/GieWKSqDHCRpvjEgQNWIGT6ejzqkpRLjbog8Cl1Vms5JqyRfFZAlTPMABMiRdBS8
iZZXMXVQMj8czAkwA7EGlE0QBztnA04sFrqY7BmUBqy5G9m3SCMBKYo0LOiLRkAzLOAuYLie
Gg3qwD7yOMDMGAAprcWzss41eVAg7vbiGq80bcrUETx6xbsHVOJj1AxnWhKm+ccMXfyJLKg5
2BNUtfVeobsQgaZbG5ruvMQaaAAH7pZNhiTYu8uKTS2mXYzfwy/IndkVi4CngzWvUwUOcokO
WayGlFU7Q/Rn6jtUPwAlizK1Vshqja4CLcsRCc2iLkqx+S6x51Q1YJagSYIz+XCaWW6pKppt
k3hAjgheRnr+5jvQOht1kvMtFZMTv42beKBxHsl+iDzPSi1K9qE/g90cu7Jxts/wFQJYx0ZS
hmE0jB3PSG5tVkUT7rb4beaETpMUv3ebuRclFpBfTgrpw6Eomg2PfS/SLtomOyX0RntCJYNZ
4wmeYhEOVvTO2AMWmyerc0x3FwWsObwoTFIEOvmX2PXc+e6NcSYInI9QM5HYXEP8eq+7Flsv
fDBjBAGkIXm0KK6FHyQhsiiKMoxCYyO0HG8ksDS3gy4p4njYWz2SxWGaDJit+ILehcPe4GX4
6ci9bUgjY2xQowgppbTsU12Rh50sNNkt6ns2I0NzG5t1YkumMy/jVhhKO3kQqftafSonV7HB
mk8LTohNmIWa/nlgTNJZ17T2ONNtd1Vfpa9Jg0wtNbKKSxdYioakxwWZoksomvEMdDq5rxQH
NkBUyLroNFOYlQBCHPVTtDXel9RREFyxyRu2O51DZ18+EELJMY0xmWSlAY0mVfcIHTUrOwhz
kkfhDhtDhWRSZxzfS6Xp8feLDmVjFhUFYbzoOg9ZW/PLQKlygIqyFCZlHhgKgo7RjUQ0XICe
HAaJjzE+kCoKowgdPdOcecUwXuxCD9OiNJo4SHyCcUac0BWkOIoTHy9Y4nA5QyVKE1Sq10lC
x+jLM+9x29ZjEft+Oh0eMxA0cRJjzbcFfR0XpTFeLuZv6iBS92YNl8bbnZN7GqMCuU4z6Qc4
Cp/bEpWETpSuG5hNQQUgk2jn4p7oljQmLsBHaNZ5jQjlGj5J8SIFKt3hJWaNLwYGxzXR1sfr
0qSpGptfx8ToHlQ2H5Nd4NhUQbV6Z1Od3MtQzgITuYZL6mwPGd8lZeTzBz4dCtGh/0Q1awsF
d0lTL3ajUjdqh6N019gVIVPoQRCdd/YpqdA9bM+q39koIePgxU+65UO+vDhGvof30yoi2Sih
5nkxuqMLVBpsHTsqmNz4cfjevr0oRg+rDkRBiI/jpPPgU1NRoxw4fJQlzg/RZaloU47mgJr0
bnMixzq96KF3VoQpiuuYyLGyJ0Ebq01mqeAtRIvCMy4VzOFL3EIsq6zOhYjpxkN8T+zNO6OZ
sZ8CpKo7dmC6NCvTNUlsi95V39HgsqkFM5MZw/qC0xTwKk+ZC4ywip9IXl8B63g5At4zX+vt
6Pj29PPrt89IAKrLkUCMyrUmMwBOGYgLyP/w4wWVq97u4o+xZA0bczUIF0DzZiT9YEfRlDjp
CVSWGJTT4gCOnzruXPI58qMNP+xX1Pq0eGcoKlJyyPfR1EV9vIn5dsDGFz447CHaLvL0viIh
BRQphHj4h9iebHRBiYxzxQ33f6CA0KWjGKBcKEttedWMFOYey9S4egDrOoPJpSUl2hOCEoUf
aTnKtylH77lw8B0/gfMyhr0Y1eLZid6j5oEG//zj8+uX57fN69vm6/PLT/EbBGdUHp/gqynM
auLpQUsXDGeFH2PbwUIAQeE7oTns0kGvjYaMrMgwrrrJypO2tFNrAFMIK53r5UiQ6CWxIvtK
bCutnldTLg5SiMXBeFMQzGVajkItli1RK6nWQaVsSU7NaTnBpOLcdNYSIGUulq+j4KruL5Qo
l8wzYEkHknWDvUctNNN7Y4SCF+OdP8K1NjpBiV5GKpWSXuQFO546s0kXVzZSiRRT2onsc9yz
THYU+gItR/BIjoEqiUjytiQ5MavWZqQFo4ZT7hCt7kTFJXfXs2PmM6eG/ji4m7EXequb8RzP
25gRGgnEzc8z1+A0pJJpEeVKyb/9+vny9O+mefrx/KIZINxJZU4LNFCDTcl7Pn7yPLFTl1ET
jVUntP6dtTFMxPuajicGyleQ7HC7Q524u/ief+3F9CpwG9mV/OHQTCSclc07zaEFy8l4zsOo
89XL2ZXiQNnAqvEMViOsDPZE1aw0shuYpR1uXuIF25wFMQm9HCNlkObjDP/t0tTPUJKqqguI
0uwlu08ZwUg+5Exo/6KwknqRZ078iebMquO8qYk2ersk1z3Vld6kJIdKFd1ZcDuF/jbG8jih
H4jST7mf6q63K2VVXyAr5jRT0PullbYuWEmHEbZr8WvVi56vsYbVLePgrH4a6w4eS3doF9U8
h39i5LogSpMxCvXUQyul+El4DeHtL5fB9w5euK0cT7DrRy3hzV6cJjchV72Xpkz96pYzMcPb
Mk78HaYgo7Sp4TegENXZWXbFh5MXJaLaO/TqXf2g2tdjuxdzJw8dTOfkdyOPcz/OH/NbaWl4
IujqUEji8IM3eOhSU6jSlHjiVOTbKKAH1awfpyYEnf+csnM9bsPr5eAfUQIh9jZj8VFMkdbn
g/5oaZFxL0wuSX5FY3sj1Nuw8wvqZMo6MRJMnN1dkrzHsq4gUsqwDbbk3OD8urYvbvN+nIzX
j8MRi+C90l8YF8JzPcDs2gW7HdY/Yv01VPTx0DReFGVBEqjyj3GyqJ/vW5YfKcbyjtEOJ7Zk
MN3s3759+dsU6mRo4kl30VqenUQXdoIriKfoXYWU2OctUICqJTa3xgbOkhE0TkwRlMIFSFon
1oBzRt4McGl3pOM+jbxLOB6uejura+FQtkDYbboq3MbWdAX5cGx4GgfWArqjtsZXQvIW/1iq
2W1MCLbzgsEGBuHWBMIRiQ5XB/nRxc8sDkX/+F5gfNrV/MT2ZHrDTOLH2OQhNjUHpBM76qHZ
Ok8LgedVHIkOTi3RA75tcj/gnsO8SwqGFYGApYP4ZYjDLXZLb5Il2kuMhs0bHSEzA+SXJPKt
ta+g7OsBY13Zi0IthHYVubCLWcAMxgzJ9R5os+boEiDLgestEoDDXgdlTChSfPwo9HBDJS39
oA/NOdkUvt0b3YUGD85ZIQ082MMO7WRRqityGRq7a5oYOTeaNWlQxtzMD8Y4t35gzdDSubte
mCGMcHIh5uKiA6hr4wFu7ijvuLnmZyGHVp284hg/9qw9m5Vn+zWXjdxND29P3583f/7z119C
Wc5N7fiwH7MSEhIrdREweTd2U0HK7/MNiLwP0b7KVUsm8bf0JLhQTmxVFMoV/w6sKFqx/VqI
rG5uogxiIcToH+m+YPon/MZxXoBAeQFC5XUfSKhV3VJ2rEZa5YxgPjhLibXq9AsdQA9C9qP5
qBprAPHlSLSQ1dA5ipK8QiHM3Hxro7MGJQyq2rHqiA7t1yVRARJoGvpOrkx0VQlsU2LWnvDZ
TUizgafLmSocBh3/lIijCDJ7Gl+ykneYvi5Qan5mpfP83LANhQkq854YrOdkKC4rlJXCHZBv
pbmPD17Xll30CQUA3QBlAS7m3QYYvSWBDkrQwEIwOWQgVoN8AgrhApITCcXA1ayFDtIvf+yx
/XAl0ms7Aw0rXIUluTg0HGiqvONyYUl381FLmwlnlCcgY+YYD8Ad9TkCIHyV8dD4c9661MKm
Hdqx+JkxRRkfQ1XdXmCqrzVMLVqLLYfpc+R8a2uj7DBHA/0LzKWu87r2DfpLJ+Q9TNKFjUOI
cdRahaTFM3DLvcDBKSNtaR4UM0ycPUQcYBfdh01DTtH8HXUsmdkFABLaTUYLXFyBHgbjUccA
lTzrD+ZSMS4RlSW3FxLK0G0jYwxnwyd9NVBQ0epS7weIaR8Ye9QMk+4oR2t+LdgHu5V9V6Vh
udgXPezRW3ZA4mt6GSoGyDNi//T5f1++/f319+Y/N0WWm6mr76ICXMBkBeF8fmlT2wO4B8mI
7qvQZGDh1zwKd94rcrKWfMh/eje3wHeXCYTrZBiF9vJKJJ/drwXFLyxXuun19GEVSQ7GEx5W
TYlKUJRiQI4UO5uyPSxX9F4cegRjLlE7R6c3aRTh9osr0cNwh/dKGn5IyqgbxmBK6Zco8JIC
fy1eyfZ57KNLQSm9zYasqhzFmAM7r5p31sZSihDvwPNbmdFChhB7PSrMwQuDtnZqM4HTXLj1
5rt+w+u+snO5n1huL9uTFs2R5Wu02q6l1bHT/FYEviXYJW9vsTEynvCfz58hgy3UwfJWA3qy
hQtJozCxw7doYkSJaxrVf0+CeiHHFyaTPS3ODJcxAJ2d4ELWUUh2YuKvm16MEEI5Ya1ZTlb3
RzS3FCBLkpGiMBnJV30DdmuEiMt1oOj2Y121hg/+Ch3RoNbwJYVn9IPOjRY007KZAuzTmd7M
ISz3TM8bLMEHdBOXqEIooHVvVF4wlnfdBvRmDN6VFF3dmKVdGL3Ka3ZXkbd2edHXvmPgw+wc
c9ZhohtgPpB9a4xId2XVSY2WMzWqgrRNXW3Ai2yJTKwCqdWLQhqvL468sICujwwWhJNACoql
6GtXQ0rRna1Zu5LcDuKINYZCqKRyJpl1LFnW1uAn7yoCLlJbc9qUfdExZMCrjukAofHTsw5q
hEIolqOYRsp2ogCtqdzQjhQ3PRGPhEO67ww/jiW+IJW8S88wixFJ0cIrpMlXrHtRaccn8/OC
XkMZ0xTSXRvgjpLSAtECckPr4Twlqq+aAg1bJsevNHr2CI9KQsHWE8MsQGOz0AuCFN4f6tuD
0jp2qc36iYXL8dCtEnsSK6W0vjlB6l9n4kAg6eG4GRtVH5M7BWNl3Rnbx8CqstZBn2hbQ0PU
khfYo074dMvFweNQS2UvycAv4wlN7CgPomJOJ7jkb0eOv3sSGP1c1gzDAOWcwsw+4hd2+1cB
bd5ef79+fn3BrnyA+XmPMwectbNoSWceFGGSrcLJf8xpevHWygTAZmvVRJvqZwtCK0CpfX0S
OhXchhV0vqVbJwbgUfM8cSSW+h4IULF1g46MucgAui8aNmrZiSdWVWW4aAJ4zl3Hx5NqbqQl
K+2nsAnGd1UlBLqMjhW9LnaMi2BVfvv1+fnl5enH8+s/v2Svv/4EdyBrtJeoOyBtMtQkRlLd
KgL+4kIxr1tudkbdQdyVOu+zrjB4WHQ54zLSEB3E+q4gYhG6WuY+5rKTZXRyvrfHBnJC815s
pVU+RUX6I/gPbbZWf/yrrABI8pytSZ6t2C9yjOJk8DxrKMYB5g4OzffHjDQIwhqxBSqO1opy
wjGslU0PUBQtXUJbuC4XnTh2nTkuEt91MD+kuZ6jn+laV/vzA8duP9Q6OapcD33ge6fGrjYk
OvDjwUYcxAQR39iIGm1+fa+A2c93DDcXUY1UWmt0PxM4Gs2L1Pfnqmjf3RGieVjIDmnPm5I4
hid1qynwnR6XZIFaLQCgzJMyJ565T+85olH28vTrl61MyeWSWc0V4kyFH7S9jGJjDGpX3lW3
Shy1/72RTe/qFi49vzz/FBvwr83rjw3PONv8+c/vzb44w9Y08nzz/enfJdvs08uv182fz5sf
z89fnr/8zwZywqqcTs8vPzd/vb5tvr++PW++/fjrdfkSGsq+P/397cffitGmfkblmSvogUAz
23FSXf15pUoVd9B4JPmRmieDxJyMp0NZBTlQOWoNLrfTaxaa3wBMnhsPvkELk4ipfs6dV9Lk
4I3Z1vrd4BRj6OXpt+ju75vjyz9LTKwNx2WPqR4EDRN3x9eH+RoSqSz2ZiS788SE7EKJ+ckC
F2Kfqz/vJHpkIA1Vcmvy33GsxG4TNBLkinHZyxLdB+0+T6H38IXYc56or9py7gv2+iXFCpW+
sbXjUlchmyv5HpnTmlGhIazNiBYJSUW259BXvb8U3HStgqKyU6jmLFEw15PQn06UdCg2Z0c2
3epTWwZYeDfi5Bhw1HR1MpYpiqZlQ4+Ofj90OYPcr4/76iK2/BblzRryEUe0jhKpWMemL8cj
OqF3Pa7cIfWDMHC1L/WNTKzIpJLvMY7mXXF436PwM71xobZDZrJHeEdlzwV/p63neg+GTBk+
RcqsG/tA9ZtSkfBAg2NqniS6b6KJ9aMH+dgN4nSLLvyxHHrn5K7IpXR2S1MEIRrRWKGpOxan
uhukgv2YEfQ6VSURZwdoQmj1eJM16RDhOHLA9xBAiF7Lc5rjeEZboeazVqx6znGSW7mvXVtm
hxvka/vCnrYfSIbd2yhkg9gJa7zh16tzVOoGrh/fGZWyYpUpVSjfZzW+7Aa4aBhL/MMr46d9
XTk6nfeaL6o6wh2+MPomT9KDHmhd3ZvVKHRw6umaJ3r80ZLF1o4kgAHmOC0F17zv+sHu6Qun
Lg0c8u11ZjI4iXDK9ss5kd2SLDalwJuR9VUe/rm8DzFLkIeG0EZdoy9fKGZL0pWhhI7lgcmM
9FPuLaPHmdB195ejsXcWli7StaTK6IXtW0eKX1n5+kralpkHl+6JN+l5kCtTqhwHNnR9a1SL
cXgMk6arWi1ugtK1q9BPsqMGY8qBGiv+DyJ/MLUezjL4JYy8EMdsYzXPhOwYVp1H0ce0RVol
Orjm09vGfeo2X//99e3z08umePpXCMDo3G1Omn1JVTcSPGSUXZwbzpS1GU8w0ZHTpQYqle0d
OEWY3N+WexrXYAoxNPQM2QqUCRsin07mk0a7lnO0Xv3+rgXprZPQB+ZRJhEY3VHcqswmdekZ
MxX0Krx4XfWrnxk7K5Rj1Zfjvj8c4Ek1UEp7IF+vs+L57dvPr89vomfWyyN9UhxgZnqWiLDc
Z7gVl2MLSPO75Z7A2UPNQILEtbbKy8zTgIXmOVs1lpP1AhcM5A2JqwionrWD78VH7qaSMo+i
MLaqJg7AYPIGsIFjbl6JSERqHEXH+mzIm/QYeMaCn2fEFP9YR+V9Wd7ulzrqkkCHXt9j9kI4
aGrOOmNbFBowHwtjG1smnEla7+lgwg7chGiv6RNovr8x9jb568G6p13gcyWc0+tO9/+sXVtz
27iSft9foZqnTNXJRiRFXR4pkpIY82aCkuW8sBSZ46hiS15ZPhOfX79ogBc02JQzW/uSWN0N
EHc0gO6vHZd60kUiVcnp9LFLGxYiIf83hQq2nrMrdxyNbBbzzfU3svQ/rNyCd2DB+ttx0b88
KTKy2/pyIG7gmqVnuXt4LC+Dl3O5Pz2/nACyeX86/nV4fDvvyNt8eMbqrbmf0+/GYnZc7Ss5
d3rruljHLmi73RHXcq5+XRHrdB4t1nMdsySGNmK38wX3hwdYD9U87k3cmX9LuPtPu4UAqvxU
39mikqFWA3jbVDZaZTn6eDg0SsV9qgILiJ9F7qYRQVMvzyUxy42JYax0stzlTJ28dlXnJPhV
uO5Sl1p5FmMWCqdYlUBgLQqH/mbc5+8v5WdXAtm9PJW/yvMXr1R+Ddjfh8v+R9dsSWYZgb9r
YIni2papN+M/zV0vlvN0Kc/H3aUcRKcH0nJeFgMAMcJcDwFPFaUnRzQquHpSsLsgV+0nogjN
gPQuY/4tP0lF9BVgxe+9/gNs9WLtqJcQPKtaeZbvipH7hXlfQPLKe1rzRUjerxcCl3krl7rV
AR5cOWCgFShNsIjgOYFOIgyANcTMiowp7nyihtMF0gaQVLwIwfVC+e/031w1yheRXjBOn4dr
fxH4YV/puIi/vY8T1slxFViT2dTdaL65FfeGBOCtyoIf7kRF1qCN9iRZs5VWwTXvg2DMB1jn
0+6t1jmIu2K3vbzaLS/t7dwoV0xfIj+C+Dc3qAAVrTuA5Egsn0/nd3Y57H8SQPd12nUs7pn4
uX4dNa9latLfGcR1ZmLoRdTu1Ih8FcZRcWGpCCUNN7NVoDV4toc37pYiXryFsTNFK2obrdYI
FHjzDM7fMdxcrO7gXBsv/a4JCNiqdppJpHec3DBVpClJjflSb6ve8JLMrLGGninpEDKNBiuW
hXSjsUX6bLRsfD8p6MJ2m37La/m0FXbLpyZPzR2PTOqj4xmJ1tiwh8a2k0xi0PWXJXWdmVZY
lY3tQuSXAAF61C0fJ9u9+YSpbQskwAgFaW94OLBkS75ScuCTwP4Vd2qrVw81UVqrE21Awqk1
7LGK+SyoFaQv2Eqv9YnRRRcTZGm531+jrvU+KgaG0RO0BrTsyhj3+Mm0v5lyy1ZBH+WYaXAZ
tenUE2RAmsS4DuDGdRLloWvPjO2VatdQm305d6Epm1lk/+oO+Brevi+7m9wzx+qKJ6gBs4xF
aBkzvZ8rhnSI0RYtYQ3w/elw/PnJ+FOoTtlyPqgM8N+OAO5EGNMNPrV2hn9qy94crge7/SyR
2q/MYoiY0LuOReE285davQCpSSNJdPaeSQrLz0RP0CK0o9IuI8sQD0pNe+Xnw+Njd5Wv7Kj0
+VObV0HMrE4hK17C95ZVkvdwVz5XGOfo6RbxSYdFJOGSeFVIxOHnvk2Q3/d8g1g7a1Zt39aa
gh1eLrvvT+Xr4CJbqh1BcXn56wCqeHWsGnyCBr3szvzUpQ+fpuEyJ2aB5iqHq+fwpqVcvJFU
6sT4OIu4sZ97Pn2/rOUCXhpXhm/ToGuvJ3oCvLNDECTAFronJQL+b8yVu5hSc33P4Yp7noC1
IHOztXIBJlitjWWTH9CJnLLcLZD7MxAgxOt4aky7HE1tAtLK5WroPU2svcn+OF/2wz/awoAI
Z+fJqq9MmmMukOKNxP4T44sTBocab0GZhiAYxPlChrrDGQh6miUuQZZgiqiANb1YB75AL+wr
arZBpzewmIXiEUfWWtyZz+1vPiPBWhsRP/k208skOdspGS6mEegEkKo5HutxS1QFJiPcPi1d
D7imcMd96NyVyOo+mtrjaxWGkHMzBE3bMvToM4hFQ8m3EnXwm07qXhzems9s11IvzWtGwELD
VGOyYIbZm8Qky7HlHBJ3vOKL+OqmRSUVrOHVdhUilvrUiji9jCnBiEZGPh2SPSE4vbH3arH5
rWVSt3XNl7WYKc386sLl1p3kAlQyOVEYP5bMhtSmUEss+MZukfXJ+ByjwfVbAXtq9CU1r/Wn
H/FT34SoyobTiVGVARY12f3M49MZDWHp8JcG2gqkLmuAaBODb0wTqxDkd8eH31m5PMaPX9en
Oh89ptETVxtVdYatFLGRZG/5IbkbJcQg4cuQSc90zrFpcHNFwCYGPKxsU7tYOFEQ3vctfWRY
OSRADk/OmZhTGvNIlRn9hsz0d/KhTk2tgDkaUgu/HppCoY/pMZnfGJPcoYMmtcvFNJ/SkJGq
iHWtZUEAQeDXdBaNzRG5/81vR9rhsTsyU9vtiSZei8DYpa9LaoleV3NVwCYXHgrvviP07T6+
jdLO5DkdP4Oa/8EUrgLMXv3AIud/DXuCNzUNLeMhXF8MRGS0a72ohXRr+mEiTS0a72lWHl/5
8ZRcFzwIHFm75jRlaKk9t5tcoAu7xImFHy8RmgbQmkg7KyeO/ZBhbqL4RjphDlEsI7aUL+tt
ge4KZxuAPInLw8DgFKcA2q2HUbWUIwJA6QWcjfGcdYEkLRyPROaK5+miKlFb/DTcYoIAWFjB
d4poqRrEtQylMe5E/bTngYraFUMPY3Bzr2cGBJBSI9RyLV6KNb3oPh3K40XpRYfdx26R1zVR
xwTo6tRQmK8Xiv9W/S3IBixplM/fCaqa67pKTnWCZBVRsvEr7K5rYjVOO4mlLkVWvpPi0ddQ
xaEKAaSrTDdCcNhalZuWW287ZnMrbzSaqAYhN4wvDlP9dyEOncNf1mSqMWq/sXZoRtBHbhD0
mAqucmN8gyE1KuNfibZGJBH06mq+iPjxGqG4pRVocZI3vD+UEymYAgJSyjzkU5nuSFWEsjpU
+J03hL4yV2naYq6R3yI8swULTEhhdVz6cZDdoiHIWR7gyksW9SIOqD1a/ANOYn7mJozeb8T3
ACKn6/KgSMR+vtXKmK01gw5OjBZ8Wyay2Cw4M0iiaC2edJVLbsHh6+7twsNENWshFCcig77c
0SpTU4ooUh0KGzJfNbedD1xB0BH8CEVjaEgdOB1emWJ+n8JDU+TEfBSip1fYYwoZlZpaACTQ
uJ4APuXHZN29VFlMg4W7UcbSRhg9QkqUoaDGPRZAkgvZXmEDbgGrXH8rxMbuu+Jhfz69nv66
DFbvL+X582bw+Fa+XpBzch1o7wPRuj7LzL9HzsAVofCZor+y3FlKmL52XkOggJ6YPXk4NWYm
jevOmWEwp1nTiYFTyZuhIBm8Xiq/ukaHkfER9vvyqTyfnstLrbbVUQswR0ofd0+nx8HlNHg4
PB4uuye4S+XZddJek1NzqtnfD58fDudSBjVEeda7g5dPLNUpqSI0EHT4yx/lK/XT3ctuz8WO
+7K3Ss3XJgbWmzllMtJOElUZPs63wjSGgvH/JJu9Hy8/ytcDasheGemlWV7+Pp1/ikq//6c8
/2sQPL+UD+LDLlkLe1btbVX+v5lDNVQufOjwlOX58X0ghgUMqMBVP+BPpvZI7SVB6PRSb1by
krV8PT3Bu9CHA+0jyQZNgJgBjf4roNHs5p2FvZS7n28vkA/PvBy8vpTl/of61R6JdnBUs10G
8OlMR+f4cD4dHlSlcYXCy6BgNQDrKtUroU5hhgz34qR4CsjstaWnqINSt28GuV/wo8LEHFEH
pSUrFunSAc0F7ahxwEvDUod+K5WPXoUb3hTbMN7CH3ffMtJkRqzZYJYX+7GKbCsZ2sV4dG17
EEwvIAFLBU+PFg80eGakMrthE/oGrl7XoUUy1WeoZiALwprYeR1rGAnl3dJykxQe17oZalBD
NRmM5DvE2kuE+r7E8vbA56EzQpe715/lBflg1wBkmNNmuw1COGQC5u6C8qgUllPCnB937CoC
cxQoESvmPWi0N6kLuLIk7zZc0lcKyyT0FgGj7VIhCC/oC0VP5C0AjI/8RvuiixX5YegAMv4V
JW0F8Xz5JGj7hv8QoaWS5GatzOZakOuwPp9camCyZkpRtDY4W1t4Tl0xj7rvVtJRLxSYPRuR
N4yKkBYiXuGwwEbuwBrL7mUZo54Ccd6IUuOxiIqUqHBcz/Unw3Evb2baNI8JQGM31dv3NskC
6rCjpCWCzircbuxJlXlHm2srIhuXvnlVRKqwwB+JyVjPUdTzZLy6Y2kQ88rcdJYJ9+m0/zlg
p7fznrSUFeZy4GRfpEE+Hs1pbYnKRMnDCcJ5Qm1Q8ujmqG5QktS+QsvFDNSMw34gT2rp7rEU
JgIKBAJKDYeuZY6943VOEabOR2wi9F1HzsmizYR9KKBm1a7EH1QL5ykuIhedTzUAQfxgmPM1
b71UDJCThZRS1DmAqScpdZAxLy/mAT+CxUs0thuxGiGoOovSvm+VEvh8upQv59OeeI/xAQus
elJXlMFOCpnTy/PrI5FJGjF0IBMEcTVC3RsLpnISrj+KMm90LgDjBPfmRqk8vR0f7rg2r1z8
SkbiDj6x99dL+TxIjgP3x+HlT1Ao94e/eOd62mntmR9uOJmd8E17rfkRbJkONNSH3mRdrkQB
Pp92D/vTs5auqaLLdQg3YvlcbQ8ykTytbNMvi3NZvu53fJjens58AdVLVG/q68B1q9twctH4
KC9pC/Tf0bavzh2eYN6+7Z542fUaN6lIvqL2J67mmS4Sbw9Ph+MvuhWlxxpfzddqI1IpmsPH
bw2Y5voR4mZuFpl/21xby5+D5YkLHk/oOUOyuOq0qSO+JLHnR06Mzg2qWOpnoPk42sMOJQl6
K+NajnJLrLDBjo6fKtweNqwWwcbXK0EYdLc1LvwNP1lQZkzb3G1NxvxfF36QqxGWOrhhUpif
ZN3iK1LIK8aCOVxRQncDFQcM18gtteLXkdd7SwgSlmXbnW8qppxEppPJdETfq1YyUvfo/2ya
x7ahxmyv6FkOgdOdDp1FNgokXpFr52jlaMfX7Uy53w9UJv9RufFStMKdk2T0boPp+muawgVb
+iQGtwHtYzdwfAEpTK4s67ieRJVQ/ol21zZNR1R8lcHMaURMVYTdEWjqFaNK0L1S0K/x6n3X
24bWSBlAFQFHpRBE1eCoImCpeeQYeJxzyoh0RZlHLh8/EtVHzaCl4qw9B7n9eo6lxQCKnMwb
UgASkqMGJQOC6vxzs2UesoMQhF6M/Zut+xWCONITKHIt06Kdb5zJSJ2pFQHXE4jjMfJMcqYj
1c6BE2a2bXS8nARVJyiGI9HW5V1hI8LYVAvE8ht+UDQxYe7geLr/h0vfZshMhjMjQ0NtYs4M
9Hs8HOu/i2DBF30RviwM1dHC2TPVitzxAvGK7ag+5s42NYfbLm06xTTXhfDzBiZ6zgzG4zJ1
sJe+F8YmSFILZLzxwyT1+QzN6xBx9Tlpi5Dsw9w1RxOdMLU1gmqCAPsBMpiDM/hYzTRyU2uE
TSwjPy6+GbK+5JCNnfWkz/hEbgSyBYjainf2jSPdZ5Etu+BIG4tim2jtJ5gsjYIi6CtUK7K5
8mkhwPlKo2UxmN3VvdtqXp7YoKPE6/pxVCK5yGqIIqkKGuOz3VYzA2rE991tb5tuFmNj2DNE
NgFf2cVdKx5tlaa3rUv+T59KFufT8TLwjw9I24F9IfOZ6+j4cTh7JXF1kHh54vqipjqtIndk
2nQ+bQKZ4kf5LPBEpHkMysbJQz6o0lUFmUy0kZTwvyWViLpH+GN1K5C/9Qtc12VTgzaWCpxb
HQJSUQ3ZZDikV3YoSJCJy/ZlSi7xLGUqTNLm23S2VXuy0yTShOjwUJsQwSOEy08Pp6N6pqAF
5NmQpTWrm67LREpEXjUtwzuQxqu2meo9So4/PhR3ctRoby7NQmwPyUDunGFNtUcye6Q/krUs
e2aRg8Oz5bWk8ns21oeAlyYQp6UnrjYbjcg3/2hsWhgvj6+xtkEbjQJralLmm3wdHk3UK0O+
ZPCy2PYEWRHAIuE5aLpfbeTmsfbh7fn5vTr6KfdT0HfyWCZATTr6ocKTZx/63rojK3Vact53
SvNfMspc+T9v5XH/3rxI/gccsjyPfUnDsL6tkDd74p5qdzmdv3iH18v58P0NHmPVkXxVTlrn
/ti9lp9DLlY+DMLT6WXwiX/nz8FfTTlelXKoef/TlG1spKs1RBPm8f18et2fXkredJ3FcB4t
jTEZvG3rMJNrJSg8XEPrPFmla2toD3W1Fc/q5X2WFBa8wnQmvGCBCbbOzpdW7ZauDdFuteSC
Vu6eLj+Udb+mni+DTKIcHA8XfUtY+KPRkJyR/Ig7RLB1FQUhO5DZK0y1RLI8b8+Hh8PlXemS
uiiRiWKweascHzZWHiiL9LX5KmemSW88q3xNrhUsmCDFHH6bqME7ZZXrAJ8OF3B5fC53r2/n
8rnkO/gbr7tSl3kUGChslPithRzcJmw6QVHMKgqWu4m2Y2X1CuINDLqxGHTomK4y8CCtxlrI
orHHtvR60l8r6eQoIit1O8376hXMMtBxYr01hirkiBPCuEH7T8hXe9ITw0k9NkPx+QRlhlpz
ZUxs7Tfe39zIMo0pPR6ARzqEc4ZlKlq+Cy7nNv49Vg97y9R00qF6wSIpvGbDoXJR0Wz4LDRn
QwM53GOeSVvJC6aha4AV8ytzDNMgbfnTbCg9z7WPSQd99cST2TjMebjhPTYi47HwZYAvGdrC
ABR0mI8Tx7BIL6YkzXn/oq+lvAbmEKjkPDUMtbDwe4TPz5aFhxdYEWwCRjrd5C6zRoZiCiMI
6iVL3Uo5b3XkDiUI2G8cSJMJ1ficM7ItVM01s42pSdlcbNw4xG0qKZZSz40fheMh0nQFRX1Z
3YRj7SroG29u3rYGOenxpJaGeLvHY3mR9wzEdL+ZzlR3QPFbvVq4Gc5mKG6cvFqKnGVMEjvb
qbPkiwltURBFrmWbI5pZLXEiT7GVUiOp6lh+nLKnI6vb4xUDr781M4sstB1ium5JRbajbOEW
8+gV65DRGp1bkGC19eyfDsdO5yiLOMEXArV/+uAzmFsdH7iGeyz186oA6crWaU5dZ+KWBmda
WqoqCv3Bais5cq1BOJjtjo9vT/zvl9PrQZgCEpX6HXGk9r2cLnzzOhB3rjaCPPSYMR3iWx17
pB1C+HmCL9g9Jw05vev5noa6ctRTILKwvJFUBSKM0pkxpPU/nETq4efyFXZtYsbO0+F4GC3V
2Zea+CQPvzvHuHDF1xY6JpHHD9ykJdYqVdszcFND0yAhiLyt/+6q1CFfA6i1O2L2GOuEktJ7
aQxsi3rHqZYLLbqfStVLldsjEu97lZrDsbJcfEsdrl6MOwR9geh0WatmHcEakpwJOrPq/NOv
wzPoqTBHHg6v0sKVOPMIPYIOxBsGnpNBmCa/2OApMDf6HDzTIKZM5bIFmOCqahHLFqovIdvO
9A17y4tFL+yQltaKYIvs9bzbhLYVDomQvU3zX220/19zV7kEl88vcJAmp2kUbmfDMbaxkjRS
Vc0jrnciCzFBoa9Lcr5a93gwCpZJB/qiylt/P84RcDL/yacabTIPvKDHCxx4El0v96njM/Bh
kKUJttAHep4kNJaqSORnVAxOkQ6gQ3QwjE3k60aO9RhXgxTzHzqOBJA0bAoggZ/eIkdAN0AW
UEvYeE9u7NntYP/j8NLFVuQcMNTCh6diEVDNBe6NmVPUjkC1UqDn3WSdOu5NFS+tvRYRF+R5
6gYm+YLYxKBI3FzF0ORLpg9mwxDIMQyxF4vkVTYp1a047SYhBKWX4pIKbSsF8qACDKpvSMFU
lr19fxXGF23bVV5KFXp4l1hEQRrw3Uxlz92ouEliRyCi45SQovKV5aMvyyT8DMH0epPJ8Ao9
PCfEsRyBCeMoiLbT6Fa3i1aEomDLG4yoDDDTrVOY0zgSkO09LKir/mWXj9X02kedNF0lsV9E
XjQeYwBF4CeuHyZwoZ15PjmxuIx4TJJw8rhkCgPj8wAz5wx+4h3S6zoaCk2eYOPiOmgaBV7o
87H21XcpU5TIRSsc/6mjKiJemLqdSZ2WZ0AuEPvKs7wc685vMMBzXeVwBIQ0QlZH1zJqZoYW
125Uz42uU0PsZYlqEV8RhH2gn/GpjVocc0k0Yi2D2vP6j+8HAHj614+/qz/+fXyQf/3Rlz18
vDGq7Hk3w04UnqM8RdeIQOpPfcGuiPCCyTynwQ9a3Q0u591eKFd6H7FcyZT/AMygPCnmDppR
LQOAjnLMqN8FFBJL1hmf9q4EwcfXFw23wfmij2JipdQhnuvby26NmovGVA1nUbmnp9D6HWz6
DrODUN+IQq5FtMzqNO4mJQaLkJI+DsR3Fpnvf/MrPpG6eqxNYZS5yToNVTsekXXmL7UI1MlC
5fQX3VtQHrkLFWeZ/6jjfhaxjASocGT43Nq0qs28ZdFhNxUBR0QoxtkyFAhHUOY+mENhYuKq
Bi0Q95m3zvZ/Kzuy5bZx5Pt8hSpPu1WZJHJsx94qP0AgJXHEyyBpSX5hKbZiq+KrdNRM9uu3
G+CBoyFnp2rKUXcTBECg0d3oQ86PbXcgUrdWeKk++XZ5YkTHI9j2ltNQSWL63FKv6FhwUme5
FldRRNnC/IWiiDN5RRwltGQmrRXw7zTUK0/BojBT84MUhnWUgkBPzZ1kps+25WOo7tI2GEEm
zxFtom4YakqgJY0L9I0xkgyGC5QrdWbTQuoR+unDBGg4TCKAsQizSK9SjT6d6CixtPHacqpB
XhBLp9SRTnEDMo6ZSK7DqZwDmhnEBkQK0GZQ7JtlbrqCBnVdZaWxcCQA48JkORj5qdCdiFYj
MWV788SciZTWKhXeErUVsASmYbx8nJT1DaXlKsyJ1QAvdfemqszGxalRCELBajPT/hjmx6pE
0LMcmP+YLS10E9x692iWzxyDPMyntJtIQ63kid36cP86+AHr0lmW6HJv9U+CbhJP3U2JRSla
H7sE5li6JcnSyPCikijQROIA5N4ePAtFqs+UddiCVmp2SgJqzPgP/IZT/FZRLFhZam+HI1sG
hsFBaARg4Z/+w7TikjtPGkeLCpW/Q4VuUowFVu08EzOdShMf2tdpv/UFJX8bVwQK4hmtRJ5e
PVvkp7Un4xCmq0g9iw6fxDXZRnyk5OAaIvxwIDsAkdn3Ng6kCnIqaySQUPcXEyF9BYHpZNrh
hczL/omjNV5oe7AVVSpybv+uJ0Whz1ID9We552E+peuE8GhsNIW/ZZrjgrwURCyL42wOXKwI
eSXaCdanRVLNQ4YRYlhUnA5ulFQV6FUxrf5KvFz5vo607M98REJpE12PRxE0l7UejxC+078s
YD6Ox+S+IFGXOf0hUj1nEvxoI46uPmx2rxcXZ5d/Dj/oaHh9KJnT6ddv5oMd5psfo19TGZgL
/SrZwpx4Mf7WfD24OPe+59ywaVs4alVaJF+9DZ96Md4BnJ8f6czle525/HruafjSzNNgPfXu
KC9PL309/maNMioyXD71heeB4Yn3kwPK+RYyLZGne+2rnIdahG9cLf4r3XXPiM58r6Fc8HX8
N9+Dvg/aDczTwaGnh0Oni7Msuqjpq8QOTSdUQTTmBBNZQpZ1bPE8BGWHm/1RcJA7K73AbIcR
GSsjlhKYpYjimGptwsLYNEZ1GJA/qaDuFh9xrEsZuE1GaRWVVItyxNHRQZeVmEVmUilEVeWY
vi0JYk+lqTTiVrGcVg/I6rlhSTY0IuUIu747bPESxcmThgeNLiYuMZn/dYX1LKW0a0iqoSgi
kLNACwBCgTGqZFdHTUtEXxuNKAzcF9fBFBSvUDDUlwxhFJFSpYm4QpL2bjjyQZXCXFqFNECX
ItIVzpbAhZiSb9dQI14ee1fOSi3cdwwyGOpjyiSkG5Gg11yqaVjuaBrGua6NkmjV9IfPu++b
l8+H3Xr7/Hq//vNx/fRmWOW6nhSJVanXJSmzJFvS8XQdDctBV048ZRw6qiXzJDbsu8PGeAMQ
0ffSHZmUNLN5ih5vXsPZxKMht6HX/ZfX8xRCi1cf0C/2/vXvl4+/Vs+rj0+vq/u3zcvH3erH
GtrZ3H/EROQPuC8+fn/78UFtldl6+7J+GjyutvdreYfbb5k/+vI4g83LBt3wNv9dNd64rezF
Ua6Ummh9wwSMwOQc+Bs/OZ/Bkk7J7dxTgIDnPIuhlCDmci13v2fqFDFa6ry0rT2IHlOL9k9J
50tv85duOnC3Z61pi29/ve1fB3ev2/XgdTtQy1mbO0kMw5sYSQkM8IkLD1lAAl3SYsajfKpv
PgvhPjJVCQFdoEsqdPtQDyMJOxna6bi3J8zX+Vmeu9Qz3YbXtoDZglzSPp8dCTdunBoUMitK
9zEe7HRUmRfTaX4yHp5cJFXsINIqpoFUT+QfStVtx1yV09BM+tlg7KsLE9vFviqTzuH70+bu
z5/rX4M7uYYftqu3x1/O0hUFc3oeuOsn1E3AHSyYEr0MuQgKygG3HX8lbsKTszOZSV1dJB32
j+h3dLfar+8H4YvsMDph/b3ZPw7Ybvd6t5GoYLVfOSPgPAGl2/pSPHG6y6cgHbCTL3kWL9GB
lNiBkwjzert7LbyObojhTxmwrJt2FCMZ04Cn3s7t48idPj4eubBSUCuGzNHadWPkDD8Wc6fp
bDwims6hZ7RGrvCLY68GKWcumLtr06l/jjFVY1m5XwdrlHRTOV3tHn0zaeT2bbkbBVxQk36j
KFtHufVu775B8K8nxOdCsPuSBcluRzGbhSfUhCvMkUmF95TDL4Gei7Vd1OSrvFOdBKcEjKCL
YCHLW36K54gkGJJ13jS8bn7owSdn5xT464lLXUzZkAJSTQD4bEgclFP21QUmBAxt+qPMPfjK
iRheug3Pc/U6JQ7I8tHuqmRmOvAeaiUHsfBpNYrcY4YJfkqunGxuZzezlg7D/GSRy9A5U4n3
DHOohnMXBULPiU7QHhcNciz/ugf7lN0SAk/B4oIRi6Hl08TbizCk5fMOL3Ir/4dDktAJzLsj
9sjJBdrVOCK2YAPvZ1itldfnN/TENIXtdhrHsbpwsDsQ39IKT4O+IEsrdM+6Ox5gU2pf3xal
W1RSrF7uX58H6eH5+3rbhue1oXv22sW6wLkgb9TaUYrRpE37S2Aaru0sMYljxxa6JOGlKwAi
wgH+FWERrRD9x/Il8UIUDTGp2BHzukXYCt+/RWxNkZcOFQD3Tk/pH0+b79sV6Dvb18N+80Ic
i3E0apgQAVf8xEU0Z5FWfNtLQ+LUTj36uCKhUZ0cSFX/JgmPLH2gCzzjb09IkHWj2/Dq0mW3
U5WLUSc+3tKxIR9t4V0hFIk8J9/UFerQW2QajdP62+XZgmTXGt5eiS4pKxM7T4uDVZoA9SKF
x85/OT3CRZHUTS+uIdEUs+Ch56aop+McTvL3iFgSZ5OI15MFdUnKimWShGh3kyY7TAqvd0pD
59UobqiKaoSE7l7FOMcfUovZyfqWu83Di/Jyvntc3/3cvDzojLTJ8FuKqmisiyLysIqGFPYi
1l4sSpq4vdj/jW604x9FKRNL5Scxbg+u2MtsYlAwmagF1j0wPQKYdCYhZngUgbyFSeY182Lr
KAuiWMrzZT0W0ifTyHGrkcRh6sGmYVlXZaTf9vFMBIY3qoiSEHTxZGQUy1Q2W93NuPPexbz8
mZGvX3IIvNrmSb7gU3XfLEJDQuewHOGcMUDDc5PClet5HZVVbT5lahnw08wFaWJgTYajJS2f
awSnxKNMzEEE8ewfpIBP58OSySC4dc5wvehpNHL1Kq6p2rYiBWssyBJz8A3qFnlklLYSlA7t
5ar2vbeZ9OdLrHgcEItqEjrlNJxsZXFbB2aZCwWpFxfUtVmDlC7DOfVY5Cuv0+AZmXC4R5ZT
WOdEu5i7m3Lrb9Aj/pc9ptqc8n7w9eQ2yknECBAnJCa+NSrt9IjFrYc+88BP3f0qTcvM8CiS
TmE3LG7dtzpuXmQ8go1/g1lWhVF1hhW46XUXXwWSZWAMZoBwIwNdCkpJXajaTMCqJvoFi8TJ
akYsl9cmeneU3CFbq+cC46NgpCOnGhRMQMwEIqehGRnQtVCEZZWr4lC6H2CHB61GyFsLhwQB
aZa2bVuFShArQgfEtYpI6x+rw9MeQ5L2m4fD62E3eFam+dV2vRpgDo3/aMIqPIwyWJ2MlrDA
robnDiYPBV6uYtGc4ReN57T4Ai0V8mmaN+l0fVvv0yYRWWjHINEdwhHD4miSJvhJLrTbUERg
vITtQNSe5ZNYrVltTq/1cyjOjC2Mv0nH9XaJxaZDW7cvZM1e3U2Dx7d1yYzGsUYMiKKUaJTk
kVGTF36MA23xoWs9+j3DCb3sDZDyFigI88zwUkdZhcxo7Iga5oVWKzNJ6Nt287L/qYLqnte7
B/dmWIoxM1n72hBOFBidj+g7AOUnj+n5YxBV4u6m45uX4rqKwvLqtJsrVebJbeFUu2JGB7um
K7JGFX2XvkwZllr2u58ZFLU38RVIrqMMJdZQCHiATtWKLcD/N5i9rAj1D+Od7M60sXla/7nf
PDdC5U6S3in41v006l1waBucvYXBQgoqHlopZztskcceUUQjCuZMjOnTcxKMsHZ1lHuyI4Wp
vPRJKrSSTUNO3aCPBUyidCK+wjo92kTD6s7hbMFwENLpU4BerzJ7F0bU3jTEoLoCnf9KRm5B
Nboi5Ciron9pwkqunS42RnavztJ4aU/yOMOQD+VGqCq06x/7tz/nH3py9WaXBuvvhwdZZSV6
2e23h2ezOl7CUPsCBUaGDrrA7qJXfYSrL/8MKSoVHEi30AQOFugEknJZbM0cfKGf3vLwh7ma
warQPwf+Jr5BNSqYEfMhARjrmZNrSaFHmAycXmyKAJ2Fj6C7k4WkQS6qCEkF8Lc+kDlFymfX
3X52N3V/gq5djQEjEwwXJSbW003NqjHEtief9Z4O1e5FIkW8/g6QZXR9UMLyLCqy1Ah5MOEg
6IDWkyqPGk11NWhuQ0EbYPuOwo721F+UJHOqcoFCZSOMCSzc8TcIT4AaSTr2GT9MMjwMyQpv
Jhn6Dfm7JXgl2dW7zaDElVduqIxJZX7jq6HF76QjSWXWVCyALwcNKkwDxabt9m8SFyJv/Bq3
MBslRu6QAZxPQImckOGInciuaFWdVqdlGqwyYbfuNa1koZxvZgx3vWtVVFj8OGr9yuWL8igL
AlMVVS3ICbr64vjJ9HvVHm8xtUo4NmI90A+y17fdxwFm0ju8qRNhunp5MFOvQ4c4Ou1koFaQ
u1XDY4hTBSzeROIKzarySpP2i2xcoo0FlZom665nqSOynlYwOSUraHey+TWci3A6BmT1JclL
1bv0I/H4BCgPRTgp7w94PBKcUK1Xx6legmVEAMm5qSbNRYSTNQvDXLE5Za5Dt4Oeyf9r97Z5
QVcE6PnzYb/+Zw3/WO/vPn369G/NkodBY7JJWSisj8foZGYsIkvEiCmEYHPVRArTRxv+JBqH
au8DVKirMlzo1vpmLTZVZ5ydQ5PP5wpTF3E2Nx0bmzfNCyPCRkFlxywNTLr1hbnLDhqEl/Ep
LQt6EIY59SKcXHlj1BbbNd+J0f4lBn6Y5pZ+ZJTO9H98726VyygaLG+KnE1XzYBfSKQ+dClG
wgzVVYo3rrCQlTXuyHEzU7zdw0h+KknkfrVfDVAEuUNrtKMdoGXbkRkaoM21qBWnUMrtVhl7
e+ULT5+0DljJUGXCTFROiKOx8z09Nl/FQW0BGQ2Ez6LdjHBSkoKR2jVcuwmlvzyetJhipLbt
vYjQHyG/hSQSvmhIxIbXRIXyPtmM0XtHsLlu9AghNQjyHWh9TfmyzKgtk2a56p6eQx0FcowW
xPUmkSCLGcUBVZk0ELrQtJ9I0UKbRbmwuck1pLnBrtogs+NKekNEhD+w0comWYzTPa2pJlar
mOvmsByksAQWE6ghZOed9zUAKgJu7P90BcPcve+IJDL9QNTElEllWi7J1fbZWJL97Rbmgyhl
8FZTK8rjxj9XGRSUCixHSNpROkJoWDdCJg3G3cYep8yGHTgSVMTDgBPaA3D5COsB+67P2vbq
isHhc3FyRid2Mskw6ZpfkgeqKOVxFYC6eY+T+/lt9fSMyXA+FZb62b3UHo56zXRZgNL7Y33x
Bf8jKFCcPE6BjaMgNy6vvGjM+2+n+7Fpxri+cUOIjDJHVGlnie/G/ry6e/x8eLlrfF0+PWqu
/iETcXO3SEtmaLwqsFgmyYzMdasbBsv1bo9HHwpkHGsarR7WWnxIZUjY8me7wG2wyXwVLFzI
zUbiJJNqjvE+OKY5cdDUlokm8Ys3gl4aO0gae0fPeKZ7nSpdAKR8ADd8z7xEQnqa8QPLxFvQ
UglrvhrewD5sWePohDvO9spc+z+2e1emWrYBAA==

--+QahgC5+KEYLbs62--
