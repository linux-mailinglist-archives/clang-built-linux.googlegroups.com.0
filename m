Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTPPWGCAMGQERKBNQZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 924F63702FF
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 23:34:05 +0200 (CEST)
Received: by mail-ed1-x539.google.com with SMTP id y15-20020aa7d50f0000b02903885ee98723sf1370175edq.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Apr 2021 14:34:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619818445; cv=pass;
        d=google.com; s=arc-20160816;
        b=vssCRjptjw+y9NkTPNyJ0/z3g8jWu/DJCcJxOnOZE+bKADb0ksjfn3+xrLAZW9sH5S
         cQcPaTWM+0hLX/zyjScRUpiomVTVZ23ISs1Zj3AfY5990fs6IkrmKi5AqsJVEybD2/j1
         FdS59o7qTUFxCCH621WsEfdDBiYz6U8bhUTbax6oqrEL/4qAock8Urmoo00g55/LJHFw
         0Qu5ZCEFckcgLhySepMnAPH+1JG+M7rzJ36FzvjqpgsQnjqD/k/rHpU0m4aIqPeql9+a
         DO8gcsHWsHmvQAsONDZ53y87BLXNuI7r3GjAlAe9RU4Q9v8rlvabj3aguiuSgNSHPrYC
         sLmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GqTjM3MV2S/jqURBQfLQWZlXmKHJz35Z+rQ6I4dm2xk=;
        b=mq9JIg2EZB4DuTfinlE8eS0jekelGfO2ZgcFh6Eoyxn7zOOu1kj8kUgC6rZRzLhUzf
         gKm1VvztIsyNZwxhsjZpFviDDVMiBv1sJWr8SJ2fN7kefD5Bjhoyz4+MmAfwCpvZ+LHa
         12wJoWZjEo5zPHNvNMDwEGfLWIAMVb/+foQUQApKgS4n0jK3qizyBThIAaq68whIvIzu
         TJyVhGCKTtRONgsZ1UnjwXj7CLfYszWlLTsrQrHNpOsMmkQlJPed02IyYYS9bRQ/z7yt
         k6AOMTnOohaecmYGf6C54OKz5Ec3maCJrbhhav7dUYVnoWnpG2A5FjEI/gXBkrN0Ckzw
         9Gzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GTJlmBY1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GqTjM3MV2S/jqURBQfLQWZlXmKHJz35Z+rQ6I4dm2xk=;
        b=SGVuKUALdywxmSCtkQ5OYxWxLqeYwXX9Lge1W7LPglBCWjC1Q12+0QhNtUcL+92vVK
         7iPYEd6pq8J+0bIO6jjEDeierrpqUsqqC2dnPsfKmJv4AIyJN1eu5BdWdx9USPN0THmr
         qekiU80g5u9E6uu6FXZXWvUBRChbl7Ar9WplyLyPKFxuCAizRt0ET/C9mvbzxJfzekeu
         +VAIQcpOBQIpBrpsQDhlcgiILmMi1YS86zbICFwCFrE+Zd6m1f6inTqAF8o1miZNSBNP
         3RNey2vBxwvecSjVa1w4Cq/7ooFMt2ny6q6+W5EoMi2s69uHyYnDwQmFcJJt12QelfEp
         YwXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GqTjM3MV2S/jqURBQfLQWZlXmKHJz35Z+rQ6I4dm2xk=;
        b=OmUq3migPpGF/jCOe3FQxWBZoV/RIrZHFuDQIZW0D7Edi+FxXP3ikfU831HRPIIJnc
         NoXZ+5/eMO1XWuNYVKQdkwP6cr8IGlGQ41a7JqH7hZi6kJnPwIXus0Ld3bd+/tn+hU9a
         t+nusXW6yjjqx8QjsUnfRwSyySw5A3XK8Hq1KnaRa+ol0VnGiVl+t/ltWDJMvQ/o2VAX
         wQPGuO30Hy3oBhpULLaqxwMUHhJwyugKlY6yzo5LR1QkyE4NlpGq8mMJlB/68JGL56mm
         hdNU6dOEyTlwIzTG7HXNEquALV4a005E2AIAXs0QY/Zn/caXTRWnG1gMh1kX8gkznQnE
         2PRA==
X-Gm-Message-State: AOAM530Xq6YBB0kZ0hGdsHFYiIdghMDhfu+hwH2E/g9xlp+DEMlLI6vP
	U0IeLNDiCmyBBsu937UfTt4=
X-Google-Smtp-Source: ABdhPJyOnuWHN9FHftHaVKKt1zMIwmyeiF49DNIj76cb+lv+D7lIQxOYpmHTcP1WirEAakOFtaQZ3g==
X-Received: by 2002:a17:906:1311:: with SMTP id w17mr6742092ejb.182.1619818445385;
        Fri, 30 Apr 2021 14:34:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:acb:: with SMTP id z11ls3970638ejf.2.gmail; Fri, 30
 Apr 2021 14:34:04 -0700 (PDT)
