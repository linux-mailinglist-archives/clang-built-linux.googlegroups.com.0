Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBG7J2X6QKGQEFP3HNIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id C34202B84E4
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 20:23:08 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id z29sf3729895ybi.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 11:23:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605727387; cv=pass;
        d=google.com; s=arc-20160816;
        b=tppvA2OP0B817FoGpgxncsBESlouL/c+0kixlAzN9SA950qxa5qyNY6jRBN+HexgB9
         IzhUYBJiGaEwAqvDcl/t+VMWLkj7/VZTs/qLi10w9hc1rRw4gakm+/lSgaYjPP2UE5xo
         pzYsiyyq+n3ygtt9Dg3cbyM7RUKjRXL9hV3XuWPVarY9hohbTqCBTfrGofCXvySPK0Sg
         xkElrgW4uOMQcHAvHq455JJkFL3BgFJhnpTnaONHRT6vOTQoH0itfhpRVzIVxpzNIDyS
         a9aw7jTXvNrhKpdQj8Gge+jDbTknYOz3ne4ogz8PypL1b/91/51J/DGbnQzteIRZgU3H
         Icuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=8iwE/yq/h/q7Ii/hCOCjab5IkndVP4WpQowyhzuch7k=;
        b=kixxteSFn4BWLtyeBl7ofYtTpQLV6QBt5quI5z8SX9yv95Tgi9VDl8CHnfIjQAj3+2
         9izwcHoPVDvquWJ83IHEWLBCDo2uDySHzm9fFHR/vmSPoJH1N6LZ2+HcM7S2N9vBzNRp
         8E/mVv/1KJmY70oeP2s2dHBBpJdnA9Y03B6XWlbuh4elRtDlRxtQ7xD75gRXV4Jk6FnZ
         D3Slv0SBmxT9R8u1pd9xJLoJIhjclFghCLPBYtWMGnSyGWNc/ILD7YbPi+b8+FGbq18y
         rgSmwdxUtXOTj+VUHaAtPYrpfH+AOgIQ0IgMT75wBKFTpSQ24qnqSEPe3IXFRSJY8w2C
         JcIw==
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
        bh=8iwE/yq/h/q7Ii/hCOCjab5IkndVP4WpQowyhzuch7k=;
        b=IRl9VP0YcTUmQu9csAXzh/yl+5GnVYqelwh3GL6rgKzOtI6H+iK1qAt1XKeiaKLg5I
         wrtDDKGPuQdroPLgvnodbCmLChb6qECLqRus7+/9VCvWTKDFOcNKPtFBVbZq1diOwZtr
         POg/ck+5PMxSNiguwts9BdORX3yr0Ubj1frdEjwaTasuwSa+gvP89nG4U8gG8gXByfSH
         olN7BsuGxI0qTQEsGXdTI5UL75iD3Oh+Qa7I/Oo+Rv1CI0zFEIU1/1ZNUnJ1pHMQuUI2
         8Ddd+xGF3FuwHqsXQnkB8QEZCaBWC5bHJ0/OlzhcLsdYfnpXLwnd8MwLKlxsJPBDbQmj
         +IzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8iwE/yq/h/q7Ii/hCOCjab5IkndVP4WpQowyhzuch7k=;
        b=I8QqQS1I7k8Mykgi7SlN6SW2JWHap4WNwALLJKIQBac/CvlP/aoEzoQs0EllYV4dDx
         xfIIS9Q5nSzNYfnwDEDxe+LJixyEa3/+jDgaeAwY4Y58l/3qrfUdE4R6VtR3ar0/4iL3
         ROZ5CQyKnTSPceRPo3S//BPVP+cJ9IotLfLpnJqQhs6EPr5H3ZzNLUku/zaHR8RxCiR9
         zeAT58i1Ccqz6dlBhYupvDLUYPTwdGGlW1391iwGq5D/U7YAGoVI9oLqRxwktRKPUml2
         cZMXK1UueqhxVGxsieh2iq5YkJCx15wQNOz02w/muNmSy4dVRp1jgDwMpfQt2B7p/vla
         uQIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531c+LVusXGgJpWn/rAXSQlpZ0fLd7Fs2dd7ojBErbqFTyNv2+xP
	jW2Roo/Toi9Xpml9yioDKLI=
