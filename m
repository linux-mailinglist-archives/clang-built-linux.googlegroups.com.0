Return-Path: <clang-built-linux+bncBCAPDLF44QLBBSNE436AKGQESFJ64JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 297D629D0CF
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 16:46:18 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id s25sf2494445ljo.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 08:46:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603899977; cv=pass;
        d=google.com; s=arc-20160816;
        b=WfR6NUYWjPa8PdOW9aadpOsykMJjZ5jbWHxHtbkEInEvJ0YD0uCN0uK+GAy+pEqNQ4
         WS7HlPTlfL5Z30HPrCmnDL7hq/dmp8/EsyfUEAZauGXoy1clILc+AKBLfw35aEYo+DW2
         AG79iJ8SHDlVFmkqQe/LqXVoMF6hWUCiXprtmgE2nXwAVtU+t65Nkr0tD93iPZN4facO
         Piz7lPs3YzdkfKdCUzfYf3IMhazQ1iW+UtLCz4ME4Gecoe8YbAuHAAq/75WjKK3BAotd
         C7TlW6ykKpqf/zURQOfYeHmqEtdS2UJJy+NtRUwkJo3R4+dytH2G/8FiLxdeEnZwMm2q
         Vtyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RTM/d5oh1ll/spdJYIxuQgfUKrkLRS8ic1543l2IKkw=;
        b=tdFGM7RNTTg0+TbX1db/4SGualAKJrFD1821LjBKpnQg1BUrDmNNWsh7DnJM+Ku+Xf
         V4xD2Hm8x5Xj2hFMgsx3oSVA1KS8wGmy68kux4odsbqMBWZqkM/QICKaiQMqmb8Eyfyy
         qHIctBPc3esFde/hQ1le+vY7lr+SHFTrQDEWWbjmXM7butNylsvS3dNWtYcxFsvfKTqz
         IpJmTJvER2VCk8rt0j6xdIVqB6DPmNNQDVTmABmvteQpoAUU4bQghAYhz5NFJoDTTaWN
         Kr9GypQvXnH7ukvY91QK1b2lxxqjPeaHGgSru/FZKj5sT6yhGRreFE6OtMgx5KPyiJGi
         xnDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=bVgcOJND;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RTM/d5oh1ll/spdJYIxuQgfUKrkLRS8ic1543l2IKkw=;
        b=SmtT1j/oEIp2P0NLjqqRbcNULh/HiR12JE1uFUJ9G3MXtGO50qBHPvGG57htrhm9dG
         PlTDIukIbWYBOMDm17qBBqfDWtjRyVQH8lwKqbQIXMwCnLxS6KFRdYp28T+sXyMstuSH
         TPsmxN8O5HSE8axItxstOqOP+sd/kTuaBiQK9BxPq2UWNHBFAfEiiR2XYKZHEAtySzzb
         sXJMJHnS+QJeE9C/93hWunbsn82ThGG23ChJAik7fW8WrJUC4LlYWnM+aB5IUk8kKFdC
         RjHVQsJHbgaMeshdORIyZhVNb45YXg+iimBhkpuXVGkZoKhztXQdtqNpFMjZCSvPS+Wr
         ZIKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RTM/d5oh1ll/spdJYIxuQgfUKrkLRS8ic1543l2IKkw=;
        b=nF6NyS5xpVYfjM7HbgfN9RUrzbFmiAg8VaNUjOG+zeuD+YYnPArrjLs724F3jz042N
         4Y4SNFqMVbmbNJIDBcRWDwp7m0v4bDx5jEYJfrRTlSTMrfBHREBrdERQNAoGvj8J8/fB
         DnIAJQPyQnkqVm+Ao1TCpNzoaBv8cz3IVvoZD0ezebc/aZwHpJuEGf7mpChMaG+tyeeG
         7Ms5OrN4iZH/D/lLKt0kPWEhPQejpxGSB3zGCGFYNc5ObSrn6a7ClhbcmR4slm/XH0n/
         c9fkgHzlRGuccoJ19BDgQw7HYTHBnLPGGSytrytc5adnbpzrNJBwYsyskKmr3PB2nDM+
         1Arg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530uGGinNfAx5G9h1+1psPaHidjcs7AP80A4Dyhkh1/nHkQeJbXX
	/V42XvYfhTD2KQRoDfVnw3w=
X-Google-Smtp-Source: ABdhPJyz8Ll79Qpkfg3YIUnk1nweZ7qv9wcD2AsyKuYgvGDNxShh066/fUUv423S5cTZvnprJIiP6Q==
X-Received: by 2002:a2e:54f:: with SMTP id 76mr3374861ljf.73.1603899977599;
        Wed, 28 Oct 2020 08:46:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:14d:: with SMTP id c13ls1090707ljd.8.gmail; Wed, 28
 Oct 2020 08:46:16 -0700 (PDT)
