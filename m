Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBP5KT74AKGQEXUWCJ6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id AB92D21AD24
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 04:41:04 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id l3sf2974559pjh.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jul 2020 19:41:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594348863; cv=pass;
        d=google.com; s=arc-20160816;
        b=AoYshQYvTNfARqC8Uq4boYMSOjadl+u7CEw9dwFay+rL/z1UDigwSL1PSTIpG2PkLZ
         NnresRAwlrKZYNwpvQSGFvnsXImT+/MVRUmGajE39hEX/OnoBQbGSBittdERCVKQtvZQ
         ba1n3iZpMdl46XL3hsKssvfVcNxmjtSCV8Mr+fR9JPiOj2+OoyfdztyZKfmyeS0I5s1U
         IvlJN6lojmNd0V7GUmdA7y4NxjeSY220+Wt1LnZ+giFvPWunqjBLaYn08tobLv2oHGJo
         +MqLY5RzYbV4AEDZXoOIazc8GeTHyaVk2Mb/K1oRMd+eAXZc9UMwipRKIwx+71ZtDmHf
         SfrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=wKU7reD0sfV106JCEpAfZhFSuWW/5kiG4oAsMKI6AIg=;
        b=JYNOeQhwYuVeJv1YZT2uctL0t6xm14bjjG3IrGE8wyKttAtWYc+8YYakmCR6CP4yov
         9eO59ShLQVx9NKKWjyEchlNiRV5lfqpPruJLNxPlTRJ4vMc3NpC5lckQW7PvSuJ6Vyw8
         SyN4eMb6rV919uPYPefospBHiaN3nOuWnrfgO9nnip85PC7sFfjl33+Tv4nV5xSym8JI
         4Y5o1qwXiU9N2CldsiHMiyaVz4gyTVEs9lSw12h+FsTzsXefE9PyKkn1a4eD91u0wQ1u
         t6hr9GYuZRpwuu+qNZeU+X5WvrWtPz+i/LMCswa55umf5X/jpSAXkq76DSdmycRKcgIQ
         z/JQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pdVm1jsr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wKU7reD0sfV106JCEpAfZhFSuWW/5kiG4oAsMKI6AIg=;
        b=Sx2chI3b9FiSAyoyCDv3V8NaPkQt/EXcHpTpwiYc3tN0Zhntve0HG4Ql/p+cMcphuX
         tBME4EgwmVP+3by++tf7vcuncvX2pNHPxfaiXAWSPwryldMKP74vK02eMmGhc936T4II
         bfMlRs114RcFOsgrrH4xA6uGjClRrZSiiJ6/xBwKjgYkNt8AEhoWu0Epz1NcGREVwnUf
         517M6O7yFSc1O722l0EiVNLsWcY5rK7tUz5991DrgHpUoHZww9zdRAUJ13SHn9wldex+
         Jaso/hNAuFg7RtpGwrmL92whjX7UCnoZMWONfnPNml2OcabGB45Khs8YKb2VDaSxUjGq
         MYLQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wKU7reD0sfV106JCEpAfZhFSuWW/5kiG4oAsMKI6AIg=;
        b=iw3urfwn3wh8C+l0IRaHC2cdN1mFUtqTM9RjdDg8BT8Pa+i8JWXoe7RNuS0qjFW6Tb
         t7yE2c0AT8UfFq7oj590uQTHXVh5KVDRrytN+xnKd+wIvo1+dDL8dNZOtFwj3gUCug+3
         XboXkTVQ+wG7uF9VM4MpjsNHFQrK2EzqUFuHm8CBLg52oeTzL5zwZYPPJ7bKs34PkULS
         tSltYN7c2TJH0atm/InjkYfcCqZ53ndAUeYXH1JbnNwyKfJTnTFapcuDINdhTTWEHgXI
         p9aWZEMK94+RlpTVKyRz66XN0bDPeHFqgngVMsJBRaqZbJge1L69Y7yHA+6wbA8aiILR
         /wjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wKU7reD0sfV106JCEpAfZhFSuWW/5kiG4oAsMKI6AIg=;
        b=VYDOGIBVqorBz43PFC+6yz2LKp6bTsoJrXSpePE7Ky0up1eyU1T+1EtteDzYQylKgy
         xD6fFvBx2rhwe+ylpNF8EbfFzmOj9hGprBAzENo11u1MiMCXBsmWcH3ZNzoCwqSjC0tX
         Izmitjec2Buq200WKzfvbf2miA6BgRoJMkMaAXEERpuvEl48vJ8zcJ0Ck12vUFIhAMXu
         bff5fWqvE1O00dObWOQb9veIo2XMUYrkdbct4wgQ8lBFZLs1mpwmFuJ954evPxZQM+6w
         /f7fnMd7vr1Wub5dHivjtJHnCyN54pG/7p8Gofs8Z0AFD3leZyc5oCm48s83B1kwUPtd
         KyFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53043lJdoqXQIer5QkmS65BUEwc1Zy4rRnjb7arVjATnIage7eco
	fzr9ngNMxbD7uOl1u8mn6g8=
