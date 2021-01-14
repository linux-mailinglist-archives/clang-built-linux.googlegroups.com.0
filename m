Return-Path: <clang-built-linux+bncBCS7XUWOUULBB47PQGAAMGQEV4RUWEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B11442F6683
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 17:57:24 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id p66sf2896422ooa.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 08:57:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610643443; cv=pass;
        d=google.com; s=arc-20160816;
        b=WTYEJOHQob2oZ88cjU18hB0J3GtQwrCvV+Jso2To4zawY3p5qwtiMfbw3vnEykbI6I
         uTmaScw99yn7jPW4vJDKfM10Gh4d5Em3Bo3KSak88jJlC9P4IFvV3jJR8fyl1lMj09wv
         lQWk6tFfaNdJjzz5jN5uxl3r4OMKHhVWHV7wfIAICIJSR7TwFv87K907WgRSeEywesfq
         C6YOW3kD1sYNW5SOG/u0UAnKDeI1yVtDTd+O9pwua6Cni7cRfrVqw8v6oshk/RWlWjEV
         husunxA2y0Rj0cGl3itzEACatcK1Etue42tNuQZjYvr1GLUUq4OYOIInwAhZV01NQ9Zh
         IA1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JmXDOEZxtzczEhhq7/OmQnDw6Mv2sTzHhFcT86LZvVk=;
        b=Tj9gOlCwzbqOSQ4idFViRcziOWqxvR506FuRKHUgHS12CPB4qjTEqDKReomqYn5Cea
         TfJmkFbGNAepMZ5rrP0lr6EABYuPSJtXbPcgpMFf8zYRaqR9RNZRUVRYzuuYllFb+ANv
         aIiQpMOmOVYhHMAhvjMQYgCfBQ/+WurDWzUn0AhkRN/IuPbZbz4hNYGCJpWjcKgCtKGe
         QXAkmrZnnylszEN7jm8030Ebu2sbylhFAMCxajGbFHPlzuohQ4rGy4w4/Hx6pFNDbbep
         RHwys9Ud0lcovz+ldPDpu35XOTsL7DTO82HHrsE32uCGNEQ5aKSssn828SuDEshI2szD
         p/cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mFllyiyB;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JmXDOEZxtzczEhhq7/OmQnDw6Mv2sTzHhFcT86LZvVk=;
        b=rO86qCExe/0tRZ0kLCjtticgyJ2ZAVDUOuoeEDyAl/5B4plDtKCIMfj9Md1zU/p0m/
         TNWzmIL8JDAmS1j1orFaQ6GD9r7OT2f2A3LZzW+pbBRYC9ALxrZGokUWhqwCoduxEA8n
         jZrgRYr0fnnJnb8CztnRVMYM9BXlfwfpxnO69b8nzLDs/ojBoQn5oR6u4cunEk/z2M7H
         d79dJUQhjOcHoDajItYDqOmHK49Qirc2hVbqa8/HN2kVX1S5W2ZRhZkOAKsG8YQcosJR
         IDoEqfKhZoCQkZXbTOEseOOC2bJ1ztjr0IiR49N74arXa7UG4969CkLNd7pxokq+xvHi
         W4SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JmXDOEZxtzczEhhq7/OmQnDw6Mv2sTzHhFcT86LZvVk=;
        b=GCK8PBK4rWiqZrzijlGTVBXYKFY9n6cAyPM3OoM814qeZXv41AkPUV++N75sHWTEYB
         OamA2OiWXWTcBQ+URKNdROF7ZyBv6t1DqZmvLNItPYO21XwtIJ8HfWnJsoEA+TU8CWRH
         V99bdgExYtE/PTsNbAjZtcKitb8+jE0/KZua77hHT7AWArF4pMyAbEVi727JHYBG6A/r
         IICrT3jZULwZ2rNEWJjFdHJ2G967xEoBibzDiDuwHl7oupzHcQ+yw16+AiBjxQW5fqDB
         /4gj3P7PyOBpSdyUCoq9FhD7UwtfYDSDBQJKGGTFywelGkHMHoXspzzIB+m/UaQnewEL
         IWxg==
