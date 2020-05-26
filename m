Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBS4CWX3AKGQE7HY33PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id B81F51E26AF
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 18:18:20 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id j69sf18001197ila.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 09:18:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590509899; cv=pass;
        d=google.com; s=arc-20160816;
        b=H+MVvJmAID00aScvf1OypuXB1MtPbpeYAm5pI829UM0dCCN/AQNpLI3BU1Y9zZG55B
         Ttv4HUpsIYuSCQ/qI8+4uBLj1pcJd1erBnmiRulf0Pj7iIavTsj6DvTok8LIcP6JW+RI
         wplolzmE6Q7SyHmsC3OAf+T8FY11eJvJfhZYtnYZ2hOtxLXE939DHGbMhdkT+Ni3qLLk
         mFyjVMJcW1PNv+rlefkWbGvC3QrF13J72QBZZIzlaXFNfzLp8ra5nmMLRhoHoYt0F+gs
         bqcCSoPz3vhaHrYwts5q9wbvQE69+yw1SC8gw44hm4G43PG5K75AnOPvIgpPK1DCbB8q
         8//g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=SixYc84g6Kw3zXfNioY9C/VmPKkAZqMCPsi1UcExL60=;
        b=hHSLn8ouNw5Grl36UzCAm0aTss85ggQBQ5oKdUWHihBBFJaDFMzS8kkJg3TlaTgcnH
         9tMJMfJKgMPy/znn0Z32pDmybJ45WrG5dh1T7Gt9Y6nTLAgf/xwgqyblhhRYFPJ8EqGk
         PkyTr5ZgctK2F+lqMtl+2O7qmTH81zsPI+8dJlmJLG1uQZNd5+DNDOubNoPi3WKnO8d5
         vWI34RzY5D9zqRs2aacLOyZbuqk4csMaqlS4WtjmYmb6O4l/im5mZMjZVXN86MbDf9TW
         HVlwNtks4zjBa+cyiTnes79kshm0vUo2E3JWsRsXlwgngDD7tOMTr0+8sHIVgJq7NFfY
         1AiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t5yTsL+h;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SixYc84g6Kw3zXfNioY9C/VmPKkAZqMCPsi1UcExL60=;
        b=YGJBXM9uBzjMgLDz/hmikE1yI24MKclLvTLIk6OKZwnTRvK7KcULwBjR0jabDKIsz9
         O9IEGTPtnXoUqm9NeDmrovIGS/DW93LK6jaVvKWPl5opJxgQQw/IJzYU0rX7H8IY+B8P
         BkL/9rK216g6I2e29tayT56k+woiF88XJJIiUIT/UasXSCTUN07Jv98o/ecpZ2swmVdc
         PP6S3HA5aaB/9YMxx9nfUJmSg26/vYJsR+hJgNrLp8+O9+/NLzkSJWGG8NzaeQBuS0c6
         7j5VFVK56msAsYRGAV1JyTUyVHIBTnEta/5E16bpFZpUTtRzF+61dZ5qTfIpZ9lK0ELk
         NLcg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SixYc84g6Kw3zXfNioY9C/VmPKkAZqMCPsi1UcExL60=;
        b=POrwPRdOLu58h7JhEPLm1JavsixZRFJxmSIemTI9QHuenk1HZqRMwHj4Y3QrnN6hDa
         MLO1OaKW7ZgWGLJua3m98aXAl17CD4hFNQjvKdIpX3C/rviZAU2bMilz1WZnO7cSNG81
         jeS5znT5EVCfQ9nR6oQvY7JmeaGtDwXFOnMjTzPH8LNG/C3rJ7y2hu5kwSxoFp8H+v3J
         zyMFaHRLmeXvCAnN6FzsupxPQlZwaWcqdQ6Z75Y+VWWuEruBauoX8Vqezk4BFH5jY2ug
         PUGsWdIStqfyLRNerTP8tKRxFJUDj0dfxMsgwjHxrEVPqcjoPg1JF1gYKE9bSuVa3AQz
         f/Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SixYc84g6Kw3zXfNioY9C/VmPKkAZqMCPsi1UcExL60=;
        b=tG1kvtP44fWjcXFzfdY7ddqDdorVG60BoN+FxSXo6KbSvkAwoWIPbviiDhB3FvIUjv
         EWy1xzVkSjOKmOq1iT8FHfcuhbHewEp1TP/WSQFfORofN/A9d5q8vewu1ybDNvsYVxKc
         VJ2PF0v8FPasLzshUEGT/5NeJ/MFPuCgfxih7OhM8LkpTLHGaGrn1bK+8Gpi7T2XddtY
         gNxPhgD2hsY7Fj8gD+G/ewc90o2IXNpbKXPJP+9VrQsu+HYYt5ncWnBrOr9rugefBw3W
         FsIKNrwZ3Mls4pSG818omYiJdXSccgnw4RvdNID4sxbzjy4/bLr6N4FyatJVLwSAkbu2
         9ARw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533n/QX14YfLkYJ0OVZtg8+6G1u/6cnJ/wrLbtUfG+mQlc/72dVY
	KnafptHDJ6lUj3VsvUUg5kA=
