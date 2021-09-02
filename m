Return-Path: <clang-built-linux+bncBAABBB65YSEQMGQEFW25AAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD743FF490
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Sep 2021 22:05:29 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id 20-20020aca2814000000b002690d9b60aasf1496442oix.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Sep 2021 13:05:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630613127; cv=pass;
        d=google.com; s=arc-20160816;
        b=LlOTr4e6i6tdMEt/Kpoc1ISSvqJCSSCcUXYqyuiJw+/0Osyh6CyxhB2xhT73S5YQB/
         WFSiJMpED9wCxoR70EE2pr8YWR5Kzs6MEgCUIKGvz9X1KT4REA2W5mw5qImOeraXe3ZW
         lC1VTJl9s40Hqhy7+vXmLYOVWSzmiFR2Dmgp/JZbfoypNP4jtMUXQTbZvw/7FGe6Km93
         HFzOwSxAvXg0lYlufG1dO7wsqhi5JzydYccP26XKp34HFRNOfStFWLjNYjKrQKNcg08V
         /q+2hAncXqDmJHe/e2vDd9KJQfXvcKjc1aPRE/rFVrZNc29Ixh0KoxQd5MasuzWs9wkW
         qJFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:date:message-id:references
         :in-reply-to:from:subject:mime-version:sender:dkim-signature;
        bh=+pMecSNY6cHhtLHxzdfDJrc8xMOIHDuQ1Af4pua9aoY=;
        b=ka9rBAXenVqOlBHC5o4FuzZhQCpKrPdGjCrk/IXZJHMuQTzaeP6KqNbcZDkm4JZfgN
         stS9yg+a93BHkZgm57v360TM8WJ3cjGtF9Ag7D0v2bTHZQSU/CwS2wpvEzCiEZLJwqic
         aXy7Lya6+cmjx2Sc4g4JSQiFbAsAu0F/ouyGAjWKSmx55FGQl2ajGl9gSWsPQcVWe+b+
         sycTFiZyI4gMUYXCvCgUX+veHodaWfdTDZW6v4ePhLudcr362P/6Uj8FegX3X6ghgkvy
         crR4Wlrc3Ok/Hz4UUCkHN0bEnm5Gi6heDkb2FhNmY0hBX8xtTOKU9RLzLyQ13OaIx+RK
         3jSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=P2R+Co1c;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:subject:from:in-reply-to:references:message-id
         :date:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+pMecSNY6cHhtLHxzdfDJrc8xMOIHDuQ1Af4pua9aoY=;
        b=PW0Z7bBybUd3sLkQNH3kPiWvuBQbglGCQKZ+jmH+7UnuSw1mxuyBMw8tJ8QwSc65IJ
         XvAqW3f2kr3FNvCrrwmUGQ/dX/Af4NMJloik/jylxs/oWSYT1g0raDMARBEIJw+qF50W
         gJNTSgGgtSvnGF9/LYRY+S/KFzCoULrvXwcC1hgYRP55qaK3gwXr2Pd5l3MkxaRPm1/q
         aWgrGbNO5EKvqUNqaQSeCdR3WOA/IrTZeydIo/4+WbSG09+Rhm6Dfk8HvbgZoUgFtXkK
         oYcGsSSchp7stbKa/Hk6vAnDR4O7oxo7kHQEFVfNKou+R9TVCPuHNt8dBe3Yp8XRUFSj
         XZbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :references:message-id:date:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+pMecSNY6cHhtLHxzdfDJrc8xMOIHDuQ1Af4pua9aoY=;
        b=pfU96YGrs49B57hu5oxp51HyQ3i/Be4kdw7cQU74I6SheUeA7CfJ/h6wmsYISr/quf
         Ddn4KO+ud8Pn/nynfeDIdxOigGMDLPbr8gfFnBTUIwLoWBtRv3v6J/fdZiCveY/WeW11
         kHIlenSuBjatekKSt9DyeQ0SkyiumT8/nw2DQlgYhGaJd8Yqwdu9eJhBBEhEppktkME8
         0ltHgxuMBmwKkkvgValkybOB52f2864MKY+FElE/pzu0M/cdnrTgTN7JSE1CXS0ZGLMf
         XVs302O2K1QNggRDnMsTyiepqbw4Is9LBdz4xTmYG5UA8CewdVfSH2Z1uvKR800klIb2
         dqWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533gVlqwRNiOIdCAOFx49JXO37DYtYqizcCElHHyJvKvcbCxWqsG
	/ZlenQKh96FKLlzu03pvx8E=