X-Received: by 2002:a2e:868b:: with SMTP id l11mr3411592lji.102.1603899976512;
        Wed, 28 Oct 2020 08:46:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603899976; cv=none;
        d=google.com; s=arc-20160816;
        b=eG/5AriEEFJzZgXvtMnZTEdv8Z0HP9A5nBMRwoCCR/H2Sef/z4f0LkqbpwYhamDV+9
         icGEpUgfwpICpP0HNRdaA/emwP/XUyTgH7zLA6kNwbuFcEmuN3/dfKqloHfqL3ZlPKOC
         w/5fxZPyTy77xMCVtGAKbAgqDwly6QefWcvk5CJDdXZtHun0JXf/N4XzDiODGWZeShgh
         l9of4mavG20ms/oxYP4XzKQyEFQjl1gGDW6yjfiKS9ZcMRGmH9XngSrHCNoIwX1r8GHQ
         IBHEymrnMQlgpf+dUn2dj4lsScyGXsG/jFGQ/X2tl/hYO2sMfxmkDqT/ietNF/tscU9J
         6Gbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jxN7dwqApdR1ej5dh2h2T4IB4++cE/G2cOg1rxvC1QU=;
        b=g/Znz7uXZ+2oSXWRuMeOm7ZaUJPGuZSoyPbvYacgv8dMyjuGk4uGceQzoiiqBC8sNc
         wV+lcHTXGzLEQFZTLbieQKbwjAni55TSOw/Ypv5IQol+ztM2HNlWUd8Ix4K5NnNEkC8x
         U9j7vg+ch2jS9sxx+Chc3/9x0S6bepTA7akKFBgc3H4jzG/0h8etQ6ucJUMz9zmFBovp
         7U+FnmguhJyZFHtWqXivS+V4JWaRGlf/IxkjWWyRmhWLFruqp/gXdiw+YIClbOW0koxV
         rJyea3fTcX1jnrbOxQdE+jnPQBq9iihtSIt7VQHOQQPIlqu4iOoJ1fiCMAuDSru95iHo
         Mzpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=bVgcOJND;
       spf=pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id t13si179661lfr.13.2020.10.28.08.46.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 08:46:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.thompson@linaro.org designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id c18so23318wme.2
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 08:46:16 -0700 (PDT)
X-Received: by 2002:a05:600c:2049:: with SMTP id p9mr6483756wmg.147.1603899975882;
        Wed, 28 Oct 2020 08:46:15 -0700 (PDT)
Received: from holly.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net. [80.7.220.175])
        by smtp.gmail.com with ESMTPSA id p4sm7367869wrf.67.2020.10.28.08.46.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2020 08:46:15 -0700 (PDT)
Date: Wed, 28 Oct 2020 15:46:13 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: kernel test robot <lkp@intel.com>,
	Andrey Konovalov <andreyknvl@google.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: drivers/video/backlight/ltv350qv.c:192:12: warning: stack frame
 size of 13472 bytes in function 'ltv350qv_power'
Message-ID: <20201028154613.fue7ilxdihj2cado@holly.lan>
References: <202010260230.VivTG0Gb-lkp@intel.com>
 <20201025121708.04d4070a44e28146baf9a6a7@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201025121708.04d4070a44e28146baf9a6a7@linux-foundation.org>
X-Original-Sender: daniel.thompson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=bVgcOJND;       spf=pass
 (google.com: domain of daniel.thompson@linaro.org designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=daniel.thompson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Sun, Oct 25, 2020 at 12:17:08PM -0700, Andrew Morton wrote:
> On Mon, 26 Oct 2020 02:15:37 +0800 kernel test robot <lkp@intel.com> wrote:
> 
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   d76913908102044f14381df865bb74df17a538cb
> > commit: cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4 kasan: allow enabling stack tagging for tag-based mode
> > date:   3 months ago
> > config: arm64-randconfig-r005-20201026 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1c8371692dfe8245bc6690ff1262dcced4649d21)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout cae9dc35ed9ff82a99754e51d57ff6c332e1f7e4
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> drivers/video/backlight/ltv350qv.c:192:12: warning: stack frame size of 13472 bytes in function 'ltv350qv_power' [-Wframe-larger-than=]
> 
> That's a lot of stack.
> 
> >    static int ltv350qv_power(struct ltv350qv *lcd, int power)
> >               ^
> >    1 warning generated.
> > 
> > vim +/ltv350qv_power +192 drivers/video/backlight/ltv350qv.c
> 
> Odd - the code looks pretty normal.  It is possible that your compiler
> is (crazily) inlining ltv350qv_write_reg()?

Certainly could be.

Same config compiled with gcc-9 gives ltv350qv_write_reg() a stack usage
that is large but not crazy: 768 bytes and dropping to 480 bytes with
the sanitizers disabled. With the sanitizers enabled then even the 
cumulative stack usage of ltv350qv_power() through to ltv350qv_write_reg() is
still less than 1k.


Daniel.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201028154613.fue7ilxdihj2cado%40holly.lan.
