Return-Path: <clang-built-linux+bncBDC3JRMYUQLRBB4F5SBAMGQE2QTHGJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A56E347436
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 10:12:41 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id l2sf1178687pgi.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 02:12:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616577160; cv=pass;
        d=google.com; s=arc-20160816;
        b=S97r70rLLg8TnKZ0reeYJZWojXAlgnpd6YWzKcJK2DGcQ6+G7BrCj4fnbtIcq13Kr0
         qbCGRhL61SgwHfLBHJGnWgtjnLvO9pOAcaygDL/m9J3Kp34zte3L+VNVqU8xKALxqzVh
         xFLlb6VM/98+lCXBUZ9mqyw20CV4CEWo0ZlabnfCU1gchJEcRut1AqSF2HWDrKcBwXpg
         A1q+tcb17HrJF1wXjTHscZnN12XSUSJ8J17no4H6+bSNhRdzEnHMduD+OfOgofo4yl9b
         +by1dHy7yn9G9CTWLZud4sKzVblz7rnywChK6jVoeLJuHI5PDOPwxF31hiBwC0TOf5wa
         0lwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:reply-to:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=0jZxN2I+CByMOFya59y5l58KQDMy1P3XVGq4pt07J3M=;
        b=o7l1UOnSnyYIKS2EKIlwIfBlSbasrjLxnzKVN1lXZ7whktPK3rXTrhCnyVzw5RxUxr
         62C5F7mjcrkGYta/JAieeppQ6cvo6IO1sA3+2P8bSqlXUhM1PgYLrExggFkzypt8BcuU
         KsI6yOe4U51OI3B9bRii4QvzyjYS2ghHNS9+7QhBsHDmcvGgPj04BC9y3GnVHTcrOYWa
         DbDNvjZbmFNtB/tf4jM3IKjmxpnaF262cgQe61AjwCcjhVhGuXO4r5pubxOAClHPuENq
         zNnbWoSRYCWC9UN0UQu9Vvz9gWt2vlTkcH6OlvnPh47j9N4PvEP3tA7D+91x5cI+RRt4
         smmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of zhenyuw@linux.intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=zhenyuw@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jZxN2I+CByMOFya59y5l58KQDMy1P3XVGq4pt07J3M=;
        b=NVkQ6WeIoE0pqdc34D7SwLStnTb1xIqgJ6dQR+2nJXRg6evvPuzUbIWopH6l/IWooC
         6G3mXsVXj4H/WL9AUyziYkiNrTeVzKHrEF0GkQUcmQljISaxzBmnW9Ky+XofQzqv2q7+
         URHizH/xpoYFnCsUh9Mz+bypwnWe6eNNR8hjNyd6qXIPAwSzJiUdOg2CmvGX+1MijAYW
         Eet6aNAiB8PwcO7vzrBxpU8d4v96NYFqu8ouseARvqDcPlrMT6aMvZIxn4BPj0YLVWFK
         8wpZ9SzUQKvzpUCdaVz+8EckczZgv+BU2/TIe63nogZqah7x8GpZn/i9mKQOw2wVmCQt
         cGtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jZxN2I+CByMOFya59y5l58KQDMy1P3XVGq4pt07J3M=;
        b=i/dcXijaATNGMyCR5acZNNF0XfLueNDa/wHOmkOVbC8ts4PE+DSbytdlc+4SsAeVWI
         W21kv4ZXclmOdsgPoX6YnRvZzFK9CqStZnIC33qiE0HqXigbY/i9LaezdsUB/fxAgrzc
         5b6/oRtfJ5cRLqjX7p96pTyH5TEtBcmuDkyWJKtMVue5LOgmo9jZsIlcXIwbjj5VrZ78
         geteKIBnH11dgTmSQrjE0oVmAe1WqaeduKE5nLelhsxeIvT2VNMNJcatFMGrBvb22Z10
         YNpTTuc+A3jKpkygJ0qKQWhjQw5gEe1zWcyNgvB5Ib7554Os2X0FcAoUCRBSTy1GFm9S
         aduA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322bDVX2NQi3/crhyUIGr9dzoV2bgH38eK7tyKu6K8oCUtpS0T5
	Tm+ToN0jrwF/foSjRPKC/74=
