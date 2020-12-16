Return-Path: <clang-built-linux+bncBCHZLAMNUIMRBBUT477AKGQEECQZL3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF3A2DBCDC
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 09:47:03 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id i4sf9218570wrm.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 00:47:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608108423; cv=pass;
        d=google.com; s=arc-20160816;
        b=IaGUNlwbgz4uCKDyRZ9OMUZGiUKlfwtAmw8zKZC2OsMjpJJ14vM/kcp+K9PZkrbl4Q
         3O4qwt5JfqYNFx01/KR5eGkCO1TJDwsd8/cpJWtTTthoIGFnMKMrGy5NZ3PrvxgEIlVv
         iX2JS+5TkU0VULkPuEmaIVnWOtIr8XlN74YHKhRmyyzpDgb7JcpVGoZu2IvJzy8aw546
         c1pY6RyKKJAmpzVxdn7R0Pq5c9DUzq/sq42KerSCLcHNDIGiIGZ4ZZYdqMZfCBqx5XKq
         gK6JH+0lS3fDwWkGkeCPU+MbghRQJa6NjDfi4cEgHnJG0vOgBcxVmAzJjpHNhTXZoPiJ
         00pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:organization
         :references:in-reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4sF4+eF1e1qCPF9V45JeAlQUiiGheBp5iwYTQSPnwGA=;
        b=0QbPRy/VYwdqjctjqA/QfbfbRHbxb9OdFbCXYe4MTLhp45tiAtv+5fPRuzK2MsRsO1
         C+ya2X3RAs1U7MIfpV5Ildk/EDzlmGC1gGLHFGYhZOEoUl4exX0PhJz6Xbc69trG41t4
         otkNCcxbHKVsWVVZjlNjdxEe1tG06V2e2B+8rAu7prR1fmpiHXam66k6C/Uy8uKvPNsO
         7+ORAi/gYo+GsEBDnguSkX7ga9AfsqRRjup3BtXqdccRm2n8RvpMUMpVr+uBaTv/EPJf
         /wfhZ8ofwWSMwszmREocU0oZ/Ob1nl5FqiKsPiMQKX0JYs1nLddgMx1jQJzNhz39wR6A
         aj1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4sF4+eF1e1qCPF9V45JeAlQUiiGheBp5iwYTQSPnwGA=;
        b=QhLjOz/9IDTFXMgk92HwxUtcFlBpIyIX7E9IhKad0s2jv+oijkmfUjf4+L9Y6yNpZe
         Xi77EvG6CHpZLjF0AcQE0WsFyWC/uV02nil8A3kmse/r/REg4+oik4asAD+P6EdermpI
         LGgGbhEVgr2SEaQ8vvqwe11KNZKMfT95m1L1N23b9Ayz3uX+oYAqTVEyMd1aXHRQuG33
         27VRbWdk0QUNtukdAcDC6sbUdpINOQM48kvqgyym5VOTeIZ085mP+OybzleeTdLwamS8
         Ko2hJg71WKhNoqOO8HcVE8EqSf+2d1shMuhBiBp5lxaUUs0klhT7+6AyHB7R94S1IwCE
         18jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:organization:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4sF4+eF1e1qCPF9V45JeAlQUiiGheBp5iwYTQSPnwGA=;
        b=t3qQDPZcOs+9OwcQDpFZ4PaorKjqs1VSxzkfzwk2tYYA9iM/Hp7zzIE7LlfWbL4qEs
         YHSzBciIec/Om03wllTFRBrWRQB3QQmwb9Sbn3Jn5HUUqxJ1ZYbLPW7IfOehoGTvoTbI
         w4n3fEW+NP3AzwBZn+JAH8+sSgEVfX4vB4ZOnKhWxqHlqY4gwQK5jRlmmheXtZ8S/L1G
         t5o7UM+oqE4kKwv6RmCIufxM+MtEmGiKhfs3nY9prgZAuzNjWRI4BpseOlQQq0Tj0b/R
         0DNWDOtkL8nspZz6WRNwAWjaVQHbmgGP+JLaaU32Vn7JWKU0PZhSYSdl9Emfrk9gbj0H
         FAkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309mNOW+W2lmoRY/AWVidFp0DBvfjGIN207jUpZvgi+xwc0cH9E
	6JokMoL+wu3JHu49KsDdRH8=
X-Google-Smtp-Source: ABdhPJzchsEerNNMMqQRsmUv8k8+JJWF/3aDtVBC0dVutAvpsuFAQOaRZQHI34Cr6o0pVEvHFATuzQ==
X-Received: by 2002:a1c:2646:: with SMTP id m67mr2173696wmm.81.1608108422860;
        Wed, 16 Dec 2020 00:47:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1d8a:: with SMTP id d132ls906694wmd.0.gmail; Wed, 16 Dec
 2020 00:47:02 -0800 (PST)
