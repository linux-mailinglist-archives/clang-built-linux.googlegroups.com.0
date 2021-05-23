Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBOWQU2CQMGQERHELGYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 05AE038D80B
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 May 2021 02:56:28 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id o11-20020a9d5c0b0000b029035b9aaeeccbsf817649otk.10
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 17:56:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621731386; cv=pass;
        d=google.com; s=arc-20160816;
        b=k/IU/hA4ImXRPek27XAIeSrFC0Yr4clJ8SBARjlJo7Z8hmy7Jg1jOq/XQ5/6+5zXcM
         /LwaDQ27wK+NIYBFrUFDkDrGus4VgtL/VLxgOO16QoN/rzbdGVf4bqZWypQbj4HStSO6
         NC9r3Q6kBetA/1JK6xA5kmN6hGLg6Zvn9twQuvwTPGfr2VHR0gy58naAtnBdDyVQhNaG
         KkxvX+lYbIhRiT/nIZKtTj7bbUf7OXj2laGKF6mj6xB1ydxHdCH8IVSdZq5mzL4Z6U+a
         V4YoW5Fu/BV31xE+Hn2dFzJ9W0KDdWqNnlOZmnL1VN+WjU/N1Fr968sS2Kr1iimMZ9Pd
         K9OQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=XFUrV6Qy0l+pZUkhwDpNtNxt13z8yFF7CnN1H2N5foo=;
        b=JzMmRoMyWiaMmRDMnyH9ExNeGLGjl3pg/DULdlustB8K11jPX2NwGVwVIFXih8qRgL
         eEfxwqvZhAGkinAJ8OttZ9CSWM4tMWGjFl6op2UrVdudWH9AT0PNEw/+sBnnwBub66VU
         BE7fb7tC29SyI/pxR2SMUvpG7MEIL4Q/mb+LmKx0v1du+xr5RFuA05gwsqgmRukm74PR
         7C2RzpQrlI5faFCGprgeeWkb6CK8YC/lZfGnKbp97IxLKEXEm7DDNQF4nlwL7veCQdf/
         gJpLb0NS7DsRZRvKJy5Qgd/VH+xLz+fXbMmSmth6C3E0buTaiyFWSWx/DXCZ1mCP3MMJ
         tQwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XFUrV6Qy0l+pZUkhwDpNtNxt13z8yFF7CnN1H2N5foo=;
        b=hHZVtksl5zv1QVdNyPxDA22/FCE+gIAAzy14mEEKiMe80GNM5KhauqDobd3BEI87Ok
         cTeuBgeKmtQjORVke3TIjThk6xwGI+sKDeV23Xyj+qHdMvZQHLs1m/1EmcNIym/HfIFe
         W+2az3tS3PJ9eUtN4P1Aa/pkTRRI5n8wGHqXgBQAesLKUFFSRWGD630dSryokD3ogQen
         FGu4+4U8RvLspHN+3mdNfOS7znMzleB7m29DBB5zeJBWRfheVLQemtVG7j0+O84FvKSX
         jg0Gu17yidnZYTlEFpjafLgRNZNnqTyGUGi9ukQQQXSeHX9Fl5gDJl8a3ztKAg8oVLzw
         yxsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XFUrV6Qy0l+pZUkhwDpNtNxt13z8yFF7CnN1H2N5foo=;
        b=ODYkdlJyZBq7CbEkclR17xfUU4gvZjKv4/xVJdJGdkhA54Qo5A13eal8GSpJbzr+JK
         dH4BbOBKzJY7rwflzkUwLmXr13nbfbbTjunbTQnalNYpKIeVNJhKCypu3OtR+Zdhwddo
         YNE+65B0Aa8eOeEpGVj3bJXYti3rwvn4by3ziu4wP6gg3GpvBlY4mn6redN6nUI/3L7N
         NQdHOxIidRPdpFFTa5McXuJdqBSx8w74y2mF+kFtuxnGke4m+CiO5aPYy+hK1uLaq1lu
         4GAH9OMQeUfnEmfxmRmeVsX7B3eA2qBjRld7UtEo9I2DgltAya6T7vtvOcJtreSRhJGm
         7fnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304W+6G2fsm/VtZ187jbhGgqWRASPob0vPJCGBU64DOy13lMgMA
	My8a0HrYg47zJVWFxG9/Pog=
