Return-Path: <clang-built-linux+bncBDYJPJO25UGBBZXBTL5AKGQEOS4L57A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBD62537AF
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 20:58:48 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id o186sf975767vsd.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 11:58:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598468327; cv=pass;
        d=google.com; s=arc-20160816;
        b=wz3ZSx9Ttq7ATfPWVO9bJaHvoRlacSd5Ks0/tZMRFqaDVenhA92jt6C1woIDGrSmlr
         5vpKC/FkHBP3LrUw8AwHCf6b7yRodXiujyxxDN2coSY/Y/0CLAfqV4nER86fgkBuzbZr
         jlM/7B6UvOHrKGfkEGNFVOZnfqECJGwylYlRUVaJmTIAXjxjTjD3A9TZXIVWfqmI0CvL
         egBej6nVcqI3N2Es5Nr5R2ReUdgA7BgatMqYucB5+4smuSFkzWgqBDlIu6FG31FQLdjK
         Mp2mx9NTC5jH1DoyWarnpuQaLSRx2hIADNGgNoOk8eojSDd3QpmC6S2aJ0lBeRJaUwwI
         yuiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=wEW/+TpOnS823gzM/uPk2IxYprTVrjDczMXdxC5M3Hs=;
        b=ER6xvTIY5sKp3RVte4Adq9pl1vJXACriapnkBC6FYonoGGmAMidVM2jYAhMUnMOWv6
         e0ZSmn9UKxyjufKwRIeWxd+hnfVuL5ew+rTOX7U5YsaOaj+V71jJ+ISP+eUupDslj2I+
         q8xBKyq+NMk0TjVvOwOpBQ4sV09joMoweESguVeZxAyDkyevE/XMaUd/E7GwSDpto2YF
         owfG+QyT+2ggWsRZ1EyWZ1a2ikkrKWqU9TnQLGUf/5QUsSUceJIdB1OHCOz7ctCRXNKR
         bDASGm1ShgRc3R8wiIbIXB/duiqsc8plE70DNHLRo+Q6KEW7dCsC8NRCJ4LOiZgZBxVf
         xBEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uHY6i03f;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wEW/+TpOnS823gzM/uPk2IxYprTVrjDczMXdxC5M3Hs=;
        b=izKBce68C6zRwlMeK/I1t+8upB+TkWa7xPKTZacSJg+h1BpWf+AbgYPnaZuV/7gb1I
         AA18L/SxtIu/ZfAmVSk8bnO+uTHgKZ9IB8tGAUoTVWjbxohreBgDA1pQQfQeJNiv9S8k
         ZH7FdJ/U0SbXv0sIpJKqpBQhxmSOjBeO0IWjrD+cMwdyU8l30a/8AdxUz1qwFPoIIjGE
         bP6TB/FLzem5US3H9Q0uE7OYDDMeJxm87U55mC4aAwNPt74n3Eu6GFvyFqo2Q4vEYeme
         oLn58H+sUfevN9Leyg34FBK5OF93m7dOs0Ni3Krf6C6YlAGtpqJ+b4/QIYQtiBGOTmZM
         Y19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wEW/+TpOnS823gzM/uPk2IxYprTVrjDczMXdxC5M3Hs=;
        b=PB8NyArnzHf5bDIncQGzBJL1JEmSWPeynGdBKa223eGnUmvcK9nxr+MnP+C3YUOqfP
         4DxAcwHGjVU50k6vbZndbKclT06nXV9oOtmxjoCCJ10xuGocFLRSzX7Kep22TTPJJ/j6
         tgbdwz+FNUEK56q4kQZ7kFMf5VL1GuX20RR0H6k31RG9yNVKPEBujIbRv/I0er+Fetfw
         SIDRJIvmdQ7ufK3StaxRDDwgdU1D5lKLdA45VwD5oJlGQByLOWgDb4BHOSzr4U28BeW8
         WDXrpm/jdQ/6SJtYeIO7XpobOTRDQV8dlUVS9nY2HGgeMBtgKCqrZAB4NK2Mu28r59hg
         aUbw==
X-Gm-Message-State: AOAM5308W32TVe+zq6CUu3cuz5j5MKbhtfSKUuMsIsqZg7TkCFgNjdAE
	aLiSpxjBBITpn7OffLkVEEM=
X-Google-Smtp-Source: ABdhPJzMrp1cyWQ+2zBxD9CiXDuIt2AMnjckVUM4Q8FG15ScB3a5fHpYiN0RQGzJzKovLvy/21Ywtg==
X-Received: by 2002:ab0:64ca:: with SMTP id j10mr9189289uaq.81.1598468326767;
        Wed, 26 Aug 2020 11:58:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2995:: with SMTP id u21ls258178uap.11.gmail; Wed, 26 Aug
 2020 11:58:46 -0700 (PDT)
