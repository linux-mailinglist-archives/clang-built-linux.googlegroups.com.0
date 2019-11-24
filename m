Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBAV45DXAKGQEMF247CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C89810824E
	for <lists+clang-built-linux@lfdr.de>; Sun, 24 Nov 2019 07:07:00 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id i74sf10653349ild.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 Nov 2019 22:07:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574575619; cv=pass;
        d=google.com; s=arc-20160816;
        b=GLfcJW6NNmq4shEWZaHrnTjsTbW7wg2ZpcjGsev5zl1KPIVUbpkD4bLupL687cysxd
         cAHPBEeaYpSM6t/3Y4sdQE8Y2G/qpj/mLEpS/15EEWtllOtUDoiFq8wwx9n6RHoZeeaV
         IHXWIetMoVFGt0jv33GUyV7S2ohtDeUoc/iVoFN0GHtfp7U9xRWEJ7Sk2SPajajg0z43
         Z2FPPQtgoU6LmYGbil0ch64gVojGWZpBJGLCcC1y+HjStb6hpc6cYg3ce2KP9iFOrcUZ
         ipNlxNTG6KStRBFRra1q7ygeImFPlHwUm4OTGQVxl2/DbwWCXue6MX1Z5Ft63x/fDppp
         dnKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=7FcGFsQz+U5Mq94UNA8O1TNFM9MF2XNSRC+wHEIM8x4=;
        b=D84uyRfJYvFZ3W2ox/vyIbUApNq+ELl+8uCrFV4xUBqqCj5LWedDZJj5iFCSnUqnNr
         2o1gWG/bBBDHn0M/fcloVmtf7z1hVedYsSoL7j0awAKu2ZO7eBjixAKFwi7iVW9tbLfp
         UDgHuU+lzt0Ej7DO9RqunU7o9fgbX5/od4V4u5RAP1AkzZMU8TsugFZtZu2GeHxT0xtc
         6oWkcy2iZq4ptNOHILnOLIJfuspfCFEAE9srN8dqAEWEfnSjQDBOtQ5oqEhGtkiJTb7s
         NyBCudC76XeQCPcDfHhoBiNb42n+E0lTrrkzEtIQtiT6rkRuQCJwQmuu3eJRiy0+7QO0
         2lEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n7Gwt0Gk;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7FcGFsQz+U5Mq94UNA8O1TNFM9MF2XNSRC+wHEIM8x4=;
        b=NQwr5pevMVfDO1KNcoWHas9smbhPDm4SCpw7WmVUa2To6kjXna73ceSPTzhvFan3Q0
         p/eij355fMExGAXf6s1oVNH8OQEdIktjoHqzc3n4qZw3yUovXp0ZmrcxZYhjgQsrQV9F
         2sOO71HcYuVC6UZ3Fanr4FtFMQgtAhLpH1XwYVq63bPom0qxK2qC/MCEWqieGMVF8jNe
         2cu31RLp4RwQ/QK6LqUbj4tnV9/AfUTmIyQjDFuf6zPdOFDPMFf5XcQz537pPXfXL+xF
         8x6hzb3rom2mSNXG2l5193vBEIX+rJy/YHRyx+l4y7eOrqSmS7xwPCjK0lz/EwiJf54r
         byog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7FcGFsQz+U5Mq94UNA8O1TNFM9MF2XNSRC+wHEIM8x4=;
        b=CVbw+8lhLSIc8S9IvgEb1cKPe23nog8RnyuzttVkb297cBu325pO1WEdDtk3B6YEYq
         w0DrE8KXnq+W+eMPrdAa0uwTCo6mehwlzp3eWweCnGD6eChVoA3HAKCHUSi73PpXuNmx
         BNntEB0uEM0LmmqClcIw6GrEgy0ta2LFqrzPBSuRgsmk/wiOpZGEzKEr/LTS4hjkIzKZ
         LqCrxftfzmOo1ZEe18JapNFQpk/uyioJEIE0l0UFNoPPrr2vDUDYECebftDCGkCzFDti
         nf8JRqFW/dTDhFCtq0RpV2kUe0omnU3gKmGCGQ+VN7AGWWg/h54YMXV92WQ0yWAE2C4U
         /PGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7FcGFsQz+U5Mq94UNA8O1TNFM9MF2XNSRC+wHEIM8x4=;
        b=Qug1hqBf1tiCEsp6HWuPFXZdBdR4vkWKIGFVrpi0XaImyXePbjhMOE/SvBZAvf+udD
         wDJ18QdhkPgOG5/LJcvyu3GUPIKWM4CVGP3PHdHk2KeRKOQlkz/01Ua7/Xx2TzZmo3MQ
         hzNkhhp98t2w8Ei0mznWwYkHNrua2eYM1fZVO5ZvZ9X1kLU9h+YEpMjsCYlFpJqjfbQy
         s5163dwAE4FsVwhC5PYu9KNCUiG44+9JxWlcgFbfAj8eiPlYzZLfyjr3gx71B0hdRjOx
         gePTMtY9j7fhEpSGp3exgqsw4ywFqBC46460ZK43iGZX068z5EQzfq2YObCLYLeyiTRd
         udWQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUk+dlVLyt6LuSwS7FRXI8nDocqhWKUV4oJU7KJkOqryoIvRl/a
	n0udGuoD/MyyCBsGzywBdhM=
