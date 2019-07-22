Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB7FN3DUQKGQEEZ6FBJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 554D070A4E
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 22:05:16 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id l26sf26931913eda.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 13:05:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563825916; cv=pass;
        d=google.com; s=arc-20160816;
        b=YtJxjRvY+/JRayNzJLMw2eq9jFZJiY2EmiM+/28nrWOZpoHmelxa8tYy+p9xrZ3V8d
         1yYzY1X2UmxN2UdpX40IeAumGmE0T07UQnvOzOhrkDrHujHZj1ZgsRt8fJcuFE6POcFW
         uMYx8J9Z46ZOhzTFkPCwCBJse8oKI2C/cr1Ol9oSkl1raKBkNWn8qdTjs8pFod1mhSJv
         noWOklIqWvS4fqMbvz5yUa/wq7tWRs9aa9Rz4MZ0YqrbkZ3hNn8FK7iIrOeTROlv5/Uj
         Xs3SMeGmKcgvU1Ax6kz57l0nkIuPnRIe8A1g2rC7e5kb3UOPIU3n9oYtoHw/Jk8jLp+/
         dHaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=8lTTXleFjWHIze5h48ELoePWPdTWj8929A6mpMqIQps=;
        b=QoDbVSdLLSDQQmRTV31dsU5LgHhSLq6oCodoIE4SmYm24v8/b11z8jCw2Afd0W2x/F
         tIkYULopOGIb/b59KcZzDb0XTKnj/gn66NAAzgMUJxGHaGFr2KUsB2S+jweqY+Gien2g
         Ow75V559g2c3qGD4PvhncY5RWrQ+WYHBp8oPzveuWuXue4l/1zt2MSfXxh02yvFKnJ+X
         RhIgetjVXmt8aLhM63pR0839DwSdN0QGaO4e/T9imCZtAghkeWsE9XFzhKpzRxUXxDWC
         MkHHmsX+AGaFWw78uEIuT8tZpvXnWeEctqyqW2FcZz+tKn7bLpK02KcdNvgUgIZ6cb4o
         sBRQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vUDM8Akh;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8lTTXleFjWHIze5h48ELoePWPdTWj8929A6mpMqIQps=;
        b=WTh9EDmCoupKPO/0ccyNeQZHyjTRZifxxsEf7+Ljbczyw792sKR9+EjPV4asAfkffW
         RCpaq9aenC6OqrKi1wIm17dpzcFoUo+8ljrUAssnunq0oLlflVJrfLS+ZwHcQdKYHdjm
         FVVjIXPlyXIOOAvCuKOeSGnODeR1aKHhmoAuDXihhw8wWCA8J86Mbd/TNnV5VRV4XDPp
         aO7YAR7kvSMeHoCS9A6UDgiw4NkXZ4z7OOk/QcqQgDcnoSpi4b5XkPWKxJttxC6lkn+Y
         FYBKrlRtGdo1nzyFY3LN2nCWogF9TfBDlOZ36AI0G6ENLVdQ+DWPDMmw1qE/yEDpEJ0K
         x78g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8lTTXleFjWHIze5h48ELoePWPdTWj8929A6mpMqIQps=;
        b=iVeAEh3RFaU/4Ad7xvNHf1RwogarJ9cOHLLonYOvXe+kr7/H8+RH+k0D+bI9depA2d
         V/iyfGq+OwyzrORdbkPYComiy+FhZc5jTKZDMrMP4dH6juM6T7ze5OIZf675A7MuiSHr
         9vl4248Tb4mkyhSur0+z3lQEW8AQF0G72kgxf8yRYukBOZRhQq7lBlZ74Hlc2s1UM0fW
         UWkpHEhukyICqzCpemnO7O85i3Ibpm2bJLRlm01ucwAnI7orVBcY+mJnQOhy2WDzu1Cp
         WU2yeWU2O9pvTR+UoqiWRpX3vuBJOHZn19H4EOBIMEwCBaLYYmOyJyPDPhRstC0YVIzt
         3fRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8lTTXleFjWHIze5h48ELoePWPdTWj8929A6mpMqIQps=;
        b=uZm113QLyTCfFx3ypJ+kSRNAK2jughx2AbwE91SzE59TudOnsmIJIkaVpObQ+/4GU9
         8SM+vIUOxHi96WCYeYfsw5F+gS6YW/mybxvuX4E4y9em+7bNLZSC2zf7WxAowNaVKt48
         sLEYqZTXlQSEdLfBceu8LSOhp+uFagdY1J0pTcdhSfECGpWlY+Tp55IIJVfkpILWGDA4
         08Hw2gg3Mmn6w34g3VAqoavl7qDR2WOHhja34mgLZmUxnVDYc1AxMLmPVMzRHZ+UiCVC
         O1B4xs/wmlIqPWAy0lsohq2mKsGpBA9RUAhuVOp/BdrS0lbtTmv8exoF8XQ94+IepBNt
         fEFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVyWUjQx9q3aVkV4bHxkq/LmHOU/HN7Ugt6lNWMR3JnNSZsfwQX
	ycxrsD0CKz1XAPXO/b7ma4U=
