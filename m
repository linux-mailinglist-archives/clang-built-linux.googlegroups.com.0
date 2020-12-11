Return-Path: <clang-built-linux+bncBC2ORX645YPRBM4WZ77AKGQEL2CDKOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7262D7F7D
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 20:40:36 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id y3sf4924095oom.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 11:40:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607715635; cv=pass;
        d=google.com; s=arc-20160816;
        b=dU9wFRAXZyAzyn/a/CtA82eayZ/CHQqFdr16iSCIoHdImq8hjFD2NiDaaYGvKoi8ay
         dEAggt5dUK9C+XHQuK0QEO327TuIZiViWxuWOooa4xIZv3WscGsGzOK5doCsc4ApfmkL
         l5+ewAQrxmsyNPE86UPddE2Axe4mo+0LtSoDExdQA/ZEKenyB5BHs3aVjWV3bt2P3fUN
         mLHniGd0oA5fwIGGuWDFMsqicT4kLLsDs8GybvFnLpW+YZaAbnV33N5F2dw8ZJzqKV/v
         bHKTARwzeUp6FacCBLoc2XK8NNjLZJodQDm6e5atxQg3ZRuW3Ys74Nw9s+B+kpDKp0/w
         iQyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jf5J5XVgd21s/xpKkxd8f5nhiBXjQOxQ2b3MoC252yo=;
        b=WBjLxU0TjNXQM6P5ICtnh2L53fsOKY+vT9YGWsrQGpT3weOYZjOAGzwsvrKy8Ifgzf
         2rdBD+fAvOn7u+ljTsyrY16+KPZO/tZYkX6ZJCwSjobtVDyHOWgeZ3tM4qKHTTQa9Y2t
         q0TQPnhyt000Lys3bBlq+V8CGBioWW7L7WgVH2EcdbHb0tKJHaw79TNbk6mIc1DtGEjn
         uJH9XkTtaOFmvL66f0pohkr2+aqK5pJVsRAAyWGX9AxNgMajTZnYowlXM47fyTyDipUb
         /Z9MNbrzR20pRLRIeP8EC1VLBgwjy4cr4S4jKcS7y7REwqNEzxszVTuI27SFwJDBq8sf
         NY7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qsqg3dEZ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jf5J5XVgd21s/xpKkxd8f5nhiBXjQOxQ2b3MoC252yo=;
        b=pQHLFRgrRdgZVvXv6/rztO7zMSTe/3VRz6fbwGaja1x5XHlrZwuR8HNRGZkkApuhcG
         l8MCjZ5syTdh9ayjMCupFyGIXBwYSBBf+8MlRRtcpYZ1eiakdIQ52dbiy3jj1IkCqBs1
         IgTvb4PzH9kIJ2WEZOjzcFHHMHQBymB0+IlRcgvneZzLXMDJSetgi47lWfc5h9LeHScf
         tw11fr78yMWq8+741gRqaTzt2o5iUo+jMNmRpBkOQZoovc8jretir6c3sBASUP0KpXf/
         HhnJfPURB5mCsVflTzJjLpKp/M7QJu4QTmX1c08yrsXVW9h2Pt20y9UqS5y7sB/zzSFx
         lnww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jf5J5XVgd21s/xpKkxd8f5nhiBXjQOxQ2b3MoC252yo=;
        b=LRjZESBQRFSBE+/fgYFHlHswQtjHKCIZk0VFfWWnBhsx430kfkKzwnFU1mlIR4gg8N
         Zpj8rraUYN/aGDNa43o7Ww+Fa0T54lx65emOQKOeCQflUWErLZoN1JP7l0X3+K1GzNx1
         QX2Du0oi3NrtgVFle28RcdmZB/lpNPi+MMWQeRhNnOgHPoUrIigiIdwbGdSJYtkJtFoX
         qaZrFHZFQR/e4ZyT1MT8iQRVANlMPKX05LnylNUGTPOBcetLwzzs1RbEL7taX/un1t1b
         fDpQYtscbCPO4nQ19stDTpUzWtu1/jFv2O1hg5K2OIjD1DVEwyMMARu9Ots6Fa+QwcIT
         7tog==
X-Gm-Message-State: AOAM5335YgkJBEKmLJGffumCFrYCj24CAedzdOxQzjIeKXWR4B/IvxJs
	+3i+PQqsCSMHOiWksJVGqaU=
X-Google-Smtp-Source: ABdhPJyAWszfG/PYqQ8uArhVC2bJrLUrqzFTd/HYy17iWKbUO6Ha57ggsVkpX3WSgKe2Ugn7vGSKwA==
X-Received: by 2002:aca:4f97:: with SMTP id d145mr10389833oib.123.1607715635474;
        Fri, 11 Dec 2020 11:40:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:12f5:: with SMTP id g108ls1320888otg.2.gmail; Fri, 11
 Dec 2020 11:40:35 -0800 (PST)
