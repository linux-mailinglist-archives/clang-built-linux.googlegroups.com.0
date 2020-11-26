Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBZM27X6QKGQEEMKAUBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 346DD2C4EC6
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Nov 2020 07:38:31 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id c12sf908965pll.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Nov 2020 22:38:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606372710; cv=pass;
        d=google.com; s=arc-20160816;
        b=KqtjYQlPBOfCcUbJO7elF0tSy4qFdxvLG5noPaA2zfkwkeL8a80h5wxDPJrwcrHm1n
         Mo3qLGwZTMqynLpk0Y517rjF4K6Wr59n/QDaQrP/4u82dM5loaGPH112Y96ewF9xGL3A
         y+AFbUrxa+BkwbjZ30hkxXA6pEAwLAMa5A9v2mqYR9YPSIfkkz9nxbimcWTQyOnERje5
         4YWbDlmxvd2CUFzH7LIYLnjrlUxPMelvqqUQ0RAeOia/+APOLqdojcWvR5Wtej8883aE
         4rZZ/+JEYRxv9MGcLncNRpb6ezcI5E30MjZWyCB5An+N6Eyp5ji+bRMPiTka9I47cGFm
         fpuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yECLwbWQco4IH+yjhQmBUmowl+N56f0a9szK4SOCcXI=;
        b=e40xbZIG3NnDX41MtN2XmseblN60bbXkB8catJnioh/9bTeQ0sdBfVfto7xC6NUUbN
         hXVa+6OnJCak51hNEHUT88G3tOAmvT4dDTUwnggye1kKdBlQwH6ywJri94dBKKLUTDmW
         au+YZJSfiTRTPP5fWMbzeAFkLZMwtf8n++xzjM621egNs/ieKaq+yu3B9+Kvcey3rtOD
         T30OaAsYuCfGy9J654UEhAgXQgegkj3i/ggJ+HkC69CMiVtOdJS9hCom5aK/3KljNSz/
         tsY0R/5Ln8jOCOROyz0Mq54FdgrYbHd1Ya4jDr7hgj5ZIRxVfRZpiYkKmOMZAQuWU+5z
         IcGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=lGtp+i4Q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yECLwbWQco4IH+yjhQmBUmowl+N56f0a9szK4SOCcXI=;
        b=Nv1WHiDo2SZnVsaJuvd68juc3NZtu1DxVl/KABkkhEuwaPHeUrkdfXlYZb69RQew8g
         upKafdisLXE0eimla3r7Y42MuRFRYRUyP+LElgpiyFfHeYjZyyUZA7q/oDE0yTf6vieC
         iaG/wUT/qdYbyP2z3nII7Tsu3iacLmKvgK82DqekvuAY4hGnEl5HLsYVUS+UsOLFYSt/
         9I9SySOPet3Mt3vr8P81rnrDlyH1A5i7nWOdaDgiBXAkuNsnRV/nwnZMjFBshiZM71re
         fT0X4R1PLols5sk5cyelZBroPIK6gW2encyUxBUAIPOQWDXLl+Q5uxYl/XeJz6jzfI4u
         75Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yECLwbWQco4IH+yjhQmBUmowl+N56f0a9szK4SOCcXI=;
        b=WTWrmqTw8WwoyWaV5fW533FaV6x6XukIYzPDZ4OGPRR8uSyzrf07lY5ilOrqJG2y2P
         CH+5TXlzZncTHdEuem+V8+j2/pt/SGDPDhv5inXSZkQdgP2DwMuond8SwhclipzUT6Qs
         wdC57a7sneAfX4fBFHctRbI9D8EDSChqhnvHxXmomkqO70958jdHXoKcseVfMC/bEcVm
         MNVnap5PTA2IPV2cZjGxOZr8cJBzgDiwZMWk0eFN1GD+s03eC6TfTqn9DpKb766fANrl
         EzWnkVU8sFjnIwJHBF+AOn2YROKm0T+4vMJNgHGdXVbgzGMbiQloX7MjqLR53zRk8hgO
         DbUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5329GPZhvVmWL4pEFTbL97z1uHMIVvV6kdMhl0WcNeilIoEDIa6j
	AmwNDy6BaukvhVtRPDn3Ubs=
