Return-Path: <clang-built-linux+bncBDRPZAGFRAFBBYMVYSEAMGQE3NWOM5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CBE3E4455
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Aug 2021 13:00:50 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id y3-20020a1975030000b02903bd2e59c7dcsf6021475lfe.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Aug 2021 04:00:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628506850; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZOURXSVMYWHYZDtn6VfK3jach1TGfHGF8rIwuPdThgi+6X2/rpmPfV5ofs/v+wZGEC
         OkWpTyFLqkq/ZdQ7zfrbXdc4dAkNdlCcKv3dBzOwyTNRDhdo/3GCAY9DiOqEdqTXkrLs
         fQzizwqgkV8py+PezMn3U4n21bBzive379xZE8J9SlQOUCHux4//w/cJo8B8L3iYYhO1
         6j9LMEywMmbbEdqHpGb53bBP+6KtBf09MK7cN+C57vDOD15obk9e47fFrUXo9tlJBWAN
         pbRzqlBxG9cRkHaY/dfp3Tvq3EUopsC99TSX61+IXZlmlu6IGagXhJo/+bspROE19NLw
         4lVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=OwaEHaFVvJ79JV/N5+47d1EFafGiLAtwbAYSNNkCnb4=;
        b=FgGhkarSqfaHpHI8hImGLztD32VSuC44QQD7Yj+9vvildt7s3PAOWt7IVpt8auK6yh
         jL3/+XoaRjrpsd/aBls7E/pMRdji+fgcG4IxZpVZDPvQ9EsCs2a55V48OAZ0CY8wBlJu
         Q1lUNPDfheY2Ue7oK8wiZ/12fuYYiP7AHBN0zqv0ZH9oHUWgNshwYC5A7hv/vWF/spoA
         pcs4PcH41KKViYd0oUwteGM1Ij+6SerjzRdMYKg6rjoBWP9QunoDKdoHmiRgh+ypNxgb
         Gk9rjhPOKPGxjIF8MgSR0WlXEBQRIO65zizHyQw3ffu4irs6O6V2QN+fEPUhOha5s3wM
         ypFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rw/fb4w7";
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OwaEHaFVvJ79JV/N5+47d1EFafGiLAtwbAYSNNkCnb4=;
        b=RoUPDtrfcsz7YCD6FlWUftbgi/e40F+OkArG5BvuPmYShGT+IRFJLdD4CaLLr3I0Jv
         c73Cu6NbEHUV9w5sQ00ca9Az4slyTsiTIqmiP2T9+odHX9iRMsTQHWl2iI1zZsqSrQZD
         7OHTJgNMjXPZU96uL0Yql8+pVN1XGFskJKTzZ5eXLH4RpDMc8840M1l+SRTx7meGUCtI
         SBFmXjlkZ4vRlTt9J0O0FoCMFbgSPeEpxt0hxrgISUF3L0wHV2N6TbuD3AaVOCesD/y3
         8f9Zq3d9WX5sL0pDWNWVQk+hgN2qGwReiABNfbg3WclfEYRHrAr+RpQHDuKUFHMPzUmx
         coPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OwaEHaFVvJ79JV/N5+47d1EFafGiLAtwbAYSNNkCnb4=;
        b=LZ6kM/RAkfX/5WuLPG8J5fS+g/pOhpi9BAh/28uLU2882kkxQanT6WHQWtyeGk+I2D
         JJZU64usrKxpuEL9nhXYrsnUqijnS1OHPiVutTyB0Ud+8plLHOu1L1Yj02/ZHMTO5D1K
         JdxuHbxZEsWQHcUvQYW0sP377aGhkw07BPkriI57YjBzqgc+QH0Obijo+9RqlW1IdE1G
         tJXJ2X6MhTR/PqThzU7FclMPgTaBLGEVV9OmFLN/YTpY8PhvHNefAM7HS0Fxvqp4sdvG
         h5gZAso0GH7wu9hIPmEH4LKLeW455i6fV736Se8pBK7/B+iw5XsZKDBO4e+p/0HYHLaX
         oX3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OwaEHaFVvJ79JV/N5+47d1EFafGiLAtwbAYSNNkCnb4=;
        b=naadi8fNZFrFeQoBkGbB6IUD8ARA06wGKFi/k6PCYdGbYKYiIlHK77xH4Rt5r5jUQm
         fgKoTA+zwkC8WupLhKCInj3CFH88dw9oYdZbAIte04EFh3JYIRF+zNKzMCpUYwC51N6Y
         eVE7Pp84WAGP79DQ6Ap1QpAvDzvrP023dp1BVlzV7RNM9zfXIuamQ/CyLUQpg+vgdxfd
         bDaE5R1BBpMnYjOTXoeqFaP+aa2lQMHbb96ni5mQ0AZ8FSbVnnhuHeIAY3iTt7jwDYZW
         ItBzTCA+d9cFP3tnnH0AXwHgL2rqd5IzzY1O4XeDNXS0kgEpUTarwmNrfCZ6I18qpyJK
         Ii2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xf4mgcP5tb89CH3SEn74bhoCTnmNYpin/oOeb1cB7B7gNCEKu
	BSTcLBZvbluSaTJ5JQPW01U=