X-Google-Smtp-Source: APXvYqz99tGHZicsayl5xvq6X2/GyrFhTJSP/tYoNCqzEU9Wc/HJvZtDXrEC4PQ43eI3SUjYSROS1g==
X-Received: by 2002:a17:906:40c:: with SMTP id d12mr53958260eja.29.1563825916057;
        Mon, 22 Jul 2019 13:05:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:61c5:: with SMTP id t5ls8501225ejl.11.gmail; Mon, 22
 Jul 2019 13:05:15 -0700 (PDT)
X-Received: by 2002:a17:906:5814:: with SMTP id m20mr27287850ejq.280.1563825915671;
        Mon, 22 Jul 2019 13:05:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563825915; cv=none;
        d=google.com; s=arc-20160816;
        b=xqv1/w62wsrefLOETxtHEaZkb0f/YSr0blx+Z6zRNvA6M1hTUh346eswpWPFol79GI
         CI9jXMV0Db2wodAslA+OzcnotCs3tUSlwhQ6W+hZMGLr48L4DK4Re0R46iPkMW5PtkOm
         HgENcyWb0FD5bu6/yExXVGcLMf3ElXmDqI1CqH5aksrpXYYW7NNgAmUqZsiW+v0mPHT6
         RJ736PEEmjtwBf+WKgVEvsX4IXv6qFF5mVDzUV0ffSsXpCMgKimnjrdUylfHi8kfUNV6
         1/oZuoy7mgv0Bk8oFf2dVxjTRInFB653FgKKVRTA1CssClV9oFendvunlsfAGXQmJzDc
         3t7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7+JBFzBV5AdN+DR0+ZJekj425UpTxX2BgQEch22UFqo=;
        b=klERaR8aOkpkMuoZ406Ynjnp2hLwdS58QILeyyD+tLP+VP1SNTs/vg8142Te/8JF6d
         KmxDcE+aFHD9ggZmW7tGODv+YQCfYFAy/MDYF+6DMKKfBlu2oGqL+UeK+Mj8apGzObBn
         QouqMkJf/NZ9Kz7zu31dc2ZUqEgGDkiZMgLd1hxjEDuSQ/A3AXDTjQ0ZJKGPqJLSLzzP
         nThwyu9vCM8r5w2i/P95VFpxw99p7causF/WOrPc2T/fHKdmTUQPqrYUPoUhR+g4QQAc
         B7SBM0tZiAw3usRVRjdyVj13SsIJcOxXrbsvBOPR+NlHypN2ZLg0pVDzwr5RS2YKrgQs
         rcwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vUDM8Akh;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a41si2175126edc.5.2019.07.22.13.05.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 13:05:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id n9so15623597wrr.4
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 13:05:15 -0700 (PDT)
X-Received: by 2002:adf:eac4:: with SMTP id o4mr74243378wrn.290.1563825915080;
        Mon, 22 Jul 2019 13:05:15 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id n14sm73183677wra.75.2019.07.22.13.05.13
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 13:05:13 -0700 (PDT)
Date: Mon, 22 Jul 2019 13:05:12 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] drivers: net: xgene: Remove acpi_has_method() calls
Message-ID: <20190722200512.GA1502@archlinux-threadripper>
References: <201907222046.bI1G4L4s%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201907222046.bI1G4L4s%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vUDM8Akh;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Transfer-Encoding: quoted-printable
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

