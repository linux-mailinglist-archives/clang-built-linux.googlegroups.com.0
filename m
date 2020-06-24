Return-Path: <clang-built-linux+bncBC2ORX645YPRBJMWZ73QKGQEKPDTTKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id F044D207EEB
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:52:38 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id a9sf2400189plp.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:52:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593035557; cv=pass;
        d=google.com; s=arc-20160816;
        b=DLsk+H2YOQgAIzEKlOOp46TkuNK4Y/g8pUqBEaHY2mvZwyzGCdG/2Y8nf4Jd+MI1fY
         bZOUbEi3smUPCObH7w0YpkN5DsG5G9sbmmCciz5IbIeypurPVyL4C2SshQC7H8+Yfwsm
         0I7n/b7I6pwbl9oWJIH3zUokEZ/GIEtXm0fh0r3o/xOX5RbhwkxiN6isN8HowItIyQAd
         zV7ZDUyDBfLDN6xGfSR0GplywiCUfNjuxacNo4I1SX6UfqLfNDp5d4pK2AJiu6Zd46wI
         9IiO4hsqI+14paNRSCrhnF+l7N+o9BR7LMp4UyUQAWv3saMSczRNKXuBjzhVi/OIfbMO
         o+BA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=wjZBh7F2NcS8bK22uzo0zKEUjGaDq7CsowylP6SsPAM=;
        b=lrRqFKGm06Qy3n0t41aUHtbip4tlQjoPwPaQbaBZeI6MAcAR+j9jX6dbKGRQ3x5SGN
         Y+ijt9TH42NawZDgluT1roxLV3wCu5Qjvl6uinfhA3qPUHcWhIXRoHu3h8tyss0txUOk
         p6haCKToa5yv/CsdyKiNmX8ojnPzlopo5q2Nbu46AjqnQbXf0LOB/3SGdgrANxB8Peo2
         ILxaypKvzoFTvIqS02uKpw6UsLNiIlYNKROiZaGo/SJRY/DjmGfgmEjqY1SL91Z7orIf
         X9eesHxukwe9DI8SZGaqYssd9+TW10DhZl3O06hUQCXJeGQ97qKFfCEVIKS9abWAlXpH
         Bodg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gkQ03mH+;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=wjZBh7F2NcS8bK22uzo0zKEUjGaDq7CsowylP6SsPAM=;
        b=LeMbr92rHs4JxHr5GAC0ueJ6w0ejNuP5WPeGr1t2ud1GhAE7jTjrdA5tBlsobTJnIS
         qO5WWavgcWC9ncgaxKrC3cazKePdeZlUN95YQ+o+T5Q4+axyHwMqT428Ho5wRm9mhtO4
         ZNKjz2FWjThRrZ4mIGJx/GQ8agjwrUm22UWuCFAseZvu0MH0Zc9lF49TKMFlOH0yeLmg
         kZoBajh6BzKC10NIZ2n+Zer8O0ELe5EGbUVjJxwyKOlr+RGdDIPNl5by5ppdJCE0krU/
         o3UncesHhy3y6f8cqbGKRa1f1bDDycf+x+m9Qs08tDZcBlsIpZJ4UmLZBAYo+OnNmFPj
         t6VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wjZBh7F2NcS8bK22uzo0zKEUjGaDq7CsowylP6SsPAM=;
        b=te75++mIiIGc+0wk51AoN1oPLWN5aSHTdfCqMwj161xd4tIe93Utgy6K7xOT4+AaqM
         wq/aDiwg5gO9xiA71RTRPCqxG4BH5X4h3Bmz1X+rAUXgMWc2Xp+T1EMMtA+ADiynLc8V
         MjprZwc9CU045wDgebIO8PQY91vQuF5ejTg12YMFvkB+WOwDW71EhY4XLy+8flURcwpt
         xGKAZpa6eePzvAxCHLb7TDMpCVzW2sYuahAiaPRCpSxcLfcNkqDWxJ3OyW3rxulBIbWV
         cqfEH3M0hJ8FIR5by+RZmQs/dmayBHQCHVMOQWgPeMXW6B7JPfowrWOrvlqUZoYdK+3l
         +L1A==
