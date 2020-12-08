Return-Path: <clang-built-linux+bncBCM7RP4FZYFBBS5OX37AKGQEMV7FLMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id C51BA2D2DE2
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Dec 2020 16:10:03 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id r8sf4092616wro.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Dec 2020 07:10:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607440203; cv=pass;
        d=google.com; s=arc-20160816;
        b=LqfR6v/Z5cv+wjSytWG7z8+sjuFe6ZeN5/ov0vUHZeIHnicyuQaIpUcqGQLq72jQ7N
         eEFu9pvdvqtX73YlAMlA1tDG9AAT6DWF9Ii54HpGR2pwOAUdn4s3Q4klfm1WSnq4IT9c
         w4p1R023Q7aaQEWLc7M5sfysb3fbfIgqhE9HQcNd3PYGrK7sXHk5T/cyN0Zl1NwQIsvk
         3YZtv4SFri67d/g68bFtKfY3c6eFLWleLurWnLPsmNXug9ePKZN2MOQsJaCVtUwzYYOM
         1RgmVwcI1OkjKWLSV0FsE6BHGBLq7+C4LbaoSdrLDbQVhRfEVRyma4j2TemjpIlURa9g
         84BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=72f3+W0mwPvPXNECJZdIQ2/eEpPFruOFUUyUlL2AhJU=;
        b=a6LCuIgJ1ab56o47Ea0IEy9FwQ/mS6sFCX2au32NVucGmpVyaodpTC6rOiVxNhOO3W
         eBxm1IbLjU3wMR6qdDF6SXPB7VixNVxFtZvhofCjBdhkD+2vJxrJytvbl18/hO64rlOF
         twRm7eotqoJ8RQOJ3/MyT7LvKIIB2nwP8MsdVCdZMRYwAUlpMQMKiE+b2ppEwXYmFl6Q
         zp+edXJFayJZ1ju8zy0n4OO8w/yJ3IDTScJQRS55r8fTS5gm9sFFiPN6Ud0KwzQD6DVM
         LdkMp51aL7kj2KXP8oEoynXeRJ7u/g6G2NLVYZX7eM2mTXWLNPUnsKLA4ZjicqhTYVu8
         1MAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=neutral (no key) header.i=@uniroma2.it header.s=ed201904 header.b="XI/cXizv";
       dkim=pass header.i=@uniroma2.it header.s=rsa201904 header.b=XFKEdjjT;
       spf=pass (google.com: domain of andrea.mayer@uniroma2.it designates 160.80.6.22 as permitted sender) smtp.mailfrom=andrea.mayer@uniroma2.it;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=uniroma2.it
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=72f3+W0mwPvPXNECJZdIQ2/eEpPFruOFUUyUlL2AhJU=;
        b=hUl38moAyZKRQDbm06Ks+0OvGSCpOKg3Rk1D0d3bXyLggi2mjIRSCOEelhTYECiAvO
         5l83zelOOL9CMxdWQAyYoGsp+Wyj5dTQM/sW0xMIB6gfqUyO4vT+cidAhIfxN5j5u+zA
         hA4v6jSkjKvyohnZXduuntgtMQJHU5Vn6Up6VK/7VmQCI1qClueXcXPoepjOoKeulXjS
         6wbMhOCGA+gnwnleMBvNvG6bBimkkEAQ25v0/7vSwK1AVrBNO1LDRHZ8y9GFeE4LfWDM
         oqfSrwx+3jZbyES5pCEB6Dr2u6GRwujvGy89GqMNR2WpRDuyxG9hYd/IoScde+08hvC5
         lU4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=72f3+W0mwPvPXNECJZdIQ2/eEpPFruOFUUyUlL2AhJU=;
        b=sl3E3s9G4CK86EbAdConOrg7tC1HZ8YLpllWArlbety4ljG8Cd6/C8RuUXXNdygNEh
         XkHkP9Vo3d925E+sMqR8/RVFdX2oxiBQR9mwAvFg1skVxRH5uyp7NuwFEttoTJu/UFI1
         +KP8YELmP9GxjBmRhOLGLigCUbQA5pVOxt8kQLk2o40CyWDaz7nFfzi8yRJ9KFy3z8Jl
         PjnVbptC85BARBKeRMlwbz0qYF+1MmkBWDg09WNm9w5tLyME5hSnXtF/OWRaCMmPPfYJ
         K0rEzbIDmuylRR4nDddEgPH4lBO/V6QcmRqKL1omRSuWygPoG3vevZRyhDFbUxZySx5N
         vrYA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ATd23xG+VCbp2x6irbcpJClvHf58Q9zt6HnvrppHupsPzsBqz
	/9836DzVIJ2jFuzfUd3yDUw=
