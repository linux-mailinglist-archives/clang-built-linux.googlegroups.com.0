Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBZ7G3CAAMGQE67JQZ6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 245DE309A3C
	for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 05:34:48 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id m21sf3946912uap.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 20:34:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612067687; cv=pass;
        d=google.com; s=arc-20160816;
        b=z+3e+ea+mT2PGEhpkiGFuBALtMirWTR8F9yNSpvnhS69GkN69HEqn9Ne0RSjw1SASC
         Hlrbw9Mybe4UGxsKrDupwuE4IocZVbgJDc7TaNXCOGXCmozOM0q+PgB/j+6L94btPNSC
         qZlzHYmJaNgPUgpjGdfta6ALAFRTH0aOjrkEFCO1RFpCE2thJrth7JrWFTU3xzrcg7U9
         5rP+pTK4I8jj8M2CROmx/wFO7EhZzsqXcQJqSsx1cQyaNpLylUCHiDCPlaGdP+41BOCS
         2q3IShZEioTB7tm9Q9cfO+Wmw/qTh27KoCFSL4Sm883UBhk2kJ4/pk0ExPCvGdR/mgzj
         SbYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=ZHN/amgTNlwhVRClgX0waHi4A4lKKJhljh1MudxHzEE=;
        b=c1SCZhW4RtExhR6HjpfeVgrRFnokeBC/+paLlrf+nUZB3eFORfVecJ7FUFk7Ehzjdr
         jR/UILZrXcOsToK81IxyuGklDZai64MorXc1ZQ2cqeWi53ASRc2FDfoaBTdrok31xvHU
         rKPAoDp0NNMza97ZA+x3giZP8H4mzexf2045Gsk/s0yGzRK8ry3CPjrL1LThL6E3jnQE
         PYB86ro1TX6SHn3fe7TATha+REeL4rhkGbu2FSY9/8opyeUfNund+JD3GDbTgumQYKhB
         hC0iWobC2i0+xN/S9AXrYKI3cuQNaOQ+pkETwg0v6A/3iPr6YXe1xWS7W4B+i5zDYJGS
         RK0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZHN/amgTNlwhVRClgX0waHi4A4lKKJhljh1MudxHzEE=;
        b=mTDDrG/2M2N+R9DEPOPS1KiHmaDDs/F2xgF9KvDiACfWm2e0kDwEVbgyG4HhqdqXI0
         RLGVN/jXemv71P1+dr8CxOd3N2weRrdxqoXeB3cy25qNZLd/YFuzZnXZ40PeMW2aYiJe
         Nmi2pRYoPBNtNa2GfU1eIpClIHsLCHOlGu1AE7WcEBEiPocMR0R7bYil07s8XwOKMgDU
         sKnGPRirT5wpkFb79Os0ep8egzZ5avcBR7h2O3ySdGPPcoD/vasVI7QsxudT7qePBvdA
         VhBJkRb4m+gE52MA+VwT4C2hgFdqPmwVea5k8sHd+O7oFKmTyVsuQyoaE3gLF3fzgod7
         +bqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZHN/amgTNlwhVRClgX0waHi4A4lKKJhljh1MudxHzEE=;
        b=gH96Zlm/FZMPrUXv116F/2PKKdIR+IFjCFdhlDqImF3nauLNDJ/CrsCZXzB3lgf1Pv
         Ru+IWVSdwoYTJCdTYHoJDjgaVVkBjQclAWFIz0KsbA8vm/C71DZx3M2zmgNTTTOUL8AI
         C/76hZ5X/LfcLtxbA2nqYfwfWRWB5Jc+DHGRxsfVVqeJopb8pOddYf0L1wbbnA+3fiqW
         USohbcPjMKNAKbJGaXtEagqfc3EkigBvy69lzr5vDxTxahNgIsRpd68BzkZ6uIufyvdp
         poukxcwzbq/tBVhC4/cdGiEXZLcILIy4q3j/fp+IDBNDENB4Fve/MgjOlJ9vHWSMJu5K
         0h3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531EcI+xuv5hEwF4+lWkI+TO/KxQkpQLZHGS4eox+upv4zvxfmX0
	N8I3qkF+T3EkhPogMM8J5ms=