X-Google-Smtp-Source: ABdhPJx5WAd9dFJc+8HPJfWwND1sPRLQkXe0XVW5EIbdn8+P9XynosEVfFoWbER9gGM457cG8VPcHA==
X-Received: by 2002:a9d:20a2:: with SMTP id x31mr5233592ota.263.1621731386748;
        Sat, 22 May 2021 17:56:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c8d:: with SMTP id a13ls3181528oti.0.gmail; Sat, 22 May
 2021 17:56:26 -0700 (PDT)
X-Received: by 2002:a9d:71da:: with SMTP id z26mr13875871otj.41.1621731386170;
        Sat, 22 May 2021 17:56:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621731386; cv=none;
        d=google.com; s=arc-20160816;
        b=zZT0uB2G3R99IQlM4UP35PjIOA5UXEkMzM9yzoSXaCt++pBbJwpCGTHaF1hghmxCHl
         mZ7BDFdB7et01tZVcqb2AXhsUD/hmOnVRpdseMPG7reT90ME9W8ZV7LrzH3+IJO3veBL
         u41M39QnpgKU3yV1z0guP3YfFeiYEmq53nYR5jPaRFIEzq4ayH9uocfSGQbBrRmHCJb5
         m/w9sLCVNDg0I44xjkRZ+vBhTL6awB1GVMwvjxY+6ifTHQueXHNV/X0aFzaZ6KO6ljsp
         Upoe+u3VBoUWSpE5FTaWVDXq4hFeAJ+Ajs1l6XuGQmLjjgZqaOYSXeMz0uddmIndMiY3
         Lpbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=3EJJckVbkVkCKDdDYGwljxjRKFAaF7KRqQ+ZEpORc+w=;
        b=e4gVpF56M+bzEFjACCYWViDV7TrOPNzzkDSHdhLFOfPiaV53R+187C/EoM5Ac3yEXz
         xce3PV443b1Mq+rU2f6miw1GnsezHVppmz4NkbrEOzrrA2jPRw9e2pt4fSHUJoEoB+fs
         ZqgYKWgjjxMvbihKiFVHY8sYegfi28EWfwUG1fVeOMjkAC78GbdKw3wYZHetv4EhIk0T
         57Blbr9eMuaSzFynGmzFjSVY5+cKrG9nXI29hB4bkIw20/4RCHgP/mjowYuWZEoej+8j
         ApAe4sTOEYuaNFTdNCbqWAwdSCrW+96ZWj94Vtvb2/N0WKhflzWUE4v73NLycc4vdkDF
         7ltQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from deadmen.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id w16si1452659oov.0.2021.05.22.17.56.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 May 2021 17:56:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
	by deadmen.hmeau.com with esmtp (Exim 4.92 #5 (Debian))
	id 1lkcPg-0002r7-TX; Sun, 23 May 2021 08:56:16 +0800
Received: from herbert by gondobar with local (Exim 4.89)
	(envelope-from <herbert@gondor.apana.org.au>)
	id 1lkcPV-0002XJ-9a; Sun, 23 May 2021 08:56:05 +0800
Date: Sun, 23 May 2021 08:56:05 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: kernel test robot <lkp@intel.com>
Cc: Suman Anna <s-anna@ti.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-crypto@vger.kernel.org,
	Tero Kristo <kristo@kernel.org>
Subject: Re: [cryptodev:master 43/53]
 drivers/char/hw_random/ixp4xx-rng.c:26:10: fatal error: 'mach/hardware.h'
 file not found
Message-ID: <20210523005605.2qy7exr67pg2nz3a@gondor.apana.org.au>
References: <202105222208.Ay7upVmB-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202105222208.Ay7upVmB-lkp@intel.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Sat, May 22, 2021 at 10:48:19PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git master
> head:   acbc3fb26feed173d9ca6b0a16d0bed01c40f339
> commit: 3c0907bc4c47475734ffe21accc31261527dbdf5 [43/53] hwrng: omap - Enable driver for TI K3 family
> config: arm64-randconfig-r026-20210522 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e84a9b9bb3051c35dea993cdad7b3d2575638f85)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git/commit/?id=3c0907bc4c47475734ffe21accc31261527dbdf5
>         git remote add cryptodev https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git
>         git fetch --no-tags cryptodev master
>         git checkout 3c0907bc4c47475734ffe21accc31261527dbdf5
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

Please ignore this.  It was a merge error on my part.  I've fixed
it in the crypto tree.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210523005605.2qy7exr67pg2nz3a%40gondor.apana.org.au.
