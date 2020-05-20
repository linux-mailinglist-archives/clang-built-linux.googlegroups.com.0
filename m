Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBG5ZST3AKGQEIGHK6UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6940D1DB2A1
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 14:03:41 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id l7sf2606522pjn.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 05:03:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589976220; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fy7DwdzapGeNAMdJy5V5YabHJMp+ZITytI4g44l/TomOKQAj6x3o/YuhRY6c3Z+Tzc
         at+6Qytjt1Nh0E0lPrya8eYxPEs7Y2NiTCMqARkTmDZaKlzGIYo4KL8bh8+ndtJxF4gN
         rUK49bIBHQQJsJS/aHxQjgHrG/uwMAINuItirgIfanFoNQxdIjRj7M/7oZKQ/Ygh82ua
         6qqIGHc2Z+sgqYIT0T0KTqveWchtZGt9c+aLUSgsJKYe9mkjbJUq6zTL9Sna3a8SEGd1
         qgxt5Ru75AeqNihhODv9jJWnCGB+PyMRBDgqljwBZIoa4J11i2dg3S6TOlukUxHa0KQj
         Ge3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Vm5jsRxnr59xNZylInmYmo3habi4khB/1FeEIIfaIr8=;
        b=d5gbg0LZCTdhseau0NcCm9em8jgH3F6IgJYM4WlrKr9rUeFeu2pjw2gAXVQySv/2fQ
         YQX5fpqqJJJYWDeWcVeDe9D58IEZzLosKO+yQIX3qGz6fz2dubfVLTX1w0V4SrUXKze9
         4zAL/DiON09PR/YfZmfalQ+cdC2hR98RyuB+OEU8dc1owKx03Qx4pM7QSEIpGXerrXVF
         QqBhpRq4ndr1IRRUAltRjV5vQqKvgWkRKy2xsZFagKPQdjxMBRsHBZxzMFPJgvqczMAI
         rqrq+Jr3Gyve4phXBiVxCYmovUVEcNRVRlUIZTrn3JK/s/o5a3DudXZl+ziI4LZy7wth
         3daw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OKm4+EwS;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vm5jsRxnr59xNZylInmYmo3habi4khB/1FeEIIfaIr8=;
        b=ZJWYeTepszpfVlFH0F/fMiVLU0i8i5gJQ6r8ry+vdF6hb6V7irULYQ53TefpMPvt8j
         R+3IvHmvzn65AaTqwHkBODZY7xWYameoKS/uYfvYGIzzh1Peai9jZIVinT12ZJQeTdP6
         UZw2AswFmEhau5lYF0otGmTY8uANCtg/HacWnZOslaygvhlpMKIkLc2MlVuPK+frc9Oa
         nFYRoIvVdHHlTtbUqQnH7LfZkDrU0IhxPVfKi/WlSZ7nFj5uEEpFxOT4KZVp1uVcGQig
         C/HrafDc5dF4V/x3QP4CBe7ya+t591JkcSjp2y+L5JUFCiqPwLPgg53EK73pUFpoPMyR
         8Ylw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vm5jsRxnr59xNZylInmYmo3habi4khB/1FeEIIfaIr8=;
        b=YKyOX5wBY7rNc8jMtXgbj8xGceLH4XTDSmB+rQC2vQ7gjwLKrLxSNys20Mtq4Qxvdg
         kZYcb+ic5suKpYtlkJ/ACtEFWLVH08KZx8fvp8JBImWkaqNQnHXqZcpBPT7//Bup/dGa
         aWsAjp5nFMfGIwOpHeieBgL0cx6wB0ilZPPWkms0zCQ//T624rUE3Qz265f8ycNkOgBD
         ZjN7i/8mdHdbmA4YaGmu63dCWKZ5mqlzxHBTYBtPagkeY3hG552y2qByD5FlirW9r0K+
         Hfx6RRnE2DY+PR//YsB7xzZDOO5M8IC1D0pi8P3Yfzc//KxH6vxGuFgKSRw5LN/+LaIN
         PVSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Vm5jsRxnr59xNZylInmYmo3habi4khB/1FeEIIfaIr8=;
        b=OmroWHQk06/vXcTZQpFw0tym0ChAeZ/UvLj/vbvKiu8t+nRGomuawcFmGakwE3D1VK
         PnJaMdyB9hQeXSqyy+J1fn9PotpCcf8A/kdTgISlGbN2qogKD5KUz1EzPwNH9wfJ+W++
         kAKYFJGQSX6Xanz39JoFLwYFvpAL5JgKRzaURfJh1LQEebTVoMFKDI1zeQMHp5pWnIN3
         +xFYk3NfkF/YdzblWOcQnhfbaHezWM4H9CmOIB/iTNCCFMOEXfihrkMwieFoUpndwWjK
         TcoZ193kfYtKhee2+zO7zonfYBumr7iISgltn66cVoEdlcK6vhLLnvtKTdb5eTNuBegf
         YlKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326V9QeSfjKFNda6ijh20QvjtVq24Txr0m7e2Oxjkituqr4VqEs
	MKJbRDxQbslMJGoCN1Y+AeY=
