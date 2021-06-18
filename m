Return-Path: <clang-built-linux+bncBCCZHPMXYQEBBSE3WSDAMGQE5T3PC3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 185B23AD456
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 23:19:05 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id q11-20020ac2510b0000b029030783d1d1f0sf5020841lfb.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 14:19:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624051144; cv=pass;
        d=google.com; s=arc-20160816;
        b=yrvurRLPiFnjBR3CYm9KojCdetYCMv83FC5BE+8zYW8nZBc/KF5sacyXZB/ryrMlYq
         gfHZSP6kGQqLwLOSu8WokXmacWu6H2DIYoX9JH6ukMxIlcKr2PF4CNLm14eg9k4rRIVE
         h4uShrIoNSUurbQOzCKD4gfuSmV/EXyi1AVmuigSLywYPQoc1uLcRa4gmwqxNG0Cao0/
         hbo2sqdZdKqMfJ4zNI1lpWHva5D8eC5ZUTrFUCR93Ou5QpHom0iJaTcTctW1LHMp9U/6
         n/QGI5HBkSRO20pPAr9wp2PSPad2lPJL5O2Rx7OP/GOrJVnaB+GV/CHGvPR003mugkEM
         I5Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=YzUemSoAT604zP247qU5WaqyO7f4S8MGQAbJ1+iWnmA=;
        b=c3TWyl3fpRVxkh0au/+yvrbjN8JjGwbt3eMSYeheY2Mgxy6dwxJVJhjIdWs3zQE//R
         eRKTWKa18GPxhmSvkh2GnPC/OVnHQNrHNsE26WQpTZChQwo5+zDK3GTWWht3udYPz3kH
         fMF6VjqbzkWeL4nS1EsVqL8wEy9+eUeCG4MglbSWbWR+VNxasgUEn+xtActVoO9jHWYy
         CZr3DwS2dhs/oVVC+lexktAhQXy+Pf8JKmncONiegPpKsgKuQuk6Ejnnj3B/dszoXcXP
         SOBJm4In2gGjzV9hqMJ6ppuyGmS+Gv4OJKLdzQLT7dw/Uk4FX+YvX5LFOGkZvXgTgRrF
         EKOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=HvYKOcCW;
       spf=pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) smtp.mailfrom=sean@mess.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YzUemSoAT604zP247qU5WaqyO7f4S8MGQAbJ1+iWnmA=;
        b=GC/0hLeUC/epgXeaTyBJqwh6xV/J87JpSA4DtIehyrACCf1F31EAi2GEgWfhsbx7R8
         ECRJbiSrXI5ZTxOjMoy1p+caxe2vJZgpBAQQOjmZGO31Se7bMhlwUzrfKP9pdvaxU3u5
         GIwUhVwwqLFYMaVIJCSPGKQ46u0rYGCNV5iyU1Tc0SwSleY0PV4wzgwWi/QjSgbzAZgL
         /x69CM6QHATuHThFEXfOinuwSsh8ZNy6qLqHvBcqgpU77L4THiHqyBsTJv9H4+YHdPZI
         60y7IffA/y8uCYBImYGPL/+nut8mFTeyUU+MW21wv7Tz8C8WiCRkojHVhrBWzStaRVZO
         Oshg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YzUemSoAT604zP247qU5WaqyO7f4S8MGQAbJ1+iWnmA=;
        b=TRAtq4rKmesq5O+CMGi/DA52r3V0b8J2O9jltb4HOQTvceo5VZYrUX1lI8mIjB/0fl
         dc4nefSVCR9p0ZboDuALz4/2T2BOb/EVgZEYsl66wN7Z6INghPm0Z5vhyCBE3IRytrSe
         CLfu5O82eBpHKq15eZL6PRS1rRnsjpJwVLjN6Y2S54qbwLmO0sJG22ZEXQb3JiC3Pl2V
         PRAhJb+FLzd5YXzceQGve7jlWaDY+xwsQUaz//m3eZa5Y891dmiJHFAzWADPeRyVoD4s
         U/kFK2hN+CKaOmuflA46gYDROven7rqDgZOuRTf5E4XIr/I0+0ilhU+AdB+inUxIkt3+
         6GiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UlmHRCcVG8C4DdVnDez80ogfI6WaBd6fFtBx0mJFRabKmMFUI
	zPw95pH6zs/iAnUUGRz1XZ8=
