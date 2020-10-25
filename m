Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBTPU2P6AKGQEZMZ45EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BF726297FFF
	for <lists+clang-built-linux@lfdr.de>; Sun, 25 Oct 2020 05:08:46 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id n13sf7271854ybk.9
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Oct 2020 21:08:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603598925; cv=pass;
        d=google.com; s=arc-20160816;
        b=wsYqdP8y6sZE9XEJHHo7PrjfZdi/ZDDX+coUXEOWtVJM0Q0aQlXSlAY89hN1Em8iN4
         Oj48jNO0y4mDP5gmoYmhFYTf6kDJ3o3/89u+wW7761aa4E4BxzwfoovrJfv/dVslAgJ0
         hmcr1ZIadO5rHzKRyKdlVMOSeXDRHJ/LeAXD8geVIw8hC2fsSO6V4U32++fBBTW2A3VP
         u5r7LkoOlAJ3o5kDLhMmJ5QTl1JTMbl8THVZGYPprAmrtYk1gzM4+FFi03TG1w5YGria
         /l85Yf5Qzz/fCruwW79aFZ4mLrAfLEBaYwmpUWDpzXxKfM/wIkWnZXkd8iIBjHgYV54h
         53Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-version
         :dlp-reaction:dlp-product:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=GNtSdwnLT6P2Jisvf6P+yLf+Apc2KjWXphT8BJujMzw=;
        b=uKxI0WHnWSBIY1+q6GGEYfsb1A9TQ5+NUDRVca8xDO/gsVeQkXA/HQdZrq4C2otD8f
         VOEs7+pB7sKCLiZgWGsGfeCq/KmpMScy6CCgmFmjrtcfjLleMY3cip1SgN1J3RlGsZsF
         kQE+ejrvasbSV4+by8zN6eWHKakpjn+3IsCXw6MYSGrvvYLi6qhAz0rYnitzStZjrCUB
         /c+nsoQDZDyzon9X+8ta8G093anZUxLyvrR4gTbC4i2/lg/cT4m3lgPe57D73koVxqTD
         x1VrAf0SbmC1zmr1nE94QngdW/trrevgYqexXT9hE8/+Wyjf//G8rJ9/z+NA6rwPdk0r
         WylA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-product:dlp-reaction:dlp-version:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GNtSdwnLT6P2Jisvf6P+yLf+Apc2KjWXphT8BJujMzw=;
        b=goUsTxsECTKuhTPrZHULH2bI2ligwU8DZ2HcnfEZZOqAqC4KNb7rtALiJii/vjh27f
         jJHXewhyDf00nig1ggZy35e/jYrQ1h9fYP6bF/iEFYX8raAcxmszQYwZ79KA+lzhH1xH
         pPCa/8uRSqesj2vJvwFt4pEcul3roYKUfDtAlnlDORxc6xJjxGv0NXIzPWM0NitJCBsJ
         xNxEL3XhKPc0ea3NzgKzvBhV8TQTLRMHKUg/IXTzdR0TkWwk/LE84THp1bOoHl/7ZXou
         LPQoJYdSlqV7x4LwpownDC1mWr0VzDQXCEvjmOC9SM3X+8F6TdRclXeV2aOQFH5/kofH
         /TjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:from:to:cc
         :subject:thread-topic:thread-index:date:message-id:references
         :in-reply-to:accept-language:content-language:dlp-product
         :dlp-reaction:dlp-version:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GNtSdwnLT6P2Jisvf6P+yLf+Apc2KjWXphT8BJujMzw=;
        b=F/HBlyJO+VLpR1lLKz3NODi0E6SHZiA3aJoEkfIhgjPkmztPK8NEgFaOJpRIlS9rSt
         4hp0c/Tal2ZyLYkrQ1hQIv43Y8UWliuu2BF8CkQ5TiQZbMznnIgPP0jtpakDYNfZT4Dy
         33VQ7gefBZkn4lKlaKn5j1uX9cIptNSG/t1j4tQpH/M4pXBmeaaTcPpPnX3q6AhTLhsx
         xxkQIzw4XhHKzbRESIE87Rq0yRkyZPFHTfWx37mW8sqG30gcY+GgFn/Go17ol80YK4qC
         P+SOBE2x6srIcUiTCUpdBtWRc5ZgJAw684LEYJ8PfVVhQuSh1sdH5SOq1QryB5eTl58u
         QdUw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339rb8KycblT2+ap9fNqyJlT/vNwhzQ1TIGudmsu/NZiMeSPFUO
	XVGOQ8DTmNNqqgS7egaYEKY=
