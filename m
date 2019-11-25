Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ5P6DXAKGQEDKWEESQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8E310933D
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 19:04:52 +0100 (CET)
Received: by mail-yw1-xc3b.google.com with SMTP id c68sf10483147ywa.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 10:04:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574705092; cv=pass;
        d=google.com; s=arc-20160816;
        b=ySRH1Vi2OsSJKneF9E5X6Rt6ym3fIcaCuSloSROsnIvswrv7Kj6qel5wAib+r7V5M0
         ZOpo7V+jQ+TYad48zfkAS/HdNNmDtmTqBZ5Zlnw9j1BretXtUe7/UQBuhWzkYTN7T3wU
         72PlUqoutBoAKdRvxb0vGA4FHNGE3au5gAkvj7oiFk6exIcMaWNZ5fFxTScKPEIKYJSt
         BjORQOp64zFbMi8DGVgEHEDmH/vS72zf946QPOwK8veV/KYUcFU/MzLIvWVqCqy1F0PR
         wtM5pim7JaUDUwUtzU5nAGgzegDJM5ZMMtCFMVfPCHzoK1psiz5Y7nq8r1b+HQ2HC575
         NWgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=upm15XieYDg1ZQCtaA74TyZsFRu+ky3ToJfLi0yDAcI=;
        b=VE/VbwP0QlXln09RGj+4mWsOC3UZH1qB+8jrBHlTEaz5C42lIdoBYSAKsaePYc3ugk
         dL1oOJFWv/bU9zhVFFvW9k3hz5NcWK16o0J5wFrdlATFB/JDBt+ihTmIhfxgJg7YFefR
         eQV0pNHaqqQpVeFpYlu156hk/XZipZJ+Y65OWJdX612ABC/vqFRHuZ/gTvZBw/fshhFB
         bnJb5tdiIcNPlONKFNGnlgoQjvUIhGV//WWuSbwg01XgFsBrNJKZrhCZjzs3cWYZqMWQ
         kNhhCbFMtcSnugObRvi1oJUkYfGM6OAt85SP77zyYoQNQObjPuENq7BBOULjb1XbK4Wz
         spgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j1+gP1Er;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upm15XieYDg1ZQCtaA74TyZsFRu+ky3ToJfLi0yDAcI=;
        b=btSJixgumoPOAgxhs+swn5jzfdc8LeBk6mGh6zcAm+xdCQcSuemmlxeebAbZXS2HiR
         eALg2i35eBhbx/OnRuba5wHuH6hrcQJlhheLkXI/VaSxup5jIFDGR5gxyvtzBiyp6oV2
         v260zJIWSEQx4P/gA0pJQnazG0wUXZ4fLF+9ZmSZlLTwQ4bdbM+txdY0+Azz6c2PlTrE
         YqUOHDRFeRGjvPPrEltlnTRSNA1yGpnZG2Io0jKbS5bgXApLqZQpiDKhZAOgtZXS7zHE
         6KTjhGPiiFgpWTMyZq9f8X2LS2WX2vyPIJfAm5xWs0ZFcDkpTTcKU8isEZIPcEs8L8AI
         hdVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upm15XieYDg1ZQCtaA74TyZsFRu+ky3ToJfLi0yDAcI=;
        b=DI/HtVFOaSEgToOap5gxl0+FX5kX63F4weuovoVFBpq5wHyY35RY/18j1GSgNkL5gM
         IyYVBWSkydEXGQot7OpKoWTzcBu8NoaeZRU1y4a3i2jbKVVeErV0D3CMwqXBRiImuNKD
         gIYmwxoBwNcdfsIvJDObC9rXJLt7WfTiPD7bLCj0VKCdPQSd3hSb+u7VS2XfNbTZWxx7
         7LqcZvVMb/MpznSxlpMckDI7RYtya5MET71Az0Mhhi6MDVAXs9uGelo080b2yQ/CJqcK
         8pOHHlGkiEYyCjnJNoE1Xys5VPCWdb2m3ohiamlb6gQMWRFpTtMoUO3faKEIYzOe0l8O
         32ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=upm15XieYDg1ZQCtaA74TyZsFRu+ky3ToJfLi0yDAcI=;
        b=VvkTNQRSEn3ug+IJqw4/j+wQaTw+l0JBzi45uP06DoqF/kue1D87d5fbdz1o8/qYgH
         g4fIaqe2i8IcsbC6lZ63hMe+woNl5yNp0ZK3ZFBzVCk1TeYdoCiB3wgOQecvorjXYehK
         h0mA5RygC72Gwv/pq3lC6lLBDDkrIBhtw6zmpikcMt45CfNyGSrcZLgP5R+slqsujc9o
         PIErIMvljlBJRxfIlC5Il7P0hnBre0gNBBFX5eH4CG9Amx37xCdjdTgU2lx/AluwdNPS
         g7/4cva5gMUWJ5eZ3XVGxlacAETDPvKSiPn4lcX669cx+T8pMu/PYVp1AzLsfkHPBGWO
         FXBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWEUNvczokaleLBpibA8RJz+sTlahySm62AFl+GaDsyYj+ylRru
	eDiRA57TWlepudLmwQv2GDo=
