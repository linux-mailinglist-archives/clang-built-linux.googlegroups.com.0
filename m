Return-Path: <clang-built-linux+bncBCM33EFK7EJRBV7R777QKGQEB4HIH6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E99D2F5B9B
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 08:55:04 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id q13sf1689821lfd.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 23:55:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610610903; cv=pass;
        d=google.com; s=arc-20160816;
        b=u8dHFAn3bx77bYMdTHqzaQxiSeJuEjYshw4E0wCx2Dd4W14GaVdE5fxgddiey8HqO1
         qGhwWqEfDkdBF+QqrjSELia+2FeQTOGpAUJJ6NTQrQSe+6KGM/9chvBD9myAn9PoXkUs
         tlfjGHVwta1jo+ouhgbi+MvxTnRK9d8sUokf+9FFkx2SeNI3vWLA1huqz7L6lk61cYuq
         bcZE6MA1oOxbdpC1vd8GwDBHLVMAmgkgco8nVmP49YC+GUA0ZsRva/Ij+JRwCYcMmu1J
         MMz35L83K76iFZ4R1YaP3xwb8CpDd42ET4nRRvdUi/wNlcuHN+6VqoYbvxEsEHtB8dRw
         hoOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=RZmGvhR9u7yrPGKhkypk2NtBf6PQodujEFMyTwHDHYA=;
        b=hodrvfP+qwBcZFgzOYWw/Ph1KT5+v4Ci3UWqPTZmYVg8My7S1CHOIQZUojshNyVH1o
         kkUFJGu9wiJoj9JjHjzrWB/E2uIhFBQnF69SHDlzFijJluNObiWIoVhzWfIlVoH/KQvX
         xs0SUTuYcn7Ybo1wt6O2FRfLBXQtdU6X+N2yXoSvOtPtY/NxEHipFaYyR36NYjF9ebMG
         Ja5fY+aDUoMb4mEvWb7ZX6MkDSB9MSZy4kGYhED9VTZ0lZG0hYoxvTvpfkcvBcu3vVZE
         VPXRSCii2w2A2ZwGvcHQ+xrWmEd9ir9bW6kjJLhFI52AvFTh0dv+qsUO3HZpcVnjCluS
         5R7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TzY9Q2KP;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RZmGvhR9u7yrPGKhkypk2NtBf6PQodujEFMyTwHDHYA=;
        b=hZRu9Eu/ukvdvBLgxs2G9sWPdYHWILRhNXgCR38UBWMDoL560cGVS4Nhwa+WCByeGH
         f1qxg8rG92QhzWygimr6y9+DBnuvDO5+xyJ0BuxcFtx9G4YWs8bnMjNqIaHy5gUGPJwF
         JAeEjLjsgn6zUgvjYOI3rdFmBwQL8oByg00ZLk5AeGpxhCc+hFAg/fjUDHpK35C8HU5E
         dqcEutUMErnhuEGcjhsBA6s5EsgyMPaSLYt3KM0MzfFbalEkULEq4a572Iy49e+56hiO
         TqaZIfmD1/iLuPVf6aNbDP/X4LBS+9FwqoRh+PEFFdRha7nVgDLWJUyMcFrkXKlq5IH2
         apnQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RZmGvhR9u7yrPGKhkypk2NtBf6PQodujEFMyTwHDHYA=;
        b=Jo8HL7t2mQhdOBBTJ/oaUz/p/8qw8hvZ8Bpc9j7igfnWMLhofB2pVY2NFpvAVNYYfT
         mw+bN48ZKnAImTm+DCvGJDVnKp2flowBpeXrhvmcya8vx80uFZZkNJTxEF7T13ZApUci
         1j3G0zHO7kspbuerz8S+UMtu7oSNwieepfMBK1IOR837X+qUZa7q9pE/9xoOIIcvEEV5
         b35HK+V3earveEVMkQxkEI9WJ4aeJh/sU9YQbsecwfIuExsUNYsUQcRxOR205lblL6kq
         MD3vf54apocGFAghd/PxSR2vYiTeC21QsmR/lZch1X3q+ar7gAc8kSOHBroAAz/3fw8m
         znGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RZmGvhR9u7yrPGKhkypk2NtBf6PQodujEFMyTwHDHYA=;
        b=Qj36PLKoJ9eWR3R1dGIptItLgqQZabl39R67MNtbtE3IiDlpbJ2bW1IGc7nnV4r0KC
         bydNZRU7FXh4Ps93XSco6nOlILXgxoMrrxHZZqXQGd9vv5LoSbDi1phZ89lV2MrnWNqB
         EDRDt4CR7QobUMb9DBzwDOgf7+30UhhEw+0tVW7a9D+SKRV/FVztnGGhBypRf699W0IO
         9J5EM8PY7LwTIqOtNgdlpb5nCJZ7Hqs4q5jHpvgOW+zgDnk0h5n0cuGzgm1otNvXvjwy
         swv5AVbX1mh3ZJxBXWtx955YbihtJbb8RpvcqL7xguxkFBT8ci5l83d9yQy+ld+EbhY8
         gJgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ADl4vR22DqeC/BjZxzP5ZKuEINe1hzRttF8d3F6lfJWMSlC9w
	SnJRmwvY6y7jA6NEXStXZmI=