X-Google-Smtp-Source: ABdhPJw0RsaGuWOtLENlZGHfcpuHPzkJjHrt2P9Z6LjInSkScyLxUsUyGCipXQmuRPng47DrhqJpfQ==
X-Received: by 2002:a63:e60b:: with SMTP id g11mr4006032pgh.120.1589976220073;
        Wed, 20 May 2020 05:03:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:191:: with SMTP id t17ls126954pjs.1.experimental-gmail;
 Wed, 20 May 2020 05:03:39 -0700 (PDT)
X-Received: by 2002:a17:90a:1a17:: with SMTP id 23mr489097pjk.198.1589976219411;
        Wed, 20 May 2020 05:03:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589976219; cv=none;
        d=google.com; s=arc-20160816;
        b=zbsOBi2pZ/pkaLCWRIrXt8YDprfeqZ4ARCBZOuJZwk+20GgflzN2305QMVPZKmPtCL
         VMvUbKmxzguQafhmmu84633936480bqLpleSxp31yTyNO71aEpcWmgc9TBWlIR8RYxD9
         r0g3gp1t/TxoLjXS2+n2ZtF9HV5YUJ0Xxa5HAFMFcXl2gx9+piYId2Yy52PuM7HzVDwt
         KTABKVBMQoMO4IIV1IwzYqZ8nhFxkFo1W/a5bnipKgHqm1j42G8Jt6+MQBJetShSdK13
         fmH2BHnxm2eR+UGDaykXHJLpBDRKlMCVuJwSjKoOzQWtsnENV0rqo4eBrPjyn6/VoUy1
         3N6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uSTZY+FCH/CsbXzCEs1ajXnnqSDIAGZV3gPCDr9dJDI=;
        b=OG//PAQTk8em4insGkErfiVm0VM8eUFFh7XSGL92r1MDGsvd84q7gMy7KeL/6fydhW
         EPwOhyT9ewcg6KL6MWo61fWMrWlsdAhVQd9Wcx4QbDU/Qqyn2vBbJoqOeCJtA+nVmYW2
         vLiYs9E6Uu9Bf4fD7E2n2+leaDfXWijH+vnaIbBomwut4eldqFMb4fmdHUUiuBKHRcP5
         JutLzFz32Wmct/AyuC/+65+icVeQJJ83eGFe1OlAHDhQYnnML9K34H+Sy547I2Puiyo1
         8AkOxVQU9WSjvoAZ13hacxcCBtEJ0FQ9AsK08xObvSulDc9aaA1luvRGAV41UhY6aY9X
         dLag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OKm4+EwS;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id kb2si120231pjb.1.2020.05.20.05.03.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 05:03:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id b12so1225729plz.13
        for <clang-built-linux@googlegroups.com>; Wed, 20 May 2020 05:03:39 -0700 (PDT)
X-Received: by 2002:a17:90b:3651:: with SMTP id nh17mr5160248pjb.228.1589976219013;
 Wed, 20 May 2020 05:03:39 -0700 (PDT)
MIME-Version: 1.0
References: <202005201042.yjSO10j2%lkp@intel.com>
In-Reply-To: <202005201042.yjSO10j2%lkp@intel.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 20 May 2020 15:03:26 +0300
Message-ID: <CAHp75VcwekGU3bQDWkaTmLE8SPU7NZoUY6Es9Fy8oG5E=LT81A@mail.gmail.com>
Subject: Re: drivers/mux/adgs1408.c:112:34: warning: unused variable 'adgs1408_of_match'
To: kbuild test robot <lkp@intel.com>
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OKm4+EwS;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
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

On Wed, May 20, 2020 at 5:23 AM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Chris,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   115a54162a6c0d0ef2aef25ebd0b61fc5e179ebe
> commit: e9e40543ad5b38b848879768359fd13650529961 spi: Add generic SPI multiplexer
> date:   3 months ago
> config: x86_64-randconfig-r022-20200519 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 135b877874fae96b4372c8a3fbfaa8ff44ff86e3)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout e9e40543ad5b38b848879768359fd13650529961
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>

Fix has been submitted:
https://lore.kernel.org/lkml/20200520120122.67528-1-andriy.shevchenko@linux.intel.com/T/#u

-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75VcwekGU3bQDWkaTmLE8SPU7NZoUY6Es9Fy8oG5E%3DLT81A%40mail.gmail.com.
