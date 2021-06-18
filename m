Return-Path: <clang-built-linux+bncBCCZHPMXYQEBBA52WGDAMGQEEOCZILA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1CB3AC666
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 10:44:52 +0200 (CEST)
Received: by mail-ej1-x63d.google.com with SMTP id de48-20020a1709069bf0b029048ae3ebecabsf46305ejc.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 01:44:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624005892; cv=pass;
        d=google.com; s=arc-20160816;
        b=y2mdTaDNi1JwYOAZuwa8pRDlRaxNLdya1roij7yQSek9MkxoLo+aRH4mEFR9uW6Oa5
         5tE4A9GuoUkvagZEDBDzFCfRXZ/CXCwgH0zGyavrVFSiU6ExnCxe2b+SXFKQajs07QKq
         p3eAFpmsJ++8M0VH6TL8saA76xhV7V1rl/hoaUk/vPW13HiXCJNqy4u/x5TjuCAWaXzU
         NLhm8Pyf7PXiBpDKVMd9RfJLPKUazIqbw4fADd4VMu11e6S3gb0YdWjki7zhrANqAyen
         vbECgnW8r+0Cv8vg03ZrycnJJbVrVGYFT1qMYGf3FOGjE5kIpB/A6d+QEwAyu29kEmhO
         K9hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=IypB5p02yg/2VzCIaRx/Fz/GIvoDSkgbUzcUwUrkT3c=;
        b=tVWmeIAk8UM35Qv2+M+qSigS9dkiMtyx6yRGw0m6GRTAeebB0MbS7OkUgmCO6YvJg/
         zN76VCKRgDJdJd1sDPq3MLZtPUXICAy30+DHVW64gekXO0dPQmRKqAKcx77GBK8vt3rJ
         PfhaQ5KdWTpLfxC+19dzBFrp8S1go6DsIhNV9EfKKnhSaU8At7xeFPYSs8I63bRGZSTH
         MKg9F51QVRIqbfYZfH4EzxtvqvTnwmmgpBSC3xdcvYgcYossvvhmo/2UnsHssKropNUG
         GBdx8Swtnk1oXhRY0BM5a7wib7hCbBVn2PJju7OwgChpAlaeYlfHJfMtH8Ib9t57sHgB
         +iBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=AIizisB1;
       spf=pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) smtp.mailfrom=sean@mess.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IypB5p02yg/2VzCIaRx/Fz/GIvoDSkgbUzcUwUrkT3c=;
        b=bJiWxiPSHQZZ++bOHYUgZsguRNKBNjxyauc9G/O9J6szosE9kBT3XYsjgwP1vF/5NR
         gdZB8b4soMYkVpVxKGu9hnJnselm1h9DBg+IYN0XwswgFontdiHuXDSr4uMbBJrZrmr2
         GgjxJo0EI6DRUCiGiAqB/diI6awIBvaklqQDnqIXPBoae6rndyrEP5eoU66l/WDOrcA0
         o3Zwy7ceW0OHIyS+Ahyjp9A52Y4IqXSpAkNLPkXEYvxWnQf5SK3Xxsq4fmPLZSmkQpSR
         PvX6MCGCbX823kQlZF95dL6e2rBnJ+oe4aiSd7oSk6QLcGH7s7+xazJTLIfpmvNIbGHD
         iT6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IypB5p02yg/2VzCIaRx/Fz/GIvoDSkgbUzcUwUrkT3c=;
        b=Eq5pkQLhoUApihdU5A4oF25lEF/MOtcqt/9Y2kgK+7tX3AKovmlV1LwWCY+7p4gQe8
         nEyLvDaNxVquht33lIOyiHIKcjs1T+xba9RAbFtxbGzYce09pGBoH6ll0hr39++L7Jc2
         oIqZY9uZVcvP4tmB+m9G1JhyVtoTt/vDQA7ffk7Vq1J2aBv/y9jkab5BICU2s27nveLh
         DaCljAHmZ7fuxZ1FsuhpJ/fXBB6EkLrrflKX3wHGf2I3AgyPmJP5orCWB+0XkP+F0Zta
         MEUKwHlUv9bGa4/l0bgRLAzoc5h8cqpZQy4kA79bw3y8bqjawa18MoGYzD5wR2saKBEf
         jMkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Z/7GLSedoUD7SP2ZkHSEC/QdjmyzJXQmxyLD0bMd8rywxzCxn
	7oVgMyKZgbTqHvz+bXo0WUA=
