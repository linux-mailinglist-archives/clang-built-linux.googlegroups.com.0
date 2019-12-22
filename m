Return-Path: <clang-built-linux+bncBCJ2P7PB6YPRBPF673XQKGQERQW3HHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id B87AB128EEF
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Dec 2019 17:52:13 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id m7sf6433111oim.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Dec 2019 08:52:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577033532; cv=pass;
        d=google.com; s=arc-20160816;
        b=bcHBWoz3PbehDDXN3CEGDjHzrYHzT4WP33SrLDR0HZ6wcp2/N2NzmWiGY/2o4mY5M1
         ihUo1cPdbau/6tyihbY3e9saaQLWHaV9LhYkUbS8oZ7o8M+hb35hBFViPJEXKr5X36Fj
         r7JKZHbyR0i4c4Oa0h+JsimWr92/5FSpyVu5hM2D1R9ZNz4Cv9rBOpzKUZZZYWKALJLR
         iz0wX3pFKR+WmAIZvvuVK2aln9HGvWj/2Td4lmqv5EdOLU9SUUpFoHDt/y57q0e7TPgH
         qHKZi3Y+52ne8LZkXgSxanGHjIXzp9Zk3AzRyadMMTlJQd4v0y8CIswUV7qfc6MQEfGn
         XnjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=jbxGENBJdzucv9DAF1/z/272woOq3RNjSKGYSvJ1vb4=;
        b=pDKbWm4mVZE/yRna0kyU5LiIyBGfhHUFeE8R7WAkvi4vSh+8gt9XW6L6g+WK7ki3Cz
         6obrjyBNBPzC+yvi8tmUumU87Icvmnl0f6JhKp/wtA4+ZgeuFQ/hGVp6uD9SCfGlxS7g
         /zKtPXvkMWwQP6K/YVwSVv2qwrceEtOM3wXm4cbexAEUjLDkjjRDp2PGI5YfLy0J4TE2
         nB3mfCqVIhJeExYybMqI6t59rEh86wdcuIvWrtjYd52rhzdfPVtYW/nZDEPcfUo8Rc7d
         8xKCcg5yy634K++DGiK2RGLI82ce1MFqinOU6RBnyyL4+DonPux81v83pBXYdJ9D+uAC
         Ryig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FGIU1RJS;
       spf=pass (google.com: domain of alexander.duyck@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=alexander.duyck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jbxGENBJdzucv9DAF1/z/272woOq3RNjSKGYSvJ1vb4=;
        b=i+OmpeE3WokWX+AbuIQJaKQdOz3VotaEv23/fGjjGc204QJHVVkYGgkIq9uqNbUjkR
         dF/malMRRl0U1m0bGj4zvXxCty7XTHMLtO5AbXDVCSzFBHWuOt5rnw3JSXB3qkiOymRV
         KlFh1jp9qyMgjLMH3hTwtfa268BkMJGzFfE3dSWx5BdW02jm2c4fo36NWbjcuu0ih9cr
         SNBbrjmyU9BJND3uH4INFtz8zkKBFooG+qLWjFKqSgxdkmhg3qG0TnuK7ro8xyPW+fvH
         fXF93a9IrTflWVHH6T7x2H3iHeaEwjbQ14QHxPRcB8/LmQDfBXxox5Km2Obwyawi6XjW
         gZ0A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jbxGENBJdzucv9DAF1/z/272woOq3RNjSKGYSvJ1vb4=;
        b=a0mWWTwIVFBHptHMC2+Ehlz3yPJvQLFgPXOT/PKCbS+e8dV3JCUTXRSQQyltiCyRxN
         QdtfjnS0XUrx56niHI8nhhjHpDor7vezIQXp2FFokTfWmWu3Y3C7wuNO1kGGTq9oBXwp
         uo5p4cEcA6HnJs3T+MNGy3G94nBlVCwuuT69HF0hdk+7+JeRq9NK5MIjzQwvWiEj13Xz
         dSg8Oi4M2cD5Oo2A/DGSXLq5aEiLNu8AehWkr9BJRxJqI2w4QNqra9HqViDwwoR7XdRt
         RJIRrGfsfs20Su/ncj4rEJlKfS/oWJI96El3ono3qYBWFVRaPpkhJw3e9gNmQRtDb849
         suZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jbxGENBJdzucv9DAF1/z/272woOq3RNjSKGYSvJ1vb4=;
        b=etPz3Tr9u1/Qj5eYJK++BRoXw35PmbsRb0LxROXldDsF+rNAXd6rb/uOGI2arFUV7v
         04ofezwQuI+F1XIHtEakOt4E2JTSSM+d1H43yC8jvh2kyuhqECmdXnP6I9RhCYN4wZ2t
         IsvOBXW7pTegqpseq+t8LU1vtR6Sb6AXdUz0qHrSl+bJzsIQDng5A/5TPlOFjgeRyrxW
         GDT0rPDBmKwcwdUR13WfDL22l7CBSXNrAGkNjpZjTa+OH+gyO95LYBL+tHfo6hPILq1k
         gbDaNkEihPR0Vu3wpHv1PLFYKTGk3EcOvOLI5+fbCBhdfSzlvhQvs2INSnTh1yOnIn12
         whtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWZQGvIhXvXidQozxp6qsRWVg3xyj18ksu5CSlPIqh0bc5M51UG
	+ck2N8rqMmj2d/IcZASCQAI=
X-Google-Smtp-Source: APXvYqx4tkp5CDonH/o0cjgfrJCXaNZZ2YhdouE2yDUabQal6ZLfd4K2ZJQPAKv1CPruV8ata5gS4Q==
X-Received: by 2002:aca:5588:: with SMTP id j130mr5297368oib.122.1577033532320;
        Sun, 22 Dec 2019 08:52:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:469a:: with SMTP id z26ls2222145ote.8.gmail; Sun, 22 Dec
 2019 08:52:11 -0800 (PST)
X-Received: by 2002:a9d:6f85:: with SMTP id h5mr27746691otq.19.1577033531967;
        Sun, 22 Dec 2019 08:52:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577033531; cv=none;
        d=google.com; s=arc-20160816;
        b=tHHHo//fPCfy9ovaPw+AznaffXH1J+jvY3EdWnzNQKr8FVMeQI5rRCPFSiX2Rfh4QZ
         A/v0+NSTNEcj4ykoDKfSRWYs8ihwogOpDJJZ0roS7PX0tyLIDAuVYklVdTbtCQwp2uuQ
         nxfhZbei1YeVaV8nDqPJpkAzMtJ1kDG+D46Zi7mbFJ9mh/7AewJypPqy6f2736nZiKbq
         ZXQyWH4aYajvqNHYg8zDAqheJIcdbIi3H52PLPEjT8c2nxtkCkck+FuGpmSjjrhdayUO
         bHoX2PEpDO7qXafcr2wVqcZ3AsHTfJMPw9IBfWHHGGYwq2jgjWo9YK/O2nViAEIpasB0
         2B9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=r+q+0cCzz/RomIT1h762ErUkI/mh0yOGLAaQS6h5Vvw=;
        b=gqVIsQHgdH9hnsHzBgeDhwyf/+uPiOE3X2AXwRAm7JLU7SgakExyMi4RyrWSjPg5Jg
         EuVCC7voqmKIMPUX904Hi9K9ZR9JPEMFXHenCaN9kIY5UlX9aLPmCSZ824UQReM9V945
         IUkv7dxwdF7W3GxfwSXM88KavfyaIySOmMJFj59NVlkyjcN1/DWXm8AeYtyowpizq7y/
         5Z0qdHHRWDFBMC6MojN8SRlYVXI+nGaZ6Try20VmWnMWG+9BSD4OChiB5gQI8ep5WrAD
         r/yMDAXtZO2RyVhw/r5BbTDQXD6F4mz+mucGdQFs/lqA3Zio3fQnc02LYyjf5beU1fdl
         dUjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FGIU1RJS;
       spf=pass (google.com: domain of alexander.duyck@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=alexander.duyck@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id p189si568064oig.3.2019.12.22.08.52.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Dec 2019 08:52:11 -0800 (PST)
Received-SPF: pass (google.com: domain of alexander.duyck@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id v18so14116226iol.2
        for <clang-built-linux@googlegroups.com>; Sun, 22 Dec 2019 08:52:11 -0800 (PST)
X-Received: by 2002:a6b:4e08:: with SMTP id c8mr16425050iob.64.1577033531424;
 Sun, 22 Dec 2019 08:52:11 -0800 (PST)
MIME-Version: 1.0
References: <201912220313.FgL3fS3o%lkp@intel.com> <20191222032542.GA44059@ubuntu-m2-xlarge-x86>
In-Reply-To: <20191222032542.GA44059@ubuntu-m2-xlarge-x86>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Sun, 22 Dec 2019 08:52:00 -0800
Message-ID: <CAKgT0UdgFyzADHTp7AEpdbF+XZsd8YhrxcPOVSa-05t5vdBjSA@mail.gmail.com>
Subject: Re: [jkirsher-net-queue:dev-queue 5/5] drivers/net/ethernet/intel/e1000e/netdev.c:7604:7:
 warning: address of function 'down' will always evaluate to 'true'
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jeff Kirsher <jeffrey.t.kirsher@intel.com>, kbuild@lists.01.org, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kbuild test robot <lkp@intel.com>, Netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: Alexander.Duyck@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FGIU1RJS;       spf=pass
 (google.com: domain of alexander.duyck@gmail.com designates
 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=alexander.duyck@gmail.com;
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

Yes, it looks like the patch called out below reverted part of my earlier patch:
commit daee5598e491d8d3979bd4ad6c447d89ce57b446
Author: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Date:   Fri Oct 11 08:34:59 2019 -0700

    e1000e: Drop unnecessary __E1000_DOWN bit twiddling

    Since we no longer check for __E1000_DOWN in e1000e_close we can drop the
    spot where we were restoring the bit. This saves us a bit of unnecessary
    complexity.

    Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
    Tested-by: Aaron Brown <aaron.f.brown@intel.com>
    Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>

On Sat, Dec 21, 2019 at 7:37 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi Jeff,
>
> We received this build report from the 0day team with clang, seems
> legit. Mind taking a look into it?
>
> Cheers,
> Nathan
>
> On Sun, Dec 22, 2019 at 03:36:15AM +0800, kbuild test robot wrote:
> > CC: kbuild-all@lists.01.org
> > CC: intel-wired-lan@lists.osuosl.org
> > TO: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git dev-queue
> > head:   831655569c70675c1622f8c52ed271dc7fdce42f
> > commit: 831655569c70675c1622f8c52ed271dc7fdce42f [5/5] e1000e: Revert "e1000e: Make watchdog use delayed work"
> > config: arm64-defconfig (attached as .config)
> > compiler: clang version 10.0.0 (git://gitmirror/llvm_project 3ced23976aa8a86a17017c87821c873b4ca80bc2)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         git checkout 831655569c70675c1622f8c52ed271dc7fdce42f
> >         # save the attached .config to linux build tree
> >         make.cross ARCH=arm64
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/net/ethernet/intel/e1000e/netdev.c:7604:7: warning: address of function 'down' will always evaluate to 'true' [-Wpointer-bool-conversion]
> >            if (!down)
> >                ~^~~~
> >    drivers/net/ethernet/intel/e1000e/netdev.c:7604:7: note: prefix with the address-of operator to silence this warning
> >            if (!down)
> >                 ^
> >                 &
> >    1 warning generated.
> >
> > vim +7604 drivers/net/ethernet/intel/e1000e/netdev.c
> >
> >   7584
> >   7585        /**
> >   7586         * e1000_remove - Device Removal Routine
> >   7587         * @pdev: PCI device information struct
> >   7588         *
> >   7589         * e1000_remove is called by the PCI subsystem to alert the driver
> >   7590         * that it should release a PCI device.  The could be caused by a
> >   7591         * Hot-Plug event, or because the driver is going to be removed from
> >   7592         * memory.
> >   7593         **/
> >   7594        static void e1000_remove(struct pci_dev *pdev)
> >   7595        {
> >   7596                struct net_device *netdev = pci_get_drvdata(pdev);
> >   7597                struct e1000_adapter *adapter = netdev_priv(netdev);
> >   7598
> >   7599                e1000e_ptp_remove(adapter);
> >   7600
> >   7601                /* The timers may be rescheduled, so explicitly disable them
> >   7602                 * from being rescheduled.
> >   7603                 */
> > > 7604                if (!down)
> >   7605                        set_bit(__E1000_DOWN, &adapter->state);
> >   7606                del_timer_sync(&adapter->watchdog_timer);
> >   7607                del_timer_sync(&adapter->phy_info_timer);
> >   7608
> >   7609                cancel_work_sync(&adapter->reset_task);
> >   7610                cancel_work_sync(&adapter->watchdog_task);
> >   7611                cancel_work_sync(&adapter->downshift_task);
> >   7612                cancel_work_sync(&adapter->update_phy_task);
> >   7613                cancel_work_sync(&adapter->print_hang_task);
> >   7614
> >   7615                if (adapter->flags & FLAG_HAS_HW_TIMESTAMP) {
> >   7616                        cancel_work_sync(&adapter->tx_hwtstamp_work);
> >   7617                        if (adapter->tx_hwtstamp_skb) {
> >   7618                                dev_consume_skb_any(adapter->tx_hwtstamp_skb);
> >   7619                                adapter->tx_hwtstamp_skb = NULL;
> >   7620                        }
> >   7621                }
> >   7622
> >   7623                unregister_netdev(netdev);
> >   7624
> >   7625                if (pci_dev_run_wake(pdev))
> >   7626                        pm_runtime_get_noresume(&pdev->dev);
> >   7627
> >   7628                /* Release control of h/w to f/w.  If f/w is AMT enabled, this
> >   7629                 * would have already happened in close and is redundant.
> >   7630                 */
> >   7631                e1000e_release_hw_control(adapter);
> >   7632
> >   7633                e1000e_reset_interrupt_capability(adapter);
> >   7634                kfree(adapter->tx_ring);
> >   7635                kfree(adapter->rx_ring);
> >   7636
> >   7637                iounmap(adapter->hw.hw_addr);
> >   7638                if ((adapter->hw.flash_address) &&
> >   7639                    (adapter->hw.mac.type < e1000_pch_spt))
> >   7640                        iounmap(adapter->hw.flash_address);
> >   7641                pci_release_mem_regions(pdev);
> >   7642
> >   7643                free_netdev(netdev);
> >   7644
> >   7645                /* AER disable */
> >   7646                pci_disable_pcie_error_reporting(pdev);
> >   7647
> >   7648                pci_disable_device(pdev);
> >   7649        }
> >   7650
> >
> > ---
> > 0-DAY kernel test infrastructure                 Open Source Technology Center
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201912220313.FgL3fS3o%25lkp%40intel.com.
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKgT0UdgFyzADHTp7AEpdbF%2BXZsd8YhrxcPOVSa-05t5vdBjSA%40mail.gmail.com.
