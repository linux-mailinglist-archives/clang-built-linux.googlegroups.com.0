Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBREFQ72QKGQEINNUXTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 291B71B60F9
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 18:31:03 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id c190sf5701337pfc.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 09:31:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587659460; cv=pass;
        d=google.com; s=arc-20160816;
        b=RqfjVVfsj9ejXP6ixGYz/VJPKCBZEpJVuQXmLrNi69kNnx6Lf91xyXIjzs8zwnMZJS
         3zClkybLUusnozScSmqf7OkufIjYwgMF+qaDM7lgoad1jPRRlkctM9qU1l55tuXxBt0F
         9sVFycIcb9Hfv+1PvBsfL9Jz6jvRm1wSA07jawJARsa4UrzEBbYWvaCB4oj2SJm/J4oW
         im5IDZEf5gpBCst/CiXDNJxcaXHxQEsZlrfeecF8ZwkFnAGRvbxhDNZ6Q/UM/0iNOTiK
         sZgqjPY5RMpBFSrwfeUSMjJ0j/nrUpHc66m9FmIu3upaP28KvFHP3pGPzkEJ4tkEEyxd
         75gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=8jHWE0l7j5pZUCVhZBRr5bhQZdTPxSSVa39D3dceyZ4=;
        b=SKt4/40Y14Ca+7e76Mt+leBioLF6b+CGnHJOurvpgtk7JUPIyywl0pgBWrMdxrj8yo
         e7Ewx1WDev6ZdvniRVHYTHxnnq1ZrXgmI3Mc6IRKNtV2TK8kM83AeR0JeUpmW9+x94sb
         JoXtBVQSf0vBsHDzd6fu/aYjsptKGUMozvCtWzG0CHTMVQXV7TNyYRDHUaAycwsi/HSM
         b7dr+OyGnPDK9O+KWWiMbMKq7XUKM+KeOrqeZzbsC1enFudAn2kteWCGbeozwsj0pdW0
         TgVrY8ctnfwUS8S8VjCx9BTDHDyuSlxtVN+uhkL4miNyZ9UesioniiS9Ea+tJQvJYhZ2
         DXgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=meV1X0Fj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8jHWE0l7j5pZUCVhZBRr5bhQZdTPxSSVa39D3dceyZ4=;
        b=ANOQMfoWHtEEAgV3RytaP6xPvQc3XiFQstahe4Ru7xrh5kKAHh84XYUlv45HMlKuP5
         b4pleHDImwFMJpnCeoaSJWuuT1FRWt6wVbCKB5i9VJ+Q8oSdf3ZuVottHDlwSKXI1o1o
         bKoG+lqrlyaOf+SdQgdOsPM6Tri+8nLyH1GtGnCjjO5KeoY0+b0E+8pP94IgOKWlAnO7
         tDmRk7eTrdzUQTZmBfLsUpexEmbkXUfxAdBCmP1dd4slXZHzV1gjpjOT5mjj/QdMr9MT
         aMn3FNe1FhbKgZxT/MzHKs+AjgrPa+YwVCGoVoWbiVuKKHq7Gs0QWQClLZD++MrYzVV6
         k3WQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8jHWE0l7j5pZUCVhZBRr5bhQZdTPxSSVa39D3dceyZ4=;
        b=By7mEOrh2s0UOvq1hsyp6R5KUfrO20OxloY939jztCtqANZQhbDEozwVqDcqEsEtZn
         9egbFVsOzEZJx3RUNS1hVOFzXzAokjNzpZAaiQ3T9cdAmRBF5EMzCjewpxBt/1JCMYbI
         8aluxR3xGcsvtYaH7+Nqk4oH+OaNvOyXWKPe+ZpifXE9wqm8Nz6lv/9S+fEIZIPOVp02
         zhwBxQZqt41MSLgd+iauFtQWJomN88hQQCk5cmqvJfx0gu9r+fTjDEbugbCHwGpWQel3
         3ejgm++Gg0vGDV2h3h52k1gV4JHkUM6mqBV3vbC5UNAJxz7Y/YhJZO4uwH8617fjOmwC
         PNiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8jHWE0l7j5pZUCVhZBRr5bhQZdTPxSSVa39D3dceyZ4=;
        b=SKWZQSqo00QBlYJ3p9hFAOV24kRLSr+24qksIb4T2mTaEbc60Gzyw4JqgEpFh/benm
         HvCCjQESQcd7kvTddAtRbaS4tm/pn2Rk259CUNAGD9P1xxr9r8/xiFlg5i2IW42Gn2yl
         kYGtb2J/Tdo8nYuZvsDrx3pRdP4ipXisptYnvm7g7F/osRuIEx/m2zu3mGNvWUuTC0rq
         wR/JITiuzb9HIamjAWBF9yZxy5fcurwaukLNArGT591jM2fk6jlLiJdWQcY1d+7SjkQi
         GIAsadwBI++Jv6TjPk0qOb89veN09xWkl3oVcUDmQGc1LffB1iL+tQ3zrohllXDit1/w
         OqEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZbd8dVEVOFXnkR3FRPf29DzSr63D9cg+T/4boTtjs1B9qdGHpW
	9/X/XSFCXH1aLMANJj7lX5Q=