X-Google-Smtp-Source: ABdhPJz/KAzWyxgEIrjcQSeHAsjKDl5MAt9izSIgwN7DzpW5iXGKPwYvC3OWfIkE4hX27OJTkXQyVA==
X-Received: by 2002:a17:902:9689:b029:d8:e310:2fa2 with SMTP id n9-20020a1709029689b02900d8e3102fa2mr1605804plp.42.1606372709858;
        Wed, 25 Nov 2020 22:38:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:881:: with SMTP id q1ls520866pfj.4.gmail; Wed, 25
 Nov 2020 22:38:29 -0800 (PST)
X-Received: by 2002:a63:982:: with SMTP id 124mr1402575pgj.280.1606372709135;
        Wed, 25 Nov 2020 22:38:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606372709; cv=none;
        d=google.com; s=arc-20160816;
        b=k+UG9zbl2EUEuJmtCgn12EUREerYk2HjQ9xk0UflLRFLfW9PdYfnWHf1pReCQpsHwx
         qfnwhbL8oFDSVWdpflO94Xn1zZsim1Y7RCPMJngD1hO815RqA0a3wfYPTEALNeWYgoCf
         WkB7uX22igAD1dRd91T+Nb8/J2BdTxOTGHTQstTE2e1IjAPN2BPJ/FZTjbKEdgMc0PNG
         j4nptrjfrRE1CNohtTT5p8e2kTVnKjjXLi2LCBTuebYEIRlZ7EvUTpnLQ0AnQM3HIzjd
         kCtL45RQofJ9WQrYAzSiC5VoP+mU9beGi4+pPTSWyRUokDVdfnQ+GwzbnYIseFfVx6+C
         t6Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GLPgA80wnafl29Xio/RfMRBPw8ldmNW3pWfNEcnEnJk=;
        b=xNOfrSjyJKmzxOLEGUqfFyP2vuaLBKvuAg3DzpW1yygn2U91HvMgZVSdux77CRvpHv
         CmVPcYNZ5ytD9YUEG0NGyujZApxBmIHl/GQuIV4qw8PkIMz423DVsMbsZ5MZ3xVZacam
         vNfAoSLFi7l9JJRWesnIejJFu9Qgq9Qgc0LjWsnT/t20G57Q6vYPs2BrQ+6sNBFNRykG
         qRYg6Sl/ZX7shyvH96T6FcpFZ9yrjWiCbIM4n2ReQnxdR5ycAr9ZOHauGGifwV9ae1tV
         3ZSu82GL1qtRBv3LYfIVGSE0a3S8kncYY6cbozTny3fVLu3YBPu7L9S1BtdouDByZ1Rr
         J0Bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=lGtp+i4Q;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v8si240844pgj.1.2020.11.25.22.38.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Nov 2020 22:38:29 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 177B220DD4;
	Thu, 26 Nov 2020 06:38:27 +0000 (UTC)
Date: Thu, 26 Nov 2020 07:39:33 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: linux-stable <stable@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	lkft-triage@lists.linaro.org, Sasha Levin <sashal@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	x86@vger.kernel.org
Subject: Re: [stable 4.9] PANIC: double fault, error_code: 0x0 - clang boot
 failed on x86_64
Message-ID: <X79NpRIqAHEp2Lym@kroah.com>
References: <CA+G9fYt0qHxUty2qt7_9_YTOZamdtknhddbsi5gc3PDy0PvZ5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYt0qHxUty2qt7_9_YTOZamdtknhddbsi5gc3PDy0PvZ5A@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=lGtp+i4Q;       spf=pass
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

