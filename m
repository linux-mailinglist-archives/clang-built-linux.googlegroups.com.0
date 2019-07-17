Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHMRXXUQKGQERAKSQ4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id E146F6BF75
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 18:11:10 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id u19sf6248893wmj.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jul 2019 09:11:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563379870; cv=pass;
        d=google.com; s=arc-20160816;
        b=vnrpZWMWp0GGSokVsxB0qcRJUT0epLFULGLzoOY+IGyUSV/Ccf5ejMFkHRYDrOQ7p4
         CLzJGIPi+uf7w6xAy5Q2OppwtMz9LTpsAGPPn29CRR2fBXaMTE1hA4SpV5nGlwR24RG9
         /2Cg7qHsjFo2L7j4tsY1S5aTxsRWsByCt28DG9CzeHnH3DbbvqEpXF7WFrmnoYTa9VIs
         Y2RHPIskZFhPPftMDE2FGxixR1ysVEuDqhKs1qOjrktmjpwG+6kEcHY7pYIo4Wou6mT3
         Okt2+GuoV4+xe2JFoZiHViLfIhvdwBpfzJBhaBT05BXGbmbaVAcEnlFtK8PB6mBUGpcc
         CXQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=/waKMBaRGf8e2GqtOthXIs85fJyVG49fPzSiz7oatSk=;
        b=dfrw3i4n5YbAejGmM4KaUueKr3wpr6OskYhZUKAIhI9A5d3X2djOT4ushiS8tZmj1H
         IStiuEkTuN1/B8iK/L/hfh3ai2onErjIPRnZ6VfzkldXTj1ygs+dsNS6lk4fe5m6TVdS
         7jYORM3zRPtGChNLdZ2AkymSI/zrktdlS7iBslOKuNYGqeznjOrHZ3LYLuCE0fgjoSbK
         Fa8Iy4Qt69jntHUOnCL8XhDwVx/uyXRK9JPctkgwuVd6Hji9kq8Fjn8p8di6xOTkIQBB
         AXkUuDwZXepBjjTYNg2GZB/1ZDqivg5Ag+DgVjucNyfXc+UC+1+aVnIuoMQxz4huangu
         ANJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qctX6vRr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/waKMBaRGf8e2GqtOthXIs85fJyVG49fPzSiz7oatSk=;
        b=VAnXJvr+YKrmnT6JZlBPQoWDYyY6SEr8Jn2Kk90V62lh/QbnYadUM/5fgo8vbPjVeS
         P/ocs0+ccQUUXypInBgaMbd5HbdKs7s3cJJoYQWQpenU9Rfg5iqu63x09hQJ8mLX8GEH
         5qDtUMnNmt9BWT+8G+eCS5NJF1et3gkuNvlj34lwotwaaZGBF/TGrJR3kT3KfonOZOr6
         C3LunvaFoRrqZ5r4XXfnU4YyDKu9oogvpSKTRw8iI5XOUV3fDpPy5pqNszSQRyO0q+l9
         jt/22dcvdK1yh9iNpRm2BdAc1XmFAyweo8BMQrmOBpRM96GJLdcK0TCa+ROPC6+bUTPM
         n2Zw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/waKMBaRGf8e2GqtOthXIs85fJyVG49fPzSiz7oatSk=;
        b=FffJg7tYPcr09mWL4FJeLPtMQzN14zkyHMTaQhqDDllngUlSwHQ/IYFyiexBdprp/s
         xPmnOmt02ptAmR+ypHibq4Ya2IY4XLogEgzcRkj7Fj1ZifP68OcnGSvospEIfmUSWPnv
         hzDUIuRkzzzthRxha2DSZAd6vyg3pve2Ex6yRfGBI5i/GwP3w96yH62smF5vY2e0+9zU
         1wfqh1oFRdgdA0dL8RCXaXJjjaXHNYh+XhS/UPc67BHjcn9b8kl8CEWd9hIi5t2aDbAf
         0ubR20/iwEGu95f35N1bed0gLH7qHlXqfsRKKlndEUCdS/D5veH70V/JTaLZrNBsxdio
         iGNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/waKMBaRGf8e2GqtOthXIs85fJyVG49fPzSiz7oatSk=;
        b=FFEYkuaxECt9+M+IEnw9Sp0dvMzAeAXhP3LZ24ImeqERQqGrIUnmHoAt1UXHx+4FsD
         rENlXXQOnRl/UwDc7v3w9taZVhT7R3aqwKiQ4SriIUp6Uy4JBEzp2JHpwiaiDmFhXe6N
         oKUM7RUfEBA3KUF2pjX2vgsuwVxb5SZgbuLwiRgFHwes1BNpKlc/WPO511tGbnkBqrFt
         FzAzN9SupPszkwcgGIV5LNBLRLOW1j3Gy7lTxbJB+CAvtM4jGH/oAFt1/eWpcb8xS7/x
         8Wvw1vPXnYz0kdZhoSin+ffZbXA/oXfX0erXJ5aCA89P3UMeqYCK+UB1Sg2Rq+zS9eoQ
         zABQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVWO742CvJnk4N6GfNyfLBAadopUFDDldnWEnYKlqkzYWztzq6+
	jxBiJDLFEV+qbGRFpc8nYMw=
