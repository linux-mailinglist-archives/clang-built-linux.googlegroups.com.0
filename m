Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBNNRW6CAMGQES5KTRXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 966CD370936
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 00:39:50 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id v26-20020a2e481a0000b02900bf48f13296sf755915lja.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 May 2021 15:39:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619908790; cv=pass;
        d=google.com; s=arc-20160816;
        b=UITilT00eAq3mxt9pJvG92hQ8IlyQvnbTcBOku2UOO2TJ55GHYO7lY6pMRBfqF2FhE
         jMMnruUiMuDYPzf858OhGOzcwo0QkbpT0bwFR44hN3CoNJ1iCqBxNHIT9NcS+QY78Amo
         rN7BDYkrCXMcnfREETgE7drae8M91MWI15adXIwpV80VH51fnsHQzrv3hutdBeZOhK1a
         tmVpT77GPWKmPGLO2+UUwCjT5tyo9WyepRw/ytw/ANInB0Qdav27Onhtie8PusYBCRWH
         tvUs94xS9Pyg753Ya9KmgzdACjb05X7LFZp8Gl4PiKXwVawir3xOSqobmx2Dc2UHsCO0
         yalQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=X0pxN21ABCW7ZJe06U+F6fftaJROmvETilinWOwsNrg=;
        b=aq8tDWeidps+y/AsLW7p2Tb1JDUUR7Xh/EEOeTvadXI5jcf0mKKadaC0twesFxgU6I
         EyMX6SIB3qSiIKwWbV5YaLXIr6rQmUzf66y1tniuzJvyN4JiUXnPZtNsPZzG8Lj8QYxD
         G4DmT7K1n593oYtH/mFgX8ZmjBwzFFeI1N+TgmZF0Bhn1MdgFfcVHPJCuMJQYcOkSO+/
         HXqgQLsPe3/AYvOP9GuwtKJOhxsMX2EG4NRY2u7DS46ejNKy02pS+uvsmis7tPDCXN4M
         RgAAqML2DsSpsk6YR/26fa1lV9hObJ9sZDhZCYZAOxGC12QjtvrzAEWD/MUVURJTsBes
         CMZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=FQNlxAac;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X0pxN21ABCW7ZJe06U+F6fftaJROmvETilinWOwsNrg=;
        b=nh7lFOa+W8DuN49ZJc2HqMIs46vY0w4KUaBuVPYEfBAZe1PpeBGyX1F/iuN+E+O8wj
         ggiw7s5nM+zNYvPAVoDeP9iK2jIac8bNjNAr2QNxpppqZZSbc+BKOB5JDr6AM+YBRYOU
         BLdMoA7MEGhPTRE1IYCMQPSPmZjFwDyatInvbTjaWXuJtv5mWK6Sa8sMbuaf5/xyBT6+
         ZEkji8rCzyHNZVwPls9kSFp0mjFhW6Ijf+4grXYwZBFMJEJfhx3aqRv9Qc8EadKWXB6H
         jAE50eO1iqQNfDUY+lQ96xlF5OYFzR2C5pmvWgIurdK/O+WchZFBYVsWnUeVgbvJKuQE
         9e3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X0pxN21ABCW7ZJe06U+F6fftaJROmvETilinWOwsNrg=;
        b=ftKtRz5tno2kZXUUqsCjB/TNrR2asSzjlQNOAwyaO5PfXRuRXnLQPZszokRxaZwN28
         JAn6Hl3vwhtEyhUxZIcMfuMl9rr2AcgyF3Luk9QDyYToI8ffp9H9GJW+XdolvbVqIMYZ
         HIr09iwJ2g4dzQF5z2zra+uJKZsbrWUHz6Lgr46B0qJ3p62dZHJtcTmPy17m9lMO5c7P
         6Q2tY/jUEyGaoJ4daGZlY0AcWqnonRUuGD0xtWlISS4qNySpcIDOQZ5/vcECx8eDZETl
         6EkLEwdFEfykxSUnCbzmyJmKrv+HTSwCvP5LvoOMTONV9N37KPqrw7/fCElwq3r6blW7
         USqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kv+FGgf6F3GBT4XprDTEmIbXo0809orND/0G36kTa+vWIOEjR
	mEEEgbp6NuRqW7u6HBqP3Vs=
X-Google-Smtp-Source: ABdhPJwzkzsarIfqc1jEgFCXqJTWWIHO3aEhlve7Xt4uR3y1eFMNggRujzSH/qlyB6IXmJEmfmmlbg==
X-Received: by 2002:a2e:9e88:: with SMTP id f8mr8340567ljk.88.1619908790112;
        Sat, 01 May 2021 15:39:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9a02:: with SMTP id o2ls2558480lji.7.gmail; Sat, 01 May
 2021 15:39:48 -0700 (PDT)
