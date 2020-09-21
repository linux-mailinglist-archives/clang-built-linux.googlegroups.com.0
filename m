Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM4VUP5QKGQE7VETJSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DF4272A98
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 17:45:56 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id m4sf10223427iov.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 08:45:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600703155; cv=pass;
        d=google.com; s=arc-20160816;
        b=KhXVcIamOdCdqwBrEdMpdPxT8g9uPaTqopRYOR4/h0YJ7ywqu8EVOX+ahGZFLBgM6w
         Q4OC/Whn/S8GqL64T3jSOyvTX51CT8uPS22UN9ZDF8Sj3FQdKNGjnMlMOSTS7oa0yp9H
         Ti8moLTTfrulV5zpwV44BMfV3Vr0FPtsPBunwLZLPf6GYBDvFnyR7Zm4rgC1vxsloJH2
         rTtrwPAc10KyX1Fzwm9CC5ow9NTFikMFC/8wzdrx0ha30zL5uynptiGkYALD4IpZOBPC
         XDokI4oj3ufK/AXtxayPXlO/voBN3zH53Zi6Oe5vDcrw2lZWUt20ARqqP1eTBzmT4fnr
         a+zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nBAjhmSm8OyO0suRYX56S1DFmUeTU4JLYSUq4qLrMkU=;
        b=JIXe6hoM6z+4F/Clf/YeGmF+dqjYTgEJVDp7xYUZkXGl+vMfoQcT9LGCu3re9uwk4S
         6oA6IJNmaXFZK82adYibZ7C/epPnD1HXbNOdSBd9EfGgDkdhjB0Sf/CBvAoU4Rpmz7Qo
         qCPAoD2VZ0X3/hm3Pg1H4rRSFhWfPQOsgWSm9oyJ3R8VtRPnBOlWL1mn4OVOacIRhCYm
         gPhU8ulPs5BtLI7KjWeHO6vPlV3gwWR1eUDedaeQSo/oEsi0QX9f1qKmEYGLoMjBYGW4
         pxCICvZwJQaQ8ehXPLW7Kh1LDC/EvwCVAJUjB2FpmoBpDk2iAgFHrWjtZbqcbhITAK6L
         W+WQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TQLj+xIA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nBAjhmSm8OyO0suRYX56S1DFmUeTU4JLYSUq4qLrMkU=;
        b=AnmsV62fl6hGagv4diFWVBjDjfk8uB3rna230CerEyGxDlgUJZIo1khaGcwDuZyGAt
         XLiV3vNkD1yRg3e14DoHQn39NDOGeHj2FCXBqMz69WOecj6QORa7wbGIFmLSI2xutxBF
         /vpFkWlJPv+Mw+/4q+O5ChuXWtRtZMN5/g23Zs42UbSmW/F2yKqIj4ToALIWBH5Bh8ra
         qyjtWX+XLOAEnAIa43Va2RedT6OEVosnX0FsdwgfO8rnL2GduTv6GZsKebszCQX+Sm97
         Pl+U9J0S38OQrwgVdIAmmWTR1+i5PIMghYxmfZ1Kgc6DUV6JJdKaHFJ6KLS1SxBs3feM
         5HKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nBAjhmSm8OyO0suRYX56S1DFmUeTU4JLYSUq4qLrMkU=;
        b=ozRXYHlMOgR03ZLN7aj0UpIgWKQCyQuQc5cSX1siiJ4+GgV3e7cKgdk65bu1Da0mc5
         UFr8SdUpyyLFy2heLCTyObXkRTngkv6AiB5h+iU6hgkXEBE4w46AHX0/ZhZMJlyWhL9h
         Vv5Dg8KiGSV/pGQeGG3nY+ki2ZzV/YCfZPH8dSOWjFRZyyoLDzr1RZYc+yv+twP1Oq9p
         6s2Uai/eoWDrST8RUykqXIXS1PNWng/c0QJD4cIx/It7bG70C1WCIHNK5oInJ63lC9/n
         CUdHB4PRVfd4cd+nRgdCdst5Ig14i+03ZlKRsaamu8uOWKmqxmi/C02UOP0iL2eoV400
         H1Eg==
X-Gm-Message-State: AOAM5302VZ+cdREuoa1xQx0B0sUUxqlvy2i4SnMVXWjZ34MoSSE5I122
	uGu8qPTQxSnFtP55Fz9qB00=