X-Google-Smtp-Source: APXvYqwB7aV5x9sTr+HCuBWKAcu3l2v7ij/4vLYTd55SlPmCkaKGl70M9vr5Mw+kS+DKOXcV5lRhGg==
X-Received: by 2002:adf:dcc2:: with SMTP id x2mr31619372wrm.55.1563379869650;
        Wed, 17 Jul 2019 09:11:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5709:: with SMTP id a9ls7881976wrv.12.gmail; Wed, 17 Jul
 2019 09:11:09 -0700 (PDT)
X-Received: by 2002:adf:f6cb:: with SMTP id y11mr28821303wrp.245.1563379869239;
        Wed, 17 Jul 2019 09:11:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563379869; cv=none;
        d=google.com; s=arc-20160816;
        b=aCEjKb/aTXN4kJ5MjoEAgWpRmOqsIkXg3MdLBqrjX3sMsGgkrnqqwlUYTv+TGI4695
         6XR5pMzIhegzhDyiLvng3XpoIGfvzk9LvTGWs9hp5Bwxs/AcRUKX80s7F4yPaNZjmWYx
         4HBoIPPVxI4QlvADh0WFJEpzKdQ3tG/gmkv6OtUP4tdwWBi5Pnxk5oLrPy98mK89H+A1
         jjcpzn71ufuNXUVF1aDRz4q//SnclTolC4MguWivHhuIfi+01IpI0V1RUp62NieKy0RV
         dBmwQ5ixEYzS5kruL85PCDf0MKkxafxrqAQsyfVdmPSy2OUAnugSqc/Mz3tcrlLg3sSf
         vZSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=HwgCPM3nPcNcHsT7QSZZKAFDkOSftfspa0bWaekvoMU=;
        b=kTcj2p7TTEELbq8xXyE3ch5fYRki6w1BL52XfbadXENTOW24/r1v1hmDs+o8CJjqlD
         jn7C9743ZVvnCyJV2BczPRR67/hdnBaD2uRhH39YdcaY1lGkmscw1j0wMeIive39e8EC
         fuE6nprSuR/BwnrFm8R0Tr1vHGlnQfJdus4kExoXbE1oq0wuz280w5wK/XwEn1nqZVoI
         0eaJDWP3XTBxuRLo3QF4LYwsCJ3qaQKteo2GU2aNFPLP/aEnDRl4Fpfi+MxYjYVDFcPe
         Tb1gqhrFYUgttUmBkymHc3TO0Qgbt3/+901NoJxWEOWeb3L3uwXaCQPKzHR48kvW6HDq
         IhxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qctX6vRr;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id p23si1088855wma.1.2019.07.17.09.11.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jul 2019 09:11:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id 207so22757210wma.1
        for <clang-built-linux@googlegroups.com>; Wed, 17 Jul 2019 09:11:09 -0700 (PDT)
X-Received: by 2002:a05:600c:118a:: with SMTP id i10mr36624392wmf.162.1563379868501;
        Wed, 17 Jul 2019 09:11:08 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id v23sm21703608wmj.32.2019.07.17.09.11.07
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 17 Jul 2019 09:11:07 -0700 (PDT)
Date: Wed, 17 Jul 2019 09:11:06 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>, Jens Axboe <axboe@kernel.dk>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [block:io_uring-test 7/8] block/blk-mq.c:1966:14: warning:
 variable 'cookie' is used uninitialized whenever 'if' condition is false
Message-ID: <20190717161106.GA123012@archlinux-threadripper>
References: <201907171800.KlThQzSJ%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201907171800.KlThQzSJ%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qctX6vRr;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jul 17, 2019 at 06:43:02PM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Jens Axboe <axboe@kernel.dk>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/axboe/linux-block.git io_uring-test
> head:   7b6ee425fd7088bfb374369420ef4d8d2629bf4e
> commit: 4d5256f45b72bda3048c858e993c998513b0ceaa [7/8] blk-mq: allow REQ_NOWAIT to return an error inline
> config: arm64-defconfig (attached as .config)
> compiler: clang version 9.0.0 (git://gitmirror/llvm_project c23619b0c90056f9bd63f9b5d79caf5bf63618e8)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 4d5256f45b72bda3048c858e993c998513b0ceaa
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> block/blk-mq.c:1966:14: warning: variable 'cookie' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
>                    } else if (bio->bi_opf & REQ_NOWAIT) {
>                               ^~~~~~~~~~~~~~~~~~~~~~~~
>    block/blk-mq.c:1970:10: note: uninitialized use occurs here
>                    return cookie;
>                           ^~~~~~
>    block/blk-mq.c:1966:10: note: remove the 'if' if its condition is always true
>                    } else if (bio->bi_opf & REQ_NOWAIT) {
>                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    block/blk-mq.c:1942:17: note: initialize the variable 'cookie' to silence this warning
>            blk_qc_t cookie;
>                           ^
>                            = 0
>    1 warning generated.
> 
> vim +1966 block/blk-mq.c
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Hi Jens,

The 0day team has been running clang builds for us and sending the
results to our mailing list for triage and this one came up.

Are these the only two flags that bi_opf could be? If so, wouldn't it be
clearer to make the second else if just an else? If not, looks like
clang is right here and cookie might be uninitialized if neither of
these two if statements are true.

Hopefully this isn't seen as noise! Thanks,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190717161106.GA123012%40archlinux-threadripper.