X-Google-Smtp-Source: APiQypKWLZqDvADPyj0ccVhzgothPnnwGe97y7uUAiWCt27ufS9cx5D07ZaNXOSgrTZtuGRDweZoWg==
X-Received: by 2002:aa7:9302:: with SMTP id 2mr4495715pfj.256.1587659460472;
        Thu, 23 Apr 2020 09:31:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8488:: with SMTP id c8ls3504219plo.8.gmail; Thu, 23
 Apr 2020 09:31:00 -0700 (PDT)
X-Received: by 2002:a17:90a:1954:: with SMTP id 20mr1628242pjh.106.1587659459982;
        Thu, 23 Apr 2020 09:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587659459; cv=none;
        d=google.com; s=arc-20160816;
        b=b1Se0Nvant7XFJ6lPE59JYYNuoWUhOw17qOkbW6xNjcNqQaxUAmR9UMLpHoIi1lDXS
         BVQvGEaHm1z5O7o4lAendUSx2dJXNUqMOWYOu7C8l6Jt3BCm7F++6LGiLCFDsWZclzm5
         0enu30/whWUD8n9x3FXB6H0Tg7oqwpkpVHkCsHK02Tqx5f8ViDgyBpkcwdIJKhTSccUn
         JGnwV8ZD8HlE+QDq67IDIKAjWOd6V7FywQOS4YX6lU8kdv4+w2lxo3vn9HxwdFfsms7Z
         tFbzD+WPBikwlUooxkKA5g01eh4YAYjh4bIToMHNtca9rdvxxp9eLXQhRSg+K6QNC0on
         rGJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9nc4huYVzVXQa2iHIqmj93nir6SYe8DbxmfBtv9Rk6Y=;
        b=pWZcWYYl6RogapaTwfe05PWFLXBmI6SYcatCLyjswlYNQ+EUub4seoB6S+jigbxNpd
         OyHK3DcdRiJ69EEqtLta2sE1C/O5jgKYCpsvNcX8e+OiLVt6VT3KmxOKYxVSIVl0HbOD
         XhXpuPkyCiITszAVIkvqyj/yBHT9WAyYRRjwet9z1KLXHG7/r5obAzRp95DBINaIcNaQ
         NYCOYLw/rQOeJTpFmkdgAy1ROzxGwYHdiWFyToV0te2IizFqnJzA6EfbZE+pJ0KRpQvw
         OVyf5hWrbYdJyx0iS2EGbujGadD+YY4N14tlTPqizf/bB4WCTsWAgX1oSKwK+p1nFBpd
         HSeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=meV1X0Fj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id x3si251327pjt.1.2020.04.23.09.30.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 09:30:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id j4so7084355otr.11
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 09:30:59 -0700 (PDT)
X-Received: by 2002:a9d:7c1:: with SMTP id 59mr3958647oto.69.1587659459636;
        Thu, 23 Apr 2020 09:30:59 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y2sm783408ook.29.2020.04.23.09.30.58
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 Apr 2020 09:30:58 -0700 (PDT)
Date: Thu, 23 Apr 2020 09:30:57 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: drivers/usb/gadget/udc/s3c2410_udc.c:255:11: warning: comparison
 of address of 'ep->queue' equal to a null pointer is always false
Message-ID: <20200423163057.GA43481@ubuntu-s3-xlarge-x86>
References: <202004231508.Yo0J11ax%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202004231508.Yo0J11ax%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=meV1X0Fj;       spf=pass
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

On Thu, Apr 23, 2020 at 03:02:27PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   c578ddb39e565139897124e74e5a43e56538cb33
> commit: afe956c577b2d5a3d9834e4424587c1ebcf90c4c kbuild: Enable -Wtautological-compare
> date:   2 weeks ago
> config: arm-tct_hammer_defconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2de52422acf04662b45599f77c14ce1b2cec2b81)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         git checkout afe956c577b2d5a3d9834e4424587c1ebcf90c4c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/usb/gadget/udc/s3c2410_udc.c:255:11: warning: comparison of address of 'ep->queue' equal to a null pointer is always false [-Wtautological-pointer-compare]
>            if (&ep->queue == NULL)
>                 ~~~~^~~~~    ~~~~
>    1 warning generated.

Thank you, patch sent:

https://lore.kernel.org/lkml/20200423162923.10886-1-natechancellor@gmail.com/

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200423163057.GA43481%40ubuntu-s3-xlarge-x86.