X-Google-Smtp-Source: ABdhPJwJf6ZnarMYTF7iNRi6FNm8Jy8Mr74/KcMJKhEE/QgJah1b3T5lnjK/Nywcb1eVvsp8ajeGlA==
X-Received: by 2002:a17:902:d352:: with SMTP id l18mr14363521plk.56.1594348863094;
        Thu, 09 Jul 2020 19:41:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b10a:: with SMTP id q10ls3092715plr.0.gmail; Thu, 09
 Jul 2020 19:41:02 -0700 (PDT)
X-Received: by 2002:a17:90a:d587:: with SMTP id v7mr3401942pju.29.1594348862690;
        Thu, 09 Jul 2020 19:41:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594348862; cv=none;
        d=google.com; s=arc-20160816;
        b=NOh2C1hv0ieIZUF/WMCFdfCEhTjcYLUkYekmFYtVAI6CAaAinzdg7a1GHwUzlizxPb
         xaDkXLqRtW7KuRy1dZ+oPfFkdlhaw2x+DBArf2MDMSdMz+/o+7MlMHkBg62H8cOoobTo
         JInwCrdep6ZVE0jAJab7M7DeHjryRctblYQqVui0UO5yRwx6fyICOSZ75Yvs9lNIaZ/U
         MgoAM6l/b4kXIxChk28oD5q8y4VH/F9UXvQgWG89gOpByakyIsEFfQp15HThsGfXujXT
         84BkoaqBb/KXnnTRDjo7DrATZEl6sR+uTs2yfG0zeJxHGfte/h5Cz/nmeFvLZKK/DZDO
         PpqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ij3YvsL4Rul6XPZefX+VkrzglhCxXEgOUPXujCuZUiA=;
        b=AitVZYcYGfpobs429jj5ln+4IF3/ZicOV6iSRpwAZlVqsRwnETY4QnEIT8Dgiggkwa
         BCNXbCNu3J3zQ4My7DmdZlFpUFLByyA3SOj0qG/WSaqWc5HlpAiyk6nI/l3wdedyGOX7
         GjJapKH8jQ7gtvosbGrD73/wZhEd47UCHoopYmO32sWTsfQ6LHOsDhrySmhBGPfR3/uk
         qr+OKUDfbOU6PasIv3Xsen0OYHiN8B+VoSJusPhZHA9HOax1uq4uGwTjgtkNn5NTvsfe
         8UWtTtrLXZ+CsUiey6SKDjYz65BIYmLwGi2rGsXuZSQbJdbEHYNfuvCwAmdoyWzlo0DL
         ApKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pdVm1jsr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id mz9si312224pjb.3.2020.07.09.19.41.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2020 19:41:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id t4so3604927oij.9
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jul 2020 19:41:02 -0700 (PDT)
X-Received: by 2002:aca:5693:: with SMTP id k141mr2558176oib.35.1594348861915;
        Thu, 09 Jul 2020 19:41:01 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id j16sm842047oib.35.2020.07.09.19.41.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2020 19:41:01 -0700 (PDT)
Date: Thu, 9 Jul 2020 19:41:00 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Sven Van Asbroeck <thesven73@gmail.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Mark Brown <broonie@kernel.org>
Subject: Re: sound/soc/codecs/zl38060.c:614:34: warning: unused variable
 'zl38_dt_ids'
Message-ID: <20200710024100.GA2055744@ubuntu-n2-xlarge-x86>
References: <202007100026.oufYkhwZ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202007100026.oufYkhwZ%lkp@intel.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pdVm1jsr;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jul 10, 2020 at 12:47:31AM +0800, kernel test robot wrote:
> Hi Sven,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   0bddd227f3dc55975e2b8dfa7fc6f959b062a2c7
> commit: 52e8a94baf9026276fcdc9ff21a50dc2ca0bc94b ASoC: Add initial ZL38060 driver
> date:   3 months ago
> config: x86_64-randconfig-r004-20200709 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 02946de3802d3bc65bc9f2eb9b8d4969b5a7add8)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout 52e8a94baf9026276fcdc9ff21a50dc2ca0bc94b
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> sound/soc/codecs/zl38060.c:614:34: warning: unused variable 'zl38_dt_ids' [-Wunused-const-variable]
>    static const struct of_device_id zl38_dt_ids[] = {
>                                     ^
>    1 warning generated.
> 
> vim +/zl38_dt_ids +614 sound/soc/codecs/zl38060.c
> 
>    613	
>  > 614	static const struct of_device_id zl38_dt_ids[] = {
>    615		{ .compatible = "mscc,zl38060", },
>    616		{ /* sentinel */ }
>    617	};
>    618	MODULE_DEVICE_TABLE(of, zl38_dt_ids);
>    619	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

When CONFIG_SND_SOC_ZL38060 is y, MODULE_DEVICE_TABLE expands to nothing
so zl38_dt_ids will be unused. This is a pretty common construct in the
kernel and the only way I can think of to resolve this through the code
is by adding __used annotations to all of these variables, which I think
is overkill for this.

Personally, I think this warning should be downgraded to W=2, thoughts?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200710024100.GA2055744%40ubuntu-n2-xlarge-x86.
