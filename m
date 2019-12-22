Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOOE7PXQKGQETFU4URQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0B0128C77
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Dec 2019 04:25:46 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id a5sf10241006ybo.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Dec 2019 19:25:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576985145; cv=pass;
        d=google.com; s=arc-20160816;
        b=s+4p22u0jRBMcb8BvkeZ4tMaReMF76Qeh+G4lvgwkjI1KugxCc72d7FY+gGjbik06T
         gO6VOKXF/+OS76VlyD+lzs/xMYDgwpou6RvU9eAt/G0obaHkpq3XuJGOY3kQEe2YptXB
         nbhjDrmMWyTr0wue/48Q4klCKbtJr+OQApM0eKIqpGD8HI9AjrBUCxXLe/mjNRsWiswS
         x5daTJ3D582E8a0+meNjQ3nUF2YD5cT6+fwgWzN6katZYi70fWDk2MBw4xzjZQkKVNY9
         A9tDpJELBSnSA2O7xSJ5zYT+Q2FjQ9XXrpkK8t0qRyZ1C5wFe+o66jgF6m3t9oLBaV0y
         t8aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Vn8esj42aSFJqTMgvCaDBtPAZGlxaes5wxKQonif9Pk=;
        b=NPHIfKVIdiwbseIo4TSaFmcjNJyXH+q8yphzqYk4Du/mPt8l8lKtpNpS8alNmF47Ag
         gWUK5p8aXdGHuUxA4kAeizw1GyidbZLti8eguDvF5f2omjUjct52nFRP0wUsJjO4HxdL
         TuOhAuB2Pgg3/WTga/Agj8BkMvDDEH3fvXugk44ASir3KifLrxidQ4q/hy76ZisKKNII
         QKUlgTLE60olkwftWcMfR/iP8ggvwOCLzMkMytpzrkIQ7qENM8n8JsTH7hqWpg0HQivR
         k2zmOlFHunEHKkxagK+n2uw5ZuP/jniXLxeN5/KQQH3chdzqudMJOOw74UjfJRc09NZm
         Wq4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OHn9iykO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vn8esj42aSFJqTMgvCaDBtPAZGlxaes5wxKQonif9Pk=;
        b=IfaNuAnESZlgw5XT/Ryjp4wLDkZooNAFu++lct1FTIb3xsI7XqAXP4fUBnAJitMsCQ
         AdJVCsHBvEiwe/LGHx1gb8pt73EWOBRBvwGlJ7NEKh1x32AYK8Fte2wtA9JQbK08vX5z
         rArkGOfbZEbwqhP21BO0OWwloH3X4oQ5Z7eD+OiUe+q55r4jBXwVUHWNCZm32qFoZddq
         /f+IY03zySZAjoBiJzfjfHs7eNSE/43EXB0OBR9+0TcgAO8nBa8S0sWx7+f1WKLmtQIm
         V0y4/Q2+HxHNjwLFjbf7NxL7Ok+ZnQ0ibYyWYrXjO7kDG/AQWleaREBKKGNA0+EGDvbk
         DBXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vn8esj42aSFJqTMgvCaDBtPAZGlxaes5wxKQonif9Pk=;
        b=oI5260724O8OrMFLVXr8FdugQJzIDBzmOFmMKGm89dJXkVt2NbFY+RbDfCPuCEsjFZ
         yy1yXdtarx/rxWRRNMrX3Le8MJ55K7umvr8Bl2ZSJQbkl6rqEjqN0Y55QJoiOnpVP4i4
         GCzGAC4neSCOgbhF1gFSGUxWFBQBr46WiKc38VBNcF8/akkrW7NCyr/wQ9veybU75KnR
         wms7mnqVMpJ+JmTMz8ArhyterF9diNRpTV3eVfQnev6rT4efIyfpzpXWEs/ib7BQBnTD
         U8p2q6pgQDesEegQsoSfvNHtkai2hx3nSvMOPy2rr+k+HrfiJ4LmdWweaLgT517crr1e
         s25g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Vn8esj42aSFJqTMgvCaDBtPAZGlxaes5wxKQonif9Pk=;
        b=fuh9kOEq0itCzFCdpq0rOF5qjE518CDPOOaqd7X02B7bZ83OUkAC6tLSxVmjBxU3ip
         9HB/+Vo0xqgpeJMGoBSN3FlWPnjbbq/JpqQN/VGFaDv+XABIw5+0lza0tgLya4Pr707J
         v/6OoLyIZGA8iQjla1O0Zz/12flDI8DARwh0zSi2GeipmFAXhe6tKoWWGl77kOosn08c
         0nKB3absFZm/PuB1YnO9n8qR6c/OTivSknMWMOEQm0Bg62OXnTviZa7sD5jvW0/9bwk4
         KaHcYlytCksPceyRbGOmWhl61dIOHia0v5mhxZTd33pK42CbOVNc4ksdsD/tovIBLxHh
         LA8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWc5an1M9YQd7ZGFCWqJJ5EdncI7qRgbctr/VjyNx4X0M53ecAM
	hQrSJogUvEHlWSR5Y8WnjgE=
