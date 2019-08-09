Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZUMWTVAKGQE26RRNNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id F05658718F
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Aug 2019 07:36:38 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id u15sf4046015lfm.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 22:36:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565328998; cv=pass;
        d=google.com; s=arc-20160816;
        b=wRz7SfqDTP7/NXjQQuy1D108HCszRRa+b+Q1coMjMgmE/OZlxKkFPnvhUsfAiGTj8h
         YraOkCHBi6M3wvBgbfUMZl5SxQba+HtjWDNS3QD+DzaCLnnNhO7woEJ5Qn1gtRQb0K3x
         MBTiD8W0YqgQNA3YtFs+b9TcnhlfmwWzs43378R5a/0mEPG26rzhTDq/QKhNerp9wMib
         OgdRGuiGgYdiIqhGzL6YXFIqaoRLoU53B5nl8LVYrNNhqwxnx7+MPMVTGJLId0U/sfXU
         zx2gmwmIQApq26PZMhFvxm5C3cbuSFRvP9R6EL1DfhkfHlDHzMz0/rtCq1On5+PETG+R
         A1xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=mze5m0DFQuAu8UH/e9oNqvgo6CCjTT6rsNXNAku688U=;
        b=rkOd5gCcdKFr2yO/nrEHrewJpxjAOMrvSVhueU9AmjUpU1YbfGjmgO4BUOpCmuKpet
         iQODeJ5SrEsw2x4HfSbokNjYwW9vy5vcbgUcKrfUJGkCRJx6GSDlOzKLtzMLlL2EmZP8
         dNeKGm4HuLuVidf0HJInQxPKJrq72OFMae2j/PaxQCjXgHmd2ixshpxG9hURKvIPqmw2
         DNDKzaCZKvSIfnHw0nhlcJeeilufYzLViTdREiypPKAFI3xGrTeDTW7Zsmqc2nwBBZRM
         JytByI5bga6rsPkxc1JU5YDNAi/VSRd2k3M/6yPnnLxaQXRYj6mWuKwX/XFBoc9NI9BH
         whDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dDkUi3ua;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mze5m0DFQuAu8UH/e9oNqvgo6CCjTT6rsNXNAku688U=;
        b=QPla6kyG3ytC/hJPN05CHB9Oatzbdb+MxPVStFohIKkwiERNIzZEuioN0HQd+MrOsy
         CKWWfvr6TqpSDOBgfmh4See7pPTLWJdd7rtdCz2yHurqajPossax7nrCzlsfkpA9DYLI
         20fa0Elw2PiuS79kCwY2Q/698kXZK/zkKYfHW0qlUGwf2h4bWPKuxp3Kx1IqKAMSe/Tz
         Ha8WPZyL3DZaT6hLpnkUeSdQAlGWBte/5PqD0CJBeFhAvZOY78uce1dWAsPV7cW2YXiv
         7DEzekC6QD9yGalm4t+i94InI1Yzdl1sOXnCGMh6nRNRVJHyeQvGK2kxiPxwVyAYFw/T
         RnGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mze5m0DFQuAu8UH/e9oNqvgo6CCjTT6rsNXNAku688U=;
        b=oEvioip7CjG+VD7ariRZGBxRVuiXiaqn0N2ozm2nxFJOZ64wPt//73yah7WMLLucn3
         37GoCPihx4sAsTHTxvyrtJs/WIgzDXNvxi83jCJlJVpw6FwSXp3P5nz8B2eM98/wsk9l
         gs0sviZd2FFJ58u5CyZJJGTEcfuvOrT6Tztf+cpL/4iqa4N2sO8FygzZQmTOQhjkjaLf
         wkIL7dfbiXh277p5+QzbW+2wDlkMry9NhYjFILuVA7mULvSLR3ItpV5V5NCmxGbAbW14
         Pl8zMya0uraGPKnM6rWSIwjce9qcrWlZr5094isYjP9aluC97DnLRR0HcUF0mGGvqTj/
         Pz3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mze5m0DFQuAu8UH/e9oNqvgo6CCjTT6rsNXNAku688U=;
        b=pkA8lMOqrcL16qvoBhRXjm81RrdZcFdlmu0iGReLQnM7cYUzQGsnNKze0A5jrHevP5
         dlvEycIJu+8qtl63KJmaeVDLemIXrCPlN7141dbXaOKGqGJEiyF0FKLLdril0I4qxdS8
         gGuaDcQwI48WsMYMRkqO/J0uD9bWbQcg9DHlg2WUsCnbbv/BN4ThmBY/mRHRGk/8BO0Y
         vGKAgRrZvAQ2GARJGC+yIGUCICkb5MfsasQEz03HyfkEC8+Mp74aNY66XfJelpc4ZHH7
         qcDXHs7/JXi4GNkdfHXGVLedrlxzLSFdDHF3lSbr3m1XwD9F9hQSclPQ7RpGpdRpWhuc
         DP4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXl22Ym3dfBYm4QLqCxzNNeN42o9lDCeeoWLCPD/ST7J9rBqnXa
	cC1jaqLtRR5L1Pq64BZEGWA=