X-Google-Smtp-Source: ABdhPJyR0Ql48p/AiRKilS7XM1H0B7TUpK3Id0Gyz24Wu7NwkOTpqMZIncZdAxTbijOhpPXNAVPbrg==
X-Received: by 2002:a25:1c1:: with SMTP id 184mr14789596ybb.243.1603598925487;
        Sat, 24 Oct 2020 21:08:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e64d:: with SMTP id d74ls2224435ybh.5.gmail; Sat, 24 Oct
 2020 21:08:44 -0700 (PDT)
X-Received: by 2002:a25:f817:: with SMTP id u23mr14752600ybd.466.1603598924833;
        Sat, 24 Oct 2020 21:08:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603598924; cv=none;
        d=google.com; s=arc-20160816;
        b=jk1FL4McLcGft6BhrTPx3DLmC+33/QzQaTOZK1BRoky/wRiOdheHNl6wzB6+y/lB42
         mSXq5hxIHfDq2Yil2T6DEhYxjrN/ryhEaHj+c3sbGpqgHutzYbopfA7J4eiscMfuE44l
         GrIFmzoA6Gx+Pek+HIGCP0tzkaXVpizlil4kSyq/1RxyI0CzavXklFsoWBaSJu8Ds7/Z
         b8jG0IxO/Oyqn2jG7qVDc2FiadaViZqSrAXPxcCEn/gmO31w1dOu7h1xABjv+zljIEfj
         WEq4xQDTjcp9giLJUSXlJ0dUulAZZCCeAEtEh+tFOq4/Okzm7DsuiFrXnPTjnwHTCxBn
         hEBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-version:dlp-reaction
         :dlp-product:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :ironport-sdr:ironport-sdr;
        bh=SoQ/2JddjntW2+M5AwUrpshBo4kRDKvGCUW8CDzkHwk=;
        b=Bv/Zz8PCfHVXnH/W9IWJJnPrfaRMMkqxxQSwJHw21QVO5rqUqXlzMPmZpYD2LtfHYl
         K1p+chIH4rYvcrsf7uq3Vm3fBLJxwTzCl3HQSVAsZltAHLW0IJaR+Xy0qM2EDnFXOleq
         71/i21FSEF77Kyvchale0trVdGBQpI0Y3jjAvz6FneGW7FeehOwAgoJzcMXZqUPN8eIK
         1RzZZ3CoypDrMXmHI5H4+LfcwB0acQ7vsnBOrwjzd/DsJW9IPXp+F0RIRtBKcNGv3h3c
         YLO8k71EACKs3KQv8hDpFlJx9tbb3241dxQdjtxF+u+Lf923xApvBkC+OKqgGGMaTKmR
         beQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id i188si314418yba.4.2020.10.24.21.08.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Oct 2020 21:08:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: MiXVSfoVnmja5UQ/8bjo/bOmIsiKuLryIAGZXNIwBdsfEzkI7nvg7FgrK7wMuuqE+wqLjaO1MB
 3MyPEZlVXimQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9784"; a="232003381"
X-IronPort-AV: E=Sophos;i="5.77,414,1596524400"; 
   d="scan'208";a="232003381"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Oct 2020 21:08:43 -0700
IronPort-SDR: ZuQoSgR822jzHGCUMminwJiIvuR44XYpFZHfXjrQpJksLnnELuhJbP7JnHRjwh8Ly0Tbrw0/Rt
 hGTtdrwd8Qgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,414,1596524400"; 
   d="scan'208";a="534923334"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by orsmga005.jf.intel.com with ESMTP; 24 Oct 2020 21:08:43 -0700
