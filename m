Return-Path: <clang-built-linux+bncBAABB7VG336AKGQE74AFNMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B9529A34B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 04:26:55 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id n3sf93420vkc.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 20:26:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603769214; cv=pass;
        d=google.com; s=arc-20160816;
        b=g3UuFWqTbtjK+Bk0U3OF0qJv3dA7fOyWX4KC7Fwwc/ODo1A6jY5f8IQOsaU/f8Xv7d
         qEexW77GPY8cwKOjf5IVTn9/ByvO5UvqVB6DwOQfWywQAgI0vmCLULW46HxpGOObihpi
         Ndc91znBqOanbfx8eCcZvEc9ba/jaQneonW6LkzUtOdqNzmISOsSd+L16jbgrit2y3/T
         PxXN2o8kgvZbm6p0K3swa/7VgWG9ioVjeB89v5aeHo+g2c3FXep4AwUafOMeZH97kZof
         d3VhLOjmy6elamCP2a7JVs/tZ+Lv4rzs6Hu7H+4BUPLuMIv8PREHhhjuIAGZ5bOWvXVS
         FPyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=HOb+li8m2/0BzsVPv2Cz3l2TQ27pwP9wj+lXqgeZg2c=;
        b=jIW6lwWTDCugAOhi9n5B5JomMj110WClqHYjDSKNDtl1DPpNMa0jBRA3fgTDpwsD7N
         zRxnfVtsmz50CGtc8BDmkJy7JFMCyozIgV5CRM399S52FNdBUnrEpMyLrt+6zZHZlaeI
         P/pfmmqaq3ymVk4TuNRcd2m5xy7gRhpTVvt3m4DQ9/WUUV/NKn+SlCcK3x6z92HOy3UT
         frqRa9Zq8WK/g12jB7z70UOGzrCk472RqZSY4mhb1NH7JzCsarBVGdzBZSNTdmi/GFNb
         d03ttdexMxE06OYQ2oP5uu74oB7gdR0sMYtYzNSUwz8AcQRGssGpYapOhnUx+Cnx1gIe
         2wbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mzOK29ul;
       spf=pass (google.com: domain of srs0=extf=ec=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=EXtf=EC=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HOb+li8m2/0BzsVPv2Cz3l2TQ27pwP9wj+lXqgeZg2c=;
        b=f3wpBMJkeq48tLA1ssU0iEEBrui+LmKiutbYlRv6ohWc1PNmqLIXWBeU7PPP2uBsVN
         IR6TxFtt9FzD+5dNdCqn/jabDMni//PkD4iUWY0UTkDUgjRgg5z6pVyb3UGuGHXW0DjT
         jMIiLiFZl4ExcTBGy96K5gWvs0k0dvTvFmAFmBMjLQnKru6EZLojVwgiul+OQDLt7HCz
         ATNKQQMzvAfIDht5dxBZiMkxDorKkj2VGn87L4e9ghhM9O6knjgeI7RZ3AL0Icc+qbrv
         BgTYuaY2DpsuXCgPmaQEUoLP+SEl2Hi8POuyRflaYUn7nNRaASPKCKOVsroyRchL7e2K
         LHUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HOb+li8m2/0BzsVPv2Cz3l2TQ27pwP9wj+lXqgeZg2c=;
        b=Rw7k5vpCShMyLrNbci12uto5WjSTrHhWK5ZwIA/8NdD7W1pI1uHPL3ApIk7T/MXejl
         7zfvdz/wBkaINeD7PDMDGms3szQXn7ZWOVR2MQYT7HnN1XtnnAoTYqeHVt7SCgP1QYgQ
         K1pb02K7P2VrGkKupvb/gj10s8sMKM0VPH6WFeCHA/t7wJJkCYzgJKJZm0zxubmKXmiV
         WTdzudl+O0h90rYhIMvD69O4GFk4N6ogDqCwDYJTH3bSUOkFkjlxH9GFh4GaQgUWT9Pi
         LmeCaW8oFDMZJVchqv/LOmV0PwMulxNwo79MZ6mWlMh7bYH2BCHWztH6n0uPd0FRGZK1
         fhJw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ArtzjSr/Old52ZzCZGjt5bpgs1Ua0YMNz5fCCc8uXEG+rLCTR
	2Bu/KDjz3WgqoV0xVMrfAUc=
X-Google-Smtp-Source: ABdhPJwRdhNJQp0KOgLf+VFX2I9L3t13Qhq2edouqbA8CiMs7YQ9xAD5lNxnbchxUSzcP7ulz3fVvg==
X-Received: by 2002:a67:fbd1:: with SMTP id o17mr128238vsr.4.1603769214621;
        Mon, 26 Oct 2020 20:26:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:449:: with SMTP id e9ls6948vsq.4.gmail; Mon, 26 Oct
 2020 20:26:50 -0700 (PDT)
X-Received: by 2002:a67:d00e:: with SMTP id r14mr113870vsi.56.1603769210797;
        Mon, 26 Oct 2020 20:26:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603769210; cv=none;
        d=google.com; s=arc-20160816;
        b=sZkJgS3xHQTGMOd1ZJJKWgtQib21pysyWXkZ9DnMZSNO4qZ+qU1ALGDBlelQE57eAD
         H55uAzQKqoU5sgjfV2OXWpHdl/iuAEBI601GuSbGr2iP6LfDTWaGZ3ZJ4Ymo+dwB1+P/
         pe9Qr8ZIys3k0Hu0A8sofWV7ZWSgmVGulncIGc9/aJb+zO020lqwimBuEEJkfHPxOew/
         hQ88Jp+9Q+Zz8aWlnk3muUjsXcys4dKMVknIXnxDn9lX6/sQ3++r3yU9pBGvUhH7ZL49
         NBPAqPq5axhCZec5gAhOeV9tlMM+aVP7OTRyS7nrG9HTYYQe0vEHGcM9ak4PkwGDs1f/
         spGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=94UOWa4sjviRDhRz81yqj2MRGbfVfHNuSPWUEep/XTQ=;
        b=cbHDmNBXdXB9GCL8/3aWgc2l3SfHeCnwsZ0TINgrtB7CujeDwJVIyDrzr+AqWugbta
         Gq3XfNpfdOKdVittBiXZ7+G9NgjImt9b6QIKrOH++ghmE1Jfz/UThsCO0lJGOBVyepry
         qGgY0ofH1D0+FD1Ef80aQAkRLfR3V6S3R+LYm6ZX8hrJ51X1MfVg6TQK7NndicGEQmsZ
         wlD4MierOgB41nJr0xwADmfSJ3QfCRHwlLL1/S2hR8Abz8ksfv8NVae/+uSiOuOzD4ii
         GctomzfxqoI/jQmsfn9xTKIvSuHkXrKeSZkgVwUHaQj2+GegYw5AWXhdaHx1zYup+EwQ
         6Jzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mzOK29ul;
       spf=pass (google.com: domain of srs0=extf=ec=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=EXtf=EC=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w123si4338vke.3.2020.10.26.20.26.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 20:26:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=extf=ec=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-104-11.bvtn.or.frontiernet.net [50.39.104.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 941D72075B;
	Tue, 27 Oct 2020 03:26:49 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 46C4C35226C8; Mon, 26 Oct 2020 20:26:49 -0700 (PDT)
Date: Mon, 26 Oct 2020 20:26:49 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
Subject: Re: [rcu:rcu/test 76/76] drivers/dax/super.c:21:1: error: use of
 undeclared identifier '___srcu_struct_ptrs'
Message-ID: <20201027032649.GW3249@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <202010270828.0bL3aIGL-lkp@intel.com>
 <20201027015334.GA842991@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201027015334.GA842991@ubuntu-m3-large-x86>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mzOK29ul;       spf=pass
 (google.com: domain of srs0=extf=ec=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=EXtf=EC=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Oct 26, 2020 at 06:53:34PM -0700, Nathan Chancellor wrote:
> Hi Paul,
> 
> On Tue, Oct 27, 2020 at 08:50:52AM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git rcu/test
> > head:   784a6343c3660446ae62db13628b20e9f876100f
> > commit: 784a6343c3660446ae62db13628b20e9f876100f [76/76] Merge commit '3650b22' into rcu/test
> > config: arm-randconfig-r026-20201026 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project f2c25c70791de95d2466e09b5b58fc37f6ccd7a4)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm cross compiling tool for clang build
> >         # apt-get install binutils-arm-linux-gnueabi
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git/commit/?id=784a6343c3660446ae62db13628b20e9f876100f
> >         git remote add rcu https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git
> >         git fetch --no-tags rcu rcu/test
> >         git checkout 784a6343c3660446ae62db13628b20e9f876100f
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> > 
> > >> drivers/dax/super.c:21:1: error: use of undeclared identifier '___srcu_struct_ptrs'
> >    DEFINE_STATIC_SRCU(dax_srcu);
> >    ^
> >    include/linux/srcutree.h:135:34: note: expanded from macro 'DEFINE_STATIC_SRCU'
> >    #define DEFINE_STATIC_SRCU(name)        __DEFINE_SRCU(name, static)
> >                                            ^
> >    include/linux/srcutree.h:127:13: note: expanded from macro '__DEFINE_SRCU'
> >                    __section(___srcu_struct_ptrs) = &name
> >                              ^
> >    drivers/dax/super.c:70:6: warning: no previous prototype for function '__generic_fsdax_supported' [-Wmissing-prototypes]
> >    bool __generic_fsdax_supported(struct dax_device *dax_dev,
> >         ^
> >    drivers/dax/super.c:70:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> >    bool __generic_fsdax_supported(struct dax_device *dax_dev,
> >    ^
> >    static 
> >    drivers/dax/super.c:168:6: warning: no previous prototype for function '__bdev_dax_supported' [-Wmissing-prototypes]
> >    bool __bdev_dax_supported(struct block_device *bdev, int blocksize)
> >         ^
> >    drivers/dax/super.c:168:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> >    bool __bdev_dax_supported(struct block_device *bdev, int blocksize)
> >    ^
> >    static 
> >    drivers/dax/super.c:452:6: warning: no previous prototype for function 'run_dax' [-Wmissing-prototypes]
> >    void run_dax(struct dax_device *dax_dev)
> >         ^
> >    drivers/dax/super.c:452:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> >    void run_dax(struct dax_device *dax_dev)
> >    ^
> >    static 
> >    3 warnings and 1 error generated.
> 
> Please drop commit c1370c128cf4 ("srcu: Avoid escaped section names"),
> it has been fixed in a different way as of v5.10-rc1, in
> commit 33def8498fdd ("treewide: Convert macro and uses of __section(foo)
> to __section("foo")").

Thank you, and will do!

							Thanx, Paul

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027032649.GW3249%40paulmck-ThinkPad-P72.