X-Gm-Message-State: AOAM530EQ8V5LZLWBp++FOjyqPtEaeho+5DwR1BoX/BggeHoWIzog40T
	45rR/M3kbkUDyPZp78dj8sg=
X-Google-Smtp-Source: ABdhPJxBHk/UG9R3sDgQggjcZQcAs0Cf3oG2vRKvobl8UC6/wqbTGAtS5xB+Awbq83Dotor/1pgyIw==
X-Received: by 2002:a05:6830:18d9:: with SMTP id v25mr5240534ote.252.1610643443373;
        Thu, 14 Jan 2021 08:57:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:b36:: with SMTP id t22ls1515157oij.8.gmail; Thu, 14
 Jan 2021 08:57:23 -0800 (PST)
X-Received: by 2002:aca:540e:: with SMTP id i14mr3059564oib.57.1610643443001;
        Thu, 14 Jan 2021 08:57:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610643442; cv=none;
        d=google.com; s=arc-20160816;
        b=jQqiug3UH9pwO+vQkbSce5k63SEVSgrsbT12c3o/PgHbt4dAyz56qm8n3vsGKXMl2+
         NuIvOuRqrUz6qTRIAHzOcV9TYfyjNiX0qBLvwdQYD+gWVQeGP0okDkbjjBpD4nAF2NL8
         qtmgXOsgJ8uoipoNWomqYrU9FTRaMy9hXJKwe4uQL1PzRbDTNmw4+9qtarRvn5UYsFVL
         w7J4X7pEBlUe0ZQwjeCni4zipl+BjGfeJoSPmCVtMXJPSo3Kh2vmaKrXoXrTqjMtz9tp
         3QKNHTpEW1FKb3zsz9IcR6uX/U8upQ3dWrVWF4mOgrVjxeqIF9210bLlUOI6ea1ek3ip
         3PQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6sD1tCBoGAOrvfd86vyt9hIg6YLWE1pvXhNfgkiWDvM=;
        b=zY9rexlIByz/n/Wj+BiCD9UXYl6GX9SHcErV+bRxe6v2ksuMzmg8z3qA5QWw6jfXal
         O4qzluaWDRBp1d7CZ2IhzI2kMPjY/nsL39JRYL+tZp2kef1pCBzsA+JlIujI/+FEU1t6
         w5VrvApkP+yx5LH+vIQWzaIzu4nFRV6aHSPysdOEdipoxyKAhk/u/HLYO9F9AGgTMLdN
         rBZ8r9uXz20oYIb1gZ7Nc02N5kIbqTzxuG7D+92NHkVisO47h1PZDTD7Rh+quMHQlYOR
         HHWKkr8XDA6S6Y6rst2RdOx+h+r0WSUEy+Qm4bDvNWSKLfvK86LQkZ563BF4xU77l2hj
         LYmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mFllyiyB;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id x20si615488oot.1.2021.01.14.08.57.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 08:57:22 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id y12so3412785pji.1
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 08:57:22 -0800 (PST)
X-Received: by 2002:a17:902:d50d:b029:de:5b13:498d with SMTP id
 b13-20020a170902d50db02900de5b13498dmr3192064plg.38.1610643442083; Thu, 14
 Jan 2021 08:57:22 -0800 (PST)
MIME-Version: 1.0
References: <20210114054831.343327-1-maskray@google.com> <20210114140621.GA15904@linux-8ccs>
In-Reply-To: <20210114140621.GA15904@linux-8ccs>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 08:57:10 -0800
Message-ID: <CAFP8O3Liydjn=6PwaDdYAhtMS1zC3=aKW6oq6UBOXGr9HKoQ1g@mail.gmail.com>
Subject: Re: [PATCH] module: Ignore _GLOBAL_OFFSET_TABLE_ when warning for
 undefined symbols