X-Google-Smtp-Source: ABdhPJxacLp2c0R7OJekp1zpjrvUXnZ2UYjxBTL/vWY8XigKWjftYmvsyZxYMBJKdk1QfKRYesbkVw==
X-Received: by 2002:a25:cfc9:: with SMTP id f192mr8287991ybg.322.1605727387509;
        Wed, 18 Nov 2020 11:23:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c0d3:: with SMTP id c202ls380875ybf.5.gmail; Wed, 18 Nov
 2020 11:23:06 -0800 (PST)
X-Received: by 2002:a25:d215:: with SMTP id j21mr8197607ybg.279.1605727386731;
        Wed, 18 Nov 2020 11:23:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605727386; cv=none;
        d=google.com; s=arc-20160816;
        b=fje55xBpZO26if4cBp0FTskY/UOJTb8GCowwNZeEWioVbQxot62D1mrm9RPJ0HcOGn
         DWfAD/MWcL0GMaKZRzHsLAlgyhhKihxjKK/UYKOXkwhJlGfNrDntG/qvaid2+r0gEs1v
         CqP1/fNIRLmdG/BxqEOv+6cnUIk4MmEx8lQcdOfCWIq2HMTMA/Kl24EQ2bteBijXmqN+
         MXQrdwOZ4xIH7K5RoPC8oISox1YCWs2Rh1+1Zzlq/A7nFLAk5YdwowgOg7w5TG4loJVq
         eHN5sEO//X3A/fQW1RmKRKcQS80iHf+AGmyay38q/S+ypb1MCAIVIeZj1ggOzLg9yW8B
         OFXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=Y2ImMDTGimwiRBEWazZjdzR1YZcnamM2JDKuxENnTuo=;
        b=T+rDiHKxcZxmnpC1LQ9rDsw+k9i9lv7hmNMPXX+7MkD4/zWNG1TR1UJYqwwL3o4AKF
         dpXzvGGT9m033hRLwhrQ4tZQXZ5mtqyKpmAGJ2FTnimRGtm+vW5vTB3W1CT+bOxKhWVD
         q3gR3kbrQSGc1f8BkQWnjUu4svmtN70vH9ImjUtn2cobscJw10d5bFzBf69FIlnHv2o+
         GEIf7EzR7DlabcLdVnNfVJw008T/lUVZQ/ya6wA8p5tjQ1rjpOp5xjlCGQ0D/uwAec97
         5CWWkll6Pv/ZV5KYR7Nxv/A/0QVojWtUE0ivx8EKwlrlA5LWZUQgvIPjTJ06EBjcYr2Q
         Q5Qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id m3si858987ybf.1.2020.11.18.11.23.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Nov 2020 11:23:06 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: 5EUV4YW00SGJ21Ew9PJXhMxYbsAmVpR1wXwYWNj7U7egKK7s00Y6vBSl0nTFtHM0fuqIiXOeZg
 x5+e1CB2rZqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="235319222"
X-IronPort-AV: E=Sophos;i="5.77,488,1596524400"; 
   d="gz'50?scan'50,208,50";a="235319222"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Nov 2020 11:23:04 -0800
IronPort-SDR: hq9NSIkv880/EAVyCxv02F0rOYhuS1Ug8vAvUobRtB3pQtnTdfosQoElG4TS2jnjrvKbXTeWv5
 ntmI9GOgeDQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,488,1596524400"; 
   d="gz'50?scan'50,208,50";a="401250217"
Received: from lkp-server02.sh.intel.com (HELO 67996b229c47) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 18 Nov 2020 11:23:01 -0800
Received: from kbuild by 67996b229c47 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kfT2i-0000DW-Bc; Wed, 18 Nov 2020 19:23:00 +0000
Date: Thu, 19 Nov 2020 03:22:25 +0800
From: kernel test robot <lkp@intel.com>
To: penghao <penghao@uniontech.com>, gregkh@linuxfoundation.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	johan@kernel.org, jonathan@jdcox.net, tomasz@meresinski.eu,
	penghao@uniontech.com, hdegoede@redhat.com, dlaz@chromium.org,
	kai.heng.feng@canonical.com, richard.o.dodd@gmail.com,
	kerneldev@karsmulder.nl
