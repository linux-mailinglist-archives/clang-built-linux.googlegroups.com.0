Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBYNR3H3QKGQEPMQGQJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9004A20BA2E
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 22:21:54 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id y16sf6935263pfp.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 13:21:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593202913; cv=pass;
        d=google.com; s=arc-20160816;
        b=VpjyB7jUQWLtn1DMCp/XAHPcLJUDhWLqvz6TZlnvIl6FYm+6ihJmcEaLr6Ep+fuQoz
         qgXivEj1AAGebQjfarVUChyIpNJ2Xs/7KxdUBTwupSIJqW+bABFrK8cfcN7gm/kT8nkf
         BrsqyL96KcURxareQUXIrIdFzyfbFKJvVkTD+4gmMEcHTy5ok0tUNk8iyYgrhm88drHn
         tULnnvbK1zl0/XxWbnuGQE1cHzvrwjZAboFINYEBRzRx3aTqZR2B/5QeF/0voqXGY46O
         Xbm9mT9ecj3WBzt8lHyzJITs4qb/C85GpXS0rVZe7WIoHW2LUpxnrietu1FDGhYEWi5W
         IP6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rlcu73/6NpqNjd0S9/O8404H5vOlmjXIsukA0HrdCY0=;
        b=BCSBQQRoZ8icP5AwOxNLM01y0+BGlWy7rT2O4Ro4CcYkZu6f5xSzbGvaaMD2XdznnG
         2ljJ0/22cAaGGAQpznhtGR2Wc8CJ5hU4eS6b6FIoXWJEs0jZI/kpHV1ivtRtxlOBSus4
         dMvsJeP0fKhoJW6OKP6/rwqu/DzY70wQoWwDyDOD4PzAncc9OXpz/zz0vO4OpRIXZB/E
         HORP5bWKl37SlvUIIGcvQy8iAHjNFgk+RjcTveyREcAGwLQ9lmZ7Ph2xc3TsofV4nYyY
         SKfb710IOB9QN6mcmWbdjCfqhknqptlIFDwMP3h4f/ZWzIncRMmFH6dCkazAIIHWyvrM
         RjkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QypkpiSs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rlcu73/6NpqNjd0S9/O8404H5vOlmjXIsukA0HrdCY0=;
        b=CFw/tt4ll/tybvHsl5heTcg8FT5JEDDGX4QrQTDBkd2UdSYJLNe2t4/jLGF0WS3per
         C+09Q4J1zuQEUOol6MUOeR5vIAVuE/mE09uYkArW04LPPgEr8dOJN5gK4k+nv/SPNNQt
         Zmw6vrMTtax4lOSKFAH97gNn0Xjpk+rwv+3cb6t2AohSHCEeeURBrNHn6wriGwCTse5N
         GMBoLByJkQYMkaQJ8Z18QWVKFck0lORkKqlnVzQNtJKCRTVarU6/0HTDubLNmlfY3ECJ
         rgPpHM8rfRt55UVGIUhVx2Z2XVS7VUeZolTGMYvn0hjd7LX5wB6IL3byH1VTHzwb7cj1
         J8WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rlcu73/6NpqNjd0S9/O8404H5vOlmjXIsukA0HrdCY0=;
        b=CvAOrgJKITdbpfIRbbx6vUD8k9V1B2Ql1SOxNoKtxFR8LXDutC9EbGH4ww9eksPbsD
         2flJIOPT9qnldnViM5gnaMFUVyCxP7sZPhMF6YeWPr7HHq5PlqPdFsnJCfPhdE6ene+n
         Xj/9QlLd2bGyYzCY9KdyBreQlyUFZPaRVpxx2FYTb/rBifNSOdAt8J89oLXRXj5yaR/O
         8mCnrMQF8bukWC65zoXf4AkmK20phTFsBmFCuC4L8KkWcWJNOh9OzyTDkG2SYFQV7MiH
         7rN1zG2i0WpGOgIw59OkyUMs3Kgf0BGx/Va2z8vSJEKkpgdLAqj7oygUqUwulr3pG2lw
         BZ+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Kqs8XdcldvuLpjXdYreoSi6t3WFPs1zYkfOYTxBetI8vOCSZB
	3PqH+xTgK+NBxFTayXfyb2I=
X-Google-Smtp-Source: ABdhPJzBGxWJ4fCyKzfcKx6PYYf0amQl6TVA2tnwKT0+wkPGcXWg+KvqyYCwUpf1+UoGVeDV7xX7vQ==
X-Received: by 2002:aa7:9910:: with SMTP id z16mr4182883pff.53.1593202913291;
        Fri, 26 Jun 2020 13:21:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e59:: with SMTP id 25ls2797715pgo.9.gmail; Fri, 26 Jun
 2020 13:21:52 -0700 (PDT)
