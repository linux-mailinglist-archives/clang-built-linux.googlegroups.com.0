Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBYPIRXZAKGQEP57C6WQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8536D159F9F
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Feb 2020 04:43:30 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id n1sf973362ybo.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 19:43:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581479009; cv=pass;
        d=google.com; s=arc-20160816;
        b=qnBCE2Ud/EVujvI+vQMU2AnAiukTZqjGqt02YkTFxKJ/IXb016ItOSjX9xI3rIR1I0
         UcpjIGN6fOP8xqJlgL+Epy2VCPPJE3NA1AKXL8qI3Iax8YatCVYGXpe1gwjTgrhIQVuS
         H8ED6D7XWrmyz7wR5NcIn7+Voa2Ni0Ea6pJsaLE3aRjFVyovKsCEvUxiYFQW0v+GcHCp
         IJtf4h9Gcy5l5cuWXLwO9ecedVjn/dCC/1r8Lee2SARjV4k5B2GfwP0/KUdhL8NMn7eh
         eGCGMARb5azWIJ5rqkHhyHBiUXnweXWWNFZUApBD4MkzE/JU3Bj66T41OJN8UMfcJQL+
         wE/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=QHJsWX1lV5o6KyPJmQfM3kYicqglg3L0A+tknV3do30=;
        b=SnpjxXhxcYFz2xmG6uwPB19Oh4thof1Hlz5NaggTSbljhOR9Mxnb3Mg6p6vcgZoFp/
         ZYdV+trW4hoVb1oHREbycg2Urh0hrzM95TlwjosmU1I+dfBvVauIFTwgU4iMd7q5F0/H
         UWXiKp36Memjhgx2JLseOEH/CDByxB8Nowhll7xlA+nrLoMQdWZeaNhMt3MufxUZCAFf
         M9ZwvjAbGysC79we/xmHzVC2bJZhg4xsZYgmioljbBGOYkhw87f18YEAhvw44PCkMgnE
         EChY35cb1ExMOJqaua+G82S2jN6zoNe4Ror2MLFZeHQ3602OWmrbUV3jo2McAgKyqC1F
         KHQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i/qh8+p/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QHJsWX1lV5o6KyPJmQfM3kYicqglg3L0A+tknV3do30=;
        b=IjsycdVchd9GtUyIdSkERJNQCA9jovWSg1dR99FcBTtNB4VPhHPBD8TyOSAmigMDnS
         1FhywI5V4Oq8vlWKANo5zNWGmMRFS1N1di0GVIMExbcTaYwrlws9Mg/NQOIXL4fSgMAK
         APH0LszoIU/LGj/ClJeElzw80aopP4Std8kIpGKLOLxCCXLKDHHy8wwnfTc5sAel50B+
         c3oKw6mJnjdZWbjAvrBv1E/HjyYwUsEv4POIkFlqZGJLtaoHkUODJ6GkDyUdew9v9TtB
         dnyzxLcRXZ5khFLPbAOsxeJ2nRNyD9/pLvGnqelxEUSOVrWi5X+ihjeFGIR/1k85wQ/y
         84WQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QHJsWX1lV5o6KyPJmQfM3kYicqglg3L0A+tknV3do30=;
        b=vQCsc7EXcQmjBlzJQ55b5bIaAJkO9cmKUK9wIoaQ1DyLY0wKAbd1j17LGK74VUGaPH
         lnBT9A8XKoCwLaby83c6GM826k5UE95eDELCRmY6G9Q++5TNpgBxLi5R4pMhr5AmXjo0
         j9ftS6QnjsxR2ZE8AZnBwDq1HOrOEGlHuM4RDS+i1IaasSSpMjhGKX8KYL3m7DHYEnLV
         qh/sbFauTuPbOrS1F4I4DOWxKuxUYHf5Prm5lUVAKQE/dx0ZixKSWWaaj+ZClizmztzA
         YxojP+llxTPkZMyfJRy2/K2J8IfX1M08febwTfAUS34QuxN5TIFkiO+PgfQxPIHBuASZ
         seYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QHJsWX1lV5o6KyPJmQfM3kYicqglg3L0A+tknV3do30=;
        b=Qo8rU6QbK4V6g7ZUHwja/j5/E5sOXwhZtqJAqp5EtD29FwzuRUW0PBu/OcbGh9XsT2
         T9ORi+Td5DLoDeSka3WEpSpDQa7xPVO9YesmJyLd5KVLMHG8rkLp1208M8Y32LDWfksd
         /h65nPSNABS1gFex2twE+I2sHNqZoiFNIaAVQYQoxYmTunJzff68t7tm8TuBG+gQSUBK
         Slz9jG/c/VSou4HKunMzPTpt3iDd7qCsby7woNtD+gI6rZ47hfAAS9Sa3ukTyKJ6FCPw
         xMjBOaPRP7hhiVDHituRGe3sCEyjz8RbdjGcgpiJebnel002Ch7U3mds5MNtfCkxHMrV
         K8MQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJdBCh2uhn8Mz6CfJGEcYRp9GZrbiKoW0YXr254qn/YLuXoXPW
	f1uFtTzvXLJ9VpE8TrUlrBg=
