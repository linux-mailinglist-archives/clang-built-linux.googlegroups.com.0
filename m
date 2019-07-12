Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWMMUPUQKGQEVTKY3IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 2758967471
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 19:41:46 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id e8sf4590355wrw.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 10:41:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562953306; cv=pass;
        d=google.com; s=arc-20160816;
        b=VYWcBCW7DRIZUeAEaHt6HBolXdMtZwxi1GDIt8YT5uI5syxPHVjh2GQ6WgPgjmXbUU
         ZezSdPTA38UEZv2ZbMzv/5rjKKekevaDuiq7BFisiifA0DZ+Bi6eFDZFqiBInluqXCXs
         OzM2SDBdIrwpHUgBxgLnRwXNTylJUg/nkD+W5wv0xmqnzQmNo2IZIe8Gf48ssVdufaVg
         PZXn7WalmN48v860aWuawXJC558DSTFtLgf3A2B0pRi8ChRcZ4T9hh/jaRZKbmDgjVsr
         fEFDJrrfOG5O0I0I8oom1oxRrXNX5r51FSuoTM8jWg0kui/CFHcYLTTZFhhZTwgdHBty
         5g+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=QqTHjZYfGlB42ulJTmQM4FJxZoez+mNYTERnBbuZZP4=;
        b=cYY5sWukBTUfhHnqsimED/pou4pNdm2m6cFQc8VhM+zqSJIMoG1+sIc20saLJjaTQC
         HmFN4dxs1wkE46a9H5bn0HGuW/gdVKugE+JHwm5tcgZOieafGiQIrtjN3BrwjMN1rwAf
         TIVXLZYj8bEnlti3l/Tcxq2hgIoF73mnJTTZ0mZjICvCkoUYwThvBa4TxznR5/0FCwv0
         y9CfYfS3YLUKKaSBh49wRlfnvJ6yNGD9CwO+vczSoUDY7wYVJtzEQax48m6SUvsN56NR
         HPAhoptcFplqj2epF3W/ZQCShGtPV2/A+mn9jaerkx3Jwipy3vEUZfguFH4x0W6oJAJk
         D56A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BFUccy8i;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QqTHjZYfGlB42ulJTmQM4FJxZoez+mNYTERnBbuZZP4=;
        b=ZZkwzXonmgFl3b+RcUD5gr4mvYx5v8V74nY4MtcieNYcjQDC1bmpX3MCF5cukGHxw7
         jsirwkwf8dGSROctt6Eh3CGC6xm6TgDVgom9W3o14pgEMKg8vliZH/dqCh81FQQcP8Jo
         jHVhsY4cD/NsX0dGOkDJhwHemD3sdhHNH4kczAskuaY/rBnJakEjAdtHf0BAbOBphGdY
         EkepOs0cr5vAT+6fuZJQ/L5cxYYphKPNwM6iMC8tyeWeHxHVezOnHPBBJsgAmafJw5d1
         7kpnSy6Edxz/v4Yqj2SOCnEHiEwLXhU7v2CRTgPZ3N2kDKmeaMOvhydifvZihAsTkaBF
         0XFA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QqTHjZYfGlB42ulJTmQM4FJxZoez+mNYTERnBbuZZP4=;
        b=gwojFXjhgNbH4PpQtHtdOzUfoV9O5zl6HVLDigQYTP1Vx37600fuaKDzyzZda4T4qV
         ej54cyTa8BzU1mgmv3pBGyJ40Sj6dZ+pq7PxqPbgQzd9u8M6zSmG1OiiinNCNCk2k8ob
         e7cI1JKVBN3q7y+xZ3qedkZkRowG+k1ALokygLvsAiJxwyHSC12ySCKGCNtDkzjVcgA3
         t7Dkd6zV0U5mxd+9aEUYxyEeZOMOeBljuO62MVSCUiEW1NeE0SAmmqsrFgap6pBxlslK
         0Tu5aN4X7fpQT0tO50gHCr0ftZIy2JhtynWuaBhpAhhcSC1sD0n1YMh2bQ79xb6AEmfQ
         Wb0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QqTHjZYfGlB42ulJTmQM4FJxZoez+mNYTERnBbuZZP4=;
        b=AzS85He/HqmJjRE8orAbjL02I9DpEdNkmCFpQ+0fzADXNank3MEXko5MQqm/xtZalK
         nGQL3wrBykioOb+rlvM52umyAxEsTOgzfcLBaP8+wnvhKNakNqYUfNpfnEt4Zu4MeWhi
         ydui1f8Tf1KzzMu4N/SZmht1LBD01pCQ4dymhF7OKTuD1Zz3nCvV4Y90+CK3Wab9mobq
         3FFQ54/ufMY8prTRszWRcntWDUKR1XMRbZFV3W5uuE+LstwxH8BFlwCId+suEDgVm6lq
         mo051gbPlrblOBxcj5InLXz1D6NaoQVEKYx0owfbpchJwcxsgFQU2DVWW0dP/NiiQmf5
         C4OA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWVlcJyHT50ew7sqCGYMnxBHnqKcmZ9AwKfPTe/V/GB2LqVLmnx
	aqPz8TmZkDnrjXgq5AVXc+g=
