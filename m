Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBIVHTX3QKGQEYL374EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E811F94F0
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 12:55:31 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id v12sf7015009uat.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jun 2020 03:55:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592218531; cv=pass;
        d=google.com; s=arc-20160816;
        b=CjxEEEHqLOT7sLPvB5t0nWwa/rZGPsAOVrQ+sneurP9mZtDlSXv6P/d6y1OtXxewk/
         wboDzIEwhyACCRiqN8rYYGHlfPlgJFTmT1A9uGWWYCj1a2gYX83VgZfDuikaEUCuJ+kB
         7R4Tip2Q17Kns1fQwib+jBEyQDTVttZ5pNUXMNggqlSVGB3SyNBpdwchAJxPYBEcIEfs
         fzsZKcv5K71MVLcpuXtTG8GRGFLDTDB4gHUle9t9uNtdfEtyqG2hM1ZT9fCThgzmDAze
         D6zDDiUCiERZTRGUX8oDpmMpZNnzlvRSXpnU/VgPNcYBO7Z6cOfHOQWGVbz5Rlv0xou9
         GIYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lS0cFlz+9JQGPkAMrGcONgyk2Ki0oFDzUZnPFERuXyY=;
        b=InQN8/W2LlqYEEo/Qxno/J/lphbtyrgJ7HWM2zaT2MDOSXFs/qADBOogxoqaup9uPV
         nTFYsReySDoCPd/L8LN/46RbKuF/setXz1GsTTLxBuCO+HdLco6sUKtfb0yNqIPNZe/k
         W4E35Kb2GMc+fF93dUVrqE9Mvn8hv83Q5e7i1KazogE1HNDIGgZsA7zbVB81ycUKYqD8
         AVa+uWgL2ifwaYozLw42xWC6MJwLM4UEDxUd3u37zfOFRw4JxCMtGkE2TUB3rxhw3glk
         fiXQeQob4IJITD3zzV7EFmBrAP/f6jBys5K/jNvV/+kCKAy9eVqUS+NeiBRpj16U7LDI
         nvwA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bPE8lGWl;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lS0cFlz+9JQGPkAMrGcONgyk2Ki0oFDzUZnPFERuXyY=;
        b=VRNprshm+/GT13Ktb1+XBKRkXnuH1OK7DZ4ezkm5Mz2pTkzRd+CARnbPdLjkhOLZG8
         fwjBUTg37e3cQbPX1IsZIw6d19jof5HakoWKkpxZSb8an9uneM3nmrUPPUkCviB8x0he
         9yWKsI4rEH3hLwm1OZQUczULYattBdPKOQHaUpVbLPgip/PmXNPD1cJAjjRcTC02ssp5
         Jw58nTKuLMnjCYy57ErNrU6PC58jnLeg48nituNR4/WOFTS89WoZGHqQdZeqVweE5KLp
         0NVs2J9KVLpp3hCY4J0+IsFQM3J96RX5ZpC2B8cpteoIwnPYBTLInc6GZGmzE6ZG6gf6
         iy5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lS0cFlz+9JQGPkAMrGcONgyk2Ki0oFDzUZnPFERuXyY=;
        b=imYOjZeOooQjAU4kx3D583fOI2RDEMryemLu5H3Y1NM9swevIDUFi7TljF8WWMyJMu
         tFUTxU97hY7qyZSIbnGYc8OGIVs2c1SGvVdV5gYyINuwIkO00bFEh70sXdrLPgzwrjXN
         UEJDYc4sFfA+7sRnlC3DLnfDQu2mO+Tg4ggEk5MDP+MxyAA7xb/HjuLPAQi1BzYC2M7x
         c6VQxFwpUfTAp/7P8ccGAg+DzTeBx9QujuUO70zAuzu5S2stG3AlTgHCdhojRWPXDNPo
         BXu0GMkykx/Bol3l820UcZJmd8KdHjp+tETVnd6GZ+yU1ktkVWmAX4pnkvwyZ0rJqFTh
         +2AQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+FGUnHnXbndNT/AB/zNW2voht0caahrQZYv4I6Md1Rwvz4S6S
	Ki8d2mN4v/ifoJo7shiqqS8=
X-Google-Smtp-Source: ABdhPJznxkHwCnik5UOGBGv9Mvo+QoJMyNsGGCywC05McRrIbMSW4pF8ZD96IxOKF7vZvlbQ7uKVeA==
X-Received: by 2002:a9f:2375:: with SMTP id 108mr19190723uae.74.1592218530789;
        Mon, 15 Jun 2020 03:55:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:b6cf:: with SMTP id g198ls566692vkf.5.gmail; Mon, 15 Jun
 2020 03:55:30 -0700 (PDT)