X-Google-Smtp-Source: ABdhPJwhovp+Eei6lybWBborbBWtTkuBTJynuk9kCIPX7IyR/RYVNkzfR/PbXeX4FyPryqv6vpllYA==
X-Received: by 2002:a92:d591:: with SMTP id a17mr1956997iln.13.1590509899468;
        Tue, 26 May 2020 09:18:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:f213:: with SMTP id q19ls1793158ioh.2.gmail; Tue, 26 May
 2020 09:18:19 -0700 (PDT)
X-Received: by 2002:a5d:970e:: with SMTP id h14mr17335871iol.117.1590509899119;
        Tue, 26 May 2020 09:18:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590509899; cv=none;
        d=google.com; s=arc-20160816;
        b=L1ARdXhtu1LTP5YHMeawJ5GF1IT57gK1PFjVcCmHAQPfIRVMP+SfGBglgAK09RuTky
         JsDnCCMS42v9ejV1Ce7ieA/FmfuYw+e/DL8tSxqRDW1pp9twdb4JDhergSIAd0sigyzQ
         +VT6n4p2nzD/ESI3RtZYFbQv+M+BNMgkVeGfpQkKAyshYpIzA5WyA91asw715fC64G9s
         c6fUtYtOYFc5+OIX3xyuvCZvM3LkIUGuB1iSVsjnz6X1pf+VTZEy18zo0HzsFrDgt8r9
         1rZdL0zTQ1Ojh9T0wEvYL4dTtxfYRomtufIWP+UcDpNVj1pNziUanDwWt7RQWn3tVoUA
         nZYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=W2wCu2SdkHFkQ1Ckp39G9Z9PbrnS7bq9ACqqoB/0oa0=;
        b=AZbqEQFbqXxhxVY8dwn1of794oZt2ku04Qgozl/XAC5NFcltg3Vd8QqSPziUN1JcJt
         lJ+99WX6aEsNqKo8fCs4D4vKVgZ49+r9WTr+YS23WuBxEGRXpTTsH53d3Wu18D8WgEYB
         0DkvcpK9ks/PLz5CEaGqgumdW0OsCFmVy2PljZ+Shuc7NIe/XJMecfNKwSwaYWIIjsHY
         EU0gaV1jjxu+rX9brTpntFIdPnMezcku/+WgXeTW2j0g3uRuWeVKdem7TviillDjgw/D
         ISRrXz7nGmXnZqnfOhT64WtEVm4OmmAGdeya3Rxhca2CLjwC842xUBA0J/NTYSYtzB3t
         +qRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t5yTsL+h;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com. [2607:f8b0:4864:20::141])
        by gmr-mx.google.com with ESMTPS id k8si12392ilq.3.2020.05.26.09.18.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 May 2020 09:18:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141 as permitted sender) client-ip=2607:f8b0:4864:20::141;
Received: by mail-il1-x141.google.com with SMTP id c20so21044835ilk.6
        for <clang-built-linux@googlegroups.com>; Tue, 26 May 2020 09:18:19 -0700 (PDT)