X-Google-Smtp-Source: APXvYqxy4l1bj0cW6hYzJR10BXK3SdkQb3xa88rjGa/DNYxY72FWJPigwFc9ShGGYurvHWwFPce0ag==
X-Received: by 2002:adf:c613:: with SMTP id n19mr12686668wrg.109.1562953305895;
        Fri, 12 Jul 2019 10:41:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:5411:: with SMTP id i17ls4077506wmb.2.canary-gmail; Fri,
 12 Jul 2019 10:41:45 -0700 (PDT)
X-Received: by 2002:a1c:9e90:: with SMTP id h138mr11140250wme.67.1562953305479;
        Fri, 12 Jul 2019 10:41:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562953305; cv=none;
        d=google.com; s=arc-20160816;
        b=e4aurNEkrTxpVDcXDxEbtbrkWVip0cBftdC4kaDlhEZMEPCsO84oHnw91Cd3HvWE/9
         JBYpvwMNfDhppb8PEPtDhEsj5CQKrP+G7LoPt34QixPzxwlVWeIiHjeeyynTFn6qMvHp
         gzL1FDYS0/HyIxRqyZ74xqW5UbEHIBhvjAuVMe/UZGZXc5TfB0E05+Wr5yrsIeLQIvck
         VZMK2amAW0ips3Zpft6ywtaFIxjP48qJXCJ0S7Fbl/K8jIXRGzTVXwuUHXpCWsPCbTxl
         sfNb9ecKl8R2VApfNsaDg1BItY/k1b1Z5bGNefp0jmf+lfkK3/51v6d48++PkccCKGMw
         4POg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8Sk2j8JpiarrHH+mMpLn0vCmOZd+7aDxp+pTPPJ43ek=;
        b=Mvu+5162tnTgALqnr6K8Cf86t8GHlhuAsKUATe1y2CgnnnAvJsg1gTh0KosrjDhxF3
         DdZhUxIegpnjwL3LS7I8s3/YqKziKsoBW6s+ebdDwHAaG1ZOtvlIhtj3YAqRQOqUDdYo
         2ExEhSXe3jWjKjYV6dMaimhBE+WaOZePB0VWt4Z4SNJcbO/M7piZLWR4gBiUd36hDpbW
         LjjDxOZhGZdn8/C6AP1EZtYoZeexiYCQzy/DbYnbvXXrnjW1QqmRKRJeCFM8J2ARxyPr
         u6adK7JS4BkIcL6opldMRbPrfWVDwNnxyEaxpkc8KFXyvONNKEKssr7wZXBBqFa4Jgrv
         GvzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BFUccy8i;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b15si83172wmg.1.2019.07.12.10.41.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 10:41:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id j8so6705441wrj.9
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 10:41:45 -0700 (PDT)
X-Received: by 2002:a5d:4e06:: with SMTP id p6mr13041320wrt.336.1562953304940;
        Fri, 12 Jul 2019 10:41:44 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id y10sm6656269wmj.2.2019.07.12.10.41.43
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 12 Jul 2019 10:41:44 -0700 (PDT)
Date: Fri, 12 Jul 2019 10:41:42 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
	Jeremy Fitzhardinge <jeremy.fitzhardinge@citrix.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mike Rapoport <rppt@linux.ibm.com>, Petr Mladek <pmladek@suse.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] xen/trace: avoid clang warning on function pointers
Message-ID: <20190712174142.GB127917@archlinux-threadripper>
References: <20190712085908.4146364-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190712085908.4146364-1-arnd@arndb.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BFUccy8i;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Jul 12, 2019 at 10:58:48AM +0200, Arnd Bergmann wrote:
> clang-9 does not like the way that the is_signed_type() compares
> function pointers deep inside of the trace even macros:
> 
> In file included from arch/x86/xen/trace.c:21:
> In file included from include/trace/events/xen.h:475:
> In file included from include/trace/define_trace.h:102:
> In file included from include/trace/trace_events.h:467:
> include/trace/events/xen.h:69:7: error: ordered comparison of function pointers ('xen_mc_callback_fn_t' (aka 'void (*)(void *)') and 'xen_mc_callback_fn_t') [-Werror,-Wordered-compare-function-pointers]
>                     __field(xen_mc_callback_fn_t, fn)
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/trace/trace_events.h:415:29: note: expanded from macro '__field'
>  #define __field(type, item)     __field_ext(type, item, FILTER_OTHER)
>                                 ^
> include/trace/trace_events.h:401:6: note: expanded from macro '__field_ext'
>                                  is_signed_type(type), filter_type);    \
>                                  ^
> include/linux/trace_events.h:540:44: note: expanded from macro 'is_signed_type'
>  #define is_signed_type(type)    (((type)(-1)) < (type)1)
>                                               ^
> note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
> include/trace/trace_events.h:77:16: note: expanded from macro 'TRACE_EVENT'
>                              PARAMS(tstruct),                  \
>                              ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~
> include/linux/tracepoint.h:95:25: note: expanded from macro 'PARAMS'
>  #define PARAMS(args...) args
>                         ^
> include/trace/trace_events.h:455:2: note: expanded from macro 'DECLARE_EVENT_CLASS'
>         tstruct;                                                        \
>         ^~~~~~~
> 
> I guess the warning is reasonable in principle, though this seems to
> be the only instance we get in the entire kernel today.
> Shut up the warning by making it a void pointer in the exported
> structure.
> 
> Fixes: c796f213a693 ("xen/trace: add multicall tracing")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Nick suggested this as well, I think it's reasonable to work around it
in this one location since this is indeed the only instance of this
warning that I see in the kernel tree across all of my builds.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190712174142.GB127917%40archlinux-threadripper.
