Return-Path: <clang-built-linux+bncBCMIT47M74ARBPVB574AKGQEHU47SFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 9910822D57B
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Jul 2020 08:27:11 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id k1sf2837293lfm.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Jul 2020 23:27:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595658431; cv=pass;
        d=google.com; s=arc-20160816;
        b=vs07j9xQlluF3f97PxL7eNYd5iZI8NcJmW6SXXsAwgH0VdGmWaJLFAMXo5uxpVueVA
         U8vraxdMLNF/I4u5swg3nBj+JY1DYOvE8VgRXfO0ilXOFx+foeiWZffPXvqF9ROspwKT
         cW+qzaItqGAh6PgcHO14s+wBeQMDO0nNzV/oke0AR5W6B1V3d0QkB2wflAphtF3HDH+B
         LOiGBcfTMkpk/OSy1dej3UqXbcu0Y7nelAVPh6poVWqgf4z/k7jhL/KdRdbwyEGBG+CL
         vkhOfieoTM4GQRcykuoogl0CNnlUdwaVX/1r/ve4nXfTCAVZiAbjd/f2edHALfBGLTBW
         To/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=fWqOsZ8jLj+b4p24Jqk6xT7dwsA28xBTZ6gTAjRP1vA=;
        b=ltlA8xCDxDUkUNlqn/eSfFzjvei6l2cRHGT86848P+zYOgzn7EsWMuJcci2M31JpN1
         +0fTOax1DdEemU2V8aTxFPdNkjy8+Wt6aKwKn+dt5n/caB/iQ3Zqgxx2+PBSv5xa1bSS
         TlWFTETqNQV6Z0/80iD6QS6BOjz7myGG4QBBwwLFumvIZzAY2buqPjhnZg3KpXLKw8P6
         sQ76MmxyH0A/dh41RgoM59uoQKj3QRQNXhsC1ZI/EfG4kIMqXalqIpoiE7YgswDzOa4F
         mr3XFgP0HVBrdvYj9OXoB5bLxZZWS41TXN2s74NI7xSWYxRunMZMlK+eSV7Uoyo8gHok
         M4sQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d+50j1+W;
       spf=pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=balbif@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fWqOsZ8jLj+b4p24Jqk6xT7dwsA28xBTZ6gTAjRP1vA=;
        b=Bf5XujNeV6h4k1nXsc+w2loj7JzMw0ejHmbl19TUiKJEx6QNIUxWIFmce6Bml41GzE
         Hs5zdbl6AkXeHx0cmlkY1k9hz7aN33GWXkkPI8x5cc+2FEWkaNIWmlhtHFE+cHFf2MbB
         XotHQd3kcMFO8EGFQ2WCOM5Yfee4eH3tlTyhUW/RcR85QYqMzNQbIik9znUz5Yqhfyej
         KFsNLescxcyJKZRPC9VQebkxYRPZ7KQgODY8nMX3BIZnNN830V2Nc0/KsvaBbWGpZTpL
         tssxVmJTM4fKlySJ2uSybe7G1UK5sjro+3e9wUvCPAf7flMGb54P4Jd+BQG7GuUsP6Cv
         h/EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fWqOsZ8jLj+b4p24Jqk6xT7dwsA28xBTZ6gTAjRP1vA=;
        b=bXgCT8KLyB8EVrx55I94f2X8zjVC8Gf4mYhugn+lrdLhcc6kCckE5Pi3fQK3NzpHxj
         wsdy53iNx/I49MGgB3/CiAhEt2MwaKEq4IRhXqLCiBs7KbbWIF6FpbUIQ8cTzjgYalep
         CxiMQ6hm5+EwKOYrQ7j8XFjD6ntzf5GvFOXFOCW5PTrvrWjkbHTfNA0M5S81RVTZgYER
         YS2U8M3y5UC1vZaJreH+If0I8AaiOwwVposiG6EckkXj1HUH0u4dQ4hPxDeYXHSK+ot0
         IfiOAc7JdgWMsf0dRs2ovdIv6gW6cGHcSkYrP7BgyZ+iYqgsiL13G9mynmovAK8O6LqV
         9EKg==
