Return-Path: <clang-built-linux+bncBC2ORX645YPRBOEMZ73QKGQECZD6HQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7ED207E93
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:31:37 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id x7sf2456141oif.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:31:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593034296; cv=pass;
        d=google.com; s=arc-20160816;
        b=0XcKHOGWLFCtnC/z7HLyZWGBmjoqdjvhV4yp7q2iRn/1vyHwcenGOax70QPxoeSBKq
         2H4j6WL9L7l7KJQE3S2gOcNY4hiaILTdp70MwFRULuLgi2ybNrdBcbk4TMHwaqiab7Vt
         Pk51/7CvINtjW6YsLU+9Mzm5h+ITQlfJPgmY+n556Sy1uIyAqTaKTbbjzDHkqQDpeb1E
         xd+f0fd6WrxREkmSxdzP+q8mqFEDKnE7bOB7kjdDlHX9OkSDXhqD+7dGf/KG/ep6R93+
         FKUejLgq12DXQMWP/xqgniSBvmzcGdJ+aWSs57j5EizT+kUZktPG6X7d1s6oWJAw4h8Q
         KocQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=02BfR29ypf6P95NQ3mV1JipFyJvsvK9Yc5QiVfudayE=;
        b=ilSS2mPmhCwyZbtdjBrjUOrOnl8r9EiLewu+efsjOY0PyW0AjKlARp0U2538W4ehhR
         FvoYeqbktGEwreRMxotdHJr0QOKOSpGNGoymfs87id/M0g4TA6r3tiHC62JvdKHIkW1N
         Z0lz3OTogGnKk42O3ej+v56nP5r3AASrMCYsPgivYpfbVg6y94xwhBXlRYn1czgQ0rJp
         lM+8f4UetCY+cOyR5DKHNp31swr+qvQzWel07fVt9PaV6GS+vpDcF21cCjOkSGeU2nku
         nCv7oZGws+hAm8UN9GFhJz5E+Nnqic4awVN2zv+KKVW4tgZr2skxDo9GvKFjQRyQXpeC
         KrRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=km0rbdas;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=02BfR29ypf6P95NQ3mV1JipFyJvsvK9Yc5QiVfudayE=;
        b=PKQjzAoyCaaFMkhfoPpvSSLVL32ZDmgGjGdaF6gAwy6CmAs79SMi1smaVYOFi3XHst
         xBZuNZhi0UUg2lIrHs7ypErDyvyu4fJjRxhF6v0kUyutpMhiiEnYYHGtkG8w3oAzQU19
         e8/Ptlg/KFGo8650Ysobf6r7k/rlNX8EmHWRh83JTqpLu9jdQMs71IyTuIRHPYLupqBm
         AydHMehq4vBD+xwSCIQbSUjg58u5BWT/7i40j9jaWQ8VfyQQq52P8Q0nDu4ppdLObSAk
         4BZ5n5YWMatDaI6I8VIFpTU4Y3jfNO2wp6Yp9u+yCEnn73x3x2KEnOX0UtO3tEUAB7cK
         gWOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=02BfR29ypf6P95NQ3mV1JipFyJvsvK9Yc5QiVfudayE=;
        b=l4NeWYZjuOVsG6Ap7p3NulIDx5/1KDYJcbpXCJXpVnp0adGdka3+GLT0RPglVBVALc
         NzvPY5KoXSu7EUOCZgB5hXVQPF0/zWuMTvCIoypshlzoeoPN6hahuGYO6aUEr3pxfkXI
         MTeEzqg2c4VXh6hiPxLHHgOoUQ+JxV79IqS95iTcT5KuuTya0hzqZyDMXcXSwcl35fqQ
         tnbw85z3B9nqVvShZQS5Anl0k21lZj6DgiKj0FyPEy749+G3GlCsB7G0WEnz1xHisfqK
         latVCEXBZbj+5v7RPHCsoE73gDL3iM5SSV7PHK0ewhAF17e5cuKM/LsWWW3bQjqMKPl8
         vfNA==
X-Gm-Message-State: AOAM532Esr/wpkd1nOodTuGD0DQbl3LA3ujuYpNj6YPnKAgPdbsKXE1P
	DWrTeA9ueO7NGWvD3D8fAow=
