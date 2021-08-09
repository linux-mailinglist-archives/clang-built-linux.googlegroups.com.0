Return-Path: <clang-built-linux+bncBDGIRY5JYYKRBQXLYWEAMGQE7RXNCAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFAF3E4C39
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Aug 2021 20:36:51 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id y39-20020a50bb2a0000b02903bc05daccbasf9348293ede.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Aug 2021 11:36:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628534211; cv=pass;
        d=google.com; s=arc-20160816;
        b=NUCx8BBLJOWozOXCh8WLi6DukfFnY57nxcDQM4wos4FMWDqdmgY6PAPOSYrp152KW3
         QGzlyhnxz7w56MwTAhtBjMzLSu8Dudj+hzwaziTnyeZQOC5yVeA4UuApv/F27iurThz3
         O7Tpm1cVlcoMeuwo6FHZ30qqCx/UQa6D1BfMwz109EkPpehM9Rj7qlTp8czW/McLPfD7
         ftBdtkiKTelUeNAxAZMDlvNhs0PQLd6ef/CAhje305suZxnw0jvnOARY/opjnfTvGjw0
         1ZlL7oin/JWRRRmZr1wnXVzx6RGNxSLTfNMesOJ+Pshx3kPZI0qsLRJHLpTlbTqFV4EC
         TXWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:sender:dkim-signature;
        bh=+tZAFK0674Snztruy/qeU/H4k6r3KeK6apvnVnPAEqQ=;
        b=VGOPDAZufrSV5UVrb8gSHtvvlHgkH07yAsN1NRZcsJIoVCcCE+O2mHZvZbG4br6Zo/
         4J/fZ1UVot2CldToo6azW5k8xZSIKKmiakJhO9mZd+AsGkVHU839hFK81035d2wWZevN
         KwHH8n9AyGle3LrB5LmvI2xdv1Niho0wIf5VIDE2g34tIOn1tCfaTmhN/OKK+2t5z9Vs
         YOtiIhKhE4DDp0KtfBs/ebTWBSWVfzFzLlws2UNj6ZNOfMHbJYAAx8VH0Xb+7G6equKj
         b7T7mojpWV/ZkZEYVelHI4MOFvYMulP/b/O8cLosl8lIFI4AZk2heK1yEjVYdRz9dofI
         5ddg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nucleusys.com header.s=x header.b=fths+KCx;
       spf=pass (google.com: domain of petkan@nucleusys.com designates 92.247.61.126 as permitted sender) smtp.mailfrom=petkan@nucleusys.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+tZAFK0674Snztruy/qeU/H4k6r3KeK6apvnVnPAEqQ=;
        b=bDmG62I47ip+fOJJftRXnRyENYt2/kLYZun1s7D6Tz6nIABSfb0ZLQ6QgZEFlcWOB4
         hS0TpBL+gXQGTggFTdDwGbOKmQRGar6MKt+N2oPeWDioteI38oY8gc3m1OvFz8Gvifie
         SnXTQ0MHn+kYqCWBO+c9aw33c88RwxUGbgVYKOauxr280RUzqW7WJCu0XLRyCvuQ9YMd
         QgVP0bQ4AybRzy5heSziVWqpu36V/1xM/IDvhjNUy3oKldZ+vuelqbPqDRdHK03ZceQL
         rFnw4vvQ8YrdxuMOX2fJyRueVXIVDpXi3xH0d1z8szzSTr0PdAhCNK97aYPSoN9twNxu
         zTTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+tZAFK0674Snztruy/qeU/H4k6r3KeK6apvnVnPAEqQ=;
        b=FPhKSKsDh93UVNEYyt9v9N/41o+P3HI2C/Deuj2OzWdOCoRM80LMtYxksSC372SoZO
         ud4bipgDWkOSOKjRFGOV3/7g8HB/qb6ucDYAV4V9m3dnRm0h7MbQlrenIOUpag8EyeNt
         pFZE98s8ssFM86eG/sUyCBaHlh22YgQUV8hukqIr1iHQvuOYNj9uCLbnscFOXx4HTRVg
         tsWcyTObGtmIsD7nfo5ujme/ddaDoMAWwTBiU7N+tozB6zxDsbFJ5fX+ilP/xgYfLOLn
         GZcLHCec2YMbWQ4yjYmo5lcFgLKryzl/bvWXoicBznbE+XtbOu0VyqtH/K431Oj5iPXX
         8vMw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5325AYxFlwYjtf2oDJSEW02B11H8QFaLwZTuUUrtx/aR8raBUNpH
	o6NWdx5ackbr/ldct+M9Yno=