Subject: Re: [PATCH] Changes since v1  - Change subject form "ALSA" to "USB:"
  - Adjust to approoriate line
Message-ID: <202011190308.mCW4gTip-lkp@intel.com>
References: <20201118065132.24772-1-penghao@uniontech.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8t9RHnE3ZwKMSgU+"
Content-Disposition: inline
In-Reply-To: <20201118065132.24772-1-penghao@uniontech.com>
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


--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi penghao,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on usb/usb-testing]
[also build test ERROR on v5.10-rc4 next-20201118]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/penghao/Changes-since-v1-Change-subject-form-ALSA-to-USB-Adjust-to-approoriate-line/20201118-150250
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
config: x86_64-randconfig-a013-20201118 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2613fb2f0f53691dd0211895afbb9413457fca7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/f3587e96a9e4faf16b800b261b5f72fd2991e811
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review penghao/Changes-since-v1-Change-subject-form-ALSA-to-USB-Adjust-to-approoriate-line/20201118-150250
        git checkout f3587e96a9e4faf16b800b261b5f72fd2991e811
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/usb/core/quirks.c:425:25: error: invalid suffix 'xa012' on integer constant
   { USB_DEVICE(0x17ef, 0x0xa012), .driver_info =
                           ^
   1 error generated.

vim +/xa012 +425 drivers/usb/core/quirks.c

   171	
   172	/* Lists of quirky USB devices, split in device quirks and interface quirks.
   173	 * Device quirks are applied at the very beginning of the enumeration process,
   174	 * right after reading the device descriptor. They can thus only match on device
   175	 * information.
   176	 *
   177	 * Interface quirks are applied after reading all the configuration descriptors.
   178	 * They can match on both device and interface information.
   179	 *
   180	 * Note that the DELAY_INIT and HONOR_BNUMINTERFACES quirks do not make sense as
   181	 * interface quirks, as they only influence the enumeration process which is run
   182	 * before processing the interface quirks.
   183	 *
   184	 * Please keep the lists ordered by:
   185	 * 	1) Vendor ID
   186	 * 	2) Product ID
   187	 * 	3) Class ID
   188	 */
   189	static const struct usb_device_id usb_quirk_list[] = {
   190		/* CBM - Flash disk */
   191		{ USB_DEVICE(0x0204, 0x6025), .driver_info = USB_QUIRK_RESET_RESUME },
   192	
   193		/* WORLDE Controller KS49 or Prodipe MIDI 49C USB controller */
   194		{ USB_DEVICE(0x0218, 0x0201), .driver_info =
   195				USB_QUIRK_CONFIG_INTF_STRINGS },
   196	
   197		/* WORLDE easy key (easykey.25) MIDI controller  */
   198		{ USB_DEVICE(0x0218, 0x0401), .driver_info =
   199				USB_QUIRK_CONFIG_INTF_STRINGS },
   200	
   201		/* HP 5300/5370C scanner */
   202		{ USB_DEVICE(0x03f0, 0x0701), .driver_info =
   203				USB_QUIRK_STRING_FETCH_255 },
   204	
   205		/* HP v222w 16GB Mini USB Drive */
   206		{ USB_DEVICE(0x03f0, 0x3f40), .driver_info = USB_QUIRK_DELAY_INIT },
   207	
   208		/* Creative SB Audigy 2 NX */
   209		{ USB_DEVICE(0x041e, 0x3020), .driver_info = USB_QUIRK_RESET_RESUME },
   210	
   211		/* USB3503 */
   212		{ USB_DEVICE(0x0424, 0x3503), .driver_info = USB_QUIRK_RESET_RESUME },
   213	
   214		/* Microsoft Wireless Laser Mouse 6000 Receiver */
   215		{ USB_DEVICE(0x045e, 0x00e1), .driver_info = USB_QUIRK_RESET_RESUME },
   216	
   217		/* Microsoft LifeCam-VX700 v2.0 */
   218		{ USB_DEVICE(0x045e, 0x0770), .driver_info = USB_QUIRK_RESET_RESUME },
   219	
   220		/* Microsoft Surface Dock Ethernet (RTL8153 GigE) */
   221		{ USB_DEVICE(0x045e, 0x07c6), .driver_info = USB_QUIRK_NO_LPM },
   222	
   223		/* Cherry Stream G230 2.0 (G85-231) and 3.0 (G85-232) */
   224		{ USB_DEVICE(0x046a, 0x0023), .driver_info = USB_QUIRK_RESET_RESUME },
   225	
   226		/* Logitech HD Webcam C270 */
   227		{ USB_DEVICE(0x046d, 0x0825), .driver_info = USB_QUIRK_RESET_RESUME },
   228	
   229		/* Logitech HD Pro Webcams C920, C920-C, C922, C925e and C930e */
   230		{ USB_DEVICE(0x046d, 0x082d), .driver_info = USB_QUIRK_DELAY_INIT },
   231		{ USB_DEVICE(0x046d, 0x0841), .driver_info = USB_QUIRK_DELAY_INIT },
   232		{ USB_DEVICE(0x046d, 0x0843), .driver_info = USB_QUIRK_DELAY_INIT },
   233		{ USB_DEVICE(0x046d, 0x085b), .driver_info = USB_QUIRK_DELAY_INIT },
   234		{ USB_DEVICE(0x046d, 0x085c), .driver_info = USB_QUIRK_DELAY_INIT },
   235	
   236		/* Logitech ConferenceCam CC3000e */
   237		{ USB_DEVICE(0x046d, 0x0847), .driver_info = USB_QUIRK_DELAY_INIT },
   238		{ USB_DEVICE(0x046d, 0x0848), .driver_info = USB_QUIRK_DELAY_INIT },
   239	
   240		/* Logitech PTZ Pro Camera */
   241		{ USB_DEVICE(0x046d, 0x0853), .driver_info = USB_QUIRK_DELAY_INIT },
   242	
   243		/* Logitech Screen Share */
   244		{ USB_DEVICE(0x046d, 0x086c), .driver_info = USB_QUIRK_NO_LPM },
   245	
   246		/* Logitech Quickcam Fusion */
   247		{ USB_DEVICE(0x046d, 0x08c1), .driver_info = USB_QUIRK_RESET_RESUME },
   248	
   249		/* Logitech Quickcam Orbit MP */
   250		{ USB_DEVICE(0x046d, 0x08c2), .driver_info = USB_QUIRK_RESET_RESUME },
   251	
   252		/* Logitech Quickcam Pro for Notebook */
   253		{ USB_DEVICE(0x046d, 0x08c3), .driver_info = USB_QUIRK_RESET_RESUME },
   254	
   255		/* Logitech Quickcam Pro 5000 */
   256		{ USB_DEVICE(0x046d, 0x08c5), .driver_info = USB_QUIRK_RESET_RESUME },
   257	
   258		/* Logitech Quickcam OEM Dell Notebook */
   259		{ USB_DEVICE(0x046d, 0x08c6), .driver_info = USB_QUIRK_RESET_RESUME },
   260	
   261		/* Logitech Quickcam OEM Cisco VT Camera II */
   262		{ USB_DEVICE(0x046d, 0x08c7), .driver_info = USB_QUIRK_RESET_RESUME },
   263	
   264		/* Logitech Harmony 700-series */
   265		{ USB_DEVICE(0x046d, 0xc122), .driver_info = USB_QUIRK_DELAY_INIT },
   266	
   267		/* Philips PSC805 audio device */
   268		{ USB_DEVICE(0x0471, 0x0155), .driver_info = USB_QUIRK_RESET_RESUME },
   269	
   270		/* Plantronic Audio 655 DSP */
   271		{ USB_DEVICE(0x047f, 0xc008), .driver_info = USB_QUIRK_RESET_RESUME },
   272	
   273		/* Plantronic Audio 648 USB */
   274		{ USB_DEVICE(0x047f, 0xc013), .driver_info = USB_QUIRK_RESET_RESUME },
   275	
   276		/* Artisman Watchdog Dongle */
   277		{ USB_DEVICE(0x04b4, 0x0526), .driver_info =
   278				USB_QUIRK_CONFIG_INTF_STRINGS },
   279	
   280		/* Microchip Joss Optical infrared touchboard device */
   281		{ USB_DEVICE(0x04d8, 0x000c), .driver_info =
   282				USB_QUIRK_CONFIG_INTF_STRINGS },
   283	
   284		/* CarrolTouch 4000U */
   285		{ USB_DEVICE(0x04e7, 0x0009), .driver_info = USB_QUIRK_RESET_RESUME },
   286	
   287		/* CarrolTouch 4500U */
   288		{ USB_DEVICE(0x04e7, 0x0030), .driver_info = USB_QUIRK_RESET_RESUME },
   289	
   290		/* Samsung Android phone modem - ID conflict with SPH-I500 */
   291		{ USB_DEVICE(0x04e8, 0x6601), .driver_info =
   292				USB_QUIRK_CONFIG_INTF_STRINGS },
   293	
   294		/* Elan Touchscreen */
   295		{ USB_DEVICE(0x04f3, 0x0089), .driver_info =
   296				USB_QUIRK_DEVICE_QUALIFIER },
   297	
   298		{ USB_DEVICE(0x04f3, 0x009b), .driver_info =
   299				USB_QUIRK_DEVICE_QUALIFIER },
   300	
   301		{ USB_DEVICE(0x04f3, 0x010c), .driver_info =
   302				USB_QUIRK_DEVICE_QUALIFIER },
   303	
   304		{ USB_DEVICE(0x04f3, 0x0125), .driver_info =
   305				USB_QUIRK_DEVICE_QUALIFIER },
   306	
   307		{ USB_DEVICE(0x04f3, 0x016f), .driver_info =
   308				USB_QUIRK_DEVICE_QUALIFIER },
   309	
   310		{ USB_DEVICE(0x04f3, 0x0381), .driver_info =
   311				USB_QUIRK_NO_LPM },
   312	
   313		{ USB_DEVICE(0x04f3, 0x21b8), .driver_info =
   314				USB_QUIRK_DEVICE_QUALIFIER },
   315	
   316		/* Roland SC-8820 */
   317		{ USB_DEVICE(0x0582, 0x0007), .driver_info = USB_QUIRK_RESET_RESUME },
   318	
   319		/* Edirol SD-20 */
   320		{ USB_DEVICE(0x0582, 0x0027), .driver_info = USB_QUIRK_RESET_RESUME },
   321	
   322		/* Alcor Micro Corp. Hub */
   323		{ USB_DEVICE(0x058f, 0x9254), .driver_info = USB_QUIRK_RESET_RESUME },
   324	
   325		/* appletouch */
   326		{ USB_DEVICE(0x05ac, 0x021a), .driver_info = USB_QUIRK_RESET_RESUME },
   327	
   328		/* Genesys Logic hub, internally used by KY-688 USB 3.1 Type-C Hub */
   329		{ USB_DEVICE(0x05e3, 0x0612), .driver_info = USB_QUIRK_NO_LPM },
   330	
   331		/* ELSA MicroLink 56K */
   332		{ USB_DEVICE(0x05cc, 0x2267), .driver_info = USB_QUIRK_RESET_RESUME },
   333	
   334		/* Genesys Logic hub, internally used by Moshi USB to Ethernet Adapter */
   335		{ USB_DEVICE(0x05e3, 0x0616), .driver_info = USB_QUIRK_NO_LPM },
   336	
   337		/* Avision AV600U */
   338		{ USB_DEVICE(0x0638, 0x0a13), .driver_info =
   339		  USB_QUIRK_STRING_FETCH_255 },
   340	
   341		/* Saitek Cyborg Gold Joystick */
   342		{ USB_DEVICE(0x06a3, 0x0006), .driver_info =
   343				USB_QUIRK_CONFIG_INTF_STRINGS },
   344	
   345		/* Guillemot Webcam Hercules Dualpix Exchange (2nd ID) */
   346		{ USB_DEVICE(0x06f8, 0x0804), .driver_info = USB_QUIRK_RESET_RESUME },
   347	
   348		/* Guillemot Webcam Hercules Dualpix Exchange*/
   349		{ USB_DEVICE(0x06f8, 0x3005), .driver_info = USB_QUIRK_RESET_RESUME },
   350	
   351		/* Midiman M-Audio Keystation 88es */
   352		{ USB_DEVICE(0x0763, 0x0192), .driver_info = USB_QUIRK_RESET_RESUME },
   353	
   354		/* SanDisk Ultra Fit and Ultra Flair */
   355		{ USB_DEVICE(0x0781, 0x5583), .driver_info = USB_QUIRK_NO_LPM },
   356		{ USB_DEVICE(0x0781, 0x5591), .driver_info = USB_QUIRK_NO_LPM },
   357	
   358		/* M-Systems Flash Disk Pioneers */
   359		{ USB_DEVICE(0x08ec, 0x1000), .driver_info = USB_QUIRK_RESET_RESUME },
   360	
   361		/* Baum Vario Ultra */
   362		{ USB_DEVICE(0x0904, 0x6101), .driver_info =
   363				USB_QUIRK_LINEAR_FRAME_INTR_BINTERVAL },
   364		{ USB_DEVICE(0x0904, 0x6102), .driver_info =
   365				USB_QUIRK_LINEAR_FRAME_INTR_BINTERVAL },
   366		{ USB_DEVICE(0x0904, 0x6103), .driver_info =
   367				USB_QUIRK_LINEAR_FRAME_INTR_BINTERVAL },
   368	
   369		/* Sound Devices USBPre2 */
   370		{ USB_DEVICE(0x0926, 0x0202), .driver_info =
   371				USB_QUIRK_ENDPOINT_IGNORE },
   372	
   373		/* Sound Devices MixPre-D */
   374		{ USB_DEVICE(0x0926, 0x0208), .driver_info =
   375				USB_QUIRK_ENDPOINT_IGNORE },
   376	
   377		/* Keytouch QWERTY Panel keyboard */
   378		{ USB_DEVICE(0x0926, 0x3333), .driver_info =
   379				USB_QUIRK_CONFIG_INTF_STRINGS },
   380	
   381		/* Kingston DataTraveler 3.0 */
   382		{ USB_DEVICE(0x0951, 0x1666), .driver_info = USB_QUIRK_NO_LPM },
   383	
   384		/* X-Rite/Gretag-Macbeth Eye-One Pro display colorimeter */
   385		{ USB_DEVICE(0x0971, 0x2000), .driver_info = USB_QUIRK_NO_SET_INTF },
   386	
   387		/* Broadcom BCM92035DGROM BT dongle */
   388		{ USB_DEVICE(0x0a5c, 0x2021), .driver_info = USB_QUIRK_RESET_RESUME },
   389	
   390		/* MAYA44USB sound device */
   391		{ USB_DEVICE(0x0a92, 0x0091), .driver_info = USB_QUIRK_RESET_RESUME },
   392	
   393		/* ASUS Base Station(T100) */
   394		{ USB_DEVICE(0x0b05, 0x17e0), .driver_info =
   395				USB_QUIRK_IGNORE_REMOTE_WAKEUP },
   396	
   397		/* Realtek hub in Dell WD19 (Type-C) */
   398		{ USB_DEVICE(0x0bda, 0x0487), .driver_info = USB_QUIRK_NO_LPM },
   399	
   400		/* Generic RTL8153 based ethernet adapters */
   401		{ USB_DEVICE(0x0bda, 0x8153), .driver_info = USB_QUIRK_NO_LPM },
   402	
   403		/* SONiX USB DEVICE Touchpad */
   404		{ USB_DEVICE(0x0c45, 0x7056), .driver_info =
   405				USB_QUIRK_IGNORE_REMOTE_WAKEUP },
   406	
   407		/* Action Semiconductor flash disk */
   408		{ USB_DEVICE(0x10d6, 0x2200), .driver_info =
   409				USB_QUIRK_STRING_FETCH_255 },
   410	
   411		/* Huawei 4G LTE module */
   412		{ USB_DEVICE(0x12d1, 0x15bb), .driver_info =
   413				USB_QUIRK_DISCONNECT_SUSPEND },
   414		{ USB_DEVICE(0x12d1, 0x15c3), .driver_info =
   415				USB_QUIRK_DISCONNECT_SUSPEND },
   416	
   417		/* SKYMEDI USB_DRIVE */
   418		{ USB_DEVICE(0x1516, 0x8628), .driver_info = USB_QUIRK_RESET_RESUME },
   419	
   420		/* Razer - Razer Blade Keyboard */
   421		{ USB_DEVICE(0x1532, 0x0116), .driver_info =
   422				USB_QUIRK_LINEAR_UFRAME_INTR_BINTERVAL },
   423	
   424	/* Lenovo - ThinkCenter A630Z TI024Gen3 usb-audio card */
 > 425	{ USB_DEVICE(0x17ef, 0x0xa012), .driver_info =
   426	USB_QUIRK_DISCONNECT_SUSPEND },
   427	
   428	    /* BUILDWIN Photo Frame */
   429		{ USB_DEVICE(0x1908, 0x1315), .driver_info =
   430				USB_QUIRK_HONOR_BNUMINTERFACES },
   431	
   432		/* Protocol and OTG Electrical Test Device */
   433		{ USB_DEVICE(0x1a0a, 0x0200), .driver_info =
   434				USB_QUIRK_LINEAR_UFRAME_INTR_BINTERVAL },
   435	
   436		/* Terminus Technology Inc. Hub */
   437		{ USB_DEVICE(0x1a40, 0x0101), .driver_info = USB_QUIRK_HUB_SLOW_RESET },
   438	
   439		/* Corsair K70 RGB */
   440		{ USB_DEVICE(0x1b1c, 0x1b13), .driver_info = USB_QUIRK_DELAY_INIT |
   441		  USB_QUIRK_DELAY_CTRL_MSG },
   442	
   443		/* Corsair Strafe */
   444		{ USB_DEVICE(0x1b1c, 0x1b15), .driver_info = USB_QUIRK_DELAY_INIT |
   445		  USB_QUIRK_DELAY_CTRL_MSG },
   446	
   447		/* Corsair Strafe RGB */
   448		{ USB_DEVICE(0x1b1c, 0x1b20), .driver_info = USB_QUIRK_DELAY_INIT |
   449		  USB_QUIRK_DELAY_CTRL_MSG },
   450	
   451		/* Corsair K70 LUX RGB */
   452		{ USB_DEVICE(0x1b1c, 0x1b33), .driver_info = USB_QUIRK_DELAY_INIT },
   453	
   454		/* Corsair K70 LUX */
   455		{ USB_DEVICE(0x1b1c, 0x1b36), .driver_info = USB_QUIRK_DELAY_INIT },
   456	
   457		/* Corsair K70 RGB RAPDIFIRE */
   458		{ USB_DEVICE(0x1b1c, 0x1b38), .driver_info = USB_QUIRK_DELAY_INIT |
   459		  USB_QUIRK_DELAY_CTRL_MSG },
   460	
   461		/* MIDI keyboard WORLDE MINI */
   462		{ USB_DEVICE(0x1c75, 0x0204), .driver_info =
   463				USB_QUIRK_CONFIG_INTF_STRINGS },
   464	
   465		/* Acer C120 LED Projector */
   466		{ USB_DEVICE(0x1de1, 0xc102), .driver_info = USB_QUIRK_NO_LPM },
   467	
   468		/* Blackmagic Design Intensity Shuttle */
   469		{ USB_DEVICE(0x1edb, 0xbd3b), .driver_info = USB_QUIRK_NO_LPM },
   470	
   471		/* Blackmagic Design UltraStudio SDI */
   472		{ USB_DEVICE(0x1edb, 0xbd4f), .driver_info = USB_QUIRK_NO_LPM },
   473	
   474		/* Hauppauge HVR-950q */
   475		{ USB_DEVICE(0x2040, 0x7200), .driver_info =
   476				USB_QUIRK_CONFIG_INTF_STRINGS },
   477	
   478		/* Raydium Touchscreen */
   479		{ USB_DEVICE(0x2386, 0x3114), .driver_info = USB_QUIRK_NO_LPM },
   480	
   481		{ USB_DEVICE(0x2386, 0x3119), .driver_info = USB_QUIRK_NO_LPM },
   482	
   483		{ USB_DEVICE(0x2386, 0x350e), .driver_info = USB_QUIRK_NO_LPM },
   484	
   485		/* DJI CineSSD */
   486		{ USB_DEVICE(0x2ca3, 0x0031), .driver_info = USB_QUIRK_NO_LPM },
   487	
   488		/* INTEL VALUE SSD */
   489		{ USB_DEVICE(0x8086, 0xf1a5), .driver_info = USB_QUIRK_RESET_RESUME },
   490	
   491		/* novation SoundControl XL */
   492		{ USB_DEVICE(0x1235, 0x0061), .driver_info = USB_QUIRK_RESET_RESUME },
   493	
   494		{ }  /* terminating entry must be last */
   495	};
   496	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011190308.mCW4gTip-lkp%40intel.com.

--8t9RHnE3ZwKMSgU+
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
jvcRt8baiJV92NpbFU9yxiuf0PSInDUopDru0QL6neuuAxsix7YkuC8CuM6/aUC5TDgwy/Zf
py1swykg6OGdFOLyRq/CRIIQanbkRIeHD/lQc4+X0Jmpaqv+UJ3BFRSU9LLfw1lQ/v7e8p8D
m9k6gpjJl71Le+hrGS7gPvS1HpJnxstK2VweLiPEeu3uDzWvsJrqjHs4E+PH3GNgh30CPsNU
XI3NT/ypI4yb5QUGsGuTP95IaC2ccQnRXWeuzTJXLYhsteeR+szljYo9PwfbzEsZSWAsU4C3
70+f34Ft55fHz6iFqpxHcmgVTY4e2grp7N6d4Pa57ZYh/8VOAhwnlgP3lkRORsEaRsHtjQIB
C17p6bXAZlpO3YrjZmJ4E2nverTb/q2eeMiH4liicX84xO24cF7vLFdRHHMstivaXGfXyOZf
9+MF3gMUtYd7wY1L1gUQPebLXblZQT+dIBnavmixw1KDzXh7r5DJxnV1UvHbj5eP359fX7zx
19t9OXtbWWeHoOXFwLIoxh+2SwYepp4TuhmmmJkkRDmbX62uxZef5ANlaWA5f5GIdOgMFqfg
DOeLCx2boizsKshYWcENuwaV8PyA1UpQXtJb+auLezNe1r507DZWmhX1aqUr0ymjnNJmg2AK
woLqNiAL0fS0sJDR87oV1a2+oCvkO4mbnZK8+aBeN6gaC+6OdmGwCm4bni200KFZrzQktTlj
QwqgQz5UD5f+NN+b6C1fkFA9OXGJtnGxDvlrNt3uW98d60QI17JVke+Ennjvcl4XxgkeUEU+
XYOJqpCoWmh/ueb9aXXioCXQdIXH9gIQbobMW7cT2fXFcYCF1+dy3eBt+/0bZZycFRpNsiJS
Inzze3tZXNGW1/iroJWlE9Lq7oYG79sv4SSNQSDfohftpTTbFKCT2JG9FVYO8QNzmCmiNd6X
QE7WurG8PzGp6o06Qo0DezUBqvn2e6WjyssCsyh0smBZ4JYGnto5kwPI6KXIijIrpSExDnFn
WpZatPnQf/28+nBTTrLN1c8lGV43NDq4X7er0BX7WCw4WBtNj+AtL9EyoeUhuE60XqdImm0m
IIknFjCLTz0zMYm8KpDtj9dRmtzQbZo3lG2sHryN9bOghWQJD5J+es/EoNTW5nx3iwN7O853
4BYUJ16Gzinf0HaYSiExx0gLqAP4NAjD+AZhS/BLbmBTRiJmFaYHZG6CTYu5HpJjYbb0WHWH
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
4LvgvwBc3IumT8oCAA==

--8t9RHnE3ZwKMSgU+--