Received: from shsmsx604.ccr.corp.intel.com (10.109.6.214) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 24 Oct 2020 21:08:41 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.109.6.141) by
 SHSMSX604.ccr.corp.intel.com (10.109.6.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 25 Oct 2020 12:08:40 +0800
Received: from shsmsx601.ccr.corp.intel.com ([10.109.6.141]) by
 SHSMSX601.ccr.corp.intel.com ([10.109.6.141]) with mapi id 15.01.1713.004;
 Sun, 25 Oct 2020 12:08:40 +0800
From: "Li, Philip" <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Kees Cook
	<keescook@chromium.org>
CC: David Howells <dhowells@redhat.com>, "kbuild-all@lists.01.org"
	<kbuild-all@lists.01.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
	lkp <lkp@intel.com>
Subject: RE: [kbuild-all] Re: ld.lld: warning:
 fs/built-in.a(afs/cell.o):(.data..L__unnamed_8) is being placed in
 '.data..L__unnamed_8'
Thread-Topic: [kbuild-all] Re: ld.lld: warning:
 fs/built-in.a(afs/cell.o):(.data..L__unnamed_8) is being placed in
 '.data..L__unnamed_8'
Thread-Index: AQHWqWsXOrYT0EDtBkKEo+E7LFIMX6mntbnQ
Date: Sun, 25 Oct 2020 04:08:40 +0000
Message-ID: <ce6e42caf2fb44f4ba082e1302da819b@intel.com>
References: <202010240159.IPld6mlB-lkp@intel.com>
 <CAKwvOdkhcrifOeHY9VjpHbmHjRazxajoj7nV1QrRKx6kQdF15w@mail.gmail.com>
In-Reply-To: <CAKwvOdkhcrifOeHY9VjpHbmHjRazxajoj7nV1QrRKx6kQdF15w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.239.127.36]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.100 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

> Subject: [kbuild-all] Re: ld.lld: warning: fs/built-
> in.a(afs/cell.o):(.data..L__unnamed_8) is being placed in
> '.data..L__unnamed_8'
> 
> https://github.com/ClangBuiltLinux/linux/issues/1185
sorry for false positive, we will ignore all lld warning related to "being placed in", the initial
ignore of similar warning is kind too specific for known issue.

Thanks