On Thu, Nov 26, 2020 at 10:14:43AM +0530, Naresh Kamboju wrote:
> Linaro recently started building and testing with stable branches with clang.
> Stable 4.9 branch kernel built with clang 10 boot crashed on x86 and qemu_x86.
> We do not have base line results to compare with.
> 
> steps to build and boot:
> # build kernel with tuxmake
> # sudo pip3 install -U tuxmake
> # tuxmake --runtime docker --target-arch x86 --toolchain clang-10
> --kconfig defconfig --kconfig-add
> https://builds.tuxbuild.com/1kgtX7QEDmhvj6OfbZBdlGaEple/config
> # boot qemu_x86_64
> # /usr/bin/qemu-system-x86_64 -cpu host -enable-kvm -nographic -net
> nic,model=virtio,macaddr=DE:AD:BE:EF:66:14 -net tap -m 1024 -monitor
> none -kernel kernel/bzImage --append "root=/dev/sda  rootwait
> console=ttyS0,115200" -hda
> rootfs/rpb-console-image-lkft-intel-corei7-64-20201022181159-3085.rootfs.ext4
> -m 4096 -smp 4 -nographic
> 
> Crash log:
> ---------------
> [   14.121499] Freeing unused kernel memory: 1896K
> [   14.126962] random: fast init done
> [   14.206005] PANIC: double fault, error_code: 0x0
> [   14.210633] CPU: 1 PID: 1 Comm: systemd Not tainted 4.9.246-rc1 #2
> [   14.216809] Hardware name: Supermicro SYS-5019S-ML/X11SSH-F, BIOS
> 2.2 05/23/2018
> [   14.224196] task: ffff88026e2c0000 task.stack: ffffc90000020000
> [   14.230105] RIP: 0010:[<ffffffff8117ec2b>]  [<ffffffff8117ec2b>]
> proc_dostring+0x13b/0x1e0
> [   14.238374] RSP: 0018:000000000000000c  EFLAGS: 00010297
> [   14.243676] RAX: 00005638939fb850 RBX: 000000000000000c RCX: 00005638939fb850
> [   14.250799] RDX: 000000000000000c RSI: 0000000000000000 RDI: 000000000000007f
> [   14.257925] RBP: ffffc90000023d98 R08: ffffc90000023ef8 R09: 00005638939fb850
> [   14.265049] R10: 0000000000000000 R11: ffffffff8117f9e0 R12: ffffffff82479cf0
> [   14.272171] R13: ffffc90000023ef8 R14: ffffc90000023dd8 R15: 000000000000007f
> [   14.279298] FS:  00007f57fbce8840(0000) GS:ffff880277880000(0000)
> knlGS:0000000000000000
> [   14.287384] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [   14.293120] CR2: fffffffffffffff8 CR3: 000000026d58a000 CR4: 0000000000360670
> [   14.300243] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [   14.307368] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [   14.314491] Stack:
> [   14.316504] Call Trace:
> [   14.318955] Code: c3 49 8b 10 31 f6 48 01 da 49 89 10 49 83 3e 00
> 74 49 41 83 c7 ff 49 63 ff 4c 89 c9 0f 1f 40 00 48 39 fe 73 36 48 89
> c8 48 89 dc <e8> b0 9d 3a 00 85 c0 0f 85 8c 00 00 00 84 d2 74 1f 80 fa
> 0a 74
> [   14.338906] Kernel panic - not syncing: Machine halted.
> [   14.344123] CPU: 1 PID: 1 Comm: systemd Not tainted 4.9.246-rc1 #2
> [   14.350291] Hardware name: Supermicro SYS-5019S-ML/X11SSH-F, BIOS
> 2.2 05/23/2018
> [   14.357677]  ffff880277888e80 ffffffff81518ae9 ffff880277888e98
> ffffffff82971a10
> [   14.365129]  000000000000000f 0000000000000000 0000000000000086
> ffffffff820c5d57
> [   14.372584]  ffff880277888f08 ffffffff81175736 0000003000000008
> ffff880277888f18
> [   14.380038] Call Trace:
> [   14.382481]  <#DF> [   14.384406]  [<ffffffff81518ae9>] dump_stack+0xa9/0x100
> [   14.389641]  [<ffffffff81175736>] panic+0xe6/0x2a0
> [   14.394432]  [<ffffffff810c9911>] df_debug+0x31/0x40
> [   14.399389]  [<ffffffff81096312>] do_double_fault+0x102/0x140
> [   14.405128]  [<ffffffff81ccc987>] double_fault+0x27/0x30
> [   14.410440]  [<ffffffff8117f9e0>] ? proc_put_long+0xc0/0xc0
> [   14.416004]  [<ffffffff8117ec2b>] ? proc_dostring+0x13b/0x1e0
> [   14.421739]  <EOE> [   14.423703] Kernel Offset: disabled
> [   14.427209] ---[ end Kernel panic - not syncing: Machine halted.
> 
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> 
> full test log,
> https://lkft.validation.linaro.org/scheduler/job/1978901#L916
> https://lkft.validation.linaro.org/scheduler/job/1980839#L578

Is the mainline 4.9 tree supposed to work with clang?  I didn't think
that upstream effort started until 4.19 or so.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/X79NpRIqAHEp2Lym%40kroah.com.
