Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBBE6574AKGQEZJIL57A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6065622D56B
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Jul 2020 08:19:50 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id v13sf5944576oor.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jul 2020 23:19:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595657989; cv=pass;
        d=google.com; s=arc-20160816;
        b=woqR9sI7pyXG2aaNMazE4BP5pf/1REgoq5IBnAyAnXGcRfaVzO+nds/90+CNvvHaT+
         2gATSel3geYywQxsSqhvO4OPu2OZeCEOehUx4iPXNB8m3lZQRi/Xgg7zkMfx0g8hXln7
         7gzYrEIPDl9K502Yc8Egc9WTJlNWJVTZIvzZH1Azyj4ph/0xs0CW8R09O6E3Iz3dTF2b
         2R6CmFGo63KgvoAYCuWdiCQKUEKtBcQngrYo90ivWOPmNK8G0J4zgJe07GhhQTOWGUNx
         X8KbsdeGig45iUTdxe998T2XDELkF7WfausfKuVHKmYh7cGELWp0Ddl7zGqo91/AV+cw
         bUzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=9yxgsY07ikUMIQF8gqw7uXtYe31lABBdx6uOP8Uj7O4=;
        b=b19uAuKGyCs7D7yTaQdaUPE4Vo4T9fLG+57SkQikXIyITrOZqBbbsQ2Zy7xBSgCOtP
         QMiPe8sxLiooaetqk7Gm/RZRz+BN9r6bQ9xJ/Tc3P52abnjiNOaUx8GcK1G/kReuLPtL
         DUQob0qJhjpF0GoSpVbjJaAEKfY08NWRu72/P3Iln9GiT1XeSsOJTowvn5IjqYpe/Y+4
         ZM/8BW2FEGkdV1ORKvssZu4CIsQ35x/6z7PI443mXGe/hQUMGXXSVmp/coWHYPffVgM0
         uQRt8ADuoIUngF3jskxkTWSc5XCXC7Oei91gG2N1LTSxdUNTvNSLdoylcT1SZsL3hMpF
         eiTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Xf1x+ibd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9yxgsY07ikUMIQF8gqw7uXtYe31lABBdx6uOP8Uj7O4=;
        b=JECna0qWiQIkpThNriWkVVfAgOWt2a08Lq8pbdeZqAQoDkc+n5JrvQvIm+IIMwRobk
         gDcQt7aYM6AC5Thh2SkHdHitHKGCRoICFKDtu8VjP3CkIk+bNmBLTfhjt6WRFbF2s8vj
         cFqFTJQt5ecixs7BTJqpDeCahWHndimM7wOWP7PyVukM6/6YuNeGvMNXx8/hcP0P0591
         0GfdN3vvMrtqPVBcuexyHi7BL1ZF9n8iwnfx/BZnCovmhQsXA5jE4Zxx8v1quWjUEww/
         GfLEPjuQL8jfanvcsJYH4ks644Hg0rsFB37gOMbR20pyJ1UCyE1X105YHYxw7zDk6L6y
         z53g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9yxgsY07ikUMIQF8gqw7uXtYe31lABBdx6uOP8Uj7O4=;
        b=Jn8j9y7TIBgOVOPkQmBNJ3xMB4IRBDZ+hbmpcbCah4JZHU9lsBc13BjEbuXqiGCdNR
         hhApFxKrnGwnQWkuyk5MBjCGuher/H0o/aq4TuKZUfuHe425o7VonJSGEI1kncwYp9FE
         L23CcLBySNHGwSHU+cUrHX4cGqrqw4uQcW846KjPN8OS/XVssGnyJ9UBdgt8M0yBLoEK
         DKyTUp+2sUjY4LcJCnPqQ3kJI/OsKYJw33p2fiolWSdhL4r1M68OeL33G+BmyKUN8W4J
         VWiIBRs2r27cQkXqKEG1C7OwhEWxBYbxrJxrD+JQQumWpWGWgtSlAGzimV8dG2+mPTzu
         VpSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533AczavZaD2bSAyMubQqH7gTtlRjFL8JoWAjRbyYRgowAU2NZGo
	m2lvh2m/YeuxdeiZHdcbBbE=
X-Google-Smtp-Source: ABdhPJxuqioH3I0+WvsQ30aM3Xl0PMJlUVGA6F3L+FepYh2vz1RuNn6a1xcTZ6tIqgcv2VdNSTdqlg==
X-Received: by 2002:aca:4786:: with SMTP id u128mr10436420oia.165.1595657988810;
        Fri, 24 Jul 2020 23:19:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:644a:: with SMTP id m10ls2293646otl.7.gmail; Fri, 24 Jul
 2020 23:19:48 -0700 (PDT)
