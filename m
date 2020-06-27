Return-Path: <clang-built-linux+bncBCU77JVZ7MCBBUOC333QKGQEIRMRWAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id A38B320C3C0
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 21:43:13 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id f68sf6928854wmf.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 12:43:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593286993; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ug08TUDqsCSyYcoQekOrU2ZrRqCAYnfkxDHj7LHpAI9MnJR9fziY7N5xoMEIuDGnR1
         RXlKKRX9M17sbWZJmpSJc8uMfhHryClCVIcawDdMCPNuoU3kWGB6u0HZojl24yXcMdnz
         CxyVexlQfwjCgsjM3To1n/GOTQwNrqkos6ip2eO2Q7XU21RdJiUdR4JNghUK7+dpyzvQ
         Wppd/nI8y1RaEfYF58+v3hR26JmKd+3kXPx5jtX07hzUtPSBHdekS6iaQkJDOL39+8hm
         AABuFNaHKg6Tf7vKpD7F7WVpQ+pkw9DUhQOC5lJLLZrdFytJASt1F+MpVhDp1BZfTedq
         RH4g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=wi3reoLZYtUq13QEoInF0yEHJIq2RHgnU4Qq3IHHkz0=;
        b=tye+BxooAInIXwxugC2cGVVZpDo/qiYK2qRNllu529EBOYI1MlUKI8/WS22k1cK+rc
         fi5pQskxEGbPYun3KOGB3F6FEizmlufi/ap45Nn76O34JTrFH5UIvzmSIybXPpDL5jcQ
         +B0UAeYK6C3gLTeifTuyJdjfk9E7+9OOSpam5cFiBsOmnUgOlyVw10bjnIYWMOYpj3qi
         NWe7WRErhL9Yws4jRgIABEQfBtXgrlPYmHnqXd0Fsp7ispYhrPTqYGQEjcc7eefzaqDH
         DLjRJ3VcFgv5CM9H55Gj5Rk59glqOLWDu4zeMc2UwcoAX4U9AMwItYJyWAU/3x+8/7xX
         SYdg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rc16qhzT;
       spf=pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=olteanv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wi3reoLZYtUq13QEoInF0yEHJIq2RHgnU4Qq3IHHkz0=;
        b=Dqe058JnYPEOb02Ez+4eTF6iWfzl5Aavctx3fDy1wr5Ax02+BioEjymw8YLUuPfPmJ
         lYfOUs2Do+GmCUmWtI/n/VgnS7Ta5Mmcm/J8WQ3QqQQfcL8IzXtA9t203vv5w3ui4t8v
         XIEb+bsDlEhcg50cpnm2LNUj3nyX89sX3hk14mTObr74JKR6kpAe7wC36s6onbiTOjiI
         khQGpBtUjQVaLqKUVLvqwgcjSKN/8yxrhRJz6woN5lmf3hzFEU7MySVqF9CMb6KwvMa4
         rs8OViunE4aDcj+JXwD43VpA39/Q2x4kloXKNO+jsJrWLXcPONS6rMybOyjWxf1rYQ4G
         BJNA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wi3reoLZYtUq13QEoInF0yEHJIq2RHgnU4Qq3IHHkz0=;
        b=Rrv4743PLrbrK8XFJLlI+NfBHVzJnLMeCyiHKwameF0mcu/Lzw2AB0kcPCS5mg2kCs
         6AHpEHT90W0NbnE8KtKrO8v+WN3m3iiMLB9t+vCRQIy+9yk0VSYkSVwjsliKOQFQTk2h
         88Wtj/64cB+2VelZ0CIb9dNNWHcZJuREaDXUP5q+/kPvba6TjouuJTPinO4TkLM7n1k1
         9JR4xD0tcQlgoYWOOnLrkQZgAkb4n1cLCfb1B2lbsHFj0z43z/KecodaX1C1GI8wCWfI
         Tw9JH5V6SGzYDLNj9sjclSAGcSrv2rsNKhb2mnxbVLWBYXiSNvqQOASZkFeznmHkW1gW
         YvIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wi3reoLZYtUq13QEoInF0yEHJIq2RHgnU4Qq3IHHkz0=;
        b=I0I0zVQ6G2TmXzmSW8o6MfNllyiNOK2iXrIrjOp5HzMMXtv0g4J4EtGQ9KnJkrmmk7
         2/gcSQKf0m99QsWu7eqkBlMhJbRtnuRuWrEwJGyzejZKc0xLSfWlbB0ROqkxWLrODAbz
         cGodftC78hhcmyUggo8N7nqtKra8wGKzHNEGPYaB7l/QDGD6yc4taDarE9t6f6wh/OH0
         L3pgIiC4EqlFYb1hMaV6eo4TRnPcxXiOOhbNY5drkJXDc8jL3lJbXbWDRez3EDlcEVea
         zovCqwHCaTqXq7V68PET37C4q3jgRBz59VOY8vp2kjNjbM0Lu9uPUOp6fVhpOkFSth+2
         F5GQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ycJYxNo+/7p8CWg0IQgBQqpLlY7JGfEIzmHktYqAy6EXUctxB
	DAdUEkcHUnypQPij70R5GxU=
X-Google-Smtp-Source: ABdhPJynFzbYwBKqcSfbquo3E9XyWHV3G9uVMVc65SriRZ3PPZDJlScZKRRQseT8KUrOWTF1Loyb1w==
X-Received: by 2002:a1c:3c82:: with SMTP id j124mr10056250wma.155.1593286993353;
        Sat, 27 Jun 2020 12:43:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f58d:: with SMTP id f13ls2627956wro.1.gmail; Sat, 27 Jun
 2020 12:43:12 -0700 (PDT)
