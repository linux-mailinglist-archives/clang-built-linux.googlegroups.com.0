Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6727H2AKGQEBKHFQ7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id A90FC1B1DCE
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 06:58:36 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id v18sf13560523qtq.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 21:58:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587445115; cv=pass;
        d=google.com; s=arc-20160816;
        b=uz1XHfH47Y7q//YphE4PedcYmFaLjEzA2lKfzu4mQjNvnbf8HbGfuwR2JIxqGgfbeE
         JYTKDUCzrKFXNd8C8QKy4Xeay1saKbHR1JDKiYSy+07oRIGy7c1u4ze81Qfgx9UomB3c
         398Ch0vXu07LxzL5L1VxGJbbVHPnYN0yH2MIjhZWANjpu9ejM61Xd+Mn2BCuDz4v/FQo
         3UpB7EGvZpQEIVALh22tlludGMRxISsF7kZ9z1SwkGf07Ao2L5eqy0pIkMGvoOXYGxZu
         LfL4BczZrogTBu6a+aXbXnFt6ePCJi2WfZPO42222mBaDgNnBYGJByLAY+HOgHY8zQvR
         YEtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=gN79Y1Ke8CoSkV17pPXqhSvVp9cZNKg73sAUFHXvhK8=;
        b=N7wqk/xtAFSF/vbRebqS4cQZ5yxFWpRcOswRkNhY6RSGAZtYjKxnrAvkm5QvG5bt+u
         uQazwtjQs50F3HNxE3FhjXL3jCArizzGvJIpT6EKHZM9yvXDCTNPAr9KG7/2rAYBLWe+
         7Kg3p+GeniUbOE9jALd8mX8rqyv+qcntTXLAc0sPP/lzFw2vqVPvc7d3kRNzljyExKSJ
         h4vGpEb6gydaqg/3TD9Ens8ZA91OgLo0FJDI8h1rJuGpObdvT7Orcw8a+kNCZsl/EMH6
         6Cb8V6LU6KGhllG6FctIiKCz55mJ94rS3ZU56fGLrTwtRlXOxNG0ZhCZisV36RVwB1jD
         Bmng==
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
        bh=gN79Y1Ke8CoSkV17pPXqhSvVp9cZNKg73sAUFHXvhK8=;
        b=oSR88hv5U/UvOmsbNcq84RJ9x8ByowDh/zvSUkPCVgofxKo62youqpaSofe+hI1OAM
         EJhjTkO2AifX3d9LH1sSkluyNlKvE+8GK9P+GBI7fQFkv4OAuaXK7Qv7xnbJdDnPdJl4
         CUFAIekshnMG2KvBj9uxWCGB2U76qctk6farHyQn52vqN7ZrkLQTt93ph/fgk3lFd8U/
         JHSI4/f/DBzyULVxxazewel/uO5TFmM6LZqm3b2D5MO2BIpcC/8lkMDuC8YntSREcfFz
         pEU6LwvyefH6BuBwyqLFasJiKIerlabohp2BvbMy9LaY+S6eoV3q58mk7a51U0l1Oxnn
         yV4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gN79Y1Ke8CoSkV17pPXqhSvVp9cZNKg73sAUFHXvhK8=;
        b=lH9zt7DB8s++cuEZnqaQR8kPot68Or7+msLEQcwmdH7WOxTsNZ7+27RFC2cZF+9oG0
         AMblFpcrPP0tO2+B5ypmBejNWQrEKRYj0mg1R7eyciwFLxW2r5vs+vuzRSM6ggn7NbDk
         C9K14mrKGRsWmocxU5iCM+xrjeLWzQ209gCx1ozgNP0MgTNkM39pVSvm7a466hppnWDH
         LFsxgqubd0CGg9aZOQaLxuXA3zpnseglU7ZQVFMlVPQt9Yt5umFS5fxPFOZP9NoGF7Yd
         gH5LNBGbmhrYfRHwKuEzB1kTTXm37cy7piEg6IRIFyYTC8hzbt6/eDn44JtnbHXl5K/+
         6brQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY79dwMy+fnuxl5zwGBGQs2B1ps1ndal8hu+BwCsmfhuditn91B
	F/xcz84la07MgQ3Iox9DHcA=
X-Google-Smtp-Source: APiQypJLAy53M5yuaLNnsDQlktmxsiBpBvaXOIVjtWg8ft15AUtH1rsss/ZLN46iuQQMoLs9Yx50Sg==
X-Received: by 2002:ac8:6f17:: with SMTP id g23mr19578897qtv.266.1587445115642;
        Mon, 20 Apr 2020 21:58:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4702:: with SMTP id k2ls2854026qvz.1.gmail; Mon, 20 Apr
 2020 21:58:35 -0700 (PDT)
