Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNFS7T2AKGQEOLPHGTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 73CB21B2BD9
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 18:03:02 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id s6sf3536961pjq.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 09:03:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587484981; cv=pass;
        d=google.com; s=arc-20160816;
        b=gdrL5k6k5r91aFGhl65wUwD6Tft6XHvjFYj/Wf0rEF+FnSLfXuiC50Jf0egM+4LCkY
         vbEg8rjJeMYggs/cOhrko6WruVqb3IgGJgsxtAZ9IFV6qraGJqxSO+llicwBh9Xe8B2+
         YNlR5wN751UmNKcFxA0fnqcEuLlX8WtW7NVCcpIsjve0KgxIjJs1zrheCiW6bHdf7XIt
         Nbiw6aCDT095F0LBGWdwMfxvI1ErhNqsch74tF+jyjb1oZy4M1RfBVv+R+Ggn3clnPph
         KRGYnmV56k0poY/MEiCYeJtgBHuSMMVylQ2Srt6P9PZF2MU3FKNtd67vW1FiJZx51Vy/
         TdPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=iRZ8Fl24WeGg6aaXkJ0dftnBbboXk7YpbEQG3bH0/eQ=;
        b=qHeZBW66aT+tt9EHG5zcicM+RYhYgZFgqi7bwjCP6Ke8aQyzU5G4IMtAbmhZyVLdE7
         eBbGcKOdOIMsKjje4FbHyem+zwZsEIMoGhvzMbxI+DD8WNEFlosNueiz63gE9diH9xaZ
         G5DRZhcMSzagMuoduBKCJXMq4c3L0PfXdJu0213z2F7kELr7Ezc4aQBO+bUv+aW2p84f
         FW0xl80szW3Tfh7i/3jExz0sr7zlDvk57ph0K133M37xYvR13PJhizVnUEMxidq3QE1E
         pBOAQNNXUunQR4jV0+4RxEnazJZkH+K/1Ht1E8ZcCWP88u3jrt3Ao2936x9G+ucFD1IB
         dA2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hUKgZYoR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iRZ8Fl24WeGg6aaXkJ0dftnBbboXk7YpbEQG3bH0/eQ=;
        b=RNquCp1qPWIrqo8HXgEgOVs34PEhMiVyomZY3dy7wAXHGt2BrjzG3DllikxOPJjyp/
         s704LPAQ7OHIcVOv8YBPCps/GRm6k9PNeh0SwIQaT7rN1ESfjrxJkCXBtBHjsM79SaeQ
         YU44qIHvc7zaKDbgFn6C+HwWUKZh2t4fO7bVEf+mkNVA3Xixx7s7PM9GuuSKvcT4GPkJ
         Rr6fw+AUOr9Wt6GW1PTwjzKGhz//mWh5ZWgkY/HT78Db0ApS3ro+ychK/5FV8D3vFgCM
         Px6WGRLAQSgraPHC6jURSWDZ2O5J4gTGfeiTVYKxEGVqagBBcNnnY275PVRdeBhLGw1N
         y06g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iRZ8Fl24WeGg6aaXkJ0dftnBbboXk7YpbEQG3bH0/eQ=;
        b=KW/kR37RPd/hX5W+OCpUEUpPY05ZI0yax/xSB6/9h18b80eTeZZYb6GaziE/CRxhuW
         sfge7yv5EUOC2PvQlTcjrG4UNj0a7eivngYQQls2KRc+BDXlXEcTScjL6dP4u0dVBbRZ
         BXGnKCArbihDKFHKloTojRN3MteAlPL0qa+FwKlAyHBQqKCR1RA95UMg0J4ZPKCnLKJl
         MQZRJQ77TanE0h9JOImA66ylmwWc86Bgb/TzMUwB+rsbx+4NxbhceKsiDuzpa349i6+8
         QG2saEtD+ZG7heFIjat4Zoo9hbjof7edPNBSJ8kBQi0ptN80cNuXFvUZSl/onq9SGEjg
         n08w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iRZ8Fl24WeGg6aaXkJ0dftnBbboXk7YpbEQG3bH0/eQ=;
        b=MdO6lfhY7hVMZb4RrpBclHSnuYyBZTCmsfpDZBxYGvRXrRlEMcuX47XlLs+7aVlyVf
         fqELd0MkG5YLQhUWyjUS5F+tN3NIkeyeyg6B6sJAwHwK/4mSmA3fciGYM1gKfmiHRshT
         Tu2P2hBOj56mnLj+KUh7qKoGmqSaHBn2Obu1w7aVqCEf31iVAQdAcr2PXiDVAFLngsTI
         7ZOzKgoNU2hVz3D8KvYCwHTQWGeHs3ZrAXN9bAWNuw3WzcV/ZzP6CklQQjpGmYdezd+l
         a24hhlz2vtQ2PS7KGFcyqS6kytBopj3IcIMnhmsz+lcZoTBsKfeA9svpO49E4R+CB8Sm
         oVbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubyPnh8hAZLM0U2T6smANobZlTOZi/bsZfOJfkYf532wcLIZhHx
	nk2GmVgARDgOVpanszBol7U=
