Return-Path: <clang-built-linux+bncBAABBJUUYH3AKGQECMCVRLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2BA1E706E
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 01:32:56 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id y24sf464541ool.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 28 May 2020 16:32:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590708775; cv=pass;
        d=google.com; s=arc-20160816;
        b=wnRpyeatopS/7LYiJ6PMfWAv/99POZpycGh1bO3vSh1lukK8Hn88STq2sEArJqXYfR
         Ehvy+b1jfYwZ813HIMKE1caoSpRA7q9lawi2+Rt4a5L335nqkLze+ph8Z8kJmoY8iqPM
         RcwfPbR8cI036vbN/bnJw0kopkeezvsiO7eNgIW99/HUY8xzxEtQFi1gWW50m4oDavCv
         xvlwbQGtKFw5pBO5RO1p6SZEhqwVTP5FcG+hseT1EqQa4mNCStSmFKBTHPqVaY7w9lAG
         jdZ6VuEucD5AMrfcIvp9gjUSDPehvMyjQC+1PQAqQgguPp/GH2kBEeOCn90Ot5kXvEeZ
         Pa5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=QO6RosRgBHzjkRXGjSIkMPWQb/DSwNqHdQsPoVMK0b4=;
        b=07Irj0iLMoPhatadbSIUX9w78uNj7XaNsKGPxQeU5QQhg6HRw0dIQkvK1SRl9Ra6uU
         qs+z0ZxQWkxQ8YVrNbEX3f0QwCv3Ufe1a6za6FgmbW1AQthNz9XVNiZGVH8AMyOnjZh2
         9coiNwf1ZCRE/QQFMixEAmI8rbBoBW6zXEJ43TNXCLTNzGw7PATGLQQnlQ6Xn/8nyK37
         1aoHy7u60AQTPqOTGVHdsQ5y3pmfSEZvy1rw0985h13vln7qM8vAmoAADrr+ZtEncyjm
         g77T6fUtAgp4x+ewGUu8s3XSQ4DbRhSZBpBVnbjzlHfhJLZkwpgUA3kQ7gYpMo14d9wx
         fx9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eBDNMgMK;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QO6RosRgBHzjkRXGjSIkMPWQb/DSwNqHdQsPoVMK0b4=;
        b=YGRMeyRh9SBG3YJ5bJjBhYZzNXoJ9fuYa2AkYd0rNtfEU6l5Ti7S8nWb6W2Xq2RCSH
         So7c0YXglteshc8Lt8NArcnDpPy0dvz3lwoJKLmLgkTBn7R8nJZtQ3mVIqG8oTB0760v
         BXLMbffefFkGGDVo/WFTVFCztHD1mP0aFZ4tNnMMr9nZjcLxdhhH/oTImv5Q+gRmtLgU
         YX6oVLBY1/SSmfX9YaP1wQdW0r0PaaiwYGfSjDsZ+wuWSKcaq30sz7bVqfoPd0hT0wIe
         g//Jo6/M28R/0vEzYeR3dcXjSkKSE4pGxNfNdzKGTBGrw6RZqz0RkseZwLi+n4ejTYtq
         OHSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QO6RosRgBHzjkRXGjSIkMPWQb/DSwNqHdQsPoVMK0b4=;
        b=k8LAbOq3/3+Kim8HQ9jypLwj+mhJ++SkUwWzXeaEkDn+LCd1BA2Pkr49+buvsjm5Zh
         WbmClMwESOLtrjyQ7HaPrsauzgR/a2JBR6HIZhUqWl6WE09WmezAQwBep/BUgQYu5K+e
         s7QRyWYw7PXe10zKfkQVg0m0iHjseI2sx/pVlJUxhr8zWHMz2RzxGbN9AWMCpD+FwcDZ
         0C33oQ5ekGZLjq6SRBe2i8aC0iqpMLeqDAnnnTJaZevtRLvGvuntIwGwuBGq5YmXEr4e
         ik4zdtrVIOs5lWN1GC2ZQkpzf6YVMJzlMQltSj+p/46GbllQ8lTnu/QVAd1oH0ulwWkQ
         eKPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WnHkHpxaHqUzB1AAq6SzL+EssMrZX5H0v7HKoQLo2RNuj8Pku
	WVS6qcKIcNnsRpP9/luhsJY=