X-Google-Smtp-Source: ABdhPJzDDBn1jPo8oQQcYQ50fR4RC9ZGICrm1qf2WalFleLrKB0v3X5Ac0uYXoiadDRvI60z0QR5LA==
X-Received: by 2002:a05:6602:15c5:: with SMTP id f5mr44307iow.42.1600703155441;
        Mon, 21 Sep 2020 08:45:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:12d0:: with SMTP id v16ls1557868jas.8.gmail; Mon,
 21 Sep 2020 08:45:55 -0700 (PDT)
X-Received: by 2002:a05:6638:1304:: with SMTP id r4mr573342jad.116.1600703154954;
        Mon, 21 Sep 2020 08:45:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600703154; cv=none;
        d=google.com; s=arc-20160816;
        b=R8GsaRIoWaFOSvHnAr4Ap0oH5I//8RaCQKKf/FZkcwwcAldxQe72a86TmKLLNarGML
         iw51HbnG5cysQJSOGYGzRXKGTRNheTRZhL36/E6qpuoO5bWJkigdpjmaOYrXROd0uTOJ
         h25KOIPN36hIpClT7hdpuzTZlkXT1s+pjqT8weNjHsrB8tLl43QsNVf2GwtqGqKTWJlw
         fNp2TqP8CaruEtCC4Q3L26uID3/Z7fHKjmp1sC03BLLMOMDuJnNREihb69O/kunMzVIu
         9+j75Y+xdX4AzyK8j5o4kbsyQA6M/1WAdbIa0I82h6i8Lhjtm4OX09T5w7U9ZPHb1obS
         ErlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=m4CToQzhJGCPsf76V31txgnzK6ZWRX6mgYAAouheShA=;
        b=w+x9m0Jbn04eboRxs0RqCbgF0EFjMcixKYGm7cSshKnd2UJL4rkVx7uf6hG153u0BT
         BuHMmfbT4DB2efEWaomngQpn9Fh8D3SxEo+F0xCR68o90z3u0/3+gzO6mO5KXTcDpQhb
         bPS/78rzhPwEklq40j+6Lc8Oly8q1JqEH9c3JCBY0fSifGB/xFmYPx+VMaYTF8i9mJK+
         UgUj5dJChqJFW/1sIYqHV4sAA4Ec6FTAqefAkHtZwGl6EshZSBpu6unPHpLluy9skPIY
         PMHZL5V3CY76vKz4CcLMtxc5bTff51+JCWl59J24F4ULEnNmhoxjf7VDg+q3YcJUZnzF
         O9Ew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TQLj+xIA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id y1si994021ilj.2.2020.09.21.08.45.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2020 08:45:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id t14so9370577pgl.10
        for <clang-built-linux@googlegroups.com>; Mon, 21 Sep 2020 08:45:54 -0700 (PDT)
X-Received: by 2002:a63:310a:: with SMTP id x10mr234218pgx.10.1600703154282;
 Mon, 21 Sep 2020 08:45:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200921075131.1334333-1-georgepope@google.com> <CANpmjNO8YNROJsOj+n=hWj=2-LqebBQdZRks1KKQ3Scd05fLjg@mail.gmail.com>
In-Reply-To: <CANpmjNO8YNROJsOj+n=hWj=2-LqebBQdZRks1KKQ3Scd05fLjg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Sep 2020 08:45:43 -0700
Message-ID: <CAKwvOdmxK7Nd_y+Rqf6j1w0idYhfn4J0aumOOLMJ1fo1zToScQ@mail.gmail.com>
Subject: Re: [PATCH] ubsan: introducing CONFIG_UBSAN_LOCAL_BOUNDS for Clang
To: Marco Elver <elver@google.com>
Cc: George-Aurelian Popescu <georgepope@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <natechancellor@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Dmitry Vyukov <dvyukov@google.com>, Peter Zijlstra <peterz@infradead.org>, Arnd Bergmann <arnd@arndb.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, David Brazdil <dbrazdil@google.com>, 
	George Popescu <georgepope@android.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TQLj+xIA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Mon, Sep 21, 2020 at 2:10 AM Marco Elver <elver@google.com> wrote:
>
> > v1: changed the name of the config to UBSAN_LOCAL_BOUNDS in Kconfig
>
> This version is v2, so this should have said "v2: <summary of what
> changed>". The subject should have said "PATCH v2" (you can get this
> by passing --reroll-count=2 to git).

Prefer `-v2` when using `git format-patch`.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmxK7Nd_y%2BRqf6j1w0idYhfn4J0aumOOLMJ1fo1zToScQ%40mail.gmail.com.