X-Received: by 2002:a17:906:3949:: with SMTP id g9mr6601878eje.7.1619818444496;
        Fri, 30 Apr 2021 14:34:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619818444; cv=none;
        d=google.com; s=arc-20160816;
        b=lYNN1RsiQssAB/Jo9F3qLx7yZWsLFZtrwo30XcewnSFxghHiKs+dR7RTF7AN0YMR0o
         mMxQAbQ6CHKJGMb7pPTAJydWWP1u1mrQVatMHAV7GCaTF7QOqdRCjvA1bR9jkUDRckKr
         QNpLjcOyf8wJ7/5lOgThsFRRt+pjNO/A5E+/zi35Pmotc97oo7Suv3XWfqsBOWp56RxQ
         V6Ag4TI5US9iNlWFRA5KkIQcWwTYNhkZh7FUVC7IbuLpp7nFCbUwHHM3TMbZRUxhm1dT
         Iqb3OMDhDaYIw3IZmIJ6VgVHMiO2qXaHLTOnZLaXXuJeTQBus6MvesO4iJ4oupzYzTAG
         bNpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sJWa2KJkaLugvoGNjQoNmlranNjOBpXntuPfu2Rmhko=;
        b=h7og2hOrCeo4wBh2XndT+ZASvFwsGp54i1KnEj2xBzB7Yn5Q/zXY9cO2thEXhDInMa
         N5lSzzh3DLZ8vfHulXGa/nxvxBgzDj6jbc+aZpFcsHE6sV3aFke59YA/nkRPGXjpFpiC
         afwzMa+nF9NR52l8D8zBoEoQXgm+WBmjgQnk53BdiPYtO4vQchd7Q2bWF3owmo+RUWEi
         z0XBS4fb5eQTfySV4gjC4lX1TEFrx/11XmSICDK8GkFyA89T8kcmx0P3QfXX5LC5FK7X
         5uh0nu6RY6qi82SIEeVJGgXUzaDHFS8li/ZE29omoyvwHB6EqyHuVk145EhzhswfWzwX
         IfAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GTJlmBY1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com. [2a00:1450:4864:20::236])
        by gmr-mx.google.com with ESMTPS id h3si536907edz.1.2021.04.30.14.34.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Apr 2021 14:34:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) client-ip=2a00:1450:4864:20::236;
Received: by mail-lj1-x236.google.com with SMTP id a36so71636682ljq.8
        for <clang-built-linux@googlegroups.com>; Fri, 30 Apr 2021 14:34:04 -0700 (PDT)
X-Received: by 2002:a2e:9211:: with SMTP id k17mr5045276ljg.495.1619818443844;
 Fri, 30 Apr 2021 14:34:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210320122227.345427-1-mpe@ellerman.id.au> <YIcLcujmoK6Yet9d@archlinux-ax161>
 <de6fc09f-97f5-c934-6393-998ec766b48a@csgroup.eu> <CAKwvOd=SkPtOij0tCx=AzUsLD3RrJZBFs0WZKuQJ3c4JM3Nn6Q@mail.gmail.com>
In-Reply-To: <CAKwvOd=SkPtOij0tCx=AzUsLD3RrJZBFs0WZKuQJ3c4JM3Nn6Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 30 Apr 2021 14:33:52 -0700
Message-ID: <CAKwvOd=kU=gOci7y1CjZaKw+w5H3kZ_CfzGG0=r+Fs33hLV4uw@mail.gmail.com>
Subject: Re: [PATCH v7] powerpc/irq: Inline call_do_irq() and call_do_softirq()
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Nathan Chancellor <nathan@kernel.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GTJlmBY1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236
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

On Tue, Apr 27, 2021 at 1:42 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Apr 26, 2021 at 11:39 PM Christophe Leroy
> <christophe.leroy@csgroup.eu> wrote:
> >
> > As you can see, CLANG doesn't save/restore 'lr' allthought 'lr' is explicitely listed in the
> > registers clobbered by the inline assembly:
>
> Ah, thanks for debugging this. Will follow up in
> https://bugs.llvm.org/show_bug.cgi?id=50147.

Looks like there's a fix posted for LLVM in: https://reviews.llvm.org/D101657

Though trying to test it in QEMU, I'm hitting some assertion failure
booting a kernel (even without that patch to LLVM):
qemu-system-ppc: ../../hw/pci/pci.c:253: pci_bus_change_irq_level:
Assertion `irq_num >= 0' failed.
That's with
QEMU emulator version 5.2.0 (Debian 1:5.2+dfsg-9)

I didn't see anything in https://bugs.launchpad.net/qemu/ about it,
but figured I'd share in case that assertion failure looked familiar
to anyone.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DkU%3DgOci7y1CjZaKw%2Bw5H3kZ_CfzGG0%3Dr%2BFs33hLV4uw%40mail.gmail.com.
