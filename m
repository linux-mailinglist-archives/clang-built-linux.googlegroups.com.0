Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNFOV3XAKGQEY7XAAZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 03883FA9CA
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 06:40:06 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id o7sf983423ybq.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 21:40:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573623605; cv=pass;
        d=google.com; s=arc-20160816;
        b=H782deFtXIaYzqD5G7okodl5Uf3vVJmWe5RTfny2DcLb9LxBipDUbE83JBkrFRZmqj
         SNbCy1ce9K6vT3QJd+5eYki3kV71cJHvRCaJrC8Z+sjZo9bAWJdy1eRUupN8c+XClFd3
         2NGR3qzTc3X0+A2Q9CuDk4R9S0+XF2c1SRaGgwlemDUaiX5DWVn/EAXYNJMSYpcACCy/
         iC0dFPrbUYNvN4ubYo9DCBH4yp5X+Ede3uWhTLcCKAezHumIgktNRtGIkz0o/bkb1W/B
         BNUd6FSd9830PLrFwlvmhNoTBNgCQ1tDONFn4TvS6Na1yYW5aOlyoz9i1M7SY8T/Omu5
         +ubw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=sGnpi92583TMrM7EioAvAKio+PLnoR02B9XdcA8FEM4=;
        b=gxTSSMy2s0FYOpRG96r/z6vC5zzHGG3nPHNFhmGwbPKI32no526wPQEYLI0g9iaEH9
         40jKMesyWkra+OGzn+Gh3az+HIuuIu/XOd/fapLkPv2C+RBHm9YQQ9L8wfig4oKrShQD
         CJV6YazAmNfeJL8PdZSmkhETMDJV3W0OqB7OfGtG6oLDo+2EwupVed68C0oT5T7oVNYs
         Zbbgpa/A7QbbGXVwuSqEYB3M82lw32bnqy5OCnNTB5GW3/E3ei35g9LMLRIhvQQ1nXq7
         m9MGOF0BQ1VKiRJao9I75oW0Rx1EmVbg/nottrD7UKgLdPuv+nHuPLycYyzOsgZHMgt2
         dDrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rmjwGLjz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sGnpi92583TMrM7EioAvAKio+PLnoR02B9XdcA8FEM4=;
        b=KXFMUnGzUOlOCyuBjg4/ZYrxQvobEsqiL4vIij8B/oeVi/8lc1FAFPRajg78eTY345
         jevbc/y8XhzZLKq+pNbaLnp2JwLvmujDGDCw9NPyoNZ5QoG+WFJa1axF5JibejWUY5wk
         W3/0/5VUM1C3/SwYNmRWGXwDryE5owjXsWeV21OmIuwlczYG31iNxtv0Z6ZKQRT+fdKC
         FY2sx4mY0EXIGRIPi9rZDWTnxZd6tbN6YJB+/wIf60+BsxTDaVhisH3lALIlPaYvWVcb
         TZ8JOxkr8twiX3QagJqeMsT455ZibZKjAME/6b1SA0tikMbfZBtndPptxo9p/v6FYos+
         xGMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sGnpi92583TMrM7EioAvAKio+PLnoR02B9XdcA8FEM4=;
        b=PljJGQuUcotNoghnrxXqobZTpF6z7izoPxeWHzB4ikI1/bJJNsBuLuL7aJV/7JxMph
         L0lRf+FVrzPV8xZQerSSTMqKaJOysRrBfhUY3dkth4E7OvjP4Fyl7gd+iS85jlxevoau
         8//qmCBIP9kGOtgDa0PkcYPm10dYMkmSj7v6kkESp/ep54MQbZh+EMxDnTpS7UQy4H0K
         iV0NrYAwL0Vq/LUIt5W+bOZEEx5yAFoUuDWd5VLCjrP7JbeL+hutfsnOmXdR7IPEpWBS
         Idl2SU9+rxXnSFnWIUPs6Oeq4Krcfw7QjlHUAJSmvmUnDXBkRk5YgnMeajE6XafJvU+r
         eflA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sGnpi92583TMrM7EioAvAKio+PLnoR02B9XdcA8FEM4=;
        b=BX7sB2+ZM8i1ii13jbPEKdZgftC5cwM4e7vXd/h48/jWPWXuf2uxghKwjshUQ+Siil
         38SKT+h0Xm/cWzaO/ZTmHsiao4BHM9ILdmtgmtBG4Oo0gR7xiJRPKJ0HltOklm1cpnpw
         w1kVE5CvMWKCMhV5IM172jZIA38/OWwLQVKjVjXRS8oFpe1zGlIQ3qOJqCuFntN8Ymid
         P9i54VSysr6nV8g5vT6qwaZvoXHcBFthqir6IOBoeNj9zX1gD5wKPMXgtlXoNWP1whai
         xUmuH6uULu/7VLU3Rcq6G6388QLXTLz6ng89JkpLO9EjBqZZD9umDr7bxyHkZFBMzgR1
         qgyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXhaJMITV5+CqHOlthp+Lwd6rhgkLSSqwNFMYGN+h+/mgcLaPCe
	LJII5rlKB7FGlXoHXhib54U=