X-Received: by 2002:ab0:462:: with SMTP id 89mr10059269uav.34.1598468326476;
        Wed, 26 Aug 2020 11:58:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598468326; cv=none;
        d=google.com; s=arc-20160816;
        b=OR+a+jNLdcmeG4gvz7rvcijsKJI46BfQLWaS/t0p/36VcBBX8s6SKF/cr22pH5XVFL
         cCi+MXnQnK47jtDcvkdshzMUO5vX50/S8kFL/3dCpqf4Hv699NWPgffqWbZKBwY6wJND
         8xu9a+n41jefGZOmEDNTXmApFf4Fo1BhYSoLKyAM0AJMPy6a+Ck8mSB+I2VhF+wsxIpi
         3hP6iZp17DTq4gO8WlbV0CwsT3zJiEwNM7iTVHS3OR89q9juYL06MKqeVYUgaEDwTlWK
         Gfi89vI23L4ca4xYTVfRzQHSO2jBsk85bku0wSZiZ2KE2CM9d/0BPb7ycdlxCn7eVy8A
         7tiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jX9ahxxqEFpJhnR/JmUOxhJx7X6V8xhX4eMTXHbLdG8=;
        b=DghKKTbwC3KeFrFlYZGgLz7gpfSPl6VSpA7Od2lW8WoVN3VlCMNR0zaSCe3u55qVUT
         4IT6Yxj4UA+BxZ3o4gc0EsPg2VV8vVFVkDan8tRUn+bpOy+pL4eQvBtSfBwgvU0I/Uev
         uoXJNrV+uWVS2ZBda0D/3qobObPiI9kujXNkS5CziEJMqumUDobn6Zs8dcAWQ4XDIWOS
         KRyQIf5Wxpq92WpmM6okYBZTPopF7OGINYsQqt7i68DCP5+xhnIiT6GDdnRKOkYL5cJw
         RLWUEhsyWGPsx3gDmV0GzvgxE9UV21R1YN52PJSTx+s7i8VAJlB4fqYmxIyB8WDm7hZn
         lr3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uHY6i03f;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id i3si216089vsm.1.2020.08.26.11.58.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 11:58:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id u128so1474487pfb.6
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 11:58:46 -0700 (PDT)
X-Received: by 2002:a63:4e56:: with SMTP id o22mr11208777pgl.381.1598468325860;
 Wed, 26 Aug 2020 11:58:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200825222552.3113760-1-ndesaulniers@google.com> <CA+icZUVhwqF=TT2V3XOw1RbdX4g_i5qVX-5eTkVcsgEbfGyJkw@mail.gmail.com>
In-Reply-To: <CA+icZUVhwqF=TT2V3XOw1RbdX4g_i5qVX-5eTkVcsgEbfGyJkw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 26 Aug 2020 11:58:34 -0700
Message-ID: <CAKwvOd=Hc3SkTdm+JLoswwEQ-QW50Cy82t=AEMusqJnHYOKUQg@mail.gmail.com>
Subject: Re: [PATCH] Documentation: add minimum clang/llvm version
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michal Marek <michal.lkml@markovi.net>, Jonathan Corbet <corbet@lwn.net>, 
	Randy Dunlap <rdunlap@infradead.org>, "Theodore Ts'o" <tytso@mit.edu>, Kees Cook <keescook@chromium.org>, 
	Will Deacon <will@kernel.org>, Borislav Petkov <bp@suse.de>, 
	"Alexander A. Klimov" <grandmaster@al2klimov.de>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uHY6i03f;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Wed, Aug 26, 2020 at 8:53 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> Thanks for the text - a first good step.
>
> Do you plan checks in the source-code - in the future (see [1] where I
> played a bit)?

Oh, I forgot! Good idea, will add a check to compiler-clang.h.

> Arch-specific supported LLVM toolchain versions?

No.  That's going to be a complicated mess with frequent churn.

> Feature-specific support (like KCSAN, Clang-IAS, etc.)?

Ditto. (no)

> In the future we should introduce some checks for this to be user-friendly.
>
> If you talk about "Clang/LLVM" does this include the LLD linker?
> Personally, I think LLD is worth a separate item like GNU/ld (BFD) linker.

binutils version checks aren't enforced like the compiler version is,
so for now I'll stick to just checking the compiler version.  That
dodges the combinatorial explosion with regards to support you're
referring to.  Otherwise we're talking about a complicated
multidimensional table that we don't have CI coverage of.

> [1] https://github.com/ClangBuiltLinux/linux/issues/941
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst#n47
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DHc3SkTdm%2BJLoswwEQ-QW50Cy82t%3DAEMusqJnHYOKUQg%40mail.gmail.com.
