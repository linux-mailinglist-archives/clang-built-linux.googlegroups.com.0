Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOH4ZKEAMGQEUJCL7SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id D08403E8148
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 19:58:16 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id z18-20020a1c7e120000b02902e69f6fa2e0sf10238wmc.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 10:58:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628618296; cv=pass;
        d=google.com; s=arc-20160816;
        b=xgxfj8cVVrxOCEGCsra5oiKgi2GxYQHUtzYsz1Vy15R7e47YOcgLb22GlmEyks0JrQ
         ptZRNwJSIYGwOkKxevBUV/A6H6eb3+pOTFZhkiCaUfvWVKByEM7jOH41ZTOi0jW5rkZx
         FKFcKnJqizUtBQlUHMlqfBFr6bmkB7ikVyaK4hfQdwHyg1AYl20gLdaFDsZIKeQqNzdi
         j+HeLNLUEFml+x4qoGy0QoFVoRQJuBuuB9pnQOhqu+BXl/8AeLt5Pjyzuo6ou3ylnRF4
         fv7X6OfgW45BlUt3kpY3TbC5MFdeEak3i/946TI9woe/RQ/+DrVHp+uIMRxw7pBDZJEg
         tWnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=Oi3RJEwkEFsk7gp/S2/LSHK3Ti7zSIywSt5fPz3vgfA=;
        b=eYVLz6tZY9AttQFZiIsKtBL7C2QMnpmZyKDv2/a+lhwus+WAzK3Y7GYu8bAQLlCLUH
         B2BLejyy8X1nC7aYQhVcV05ikjAmENUmSlDAtEFkGPMSrePwtjPtbODKbpdGRtebO9ZV
         FA/LTJXV9x0/aDY7rryFREIkYMw80IOBIyyP6nfU2SDb36y7VyLN7ipCH6P8q/LbUDDY
         sPYG7E21ECQSxOsMor7lMDTs8CWwmGzni667vxB8+vafkgpLWSqThCLsxAFrzjGb3gqP
         LI44OF7LW1InhpghH/4my/bOivSAfLyv+wG2u6o/9FzXhOVqhD0O8GnZd+uNoKcoQ/1I
         LCqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dm9N0vPW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Oi3RJEwkEFsk7gp/S2/LSHK3Ti7zSIywSt5fPz3vgfA=;
        b=Xs0Rzt6AaVnIwIbCSmfG3Xf1aKqvqz4zz+r1WV5q+HhvkfxGs7kuiigicZ2z/JmKBh
         aOdSAFU8San54JaxsrlKe+FZb4duIWt7fRNKwSFYkkrTMyxNdLXScyx+3+vU95cmke6l
         XRyDBJWOlxkI6EHXWDfjsgU6StyP9O7OvC4c8epZ0dmERz6IIvh4GhyjHedPLF1i9hDY
         hjzbuoSQAM5lI1KP1zcu6vBAlC6j+WsOKFN4GvCK09501yyvtzMOU3aHPrgfakG9WpQQ
         1e8V/735ZWr6nrM7NgHEKpodHn8/A6jGH+HD67IRdhrH1rfF6tDzuAL1jkDHTdAL4ugW
         h+gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Oi3RJEwkEFsk7gp/S2/LSHK3Ti7zSIywSt5fPz3vgfA=;
        b=N5JNXc7bHNSc0GGV4r6aOKzEdeV+lz4zFpHZvnNb1hMJKuKMLkAtXvK8v2vW6rlSmD
         Y87LunzkhElFq+7BEEipY64opMdo1QSKkG3cd/DuF99iv67unRbQmkBf9A/QwzETBhGP
         unSQkq1eLjpd6iJ4cc8alDJ3VV2QVrP7J601zUyYELVAhekF9maFVSWx68tSUfHTxbCZ
         TjyGUEHLE1RinSxb+UYrIS4M6WQ4xNoGLf60cDhe+Mt3dbMMtXKNOodktIyeDNfc4c9/
         Ed9v5DeMuT0T0xzgS1jsnaARoKyEsDPEDNdlqn+6jeCxpvHSfKAzLnOcXKWFd4/IYgHX
         wt5A==
X-Gm-Message-State: AOAM5313Q8f0j3QX0VPBd8tZktR1+zy3gaoUZBT5aZ1sm/0HMawvqehy
	t7n9iWxaMqRq8Viu/n9mv5g=