X-Google-Smtp-Source: ABdhPJzZN4hzbi1V/mHZEuw1zpgF0u89NYgPcF+idwrpTQM98D4+lRwur2v3tqt6CzNvbpnnkfeE3g==
X-Received: by 2002:adf:f349:: with SMTP id e9mr26097722wrp.110.1607440203517;
        Tue, 08 Dec 2020 07:10:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:66c5:: with SMTP id k5ls3220110wrw.3.gmail; Tue, 08 Dec
 2020 07:10:02 -0800 (PST)
X-Received: by 2002:a5d:4488:: with SMTP id j8mr11339794wrq.320.1607440202498;
        Tue, 08 Dec 2020 07:10:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607440202; cv=none;
        d=google.com; s=arc-20160816;
        b=NtzXxljpxHxfoRAztdA9l2aoMK6kSOF3ZHaNSut9GrtssisWe4+KhRGEUW9ec6hi3M
         tM5OhWpvuEqXjJMGAzrPCfFM0qYY+Tm8oK9dOqXDKMx11BelkZCPt9IVgISxBYF+SPSQ
         iLa5H5tmmJWDvE0h9ttEL1SlyvvvKtgk+528b3L6r/xYJF8VTn1H7fXLJY/c0XMapYIc
         8jrGAf+whzs27zAttti936iInAI2bR24FQ6O5UEkfI2SyngahjlzQfBseDRvDyJ+RJ/0
         e1hK6hdg3+p3XtzxH9rlifur5GdYWUGbaHIbj1esah9TT56iQRz3JXQOc7UDLVTZnGNr
         EJFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=2q6OZOtGSBoEE0nYNQxdGW0eXF7buVs9/UjGbP8sn3E=;
        b=GRyDoaMzrB8FaMDtIFo/t0ckXRoIjhEo/JW5A8O6vhz9JJoXOdSf4W/HarqEohdVNi
         I8RsAeJh4cEyMdYUHJzvkpdRfkxS4BpquNjUbaHe1FXBy95Plt/K4N2Z8CATxYyFFQsi
         rkpc8+1aQ8IGsUHiwD+q+zE97Zh15bIAT8O6TWM/oStxt9anYpeZvfJaJDLiQHqU5d0f
         d7U3WBaimNrEK/7VKH5i8BCT0/8iHQEpxNYhmitiDwYpaS9prSQs2T74Vv7yHfPLAhQW
         n/UUpTDGzEusp1NyhVxW/bPMnvGVUL2eD1Rq/hGXrrc/Gs+Mn874SnmEuosx422DddeD
         1MzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=neutral (no key) header.i=@uniroma2.it header.s=ed201904 header.b="XI/cXizv";
       dkim=pass header.i=@uniroma2.it header.s=rsa201904 header.b=XFKEdjjT;
       spf=pass (google.com: domain of andrea.mayer@uniroma2.it designates 160.80.6.22 as permitted sender) smtp.mailfrom=andrea.mayer@uniroma2.it;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=uniroma2.it
Received: from smtp.uniroma2.it (smtp.uniroma2.it. [160.80.6.22])
        by gmr-mx.google.com with ESMTPS id o85si97217wme.0.2020.12.08.07.10.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Dec 2020 07:10:02 -0800 (PST)
Received-SPF: pass (google.com: domain of andrea.mayer@uniroma2.it designates 160.80.6.22 as permitted sender) client-ip=160.80.6.22;
Received: from smtpauth-2019-1.uniroma2.it (smtpauth-2019-1.uniroma2.it [160.80.5.46])
	by smtp-2015.uniroma2.it (8.14.4/8.14.4/Debian-8) with ESMTP id 0B8F9qkf015724;
	Tue, 8 Dec 2020 16:09:57 +0100
Received: from lubuntu-18.04 (unknown [160.80.103.126])
	by smtpauth-2019-1.uniroma2.it (Postfix) with ESMTPSA id A7BF7120CDF;
	Tue,  8 Dec 2020 16:09:48 +0100 (CET)
Date: Tue, 8 Dec 2020 16:09:48 +0100
From: Andrea Mayer <andrea.mayer@uniroma2.it>
To: kernel test robot <lkp@intel.com>
Cc: Andrea Mayer <andrea.mayer@uniroma2.it>, kbuild-all@lists.01.org,
        clang-built-linux@googlegroups.com,
        Linux Memory Management List
 <linux-mm@kvack.org>,
        Jakub Kicinski <kuba@kernel.org>, David Ahern
 <dsahern@kernel.org>
