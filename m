Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBCONTX7AKGQEBIHUWDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAA72CBA07
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 11:03:54 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id l11sf931019pfc.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 02:03:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606903433; cv=pass;
        d=google.com; s=arc-20160816;
        b=mAfO8Xk4b/bGqxRtXfI6LNFvX92Z73L72OVPs0a3L82Msvy7E3ProFDYjnFZpAMFPG
         uocBnSpH9HXOBNzZApSr7fe9U2Uleixl25e4UrF/txXeMfR3GoZTWhWjDYI5S0feKDTi
         zwEEidAJooSTbrffj5V82Wm+IjRsLaNSbXFou5nIqN/y8W7pGvCgX1pwsRA+F78TPnK2
         4Ud/Qbq+JsddxIV4Ol/mupxbz9adRCIRZ32Fa3iILExXDtlF/yJXsGo+xcjBg1/ynDuU
         C9Nc4HtbiT5smlZPF6M/A4xT7E8s7Nc+gEDOOYjPjOa18JJbaXiKGVJjxC9bmdCm8+xm
         HSyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aHQ1TfT1Y6oxUnN2ivNYroXHvrnOWcd93PrsOqmcMYg=;
        b=zcPbwvQoIabfP2lkCra1rXSNbwnLOjv1ETmAhz9+HJ9vmF/UpPMl20g8wqJ5wCqV9t
         C//Kpj4FoIKJKbe725LHntwRmWPtKnieHj698Lmwuw1Z56LapSmcActqxaYiJtOHUmkN
         Nq87xv8N18O0DMuBNGG6h8zP+8K4sLtSu7ffgOpsjkgj71AEiaZS5r6UVLX/UQZT/oHx
         cMDSMZEsEDQEV5UtdUXiBlnPpGgPq8Ri7WYSrUi0AFLYU07bOssohHrkjH8m/Sf712B1
         bT4eDy/FAwOydb+Oqvpq307smzQpk33nOkbfkQ7j2oLEFQy8RXBYapG/VQ//fggydJBY
         jiMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=F8uyeETA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aHQ1TfT1Y6oxUnN2ivNYroXHvrnOWcd93PrsOqmcMYg=;
        b=oobBGwnd8NU/EGX1Z85dTrAPVtVRhZYrs5+ieHGmpz0KHQs23H4bZG5ZosPBWSS2ii
         kmUwN5U1/KLG6QFQdaqMEDbtck452siGh9HCjo/GbY/NKAAgTpaAxPTuEdo81yzTXhZf
         q4MgBGstnRPtKAeC4clUzGWdcE8diuvsQ+YBwdSqTZW7BAmX4xE2wrq0GLsFOUTaoY6L
         eVbI3Si5bDXGr9ezUCLIetmfnyHRf+vUWB5ExIo/62GPcplfcS8wtOMFCwfcCjdf74GV
         DwFK1iOVzZHJq+Oprzvk+TkVUSVxBzugeDdZQoT3erl7fkHBfUPOpWgiUBUUP1YBMY0X
         efDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aHQ1TfT1Y6oxUnN2ivNYroXHvrnOWcd93PrsOqmcMYg=;
        b=qrCljUbBD0rN6OtSUlL9EwS0S+hlOjJ5su7m7KC3d460W/caV5PpClv9z9lDN+3Roq
         5wHz9oH0OzpxlVOaO2pv3q05VRKQ1Z9NMgM+5zkaNVOU19MKbC804IDVj74kGn3qjwjq
         RbcEPe0AKTWq4Kur8okR3vmtfzfEmbR3YoR5Au3KjEqLleuysvGf180cJn6TcaZcf2+m
         EgfPgdhGC9QHeRHstsfrjMyEzFYVyH0GcP9AX7IOyqTIM0YSrdAim3p91nCJTiONyR9g
         Py/3l7aZMAVjIzBxt7f4yRJXu1H2hhFG/3gr1KL2NG3sqB9XO7ZELtyungDbZjulhSH9
         5j5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531f+f7IqG0KkWHEloIdjR2GihdIG1iqDsyy28rDlcgmYzH+76Hy
	Mo6Tof2piPCeBLEP2sOnmBE=
X-Google-Smtp-Source: ABdhPJwMec4YxPz4lswizYWA+Ffvbhe06LKVHKE4NxdYEd4kMADXbvTPiP5EAI19Ctvbwj05mj9Kbg==
X-Received: by 2002:a17:902:a70a:b029:da:1911:4285 with SMTP id w10-20020a170902a70ab02900da19114285mr2052512plq.44.1606903433510;
        Wed, 02 Dec 2020 02:03:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3896:: with SMTP id f144ls587960pfa.4.gmail; Wed, 02 Dec
 2020 02:03:52 -0800 (PST)
