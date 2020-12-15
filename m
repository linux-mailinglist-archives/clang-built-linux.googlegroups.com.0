Return-Path: <clang-built-linux+bncBDM3FG7YWUNBBUUP4T7AKGQEKZFZ2UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D512DB425
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 20:00:36 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id s23sf17300418ilk.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Dec 2020 11:00:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608058834; cv=pass;
        d=google.com; s=arc-20160816;
        b=a6/U6Cyt3VCWAGLgtUElP0QJtPeWqmb5Z2wcUdm68KSU1LJaxBTQxxvWZVVSh3g9vo
         HMA6/ystRmVVMyNvTNo62LRlLSLwA7Kk4wbeSj/l2G3GK5khLWXZfxmSVu5DSbdCy54+
         kPRTwMN7VTH79XZwuUwUM4Tsiy9bCOHsqvz5QgKeIXkgntfLoWFHQPqeHMk5C6vLCj40
         mp1ZdAfhQWwIVPwkoPFUpV3x3+QmK4HdkA6bF1F+bLU4bfx8gwIEmL1m+nOF1G3T1QjJ
         QJBAso9HF70T2KmFH9wRUf1N7iks0nlnpn9zwpeDc/orPMEJmHG3KHOQW6ipuOOPezos
         IKLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=UU8SabuelrQh+y+932rO9QzE/HCtD5J+3P48LSGYqho=;
        b=RelwI6byF3Gi1Tx2bZ2WrAR+PKrrZZ5o2VZEN2bSOUe54zBWv1tZh8VMdUAgtqXOjc
         Fe2PMpnAw5Dk6aGjXffL1xteQRlXFCOngfotRjLDGjsze9zK1MxYfDNrGM40KTxbi57C
         QjzUdfhpk1qaEa6wHhFkEnmaaruiFE72RBXbJsxHyXZCndUtG7PlwxuCgIMfGcCyN4Qs
         ZhowCUWi3Ha33XPf5d1qDUUkUcqN4owF2LDOHpZkQqr6fINM4oMOmlKoYZkpDz5WVxa1
         XSwAr3DVpSAAocbHb/kJYy2FsRUCMyYJWps9UuJ38UW/TSYgFf+2qtao6jqkDrveSeyV
         y3HQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zxne49qo;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UU8SabuelrQh+y+932rO9QzE/HCtD5J+3P48LSGYqho=;
        b=KaZ9VTsKf750kRsVbWTefj0qnSazJQZTkqbWv05aem75o8nZOCnlzvfI33YbA+Wrue
         f/95oI7OxlREsfrJPuUsl1JATUEt1vYeKWRvxEKFkxeclJC9LQcOfYo2aUfcY8kxWbbu
         E7xWCwi8eY/vPDSZyRHZi1GrPWVRKDeNcF/8KPqroXM7qLAIlUf2VbsMwYQVQnPdiZlB
         PzaNxnO9Z7zEkSwOkARC1o7HzY6exeCN7WZUC4QA/MCsut6Tg9r2ypOMRqoWnzWF4FBx
         qoXLUltdkRwR5nBOYIHy9EyXDfKvBOBBEV+vobe/3pTCd47OuqLrfI+riKRIQ4Er1SNK
         tt3g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UU8SabuelrQh+y+932rO9QzE/HCtD5J+3P48LSGYqho=;
        b=q4VsbygMJ6Rb+ZloQVLcEFaBSJviNeDm6sI5+L97kua97ZI35o7JKCJgKfXh95lt6y
         vn44qxgv7onslqW59t7CO4JGqMZaB3sBSGHqExnGMgDjO2w5awZu3nPgHRcI/jogFfng
         MAPRsLqLmKsbHZxqvsTW9Wouhtg68RHcjs13opuqJce6y6AWawuUeyC+8fqacK0s3z3K
         OV44I0VUJGa8aUM4xn7Ft+O1MkFjW95Ci4HNMFywW7z4TQVagyuRGFaUNLsW0soz1XZv
         2mrtsiW3m+ejiC2qIFN9zB7Q6fuqHITC5Uf9Nrpr/uxwS1Ufi6keoV88df2z134L/HEe
         LJTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UU8SabuelrQh+y+932rO9QzE/HCtD5J+3P48LSGYqho=;
        b=fAbjom+FY3MJa5kAZwMzq/7+ocs2+IjdZk+darpYyYy7BAx86LLJ706PcZNlTBPtIB
         5sabu1EeHwDIESERjNfyQfilyImp+5jYhKsmS/lMfb9NL9MVzE9yOFZibcIUGl3FdnZx
         aVyMJgV4QYloa77YANQ99N2lA+ulX8n707Bo5gWagh/hK/fEQhavc/C4cDZP9j1hT/HB
         2oW+dYYCLVzq+lrmRCEA/cESfq+Cvo4ZGUwp0HPeQTznaLzEKqgRVprN8MQK69XMheAX
         nJ/1KklMe6+FFIjWBQgdUCPJpNzHR6ZN/mMmVwMgsxIf88+aPNWPkAuSB+kyjWOYCJb/
         Ppug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532CQ/6M+sSrdQYdsTUTVNVPYjrUoDh1xk6wFN66AL3EhrGf09fR
	a9rof4wZYuavb4yxBnXLccs=
