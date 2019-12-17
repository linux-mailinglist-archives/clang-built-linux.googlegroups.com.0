Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV5R4TXQKGQE7Q45HAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF57123452
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 19:05:12 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id d7sf8102994qvq.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Dec 2019 10:05:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576605912; cv=pass;
        d=google.com; s=arc-20160816;
        b=kWMPF9cU2mXETqs9bcmQc7rNO3LlzX7X4w/SDW+v911iMCGh7q3+Tx0jbD/cCAyqS+
         7Y86Wl9h1hlcifAkHSWd0LVIYpJPEMbV6Y5dLTYBZk3KkN8SO79+RI985afVUKWPEkm7
         dFNw6WBOWxAz35KdAiwOTtDePnX55uBaMPv5X8dcVJbKcr4U7Op7gCPh9AHZKI/mDPCD
         IjkjeWayno/9mGWigm1ICMYiIJCoYcrwmABr0IRuKOHLJCRoESpIBZoh4Syv2EmrpEqc
         ljfkRDXrOMiglUw8qGEwM5jyQYv8inrg8+g1KYdUawzwgULgrOc6nUQu4TWqSgWNY1Qa
         c8fQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0JpBmq15gbShsV+uv0PGSf88HvmYk+FXgI2xU57fPag=;
        b=HdiilvtPWtEEwpu+uaSAmxlPL837yd8ycwOKP2mmlKv16B0MatrILko970W/71zI+x
         jLLFILbFFDon8bm14tABnHrYZZrkMlAT6Zr82wNnjiv+L99wRna+cuJACyycD8cLknhs
         Uz5gLaShiWk3wdrfrM4tafUTa/BS4R3BrakCbUonYyyqBifgzQuRaXV+LIRO6MmYPcy2
         H7a5mIQMxxmtQyTml93MBGpc0sj8Cr23QVYVQN/al5SeUdMmHPtCg72f6pR8dPHtn3cO
         lga5p1tAImfI3bfd4lfjiYAf4h/PaoVPA1ffTFWjSmAX7MwEwZV8h6EeItAYS18D0ss+
         x/bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PPQjasbU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0JpBmq15gbShsV+uv0PGSf88HvmYk+FXgI2xU57fPag=;
        b=azs7F/YpkBh9xwz8wtiqbVXeraqatkNLIYtwTrUrjVh/1L6HMXuGw3BHPRPe1SKDJv
         e/ZSJGOsPZAeeY7soD9FLmiSPJz2syXxhXnuTKGZoyjNlshgdnNHTh2cqzIUOfsPYVWD
         q+gL29lpvQmTBcB6+F9wVKODVo0/uoxDU8Y/zYdlPxFTL5mqY4U9fnnOTfLB5FznmCFB
         kibJCt7q88VmfgRiqbG2uo3d2NnzP7AlMNKoIq0ugRSyA5K2vV9bpvchnV8zMB2kwDCg
         iHksy3/L8MCQk/a5ZjwGviZT1P2AYBP0PobVSXwRqHyKsTStQvzXyyX4jRaICH2nJ8zN
         Xorg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0JpBmq15gbShsV+uv0PGSf88HvmYk+FXgI2xU57fPag=;
        b=fx+AtYBeFEdDltPhyD6JWOL0ZYqnm1gDTJ9zFlEtKxfEsq/FAukxKQYfAbaesq0REx
         7DxYMRCPgCRehoUlaiQmipaAnxOGNbREb2mPSeIQE9YExeBTNlGl+UJJgdfwqrHG3D+i
         AOmzUSiXlGVIDoA2S2QUysPkxSFCCVi5EZC+CarNxZN0gwoQkVCby+J4Ow5SxgsFn5eA
         DE26XFmN7PKfmsJKwGBPm4RRWnRfrI1kRDaOmA6wavzDk6FsT3Lait7X801jcsxZfm4r
         o7LikLwGEXC2gOIiJEKfCQEK7M8kDK3ELjrLAq3HSGUpNgjZ9R74f/E+gjxE4CeS6gj3
         Ywfw==
X-Gm-Message-State: APjAAAWSpnb/a5C2R5rzzZYHzhtAxwhgkZBkMPlG7woX7tMSzLZ6U3rN
	nT84085+Y6QomAv6NDtRi4k=
X-Google-Smtp-Source: APXvYqyyWE0bqagJWfQAqlKmZxF9U6KP7Y3jAxq3/taPD1HVtoy7cBAXXvlN2XcFy4mONPr5g8avdA==
X-Received: by 2002:a0c:e80e:: with SMTP id y14mr5972299qvn.139.1576605911798;
        Tue, 17 Dec 2019 10:05:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:15aa:: with SMTP id f10ls2575459qkk.1.gmail; Tue,
 17 Dec 2019 10:05:11 -0800 (PST)
