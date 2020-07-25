Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAVA574AKGQENTWQSQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D05822D574
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Jul 2020 08:24:03 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id l18sf7729872ion.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jul 2020 23:24:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595658242; cv=pass;
        d=google.com; s=arc-20160816;
        b=H4Ku7RBdk3nsByr8PGJfIGKrRa2J9I8JDvZ9rA9Rh9lkuDgNuX8pG0bP05rZNLiE3p
         5XMpdhyhR+ynLK/OT7TE2OqBY9qv0EgWHO6nUN3mfWa7hmNg7oO8OpLE+L996sGAVfDK
         L9WhnhGwF/FSh6JBHSLdp8TTt3EQ+F8atB6pfsH4eYgeB1U2prstW2riu2IM4SKXvWpW
         iwEQvpdQmn8GC5q/gZBEdovGgREvx4atASVod+5cevhQHRpQJd480Tbq4ixI8qOWM5Zu
         yw8ZnuTx8rFZ9OAbSGTAKQF17U6bC8sQvVOJF/ZTP8/Sj5NbFKcxxTsLgC5YlBoIUUHW
         vQAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=FXO3cRsCyxXwWwAnP04un2greARD6UB//O2e0hbHiVM=;
        b=E5c9FOIa8ftMSvTS/c8DNhiEoZGdYXi2anXyaLzKNCxFrXhOzbOSpZbXauXeBcnsUk
         RsXufcv5rYTYnp0HrfuIXMsRNANsBPi+9A0k6jHiyer0UwtyWj9T4DqPu6PoPCq/Di6Y
         IDZ9lsUyffrcQJ3X3tJtEqhe3LUt0n5WYyTL4G5SgZgAomsK+GR9oCeS+XALQgtbVSce
         LQ1A2jyUr0ISQbpDKx6swgSEkXurqJwcxC/m9QV4D5KQVyl1ZX7ezUKGdMmGh95lr8jF
         0MtzEExIq7gk0is44a7SK9g48MK4ZAmqHFkaYhqmIf3sqr4985aflzAc+zfJvXJxKjuE
         7IBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HM6lMpcN;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FXO3cRsCyxXwWwAnP04un2greARD6UB//O2e0hbHiVM=;
        b=JkOMp14NgCwqQg5sU2NCqwhKmwwYTI4D3qwfYtS4EgbFsYLzGuZG0TCizo+OddG6Fq
         JgHma1NsTbj3LrFZcny5GtjsydiIt3/yUsoh/ikMn7XQFTm5Z0AEwtOCKNFkBACxu5Hv
         7nbQXVJg56m5gc35R/QELPE5ghrJR/VXy4G1iKteKrf7/YDG88ZT7d4aZnoEQ5izjPRz
         e+XCccogLbiMAdFPYQae05OxvQRYEKzCBJeNam7kRO6ApbUQxykgIY1sx6/TXP/SRdBW
         GPS0a3VXNYRmxlojw4XG/MvkQg3yps5DdFQMYoTtxe3N9dayrr2vE+xbHBclsIJbgOFI
         bdMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FXO3cRsCyxXwWwAnP04un2greARD6UB//O2e0hbHiVM=;
        b=AkMjuLfodKzCnslyuGGlsjonE1b3NVxNsPBNikO3Thl9r/jhJ3uWyjhgW33bkYGPx2
         W+KoJwSjjH1pUFguhkSm86QoND+gg2Hvr0e6pBSkzA10o/AGeXWdGprqWbuWROxlyrSw
         my9mfa5JWBJlOBfKUrbfxrPkYQFcpMhaD4AB2pI8k1IDJPrdmQJUrSPjPyq0akQnZECf
         fQ8D6OLEDobie03jz2WZD8UOZHNaMC1OqvGTdaQtglhzRh7wcJ4arGb1DyhB9AEwsGPY
         Uq5uoMY/3Ivef3DbJWutR9xTdxxGU/+BuGUwXLGmYcoFB7mVCqcqxZx4BU96xCbXtA5/
         VkNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FXO3cRsCyxXwWwAnP04un2greARD6UB//O2e0hbHiVM=;
        b=YnOE24PxcXCD5uV8glQvAcn6H6sJ95VfByr+18j5KoU+DQMX04QQvJn5Vn60tst4tJ
         upCC0lkgaG0aWoR8GgCT6FdSJ1yij3k6/WBAtuUkklEZmvkNxi/wwng8IN0w2/IeKTqG
         FTwwFH0t2VPApUj2cETf6S2jgcbDo7doPfzT1m5M8cqR9tbhFIVx5WMva6HlvTL5IB3K
         4lY+g9CXDnzv08nb/DvgXGwQaVTIuDtKidk8gzVJGkM/6eT4HTY4tiHpTCY9L8lzlHo2
         0e85r6BGk1mq+4Eg9FtnlXSDmoB5WnNFx+R9clXukUo7lSaig4kNLnvvEWEim8DlrRyq
         pbyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Qaddg4gaLkk+V1OME/kBorwMUEWowZCaCNbK1ZAH9DDh/VVtX
	D8Yzcokdhr3SHFNxkv27EIw=