X-Google-Smtp-Source: ABdhPJyXFnV6uOaspq5GdWf9APEh0/Tu+/C6zH+8FRiFOZjkC5kEPaFlVTnIM/d9FqijrRJxVXI5RQ==
X-Received: by 2002:a05:6402:b81:: with SMTP id cf1mr2074385edb.102.1624005892083;
        Fri, 18 Jun 2021 01:44:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c5d2:: with SMTP id h18ls1898279eds.0.gmail; Fri, 18 Jun
 2021 01:44:51 -0700 (PDT)
X-Received: by 2002:a05:6402:3511:: with SMTP id b17mr3423506edd.297.1624005891190;
        Fri, 18 Jun 2021 01:44:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624005891; cv=none;
        d=google.com; s=arc-20160816;
        b=w9nBYQ0rcF/k8GYUFjp0VUdgJFMV473WbqFapArfkFk+TXsriyEwZOqdlOHHrpgdtv
         gy7duJkwrWPT8fPPaMqrdonZz2TDSCkpWycDxIg9KmYsG1kijjIvglU4RQ39Iw/o2S8S
         LtSZYgZVmrLetuP2xyRzv7nEm9AULEf42Q+Jn+aLeFbj/LyvNugq8ztuyZClMVT8asec
         pV7hwne2JoRGmxVJXMsTS4ff4AJHJ2YFHwlxnneOK3gcaVfcWr3q48k4hdlCpn0bpjUe
         8RyeyXtGxw+iLR9ytI2A5/PfDF7qiR68i2q2gLZODxxKGRdzKNA/qIDtRAhf53/RHHz3
         FMPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DmPQGNmsq7p2639WDQLq6+AzwMsiEaeORZJZyC8fCUg=;
        b=PYgjo5Knx4PgyxhTkd9pNHYLwge6RobdpIM5J/h+UtjOIVQqogTBz1giUbqjY/Wnu6
         ddVEiPjT7lbe0RGRB9/GQTqPYIlH1HLVLrXoWByr3VdhKdmKVByO2ma5BPApxr209blz
         DE9j3Ln8WxjC8+hNY8AUu+rMYYkgDuySdW5o/u3DRjXNEjGHNVD6ZCTmEq4XCQFE+593
         qg+4Mvbt7VGL8miIURTemYR4HMF5nyn3Ae2JGW81MaWS5XW/G3VoOcqi7fOdd+MyGTon
         R/JDKl/xtKMyLf3ejaVVdR8eF6r1waPWtFWKSdUIZNWUtXlvZvFn5A+N6EUqjs+Rw95m
         arlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=AIizisB1;
       spf=pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) smtp.mailfrom=sean@mess.org
Received: from gofer.mess.org (gofer.mess.org. [2a02:8011:d000:212::1])
        by gmr-mx.google.com with ESMTPS id cz2si479439edb.5.2021.06.18.01.44.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 01:44:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as permitted sender) client-ip=2a02:8011:d000:212::1;
Received: by gofer.mess.org (Postfix, from userid 1000)
	id 65472C63DD; Fri, 18 Jun 2021 09:44:50 +0100 (BST)
Date: Fri, 18 Jun 2021 09:44:50 +0100
From: Sean Young <sean@mess.org>
To: kernel test robot <lkp@intel.com>
Cc: linux-media@vger.kernel.org, linux-usb@vger.kernel.org,
	Johan Hovold <johan@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jon Rhees <support@usbuirt.com>, Oliver Neukum <oneukum@suse.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 1/2] media: rc: new driver for USB-UIRT device
Message-ID: <20210618084450.GA26388@gofer.mess.org>
References: <8e380fbe6853bfebd067cdeba2e65e83a3df2922.1623318855.git.sean@mess.org>
 <202106180629.J4nRNiax-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106180629.J4nRNiax-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sean@mess.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mess.org header.s=2020 header.b=AIizisB1;       spf=pass
 (google.com: domain of sean@mess.org designates 2a02:8011:d000:212::1 as
 permitted sender) smtp.mailfrom=sean@mess.org
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