X-Google-Smtp-Source: ABdhPJzZd/L/24j0cNmJ9rflxxMa4bqEbygov/rpV/u4rw5NbH8GcJvO1286fLfneqtPvbnpRIJwMQ==
X-Received: by 2002:a2e:4b19:: with SMTP id y25mr15959712lja.470.1628506849219;
        Mon, 09 Aug 2021 04:00:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls10581327lfi.2.gmail; Mon, 09 Aug
 2021 04:00:48 -0700 (PDT)
X-Received: by 2002:a05:6512:210b:: with SMTP id q11mr17420142lfr.82.1628506848081;
        Mon, 09 Aug 2021 04:00:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628506848; cv=none;
        d=google.com; s=arc-20160816;
        b=D1E7fX85P5XV/eeYH5FxBNGACgxRNnlvVEtaWOFQsaOZDmXtj7ZaHFFkieN33MxI3z
         2WidApjPUedWqW6h+z/BOZ4g+lUHpGpMtuBWu3ePLZLBO51BWcXuZINULEUuco8yMIz1
         yjxlxz6eUMkhEjuoifbnmk4/9+EINTPl9qXU2/0BLmY3zZn4CBjrtkLuWy6wNvhQoMNO
         t6cc0q3l4Dhs86PVCbQECAJY3QZ413FO153cvTpoARrOIzhsuOEOEYtqelGZh09yBmv3
         HggpZGPPAxVyKuXDxfWeZm8r6GYSGR9edkIBBPqixBIWMm7S36Ln05ZmLgkOm3fDsJXa
         ASiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=6EWh3qmrXI9DtO1vFXKCcRxnt+qQ9josKdpjaBxdfMs=;
        b=UhVyGoeLZmayzLvQv2rtmu3XCJsKIJgVoB+zN/KHK6Ea6KunUPijpZusQiEMQtGwWs
         laBllSQa+V4AgSseI6rDLy2hMOcNGJOMWYDv4Mr12tjfIFlqqdq58/tWcZHPwltlP4Uw
         hD2E1TDXUVa7cpHJGM78ejFykhxRWITiFs+aLrOPJktPjIiYhlhV3cnpZy8LPUpMIV+s
         RsY/njawHP8k3E9F1QnBstikqb5AG3CAESIAZisP7SvvIMDGfYX/07EXWbObQUGFS7oU
         ktrPsyWVsGy/iCDpgLs/zATjfx1PyY7f/dOhlVV4yhXmSrGI2lPharHzUYSwBERRhmvs
         izmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rw/fb4w7";
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id x17si689491ljp.0.2021.08.09.04.00.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 04:00:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id n17so7737479lft.13
        for <clang-built-linux@googlegroups.com>; Mon, 09 Aug 2021 04:00:48 -0700 (PDT)
X-Received: by 2002:ac2:4c19:: with SMTP id t25mr15505663lfq.260.1628506847796;
        Mon, 09 Aug 2021 04:00:47 -0700 (PDT)