X-Gm-Message-State: AOAM532rX17PgLzk1cZJYbk6s1d1yeRwmc8ViRpfTAHh6DXGrdPLR3AA
	OU5INwuNaKDOWr/Z8cBoWiI=
X-Google-Smtp-Source: ABdhPJzgOEypd4gosoU7TA+WA7TzogJ3LbfvX8MpapNeyn+JhXtOO50lpbZ6INNTIiGlE6np/wpSMw==
X-Received: by 2002:a2e:8707:: with SMTP id m7mr5547597lji.350.1595658431014;
        Fri, 24 Jul 2020 23:27:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:81c4:: with SMTP id s4ls2037366ljg.10.gmail; Fri, 24 Jul
 2020 23:27:10 -0700 (PDT)
X-Received: by 2002:a2e:8582:: with SMTP id b2mr6028923lji.50.1595658430459;
        Fri, 24 Jul 2020 23:27:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595658430; cv=none;
        d=google.com; s=arc-20160816;
        b=a9f3Ke9SVQXeJwzxPGZUOuJOhvznCpenga572KHwEZ1n8l6c3cwfB10gVaKXSQuEXB
         Sz9Ny+j9KJpRbmt9phI+runSIkqCrIovomEnNHhiFj5x16BfUp2Fl3dfn2XyJp3LqWrT
         7OCQZviLgcG+x81s3wrsMK781ULXb+JDJSQ2kNMz/sDqUwbmrwz+C/ZqcxnU6BR2Y7VM
         pfLflCKgroYODWWy2gkChyvF78OXK7v7FNlt8iGraJhqIBox/H7PkMBNmzoa6MnyNSZm
         /83vU/Q52mdDCZpfAqErdpAtEvAMBz13roVN+PXaRdxTyoYY+fD7JVBugO9Y1O7pxVAi
         ljpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=DZbwfaEBRgiNSMLmB+hmno1nnRXEndqEiTZ6s1uNVWA=;
        b=TDQoqMu/93vlAKcZa6iQitxKO9/jc1/Tq0JnlUcwsEk5PjdyvsPJLr3j7NvOrhVp7M
         APX7229U1nqISVZPRx99rWD/9mXRAoZZ+c0K3+IPrtEU7/Kl0tT/dbOEtJpcDuqtVf/1
         xMphP7r1S4MwS5Goo/ah27qPVBNVa3yrB1JhTal6XRbNlgx54G+YXQm4+V+9w2NJDVv6
         Nh/0OQet35VXzzmMXCKIfsdKHpjnc+GW1Ij3p6UkU9Oyl8rF3zzg5sZYPBkPsUlL34LU
         fpW/UiJi3/1yzHbBIHdKc0Hz75hTVWBurOpRW74eK7l/wql2aHizXiK3AVvls9hj1BhW
         Tcpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d+50j1+W;
       spf=pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=balbif@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id s3si140019lfc.2.2020.07.24.23.27.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Jul 2020 23:27:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of balbif@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id q6so12089389ljp.4
        for <clang-built-linux@googlegroups.com>; Fri, 24 Jul 2020 23:27:10 -0700 (PDT)
X-Received: by 2002:a2e:5cc6:: with SMTP id q189mr5431938ljb.251.1595658430105;
        Fri, 24 Jul 2020 23:27:10 -0700 (PDT)
Received: from saruman (91-155-214-58.elisa-laajakaista.fi. [91.155.214.58])
        by smtp.gmail.com with ESMTPSA id v18sm979479lfd.78.2020.07.24.23.27.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 24 Jul 2020 23:27:09 -0700 (PDT)
