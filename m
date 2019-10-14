Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWVZR7WQKGQE5VRPKKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C352D598C
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 04:26:36 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id a130sf6545255vke.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Oct 2019 19:26:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571019995; cv=pass;
        d=google.com; s=arc-20160816;
        b=FYlVxIPSUFw/YFisHUsc1OvEdH1kUJvDpLvvvf1GHbLAuIoJc1+0uqUXkfZEur9VBc
         ZD+ndQob0GkKARYREofiljGwbXiRjEGkOgdDKlVsWuFS6yrJrMc/U/zBn0E6YYWRKCLz
         GLodttAPvPE1tvwkYupSPneE/zuSZdMxxh8yZPMZVfCMfKJIsWgMGgvKnid2C10VVVTg
         uxG/JOyaxaKl4ecxzfKcuoFX53d8uT4RtFeaLSGAleyhU67dIg0OVE8nQWFGkLSy4lUW
         kykn2sntGhI2oKb/+uiyuOeutBkrm4i1ofgf8sRvHwolqM6HIARmCg5CgqPaeOrGfICI
         8flg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=A5VZQW238mhEuvLN9mWl4SvFm8dd9f/XU6ARkqvhDSg=;
        b=t6uvcI8FZ/geYZVKjSAu02KGrqX2QcG4XJwnS5S5PNlrr0mpvYeQcz9oLxDr/dGLZ9
         +lbJHfxHO97yO4EXi/FDGNfV3GqwY4V8B6o4bZOQgpzHR6zPXfxyupgRpFa9sKSS2CIS
         hlKcfOlGhSpfbjEcdj0cQgG7Az0zTTZHY16uGS7717aiPdt6O41rhYnhXgJVuliEFREe
         IJRjb3tjNbq9U0Pgd8rio0GxIAv+OuRgM/vcskWsrdYbD33u5ekYXgvm1H0wAi/iD1q7
         SzvBa0ZcY1jYvHN3qRRZgzTLiE24e7ND0AuCSddrEV53G+i7kRgRltM5eEsVxQBI2cvl
         g0qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jKrnyQS1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A5VZQW238mhEuvLN9mWl4SvFm8dd9f/XU6ARkqvhDSg=;
        b=hz6d8+HaMNwue1d7Iqa+/KDKGbQ6tKMEBwDEM5lPZRPGW1+1vDm3hSUuJn0glsfLcq
         eJIwGPPE/fvqX0wMl6sANYs46D5S6cc1sAPq9AuFjkrZC3Mag36pu1AkHH4naGzs1V1f
         oeJQI0WHg/Akwum0c/o/9ULyDuTtioJEdCjJEpuz5+sGysAp3Z/umUbe/48u+ZV8FRwH
         72AL0uUVriM2WtQkz7KhCeamXzZ+i9aOswxYt3UPNfbglJ6AFSBgl+mDTSJtxWeRLTQ8
         1G/wFEcpElhIb2wXwaBkrgw/QeT8AH3e+7Sua0KRZErSWtm1C/x4uhFwCpBI/lIRmLP8
         KncQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A5VZQW238mhEuvLN9mWl4SvFm8dd9f/XU6ARkqvhDSg=;
        b=lZXyvPqQJxIZJHAuIN2BQ2crxD5gBoq1BS64HgmRvCdGLVsUJFkyvReg2Jg0AQWVCE
         rxHBbWQ4lAVLts466+4Pu85Us4b0xtj3i+ghRr2UXIKcIorfitE7K4LWLv6EYqUQrKhL
         dqfYJkm8GJ6GmNBmaEYau+hCB1BrHb5kseIegM5kJh5NC7/MXWKjLnZwOK2skl8dn4Hv
         bspMICJ360JG9PbPgXF8VBdrDcikWFkdu2NREnibmimT6wOhOABaL/K0FO/paPR2Vv2v
         kFBTmvDnb/aSfiB5V2yBFweT1f0FSNrGB//wXQRBFFgeQunfonS3IK60ftF8cR0v3aaP
         Xjyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A5VZQW238mhEuvLN9mWl4SvFm8dd9f/XU6ARkqvhDSg=;
        b=Nwa+lzIQEVeM42Ovp27YZL92GaWx6yqUuZJhIyR73LBEOPH7r2yQSj56M+Tb/Iq/if
         umXZVs7WRHfdM6icnYEP1awATM0B5awL6fkJGF/gVcHpaDV9Ify6XgylAfzm2E9mMXhP
         PpKjEnAH9VUvT9r8cjki8G6LuoYfBN09e5c0pwF5HlFit3O97xfGhmnjqJi+k703swMJ
         DAI/DKMgCu618Lu3HMkYQqy0IJ9Y0s5S1UQBliUfZa4lhAc4eNBMxzikuw8dBSx5Bojh
         9CN70NSwvGLwsYcr9qAuClf6I5P89knk5ahINEBjMxiEhmfuDWhclCILQXx5IG+zpfLV
         pGRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXH4sIlkcBpjkpMuaFsnDjaxMjHciHybeMiY+TSgakO15WviJQX
	hLEHyZV2T/7iyjUtjRTvzcY=