X-Google-Smtp-Source: ABdhPJxiES/Wqk0G17IdLRQCN4eDQm27AEXEG23m+ysYM6/JhkB4J1Ax17u1tqE3mt/ZDYSBKutowg==
X-Received: by 2002:a02:dc6:: with SMTP id 189mr40121283jax.3.1608058834618;
        Tue, 15 Dec 2020 11:00:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:12d0:: with SMTP id v16ls2458797jas.11.gmail; Tue,
 15 Dec 2020 11:00:34 -0800 (PST)
X-Received: by 2002:a05:6638:f92:: with SMTP id h18mr39452118jal.118.1608058834056;
        Tue, 15 Dec 2020 11:00:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608058834; cv=none;
        d=google.com; s=arc-20160816;
        b=h9YAKl54bUF6AXkCDtFq+5QmJhfm8gfuCZhcjglW7B79JhoeJYJrKpyJL85cCEAllh
         cx8NBWgnSQN8usupQeEtnL9GIKvsmGYZ8beHNdjUV8evK1Lq/3qWmDXqepWdFq3x50s7
         xTatjJLiNeZrbsfwRC7EeO4ySrlQsHBAU8Aj6P3fFgYdT5yGfYBExAf8+3V45xIYDlh1
         lghV8eN0KOJVfuV/iAOHUjXafOpd5p4eCuJEwJ5AIS9W4Go2vbYL0JSNRZaT/LzsNs+h
         QKizapDaKLmqt3tLDcgUSEWCuJ5PzGTpnbvBABJI3/acuOySKTgy/U1eDz5qeOBeH1oI
         c8vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tqvjG3LHN+UnAhAiqOmxkv4SND0IGGUCBI5vxhhXVhk=;
        b=byIg13nYhFXNDQvKvYwqWvOqdmzmnvLmuIYIBbQ8nus3Xyo4O0/nraLKfyvTpGHzEh
         EZeaS+id97sB/N4yv5Cx8E5pT41CeigOy6kvMWxJppTt4pa5d+hGfxPJZw1E9lwarsBr
         Q2kZFY0ZOOgWY3BMLdpHllOdoO3f03ewruiMP/G7oLllmc0nCpB9mi8KecaSYTz96nGW
         4OApsD2GgKO1jRDO9B0T0nP5pZtjPGiVIsnPFuXOZ01z7h0I/IV6FID2qUT/d3Ua4yLY
         wtuIRPCa/tBGiv81oGmZmijW7AOLFh1vMehq5SBBLujTGVahYWie87vLVvMSQrE/Bxt7
         hsUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zxne49qo;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a42 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com. [2607:f8b0:4864:20::a42])
        by gmr-mx.google.com with ESMTPS id j18si1231226iow.0.2020.12.15.11.00.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Dec 2020 11:00:34 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a42 as permitted sender) client-ip=2607:f8b0:4864:20::a42;
Received: by mail-vk1-xa42.google.com with SMTP id w66so5053167vka.3
        for <clang-built-linux@googlegroups.com>; Tue, 15 Dec 2020 11:00:34 -0800 (PST)
X-Received: by 2002:a1f:4595:: with SMTP id s143mr31025286vka.6.1608058833485;
 Tue, 15 Dec 2020 11:00:33 -0800 (PST)
MIME-Version: 1.0
References: <202012150402.NnbPvD05-lkp@intel.com>
In-Reply-To: <202012150402.NnbPvD05-lkp@intel.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Wed, 16 Dec 2020 00:30:21 +0530
Message-ID: <CAFqt6zYZLm6o8EHnJahPQM=iuJaBg-t9P-71Rt6Fty7b-XJ3Sg@mail.gmail.com>
Subject: Re: [linux-next:master 6404/13375] drivers/i3c/master/mipi-i3c-hci/core.c:780:34:
 warning: unused variable 'i3c_hci_of_match'
To: kernel test robot <lkp@intel.com>
Cc: Nicolas Pitre <npitre@baylibre.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jrdr.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Zxne49qo;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a42
 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Dec 15, 2020 at 1:31 AM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   7bba37a1591369e2e506d599b8f5d7d0516b2dbc
> commit: 9ad9a52cce2828d932ae9495181e3d6414f72c07 [6404/13375] i3c/master: introduce the mipi-i3c-hci driver
> config: x86_64-randconfig-a013-20201215 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d38205144febf4dc42c9270c6aa3d978f1ef65e1)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=9ad9a52cce2828d932ae9495181e3d6414f72c07
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 9ad9a52cce2828d932ae9495181e3d6414f72c07
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/i3c/master/mipi-i3c-hci/core.c:780:34: warning: unused variable 'i3c_hci_of_match' [-Wunused-const-variable]
>    static const struct of_device_id i3c_hci_of_match[] = {
>                                     ^
>    1 warning generated.

CONFIG_OF not enabled.

Does it make sense to remove of_match_ptr() ?

static struct platform_driver i3c_hci_driver = {
.probe = i3c_hci_probe,
.remove = i3c_hci_remove,
.driver = {
.name = "mipi-i3c-hci",
.of_match_table = of_match_ptr(i3c_hci_of_match),
},


>
> vim +/i3c_hci_of_match +780 drivers/i3c/master/mipi-i3c-hci/core.c
>
>    779
>  > 780  static const struct of_device_id i3c_hci_of_match[] = {
>    781          { .compatible = "mipi-i3c-hci", },
>    782          {},
>    783  };
>    784  MODULE_DEVICE_TABLE(of, i3c_hci_of_match);
>    785
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqt6zYZLm6o8EHnJahPQM%3DiuJaBg-t9P-71Rt6Fty7b-XJ3Sg%40mail.gmail.com.