X-Google-Smtp-Source: ABdhPJxPHmLCdwFxjbe+1dMBSEHM0ZS9OMmBuxcp4NoSvpyiGeBVeRyq0uh6bOC5NdATYjcsEmH1+Q==
X-Received: by 2002:a1c:cc1a:: with SMTP id h26mr23459256wmb.47.1628618296570;
        Tue, 10 Aug 2021 10:58:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c096:: with SMTP id r22ls112131wmh.1.experimental-gmail;
 Tue, 10 Aug 2021 10:58:15 -0700 (PDT)
X-Received: by 2002:a05:600c:5114:: with SMTP id o20mr5902263wms.176.1628618295476;
        Tue, 10 Aug 2021 10:58:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628618295; cv=none;
        d=google.com; s=arc-20160816;
        b=jpBYcwAc2/VOCxEazzqxjdlfss0j4hpFFiXiOUF47f9AEF1CoSFVsyQr8pmiT2B4Fr
         lncyNwZPMIvfPbB4EhoIx1D2GGMNqECPARObEpk3mYUqFSCjtBhLhP8sxT6A8pSpFqgs
         XzXjaW93YX7kUdSotNUtH8c17zNT6syxoYiwxBH5SXR1+8xHUYk8WaDxOHyxPYR0qAT6
         f1knKupaG13J/jg1pzXBZY9fEP/6e5ggv+KwQDqOppYp82tM3gI0w9uaV7tMezHLtGFp
         UXkd9c69zjeggBRwwW8I5j3nNyP/y7LBF+NTHzBzEOhIBjgot8Njc+m+WGGx4HpZhFpW
         gbBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=jOtoBPdTetxURGXaH4p/edf3lKEpBVLNOZWC7CVT0Rg=;
        b=f8oyvhSFL8tTvw9rsHpgqFvYzXG74IgGIxFuMOmwgRv100LuyAQfoB3cwwe1KNf6tq
         /IclNufZxHOlRBnF+VBNRLSArKRpItJ1havn4JXsrYCcFIC3k9lF0NwsQ5yQEyopAo6X
         ueVPIug6caW0X48NQ4EZnyk4jOcd8m5JwnuVetotdLOjwdlKV9l4tZNu+dyU3xhIhRBM
         GDN0V0aKUKzNvqpGQqGSVcuzQNP9yqDA6m1kwnVvoKjQO6eCa0Hh7ph+U7nKJhDIYAIt
         quUhTqviHf5D5iP/+tft0wqRLp02EZSpSd1V/Hi4W4X0Wj/Cd0h/ztDrrbX/n/9PtiYN
         X1ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dm9N0vPW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id u16si1227291wrg.5.2021.08.10.10.58.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Aug 2021 10:58:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id x8so43285915lfe.3
        for <clang-built-linux@googlegroups.com>; Tue, 10 Aug 2021 10:58:15 -0700 (PDT)
X-Received: by 2002:ac2:4e8c:: with SMTP id o12mr12176777lfr.374.1628618294686;
 Tue, 10 Aug 2021 10:58:14 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Aug 2021 10:58:03 -0700
Message-ID: <CAKwvOdkPLrL6wkhSGaadAcj3HNi1W2q6TQHWFhSej8JvatSzfw@mail.gmail.com>
Subject: cc-option-yn necessary? (vs cc-option)
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Arnd Bergmann <arnd@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dm9N0vPW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

Masahiro,
I was looking through the uses of cc-option, cc-option-yn, and
cc-disable-warning to see what we're missing support for in Clang.

I have a short list of places where cc-option can be removed at
https://github.com/ClangBuiltLinux/linux/issues/1436#issuecomment-895557491
because all supported versions of supported toolchains support these
flags.  These should remove a few unnecessary compiler invocations.

There are also a few cc-option tests that are very compiler specific,
so those might be convertible to just check CC_IS_* rather than
cc-option (I'll have to verify).

Another thing I noticed is that it seems that most uses of
cc-option-yn are replaceable with simply cc-option when they use
cc-option-yn but check that the result is equal to y. I think even the
cases that check against n could be converted to:

Examples:
arch/x86/Makefile
From:
ifeq ($(call cc-option-yn, -mfentry), n)
To:
ifeq ($(call cc-option,-mfentry),)
(Though technically, all supported versions of gcc and clang support
-mfentry, so this block should just be deleted)

arch/powerpc/Makefile
From:
ifeq ($(call cc-option-yn,-mcmodel=medium),y)
To:
ifneq ($(call cc-option,-mcmodel=medium),)

Then perhaps we could consolidate cc-option-yn into cc-option?  What
are your thoughts? Should I start sending you patches for all of the
above?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkPLrL6wkhSGaadAcj3HNi1W2q6TQHWFhSej8JvatSzfw%40mail.gmail.com.