X-Google-Smtp-Source: APXvYqyTCKdsfyZrwsutzqnTav164lY0MBWiBh2n2b4LtfRG6XndZq8ZQgHjgIA4+ROQ4Y4JrSPMEg==
X-Received: by 2002:a81:9301:: with SMTP id k1mr21418953ywg.143.1574705091779;
        Mon, 25 Nov 2019 10:04:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e54:: with SMTP id j81ls3015198ybc.11.gmail; Mon, 25
 Nov 2019 10:04:51 -0800 (PST)
X-Received: by 2002:a25:b21f:: with SMTP id i31mr26030125ybj.9.1574705091359;
        Mon, 25 Nov 2019 10:04:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574705091; cv=none;
        d=google.com; s=arc-20160816;
        b=jhmeB9BbD8GiDImwUA1vwKtrt7CvujU7emiklCMGLdbtPkUDMc27JbgCgotUnG+KJt
         ALPJZxrm9pqspuJDaS6lnvrobpA75bmOyohn0CsjkoucVKl5Vt6kBhp1CURuoPVaabTf
         wNYrMnsOLgxXBQB/906AMNV0knnOSI48R54BQ4FZv2iO2Nf7M9OpbrYR5UfI8admtrcg
         Da+mNOVJlEu94I0E2OUhr09/oKkEL7lv+D/7Yaw7yIu1xmW5g4Xib4ml5PtStxghA+Cc
         t18ylmB2QB/LUinVD315O9uqvzeq8KKYELoEonsgbVh/J7e7RO0H0ZUuzNyO1bQMiGyG
         jyTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Qf6nvy3AGfk/8F2fH6p52T8sEikYK4qLF7OLDsSQxbg=;
        b=orOe1dOeJtye2HSEheRpjTFxQP6Pa0uea1WzpIu4B8QXtuxkSdDNxBf0jUZA+NkTPb
         46U3IE/gFTE8UXDVlN8aMFcBVbbiuiBibsxc68Yc+pQqwQlQL20/mH7Roww8HS1lzva+
         OqtMyagmQ3ajLOZCUuSZjFjIxvMe3r2RI1WHRDK6LsCN+kwLL8CcUZViGhcJuI2ZIZS0
         gUOs5okq1v6UmCKxFD7o6UF9gz9ykTMf1WmkKGiwzd/MxgG0SUGZwN75B2TZy1HNp5Xi
         BaasPTJagSxa3+q4kNOKa7sWOTYsqERolEMM8RxGCJlbjNhtiV4xjc5SVzW00/E+ESTH
         HdYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j1+gP1Er;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id c79si351031ywb.3.2019.11.25.10.04.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2019 10:04:51 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id a69so6752657oib.2
        for <clang-built-linux@googlegroups.com>; Mon, 25 Nov 2019 10:04:51 -0800 (PST)
X-Received: by 2002:aca:c4d3:: with SMTP id u202mr96850oif.59.1574705090802;
        Mon, 25 Nov 2019 10:04:50 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::7])
        by smtp.gmail.com with ESMTPSA id i11sm2640024otj.17.2019.11.25.10.04.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Nov 2019 10:04:50 -0800 (PST)
