Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZETTTVQKGQEJ6PXBEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D47BA0E14
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 01:10:29 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id j132sf1136855ywa.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 16:10:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567033828; cv=pass;
        d=google.com; s=arc-20160816;
        b=fCgeWfw+HHr6/CZFxfrvKAtf+ks0GUbresrTmS83EY3dyhDBFuXjWwOosV0VhGn9UA
         DBeBpPedOas3tEsEY4dFq8ORbYklwzJJj8ib2xkv9u6eGOZV6+MTyzIFI84NwCcCgg9D
         cZgcRmdrweUuALrCeqaeF1wu2XwriV0/SfQEYjrbt2GB412IMfu7bsvYIdz0cQVcSxaH
         mVb+fuRfLzxP317jvT2LC5lvfc5yk9L7TowexkGNNu3Lsxd8WS1kEwKOqZs9R6jYafN+
         PfmF/4EEP3Pd1ZNgVmCE51TOvRTjWWFoSL4NVIfLkkmbeY667ELOoWItQCEqKGjlHgBa
         E0aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=poMAyGQu0vXbWAvGbrSn+RR2Plqdz0Y2K4LIJ9qW1VQ=;
        b=YKQ1+brJ+QuD5I2nxsPGpz14kPoonUvULD3ON1/ieGEkuK16VjM3hHo8jQMr9fz4i/
         MlogNRreykhW6pBJRrEz3Na6F3qjEujRqeYnx+PbhIKc1fe9leoq5Wy5UUjC9kAcxCs5
         jtB/ffDE9ptH1NlHa3zr0qBWEx+IqKOaTCzDJ4zyjRPib4PdttPfJXUhytJZxYbONnPT
         tapzrZJk7+9uXKo1nJt/V9eWykrKeGjkNmu76htuJKs0wW/G5XxHsg/eNu6dUDR0/2Dq
         1XmhUMZsc9OlpcEWJqLZjQ/pvN854S+0dE9VD3GjEvsnW4Ze9gznp0pxI0IRezIowpLN
         v+hQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CoqP6ZBW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=poMAyGQu0vXbWAvGbrSn+RR2Plqdz0Y2K4LIJ9qW1VQ=;
        b=hSd8nss6YW3HClAMDo5wDV+6TPvT4osxH1ckKeFJGeT9JrnG70PtWvPy8Sz9keU//a
         pyR55v9GJ56uwbuUh4xfhY/C9U1xPWB1kvoMrhL0GIvjGdwAfntotVTPGVNHx/y2i6lz
         m4e0mXXD/RBV+Zg3u2/MNAj+yvc+tx4/VmXhTR+e1QbS8BkgWOlIyDpWhTXQ+BA4ZNCW
         R0nZKk8q/HvQUMOJnFi54oAUEtyJ+mteioFUqUwS8PhBqu3SvePUSYamMbfnhhw3XccO
         5kHrwJL6ZCCH5Cru5RGTI64/hJh7x9ZHwo1cXgjiTK1S2Q/X/s3iWzSLi7swGW3FRr4u
         THdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=poMAyGQu0vXbWAvGbrSn+RR2Plqdz0Y2K4LIJ9qW1VQ=;
        b=qGavcs5ws6io4Rn0C3l4ZPTufPOGf7Fsih1iwtRzCVirzl5HJMfuPTua9eyVQu8W51
         jJs73TS4RCQYLes8e/+2HVU7Tf2kBBA1vtAggvnbaOfGRPMZCHWbGkacH0UNPocbKP6G
         K+th96oHcZ3lIWv9hxxw+yHko3xY2NLxMcQ2LcIkGaFRR/Rf8uTy7S+59IM1BfxStahC
         NEPX6FZptn/S4Qyk+dzlvWFaz3rImIi300OiiLd/Eq1Y6JLNWTBVFcC9sUO6+5fAevO/
         k/YJ3tx4lRL9JJp0MoQwd7BgDKP7wvClwlizqCIIx1j8JMqN/hvfwZPcUEtW3IUNgt1b
         B1og==
X-Gm-Message-State: APjAAAXhuU5+yPNO1oUDPRwnCil/MIz0M8pxufFf+Z2IrKGslndyjI+i
	o52KfQS/2FVe2p/lbnhRrsw=
X-Google-Smtp-Source: APXvYqz/cipP5aMhcbOYhIJsBGcCdOneZ5UZlBXilEfMOQ5H+ocNw/u/JtIEEW6SaB3BjuvQEADajg==
X-Received: by 2002:a25:a046:: with SMTP id x64mr4729655ybh.265.1567033828176;
        Wed, 28 Aug 2019 16:10:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e941:: with SMTP id s62ls88302ywe.0.gmail; Wed, 28 Aug
 2019 16:10:28 -0700 (PDT)