X-Google-Smtp-Source: APXvYqzPlgCSeZ7SnjbOHsquCC9fu5n6FFxe+6jaU3dpIYv/fguLuUpjPB36ByL5p46cmCzV9516/g==
X-Received: by 2002:ab0:1333:: with SMTP id g48mr9048350uae.5.1571019994905;
        Sun, 13 Oct 2019 19:26:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:318f:: with SMTP id v15ls669525uad.15.gmail; Sun, 13 Oct
 2019 19:26:34 -0700 (PDT)
X-Received: by 2002:ab0:208e:: with SMTP id r14mr12209741uak.138.1571019994393;
        Sun, 13 Oct 2019 19:26:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571019994; cv=none;
        d=google.com; s=arc-20160816;
        b=ACGoomQWhjj1EZZWYQ45143wtaW9rro2wC4EagepTxhZ4NM31PNPhixuugn3lz5uGN
         gwDl25kZSGSkM2ReSNPvzkCJoNW80aeRcf9fL4fzeIfJcO3RIWuBVATf5xZMdfWh1+i2
         edxGPEgpPJkRcWHLlDa0kJe9Yq3Mk014hlV4AJLbMLW+cjOWu5ZRit+fg/HhP0yw6OAX
         3d8Iw0H8G8gariWzaGp+qqCXEuFw4RBIN4ZB+yam0C5QwmiND860rcCDdWwQTkH4juGM
         isulZ85flEhTnsD/0+hYIacsPvLo/ymCf8UlS5MhKG2cb6kRGMBAWhrFIbMdhQiIV8R4
         1CPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RxN3YWc8co3WpzgAgCGJyKIact7URhE8U4Q8POhgJwA=;
        b=zevnrlD1NtmXUasSVDGHD6eZvIrgsKn7GxQ41tLOdFWjz7sGlzi8nQsfnWw4dck1LQ
         aSV9vcU52CtDoCvP8MnfVVrS6rQcyLJ8x7ufgXo0hDYSmiGzPxdEft8XHn/Zjg8OpsGt
         7e/Gp/rQ/kIyRRTyJDxX04B+hdw9lz0AVAck/ka1iYTls1/hN8LIiVUAVxUeKF8ao7WP
         THP7XpoBhE45KHex40gHpaXVPPVQVC6FnvxjzFRh6u3kZRQp0bpepWfIAA/xG2oR3yDA
         t4Hwd9cEC1OGiqJM4J5RVdZL81nj++S3TMRxTvXtL5la4hW1flQ9rxgd+yUd6LpBtkOp
         8g3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jKrnyQS1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id 136si1316498vkx.4.2019.10.13.19.26.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 19:26:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id 83so12540671oii.1
        for <clang-built-linux@googlegroups.com>; Sun, 13 Oct 2019 19:26:34 -0700 (PDT)
X-Received: by 2002:aca:4042:: with SMTP id n63mr21876291oia.124.1571019993582;
        Sun, 13 Oct 2019 19:26:33 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id u130sm5132102oib.56.2019.10.13.19.26.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 13 Oct 2019 19:26:33 -0700 (PDT)