X-Google-Smtp-Source: ABdhPJw13DZw1VHeo8Ult49w7+2rcmE/g8oNzk9e/SfNxz8CR4LH8xK7QrjgVysvlre7/HxOaD1pFA==
X-Received: by 2002:aca:5f04:: with SMTP id t4mr5770oib.53.1630613127448;
        Thu, 02 Sep 2021 13:05:27 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6820:308:: with SMTP id l8ls239982ooe.0.gmail; Thu, 02
 Sep 2021 13:05:27 -0700 (PDT)
X-Received: by 2002:a4a:9211:: with SMTP id f17mr4164548ooh.25.1630613127014;
        Thu, 02 Sep 2021 13:05:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630613127; cv=none;
        d=google.com; s=arc-20160816;
        b=MP6kICSmHDd3ELMloRD0EP88Aqt+0p8ers4w8zyczXyxSADrw5R3YqLDDJBuBKH8do
         IDgbXWOWdPNrw0IV01Tvz1OPhak5Qj1FD23ga3yHMtFpa/KfcRWmnhTC2M8/bHsmvJNo
         mDLtE3RUDtdAzmYoaAd2ww2Vng+SM4KkjKecVdR7z11COKHWyyCfO9GPh8TLBE20GmvT
         BEflu5dlmS3m3F+GarZx7mtGJAaav1QLtfq3Xz0yG1wtE/L7lF8MYt0HPA6W+9i5pIIq
         xrxVybPP43CIsq93CujS0fPSpLKA9DTlnStzVPeSaI9jtqmCF4LCIJrdcxp75BHr9dlz
         Pm6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:date:message-id:references:in-reply-to:from:subject
         :dkim-signature;
        bh=2h9JqaJQfagiAn6SyxHCCpqM+bdloxa5k1u777et/Ok=;
        b=SXn/lDLpVI8kv3Ye5tyr8TmAbi7qJzg/ULzrMuhdv7pqONUOqRUNjsV687CM1SgYAK
         As7r57Z5yXPzTGRVUAwCXfh9mtchResH9nPybViC/LBRFZ327ovHYBh3MiAfN+GSGDbz
         OU2lT9hgNaYd2l1m6XInxofZZQ2SDsrzGCCPmltdfTmYCqNVosFZxPhCigHMGL0oLqO1
         q2c2FEHRy0i+G36YYl7zru7FFZR1aBDWpL87QfNThfjtoaHYywuZ0oGVHX3GnZmsrpQj
         Yvc+HGjkoW+44FIqR0OFiRKzTSreOoMNpqJzvHn0rKgtTxiQbGLv3ALZIetIPXOjpbR5
         rAog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=P2R+Co1c;
       spf=pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j26si347837ooj.0.2021.09.02.13.05.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Sep 2021 13:05:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPS id 3416D61054;
	Thu,  2 Sep 2021 20:05:26 +0000 (UTC)
Received: from pdx-korg-docbuild-2.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by pdx-korg-docbuild-2.ci.codeaurora.org (Postfix) with ESMTP id 2C785609D9;
	Thu,  2 Sep 2021 20:05:26 +0000 (UTC)
Subject: Re: [GIT PULL] hardening updates for v5.15-rc1
From: pr-tracker-bot@kernel.org
In-Reply-To: <202108301127.836C1F4D@keescook>
References: <202108301127.836C1F4D@keescook>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <202108301127.836C1F4D@keescook>
X-PR-Tracked-Remote: https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git tags/hardening-v5.15-rc1
X-PR-Tracked-Commit-Id: a8fc576d4af2f23a87a586424252df97f0ad0b06
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: b55060d796c5300ad7a410cb5faec36582925570
Message-Id: <163061312617.10011.2408180338296148205.pr-tracker-bot@kernel.org>
Date: Thu, 02 Sep 2021 20:05:26 +0000
To: Kees Cook <keescook@chromium.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>, clang-built-linux@googlegroups.com, glider@google.com, "Gustavo A. R. Silva" <gustavoars@kernel.org>, Kees Cook <keescook@chromium.org>, linux-security-module@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>
X-Original-Sender: pr-tracker-bot@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=P2R+Co1c;       spf=pass
 (google.com: domain of pr-tracker-bot@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=pr-tracker-bot@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

The pull request you sent on Mon, 30 Aug 2021 11:27:55 -0700:

> https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git tags/hardening-v5.15-rc1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/b55060d796c5300ad7a410cb5faec36582925570

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/163061312617.10011.2408180338296148205.pr-tracker-bot%40kernel.org.
