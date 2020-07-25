Return-Path: <clang-built-linux+bncBCMIT47M74ARBL5A574AKGQE774KM2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4458F22D577
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Jul 2020 08:24:48 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id b13sf4952773wme.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jul 2020 23:24:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595658288; cv=pass;
        d=google.com; s=arc-20160816;
        b=fj0HPCCKTSm8lr93+DEbMTEwirCnsHizFWXEKYWbQKDYziPkY9RBtczZGe/nwyWO/3
         SqiPNgK3P5biQey7LiqHLHJOWiYT3X+MzTRT3OE3akJcXQbgJvuyoSNWPKzyCCVqgqCu
         EeRLfoPdFygeC6gKdgGwNlU3d2IDQg3NsofbQkvhtwyf4tUyT/pnWCyt66yvBCNYjF1H
         Flja5oqKi9qBUKzM2L7DyeqI76IWzh63+5cF5o4Drzz+fXZJTqNlqVy6wPanK74tRkUK
         jJeSB80wno3SAiuqCE7l44YAJkeNzNplFi9a0N+wdq2iFEfRla4jBV8nJykB5G9FSP1V
         tmrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=fFrgPdCP2LgJze6SwIqnbY+OyEdIbhwcoSGOj4F0Duo=;
        b=NtPlXpFPaj/Szr65oiUr+nVaU9odVI1BCGoY0+ZcGDlTyEWF3vc61nvJsoMvSp4VZk
         FIbgR2iXW/yzfX8hD+05vGo+YjtTDCpf5IYN7YAc7V2B1huBPgMw7h0XH+JD3qmeK0/3
         ojL7Xw3kMF+Y5UKtkOCBug9COe2g4kYMRuOsc0xSihBUsT60+AU+slh2mbD7M2VTpQc6
         GCDb/D8e+Ny7z0QBpAqXx0LBSFKJdbWzinpMPe10OW/7A+7V0bgzXaY/LzRjt5eNgK0P
         XvP9njtu+UCZimT3Y0Vie9gUadpFfdiK6Vw5J85CcHPDTt8ORjbG3PtQDZYqzz7VZKQk
         4dOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="gi/r339o";
       spf=pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=balbif@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fFrgPdCP2LgJze6SwIqnbY+OyEdIbhwcoSGOj4F0Duo=;
        b=tEBC+8BL8Ve+4tX2gI1gazpdGKQuETyHsJOLh+1gc+shXQ7RAjuyHJWjxIVRpxZHne
         NjERzMBwQoDc7uez5b9Yh+NYdPuz5c4gNfXHjwoUV79dXScQcA0qBHsoh6gdgYHnjq7L
         QitOfW/MlRl3tBRJ/DmwS8esDlj2yJyUHjpCQsMbYcYay3c8kV+WXLIDcejaqAXZdXpI
         OsOnsYOse+qyAfdR12PhfxUpcvjr3mMO65yVl01N2qoT1Ejgu+9FwyTYRlFEfdG4gSwj
         TPjWXB6QzCWrb05F6jK8SB1jDe8IpDLzDTxMBlGPKqGxdkj9LeHf0Pm5yx02JsWWVNBz
         AP2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fFrgPdCP2LgJze6SwIqnbY+OyEdIbhwcoSGOj4F0Duo=;
        b=Uuyt1WKFhG+Q7Bf/Ai+Cx0cqI2peLAYH3KOzqB4YttHSxY4RaXAU1V8DC8JJtG9L/y
         OQrqBps8fgnUV63cU82XxKjAXF8gZlu1guwZ0kGGnLEVl0CjRvrdvYAMi8xC39XPqGem
         WH8jwtr+L+yuudwc/EqaUlEDHEQS4ub4m59ZCCP/FIB4yFfxRTVu2zCjlxKNSNOECV12
         lhSC6sPLUb5fppb/yKD6HUk7IZ+QGCU//nO8l1psKSIWpIA+UL/s9v3cCv+3IB5mu0hG
         r1UYm/kJoieuHIWHw4qGKV/NUktR/r1n20wecHlDnGQ3vFxvTk4ktzukgoSUtm2Y13fS
         wPZQ==
X-Gm-Message-State: AOAM533Xa1Wt18A2OI+UqHlur0sRdhfPHZQqyZZWV0c+ni4LC+joHsrN
	8sTKV6kbJjntNm9ITqOSwDc=
X-Google-Smtp-Source: ABdhPJxgh1amwN8kyOQ/sEohoa7tEmyfJVl4j9wMRIkGBxsYk5+wG4gyHlh+z7iInkeH19arsxz/aw==
X-Received: by 2002:a5d:438c:: with SMTP id i12mr12228895wrq.210.1595658287984;
        Fri, 24 Jul 2020 23:24:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:81f4:: with SMTP id 107ls2233592wra.2.gmail; Fri, 24 Jul
 2020 23:24:47 -0700 (PDT)