X-Received: by 2002:a9d:798c:: with SMTP id h12mr10775848otm.234.1607715635062;
        Fri, 11 Dec 2020 11:40:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607715635; cv=none;
        d=google.com; s=arc-20160816;
        b=Z/tcTdMhZBA7L81URoOZorAL6V9Jx23mZavi7HlVldR/kWpNo18OfDSGoA52XChsVR
         O+wt/aM3unx6SS1x5eA913EncXIji6Gl9OdiYL0FoXIM5qIauyXxudV6VlmguV5RYlA+
         rh1uLdQcnJ+Sea9jv26wUJM7uZMoXcSVaVVn6GupIOwgrJnQ1lvZPDPSPnhEqpBZKHH+
         6wE1yxDOcruZq9j2qI8hRHei1Rl5xO04PgCbkj47W1tJ1WIsVLUAA5+a6aOgkCOtjRCK
         4vN/u4J9gf1/Djzv37XjDASaAlky2cqFXBKKsTSXKu3YtHVC5bp/Wou7U3aaLxMR6uxQ
         hYLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1nS5LJe0V9gmSV6AI/CjiJWRU085g+HSabHeZYnNbME=;
        b=X28KDi61eCVnqrbtd/xVYqU9WuuTZ2JWBCIONRhfWl9HCr/9Vtp2uTFHq1HLMtoSSu
         UrlUtehfqP/Rp76fSZN5PkGtMk7/nJqK46KTv/bwGwnDozu+PaLJVHnk0NEB472QaFLg
         OjPdiF8j4ziRQY1MrFzeTV5bupYWDHclyy22gTef1UKmIboSk/jzywJikp6FvpKLtSX4
         GUuJ/pBwzQJlOV1NoTA40ko3M0sNnFRcamKSrCDkU/eI+tKRmM/CEHF7IyYpMNTsfyhy
         eGTdmfefWB+/Dwbbcl6hrptflrmbOqMHPPVdc2sN8DhJ9IbaRhRLtoDj1uckp4CujFPT
         2z5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qsqg3dEZ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id w26si693883oih.1.2020.12.11.11.40.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 11:40:35 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id w18so5391698vsk.12
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 11:40:35 -0800 (PST)
X-Received: by 2002:a67:80c8:: with SMTP id b191mr15432571vsd.36.1607715634310;
 Fri, 11 Dec 2020 11:40:34 -0800 (PST)
MIME-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <20201211184633.3213045-7-samitolvanen@google.com> <202012111131.E41AFFCDB@keescook>
In-Reply-To: <202012111131.E41AFFCDB@keescook>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 11 Dec 2020 11:40:23 -0800
Message-ID: <CABCJKueCJhwRL1T1k6EYpUy_-Rj85K98iz5FO6K+dZLY25z8_Q@mail.gmail.com>
Subject: Re: [PATCH v9 06/16] kbuild: lto: add a default list of used symbols
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qsqg3dEZ;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42
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

On Fri, Dec 11, 2020 at 11:32 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Dec 11, 2020 at 10:46:23AM -0800, Sami Tolvanen wrote:
> > With CONFIG_LTO_CLANG, LLVM bitcode has not yet been compiled into a
> > binary when the .mod files are generated, which means they don't yet
> > contain references to certain symbols that will be present in the final
> > binaries. This includes intrinsic functions, such as memcpy, memmove,
> > and memset [1], and stack protector symbols [2]. This change adds a
> > default symbol list to use with CONFIG_TRIM_UNUSED_KSYMS when Clang's
> > LTO is used.
> >
> > [1] https://llvm.org/docs/LangRef.html#standard-c-c-library-intrinsics
> > [2] https://llvm.org/docs/LangRef.html#llvm-stackprotector-intrinsic
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
>
> Reviewed-by: Kees Cook <keescook@chromium.org>
>
> > ---
> >  init/Kconfig                | 1 +
> >  scripts/lto-used-symbollist | 5 +++++
> >  2 files changed, 6 insertions(+)
> >  create mode 100644 scripts/lto-used-symbollist
> >
> > diff --git a/init/Kconfig b/init/Kconfig
> > index 0872a5a2e759..e88c919c1bf1 100644
> > --- a/init/Kconfig
> > +++ b/init/Kconfig
> > @@ -2297,6 +2297,7 @@ config TRIM_UNUSED_KSYMS
> >  config UNUSED_KSYMS_WHITELIST
> >       string "Whitelist of symbols to keep in ksymtab"
> >       depends on TRIM_UNUSED_KSYMS
> > +     default "scripts/lto-used-symbollist" if LTO_CLANG
> >       help
> >         By default, all unused exported symbols will be un-exported from the
> >         build when TRIM_UNUSED_KSYMS is selected.
> > diff --git a/scripts/lto-used-symbollist b/scripts/lto-used-symbollist
> > new file mode 100644
> > index 000000000000..38e7bb9ebaae
> > --- /dev/null
> > +++ b/scripts/lto-used-symbollist
> > @@ -0,0 +1,5 @@
> > +memcpy
> > +memmove
> > +memset
> > +__stack_chk_fail
> > +__stack_chk_guard
> > --
> > 2.29.2.576.ga3fc446d84-goog
> >
>
> bikeshed: Should this filename use some kind of extension, like
> lto-user-symbols.txt or .list, to make it more human-friendly?

Sure, I can rename this in the next version. Does anyone have strong
opinions about the name and/or extension?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueCJhwRL1T1k6EYpUy_-Rj85K98iz5FO6K%2BdZLY25z8_Q%40mail.gmail.com.
