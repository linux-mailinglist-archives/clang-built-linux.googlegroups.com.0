Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBOMVX3VQKGQECLLZWJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E151A7FDF
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 11:58:18 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id v17sf2351935edy.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 02:58:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567591098; cv=pass;
        d=google.com; s=arc-20160816;
        b=V08NJ5rwixg0GcROE47cK/uVgYHVJR+22owWsPsm8t58It6aVYWP4bMBPidtcfMtkS
         c6FSjVuz0Xzl+c/n5vB5qg79ByWxb35AhIkOEeb8Se2s86qgcIOGOuc3RIi9uF3747E6
         MEQIacdlt/dN1yF94b11voLbt7SL3g+F+Mj1GJA2TMhq8hCa0g/MPETgwEE2fOCvtIXL
         c2YY7eQyTQXDCcuuSOJzZo4OgCOE7f+RgHz5lfzNWOVtn8DUc//xJfBPoRkJeBaG9mCc
         mHjp/rVZ8cs8Ota9tW+90IjbRstXWnRquyJM/+tS20n30Dc5kkqaYif89N5CyEZth5kw
         IrSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+hcKMQu8jwkrlGDznpXSVsFxZSAdjlqe3LKETy0eiMg=;
        b=im3Kvfhubq/7QedE1rqTiRuUXmgUF5q8Q7kpaVb/VQiMP37v5Hq+pY/O7E2G4hUhqK
         UD6DBaztepUmaAewYVZBX0jSHtgh9+hgF5VF+nBbMweJ1LIELK/C7mKTngtfRtRWui3z
         vb0F5Y0taH++tYTIOwsl5mapgp+NnLPx9yeR2aD8OJszyOfUnKGHAbSF5BbckzUY1Uin
         LrRBfqawzD3zXo+BNN5c4tfy8f6xz+n5dyPDjrqNVsUk/rKPYr206REUIU9z+uheL1bq
         iUfI2+3cU0a6gcFqied625l3o3ohFEuEYVjOpws9lSuAsD1ztVmyBZyWda0XETBW3/1E
         F/xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Quwnzrze;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+hcKMQu8jwkrlGDznpXSVsFxZSAdjlqe3LKETy0eiMg=;
        b=sj8BDzz2fP9bpMgj/x2gBIm5xnQUAeQTUlVzynY8As7t0xQDZ5TMQDUKScCnT+2iYK
         AIT7GOIGwfhI678CPRtKOYQ4tNJrX0yLvHgAUfWFN6QgcS2QpJEtJF9ZAqhSbMVadNwp
         CIkJA14cx8wwj7LfMrc4XcqjgupXtARTLwxqYjqL2F6cWXrKIEKXKRzOBAsQUmENdR5i
         v71gsHzRe/vt4iyT0+4IV2AZT+VzYDdMMVMLlKMBIqMh9yI8Ye6Eu/hSfNA00lZGO+OW
         Jiyxu5ULQFEFDEhN0jQi6KtI60qjgOzP6tbU/o7Cp2fWEsd1Fa08oSthKkM9LXCcNMk5
         0cUA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+hcKMQu8jwkrlGDznpXSVsFxZSAdjlqe3LKETy0eiMg=;
        b=i4bK4jstbHvoP6Zj4nL+WqW6zWdQk4OjsXsuSgmuc1sS6AE+vAjVU6hUy9ofC8+2+y
         er0bUsBR9Cf5pbdfrXp8sy6rlC+vIegBiOCvYqzGVNvc9dlNuJvWZD1KpckhJJm5QRd9
         02F0uan1rRNRZww1NKDdmuaQfvTCoxOIToHbFJkAZpb0KeJJIGhRuUcRp/97c3jgnK8Z
         /7qrhzEN3I4/x3N1XwJwF58IrGK7UA3wSbcZiS29Cntypmt7Q2IedVuMHwCCpzvRoG3h
         L9/zsyddUuxHhIM8fooHEwIPh8yc79ja3H+kO7Asgdtm2s5V5Dskm91h3PJnTtYlIOtT
         3uUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+hcKMQu8jwkrlGDznpXSVsFxZSAdjlqe3LKETy0eiMg=;
        b=l8HVi528CB3q2v82LphqpsCA7SO9Y5l0sXdvUzVHjiKuGOx1+A+KucXMjpCD+jcBRU
         WIevIyRmgKbMd5J1Syk1sVohxoAde6PhhRIFUQIVGVaCl86IzMiP0ootE/EyO1HCPc8K
         aU8e9Ac274kjm6ETMWsNnw9abg70UD3IjoelGtRyqU5h5UH7+gljwxnZXHc3QyAoi2Ea
         8F/hgrdagNPy6NzwKAZK/6WvwfqTW6YR8hOmS1SXHY7Y6SupQqSnkTO8dM5Hz9xeArVN
         m8dOLZ1rWxUC9SdfMEazSv+y2MHFI4whuSLgAI07whbG19JpsyK95/8VJDc0sR2U9iXU
         hIyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX1cZMcoGqLiTK9gCt4HvLEoFq9rWYU9sTeavqFGgDw2++7GgdM
	nenmNrmE8ohhJQAKQPC5KWs=
X-Google-Smtp-Source: APXvYqz11QSSuT/FQdC3SsbitrdSLyLMm5t70l37+ttPfQcAF3poEoKBycmJjaIkU5JUl9pzQtabkA==
X-Received: by 2002:a17:906:af4b:: with SMTP id ly11mr32296549ejb.309.1567591098000;
        Wed, 04 Sep 2019 02:58:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b2d2:: with SMTP id cf18ls4261165ejb.8.gmail; Wed,
 04 Sep 2019 02:58:17 -0700 (PDT)