Sender: Felipe Balbi <balbif@gmail.com>
From: Felipe Balbi <balbi@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Minas Harutyunyan <hminas@synopsys.com>, Felipe Balbi <felipe.balbi@linux.intel.com>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, stable@vger.kernel.org
Subject: Re: [PATCH] usb: dwc2: Fix parameter type in function pointer prototype
In-Reply-To: <20200725062359.GA457524@ubuntu-n2-xlarge-x86>
References: <20200725060354.177009-1-natechancellor@gmail.com> <20200725061947.GA1051290@kroah.com> <20200725062359.GA457524@ubuntu-n2-xlarge-x86>
Date: Sat, 25 Jul 2020 09:27:05 +0300
Message-ID: <87imecnm86.fsf@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"
X-Original-Sender: balbif@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=d+50j1+W;       spf=pass
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


Hi,

Nathan Chancellor <natechancellor@gmail.com> writes:

> On Sat, Jul 25, 2020 at 08:19:47AM +0200, Greg Kroah-Hartman wrote:
>> On Fri, Jul 24, 2020 at 11:03:54PM -0700, Nathan Chancellor wrote:
>> > When booting up on a Raspberry Pi 4 with Control Flow Integrity checking
>> > enabled, the following warning/panic happens:
>> > 
>> > [    1.626435] CFI failure (target: dwc2_set_bcm_params+0x0/0x4):
>> > [    1.632408] WARNING: CPU: 0 PID: 32 at kernel/cfi.c:30 __cfi_check_fail+0x54/0x5c
>> > [    1.640021] Modules linked in:
>> > [    1.643137] CPU: 0 PID: 32 Comm: kworker/0:1 Not tainted 5.8.0-rc6-next-20200724-00051-g89ba619726de #1
>> > [    1.652693] Hardware name: Raspberry Pi 4 Model B Rev 1.2 (DT)
>> > [    1.658637] Workqueue: events deferred_probe_work_func
>> > [    1.663870] pstate: 60000005 (nZCv daif -PAN -UAO BTYPE=--)
>> > [    1.669542] pc : __cfi_check_fail+0x54/0x5c
>> > [    1.673798] lr : __cfi_check_fail+0x54/0x5c
>> > [    1.678050] sp : ffff8000102bbaa0
>> > [    1.681419] x29: ffff8000102bbaa0 x28: ffffab09e21c7000
>> > [    1.686829] x27: 0000000000000402 x26: ffff0000f6e7c228
>> > [    1.692238] x25: 00000000fb7cdb0d x24: 0000000000000005
>> > [    1.697647] x23: ffffab09e2515000 x22: ffffab09e069a000
>> > [    1.703055] x21: 4c550309df1cf4c1 x20: ffffab09e2433c60
>> > [    1.708462] x19: ffffab09e160dc50 x18: ffff0000f6e8cc78
>> > [    1.713870] x17: 0000000000000041 x16: ffffab09e0bce6f8
>> > [    1.719278] x15: ffffab09e1c819b7 x14: 0000000000000003
>> > [    1.724686] x13: 00000000ffffefff x12: 0000000000000000
>> > [    1.730094] x11: 0000000000000000 x10: 00000000ffffffff
>> > [    1.735501] x9 : c932f7abfc4bc600 x8 : c932f7abfc4bc600
>> > [    1.740910] x7 : 077207610770075f x6 : ffff0000f6c38f00
>> > [    1.746317] x5 : 0000000000000000 x4 : 0000000000000000
>> > [    1.751723] x3 : 0000000000000000 x2 : 0000000000000000
>> > [    1.757129] x1 : ffff8000102bb7d8 x0 : 0000000000000032
>> > [    1.762539] Call trace:
>> > [    1.765030]  __cfi_check_fail+0x54/0x5c
>> > [    1.768938]  __cfi_check+0x5fa6c/0x66afc
>> > [    1.772932]  dwc2_init_params+0xd74/0xd78
>> > [    1.777012]  dwc2_driver_probe+0x484/0x6ec
>> > [    1.781180]  platform_drv_probe+0xb4/0x100
>> > [    1.785350]  really_probe+0x228/0x63c
>> > [    1.789076]  driver_probe_device+0x80/0xc0
>> > [    1.793247]  __device_attach_driver+0x114/0x160
>> > [    1.797857]  bus_for_each_drv+0xa8/0x128
>> > [    1.801851]  __device_attach.llvm.14901095709067289134+0xc0/0x170
>> > [    1.808050]  bus_probe_device+0x44/0x100
>> > [    1.812044]  deferred_probe_work_func+0x78/0xb8
>> > [    1.816656]  process_one_work+0x204/0x3c4
>> > [    1.820736]  worker_thread+0x2f0/0x4c4
>> > [    1.824552]  kthread+0x174/0x184
>> > [    1.827837]  ret_from_fork+0x10/0x18
>> > 
>> > CFI validates that all indirect calls go to a function with the same
>> > exact function pointer prototype. In this case, dwc2_set_bcm_params
>> > is the target, which has a parameter of type 'struct dwc2_hsotg *',
>> > but it is being implicitly cast to have a parameter of type 'void *'
>> > because that is the set_params function pointer prototype. Make the
>> > function pointer protoype match the definitions so that there is no
>> > more violation.
>> > 
>> > Cc: stable@vger.kernel.org
>> 
>> Why does this matter for stable kernels, given that CFI is not in any
>> kernel tree yet?
>> 
>> thanks,
>> 
>> greg k-h
>
> It might not be available upstream but it is in all downstream Android
> kernels. Furthermore, all of the previous CFI fixes I have done have

