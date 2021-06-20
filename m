Return-Path: <clang-built-linux+bncBD66FMGZA4IKP353QYDBUBEQABU32@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 0754E3ADDB2
	for <lists+clang-built-linux@lfdr.de>; Sun, 20 Jun 2021 10:09:12 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id k24-20020a2e88980000b0290162e62103f3sf5726297lji.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 20 Jun 2021 01:09:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624176551; cv=pass;
        d=google.com; s=arc-20160816;
        b=MOaAGP4rL2ZVcpZjk0HBeBX4rrKy0b7532FnOZR0/Kto79suQFby6TMuThNNcnJIRz
         l29CnJ7CRRCGEgaopWnQACOXpQ7sf/dUZip4DIL0phz5G5d3Q+08humo8IXRhRXqGKHt
         C0f7rvFgYVR9plE06ueqQgRhEv/r+nnI84EZZV+dEVL2qS4+oHkWS48hoxEA0YlfFkHs
         B9+UIpgcWXdHMd+I7hwGZTB1OFnR6Fy2NTMlycJB51bDiv3RAO7KDdqNY3DkmRPufn3f
         qPWptH2oGvYYiL1ZVOgSb6h/DL4ZGl0/LbnI9YYSxUa0ORtFsHI3ySmvmIaonc40MQ3X
         ynNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2uukyeewitlmFOrCMC9C4l/5GBCFW9Jkzs8yVlbFTes=;
        b=r72DpbWcq+9r96FuFqPDdExWXeZEIuqSavz/9gOU9fLv8vG64nY/QEVGYnINPcR2Lk
         BmX0b/kmLv1Y7rFp/LMW6XnZuZsDTnHfgyaGGAAjvOeTRyqWBPxVNyFABhQI59ju0peP
         lMu/Er9ua3/h5ZhGosYl6+uMMDz1i7yotxJHkoe0L5jdWUxUueC5FYYcW9/1vJ4es/zt
         pgOWiTDhaor71fzVhN1kO6ZU36hgT9yDlsqpmoyFC/XCHGIiMj/G0Ndt5h8wQpdHL+kO
         WG6gqs4++iG7o+/qVojxFznxIVhTYFf5d0V4lgF2K+IRZ55yQSUrpe4Qw9tx9vZNnzvN
         H0Rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O2mTGoMF;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2uukyeewitlmFOrCMC9C4l/5GBCFW9Jkzs8yVlbFTes=;
        b=gyfV3Y7c+J/bKujuWOBAfZ+bdIyIvq97g1YsiMDJXowRNz9UhP1eVxAe/rFsW9Puvr
         Y+5JlQLPOA0WuHI+6BEIIu9eG99mpH6l2cVoxdPAr2MPI5KMEFjsWjHF1JW2FY42/wBL
         mL+dAlqqplOppLuwkY42XmPKIHGB2LXHb/GzFnofltiHHjQNT5H5LdpVXTkqt9s3dAfI
         gvXXNQSO8XyfPzuoNu4pPov2OujO365uKyqP1R22StdJVwy8XY/s9nsgtQcNSXxZoXaZ
         v+9B0UwcW5hp0CjMl3utj8zvub5n9LciNkZJK7yFdBRNjMzhDju5OOUme0fJ1t8an7Xs
         eVoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2uukyeewitlmFOrCMC9C4l/5GBCFW9Jkzs8yVlbFTes=;
        b=ADUJXYkHdVm5cEHsZ6CRfYmYWTPK7qPayUDRF6JPnPfTIeFOKTiOo+uTpYCMLKFfa2
         r5vwYruPmfHGvRx4Bfk5S7zVQAnxEv8KKox3Mq23Hg/UK0eoJJnO6z1Zwkjo7obJNcl6
         zveZItb4rTkBHoCIRkCURl+qEMFA7XA254IACWjp6n1jvNy7ozsqMRoat066ofUKrLwD
         IfqcGy0T+CQONwIy6+K8Ldf+Z7sAVZS7hC4iNmDP8YzcGOIvrmOFAHrUdcv2hNCpFPVe
         yYaOfPC7tGdfnI6BmQqjq+YXstsRrhC3LI/h20l+GN3tIopduSqbHaCJfYIclHz7sreH
         H5Nw==
X-Gm-Message-State: AOAM532NTzhNEyDwq5RaVxYWPF5zvN0aAAGq2cBbl7yc4tnWPIWaRi/g
	hJSH6A4qhtQcTEx2nx8f9fk=