X-Google-Smtp-Source: ABdhPJz58orUHnXaZFJl5+fJy5+Yl5lTXWykDg6+bTGaNNUMoFrCa6rxK8HTwVosQyMANeZnS6Srow==
X-Received: by 2002:ac2:509a:: with SMTP id f26mr4780569lfm.505.1624051144547;
        Fri, 18 Jun 2021 14:19:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls2543814lfa.0.gmail; Fri,
 18 Jun 2021 14:19:03 -0700 (PDT)
X-Received: by 2002:a05:6512:689:: with SMTP id t9mr4617303lfe.216.1624051143393;
        Fri, 18 Jun 2021 14:19:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624051143; cv=none;
        d=google.com; s=arc-20160816;
        b=HjV8huIzOIiuVsVyBTyy6hY55U/hQj5kzKLwkLemgVEpxTZvpo17XDRl3A3bHBqhkt
         ZJF8CMlpjg33kDYqJxktTN2rho7ZPLYxOHHsXjA8+flakz9SmU6LiYE53F1H0lrLWziZ
         Va5bhCIYUJFvDCl/BdzX+sIhhUwRjCDc7SRHUDRrkpz989KWFy4ISn/M9cRRb7u/02tq
         fl3c1GbvarRS2jSWB1/O2GOamAHwBSJoFwfG4KS6ozin1W/DZIOoxphmDSkaluurxHdv
         Dy74FBAaLZb4/h5tznttuvWRIIsZlTombdf2IxMOIxbv3PPYUUYpFevyxgMW+SkMysbo
         WNfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=CrrvTolRPOYrLkp2znxfaxaSbz8rTSTaI5gO7WXGjlw=;
        b=Vsk1Ll+WqKCv/3ceudXLQgCxi50MekdLayp3P4/ZTuppfJD29v4lpOZkoMqVrAYioQ
         E+2iXESYAMU4kuCK0q+pzU0a7JlYMrOwNYDbXG5ApgnlETqL6niZ2/sLx7IdP7fMbuon
         Qh6KCZtxQwIHEV2/UcsChwxTm7QIS11dIGzp3a1uA0b4kUvMlpNFDQxcbPUXmiKL0Vyk
         YuXrmbTOzubc0/8A7v80KIN4mOtLWPK+cAYQ42zMskRDepkgRKr9bKSMnNysluXQ+0RO
         FS3kszP2QRXp4P+Fug1B0ihx18YIc/IadOjn00cbQ+qjaJzFvdMGp9vA7DmBMY0AVT1y
         b3uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mess.org header.s=2020 header.b=HvYKOcCW;
       spf=pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) smtp.mailfrom=sean@mess.org
Received: from gofer.mess.org (gofer.mess.org. [88.97.38.141])
        by gmr-mx.google.com with ESMTPS id i12si340718lfc.10.2021.06.18.14.19.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 14:19:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted sender) client-ip=88.97.38.141;
Received: by gofer.mess.org (Postfix, from userid 1000)
	id 23212C63A4; Fri, 18 Jun 2021 22:19:02 +0100 (BST)
Date: Fri, 18 Jun 2021 22:19:01 +0100
From: Sean Young <sean@mess.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: kernel test robot <lkp@intel.com>, linux-media@vger.kernel.org,
	linux-usb@vger.kernel.org, Johan Hovold <johan@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jon Rhees <support@usbuirt.com>, Oliver Neukum <oneukum@suse.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 1/2] media: rc: new driver for USB-UIRT device
Message-ID: <20210618211901.GA2220@gofer.mess.org>
References: <8e380fbe6853bfebd067cdeba2e65e83a3df2922.1623318855.git.sean@mess.org>
 <202106180629.J4nRNiax-lkp@intel.com>
 <20210618084450.GA26388@gofer.mess.org>
 <63f389df-e128-6438-97b4-0b66b30e7028@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <63f389df-e128-6438-97b4-0b66b30e7028@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sean@mess.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mess.org header.s=2020 header.b=HvYKOcCW;       spf=pass
 (google.com: domain of sean@mess.org designates 88.97.38.141 as permitted
 sender) smtp.mailfrom=sean@mess.org
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