X-Google-Smtp-Source: ABdhPJyXs1SNiLx3fMb/61hDFo7s0GL55gVDC0UGiBA9o8yFUT9e71QvMMPS6fKX5uauLA1gnXkXbg==
X-Received: by 2002:aa7:908c:0:b029:209:aacd:d8b with SMTP id i12-20020aa7908c0000b0290209aacd0d8bmr2119430pfa.74.1616577159758;
        Wed, 24 Mar 2021 02:12:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ef0b:: with SMTP id u11ls600195pgh.4.gmail; Wed, 24 Mar
 2021 02:12:39 -0700 (PDT)
X-Received: by 2002:a62:ea19:0:b029:1ee:5911:c516 with SMTP id t25-20020a62ea190000b02901ee5911c516mr2251509pfh.67.1616577159144;
        Wed, 24 Mar 2021 02:12:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616577159; cv=none;
        d=google.com; s=arc-20160816;
        b=M//IV0LmLwxlq2kMNwiS7C1ezwzF57LdMAB/QIkylske8i0C+g/WNc45VSbC+EnT1c
         OAaA58fpzY2uvL4ct+DCIj4bUuFVojahyxI7Z1IYauK4jrhzPV2EFLj0UNGSOFHJKq4/
         UtGl7Yvu9YAifFG/eudurVIGn6vaQjFhMziJzKU4edkAa9pKwrrGeyZ+X4hQi8rcCZSH
         hzCD3QimeRa+23BX1Oz9Zy7aQ8ZUCZjbfmy61sl1qmY5U/qRgJuRzYpo7ZshN5ve2Ezw
         rI+fwh8O8BKangbZWLzBTxsGI9IkAjieV37xfcHbjZtMS6jMNkhRN+PP89oZi7NvaRDJ
         3v/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:reply-to
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=k7lPfbESMlzU7ykovkMc0A85cHBScpNAaJiccVEzYyw=;
        b=mrHx9z/06QvOiqBq0sN4kY4sV4+XS71iNeQqwQZx1VUApR7+Iy9Cdk2DyDxC9fWHDr
         nUYbovfyo+ko8ajVbsQqrMdIO34kJ+XXqFDK4R57+AK8Wz/DdU1NcWY0jPnZyT3h8IPJ
         FN8ZJoOUjJtOKcb2HuOk1joVdlLVmMFZ6ytSaVCI7W6HrC/Kpzn+bnI4/4+HFbGXImgf
         00wQB/Wr22AziBjn7CAn0NW+6E2JEELSgC82/5r+oqkTk+V+nVc5gGvzrEw8gQPhvV21
         /H/iQDMqtTKCUdqgrec4vUScUIa0x09cRB6AtQ59Aq0asDl/tukRy458XS7tZsO9FI04
         6blA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of zhenyuw@linux.intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=zhenyuw@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id j6si56664pjg.0.2021.03.24.02.12.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Mar 2021 02:12:38 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of zhenyuw@linux.intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: TCkN1XPToKpr92P5y7vsqUliR61EonBFzfWiGo3sWzIURfFrU/6DfNQZ5lS/C1VqQnhG046Nlz
 rNIGShf903CQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="177781664"
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; 
   d="asc'?scan'208";a="177781664"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Mar 2021 02:12:36 -0700
IronPort-SDR: JI68o37wZp30j1WEqZ5abBaZgg2b6omnIJC8cWSp49NMdkogrKfwPw5xtV2tqhWSZgNcdzfK7j
 4/RWaXXR+Pyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,274,1610438400"; 
   d="asc'?scan'208";a="435915872"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
  by fmsmga004.fm.intel.com with ESMTP; 24 Mar 2021 02:12:33 -0700
Date: Wed, 24 Mar 2021 16:55:31 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Zhi Wang <zhi.a.wang@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	kernel test robot <lkp@intel.com>,
	Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: drivers/gpu/drm/i915/gvt/gtt.c:267:19: error: unused function
 'get_pt_type'