On Fri, Jun 18, 2021 at 06:18:06AM +0800, kernel test robot wrote:
> Hi Sean,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on linuxtv-media/master]
> [also build test WARNING on usb-serial/usb-next usb/usb-testing peter.chen-usb/for-usb-next v5.13-rc6 next-20210617]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Sean-Young/IR-driver-for-USB-UIRT-device/20210616-182135
> base:   git://linuxtv.org/media_tree.git master
> config: powerpc64-randconfig-r012-20210617 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/17d3a0332baecb0359e05e8ae755478c7a1a4468
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Sean-Young/IR-driver-for-USB-UIRT-device/20210616-182135
>         git checkout 17d3a0332baecb0359e05e8ae755478c7a1a4468
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from drivers/media/rc/uirt.c:11:
>    In file included from include/linux/completion.h:12:
>    In file included from include/linux/swait.h:5:
>    In file included from include/linux/list.h:9:
>    In file included from include/linux/kernel.h:12:
>    In file included from include/linux/bitops.h:32:
>    In file included from arch/powerpc/include/asm/bitops.h:62:
>    arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
>    #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
>            ^
>    <built-in>:310:9: note: previous definition is here
>    #define __lwsync __builtin_ppc_lwsync
>            ^
> >> drivers/media/rc/uirt.c:639:6: warning: variable 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>            if (!urb)
>                ^~~~
>    drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs here
>            return err;

This is interesting. clang is right here, there are error paths where err is
not initialized. gcc-11.1 does not pick this up for some reason. The error path
should be an immediate dominator so it shouldn't be complicated to detect.

I'll send out a v5 with this issue fixed.

Sean