Date: Mon, 25 Nov 2019 11:04:48 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, emamd001@umn.edu,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] PCI/IOV: Fix memory leak in pci_iov_add_virtfn()
Message-ID: <20191125180448.GA39139@ubuntu-x2-xlarge-x86>
References: <20191122193138.19278-1-navid.emamdoost@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20191122193138.19278-1-navid.emamdoost@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=j1+gP1Er;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Nov 22, 2019 at 01:31:36PM -0600, Navid Emamdoost wrote:
> In the implementation of pci_iov_add_virtfn() the allocated virtfn is
> leaked if pci_setup_device() fails. The error handling is not calling
> pci_stop_and_remove_bus_device(). Change the goto label to failed2.
>=20
> Fixes: 156c55325d30 ("PCI: Check for pci_setup_device() failure in pci_io=
v_add_virtfn()")
> Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> ---
>  drivers/pci/iov.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/pci/iov.c b/drivers/pci/iov.c
> index b3f972e8cfed..713660482feb 100644
> --- a/drivers/pci/iov.c
> +++ b/drivers/pci/iov.c
> @@ -164,7 +164,7 @@ int pci_iov_add_virtfn(struct pci_dev *dev, int id)
> =20
>  	rc =3D pci_setup_device(virtfn);
>  	if (rc)
> -		goto failed1;
> +		goto failed2;
> =20
>  	virtfn->dev.parent =3D dev->dev.parent;
>  	virtfn->multifunction =3D 0;
> --=20
> 2.17.1
>=20

Hi Navid,

This patch causes a Clang warning about failed1 no longer being a used
label, as shown by this 0day build report. Would you please look into it
and address it in the same patch so there is not a warning regression?

Cheers,
Nathan

On Mon, Nov 25, 2019 at 07:20:46AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191122193138.19278-1-navid.emamdoost@gmail.com>
> References: <20191122193138.19278-1-navid.emamdoost@gmail.com>
> TO: Navid Emamdoost <navid.emamdoost@gmail.com>
> CC: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, linux=
-kernel@vger.kernel.org, emamd001@umn.edu, Navid Emamdoost <navid.emamdoost=
@gmail.com>, emamd001@umn.edu, Navid Emamdoost <navid.emamdoost@gmail.com>
> CC: emamd001@umn.edu, Navid Emamdoost <navid.emamdoost@gmail.com>
>=20
> Hi Navid,
>=20
> Thank you for the patch! Perhaps something to improve:
>=20
> [auto build test WARNING on pci/next]
> [also build test WARNING on v5.4-rc8 next-20191122]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Navid-Emamdoost/PCI-IOV-=
Fix-memory-leak-in-pci_iov_add_virtfn/20191125-020946
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git n=
ext
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 844d97f650a2=
d716e63e3be903c32a82f2f817b1)
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
> All warnings (new ones prefixed by >>):
>=20
> >> drivers/pci/iov.c:204:1: warning: unused label 'failed1' [-Wunused-lab=
el]
>    failed1:
>    ^~~~~~~~
>    1 warning generated.
>=20
> vim +/failed1 +204 drivers/pci/iov.c
>=20
> cf0921bea66c556 KarimAllah Ahmed 2018-03-19  135 =20
> 753f612471819d3 Jan H. Sch=C3=B6nherr 2017-09-26  136  int pci_iov_add_vi=
rtfn(struct pci_dev *dev, int id)
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  137  {
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  138  	int i;
> dc087f2f6a2925e Jiang Liu        2013-05-25  139  	int rc =3D -ENOMEM;
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  140  	u64 size;
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  141  	char buf[VIRTFN_ID_LEN=
];
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  142  	struct pci_dev *virtfn=
;
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  143  	struct resource *res;
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  144  	struct pci_sriov *iov =
=3D dev->sriov;
> 8b1fce04dc2a221 Gu Zheng         2013-05-25  145  	struct pci_bus *bus;
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  146 =20
> b07579c0924eee1 Wei Yang         2015-03-25  147  	bus =3D virtfn_add_bus=
(dev->bus, pci_iov_virtfn_bus(dev, id));
> dc087f2f6a2925e Jiang Liu        2013-05-25  148  	if (!bus)
> dc087f2f6a2925e Jiang Liu        2013-05-25  149  		goto failed;
> dc087f2f6a2925e Jiang Liu        2013-05-25  150 =20
> dc087f2f6a2925e Jiang Liu        2013-05-25  151  	virtfn =3D pci_alloc_d=
ev(bus);
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  152  	if (!virtfn)
> dc087f2f6a2925e Jiang Liu        2013-05-25  153  		goto failed0;
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  154 =20
> b07579c0924eee1 Wei Yang         2015-03-25  155  	virtfn->devfn =3D pci_=
iov_virtfn_devfn(dev, id);
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  156  	virtfn->vendor =3D dev=
->vendor;
> 3142d832af10d8c Filippo Sironi   2017-08-28  157  	virtfn->device =3D iov=
->vf_device;
> cf0921bea66c556 KarimAllah Ahmed 2018-03-19  158  	virtfn->is_virtfn =3D =
1;
> cf0921bea66c556 KarimAllah Ahmed 2018-03-19  159  	virtfn->physfn =3D pci=
_dev_get(dev);
> cf0921bea66c556 KarimAllah Ahmed 2018-03-19  160 =20
> cf0921bea66c556 KarimAllah Ahmed 2018-03-19  161  	if (id =3D=3D 0)
> cf0921bea66c556 KarimAllah Ahmed 2018-03-19  162  		pci_read_vf_config_co=
mmon(virtfn);
> cf0921bea66c556 KarimAllah Ahmed 2018-03-19  163 =20
> 156c55325d30261 Po Liu           2016-08-29  164  	rc =3D pci_setup_devic=
e(virtfn);
> 156c55325d30261 Po Liu           2016-08-29  165  	if (rc)
> 59fb9307eee20d6 Navid Emamdoost  2019-11-22  166  		goto failed2;
> 156c55325d30261 Po Liu           2016-08-29  167 =20
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  168  	virtfn->dev.parent =3D=
 dev->dev.parent;
> aa9319773619c9d Alex Williamson  2014-01-09  169  	virtfn->multifunction =
=3D 0;
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  170 =20
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  171  	for (i =3D 0; i < PCI_=
SRIOV_NUM_BARS; i++) {
> c1fe1f96e30d31c Bjorn Helgaas    2015-03-25  172  		res =3D &dev->resourc=
e[i + PCI_IOV_RESOURCES];
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  173  		if (!res->parent)
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  174  			continue;
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  175  		virtfn->resource[i].n=
ame =3D pci_name(virtfn);
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  176  		virtfn->resource[i].f=
lags =3D res->flags;
> 0e6c9122a6ec96d Wei Yang         2015-03-25  177  		size =3D pci_iov_reso=
urce_size(dev, i + PCI_IOV_RESOURCES);
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  178  		virtfn->resource[i].s=
tart =3D res->start + size * id;
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  179  		virtfn->resource[i].e=
nd =3D virtfn->resource[i].start + size - 1;
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  180  		rc =3D request_resour=
ce(res, &virtfn->resource[i]);
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  181  		BUG_ON(rc);
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  182  	}
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  183 =20
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  184  	pci_device_add(virtfn,=
 virtfn->bus);
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  185 =20
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  186  	sprintf(buf, "virtfn%u=
", id);
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  187  	rc =3D sysfs_create_li=
nk(&dev->dev.kobj, &virtfn->dev.kobj, buf);
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  188  	if (rc)
> cf0921bea66c556 KarimAllah Ahmed 2018-03-19  189  		goto failed2;
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  190  	rc =3D sysfs_create_li=
nk(&virtfn->dev.kobj, &dev->dev.kobj, "physfn");
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  191  	if (rc)
> cf0921bea66c556 KarimAllah Ahmed 2018-03-19  192  		goto failed3;
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  193 =20
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  194  	kobject_uevent(&virtfn=
->dev.kobj, KOBJ_CHANGE);
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  195 =20
> 27d6162944b9b34 Stuart Hayes     2017-10-04  196  	pci_bus_add_device(vir=
tfn);
> 27d6162944b9b34 Stuart Hayes     2017-10-04  197 =20
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  198  	return 0;
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  199 =20
> cf0921bea66c556 KarimAllah Ahmed 2018-03-19  200  failed3:
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  201  	sysfs_remove_link(&dev=
->dev.kobj, buf);
> cf0921bea66c556 KarimAllah Ahmed 2018-03-19  202  failed2:
> cf0921bea66c556 KarimAllah Ahmed 2018-03-19  203  	pci_stop_and_remove_bu=
s_device(virtfn);
> dd7cc44d0bcec5e Yu Zhao          2009-03-20 @204  failed1:
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  205  	pci_dev_put(dev);
> dc087f2f6a2925e Jiang Liu        2013-05-25  206  failed0:
> dc087f2f6a2925e Jiang Liu        2013-05-25  207  	virtfn_remove_bus(dev-=
>bus, bus);
> dc087f2f6a2925e Jiang Liu        2013-05-25  208  failed:
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  209 =20
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  210  	return rc;
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  211  }
> dd7cc44d0bcec5e Yu Zhao          2009-03-20  212 =20
>=20
> :::::: The code at line 204 was first introduced by commit
> :::::: dd7cc44d0bcec5e9c42fe52e88dc254ae62eac8d PCI: add SR-IOV API for P=
hysical Function driver
>=20
> :::::: TO: Yu Zhao <yu.zhao@intel.com>
> :::::: CC: Jesse Barnes <jbarnes@virtuousgeek.org>
>=20
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology C=
enter
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corpor=
ation

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191125180448.GA39139%40ubuntu-x2-xlarge-x86.
