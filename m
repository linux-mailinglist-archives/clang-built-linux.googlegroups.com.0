Return-Path: <clang-built-linux+bncBD66FMGZA4IMHFP4QYDBUBATUQVHS@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C58B3BA0AD
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 14:47:00 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id i17-20020a2e86510000b0290176c643f27fsf3977404ljj.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Jul 2021 05:47:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625230019; cv=pass;
        d=google.com; s=arc-20160816;
        b=M2lqluY3aqAXfGI9pYlUMLIZxSNH4fLrPdka1pkTUtaxmXzW08GIT/j48blJTjDrYv
         lMeREWfOHeJXRxauRJcSeVhqmIkTm9xjRxBujFz4kRiKkrSa3Il+rBPN1i0HoSQlwnlL
         3nmOYqLp8/2XmbwbQJctVWOX959qDqTUtJ7Pg0417tHWpmndrRSmw+tzJT9zH2DgvLdg
         rX+WB5mffOu4zoISJ96YTVYY+5PgLCeJRWagkaEPcY3/Kdoi5/lIsykRP71zF4iPxPGJ
         J72bKzwafOJcDUMSQzVpPNWbxKD2NBh2AaXtVhGDl8g2lKuWgtjK8XItXI9EqlLgzgch
         CV1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Y8SxunZKK7s6in9S62steGzIWYU0LlwHHt21bK4MKEE=;
        b=wRWnwzAqspbdeQIm5yEhoFtFg0XOkwS4yoMJjvFixhA78BTKuAhgepwYAXwccIbMhO
         gN8Hw+QB8iAcJB7sQBHH/kDznAQI/L0OXMhJk7P4HEu+rcSaZqoKXhVxUzUjo+x6VYt6
         zdT7pqxzj1xLszxfdLWHSvJRfMUhonWijwZewWbb+32QT4dqrh2S3DZJmqFWyN0j/359
         2V08+5W0EwNDbO6W42K8xPbgvBPLr+gR/2v3QUN8HRo+F3+qdRkfvRA24zcoa9OIcJ+P
         5x73JHYaYECjlwJPnwkKLpLg3iqHcIcn4uOn0m1UFcjBLQfD6D1MTFVsCcN+rc94ZHxb
         /iRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xkh+xgvW;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y8SxunZKK7s6in9S62steGzIWYU0LlwHHt21bK4MKEE=;
        b=szwEo2xZGXL9ePLxct58euRt5tQzIWqrLSXXlGu/GDYeHj3xjNaDaM31vPdJCzIpgS
         x98TtY7778g+n+iiLOoickpKCEpuwL9NctdsJD4i2cprztYLH8QzbVAU0lehg5UgLrJl
         VN+2e5wPwl/VJOJAX9vXFgdmi/ubni7Rx81+sHaWg0xW2xnw05FDRH9ySTD9dsucjh3p
         I0i5HdnbyuDz2b3PM7NFr+3IhgY7btYBvm4MA6ZoWtewz15/+c5KyZpuxmSGJ7/44k2S
         BIBDHUi70JerRx5pfuDEVIn8+pu2g4X5Pgk5tSJXgtC8kwB9eUvZG3nuaix8lU26KXuh
         FuCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y8SxunZKK7s6in9S62steGzIWYU0LlwHHt21bK4MKEE=;
        b=UTSScocczVJBL5mJ2/7iV+WWiTQHhGLUriYC8mBccxKd8q/iK05q9sHXFta5W6f2dQ
         /2RfpfRZW7+Si/v7X1nXCgwPjCsHPPn8tVgzGqodqVLj/tX1NvroLnIgAxZDoUev88BT
         5q8S/dkxfmHyN8zkgS8QU+2tudW9PJ2ompqCc3T80btl2oLEScjwr59nAxEYgt3NJrIk
         HYsDjzw674ueUJus91t7B/Qd6iXWOAZDEDySqLJV4Zaz3arv521uhSjEoxLeTTIpdvIB
         mmoqAwi47C2Dha0jtuVcRrIuAeXBQjz7u3mIV+mHHucTlNlEogDNkrdW5ANP8nr7fur2
         aENA==
X-Gm-Message-State: AOAM531RL7d0EODYnKNNHxQZ6oDswm1quHd/K5DcOTCaZ2sgrlLvS4m9
	QKe3trsBZ6eSp1cpfHSvIOE=
X-Google-Smtp-Source: ABdhPJwAbkbi8e1BCGrTaPTYBnvDOHwF/GKXCMYuR73aSL1hekV1lFw/a9p301WljgZMtzGXhF53vQ==
X-Received: by 2002:a2e:8490:: with SMTP id b16mr269924ljh.59.1625230019547;
        Fri, 02 Jul 2021 05:46:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1799:: with SMTP id bn25ls1806474ljb.3.gmail; Fri,
 02 Jul 2021 05:46:58 -0700 (PDT)