X-Google-Smtp-Source: APXvYqz7uIg3dexytjgBvM/re5sTC0q/VcSy4X73+UYxXO/M7NQX1SRJY0NY0Tde4FLkwXgAGaJbgg==
X-Received: by 2002:a25:7d03:: with SMTP id y3mr15462961ybc.147.1576985145341;
        Sat, 21 Dec 2019 19:25:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d08f:: with SMTP id h137ls1936106ybg.10.gmail; Sat, 21
 Dec 2019 19:25:44 -0800 (PST)
X-Received: by 2002:a25:2493:: with SMTP id k141mr17505929ybk.16.1576985144909;
        Sat, 21 Dec 2019 19:25:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576985144; cv=none;
        d=google.com; s=arc-20160816;
        b=T6N+SfiNpxm7yimDltkfwAu+nav5qZqVLnBas1MxCEd0Nb53JWbDct1eGQBbGgwQOg
         qfMPzuZd51xdpkI2gQLWU1K11Z/l3415DUAwbzt4qxcP+jAOewHCWBBIltT5zVPwKtsV
         PP1eBD3fkuRU8aNIHeYMvy7voT4ZEpWZ5IcaCkyDR+c9pZIT9dROH3njT/0x1g+np+8f
         ADLB6IfdzIXcooXcAgZuyYao7K6Z6N+SEqPQLdsoNZ4TYNYgG43MCSQq3o6VxPXFEIhu
         nO7Xldz1JqvIxATxWzSbkzNCtnN/Purxzrt/7ZFUCAHTbYFm0wW+vAfgaYB5BSTBZG7h
         VN/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=DJi2qrk5ym9fE8ZTEdz0RS4uJ2R4rLim5ar2kTNsPOg=;
        b=nqgzFQT7trz/rM56lFM44MC6veUPX3UNw8Q1qlzkvOTRMSp1vWB4STsv/RlJZBqEv7
         AuA+M9xmzZVPy03B7hQs0E7SvL62t53cCetHLlAXrsJhmB+JPgCO3qQ14L7gbEn3Q0q4
         4zs+6XREUrjOQJslqUq9M1HkQDgyv9BSwogaflC3KfyiteOLx/jpg8uL1M3y8avkx2e2
         X+rhMEBa8aQY6yZux3ITJDGhiDKZ2McdM4zkygwg0m2o+GavC6vPobxntADmSrWPFr3A
         oNVcVs3XPlFUiqVHR8gH0oeSOpNXFox+J3jGmet2Q2pizydJiVVPfvps/G68ljccCioX
         YBsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OHn9iykO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id z5si693528ywg.5.2019.12.21.19.25.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Dec 2019 19:25:44 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id 19so4923083otz.3
        for <clang-built-linux@googlegroups.com>; Sat, 21 Dec 2019 19:25:44 -0800 (PST)
X-Received: by 2002:a05:6830:2057:: with SMTP id f23mr20822545otp.110.1576985144279;
        Sat, 21 Dec 2019 19:25:44 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id v14sm5402749oto.16.2019.12.21.19.25.43
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 21 Dec 2019 19:25:43 -0800 (PST)
Date: Sat, 21 Dec 2019 20:25:42 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>, netdev@vger.kernel.org
Subject: Re: [jkirsher-net-queue:dev-queue 5/5]
 drivers/net/ethernet/intel/e1000e/netdev.c:7604:7: warning: address of
 function 'down' will always evaluate to 'true'
Message-ID: <20191222032542.GA44059@ubuntu-m2-xlarge-x86>
References: <201912220313.FgL3fS3o%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201912220313.FgL3fS3o%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OHn9iykO;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Jeff,

