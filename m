Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQNEWODAMGQEFXZVXCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id A44F23AD0E9
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 19:05:06 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id t6-20020ac80dc60000b029024e988e8277sf7898384qti.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 10:05:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624035905; cv=pass;
        d=google.com; s=arc-20160816;
        b=vMouf+SLABhDD++hECQxRddHNHbsMzqmSde/Pmh0uoYjcD7RzG9BUe4wt+dK/rZuWH
         odJTEwT30gvD0DjRHIh2sRI8Y2iRFC+4EIlP9eG/x/E5x6KJNaHf5UwCTJ+CW5TuLHp5
         KBu3JtYh6vsT3wAcolne/2URzm6Yeeur2FiopIfYdWRI5DeMwQzUPhr8sK0McJcSPUdN
         S2qiYT2b8LNt4+4r2qrhgkIe6AislP/5e/hmJ++BiCKVHYX+yml2JGUE7sJ7zQquldBH
         ezhF+Qo3XW4hUV+NV+OjYoqaQnEmsgCtpIQzHrdOsCRHaXgmXQBrcMX7DNIQZ28lbo30
         6YJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=vHpYpLy/pHg/kw50LtL+M2TGSJniESL/LUmxJ4LRthU=;
        b=C6/AEV1C2xnRDzlzPcQN5bExN0/Fwl3+tlCqRESQuUg3WtkKP2XKP72T0y/JCFIcrj
         pinXHHvABR6ADp4T4xvgUhMVkLqcbztQ5XeWP/UJ60m3w1Ws1OP4L3/E4XOPCBbf3gdN
         I0oOk3hBcjZaFcOXnQC/QS5WhcRwDgj0o3r9E3rXKEdlA8ZPUiXn8PUg5b/CAlEuEYiW
         UWUd6DrrGqFUarXBex559UHnq4QL7vViJicEZhRhLc0ow/oGqdOM6o+Q6f4Yiyya0/eW
         PZLLvVko2A84FqDIFmqwvkp7xrg/AcnT5g56uhmWZMMdPjFAYoHVRnFihM8cPxd7nuwP
         GyOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YLJj4sqL;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vHpYpLy/pHg/kw50LtL+M2TGSJniESL/LUmxJ4LRthU=;
        b=Ru4VWJ/7UWb0Wk6HCXOQ2mG03WK6ng62CClw/c6kIfggvSbHWnMODSh5WBrnbag0xt
         rXwTu2RWGXXLd4YK73nBzc7ebK71j4CwFIatCkwwtOtgpIgfXvbYdHWlB0MWVBR5N4nx
         +/y3bEQGFWrjnad5S4ElmsxhS3krvciBqulw1jYUDjxxSrEJ+CR8Ip5SW3/fCZZAiTg7
         S0T61yS8ogc/ZHVMRwCS2I7icPQT6igfhNVQFtlS1BllYdX/rTf2FjIbrC+4oWv9Dm8N
         rSjszJOnHXlv893yDlmSavEtGoCdgWBMX7JUE4B6z0KpRl2YnJ8mjyYZ0wh/M968IVZO
         Wd3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vHpYpLy/pHg/kw50LtL+M2TGSJniESL/LUmxJ4LRthU=;
        b=cgTGMOkopJJ4qYzPHOBiFBP8psm7ilhOmHoNHhjUPj/W3XcuLrN2gHEoRPL+Ex+vVE
         syzenYIyjd5j+aqHMJxxjAO0ts/QjdP8FR8S1YAMjqNQV/pjqfvFLMPHbo2e37bvHbXc
         Yt858jp+g0KdYn3PakFxEGm4fKqCm8/2W54sNVzoqCK0PhMl+RrpbZp/4XTDKE9mzgfA
         J0dFEzTh84c7DPPAJk8pikr2tMOstgdSu+N3gKbUZ7kRYvHexf6l6h7GefFuYWCdupv9
         0eY5QEmnylteUxEo2maoBLwfXjD31vG9YbSy91TN8FcRst1K2zDSnB7Ri/lzBw4xDZLZ
         IkMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328UHzaHT/geEdLkMQg0+8ktNB+PaxeWMJfwafe4w5SXMwMx8B7
	LOhUEIoMS4T0W8QoR4Cl2/c=