X-Google-Smtp-Source: ABdhPJwJ2S9rdkJRJ7SXaQ2cmhTsDCbJPcMRAEV8gs58tDDxiraCY9Qm0JbuxRvzhHzmrd/JAqIs8g==
X-Received: by 2002:a4a:96f1:: with SMTP id t46mr4364482ooi.75.1590708774966;
        Thu, 28 May 2020 16:32:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:10e:: with SMTP id b14ls769815oie.1.gmail; Thu, 28
 May 2020 16:32:54 -0700 (PDT)
X-Received: by 2002:aca:4ad6:: with SMTP id x205mr4158984oia.56.1590708774588;
        Thu, 28 May 2020 16:32:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590708774; cv=none;
        d=google.com; s=arc-20160816;
        b=TbZOmYPdIIFvRWXDIm7F0DUVifU7Q+9Hu8u1JK2MQG4GSwM8i6qnYnDaQFWLUxpnjW
         c9nuUj5/wmz0jZIctJnHq83zMAO70JvzL7ulTc278RxmkfTq3u+7LqaI70lpTOSiblou
         0Fxfemzzqc8WNREPDzJUnsFeq/3rLVoLp76hBulKrIJYepSRmT61qvdLbZfED6/YVGRC
         z1mgWJFlu244UhByouxohL8m2CiK2l049C8ReB6W/35Gk59JvC91MWlvVWHVJfzS/+Es
         I248ua0rccLaf57eoQrHZDooErwjxLSE2bjJq4gSvujXtNTvTj94B+fsCfIecyksBjSK
         gGEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=dqCeV9M5u3H8knHg9OWZN1cZQcHdLvzw4BGLsWSf+q8=;
        b=G837kn89XGKevGS22dnk0wKW35L7GQyG955mVrCandGSLg6Vp9eG4XJhB2j3O7yz9D
         zMANie6qWTMyIy/uUrOzzpKhGF7zVWazJdhRBmsJIp2CTGS1kIPkWAZ3p/IZLHK8dMZI
         KSoXL4R3e+ospahKW6xwhulfSJCPtx67Hx3nVJrsYwNAjO1YcTzr8ymjXcE7AvRHwKFz
         BBgxTYB1w7FyMbyOAh+cLNOFf8DftwNU1AiZywF4DjLssEI/sVoWLoF0P1+W6YFYcSqM
         n/SHjRSwlwXJO/G8OZHrlVASrfROuCC1IKOf5w/KpBvbnWqm3Si1OiygawUO5gVu9Uf4
         MiUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=eBDNMgMK;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v67si607552ooc.2.2020.05.28.16.32.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 May 2020 16:32:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9AE8120776;
	Thu, 28 May 2020 23:32:53 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <202005270146.iZ16Zb9Q%lkp@intel.com>
References: <202005270146.iZ16Zb9Q%lkp@intel.com>
Subject: Re: [linux-next:master 6122/12912] drivers/clk/ingenic/tcu.c:326:34: warning: unused variable 'ingenic_tcu_of_match'
From: Stephen Boyd <sboyd@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, Mark Brown <broonie@kernel.org>, Arnd Bergmann <arnd@arndb.de>
To: kbuild test robot <lkp@intel.com>
Date: Thu, 28 May 2020 16:32:52 -0700
Message-ID: <159070877291.69627.13269208631006456530@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=eBDNMgMK;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Quoting kbuild test robot (2020-05-26 10:54:49)
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   b0523c7b1c9d0edcd6c0fe6d2cb558a9ad5c60a8
> commit: bbd7ffdbef6888459f301c5889f3b14ada38b913 [6122/12912] clk: Allow the common clk framework to be selectable
> config: mips-randconfig-r012-20200526 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 3393cc4cebf9969db94dc424b7a2b6195589c33b)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install mips cross compiling tool for clang build
>         # apt-get install binutils-mips-linux-gnu
>         git checkout bbd7ffdbef6888459f301c5889f3b14ada38b913
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> drivers/clk/ingenic/tcu.c:326:34: warning: unused variable 'ingenic_tcu_of_match' [-Wunused-const-variable]
> static const struct of_device_id ingenic_tcu_of_match[] __initconst = {

Looks like we need to add a __maybe_unused marking here. I'll do that
now.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159070877291.69627.13269208631006456530%40swboyd.mtv.corp.google.com.
