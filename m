Return-Path: <clang-built-linux+bncBC2ORX645YPRBAMTZ73QKGQEO5UWIVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9CD207ECC
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:45:39 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id j43sf2447266pje.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:45:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593035138; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rdp8H8obN41GUXYqH/WfatRJ/TD7aeJyo6TNIAXpeYmZB16WDkl2Nw1UwuwhLgfOO8
         5YUB9eze/l6LLH/xsl0PWeWHQkPDUAq9lUGItM/nfT0kPnuAVqGI55BKWs7UZBkpi3XY
         Xjyxwp0nDPzNjs+RhJfxhzqz6nbrhE6ido/pzCZtyqzbPx7lwpDLAhX3eNdd31HQW8qD
         37ZZiBLhbM9i39xpd5cvjBP9ywGaSh5SNTc8J0MT0xV6aUP9EiOEUgE/lFxZ/rCvJhIL
         4BOClXLXRUkBCgfHmL/hdeD8wGFMHHtl010lXryrv0qcFxVa5xp2r/3by6+Y2rHDV6kZ
         h69Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=BdFThFOWaq5GJ3sMgd4h1nljt1nWfM4KtObe07GDzUI=;
        b=kHP3bpv2Vjf/3ZmuJlEJE8PQE3MNZGnys9id8H31GPyO39LH694gg31D0YcSVPI8Z+
         noPgA11sG6e7aBa8q4CPzCiAG9nC3nJCoMrKTlimQw9jybfvm0ioij7WTkFZTNwdxLdZ
         uf04AL4/Jhxd1X0dUYkYER9bK1Ap76sv/kyWF+chaVjbZp1P/90UBr7SUwspqDo7dABt
         9Smu+7mEb33VwRNXqVOvtT8TB7jprUAGa4VMzzOY0WYvdvhxh3QS9zMgh1Ssj0DU8reR
         i5guUpgCxLl9Lj/DW6JLrXGcz65KhBnwQ7rRHS7fXsbn6gMBZ4kzD8xTmixM5Vi50zcN
         0a2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kAzFiuub;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BdFThFOWaq5GJ3sMgd4h1nljt1nWfM4KtObe07GDzUI=;
        b=nHzBTdHpZhrn9lggk2aqMMZE3aacTJDXj+JCePbmN9B2OK4vK89mw5ML6DeqZCwjm1
         KZmhGaOZwQNqScYZ6lBezrr2uhlKnNm9j1vEKi/1pC1Pnp48Y3W3FGhg6cUw9f3fkIUC
         83oGTWNMwNy6kEGuvA0YrLDwNMLvSk4VWzBeebfJLiS7zXCtP8CHS8Zp1kH7ZT94C4hs
         D65IxqXnapYP3ZnF6xsYMpRUr8EFK7WLy1d33zJ8kglEaLpYTb1NqvHwQSSRdcuAxtVi
         f3la5xyN1CVWEXdqpeQxKOT2HeKtzgw/2hDwrDCKs5i1A7gTr+bKru4q1UIC4nDC2zwp
         LoUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BdFThFOWaq5GJ3sMgd4h1nljt1nWfM4KtObe07GDzUI=;
        b=KLT49CRxP3XYOJT6rImAF/Xyi8QJ1oO3pXV9GMvwy+w8ZHpFBvpxkoOnXrVPsUl3/g
         7inmSsnRt083eAw048FeSwD1IvrUvhmtlh9ye7zvKx3cZW5nsQ2GclaF8fSeK1S8CXib
         FCAvl4Y5Jr0BCttD643T5Tk7M7F/vHmKkmRNIXZoa49UnvSuX3ZI8IISAv1+Hfvz7CU+
         HeUHm5fqkZ3VY1cgD0zr5pEammTa7sqG8RQMGV2bVcFx3tM1RhYbmdWsTvJF63arKLow
         VE9KqoCxxytLghBppvFXMCRlbdJVn0dBN06gNqfJ8/t/R52zdXlAD4cNt3FDEAk33H+R
         vYUg==
X-Gm-Message-State: AOAM5300vanibO4Gn4iZsUun+Sf9ZucZaoCwpzzXLEdpnk445GiOKPa+
	EaNJf4UEKoWFwJWGnMts2Ww=
