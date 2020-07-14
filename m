Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRBOVLW34AKGQEB7JTPCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 448D121EF30
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 13:23:39 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id l5sf3456076wml.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 04:23:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594725819; cv=pass;
        d=google.com; s=arc-20160816;
        b=OQvVnbzu4WCtfyxElYLUpoZnwR+Ru/KqqQSsKWuLfw2/vuftW/USOQdEpUd7lFQPBm
         1JLZdgATwgxRNBEjPUMq0CrRb60b+DU4erxEi5IwHXJPt2x3SzRqilvx7sW+Pstqcl3h
         zrIyYR6UZGLJ9QhOtn/vyuGILtxthn4S4TKRD9Z20veQsrNbhvXa6CloeC94N0SSrvdS
         fkgetTn6OBZ9wxNK4DPUHmIs146X0KuI1D3pl3tEuoTDsWE2c3le7+CM4OLhZbPvxwo6
         aKkErEpt3vJemvdowmSwQ3EYlf6k0RS2CPwh3GBEJsTIMZv+2QzUBzieS1ClSBY+fZSm
         F0tA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:to:from:date:sender:dkim-signature;
        bh=JO+x2r4ALPLs5pyK7XgAOTeuS6Xjt7L9du/A4yIWgDc=;
        b=m21TimhP1/hleievItNsaTQ3kn9TYmEGxRPgyInplV0F4ZUbVgUDy99JVJu4DHBsrC
         4ADpI7sNHHVoNLGaaQUoFUwiSic3IliGns68uxZxDqJbl6JyP228V/nsC3icR5riv8F1
         RhzRWO30edLU/MIVm3iOSEdmZ8xUr13Qtw/FoL1uhWOFl/FfqglY65RwygQzQaA4CUMA
         Sy8ygpBY4LL9swVDT7RmKCm7Y4R+G2zwdZ4Z7BAY8wmoDo8sPvECs/v0eC2ooFRACps3
         wbr+g7IRW1bynKGWdCmguUf6QF8YCoeyjFgB5jNzxkQxxszlyf9lQvwqkj3X/CfaPQDS
         4SPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JO+x2r4ALPLs5pyK7XgAOTeuS6Xjt7L9du/A4yIWgDc=;
        b=a1YfRDfKVdQPdr0ALHtsGvub8dotcjSkamsvFIHp5nC9q7F/3akdc55TgyxtlbcooC
         fH5GpaBBJwFdJYK6njiral9NXHG0ctqvqaoq94eSkJnSxuCQmYdFDTJiBwFAQCI1KP0Z
         T1HdysTmvMAqtzBhx9FLc3b237tKllUU9rzhdbJY3x7beEaRSAQg4Hg7RL9wU2uJ34Oe
         KftPZ2xW1a94SOMNCOljSy4D9dOgR7BCWzCjYZnbask8A7df3yoHNzkN1FrE/W6sCPgv
         2vnEudc/x6PkpxRixuBZHwueLb7isNk5myCJlcWrVtCvrt6zV7Hj37oxg5ydk2iUYEdZ
         +odQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id:reply-to
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JO+x2r4ALPLs5pyK7XgAOTeuS6Xjt7L9du/A4yIWgDc=;
        b=W/mshFcZJtkLefD3GEGPvcdOtiDnatR0+bMheKwkoLI0RcOXl/9tH+4MWnsnsvFFjB
         JB5LbQRcvnnnymfDKNPs+4fVcu49fjiOsyM/CazthffP1747sjy58niu1qQAtqlCj3W/
         PPm/rI3dTH2nDLz9tIlRvjvcUmjAQTFAUdibd9D4Jg6X29lECXfbYhK06TiH4ZKaSG3q
         riBhsdLpVFBXkOh93MQJkRqVtzVtX0NfVW7p9f2rN/SDQBrgyCubkmthMY9gBJm9cC1y
         IeSfYIg/PyO/nbyWXEBeuKej/oAHpiL2u8waxFd7RwzM8XGPWW2rDKKOlY9kzkw2qQ2q
         t7JA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530t647fD4tPaa65i8zDmvvleJMp54CORwFvXXjv164fxBfFGgky
	blwio2iPyVwsuSPgTVRwbk8=
X-Google-Smtp-Source: ABdhPJx7YYM1acKR/88UEK8z/ZxltC056IrgA81mpu0fYd5CkKYoyMLKSFOArQbgh3VYjQ10Rdf5qg==
X-Received: by 2002:a1c:bb43:: with SMTP id l64mr3940457wmf.151.1594725818946;
        Tue, 14 Jul 2020 04:23:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ca:: with SMTP id 68ls4262983wrc.2.gmail; Tue, 14 Jul
 2020 04:23:38 -0700 (PDT)