X-Google-Smtp-Source: ABdhPJwx8+ZfWwbLwcixMWabF6NN+tB82NuqNyVpCfTyAEXh4cStnYBIwmQ1z5NtripVrdkjs8sMuA==
X-Received: by 2002:aa7:c603:: with SMTP id h3mr31531911edq.165.1628534210973;
        Mon, 09 Aug 2021 11:36:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1644:: with SMTP id n4ls7562822ejd.7.gmail; Mon, 09
 Aug 2021 11:36:50 -0700 (PDT)
X-Received: by 2002:a17:906:fc6:: with SMTP id c6mr23517093ejk.65.1628534209973;
        Mon, 09 Aug 2021 11:36:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628534209; cv=none;
        d=google.com; s=arc-20160816;
        b=al3A7fjDQ9eU3y58FhIvVcAChybc3CTv6w2z9/N+7opKdDk0lmLzBSS5ToN1u+tOS+
         NWrneSfFtmCXaXig8IUdfP60h7L43ToGmWqMvlqCQ0jLGmCC5TC4uH4b5/rxF01JQNAO
         Rf8fFPL6QLL3v0zFJnPFy8a+7ePsEhMwlH3N0VRxy1Wy3uKiVqxyf8mV87k9RZ1dQW4U
         Ygm+yUFtpQDb/4XNWK/g4bnzSoDDopNDACtD40KDjVGoNDWPXDLgrte00oEu2pRmgcr3
         Exuwfo7KhLC9peApGXrOrhdZvSfdEg6f7/juvGtrW61Aw8RBFeIDTLhOYbF7+hLWj6aI
         cHfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=kJtEPbz3HBfjcS7eIEk4ujeRQjWezW+oEUGElqZZsfI=;
        b=BWXzR0eg8HSAjGqxiHrXYD8p5AOlBJcYehDFpmRLKDGfhjz1rSQ9XSJKxL5/X/uzwi
         RKAhu/kV+N/eSVmgWMbIkHGDTlzvwLGcY4E5mJcxZAMllwx4o+BJsnjSx2FofZi4MG2o
         CxlJyIdvxQAObNhbE3fCHhxVisz0oH8dyQRsquB0TzBwFXpYQIkS3oMqtvOIGAQ3NbnP
         DOos8xURkEizX4YAj102J5rpCHdV//rzFjN836/o6Jm78i23sAYSSF/eIm3ntCYuTZB9
         0IFqkgwRykZ9Q0rTBiMEOj4j0X8a3pe5x+R+3SLZWrJ/FB5Y75MNOd/Dr+ee1IZFIEYY
         dB6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nucleusys.com header.s=x header.b=fths+KCx;
       spf=pass (google.com: domain of petkan@nucleusys.com designates 92.247.61.126 as permitted sender) smtp.mailfrom=petkan@nucleusys.com
Received: from zzt.nucleusys.com (lan.nucleusys.com. [92.247.61.126])
        by gmr-mx.google.com with ESMTPS id o10si716139edc.4.2021.08.09.11.36.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Aug 2021 11:36:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of petkan@nucleusys.com designates 92.247.61.126 as permitted sender) client-ip=92.247.61.126;
Received: from 78-83-68-78.spectrumnet.bg ([78.83.68.78] helo=carbon)
	by zzt.nucleusys.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <petkan@nucleusys.com>)
	id 1mDA8d-0002Mp-R5; Mon, 09 Aug 2021 21:36:43 +0300
Date: Mon, 9 Aug 2021 21:36:39 +0300
From: Petko Manolov <petkan@nucleusys.com>
To: Pavel Skripkin <paskripkin@gmail.com>
Cc: kernel test robot <rong.a.chen@intel.com>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: Re: drivers/net/usb/pegasus.c:461:2: warning: Value stored to 'ret'
 is never read [clang-analyzer-deadcode.DeadStores]
Message-ID: <YRF1t5kx6hTrv5LC@carbon>
Mail-Followup-To: Pavel Skripkin <paskripkin@gmail.com>,
	kernel test robot <rong.a.chen@intel.com>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
References: <202108080902.ZhmxmJZr-lkp@intel.com>
 <28df02cc-8b34-3d4e-2ed6-30af0ff44a42@intel.com>
 <94550f41-1204-8996-ef32-c25429481ceb@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <94550f41-1204-8996-ef32-c25429481ceb@gmail.com>