X-Google-Smtp-Source: ABdhPJziAnTvYt2kFmuJrRRju8yOYZFMzbWaAJQWQ506AXY8KewLTO4RdvKghV2Rqk691ds3D0Udcw==
X-Received: by 2002:a19:2d1e:: with SMTP id k30mr9571434lfj.245.1624176551481;
        Sun, 20 Jun 2021 01:09:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8913:: with SMTP id d19ls1959363lji.8.gmail; Sun, 20 Jun
 2021 01:09:10 -0700 (PDT)
X-Received: by 2002:a2e:a4cf:: with SMTP id p15mr16533888ljm.247.1624176550417;
        Sun, 20 Jun 2021 01:09:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624176550; cv=none;
        d=google.com; s=arc-20160816;
        b=wDN/jktU7D8oBk1UoZzVP8H8CccQNp5LDaiS+i+qSbCgr6DEow8xvH0NWs1ryR/Na3
         vC0g1ORnknISaW1MXM82BPz4cMyuAZs9MdCN30ctJsqLDJ5Fn86fNT8oe7BwRIGcoNBa
         IZ6GE7maEExCoVE1Gqe/EYJAhBWYDQZlUPosh8ymdO3266PMo+wYvqdLdI5CD1Sn7vr6
         2KREPcAixthNklnPDFzb8oX3pN85G3L8o+YF+rmoXqzBl50o5ZOWg3f+o3IKCTGH0cio
         6tplQ2bHQAk78zcCjti2fWofmSljtZ6p9a1/q7hT4IWMUQDN6hp8kOa5NGMEfhe6SRwx
         Dw1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sjSERqxDFGCyYrNN/qxA0ZiGx1EeVNWA0j1N532j0OQ=;
        b=Jpq2ZWZm/El8VKoB66fe5SYET3o1t1DDQVWxifIONOfLw/ZsyKcNTOFdQWBhfFgu2F
         mxbdGNf3HxHRPhhO+UZyLW7q/1kAjkBnzMh1OY6l/wuRLPQJes0VuTtaANMhpFdP69au
         k/wH5Gg59X6fo4oo0/+7yD/M+CxWR6F1+Ey4oOSajgRgS+bVKX6QzHAQK6554eSaXMSH
         AtJxwijvUATGAvfXa3oA0RP0x33tmm4NcyTwxpqQOe0D18gGg95MVAyA2m2s01Sf7JkM
         R6l9p5xIP8BpJ87yr85q8bdkuZ7ZdYKpmz8H9tU+pClVkhfrhKHjR1WPjqOrNgU70db2
         Mq7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=O2mTGoMF;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id i12si520724lfc.10.2021.06.20.01.09.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 20 Jun 2021 01:09:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Received: by mail-ed1-x52a.google.com with SMTP id z12so14615805edc.1
        for <clang-built-linux@googlegroups.com>; Sun, 20 Jun 2021 01:09:10 -0700 (PDT)
X-Received: by 2002:a05:6402:946:: with SMTP id h6mr14509058edz.261.1624176549643;
 Sun, 20 Jun 2021 01:09:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210618233023.1360185-1-ndesaulniers@google.com> <202106181945.AC10BF38ED@keescook>
In-Reply-To: <202106181945.AC10BF38ED@keescook>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 20 Jun 2021 01:08:58 -0700
Message-ID: <CAGG=3QXcn0QMGj0AB9N2cSHHGpCmYWg-3Wq8M1jLM2AehEWh5A@mail.gmail.com>
Subject: Re: [PATCH 0/2] no_profile fn attr and Kconfig for GCOV+PGO
To: Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Peter Zijlstra <peterz@infradead.org>, 
	Bill Wendling <wcw@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Nathan Chancellor <nathan@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	johannes.berg@intel.com, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=O2mTGoMF;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52a as
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

On Fri, Jun 18, 2021 at 7:45 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Jun 18, 2021 at 04:30:21PM -0700, Nick Desaulniers wrote:
> > When we say noinstr, we mean noinstr.  GCOV and PGO can both instrument
> > functions. Add a new function annotation __no_profile that expands to
> > __attribute__((__no_profile__)) and Kconfig value
> > CC_HAS_NO_PROFILE_FN_ATTR.
> >
> > Base is
> > https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=for-next/clang/pgo.
> >
> > Nick Desaulniers (2):
> >   compiler_attributes.h: define __no_profile, add to noinstr
> >   Kconfig: CC_HAS_NO_PROFILE_FN_ATTR, depend on for GCOV and PGO
>
> Oh, awesome! Thanks for the fast work on this. If there are no objections,
> I'll apply this in front of the PGO series and put it in -next.
>
That works for me! Thanks, Nick and Kees!

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QXcn0QMGj0AB9N2cSHHGpCmYWg-3Wq8M1jLM2AehEWh5A%40mail.gmail.com.
