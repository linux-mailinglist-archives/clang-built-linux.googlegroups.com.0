Return-Path: <clang-built-linux+bncBAABBSH2YCDAMGQEAZPYIAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id D23803AE3F5
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 09:18:33 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id y17-20020ad445b10000b029027389e9530fsf1741676qvu.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 00:18:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624259912; cv=pass;
        d=google.com; s=arc-20160816;
        b=AWFWrBVd5uHM2LuE8vdeT2bC6YdMa7yy962zg4D1TkE5FCJBuztFXZDrGTiWYgKoVJ
         GKp+G6lfHytI9JvEnyOhb9DnMQH1I2H/ecduUxdr6bi+Ne7kamW7w59ghW1detER4jXF
         GjqNr6W5tdyiUh1lmhKB/d3BePlF9TwoY52QeovK908CW+fv1vy7pUu/R2k1SxDABUcz
         7edpKm3QHkzYs0DL/v8xWGldARhu/tcSzboxBvUxW7YHArHw4mjuWrZLNqnQ0LjDioaP
         rb334use4ReAv0gfIZpCrD9pYeIkIOu+npPwLPm07wFYyMZqpnMgCcYHL1ccglo3843l
         WEew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:cc:references:to:subject:sender:dkim-signature;
        bh=E4YMIiLY2L8kQbg6c2i/aVSFOIXPcz0S+R9NglwWJ1c=;
        b=ihCvr8aspRqiAK5nhC/N50ik8SwkPszhAYXLvw9U/z48fpHkF2eHeFTnQSsprzIs30
         8fsac87rMLvgriSotkuOYDYgxv0MoWosYpiAYQAmtAYBeCX3Opp0Vn399wBf8mEer09z
         ELrKcV1scPMRda+C8JgAX5oiZMsBibuBnQSgWnz8jZrb0mQSS4X0mwqj2osdLsv/pLMU
         ZFG5GYQKvqEg/u+p85kBV9owe+1NIkENaG8ggZZY78RfpmkUS+rJFYQOS/xlgjP5kFW9
         ZHm3v3NXRLEcQnhlSAXVJIQ4PB3sk5/XZGQ9jusRi96EAbl5CzFknxA71jW5aKSCuogh
         XAbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of liudongdong3@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=liudongdong3@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E4YMIiLY2L8kQbg6c2i/aVSFOIXPcz0S+R9NglwWJ1c=;
        b=HN8qL2oT4sUMYHszvhEl58hMk4/tDSlOhm89mrHawV2gS1KJNLqbz2yWThy5kZkkTd
         KCk+xnDL6y5wl/JdQiFvWEsr54+IiOzhwUyf6zXHbHna+g7VsVtb5xNAJI7f1l21bgq8
         Db3DII3Tqw5B9OwxUM2cxGZz5j8XhyM7v5cJwVMcdLH9S2bucWBozBApgTGgNJRDg/k0
         f8E0aWzW9YHTZpmluXPnoBfVi6WeHMMRrn+kXcKqHqh8Nkl9Eod98JZrSXQq5m/EdjSB
         rmx/SSNLAMYRlpfGReoSFSQpX8hXw+p3oEALEBYEEYRnH0daBVgpaOwfll2Habmq0nRd
         SBbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E4YMIiLY2L8kQbg6c2i/aVSFOIXPcz0S+R9NglwWJ1c=;
        b=fQ9EzMJ2C2mS7f6wcPBEV2VGUJFmtbQXfar6jvH5NCH5VGOTkAM+TTfM+/qcUbrKUO
         14N1B7QSbxrMv+n7qO+ud67ChYvIK4FpPtUgui25EElEAZxaDwM1B/oY9avEabGBI0+q
         AV0RWDbU1wEsZO1DoY+VeN8qe7ROUXbFpYrhCwcs/H9/k7XHJFvzs8RAyp/H4AKRofk9
         eELZ+UDLMquFhPYp6WZJD9lddleY3csKNHF6OFcLmxFctJSMlghJoYZpCxWyZfqNrZOh
         H5dd7Hvs/b/GlsOmhiOMarR14ME6ESHFqZn1JVptU9zPULL4giY22Effye68RJqRm/Gx
         Gypw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53213oCctrPcxz/mxMk+ZEAn0Gql/d/65+gOwG7iJt2bcOi4QBKL
	SQ95aF6h4FpSOBG8YEl6NpA=