X-Google-Smtp-Source: APiQypIG19Xx+g7Tug/aKivq8IcKr6KCeqVVmZVTynThagwAeNG1FXgPMn28wDaB4s8ied7lQ5p2Tw==
X-Received: by 2002:a17:902:342:: with SMTP id 60mr23159193pld.29.1587484980855;
        Tue, 21 Apr 2020 09:03:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3657:: with SMTP id nh23ls4298830pjb.1.canary-gmail;
 Tue, 21 Apr 2020 09:03:00 -0700 (PDT)
X-Received: by 2002:a17:902:464:: with SMTP id 91mr23009557ple.261.1587484980421;
        Tue, 21 Apr 2020 09:03:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587484980; cv=none;
        d=google.com; s=arc-20160816;
        b=TNX36RJcgjb1LbgeiqzKjJSGMLMfgP7DqF3re69TJnPYwSDpQaGjSlxjWHwfo67YGc
         ywsomqBQKz2mus5FXETftwL7CI6YH/sHd8PBCaw9pJxcGDpaW/XN6jyR+EfJ4MVKCpoN
         2QHbVrkRxd1slNnRMkQ6FVBzctmSoPHt2Yxoum63P6OIu+utO5gmiDQErEbuc+8gXM86
         dcZHaIEt2LGgMbGTlBdWoY7JQhflgYuQv7785rdvOa4Hp7rq0peCguiIDVVbNJ9L0HDq
         hQl0v46rPiXDEwEV0mf75nuPE3oaG726IDinH3sFtxPEsDaVIMST0pdr/F4CVjTTgMu7
         85Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1ClAvXQjT9herLZH3hnwZEORUMdtwHmUlxJjyaPBYDU=;
        b=YnzSrE+Ok/Sh5nhtIr+n9+41Rzx5/TXT1FrlMakUiuSiKkBK/5iWEV2BIm11tpCBAN
         /8Y2x0c2DsK639ibIUh7mASv2WHy78Ilq45W4pK3StDFk2xeX1WCci9fsdpWmhSZncBw
         5JnHUvRZ+iJIAZU69lwqpXBPf2Y0l0gViPQM6JKY6chflk5JXJR+pVRmuLGCOZhdY1wr
         k+ziTc4CVd5drzrvFJBZwG5/Ivjuf3atrynZSuNbFbb/lwPr61EJQbLmG7IOEJr03Eqq
         XsX5eGicCy3ysso3Ztf0ZNQGQmM1HGpSI15Lbg2Tg3KdAqhv6Ub3VyTKzUnv/VhWPwQq
         +3pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hUKgZYoR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id ng2si269412pjb.0.2020.04.21.09.03.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2020 09:03:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id j16so12395749oih.10
        for <clang-built-linux@googlegroups.com>; Tue, 21 Apr 2020 09:03:00 -0700 (PDT)
