Return-Path: <clang-built-linux+bncBAABBMEIRSEAMGQE3XNSG5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF683DABF1
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 21:40:34 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id l7-20020ac848c70000b0290252173fe79csf3235460qtr.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 12:40:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627587633; cv=pass;
        d=google.com; s=arc-20160816;
        b=InYdDQWOqVKq+1nnFRQHKVPbZ+UoQ76XQqa+x6ZuSRT40GBOgoHSkReCKawVH4gNIF
         pa9xhqrP3TD48kO2s+qiHPd9jpLUoDIcxQgvompB7k+9CK8aBI15t/kiypDHApsqDZKJ
         ESyBWb4XSGHtigdx7PAGsJGY54HW9VIdVKVAOg5SwiqEq34gRbUKWDDJWVDmSHjN4QMa
         JKQUeaaMaVE4MdVSilzGmNgMTe7cCSXfVr1XMIkzOb2pSXlK1g3cKYfoKtjCl9LHwxyS
         X5UqJDShH6wxbFaXbK5wa14clE4kGtSdMRGRuPRfpzzgWUC9sElcDXx7npQV+K2YjMke
         FR4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=+RMhFQhSOiPwF12tY3XYAUrtVE3VuXTC6EW+F56rXNs=;
        b=blOM8QSl8r3sS+6r0kgYd8/MK+iJSfu56LxCQJPHIfmK42KMzIkioX9Ttig1zXbMf6
         h5IiDaKGgTp/1fN6t8s6Qf+AiNSHoO5I4JYkVE0W04xXHKVgYXnmaglPgr+6Z/nDsCQ1
         po2baeoBLIC4vniIuZJMz+517sPlDsSYKbWDQl9IMl0mTkv+yVzSTneEeeGDc3sQ7zrn
         fJ/WiWg9buD3boeCnxSo9wOHT9C9ibSevZzRt2oe+2oioClbqJpbyklF7lOUdg59KRoU
         XAdgU87hEuDFr5vp+vnrgPVzXOymtJXRn8B+Wj2UQ/yhUiFqA2EOwWQd+HKuq3FAq0FF
         jDLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XsUrIiOl;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+RMhFQhSOiPwF12tY3XYAUrtVE3VuXTC6EW+F56rXNs=;
        b=d0dvg4FoZ+UAjaDM11a0Ht8ZnK8ksrTmsLdrQTY3ADthLfT6PxS1MZAhPwYoOEx/3p
         beBHG8/wt0Up5YIqhn7/2mb9i4FQt6VZxfeW/R4BbMDxWVfxrafbVpiZumxPVs5tx1RW
         edl8DWGUUt0S/ButbZ+6w9NlJhxAkUBrm+8x0ziqm7UfXSTk2FiNkmZJTKG/I9xlBDRq
         s5bGBhnLXBz+vRBMW6qy/ScTi+KMBPyL9RsG4fjoUoqKOh3Q4fNrfqO9TzxzmT5nfjsb
         Z+u24S0GWRBR41Pjt5yQZ1/SKNShOgqJ/4+0RdMNcZkpMiHoctRgVsSgRPhgoKYLStBf
         ZCZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+RMhFQhSOiPwF12tY3XYAUrtVE3VuXTC6EW+F56rXNs=;
        b=paS2NB82HgCqeuOROxhH2BGIwC0LZuyNAg+pLaZa4pLM/yj+D+8+v2RdsbCMlaP9PW
         5XdDeEQ1OaNefScTtKdE7ZQBlkN+Rf8dD+fC2fAIMpHQ7FhBEU3Kv0Xyjb4IkVR/yRk2
         zVKXYHwB+/FoGNR45I5LQeQBkZzHV5H/MHEVKDvc4QySxdlVtJ10qEUp/VH/OZsARy+X
         vKb9mT+pbEuJqrNoNlka8aGbnd1Xbn2Irp+6WvWzMGyqVyD1TYwCMJEIHwPXT+St/qeu
         sNpfkLHzOjzAHXH7cPDzGndxmFnW/GIWArpuRTGC3DmwtSYuOYhzDR806WECmVQbFr1T
         uJLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YMxTarAeL+iPTZs4ANRxIefoTOaN7lw8/E/y+wwjJnRf+utu2
	nFuVM+kas9qILdSJgGtzbnw=
X-Google-Smtp-Source: ABdhPJyJ90NwimQ04pdbLeV1cp88mz+iLn4pz60qFAFhmIQtA0AJZp1y3Kis7gBI/qcRmRe63oaNUA==
X-Received: by 2002:ac8:750f:: with SMTP id u15mr5561559qtq.195.1627587633063;
        Thu, 29 Jul 2021 12:40:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:5147:: with SMTP id g7ls1790445qvq.6.gmail; Thu, 29 Jul
 2021 12:40:32 -0700 (PDT)