X-Received: by 2002:a0c:8ecf:: with SMTP id y15mr12326247qvb.44.1587445115245;
        Mon, 20 Apr 2020 21:58:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587445115; cv=none;
        d=google.com; s=arc-20160816;
        b=HEy2WiUddNb6JxGqEHCSIth1WLOp3AxGhsVtRabfkc93fJIq+VlD1UBe3/GfRbobv9
         xu2vfWnj4InnyHJcq4pWKLETmpw9gRQMCeLCalXABOAJsovAWHhTailYSupSNh9iJLqV
         XIM5Gq72jo1Q4CGNJSphDaeNcJ6x3r89kF/vEZlA4NV/BddzBCn9manTVnXvtlnW7fWh
         SKhepCsFnaMTJNAspjnAC51Aeq+KOnXw3U6Ri6JJjBC+yPacrfmmiJPnmN10UoMYGzvj
         B5c/7+k+Tu+1wa5ZIFtlbcuzCFsjUK0eE6/86zI8Zht4nCtzvdrSt79XpZskXB+XOPUo
         xohQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=zLXQ52cVO+lWvDSCP7xjI3VjvzIdCxO6Yyas1okz6a4=;
        b=GKuw1frL4dF5u/auiN+lVWV8WIwc0zHiSl1PPVFqqlErcmk/4PobdRi2Gsyp5t/ED/
         uENE7sujZYIfv0py7MPuQ1lw2683744hLvk2d5bRt2GaHzov/R0URshz6DWjvVMCtt88
         fDVrakSThKLjqSaVPflIUk4GMyrmvyS7bTr8npe4Y4oaUvbEfdEghIyjC8x/r/pesSXp
         ZOFqih8TUVjyvTDAJU9y3oalFtHGcN+5X3QX1N47e9uYVRjUdmQnHsej96F34f8cIKME
         lR+isxRFzr7ut2ktKDoePosJzrU4hIrqUHoj01a+kG9oWmJL847qQsk6lrO6u/103VaB
         I9bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id r205si92437qke.3.2020.04.20.21.58.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Apr 2020 21:58:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: xwY8lgdakpI+qNGDb6+xSZ5CXK5kNRtFf9IGPpc0BpwSAR19059QPqZBQwR+GdFw0KhGtJ2TM5
 TSUN8O2NwUAw==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2020 21:58:32 -0700
IronPort-SDR: 7owsC65rb0MC5ZsnXQB0rPCaUr2gzrX4QetXs6+jMxDUT2xekTV2DQY+wAvKk44v4BC+AJCIVJ
 k+y58zzxpuaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,409,1580803200"; 
   d="gz'50?scan'50,208,50";a="291482792"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 20 Apr 2020 21:58:29 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jQkzM-000C4M-OU; Tue, 21 Apr 2020 12:58:28 +0800
Date: Tue, 21 Apr 2020 12:58:22 +0800
From: kbuild test robot <lkp@intel.com>
To: Jacopo Mondi <jacopo@jmondi.org>, linux-media@vger.kernel.org,
	libcamera-devel@lists.libcamera.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Jacopo Mondi <jacopo@jmondi.org>, mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl, sakari.ailus@linux.intel.com,
	andrey.konovalov@linaro.org, laurent.pinchart@ideasonboard.com,
	Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH v4 4/5] v4l2-subdev: add VIDIOC_SUBDEV_QUERYCAP ioctl
Message-ID: <202004211204.i8UsTCQo%lkp@intel.com>
References: <20200418103216.140572-5-jacopo@jmondi.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline
In-Reply-To: <20200418103216.140572-5-jacopo@jmondi.org>
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


--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Jacopo,

I love your patch! Yet something to improve:

[auto build test ERROR on linuxtv-media/master]
[also build test ERROR on linus/master v5.7-rc2 next-20200420]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Jacopo-Mondi/media-Register-read-only-sub-dev-devnode/20200421-053419
base:   git://linuxtv.org/media_tree.git master
config: arm-bcm2835_defconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a9b137f9ffba8cb25dfd7dd1fb613e8aac121b37)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/media/v4l2-core/v4l2-subdev.c:345:23: error: use of undeclared identifier 'ro_subdev'
                   cap->subdev_caps |= ro_subdev ? V4L2_SUBDEV_CAP_RO_SUBDEV
                                       ^
   1 error generated.