Date: Sun, 13 Oct 2019 19:26:31 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] kernel: dma: Make CMA boot parameters __ro_after_init
Message-ID: <20191014022631.GA14421@ubuntu-m2-xlarge-x86>
References: <201910140334.nhultlt8%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201910140334.nhultlt8%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jKrnyQS1;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Oct 14, 2019 at 03:46:20AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191012122918.8066-1-mayhs11saini@gmail.com>
> References: <20191012122918.8066-1-mayhs11saini@gmail.com>
> TO: Shyam Saini <mayhs11saini@gmail.com>
> CC: kernel-hardening@lists.openwall.com, iommu@lists.linux-foundation.org=
, linux-kernel@vger.kernel.org, linux-mm@kvack.org, Shyam Saini <mayhs11sai=
ni@gmail.com>, Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprows=
ki@samsung.com>, Robin Murphy <robin.murphy@arm.com>, Matthew Wilcox <willy=
@infradead.org>, Christopher Lameter <cl@linux.com>, Kees Cook <keescook@ch=
romium.org>, iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org=
, linux-mm@kvack.org, Shyam Saini <mayhs11saini@gmail.com>, Christoph Hellw=
ig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>, Robin Murphy =
<robin.murphy@arm.com>, Matthew Wilcox <willy@infradead.org>, Christopher L=
ameter <cl@linux.com>, Kees Cook <keescook@chromium.org>
> CC: iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org, linux=
-mm@kvack.org, Shyam Saini <mayhs11saini@gmail.com>, Christoph Hellwig <hch=
@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>, Robin Murphy <robin.=
murphy@arm.com>, Matthew Wilcox <willy@infradead.org>, Christopher Lameter =
<cl@linux.com>, Kees Cook <keescook@chromium.org>
>=20
> Hi Shyam,
>=20
> Thank you for the patch! Yet something to improve:
>=20
> [auto build test ERROR on linus/master]
> [cannot apply to v5.4-rc2 next-20191011]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Shyam-Saini/kernel-dma-M=
ake-CMA-boot-parameters-__ro_after_init/20191014-011828
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 1f5823b78803=
7b0dc8c846a22ef6a5a8a0714af7)
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
> All errors (new ones prefixed by >>):
>=20
> >> kernel/dma/contiguous.c:46:36: error: 'size_cmdline' causes a section =
type conflict with 'size_bytes'
>    static phys_addr_t __ro_after_init size_cmdline =3D -1;
>                                       ^
>    kernel/dma/contiguous.c:45:42: note: declared here
>    static const phys_addr_t __ro_after_init size_bytes =3D (phys_addr_t)C=
MA_SIZE_MBYTES * SZ_1M;
>                                             ^
> >> kernel/dma/contiguous.c:47:36: error: 'base_cmdline' causes a section =
type conflict with 'size_bytes'
>    static phys_addr_t __ro_after_init base_cmdline;
>                                       ^
>    kernel/dma/contiguous.c:45:42: note: declared here
>    static const phys_addr_t __ro_after_init size_bytes =3D (phys_addr_t)C=
MA_SIZE_MBYTES * SZ_1M;
>                                             ^
> >> kernel/dma/contiguous.c:48:36: error: 'limit_cmdline' causes a section=
 type conflict with 'size_bytes'
>    static phys_addr_t __ro_after_init limit_cmdline;
>                                       ^
>    kernel/dma/contiguous.c:45:42: note: declared here
>    static const phys_addr_t __ro_after_init size_bytes =3D (phys_addr_t)C=
MA_SIZE_MBYTES * SZ_1M;
>                                             ^
>    3 errors generated.
>=20
> vim +46 kernel/dma/contiguous.c
>=20
>     34=09
>     35	/*
>     36	 * Default global CMA area size can be defined in kernel's .config=
.
>     37	 * This is useful mainly for distro maintainers to create a kernel
>     38	 * that works correctly for most supported systems.
>     39	 * The size can be set in bytes or as a percentage of the total me=
mory
>     40	 * in the system.
>     41	 *
>     42	 * Users, who want to set the size of global CMA area for their sy=
stem
>     43	 * should use cma=3D kernel parameter.
>     44	 */
>   > 45	static const phys_addr_t __ro_after_init size_bytes =3D (phys_addr=
_t)CMA_SIZE_MBYTES * SZ_1M;
>   > 46	static phys_addr_t __ro_after_init size_cmdline =3D -1;
>   > 47	static phys_addr_t __ro_after_init base_cmdline;
>   > 48	static phys_addr_t __ro_after_init limit_cmdline;
>     49=09
>=20
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Ce=
nter
> https://lists.01.org/pipermail/kbuild-all                   Intel Corpora=
tion
>=20

Reported on the patch's thread so that it does not get applied:

https://lore.kernel.org/lkml/20191014022543.GA2674@ubuntu-m2-xlarge-x86/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191014022631.GA14421%40ubuntu-m2-xlarge-x86.