X-Received: by 2002:a0c:9a03:: with SMTP id p3mr6918838qvd.40.1627587632637;
        Thu, 29 Jul 2021 12:40:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627587632; cv=none;
        d=google.com; s=arc-20160816;
        b=EoH4wdIkN5q9sd7z9SJmRcPdv5rq3pytr8F/N4a8BvqZJNO9SKu3i5MyztcE3QoVHZ
         twrgQDwKUT91m/7MrqHLqBM7sa/pxWft11avVOjHZZw1xfuKPs8hxxiHBq1MMQUGazxb
         aesQNALua6zXMHWPgErKqMSQtwdadXbZbp+g+nfweXB04kyZU/D2UnSfUhHDPLmLKQTr
         1T50wsIyXBXMYD3QUnDdUgnhvV+0CxfZCCPyzcfYn0nA2Z88FdM0uhAX7C3f48dNVSDA
         /2PPrMq1hWzdhTXVvQw0si3NJKfYXdey8vw7iV82nzjH+OSfFgWugxg+sA91m5K+oUOp
         MbNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d9AkDv4pVlg40oFvlekoXnqSgpFzLdMzgAbTcToONYg=;
        b=B4pGSl4h/5RV5zq3ZTz1ZDh/PLkNbs0rZwzImDe1Oh4v+uJux2UVS/2IICHWle0Naj
         Mjvs2Z3UbOSBy3o3O2xb/rZOKFY3USF0mr1xo9G6or69CwweV0uFWDUHgzmuccOkeO6L
         QKmSHreTI48Kf09S/cwNXHNt9/xKIqrhNUW44q0ngKFxu2dq2sC1v2vJ+Wrkno93QjUA
         1F1fubfmVMDmDPbrjBa+/sShCkvYpPHAOFq/D6BwBsz+fQBew07beW7YhBVgtSghD2jx
         9zCd0BjTqa0sSG2n+mRDJXLGyEvsBC8XLsmSzuDOFuslVtKk1VidwXJyQeUIMQhzf+C4
         0nQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XsUrIiOl;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v31si207004qtc.4.2021.07.29.12.40.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Jul 2021 12:40:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 945E360F46
	for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 19:40:31 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id c16so8237643wrp.13
        for <clang-built-linux@googlegroups.com>; Thu, 29 Jul 2021 12:40:31 -0700 (PDT)
X-Received: by 2002:adf:e107:: with SMTP id t7mr6536342wrz.165.1627587630094;
 Thu, 29 Jul 2021 12:40:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210729165039.23896-1-ndesaulniers@google.com> <20210729165039.23896-3-ndesaulniers@google.com>
In-Reply-To: <20210729165039.23896-3-ndesaulniers@google.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 29 Jul 2021 21:40:12 +0200
X-Gmail-Original-Message-ID: <CAK8P3a2=mLvHfOthgyMgtv1v=nqY=oEMnj1EdJfFW-AwOrMh9g@mail.gmail.com>
Message-ID: <CAK8P3a2=mLvHfOthgyMgtv1v=nqY=oEMnj1EdJfFW-AwOrMh9g@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 CC=clang LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XsUrIiOl;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Jul 29, 2021 at 6:50 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> We get constant feedback that the command line invocation of make is too
> long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> target triple, or is an absolute path outside of $PATH, but it's mostly
> redundant for a given SRCARCH. SRCARCH itself is derived from ARCH
> (normalized for a few different targets).
>
> If CROSS_COMPILE is not set, simply set --target= for CLANG_FLAGS,
> KBUILD_CFLAGS, and KBUILD_AFLAGS based on $SRCARCH.
>
> Previously, we'd cross compile via:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make LLVM=1 LLVM_IAS=1
> Now:
> $ ARCH=arm64 make LLVM=1 LLVM_IAS=1
>
> For native builds (not involving cross compilation) we now explicitly
> specify a target triple rather than rely on the implicit host triple.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1399
> Suggested-by: Arnd Bergmann <arnd@kernel.org>
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Looks good to me,

Acked-by: Arnd Bergmann <arnd@arndb.de>

> +else
> +$(error Specify CROSS_COMPILE or add '--target=' option to scripts/Makefile.clang)
> +endif # SRCARCH
> +endif # LLVM_IAS

Now in theory I suppose we could just have the fallback use
--target="$(SRCARCH)-linux-gnu"
to avoid having to change this for every new architecture. I think in
most cases, this
would just work, even though a lot of the one you listed have
different patterns.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2%3DmLvHfOthgyMgtv1v%3DnqY%3DoEMnj1EdJfFW-AwOrMh9g%40mail.gmail.com.