X-Google-Smtp-Source: ABdhPJyJFtpzgU39vUwmvdQqe1Fh29LojVnGMx5dON330tBiejxtO9dEo9DiXLchLNpQ0mU6xlItXg==
X-Received: by 2002:a05:620a:54e:: with SMTP id o14mr8531736qko.371.1624035905575;
        Fri, 18 Jun 2021 10:05:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:da7:: with SMTP id h7ls3612496qvh.3.gmail; Fri, 18
 Jun 2021 10:05:04 -0700 (PDT)
X-Received: by 2002:a05:6214:80a:: with SMTP id df10mr6778453qvb.8.1624035904051;
        Fri, 18 Jun 2021 10:05:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624035904; cv=none;
        d=google.com; s=arc-20160816;
        b=ZUvOsTuhNWyfe566A83hFEjgD0EBYL4ikc/ArrQIfx1s12P9XwnDD5zIHhljMlVxEg
         lNIyyF3LzJ/sUAWWFf+nIsfyyCH6AUokY6qSg6muQsw8z+w9iLG/KqcgBXWMgrpAuUKB
         1mtK2RbttgL5B0Vk7wxVRPg/6pzDdHcgD05n4UwdvNvdI+wmpOMG5DkhAK0vl7Y2nAV9
         qu1uL/XZNR9DGqYsbbksukMoBcCNTcYf0iUHUFd3McU9Qi3Q/msqucNlYtXI/o7HBvuX
         rLudaPe8FKQJQsCkxvFYRmJH+gvj9T3C9CTkbFzWAN25vc7PRkgBEJXoEmbbqP7LXEA3
         w0Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=tO5TzIIgGGK6V6RoQ6rG25FpQsrrFG6BAVAvloWDKUk=;
        b=mqztlnIgYeGqEBKy8Y+pcH9okUynsdNewb0DYSu/+d2FMACjtuYK/WiGzTqacukrES
         qKIuJMPr85JWrctCEEOzcZjQ2WqRizkdFbfuexGopdi9677aZI9yKzopbkrLzFXCQmC6
         yCVSqmliMkbR3uU+kMYhJvLSNPh9yS6VEI66fc9qbn/S4+0yDAo13lVb50dnq2St8aLQ
         1vcFzGeBaPNC3pQF/c7KUeoQkzjxBqpYj01WghKHWh1qT5t7duaBTmUk8Sk9Lg/1H+rH
         EUa2hbkMkb/kT5FN2Pn3w4YczD35FORD8R94GtV0v5qnxhNc4BF1DR7NvLmpZDsvaKcZ
         UAtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YLJj4sqL;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e11si326881qtw.3.2021.06.18.10.05.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Jun 2021 10:05:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2AA8E61154;
	Fri, 18 Jun 2021 17:05:02 +0000 (UTC)
Subject: Re: [PATCH v4 1/2] media: rc: new driver for USB-UIRT device
To: Sean Young <sean@mess.org>, kernel test robot <lkp@intel.com>
Cc: linux-media@vger.kernel.org, linux-usb@vger.kernel.org,
 Johan Hovold <johan@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jon Rhees <support@usbuirt.com>, Oliver Neukum <oneukum@suse.com>,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
References: <8e380fbe6853bfebd067cdeba2e65e83a3df2922.1623318855.git.sean@mess.org>
 <202106180629.J4nRNiax-lkp@intel.com> <20210618084450.GA26388@gofer.mess.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <63f389df-e128-6438-97b4-0b66b30e7028@kernel.org>
