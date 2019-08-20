Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKVQ5XVAKGQEYJRGT5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 220EC9542A
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 04:17:15 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id j10sf6206182wrb.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 19:17:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566267434; cv=pass;
        d=google.com; s=arc-20160816;
        b=Av0mx0orjFmPJdnwHLcQEkk3l0VHrAGt5mB5lgJpMBkp4fY3DPdBxpqRRCDQZTvYXN
         5YAmx33cTSmqVGbzTax4VSpgUDYpy2fYeU0pKVkSW0X0kODklSi4PDlXki+HLb10GrMe
         6/6SC1yuU/yckZ1k1M4UyXuQaD0B+YDunJ8p/J2JLHsn92I/Bq6xpN4yIXUyIiBfwnbg
         MHzo5Fx6IsCrbFL4FtzUJIfssc7+23Q7WsSbBAwTL2Ny7+W1bPku8ceLS07F2D3Uho+7
         XIIodxesjgfIY4jCFyGCXZlEXtg7p0PZvVBfa2uT/Z+xGA8hzMuOMwkb2Ky1pvN2i8CA
         opWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=56CNAt5WvoaNO2jxTBaSi1Se/Bp8rMsT5KgBsc9dIyE=;
        b=xmiL36ylO5AVTvyq9O7w5ReqWcDtm3K5ZaMxagCztdRlh0KMRUP+VjnURAgWm7A6Pj
         4gmjnbi1HIqsfkZYFns7B8E/4C5I9ew63QI+mZOUaR2Qda21u4b74YmueyXus0Cs6Oo1
         xd9bUbvcfaBDq7jZGfkiIuSYcKpLW3GNIzsl4SvrjsHworLoVp8ZV3kRjj4W0wzz/746
         TvNuG3NCU10Dl4cAGb8+pD9NZ70JI6FNxVYz/E4VQRY2WSqI/20dqgbfnySAUIOKpw0t
         6ZUd3QdFKvm5olIf7wf+q0vPJeujiVw0RlDGDqVcksPpM3eX8Azeuj3TU5yqnKULjDAM
         AzXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nUCvqQWR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=56CNAt5WvoaNO2jxTBaSi1Se/Bp8rMsT5KgBsc9dIyE=;
        b=G0fe9KE+tBKI3tG3V5z4LIY0lOd7wK99VToWFupZ8xXuui01YjUDfCwC7qAEaLkFz1
         Q+4OJrTqLdMjY07CoNPVcvYvnrxgynxGIhqK5QX6CRnbPpsnXCDzayhyR3/0JPbDkv5O
         lg+57Uv7Dg59btWhwgvtoHq+gkSkhxzuvOHmhVWPz7uaok7kDAmQknP0uvx4IcZbyD3G
         XvESSITx9SrhQu1TpuxGa8LMCyz0bjPsY+J1q5L7HQfsHWMs36A2xo8hyVSNiRS8d32G
         E37RQa/YIZmb21myXe4NNEuOD1RcVIUMI2MPTBzsL5L8BtdlAo2DQAn1PX3AMijRXaqx
         bm4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=56CNAt5WvoaNO2jxTBaSi1Se/Bp8rMsT5KgBsc9dIyE=;
        b=Q65Lw+UJY9AfIG+yfe0sX6PtJzje3CyX0NRCyVxlp+JELlCFc0k1h02dGGJMcflpCK
         gtrWhjPJWVHL3vEiBWIjnt7Iduc4RwJ6XjrPEUgglwXgeqHltvwuwnW0ecGJTxKJr7Zx
         krYpdBhc5esCqYR4pbXcICSYMW9UcVY0OzYWlQpmiIK20ZGkVrulVMGnuLeZRGmmd2x5
         YnY283CSrAM+el5mOoMeft5Px7ntGjyfjO7M7XO0TqHiubn5K0XUgxwNrBjpdzQXpXh1
         IzJhjeQrozYysdt8chHd/gpUhdF23d2IhPqY7iTcQhXFNDB8+RSPEWSQyEER4+Q+0KTb
         7klg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=56CNAt5WvoaNO2jxTBaSi1Se/Bp8rMsT5KgBsc9dIyE=;
        b=m3HZUyNrbqjtzWcKQRgjynE7zFK8gTGaWSh/8xIFQdD+X/VldI5wI+/cmP9YSx+nVM
         U88b+CKRExUtKXkVVv1X5SpsBZYEtLkbwiON27MoOY6ws/6SU92JPQcjbvnM/MMMaCtY
         GPtRS7Bs++URiCHTDFiSryr4VF6kXkDKCCUt6dDZ78tA1n4QggZecldcNT5g2UgBSbp0
         q7FD0ZyP1AJaJEZo7pd2/D/RTt59DcnyfBe69OUpS9i3qIbLh2G0+/hXnuIhgc5aYF0e
         hy31rMKNLE5oM1MbPDwFDcYSGPTcoEJO1BhVX8oY43RF37beI/Jqm9NPHSUM/uBufdTk
         KEyA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUKpL/Y/WWB8wO9d1Qjk8Fy3ct6S3H3ChtmyDFqFXt2I4k/9hZT
	oikSCQjCqQD9l9PyukAWStg=