X-Received: by 2002:a5d:658a:: with SMTP id q10mr5050527wru.220.1594725818450;
        Tue, 14 Jul 2020 04:23:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594725818; cv=none;
        d=google.com; s=arc-20160816;
        b=Wfd2G6Ld/d15YJdEYvU4ij71a/VUE6lqVfljDQt63ORwxbxcmTkhmH7ZAPxbucv5i5
         0H4a8xahvfeYBJ/VlG4yuSwR2wLQ0ihib83VETTGNa/kciBtXIuIEb5rasvotE1eAxSp
         iHYePmXPZWvt+3EPW/L+cq1204ZVBvVXveXeF+O89vgvl6jFt3QFTh1XI6dGONeYSJoD
         iXL4no0oZxP1r8Xd9i8s1BScGB/fGe0NFZm2KjdNnvmwrDi8jnY8eP2DeVtb3iRZISaJ
         muNHGct73FneyA07zpA0qn02hPmUja3wNs9woWS/WH2yuzf9xG6K4JOclHcK0BMogZj+
         1kXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:to:from:date;
        bh=AIXXJKo5J/+2K/dQt6XkYUwnvVFekmLcxJ9NS+aFliw=;
        b=ag9529i2P8NeCDeHTq1kLWwjgZ27KLCmbsKB5zU/2iiCmmg/NV9lvhgmmIkoep6PHJ
         +s9ISEl6VAuZnR1T4PpaDc+1xibtQS1+cRMGO+wG0KwCnP7yRgKHKYUFzXhS6ZTcjg2F
         EzktHejrXQlEzZq8iv8zWoWi4K04JMsD4n+1zqgof0d2fCtmpGHsQNlExKRdP0L3U9r6
         C9hmVPfMAdmb6c9+jWVZp9L9j//6cLnxa7CBtuSnvKzUhhX0nS53yw2AuE4rq7X4h4Mv
         yz8EZGoXWzufj6BKWZFoUUT+CG42IRzkszqUqZS/6A9RRXdfJjH9Akg8i90vy2GSkIRz
         T54g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id l4si1046338wrw.2.2020.07.14.04.23.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 04:23:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id A590AAEFB;
	Tue, 14 Jul 2020 11:23:40 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id 42DDCDA790; Tue, 14 Jul 2020 13:23:16 +0200 (CEST)
Date: Tue, 14 Jul 2020 13:23:16 +0200
From: David Sterba <dsterba@suse.cz>
To: dsterba@suse.cz, kernel test robot <lkp@intel.com>,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-btrfs@vger.kernel.org
Subject: Re: [PATCH v2 4/4] btrfs: assert sizes of ioctl structures
Message-ID: <20200714112316.GO3703@twin.jikos.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, kernel test robot <lkp@intel.com>,
	Johannes Thumshirn <johannes.thumshirn@wdc.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-btrfs@vger.kernel.org
References: <20200713122901.1773-5-johannes.thumshirn@wdc.com>
 <202007140414.27egNqJz%lkp@intel.com>
 <20200714112053.GN3703@twin.jikos.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200714112053.GN3703@twin.jikos.cz>
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

On Tue, Jul 14, 2020 at 01:20:53PM +0200, David Sterba wrote:
> On Tue, Jul 14, 2020 at 05:01:21AM +0800, kernel test robot wrote:
> > Hi Johannes,
> > 
> > I love your patch! Yet something to improve:
> > 
> > [auto build test ERROR on v5.8-rc5]
> > [cannot apply to kdave/for-next btrfs/next next-20200713]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use  as documented in
> > https://git-scm.com/docs/git-format-patch]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Johannes-Thumshirn/Two-furhter-additions-for-fsinfo-ioctl/20200713-203321
> > base:    11ba468877bb23f28956a35e896356252d63c983
> > config: x86_64-randconfig-a016-20200713 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All error/warnings (new ones prefixed by >>):
> > 
> >    In file included from <built-in>:1:
> >    In file included from ./usr/include/linux/btrfs_tree.h:5:
> > >> ./usr/include/linux/btrfs.h:35:15: error: expected parameter declarator
> >    static_assert(sizeof(struct btrfs_ioctl_vol_args) == 4096);
> >                  ^
> 
> Does that mean that clang (11.0) does not support static_assert? We
> aren't doing anything special here, include only the standard kernel
> headers and use macros as intended.

Never mind, Johanness fixed it in v2, the macro is not defined for
non-kernel build.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714112316.GO3703%40twin.jikos.cz.