X-Received: by 2002:a1f:3f92:: with SMTP id m140mr17341604vka.77.1592218530479;
        Mon, 15 Jun 2020 03:55:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592218530; cv=none;
        d=google.com; s=arc-20160816;
        b=G/cAV2VzzsF+lOp8fzjKLqo/5f4ktE/eNkKoWL7KC0txg9ZXp3nmRSsEXpMpibjIjU
         9Xh3nJsdCFGwOF+Qkjib03iq3+cOYuelR/oJjhlSDjAN4/kRlrdZEFCIfKBuscfUgiTS
         fzmKRKQ/+aFFa/f5xATKw55TC57MBM/LOHiH2q9pzzdFW9C4cm3rFHeng3NXyTHRjH7q
         tqX2xyRedroPGx6ssdEMPrMP1ewUZ6MlPT8sRa6t3ESvApJylg/RpmkMnwmbRbtOqLh/
         4QTF2dhej4gQbWSzvnndzahwpz22GRBYfmQy8bR1fe8bz8prefQszrVglKqEiVKKUY1n
         SOlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=QZ09TRnTUZtYo8zwG5SzrMTRquBo9YLpzuKVujvawUo=;
        b=FCsSXaHrLxFE1bjMfnT1UqQEsmtWtl+EMZnwB3kW4t7Pcyu0YfO7Y/W1jYUjivGBCJ
         znJ67QZ5eqYtIAhgdAiF4CLjPXTGqMq0BK+kM1VFHf3v36ReZA1TQEO31EThw/LQHdJI
         zYtLQzPdT6YRAwOZgOUEc2CvymV7CzfMJshRq6eCCYIZYJ1F6eabkpCLAddiuwUYcpAq
         IRBF74hMEaQtsmhyC58mnrG9cI3SmEGdlomDpz24p6p5wWp33JavoH1Ow6mggFULeSKu
         pLGDR28Sow00NE0hYrsW/m3TLXTIN/cYLuTJqwjLOHt14nHU974qLvhWkIY6xXxT+JgW
         V6Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bPE8lGWl;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f12si686261vsr.0.2020.06.15.03.55.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jun 2020 03:55:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 27DA32068E;
	Mon, 15 Jun 2020 10:55:28 +0000 (UTC)
Date: Mon, 15 Jun 2020 11:55:24 +0100
From: Will Deacon <will@kernel.org>
To: ndesaulniers@google.com
Cc: clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org, mark.rutland@arm.com,
	catalin.marinas@arm.com, android-kvm@google.com, broonie@kernel.org
Subject: Clang miscompiling arm64 kernel with BTI and PAC?
Message-ID: <20200615105524.GA2694@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bPE8lGWl;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Hi Nick, [+android-kvm as FYI]

I just ran into a host panic when trying to spawn a KVM virtual machine
with 5.8-rc1 on arm64 (defconfig):

