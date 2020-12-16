Return-Path: <clang-built-linux+bncBCS6NPVSS4JBB4P54X7AKGQEZM3YQDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 895F52DB9A8
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 04:28:50 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id v18sf5075294uao.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 19:28:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608089329; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZcAgobWCnprdeDHzZTB/TxOCN8gXM08AcF99BmTh2cRLmSMuAwCu7Pd90OkIeE6PTB
         yxN34ftpBR7SAyF3ARYA3uO4k2t6V9CVeDLuPUcVcxbxY8PC3c8cbdP/lPl/LSpMO5Vy
         77kyTzE0WlLz1kkk7DBIGb+NORpdTgnpJsHsqK9axPEmDyjx1XXswFuERPgGjEjjSC+I
         yck375LVLoSabGjRad7lUw7hJlFM+BE99HB6e0B6UXCLYMIYnhFbNBrIr0/37yRsQSc0
         /B5HYpz9eqVggwbiT6Fgwyw3f1EETPPCN9LOybcVMPg8i3rpZl3k9AMmuQhq/9I8cH1F
         abGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=Zllir4jXHQSJTg9uphD/4cp67TRJzw5T3CtoYtAh3Dk=;
        b=B0CeiWGD+b6Zza7fB43CNkpdKm68Dm0Krk3Otd+4BvIUS0ALOL4Ep03Wj0tSXcXQBv
         rG/k01wpRTx3bga+4CRjMByYjpFx6Nc0rCeYYFgDq+dShmDOgyXHU9bC7wuzdRslM2yE
         L5lOxqkG33iZdxtmuQzhRAOUhca0YM/6NJFM1/yPQoXA/oOulzw3Q4m5qqCLybTte6kr
         Crip5ehjFA1aiZLQ0nsBQZoc6pMMKmQGFjgzoUY67D/YO0lyukIm57VZdYG1s7N1evPQ
         eT2RDOWHFxz6PNIFoEcV5tTy0XjIgwzH7kGhgaBC3xfLHsk3q1XJye29thJJfw0HhTL2
         Xq7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=rQAQ46UA;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=NrTmQeEr;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.71 as permitted sender) smtp.mailfrom=nico@fluxnic.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zllir4jXHQSJTg9uphD/4cp67TRJzw5T3CtoYtAh3Dk=;
        b=rdVwNgXdwMMUOaT7FtUQVAArwjKTBnZClL2w3+IbWXkXmt3LLkM5QCICuIOGY6/bGJ
         KLCXa8LjgjH76SaevEZ6ojbxyxetam48RGuMKZaaY5EkcbY48xYanCf8KLosfo4pfYw4
         507Xrek3q6NttSZM6shQYDT/lZp8y8geFCHXMKTcOYINZ0cOwEMjrhO5T72DgnfxYqb1
         BC7HqZ/V5nc69lIPiBH869i+spjQQPBKHsdybD8Aok257OGyg8d5QSdAYroTqh7c+AqF
         Yrimnn/sIC+ttV9qcpTUUu/mdr5UQ6NpjR4Q+O0+NzTeLLmUCGFBBuh99k4QmbKfHiau
         qvyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zllir4jXHQSJTg9uphD/4cp67TRJzw5T3CtoYtAh3Dk=;
        b=FGqf46WOhdfmNm3zwBiJY0QW+EULgmE1YyhzlkfjoZ5opm1oxNOtv/vdlk6zVEH7el
         w4mTei7geAMaDHlTmRT8gVqo38xnS/F8wXZXRCJujxb/Brn95qMpJpd/ttuD6GLxdvfy
         pB//XkDALUIkBYIMORjVFrT1nnweeCps8sRwYLiILZ66JfPA9SoELAPzRYuPPtkIU9z/
         vCbo+7K0OT9edjvX/yNWYyxy005ykHS22P9VE/YNVUbEeY2EyGEdDHifsHm8tl6/uA3X
         P9Kh6nqxhwZ+jK+4Dc6DX+2SrYScDqAVcFIPaP7ZzX3OS5X/0bhs425NyqL021QgoEfU
         rMRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531XxveIE1vIsNXQsubkiN8R4iwd/88hWIrbnGHNx73qqzsgYlWz
	Hr59UKf2K+G55CWtZSPZjJc=
X-Google-Smtp-Source: ABdhPJzGW+5O5EqM4Q2hxHG8PlNXIgRv3JO/XzCCfweaTJYg7UpoJ80U9kj8VKtGBSAE8v2OnLvNFQ==
X-Received: by 2002:ab0:74d1:: with SMTP id f17mr30233157uaq.30.1608089329616;
        Tue, 15 Dec 2020 19:28:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8d45:: with SMTP id p66ls2800131vsd.11.gmail; Tue, 15
 Dec 2020 19:28:48 -0800 (PST)