X-Gm-Message-State: AOAM530uoIPwdrWDhpcO+s+NrILknZe0GglZEmyeM96li9BjkXqlW28i
	+UhRCMKl/sSZcIfiEiGc4Mg=
X-Google-Smtp-Source: ABdhPJz4ZTZfQrDcHtkvSnEyx2q3eewXb3tUnH3w/B/EoI8fULCePrT3HfqfjsIStpgTmU6LZe1acA==
X-Received: by 2002:a63:f1a:: with SMTP id e26mr24216916pgl.80.1593035557679;
        Wed, 24 Jun 2020 14:52:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:104a:: with SMTP id gq10ls1455930pjb.0.canary-gmail;
 Wed, 24 Jun 2020 14:52:37 -0700 (PDT)
X-Received: by 2002:a17:902:9b93:: with SMTP id y19mr8620386plp.241.1593035557194;
        Wed, 24 Jun 2020 14:52:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593035557; cv=none;
        d=google.com; s=arc-20160816;
        b=Y/Y0b39vNmbCD+xo/Z2A7p5Oxm4dWYNhqAvDYTUdvAzSkuFg0kyaCaPb+oBGoU2rRU
         9tT1bN7mea8M2+ab+P/9ImA06hCIsdkXrAxglgjCyBnm7ISUf3DGlNPb7KSD3lFpqfDh
         dNDsJ6EeBziN5RajN6/78RMwe0XuEfmgiJLtT+LFrABkkxeKBdQDsT1jOe2b4QHnTJ2D
         WTFMO9aWZ8F/Wq/PoIgNzdJ7HKYWn6mL1vcXBKfJOolEoCQJSUMEvCd001fe+zDj44uL
         gJE7LOG84QBR7zr5P1lfe5JS7ZsUsHzkIfobvzMJTSSwL8zPrmzjacU/vTjqQ6+eceF0
         JGHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ZlZyjdUHfTmn42OuhaukPgD3qQeRnM/SwkQPWmFMjno=;
        b=vPdGggg8El8Ajzfv8m7ZEV8VGNeMURbGtUCcfN46osEneaRBFTuzcuoY8kUhQwjWHZ
         Aw+nrYXH8LInxgNXXOHVe4EV9YoASl0rZ4IYFgoueAQn3dKNbx81vQYRobk/j2+uXVye
         K4ZQCM56i/OxFr9LCteYDgrsMkhBGD0MNeUInotWxLo5k304HXpP70z7iU8UTeek2G43
         Jh8n/S7+1ohlyaVXCm7QB7UmGge9HxHxhbswKRvmQcRtFVOKrU8pZn23TvK7F7pKBng/
         yvgZt0b+vwJ7XN3JEkTHXxX6mu2NZWynmN7UxyPz0o1kXh43BR9iOb/85u7iQY072x2c
         ZyQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gkQ03mH+;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id kb2si252738pjb.1.2020.06.24.14.52.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 14:52:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id j4so1695932plk.3
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 14:52:37 -0700 (PDT)
X-Received: by 2002:a17:90a:dc16:: with SMTP id i22mr30660369pjv.84.1593035556605;
        Wed, 24 Jun 2020 14:52:36 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id 2sm6487093pfa.110.2020.06.24.14.52.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 14:52:35 -0700 (PDT)
Date: Wed, 24 Jun 2020 14:52:31 -0700
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
Subject: Re: [PATCH 17/22] arm64: vdso: disable LTO
Message-ID: <20200624215231.GC120457@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-18-samitolvanen@google.com>
 <CAKwvOdnEbCfYZ9o=OF51oswyqDvN4iP-9syWUDhxfueq4q0xcw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnEbCfYZ9o=OF51oswyqDvN4iP-9syWUDhxfueq4q0xcw@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gkQ03mH+;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644
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

On Wed, Jun 24, 2020 at 01:58:57PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Wed, Jun 24, 2020 at 1:33 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > Filter out CC_FLAGS_LTO for the vDSO.
> 
> Just curious about this patch (and the following one for x86's vdso),
> do you happen to recall specifically what the issues with the vdso's
> are?

I recall the compiler optimizing away functions at some point, but as
LTO is not really needed in the vDSO, it's just easiest to disable it
there.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624215231.GC120457%40google.com.