Subject: Re: [linux-next:master 10573/11438] drivers/net/vrf.c:1447:9:
 error: implicit declaration of function 'vrf_add_mac_header_if_unset'
Message-Id: <20201208160948.ba953242c88f3a235bb67331@uniroma2.it>
In-Reply-To: <202012081443.f0ebzTGh-lkp@intel.com>
References: <202012081443.f0ebzTGh-lkp@intel.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Virus-Scanned: clamav-milter 0.100.0 at smtp-2015
X-Virus-Status: Clean
X-Original-Sender: andrea.mayer@uniroma2.it
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=neutral (no
 key) header.i=@uniroma2.it header.s=ed201904 header.b="XI/cXizv";
       dkim=pass header.i=@uniroma2.it header.s=rsa201904 header.b=XFKEdjjT;
       spf=pass (google.com: domain of andrea.mayer@uniroma2.it designates
 160.80.6.22 as permitted sender) smtp.mailfrom=andrea.mayer@uniroma2.it;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=uniroma2.it
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

On Tue, 8 Dec 2020 14:35:45 +0800
kernel test robot <lkp@intel.com> wrote:

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   15ac8fdb74403772780be1a8c4f7c1eff1040fc4
> commit: 048939088220278b8ee5bbf3769fd2f803ca9e3e [10573/11438] vrf: add mac header for tunneled packets when sniffer is attached
> config: arm-randconfig-r033-20201208 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project a2f922140f5380571fb74179f2bf622b3b925697)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=048939088220278b8ee5bbf3769fd2f803ca9e3e
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 048939088220278b8ee5bbf3769fd2f803ca9e3e
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/net/vrf.c:1447:9: error: implicit declaration of function 'vrf_add_mac_header_if_unset' [-Werror,-Wimplicit-function-declaration]
>                    err = vrf_add_mac_header_if_unset(skb, vrf_dev, ETH_P_IP);
>                          ^
>    1 error generated.
> 
> vim +/vrf_add_mac_header_if_unset +1447 drivers/net/vrf.c
> 
>   1423	
>   1424	static struct sk_buff *vrf_ip_rcv(struct net_device *vrf_dev,
>   1425					  struct sk_buff *skb)
>   1426	{
>   1427		skb->dev = vrf_dev;
>   1428		skb->skb_iif = vrf_dev->ifindex;
>   1429		IPCB(skb)->flags |= IPSKB_L3SLAVE;
>   1430	
>   1431		if (ipv4_is_multicast(ip_hdr(skb)->daddr))
>   1432			goto out;
>   1433	
>   1434		/* loopback traffic; do not push through packet taps again.
>   1435		 * Reset pkt_type for upper layers to process skb
>   1436		 */
>   1437		if (skb->pkt_type == PACKET_LOOPBACK) {
>   1438			skb->pkt_type = PACKET_HOST;
>   1439			goto out;
>   1440		}
>   1441	
>   1442		vrf_rx_stats(vrf_dev, skb->len);
>   1443	
>   1444		if (!list_empty(&vrf_dev->ptype_all)) {
>   1445			int err;
>   1446	
> > 1447			err = vrf_add_mac_header_if_unset(skb, vrf_dev, ETH_P_IP);
>   1448			if (likely(!err)) {
>   1449				skb_push(skb, skb->mac_len);
>   1450				dev_queue_xmit_nit(skb, vrf_dev);
>   1451				skb_pull(skb, skb->mac_len);
>   1452			}
>   1453		}
>   1454	
>   1455		skb = vrf_rcv_nfhook(NFPROTO_IPV4, NF_INET_PRE_ROUTING, skb, vrf_dev);
>   1456	out:
>   1457		return skb;
>   1458	}
>   1459	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Hi all,

The vrf_add_mac_header_if_unset() is wrongly defined within a conditional
compilation block which depends on the CONFIG_IPV6 macro. Therefore, when the
CONFIG_IPV6 is not set, the function vrf_add_mac_header_if_unset() is missing
and the build process stops reporting the error.

The problem is easily solved by moving the function vrf_add_mac_header_if_unset()
out of the conditional block.

Shortly I will send the fix patch directly to "net-next".

Sorry for the inconvenience, thank you all.
Andrea

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201208160948.ba953242c88f3a235bb67331%40uniroma2.it.