To: Jessica Yu <jeyu@kernel.org>, Sam Ravnborg <sam@ravnborg.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Marco Elver <melver@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mFllyiyB;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1033
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Thu, Jan 14, 2021 at 6:06 AM Jessica Yu <jeyu@kernel.org> wrote:
>
> +++ Fangrui Song [13/01/21 21:48 -0800]:
> >clang-12 -fno-pic (since
> >https://github.com/llvm/llvm-project/commit/a084c0388e2a59b9556f2de0083333232da3f1d6)
> >can emit `call __stack_chk_fail@PLT` instead of `call __stack_chk_fail`
> >on x86.  The two forms should have identical behaviors on x86-64 but the
> >former causes GNU as<2.37 to produce an unreferenced undefined symbol
> >_GLOBAL_OFFSET_TABLE_.
> >
> >(On x86-32, there is an R_386_PC32 vs R_386_PLT32 difference but the
> >linker behavior is identical as far as Linux kernel is concerned.)
> >
> >Simply ignore _GLOBAL_OFFSET_TABLE_ for now, like what
> >scripts/mod/modpost.c:ignore_undef_symbol does. This also fixes the
> >problem for gcc/clang -fpie and -fpic, which may emit `call foo@PLT` for
> >external function calls on x86.
> >
> >Note: ld -z defs and dynamic loaders do not error for unreferenced
> >undefined symbols so the module loader is reading too much.  If we ever
> >need to ignore more symbols, the code should be refactored to ignore
> >unreferenced symbols.
> >
> >Reported-by: Marco Elver <melver@google.com>
> >Link: https://github.com/ClangBuiltLinux/linux/issues/1250
> >Signed-off-by: Fangrui Song <maskray@google.com>
> >---
> > kernel/module.c | 10 ++++++++--
> > 1 file changed, 8 insertions(+), 2 deletions(-)
> >
> >diff --git a/kernel/module.c b/kernel/module.c
> >index 4bf30e4b3eaa..2e2deea99289 100644
> >--- a/kernel/module.c
> >+++ b/kernel/module.c
> >@@ -2395,8 +2395,14 @@ static int simplify_symbols(struct module *mod, const struct load_info *info)
> >                               break;
> >                       }
> >
> >-                      /* Ok if weak.  */
> >-                      if (!ksym && ELF_ST_BIND(sym[i].st_info) == STB_WEAK)
> >+                      /* Ok if weak. Also allow _GLOBAL_OFFSET_TABLE_:
> >+                       * GNU as before 2.37 produces an unreferenced _GLOBAL_OFFSET_TABLE_
> >+                       * for call foo@PLT on x86-64.  If the code ever needs to ignore
> >+                       * more symbols, refactor the code to only warn if referenced by
> >+                       * a relocation.
> >+                       */
> >+                      if (!ksym && (ELF_ST_BIND(sym[i].st_info) == STB_WEAK ||
> >+                                    !strcmp(name, "_GLOBAL_OFFSET_TABLE_")))
> >                               break;
>
> Hi Fangrui,
>
> Thanks for the patch. I am puzzled why we don't already mirror modpost
> here, that particular line of code in modpost to ignore _GLOBAL_OFFSET_TABLE_
> has been there long before my time. Let's properly mirror modpost
> then, and create a similar helper function ignore_undef_symbol() (and
> stick the _GLOBAL_OFFSET_TABLE_ check in there) to account for future
> cases like this.
>
> Thanks,
>
> Jessica

Hi Jessica,

I guess __this_module in scripts/mod/modpost.c:ignore_undef_symbol is
not a problem.
For PPC64 _restgpr0_* and _savegpr0_*, I am not sure ignoring the
undefined functions in kernel/module.c is right.
(I know they can be produced by gcc -Os in some cases
(https://reviews.llvm.org/D79977), but I want to learn whether that is
a real issue before adding them.)

If we ever need to ignore more symbols, the code should be refactored
to not warn for unreferenced undefined symbols as my description says.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFP8O3Liydjn%3D6PwaDdYAhtMS1zC3%3DaKW6oq6UBOXGr9HKoQ1g%40mail.gmail.com.
