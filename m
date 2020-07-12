Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBSHHVX4AKGQECMFA72I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D9D21CB55
	for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 22:34:17 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id y16sf10088311ljh.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 13:34:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594586057; cv=pass;
        d=google.com; s=arc-20160816;
        b=clgZouyApE+hiHfi+vIaGQXTL97RPPIQSsf9fddBm9xPhWhwG9BGJpQNihC0NIeBxT
         EWcaC4Xfhw5OFbaiD3zuiEufBLomnHokOB7ygeko3EzlXSZ/IiFKIfwJ1u13GNo+RI91
         485XLKmhchadbiMJwa3MiObSuGsq5vw0jQ5IBvEfB2yyUkrX4geqwOhTkHVk2m/Kzufm
         GCxZqz4kqqbrapgAh5xiwadl1/bOmTjhGTiztte20uyWiA/C293x40NRA0r+oboET3vH
         mTgDpMq/2giQJpRQniXn6hAkSeb12HKG4T+VPWK1csgtd9hOlhsrpl0G0YRLkaSf0Dbr
         bylQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=UsHUT56f7JwvowZX5/PtHsZcdz+ckX2Mzdmnn8Dmb4M=;
        b=LrZsXrXxKDdPgEl6UgCpFqeFUqNQtlda+hPui0PR5t5BM9jT9YuZvm3ul81hEXXoho
         Oq1j1DFX90ePRhSZ2pEAuOZPPeniXEhVo1z8fOvcJbww8syDNAApvmD1Q4uxwHzyDj4I
         M8l9rbgA9kRaP6AkplTdlxfIh1mVJzqXMOL3IUW7ocPLQvT3dpuLPiNEqYWdZHM93QFW
         QHBLd12ZNwTtr3RZV5MHvLmEbWBJTxlwrbZmUc5OfUDJYePqV09wWynuek7ufKfp0iGO
         Oei+57wFsZreDd0IUoiwXgXZIEpiETdetpGZPuCgPWgcdUHygHcIEIjEoDggoyQ4J/7c
         KF5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=YMyGELxA;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UsHUT56f7JwvowZX5/PtHsZcdz+ckX2Mzdmnn8Dmb4M=;
        b=gGnjFjgE1JtU/cMRjNIY92syu+WhrlLzaefeIs32qP5zY3Fbdv9y8u1dqRJU9F4GJA
         QwX3qqZZPuDpSNSec6lUTf3t/wwwR63FbCU63tnBWTyfRxPFMNr9lN7FYmhHVXLsb8z+
         +FAWoaLpMXI44Pg4/K3+olyt+AUrTS6sfLM726D+GZ71olg5bgFfD1yVT0/9mc5ubMi+
         5A5+eqIxARpWnzumZGe//up5RNivbt0ex7TyYb7jiC7Khy69N4fAUVa1nEl3JWcbN+dw
         fQCyq5Nd8jCmmidSo0oYxS/srZyCgwruMgg1gdBT13+SR4Nt52RM9wS0SZIF4o1ScZqx
         GYqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UsHUT56f7JwvowZX5/PtHsZcdz+ckX2Mzdmnn8Dmb4M=;
        b=ddyrmslPfpaHsdwMwT1a7TdwyRjBiDm48wAEdJn+kqYar8U1p65b71g2CrYBa5XPFJ
         orqXWILiToXUqAtAapDov3Cgvvh+Z069gqDD19atRca6XrgGZheov0cdJyqkt5vUIgw0
         if+5A8QFBYN21eebQ5LhYUg4iV4EdysGO6slQrHK3jIEcFDAcoQMs7kQ6z+04yEjsEoM
         NxjWY6qsUt09pygvJOY3AYLBfGBPPKagg5tKZNv1IbOQgZ3bh0WDMoRKMYglgZQtkdgm
         kQ1pRVmqTp/wBPth9hSl650GF4wFq6lTqczXW6+lYYw1yNPaM+9C8wzbnY7HY/tUuJgq
         qnQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530StOu0Ktw9+tBTgEcqOTRha5GM/KJHUVvyK/riLAGu6IGOBk8V
	BbVb98GW5hYmVu8Sk90w6wk=
X-Google-Smtp-Source: ABdhPJzGIkxvJwHuc7plx3LebUXMDskFrUio6qfS2QK7aBLHp0FSoYWFIO5Aq8R8EKqakSCnSBJKdA==
X-Received: by 2002:a05:651c:502:: with SMTP id o2mr45412065ljp.434.1594586056969;
        Sun, 12 Jul 2020 13:34:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:81c4:: with SMTP id s4ls2674178ljg.10.gmail; Sun, 12 Jul
 2020 13:34:16 -0700 (PDT)
