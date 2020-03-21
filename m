Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ6A2XZQKGQELYNIQOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CF018DC7D
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Mar 2020 01:31:01 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id w2sf6944731qka.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 17:31:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584750660; cv=pass;
        d=google.com; s=arc-20160816;
        b=YtNFHVHOd3U24ILFw4AfUrXpbEG65Zlc9Asq2TbQ/1+XAZoh2dnNmrSkfDeTwOY+l5
         IqgYy+PUxg7vu13Ezlqz/Hnk+awel3zDPYYf8wf7xFJJ2RykjKzvO/3Faoh/xwXuNtGv
         YtofR82akwUjHn3nFU71mlGpDR18IbQBkI0TdEP+P9i6sfq5LTjanebjKX6SH6T7rYoQ
         vCWOFsYxIS2eL2l0mKndgbgKMNRd3f6XvvTB1Z6fS+ZwDB5M+K4RMIPYtxm/6p/m4jOk
         BAo8+ACN1jMbwBzH7vIUUgGfJEOXgL9xhZ8mjLmfeEfLVFrBGxgRX1auZJKqTCpIjJ+K
         ZTxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=G19jheDjnxqmYjVJDwmkcHvBqHmMhw+37yzDYqrpUpk=;
        b=dhU9vuKLvE3tOF7PZWqgT8fQERokC3YFHBpf7LBpm9N7X8NXqr1A+N/kFVpHhrZJDW
         kGUxl7WDEaSfJlD5U4FG7zK+x3M1aPE5+ILYrDHu56aGkomGeZ4z7l5tEJ2Y8nCl5nuJ
         YJZKBhQFh1vCHfrFvhy/xgrNd4bgd2gy7OEolTknYS0qCaCWSP3M0fOHiWCPvzzPQxxR
         qV9MLCh8oliKRluCucEwVxJQ4kv4t7hoi6xjqeKpYmiCpb2oinm3Hu3Xsu4Kz/y6w6D0
         28zba+DUGi5qZ/uPK/QjTan3i58Rp199D3BjRRUnOXaIjVwBXOm/8hhz7CcafNLAM0Xu
         dfOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hG23uNPT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G19jheDjnxqmYjVJDwmkcHvBqHmMhw+37yzDYqrpUpk=;
        b=ipzfzrwGWuu/fEuiW6pQgaxGxPEaPmuisD9vkDad6ndQWIkRIYi9DtvwzwYEvGn+Vg
         egcBCLso5NwGfmHE2fmx5jcLtRHbfEXyEUYGM5n6GO6C+Bx+gjHnYJ/gi3kFIHpyioCJ
         FBc1KjVMglQfXxx0Z3Qo+icnx/iM0CWnxARwnKwo5JHwXacY/fGeZpvWadrVG2v2EUwh
         DirRfPwfhjubQP9c9238domIc0p+5H2PU/XL7DT33m7EycdZQlxCv5xaB1llLy+f9Zew
         vt6Cp+1zisR21CByx6n7Ra9Z8mmdzQWYBuqGtdiHEwo/ihH4qxHCdiANOu4Y5WYkPYne
         WIWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G19jheDjnxqmYjVJDwmkcHvBqHmMhw+37yzDYqrpUpk=;
        b=l2o9MdqjmpXaVUOYECCCdu8pWQDFmvBLnpHn7eqpXDJR3MDU28MfIAvbdsIbNh9XkD
         01oqHrlzXEDxtG9QaC5S6jARWliQ4zZLft3pWypcQaAIstUdn8IW3Q1ub6LhCDp08ACX
         YMW2wgr7YXwkJj+/GbgQ1CRbLtgCpzslg3IHLEy8F52Zd7YPzzLtIen/k7w3rlyII55i
         oNEHHpXUJlNRil5YZ8rVNyyguwH1SlnzHZv/PiICPfijT/jRV7g6udx8hM4NdBIVtj3n
         SDE+r0MEev3UK6DLepsOtwGWGv+IqOYfAyOocCvx6g/We9gLxxd0j8uu4GKfD2b9VbTj
         Xb7A==
X-Gm-Message-State: ANhLgQ2dmDWWIQHtf2OPpLubrrBX04SISlMpKIuaTmOmq9wyiAv9GMSX
	SDUMXKRbCbogxEIf/t69z9g=
X-Google-Smtp-Source: ADFU+vsr2vlocYb5kTKcvFsN50vtyUulWd4MImYIePZ4u9K1whslSQs1zCqK0WCgXoB9xxnAjKExDQ==
X-Received: by 2002:a37:9e88:: with SMTP id h130mr10842870qke.145.1584750659778;
        Fri, 20 Mar 2020 17:30:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3284:: with SMTP id z4ls3620890qta.11.gmail; Fri, 20 Mar
 2020 17:30:59 -0700 (PDT)