X-Google-Smtp-Source: APXvYqxGvmXXG0JbkxNdaJn9YaM80JIw5VtjS2/i8qExfGVOe8QdB25xB+82g5U/ubORl9AmiAn9KQ==
X-Received: by 2002:a1c:be11:: with SMTP id o17mr22779781wmf.115.1566267434780;
        Mon, 19 Aug 2019 19:17:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:678c:: with SMTP id v12ls5032166wru.6.gmail; Mon, 19 Aug
 2019 19:17:14 -0700 (PDT)
X-Received: by 2002:adf:f30e:: with SMTP id i14mr31295369wro.288.1566267434352;
        Mon, 19 Aug 2019 19:17:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566267434; cv=none;
        d=google.com; s=arc-20160816;
        b=tOk59JsVVKwdxjMJUu5hi75bB2CE3z56Z05+QXvunSIW/tVLzlNPFAbuUdU14c40gM
         v05Eng6RNRzFeu1P3EYtgP/7fS09717DI7QAnqK6t43bhD0nEuJNDFCAUF7GTFGJZ7CU
         E6ROlWI8AD8liAjw4vNa3safUrdhgL3Cl5jj35jNs0ZbloPk/I+o2Yv3tj946qbSb/To
         pijvNk2Ne12ea9aRxhJ1c5OptKLV1A9oIlerQDlwcs50vaOuKJ4LmiuyDKhS/zZXrO3Q
         B2/sO2sn7vxKkVQ7j3ivnnHRphA/ZQJqNlgWDqMXd3fW+BkcU4kKUFB8a+jl/oKURR2A
         CCqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Szas8VVbzGY/1td6aPLVZd/Q0UKZTQJrc5/9g41QXxU=;
        b=XVD2KSTKG5LVbMPPgPXKJG85uj1YqsvQeRtLYY2qxQJlbknM9yN+pF8+Do1c4kS33m
         VOl9G4KdAy2+fc/lgA9AwMZ89WSuS1LAtq7VkOo5698Eui4sWD3YzxTFnQNWuJWYAP3Z
         kkiKI9sEzLMBadhJ2PpFXQccS2UaSwmnzStCPAkcmhwcdpP6snIlzwrg1HV3pk3LLjcQ
         gax8qssy3GKLnmit3ML23LknCXekmF3b017GoNt7qerTIl4tJDznw5o/PiAB7am8kc1q
         cR9tZHAsus60xl2u62gN4YzVCZZmyyvWyL2QNdgyxq7udHbrYzoqtGLJsKQq+PZYFwqN
         aTJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nUCvqQWR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id f13si31513wmc.3.2019.08.19.19.17.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 19:17:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id e8so1279447wme.1
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 19:17:14 -0700 (PDT)
X-Received: by 2002:a7b:c198:: with SMTP id y24mr22773600wmi.131.1566267433803;
        Mon, 19 Aug 2019 19:17:13 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id r16sm35709223wrc.81.2019.08.19.19.17.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2019 19:17:13 -0700 (PDT)
Date: Mon, 19 Aug 2019 19:17:11 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [robh:panfrost/fixes 16/17]
 drivers/gpu//drm/drm_gem_shmem_helper.c:426:1: warning: control may reach
 end of non-void function
Message-ID: <20190820021711.GA30221@archlinux-threadripper>
References: <201908200057.bCK0cBM9%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908200057.bCK0cBM9%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nUCvqQWR;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Aug 20, 2019 at 12:39:00AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Rob Herring <robh@kernel.org>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/robh/linux.git panfrost/fixes
> head:   1b44e1861523abce05e190cf312ec8da6ee8fb32
> commit: b096555ff0fc8159e61ce35d7eb188463b96e50d [16/17] drm/shmem: Use mutex_trylock in drm_gem_shmem_purge
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout b096555ff0fc8159e61ce35d7eb188463b96e50d
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/gpu//drm/drm_gem_shmem_helper.c:426:1: warning: control may reach end of non-void function [-Wreturn-type]
>    }
>    ^
>    1 warning generated.

Already reported with GCC:

https://lists.01.org/pipermail/kbuild-all/2019-August/063349.html

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820021711.GA30221%40archlinux-threadripper.
