Return-Path: <clang-built-linux+bncBCNKT7HJXMDRB76A7L3QKGQE5ZBHWOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B3F213204
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 05:05:37 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id fr7sf16338455pjb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 20:05:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593745536; cv=pass;
        d=google.com; s=arc-20160816;
        b=QCQhsn7vg/QvDAcC4EYfn7oZ8S3AdwKrRLdgP0gitVYC9HCbxSnUdeHbbBJRzOOnLw
         Ys4XZdsVKe4GvnMPcDAnEvumo1TTVbF60BhUE3fwVzpJqjvUHn3CbmgtvFO4QD86XCXP
         pcS1TrzmF6Ixyl9b1r/xayA3iJzRWvQjTjstx6TPB51YyiGrHO1NDVyFCg69AnigySIB
         H373DewFe5yKe1tH1deqbpXHe7AXEtqDLXV+DRiY57YmZBouAOKU26g9JiyLzJ8F1SJb
         E1vKt2EtzOf9zpCQ/4CAb+FRVupiKzNqaxejGvYAzDSUBO1g37BIg0TgJTG+QIehEZak
         9RGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=MVYXaVQ9hyRyaZ7mlBoCyCQTqA/z9lOz/llP74J7SJ8=;
        b=VtZzdYj5RxHQJsJu8/BusX30dsoWHWMOuVCObJSP7VGJQZDRMv6Y2GmQ3KNdcyZG28
         YvXXPFuf5/0d5E6YwD3WdUubzPag8vFoIvuazK3TdlggCUUwly00dX0Cj0u3daPSPhW8
         3SwkNRugz83ErkpckhiurEp/MtMdfmf21fRyhE4P7EjwJgkwpBj0qaJOmyxHRyfsRinF
         NLbFRRtQ302Yx8Os78GJZzWtTCpb1zmIXYJrRKi7FLnEsJCociuxJpNdzxOc38xGa2Jd
         c/ZFaPydRvUvjkHnDpTEs4cwrUHYhlwZxuEbAXHqok7oKMGxJ+mXTgm+F80oofbS1Ka3
         xvPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rQB1Gr6B;
       spf=pass (google.com: domain of vaibhav.varodek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=vaibhav.varodek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MVYXaVQ9hyRyaZ7mlBoCyCQTqA/z9lOz/llP74J7SJ8=;
        b=n8hN5J1G5sCdpWUFiXW+7VE48ydUhk3QBYwYl2SspB9CJzb9wXBFrttt/msRkvZmqO
         hDZ716uv2zyr+cCaYaaocGpJSOv293o5qut1tcrCk2fqZ7PpG2sOrR0SdMLzO1jYJclI
         SZXaX+hdQrfnoCMjVcFu1zdCPZWxoUxB7JW8AtM/PSfcsfXw/z0aIKQdqvDvdVEFZJDI
         YXRZsx9Owr5TPYNaDU/KG20HapkHtAOQf+LhXWYqJb6MGDX+r2lV08cCloeHfsUzL6bB
         cEpu+UxrYf6l21ZqU8dq4AtMsF3F1iDgWeJvqhfI8hcb1OBI3617ADKsm81+7GHHtW01
         ld0w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MVYXaVQ9hyRyaZ7mlBoCyCQTqA/z9lOz/llP74J7SJ8=;
        b=ex/wWN7AtxeZj0wjKJUqEisHS87ozhrz6NJU7n0jr9uDU3cmGwZMFamyIpch5T6kmS
         zGmD4+YyAaRlMPM/LD5Ihcp81MZOtUjo9Ip80VppRyK92UxPxY1GsjdCN7G/IozHhYWB
         UbSHmkxg9o3ge7LOrBMmZsYaO9zUnh5b9cM1B2tGUCK1TOuVESejIOZmuocL9DNS6reI
         VTKrymj1A+FgUPDRCVSJmReEIjKo0ITrrG80QmSixN4gKZX8CWqmYH5RcyvJmg82luAI
         qVwODQ66tfxqfLvWi+7jEBsbyrExqCmzEcLMh6puL/QATGmYEd0gI1wd6m5Oc7ryLtM5
         xQuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MVYXaVQ9hyRyaZ7mlBoCyCQTqA/z9lOz/llP74J7SJ8=;
        b=i/+F6qcOJB1Ji2A5HWDQddqlGWuxPErgf5z71F/FTglvqks1ENWZYnIEhlXLammCZi
         leHj2bL2mMQH1upfCBFgbFLpsWTklNbZyFAz+GwpQGhyonkccJujUEr8N6Rd/AvCeFN9
         GN0QlRqg83qxxeELqX3Gcq59K8LXhdKNHRmKxvBwyJGxDNFE6k8npy59NsVfSFIU5MkW
         C9G7pC0NL5KDypuTTh8++Hsc2i2gTypR7/dyyxBD+nRj3neIJUawbWAJsCljDrstC2o7
         5OflSno/5eBOu5wnm3ajvuuTNIv+/QnmkXydc+AzgkbcC0140NyUdiXqHAC1MFTydW1r
         Q6wQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533J3/fe+DETTUgaxoZt7vqFuA7Ac4WvQ9r8m00hSwUw8gizd3VZ
	BYzYdFpsXvTKotlpelPMp3g=
X-Google-Smtp-Source: ABdhPJxy1ZvpQgE5C4u8OFfhhpDC9b5PlYwh3U4a18YUuH0IlR4BaTAQ8+Ce9FmRU84oCuJAWr1hNg==
X-Received: by 2002:a17:902:8d86:: with SMTP id v6mr4385053plo.200.1593745535869;
        Thu, 02 Jul 2020 20:05:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:730d:: with SMTP id o13ls2640111pgc.1.gmail; Thu, 02 Jul
 2020 20:05:35 -0700 (PDT)
X-Received: by 2002:a63:dd42:: with SMTP id g2mr28525369pgj.442.1593745535396;
        Thu, 02 Jul 2020 20:05:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593745535; cv=none;
        d=google.com; s=arc-20160816;
        b=OnPlqe5k2SmAOaQccGZScJQR5TtKa8M0+hJXV7BOawlGu6oWVZTrGEFrUXtlbaX1jS
         JbbYnTa+Vs9SHXY8b+dokkafTRtCotVpMubtgOPZKP1mBHm3cKndigDQ/AauqFwXHwQE
         bw8rOaN9asYPMWAiam1yO4ehRZr3xIRldMXJi4KXv+MMT4NK3cHUYNlyzbTKoiXSjt80
         RVyxa4MyauLyD+O9rBGrt30OimmFPRjf17K1OUiTT3CswsHB/zo3V6YLbZ8vaeYs7DI3
         MBAPu4dOs+mfOEu6Df4GTr0OJIXb7Zg4iel7oQCliAcVVLW1pC44Z5r4NhnPj544B7yV
         XT0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=C8+UQwuXxC+Hk3b/RHaKYib5FH1f4hDdnk1vs6FzplY=;
        b=JsGE/Kmh4DJp9Sz0WTscydfrxNzbftQJDfWJ3804F+Za83o96T8PG6Gp1rW03XGr/c
         14PDeYbUxEtQ+M2RC06k9pHgN+VYQWlGoLQISNcM2doQeGBOz0jRFvuGg9Pi+ldXKPjL
         WlTrWFLt/9II1ybLAEYgl379UL3I6HVaRusUH/c+HmU2388YKBEAx/UQSX3OIKbqlmN6
         NuDfAt3dteo2a6D3Jw8qUBYtH5QRsae+UaRZaQQbUyiOEQ5SRRI+aHQ4FYFllpEJAVBW
         Nwr6z0/0JBkS2oMhBSFddLXG4HJ1wbbuE0Q0CBT/UT5XmnZ3+davnXX9Xbfzbjs8iAF7
         xN7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rQB1Gr6B;
       spf=pass (google.com: domain of vaibhav.varodek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=vaibhav.varodek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id d3si1556095pjw.0.2020.07.02.20.05.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 20:05:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of vaibhav.varodek@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id x9so26112230ila.3
        for <clang-built-linux@googlegroups.com>; Thu, 02 Jul 2020 20:05:35 -0700 (PDT)
X-Received: by 2002:a92:cc50:: with SMTP id t16mr15622736ilq.180.1593745534863;
 Thu, 02 Jul 2020 20:05:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200702105351.363880-3-vaibhavgupta40@gmail.com> <202007030309.DqqVrhAQ%lkp@intel.com>
In-Reply-To: <202007030309.DqqVrhAQ%lkp@intel.com>
From: Vaibhav Gupta <vaibhav.varodek@gmail.com>
Date: Fri, 3 Jul 2020 08:33:54 +0530
Message-ID: <CAPBsFfDcugy2=wzd49riVkG+_CZJ01j4i9M44zpdDjGYEHFu8Q@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] smsc9420: use generic power management
To: kernel test robot <lkp@intel.com>
Cc: Vaibhav Gupta <vaibhavgupta40@gmail.com>, Bjorn Helgaas <helgaas@kernel.org>, bjorn@helgaas.com, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Steve Glendinning <steve.glendinning@shawell.net>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, netdev@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	linux-kernel-mentees@lists.linuxfoundation.org, skhan@linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vaibhav.varodek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rQB1Gr6B;       spf=pass
 (google.com: domain of vaibhav.varodek@gmail.com designates
 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=vaibhav.varodek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, 3 Jul 2020 at 01:38, kernel test robot <lkp@intel.com> wrote:
>
> Hi Vaibhav,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on linus/master]
> [also build test WARNING on v5.8-rc3 next-20200702]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Vaibhav-Gupta/smsc-use-generic-power-management/20200702-185914
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git cd77006e01b3198c75fb7819b3d0ff89709539bb
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 003a086ffc0d1affbb8300b36225fb8150a2d40a)
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
> All warnings (new ones prefixed by >>):
>
> >> drivers/net/ethernet/smsc/smsc9420.c:1466:6: warning: variable 'err' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>            if (netif_running(dev)) {
>                ^~~~~~~~~~~~~~~~~~
>    drivers/net/ethernet/smsc/smsc9420.c:1471:9: note: uninitialized use occurs here
>            return err;
>                   ^~~
>    drivers/net/ethernet/smsc/smsc9420.c:1466:2: note: remove the 'if' if its condition is always true
>            if (netif_running(dev)) {
>            ^~~~~~~~~~~~~~~~~~~~~~~~
>    drivers/net/ethernet/smsc/smsc9420.c:1460:9: note: initialize the variable 'err' to silence this warning
>            int err;
>                   ^
>                    = 0
>    1 warning generated.
>
> vim +1466 drivers/net/ethernet/smsc/smsc9420.c
>
> 2cb377283f3469 drivers/net/smsc9420.c               Steve Glendinning 2008-12-11  1456
> 7d465053ec82e2 drivers/net/ethernet/smsc/smsc9420.c Vaibhav Gupta     2020-07-02  1457  static int __maybe_unused smsc9420_resume(struct device *dev_d)
> 2cb377283f3469 drivers/net/smsc9420.c               Steve Glendinning 2008-12-11  1458  {
> 7d465053ec82e2 drivers/net/ethernet/smsc/smsc9420.c Vaibhav Gupta     2020-07-02  1459          struct net_device *dev = dev_get_drvdata(dev_d);
> 2cb377283f3469 drivers/net/smsc9420.c               Steve Glendinning 2008-12-11  1460          int err;
> 2cb377283f3469 drivers/net/smsc9420.c               Steve Glendinning 2008-12-11  1461
> 7d465053ec82e2 drivers/net/ethernet/smsc/smsc9420.c Vaibhav Gupta     2020-07-02  1462          pci_set_master(to_pci_dev(dev_d));
> 2cb377283f3469 drivers/net/smsc9420.c               Steve Glendinning 2008-12-11  1463
> 7d465053ec82e2 drivers/net/ethernet/smsc/smsc9420.c Vaibhav Gupta     2020-07-02  1464          device_wakeup_disable(dev_d);
> 2cb377283f3469 drivers/net/smsc9420.c               Steve Glendinning 2008-12-11  1465
> 2cb377283f3469 drivers/net/smsc9420.c               Steve Glendinning 2008-12-11 @1466          if (netif_running(dev)) {
> b5a80837b7e125 drivers/net/ethernet/smsc/smsc9420.c Francois Romieu   2012-03-09  1467                  /* FIXME: gross. It looks like ancient PM relic.*/
> 2cb377283f3469 drivers/net/smsc9420.c               Steve Glendinning 2008-12-11  1468                  err = smsc9420_open(dev);
> 2cb377283f3469 drivers/net/smsc9420.c               Steve Glendinning 2008-12-11  1469                  netif_device_attach(dev);
> 2cb377283f3469 drivers/net/smsc9420.c               Steve Glendinning 2008-12-11  1470          }
> 2cb377283f3469 drivers/net/smsc9420.c               Steve Glendinning 2008-12-11  1471          return err;
> 2cb377283f3469 drivers/net/smsc9420.c               Steve Glendinning 2008-12-11  1472  }
> 2cb377283f3469 drivers/net/smsc9420.c               Steve Glendinning 2008-12-11  1473
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Fixed. Thanks!
-- Vaibhav Gupta

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPBsFfDcugy2%3Dwzd49riVkG%2B_CZJ01j4i9M44zpdDjGYEHFu8Q%40mail.gmail.com.