X-Google-Smtp-Source: ABdhPJw/o0UOIuDMN4xclY75SF4rv51pgpKpvBHY6BD9o9CpOiStcURvJ6b2MQeQaIWhYp5B2zIOXA==
X-Received: by 2002:ac5:c318:: with SMTP id j24mr6547295vkk.21.1612067687131;
        Sat, 30 Jan 2021 20:34:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f898:: with SMTP id h24ls1600814vso.5.gmail; Sat, 30 Jan
 2021 20:34:46 -0800 (PST)
X-Received: by 2002:a67:e951:: with SMTP id p17mr6140255vso.26.1612067686656;
        Sat, 30 Jan 2021 20:34:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612067686; cv=none;
        d=google.com; s=arc-20160816;
        b=kB8GRClTyK/OIeEBwjfqoupE1SntwHa/MMwsMZsrXlJKwXGWqO9Q1ZboTXD9Fqo0W6
         zJ8g4MatUxC07h5ac7sQPr/WwT1BsvQrOBHfEF3UaHaUYKvuvsd8K/m0OE0eG1JNYige
         nWQPYxlkF2Mf+uq0SEo46cLMeAhE0XFstWoILfp2dNZ4GwaMB0OBRXMSq/PkWuXin4QU
         fxUlkKydT+Na6PWVDgsvFc6+pAgFij4ptAWccYnyf0nyqDc38RGlmq2WJHRFqn5gGCwQ
         GjKyoL3YaBgiargTThcqMRx+Qm311WWFcY1kVoJ96yYA27HPpMT/xUwsrP9uv8eZ/34r
         EgMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=wuo7E1yzDVz7g4Z5E7zZu2bcQKD/LOb+fZMLjaUgxgc=;
        b=CCFiH58x6y16QDmsPMps9ugIrLeRZz2boewkKaD4A8Bx5911jrrIdyPL98bKkwWoAk
         1OOsxlGRNnWce+r8yXW19tGwhNfX4vxS300DNLm8TRWHwTSgnzUbbVX6v1kTYswHkyes
         hE2vpHkMZhAOFreoyLlqxPHnUDmvuZwCsOrFpxYuyWy3w5wfatO6jxX1zv9qgF2wYNPQ
         zN55aW7PeI15Ur/DR5qVRVRug/rP3Myo0RF2wu7cCO4+ERAomOaJ9fITF4kCT1fZ6KzT
         R6KXS65isVJTQaaSvraVGo8CEormn8UFRui/ZOyC3+7TqssbAhUpjoHfGDuVjOgOe6h7
         k+2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id h123si722717vkg.0.2021.01.30.20.34.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Jan 2021 20:34:46 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: 8BqqucTkLJSuqVCxz/khY2eUyzYxREpg+r6piTfch95NTNzUq6O3AIq2MbCLx3UxvHhxleKFKq
 wGLkEraUilPQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9880"; a="160335763"
X-IronPort-AV: E=Sophos;i="5.79,389,1602572400"; 
   d="scan'208";a="160335763"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jan 2021 20:34:44 -0800
IronPort-SDR: webvbmLL6xcpy6L0Uu7oPmSbxrk+M5fkNL4N8eTKQcihbjgLS5lwwl0+d6hFSyzYUjPfBU+zUG
 aDCeDuDZ2mEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,389,1602572400"; 
   d="scan'208";a="411309692"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2021 20:34:41 -0800
