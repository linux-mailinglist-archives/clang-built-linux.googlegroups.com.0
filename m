Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBL543WAQMGQEQM3MGQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F328324BEA
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 09:22:08 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id w12sf2554386ooo.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 00:22:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614241327; cv=pass;
        d=google.com; s=arc-20160816;
        b=hrxM8WUn19PhEaYxrCXwdpCgZ0fbNLGu6KTcc6ht+naYugqr13iEg9aTD3OhI3hlT6
         YWFCUOZ4hBkDKWMnagmPn3hHImwk6jVrJED683n4UQOYNW6ic77OFVQd97glu4nDWlXp
         cCOmj9Wei8NiY6q7Shrxi7ziLM77ek4bHI+3I1uecb0J+m9QnozWsBF5qRGMblaKL60f
         e49hCeiALErrGbF4MSvX0x4zCp1yspauDP1+uDsrP6hQnu5YUUVMkR+yQ+zCT84jnjJV
         q3dTZ1QjDIJazoOdgz93Yx0aGSgIEmsV3O5StU70GwgUP2GvnINGKkiCfZLYhqv0WjOJ
         sOAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YQcULd40X+AlUcESngf37lgCqEXk/A8CVmgAow2KZw0=;
        b=C527dBx/aREgF5ziur/NqpSsSTFF5NiiySjY4vPRuCCJ6AhwWnLA5zPLFwXfUuXFuM
         h5S0UZUmZafPjYuwjnxfMao42zA7dyovlsdVrGZYMeINRfWMEuKLOEYnmlX0WliEfYLm
         ZgT2vlNt69lhyDMTtT+EpGVFZLIwN1pUAMsrbkRziB0TvnlbYngtoZufCFWppzS7YTDF
         83EE6flYf2cbNqmo33VEvPc8UQDrYn2TjPcBPU7+zlCFxn0QsO4abTtcNpZMkqrBUyBa
         jk6PIt4NMVIW+y1Ab5qHf/MflPpeelWKOv5GHT2I8xOEa/6yaM5buCWO3WmW8ViqTT5B
         Sc2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=EyMI0p9e;
       spf=pass (google.com: domain of srs0=4in3=h3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=4In3=H3=linuxfoundation.org=gregkh@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YQcULd40X+AlUcESngf37lgCqEXk/A8CVmgAow2KZw0=;
        b=Kwah0/y08CxUQUiNppo5DN6i8RzmBSwLMMFLpi8Ak1/hHS6+3s7DeQmZbWtvsveflc
         X5YZFLhMKgkQWbO9xWQaR89+oZwa3InYtBCfwJSyimOETanebd5sU0yR9wAtX53xd8Pc
         FQ0yv8MdO48Hh5mSLmZ/mkClDba6u0ERcpKcOEfVccCY10cHsx0UG0wcZkkbgxOvy0Gd
         EWPXqjeVOHKCqQ8afG9LSekzDtqydjt3/XSPkzZuSGS/fjLlvawQVTiHraitrHWFneqG
         AXJSdn4e/hJxnQcbBwnfCPIiMKFFgxvulEZbF75zIzpCfV7bHo9/ZG8ZngHnY2FHO6EB
         jh4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YQcULd40X+AlUcESngf37lgCqEXk/A8CVmgAow2KZw0=;
        b=SljcQfkSRk58ejJdcXfORlt8TtIvxb0qGzrhSdA8kJUsXwl5iFzei+pciFf610TfeG
         SaO5LYO0AjYOqqydmN3nglLq1Wg+4FshCUPj4tQ71tJ1SVaEemH8Mp439zYUIsa5gahR
         arF/Gto2cGMEZq3ECUgetcjRnM48Yt5vqwTeDG+B/n16WKTcvcFW1EGGlVM70EHf1hxU
         6jBQr44xMY/fpEF7xIpM8uMKWMY9dGozO66sO7FLQybF6GdZSzeXU7JkqINOsJwb1Iv+
         yVtf146LD9GrYyEYAIiG1IJHHlqHpBxVaO+ee7HlCpUMAkmLAFWyHFtxh+cHb142X65a
         L+TQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533hKM1RNxjn4CeCXuw1C5nUhY9Fw4XWxwhiWXEVFdlsI4Tcy+r+
	7okX33ISzHmuK3VOFiW3/1Y=
X-Google-Smtp-Source: ABdhPJzdxN2WKTYMrUO4M9Qt6B+N2ZuUb+UUV+gHuYyUWOo+4DHyisf6fOaWrUfLJHXNHgBj+gjrng==
X-Received: by 2002:a9d:6019:: with SMTP id h25mr1423919otj.203.1614241327394;
        Thu, 25 Feb 2021 00:22:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6c86:: with SMTP id c6ls1402451otr.5.gmail; Thu, 25 Feb
 2021 00:22:07 -0800 (PST)
X-Received: by 2002:a9d:128c:: with SMTP id g12mr1176421otg.175.1614241326960;
        Thu, 25 Feb 2021 00:22:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614241326; cv=none;
        d=google.com; s=arc-20160816;
        b=V098MfY5OcTvwKAtYSGK9kSS/O2SCwQf+TQ0zcj5/0Zkq4PEsHhhX+QVwXtAnOMPG0
         mCdJiwY7Qq4tBsGa17t+J3XYMo76jkZk7ksEbRVm27yVdCmOA0XCAxT4fchWc+dnEhbD
         Q8Lx7PCy49iHMmFPsyk+7uQgiRNjwmgYiweNHAow9O78/+KO7t6Cd4pB1Tse6P2o40o7
         2uZJYWKsvVVkSNA5I7mh5LO/pymDCxdHkejW6YoUhE/VVIKNh0A0QP5SAYPhaDqoVwO1
         bHt6/TVyjdliylC22/CItUtaooiVXKS7ubbD9Bz6evmLzHGamMzVU1juEk3ujSdfdv9M
         wyww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=UbRWdlvCjin6/kt2CL/Po6RodC+hwiF3ZmSjlnKyYhM=;
        b=GvYUoLVaPvsppufFsnpKHHXwGhXo2wSmevplpmfRaPbD5cGubAfojdVCLMlOXsnjc1
         D8r+vqP34ZCfE6AxgbIR0Fupa5HnIS3T701PXiv4t6Vg+LOzLn3mYU3yhCVBF05qzJaO
         gssa7Qf+BsL8WsE5L9/eTC2Ym0fFXHAzpJPIah00szolH+7Lw1tgzWzvCCBp9daC8cas
         Jhd35SGS6RMit5yRIrW+7G5POTqvt8iPDlQe830EwK5MNhq/WGC4TY5BHDK5UtD1Rf7Y
         cxVeOSHnFeN4zf8DqrMa0B94iJQjazrx51tSFT7nUSla1Z5w6yA5D46YJ1CDekLAPKWo
         cceA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=EyMI0p9e;
       spf=pass (google.com: domain of srs0=4in3=h3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=4In3=H3=linuxfoundation.org=gregkh@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a64si43074oii.2.2021.02.25.00.22.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 00:22:06 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=4in3=h3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4ED4064F06;
	Thu, 25 Feb 2021 08:22:05 +0000 (UTC)
Date: Thu, 25 Feb 2021 09:22:03 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	kernel test robot <lkp@intel.com>,
	"# 3.4.x" <stable@vger.kernel.org>, Sasha Levin <sashal@kernel.org>
Subject: Re: [linux-stable-rc:linux-5.4.y 2231/4843] ERROR: "__memcat_p"
 undefined!
Message-ID: <YDdeKz8cZOyZ5q6m@kroah.com>
References: <202102151855.H817KoOF-lkp@intel.com>
 <CAKwvOdmqso8SmPeZ4tOLP-wFSbkkDAthG1vt6k045_C0JoU4Rg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmqso8SmPeZ4tOLP-wFSbkkDAthG1vt6k045_C0JoU4Rg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=EyMI0p9e;       spf=pass
 (google.com: domain of srs0=4in3=h3=linuxfoundation.org=gregkh@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=4In3=H3=linuxfoundation.org=gregkh@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Feb 23, 2021 at 11:56:29AM -0800, Nick Desaulniers wrote:
> On Mon, Feb 15, 2021 at 2:49 AM kernel test robot <lkp@intel.com> wrote:
> >
> > Hi Nick,
> >
> > First bad commit (maybe != root cause):
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.4.y
> > head:   642aa3284e09f63bf1d4832798dd787b4320ca64
> > commit: f05f667f8764f9ec834ca3e412ed7f5a20dea3bf [2231/4843] lib/string.c: implement stpcpy
> > config: x86_64-randconfig-a005-20210215 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=f05f667f8764f9ec834ca3e412ed7f5a20dea3bf
> >         git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
> >         git fetch --no-tags linux-stable-rc linux-5.4.y
> >         git checkout f05f667f8764f9ec834ca3e412ed7f5a20dea3bf
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> ERROR: "__memcat_p" [drivers/hwtracing/stm/stm_core.ko] undefined!
> 
> This error is unrelated to the referenced commit, but we did fix this
> error finally in 5.7:
> https://github.com/ClangBuiltLinux/linux/issues/515. This is not a
> regression, but something that never worked with LLD until 5.7.
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7273ad2b08f8ac9563579d16a3cf528857b26f49
> looks like the commit of interest, though I seem to have left a
> comment implying there were dependencies:
> https://github.com/ClangBuiltLinux/linux/issues/515#issuecomment-612999929
> (I no longer recall what they were).
> 
> Some other commits in tree reference that bug from the issue tracker.
> https://github.com/0day-ci/linux/commit/0cf9baa2dbb8ca29f30ac8a1afb69de51f222d17
> https://github.com/0day-ci/linux/commit/565508bb949dd72638b52522fb6ac6ec04ec57fc
> https://github.com/0day-ci/linux/commit/0d0537aa772566473bd5310be3874060cbff8672
> 
> Not sure whether all 4 of the above worth backporting to 4.4.y?
> Thoughts? (Perhaps these would allow us to add x86_64 allmodconfig CI
> coverage with LLD for 4.4.y)

If someone wants to backport them to 4.4.y, please feel free to submit
it!

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YDdeKz8cZOyZ5q6m%40kroah.com.
