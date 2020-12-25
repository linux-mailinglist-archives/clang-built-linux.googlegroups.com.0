Return-Path: <clang-built-linux+bncBAABBSNMTD7QKGQERIB4DKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2BB2E2BE3
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Dec 2020 17:41:47 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id o65sf2109856ooo.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 25 Dec 2020 08:41:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608914506; cv=pass;
        d=google.com; s=arc-20160816;
        b=LNtTPslaRAGskE5Gbvy1VTpI82bG/CnSBO5Z49T2YklmzoLSrSHv1WR0r4m4bPGb0H
         TwLh8rdlFDfkeH6m9UX/xuLW5vqIrfjEC+mJPzj2tk/queuvBR9HqKU8me/YMG9T8GSw
         ErunCS2epyB2ZszvOlSablLuxm6A+HAjx2zWopuDdts4wu04xD0pK19BFjcBJBLEDYcm
         3bednvYZbCZQiZBS7c1vW0jXuHEcIF/Yum6BFh60ak2MCPQZHAxKc4W6LSbTkvXyoBY9
         jVtaVVAxFYohAeYHj3/7ftJaKoY+M/6Nso0q2pO1J8StbZ61Qx25XzMIEllrMfOrpes5
         LjLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=jj6byBRusz5a5UC8u0ler0Usdwen4O6nJ1UyqlwodUA=;
        b=WK763a+s3X+R4MeSdNyU7bLiArdAImaGhx88zMm74GBKQA9/Cxhf3gi9Qpq9TtAK1y
         ygFKLjOMkfnT6xnOQoyP/t6yLALRjVxp4IPwPdJKbak682SNuvxZd37zeXDChvg6azYU
         eh29id7U3KSmK1oiVmWMPBkhuvf658GAjl0f/4JiEDuZnTtNpdYJEd1zFZJa8Xw7lJft
         ocENEoN3U9Qf0aGwKYGPMssJBz0gm8sqbSmO40pGg01laQUFf5KAWhIcjATaDmSY8v/p
         DwaPHtUjJD0ezKX/BM+nyTWFAQUzl8MdPqVIEUkWzyV9Od4StjyCxBsXnJLGYyoupGwH
         ZIJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QIW28PqM;
       spf=pass (google.com: domain of srs0=5mz/=f5=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=5mZ/=F5=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jj6byBRusz5a5UC8u0ler0Usdwen4O6nJ1UyqlwodUA=;
        b=rbFjEfFoOEOk5tqDvly2YkLcOV0l7RgPLqw0xAPd2wAz9o6bgepDLbpfeksBXqFRqh
         sELjBCLu8RUV3ofrAAwc6yJ1Pdnkw/uteV30yEsbH7cGWC2o/Idi4oe77tQa824KkxRF
         RMBk/nu1YPum/OrIKDXj2J19qIkn05L854Ot48ksIOKR/XITkfjHR29cL5TvLs7dfo64
         PLJb+WTQdhgWNn7jczsBe/+Lo0uhabY0RwmImLuo85S1h0fN7nArKUIv1o7LXQwNOvO0
         gw0J0cY8Brm1y+Nq3h+si476Y/ftoFxVGFcBjKdEciyHBxqCE15GtF8RLasM1b/QOkUk
         +sAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jj6byBRusz5a5UC8u0ler0Usdwen4O6nJ1UyqlwodUA=;
        b=o3ZQlBem8bqTY8OOge4xsM4YJAGKfbV6lad9/zY77ndAeDoUMx4tcrIfdp0cCx7Rjl
         Vt20byb+g37qIYW39WEd+qwvDtZrA4NifZXLFCFxdOmhSWuHBuCPCAVohJukZuufjeRp
         hywcLePPX7Y8BKWcAup1nBwvPO/qz0p29W357K+zA1739Av74cgNnfZBJvnfXD00pV7R
         /U/bUxSNRqd7IYuwxWj2O/FJxp8sjIs+2CmfmpT0t9cgirjJtSyWP+5ViEFcJgiD1EFc
         wZdQ94seVoSjHkyTUHiM34mOocEADMdirwMgrcH1wWmeuzfhPPofu7z42PDnqPBcYQnb
         kjKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wztCMWbNQwJuXP0ZjWeLrTaWa2Vkjvqpk3VnO6dEirERDNQVO
	+jFwspgOSt8XWANDTYas84c=
X-Google-Smtp-Source: ABdhPJyLd7EckE2eYXXqM++2Wva4zGvX+xm3cPiUH6SPkqrV5UaUEklxqHekZAXwqUUyiwMagPd77Q==
X-Received: by 2002:a05:6830:1c34:: with SMTP id f20mr25694349ote.147.1608914505850;
        Fri, 25 Dec 2020 08:41:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2413:: with SMTP id n19ls10037550oic.7.gmail; Fri, 25
 Dec 2020 08:41:45 -0800 (PST)
X-Received: by 2002:aca:743:: with SMTP id 64mr6044135oih.60.1608914505384;
        Fri, 25 Dec 2020 08:41:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608914505; cv=none;
        d=google.com; s=arc-20160816;
        b=dBq/qcPHXDoOBK847RhcRlczozSiLLRIWjDV7wr6+deYCKYV4bJisoFrBJNLFCgWFw
         vgcj6l/seCyooDbRNMc49vfmUnGZmnyA0vrOtaAUuFqYQwSRl+tkE/M51ycl+vMyyLfZ
         lY4lYnFzS6y+idTaUT6fToDxQ4CvW0j6AgLrYTEibAXLcTjbWAFv2KHykEGMCwjF1UiB
         OubmVefZa4FU382npMlh8go456FBaS/Qj7X+3F15Hvdtx8jXMMGs5GHs8d1prkZo75lf
         wtIPmDm5QwC961CJNkZj5WwpPjhLCS5IWI7sra9X5gAzrb2Qi/IZAouxx+aZLcNTRVCr
         4L8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=2xwGZp50W4mgB4ykrAt4GAqmNJJYgsYDuduWfWZ9LtM=;
        b=QTme5zn4hoCk5M2JNTyEHL2eUmnLmJ+LCyd0nangTluuippk12xfXN6DkWADtmJOj6
         HX0c2G/lv2OOCYj+D6KZ5X474CQjny0Ne5S5ZsESqcsyVHO0dFTPiTzgdqzCdL+tZSNk
         vgVRqpDWu6Ekudt9r1kGmIr+iGVp+mWgIPxxQf4+emvDlL6erwIL35bbXpxgGIa/fp3E
         7LmhRhnYhnOA4LENkNugF1Eow2e/EXipYsH0LdEgIhCR/Szd6vsX1AxH+JxFWDBl+aIA
         zAvG9kZL4b9Mi0KdzmQFit8Q17nHcTIe3zgYQB9BgRGNT0oRlWbcfuXhaj9MUcjgpp/P
         YeNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=QIW28PqM;
       spf=pass (google.com: domain of srs0=5mz/=f5=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=5mZ/=F5=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x20si2598467oot.1.2020.12.25.08.41.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Dec 2020 08:41:45 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=5mz/=f5=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 647D120C56;
	Fri, 25 Dec 2020 16:41:44 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 2B21F352264C; Fri, 25 Dec 2020 08:41:44 -0800 (PST)
Date: Fri, 25 Dec 2020 08:41:44 -0800
From: "Paul E. McKenney" <paulmck@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [rcu:dev.2020.12.23a 133/149] kernel/time/clocksource.c:220:6:
 warning: no previous prototype for function 'clocksource_verify_one_cpu'
Message-ID: <20201225164144.GI2657@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <202012251802.XTQ1RN7B-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012251802.XTQ1RN7B-lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=QIW28PqM;       spf=pass
 (google.com: domain of srs0=5mz/=f5=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=5mZ/=F5=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Dec 25, 2020 at 06:55:07PM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git dev.2020.12.23a
> head:   7cc07f4867eb9618d4f7c35ddfbd746131b52f51
> commit: 6a70298420b2bd6d3e3dc86d81b993f618df8569 [133/149] clocksource: Check per-CPU clock synchronization when marked unstable
> config: x86_64-randconfig-r013-20201223 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git/commit/?id=6a70298420b2bd6d3e3dc86d81b993f618df8569
>         git remote add rcu https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git
>         git fetch --no-tags rcu dev.2020.12.23a
>         git checkout 6a70298420b2bd6d3e3dc86d81b993f618df8569
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

Good catch!  I will fold the fix into the original with attribution,
thank you!

							Thanx,Paul

> All warnings (new ones prefixed by >>):
> 
> >> kernel/time/clocksource.c:220:6: warning: no previous prototype for function 'clocksource_verify_one_cpu' [-Wmissing-prototypes]
>    void clocksource_verify_one_cpu(void *csin)
>         ^
>    kernel/time/clocksource.c:220:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void clocksource_verify_one_cpu(void *csin)
>    ^
>    static 
>    1 warning generated.
> 
> 
> vim +/clocksource_verify_one_cpu +220 kernel/time/clocksource.c
> 
>    219	
>  > 220	void clocksource_verify_one_cpu(void *csin)
>    221	{
>    222		struct clocksource *cs = (struct clocksource *)csin;
>    223	
>    224		__this_cpu_write(csnow_mid, cs->read(cs));
>    225	}
>    226	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201225164144.GI2657%40paulmck-ThinkPad-P72.