X-Received: by 2002:adf:f445:: with SMTP id f5mr9952790wrp.339.1593286992952;
        Sat, 27 Jun 2020 12:43:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593286992; cv=none;
        d=google.com; s=arc-20160816;
        b=XLMZj0j4aAyWtWU6x67AbdP2aBYEa1WbI+FQ4hKmIX6H5oz/3rJMc/Wx41R7V5TGD6
         5IyN5cnrrcBq2tObTej/aCr/7a81zZ9Ta/0oEjvzIWEhQgqqlWAunn6aSxj4ks927uG3
         HQxCnPfcoucxmzQnLaBvdot7zPpbYMA3FrcjLAOaMfUGnKT0BpzkXguDt/hlBYTuWI2+
         JGrXpxa4/AWWMWFR+45Ag+Ys+7Y70F6hEdWA3JirVN2wLA3NHRps8vDDNl+xxXvnycfb
         RX0BSyJLAOAr25qvkHGmm3POP9g3mCsBGxmvJ5Su7XTMai4Z8SfDw+FCBfmBffQnnoR1
         HXRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uGY8B6Oe7XCHiADnLEqpel5yWhZGTgQFMZLJLu4AeLg=;
        b=uQ4sCdGwpk+G237d/0ZBv6ctf/d9kypIz5FRQfUjGqiWCbRucSTk9wskUEH/NngSdP
         Nh4ABS8y2tSlu7Xk8oqaJVe7tY3YO0mtsxY+rooKMIWsQeyn8xWJmIUGv/u3JfDbBXPi
         nIW0mj7uNfQV5Hfq+4K+6ZbLlssK9lGCKiMGTKJFvZ22zLiGJQcLHJ5qnN5TkYT9b5TS
         NjVz/KzkSfbLgkIE0FPEHxlbpoKjzPYCOg4JxM7T2J/iKdJUA86fUnIq3Tmu0P0dLANP
         9yEhO7U2fcXD9wWvQQ4fi23q2JSBSz9VqjMc7SWvSbwQ77/FF+4AHdCF/ksrSBlgq60x
         /mqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rc16qhzT;
       spf=pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=olteanv@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 14si879515wmk.1.2020.06.27.12.43.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Jun 2020 12:43:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Received: by mail-ed1-x542.google.com with SMTP id s28so9437427edw.11
        for <clang-built-linux@googlegroups.com>; Sat, 27 Jun 2020 12:43:12 -0700 (PDT)
X-Received: by 2002:a05:6402:542:: with SMTP id i2mr8211841edx.318.1593286992686;
 Sat, 27 Jun 2020 12:43:12 -0700 (PDT)
MIME-Version: 1.0
References: <202006210249.QHly8bQZ%lkp@intel.com> <CA+h21hpABfDvthiwq_JwWGpqZ68VJxu5TOBVbw_Gaxpq8j+XQg@mail.gmail.com>
 <CAKwvOdnAKR_CtOccZohR_r1kzKKVuvo8LbpLi0s3ek+3u+c_zw@mail.gmail.com>
In-Reply-To: <CAKwvOdnAKR_CtOccZohR_r1kzKKVuvo8LbpLi0s3ek+3u+c_zw@mail.gmail.com>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Sat, 27 Jun 2020 22:43:01 +0300
Message-ID: <CA+h21hokCCF52O1wxkg0gLqS9ZcGtB0xMBm07_--i56=anJ=Rg@mail.gmail.com>
Subject: Re: drivers/gpu/drm/panel/panel-samsung-ld9040.c:240:12: warning:
 stack frame size of 8312 bytes in function 'ld9040_prepare'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernel test robot <lkp@intel.com>, Thierry Reding <thierry.reding@gmail.com>, sam@ravnborg.org, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	dri-devel <dri-devel@lists.freedesktop.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkml <linux-kernel@vger.kernel.org>, 
	Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: OlteanV@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Rc16qhzT;       spf=pass
 (google.com: domain of olteanv@gmail.com designates 2a00:1450:4864:20::542 as
 permitted sender) smtp.mailfrom=olteanv@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Nick,

On Mon, 22 Jun 2020 at 19:50, Nick Desaulniers <ndesaulniers@google.com> wrote:
>

> > I really don't get what's the problem here. The listing of
> > ld9040_prepare at the given commit and with the given .config is:
>
> I wrote a tool to help debug these.
> https://github.com/ClangBuiltLinux/frame-larger-than
> If you fetch the randconfig and rebuild with debug info, that tool
> will help show you which variables are used in which stack frames and
> what their sizes are.  Also note that strange things get dug up from
> randconfigs.
>
>
> --
> Thanks,
> ~Nick Desaulniers

I ran your tool and it basically told me that all 11 calls to
ld9040_dcs_write from within ld9040_init are inlined by the compiler.
Each of these ld9040_dcs_write functions calls ld9040_spi_write_word
twice, so 22 inline calls to that. Now, sizeof(struct
spi_transfer)=136 and sizeof(struct spi_message)=104, so, no wonder we
run out of stack pretty quickly.

But my question is: what's wrong with the code, if anything at all?
Why does the compiler try to inline it, and then complain that it's
using too much stack when basically nobody appears to have asked it to
inline it?

Thanks,
-Vladimir

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2Bh21hokCCF52O1wxkg0gLqS9ZcGtB0xMBm07_--i56%3DanJ%3DRg%40mail.gmail.com.
