Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBLFKW34AKGQEWN4JCLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 302F821EF13
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:21:17 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id cn4sf23928447edb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 04:21:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594725677; cv=pass;
        d=google.com; s=arc-20160816;
        b=BEmJ8VcPNeZuLqdU4L7mrSqZfKr1z+yd3xlpwiLffvk+3WWNEyUt0CkFUAwZpF3znn
         wCgAQaiqQORwvHtKgobENRbqL34JDj8cO6TGk/GEB1/+ti5qnjGizyBlwei4MRjJjeNB
         scl2CK4pr8WZ7jF3xEWJVjwWPofcVBnzQxlZNPkm/INUZFjFSR43eOqqXlFUUOIQb3OH
         mIpuTC4gGLUFjn+W9RYPUlezCP2wHsfXWZGx8mcM0EttbZFtLG4TSNTdVc/CvtKEohqy
         1c2olqj5mFgfK6SEDAip6TmsJRS9iMfDXz9Bcgx7Ccweg1spxfapbiI7Ru9mKoeo04I0
         tt9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=MWNqeSZnqoWKRmOIMclm9IQSiXxULttbcm6D2r5USsI=;
        b=JKBCbUNPA716djpGz044Mgq4o9XrZQS452rQsHs987s8MRjDdEpiPcqO7XQN1m/RXc
         Ut13shMN2dhXZ8EdA5pyKt2HAWmMyRwieQpAlsA+SFJldnGNcc096HjZTJrBdWkb3p4n
         Of+EBZY4CIJubbAFidlUaV3ZFy8o9tO2UGdMfacq0kjJJzPsFtHA4dLQqkfRlERfMdcT
         Nfmg96dApD2zzh8nup+/D9uILRhKisBaIMmVNbvIKMEPO8IHgUb3BlxbjSTXSLRGAW7H
         rYpcADjiQIPQdENppJvmUyS7LS6/SJAXmXnX+8t8FT5pYetzCpiJBH5hzH//dAiJYpy3
         +P/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MWNqeSZnqoWKRmOIMclm9IQSiXxULttbcm6D2r5USsI=;
        b=SKwOVCI36+tKAGtvfF/RbnkT+O1aDL1qDh2WStU6nKPOQn2b0ixX+pCj80wpW+CNdd
         G6nlKJEDkZX6IdgmFfegnrDLTIhvIrMQq7bPoHtqMchBaLK9vFPOhruVXxTYz63eppE0
         bTFeJ7w9+2LojgqjTJQsOpxuySdWaix2c6//dJFXh4HfDsQFxqaV0MDLLcKTJlR/LXvz
         vpcEAKxgUNAKQ9lbK6eSBUXi7l+yTheQhzjTwNrBolAPjEJ0u+TE6bedQx0QLIHwKE+Q
         5YpP37d416B9RidYpqcP2qmPDnmjgC0KJ37iWH4HrFgEPYyHKq+2MMtfbRfXo0AnSmXc
         intw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MWNqeSZnqoWKRmOIMclm9IQSiXxULttbcm6D2r5USsI=;
        b=erBHyg6l0vEwOxOHERM72PTqUpe0ML9doVQOGodjFroX8umzhNXI9JDPa3Volad8Nv
         8HcfUS++KzrxlrmhnBhaheSCHovREB5sHLee0xGIZPOKaD3d5KrerUr40DxAvAzBlFZU
         eim8EzEweO2CTu6cViagEZ2Twvtg60xUpTLH2QLv1Vmns/auyGB+xtku6er7m+UtlfPl
         oX/orhcqkypFAMlEF3LsxZwy0VTKtHMozNc8j9EF5tFGhGYQlxuU5ncKfCrB9mVjpupr
         iAH6JUDreoc3X91raxwuF+aih8NFui+Xs2RW/Qlmd9OjlnPie4PmjkN+mMr4A0+BMdNc
         2dxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326K25KWs/vgAi0LlpaqV2BiiOYLBGJ+e0Y8isjT/nW0rt14lfg
	ne/zQ/BFkYnf9Um7YgdpvEE=
