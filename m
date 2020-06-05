Return-Path: <clang-built-linux+bncBAABBAG45H3AKGQEMJGB3VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3CC1EFD3E
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Jun 2020 18:08:34 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id d14sf4991405pjw.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Jun 2020 09:08:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591373312; cv=pass;
        d=google.com; s=arc-20160816;
        b=hWWyO0j/gHhvP7sR+FAaWQNPGwT6lLn/U7a1zWSuO1ZZ2DAqDVUvt5SVSIucj6Omny
         zU/hXytvipVDzeevwjEShQ3xlltsqRPtXkHFZZgT/lMUPkELgZ9otTKuDlVYc9fARS/e
         PqxS+ep4rkpdfexE2dwhBLNBVtY8QRZ18Aq34V6nEhtBHfadcehf/Px7A73E13V+87TE
         5gBqiosD5Zlj0ncXLtjNpxh3F4GRHH+haomK4mdmZj8vIO2+Lh4NERaHt/12D2S/RBD5
         6mFlNKyHrMCoIk34feg/cx5gjw38qoWEdTUlySCXNBVuUTemW24e61lZ52VuKnPUslY6
         3yZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8Rc7R8L+9YPOxuMQrK2e2Xhdtqw8wn8DKXU0rSE36jc=;
        b=k5ylSwDxd/4K+m5ZqqVoByBtx5ixNG3djj+artRKCKaw6haf6Fp+MkHon34u5lgodJ
         dOsJAXqqubcqmJUYnWau9dau9epSZ2oc4YzHE+f9gis6LeNagENAQceu5KYFdQf1qUec
         8D9cU3J9HMaOXkC6rJa1aYXg5zJJQp+p2V0Vx1DaXy5LhdF49qHkVXUZufdiaPLd4fUA
         U5YQe4/yUxPoptJo7hnWwfJJiaWdJAEI+yAD0PA4Ndp1rzfSge1sOykEcu9+64T8LwIy
         HryK2SdVMpgYtd6AmhNXIym7ezxnRCyBuqTRfdpX258tozDeSiLjdvJbuq+buLzhkImr
         ZDOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ODPBRxfX;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8Rc7R8L+9YPOxuMQrK2e2Xhdtqw8wn8DKXU0rSE36jc=;
        b=MoziUvgdBvVb4gPNvuSjmQ+1nApYHcQpfyTDyKg5zUsr7QN0PqP8o3SWmUQps9qjfp
         cd6pkyfVfwgG2809nPHX+yLfG4K963KEe7nA3/HGJlMg5hOpz+rJ+6sIAp0Q4ROcXAUd
         SBz9VDllKxg9FVIOPSEqjj2XtFwBLTMT7JJx000JqXexx+ZtExDR8XfkEY+UDjJNvH6o
         /Eyks1Pf7LyXm78XnMdI9XRMuMyswVk6XK9W0PGUb4Ni5SMwumf7fSzS4DKIw4oNoUf5
         44xhCrPgtts8n4RjhIl3wy7fX9chgVrbY7g/F06axLv1f3SybB2Xl1/l95VbKJ10Qliy
         0qTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8Rc7R8L+9YPOxuMQrK2e2Xhdtqw8wn8DKXU0rSE36jc=;
        b=Olp/iIUgl3D5d6JYWibNbFoWdpYfOXwnpZ5GCIRyUmV4BAnKm91tF2upwj78ppLlyS
         8cOWbtmY8cqQ6cicZuMv08aslW4GdN0Vr+8NEiK6+5YJPg10p/l+pHoWnVM/gcWHz6Gl
         RxoqM5IQ52kSWj713AqIu92TwEQLW9LKYReFJPMPcmFe5uguohMrSinrlLylGn+NB2nB
         q4IUHS8wn/kB1IVtsBkpu6dP5nJ95BOrpMbnMAXZ0QMPCLpw4aDJvKOBXuIkN6zvVIn6
         GmmTHNGtkNiAmlovVmK8Oatq7Aa4Gig4yl1nMODW+kcykRQJi+w/H/Gx/uBj7Tt5N493
         BzpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HRNU2KkPS1Idzi6UxeNS9C8lo4rBr8i45eUQUUQVXgDbr2nAe
	9i/V3sdL5wj3gx5NBQWhyZw=
X-Google-Smtp-Source: ABdhPJxuGeZHN/21MWGPBFAdxSoCaQT9rj8o/oAhpVQHmXBZXqhI/AnB52zFO/wd2n/Ai6eTkTOyQQ==
X-Received: by 2002:a17:90a:1ac3:: with SMTP id p61mr4007057pjp.23.1591373312707;
        Fri, 05 Jun 2020 09:08:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8d8b:: with SMTP id i11ls1349590pfr.0.gmail; Fri, 05 Jun
 2020 09:08:32 -0700 (PDT)