We received this build report from the 0day team with clang, seems
legit. Mind taking a look into it?

Cheers,
Nathan

On Sun, Dec 22, 2019 at 03:36:15AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> CC: intel-wired-lan@lists.osuosl.org
> TO: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/net-queue.git dev-queue
> head:   831655569c70675c1622f8c52ed271dc7fdce42f
> commit: 831655569c70675c1622f8c52ed271dc7fdce42f [5/5] e1000e: Revert "e1000e: Make watchdog use delayed work"
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 3ced23976aa8a86a17017c87821c873b4ca80bc2)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 831655569c70675c1622f8c52ed271dc7fdce42f
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/net/ethernet/intel/e1000e/netdev.c:7604:7: warning: address of function 'down' will always evaluate to 'true' [-Wpointer-bool-conversion]
>            if (!down)
>                ~^~~~
>    drivers/net/ethernet/intel/e1000e/netdev.c:7604:7: note: prefix with the address-of operator to silence this warning
>            if (!down)
>                 ^
>                 &
>    1 warning generated.
> 
> vim +7604 drivers/net/ethernet/intel/e1000e/netdev.c
> 
>   7584	
>   7585	/**
>   7586	 * e1000_remove - Device Removal Routine
>   7587	 * @pdev: PCI device information struct
>   7588	 *
>   7589	 * e1000_remove is called by the PCI subsystem to alert the driver
>   7590	 * that it should release a PCI device.  The could be caused by a
>   7591	 * Hot-Plug event, or because the driver is going to be removed from
>   7592	 * memory.
>   7593	 **/
>   7594	static void e1000_remove(struct pci_dev *pdev)
>   7595	{
>   7596		struct net_device *netdev = pci_get_drvdata(pdev);
>   7597		struct e1000_adapter *adapter = netdev_priv(netdev);
>   7598	
>   7599		e1000e_ptp_remove(adapter);
>   7600	
>   7601		/* The timers may be rescheduled, so explicitly disable them
>   7602		 * from being rescheduled.
>   7603		 */
> > 7604		if (!down)
>   7605			set_bit(__E1000_DOWN, &adapter->state);
>   7606		del_timer_sync(&adapter->watchdog_timer);
>   7607		del_timer_sync(&adapter->phy_info_timer);
>   7608	
>   7609		cancel_work_sync(&adapter->reset_task);
>   7610		cancel_work_sync(&adapter->watchdog_task);
>   7611		cancel_work_sync(&adapter->downshift_task);
>   7612		cancel_work_sync(&adapter->update_phy_task);
>   7613		cancel_work_sync(&adapter->print_hang_task);
>   7614	
>   7615		if (adapter->flags & FLAG_HAS_HW_TIMESTAMP) {
>   7616			cancel_work_sync(&adapter->tx_hwtstamp_work);
>   7617			if (adapter->tx_hwtstamp_skb) {
>   7618				dev_consume_skb_any(adapter->tx_hwtstamp_skb);
>   7619				adapter->tx_hwtstamp_skb = NULL;
>   7620			}
>   7621		}
>   7622	
>   7623		unregister_netdev(netdev);
>   7624	
>   7625		if (pci_dev_run_wake(pdev))
>   7626			pm_runtime_get_noresume(&pdev->dev);
>   7627	
>   7628		/* Release control of h/w to f/w.  If f/w is AMT enabled, this
>   7629		 * would have already happened in close and is redundant.
>   7630		 */
>   7631		e1000e_release_hw_control(adapter);
>   7632	
>   7633		e1000e_reset_interrupt_capability(adapter);
>   7634		kfree(adapter->tx_ring);
>   7635		kfree(adapter->rx_ring);
>   7636	
>   7637		iounmap(adapter->hw.hw_addr);
>   7638		if ((adapter->hw.flash_address) &&
>   7639		    (adapter->hw.mac.type < e1000_pch_spt))
>   7640			iounmap(adapter->hw.flash_address);
>   7641		pci_release_mem_regions(pdev);
>   7642	
>   7643		free_netdev(netdev);
>   7644	
>   7645		/* AER disable */
>   7646		pci_disable_pcie_error_reporting(pdev);
>   7647	
>   7648		pci_disable_device(pdev);
>   7649	}
>   7650	
> 
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> 
> -- 
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201912220313.FgL3fS3o%25lkp%40intel.com.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191222032542.GA44059%40ubuntu-m2-xlarge-x86.