X-Received: by 2002:a2e:9e98:: with SMTP id f24mr8115553ljk.442.1619908788767;
        Sat, 01 May 2021 15:39:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619908788; cv=none;
        d=google.com; s=arc-20160816;
        b=MIPTe4yvvokwBqJveJl9/VfuOls0JLhW+LWV0KBXKjGngDFCVtnYEUfvzu7fkCqiUR
         ckcpcdM1piPv7f0JU//SNN41IPS59hO5+PoSqrgncTNOeIJB/W3L70o2IzzF4/M/Py4U
         hrvAROfyOpOMzL/4vkHsFLn3WSLAKsaKLwx71Um5MP/ARyRiOrujWO7F2ypLXJtnv9NM
         Cxoi37Wg95j4CkEohWQFuk23fe0tBc2LGMUZiS+jDIDr/8u0mOVIwazPwHX9KViXtjqz
         +RX6IrJDTYvneNNAlGdhKEm432admGhSkmz3Qq1giF7Rwqq+Iq5RiY11jyZdUtgLHy0U
         kWGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NmEcPm7Asmrbgtr2u8nHPgQhaAjp5R45pnKPWNQs2ac=;
        b=IIhQOUd43BifofO1eJ1bQH2iHqlf7/L+QO984IMvYrMXbwyvW76gbAqn+0h7aw2Ezy
         FnJEmQ8elnr8Wqdi/0eZ89xv+0ux83zyJdp4TqdtoIpMedpOKZST1zeHkvb0vjjeouG+
         /hgM52r8+htabu9h1gxmeSxVXVMRuJDSEegstMJacw8e9wLnbHpVVvUzeb9xeVVS6Zsa
         iJx0BgSRIvY5TwS77swv6N875/TlVnWB9r5JbW6odpimJzSaXoXIUqbBmgsoAiGui+6/
         MyUlzuKYSQKA83u4q88SbWNsBTXzNl+BqUUMnNNKflQC3etMk8x09cVbVSANsnZSzOnM
         9JCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=FQNlxAac;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id y11si681890lfg.8.2021.05.01.15.39.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 May 2021 15:39:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id e12so124694ljn.2
        for <clang-built-linux@googlegroups.com>; Sat, 01 May 2021 15:39:48 -0700 (PDT)
X-Received: by 2002:a2e:6f1b:: with SMTP id k27mr4360873ljc.125.1619908788264;
        Sat, 01 May 2021 15:39:48 -0700 (PDT)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com. [209.85.208.179])
        by smtp.gmail.com with ESMTPSA id w2sm164260ljo.120.2021.05.01.15.39.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 May 2021 15:39:47 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id u20so2397437lja.13
        for <clang-built-linux@googlegroups.com>; Sat, 01 May 2021 15:39:47 -0700 (PDT)
X-Received: by 2002:a2e:954a:: with SMTP id t10mr8019788ljh.411.1619908787255;
 Sat, 01 May 2021 15:39:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com> <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210501195750.GA1480516@sguelton.remote.csb>
In-Reply-To: <20210501195750.GA1480516@sguelton.remote.csb>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Sat, 1 May 2021 15:39:31 -0700
X-Gmail-Original-Message-ID: <CAHk-=whPoHOa6_gA3-pk=nOzpefZmsSK1an_iByEyhLe+3m-AA@mail.gmail.com>
Message-ID: <CAHk-=whPoHOa6_gA3-pk=nOzpefZmsSK1an_iByEyhLe+3m-AA@mail.gmail.com>
Subject: Re: Very slow clang kernel config ..
To: Serge Guelton <sguelton@redhat.com>
Cc: Tom Stellard <tstellar@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Sylvestre Ledru <sylvestre@mozilla.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=FQNlxAac;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Sat, May 1, 2021 at 12:58 PM Serge Guelton <sguelton@redhat.com> wrote:
>
> Different metrics lead to different choice, then comes the great pleasure of
> making compromises :-)

Even if that particular compromise might be the right one to do for
clang and llvm, the point is that the Fedora rule is garbage, and it
doesn't _allow_ for making any compromises at all.

The Fedora policy is basically "you have to use shared libraries
whether that makes any sense or not".

As mentioned, I've seen a project bitten by that insane policy.  It's bogus.

            Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwhPoHOa6_gA3-pk%3DnOzpefZmsSK1an_iByEyhLe%2B3m-AA%40mail.gmail.com.