X-Received: by 2002:a17:906:6d52:: with SMTP id a18mr17262147ejt.56.1567591097475;
        Wed, 04 Sep 2019 02:58:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567591097; cv=none;
        d=google.com; s=arc-20160816;
        b=uxcu06kLyNCMR3tvSBZnxnU5pQi4OSAB4SQOuay+dGufaizjsZy06pnxfNqjYhjSQW
         3RuuqfRDqMWA//4gpR8DAD4pSKBFOgVewNXKFDIcEFGYJdgtfKqd7uorO+Znj6XyG3XH
         o7T7uY3bfoMgqFp12I368rjV1iUz8Nf4o3ow8cgxuamd5KaVWiPTffKA2W+WVBYoTL18
         KPyU0a+PnJsIMXbKBKC3ic63A/W75HWMEaSLsvALEBDGlamLacOsq9kHWm4M23T+4ZmK
         fsweviiVjsYh66PFdyky8wm5B7WZudVEvSAFT5sAtT9blt4G8jcE85M8kXvJRRFHoxEf
         bzvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lkR2Ca+FaxVlWbFtmtut4HN81Y4TL/IiykdxaBdNlG0=;
        b=Inz8lGDTmM8heilF86vDuTAZ+K2XZcEbInjoYCP8JnyITokb8dPkvrt5hBn7yMk8WS
         qUrwCQBP+Q3fMtBYEl/BbwHtRsfHSkE/yUtIH9YX9yLuT3FqR1mjMLtxGa1b+4g64PhQ
         LHPMM1ZdJGFCGz7Ihqi3amnJQdPREApE9xPDBAOTUwFhSfvj650HDIVMxuLOiZ1cAHop
         rBRFVZkpZyNU60WtO9DpYFhbgxWfDdsbWEEaiREaxpV6J5FQAqNowhfC79ca3q2SsRZv
         feFeZTUzjv6L0FWTU1L5ktKYzcNswb03HwZw0p0moOyJ2uLRMs76p6OAjWYwzczfKtmC
         d40A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Quwnzrze;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id o12si877072ejj.1.2019.09.04.02.58.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 02:58:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id c10so2600973wmc.0
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 02:58:17 -0700 (PDT)
X-Received: by 2002:a7b:c8ca:: with SMTP id f10mr3477750wml.36.1567591097217;
 Wed, 04 Sep 2019 02:58:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190831162555.31887-1-yamada.masahiro@socionext.com>
 <20190831162555.31887-2-yamada.masahiro@socionext.com> <CAKwvOdm0zcyaBLdSVc7PmjUa-wyVuCaN=6qZoPLvnoJC1ammog@mail.gmail.com>
 <CA+icZUWzSsFXLmrO2G7ochE62e=kByEV6UKregcJqZrJN1WJxQ@mail.gmail.com> <CA+icZUXboR-0TzpSHf7a8MSjxPWxdC13Oudu8D+b+umtvWCCkg@mail.gmail.com>
In-Reply-To: <CA+icZUXboR-0TzpSHf7a8MSjxPWxdC13Oudu8D+b+umtvWCCkg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 4 Sep 2019 11:58:05 +0200
Message-ID: <CA+icZUVN1zRi5P8PPWMjXoXwtSCkbzTFNreYXi+0HtTjPnfkTQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] kbuild: rename KBUILD_ENABLE_EXTRA_GCC_CHECKS to KBUILD_EXTRA_WARN
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Jonathan Corbet <corbet@lwn.net>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-doc@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Quwnzrze;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342
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

On Wed, Sep 4, 2019 at 10:07 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Sep 4, 2019 at 8:58 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Tue, Sep 3, 2019 at 11:50 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Sat, Aug 31, 2019 at 9:26 AM Masahiro Yamada
> > > <yamada.masahiro@socionext.com> wrote:
> > > >
> > > > KBUILD_ENABLE_EXTRA_GCC_CHECKS started as a switch to add extra warning
> > > > options for GCC, but now it is a historical misnomer since we use it
> > > > also for Clang, DTC, and even kernel-doc.
> > >
> > > Thanks for the patch!
> > > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > >
> >
> > Thanks for the patch.
> > I like the backward compatibility and am OK with pointing to 'make
> > --help' for the documentation part (KISS - Keep It Simple and
> > Short/Stupid).
> >
> > Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
>
> If you will do a next version...
>
> - @echo  '  make W=n   [targets] Enable extra gcc checks, n=1,2,3 where'
> + @echo  '  make W=n   [targets] Enable extra checks, n=1,2,3 where'
>
> ...clarify on extra checks for compiler...
>
> + @echo  '  make W=n   [targets] Enable extra *compiler* checks, n=1,2,3 where'
>

+KBUILD_EXTRA_WARN
+-----------------
+Specify the extra build checks. The same value can be assigned by passing
+W=... from the command line.

For consistency reasons might be better:

- @echo  '  make W=n   [targets] Enable extra gcc checks, n=1,2,3 where'
+ @echo  '  make W=n   [targets] Enable extra build checks, n=1,2,3 where'

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVN1zRi5P8PPWMjXoXwtSCkbzTFNreYXi%2B0HtTjPnfkTQ%40mail.gmail.com.