X-Received: by 2002:a92:5893:: with SMTP id z19mr1947013ilf.255.1590509898761;
 Tue, 26 May 2020 09:18:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-1-nivedita@alum.mit.edu> <CA+icZUVa8FhhwHgXn1o_hFmgqFG6-KE1F+qvkdCzQjmSSSDWDw@mail.gmail.com>
 <CAMj1kXHVFgRsbssJQD2C0GZnOgG=rMYbPGJQtiKhSw6sZj5PaA@mail.gmail.com>
 <CA+icZUWyFDgieQswvfhWemzymDh_UiVqH2uH52a+0otcr2Pd4w@mail.gmail.com>
 <CA+icZUVKRZPFX_Q8RRJnFsHrkM5VbiWUEam+6O5XSzgNaqAzPg@mail.gmail.com>
 <CA+icZUWTKJ=-OGJPzqm6HNQMkB1uS_B0ydU-9Xa035wB7vA4iw@mail.gmail.com>
 <CA+icZUU54K8z2--6fS=LEaMJGgeWfudViT7ETMsSYF1i59_4mg@mail.gmail.com> <CA+icZUWH9fFURgbiCuRr5-mc5s=Ft97_TMP4YofDMX5zEu4_eA@mail.gmail.com>
In-Reply-To: <CA+icZUWH9fFURgbiCuRr5-mc5s=Ft97_TMP4YofDMX5zEu4_eA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 26 May 2020 18:18:07 +0200
Message-ID: <CA+icZUV2fvwQTnzUmWCiv4unzFb7HjUSTrYgHeYd0dgFi=oLMw@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] x86/boot: Remove runtime relocations from
 compressed kernel
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>, 
	X86 ML <x86@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Daniel Kiper <daniel.kiper@oracle.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=t5yTsL+h;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::141
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Tue, May 26, 2020 at 5:07 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:

...

> > > patchset to previous build:
> > >
> > > $ git log --no-merges --oneline 5.7.0-rc7-1-amd64-clang..5.7.0-rc7-2-amd64-clang
> > > 8b74901cb9e5 (for-5.7/x86-boot-remove-runtime-relocations-from-compressed-kernel-v2-nivedita76)
> > > x86/boot: Check that there are no runtime relocations
> > > 83fb1bc3b076 x86/boot: Remove runtime relocations from head_{32,64}.S
> > > fede23dacbbd x86/boot: Remove run-time relocations from .head.text code
> > > 3e5ea481b8fb x86/boot: Add .text.* to setup.ld
> > > bec910ba3d67 x86/boot/compressed: Get rid of GOT fixup code
> > > be834cee6f39 x86/boot/compressed: Force hidden visibility for all
> > > symbol references
> > > 9b7c7d8d2d7b x86/boot/compressed: Move .got.plt entries out of the .got section
> > > ba6a49f806a0 (for-5.7/kbuild-compressed-debug-info) Makefile: support
> > > compressed debug info
> > > a1fb11944d11 (for-5.7/x86-boot-nivedita76) x86/boot: Correct
> > > relocation destination on old linkers
> > > c70e3890058f (for-5.7/x86-build-maskray) x86/boot: Discard
> > > .discard.unreachable for arch/x86/boot/compressed/vmlinux

...

> This works:
>
> [ arch/x86/boot/compressed/Makefile ]
>
> -KBUILD_CFLAGS += -include hidden.h
> +KBUILD_CFLAGS += -include ./arch/x86/boot/compressed/hidden.h
>
> $ ll arch/x86/boot/bzImage arch/x86/boot/compressed/vmlinux
> -rw-r--r-- 1 dileks dileks 6,5M Mai 26 17:05 arch/x86/boot/bzImage
> -rwxr-xr-x 1 dileks dileks 6,5M Mai 26 17:05 arch/x86/boot/compressed/vmlinux
>

I was able to build/link and boot on bare metal.

root@iniza:~# cat /proc/version
Linux version 5.7.0-rc7-2-amd64-clang (sedat.dilek@gmail.com@iniza)
(clang version 10.0.1rc1, LLD 10.0.1rc1) #2~bullseye+dileks1 SMP
2020-05-26

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV2fvwQTnzUmWCiv4unzFb7HjUSTrYgHeYd0dgFi%3DoLMw%40mail.gmail.com.