X-Received: by 2002:ae9:ee11:: with SMTP id i17mr6448146qkg.333.1576605911448;
        Tue, 17 Dec 2019 10:05:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576605911; cv=none;
        d=google.com; s=arc-20160816;
        b=K998gZ8mCBq6e6UVsUiM8HsWajuO5VkA/Bj1UoR6BCxKiVk/R5innkpzhEnvJFBsoX
         hxRMiKJxknKIOpYHy40WzJeVqr1tDE9wdJwvtD/4O8wC6+7itb9rd4h4bNwe3jWCKi7U
         egFyqX/uoWAzumemvLfpQBWOFCbLXCapp41muHbWg7GohVdMQL1BDjavPIytG/YOnK9p
         gSzPhI2H+MwzwlYXyhOFEHeesvJ9mnRw1MOmwvvgaoPJiY/ew3rJ92+Ac8CQJ83u5tz7
         rDTBfsuZvmjPm+9E/lk0gLUYzfljz5Guz+kjAhZCmpy7QGWD2bI5pUGoRGJvDVT3Cg1E
         wTJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lPAy70hTSI9Lb0VV9YnF+9CtMVWnLmyoDgtChgI4SY4=;
        b=U56rvAfVS9KUSN2Ojl+JJiz+v2GIMdWlHI6XmKrqTNDMVrTGwxvuT0GbfR6k8O7PyS
         ZJmzUaI0B+0cszVf+PWtx0oehK1yIA9G4lkCxlCinf48G8+uzKl5RItapiMBxTDyCKUm
         AYhBoACXOTnBblLCgXgmYJdFK5TyGN6oaoYOm0Oig8yogWOiZxOP4HOGILCfWRBVvL2x
         JeZAQG37beNL1y0oenCDEaevgPPB0MAWpYeO88fnWDQyUM8V1PcQjNSsSR3k2CDLUPoj
         dwwsdGPLrC0UFgbUbdrWmZWYEFUF9MrF2JSXg6VFwY9mhKJf7tCnB0P0ssTysOBctcj6
         2qGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PPQjasbU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id g23si887563qki.4.2019.12.17.10.05.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2019 10:05:11 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 4so7965625pfz.9
        for <clang-built-linux@googlegroups.com>; Tue, 17 Dec 2019 10:05:11 -0800 (PST)
X-Received: by 2002:a63:f24b:: with SMTP id d11mr15607650pgk.381.1576605910555;
 Tue, 17 Dec 2019 10:05:10 -0800 (PST)
MIME-Version: 1.0
References: <20191212135724.331342-4-linux@dominikbrodowski.net>
 <20191216211228.153485-1-ndesaulniers@google.com> <20191217063846.GA3247@light.dominikbrodowski.net>
In-Reply-To: <20191217063846.GA3247@light.dominikbrodowski.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Dec 2019 10:04:59 -0800
Message-ID: <CAKwvOd=p6aMDYLpq3g47JrmnwtZCHV=-CcBoamQAu2hk_aJcMg@mail.gmail.com>
Subject: Re: [PATCH 3/3] init: use do_mount() instead of ksys_mount()
To: Dominik Brodowski <linux@dominikbrodowski.net>
Cc: Andrew Morton <akpm@linux-foundation.org>, Greg KH <gregkh@linuxfoundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@kernel.org>, rafael@kernel.org, 
	Linus Torvalds <torvalds@linux-foundation.org>, Alexander Viro <viro@zeniv.linux.org.uk>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PPQjasbU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Mon, Dec 16, 2019 at 10:43 PM Dominik Brodowski
<linux@dominikbrodowski.net> wrote:
>
> On Mon, Dec 16, 2019 at 01:12:28PM -0800, Nick Desaulniers wrote:
> > Shouldn't patches bake for a while in -next? (That way we catch regressions
> > before they hit mainline?)
> >
> > This lit up our CI this morning.
> >
> > https://travis-ci.com/ClangBuiltLinux/continuous-integration/builds
> >
> > (Apologies for missing context, replying via lore.kernel.org directions.)
> > https://lore.kernel.org/lkml/20191212135724.331342-4-linux@dominikbrodowski.net/
>
> A fix for this issue is already upstream, 7de7de7ca0ae .

I appreciate that.  I was just surprised to have no advanced notice;
-next is our "canary in the coalmine."  Mainline is usually pretty
stable; if it goes red then we're missing testing coverage somewhere.
For mainline to break suddenly implies that either a pull was merged
from a branch that wasn't flowing into -next, or someone got [un]lucky
with the merge window, or something worse.  I saw -next failed the
same day as mainline for the same reason, so I'm going to give you the
benefit of the doubt and chalk it up to luck with timing of the merge
window.

In the future, please give patches more time to soak in -next. We
expect -next to be noisy, mainline not so much.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dp6aMDYLpq3g47JrmnwtZCHV%3D-CcBoamQAu2hk_aJcMg%40mail.gmail.com.