X-Google-Smtp-Source: ABdhPJy09FRURhhxxDlUSUSWrUuTSx/kaVLDz+mbJ2SB/tGRzbT/Yue0OZ4R34wVx/2WuFbmW/5vag==
X-Received: by 2002:a17:906:c452:: with SMTP id ck18mr4180856ejb.415.1594725676874;
        Tue, 14 Jul 2020 04:21:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:db04:: with SMTP id t4ls2351609eds.3.gmail; Tue, 14 Jul
 2020 04:21:16 -0700 (PDT)
X-Received: by 2002:aa7:d04a:: with SMTP id n10mr4114386edo.132.1594725676317;
        Tue, 14 Jul 2020 04:21:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594725676; cv=none;
        d=google.com; s=arc-20160816;
        b=Zh5Cd4OC8+18GZZ3PH+WEvuoI/QaPlngcAVH8rl0EhHB4XXrNWtR32bIbSoZnwiF0K
         O1bFYcbLSNN8FMxrsYU2zcJedTth+xqMkagnclXCjG/BoK3ryXRiYFY/Ban/ztPnMoga
         SbH3FdvX46pZaLPLiIZihene/I0XOyIcgs1iPWetyCDoPK5sTzoWvuUd198jW2F0UrVd
         IHWJNuQVtu79o5Zjg4gX1CEv6VicTbjiV/YYzSCyz9uqFLhYPuhXvbMfXIF0XrTP4NBE
         OsgHdg6ZetW/1uBGarwWx1YzTYQlTXjOfvE/iCWVXd4+g5j5sUlx+xG4NygDrSmmP0Zt
         TS2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date;
        bh=9vAdfWT7n1BszAy8UhKvBw5T6oLno5ni+l1TY81j6+k=;
        b=A6sIl88GVWVkoGcBdqZstEpiRa7VtXQtWZ1uQXZmzs9W7m2QMizNnLO0oN6ks8bG5A
         e3LwyLcggpQAg7inP5+qbm4xQWam/kMlYBHOaT7KGLAnhlqS0S5UGBl7AT8QMccQzQpn
         WEm62OQRJ1lkoPczJzryN8bk2V7HAq4sPpynEnsaifQhB1aowgkbJ0ptb+2K9I4OlJME
         DVlrgE4lFvApbxYehHb675nFuMnMokY1UEMacSS9KzcEyFoBAyzWH+VF1s6hS0L0uGTS
         BS4CysGrkNx/+JMXyyLkEyFyGAK5YmiqiYSgQ+IEgB6PScRxgMC1rczYfMwiUPfXDLMO
         dSyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id p61si404025edd.0.2020.07.14.04.21.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 04:21:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 57E3DB001;
	Tue, 14 Jul 2020 11:21:18 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id 9AE98DA790; Tue, 14 Jul 2020 13:20:53 +0200 (CEST)
Date: Tue, 14 Jul 2020 13:20:53 +0200
From: David Sterba <dsterba@suse.cz>
To: kernel test robot <lkp@intel.com>
Cc: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
	David Sterba <dsterba@suse.cz>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-btrfs@vger.kernel.org
Subject: Re: [PATCH v2 4/4] btrfs: assert sizes of ioctl structures
Message-ID: <20200714112053.GN3703@twin.jikos.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, kernel test robot <lkp@intel.com>,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-btrfs@vger.kernel.org
References: <20200713122901.1773-5-johannes.thumshirn@wdc.com>
 <202007140414.27egNqJz%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202007140414.27egNqJz%lkp@intel.com>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=dsterba@suse.cz
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

On Tue, Jul 14, 2020 at 05:01:21AM +0800, kernel test robot wrote:
> Hi Johannes,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on v5.8-rc5]
> [cannot apply to kdave/for-next btrfs/next next-20200713]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Johannes-Thumshirn/Two-furhter-additions-for-fsinfo-ioctl/20200713-203321
> base:    11ba468877bb23f28956a35e896356252d63c983
> config: x86_64-randconfig-a016-20200713 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All error/warnings (new ones prefixed by >>):
> 
>    In file included from <built-in>:1:
>    In file included from ./usr/include/linux/btrfs_tree.h:5:
> >> ./usr/include/linux/btrfs.h:35:15: error: expected parameter declarator
>    static_assert(sizeof(struct btrfs_ioctl_vol_args) == 4096);
>                  ^

Does that mean that clang (11.0) does not support static_assert? We
aren't doing anything special here, include only the standard kernel
headers and use macros as intended.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714112053.GN3703%40twin.jikos.cz.