X-Google-Smtp-Source: APXvYqylXolxfPMwlO5P/I60+gRW6w9kKDQR2dyd/nq+pgtb2zAbnbKNsnvgBRuCKfgjCC+nrdLHGw==
X-Received: by 2002:a81:5a42:: with SMTP id o63mr8220242ywb.367.1581479009294;
        Tue, 11 Feb 2020 19:43:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:fc04:: with SMTP id m4ls2921241ywf.8.gmail; Tue, 11 Feb
 2020 19:43:28 -0800 (PST)
X-Received: by 2002:a81:a151:: with SMTP id y78mr8708579ywg.317.1581479008901;
        Tue, 11 Feb 2020 19:43:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581479008; cv=none;
        d=google.com; s=arc-20160816;
        b=ZG5qrL9YkgB/SSZmSxqLYQ7ExAnVUBy01APgol3d7JlWMFZ0fEam51mB6mEDHZV19D
         5UBCTP/k2uZznG/xuLaeWvT5abJDZJIrJjh+uRB7jdmHO94onijBthyslCMhWfGvm36F
         FUhYTmpWkqfNg66mXL4oVNd7YnSuQBcBHwxrlnRymFkWf07rX4wBssWnvCOSXl/ZOAS7
         4oWTuTZFRbhSJwunXPVglm0GsLe8MjG5NP1XYQxOdF8Ort3IUTXu4xnW+2GVLQ7doAU3
         lzPtGRz2m82sKuyNo50Gi/M6zWX9dKQcgqYkJC7dIVMWWUgP1QymYHQn2WVXdg/+lt4t
         1LxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=yDq7frOusXnxTu+qmWzjOhqzMVrHvOj5m5LO5WCpvpM=;
        b=jv+iJzpByJFax38BrpNWh54exNd6PaPK2MOsycD7V9etdgBUGoNOUd27oXv8Vz2ljR
         XXIlIOLUFE07diBDWKW+vxltDPF7g5Z5d3OPyHAQWlIVH+LVQbZcO2LblWJnTNFk13yL
         vLN47/VboOIgNzEpZ3unMIJPWBjAWNQhl/bNiT+E3q7hX8CKfqWOKIMaI3KgQcd4Xoi9
         PdzPj1lKKE/KwI5p1z/KFGKb+CPQel5yxVgzhNZ0rGbnS/mCLUvGuFacjosJY1X/eCRj
         mt+HMKdAMv3e1Y1L8FPeKQR4j45gRcbwxqFO8r6jMmUs0g0LOiNQftpEqOPMcnGZaRNx
         4anQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="i/qh8+p/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id v64si297085ywa.4.2020.02.11.19.43.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 19:43:28 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id a142so701212oii.7
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 19:43:28 -0800 (PST)
X-Received: by 2002:aca:eccd:: with SMTP id k196mr4730601oih.95.1581479008370;
        Tue, 11 Feb 2020 19:43:28 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id g5sm1941827otp.10.2020.02.11.19.43.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 11 Feb 2020 19:43:27 -0800 (PST)
Date: Tue, 11 Feb 2020 20:43:26 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 5/6] PCI: rcar: Add support for rcar PCIe controller
 in endpoint mode