X-Google-Smtp-Source: APXvYqyb+y8c02tfiRb3Dm2iSpJj3kgB+jiMSDLl3ptzMa4MGA/R7IVUNfNcCAzKTPzpzudwBQUouQ==
X-Received: by 2002:a25:4688:: with SMTP id t130mr1241746yba.270.1573623604972;
        Tue, 12 Nov 2019 21:40:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4114:: with SMTP id o20ls262665yba.13.gmail; Tue, 12 Nov
 2019 21:40:04 -0800 (PST)
X-Received: by 2002:a25:d4cd:: with SMTP id m196mr1294479ybf.387.1573623604591;
        Tue, 12 Nov 2019 21:40:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573623604; cv=none;
        d=google.com; s=arc-20160816;
        b=Ig7Y8aaAd2pAI9M8As2ClF8kiKPkInEgKc/yum4oDkuo8l7KWjqYF9SW200RY4S0gm
         kt5MJkEOKWIlWQZCeB0zl6wy9yyRzGZo3HqdrtCgiul5BlBuzrZdbNbRPy1QTapDSpGD
         Fi1aitHz0QfWsjxw38sfc/MW2uHXRJmgAQVOgmxoq0GM1LoaeXPQxmFmw8c7D+tmpLia
         lGCCZdiRAY0RQK98nkZRipcaIz30iUTdxHooZVeGmtdMhxM+NcWlahXwNT2IDL65u7Kx
         by+qwnepJfe/cHbwVsnL+n3gLGzOjB2Mm2ILj23mW3c8jZ/Pn1QOpqwFmSt1TkpRKffQ
         0kZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tiA6+web8hYlvE7l3W8sBbY/NQrVwHNhl7m3nCyxsC0=;
        b=myzwAyfuFD8yhMbn/yg8U3x+es2CsfVsi8LfLXLGeWJtxDyzBuLevuv8riTRfiX99c
         frvNSJePMmwLkz/Kfbnkyj50KV0gyXCri4/SM/LVqS1FGu7vmX3jqh7YtIZwRToVp6Xm
         x+z5/sJdUgX7Ov9oNtzKVA41hf14lJgeZ8fcbvMt58zHKkvgOtDFxD1raRNV8vhwKOa7
         7SX3Fq9apsFeZl59BFyq116Z3RSz2EdojMiC1FEYpk2dx6hYrn7LaTIjngQVedLG5nm7
         XjRnDQ82S2NqZTmKesVw5A1l7pRm189X6K5fp1P8rPRr+UfoENI+2e4IUYaEz+SUROJL
         gITw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rmjwGLjz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id f184si83963ybg.3.2019.11.12.21.40.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 21:40:04 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id a14so707194oid.5
        for <clang-built-linux@googlegroups.com>; Tue, 12 Nov 2019 21:40:04 -0800 (PST)
X-Received: by 2002:aca:338a:: with SMTP id z132mr1451242oiz.99.1573623603886;
        Tue, 12 Nov 2019 21:40:03 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id z2sm423545otp.2.2019.11.12.21.40.02
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 12 Nov 2019 21:40:02 -0800 (PST)
Date: Tue, 12 Nov 2019 22:40:01 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next] sfc: trace_xdp_exception on XDP failure
Message-ID: <20191113054001.GA16066@ubuntu-m2-xlarge-x86>
References: <201911130835.PuJmiqjv%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201911130835.PuJmiqjv%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rmjwGLjz;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Nov 13, 2019 at 08:40:58AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <20191111105100.2992-1-afabre@cloudflare.com>
> References: <20191111105100.2992-1-afabre@cloudflare.com>
> TO: Arthur Fabre <afabre@cloudflare.com>
> 
> Hi Arthur,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on net-next/master]
> [also build test WARNING on next-20191112]
> [cannot apply to v5.4-rc7]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Arthur-Fabre/sfc-trace_xdp_exception-on-XDP-failure/20191113-021808
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git ca22d6977b9b4ab0fd2e7909b57e32ba5b95046f
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project edab7dd426249bd40059b49b255ba9cc5b784753)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/net/ethernet/sfc/rx.c:681:47: warning: variable 'xdp_act' is uninitialized when used here [-Wuninitialized]
>                    trace_xdp_exception(efx->net_dev, xdp_prog, xdp_act);
>                                                                ^~~~~~~
>    drivers/net/ethernet/sfc/rx.c:658:13: note: initialize the variable 'xdp_act' to silence this warning
>            u32 xdp_act;
>                       ^
>                        = 0
>    1 warning generated.

GCC also warned about this:

https://lore.kernel.org/netdev/201911130341.cyPPszln%25lkp@intel.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113054001.GA16066%40ubuntu-m2-xlarge-x86.