Date: Fri, 18 Jun 2021 10:04:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210618084450.GA26388@gofer.mess.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YLJj4sqL;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 6/18/2021 1:44 AM, Sean Young wrote:
> On Fri, Jun 18, 2021 at 06:18:06AM +0800, kernel test robot wrote:
>> Hi Sean,
>>
>> I love your patch! Perhaps something to improve:
>>
>> [auto build test WARNING on linuxtv-media/master]
>> [also build test WARNING on usb-serial/usb-next usb/usb-testing peter.chen-usb/for-usb-next v5.13-rc6 next-20210617]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:    https://github.com/0day-ci/linux/commits/Sean-Young/IR-driver-for-USB-UIRT-device/20210616-182135
>> base:   git://linuxtv.org/media_tree.git master
>> config: powerpc64-randconfig-r012-20210617 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
>> reproduce (this is a W=1 build):
>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>          chmod +x ~/bin/make.cross
>>          # install powerpc64 cross compiling tool for clang build
>>          # apt-get install binutils-powerpc64-linux-gnu
>>          # https://github.com/0day-ci/linux/commit/17d3a0332baecb0359e05e8ae755478c7a1a4468
>>          git remote add linux-review https://github.com/0day-ci/linux
>>          git fetch --no-tags linux-review Sean-Young/IR-driver-for-USB-UIRT-device/20210616-182135
>>          git checkout 17d3a0332baecb0359e05e8ae755478c7a1a4468
>>          # save the attached .config to linux build tree
>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>     In file included from drivers/media/rc/uirt.c:11:
>>     In file included from include/linux/completion.h:12:
>>     In file included from include/linux/swait.h:5:
>>     In file included from include/linux/list.h:9:
>>     In file included from include/linux/kernel.h:12:
>>     In file included from include/linux/bitops.h:32:
>>     In file included from arch/powerpc/include/asm/bitops.h:62:
>>     arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
>>     #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
>>             ^
>>     <built-in>:310:9: note: previous definition is here
>>     #define __lwsync __builtin_ppc_lwsync
>>             ^
>>>> drivers/media/rc/uirt.c:639:6: warning: variable 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>>             if (!urb)
>>                 ^~~~
>>     drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs here
>>             return err;
> 
> This is interesting. clang is right here, there are error paths where err is
> not initialized. gcc-11.1 does not pick this up for some reason. The error path
> should be an immediate dominator so it shouldn't be complicated to detect.

The reason GCC does not warn about this is due to commit 78a5255ffb6a 
("Stop the ad-hoc games with -Wno-maybe-initialized"), which disables 
the GCC version of this warning except with W=2, which very few people 
use. You could use 'KCFLAGS=-Wmaybe-uninitialized' to try and see the 
same warning.

Cheers,
Nathan