X-Google-Smtp-Source: APXvYqzKkhSRmyCVj3mmZw+G48My4hAs8lR9pIMDAtPc8WZMpRxv3l6Lr21UJDJ6vS0eNuupGJ+4uA==
X-Received: by 2002:a2e:5c09:: with SMTP id q9mr10538827ljb.120.1565328998530;
        Thu, 08 Aug 2019 22:36:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9153:: with SMTP id q19ls10928638ljg.13.gmail; Thu, 08
 Aug 2019 22:36:38 -0700 (PDT)
X-Received: by 2002:a2e:854d:: with SMTP id u13mr10588581ljj.236.1565328998051;
        Thu, 08 Aug 2019 22:36:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565328998; cv=none;
        d=google.com; s=arc-20160816;
        b=h3PU5kLakqKD6w94bvkIS1ZDEAHN9A/bFQb6AaPxFxOVRItkSrnsv50m1TTsFSNYLw
         i5x1No01uH2yRb8IbPDsrP2Pumhcter1kqdFZNkOg1tvOWcVFUzolnA3FUM3zGVTL3gq
         Oj8WnM+10HnsdeZZT00t9NfahZ6QDFipCOR1nc1HgTCk8pTeJdhK8wZKb6AYskhdLyWV
         /6tu3VzHxoVsLaoi8zXATD5r9dgQdHqox4J6umjO4bukO1x4lPnLQY7tuitnuuKssl04
         zdBkfGZ+kLF1fT1uGM0Valg0762C4FAoxkSdXuZR8rMin02BCk5XY2cMeJQLTNogJgSU
         poFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=EW6o3Rx1FCAyybVRH6VC7s2BSAjKLN7pLuKyi4HDGTw=;
        b=cDBAbWCKHsGLTE1rWwTZ4RIkOov9cxLFX299vD3pkSJhvEBMFEKq3iSnie3sYeV9Cb
         MOT2Svm4iXeSXRDkxL1MuSHtDhDZvE7zT6+ZJXKlab4K9SRAdFLFACtqPweZdMOluu8J
         64ECWvEau4O/JdKs3DgRF46Q13danD4ZgqzR+fTg+fxUeP0d2asCLziPGAuPVCbNo4xd
         MIGF51wKSXSmYvezHQPWYsv8r/6CA6tPLlXNPMSP01K6pVpTYW2i9r1j5p4Jd+q4yHuN
         8ACZ3o59uZkTM0OXWVJ4SNaGvisjVfaOa0wgFsDRjbik8M/tuQwowADJMXgjWqS0jrho
         5HQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dDkUi3ua;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q25si837916lfm.4.2019.08.08.22.36.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Aug 2019 22:36:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id r1so96999377wrl.7
        for <clang-built-linux@googlegroups.com>; Thu, 08 Aug 2019 22:36:38 -0700 (PDT)
X-Received: by 2002:adf:e2c7:: with SMTP id d7mr10403061wrj.68.1565328997032;
        Thu, 08 Aug 2019 22:36:37 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id z2sm9481579wrt.17.2019.08.08.22.36.35
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 22:36:36 -0700 (PDT)
Date: Thu, 8 Aug 2019 22:36:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Pablo Neira Ayuso <pablo@netfilter.org>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH net 2/2,v3] netfilter: nf_tables: map basechain priority
 to hardware priority