X-Received: by 2002:a63:be4e:: with SMTP id g14mr410715pgo.193.1593202912869;
        Fri, 26 Jun 2020 13:21:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593202912; cv=none;
        d=google.com; s=arc-20160816;
        b=aToN6ahI1U399QIzZdgMPcJU0zXL55NJ77JX93WhDCPiqCDa48YoVsaxjkkt9fBQRG
         Vms0a7/x+uG1OkI/NPzGX4z/h6cJKICqZSAaL+KnrzaOU8kRdRfp4/X0yQzg0TOD0ffG
         LY5PBtYmcNKNImfFI9S4uNdpOl8+UPY2mRoHqQMatHx8NBr2Itie83fw0gNwHtuiRcsr
         H8MScieaxYHS5T17DVuLd/EBGROZY0aafXJAHp+bYE9slbp4x0Jpaqbs6E+A38iCZeTB
         UW+4JyMDa4Hf5A6rInoLS9BMID5EBJt+eblf8WeJblJni3oCn7zhblzrKioYiS8Q9V6T
         17Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mCCNxLWvOEPbR1jlpJw8AgOuTdUdrqJ6GuWfi7uxTow=;
        b=d/hURKg9jJMANa49SNhaHXH4sgoPkGppE8q2ztHaHZINpggi/ehNUJ6ejeKMv84O5d
         NZpeCLNyZ1U1xFAUgB4M/3C3TTnAZKk6F6mxlp5S1OPsiZJOFMWn+nMnG83BkZQg2+3/
         zcImLWp6e0/hDqMYLPVnZvUHAR5QNNHXzPw/UtBQJGI5eG1565fFZ4el07zgNWZfoQc8
         +yNKdxXL7Da8R6i2ayG1ZoJtCgH4ilNQDiYeqQYOSepTiVXPB+LbGkVLUqakLffZ3vne
         QQQ2otj94hLiej+tjSK98hvNZPJSoEig5hR5HCDxPO4uk0WO/ZOcx++5lUMAyeDyzCXD
         06gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QypkpiSs;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id n68si1148191pgn.1.2020.06.26.13.21.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jun 2020 13:21:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id b5so5085609pfp.9
        for <clang-built-linux@googlegroups.com>; Fri, 26 Jun 2020 13:21:52 -0700 (PDT)
X-Received: by 2002:a63:1910:: with SMTP id z16mr441252pgl.50.1593202912639;
        Fri, 26 Jun 2020 13:21:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o8sm15798576pgb.23.2020.06.26.13.21.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2020 13:21:51 -0700 (PDT)
Date: Fri, 26 Jun 2020 13:21:51 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] kbuild: remove cc-option test of -fno-stack-protector
Message-ID: <202006261319.F130204@keescook>
References: <20200626185913.92890-1-masahiroy@kernel.org>
 <CAKwvOd=V_M43CP7G87K3TqSsxua2NcXPz6BnDt-z6167O2WAzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=V_M43CP7G87K3TqSsxua2NcXPz6BnDt-z6167O2WAzQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QypkpiSs;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Jun 26, 2020 at 01:13:20PM -0700, Nick Desaulniers wrote:
> On Fri, Jun 26, 2020 at 12:00 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > +++ b/Makefile
> > @@ -762,7 +762,7 @@ ifneq ($(CONFIG_FRAME_WARN),0)
> >  KBUILD_CFLAGS += -Wframe-larger-than=$(CONFIG_FRAME_WARN)
> >  endif
> >
> > -stackp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> > +stackp-flags-y                                    := -fno-stack-protector
> >  stackp-flags-$(CONFIG_STACKPROTECTOR)             := -fstack-protector
> >  stackp-flags-$(CONFIG_STACKPROTECTOR_STRONG)      := -fstack-protector-strong
> 
> So it looks like the previous behavior always added
> `-fno-stack-protector` (since CONFIG_CC_HAS_STACKPROTECTOR_NONE was
> always true), but then we append either `-fstack-protector` or
> `-fstack-protector-strong` based on configs.  While that's ok, and you
> patch doesn't change that behavior, and it's good to be explicit to
> set the stack protector or not...it seems weird to have
> `-fno-stack-protector -fstack-protector` in the command line flags.  I
> would prefer if we checked for not having CONFIG_STACKPROTECTOR or
> CONFIG_STACKPROTECTOR_STRONG before adding `-fno-stack-protector`.
> That doesn't have to be done in this patch, per se.

No, it would add only what was latest and most selected. (They're all
":=" assignments.) If CONFIG_STACKPROTECTOR_STRONG, only
-fstack-protector-strong is set. If only CONFIG_STACKPROTECTOR, only
-fstack-protector is set. Otherwise -fno-stack-protector.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006261319.F130204%40keescook.