X-Received: by 2002:a1c:40d6:: with SMTP id n205mr2270194wma.0.1608108422097;
        Wed, 16 Dec 2020 00:47:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608108422; cv=none;
        d=google.com; s=arc-20160816;
        b=HAULRK/hz4RfHfUFnpo2KZAT3hXgqX3l2kVs4FHkpQ50BfHGR42MbKQ9D82SjwTiL2
         R3kMqRsEttzmyna4ug9UWyE+p8ICJgqWvDONdEKsYuB6a32c/xfRmeQBFp0yO0uD2UM2
         EIDaUlb4lEgZ6XIUlLm2p/VCyXS81FPOP0798U74a7ZT10zz+f0axiya5/fUk37ctCqy
         eNW6aNVRWfCrCoO6L/ZNTpt3iuz3t68J6jXcg/rqD9h4lT5jOfFw4fxXQZZPPGa1QOvI
         ZN7xNVBeNwgPSHzZ9Bdm87ILxWLFgmygCOiUPvcmv8YF3lNnRQDu4e6U/0mxbrVm70EM
         Ocvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date;
        bh=UeVYOmOp2eB/56GaP3XJQi/oGoILfNtZtPc+31UJIBc=;
        b=k1HFzgg+1piD+o3jCCt7dF5hCZX36sefzcMR7aEIREzQue/r/8uUWk7sWLOqrP5SjJ
         qj2ywXHfm6TH68qgqOf0wuHhWxkRJucZN5D3hrRWPGWR/ZA9wSevir+5mIKDL7SLkyf0
         MW1g8amsH0Q792IFcRL8Wpwa2dQIyvPvAd+jZxK0gCA+MZa7Cg2sSOA01jFKJtxMuJYJ
         ENgaelWjhRaEhaZFnzdgZLAmwT27+jSgqBDBnGJrcz6PFa1yOaGF+Q8I1ynOTlZfjg66
         RqzIQ+VuL3frbnBuROlE7aXbm1d/RUKFAvs5cTDOGckXCGvg1MQqdY4fUME/Hfn8Vo+W
         z8eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of boris.brezillon@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id o135si34502wme.3.2020.12.16.00.47.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 16 Dec 2020 00:47:02 -0800 (PST)
Received-SPF: pass (google.com: domain of boris.brezillon@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bbrezillon)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 842AD1F44662;
	Wed, 16 Dec 2020 08:47:01 +0000 (GMT)
Date: Wed, 16 Dec 2020 09:46:58 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Nicolas Pitre <nico@fluxnic.net>
Cc: Souptick Joarder <jrdr.linux@gmail.com>, kernel test robot
 <lkp@intel.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, Linux Memory Management List
 <linux-mm@kvack.org>, Boris Brezillon <bbrezillon@kernel.org>
Subject: Re: [linux-next:master 6404/13375]
 drivers/i3c/master/mipi-i3c-hci/core.c:780:34: warning: unused variable
 'i3c_hci_of_match'
Message-ID: <20201216094658.67472406@collabora.com>
In-Reply-To: <5np5642-89p-61no-4027-475p936rn078@syhkavp.arg>
References: <202012150402.NnbPvD05-lkp@intel.com>
	<CAFqt6zYZLm6o8EHnJahPQM=iuJaBg-t9P-71Rt6Fty7b-XJ3Sg@mail.gmail.com>
	<5np5642-89p-61no-4027-475p936rn078@syhkavp.arg>
Organization: Collabora
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: boris.brezillon@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of boris.brezillon@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=boris.brezillon@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On Tue, 15 Dec 2020 22:28:42 -0500 (EST)
Nicolas Pitre <nico@fluxnic.net> wrote:

> On Wed, 16 Dec 2020, Souptick Joarder wrote:
> 
> > On Tue, Dec 15, 2020 at 1:31 AM kernel test robot <lkp@intel.com> wrote:  
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   7bba37a1591369e2e506d599b8f5d7d0516b2dbc
> > > commit: 9ad9a52cce2828d932ae9495181e3d6414f72c07 [6404/13375] i3c/master: introduce the mipi-i3c-hci driver
> > > config: x86_64-randconfig-a013-20201215 (attached as .config)
> > > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d38205144febf4dc42c9270c6aa3d978f1ef65e1)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=9ad9a52cce2828d932ae9495181e3d6414f72c07
> > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >         git fetch --no-tags linux-next master
> > >         git checkout 9ad9a52cce2828d932ae9495181e3d6414f72c07
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >  
> > > >> drivers/i3c/master/mipi-i3c-hci/core.c:780:34: warning: unused variable 'i3c_hci_of_match' [-Wunused-const-variable]  
> > >    static const struct of_device_id i3c_hci_of_match[] = {
> > >                                     ^
> > >    1 warning generated.  
> > 
> > CONFIG_OF not enabled.
> > 
> > Does it make sense to remove of_match_ptr() ?
> > 
> > static struct platform_driver i3c_hci_driver = {
> > .probe = i3c_hci_probe,
> > .remove = i3c_hci_remove,
> > .driver = {
> > .name = "mipi-i3c-hci",
> > .of_match_table = of_match_ptr(i3c_hci_of_match),
> > },  
> 
> That... or having #ifdef CONFIG_OF around struct of_device_id.

Or adding a __maybe_unused qualifier. Can you send patch for this so I
can apply it before sending my PR to Linus?

> 
> > > vim +/i3c_hci_of_match +780 drivers/i3c/master/mipi-i3c-hci/core.c
> > >
> > >    779  
> > >  > 780  static const struct of_device_id i3c_hci_of_match[] = {  
> > >    781          { .compatible = "mipi-i3c-hci", },
> > >    782          {},
> > >    783  };
> > >    784  MODULE_DEVICE_TABLE(of, i3c_hci_of_match);
> > >    785
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org  
> >   

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201216094658.67472406%40collabora.com.
