Return-Path: <clang-built-linux+bncBCO4HLFLUAOBBWX2S6EQMGQE4UGS5AA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A573F7109
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 10:20:44 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id p7-20020a170902b087b029012c2879a885sf607307plr.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 01:20:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629879642; cv=pass;
        d=google.com; s=arc-20160816;
        b=m8Sa+4q3tT08TwOw/RqqzQBOLO41U/Fl9+FxhLltUaeWrI8VMfh1GZDnT3BPxbGIPP
         lCg48G769yIxgh8PQLs+vHOlr/xxghU2gcrSVYWQNJ/Fb8DGV0nqwGVCrDccmaYx/Bo8
         RHNjpVwi1AzM3wKbiCxca7My/+06DFXtyMbz4lUB0il7g8+fcwMwH2KIzjFxXdNlpNJt
         BaBn0EeUEDXqCq1JQTPxP25fUJVwmNO804T5/43R0xHw6kR4Ki2M75wtAEWZKX+Rb1sO
         yIwkBRb1iW3EsBm2mQykFeDpvyQamR0M9LEQgM8cGFGZ/PB2UjTUE+dqzBK7D4VT6nED
         Ozgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kFNShcPzBNhOWJNj4qANl3/qQhJ2mbstAyiQ6f8Bu4g=;
        b=OYySWm79VNiG/V9i0RE/748t5iR4Drk/IgGvFnoL13Lzeaklb8Zvh7o5+F5drFltmE
         APBeGF6oZ8YFytnWU/MTThBk7XAjqDybxU0Pro93hko+jJBrQ67l6P1w5yJnAo3FkF6u
         gy8SGovidjp36Ja2kmhnhWDMLgRpmIxjUH2YelXHkNlIINSHvarsGQUpQvoMWl77W5rL
         1FZHGMWuiDLgU+d60AfsROGZBxOgI4wyZIOEc9YJ8JJwGpO0xIAXHcxdBHwt0vDfKyRx
         Kx+KOwLlAxh+JaV7Yo0HhzVvG1HftNiwjk+4J2F0ADDMiDl7dopz9cSRfUTvWPbQnBTb
         0gvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=zopw=nq=ubuntu.com=christian.brauner@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=zopW=NQ=ubuntu.com=christian.brauner@kernel.org"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kFNShcPzBNhOWJNj4qANl3/qQhJ2mbstAyiQ6f8Bu4g=;
        b=DtAQCfOvjD5abON+ydyzXwEtv1RpIx4qHtvAqwFQan7n4hnchPO64JwODiW0wG+KMA
         n/vxe3lS1TjTetlmTfuasufKQ2AmoW5qiBjvQdDn4eUB+XqMXCPQxS7V8sn/CRG+4Dsn
         DgUjvDmdboK+mu0EUelB3jX9mHRSn2eiFVrCpKYcq+CY70AM4h841RXhcp8cY+sHlo5m
         BGyuVzpW+a6aDx7M1ztGfY4/7t5P8RuSkg5ZG25t0V4aGv50RsF1cCfLtBuxXsZfA8vV
         b28Z9kYPlNfNNhyrFZJR1hzxOE1RBp89T00itFugjWsprYLn56GuKjXr2GcxV39g3uwV
         fqyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kFNShcPzBNhOWJNj4qANl3/qQhJ2mbstAyiQ6f8Bu4g=;
        b=EXrUO67LgaYtrtiYmbfAgUMhQxcw2Jw8UKZQ/GswWMH8uVbify0fLaC9nXnne7aeiy
         bBDKFieDqesZiyJfU86dfXCaqODwG0o9IJYPZFvIATu+CYjg4D8HK9qdhOBbN1gMRPWg
         8fHY9z6APsr8JBq0K3D2Ht9JNk/ln986OZ0roQfbyELqQhswEFaRg8MwzG6TvxQCCfN8
         PznNOr11nKpkBH7qscrXPpXW2Fl/5or962PDGWsmWGHc4CqGaI6PEeM9RRvvzDreWm69
         ZwKIt9i2AH6NGJbQxeA4HbGIjLbr85b7xTiQ91Wrgs/X54wn4toK39abXw2oAOcBwckI
         y8Sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vpkKh8SwTSEQaBhZgya539yVsJg/tn9053EBnsBe3mb269HCI
	mXpY1RqMbKdYnZX0ypnJAuE=
X-Google-Smtp-Source: ABdhPJwajFVgeic3rT384kkDIAyvoEcmBawYYl9pwqMp9V/GF599HwNOfbgsMbyZcQeH6eI9WrH+ng==
X-Received: by 2002:a17:90a:7345:: with SMTP id j5mr9210297pjs.48.1629879642805;
        Wed, 25 Aug 2021 01:20:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4b12:: with SMTP id lx18ls783970pjb.3.gmail; Wed, 25
 Aug 2021 01:20:42 -0700 (PDT)