X-Received: by 2002:a05:651c:1196:: with SMTP id w22mr3698029ljo.423.1625230018479;
        Fri, 02 Jul 2021 05:46:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625230018; cv=none;
        d=google.com; s=arc-20160816;
        b=tKJZYNtpmFXwAj6EP6jeIclwJjhUqfhNzTTiVwYCyittzwY6UVQv+UHFKIyVf4bb8c
         +GbdP485ytEHDFK0D8SPk9ZVE0ynZUsnWHxFdcj71AaPE41LT4AB10pA/JOd0Tk/z0V/
         oTqXu+Tl0mvkUyDgP3tKDWBSHXBHa+BzPNXLRXVN7a/k4sNtDDrcCyYbTPo92eiTzUVp
         vzWuTrKqXqB+MX1wb5NBVLJHbqa9e42LdC6HgYP9hh4zphuUp9g7HYD1pam3riih7E8S
         OG22vpiVV8qz6Z/ksreV4n2VJaObI9o0oJcAh/13Qn/tshyT4x8gFh78tHO7+44F3z25
         FRfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=U9Ygf5x7uiOG9bCFzCQj8dmpy7ftJ6zlaTjCUCyvuWI=;
        b=e4YhmsBr0jjS3HoWghn2sOQeKXbCCPsmOhlGKfwdoSheSKfMpXl9cdVAp+7Jqsi8FU
         yGcKzaKK6yHTaqxEEZjSlvX8EjIT39qNP7Yqx7zTuVKcrVQT2VeBI1rXmqIE2WpaNu3R
         qwzKLdEntnH3LYeYwNaa2Y48S/NKvaeoSELFgK52KmkyMP5D6nqaxsAqVv8JlLi2fZ40
         mA5RCNKv/5uy2y/q2aNrXYrne90fRmzkTgMuLwmsvE4tAPdrUswVyUwU1pHJrUY9lJAi
         MxhfJOWyegONd0aDlfXw6TOcBIAlF1rpkff5YlKLmQ4pksb0MEKILzXpuq5l5TVUL1KQ
         ojIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Xkh+xgvW;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com. [2a00:1450:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id b12si113340lfb.9.2021.07.02.05.46.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Jul 2021 05:46:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62f as permitted sender) client-ip=2a00:1450:4864:20::62f;
Received: by mail-ej1-x62f.google.com with SMTP id l24so15900716ejq.11
        for <clang-built-linux@googlegroups.com>; Fri, 02 Jul 2021 05:46:58 -0700 (PDT)
X-Received: by 2002:a17:907:72ce:: with SMTP id du14mr3731820ejc.529.1625230017449;
 Fri, 02 Jul 2021 05:46:57 -0700 (PDT)
MIME-Version: 1.0
References: <202106281231.E99B92BB13@keescook> <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
 <202106291311.20AB10D04@keescook> <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
In-Reply-To: <CAHk-=wg8M2DyA=bWtnGsAOVqYU-AusxYcpXubUO2htb6qPU9dg@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 2 Jul 2021 05:46:46 -0700
Message-ID: <CAGG=3QXrOnN3-3r-VGDpmikKRpaK_p5hM_qHGprDDMuFNKuifA@mail.gmail.com>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bill Wendling <wcw@google.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Heiko Carstens <hca@linux.ibm.com>, Jarmo Tiitto <jarmo.tiitto@gmail.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Peter Zijlstra <peterz@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Xkh+xgvW;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::62f as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Tue, Jun 29, 2021 at 2:04 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Tue, Jun 29, 2021 at 1:44 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > And it causes the kernel to be bigger and run slower.
> >
> > Right -- that's expected. It's not designed to be the final kernel
> > someone uses. :)
>
> Well, from what I've seen, you actually want to run real loads in
> production environments for PGO to actually be anything but a bogus
> "performance benchmarks only" kind of thing.
>
The reason we use PGO in this way is because we _cannot_ release a
kernel into production that hasn't had PGO applied to it. The
performance of a non-PGO'ed kernel is a non-starter for rollout. We
try our best to replicate this environment for the benchmarks, which
is the only sane way to do this. I can't imagine that we're the only
ones who run up against this chicken-and-egg problem.

For why we don't use sampling, PGO gives a better performance boost
from an instrumented kernel rather than a sampled profile. I'll work
on getting statistics to show this.

-bw

> Of course, "performance benchmarks only" is very traditional, and
> we've seen that used over and over in the past in this industry. That
> doesn't make it _right_, though.
>
> And if you actually want to have it usable in production environments,
> you really should strive to run code as closely as possible to a
> production kernel too.
>
> You'd want to run something that you can sample over time, and in
> production, not something that you have to build a special kernels for
> that then gets used for a benchmark run, but can't be kept in
> production because it performs so much worse.
>
> Real proper profiles will tell you what *really* matters - and if you
> don't have enough samples to give you good information, then that
> particular code clearly is not important enough to waste PGO on.
>
> This is not all that dissimilar to using gprof information for
> traditional - manual - optimizations.
>
> Sure, instrumented gprof output is better than nothing, but it is
> *hugely* worse than actual proper sampled profiles that actually show
> what matters for performance (as opposed to what runs a lot - the two
> are not necessarily all that closely correlated, with cache misses
> being a thing).
>
> And I really hate how pretty much all of the PGO support seems to be
> just about this inferior method of getting the data.
>
>                 Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QXrOnN3-3r-VGDpmikKRpaK_p5hM_qHGprDDMuFNKuifA%40mail.gmail.com.
