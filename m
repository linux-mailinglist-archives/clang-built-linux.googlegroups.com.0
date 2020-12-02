Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU6AT77AKGQEGIAMRFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDEE2CC57A
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Dec 2020 19:43:32 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id x62sf2115767qtd.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 10:43:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606934611; cv=pass;
        d=google.com; s=arc-20160816;
        b=RvrDtiJc6Sk411ORzTObcB6IkLszS8D3hVpuxieifWo7xVKlScWJIYXT+1gmd9nkSN
         q/kB0swrspXGGW2CprgWOLfzOeXWt3HICO8TbBJpUwVCunx9RBgTs5snPBuqtrC4Sd3R
         I2OpVSBsurHDSWppf9Dw7URI2AeRAsW6gWKRN/jVplGWqh97zWK1o6DD24aHNrfbHttx
         s0TDPZFno5O6gMFrauHN7lom7Mazb4KkSXK5RhK3c7lI4wYvlzg+hSHQvtd3QnhvM6WN
         wJp03wD0YqlOSS1iSzQOoBVKQm/SLUwXD8MziW9LeFXSwAA4ne8dg+ibuhiYZkakTAhj
         uCDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=3/geWktGa6dEWW/8vxS+J38B1vSnFbb/0m6IB95/ZHs=;
        b=0gK+xqnckJl/YI6+Qy2hHz1XVClIPqgc6GJUnMspR3SScG1K7chPU0LgnrS/pcC6Yc
         hgzXkU2KMEM+//3oZyWrcwEFj2xS49rVycYEGdEQiCcNkPeAZC8WLdvVs4mi4FkNAHSS
         jqsHabuR27d6hny2iMMFtI/YT6HaDZLMtjVGuwzw15fGnZgZBHELwLVx6IPSuzkQ+UGt
         +MyANrTg0vEVo7gsQ2J6TUNQYFGqbleM5cpNSHTePaoh+TEFfKU4hTl+BfZEBCsEOvfB
         KBF7WwA8GNmL1PKE2jLicAV7euIjPKUBKIU69WC+Pv9K/0DxvUHFGHIjWtL1WQcg+rbD
         giLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ktWU6YR9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3/geWktGa6dEWW/8vxS+J38B1vSnFbb/0m6IB95/ZHs=;
        b=p3FFYNRh6OyFqIKKqdaUmIgpD9Ey0G1BJewm+oiqkdhfXYGpUHluvUXU6EvCpNynbM
         pgMIzFI5I4zK50qQMVylBdkfpWLQ6TVdRbeH8TS488T5y3IuuRtPq31htHBYO10nL3j8
         Qkoi6ZG1vRoiyhVjq5mio1EzCgZHRs6HiMuQLdXBAgFQckyj/Bhd2uPhfr+FcpHfytrj
         Cf1Lk0ED9YjFgTre+TbwAIBG2u5xcBD/zPLWjIOFzvHJcWqBF+epGB3NazgfVWJfVPXJ
         je1Yn+EElqruukT0OlONUdMZw0ShLXbrpzSqnZgBT/E1QMWboVhoDHYxarjmA59wUQuV
         GGfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3/geWktGa6dEWW/8vxS+J38B1vSnFbb/0m6IB95/ZHs=;
        b=FXdLob1wz8Y0ZeMO27EnICX1H2ipjoUZVMZzfeHGWvV9V+Bay4HI+BAdChSRlDGqMq
         krf3cnuaIfhbwPXCwAAKifisy0NrArBHeT06Wp5e2vZ94bl6sO70Edef4tN/TycnLAts
         Y0L8hapYiZXllSqd7OxDyznJaVcu6DMVYAdqM5W2dzAFmpqCniMnaeXrWn9ZkSso/hrY
         4Jwo6lpv8WdlWDRb26wYhhHaUUWC/UySWgIPC64ouOle4gtjG6qGeE4Jitd9jWUvL7cx
         QtPIethqSc7TVtsTSUVfJ1onTWroymTtXa+pUILZPwR+wdwj0LBa1SNdvNc7nPTJo3Xr
         RIWA==
X-Gm-Message-State: AOAM531R+rC6oxcDMbmeY1/h9KyGVCeQ5c5vh2/SWHcCVut6rOet+lt2
	tHzxdgdZxNaejhRBYQB3pNE=
X-Google-Smtp-Source: ABdhPJxCwBorjwXkkX5MEpG6sGe9nKx9T/XRK+BW2D+N9wumBwCiBXUXMGfY3SNW0SOPVSCiHzReBw==
X-Received: by 2002:a37:ac19:: with SMTP id e25mr3854358qkm.344.1606934611667;
        Wed, 02 Dec 2020 10:43:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6790:: with SMTP id b16ls990669qtp.7.gmail; Wed, 02 Dec
 2020 10:43:31 -0800 (PST)