vim +/ro_subdev +345 drivers/media/v4l2-core/v4l2-subdev.c

   327	
   328	static long subdev_do_ioctl(struct file *file, unsigned int cmd, void *arg)
   329	{
   330		struct video_device *vdev = video_devdata(file);
   331		struct v4l2_subdev *sd = vdev_to_v4l2_subdev(vdev);
   332		struct v4l2_fh *vfh = file->private_data;
   333	#if defined(CONFIG_VIDEO_V4L2_SUBDEV_API)
   334		struct v4l2_subdev_fh *subdev_fh = to_v4l2_subdev_fh(vfh);
   335		bool ro_subdev = test_bit(V4L2_FL_SUBDEV_RO_DEVNODE, &vdev->flags);
   336	#endif
   337		int rval;
   338	
   339		switch (cmd) {
   340		case VIDIOC_SUBDEV_QUERYCAP: {
   341			struct v4l2_subdev_capability *cap = arg;
   342	
   343			memset(cap, 0, sizeof(*cap));
   344			cap->version = LINUX_VERSION_CODE;
 > 345			cap->subdev_caps |= ro_subdev ? V4L2_SUBDEV_CAP_RO_SUBDEV
   346						      : V4L2_SUBDEV_CAP_RW_SUBDEV;
   347	
   348			return 0;
   349		}
   350	
   351		case VIDIOC_QUERYCTRL:
   352			/*
   353			 * TODO: this really should be folded into v4l2_queryctrl (this
   354			 * currently returns -EINVAL for NULL control handlers).
   355			 * However, v4l2_queryctrl() is still called directly by
   356			 * drivers as well and until that has been addressed I believe
   357			 * it is safer to do the check here. The same is true for the
   358			 * other control ioctls below.
   359			 */
   360			if (!vfh->ctrl_handler)
   361				return -ENOTTY;
   362			return v4l2_queryctrl(vfh->ctrl_handler, arg);
   363	
   364		case VIDIOC_QUERY_EXT_CTRL:
   365			if (!vfh->ctrl_handler)
   366				return -ENOTTY;
   367			return v4l2_query_ext_ctrl(vfh->ctrl_handler, arg);
   368	
   369		case VIDIOC_QUERYMENU:
   370			if (!vfh->ctrl_handler)
   371				return -ENOTTY;
   372			return v4l2_querymenu(vfh->ctrl_handler, arg);
   373	
   374		case VIDIOC_G_CTRL:
   375			if (!vfh->ctrl_handler)
   376				return -ENOTTY;
   377			return v4l2_g_ctrl(vfh->ctrl_handler, arg);
   378	
   379		case VIDIOC_S_CTRL:
   380			if (!vfh->ctrl_handler)
   381				return -ENOTTY;
   382			return v4l2_s_ctrl(vfh, vfh->ctrl_handler, arg);
   383	
   384		case VIDIOC_G_EXT_CTRLS:
   385			if (!vfh->ctrl_handler)
   386				return -ENOTTY;
   387			return v4l2_g_ext_ctrls(vfh->ctrl_handler,
   388						vdev, sd->v4l2_dev->mdev, arg);
   389	
   390		case VIDIOC_S_EXT_CTRLS:
   391			if (!vfh->ctrl_handler)
   392				return -ENOTTY;
   393			return v4l2_s_ext_ctrls(vfh, vfh->ctrl_handler,
   394						vdev, sd->v4l2_dev->mdev, arg);
   395	
   396		case VIDIOC_TRY_EXT_CTRLS:
   397			if (!vfh->ctrl_handler)
   398				return -ENOTTY;
   399			return v4l2_try_ext_ctrls(vfh->ctrl_handler,
   400						  vdev, sd->v4l2_dev->mdev, arg);
   401	
   402		case VIDIOC_DQEVENT:
   403			if (!(sd->flags & V4L2_SUBDEV_FL_HAS_EVENTS))
   404				return -ENOIOCTLCMD;
   405	
   406			return v4l2_event_dequeue(vfh, arg, file->f_flags & O_NONBLOCK);
   407	
   408		case VIDIOC_DQEVENT_TIME32: {
   409			struct v4l2_event_time32 *ev32 = arg;
   410			struct v4l2_event ev = { };
   411	
   412			if (!(sd->flags & V4L2_SUBDEV_FL_HAS_EVENTS))
   413				return -ENOIOCTLCMD;
   414	
   415			rval = v4l2_event_dequeue(vfh, &ev, file->f_flags & O_NONBLOCK);
   416	
   417			*ev32 = (struct v4l2_event_time32) {
   418				.type		= ev.type,
   419				.pending	= ev.pending,
   420				.sequence	= ev.sequence,
   421				.timestamp.tv_sec  = ev.timestamp.tv_sec,
   422				.timestamp.tv_nsec = ev.timestamp.tv_nsec,
   423				.id		= ev.id,
   424			};
   425	
   426			memcpy(&ev32->u, &ev.u, sizeof(ev.u));
   427			memcpy(&ev32->reserved, &ev.reserved, sizeof(ev.reserved));
   428	
   429			return rval;
   430		}
   431	
   432		case VIDIOC_SUBSCRIBE_EVENT:
   433			return v4l2_subdev_call(sd, core, subscribe_event, vfh, arg);
   434	
   435		case VIDIOC_UNSUBSCRIBE_EVENT:
   436			return v4l2_subdev_call(sd, core, unsubscribe_event, vfh, arg);
   437	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004211204.i8UsTCQo%25lkp%40intel.com.

--ZPt4rx8FFjLCG7dd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ZPt4rx8FFjLCG7dd--
