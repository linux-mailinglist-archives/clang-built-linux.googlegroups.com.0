Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBK6GQ77AKGQEI72Z3HA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F9A2C6F29
	for <lists+clang-built-linux@lfdr.de>; Sat, 28 Nov 2020 06:42:05 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id t13sf4687295plo.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Nov 2020 21:42:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606542123; cv=pass;
        d=google.com; s=arc-20160816;
        b=xPguZlE25Mwt9Y5AxfTNsbrwtgkfbhh0RlayU3ogGM/CphndXGeWvYzgfcNkOnglY1
         4AZPnu17i/SzxEeX9CxE9X9samFnza29u94WivyXChuXemicRhjkqUyg+gjrW0Z55mBa
         hh+220S3HAi5jFU+Ycxmti/jnT27fuJZiNsovBtFp/GMD1ixQfhjk0apwg0qx553dhUy
         5DDMXdZsi+40Tn9qnix5olEAh5I15abB+W2697RWP+FooVYC4hdLw6UHS5lPCr+v02wX
         C8ZnjzpJmVa7X79bfpcyg6DPON0q1j6/Pbw4IHNJU5OCneIMWgTIdU+cnNLdnnIeACD7
         pPKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=v3p+/vhbiHFo3WdWIQ5PWAr9nMP3msgtKOKfscfXNtg=;
        b=HrD0KcznaZJjsHQPxgy/s5Ad4SZwAMA5YpvCbQ0/hkM3B7mAlhqido6fLI/kkOl79Z
         3RCZIdIfQoaBhNjSfZJMYbdh1Wmw4hopPslq/N72Fd/+62GLautRBVi2rNRrkhwlQFTR
         u1HT/GniLLWfJAZYbM0SeCvwqYwjKCXfKNdWl9pReLtvysvqfxeALqkdPtiFsW0hpA0F
         kFN9JWh0tZVgqlmwTwoZyuzOQgS6/M3jWDVgJAVABQYClAgzOGnjqw5jqKtl05/JxLLV
         lDtOZPilrqQrBEPwyJ8RyfsfXH5Vk5aZeXe87Hv0c3vDZDSDF8BH/MgvdWO71CpcK+s4
         qGcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n5e2LltH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v3p+/vhbiHFo3WdWIQ5PWAr9nMP3msgtKOKfscfXNtg=;
        b=hV9aG4fuiK2Hy52decITF6d9K+riaUVBIOQO1AXqLNpqHhP6moF5TEtD/PmwFPQ6ir
         L0EDEAigW1pSg3euMysGOjG+3fa90PdrzxTt0OULDEWzHWAf/kHolc7pwVKYzREKjHw9
         n8C+9v6CqKymRYxJzhFZ69Dej1hi4lkBwU9cPafZ+2Bg926IHLMDCWx7QwefHuXBkFCB
         B9Zqo6Yg56JzCH1j6fBVsEalqz/wQk2duYg8X1gTAjzdz1m4k3B0u/UM4Ck3WrntDjBr
         wQ8W5DEel1mtlmZqVFtDbeRb+/SbhW+9RcfBSvRRfyzz9vKItUhkGbJ8R80+nH+oKrSX
         5ejw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=v3p+/vhbiHFo3WdWIQ5PWAr9nMP3msgtKOKfscfXNtg=;
        b=LkYK6G6AaJDTX3imN8rgiAB73xfNEFmIgU+WyYayHx6podA20k21l1bW/hMz28yhMf
         dqU8O+ZToVdiHx628XKGSVLRPofcEThHnfsTRF1PlVNg30H6pX+8xujVzzNBu18oVpWi
         1hDs3zMFxFSzKcmgqYEmGJhbaQ9Ay/uwWTN+rSyFU50EHlv+RDuPDIHCncPKwRGOd2pq
         GUOn4ALZO8rSGUod7Uzg8hC5QCoWc4mH1Xus/ALCMvMUyFEWMZ/nVfm3uF7ecJ1UK8TW
         43UwG3XH4MOQQglWgKU0wDo9eqhVvh4OvmOp2hYaCAg33gV9mc1RmZRpOk2bx95hdGxY
         el4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v3p+/vhbiHFo3WdWIQ5PWAr9nMP3msgtKOKfscfXNtg=;
        b=PGiELcN6NVYB9TlYXPybLmIC7T1E6SkPTMe0paAQl3f/9rzJ0vH0fCkIXGJCAsMSl4
         pE3QW2UYsQLdG9gjLh8YRtP1b8hAdYjv9ZGZ0z1NLZJEhxZhIxA3Srpgkfs81boRJ6Ib
         6uedeKKF4akTOlXlF88RCMENSrt1MPvMP3rVHaTIzxMKlOhffNOizH0CvomJMs22ivIy
         /2Z4p1ia18SDvIdGH9A2XBtWF5ENd2yo3jXHx7meLvB8cH+18UK2MLMaJAkgBCFIhA1w
         zWMYnuiiKKdpAGW9+IgGQiHw2XnjiR/v8MEW71DowFIi4Nfci/xT4wUpnpM31vYs/yRW
         5YPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533pT/K7U4I1AdKADtBaq8C2jdnamMR0Cyiv2OgL7ty1h73Z2vD8
	XwxO9qWOW7CKisof8y3FpAM=