>                   ^~~
>    drivers/media/rc/uirt.c:639:2: note: remove the 'if' if its condition is always false
>            if (!urb)
>            ^~~~~~~~~
>    drivers/media/rc/uirt.c:630:6: warning: variable 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>            if (!urb)
>                ^~~~
>    drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs here
>            return err;
>                   ^~~
>    drivers/media/rc/uirt.c:630:2: note: remove the 'if' if its condition is always false
>            if (!urb)
>            ^~~~~~~~~
>    drivers/media/rc/uirt.c:626:6: warning: variable 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>            if (!rc)
>                ^~~
>    drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs here
>            return err;
>                   ^~~
>    drivers/media/rc/uirt.c:626:2: note: remove the 'if' if its condition is always false
>            if (!rc)
>            ^~~~~~~~
>    drivers/media/rc/uirt.c:622:6: warning: variable 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>            if (!uirt->out)
>                ^~~~~~~~~~
>    drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs here
>            return err;
>                   ^~~
>    drivers/media/rc/uirt.c:622:2: note: remove the 'if' if its condition is always false
>            if (!uirt->out)
>            ^~~~~~~~~~~~~~~
>    drivers/media/rc/uirt.c:618:6: warning: variable 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>            if (!uirt->in)
>                ^~~~~~~~~
>    drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs here
>            return err;
>                   ^~~
>    drivers/media/rc/uirt.c:618:2: note: remove the 'if' if its condition is always false
>            if (!uirt->in)
>            ^~~~~~~~~~~~~~
>    drivers/media/rc/uirt.c:604:15: note: initialize the variable 'err' to silence this warning
>            int pipe, err;
>                         ^
>                          = 0
>    6 warnings generated.
> 
> 
> vim +639 drivers/media/rc/uirt.c
> 
>    594	
>    595	static int uirt_probe(struct usb_interface *intf,
>    596			      const struct usb_device_id *id)
>    597	{
>    598		struct usb_device *usbdev = interface_to_usbdev(intf);
>    599		struct usb_endpoint_descriptor *ep_in;
>    600		struct usb_endpoint_descriptor *ep_out;
>    601		struct uirt *uirt;
>    602		struct rc_dev *rc;
>    603		struct urb *urb;
>    604		int pipe, err;
>    605	
>    606		if (usb_find_common_endpoints(intf->cur_altsetting, &ep_in, &ep_out, NULL, NULL) ||
>    607		    usb_endpoint_maxp(ep_in) != MAX_PACKET ||
>    608		    usb_endpoint_maxp(ep_out) != MAX_PACKET) {
>    609			dev_err(&intf->dev, "required endpoints not found\n");
>    610			return -ENODEV;
>    611		}
>    612	
>    613		uirt = kzalloc(sizeof(*uirt), GFP_KERNEL);
>    614		if (!uirt)
>    615			return -ENOMEM;
>    616	
>    617		uirt->in = kmalloc(MAX_PACKET, GFP_KERNEL);
>    618		if (!uirt->in)
>    619			goto free_uirt;
>    620	
>    621		uirt->out = kmalloc(MAX_PACKET, GFP_KERNEL);
>    622		if (!uirt->out)
>    623			goto free_uirt;
>    624	
>    625		rc = rc_allocate_device(RC_DRIVER_IR_RAW);
>    626		if (!rc)
>    627			goto free_uirt;
>    628	
>    629		urb = usb_alloc_urb(0, GFP_KERNEL);
>    630		if (!urb)
>    631			goto free_rcdev;
>    632	
>    633		pipe = usb_rcvbulkpipe(usbdev, ep_in->bEndpointAddress);
>    634		usb_fill_bulk_urb(urb, usbdev, pipe, uirt->in, MAX_PACKET,
>    635				  uirt_in_callback, uirt);
>    636		uirt->urb_in = urb;
>    637	
>    638		urb = usb_alloc_urb(0, GFP_KERNEL);
>  > 639		if (!urb)
>    640			goto free_rcdev;
>    641	
>    642		pipe = usb_sndbulkpipe(usbdev, ep_out->bEndpointAddress);
>    643		usb_fill_bulk_urb(urb, usbdev, pipe, uirt->out, MAX_PACKET,
>    644				  uirt_out_callback, uirt);
>    645	
>    646		uirt->dev = &intf->dev;
>    647		uirt->usbdev = usbdev;
>    648		uirt->rc = rc;
>    649		uirt->urb_out = urb;
>    650		uirt->rx_state = RX_STATE_INTERSPACE_HIGH;
>    651	
>    652		err = usb_submit_urb(uirt->urb_in, GFP_KERNEL);
>    653		if (err != 0) {
>    654			dev_err(uirt->dev, "failed to submit read urb: %d\n", err);
>    655			goto free_rcdev;
>    656		}
>    657	
>    658		err = init_ftdi(usbdev);
>    659		if (err) {
>    660			dev_err(uirt->dev, "failed to setup ftdi: %d\n", err);
>    661			goto kill_urbs;
>    662		}
>    663	
>    664		err = uirt_setup(uirt);
>    665		if (err)
>    666			goto kill_urbs;
>    667	
>    668		usb_make_path(usbdev, uirt->phys, sizeof(uirt->phys));
>    669	
>    670		rc->device_name = "USB-UIRT";
>    671		rc->driver_name = KBUILD_MODNAME;
>    672		rc->input_phys = uirt->phys;
>    673		usb_to_input_id(usbdev, &rc->input_id);
>    674		rc->dev.parent = &intf->dev;
>    675		rc->priv = uirt;
>    676		rc->tx_ir = uirt_tx;
>    677		rc->s_tx_carrier = uirt_set_tx_carrier;
>    678		rc->s_learning_mode = uirt_set_rx_wideband;
>    679		rc->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
>    680		rc->map_name = RC_MAP_RC6_MCE;
>    681		rc->rx_resolution = UNIT_US;
>    682		rc->timeout = IR_TIMEOUT;
>    683	
>    684		uirt_set_tx_carrier(rc, 38000);
>    685	
>    686		err = rc_register_device(rc);
>    687		if (err)
>    688			goto kill_urbs;
>    689	
>    690		usb_set_intfdata(intf, uirt);
>    691	
>    692		return 0;
>    693	
>    694	kill_urbs:
>    695		usb_kill_urb(uirt->urb_in);
>    696		usb_kill_urb(uirt->urb_out);
>    697	free_rcdev:
>    698		usb_free_urb(uirt->urb_in);
>    699		usb_free_urb(uirt->urb_out);
>    700		rc_free_device(rc);
>    701	free_uirt:
>    702		kfree(uirt->in);
>    703		kfree(uirt->out);
>    704		kfree(uirt);
>    705		return err;
>    706	}
>    707	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210618084450.GA26388%40gofer.mess.org.