X-Spam_score: -1.0
X-Spam_bar: -
X-Spam_report: Spam detection software, running on the system "zzt.nucleusys.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 @@CONTACT_ADDRESS@@ for details.
 
 Content preview:  On 21-08-09 14:06:11, Pavel Skripkin wrote: > On 8/9/21 1:37
    PM, kernel test robot wrote: > > > > tree: > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
    master > > head: 85a90500 [...] 
 
 Content analysis details:   (-1.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
  0.0 TVD_RCVD_IP            Message was received from an IP address
X-Original-Sender: petkan@nucleusys.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nucleusys.com header.s=x header.b=fths+KCx;       spf=pass
 (google.com: domain of petkan@nucleusys.com designates 92.247.61.126 as
 permitted sender) smtp.mailfrom=petkan@nucleusys.com
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

On 21-08-09 14:06:11, Pavel Skripkin wrote:
> On 8/9/21 1:37 PM, kernel test robot wrote:
> > 
> > tree:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   85a90500f9a1717c4e142ce92e6c1cb1a339ec78
> > commit: 8a160e2e9aeb8318159b48701ad8a6e22274372d net: usb: pegasus:
> > Check the return value of get_geristers() and friends;
> > date:   4 days ago
> > :::::: branch date: 8 hours ago
> > :::::: commit date: 4 days ago
> > config: x86_64-randconfig-c001-20210808 (attached as .config)
> > compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project
> > 41a6b50c25961addc04438b567ee1f4ef9e40f98)
> > reproduce (this is a W=1 build):
> >           wget
> > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > -O ~/bin/make.cross
> >           chmod +x ~/bin/make.cross
> >           # install x86_64 cross compiling tool for clang build
> >           # apt-get install binutils-x86-64-linux-gnu
> >           #
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8a160e2e9aeb8318159b48701ad8a6e22274372d
> >           git remote add linus
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >           git fetch --no-tags linus master
> >           git checkout 8a160e2e9aeb8318159b48701ad8a6e22274372d
> >           # save the attached .config to linux build tree
> >           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> > ARCH=x86_64 clang-analyzer
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> 
> Hi, @Petko!
> 
> For you not to scan all these warnings:
> 
> > > > drivers/net/usb/pegasus.c:461:2: warning: Value stored to 'ret' is never read [clang-analyzer-deadcode.DeadStores]
> >              ret = set_registers(pegasus, EthCtrl0, 3, data);
> >              ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >      drivers/net/usb/pegasus.c:461:2: note: Value stored to 'ret' is
> > never read
> >              ret = set_registers(pegasus, EthCtrl0, 3, data);
> >              ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> This is the real bug, I think. Can be fixed like this:
> 
> diff --git a/drivers/net/usb/pegasus.c b/drivers/net/usb/pegasus.c
> index 22353bab76c8..f2b8891c7b36 100644
> --- a/drivers/net/usb/pegasus.c
> +++ b/drivers/net/usb/pegasus.c
> @@ -459,6 +459,8 @@ static int enable_net_traffic(struct net_device *dev,
> struct usb_device *usb)
> 
>  	memcpy(pegasus->eth_regs, data, sizeof(data));
>  	ret = set_registers(pegasus, EthCtrl0, 3, data);
> +	if (ret < 0)
> +		goto fail;
> 
>  	if (usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS ||
>  	    usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS2 ||
> 
> 
> It was caused by our last refactoring: enable_net_traffic() now returns 0 on
> success and this ret is never checked.

I'd rather remove the 'ret = ' part and leave set_registers() alone.  If this
particular write operation fail, it doesn't mean the adapter won't work at all.
Perhaps it won't be the most optimal mode, but it will work.  There are some
legal checks after set_registers() that also make sense to pass.  So the patch i
suggest looks like:


diff --git a/drivers/net/usb/pegasus.c b/drivers/net/usb/pegasus.c
index 652e9fcf0b77..49cfc720d78f 100644
--- a/drivers/net/usb/pegasus.c
+++ b/drivers/net/usb/pegasus.c
@@ -433,7 +433,7 @@ static int enable_net_traffic(struct net_device *dev, struct usb_device *usb)
        data[2] = loopback ? 0x09 : 0x01;

        memcpy(pegasus->eth_regs, data, sizeof(data));
-       ret = set_registers(pegasus, EthCtrl0, 3, data);
+       set_registers(pegasus, EthCtrl0, 3, data);

        if (usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS ||
            usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS2 ||


cheers,
Petko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YRF1t5kx6hTrv5LC%40carbon.