X-Google-Smtp-Source: ABdhPJxukKl1tnYjJ2g/X52KBiatDN2iM1RxABCxLtvtBiwExwbc3vtor+j8eYrn4TTc1b++olXNQg==
X-Received: by 2002:a19:8983:: with SMTP id l125mr2705040lfd.182.1610610903771;
        Wed, 13 Jan 2021 23:55:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3614:: with SMTP id d20ls776514lja.6.gmail; Wed, 13 Jan
 2021 23:55:02 -0800 (PST)
X-Received: by 2002:a2e:361a:: with SMTP id d26mr2617649lja.115.1610610902540;
        Wed, 13 Jan 2021 23:55:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610610902; cv=none;
        d=google.com; s=arc-20160816;
        b=xg/CNptBhfuILsFgvcGMK4TUQMrpnusYrkckn2oPtKY8ofyMBmFKI67HheibtgcXQ1
         bVo1rS2Z9yN9B2eNf+IxT+gGh6tvYnBTjlIQk1PQ+QryE5FDbg2tjw1cqKRIhzZAJz+g
         nSnl7GLZegCumTPWFn2LdutXDKw2JRax+KYlUV0KDeGTCOEQDQ3SzQ4Z1dTozpan0Sp8
         8GFLQh6k1aQvA1uulR0DLrHplaeZurYOI91A+uzOqoet9puYnNiNv1kDXi+KCJNlBChW
         oPrQrhYXS/KjUNv6fd4v0g8uWYpZv5deG2kxwY2Vp+54Va8po0Tr7Dzh6Ukw8st6Q7tG
         od1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pP/ngkC2SUBvu5ZyykKyP1Wg6ESrX20r51brPw8EwXQ=;
        b=MdPC/BjbiNQhmpHo/Z9V1hHYuXzUkkZHgZUiS3RYYtUKTRBLXm62c76x0GOt0vnUKB
         dFwy8eTQq2Rm2VjHTH5Y0b6pAc6+SEzy//OwIjKI07lV8jetuowapyOjCRCezOuITDsM
         yPprjkwm1dxzDtZMShtO3/iymUffQTiFyuPom69+SA6H3G12y2e77uLt7J244VyTQsp8
         n3aoYozqVQ4XwGE32zpuug8F4wQnxMxAesQNmmyxoF6Lh0EXZTpgKJcBaxQpZEvqCvmb
         7cryBxvamgiqal1+3leveAEJ7bPYLA+OU7WQhFXZIj+KSEYgYHAYXhR6wrZSFGeE2r+2
         1F7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TzY9Q2KP;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id z4si250725lfr.7.2021.01.13.23.55.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 23:55:02 -0800 (PST)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id s26so6711194lfc.8
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 23:55:02 -0800 (PST)
X-Received: by 2002:a19:8557:: with SMTP id h84mr2571151lfd.201.1610610902380;
 Wed, 13 Jan 2021 23:55:02 -0800 (PST)
MIME-Version: 1.0
References: <20210114042420.229524-1-masahiroy@kernel.org>
In-Reply-To: <20210114042420.229524-1-masahiroy@kernel.org>
From: Ilie Halip <ilie.halip@gmail.com>
Date: Thu, 14 Jan 2021 09:54:51 +0200
Message-ID: <CAHFW8PRr6kjEE=7BSzWo7itSZgAhy_dhmnSe1yq5wMfDwEyJ9g@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: check the minimum compiler version in Kconfig
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, 
	Paul Gortmaker <paul.gortmaker@windriver.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TzY9Q2KP;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::12f
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Masahiro,

> +       #elif defined(__INTEL_COMPILER)
> +       /* How to get the version of intel compiler? */
> +       ICC     0               0               0

According to Intel documentation[1], this should do the trick:

    ICC     __INTEL_COMPILER  __INTEL_COMPILER_UPDATE
__INTEL_COMPILER_BUILD_DATE

I don't have the compiler installed, but I tested this on godbolt[2] and
looks fine to me. What do you think?

[1] https://software.intel.com/content/www/us/en/develop/documentation/cpp-compiler-developer-guide-and-reference/top/compiler-reference/macros/additional-predefined-macros.html
[2] https://godbolt.org/z/E5PE6f

I.H.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHFW8PRr6kjEE%3D7BSzWo7itSZgAhy_dhmnSe1yq5wMfDwEyJ9g%40mail.gmail.com.