> I'll send out a v5 with this issue fixed.
> 
> Sean
> 
>>                    ^~~
>>     drivers/media/rc/uirt.c:639:2: note: remove the 'if' if its condition is always false
>>             if (!urb)
>>             ^~~~~~~~~
>>     drivers/media/rc/uirt.c:630:6: warning: variable 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>>             if (!urb)
>>                 ^~~~
>>     drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs here
>>             return err;
>>                    ^~~
>>     drivers/media/rc/uirt.c:630:2: note: remove the 'if' if its condition is always false
>>             if (!urb)
>>             ^~~~~~~~~
>>     drivers/media/rc/uirt.c:626:6: warning: variable 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>>             if (!rc)
>>                 ^~~
>>     drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs here
>>             return err;
>>                    ^~~
>>     drivers/media/rc/uirt.c:626:2: note: remove the 'if' if its condition is always false
>>             if (!rc)
>>             ^~~~~~~~
>>     drivers/media/rc/uirt.c:622:6: warning: variable 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>>             if (!uirt->out)
>>                 ^~~~~~~~~~
>>     drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs here
>>             return err;
>>                    ^~~
>>     drivers/media/rc/uirt.c:622:2: note: remove the 'if' if its condition is always false
>>             if (!uirt->out)
>>             ^~~~~~~~~~~~~~~
>>     drivers/media/rc/uirt.c:618:6: warning: variable 'err' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
>>             if (!uirt->in)
>>                 ^~~~~~~~~
>>     drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs here
>>             return err;
>>                    ^~~
>>     drivers/media/rc/uirt.c:618:2: note: remove the 'if' if its condition is always false
>>             if (!uirt->in)
>>             ^~~~~~~~~~~~~~
>>     drivers/media/rc/uirt.c:604:15: note: initialize the variable 'err' to silence this warning
>>             int pipe, err;
>>                          ^
>>                           = 0
>>     6 warnings generated.
>>
>>
>> vim +639 drivers/media/rc/uirt.c
>>
>>     594	
>>     595	static int uirt_probe(struct usb_interface *intf,
>>     596			      const struct usb_device_id *id)
>>     597	{
>>     598		struct usb_device *usbdev = interface_to_usbdev(intf);
>>     599		struct usb_endpoint_descriptor *ep_in;
>>     600		struct usb_endpoint_descriptor *ep_out;
>>     601		struct uirt *uirt;
>>     602		struct rc_dev *rc;
>>     603		struct urb *urb;
>>     604		int pipe, err;
>>     605	
>>     606		if (usb_find_common_endpoints(intf->cur_altsetting, &ep_in, &ep_out, NULL, NULL) ||
>>     607		    usb_endpoint_maxp(ep_in) != MAX_PACKET ||
>>     608		    usb_endpoint_maxp(ep_out) != MAX_PACKET) {
>>     609			dev_err(&intf->dev, "required endpoints not found\n");
>>     610			return -ENODEV;
>>     611		}
>>     612	
>>     613		uirt = kzalloc(sizeof(*uirt), GFP_KERNEL);
>>     614		if (!uirt)
>>     615			return -ENOMEM;
>>     616	
>>     617		uirt->in = kmalloc(MAX_PACKET, GFP_KERNEL);
>>     618		if (!uirt->in)
>>     619			goto free_uirt;
>>     620	
>>     621		uirt->out = kmalloc(MAX_PACKET, GFP_KERNEL);
>>     622		if (!uirt->out)
>>     623			goto free_uirt;
>>     624	
>>     625		rc = rc_allocate_device(RC_DRIVER_IR_RAW);
>>     626		if (!rc)
>>     627			goto free_uirt;
>>     628	
>>     629		urb = usb_alloc_urb(0, GFP_KERNEL);
>>     630		if (!urb)
>>     631			goto free_rcdev;
>>     632	
>>     633		pipe = usb_rcvbulkpipe(usbdev, ep_in->bEndpointAddress);
>>     634		usb_fill_bulk_urb(urb, usbdev, pipe, uirt->in, MAX_PACKET,
>>     635				  uirt_in_callback, uirt);
>>     636		uirt->urb_in = urb;
>>     637	
>>     638		urb = usb_alloc_urb(0, GFP_KERNEL);
>>   > 639		if (!urb)
>>     640			goto free_rcdev;
>>     641	
>>     642		pipe = usb_sndbulkpipe(usbdev, ep_out->bEndpointAddress);
>>     643		usb_fill_bulk_urb(urb, usbdev, pipe, uirt->out, MAX_PACKET,
>>     644				  uirt_out_callback, uirt);
>>     645	
>>     646		uirt->dev = &intf->dev;
>>     647		uirt->usbdev = usbdev;
>>     648		uirt->rc = rc;
>>     649		uirt->urb_out = urb;
>>     650		uirt->rx_state = RX_STATE_INTERSPACE_HIGH;
>>     651	
>>     652		err = usb_submit_urb(uirt->urb_in, GFP_KERNEL);
>>     653		if (err != 0) {
>>     654			dev_err(uirt->dev, "failed to submit read urb: %d\n", err);
>>     655			goto free_rcdev;
>>     656		}
>>     657	
>>     658		err = init_ftdi(usbdev);
>>     659		if (err) {
>>     660			dev_err(uirt->dev, "failed to setup ftdi: %d\n", err);
>>     661			goto kill_urbs;
>>     662		}
>>     663	
>>     664		err = uirt_setup(uirt);
>>     665		if (err)
>>     666			goto kill_urbs;
>>     667	
>>     668		usb_make_path(usbdev, uirt->phys, sizeof(uirt->phys));
>>     669	
>>     670		rc->device_name = "USB-UIRT";
>>     671		rc->driver_name = KBUILD_MODNAME;
>>     672		rc->input_phys = uirt->phys;
>>     673		usb_to_input_id(usbdev, &rc->input_id);
>>     674		rc->dev.parent = &intf->dev;
>>     675		rc->priv = uirt;
>>     676		rc->tx_ir = uirt_tx;
>>     677		rc->s_tx_carrier = uirt_set_tx_carrier;
>>     678		rc->s_learning_mode = uirt_set_rx_wideband;
>>     679		rc->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
>>     680		rc->map_name = RC_MAP_RC6_MCE;
>>     681		rc->rx_resolution = UNIT_US;
>>     682		rc->timeout = IR_TIMEOUT;
>>     683	
>>     684		uirt_set_tx_carrier(rc, 38000);
>>     685	
>>     686		err = rc_register_device(rc);
>>     687		if (err)
>>     688			goto kill_urbs;
>>     689	
>>     690		usb_set_intfdata(intf, uirt);
>>     691	
>>     692		return 0;
>>     693	
>>     694	kill_urbs:
>>     695		usb_kill_urb(uirt->urb_in);
>>     696		usb_kill_urb(uirt->urb_out);
>>     697	free_rcdev:
>>     698		usb_free_urb(uirt->urb_in);
>>     699		usb_free_urb(uirt->urb_out);
>>     700		rc_free_device(rc);
>>     701	free_uirt:
>>     702		kfree(uirt->in);
>>     703		kfree(uirt->out);
>>     704		kfree(uirt);
>>     705		return err;
>>     706	}
>>     707	
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/63f389df-e128-6438-97b4-0b66b30e7028%40kernel.org.