X-Google-Smtp-Source: ABdhPJwpvnL+6gEhAou6Hw4shlle5Bml6xv8N5Jc7MnzBpVQx8qSE7UIHyBEtmPQ7hmYcmZd8N+v9g==
X-Received: by 2002:a25:6c04:: with SMTP id h4mr30845296ybc.122.1624259912688;
        Mon, 21 Jun 2021 00:18:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2787:: with SMTP id n129ls8640925ybn.6.gmail; Mon, 21
 Jun 2021 00:18:32 -0700 (PDT)
X-Received: by 2002:a25:b993:: with SMTP id r19mr31101793ybg.445.1624259912270;
        Mon, 21 Jun 2021 00:18:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624259912; cv=none;
        d=google.com; s=arc-20160816;
        b=fUEdEaZQh+Okd6Tnt6AgiGJM6vEsTiW9cxbtt4DkJimnuP3e1qO7+jtUHWRMXqqGye
         yVZiF4ZOmW4Bm57aMU5LASJDYnb4mLZOcI7697EE6BSVYVoKQr2ft7xjkX0mcbVBUWFc
         +0JxPddGyV1he5qBbZNT8SpedlTSzDVK+ibagq7ochQTWi1nSfUwkT1JcShZjvLo6nXU
         kUI9dcbBlmyOX/HRzkmalO+qXobpROiRfYURX4GHus55XpLawvhJMeHLmJjN38pflY4Z
         kTjbmVyp928SDXYqlarDyWlKaxaXZIsm0VPDBYozJiYC6PPxcruQeSflrtZG4drcrmr6
         REhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject;
        bh=OnfDjULH9ql5hjrcMMqc7LzDpdqSLdugeB58Wd+VIpo=;
        b=yXMlSziXdbJh+Q4l1K/0ZSu7qmeZBtb+gkBMyB/Os5qvtegx723iLCC6KcFC5OaBIS
         2PBHMqfSQtuepbSMaJsYkdwfH++2p5OJva7a3uaDbqSh3gtGw5S1h6J1J6zCs9pyamc7
         OMNm5bod03f1XZM4UMV0HLXRV+jRUM6OJtm3F/yNQUa6+W/OQBC/a/HPh9JZEc2a27Dz
         yKalsRgfDVe3XTjVZXMRCbVIhgo8rZ/WZmRpeXKVT0UedYWe5NgkQWEwr5fCwHYRMM56
         CiJ405q2FW3FsEmG59ACkc/AKW/QXPTZphPI2ScvHrJyAz/1LsxoBoohQND7J/lMu/Bs
         qnaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of liudongdong3@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=liudongdong3@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id e184si822602ybf.0.2021.06.21.00.18.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 00:18:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of liudongdong3@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggeme758-chm.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4G7gjW4jX5zXjQ2;
	Mon, 21 Jun 2021 15:13:19 +0800 (CST)
Received: from [10.67.103.235] (10.67.103.235) by
 dggeme758-chm.china.huawei.com (10.3.19.104) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Mon, 21 Jun 2021 15:18:27 +0800
Subject: Re: [RESEND PATCH V3 1/6] PCI: Use cached Device Capabilities
 Register
To: kernel test robot <lkp@intel.com>, <helgaas@kernel.org>,
	<hch@infradead.org>, <kw@linux.com>, <linux-pci@vger.kernel.org>,
	<rajur@chelsio.com>, <hverkuil-cisco@xs4all.nl>
References: <1623576555-40338-2-git-send-email-liudongdong3@huawei.com>
 <202106182257.tOtKvefG-lkp@intel.com>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
	<linux-media@vger.kernel.org>, <netdev@vger.kernel.org>