Received: from [192.168.1.11] ([46.235.67.232])
        by smtp.gmail.com with ESMTPSA id f6sm575851lft.231.2021.08.09.04.00.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 04:00:47 -0700 (PDT)
Subject: Re: drivers/net/usb/pegasus.c:461:2: warning: Value stored to 'ret'
 is never read [clang-analyzer-deadcode.DeadStores]
To: kernel test robot <rong.a.chen@intel.com>,
 Petko Manolov <petkan@nucleusys.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org
References: <202108080902.ZhmxmJZr-lkp@intel.com>
 <28df02cc-8b34-3d4e-2ed6-30af0ff44a42@intel.com>
From: Pavel Skripkin <paskripkin@gmail.com>
Message-ID: <3dea0c17-35cc-6a94-1478-a44ef8fe0191@gmail.com>
Date: Mon, 9 Aug 2021 14:00:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <28df02cc-8b34-3d4e-2ed6-30af0ff44a42@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: paskripkin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="rw/fb4w7";       spf=pass
 (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::136
 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;       dmarc=pass
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

On 8/9/21 1:37 PM, kernel test robot wrote:
> 
> tree:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   85a90500f9a1717c4e142ce92e6c1cb1a339ec78
> commit: 8a160e2e9aeb8318159b48701ad8a6e22274372d net: usb: pegasus:
> Check the return value of get_geristers() and friends;
> date:   4 days ago
> :::::: branch date: 8 hours ago
> :::::: commit date: 4 days ago
> config: x86_64-randconfig-c001-20210808 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project
> 41a6b50c25961addc04438b567ee1f4ef9e40f98)
> reproduce (this is a W=1 build):
>           wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>           chmod +x ~/bin/make.cross
>           # install x86_64 cross compiling tool for clang build
>           # apt-get install binutils-x86-64-linux-gnu
>           #
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=8a160e2e9aeb8318159b48701ad8a6e22274372d
>           git remote add linus
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>           git fetch --no-tags linus master
>           git checkout 8a160e2e9aeb8318159b48701ad8a6e22274372d
>           # save the attached .config to linux build tree
>           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> ARCH=x86_64 clang-analyzer
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

[snip]

>>> drivers/net/usb/pegasus.c:461:2: warning: Value stored to 'ret' is never read [clang-analyzer-deadcode.DeadStores]
>              ret = set_registers(pegasus, EthCtrl0, 3, data);
>              ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>      drivers/net/usb/pegasus.c:461:2: note: Value stored to 'ret' is
> never read
>              ret = set_registers(pegasus, EthCtrl0, 3, data);
>              ^     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>      drivers/net/usb/pegasus.c:778:18: warning: The left operand of '>>'
> is a garbage value [clang-analyzer-core.UndefinedBinaryOperatorResult]
>              interval = data >> 8;
>                              ^

