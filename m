Return-Path: <clang-built-linux+bncBDM2X4EI2MPBBQ4A7L4AKGQEVTWTFKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id EA17022E669
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 09:20:36 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id w22sf10850131qto.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 00:20:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595834436; cv=pass;
        d=google.com; s=arc-20160816;
        b=TI+Lg6/MSuA99igfJLBh7vdpCWmFLo6mkGnuF29tvPKBtx4o9loOxzKltdsW4n1LGK
         7ckKWm4VZHXP0GIb65AxG6P1q8XS3XXRuixO6AtY4AAExfLSqCH7FxK3koFc94p4Mspg
         OnqhSwYfDIYqYQW9Uo3sPFVnV5URie3DlS0HQ4N53DPvxPvSdmXkIvO+TgRlt18VPwNn
         WkXPRnReh8lRMdTS5+Id+Ws2YLjozJO4IrUy0kXHufRPvjq4tUlkHbnXgdCGNFHWs+EF
         EoBDubeOF7hd8LHwLhnam9TyYFY2j+sHvjvgeJ06IkgNk5zjN5NyWtWuK9mIHcPred5a
         UyZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=+80/OZPfTAi9PPQzdsNUXCkfC+qebMSIddN0sScoGIs=;
        b=OUYU1dezqxmE4DobF8dfjpa1VhHZiTejGimXz0X9/+XZmsF4im7CmiImMM++07QF67
         pnLrMZB8pPSWpCynoOeJ7q9Wl1kJ9zRBTYrC31Du9QE9TeCiROBZ+tHgjiN/TOW+OJ21
         8FZxrTDcEGyy+Tf0hfsqRpyxTJrc5pW8fr9a7ChP+LgoPWlcuy/RzZCc+Y/l03Z8UcuK
         mnuOb24bSp+cRImVJteVKqiN5SxH9CfGehIjQzaDBsybZm0mRfQXvP6d/a6D5Kcj4Ua4
         W0oxQoUU2gIWgMWgcPOWWXgWAAJyQNlkdKDCp3OLCpOYq12P5xN2sfBcl3bK77OptTsV
         5r3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EDK8obBO;
       spf=pass (google.com: domain of vaibhavgupta40@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=vaibhavgupta40@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+80/OZPfTAi9PPQzdsNUXCkfC+qebMSIddN0sScoGIs=;
        b=Pmybip9d9O8N+xr/a5Trsuz5IstbWPcjwU5m4DMVFtNE+o45u695q3Xm7kEPywt6l/
         TBCZXW3FCc7SK00Sr8X4iPHiarnJDypGOlmmrMAy+H16qWXq+FbqxTxVC0J3hj1bp88W
         f/AMRc9/54q53uuImPa7PkaE5XBozyTiYN3njOyFanwUS79pRswHG/mzHs5bilDW9VB3
         EN942ofl7xtUky7l3m6YTroWKquQAlYCdYYdO5A+P1uS/OlSZeV22ZthKB/ND8L/Wmxm
         2Cht20hsFpuo7qtpM39DKjSErnZMSjgjYloGd5z/51J4DDJX3klFf3a2XqtynNuviglh
         eF9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+80/OZPfTAi9PPQzdsNUXCkfC+qebMSIddN0sScoGIs=;
        b=CfgUMKMryhTKD2sJztTtbMNAHmQXvKRS9WH3dfVXimESO0qAtPx1u61pQA9q/MgUJ+
         4wY0rp0jkJRlmvJO6TT1qzOC8CWXRFBfSZhXNy4vOqriJmYgBYtpMsCMo/DkPaBJPGEs
         WNW7S/pMCclol3MZ0yb0/EtDewzZZ5SedJaarXbpMR2HwrI9E5YOFyGBiWsjrgU5PZyF
         ZfTtjLi+lsgKkRkQWLdn3K1MMBwyglD5wNhlOKsk10S5Z/Bi7qSZMkW7DZiK+/WZdlpy
         cueIwrmkmzir858JpddOZGbaVON8borMmm9fmWxAYy582UKtEP3rkmsFZSY4l0/PYg98
         3nzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+80/OZPfTAi9PPQzdsNUXCkfC+qebMSIddN0sScoGIs=;
        b=J7JtjRUshtvTruqRejv/oeOAIOhwtmmBQ9og0L88mqqKJUb5BOUZnP1V7F+1zsuyX3
         5YUFAl+IvzM75gyKgPQ42GHqcxQZO/S8lf7NqYRJAFUtUL28FDmkQino5QnnrUyF8z8a
         8Mx/pZALMgoLlZhJofAu24X5JlVUSd+u8RXbtStkatg1Sm03LMw9n2rAXXXZjMqWpxLT
         Q6DIFLxa2oIEVVfJkK96djQtAYmQujAeUgDIDJx1kI+i6Cy5LU/WrPTgKs4zB/DMbUov
         NR23SKGwtKwXN/I9ycxM+ys78N9xsnqg2m+RyhvRF7+cHmp2BVXoxIRYUua+exVnUkA1
         9iJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MmIyhwIUluZHW5rhMxSE1/xuYxaUwtWWEFKv4Cm7ujH1Tze2v
	h+q1iDzREoB1liv0RixRd9o=
X-Google-Smtp-Source: ABdhPJyGCXY/3J1T8wCXqXqBfyNkvET3gcHmx7K+8tpCImgRoFoorzTbaj7Lki4o9LXbCyc4Mhs9DQ==
X-Received: by 2002:ac8:5254:: with SMTP id y20mr1961159qtn.170.1595834435958;
        Mon, 27 Jul 2020 00:20:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4981:: with SMTP id w123ls7574573qka.9.gmail; Mon, 27
 Jul 2020 00:20:35 -0700 (PDT)
X-Received: by 2002:a05:620a:346:: with SMTP id t6mr21359936qkm.29.1595834435625;
        Mon, 27 Jul 2020 00:20:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595834435; cv=none;
        d=google.com; s=arc-20160816;
        b=eKubfR2CwNHM0uXoLdw1hlAPL02rYDudtQxmAdCfjGMRXeN25QV7LMEOUG+vuhqdgo
         S59tv6DAADnwrftqSy+262Y9X2Tzeyd95TXCOcwDCJzWf1dumKZCIcCx5ROa0teKnUcV
         HWOZzzUCJVS7HSGZastRdbQ/Lwdz01IQ9EIqpwqvOJOMTI0rLRqwR3p5FxJ26D/6LP/d
         wFjjIQJJfASqiwMOJqTLm4dwE9fkA5qTqYe2MrW0gzEI+oS5nl3xvu+em9f5zqgb9wxq
         rUOa2rtEP1LV15gw6/S7SJDH9May2+5X9uJyM0IUnPGucSw55pASBPoko2iSZDfmvjEm
         GeHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=YJXjh4GmMEW7XN5/tplqsYhfZdl3H6taMH5axLntfAw=;
        b=iL6hKn7tetQe58gOTEOJviqUOKHdgH2sDNGCi22PXCfslE0FZ3ud8q56gzvtLyyiXU
         TED8nUWuOxMxJyzLfUhhaotF+Px6p4EDQphv3wt9+HuyZsjx8ygl3I12ZYfRFQIei2UF
         eshfRCnOAUoHspyB2XJYrUsafxtDxpFI3g51RsL3+UvfHbwLjscn/eJfce7qzCuKnQQl
         13B0SfWaNnkL6LxNIVopkZQyyTZSbLVCjdycs7794sfSLeKvvHBmjHjdNVPFyZ6M2NjT
         rxpn/3Q3CmjUDtKhbqXFZul/Ihe8qa1f4VY1CNgpLLY3/0snV7ex5efQkcuJNXegzJLw
         1jbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EDK8obBO;
       spf=pass (google.com: domain of vaibhavgupta40@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=vaibhavgupta40@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b26si504691qtq.3.2020.07.27.00.20.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jul 2020 00:20:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of vaibhavgupta40@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id k18so1341505pfp.7
        for <clang-built-linux@googlegroups.com>; Mon, 27 Jul 2020 00:20:35 -0700 (PDT)
X-Received: by 2002:aa7:8e0c:: with SMTP id c12mr18974880pfr.38.1595834434715;
        Mon, 27 Jul 2020 00:20:34 -0700 (PDT)
Received: from gmail.com ([103.105.152.86])
        by smtp.gmail.com with ESMTPSA id lb13sm7971701pjb.9.2020.07.27.00.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2020 00:20:34 -0700 (PDT)
Date: Mon, 27 Jul 2020 12:49:10 +0530
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
	Vaibhav Gupta <vaibhav.varodek@gmail.com>,
	Jens Axboe <axboe@kernel.dk>,
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-kernel-mentees@lists.linuxfoundation.org,
	Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH v1] ata: use generic power management
Message-ID: <20200727071910.GA6368@gmail.com>
References: <20200724110630.1219882-1-vaibhavgupta40@gmail.com>
 <202007250808.yhgHBmpJ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202007250808.yhgHBmpJ%lkp@intel.com>
X-Original-Sender: vaibhavgupta40@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EDK8obBO;       spf=pass
 (google.com: domain of vaibhavgupta40@gmail.com designates
 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=vaibhavgupta40@gmail.com;
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

On Sat, Jul 25, 2020 at 09:00:12AM +0800, kernel test robot wrote:
> Hi Vaibhav,
>=20
> Thank you for the patch! Perhaps something to improve:
>=20
> [auto build test WARNING on block/for-next]
> [also build test WARNING on v5.8-rc6 next-20200724]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>=20
> url:    https://github.com/0day-ci/linux/commits/Vaibhav-Gupta/ata-use-ge=
neric-power-management/20200724-190929
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block=
.git for-next
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1d09=
ecf36175f7910ffedd6d497c07b5c74c22fb)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> drivers/ata/pata_triflex.c:186:36: warning: ISO C90 forbids mixing dec=
larations and code [-Wdeclaration-after-statement]
>            static const struct ata_port_info info =3D {
>                                              ^
>    1 warning generated.
>=20
> vim +186 drivers/ata/pata_triflex.c
>=20
> 669a5db411d85a Jeff Garzik     2006-08-29  176 =20
> 669a5db411d85a Jeff Garzik     2006-08-29  177  static int triflex_init_o=
ne(struct pci_dev *dev, const struct pci_device_id *id)
> 669a5db411d85a Jeff Garzik     2006-08-29  178  {
> 5acd74b592933f Vaibhav Gupta   2020-07-24  179  	/*
> 5acd74b592933f Vaibhav Gupta   2020-07-24  180  	 * We must not disable o=
r powerdown the device.
> 5acd74b592933f Vaibhav Gupta   2020-07-24  181  	 * APM bios refuses to s=
uspend if IDE is not accessible.
> 5acd74b592933f Vaibhav Gupta   2020-07-24  182  	 */
> 5acd74b592933f Vaibhav Gupta   2020-07-24  183  	dev->pm_cap =3D 0;
> 5acd74b592933f Vaibhav Gupta   2020-07-24  184  	dev_info(&dev->dev, "Dis=
able triflex to be turned off by PCI CORE\n");
> 5acd74b592933f Vaibhav Gupta   2020-07-24  185 =20
> 1626aeb881236c Tejun Heo       2007-05-04 @186  	static const struct ata_=
port_info info =3D {
> 1d2808fd3d2d5d Jeff Garzik     2007-05-28  187  		.flags =3D ATA_FLAG_SLA=
VE_POSS,
> 14bdef982caeda Erik Inge Bols=C3=B8 2009-03-14  188  		.pio_mask =3D ATA_=
PIO4,
> 14bdef982caeda Erik Inge Bols=C3=B8 2009-03-14  189  		.mwdma_mask =3D AT=
A_MWDMA2,
> 669a5db411d85a Jeff Garzik     2006-08-29  190  		.port_ops =3D &triflex_=
port_ops
> 669a5db411d85a Jeff Garzik     2006-08-29  191  	};
> 1626aeb881236c Tejun Heo       2007-05-04  192  	const struct ata_port_in=
fo *ppi[] =3D { &info, NULL };
> 669a5db411d85a Jeff Garzik     2006-08-29  193 =20
> 06296a1e684bcd Joe Perches     2011-04-15  194  	ata_print_version_once(&=
dev->dev, DRV_VERSION);
> 669a5db411d85a Jeff Garzik     2006-08-29  195 =20
> 1c5afdf7a629d2 Tejun Heo       2010-05-19  196  	return ata_pci_bmdma_ini=
t_one(dev, ppi, &triflex_sht, NULL, 0);
> 669a5db411d85a Jeff Garzik     2006-08-29  197  }
> 669a5db411d85a Jeff Garzik     2006-08-29  198 =20
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Fixed in v2. Will float v2 after few more checks.

Thanks
Vaibhav Gupta

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200727071910.GA6368%40gmail.com.