X-Google-Smtp-Source: ABdhPJwzRtYBXtq5TN0iqwi62npaPTf8dpX8zNmOATl0wDL6XU7BJgf5u/eHtmyLzbcflhb25DsMcQ==
X-Received: by 2002:a63:d918:: with SMTP id r24mr23869453pgg.119.1593035137940;
        Wed, 24 Jun 2020 14:45:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:565:: with SMTP id 92ls1387046plf.2.gmail; Wed, 24
 Jun 2020 14:45:37 -0700 (PDT)
X-Received: by 2002:a17:902:b906:: with SMTP id bf6mr10277039plb.323.1593035137490;
        Wed, 24 Jun 2020 14:45:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593035137; cv=none;
        d=google.com; s=arc-20160816;
        b=hZrpcIxO49Fp2SkM5Q1+v8N2ULxmK1/I6xGJA7Kvm3YIPkeCbJ5PVdwr/hV3WelkB6
         Lz54FER8QblEKRYKsjOrNbI8bymkKozG2tyg7HqazZgnzgaal44VYtkmPUrHjFtbi4jZ
         9txcyuuMpS9GtEP6TdvKoifCaCJ/KmR/wk1sUNjE0xFZhQhQmJQLUhmFZeYjrveUVimJ
         vAs3+UDU676Y5W/Xi3HqGR9bjHZH5B6V8XDvN2ARK0GuqEt41gHEgo+mMEu8EO8WJ4VP
         pWEwJ1gHEhRAE9E9t+QlIAhjlaZmUb2csTyngm1vpDKH+E+zFDUpcGxrhgEHVFVPtStc
         F7/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2I1W9/xF2d1Vj6fXUSW50a6lcRysW14cejGyX/KQrUE=;
        b=Q19abm8fztKJgu6Xb9uAFx603kGKm7Bbl7gniNVQoLZURQ79Vuql9vH9+ICJYRdRqZ
         uJMHsOhXt/7cC8xvGk5CQC7YskLANGKp5RzFVBoH5OWVH7/2iAMmcA4hg+6By6qnqJ5f
         53mZkGyY3kRHovrRWntsUEB/1trUQCMxWoEn5tBZunxhhnkD1kHNjFOKJLyaYxCmIajD
         mbCNCfhc76LUteV3KV/Wp0EkPbjd4dWKvMm7ijVGVjOqBcrRSr2B9M3uHuoXptu75QBx
         PAKBLX7nM/nHOWOUjyGgeudHSLE0YMxz56jiiaMygQxeUGLvLOoN0lnDXbYBPmydf09r
         5eZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kAzFiuub;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id j3si267624pjy.1.2020.06.24.14.45.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 14:45:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id u8so1778419pje.4
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 14:45:37 -0700 (PDT)
X-Received: by 2002:a17:90b:916:: with SMTP id bo22mr7503001pjb.100.1593035136962;
        Wed, 24 Jun 2020 14:45:36 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id x1sm20175037pfn.76.2020.06.24.14.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 14:45:36 -0700 (PDT)
Date: Wed, 24 Jun 2020 14:45:30 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH 04/22] kbuild: lto: fix recordmcount
Message-ID: <20200624214530.GA120457@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com>
 <20200624212737.GV4817@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624212737.GV4817@hirez.programming.kicks-ass.net>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kAzFiuub;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Wed, Jun 24, 2020 at 11:27:37PM +0200, Peter Zijlstra wrote:
> On Wed, Jun 24, 2020 at 01:31:42PM -0700, Sami Tolvanen wrote:
> > With LTO, LLVM bitcode won't be compiled into native code until
> > modpost_link. This change postpones calls to recordmcount until after
> > this step.
> > 
> > In order to exclude specific functions from inspection, we add a new
> > code section .text..nomcount, which we tell recordmcount to ignore, and
> > a __nomcount attribute for moving functions to this section.
> 
> I'm confused, you only add this to functions in ftrace itself, which is
> compiled with:
> 
>  KBUILD_CFLAGS = $(subst $(CC_FLAGS_FTRACE),,$(ORIG_CFLAGS))
> 
> and so should not have mcount/fentry sites anyway. So what's the point
> of ignoring them further?
> 
> This Changelog does not explain.

Normally, recordmcount ignores each ftrace.o file, but since we are
running it on vmlinux.o, we need another way to stop it from looking
at references to mcount/fentry that are not calls. Here's a comment
from recordmcount.c:

  /*
   * The file kernel/trace/ftrace.o references the mcount
   * function but does not call it. Since ftrace.o should
   * not be traced anyway, we just skip it.
   */

But I agree, the commit message could use more defails. Also +Steven
for thoughts about this approach.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624214530.GA120457%40google.com.