X-Received: by 2002:ac8:44c7:: with SMTP id b7mr11391682qto.366.1584750659346;
        Fri, 20 Mar 2020 17:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584750659; cv=none;
        d=google.com; s=arc-20160816;
        b=nDTQWNsSRGqMfCR3lq0NbIubeaFuJqQjZgweAMLLVWjSvuRFSKMPT4M2MDaPOqkmkK
         3nxkS/icEeva5wSAxh0gPcb0CKruUB7tVt4SvOyIt9QkWcRleM88JJyV8D3W8NRPw+C3
         lQYRxgYYGCBXx5IhgZ7eZcmW91nHzC0xd+XcwoaBRA7dJN3aaxpc8RgYgbxTFagLeUk2
         9leRr3Bq4OHw+ldikgis1l+mrB66XYkWbueZ/cHR+wZiH25RA8C5CLj4PGgcuUQfwPEb
         nHwteS+DgxUb18oV0nJF2bVCGFZK5lYOIuTxomdAThaY80ehhyCOGCQx/6Z6semCLo/b
         Orpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dmFezerbNyH3sHgwxVv8WQLO+FWkRAEDRp1jX/9aAcI=;
        b=Bg+lDAbBtvrvA9lgHJ9dihQJz4FSBAVgG2vfoHB1gUOXRViCBaUXffPNrHW5yXqV4w
         KuDdzooojx+Tt3H1St/RoN5UyuZRKK0SHoOYsDEFmGQGLpP54ycAj75I4p6iBAdUIQcy
         wuU3VB0ZprqkWydl0lx3rnFpUcSPfUy/gDiOjHVX5pPs7ZDVYsb8FHDxz2QCQA4Mx6uu
         K97qvGtiIqzvYUJvqfcgFXqB1qp13mtZkDq0iuvkqU8zWT4pexy7BkI70gv1//paqauQ
         4SqMzUWSP7CRlJKqVWOgu//+UPypVevItzGRAoqbSFwBoiS17zYgEjmyIy7qZ5qoDPdD
         gPvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hG23uNPT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com. [2607:f8b0:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id z126si432952qkd.2.2020.03.20.17.30.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 17:30:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a as permitted sender) client-ip=2607:f8b0:4864:20::62a;
Received: by mail-pl1-x62a.google.com with SMTP id a23so3215600plm.1
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 17:30:59 -0700 (PDT)
X-Received: by 2002:a17:902:820a:: with SMTP id x10mr7490907pln.179.1584750657894;
 Fri, 20 Mar 2020 17:30:57 -0700 (PDT)
MIME-Version: 1.0
References: <202003210848.qj0RGHwY%lkp@intel.com>
In-Reply-To: <202003210848.qj0RGHwY%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Mar 2020 17:30:45 -0700
Message-ID: <CAKwvOd=4euJP5xkAvYzaopiNQD3hNatX-6DFA2ubkCMK83GuDA@mail.gmail.com>
Subject: Re: [linux-next:master 8211/10629] clang-11: error: assembler command
 failed with exit code 1 (use -v to see invocation)
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Rob Herring <robh@kernel.org>, 
	David Gibson <david@gibson.dropbear.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hG23uNPT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62a
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

Known issue, please ignore: https://github.com/ClangBuiltLinux/linux/issues/675

On Fri, Mar 20, 2020 at 5:16 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Dirk,
>
> FYI, the error/warning still remains.
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   d8f289c16fbb72e17b783175c1fb0942816264fd
> commit: 35595372d95c0d10784bce1aec8cc144a39eb66d [8211/10629] Remove redundant YYLOC global declaration
> config: powerpc-defconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1993f95f2b1eb2d8da7f1a01e977d8fe06314bcf)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 35595372d95c0d10784bce1aec8cc144a39eb66d
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=powerpc
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>    /usr/bin/as: unrecognized option '-mpower4'
> >> clang-11: error: assembler command failed with exit code 1 (use -v to see invocation)
>    make[2]: *** [scripts/Makefile.build:268: scripts/mod/empty.o] Error 1
>    make[2]: Target '__build' not remade because of errors.
>    make[1]: *** [Makefile:1111: prepare0] Error 2
>    make[1]: Target 'prepare' not remade because of errors.
>    make: *** [Makefile:179: sub-make] Error 2
>    34 real  9 user  19 sys  84.67% cpu  make prepare
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003210848.qj0RGHwY%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D4euJP5xkAvYzaopiNQD3hNatX-6DFA2ubkCMK83GuDA%40mail.gmail.com.