X-Received: by 2002:a9d:3a65:: with SMTP id j92mr12092978otc.14.1595657988395;
        Fri, 24 Jul 2020 23:19:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595657988; cv=none;
        d=google.com; s=arc-20160816;
        b=cFubryssY1PbHUxNvkGgn6z6jyy8NE4phLhD+g3Zc+nEagk0HMguPs0fPMYCHuU0lO
         168ufVJxzSujOv1bsHNQPGzfln1Wnsk0jG4Ls1G0a7O6WTk35owbkJ6i3+wpkKRyUm2m
         hs/9806P1hwa9TwNa1Ei+xpwOFt1pJaNp9k0eYrJEe4ZTVlr0+Y0JtET/Cgk0ZqDchUn
         Qxl+HhWA1WRKbpqobXQIwJZEPHHbwSsHXb41He28KXxc20oS0woIFrWSwcXUo0+oV+Os
         CDa5+lfxXcpgCWp9Id+nxSCGx5qQ5iXsVwRyMqoXWWJvrXrVwc2aODt8/D15LN7dDeJ5
         Bcmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WbFiLfAFDh56nszjTCmr0YqAAqOzV/bvLpzu37XiDRc=;
        b=rL5jnLyGH5gdNCc32niUVKp64hnjCStDCDCkkfTMGZtK4LvFgAg3wAlrGOuIcqy8k8
         4BRI1kdpLkBsOGLRAGk0tcU2d6IryiYkRKOjJTzIx2TO7Re+61DZ2x7UO9EddnpEa2h8
         /NlLRubgbh4x9K44lAqNJW+M39lq0pBex3u0xuRu2DW+rbr8phx9lFOACEYXD5Om138T
         U3elTFupONxXRWoUsgAtn9wbbxp2EXlo+kCR8L/EgnQ7VMrTu+613bxct6ut1D+hdKj6
         g5RsV+PTWvQEIzColwyvqQN7Wj71kfSRo/VYn6u4dW5HBGRP5YCnxUdHh61Vu6QkMC6X
         Rpnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Xf1x+ibd;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m23si505184ooe.0.2020.07.24.23.19.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Jul 2020 23:19:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D8A56206EB;
	Sat, 25 Jul 2020 06:19:46 +0000 (UTC)
Date: Sat, 25 Jul 2020 08:19:47 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Minas Harutyunyan <hminas@synopsys.com>,
	Felipe Balbi <felipe.balbi@linux.intel.com>,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [PATCH] usb: dwc2: Fix parameter type in function pointer
 prototype
Message-ID: <20200725061947.GA1051290@kroah.com>
References: <20200725060354.177009-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200725060354.177009-1-natechancellor@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Xf1x+ibd;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Fri, Jul 24, 2020 at 11:03:54PM -0700, Nathan Chancellor wrote:
> When booting up on a Raspberry Pi 4 with Control Flow Integrity checking
> enabled, the following warning/panic happens:
> 
> [    1.626435] CFI failure (target: dwc2_set_bcm_params+0x0/0x4):
> [    1.632408] WARNING: CPU: 0 PID: 32 at kernel/cfi.c:30 __cfi_check_fail+0x54/0x5c
> [    1.640021] Modules linked in:
> [    1.643137] CPU: 0 PID: 32 Comm: kworker/0:1 Not tainted 5.8.0-rc6-next-20200724-00051-g89ba619726de #1
> [    1.652693] Hardware name: Raspberry Pi 4 Model B Rev 1.2 (DT)
> [    1.658637] Workqueue: events deferred_probe_work_func
> [    1.663870] pstate: 60000005 (nZCv daif -PAN -UAO BTYPE=--)
> [    1.669542] pc : __cfi_check_fail+0x54/0x5c
> [    1.673798] lr : __cfi_check_fail+0x54/0x5c
> [    1.678050] sp : ffff8000102bbaa0
> [    1.681419] x29: ffff8000102bbaa0 x28: ffffab09e21c7000
> [    1.686829] x27: 0000000000000402 x26: ffff0000f6e7c228
> [    1.692238] x25: 00000000fb7cdb0d x24: 0000000000000005
> [    1.697647] x23: ffffab09e2515000 x22: ffffab09e069a000
> [    1.703055] x21: 4c550309df1cf4c1 x20: ffffab09e2433c60
> [    1.708462] x19: ffffab09e160dc50 x18: ffff0000f6e8cc78
> [    1.713870] x17: 0000000000000041 x16: ffffab09e0bce6f8
> [    1.719278] x15: ffffab09e1c819b7 x14: 0000000000000003
> [    1.724686] x13: 00000000ffffefff x12: 0000000000000000
> [    1.730094] x11: 0000000000000000 x10: 00000000ffffffff
> [    1.735501] x9 : c932f7abfc4bc600 x8 : c932f7abfc4bc600
> [    1.740910] x7 : 077207610770075f x6 : ffff0000f6c38f00
> [    1.746317] x5 : 0000000000000000 x4 : 0000000000000000
> [    1.751723] x3 : 0000000000000000 x2 : 0000000000000000
> [    1.757129] x1 : ffff8000102bb7d8 x0 : 0000000000000032
> [    1.762539] Call trace:
> [    1.765030]  __cfi_check_fail+0x54/0x5c
> [    1.768938]  __cfi_check+0x5fa6c/0x66afc
> [    1.772932]  dwc2_init_params+0xd74/0xd78
> [    1.777012]  dwc2_driver_probe+0x484/0x6ec
> [    1.781180]  platform_drv_probe+0xb4/0x100
> [    1.785350]  really_probe+0x228/0x63c
> [    1.789076]  driver_probe_device+0x80/0xc0
> [    1.793247]  __device_attach_driver+0x114/0x160
> [    1.797857]  bus_for_each_drv+0xa8/0x128
> [    1.801851]  __device_attach.llvm.14901095709067289134+0xc0/0x170
> [    1.808050]  bus_probe_device+0x44/0x100
> [    1.812044]  deferred_probe_work_func+0x78/0xb8
> [    1.816656]  process_one_work+0x204/0x3c4
> [    1.820736]  worker_thread+0x2f0/0x4c4
> [    1.824552]  kthread+0x174/0x184
> [    1.827837]  ret_from_fork+0x10/0x18
> 
> CFI validates that all indirect calls go to a function with the same
> exact function pointer prototype. In this case, dwc2_set_bcm_params
> is the target, which has a parameter of type 'struct dwc2_hsotg *',
> but it is being implicitly cast to have a parameter of type 'void *'
> because that is the set_params function pointer prototype. Make the
> function pointer protoype match the definitions so that there is no
> more violation.
> 
> Cc: stable@vger.kernel.org

Why does this matter for stable kernels, given that CFI is not in any
kernel tree yet?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200725061947.GA1051290%40kroah.com.