X-Received: by 2002:a67:e04f:: with SMTP id n15mr9805485vsl.41.1608089328957;
        Tue, 15 Dec 2020 19:28:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608089328; cv=none;
        d=google.com; s=arc-20160816;
        b=SzsAqo37oa2zhZPsoQUkwTjpMJgdfFcU1Vhczwo9u6y2nLthIaf7wcACj13yD4DVD8
         1jj+d2HaJ4EiNtx8qb4PsjFeNQjAyxZcPgTLa9dH2BW8tjiNuomnNAynsZbrCxQOmAMu
         kUkc9hvtLpOOn3WXYjiAOpWPJG1CgdTXgiQAB6AoZxLJL76kY9tw1RKUFmA9xab9o12m
         CqwhE57p+gmRdz6DkhTl6fyKKzY732H40MVNYlI8Iif7eHCy+3UdgP4cU4kAtpg9AAqC
         SdU+mb6/UjdoTbcTeBQNunYf7wurMDRRERxaUT7E4m2YCKvr1YCFMYb+0srJ5/UPlEiw
         SSWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:dkim-signature:dkim-signature;
        bh=tTwsBmaDSJjLy7MiY9m0zE/GOq+rXB5t5eZjVZ66eW4=;
        b=eHZTEqMR5q78Qwmd1edQKX2cuq9YrNgkf5+pXyUQVcZIkX1W8Q0HNYSGgttTZs51pQ
         uCkN/NJE+Ui20hupbJ4RMb1PkOIuTOI/WQ6frc0PIOrB87Js3xomXAIx4FWaphDDxDj0
         hTrwUbOA02CD3iMgBvB7WbDjWkckUAr0h5sYILXO6a34/P0AH7F8Yt4f36LosxOhgPjd
         9bvCERGfc2axFHNRSUNcLVZrkIgvHqTMuwUY7OcC35K+iKsEOKGVFFiI/lpCOy5nKCgM
         Iy2tNo23yDo7sYeO4YrTzl58XHusIV8GijSvvbSR7KRTUA/9flktxdvyW6EjhekmoACs
         jhxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pobox.com header.s=sasl header.b=rQAQ46UA;
       dkim=pass header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=NrTmQeEr;
       spf=pass (google.com: domain of nico@fluxnic.net designates 64.147.108.71 as permitted sender) smtp.mailfrom=nico@fluxnic.net
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com. [64.147.108.71])
        by gmr-mx.google.com with ESMTPS id g17si38461vso.1.2020.12.15.19.28.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Dec 2020 19:28:48 -0800 (PST)
Received-SPF: pass (google.com: domain of nico@fluxnic.net designates 64.147.108.71 as permitted sender) client-ip=64.147.108.71;
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 3E73C9FEEB;
	Tue, 15 Dec 2020 22:28:44 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 2765D9FEEA;
	Tue, 15 Dec 2020 22:28:44 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from yoda.home (unknown [24.203.50.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id A1ADF9FEE9;
	Tue, 15 Dec 2020 22:28:43 -0500 (EST)
	(envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
	by yoda.home (Postfix) with ESMTPSA id 5AA572DA0AA7;
	Tue, 15 Dec 2020 22:28:42 -0500 (EST)
Date: Tue, 15 Dec 2020 22:28:42 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Souptick Joarder <jrdr.linux@gmail.com>
cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
    clang-built-linux@googlegroups.com, 
    Linux Memory Management List <linux-mm@kvack.org>, 
    Boris Brezillon <bbrezillon@kernel.org>
Subject: Re: [linux-next:master 6404/13375] drivers/i3c/master/mipi-i3c-hci/core.c:780:34:
 warning: unused variable 'i3c_hci_of_match'
In-Reply-To: <CAFqt6zYZLm6o8EHnJahPQM=iuJaBg-t9P-71Rt6Fty7b-XJ3Sg@mail.gmail.com>
Message-ID: <5np5642-89p-61no-4027-475p936rn078@syhkavp.arg>
References: <202012150402.NnbPvD05-lkp@intel.com> <CAFqt6zYZLm6o8EHnJahPQM=iuJaBg-t9P-71Rt6Fty7b-XJ3Sg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Pobox-Relay-ID: CC8E49CC-3F4E-11EB-8385-74DE23BA3BAF-78420484!pb-smtp2.pobox.com
X-Original-Sender: nico@fluxnic.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pobox.com header.s=sasl header.b=rQAQ46UA;       dkim=pass
 header.i=@fluxnic.net header.s=2016-12.pbsmtp header.b=NrTmQeEr;
       spf=pass (google.com: domain of nico@fluxnic.net designates
 64.147.108.71 as permitted sender) smtp.mailfrom=nico@fluxnic.net
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

On Wed, 16 Dec 2020, Souptick Joarder wrote:

> On Tue, Dec 15, 2020 at 1:31 AM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   7bba37a1591369e2e506d599b8f5d7d0516b2dbc
> > commit: 9ad9a52cce2828d932ae9495181e3d6414f72c07 [6404/13375] i3c/master: introduce the mipi-i3c-hci driver
> > config: x86_64-randconfig-a013-20201215 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d38205144febf4dc42c9270c6aa3d978f1ef65e1)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=9ad9a52cce2828d932ae9495181e3d6414f72c07
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout 9ad9a52cce2828d932ae9495181e3d6414f72c07
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/i3c/master/mipi-i3c-hci/core.c:780:34: warning: unused variable 'i3c_hci_of_match' [-Wunused-const-variable]
> >    static const struct of_device_id i3c_hci_of_match[] = {
> >                                     ^
> >    1 warning generated.
> 
> CONFIG_OF not enabled.
> 
> Does it make sense to remove of_match_ptr() ?
> 
> static struct platform_driver i3c_hci_driver = {
> .probe = i3c_hci_probe,
> .remove = i3c_hci_remove,
> .driver = {
> .name = "mipi-i3c-hci",
> .of_match_table = of_match_ptr(i3c_hci_of_match),
> },

That... or having #ifdef CONFIG_OF around struct of_device_id.

> > vim +/i3c_hci_of_match +780 drivers/i3c/master/mipi-i3c-hci/core.c
> >
> >    779
> >  > 780  static const struct of_device_id i3c_hci_of_match[] = {
> >    781          { .compatible = "mipi-i3c-hci", },
> >    782          {},
> >    783  };
> >    784  MODULE_DEVICE_TABLE(of, i3c_hci_of_match);
> >    785
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5np5642-89p-61no-4027-475p936rn078%40syhkavp.arg.
