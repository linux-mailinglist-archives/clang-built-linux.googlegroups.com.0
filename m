Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBI7CYKDAMGQEUFM4X4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD3C3AEC73
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 17:32:52 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id e25-20020a67e1990000b0290272d600a2fbsf3095271vsl.21
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 08:32:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624289571; cv=pass;
        d=google.com; s=arc-20160816;
        b=AcPC4N2EY8KSvEEb0KfbePAhkf7kPRF3M1EjJACrpEIvPG3o+OUf/tzR3lq2rGF9vw
         zn1/DgJ/iepYfWbu7Fma4y173ZxeyThh14BUJoeKqe0WwyvQ4Wo1QTwys1AhFO7B+T0s
         CeR8fIWLJBakdmWECSLUQ+A1h0EoFs83dGaWlV/0/3RPJXhOYVUZ1FxmjxgVAzKpiR1Z
         bvo/c/h1rOcF52SK6bS+B/iafZ5Iaiui8ad9Sz25bmjHN34ScpKw6p8yLBORu9sGtJuQ
         aO8pB61nqPW6Kn69TYrU1H6/huzDynY1S3xhM7g1PZobfJU1xFGaZ+b6JM0SME5EzAwJ
         atQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=/6EwZ7zzgWAU5DDuS3M913Y/jz8VDhQes0JcdOvsF2o=;
        b=LLGT6SEr/VMA/WNqY45AVEmoGdTuvZvrPTeFSFx1swiAz2p2cqyEpsYRHL8iUC/toZ
         zM0OP/HJnftsDMx8HhBYpoY7cVL2NdWbkb9VnL3igt5DCnSKJcrmmhIBeko1KwFMOdPo
         mSWXFJD13/c01iYmx7xonOSgtTrn6EcXQ6IerEOaA7GYtqbrvg64DRhiiOaFWNKIp6wF
         Mgytl0sw7OzMp7X5tFqSZKKhd8JGpGV4xd9xUCE2wakBFjPv9i63xZsS8Ld2bKGmxZNb
         tsqCJxDY9krenu5EFG1mojXkhizhTKVqbOR1nnDMAsWPyW4aoIjemKaXD5HCV3ZrcJAh
         b1dQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/6EwZ7zzgWAU5DDuS3M913Y/jz8VDhQes0JcdOvsF2o=;
        b=gqzld3yl2yyrlGsF9ol1hSAVuiW5VY72K0Uy1T+4AxjcZvrSbuW9OrijoIOpPFPMaO
         /a6+Afss+dsug8Ag10h2Schbb2zzKY2tRFxXC697JZjjuzVbYv4LUA91eJgEbVv4/ZxT
         PyZw+U8hHkqfcHuT6FdoQaCULDehAgOtxAROwE6TqJgeJ4WbuKWlwJIZtPkBtzmv5fcc
         +Xl70X1GivyL7ko3N7m3GR7BFVrxOWtzI9Cls9vJ2cXrUpyKXLJstPKYJ/2DIw2O6luf
         q5wJC1XmCdvZNJVhi5qfPES7W/4BRKV98ZAPuKvpHqpoq4NGO55pf225DMMneK0pBwQV
         xx8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/6EwZ7zzgWAU5DDuS3M913Y/jz8VDhQes0JcdOvsF2o=;
        b=PJ+utPb9p2mx8+htLJm/jJuNMzgctD2NQH8kDrkRWleqJgi+fJkoiDjD+0C7mL5+Mi
         1Gm5USJIjYYmvlqxTFDIvSfC50b67szNrvBeuFhhEOjcL36Opfc9fECyMtRsOrINw0iC
         BmeoeP9kMYCbMBBJKMJlcx38L8GLmQR3Grkc0i+mYQxak4sKGNWsoi6bfLy7aaYJxsdw
         1i2slzgmID/d4NKL9Qg/e89OqrZAF5HGmBppTT7Z6XUooGQ2CXppz2/swa2Nqw0FMZLI
         O1Q0aG9VKWHQ7+0kpni9BYFdLc2LfzXqnM2pmCeFLVzkOm4PXxi6Gt4faUyfbLOLscxl
         E/Sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WpRUws874Ku3HcupoFD1VLDADm4mgEvZ1sryqOTqKtOJGi3f5
	oQVerPlcHBvY3YK2O37FQ2M=
X-Google-Smtp-Source: ABdhPJwArCqyTapMPeKLDeHf5NWiu7GP/EJ5rEqFF8X4ZmymPpe6ATqyRi2D7GzoobYOP42QhwpFhQ==
X-Received: by 2002:a67:69c5:: with SMTP id e188mr5632386vsc.22.1624289571473;
        Mon, 21 Jun 2021 08:32:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7682:: with SMTP id v2ls3009122uaq.10.gmail; Mon, 21 Jun
 2021 08:32:50 -0700 (PDT)