X-Google-Smtp-Source: ABdhPJxDb1sLa1BS1zj0owtDaOVPcSZ1bEstekeV2EVHRIHj3gX4xEM0Us3FhIJM9qh+QWnZOkrujQ==
X-Received: by 2002:a63:cd0f:: with SMTP id i15mr9478033pgg.46.1606542123287;
        Fri, 27 Nov 2020 21:42:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:15ca:: with SMTP id 193ls2691220pfv.5.gmail; Fri, 27 Nov
 2020 21:42:02 -0800 (PST)
X-Received: by 2002:a63:5941:: with SMTP id j1mr9550351pgm.59.1606542122507;
        Fri, 27 Nov 2020 21:42:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606542122; cv=none;
        d=google.com; s=arc-20160816;
        b=raTgLdyF6yXlyZfXQPalAk5ynQRq3u0R7UYYjTs6c6dj2C+3AlSnH8ohtxJz41gUDV
         cyMzErfCPyWwy9bUsGnWPV6h0+2SZ0bmu1uscqjriqbzqWnleu//+PNd20wCOlpBvXqF
         wlL2ljeVPQF88vC22TEsFU4LjFJbAg5pq2F7h7Hz18tIXl/KbkkQMDLigoUMvj9b5viw
         m7yO+eJhmZ2+69NTVm58DtccpKUESoAbNFxr3cYl2uj9+NL3Ia/OSX+nEh/DiI2T71FB
         dYCb6e6cYb4UQze/u+mWvCeTlKIsg4aE05PK1lqmpLToduRiB1u2DP0e+oBHHyPePO8g
         lZHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9Qxtp28coeWS4b5rgC0mMS+gMgp8Rl0hEEaw+rpx/Ns=;
        b=HhAoOVSgKvZS920vJy+1DzL5MnHIHWgYCpoTczo9sVIkwXU9O/QOZmK55x9Am75xNd
         Xuth9qRBTS3Wm6NxRbvqxYKyrH8TptiLTMBN/Xt5TttrNDTU2cS9ZyP1737ciZ9y9Ls+
         5lBJgSkZj1h+PbpRk7TkiHZw8rlVxI/iSIMm3W0UrnqKI91dSKl8RRTXTSWIiQ3vExjH
         FpC1Uq3VpvyOH1dq42q4uGZf6zojSpiV7Th0gZBTKCMGAT0xZ6LDLABVVE3Q74LzboZa
         dgg/S1Xq8DaUX/hTvrS/+TygY3vJr4EtSIRaNz9dh0OWJDTwWytV5/Re0oZbm7791XJY
         6XgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n5e2LltH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id mu3si643099pjb.3.2020.11.27.21.42.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Nov 2020 21:42:02 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id b8so6350647ila.13
        for <clang-built-linux@googlegroups.com>; Fri, 27 Nov 2020 21:42:02 -0800 (PST)
X-Received: by 2002:a92:5b08:: with SMTP id p8mr865045ilb.39.1606542121849;
        Fri, 27 Nov 2020 21:42:01 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id m2sm6298562ilj.24.2020.11.27.21.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 21:42:00 -0800 (PST)
Date: Fri, 27 Nov 2020 22:41:58 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>,
	linux-stable <stable@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	lkft-triage@lists.linaro.org, Sasha Levin <sashal@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	x86@vger.kernel.org
Subject: Re: [stable 4.9] PANIC: double fault, error_code: 0x0 - clang boot
 failed on x86_64
Message-ID: <20201128054158.GA3146127@ubuntu-m3-large-x86>
References: <CA+G9fYt0qHxUty2qt7_9_YTOZamdtknhddbsi5gc3PDy0PvZ5A@mail.gmail.com>
 <X79NpRIqAHEp2Lym@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <X79NpRIqAHEp2Lym@kroah.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=n5e2LltH;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Nov 26, 2020 at 07:39:33AM +0100, Greg Kroah-Hartman wrote:
> On Thu, Nov 26, 2020 at 10:14:43AM +0530, Naresh Kamboju wrote:
> > Linaro recently started building and testing with stable branches with clang.
> > Stable 4.9 branch kernel built with clang 10 boot crashed on x86 and qemu_x86.
> > We do not have base line results to compare with.
> > 
> > steps to build and boot:
> > # build kernel with tuxmake
> > # sudo pip3 install -U tuxmake
> > # tuxmake --runtime docker --target-arch x86 --toolchain clang-10
> > --kconfig defconfig --kconfig-add
> > https://builds.tuxbuild.com/1kgtX7QEDmhvj6OfbZBdlGaEple/config
> > # boot qemu_x86_64
> > # /usr/bin/qemu-system-x86_64 -cpu host -enable-kvm -nographic -net
> > nic,model=virtio,macaddr=DE:AD:BE:EF:66:14 -net tap -m 1024 -monitor
> > none -kernel kernel/bzImage --append "root=/dev/sda  rootwait
> > console=ttyS0,115200" -hda
> > rootfs/rpb-console-image-lkft-intel-corei7-64-20201022181159-3085.rootfs.ext4
> > -m 4096 -smp 4 -nographic
> > 
> > Crash log:
> > ---------------
> > [   14.121499] Freeing unused kernel memory: 1896K
> > [   14.126962] random: fast init done
> > [   14.206005] PANIC: double fault, error_code: 0x0
> > [   14.210633] CPU: 1 PID: 1 Comm: systemd Not tainted 4.9.246-rc1 #2
> > [   14.216809] Hardware name: Supermicro SYS-5019S-ML/X11SSH-F, BIOS
> > 2.2 05/23/2018
> > [   14.224196] task: ffff88026e2c0000 task.stack: ffffc90000020000
> > [   14.230105] RIP: 0010:[<ffffffff8117ec2b>]  [<ffffffff8117ec2b>]
> > proc_dostring+0x13b/0x1e0
> > [   14.238374] RSP: 0018:000000000000000c  EFLAGS: 00010297
> > [   14.243676] RAX: 00005638939fb850 RBX: 000000000000000c RCX: 00005638939fb850
> > [   14.250799] RDX: 000000000000000c RSI: 0000000000000000 RDI: 000000000000007f
> > [   14.257925] RBP: ffffc90000023d98 R08: ffffc90000023ef8 R09: 00005638939fb850
> > [   14.265049] R10: 0000000000000000 R11: ffffffff8117f9e0 R12: ffffffff82479cf0
> > [   14.272171] R13: ffffc90000023ef8 R14: ffffc90000023dd8 R15: 000000000000007f
> > [   14.279298] FS:  00007f57fbce8840(0000) GS:ffff880277880000(0000)
> > knlGS:0000000000000000
> > [   14.287384] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [   14.293120] CR2: fffffffffffffff8 CR3: 000000026d58a000 CR4: 0000000000360670
> > [   14.300243] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > [   14.307368] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > [   14.314491] Stack:
> > [   14.316504] Call Trace:
> > [   14.318955] Code: c3 49 8b 10 31 f6 48 01 da 49 89 10 49 83 3e 00
> > 74 49 41 83 c7 ff 49 63 ff 4c 89 c9 0f 1f 40 00 48 39 fe 73 36 48 89
> > c8 48 89 dc <e8> b0 9d 3a 00 85 c0 0f 85 8c 00 00 00 84 d2 74 1f 80 fa
> > 0a 74
> > [   14.338906] Kernel panic - not syncing: Machine halted.
> > [   14.344123] CPU: 1 PID: 1 Comm: systemd Not tainted 4.9.246-rc1 #2
> > [   14.350291] Hardware name: Supermicro SYS-5019S-ML/X11SSH-F, BIOS
> > 2.2 05/23/2018
> > [   14.357677]  ffff880277888e80 ffffffff81518ae9 ffff880277888e98
> > ffffffff82971a10
> > [   14.365129]  000000000000000f 0000000000000000 0000000000000086
> > ffffffff820c5d57
> > [   14.372584]  ffff880277888f08 ffffffff81175736 0000003000000008
> > ffff880277888f18
> > [   14.380038] Call Trace:
> > [   14.382481]  <#DF> [   14.384406]  [<ffffffff81518ae9>] dump_stack+0xa9/0x100
> > [   14.389641]  [<ffffffff81175736>] panic+0xe6/0x2a0
> > [   14.394432]  [<ffffffff810c9911>] df_debug+0x31/0x40
> > [   14.399389]  [<ffffffff81096312>] do_double_fault+0x102/0x140
> > [   14.405128]  [<ffffffff81ccc987>] double_fault+0x27/0x30
> > [   14.410440]  [<ffffffff8117f9e0>] ? proc_put_long+0xc0/0xc0
> > [   14.416004]  [<ffffffff8117ec2b>] ? proc_dostring+0x13b/0x1e0
> > [   14.421739]  <EOE> [   14.423703] Kernel Offset: disabled
> > [   14.427209] ---[ end Kernel panic - not syncing: Machine halted.
> > 
> > Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> > 
> > full test log,
> > https://lkft.validation.linaro.org/scheduler/job/1978901#L916
> > https://lkft.validation.linaro.org/scheduler/job/1980839#L578
> 
> Is the mainline 4.9 tree supposed to work with clang?  I didn't think
> that upstream effort started until 4.19 or so.
> 
> thanks,
> 
> greg k-h
> 

We have been building and boot testing the mainline 4.9 tree for quite
some time. This issue appears to be exposed by the rootfs that Linaro is
using for testing; ours is incredibly simple (prints the version string
then shuts down, there is no systemd or complex init).

Some initial notes, I am not sure how much time I will have to look at
this in the near future:

1. This does not happen with the same configuration file on
   linux-4.14.y.

2. This happens with the latest version of clang on linux-4.9.y.

3. Bisecting v4.9 to v4.14 will be rather difficult because clang
   support was backported to 4.9 somewhere in the 130s.

There could be a clang backport missing or a bug was unintentionally
fixed somewhere else.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201128054158.GA3146127%40ubuntu-m3-large-x86.