On Mon, Jul 22, 2019 at 08:32:50PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20190722030401.69563-1-skunberg.kelsey@gmail.com>
> References: <20190722030401.69563-1-skunberg.kelsey@gmail.com>
> TO: Kelsey Skunberg <skunberg.kelsey@gmail.com>
> CC: iyappan@os.amperecomputing.com, keyur@os.amperecomputing.com, quan@os=
.amperecomputing.com, davem@davemloft.net, netdev@vger.kernel.org, linux-ke=
rnel@vger.kernel.org, bjorn@helgaas.com, rjw@rjwysocki.net, skhan@linuxfoun=
dation.org, linux-kernel-mentees@lists.linuxfoundation.org, skunberg.kelsey=
@gmail.com
> CC: bjorn@helgaas.com, rjw@rjwysocki.net, skhan@linuxfoundation.org, linu=
x-kernel-mentees@lists.linuxfoundation.org, skunberg.kelsey@gmail.com
>=20
> Hi Kelsey,
>=20
> Thank you for the patch! Yet something to improve:
>=20
> [auto build test ERROR on linus/master]
> [cannot apply to v5.3-rc1 next-20190722]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help improve the system]
>=20
> url:    https://github.com/0day-ci/linux/commits/Kelsey-Skunberg/drivers-=
net-xgene-Remove-acpi_has_method-calls/20190722-132405
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 3d68adebc579=
720a3914d50e77a413773be34f16)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=3Darm64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All error/warnings (new ones prefixed by >>):
>=20
> >> drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c:483:1: error: functi=
on definition is not allowed here
>    {
>    ^
>    drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c:508:1: error: functi=
on definition is not allowed here
>    {
>    ^
>    drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c:523:1: error: functi=
on definition is not allowed here
>    {
>    ^
>    drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c:533:1: error: functi=
on definition is not allowed here
>    {
>    ^
>    drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c:564:1: error: functi=
on definition is not allowed here
>    {
>    ^
> >> drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c:593:16: error: use o=
f undeclared identifier 'xgene_enet_link_state'; did you mean 'xgene_enet_l=
ink_status'?
>            .link_state     =3D xgene_enet_link_state,
>                              ^~~~~~~~~~~~~~~~~~~~~
>                              xgene_enet_link_status
>    drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c:180:12: note: 'xgene=
_enet_link_status' declared here
>    static u32 xgene_enet_link_status(struct xgene_enet_pdata *p)
>               ^
> >> drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c:594:21: error: use o=
f undeclared identifier 'xgene_sgmac_enable_tx_pause'
>            .enable_tx_pause =3D xgene_sgmac_enable_tx_pause,
>                               ^
> >> drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c:601:12: error: use o=
f undeclared identifier 'xgene_enet_clear'
>            .clear          =3D xgene_enet_clear,
>                              ^
> >> drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c:602:16: error: use o=
f undeclared identifier 'xgene_enet_cle_bypass'
>            .cle_bypass     =3D xgene_enet_cle_bypass,
>                              ^
> >> drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c:603:14: error: use o=
f undeclared identifier 'xgene_enet_shutdown'
>            .shutdown       =3D xgene_enet_shutdown
>                              ^
> >> drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c:604:3: error: expect=
ed '}'
>    };
>      ^
>    drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c:438:1: note: to matc=
h this '{'
>    {
>    ^
> >> drivers/net/ethernet/apm/xgene/xgene_enet_sgmac.c:582:28: warning: ISO=
 C90 forbids mixing declarations and code [-Wdeclaration-after-statement]
>    const struct xgene_mac_ops xgene_sgmac_ops =3D {
>                               ^
>    1 warning and 11 errors generated.

Already reported with GCC:

https://lists.01.org/pipermail/kbuild-all/2019-July/062499.html

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190722200512.GA1502%40archlinux-threadripper.
