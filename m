Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBVG5CDAMGQEDQYLW2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC263B683B
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 20:20:56 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id 1-20020a2e0d010000b029015d8fce4f1bsf7289240ljn.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 11:20:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624904455; cv=pass;
        d=google.com; s=arc-20160816;
        b=otvAa0kYwAZdlbS1Uk5ebkieCpc2lbH77z2njCYFcX8OxMERLio5lTzpPPsq/OExRM
         54pt/i/uR2ZaVuQmILiiI9V9xXrBYEM1Axc11p4OZExP7YI9TXse7FvpOduEVmDmE548
         Y4IS2lVDTuM1xWQzyWE76UI8dbg3/OBC5cKJ2FjCj1QYDqaXTCV5GvP0AWBRTl10PyWO
         QVHQ6mdtZ7cFI9hCNjhRUTPDMd7wSTCgdjSojl1koRa7sbRe2oGikMZt+cLD9pDFiE+9
         IpgCRWb1VgZJVBsU5Hlp5E+DvneMJbaXGCpL8sp7TN5+4fCbfZGUpNTTmAqmycHD8Xbq
         ROVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+CjJuj2r3JtKnLRhn8RHfCBSR1tsShpLmZkI2VErMV8=;
        b=s83PsVnm3HVjNJng5Q9C9kVCvZz7eTfq3Oki8MLOPggwVjqAOkvFdIkhwJk5rh0qzz
         8CdnIWJT++eQrAxc5hjQtWAVdYKiotN5TP6O6NhlKWgJVd2bMWUu2zeyOrnopn1RmgP3
         EemVw1+5WcaUKn1DK5yi4nsfUE5EJrjkMPOrRcJ59RlQHMIMeyUQQ/jeA/b9MQszvqqT
         +sm+MGNpdEA+JoadWu0VmrbNX+++hQTE9nq/LbWBnVKunujmnFWP/2O3K9Y23Jw4TLz9
         7BCu7FuWQPkpcIeDjBeU11yQDytILoYZmVfEsJ/rtom7K0gy/N1quYkwK+0Z+t0J3pZQ
         wltg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=INpVfpbH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+CjJuj2r3JtKnLRhn8RHfCBSR1tsShpLmZkI2VErMV8=;
        b=Fii4gz6GZ1MVHWs56zYkNT2TJkjfmTBXEkCRofj0zMJtcykTmRmZxexW0X7d/DRMgB
         rsr+ddbGOVqPzAdr0l1H95Ne7OdLixgovuy+DacR85qE02fzItf+l9cL58XP7nnOP2jY
         gBSqEYDDvTrqeDKFo8II28NEcACPICcCrHGhkR3p1DETQcmDa9d8NfViqvZZ23xXfg9s
         ggTau6/KCbg93WwU5acP6kebqajRLm6ZU90kJD/htu4MEYy1wI1nT8zcCRESRSfSKUPX
         hVJbpuX6lE+lsyuhV2WmviD+FCiJnN3ijiqcB5ea4+Z64MWQNjqRcro5f03Do2O0oYR/
         M9pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+CjJuj2r3JtKnLRhn8RHfCBSR1tsShpLmZkI2VErMV8=;
        b=RbQTjx2QH95iWi9K+KfF0lXlhUGEpSaQjtARROTUNgsGJQfK5a+BRpTDXBSG/wOCT/
         f73ZipTLyGg/EVlDhgnnzSk1sghf+E+1ry5TG3+JwuOXq7bNLWCRC4+AmfCixkxr8CWH
         gZawE2dZRfvraNHI+WgsBjEtK1ya0GJacmLv6641MrsE19Z7yvzfN5e0ziZ/Cm0Nhu4r
         +4a5GpCJ7Zyxe+xOmdUPQTb/wHAWKLehfd693a9Z/+Ih11zhCeSxEOuHodF5q0Lr05De
         gOQVJa3ZEG0lpfBX6mtvPPhiLhNR9Zv35fVOBQ+8VgR1dIZXqppkiNOqmp+rorJtxAp5
         Apgg==
X-Gm-Message-State: AOAM531ItOiWpkQY1Dfimc7lEcZ2/M3V6uREm4Y9+mI7zSax7j6B818q
	Ky+N51JhQ3H5l9D1k3LnbLQ=
X-Google-Smtp-Source: ABdhPJwdmXhOL+sqXi5qftLHSDIaIxSdaFbVlp6LF5g3pgiMNvWuSZIQo0hI+9TEZbW51ihJjiCxjQ==
X-Received: by 2002:ac2:51c3:: with SMTP id u3mr19580802lfm.298.1624904454830;
        Mon, 28 Jun 2021 11:20:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:865a:: with SMTP id i26ls1531222ljj.1.gmail; Mon, 28 Jun
 2021 11:20:53 -0700 (PDT)