X-Google-Smtp-Source: ABdhPJxQu1x2qRKoPV6pNrOO7kJPMGmNsBKFZ/lwDWDoirOefyZNFKdC8eWKTusLUnan+YhjaWSM1w==
X-Received: by 2002:a4a:9b88:: with SMTP id x8mr25098545ooj.78.1593034296212;
        Wed, 24 Jun 2020 14:31:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:a401:: with SMTP id v1ls210515ool.8.gmail; Wed, 24 Jun
 2020 14:31:35 -0700 (PDT)
X-Received: by 2002:a4a:98c7:: with SMTP id b7mr24757967ooj.42.1593034295888;
        Wed, 24 Jun 2020 14:31:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593034295; cv=none;
        d=google.com; s=arc-20160816;
        b=dgrq3SLg92uCJiP91lXkrcnNywmrhkQWg+x5uDU4BQt6w+tlhiPkJT3DXpxBPmxEBS
         wVGesra92RWfxy+PfUSwuONoEHIUOLcy1aS//Lg+MyTnJXHmL+2+0BwpQNCC51uvUcCl
         Pj6YQ+Rl0QNfd9e328WuMUSJsitxO2mrDW2GzQkIMlbO0xGrFKCsQfvkI0SVT4C6dUq/
         MbsLHRDOqAjEhDcRfX+X9Mmjg9mhIbI9XPFDtVPCKJecuBQrueP8tlMdUgjQpDdKfzqw
         5+bilo9EXz3mcunyM+g2f929LiCnsHULsqSBwnjxOXpPxqMvNh2TVklInbdUL0E+Vt8N
         PISA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/O3ShsYHI31KeAbcJImqBKhK7RmR1YrkXinaLdbS2cc=;
        b=qsQA4mfMbvF5Hbj+wZaU3fYsSGTVoJuA8S2u4FVt4WviDyd+i0NzNu23B4pneU/AwW
         0YTSzT0xQ2phOkKv4Afkv07Iu7Cx7kpQM0YRV0svjVxJV9NNVnYgzZX/LMLnWiPR+itU
         /2CodyDDHQfiVzgn4RXMZSNxwBYMlX+kCU3SjrLYyfPlmLtgX/fCxinT1QOPGfLpzb1P
         YOuxJHVz/uxq3oX4621uoDc57yuYpNKSPRtm+JNxwAqGXToD0bF3rxidbhP8UC/8GKjY
         S+0CLDE91pcfX2Q/d4HIcUiiKcjfFJ7m3nDAPNyzd2TMmRD1GnrFQbia6VEMk0RHGzHj
         molw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=km0rbdas;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id l9si1171297oig.0.2020.06.24.14.31.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 14:31:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id u8so1758737pje.4
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 14:31:35 -0700 (PDT)
X-Received: by 2002:a17:90a:4ecb:: with SMTP id v11mr29922206pjl.75.1593034294906;
        Wed, 24 Jun 2020 14:31:34 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id a12sm21064814pfr.44.2020.06.24.14.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 14:31:34 -0700 (PDT)
Date: Wed, 24 Jun 2020 14:31:29 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Subject: Re: [PATCH 07/22] kbuild: lto: merge module sections
Message-ID: <20200624213129.GC26253@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-8-samitolvanen@google.com>
 <CAKwvOdkY2M9+BgA5FELK+7bjv1sZYMuTmVOztCYijas_OHfVDQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkY2M9+BgA5FELK+7bjv1sZYMuTmVOztCYijas_OHfVDQ@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=km0rbdas;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1044
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

On Wed, Jun 24, 2020 at 02:01:59PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Wed, Jun 24, 2020 at 1:33 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > LLD always splits sections with LTO, which increases module sizes. This
> > change adds a linker script that merges the split sections in the final
> > module and discards the .eh_frame section that LLD may generate.
> 
> For discarding .eh_frame, Kees is currently fighting with a series
> that I would really like to see land that enables warnings on orphan
> section placement.  I don't see any new flags to inhibit .eh_frame
> generation, or discard it in the linker script, so I'd expect it to be
> treated as an orphan section and kept.  Was that missed, or should
> that be removed from the commit message?

It should be removed from the commit message, thanks for pointing it
out.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624213129.GC26253%40google.com.