X-Received: by 2002:aa7:97a2:0:b029:19a:e055:1d53 with SMTP id d2-20020aa797a20000b029019ae0551d53mr1856943pfq.12.1606903432858;
        Wed, 02 Dec 2020 02:03:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606903432; cv=none;
        d=google.com; s=arc-20160816;
        b=BxTSrkNfeevD5yj7F5lsklXl33QkSfaUK+76ovvHe1EOPm29CGrQBWt8ad9zS1SeIb
         gDm0ikptkR8HkVJHGdTWXMfigIOGQ+/V9ft2yboAz4dE9SnKH8TdmubbrwsHqCOD/gO0
         shXfX/FXGoHksbsNCsIRB86TGVMNg9JWo1G6Zsxq/BpljinbPkJjkDRd083gSn0bACTs
         mfJmqAHwc2IIBjJhixwyq5V4WWlfXNx7fqj5NyyrQNs01jOlRK6WeD20/zJ93tB9ORDj
         w+QqSOPgkU5VUxfH5RpYhoGGpeGhy/fF953oV9hwiokG2J5K+NlpqUd8NcgGHWryEZOP
         oI2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:dkim-signature:date;
        bh=RxvdbDLPkSS+ogGRUzspJxj4PECTeN00ui/f4SMVuTU=;
        b=uhBU0WI3NO9FLF6zqBemGEASX8IIpdCH6OFQipM5jBj9qlcq/YDMutz67+PmReduWd
         8cNTyuckf1UnHDITPWXpNT0ZLhQbxmI1UPi2UiTCNV6Hi2hiVCclJ3cVCRfMp50KRWy/
         h8PesN+1gUJKSgJG48L6BykB5tlXxLwRCVkzjrqWYheMBgk5jVSNvyD6cVGKbvXQFxWO
         JWylRNDcvUYwqr8aoqdmtYru+NSRT0IdQl5DMJXuYj915q1XnS8RHL1rxfOiHxNCLut1
         x59aOA9I/s2KXc+95QCXFyPlnwExoq4LsVjmf78RfMYnqkWJNfuQbVmqGa3hEIDy7NCa
         tKng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=F8uyeETA;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q32si80603pja.2.2020.12.02.02.03.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Dec 2020 02:03:52 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Date: Wed, 2 Dec 2020 11:05:01 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [linux-stable-rc:linux-5.4.y 4127/5583]
 drivers/staging/octeon/ethernet-tx.c:358:2: error: implicit declaration of
 function 'skb_reset_tc'
Message-ID: <X8dmzUa7ECBfnnzj@kroah.com>
References: <202012021706.3FGjX7dC-lkp@intel.com>
 <20201202095337.GA7269@salvia>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201202095337.GA7269@salvia>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=F8uyeETA;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Dec 02, 2020 at 10:53:37AM +0100, Pablo Neira Ayuso wrote:
> On Wed, Dec 02, 2020 at 05:23:16PM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
> > head:   12a5ce113626ce8208aef76d4d2e9fc93ea48ddf
> > commit: f8c60f7a00516820589c4c9da5614e4b7f4d0b2f [4127/5583] net: Fix CONFIG_NET_CLS_ACT=n and CONFIG_NFT_FWD_NETDEV={y, m} build
> > config: x86_64-randconfig-a016-20201202 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 2671fccf0381769276ca8246ec0499adcb9b0355)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=f8c60f7a00516820589c4c9da5614e4b7f4d0b2f
> >         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
> >         git fetch --no-tags linux-stable-rc linux-5.4.y
> >         git checkout f8c60f7a00516820589c4c9da5614e4b7f4d0b2f
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>):
> > 
> > >> drivers/staging/octeon/ethernet-tx.c:358:2: error: implicit declaration of function 'skb_reset_tc' [-Werror,-Wimplicit-function-declaration]
> >            skb_reset_tc(skb);
> >            ^
> 
> commit 673b41e04a035d760bc0aff83fa9ee24fd9c2779
> Author: Randy Dunlap <rdunlap@infradead.org>
> Date:   Sun Mar 29 09:12:31 2020 -0700
> 
>     staging/octeon: fix up merge error
> 
> Greg, you might want to cherry-pick this commit to 5.4.y to fix this issue.

Now queued up, thanks!

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X8dmzUa7ECBfnnzj%40kroah.com.