X-Google-Smtp-Source: ABdhPJy8wtzvteR8qv7qvbe8ErPyDwUKJXGm5A0iRDa5bXSq7SRWkfEvkeiCk3d4vcuij4ch19AwJA==
X-Received: by 2002:a92:c644:: with SMTP id 4mr2522409ill.3.1595658242079;
        Fri, 24 Jul 2020 23:24:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1082:: with SMTP id r2ls2910931ilj.8.gmail; Fri, 24
 Jul 2020 23:24:01 -0700 (PDT)
X-Received: by 2002:a92:bd07:: with SMTP id c7mr6161886ile.103.1595658241812;
        Fri, 24 Jul 2020 23:24:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595658241; cv=none;
        d=google.com; s=arc-20160816;
        b=i7bX0SoMjT0dFYyngrVaHxtAla/MXv/97E2OiracAhNUMSdl+XBEiBtRzLm7kJxFRJ
         bcBozW0WCKjbXVy4PwLbb0ryIgWd+BIed2QMiMZbWklQHRKTX55aKlFr/8kWw//G6WNB
         FPiI0G71/yRkimdX/Vp3Tald7U4IvvvR2Lqo+YGoYK/JIc33lrZ1tSVx42e+SfOF+4iF
         U1TCMiMVG3GDpnkH2v01ZT4Dc+s97GmA7Y/ZES9ZA+412lGaQpDSHK7dZq+wqSMeG+dD
         hPwzzrEQG/SIf2KbBvNDD9Yt9gs4SvWtAsLszA7/u1Zw6i2ljt7U7E40TukgbNsOEkse
         YYlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6PT1mu1xTpmCv3EUdlnK2nrXPxfD/ZZI+ZMUa6SpY7c=;
        b=k6gP90CAFZ81bSoIWf14/E1TZjrj4dG5/nFGRerVzIrMo0gODYzYcTliC9H3VYMvNv
         79oINsy2umX2EbGBCS7w8ujRnW2C+/+tcoIV+efMJoNWiPvJiCGa3aK48ij29T2dk/bb
         F4SARAhlwPUVlod9JKeCcSH391jmOLBC8OZMEIGHnBsa8kYlme68Vzas+Pz9GUEjGZbK
         ybpmmZLNqiUfPZhgi0MmpRUT8V4szeDi6OF8ryi1H7jHZxMXeWMlcZZK4XQlNO9j0WV7
         qGVw6WJhVrFBUHrR0Ok6IdBC+wKJNW4/bOzIypAQ2yP+QaSExZv+NeFfRJ6TVkB1CBvk
         ecmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HM6lMpcN;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id t7si396171ilh.2.2020.07.24.23.24.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jul 2020 23:24:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id b79so10728972qkg.9
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jul 2020 23:24:01 -0700 (PDT)
X-Received: by 2002:a05:620a:789:: with SMTP id 9mr4680773qka.199.1595658241112;
        Fri, 24 Jul 2020 23:24:01 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id q68sm9715438qke.123.2020.07.24.23.24.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2020 23:24:00 -0700 (PDT)
Date: Fri, 24 Jul 2020 23:23:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Minas Harutyunyan <hminas@synopsys.com>,
	Felipe Balbi <felipe.balbi@linux.intel.com>,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [PATCH] usb: dwc2: Fix parameter type in function pointer
 prototype
Message-ID: <20200725062359.GA457524@ubuntu-n2-xlarge-x86>
References: <20200725060354.177009-1-natechancellor@gmail.com>
 <20200725061947.GA1051290@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200725061947.GA1051290@kroah.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HM6lMpcN;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sat, Jul 25, 2020 at 08:19:47AM +0200, Greg Kroah-Hartman wrote:
> On Fri, Jul 24, 2020 at 11:03:54PM -0700, Nathan Chancellor wrote:
> > When booting up on a Raspberry Pi 4 with Control Flow Integrity checking
> > enabled, the following warning/panic happens:
> > 
> > [    1.626435] CFI failure (target: dwc2_set_bcm_params+0x0/0x4):
> > [    1.632408] WARNING: CPU: 0 PID: 32 at kernel/cfi.c:30 __cfi_check_fail+0x54/0x5c
> > [    1.640021] Modules linked in:
> > [    1.643137] CPU: 0 PID: 32 Comm: kworker/0:1 Not tainted 5.8.0-rc6-next-20200724-00051-g89ba619726de #1
> > [    1.652693] Hardware name: Raspberry Pi 4 Model B Rev 1.2 (DT)
> > [    1.658637] Workqueue: events deferred_probe_work_func
> > [    1.663870] pstate: 60000005 (nZCv daif -PAN -UAO BTYPE=--)
> > [    1.669542] pc : __cfi_check_fail+0x54/0x5c
> > [    1.673798] lr : __cfi_check_fail+0x54/0x5c
> > [    1.678050] sp : ffff8000102bbaa0
> > [    1.681419] x29: ffff8000102bbaa0 x28: ffffab09e21c7000
> > [    1.686829] x27: 0000000000000402 x26: ffff0000f6e7c228
> > [    1.692238] x25: 00000000fb7cdb0d x24: 0000000000000005
> > [    1.697647] x23: ffffab09e2515000 x22: ffffab09e069a000
> > [    1.703055] x21: 4c550309df1cf4c1 x20: ffffab09e2433c60
> > [    1.708462] x19: ffffab09e160dc50 x18: ffff0000f6e8cc78
> > [    1.713870] x17: 0000000000000041 x16: ffffab09e0bce6f8
> > [    1.719278] x15: ffffab09e1c819b7 x14: 0000000000000003
> > [    1.724686] x13: 00000000ffffefff x12: 0000000000000000
> > [    1.730094] x11: 0000000000000000 x10: 00000000ffffffff
> > [    1.735501] x9 : c932f7abfc4bc600 x8 : c932f7abfc4bc600
> > [    1.740910] x7 : 077207610770075f x6 : ffff0000f6c38f00
> > [    1.746317] x5 : 0000000000000000 x4 : 0000000000000000
> > [    1.751723] x3 : 0000000000000000 x2 : 0000000000000000
> > [    1.757129] x1 : ffff8000102bb7d8 x0 : 0000000000000032
> > [    1.762539] Call trace:
> > [    1.765030]  __cfi_check_fail+0x54/0x5c
> > [    1.768938]  __cfi_check+0x5fa6c/0x66afc
> > [    1.772932]  dwc2_init_params+0xd74/0xd78
> > [    1.777012]  dwc2_driver_probe+0x484/0x6ec
> > [    1.781180]  platform_drv_probe+0xb4/0x100
> > [    1.785350]  really_probe+0x228/0x63c
> > [    1.789076]  driver_probe_device+0x80/0xc0
> > [    1.793247]  __device_attach_driver+0x114/0x160
> > [    1.797857]  bus_for_each_drv+0xa8/0x128
> > [    1.801851]  __device_attach.llvm.14901095709067289134+0xc0/0x170
> > [    1.808050]  bus_probe_device+0x44/0x100
> > [    1.812044]  deferred_probe_work_func+0x78/0xb8
> > [    1.816656]  process_one_work+0x204/0x3c4
> > [    1.820736]  worker_thread+0x2f0/0x4c4
> > [    1.824552]  kthread+0x174/0x184
> > [    1.827837]  ret_from_fork+0x10/0x18
> > 
> > CFI validates that all indirect calls go to a function with the same
> > exact function pointer prototype. In this case, dwc2_set_bcm_params
> > is the target, which has a parameter of type 'struct dwc2_hsotg *',
> > but it is being implicitly cast to have a parameter of type 'void *'
> > because that is the set_params function pointer prototype. Make the
> > function pointer protoype match the definitions so that there is no
> > more violation.
> > 
> > Cc: stable@vger.kernel.org
> 
> Why does this matter for stable kernels, given that CFI is not in any
> kernel tree yet?
> 
> thanks,
> 
> greg k-h

It might not be available upstream but it is in all downstream Android
kernels. Furthermore, all of the previous CFI fixes I have done have
inevitably ended up in stable trees through AUTOSEL, I figured I would
save Sasha the hassle this time around. It does not personally matter to
me though, I am fine with stripping the tag since I do all of my
personal testing with mainline/next so if this is needed in stable
later due to an OEM or someone else tripping over it, it can just be
added then.

Let me know if you want me to resend it without that tag.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200725062359.GA457524%40ubuntu-n2-xlarge-x86.
