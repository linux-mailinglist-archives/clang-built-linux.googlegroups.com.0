Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBPOQ7X4AKGQEM6HTPAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FAF22FE29
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jul 2020 01:50:23 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id s24sf13519638pfe.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jul 2020 16:50:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595893822; cv=pass;
        d=google.com; s=arc-20160816;
        b=QKVaGSXrIcRbgUnexE+irtzKZCH6Gwf2/UUpQWmwN+Pmd7Tt8wXny9CDawq8z/4Nx1
         u2wXM57YjFadECDXLIOXlfMlO2XCE48WYE440l9VqTMhY7A/BJ5cQzmVgd17W8wlgcgU
         MmYJT5AWyRXzOvaNtTeKatcKTU9ZJLDm5SuzMeU7myJsFxsXCfDaHqFO5NRzQwLUucOh
         91zLPavs4Dt+xXNsGj4o5hdZwhKSJI7v/23ElGPrflSAA/bL2sdB2pnc8XfdZxR//ypu
         lMWzCnLFgVVpwIQLYeJAYG4bK1Y8P1lip45bc64SGXSiHgWmBZFhq0WJG3Ao/okjmaFT
         fk1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=OMFBT21JNJLHk2Og4XNhrii91HjhR75Yj6EbrMQUvjQ=;
        b=iog+PxW6czS3KPdXBygCj02t6u4Ie4DiPiJA2b2bEKl7wgb/NJj2m+pgm7sAvUC5Sd
         Rfx1Rad3lbnp1LaF4zeOUjPhUVgqyb15NsZz7UCtoe9hCka29r8CMDxJSq+HFGY7Aapq
         Irq1cXqSv2oyzGO9J7wZZgRDv56bLb4csYogbR4hiZ4zCva9Y2QbEQpGqXUOwCBNjEPc
         CzZHu4FJPeyUW/U84guZgmsQRabSBvCNHPYMo6Y1FQqrwKFBxONyvGB3CEY8/XnyAwxp
         csVX8VPf/ARE668FUL83miW7+V/iJIt1lu6ua7UZYGvQwd+Ngs+MNHN0POcX8pR2JTbZ
         HyvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OMFBT21JNJLHk2Og4XNhrii91HjhR75Yj6EbrMQUvjQ=;
        b=lOTi1Zu7a8nZ+7ULGpb4uvQJs9MI8Tg7f+ck7a7elEYZ9rUmAhs++2bPaOzZgCzMhg
         tbCmItum+zAWqX3GQ3BKPBceFoiLbv7Vq7iseMftjtKWaCkMKat4610CTWtytyfNGney
         8BprfroH07Su+dNtkpxNUKB4Wtb4iH1UGIpUvxRxmojLez42qMk5qG4QLf6JXe8uXdKY
         baC5KXrSYuHUuFWwjQp1QCPmdQYNq8doV/DEVdAOxx7y5+zek911Bqaz2I+vXgDkBor7
         LxOpLG3aLqMszQqL/qysBWGP4Ta3tV7X2Yf+uz18UCeInAjZBBgouubr5C6YM7ae70FF
         efFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OMFBT21JNJLHk2Og4XNhrii91HjhR75Yj6EbrMQUvjQ=;
        b=BPU1GenVuOOIIpWWdPOpmaYgREDMbv3tdYKDOxFICpMhL7qeSt/MtQXcpIFsziSwGg
         RqCveJRAHv+uHcNvcL1j3NNp3O5vBecjahZb+TPUCehRbbP71LEeBeMsHMLOANWmEblR
         CqVK6543VqEcz23192RtTwv0Jw10eUvWF/vyDfxhsaiTGAoC70GgwBGvg0f1BNimjPyM
         WprHDErkIje4iyp30vdkaJZpTCwT5At+Tscv5SAN/yig6OpRZ8VGESSI6JlgZocs9ytR
         S58lYwYAKyGFU/S/+ib+QwbUAfQtHUVM2TEC7BLye4REbX8MGdw+TH62JdxQie50CHoO
         pW7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tTZLcBR3I16ngjdnennklLZQoaxjo2nC6VgvPeAklBMAUgQU+
	/QhhP1wWM+6i0XKnslWbPvs=