X-Received: by 2002:a5d:4687:: with SMTP id u7mr12232962wrq.357.1595658287503;
        Fri, 24 Jul 2020 23:24:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595658287; cv=none;
        d=google.com; s=arc-20160816;
        b=B9mPrPjowuAvY+c3K1RnawEcskCmGwYxxMZyEd9Gd3syT9Pur8YiRxQHevlQno5+Yc
         3XvYNOdZiQui8VH/Y4VWzZgJpcag8aIe9OWBP1h3gchSWkrUZi0Q5FKZQ1seN6mMpkhF
         q5MfOAqED2fFC72DQXAGNuPA0h9Msh/ez/KYVehDQ9OSXc+V5yOrPi9IXaHaDdXbFlsZ
         n2fCT4rcSY4IHtksiA1cODNtMjgUaSOlQiQYrQVKELfD+u/U4wr1vPKlIuIdophhLa1J
         lQEDLu+NocqPN3uv3QBfVJuke8zINZJdTB4LUTe93+IXxYhPLU87u5YP5rO3JIwx/52e
         OXqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=bDN8VcCw6Y6mP0rf5Aftyr2APB1lxp7tkcQtR3vKdhY=;
        b=hrXZl1iUPG0EDkNriJ0/JoPzoZOuN84kLErEMuoQ+93gk5zQaNQqv6ym2PvUwPnHTr
         rQgPFXSltZeAmvZdvLHnIiIYAe+8Np7NfkH5jOXd9ei42R09NqMVHoycn0Z0wxJ2slYl
         LIOP/Q0BTpEURlN0oWpRK2V/pOZunxtnD6V1JMnaZ3CJ7pZi+STeoTzdGME/QkAEBEyK
         GnvFDBi4nfkS8dWxSceuG0e3M51llibjtrywfsxjnPVtw6dyHY6EO7NJb9IhEuxmLysj
         kDSl5iMj3BVS60Z7ms8NyAnIEh+b9at4mMRVu5TcYF8vM/Ju9Y5BdaixvwFgrxy7h4o4
         myOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="gi/r339o";
       spf=pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=balbif@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id 14si362282wmk.1.2020.07.24.23.24.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jul 2020 23:24:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id q4so12123977lji.2
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jul 2020 23:24:47 -0700 (PDT)
X-Received: by 2002:a2e:160f:: with SMTP id w15mr6083786ljd.28.1595658286903;
        Fri, 24 Jul 2020 23:24:46 -0700 (PDT)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi. [91.155.214.58])
        by smtp.gmail.com with ESMTPSA id c4sm1102567lfs.27.2020.07.24.23.24.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 24 Jul 2020 23:24:46 -0700 (PDT)
Sender: Felipe Balbi <balbif@gmail.com>
From: Felipe Balbi <balbi@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Nathan Chancellor <natechancellor@gmail.com>
Cc: Minas Harutyunyan <hminas@synopsys.com>, Felipe Balbi <felipe.balbi@linux.intel.com>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [PATCH] usb: dwc2: Fix parameter type in function pointer prototype
In-Reply-To: <20200725061947.GA1051290@kroah.com>
References: <20200725060354.177009-1-natechancellor@gmail.com> <20200725061947.GA1051290@kroah.com>
Date: Sat, 25 Jul 2020 09:24:42 +0300
Message-ID: <87lfj8nmc5.fsf@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
X-Original-Sender: balbif@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="gi/r339o";       spf=pass
 (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::244 as
 permitted sender) smtp.mailfrom=balbif@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

--=-=-=
Content-Type: text/plain; charset="UTF-8"

Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:

> On Fri, Jul 24, 2020 at 11:03:54PM -0700, Nathan Chancellor wrote:
>> When booting up on a Raspberry Pi 4 with Control Flow Integrity checking
>> enabled, the following warning/panic happens:
>> 
>> [    1.626435] CFI failure (target: dwc2_set_bcm_params+0x0/0x4):
>> [    1.632408] WARNING: CPU: 0 PID: 32 at kernel/cfi.c:30 __cfi_check_fail+0x54/0x5c
>> [    1.640021] Modules linked in:
>> [    1.643137] CPU: 0 PID: 32 Comm: kworker/0:1 Not tainted 5.8.0-rc6-next-20200724-00051-g89ba619726de #1
>> [    1.652693] Hardware name: Raspberry Pi 4 Model B Rev 1.2 (DT)
>> [    1.658637] Workqueue: events deferred_probe_work_func
>> [    1.663870] pstate: 60000005 (nZCv daif -PAN -UAO BTYPE=--)
>> [    1.669542] pc : __cfi_check_fail+0x54/0x5c
>> [    1.673798] lr : __cfi_check_fail+0x54/0x5c
>> [    1.678050] sp : ffff8000102bbaa0
>> [    1.681419] x29: ffff8000102bbaa0 x28: ffffab09e21c7000
>> [    1.686829] x27: 0000000000000402 x26: ffff0000f6e7c228
>> [    1.692238] x25: 00000000fb7cdb0d x24: 0000000000000005
>> [    1.697647] x23: ffffab09e2515000 x22: ffffab09e069a000
>> [    1.703055] x21: 4c550309df1cf4c1 x20: ffffab09e2433c60
>> [    1.708462] x19: ffffab09e160dc50 x18: ffff0000f6e8cc78
>> [    1.713870] x17: 0000000000000041 x16: ffffab09e0bce6f8
>> [    1.719278] x15: ffffab09e1c819b7 x14: 0000000000000003
>> [    1.724686] x13: 00000000ffffefff x12: 0000000000000000
>> [    1.730094] x11: 0000000000000000 x10: 00000000ffffffff
>> [    1.735501] x9 : c932f7abfc4bc600 x8 : c932f7abfc4bc600
>> [    1.740910] x7 : 077207610770075f x6 : ffff0000f6c38f00
>> [    1.746317] x5 : 0000000000000000 x4 : 0000000000000000
>> [    1.751723] x3 : 0000000000000000 x2 : 0000000000000000
>> [    1.757129] x1 : ffff8000102bb7d8 x0 : 0000000000000032
>> [    1.762539] Call trace:
>> [    1.765030]  __cfi_check_fail+0x54/0x5c
>> [    1.768938]  __cfi_check+0x5fa6c/0x66afc
>> [    1.772932]  dwc2_init_params+0xd74/0xd78
>> [    1.777012]  dwc2_driver_probe+0x484/0x6ec
>> [    1.781180]  platform_drv_probe+0xb4/0x100
>> [    1.785350]  really_probe+0x228/0x63c
>> [    1.789076]  driver_probe_device+0x80/0xc0
>> [    1.793247]  __device_attach_driver+0x114/0x160
>> [    1.797857]  bus_for_each_drv+0xa8/0x128
>> [    1.801851]  __device_attach.llvm.14901095709067289134+0xc0/0x170
>> [    1.808050]  bus_probe_device+0x44/0x100
>> [    1.812044]  deferred_probe_work_func+0x78/0xb8
>> [    1.816656]  process_one_work+0x204/0x3c4
>> [    1.820736]  worker_thread+0x2f0/0x4c4
>> [    1.824552]  kthread+0x174/0x184
>> [    1.827837]  ret_from_fork+0x10/0x18
>> 
>> CFI validates that all indirect calls go to a function with the same
>> exact function pointer prototype. In this case, dwc2_set_bcm_params
>> is the target, which has a parameter of type 'struct dwc2_hsotg *',
>> but it is being implicitly cast to have a parameter of type 'void *'
>> because that is the set_params function pointer prototype. Make the
>> function pointer protoype match the definitions so that there is no
>> more violation.
>> 
>> Cc: stable@vger.kernel.org
>
> Why does this matter for stable kernels, given that CFI is not in any
> kernel tree yet?

remove stable while applying to testing/next.

-- 
balbi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87lfj8nmc5.fsf%40kernel.org.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl8b0CoACgkQzL64meEa
mQbl2A/9FcHRXOjDIl2shSObm/ZhWLO5RHK5dNUeWzwC1oJKTZvpTfha2957bBv8
jZe5I3TcTc1D6hcqGPxyo+KXQW7oisebo+FXEUXBzYEVQ7bKXjVCpRPNUrcbm2OZ
kZjQj9hQfODzYXg2PffTZa7Qz+4U/NuVCzES+ag+y2It9MuV+uJVak+AiQKnIpmp
X+Hbte6OwLfzxgO6huTqUb16GVxM6AhOU4mu1iFN5HzqhhYDtVs8hzYA8vKkSzGP
vy/Yxp1YHaxIzYESwiH3fzBaHFlDnH49zy36mkQEq++gWvEqMhh/wmX8Im9a7sSb
S0aDeK2B9DNeh2or9g74iWJvExJh+ZzVHbnO5Kw0gH8KUU7b1LAsDSX1mh6o1AeD
uzKpe3TOXTh9z3VUhNckEIXeIKHG6RoB9WP+DJnzRS+ySmOYtDeCeM5VI0euO5E8
Y3SHO0CSghq2JoI/phqpxrm45AQmCqGqyB4162rO0rjkQi1xZmi+2i+akeYRCCnS
ZujfYT6bbK6z2tSBgtg5l1V12nf2m+m7f9xDFjQaG7j8oCZ9naDazGSPb2DnpZBf
kbnZua+ygYbzGwIO73fPrdUIXE3vZLiyWwTBOce1uJ3mdyvuAtKaani1j4awHirr
u0BKFkcaiAr1sHdedh1+QOKPDW3ks+nbUsJcZ4tcMb6It2bBXt0=
=Q70p
-----END PGP SIGNATURE-----
--=-=-=--