X-Received: by 2002:a2e:8855:: with SMTP id z21mr43021618ljj.325.1594586056203;
        Sun, 12 Jul 2020 13:34:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594586056; cv=none;
        d=google.com; s=arc-20160816;
        b=XXl8/Xy/NZnj6xvCjT9hjHIZWrOTDXvZPMbADptv0u1wjAS/NwYvftT5C3wasu/hWh
         lS3DOuHkMMWjvJWtgoMfeFAtsBVs16goI7hFGG3lwsQLOakwzoGDqhPGhDgWFol7zLbi
         161Evi73MqpVSsAGoJjkf1Rasf71cIlPEHC7LMUtmGVXHk5g6d37DKom/YBovuJyYiLT
         UNpVyZfrFW4NmQ+qU4TNl8nyUXysvvzQJRdW8aqq0hVeRDPnUSce2AyFWDx8hIMkbsbx
         0G/KCQTefnMAftK1v73bAZf+jPgo3e5mjAsqkuIogRVlAusl6QgMjNNk+BwJquWx5n3I
         TXzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M5WjRrnyhLOSbHqzwifF7Te2n7vimCY08qC27XUzpXI=;
        b=fW2F1Ujvfma1jrvLLgPelbjMzhOflCTPGXOCpSDUfhwZL2yRYtJr/tWuVKFwi8QpcY
         L8o3jRqMeCaw+rTiMw9mz/S/CdECWYX+bky2rQtqeml5OKZ7MTxHQt4fh7jXrRr19UYs
         uzCC33oT558iA8+W7yieQNY19vlvZQ26Tgol9RRdH0qy0VrXaW4sG0snv+kdPWsmYsar
         K2oiEmqQcAXlPIKdPaCn9XVny41MggvgXqOBzXvHhVqckB9Y5ZD3lEFYmRQ6EriJ/qHQ
         rsjbU/2pUA8MVgDGrOj0AZegJKXRG4A0cuPKFlkZSzZUn2AhwoeRz7OJpWv7Ct97pfpo
         /2Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=YMyGELxA;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com. [2a00:1450:4864:20::234])
        by gmr-mx.google.com with ESMTPS id u11si767504ljg.6.2020.07.12.13.34.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jul 2020 13:34:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::234 as permitted sender) client-ip=2a00:1450:4864:20::234;
Received: by mail-lj1-x234.google.com with SMTP id s9so13142333ljm.11
        for <clang-built-linux@googlegroups.com>; Sun, 12 Jul 2020 13:34:16 -0700 (PDT)
X-Received: by 2002:a2e:8783:: with SMTP id n3mr42749596lji.317.1594586055676;
        Sun, 12 Jul 2020 13:34:15 -0700 (PDT)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com. [209.85.208.182])
        by smtp.gmail.com with ESMTPSA id s7sm3661423ljc.86.2020.07.12.13.34.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jul 2020 13:34:13 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id r19so13140631ljn.12
        for <clang-built-linux@googlegroups.com>; Sun, 12 Jul 2020 13:34:13 -0700 (PDT)
X-Received: by 2002:a2e:9c92:: with SMTP id x18mr40262320lji.70.1594586052886;
 Sun, 12 Jul 2020 13:34:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
 <20200712123151.GB25970@localhost> <20200712193944.GA81641@localhost>
In-Reply-To: <20200712193944.GA81641@localhost>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sun, 12 Jul 2020 13:33:57 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi=xTmhnL4go0v5BaYRz_81kranLvniA5X8_zq_uCkaOA@mail.gmail.com>
Message-ID: <CAHk-=wi=xTmhnL4go0v5BaYRz_81kranLvniA5X8_zq_uCkaOA@mail.gmail.com>
Subject: Re: Linux kernel in-tree Rust support
To: Josh Triplett <josh@joshtriplett.org>
Cc: Adrian Bunk <bunk@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, alex.gaynor@gmail.com, 
	geofft@ldpreload.com, jbaublitz@redhat.com, 
	Masahiro Yamada <masahiroy@kernel.org>, Greg KH <gregkh@linuxfoundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=YMyGELxA;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::234 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Sun, Jul 12, 2020 at 12:39 PM Josh Triplett <josh@joshtriplett.org> wrote:
>
> Rust has hard stability guarantees when upgrading from one stable
> version to the next.

I think the worry is more about actual compiler bugs, not the set of
exposed features.

That's always been the biggest pain point. Compiler bugs are very
rare, but they are so incredibly hard to debug when they happen that
they end up being extra special.

Random "we need this compiler for this feature" is actually fairly
rare. Yes, the most recent case of me just saying "let's use 4.9
rather than 4.8" was due to that, but honestly, that's the exception
rather than the rule, and is to occasionally simplify the code (and
the test coverage).

The most common case of compiler version checks are due to "compiler
XYZ is known to mis-compile ABC on target IDK".

                    Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwi%3DxTmhnL4go0v5BaYRz_81kranLvniA5X8_zq_uCkaOA%40mail.gmail.com.