Message-ID: <20210324085531.GL1551@zhen-hp.sh.intel.com>
Reply-To: Zhenyu Wang <zhenyuw@linux.intel.com>
References: <202103201405.UV0ZEGEW-lkp@intel.com>
 <CAKwvOdnik8k7-xMmwtVbwtnispGt03C0acPAPWJRuo7t+VkftQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="svZFHVx8/dhPCe52"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnik8k7-xMmwtVbwtnispGt03C0acPAPWJRuo7t+VkftQ@mail.gmail.com>
X-Original-Sender: zhenyuw@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of zhenyuw@linux.intel.com
 designates 134.134.136.20 as permitted sender) smtp.mailfrom=zhenyuw@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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


--svZFHVx8/dhPCe52
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On 2021.03.23 15:15:29 -0700, Nick Desaulniers wrote:
> On Fri, Mar 19, 2021 at 11:45 PM kernel test robot <lkp@intel.com> wrote:
> >
> > Hi Nick,
> >
> > FYI, the error/warning still remains.
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   1c273e10bc0cc7efb933e0ca10e260cdfc9f0b8c
> > commit: 9f4069b055d1508c833115df7493b6e0001e5c9b drm/i915: re-disable -Wframe-address
> 
> This in unrelated to my change.
> 
> + Changbin, Zhenyu (authors of 3aff3512802) and Zhi (author of
> 054f4eba2a298) in case there's any interest in fixing this up.
> Otherwise I don't think these tiny helpful functions were meant to be
> used somewhere but are not, so there's not much value in cleaning them
> up.

I'll check that, should be some left over last big gtt code refactor.
Looks lkp guys don't apply -Wunused-function for gvt tree build test...

Thanks

> 
> > date:   11 months ago
> > config: x86_64-randconfig-a016-20210319 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project fcc1ce00931751ac02498986feb37744e9ace8de)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9f4069b055d1508c833115df7493b6e0001e5c9b
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout 9f4069b055d1508c833115df7493b6e0001e5c9b
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> drivers/gpu/drm/i915/gvt/gtt.c:267:19: error: unused function 'get_pt_type' [-Werror,-Wunused-function]
> >    static inline int get_pt_type(int type)
> >                      ^
> > >> drivers/gpu/drm/i915/gvt/gtt.c:590:20: error: unused function 'ppgtt_set_guest_root_entry' [-Werror,-Wunused-function]
> >    static inline void ppgtt_set_guest_root_entry(struct intel_vgpu_mm *mm,
> >                       ^
> >    2 errors generated.
> >
> >
> > vim +/get_pt_type +267 drivers/gpu/drm/i915/gvt/gtt.c
> >
> > 2707e44466881d6 Zhi Wang 2016-03-28  266
> > 054f4eba2a2985b Zhi Wang 2017-10-10 @267  static inline int get_pt_type(int type)
> > 054f4eba2a2985b Zhi Wang 2017-10-10  268  {
> > 054f4eba2a2985b Zhi Wang 2017-10-10  269        return gtt_type_table[type].pt_type;
> > 054f4eba2a2985b Zhi Wang 2017-10-10  270  }
> > 054f4eba2a2985b Zhi Wang 2017-10-10  271
> >
> > :::::: The code at line 267 was first introduced by commit
> > :::::: 054f4eba2a2985b1db43353b7b5ce90e96cf9bb9 drm/i915/gvt: Introduce page table type of current level in GTT type enumerations
> >
> > :::::: TO: Zhi Wang <zhi.a.wang@intel.com>
> > :::::: CC: Zhenyu Wang <zhenyuw@linux.intel.com>
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210324085531.GL1551%40zhen-hp.sh.intel.com.

--svZFHVx8/dhPCe52
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCYFr+fwAKCRCxBBozTXgY
J3vXAKCPtf8STYADjG72OUoqbgywKc4nQgCdGMLTzkgkitUp3sYK5gxWEXciceE=
=+Pjp
-----END PGP SIGNATURE-----

--svZFHVx8/dhPCe52--