> 
> On Fri, Oct 23, 2020 at 10:24 AM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> master
> > head:   f9893351acaecf0a414baf9942b48d5bb5c688c6
> > commit: 88c853c3f5c0a07c5db61b494ee25152535cfeee afs: Fix cell refcounting
> by splitting the usage counter
> > date:   7 days ago
> > config: powerpc64-randconfig-r004-20201022 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> ee6abef5323d59b983129bf3514ef6775d1d6cd5)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-
> tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install powerpc64 cross compiling tool for clang build
> >         # apt-get install binutils-powerpc64-linux-gnu
> >         #
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?i
> d=88c853c3f5c0a07c5db61b494ee25152535cfeee
> >         git remote add linus
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout 88c853c3f5c0a07c5db61b494ee25152535cfeee
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> ARCH=powerpc64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_20) is
> being placed in '.data..L__unnamed_20'
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_21) is
> being placed in '.data..L__unnamed_21'
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_23) is
> being placed in '.data..L__unnamed_23'
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_22) is
> being placed in '.data..L__unnamed_22'
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_26) is
> being placed in '.data..L__unnamed_26'
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_25) is
> being placed in '.data..L__unnamed_25'
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_24) is
> being placed in '.data..L__unnamed_24'
> >    ld.lld: warning: fs/built-in.a(ubifs/journal.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/dir.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/dir.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_8) is
> being placed in '.data..L__unnamed_8'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_9) is
> being placed in '.data..L__unnamed_9'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_10) is
> being placed in '.data..L__unnamed_10'
> >    ld.lld: warning: fs/built-in.a(ubifs/master.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/master.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/scan.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/scan.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/replay.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(ubifs/tnc_commit.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/tnc_commit.o):(.data..L__unnamed_2)
> is being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/tnc_commit.o):(.data..L__unnamed_3)
> is being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_13) is
> being placed in '.data..L__unnamed_13'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_14) is
> being placed in '.data..L__unnamed_14'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_15) is
> being placed in '.data..L__unnamed_15'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_16) is
> being placed in '.data..L__unnamed_16'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_17) is
> being placed in '.data..L__unnamed_17'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_18) is
> being placed in '.data..L__unnamed_18'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_8) is
> being placed in '.data..L__unnamed_8'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_9) is
> being placed in '.data..L__unnamed_9'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_10) is
> being placed in '.data..L__unnamed_10'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_11) is
> being placed in '.data..L__unnamed_11'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_12) is
> being placed in '.data..L__unnamed_12'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_19) is
> being placed in '.data..L__unnamed_19'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_2)
> is being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_3)
> is being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_4)
> is being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_5)
> is being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_6)
> is being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(ubifs/debug.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/debug.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(fuse/dev.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(fuse/dev.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(fuse/dir.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_8) is
> being placed in '.data..L__unnamed_8'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_11) is
> being placed in '.data..L__unnamed_11'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_9) is
> being placed in '.data..L__unnamed_9'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_10) is
> being placed in '.data..L__unnamed_10'
> >    ld.lld: warning: fs/built-in.a(fuse/inode.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(fuse/readdir.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(fuse/readdir.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(fuse/virtio_fs.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(fuse/virtio_fs.o):(.data..L__unnamed_2)
> is being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(orangefs/inode.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(orangefs/devorangefs-
> req.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(orangefs/devorangefs-
> req.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(orangefs/orangefs-
> bufmap.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(orangefs/orangefs-
> bufmap.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(9p/vfs_super.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(9p/vfs_file.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/addr_list.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/callback.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> > >> ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_8) is
> being placed in '.data..L__unnamed_8'
> >    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/cmservice.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_8) is
> being placed in '.data..L__unnamed_8'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_10) is
> being placed in '.data..L__unnamed_10'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_9) is
> being placed in '.data..L__unnamed_9'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_11) is
> being placed in '.data..L__unnamed_11'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_12) is
> being placed in '.data..L__unnamed_12'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_13) is
> being placed in '.data..L__unnamed_13'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_14) is
> being placed in '.data..L__unnamed_14'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_15) is
> being placed in '.data..L__unnamed_15'
> >    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/dynroot.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/file.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/file.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/fs_operation.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/misc.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/mntpt.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_13) is
> being placed in '.data..L__unnamed_13'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_14) is
> being placed in '.data..L__unnamed_14'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_8) is
> being placed in '.data..L__unnamed_8'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_10) is
> being placed in '.data..L__unnamed_10'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_11) is
> being placed in '.data..L__unnamed_11'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_9) is
> being placed in '.data..L__unnamed_9'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_15) is
> being placed in '.data..L__unnamed_15'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_21) is
> being placed in '.data..L__unnamed_21'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_12) is
> being placed in '.data..L__unnamed_12'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_18) is
> being placed in '.data..L__unnamed_18'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_19) is
> being placed in '.data..L__unnamed_19'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_17) is
> being placed in '.data..L__unnamed_17'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_16) is
> being placed in '.data..L__unnamed_16'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_20) is
> being placed in '.data..L__unnamed_20'
> >    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_13) is
> being placed in '.data..L__unnamed_13'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_14) is
> being placed in '.data..L__unnamed_14'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_8) is
> being placed in '.data..L__unnamed_8'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_9) is
> being placed in '.data..L__unnamed_9'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_10) is
> being placed in '.data..L__unnamed_10'
> > --
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_20) is
> being placed in '.data..L__unnamed_20'
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_21) is
> being placed in '.data..L__unnamed_21'
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_23) is
> being placed in '.data..L__unnamed_23'
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_22) is
> being placed in '.data..L__unnamed_22'
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_26) is
> being placed in '.data..L__unnamed_26'
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_25) is
> being placed in '.data..L__unnamed_25'
> >    ld.lld: warning: fs/built-in.a(jffs2/wbuf.o):(.data..L__unnamed_24) is
> being placed in '.data..L__unnamed_24'
> >    ld.lld: warning: fs/built-in.a(ubifs/journal.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/dir.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/dir.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/super.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/sb.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_8) is
> being placed in '.data..L__unnamed_8'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_9) is
> being placed in '.data..L__unnamed_9'
> >    ld.lld: warning: fs/built-in.a(ubifs/io.o):(.data..L__unnamed_10) is
> being placed in '.data..L__unnamed_10'
> >    ld.lld: warning: fs/built-in.a(ubifs/master.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/master.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/scan.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/scan.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/replay.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/budget.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(ubifs/tnc_commit.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/tnc_commit.o):(.data..L__unnamed_2)
> is being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/tnc_commit.o):(.data..L__unnamed_3)
> is being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_13) is
> being placed in '.data..L__unnamed_13'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_14) is
> being placed in '.data..L__unnamed_14'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_15) is
> being placed in '.data..L__unnamed_15'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_16) is
> being placed in '.data..L__unnamed_16'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_17) is
> being placed in '.data..L__unnamed_17'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_18) is
> being placed in '.data..L__unnamed_18'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_8) is
> being placed in '.data..L__unnamed_8'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_9) is
> being placed in '.data..L__unnamed_9'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_10) is
> being placed in '.data..L__unnamed_10'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_11) is
> being placed in '.data..L__unnamed_11'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_12) is
> being placed in '.data..L__unnamed_12'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt.o):(.data..L__unnamed_19) is
> being placed in '.data..L__unnamed_19'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_2)
> is being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_3)
> is being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_4)
> is being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_5)
> is being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(ubifs/lpt_commit.o):(.data..L__unnamed_6)
> is being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(ubifs/debug.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(ubifs/debug.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(fuse/dev.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(fuse/dev.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(fuse/dir.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_8) is
> being placed in '.data..L__unnamed_8'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_11) is
> being placed in '.data..L__unnamed_11'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_9) is
> being placed in '.data..L__unnamed_9'
> >    ld.lld: warning: fs/built-in.a(fuse/file.o):(.data..L__unnamed_10) is
> being placed in '.data..L__unnamed_10'
> >    ld.lld: warning: fs/built-in.a(fuse/inode.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(fuse/readdir.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(fuse/readdir.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(fuse/virtio_fs.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(fuse/virtio_fs.o):(.data..L__unnamed_2)
> is being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(orangefs/inode.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(orangefs/devorangefs-
> req.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(orangefs/devorangefs-
> req.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(orangefs/orangefs-
> bufmap.o):(.data..L__unnamed_1) is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(orangefs/orangefs-
> bufmap.o):(.data..L__unnamed_2) is being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(9p/vfs_super.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(9p/vfs_file.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/addr_list.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/callback.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> > >> ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_8) is
> being placed in '.data..L__unnamed_8'
> >    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/cell.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/cmservice.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_8) is
> being placed in '.data..L__unnamed_8'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_10) is
> being placed in '.data..L__unnamed_10'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_9) is
> being placed in '.data..L__unnamed_9'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_11) is
> being placed in '.data..L__unnamed_11'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_12) is
> being placed in '.data..L__unnamed_12'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_13) is
> being placed in '.data..L__unnamed_13'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_14) is
> being placed in '.data..L__unnamed_14'
> >    ld.lld: warning: fs/built-in.a(afs/dir.o):(.data..L__unnamed_15) is
> being placed in '.data..L__unnamed_15'
> >    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/dir_edit.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/dynroot.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/file.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/file.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/flock.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/fsclient.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/fs_operation.o):(.data..L__unnamed_1)
> is being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/fs_probe.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/inode.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/misc.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/mntpt.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/rotate.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_13) is
> being placed in '.data..L__unnamed_13'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_14) is
> being placed in '.data..L__unnamed_14'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_8) is
> being placed in '.data..L__unnamed_8'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_10) is
> being placed in '.data..L__unnamed_10'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_11) is
> being placed in '.data..L__unnamed_11'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_9) is
> being placed in '.data..L__unnamed_9'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_15) is
> being placed in '.data..L__unnamed_15'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_21) is
> being placed in '.data..L__unnamed_21'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_12) is
> being placed in '.data..L__unnamed_12'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_18) is
> being placed in '.data..L__unnamed_18'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_19) is
> being placed in '.data..L__unnamed_19'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_17) is
> being placed in '.data..L__unnamed_17'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_16) is
> being placed in '.data..L__unnamed_16'
> >    ld.lld: warning: fs/built-in.a(afs/rxrpc.o):(.data..L__unnamed_20) is
> being placed in '.data..L__unnamed_20'
> >    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/security.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/server.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_2) is
> being placed in '.data..L__unnamed_2'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_1) is
> being placed in '.data..L__unnamed_1'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_7) is
> being placed in '.data..L__unnamed_7'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_3) is
> being placed in '.data..L__unnamed_3'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_4) is
> being placed in '.data..L__unnamed_4'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_5) is
> being placed in '.data..L__unnamed_5'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_6) is
> being placed in '.data..L__unnamed_6'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_13) is
> being placed in '.data..L__unnamed_13'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_14) is
> being placed in '.data..L__unnamed_14'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_8) is
> being placed in '.data..L__unnamed_8'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_9) is
> being placed in '.data..L__unnamed_9'
> >    ld.lld: warning: fs/built-in.a(afs/super.o):(.data..L__unnamed_10) is
> being placed in '.data..L__unnamed_10'
> > ..
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/202010240159.IPld6mlB-
> lkp%40intel.com.
> 
> 
> 
> --
> Thanks,
> ~Nick Desaulniers
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ce6e42caf2fb44f4ba082e1302da819b%40intel.com.