(I had to hack in code to dump the regs; I'll send a patch for that shortly)

[   56.229757] Bad mode in Synchronous Abort handler detected on CPU0, code 0x34000003 -- BTI
[   56.230439] CPU: 0 PID: 279 Comm: lkvm Not tainted 5.8.0-rc1-dirty #2
[   56.230864] Hardware name: QEMU QEMU Virtual Machine, BIOS 0.0.0 02/06/2015
[   56.234182] pstate: 80000c05 (Nzcv daif -PAN -UAO BTYPE=j-)
[   56.234646] pc : kvm_vm_ioctl_check_extension_generic+0x74/0x98
[   56.235068] lr : kvm_dev_ioctl+0x94/0xbc
[   56.237544] sp : ffff800010f4bdf0
[   56.237797] x29: ffff800010f4bdf0 x28: ffff0000f9629c00 
[   56.238277] x27: 0000000000000000 x26: 0000000000000000 
[   56.238665] x25: 0000000000000000 x24: 0000000000000003 
[   56.241275] x23: 000000000000ae03 x22: 0000000000000046 
[   56.241708] x21: 00000000ffffffe7 x20: ffff0000f9621200 
[   56.242155] x19: ffff0000f9621200 x18: 0000000000000000 
[   56.242564] x17: 0000000000000000 x16: 0000000000000000 
[   56.242987] x15: 0000000000000000 x14: 0000000000000000 
[   56.245570] x13: 0000000000000000 x12: 0000000000000010 
[   56.245953] x11: ffffd68929392e14 x10: ffffd6892a17b879 
[   56.246420] x9 : 0000000000000043 x8 : 0000000000000000 
[   56.246787] x7 : 0000000000000000 x6 : 0000000000000000 
[   56.249737] x5 : 0000000000000000 x4 : 0000000000000000 
[   56.250236] x3 : 0000000000000046 x2 : 0000000000000046 
[   56.250644] x1 : 0000000000000046 x0 : 0000000000000001 
[   56.253312] Kernel panic - not syncing: bad mode
[   56.253834] CPU: 0 PID: 279 Comm: lkvm Not tainted 5.8.0-rc1-dirty #2
[   56.254225] Hardware name: QEMU QEMU Virtual Machine, BIOS 0.0.0 02/06/2015
[   56.254712] Call trace:
[   56.254952]  dump_backtrace+0x0/0x1d4
[   56.255305]  show_stack+0x1c/0x28
[   56.255647]  dump_stack+0xc4/0x128
[   56.255905]  panic+0x16c/0x35c
[   56.256146]  bad_el0_sync+0x0/0x58
[   56.256403]  el1_sync_handler+0xb4/0xe0
[   56.256674]  el1_sync+0x7c/0x100
[   56.256928]  kvm_vm_ioctl_check_extension_generic+0x74/0x98
[   56.257286]  __arm64_sys_ioctl+0x94/0xcc
[   56.257569]  el0_svc_common+0x9c/0x150
[   56.257836]  do_el0_svc+0x84/0x90
[   56.258083]  el0_sync_handler+0xf8/0x298
[   56.258361]  el0_sync+0x158/0x180
[   56.258900] SMP: stopping secondary CPUs
[   56.259594] Kernel Offset: 0x568919360000 from 0xffff800010000000
[   56.259969] PHYS_OFFSET: 0xffffb50180000000
[   56.260304] CPU features: 0x7e0152,20802028
[   56.260599] Memory Limit: none
[   56.261242] ---[ end Kernel panic - not syncing: bad mode ]---

Looking at the disassembly for kvm_vm_ioctl_check_extension_generic, it
looks like this is a compiler bug:

ffff800010032da0 <kvm_vm_ioctl_check_extension_generic>:
ffff800010032da0:       aa0003e8        mov     x8, x0
ffff800010032da4:       f102843f        cmp     x1, #0xa1
ffff800010032da8:       52800020        mov     w0, #0x1                        // #1
ffff800010032dac:       5400018c        b.gt    ffff800010032ddc <kvm_vm_ioctl_check_extension_generic+0x3c>
ffff800010032db0:       d1000c29        sub     x9, x1, #0x3
ffff800010032db4:       f101dd3f        cmp     x9, #0x77
ffff800010032db8:       540002e8        b.hi    ffff800010032e14 <kvm_vm_ioctl_check_extension_generic+0x74>  // b.pmore
ffff800010032dbc:       b0006f4a        adrp    x10, ffff800010e1b000 <vdso32_end>
ffff800010032dc0:       9121e54a        add     x10, x10, #0x879
ffff800010032dc4:       1000008b        adr     x11, ffff800010032dd4 <kvm_vm_ioctl_check_extension_generic+0x34>
ffff800010032dc8:       3869694c        ldrb    w12, [x10, x9]
ffff800010032dcc:       8b0c096b        add     x11, x11, x12, lsl #2
ffff800010032dd0:       d61f0160        br      x11

Here, the switch statement has been replaced by a jump table which we *tail
call* into. The register dump shows we're going to 0xffffd68929392e14:

ffff800010032e14:       d503233f        paciasp
ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
ffff800010032e1c:       910003fd        mov     x29, sp
ffff800010032e20:       aa0803e0        mov     x0, x8
ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
ffff800010032e28:       93407c00        sxtw    x0, w0
ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
ffff800010032e30:       d50323bf        autiasp
ffff800010032e34:       d65f03c0        ret

The problem is that the paciasp instruction is not BTYPE-compatible with BR;
it expects to be called with a branch-and-link, and so we panic. I think you
need to emit a 'bti j' here prior to the paciasp.

$ clang --version

Android (6443078 based on r383902) clang version 11.0.1 (https://android.googlesource.com/toolchain/llvm-project b397f81060ce6d701042b782172ed13bee898b79)

We currently support for this Clang 8+, but maybe we need to reconsider that
:(

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200615105524.GA2694%40willie-the-truck.