X-Received: by 2002:a63:c142:: with SMTP id p2mr10012223pgi.345.1591373312022;
        Fri, 05 Jun 2020 09:08:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591373312; cv=none;
        d=google.com; s=arc-20160816;
        b=nEXISoQrOXk5/G5CZu4LGPDr7AWIvVAvXhF2V3HjzYmZzlT8CXIi3GRRp0sAL6pWn4
         CIcS0yh8lJgeCgvvFdDbJpBU4iLOl9wcZ4Kpc5W8anerwLbzF+yoTv8Tk6iPKl4UNsQe
         ZnAcLh0UMrDoZ6nefs3lh22hCiHuEDcVkTBtg9Z7LSzq0hJtQxJf1kJUt+sZC7dim0DE
         /3fjYMeHAA6aATukfY+1N2C9bE2x6h4heBqsGAn7eRGF1f1WEjl5jw4I9JHeels9goJ5
         HNZz7npbCGU8kWDQmGXw8HRcUGSb911nWmj9xph8seItfjh6sBTQMT/jOCnYwRvC/iAa
         8/aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eyGrzMCK6Mplay3IhmJwwACbyinlv3U2bvk6NfXFf58=;
        b=v8boslK0CNG5Og10zKdzc+8/rrmI/mjYvmYDDpA7qSeqgMRaIbjScs+Y64AqXeo0RS
         7JtBecs6fgIWSBX2tQov/p5aNNqCFzik0dPVlh3RUYUmI2nnZGLcMOw4X/LKZ9r2EnlJ
         MtbYKWKUvQaNgXDRqd+wp2zE9H69W/lRiX8eOCKT26PBh4Xfr3sEnwwgILL4+difZKfM
         p9avR4ulhpz3ni5gcjvE/7UtT23gTwFPZVBSaL9Guf7s0BvYyyuZEuJylsOB6YkYlBhe
         wOJWsIr1AMcDS1LtvXoZE0oFUtM0dFRV1CMimc0WaFc4321c+zfhNMKe+822YKJ98QiA
         XAQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ODPBRxfX;
       spf=pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ebiggers@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q12si8766pfu.4.2020.06.05.09.08.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jun 2020 09:08:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net [107.3.166.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7F43E206DB;
	Fri,  5 Jun 2020 16:08:31 +0000 (UTC)
Date: Fri, 5 Jun 2020 09:08:30 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Jaegeuk Kim <jaegeuk@kernel.org>, kernel test robot <lkp@intel.com>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org
Cc: linux-f2fs-devel@lists.sourceforge.net
Subject: Re: [f2fs-dev] [f2fs:dev-test 48/48] fs/f2fs/super.c:3303:12:
 warning: stack frame size of 2064 bytes in function 'f2fs_fill_super'
Message-ID: <20200605160830.GB1373@sol.localdomain>
References: <202006051725.63EW72i7%lkp@intel.com>
 <20200605145546.GA227721@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200605145546.GA227721@google.com>
X-Original-Sender: ebiggers@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ODPBRxfX;       spf=pass
 (google.com: domain of ebiggers@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=ebiggers@kernel.org;       dmarc=pass (p=NONE
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

On Fri, Jun 05, 2020 at 07:55:46AM -0700, Jaegeuk Kim wrote:
> Eric,
> 
> Could you PTAL?
> 
> On 06/05, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jaegeuk/f2fs.git dev-test
> > head:   adf3d3a53cf13d0998c699ba43d8582c875179e3
> > commit: adf3d3a53cf13d0998c699ba43d8582c875179e3 [48/48] f2fs: don't return vmalloc() memory from f2fs_kmalloc()
> > config: powerpc64-randconfig-r011-20200605 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ac47588bc4ff5927a01ed6fcd269ce86aba52a7c)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install powerpc64 cross compiling tool for clang build
> >         # apt-get install binutils-powerpc64-linux-gnu
> >         git checkout adf3d3a53cf13d0998c699ba43d8582c875179e3
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>

I don't know what's causing this.  It doesn't look at all related to my commit,
and I don't see what's using so much stack in f2fs_fill_super().

@kernel test robot: the directions given above don't actually work.
First I got an error due to powerpc64-linux-gnu-elfedit not existing.
So I had to build binutils for powerpc64 myself.

Then I still got an error:

	make: *** No rule to make target 'arch/powerpc64/Makefile'.  Stop.

- Eric

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200605160830.GB1373%40sol.localdomain.