X-Received: by 2002:a0d:ed06:: with SMTP id w6mr5073588ywe.479.1567033827994;
        Wed, 28 Aug 2019 16:10:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567033827; cv=none;
        d=google.com; s=arc-20160816;
        b=YwtJ3tkDsgg9JG0c/9F9tlqBQWU8UURUbg2UraWro69i3HhxEZoXFGND/H+0UbLeNr
         4gBAPjQVc1/hKgdpmRKu6U9/apcZYzBZdYX0MdDzVXkAyWzW242S1LRNlULVehMJmBIe
         H0pa4zXD35eaTGap+lg4a3wRzgNwThmYlSjR/oss9MIzS4QKEBBwIyDyxnE8ukY554cj
         TUHbkUHlZRBOYNLitlxbOYaiQS8jxuWVaEkX+sP+qVx6QpDJReOawduwvTG0XQ5Euluv
         nMXVXHkRdfHi++7zuWZelBxSlnRbZOvQvlmJk2BJZfpmWqLV1Jiy4+3Igs3j3xcln5WC
         6hPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=maM1ojqJifdUsFgge/qaHK4HvmJyTKAP1bwPNUVbauM=;
        b=r4C5NRVYD/uBnzM+vF3BU8/PzrzsmktBXX3d3VwrT6fUf5aGDCgBrWgKZUOZZMK26K
         NMTwZUUaEiJnPO0GPtzP+haF7zodkao0ab0/QCzLQ/dTNG7C9DEX0fDQQZBl/sabTowZ
         RDSgz5mxKQbh+d5tT1vMQNco5w5ZH9mSr6oI5Pk+TIocFRBofFomea9I1cejsVLMtOA6
         CEp37vcCZUSRH8/LjzKNugjhItTMYANfyzwRAFqWuSGoNAgzEM5PzMCAt8FvSESH4jaS
         CahYea76kY7bcJ97hXo3QvwwZu954w7tzhQOTOrS9KjycjgiaquNMc63Hrm+gzYVCtOy
         ZIrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CoqP6ZBW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id o3si57386yba.5.2019.08.28.16.10.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Aug 2019 16:10:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id v12so718339pfn.10
        for <clang-built-linux@googlegroups.com>; Wed, 28 Aug 2019 16:10:27 -0700 (PDT)
X-Received: by 2002:aa7:984a:: with SMTP id n10mr7703356pfq.3.1567033826824;
 Wed, 28 Aug 2019 16:10:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190827103621.1073-1-yamada.masahiro@socionext.com>
 <20190827192811.GA24626@archlinux-threadripper> <CAKwvOd=7Jf13PDC9Q1FMhZUJQsq7Ggn=wRz5xpRY0YrU6tP9Kw@mail.gmail.com>
 <20190827213447.GA26954@archlinux-threadripper> <CAKwvOd=pQm7ytZSJeRzXoWwzouDADOYkO8S_+zSPtXOAO3Jc5g@mail.gmail.com>
 <CAK7LNARduZNvwQ2AJbP3NNDojM+1AACx=wRqdRz+DRSCuVMK2w@mail.gmail.com>
In-Reply-To: <CAK7LNARduZNvwQ2AJbP3NNDojM+1AACx=wRqdRz+DRSCuVMK2w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 28 Aug 2019 16:10:15 -0700
Message-ID: <CAKwvOdkOo-6aS=Tu_QkArHK=rhK34Qe+SKJtY4sM-7YupAsCNA@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: enable unused-function warnings for W= build
 with Clang
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CoqP6ZBW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Aug 27, 2019 at 7:58 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
> On Wed, Aug 28, 2019 at 6:56 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> > Masahiro, does your patch correctly make -Wunused-function work for
> > clang at W=1?  It looks like -Wunused gets added to warning-1, but
> > then -Wno-unused-function gets added to KBUILD_CFLAGS after `warning`
> > does.  Will that work correctly?  I'd imagine that at W=1,
> > KBUILD_CFLAGS for clang will look like:
> > ... -Wunused -Wno-unused-function ...
> > which is probably not what we want?
>
> Hmm?
>
> -Wunused is added only when W=1.
>
> -Wno-unused-function is added only when W= was not passed.
>
> They do not happen at the same time.

Acked-by: Nick Desaulniers <ndesaulniers@google.com>

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkOo-6aS%3DTu_QkArHK%3DrhK34Qe%2BSKJtY4sM-7YupAsCNA%40mail.gmail.com.
