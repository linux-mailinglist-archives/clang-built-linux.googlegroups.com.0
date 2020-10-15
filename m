Return-Path: <clang-built-linux+bncBCQ2XPNX7EOBBG5IT36AKGQE7NDNK3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D90A28E965
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 02:13:16 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id f14sf415059ljg.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 17:13:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602720796; cv=pass;
        d=google.com; s=arc-20160816;
        b=LDbtmr8JT0nRVcWODOj06dFaCPdpW64HQwrHMnALTfdZdYtzNy/O0oGP/U1ZsZq2MV
         o3nnNnI5ZL7p0XDqRNuSlV+Q14JUhybp/EMeKmj+mz1O1dPeJCRDp3Fb0SAR6rwY8Tmw
         M2Gq2rxbE02Sqh4vO24pWfqnh22/hJrIqcRRl8n5A+9b/VsiHchE0OqiD610cX5BuUVw
         7uIhLtLCJRONODRGVMYzMWS9fN7kcplX0IcfKwCe6u9BqoWU/WcBd3+a0m1/k8buLXXH
         wdnvCSqUzW/g9Ohq9ssxSiitkG12xff8kWlExfkxcV7/VervyBx4MxjhWbn6nV/nLn/m
         cz+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GUqmAwo3CcEbbFvfGbLASvSO9H2LCQ9DDe/W64h/S1w=;
        b=I4Monzl4a+ylb2DrmtK/UYO6MLGCv5DKSjdboxgut056AlrwEzAL4+kNp7TD7ZZ05/
         ZSbBq1rm2ZVumWJ2MJxIzUdKCVkRl352MwRvP/0vFaaj1LA6HMPUfIJyEhD63wkM3S8k
         HF3IqTbkQED20rnz6ibyq7y11ftoz2nwftEf1L6yKdR/FF4QFknJI80zhP3sXkVHiqqq
         GrkIiLW9O0CkjiWA7OO8Z5ad7tx/NZq/m3VtrGs/qXHQHK1ug80nZhuqRHNu8eBJJi3X
         mUbY1rBzB+PZNpUklnnKirhM3c+R2OOcylEMgYCS4Q/H6iie5J1omgH+G3r9lEaEruqZ
         lmxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PgKjpNgr;
       spf=pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GUqmAwo3CcEbbFvfGbLASvSO9H2LCQ9DDe/W64h/S1w=;
        b=YvZjdTABuZJjFk7Ujtou639n3Ud8SJUvQ1lP3YyFvbGpY1wum/PsH6WQiSsUbhzQVi
         ceiP2e3R8NQ9U8pP5kT0jSNNqt2j7iufh/yR5o3mglM6KEGEp2pXR2K/xI0fjMaUbVs1
         NrVdy/9XRCfE32zNEwP9z3/bWQQHwT0rKVjXPK+f1hkUh/VKkpyPexCV0aeUohauHwJE
         4Z0v2oBpGpLKqm3qWlHT3kjjPSFiWKe9oDg0uPJP0AA7LEoADQ0zECkngFcctvrnMjg8
         hfN42hcndJTenzZ/7TolK4Kq67HSoUpMWueSRgJdOlYF+Dia4mIyvfWgfGJYxyZJqLRT
         tjtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GUqmAwo3CcEbbFvfGbLASvSO9H2LCQ9DDe/W64h/S1w=;
        b=soAXeGdljk62swSjb+YK8BaWZU7azZh0Ze5K4b6PNdcofieigt2/WWIbIUOptXvzs9
         rfnH7CA3ZvJVkclho3lCHs7yBxgpvuTQZFo8YISS4ms4/6aGdGBTFiH74Z0oTZDxFYlZ
         cGzQ6VtRet4YzFszbCmKopUa/YID/0lj4+eLXS7jPaFHAGYf857PbSOALgv5PS7tWk5y
         8r3sRmN3u/iM+U6/XnlnWflx6CBb8/ggtU5Kv5EJgx70Z5M/LQHAxhfDeV3L4jj94zbJ
         PzV/tTbU13HDDA1NHueBEt89hMdu7O4hT+Z70H+e/NTRLsV29oojIOA6yUTkxTyCvU/w
         3y0g==
X-Gm-Message-State: AOAM532FGgapDktmK46KozjCOuol17AY86Q0kcwRmAcevvXPnYe77O0j
	Jv95kkZceYcJT89GlepaznY=