This is fixed by commit af35fc37354c ("net: pegasus: fix uninit-value in
get_interrupt_interval")


>      drivers/net/usb/pegasus.c:1157:2: note: Taking false branch
>              if (pegasus_blacklisted(dev))
>              ^
>      drivers/net/usb/pegasus.c:1161:6: note: Assuming 'net' is non-null
>              if (!net)
>                  ^~~~
>      drivers/net/usb/pegasus.c:1161:2: note: Taking false branch
>              if (!net)
>              ^
>      drivers/net/usb/pegasus.c:1168:6: note: 'res' is >= 0
>              if (res < 0) {
>                  ^~~
>      drivers/net/usb/pegasus.c:1168:2: note: Taking false branch
>              if (res < 0) {
>              ^
>      drivers/net/usb/pegasus.c:1175:2: note: Loop condition is false.
> Exiting loop
>              INIT_DELAYED_WORK(&pegasus->carrier_check, check_carrier);
>              ^
>      include/linux/workqueue.h:272:2: note: expanded from macro
> 'INIT_DELAYED_WORK'
>              __INIT_DELAYED_WORK(_work, _func, 0)
>              ^
>      include/linux/workqueue.h:257:3: note: expanded from macro
> '__INIT_DELAYED_WORK'
>                      INIT_WORK(&(_work)->work, (_func));
>       \
>                      ^
>      include/linux/workqueue.h:250:2: note: expanded from macro 'INIT_WORK'
>              __INIT_WORK((_work), (_func), 0)
>              ^
>      include/linux/workqueue.h:230:2: note: expanded from macro '__INIT_WORK'
>              do {
>       \
>              ^
>      drivers/net/usb/pegasus.c:1175:2: note: Loop condition is false.
> Exiting loop
>              INIT_DELAYED_WORK(&pegasus->carrier_check, check_carrier);
>              ^
>      include/linux/workqueue.h:272:2: note: expanded from macro
> 'INIT_DELAYED_WORK'
>              __INIT_DELAYED_WORK(_work, _func, 0)
>              ^
>      include/linux/workqueue.h:258:3: note: expanded from macro
> '__INIT_DELAYED_WORK'
>                      __init_timer(&(_work)->timer,
>       \
>                      ^
>      include/linux/timer.h:113:2: note: expanded from macro '__init_timer'
>              do {
>       \
>              ^
>      drivers/net/usb/pegasus.c:1175:2: note: Loop condition is false.
> Exiting loop
>              INIT_DELAYED_WORK(&pegasus->carrier_check, check_carrier);
>              ^
>      include/linux/workqueue.h:272:2: note: expanded from macro
> 'INIT_DELAYED_WORK'
>              __INIT_DELAYED_WORK(_work, _func, 0)
>              ^
>      include/linux/workqueue.h:256:2: note: expanded from macro
> '__INIT_DELAYED_WORK'
>              do {
>       \
>              ^
>      drivers/net/usb/pegasus.c:1194:2: note: Calling 'get_interrupt_interval'
>              get_interrupt_interval(pegasus);
>              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>      drivers/net/usb/pegasus.c:774:2: note: 'data' declared without an
> initial value
>              u16 data;
>              ^~~~~~~~
>      drivers/net/usb/pegasus.c:777:2: note: Calling 'read_eprom_word'
>              read_eprom_word(pegasus, 4, &data);

This is fixed by commit af35fc37354c ("net: pegasus: fix uninit-value in
get_interrupt_interval")


>              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

>      drivers/net/usb/pegasus.c:279:2: note: Loop condition is true.
> Entering loop body
>              for (i = 0; i < REG_TIMEOUT; i++) {
>              ^
>      drivers/net/usb/pegasus.c:281:7: note: Assuming 'ret' is < 0
>                      if (ret < 0)
>                          ^~~~~~~
>      drivers/net/usb/pegasus.c:281:3: note: Taking true branch
>                      if (ret < 0)
>                      ^
>      drivers/net/usb/pegasus.c:282:4: note: Control jumps to line 298
>                              goto fail;
>                              ^
>      drivers/net/usb/pegasus.c:298:2: note: Taking false branch
>              netif_dbg(pegasus, drv, pegasus->net, "%s failed\n", __func__);
>              ^
>      include/linux/netdevice.h:5352:2: note: expanded from macro 'netif_dbg'
>              if (netif_msg_##type(priv))                             \
>              ^
>      drivers/net/usb/pegasus.c:298:2: note: Loop condition is false.
> Exiting loop
>              netif_dbg(pegasus, drv, pegasus->net, "%s failed\n", __func__);
>              ^
>      include/linux/netdevice.h:5350:57: note: expanded from macro 'netif_dbg'
>      #define netif_dbg(priv, type, netdev, format, args...)          \
>                                                                      ^
>      drivers/net/usb/pegasus.c:299:2: note: Returning without writing to
> '*retdata'
>              return ret;
>              ^
>      drivers/net/usb/pegasus.c:777:2: note: Returning from 'read_eprom_word'
>              read_eprom_word(pegasus, 4, &data);
>              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>      drivers/net/usb/pegasus.c:778:18: note: The left operand of '>>' is
> a garbage value
>              interval = data >> 8;

This is fixed by commit af35fc37354c ("net: pegasus: fix uninit-value in
get_interrupt_interval")


> 
> vim +/ret +461 drivers/net/usb/pegasus.c
> 
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16  439
>    ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> 440  static int enable_net_traffic(struct net_device *dev, struct
> usb_device *usb)
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16  441  {
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> 442  	pegasus_t *pegasus = netdev_priv(dev);
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> 443  	int ret;
> 8a160e2e9aeb83 drivers/net/usb/pegasus.c Petko Manolov  2021-08-03
> 444  	__u16 linkpart;
> 8a160e2e9aeb83 drivers/net/usb/pegasus.c Petko Manolov  2021-08-03
> 445  	__u8 data[4];
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16  446
>    8a160e2e9aeb83 drivers/net/usb/pegasus.c Petko Manolov  2021-08-03
> 447  	ret = read_mii_word(pegasus, pegasus->phy, MII_LPA, &linkpart);
> 8a160e2e9aeb83 drivers/net/usb/pegasus.c Petko Manolov  2021-08-03
> 448  	if (ret < 0)
> 8a160e2e9aeb83 drivers/net/usb/pegasus.c Petko Manolov  2021-08-03
> 449  		goto fail;
> 1a8deec09d12c1 drivers/net/usb/pegasus.c Petko Manolov  2016-04-27
> 450  	data[0] = 0xc8; /* TX & RX enable, append status, no CRC */
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> 451  	data[1] = 0;
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> 452  	if (linkpart & (ADVERTISE_100FULL | ADVERTISE_10FULL))
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> 453  		data[1] |= 0x20;	/* set full duplex */
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> 454  	if (linkpart & (ADVERTISE_100FULL | ADVERTISE_100HALF))
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> 455  		data[1] |= 0x10;	/* set 100 Mbps */
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> 456  	if (mii_mode)
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> 457  		data[1] = 0;
> 681f16232c49de drivers/net/usb/pegasus.c Dan Carpenter  2011-12-23
> 458  	data[2] = loopback ? 0x09 : 0x01;
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16  459
>    ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> 460  	memcpy(pegasus->eth_regs, data, sizeof(data));
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> @461  	ret = set_registers(pegasus, EthCtrl0, 3, data);
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16  462
>    ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> 463  	if (usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS ||
> efafe6fb72b2bb drivers/usb/net/pegasus.c Malte Doersam  2006-01-28
> 464  	    usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS2 ||
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> 465  	    usb_dev_id[pegasus->dev_index].vendor == VENDOR_DLINK) {
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16
> 466  		u16 auxmode;
> 8a160e2e9aeb83 drivers/net/usb/pegasus.c Petko Manolov  2021-08-03
> 467  		ret = read_mii_word(pegasus, 0, 0x1b, &auxmode);
> 8a160e2e9aeb83 drivers/net/usb/pegasus.c Petko Manolov  2021-08-03
> 468  		if (ret < 0)
> 8a160e2e9aeb83 drivers/net/usb/pegasus.c Petko Manolov  2021-08-03
>    469  			goto fail;
> 2bd647018fe1b2 drivers/net/usb/pegasus.c Petko Manolov  2013-04-25
> 470  		auxmode |= 4;
> 2bd647018fe1b2 drivers/net/usb/pegasus.c Petko Manolov  2013-04-25
> 471  		write_mii_word(pegasus, 0, 0x1b, &auxmode);
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16  472  	}
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16  473
>    8a160e2e9aeb83 drivers/net/usb/pegasus.c Petko Manolov  2021-08-03
> 474  	return 0;
> 8a160e2e9aeb83 drivers/net/usb/pegasus.c Petko Manolov  2021-08-03  475
>    fail:
> 8a160e2e9aeb83 drivers/net/usb/pegasus.c Petko Manolov  2021-08-03
> 476  	netif_dbg(pegasus, drv, pegasus->net, "%s failed\n", __func__);
> 4a1728a28a193a drivers/usb/net/pegasus.c Petko Manolov  2005-11-15
> 477  	return ret;
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16  478  }
> ^1da177e4c3f41 drivers/usb/net/pegasus.c Linus Torvalds 2005-04-16  479
> :::::: The code at line 461 was first introduced by commit
> :::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2
> 
> :::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
> :::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 


With regards,
Pavel Skripkin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3dea0c17-35cc-6a94-1478-a44ef8fe0191%40gmail.com.