Message-ID: <20200212034326.GA41340@ubuntu-m2-xlarge-x86>
References: <202002120345.3sbdtJPX%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202002120345.3sbdtJPX%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="i/qh8+p/";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Feb 12, 2020 at 04:09:49AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20200208183641.6674-6-prabhakar.mahadev-lad.rj@bp.renesas.c=
om>
> References: <20200208183641.6674-6-prabhakar.mahadev-lad.rj@bp.renesas.co=
m>
> TO: Lad Prabhakar <prabhakar.csengg@gmail.com>
> CC: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>=
, Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm=
.com>, Will Deacon <will@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com=
>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb=
.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jingoo Han <jingooha=
n1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Marek Vasu=
t <marek.vasut+renesas@gmail.com>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@=
renesas.com>, Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@s=
ntech.de>
> CC: Andrew Murray <andrew.murray@arm.com>, linux-pci@vger.kernel.org, lin=
ux-arm-kernel@lists.infradead.org, linux-renesas-soc@vger.kernel.org, linux=
-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vge=
r.kernel.org, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>=20
> Hi Lad,
>=20
> Thank you for the patch! Perhaps something to improve:
>=20
> [auto build test WARNING on pci/next]
> [also build test WARNING on robh/for-next arm64/for-next/core char-misc/c=
har-misc-testing v5.6-rc1 next-20200211]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Lad-Prabhakar/Add-suppor=
t-for-PCIe-controller-to-work-in-endpoint-mode-on-R-Car-SoCs/20200211-19140=
3
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git n=
ext
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 4dcc029edbe4=
bd5e30d4f0cdcf123ea4ed2b6418)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=3Dx86_64=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All warnings (new ones prefixed by >>):
>=20
> >> drivers/pci/controller/pcie-rcar-ep.c:226:8: warning: explicitly assig=
ning value of variable of type 'u64' (aka 'unsigned long long') to itself [=
-Wself-assign]
>                    size =3D size;
>                    ~~~~ ^ ~~~~
>    1 warning generated.
>=20
> vim +226 drivers/pci/controller/pcie-rcar-ep.c
>=20
>    193=09
>    194	static int rcar_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no,
>    195					struct pci_epf_bar *epf_bar)
>    196	{
>    197		struct rcar_pcie *ep =3D epc_get_drvdata(epc);
>    198		dma_addr_t cpu_addr =3D epf_bar->phys_addr;
>    199		int flags =3D epf_bar->flags | LAR_ENABLE | LAM_64BIT;
>    200		enum pci_barno bar =3D epf_bar->barno;
>    201		u64 size =3D 1ULL << fls64(epf_bar->size - 1);
>    202		u32 mask;
>    203		int idx;
>    204		int err;
>    205=09
>    206		idx =3D find_first_zero_bit(ep->ib_window_map, ep->num_ib_windows=
);
>    207		if (idx >=3D ep->num_ib_windows) {
>    208			dev_err(ep->dev, "no free inbound window\n");
>    209			return -EINVAL;
>    210		}
>    211=09
>    212		if ((flags & PCI_BASE_ADDRESS_SPACE) =3D=3D PCI_BASE_ADDRESS_SPAC=
E_IO)
>    213			flags |=3D IO_SPACE;
>    214=09
>    215		ep->bar_to_atu[bar] =3D idx;
>    216		/* use 64 bit bars */
>    217		set_bit(idx, ep->ib_window_map);
>    218		set_bit(idx + 1, ep->ib_window_map);
>    219=09
>    220		if (cpu_addr > 0) {
>    221			unsigned long nr_zeros =3D __ffs64(cpu_addr);
>    222			u64 alignment =3D 1ULL << nr_zeros;
>    223=09
>    224			size =3D min(size, alignment);
>    225		} else {
>  > 226			size =3D size;
>    227		}
>    228=09
>    229		size =3D min(size, 1ULL << 32);
>    230=09
>    231		mask =3D roundup_pow_of_two(size) - 1;
>    232		mask &=3D ~0xf;
>    233=09
>    234		rcar_pcie_set_inbound(ep->base, cpu_addr,
>    235				      0x0, mask | flags, idx, false);
>    236=09
>    237		err =3D rcar_pcie_wait_for_phyrdy(ep->base);
>    238		if (err) {
>    239			dev_err(ep->dev, "phy not ready\n");
>    240			return -EINVAL;
>    241		}
>    242=09
>    243		return 0;
>    244	}
>    245=09
>=20
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>=20

Reported to LKML:

https://lore.kernel.org/lkml/20200212034239.GA38314@ubuntu-m2-xlarge-x86/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200212034326.GA41340%40ubuntu-m2-xlarge-x86.