X-Received: by 2002:a17:90a:4805:: with SMTP id a5mr9462767pjh.139.1629879642247;
        Wed, 25 Aug 2021 01:20:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629879642; cv=none;
        d=google.com; s=arc-20160816;
        b=s0bGO4IjgTVp1KHbrdqkBbUubaZGsXS96ED4j9JzHQ48JTSB0w09tsRBto+S6+/M2x
         GKetF+Qka5gxLI1X8jxUmBc5mlWqXQf5bmGetg7j9c1y48zgJFalQfymctQweZAW3BXj
         +qMF4Es0MCbftPMRuAiNFRmcXdnSYzq2wWkSasNUdqTaeeVq18ZQzSwsZGcZuN2fR70Z
         Y0YYHv12LSw7t3lS+ZT9zHspU4hsK5NsMUf2fbFU63mm+uJHkscsxd7H5y61gMWtBUuJ
         s5DbJHWAEvXJxysILJuWmVefUIUTcFJeLQF5ccay/OxNOD4HWgUSOG/dyXuZ2/a0HMIA
         aFbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=SX/imUvITeBZPgTMJ22hA2lECMQNEDUpERvBFPfSAVY=;
        b=MBU7icwoHox3J4uifTtmZJhoWyTXXRZz9OZqWBXr3BmCTrp/h4z/1RomeAx5j9uCtK
         sp23ovj6oC6PlO385QnaxuXA47guUQIcWviCNCfYtCK4oiLbu7EDCVoBEe58bAWVeGeZ
         vJ5u7POBhjqUIZgH0DR522N+cdofow1q5s86lt5XqSroT9oyRGUC0hWHFiwRBnya15io
         UoTNaFuCnirvDAFg3Ts2VaENZJhEBGA8Wcl8T+i2c/03g2xHJYWtRDCH04ZPjo7jGIjp
         WYIndlbM2i3yQjp2LUZg0cKdCsD/MBZrmkOvMQQprbvjPoy5Gaqsx7J8AgOlSyhVViGR
         cEKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=zopw=nq=ubuntu.com=christian.brauner@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=zopW=NQ=ubuntu.com=christian.brauner@kernel.org"
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k4si365401pjt.3.2021.08.25.01.20.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 01:20:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=zopw=nq=ubuntu.com=christian.brauner@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2B8F3610F7;
	Wed, 25 Aug 2021 08:20:39 +0000 (UTC)
Date: Wed, 25 Aug 2021 10:20:37 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: kernel test robot <lkp@intel.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, Namjae Jeon <namjae.jeon@samsung.com>,
	Steve French <stfrench@microsoft.com>
Subject: Re: [smfrench-smb3-kernel:pr/65 143/143] fs/ksmbd/smb2pdu.c:5640:6:
 warning: variable 'user_ns' is used uninitialized whenever 'if' condition is
 true
Message-ID: <20210825082037.iuy5gndi4n2uyep7@wittgenstein>
References: <202108251550.SXFHPzdJ-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108251550.SXFHPzdJ-lkp@intel.com>
X-Original-Sender: christian.brauner@ubuntu.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=zopw=nq=ubuntu.com=christian.brauner@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=zopW=NQ=ubuntu.com=christian.brauner@kernel.org"
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

On Wed, Aug 25, 2021 at 03:14:01PM +0800, kernel test robot wrote:
> tree:   git://github.com/smfrench/smb3-kernel.git pr/65
> head:   4b499755e1024f97e75411920a404b357af6e153
> commit: 4b499755e1024f97e75411920a404b357af6e153 [143/143] ksmbd: fix lookup on idmapped mounts
> config: hexagon-randconfig-r041-20210824 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project d26000e4cc2bc65e207a84fa26cb6e374d60aa12)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/smfrench/smb3-kernel/commit/4b499755e1024f97e75411920a404b357af6e153
>         git remote add smfrench-smb3-kernel git://github.com/smfrench/smb3-kernel.git
>         git fetch --no-tags smfrench-smb3-kernel pr/65
>         git checkout 4b499755e1024f97e75411920a404b357af6e153
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=hexagon 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

Thanks for the report but this is outdated and requires a patch that
sits in David Sterba's for-next tree. So this is safe to ignore.
Feels like this probably should only go to the authors, kbuild-all and
clang-built-linux lists similar to what the intel built bot does.
Otherwise this generates a lot of unneeded noise. Just my 2 cents.

Christian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210825082037.iuy5gndi4n2uyep7%40wittgenstein.