X-Received: by 2002:aca:1b0d:: with SMTP id b13mr1497670oib.1.1587484979617;
        Tue, 21 Apr 2020 09:02:59 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id a205sm798674oib.16.2020.04.21.09.02.58
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 21 Apr 2020 09:02:59 -0700 (PDT)
Date: Tue, 21 Apr 2020 09:02:57 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	David Gibson <david@gibson.dropbear.id.au>,
	Rob Herring <robh@kernel.org>
Subject: Re: [linux-stable-rc:linux-4.14.y 9768/9999]
 lib/raid6/recov_neon_inner.c:13:31: warning: vector initializers are not
 compatible with NEON intrinsics in big endian mode
Message-ID: <20200421160257.GA37385@ubuntu-s3-xlarge-x86>
References: <202004212301.p9UBumfp%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004212301.p9UBumfp%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hUKgZYoR;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi all,

Sorry for converging on this commit yet again... hopefully it does not
continue to happen for much longer.

On Tue, Apr 21, 2020 at 11:35:07PM +0800, kbuild test robot wrote:
> Hi Dirk,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.14.y
> head:   e60eb60a661c0738dafb0907de42ff3ff8ac91d0
> commit: 88f7a6aa7fb9aa5076b65489146045dac865f1d3 [9768/9999] scripts/dtc: Remove redundant YYLOC global declaration
> config: arm64-randconfig-a001-20200421 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a9b137f9ffba8cb25dfd7dd1fb613e8aac121b37)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         git checkout 88f7a6aa7fb9aa5076b65489146045dac865f1d3
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> lib/raid6/recov_neon_inner.c:13:31: warning: vector initializers are not compatible with NEON intrinsics in big endian mode [-Wnonportable-vector-initialization]
>    static const uint8x16_t x0f = {
>                                  ^
>    lib/raid6/recov_neon_inner.c:13:31: note: consider using vld1q_u8() to initialize a vector from memory, or vcombine_u8(vcreate_u8(), vcreate_u8()) to initialize from integer constants
>    1 warning generated.

Already fixed upstream:

1ad3935b39da7 ("lib/raid6: use vdupq_n_u8 to avoid endianness warnings")

> >> drivers/video/fbdev/sis/init301.c:525:42: warning: equality comparison with extraneous parentheses [-Wparentheses-equality]
>          } else if((SiS_Pr->SiS_IF_DEF_LVDS == 1) /* ||
>                     ~~~~~~~~~~~~~~~~~~~~~~~~^~~~
>    drivers/video/fbdev/sis/init301.c:525:42: note: remove extraneous parentheses around the comparison to silence this warning
>          } else if((SiS_Pr->SiS_IF_DEF_LVDS == 1) /* ||
>                    ~                        ^   ~
>    drivers/video/fbdev/sis/init301.c:525:42: note: use '=' to turn this equality comparison into an assignment
>          } else if((SiS_Pr->SiS_IF_DEF_LVDS == 1) /* ||
>                                             ^~
>                                             =
>    1 warning generated.

Already fixed upstream:

864eb1afc60cb ("video: fbdev: sis: Remove unnecessary parentheses and commented code")

> vim +13 lib/raid6/recov_neon_inner.c
> 
> 6ec4e2514decd6 Ard Biesheuvel 2017-07-13  12  
> 6ec4e2514decd6 Ard Biesheuvel 2017-07-13 @13  static const uint8x16_t x0f = {
> 6ec4e2514decd6 Ard Biesheuvel 2017-07-13  14  	0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f,
> 6ec4e2514decd6 Ard Biesheuvel 2017-07-13  15  	0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f,
> 6ec4e2514decd6 Ard Biesheuvel 2017-07-13  16  };
> 6ec4e2514decd6 Ard Biesheuvel 2017-07-13  17  
> 
> :::::: The code at line 13 was first introduced by commit
> :::::: 6ec4e2514decd6fb4782a9364fa71d6244d05af4 md/raid6: implement recovery using ARM NEON intrinsics
> 
> :::::: TO: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> :::::: CC: Catalin Marinas <catalin.marinas@arm.com>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421160257.GA37385%40ubuntu-s3-xlarge-x86.