X-Google-Smtp-Source: ABdhPJxU01hTQ43Sg6K+O1Ddtz+fJqeOwPWbOtj9smMmdqKdbI+FpgxKnjthwsps3JMJYkshi7ZA1Q==
X-Received: by 2002:a17:902:6a82:: with SMTP id n2mr21372943plk.27.1595893822060;
        Mon, 27 Jul 2020 16:50:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d303:: with SMTP id b3ls3335975plc.2.gmail; Mon, 27
 Jul 2020 16:50:21 -0700 (PDT)
X-Received: by 2002:a17:902:fe0d:: with SMTP id g13mr21369512plj.326.1595893821095;
        Mon, 27 Jul 2020 16:50:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595893821; cv=none;
        d=google.com; s=arc-20160816;
        b=vLvLuoa9k+BInxbC8FXN69fopo1xh6SJH90NKU2Qp2Iq2YLLcT+BdwHyB5VggAbyYx
         7t3wyz1ETEOe8cO1xMTULhg+V4SUhUHf6NLp9aDyWx3cQVVjkA3a6+8HgCu+ZZ8oAmpA
         aWDIyaqx9OGK6TX0LlUH5FKth3t1nU2NWP5KDxl09grpEdEsHwqszqYSAC8HjaYt3Ns+
         rP3QzmBHl3Mhn6s7iTpPs2eddKCxodWgfcovm1V0PwWMN52+mHpeId5m3TwRXGarzTgJ
         WQlfY3JtpBk3hHZT/UdwKEmcqyZsZmpUXtwJQPkTyC3ADXBGpj4Nx9ixYEWSbgRQPxQR
         HUGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=rIVk/NjbGL8EZerO1hSFViaBW+vCQzAg83r8ICDvxEw=;
        b=YwxP4GP2gxV60vACxDhZeGjtEfzErGI6jDWzTfBlTGyx+6CweR0YxJlToabQpRcNdA
         LfZE7qMTmExeJs09ZV0csfR8fD4+h7rFh7dEiv7pPl8RCqUIN07Ve1zjPlEG5kIn/bvA
         Z+udpERrVPHIEJBrsHniR/oD7mr8tam78PKTj9r1m/VmEmVEI3z3UsZG62mlXGJCBsgI
         zfGfxgR06O2vCvG3B8MFPRvahPv6slFDeo4x2XzshSQXXcmlvh/5J8A5vwXsuKJ+aCJ+
         Js59t1NdahMQawOkZgI4l875bK+jTw433L2Ei8I7Vuvry/uD18B2q3jmTBWL1E1/QnKj
         5xDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com ([216.24.177.18])
        by gmr-mx.google.com with ESMTPS id y197si890815pfc.4.2020.07.27.16.50.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2020 16:50:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.0.7])
	by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
	id 1k0Csd-0007xR-Kl; Tue, 28 Jul 2020 09:50:04 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Tue, 28 Jul 2020 09:50:03 +1000
Date: Tue, 28 Jul 2020 09:50:03 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [printk:for-5.9 1/1] include/linux/ratelimit.h:14:2: error:
 incompatible pointer types passing 'arch_spinlock_t to parameter of type
 'raw_spinlock_t (aka 'struct raw_spinlock
Message-ID: <20200727235003.GA10996@gondor.apana.org.au>
References: <202007280718.zSmOVLBn%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202007280718.zSmOVLBn%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Tue, Jul 28, 2020 at 07:37:30AM +0800, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/printk/linux.git for-5.9
> head:   b4a461e72bcb28a512bbdd29a4cb70aede2d68d3
> commit: b4a461e72bcb28a512bbdd29a4cb70aede2d68d3 [1/1] printk: Make linux/printk.h self-contained
> config: x86_64-randconfig-a016-20200727 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 8dc820393219c7ee440b4ec86c9a201301943276)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout b4a461e72bcb28a512bbdd29a4cb70aede2d68d3
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

This is fixed by

https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?h=locking/core&id=5be542e945cb39a2457aa2cfe8b84aac95ef0f2d

It's a bit unfortunate that it happens to be in a different git
tree but it should all work out when they're both merged.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200727235003.GA10996%40gondor.apana.org.au.