Date: Sun, 31 Jan 2021 12:29:05 +0800
From: Philip Li <philip.li@intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Filip Kokosinski <fkokosinski@antmicro.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Mateusz Holenko <mholenko@antmicro.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [kbuild-all] aarch64-linux-gnu-ld: warning: orphan section
 `.eh_frame' from `drivers/tty/serial/liteuart.o' being placed in section
 `.eh_frame'
Message-ID: <20210131042905.GB28302@intel.com>
References: <202101311131.mjxVXgRz-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101311131.mjxVXgRz-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.151 as
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

On Sun, Jan 31, 2021 at 11:36:33AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   6642d600b541b81931fb1ab0c041b0d68f77be7e
> commit: 1da81e5562fac8286567422cc56a7fbd0dc646d4 drivers/tty/serial: add LiteUART driver
> date:   3 months ago
> config: arm64-randconfig-r013-20210130 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 275c6af7d7f1ed63a03d05b4484413e447133269)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=1da81e5562fac8286567422cc56a7fbd0dc646d4
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 1da81e5562fac8286567422cc56a7fbd0dc646d4
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
Sorry, kindly ignore this false positive.

> 
> All warnings (new ones prefixed by >>):
> 
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/max77650-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/max8649.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/max8660.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/max8925-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/max8952.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/max77802-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/max77826-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/mcp16502.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/mp8859.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/mpq7920.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/mt6311-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/mt6360-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/mt6397-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/qcom-labibb-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/qcom_spmi-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/palmas-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/pca9450-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/pfuze100-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/pv88060-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/pv88090-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps51632-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/pcf50633-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/rpi-panel-attiny-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/rk808-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/rohm-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/rt5033-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/rtmv20-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/s2mps11.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/sky81452-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/slg51000-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/stpmic1_regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/sy8106a-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/sy8824x.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/sy8827n.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps62360-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps6507x-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps65086-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps65090-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps65218-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps6586x-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps65132-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/uniphier-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/vctrl-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/vexpress-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/tegra/reset-bpmp.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/reset-imx7.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/reset-intel-gw.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/reset-scmi.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/reset-simple.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/reset-ti-syscon.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/reset-zynqmp.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_io.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/n_tty.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_ioctl.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_ldisc.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_buffer.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_port.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_mutex.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_ldsem.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_baudrate.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_jobctrl.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/n_null.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/pty.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/sysrq.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/vt_ioctl.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/vc_screen.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/selection.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/keyboard.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/consolemap.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/consolemap_deftbl.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/vt.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/defkeymap.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/hvc/hvc_dcc.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/hvc/hvc_console.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/serial_core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/earlycon.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/earlycon-arm-semihost.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_port.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_dma.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_fintek.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/serial_cs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_aspeed_vuart.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_mtk.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_tegra.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_of.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/amba-pl010.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/amba-pl011.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/imx_earlycon.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/sc16is7xx.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/uartlite.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/altera_uart.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/altera_jtaguart.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/xilinx_uartps.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/tegra-tcu.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/arc_uart.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/fsl_lpuart.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/fsl_linflexuart.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/digicolor-usart.o' being placed in section `.eh_frame'
> >> aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/liteuart.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/serial_mctrl_gpio.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/kgdboc.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serdev/core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serdev/serdev-ttyport.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/ttynull.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/mem.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/random.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/misc.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/virtio_console.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/raw.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/lp.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/hw_random/core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/hw_random/ba431-rng.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/hw_random/exynos-trng.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/hw_random/virtio-rng.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/hw_random/cctrng.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/ppdev.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/pcmcia/cm4040_cs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/pcmcia/scr24x_cs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/arm/arm-smmu/arm-smmu.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/arm/arm-smmu/arm-smmu-impl.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/arm/arm-smmu/arm-smmu-qcom.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/iommu.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/iommu-traces.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/iommu-sysfs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/dma-iommu.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/io-pgtable.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/io-pgtable-arm-v7s.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/io-pgtable-arm.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/iova.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/of_iommu.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/parport/share.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/parport/ieee1284.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/parport/ieee1284_ops.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/parport/procfs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/parport/daisy.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/parport/probe.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/parport/parport_ax88796.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-init.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-rb.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-write.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-cache.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-read.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-gc.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-recovery.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-map.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-rl.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-sysfs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/component.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/bus.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/dd.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/syscore.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/driver.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/class.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/platform.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/cpu.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/firmware.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/init.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/map.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/devres.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/attribute_container.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/transport_class.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/topology.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/container.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/property.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/cacheinfo.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/swnode.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/sysfs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/generic_ops.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/common.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/qos.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/runtime.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/wakeirq.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/domain.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/domain_governor.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/clock_ops.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/firmware_loader/fallback_table.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/firmware_loader/main.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/firmware_loader/fallback.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/node.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regcache.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regcache-rbtree.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regcache-flat.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-debugfs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-i2c.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-slimbus.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-spmi.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-mmio.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-irq.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-w1.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-sdw.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-i3c.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/soc.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/pinctrl.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/platform-msi.o' being placed in section `.eh_frame'
> --
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/max77650-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/max8649.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/max8660.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/max8925-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/max8952.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/max77802-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/max77826-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/mcp16502.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/mp8859.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/mpq7920.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/mt6311-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/mt6360-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/mt6397-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/qcom-labibb-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/qcom_spmi-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/palmas-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/pca9450-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/pfuze100-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/pv88060-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/pv88090-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps51632-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/pcf50633-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/rpi-panel-attiny-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/rk808-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/rohm-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/rt5033-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/rtmv20-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/s2mps11.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/sky81452-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/slg51000-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/stpmic1_regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/sy8106a-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/sy8824x.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/sy8827n.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps62360-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps6507x-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps65086-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps65090-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps65218-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps6586x-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/tps65132-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/uniphier-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/vctrl-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/regulator/vexpress-regulator.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/tegra/reset-bpmp.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/reset-imx7.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/reset-intel-gw.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/reset-scmi.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/reset-simple.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/reset-ti-syscon.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/reset/reset-zynqmp.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_io.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/n_tty.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_ioctl.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_ldisc.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_buffer.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_port.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_mutex.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_ldsem.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_baudrate.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/tty_jobctrl.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/n_null.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/pty.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/sysrq.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/vt_ioctl.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/vc_screen.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/selection.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/keyboard.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/consolemap.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/consolemap_deftbl.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/vt.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/vt/defkeymap.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/hvc/hvc_dcc.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/hvc/hvc_console.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/serial_core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/earlycon.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/earlycon-arm-semihost.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_port.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_dma.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_fintek.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/serial_cs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_aspeed_vuart.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_mtk.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_tegra.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/8250/8250_of.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/amba-pl010.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/amba-pl011.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/imx_earlycon.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/sc16is7xx.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/uartlite.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/altera_uart.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/altera_jtaguart.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/xilinx_uartps.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/tegra-tcu.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/arc_uart.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/fsl_lpuart.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/fsl_linflexuart.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/digicolor-usart.o' being placed in section `.eh_frame'
> >> aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/liteuart.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/serial_mctrl_gpio.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serial/kgdboc.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serdev/core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/serdev/serdev-ttyport.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/tty/ttynull.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/mem.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/random.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/misc.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/virtio_console.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/raw.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/lp.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/hw_random/core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/hw_random/ba431-rng.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/hw_random/exynos-trng.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/hw_random/virtio-rng.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/hw_random/cctrng.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/ppdev.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/pcmcia/cm4040_cs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/char/pcmcia/scr24x_cs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/arm/arm-smmu/arm-smmu.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/arm/arm-smmu/arm-smmu-impl.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/arm/arm-smmu/arm-smmu-nvidia.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/arm/arm-smmu/arm-smmu-qcom.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/iommu.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/iommu-traces.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/iommu-sysfs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/dma-iommu.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/io-pgtable.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/io-pgtable-arm-v7s.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/io-pgtable-arm.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/iova.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/iommu/of_iommu.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/parport/share.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/parport/ieee1284.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/parport/ieee1284_ops.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/parport/procfs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/parport/daisy.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/parport/probe.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/parport/parport_ax88796.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-init.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-rb.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-write.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-cache.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-read.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-gc.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-recovery.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-map.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-rl.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/lightnvm/pblk-sysfs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/component.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/core.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/bus.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/dd.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/syscore.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/driver.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/class.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/platform.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/cpu.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/firmware.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/init.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/map.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/devres.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/attribute_container.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/transport_class.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/topology.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/container.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/property.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/cacheinfo.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/swnode.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/sysfs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/generic_ops.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/common.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/qos.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/runtime.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/wakeirq.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/domain.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/domain_governor.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/power/clock_ops.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/firmware_loader/fallback_table.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/firmware_loader/main.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/firmware_loader/fallback.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/node.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regcache.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regcache-rbtree.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regcache-flat.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-debugfs.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-i2c.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-slimbus.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-spmi.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-mmio.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-irq.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-w1.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-sdw.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/regmap/regmap-i3c.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/soc.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/pinctrl.o' being placed in section `.eh_frame'
>    aarch64-linux-gnu-ld: warning: orphan section `.eh_frame' from `drivers/base/platform-msi.o' being placed in section `.eh_frame'
> ..
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210131042905.GB28302%40intel.com.