From: Dongdong Liu <liudongdong3@huawei.com>
Message-ID: <ecbf9316-77db-e9fa-9d6e-4aee2117986a@huawei.com>
Date: Mon, 21 Jun 2021 15:18:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <202106182257.tOtKvefG-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [10.67.103.235]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggeme758-chm.china.huawei.com (10.3.19.104)
X-CFilter-Loop: Reflected
X-Original-Sender: liudongdong3@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of liudongdong3@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=liudongdong3@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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



On 2021/6/18 22:51, kernel test robot wrote:
> Hi Dongdong,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on pci/next]
> [also build test WARNING on linuxtv-media/master linus/master v5.13-rc6 next-20210618]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Dongdong-Liu/PCI-Enable-10-Bit-tag-support-for-PCIe-devices/20210617-041115
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git next
> config: s390-randconfig-r032-20210618 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 64720f57bea6a6bf033feef4a5751ab9c0c3b401)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install s390 cross compiling tool for clang build
>         # apt-get install binutils-s390x-linux-gnu
>         # https://github.com/0day-ci/linux/commit/caefa7e6d0209bc08eb1934b58dae3aaa0b9dbba
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Dongdong-Liu/PCI-Enable-10-Bit-tag-support-for-PCIe-devices/20210617-041115
>         git checkout caefa7e6d0209bc08eb1934b58dae3aaa0b9dbba
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    In file included from drivers/media/pci/cobalt/cobalt-driver.c:18:
>    In file included from drivers/media/pci/cobalt/cobalt-driver.h:16:
>    In file included from include/linux/pci.h:39:
>    In file included from include/linux/io.h:13:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __raw_readb(PCI_IOBASE + addr);
>                              ~~~~~~~~~~ ^
>    include/asm-generic/io.h:477:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le16_to_cpu((__le16 __force)__raw_readw(PCI_IOBASE + addr));
>                                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:36:59: note: expanded from macro '__le16_to_cpu'
>    #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
>                                                              ^
>    include/uapi/linux/swab.h:102:54: note: expanded from macro '__swab16'
>    #define __swab16(x) (__u16)__builtin_bswap16((__u16)(x))
>                                                         ^
>    In file included from drivers/media/pci/cobalt/cobalt-driver.c:18:
>    In file included from drivers/media/pci/cobalt/cobalt-driver.h:16:
>    In file included from include/linux/pci.h:39:
>    In file included from include/linux/io.h:13:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
>                                                            ~~~~~~~~~~ ^
>    include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
>    #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
>                                                              ^
>    include/uapi/linux/swab.h:115:54: note: expanded from macro '__swab32'
>    #define __swab32(x) (__u32)__builtin_bswap32((__u32)(x))
>                                                         ^
>    In file included from drivers/media/pci/cobalt/cobalt-driver.c:18:
>    In file included from drivers/media/pci/cobalt/cobalt-driver.h:16:
>    In file included from include/linux/pci.h:39:
>    In file included from include/linux/io.h:13:
>    In file included from arch/s390/include/asm/io.h:75:
>    include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writeb(value, PCI_IOBASE + addr);
>                                ~~~~~~~~~~ ^
>    include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
>                                                          ~~~~~~~~~~ ^
>    include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
>                                                          ~~~~~~~~~~ ^
>    include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsb(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsw(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            readsl(PCI_IOBASE + addr, buffer, count);
>                   ~~~~~~~~~~ ^
>    include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesb(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesw(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>    include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
>            writesl(PCI_IOBASE + addr, buffer, count);
>                    ~~~~~~~~~~ ^
>>> drivers/media/pci/cobalt/cobalt-driver.c:199:7: warning: variable 'capa' is uninitialized when used here [-Wuninitialized]
>                        capa,
>                        ^~~~
>    drivers/media/pci/cobalt/cobalt-driver.h:160:71: note: expanded from macro 'cobalt_info'
>    #define cobalt_info(fmt, arg...) v4l2_info(&cobalt->v4l2_dev, fmt, ## arg)
>                                                                          ^~~
>    include/media/v4l2-common.h:67:39: note: expanded from macro 'v4l2_info'
>            v4l2_printk(KERN_INFO, dev, fmt , ## arg)
>                                                 ^~~
>    include/media/v4l2-common.h:58:44: note: expanded from macro 'v4l2_printk'
>            printk(level "%s: " fmt, (dev)->name , ## arg)
>                                                      ^~~
>    drivers/media/pci/cobalt/cobalt-driver.c:189:10: note: initialize the variable 'capa' to silence this warning
>            u32 capa;
>                    ^
>                     = 0
>    13 warnings generated.
>
>
> vim +/capa +199 drivers/media/pci/cobalt/cobalt-driver.c
>
>    184	
>    185	void cobalt_pcie_status_show(struct cobalt *cobalt)
>    186	{
>    187		struct pci_dev *pci_dev = cobalt->pci_dev;
>    188		struct pci_dev *pci_bus_dev = cobalt->pci_dev->bus->self;
>    189		u32 capa;
>    190		u16 stat, ctrl;
>    191	
>    192		if (!pci_is_pcie(pci_dev) || !pci_is_pcie(pci_bus_dev))
>    193			return;
>    194	
>    195		/* Device */
>    196		pcie_capability_read_word(pci_dev, PCI_EXP_DEVCTL, &ctrl);
>    197		pcie_capability_read_word(pci_dev, PCI_EXP_DEVSTA, &stat);
>    198		cobalt_info("PCIe device capability 0x%08x: Max payload %d\n",
>  > 199			    capa,
Will fix with pci_dev->pcie_devcap.

Thanks,
Dongdong
>    200			    get_payload_size(pci_dev->pcie_devcap & PCI_EXP_DEVCAP_PAYLOAD));
>    201		cobalt_info("PCIe device control 0x%04x: Max payload %d. Max read request %d\n",
>    202			    ctrl,
>    203			    get_payload_size((ctrl & PCI_EXP_DEVCTL_PAYLOAD) >> 5),
>    204			    get_payload_size((ctrl & PCI_EXP_DEVCTL_READRQ) >> 12));
>    205		cobalt_info("PCIe device status 0x%04x\n", stat);
>    206	
>    207		/* Link */
>    208		pcie_capability_read_dword(pci_dev, PCI_EXP_LNKCAP, &capa);
>    209		pcie_capability_read_word(pci_dev, PCI_EXP_LNKCTL, &ctrl);
>    210		pcie_capability_read_word(pci_dev, PCI_EXP_LNKSTA, &stat);
>    211		cobalt_info("PCIe link capability 0x%08x: %s per lane and %u lanes\n",
>    212				capa, get_link_speed(capa),
>    213				(capa & PCI_EXP_LNKCAP_MLW) >> 4);
>    214		cobalt_info("PCIe link control 0x%04x\n", ctrl);
>    215		cobalt_info("PCIe link status 0x%04x: %s per lane and %u lanes\n",
>    216			    stat, get_link_speed(stat),
>    217			    (stat & PCI_EXP_LNKSTA_NLW) >> 4);
>    218	
>    219		/* Bus */
>    220		pcie_capability_read_dword(pci_bus_dev, PCI_EXP_LNKCAP, &capa);
>    221		cobalt_info("PCIe bus link capability 0x%08x: %s per lane and %u lanes\n",
>    222				capa, get_link_speed(capa),
>    223				(capa & PCI_EXP_LNKCAP_MLW) >> 4);
>    224	
>    225		/* Slot */
>    226		pcie_capability_read_dword(pci_dev, PCI_EXP_SLTCAP, &capa);
>    227		pcie_capability_read_word(pci_dev, PCI_EXP_SLTCTL, &ctrl);
>    228		pcie_capability_read_word(pci_dev, PCI_EXP_SLTSTA, &stat);
>    229		cobalt_info("PCIe slot capability 0x%08x\n", capa);
>    230		cobalt_info("PCIe slot control 0x%04x\n", ctrl);
>    231		cobalt_info("PCIe slot status 0x%04x\n", stat);
>    232	}
>    233	
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ecbf9316-77db-e9fa-9d6e-4aee2117986a%40huawei.com.