X-Received: by 2002:a9f:2370:: with SMTP id 103mr15238457uae.124.1624289570934;
        Mon, 21 Jun 2021 08:32:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624289570; cv=none;
        d=google.com; s=arc-20160816;
        b=d84hDkQPph40gcBFOa2tpIIcw+trASLGqnxdlAN7yDGJHA/6DXZ4xx6j2YZm+8qXoN
         AahbMvT4Dg8srmsWJ3Tlixr1bgELgZ3e2K68V+JsloZTaEqCc/b19TozwIsWnax0v3tD
         W2/5H0bzOX2VQl+QxZYOgwADee8ZjSpQH2lzJpfWlquNCo2WITAP4GD0O59W6qIFt/E4
         mgsivt46+djehpM7dUHklb2RiPA9zfRAwCSRuuKs8ayzrGtNagSZcwIdt4YmNYAk1Hyp
         DfMQexyuOg4inbxAzIC8dtMb7OUXNI4EWU3OYjOm7/y2IfabqupP0PVOB1tz9BP1h5Ai
         jHsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=+nl/D+oV7v5ivOTMPrB0q39jum5Ph7dDz/ZUcBQNw6Y=;
        b=ms9cz/Dp/XxeTGzI6T5cLSDs4Oucn47pRWNF6NzWk8JoEAbosf+IxlejW3SfVy6RrD
         6OrP4TM2s99bdVJxAltCDTn4XjR60agZTPgaxKirCOLjEmpsm2X+R4rt9gy9BUDpw/pT
         Nnl4ZAeteSbsdrUYX0BEkLVfgWey0O3x10MSxsu4IA1G4lNjSLf9GyapKmpSaqvrc6T0
         4Jlo/WeQCyh48ow1fusDYf9dwn4mLLHX6N8ZGacVVw8dYZk/8H1oz1F+sUkBc+j9+HG/
         nFr44jMK1qSFNVzgjasAfiGeV2Eme20FtLUNBEjJWPEXK8G1tvtEf9pwQQ0zSabnoAZC
         zwGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id t21si188529vkk.4.2021.06.21.08.32.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 08:32:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: xoFSf5D66furIpkOdjPWZbAr7AAbCfOUCZjZQhzKYWXng+Z4PfQ0L8rcM0g/gh8eNdDqR5Gy9j
 PeU92Q6g3fpA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="205043733"
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="205043733"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jun 2021 08:32:49 -0700
IronPort-SDR: 7jS5S7m2HfGH7aodGKRNZ9jEoiSxB2vEpGAyh1jsrDtqNGrE1OKKSFZaXPMmMNcQfSSj2tkLZq
 nGkn2m6hxchw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,289,1616482800"; 
   d="scan'208";a="641355660"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
  by fmsmga005.fm.intel.com with ESMTP; 21 Jun 2021 08:32:48 -0700
Date: Mon, 21 Jun 2021 23:25:20 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Jhih-Ming Huang <fbihjmeric@gmail.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] make[2]: *** No rule to make target
 '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/970a74bfa214d0d2e888d70974dd570293811429/lib/modules/5.13.0-rc6+/kernel/crypto/cmac.ko',
 needed by '__modinst'.
Message-ID: <20210621152520.GK158568@pl-dbox>
References: <202106211900.eGQt5TX8-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106211900.eGQt5TX8-lkp@intel.com>
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.120 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Mon, Jun 21, 2021 at 07:47:07PM +0800, kernel test robot wrote:
> Hi Jhih-Ming,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://github.com/0day-ci/linux/commits/UPDATE-20210621-162141/Jhih-Ming-Huang/rtw_security-fix-cast-to-restricted-__le32/20210616-131056
> head:   970a74bfa214d0d2e888d70974dd570293811429
> commit: 970a74bfa214d0d2e888d70974dd570293811429 rtw_security: fix cast to restricted __le32
> date:   3 hours ago
> config: x86_64-randconfig-a012-20210621 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e1adf90826a57b674eee79b071fb46c1f5683cd0)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/970a74bfa214d0d2e888d70974dd570293811429
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review UPDATE-20210621-162141/Jhih-Ming-Huang/rtw_security-fix-cast-to-restricted-__le32/20210616-131056
>         git checkout 970a74bfa214d0d2e888d70974dd570293811429
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
Sorry for the broken report, kindly ignore this, we will fix
this asap.

> 
>    arch/x86/Makefile:148: CONFIG_X86_X32 enabled but no binutils support
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/970a74bfa214d0d2e888d70974dd570293811429/lib/modules/5.13.0-rc6+/kernel/crypto/cmac.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/970a74bfa214d0d2e888d70974dd570293811429/lib/modules/5.13.0-rc6+/kernel/crypto/md5.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/970a74bfa214d0d2e888d70974dd570293811429/lib/modules/5.13.0-rc6+/kernel/crypto/sha512_generic.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/970a74bfa214d0d2e888d70974dd570293811429/lib/modules/5.13.0-rc6+/kernel/drivers/net/net_failover.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/970a74bfa214d0d2e888d70974dd570293811429/lib/modules/5.13.0-rc6+/kernel/drivers/net/virtio_net.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/970a74bfa214d0d2e888d70974dd570293811429/lib/modules/5.13.0-rc6+/kernel/fs/cifs/cifs.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/970a74bfa214d0d2e888d70974dd570293811429/lib/modules/5.13.0-rc6+/kernel/fs/nfs/nfsv4.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/970a74bfa214d0d2e888d70974dd570293811429/lib/modules/5.13.0-rc6+/kernel/lib/crypto/libarc4.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/970a74bfa214d0d2e888d70974dd570293811429/lib/modules/5.13.0-rc6+/kernel/net/core/failover.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/970a74bfa214d0d2e888d70974dd570293811429/lib/modules/5.13.0-rc6+/kernel/net/dns_resolver/dns_resolver.ko', needed by '__modinst'.
> >> make[2]: *** No rule to make target '/tmp/kernel/x86_64-randconfig-a012-20210621/clang-13/970a74bfa214d0d2e888d70974dd570293811429/lib/modules/5.13.0-rc6+/kernel/net/sunrpc/auth_gss/auth_rpcgss.ko', needed by '__modinst'.
>    make[2]: Target '__modinst' not remade because of errors.
>    make[1]: *** [Makefile:1770: modules_install] Error 2
>    make: *** [Makefile:215: __sub-make] Error 2
>    make: Target 'modules_install' not remade because of errors.
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210621152520.GK158568%40pl-dbox.