X-Google-Smtp-Source: ABdhPJwwcLppAz+7uXVYlmcYFid436gTuR8O5gjJYrGGU7BzO3xuu0p+MnJ4kGVFo2jLx/bjmN/06w==
X-Received: by 2002:a19:c717:: with SMTP id x23mr155783lff.332.1602720795877;
        Wed, 14 Oct 2020 17:13:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:888a:: with SMTP id k10ls213964lji.10.gmail; Wed, 14 Oct
 2020 17:13:14 -0700 (PDT)
X-Received: by 2002:a2e:8942:: with SMTP id b2mr231207ljk.441.1602720794812;
        Wed, 14 Oct 2020 17:13:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602720794; cv=none;
        d=google.com; s=arc-20160816;
        b=HIUxu7lRT4VXEDEaU/8gkUcH07ZPJNUxyDEWHNgyyeBeKK5iL2Rw1tUP/tNzsdUUrN
         cARzml2ciUtzle09mNcsXxd70LbiE5VslweWYzAU/jO9qnw8FeLKW0uHTCzOesokU9Q1
         EcaTy43dN6l+dsiP/igb8vYVxiIM8dSDh8t6ndQXsI8OUnHDLeLl2UyK9sTnjUF8joTQ
         LbAs9h/1JjkGOkcSBKS4n2Nvtj5cmiEKZkyvsYy7PUsagJKhnbt6UQUXBolgJGYGREkg
         7PBShANoT4Ij9V0sz6p8YCTTOWLWvPTT5gqSDyj/Zm8SoFxjs7bhb6PY5udlAcNDqzv/
         KP7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LURiEnBAw2K4z9zIAiaFYTyrr5u9bQTopZRlsHwZQ30=;
        b=fRx706ZjLkhbtvMnaWno3/AF1Nvdh/MFxNR2kQZqsdG9moAdTh9K2if2M3OXsMLO99
         x23MBo8e/xLwiy8wW9F4HdAhwIpAKLAsva43bMyBf+aZDdn//q7Lw35fxJcEp0uhgNFH
         HRf96MtbiPYcL5duMDxST2I+kYcGgUSkMdRSyKm8BMReDsm3DHzxs43e5oRTdnIna9yt
         /FzANmC7kGm9gYmlmtnjyDgYDdUuKszYvbXc7g/0IEs98LDAHKf3x3jptHRN/vrK9o/z
         3Ecx07ouGCEuphoabiSjkzj94EjWtQ+G9N+4zRvzyw31CnhxV5PavBSarpEJzMuYb1Qg
         GIHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PgKjpNgr;
       spf=pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id a16si26570lfr.5.2020.10.14.17.13.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 17:13:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id l2so1502967lfk.0
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 17:13:14 -0700 (PDT)
X-Received: by 2002:a05:6512:52f:: with SMTP id o15mr141586lfc.381.1602720794371;
 Wed, 14 Oct 2020 17:13:14 -0700 (PDT)
MIME-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com> <20201013003203.4168817-17-samitolvanen@google.com>
In-Reply-To: <20201013003203.4168817-17-samitolvanen@google.com>
From: "'Jann Horn' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 15 Oct 2020 02:12:47 +0200
Message-ID: <CAG48ez26uiRBKS06_DQXB_GSmNjJjRiT+YA6pgLBGYCbVi2NNg@mail.gmail.com>
Subject: Re: [PATCH v6 16/25] init: lto: fix PREL32 relocations
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-kbuild@vger.kernel.org, 
	kernel list <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org, 
	"the arch/x86 maintainers" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jannh@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PgKjpNgr;       spf=pass
 (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::142 as
 permitted sender) smtp.mailfrom=jannh@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jann Horn <jannh@google.com>
Reply-To: Jann Horn <jannh@google.com>
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

On Tue, Oct 13, 2020 at 2:34 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> With LTO, the compiler can rename static functions to avoid global
> naming collisions. As initcall functions are typically static,
> renaming can break references to them in inline assembly. This
> change adds a global stub with a stable name for each initcall to
> fix the issue when PREL32 relocations are used.

While I understand that this may be necessary for now, are there any
plans to fix this in the compiler in the future? There was a thread
about this issue at
<http://lists.llvm.org/pipermail/llvm-dev/2016-April/thread.html#98047>,
and possible solutions were discussed there, but it looks like that
fizzled out...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG48ez26uiRBKS06_DQXB_GSmNjJjRiT%2BYA6pgLBGYCbVi2NNg%40mail.gmail.com.