If we were to accept patches in stable because some downstream kernel
needs it even though the feature isn't in upstream, Greg would have a
hard time sorting through all the patches :-)

I think this falls into the category of "downstream folks can manually
pick this into their tree".

> inevitably ended up in stable trees through AUTOSEL, I figured I would
> save Sasha the hassle this time around. It does not personally matter to
> me though, I am fine with stripping the tag since I do all of my
> personal testing with mainline/next so if this is needed in stable
> later due to an OEM or someone else tripping over it, it can just be
> added then.

Makes sense to me, thanks :-)

> Let me know if you want me to resend it without that tag.

Just applied to my testing/next without the stable tag.

-- 
balbi

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87imecnm86.fsf%40kernel.org.

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl8b0LkACgkQzL64meEa
mQb3Gw//dPZkYuwQTjzlFIZkGW8I1fmmACKfqLeZm5IwJYBiunC6jhI5cHRIXu5t
7Ph+4jZXQ4jicZ55tDaP4U8OWNN4Nk3UAA8REoroPcL6SYAp8AO1y1N9YCV6V2Sl
tA+WMDvg6guczv/sWObvnl1p9lBDKStgp2UIGBnYUKFpcOdFV+B4g1Osngi/MI9r
AnDHGFSBLtxp/WK6ZLnpI1IQaZiM+1l3/xtmrwv0wWqPCFhBHlXACevqENumBgDD
YLLOnH+66wwrK9mUwB252KhSK9PpjQphFSIiKbjJ5MmkXbUsBHocOQw4IyxksxAf
vnUA5KXzcgeGHQLGfnmZlPg9ZOEPk0VxBmXLIPkmtX+MMgASMh3Xb+NpNXWxnPMk
53OFmWpsN0AjPHjuIQlsFTeCKHZo4mbJhBQ0XhBjdc/vE70IFBsahuyHUmI/fJKo
mb5wzJFuQ6apfN9nV+YQV+bRIn8B1uJXFkOU6++I/TR7mHi4HaBSTsgL+BL3bjnp
ev3l7nng4tWNjRdNytfJ4eeyr9dIOHRcgRo9WFYRg8EbmdXlWRTioIVbDT7LaYMg
8TcD6dq6Gh0NN2JOj08iHANaUZS+dfqPhlcRekIO8T/oewjKZ8MDGTXBDZ/pT3AD
O0SRUobEKZJrxBR/DNzjkEB2ISDGhOb8mMmNJcRATzLrg9HF8Hg=
=LQjU
-----END PGP SIGNATURE-----
--=-=-=--