X-Received: by 2002:a2e:6d12:: with SMTP id i18mr572004ljc.88.1624904453759;
        Mon, 28 Jun 2021 11:20:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624904453; cv=none;
        d=google.com; s=arc-20160816;
        b=heXWT180NX1K/Iu2VwfMp1REVzmx/HR/wYMTCfDfqYa69cIN6bRgtfsyVo3Q5S18EQ
         gK4I0hQJk3kOyIhv3V5i4vPAykfUbr1WipHRjsepZ6fdfvG2uGQ1J0k3bIabrUo5whcZ
         3nFbSRvhWYZUrtCpP4dYovTqzP0BOSLw5Sdk71d4f80X6dPjQitzdH41R96n0nfoUJ8a
         W3JgmHBzA70rNL654eO5nJ+oWByo7UMC24v1K5JlH5T2UNXrUwFdGBT5ze+E4ijxi5YP
         6xchRihOTeEuLeOtoSOShHBKBjL+Nbhjo+wGstvGjz1dInwFZQ0pKhpDPgGC5lhQGrQ+
         j7WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=beso7VBAe7MQCcx243Y/tF0q9TE4lE7EjU8nTpd7jTs=;
        b=qjjceGJSiVkg6fR7TST0s8848tijglReeSmXOaWpPLOyY2kHTKvcvJYx4H/NDDQ8Fy
         wdqj7hSo0iWUl9kzpQ4j+J7WZmaJV2YeFqsuKuAJR/cx1glcgXC7igY90U8wxLAqiQM3
         DG18fPOe3Q+0amTBhYvDqZhnYqeUdsGwnSJiM9oqNUbQv2ztfemPpKcHpoAFVeUSwxKW
         3L5yqC++I5mrh/GRKFLMMS0q4NCNZiCxOPTvT5Hd7CFWgLfgevOWOB/d3UM63EFGYURQ
         EcSDAVSZC54MTVgHIXl0c2Usy13uA3/80Y00yZFz8Ora1XE/MLKq+PkjFHbE627N5mYy
         rLgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=INpVfpbH;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id q8si809868ljg.4.2021.06.28.11.20.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 11:20:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id a18so12058529lfs.10
        for <clang-built-linux@googlegroups.com>; Mon, 28 Jun 2021 11:20:53 -0700 (PDT)
X-Received: by 2002:ac2:4438:: with SMTP id w24mr20583194lfl.73.1624904453291;
 Mon, 28 Jun 2021 11:20:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210622183858.2962637-1-ndesaulniers@google.com>
 <20210622201822.ayavok3d2fw3u2pl@google.com> <CAKwvOdki=HZh4TYwqwDSo4BWtbGHp6pM_2akA+D3K8JO+dMGoQ@mail.gmail.com>
In-Reply-To: <CAKwvOdki=HZh4TYwqwDSo4BWtbGHp6pM_2akA+D3K8JO+dMGoQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Jun 2021 11:20:41 -0700
Message-ID: <CAKwvOdnyzRk75+P1Uc=hs8e2aL3oMSDvjy-JeYwXwJwd_G7JRw@mail.gmail.com>
Subject: Re: [PATCH] kallsyms: strip LTO suffixes from static functions
To: Fangrui Song <maskray@google.com>
Cc: Kees Cook <keescook@chromium.org>, "KE . LI" <like1@oppo.com>, 
	Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Miroslav Benes <mbenes@suse.cz>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Stephen Boyd <swboyd@chromium.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Joe Perches <joe@perches.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=INpVfpbH;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Mon, Jun 28, 2021 at 10:54 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Jun 22, 2021 at 1:18 PM Fangrui Song <maskray@google.com> wrote:
> >
> > On 2021-06-22, 'Nick Desaulniers' via Clang Built Linux wrote:
> > >+/*
> > >+ * LLVM mangles static functions for full LTO so that two static functions with
> > >+ * the same identifier do not collide when all code is combined into one
> > >+ * module. The scheme used converts references to foo into
> > >+ * foo.llvm.974640843467629774, for example. This can break hooking of static
> > >+ * functions with kprobes.
> > >+ */
> >
> > The comment should say ThinLTO instead.
> >
> > The .llvm.123 suffix is for global scope promotion for local linkage
> > symbols. The scheme is ThinLTO specific. This ensures that a local
>
> Oh, boy. Indeed.  I had identified the mangling coming from
> getGlobalNameForLocal(), but looking at the call chain now I see:
>
> FunctionImportGlobalProcessing::processGlobalForThinLTO()
> -> FunctionImportGlobalProcessing::getPromotedName()
>   -> ModuleSummaryIndex::getGlobalNameForLocal()
>
> I'm not sure then how I figured it was specific to full LTO.
>
> Android recently switched from thin LTO to full LTO, which is what I
> assumed was the cause of the bug report. Rereading our internal bug
> report, it was tested against a prior version that did the symbol
> truncation for thinLTO. I then assumed this was full LTO specific for
> whatever reason, and modified the patch to only apply to full LTO.  I
> see via the above call chain that this patch is not correct.  Let me
> send my original patch as a v2. b/189560201 if you're interested.

I can even see the .llvm.<number> symbol names via `llvm-nm` on
vmlinux for thinLTO builds. No such symbols exist for full LTO.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnyzRk75%2BP1Uc%3Dhs8e2aL3oMSDvjy-JeYwXwJwd_G7JRw%40mail.gmail.com.