Message-ID: <20190809053634.GB49835@archlinux-threadripper>
References: <201908091122.bgEsCgrB%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908091122.bgEsCgrB%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dDkUi3ua;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Aug 09, 2019 at 11:32:29AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> In-Reply-To: <20190801112817.24976-3-pablo@netfilter.org>
> References: <20190801112817.24976-3-pablo@netfilter.org>
> TO: Pablo Neira Ayuso <pablo@netfilter.org>
> CC: netfilter-devel@vger.kernel.org, davem@davemloft.net, netdev@vger.kernel.org, jakub.kicinski@netronome.com, marcelo.leitner@gmail.com, jiri@resnulli.us, wenxu@ucloud.cn, saeedm@mellanox.com, paulb@mellanox.com, gerlitz.or@gmail.com
> CC: davem@davemloft.net, netdev@vger.kernel.org, jakub.kicinski@netronome.com, marcelo.leitner@gmail.com, jiri@resnulli.us, wenxu@ucloud.cn, saeedm@mellanox.com, paulb@mellanox.com, gerlitz.or@gmail.com
> 
> Hi Pablo,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on net/master]
> 
> url:    https://github.com/0day-ci/linux/commits/Pablo-Neira-Ayuso/netfilter-nf_tables-map-basechain-priority-to-hardware-priority/20190804-152317
> config: x86_64-rhel-7.6 (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> net/netfilter/nf_tables_offload.c:134:39: warning: implicit conversion from 'short' to 'signed char' changes value from -32768 to 0 [-Wconstant-conversion]
>            return basechain->ops.priority + abs(SHRT_MIN);
>                                             ~~~~^~~~~~~~~
>    include/linux/limits.h:10:19: note: expanded from macro 'SHRT_MIN'
>    #define SHRT_MIN        ((short)(-SHRT_MAX - 1))
>                             ^
>    include/linux/kernel.h:260:21: note: expanded from macro 'abs'
>                    __abs_choose_expr(x, char,                              \
>                    ~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/kernel.h:269:24: note: expanded from macro '__abs_choose_expr'
>            ({ signed type __x = (x); __x < 0 ? -__x : __x; }), other)
>                           ~~~    ^
>    note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/linux/kernel.h:269:54: note: expanded from macro '__abs_choose_expr'
>            ({ signed type __x = (x); __x < 0 ? -__x : __x; }), other)
>                                                                ^~~~~
>    include/linux/kernel.h:269:54: note: expanded from macro '__abs_choose_expr'
>            ({ signed type __x = (x); __x < 0 ? -__x : __x; }), other)
>                                                                ^~~~~
>    include/linux/kernel.h:269:54: note: expanded from macro '__abs_choose_expr'
>            ({ signed type __x = (x); __x < 0 ? -__x : __x; }), other)
>                                                                ^~~~~
> >> net/netfilter/nf_tables_offload.c:134:39: warning: implicit conversion from 'short' to 'signed char' changes value from -32768 to 0 [-Wconstant-conversion]
>            return basechain->ops.priority + abs(SHRT_MIN);
>                                             ~~~~^~~~~~~~~
>    include/linux/limits.h:10:19: note: expanded from macro 'SHRT_MIN'
>    #define SHRT_MIN        ((short)(-SHRT_MAX - 1))
>                             ^
>    include/linux/kernel.h:263:32: note: expanded from macro 'abs'
>                            (char)({ signed char __x = (x); __x<0?-__x:__x; }), \
>                            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/kernel.h:269:54: note: expanded from macro '__abs_choose_expr'
>            ({ signed type __x = (x); __x < 0 ? -__x : __x; }), other)
>                                                                ^~~~~
>    note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
>    include/linux/kernel.h:269:54: note: expanded from macro '__abs_choose_expr'
>            ({ signed type __x = (x); __x < 0 ? -__x : __x; }), other)
>                                                                ^~~~~
>    include/linux/kernel.h:269:54: note: expanded from macro '__abs_choose_expr'
>            ({ signed type __x = (x); __x < 0 ? -__x : __x; }), other)
>                                                                ^~~~~
>    include/linux/kernel.h:269:54: note: expanded from macro '__abs_choose_expr'
>            ({ signed type __x = (x); __x < 0 ? -__x : __x; }), other)
>                                                                ^~~~~
>    2 warnings generated.
> 
> vim +134 net/netfilter/nf_tables_offload.c
> 
>    127	
>    128	u32 nft_chain_offload_priority(struct nft_base_chain *basechain)
>    129	{
>    130		if (basechain->ops.priority < SHRT_MIN ||
>    131		    basechain->ops.priority > SHRT_MAX)
>    132			return 0;
>    133	
>  > 134		return basechain->ops.priority + abs(SHRT_MIN);
>    135	}
>    136	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Hi Pablo,

The 0day team has been running clang builds for us to help catch
warnings/regressions early and this warning popped up.

I suppose one way to fix this is to use SHRT_MAX + 1, as I think that
might be a little bit clearer? Is there a reason that the priority
range isn't just 0 to 65535 instead of -32767 to 32767?

Thanks for looking into this!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190809053634.GB49835%40archlinux-threadripper.