On Fri, Jun 18, 2021 at 10:04:58AM -0700, Nathan Chancellor wrote:
> On 6/18/2021 1:44 AM, Sean Young wrote:
> > On Fri, Jun 18, 2021 at 06:18:06AM +0800, kernel test robot wrote:
> > > Hi Sean,
> > >=20
> > > I love your patch! Perhaps something to improve:
> > >=20
> > > [auto build test WARNING on linuxtv-media/master]
> > > [also build test WARNING on usb-serial/usb-next usb/usb-testing peter=
.chen-usb/for-usb-next v5.13-rc6 next-20210617]
> > > [If your patch is applied to the wrong git tree, kindly drop us a not=
e.
> > > And when submitting patch, we suggest to use '--base' as documented i=
n
> > > https://git-scm.com/docs/git-format-patch]
> > >=20
> > > url:    https://github.com/0day-ci/linux/commits/Sean-Young/IR-driver=
-for-USB-UIRT-device/20210616-182135
> > > base:   git://linuxtv.org/media_tree.git master
> > > config: powerpc64-randconfig-r012-20210617 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project =
64720f57bea6a6bf033feef4a5751ab9c0c3b401)
> > > reproduce (this is a W=3D1 build):
> > >          wget https://raw.githubusercontent.com/intel/lkp-tests/maste=
r/sbin/make.cross -O ~/bin/make.cross
> > >          chmod +x ~/bin/make.cross
> > >          # install powerpc64 cross compiling tool for clang build
> > >          # apt-get install binutils-powerpc64-linux-gnu
> > >          # https://github.com/0day-ci/linux/commit/17d3a0332baecb0359=
e05e8ae755478c7a1a4468
> > >          git remote add linux-review https://github.com/0day-ci/linux
> > >          git fetch --no-tags linux-review Sean-Young/IR-driver-for-US=
B-UIRT-device/20210616-182135
> > >          git checkout 17d3a0332baecb0359e05e8ae755478c7a1a4468
> > >          # save the attached .config to linux build tree
> > >          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cro=
ss ARCH=3Dpowerpc64
> > >=20
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >=20
> > > All warnings (new ones prefixed by >>):
> > >=20
> > >     In file included from drivers/media/rc/uirt.c:11:
> > >     In file included from include/linux/completion.h:12:
> > >     In file included from include/linux/swait.h:5:
> > >     In file included from include/linux/list.h:9:
> > >     In file included from include/linux/kernel.h:12:
> > >     In file included from include/linux/bitops.h:32:
> > >     In file included from arch/powerpc/include/asm/bitops.h:62:
> > >     arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macr=
o redefined [-Wmacro-redefined]
> > >     #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSY=
NC) : : :"memory")
> > >             ^
> > >     <built-in>:310:9: note: previous definition is here
> > >     #define __lwsync __builtin_ppc_lwsync
> > >             ^
> > > > > drivers/media/rc/uirt.c:639:6: warning: variable 'err' is used un=
initialized whenever 'if' condition is true [-Wsometimes-uninitialized]
> > >             if (!urb)
> > >                 ^~~~
> > >     drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs her=
e
> > >             return err;
> >=20
> > This is interesting. clang is right here, there are error paths where e=
rr is
> > not initialized. gcc-11.1 does not pick this up for some reason. The er=
ror path
> > should be an immediate dominator so it shouldn't be complicated to dete=
ct.
>=20
> The reason GCC does not warn about this is due to commit 78a5255ffb6a ("S=
top
> the ad-hoc games with -Wno-maybe-initialized"), which disables the GCC
> version of this warning except with W=3D2, which very few people use. You
> could use 'KCFLAGS=3D-Wmaybe-uninitialized' to try and see the same warni=
ng.

You're right, this is exactly the issue here.  When running with W=3D2 or
KCFLAGS=3D-Wmaybe-uninitialized you do get the warning.

There are paths where err are initialized, so gcc correctly says:

warning: =E2=80=98err=E2=80=99 may be used uninitialized in this function [=
-Wmaybe-uninitialized]


Thanks,

Sean

>=20
> Cheers,
> Nathan
>=20
> > I'll send out a v5 with this issue fixed.
> >=20
> > Sean
> >=20
> > >                    ^~~
> > >     drivers/media/rc/uirt.c:639:2: note: remove the 'if' if its condi=
tion is always false
> > >             if (!urb)
> > >             ^~~~~~~~~
> > >     drivers/media/rc/uirt.c:630:6: warning: variable 'err' is used un=
initialized whenever 'if' condition is true [-Wsometimes-uninitialized]
> > >             if (!urb)
> > >                 ^~~~
> > >     drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs her=
e
> > >             return err;
> > >                    ^~~
> > >     drivers/media/rc/uirt.c:630:2: note: remove the 'if' if its condi=
tion is always false
> > >             if (!urb)
> > >             ^~~~~~~~~
> > >     drivers/media/rc/uirt.c:626:6: warning: variable 'err' is used un=
initialized whenever 'if' condition is true [-Wsometimes-uninitialized]
> > >             if (!rc)
> > >                 ^~~
> > >     drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs her=
e
> > >             return err;
> > >                    ^~~
> > >     drivers/media/rc/uirt.c:626:2: note: remove the 'if' if its condi=
tion is always false
> > >             if (!rc)
> > >             ^~~~~~~~
> > >     drivers/media/rc/uirt.c:622:6: warning: variable 'err' is used un=
initialized whenever 'if' condition is true [-Wsometimes-uninitialized]
> > >             if (!uirt->out)
> > >                 ^~~~~~~~~~
> > >     drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs her=
e
> > >             return err;
> > >                    ^~~
> > >     drivers/media/rc/uirt.c:622:2: note: remove the 'if' if its condi=
tion is always false
> > >             if (!uirt->out)
> > >             ^~~~~~~~~~~~~~~
> > >     drivers/media/rc/uirt.c:618:6: warning: variable 'err' is used un=
initialized whenever 'if' condition is true [-Wsometimes-uninitialized]
> > >             if (!uirt->in)
> > >                 ^~~~~~~~~
> > >     drivers/media/rc/uirt.c:705:9: note: uninitialized use occurs her=
e
> > >             return err;
> > >                    ^~~
> > >     drivers/media/rc/uirt.c:618:2: note: remove the 'if' if its condi=
tion is always false
> > >             if (!uirt->in)
> > >             ^~~~~~~~~~~~~~
> > >     drivers/media/rc/uirt.c:604:15: note: initialize the variable 'er=
r' to silence this warning
> > >             int pipe, err;
> > >                          ^
> > >                           =3D 0
> > >     6 warnings generated.
> > >=20
> > >=20
> > > vim +639 drivers/media/rc/uirt.c
> > >=20
> > >     594=09
> > >     595	static int uirt_probe(struct usb_interface *intf,
> > >     596			      const struct usb_device_id *id)
> > >     597	{
> > >     598		struct usb_device *usbdev =3D interface_to_usbdev(intf);
> > >     599		struct usb_endpoint_descriptor *ep_in;
> > >     600		struct usb_endpoint_descriptor *ep_out;
> > >     601		struct uirt *uirt;
> > >     602		struct rc_dev *rc;
> > >     603		struct urb *urb;
> > >     604		int pipe, err;
> > >     605=09
> > >     606		if (usb_find_common_endpoints(intf->cur_altsetting, &ep_in, =
&ep_out, NULL, NULL) ||
> > >     607		    usb_endpoint_maxp(ep_in) !=3D MAX_PACKET ||
> > >     608		    usb_endpoint_maxp(ep_out) !=3D MAX_PACKET) {
> > >     609			dev_err(&intf->dev, "required endpoints not found\n");
> > >     610			return -ENODEV;
> > >     611		}
> > >     612=09
> > >     613		uirt =3D kzalloc(sizeof(*uirt), GFP_KERNEL);
> > >     614		if (!uirt)
> > >     615			return -ENOMEM;
> > >     616=09
> > >     617		uirt->in =3D kmalloc(MAX_PACKET, GFP_KERNEL);
> > >     618		if (!uirt->in)
> > >     619			goto free_uirt;
> > >     620=09
> > >     621		uirt->out =3D kmalloc(MAX_PACKET, GFP_KERNEL);
> > >     622		if (!uirt->out)
> > >     623			goto free_uirt;
> > >     624=09
> > >     625		rc =3D rc_allocate_device(RC_DRIVER_IR_RAW);
> > >     626		if (!rc)
> > >     627			goto free_uirt;
> > >     628=09
> > >     629		urb =3D usb_alloc_urb(0, GFP_KERNEL);
> > >     630		if (!urb)
> > >     631			goto free_rcdev;
> > >     632=09
> > >     633		pipe =3D usb_rcvbulkpipe(usbdev, ep_in->bEndpointAddress);
> > >     634		usb_fill_bulk_urb(urb, usbdev, pipe, uirt->in, MAX_PACKET,
> > >     635				  uirt_in_callback, uirt);
> > >     636		uirt->urb_in =3D urb;
> > >     637=09
> > >     638		urb =3D usb_alloc_urb(0, GFP_KERNEL);
> > >   > 639		if (!urb)
> > >     640			goto free_rcdev;
> > >     641=09
> > >     642		pipe =3D usb_sndbulkpipe(usbdev, ep_out->bEndpointAddress);
> > >     643		usb_fill_bulk_urb(urb, usbdev, pipe, uirt->out, MAX_PACKET,
> > >     644				  uirt_out_callback, uirt);
> > >     645=09
> > >     646		uirt->dev =3D &intf->dev;
> > >     647		uirt->usbdev =3D usbdev;
> > >     648		uirt->rc =3D rc;
> > >     649		uirt->urb_out =3D urb;
> > >     650		uirt->rx_state =3D RX_STATE_INTERSPACE_HIGH;
> > >     651=09
> > >     652		err =3D usb_submit_urb(uirt->urb_in, GFP_KERNEL);
> > >     653		if (err !=3D 0) {
> > >     654			dev_err(uirt->dev, "failed to submit read urb: %d\n", err);
> > >     655			goto free_rcdev;
> > >     656		}
> > >     657=09
> > >     658		err =3D init_ftdi(usbdev);
> > >     659		if (err) {
> > >     660			dev_err(uirt->dev, "failed to setup ftdi: %d\n", err);
> > >     661			goto kill_urbs;
> > >     662		}
> > >     663=09
> > >     664		err =3D uirt_setup(uirt);
> > >     665		if (err)
> > >     666			goto kill_urbs;
> > >     667=09
> > >     668		usb_make_path(usbdev, uirt->phys, sizeof(uirt->phys));
> > >     669=09
> > >     670		rc->device_name =3D "USB-UIRT";
> > >     671		rc->driver_name =3D KBUILD_MODNAME;
> > >     672		rc->input_phys =3D uirt->phys;
> > >     673		usb_to_input_id(usbdev, &rc->input_id);
> > >     674		rc->dev.parent =3D &intf->dev;
> > >     675		rc->priv =3D uirt;
> > >     676		rc->tx_ir =3D uirt_tx;
> > >     677		rc->s_tx_carrier =3D uirt_set_tx_carrier;
> > >     678		rc->s_learning_mode =3D uirt_set_rx_wideband;
> > >     679		rc->allowed_protocols =3D RC_PROTO_BIT_ALL_IR_DECODER;
> > >     680		rc->map_name =3D RC_MAP_RC6_MCE;
> > >     681		rc->rx_resolution =3D UNIT_US;
> > >     682		rc->timeout =3D IR_TIMEOUT;
> > >     683=09
> > >     684		uirt_set_tx_carrier(rc, 38000);
> > >     685=09
> > >     686		err =3D rc_register_device(rc);
> > >     687		if (err)
> > >     688			goto kill_urbs;
> > >     689=09
> > >     690		usb_set_intfdata(intf, uirt);
> > >     691=09
> > >     692		return 0;
> > >     693=09
> > >     694	kill_urbs:
> > >     695		usb_kill_urb(uirt->urb_in);
> > >     696		usb_kill_urb(uirt->urb_out);
> > >     697	free_rcdev:
> > >     698		usb_free_urb(uirt->urb_in);
> > >     699		usb_free_urb(uirt->urb_out);
> > >     700		rc_free_device(rc);
> > >     701	free_uirt:
> > >     702		kfree(uirt->in);
> > >     703		kfree(uirt->out);
> > >     704		kfree(uirt);
> > >     705		return err;
> > >     706	}
> > >     707=09
> > >=20
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >=20
> >=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210618211901.GA2220%40gofer.mess.org.