X-Received: by 2002:ac8:38c9:: with SMTP id g9mr4042684qtc.269.1606934611294;
        Wed, 02 Dec 2020 10:43:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606934611; cv=none;
        d=google.com; s=arc-20160816;
        b=UzQ+9qk5lRFoeATkwvD5AIzF336fMrgEYmS9RQ5NALIqFgx3weCFJT/LKj31wDkka4
         vW85MbHcnOMKfhQif0728gndczESMrfdKmYASlGaNX6TDsR0EfNDT15INK7ZM7BsPBBV
         gd4yGwFKs2JDvaeC9jIe0AmweGFcYb7dLSd9hD2zKXXQP+O5Vb//n4ckAYUgxMiXLOlu
         aiMc/VnN7yidpUv3uR/7AKS9U8w9Xl0EFI3puLkQK0soMDzlY+FnzP+5OcLfVDWVSJiH
         8XGTWaunEHdG/8DuyFCXSpW9PSk+G6qtL/ugXL8c7hg5txxQtkbO3CHkrV0vxE06OJxP
         krzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=X8ahtq+EJPfljfm8DO+5jAYJwJqPCK4WO3FJ0zcbqxc=;
        b=G+/i4zssRGWWtRV3bE3N8b3MfjBLBz/zlQWvFby4kIiBfudyTfkxHieQFuS89e9UNv
         3H27nt34VvJIoVDsxI9cLhW0Fzpma0lTs9X9VKIMr8yhnBmXXc9zlf+cXatsfYGhoDYO
         nHmPRjAaWZzbiX9umFAI8MDCVGjNPKAlrqa8Ksn0YaAJ4KJsgSTBRaa8ziOl6klGUpvp
         LwyGPwLdrHym2BdLbRBSOoUmpw/tBvajgRVYrLbkCPWLNSS0g+vJROD0olhTe46MxZe3
         sGSwpdcipPycnXv+hflEesbaqepeNWqZPNfexUC9grTmYHYvhiCNCUzk8yM7B7r/YPfS
         4aRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ktWU6YR9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id k54si308141qtk.4.2020.12.02.10.43.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 10:43:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id s21so1783492pfu.13
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 10:43:31 -0800 (PST)
X-Received: by 2002:a63:8f4f:: with SMTP id r15mr1070600pgn.381.1606934610250;
 Wed, 02 Dec 2020 10:43:30 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 2 Dec 2020 10:43:19 -0800
Message-ID: <CAKwvOdkFqaYrE4gQ7xB8EJZ-sOyizwOQMHy0G7eqjwjx=DLuwg@mail.gmail.com>
Subject: Request for OSS only credits
To: support@travis-ci.com
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, Dan Rue <dan.rue@linaro.org>, 
	Stephen Hines <srhines@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ktWU6YR9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::432
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

To Whom it May Concern,
Regarding our TravisCI project
(https://travis-ci.com/github/ClangBuiltLinux/continuous-integration),
I noticed that our last build stopped on Nov 20, 2020 with a banner
that reads:

"Builds have been temporarily disabled for public repositories due to
a negative credit balance. Please go to the Plan page to replenish
your credit balance or alter your Consume paid credits for OSS
setting."

I suspect this is in regards to the blog post:
https://blog.travis-ci.com/oss-announcement

On https://travis-ci.com/organizations/ClangBuiltLinux/plan, I can see
"You have used 16090 of 10000 credits; -6090 credits available." The
toggle for "Consume paid credits for OSS" looks enabled. When I click
on the "OSS only credits" I see we have 0 credits.

If I understand the note on
https://docs.travis-ci.com/user/billing-overview/#credits-vs-oss-only-credits
correctly, which reads:

"On occassion, an allotment of OSS Only credits may be granted by
Travis CI. These credits may be used only for builds over public
repositories and are meant for open source support. The OSS credits
may be assigned as one time pool or renewable pool, subject to case by
case assesment of Travis CI staff."

Then it sounds like we need to make a formal request for Travis CI
staff to review our case?

For more information on our project, it's performing build+boot tests
of the open source Linux kernel via the open source compiler toolchain
LLVM, then boot testing the resulting image via the open source
machine emulator QEMU using the open source Buildroot utility to
create minimal userspace images.

I am actively working with Linaro to offload the relatively expensive
builds to their tuxbuild service; I would still like to use Travis CI
for the github integration and ability to share hyperlinks to build
reports when Travis CI spots regressions (based on the number of
branches we're testing, Travis CI helps us spot regressions in the
Linux kernel daily).
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkFqaYrE4gQ7xB8EJZ-sOyizwOQMHy0G7eqjwjx%3DDLuwg%40mail.gmail.com.