X-Google-Smtp-Source: APXvYqzA65+EsisgmPX4aBK5oehU1JwDCp/f962e98iMn5zTjHK2S6AxC79bqvKFug7Ua8G2J36Ihw==
X-Received: by 2002:a02:23c6:: with SMTP id u189mr16417455jau.31.1574575618904;
        Sat, 23 Nov 2019 22:06:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:960e:: with SMTP id a14ls2004189ioq.11.gmail; Sat, 23
 Nov 2019 22:06:58 -0800 (PST)
X-Received: by 2002:a5d:914f:: with SMTP id y15mr14990375ioq.233.1574575618559;
        Sat, 23 Nov 2019 22:06:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574575618; cv=none;
        d=google.com; s=arc-20160816;
        b=Ezc7Grv6VdPP+T43H9xaBFXbT7BD5ORvYhzVTrNJgoTQN5lAX9WOMbg7RVV8znZ4x0
         qooklSE2cCGvrM5bLjiZR4GpaaIjqWGa9BD2idf4Dm6ooXX+1ENFMnNk+Chu4PyvSAFh
         N5hGqzJQAPMUVfDRecXNI4K8qHcs0OxRMkPjsFvuhuBztjdBLuzCwQKCoF8sFOfJW0tf
         yIxDaNfNODMit1WNqxAmK5XybZt+zLfik6PVwkL7NkBfshDvZqntQMSMwL7kHlp43/nS
         JjB2Cc99uj8riVyN9xRTluW56FgT+QtrWmcCVesTAgDbIdmPz3lez7QOWyN6a8mgLC0E
         Azxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=qp4FJf/dyv5JHJg3NoH7zvsPFHfubS6IbBBaCtfON7E=;
        b=xCXPgaRyONykTSc52Yzc7D1L0qcg2h2KrUCO5JBWgabUualk14GaBPSXXJda3bZJ9x
         Qu/07FLoTmWM/3gBO6L7QaAldkIdIOFsiu+hWSYaP4COHBf3vOSkCdUzit64AjDs6O2K
         Wub+ajv4LYQvkFec7vnyEoAfBm0GFX76nPu/FbKT7ZEOsBtmab4cfEXhG68C7r+/syKU
         GNzgy2dKAxHQz87zAIq7cjIG6Xb2WuIyMuaRga1r1AKmJyYeK8CT0HdAfueQnPr6WHbX
         AT/1xcVIOSMVsHibWNv3SuUOxv8h1D70CSTpknjarZZAzTPPs6mW7XOdET1kzKx5KpoG
         kAyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=n7Gwt0Gk;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id h4si171218ilf.3.2019.11.23.22.06.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Nov 2019 22:06:58 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id r24so9769566otk.12
        for <clang-built-linux@googlegroups.com>; Sat, 23 Nov 2019 22:06:58 -0800 (PST)
X-Received: by 2002:a9d:7dc3:: with SMTP id k3mr16156580otn.72.1574575618053;
        Sat, 23 Nov 2019 22:06:58 -0800 (PST)
Received: from ubuntu-x2-xlarge-x86 ([2604:1380:4111:8b00::7])
        by smtp.gmail.com with ESMTPSA id j17sm1063401otk.27.2019.11.23.22.06.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 23 Nov 2019 22:06:57 -0800 (PST)
Date: Sat, 23 Nov 2019 23:06:56 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Dave Jiang <dave.jiang@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH RFC 12/14] dmaengine: request submit optimization
Message-ID: <20191124060656.GC25359@ubuntu-x2-xlarge-x86>
References: <201911221043.gVTvI4zk%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201911221043.gVTvI4zk%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=n7Gwt0Gk;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Hi Dave,

On Fri, Nov 22, 2019 at 11:26:33AM +0800, kbuild test robot wrote:
> CC: kbuild-all@lists.01.org
> In-Reply-To: <157428509565.36836.4500949956170655742.stgit@djiang5-desk3.ch.intel.com>
> References: <157428509565.36836.4500949956170655742.stgit@djiang5-desk3.ch.intel.com>
> TO: Dave Jiang <dave.jiang@intel.com>
> 
> Hi Dave,
> 
> [FYI, it's a private test report for your RFC patch.]
> [auto build test WARNING on tip/x86/core]
> [also build test WARNING on v5.4-rc8 next-20191121]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> 
> url:    https://github.com/0day-ci/linux/commits/Dave-Jiang/idxd-driver-for-Intel-Data-Streaming-Accelerator/20191121-205839
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 004e8dce9c5595697951f7cd0e9f66b35c92265e
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project cf823ce4ad9d04c69b7c29d236f7b14c875111c2)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from drivers/tty/serial/8250/8250_port.c:41:
>    In file included from drivers/tty/serial/8250/8250.h:12:
>    In file included from include/linux/dmaengine.h:1398:
> >> include/linux/idxd.h:10:16: warning: redefinition of typedef 'dma_async_tx_callback_result' is a C11 feature [-Wtypedef-redefinition]
>    typedef void (*dma_async_tx_callback_result)(void *dma_async_param,
>                   ^
>    include/linux/dmaengine.h:473:16: note: previous definition is here
>    typedef void (*dma_async_tx_callback_result)(void *dma_async_param,
>                   ^
>    1 warning generated.
> 
> vim +/dma_async_tx_callback_result +10 include/linux/idxd.h
> 
>      9	
>   > 10	typedef void (*dma_async_tx_callback_result)(void *dma_async_param,
>     11			const struct dmaengine_result *result);
>     12	
> 
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

The 0day bot has been doing clang builds for us and sending the results
to our mailing list and this warning popped up. Mind taking a look at
it? I know this patch is an RFC but I'd say that is the best time to get
these warnings knocked out :) let me know if you have any questions or
concern.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191124060656.GC25359%40ubuntu-x2-xlarge-x86.
