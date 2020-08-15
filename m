Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA4U4H4QKGQE34ICKYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id CF74B2451D0
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 22:48:05 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id t13sf8292588pjd.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 13:48:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597524484; cv=pass;
        d=google.com; s=arc-20160816;
        b=TxWfyE6GK52jTYHO1INKRnNYT6LwEP7OlBqMSTQbeSFQRsW5MRRxV5iUY1v3pGqpnE
         l+i28LUjzdKC9saFCPX7Iee4lvhHY53H49ZVor8o5hSMMAPSuSWzopZwxFAVf67us7Qm
         yPETj4HJAadtm+K83w1WXVLVJ0tTF9dvnUD+zXGYznwQ/M36dOGfSqDQBEj4f+EUA9li
         KhEtoUAZEmuB1gqb+jqIG/oJv4kTD3AJMTIOOe4Qadl5MIK/9p4RVYeb/Aq80P05VqjT
         jZsC8msZgqucjxvp59M9nAa4kx16zqNQlBQEGcwgMydagV6aFsLX+4/tYGsCgLt2SHz3
         pqaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bj23NT0jBGyKOJRO5MHTkRC5GtedCLFhj5/C7JkkUSI=;
        b=rJk7YIY9/vn/8L136rDiDBslVp4GCxX2tgCQHuFk6tGINhPuhr3nhiK8S0lQbNgIye
         7A/VwPsQ672ZRqAF5MWBSmXPgeG3CgfK3KD/5pPylF0/y9JvMSNj5GqX7coP+8wMnTEg
         Oc58bPFEYQnlyFVeEXhoGhwgddfN35VPdByifwf0cZHZ3wPREos1eWHnq984cT+SRstC
         yGgDT4zbv1sMzmuFLWaJUB6FHcbnWHLmqhzcHXYo/z9FdKBrhUN8QD3Blc9T9mGlxAED
         T6596y5ssmdZ2c0670MiLEflwpPThcd9NTOgVaCkmy8Xz7wgVx4S25aBBP5EYjPWCr1P
         +eGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="wKBjH/2Z";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bj23NT0jBGyKOJRO5MHTkRC5GtedCLFhj5/C7JkkUSI=;
        b=VdPeKSSXxENotbS/FLTgYJdQsBHXF682LQ6XAqXZcNj4X+ABU/5MABWoHx85WFp4iR
         2moCGY3Bq9u71adt80OWDhp+AIp/+I5XMyp5jah+uYaAOTKRsPDYJGXrR0o/cWfrCfrI
         bPuetHAzwrc1p47CzvDra0bwbAfoQd94ODd8xbcBz8tu/rQRu/rVLPWpuTTBZQJQt85P
         7QMr6qF8HEqh6npg2Z/xTVbwtUfy03Wll+dREnqjToEuE4xs2p+pmkcKwRnPb6naCovi
         Koc+vOe1djlKKFLjPxE9sNupp7sbbQu3i/wHxSxszlYbXfP8cbNlGea3YSqRaY+d7D6w
         gRFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bj23NT0jBGyKOJRO5MHTkRC5GtedCLFhj5/C7JkkUSI=;
        b=FEXUETLUcgQ7A94yEcaADL6sZoWPwKeHLPpCjrg0bIwGb8IhWdhidQJe2IFLjzcWGJ
         24TnmJm45DtLO3A8f1EDpOZflN0OiEa9lFRwK8fb5AXqjD9pSDQtZiHS2Nh9n1OheXGk
         pbTa54RhI+iw64sh31coWg8dSCpjMne7EnUW22QEv5G4n1AePYVlsB3qZP6nQj3ikunp
         AFCYbit6b7AaVNo810LN//ij/eVYmbtIGJ/au7Xj0KfMrggLNjzYpKOtuxrjoWP2+w0J
         CMw1HALks/VaK5q0D7uPMYP2q4uN8eYw8U65iQeB10I8x+alBdJU0ax7LGw7YRV3UXvT
         jdvg==
X-Gm-Message-State: AOAM5306M69jPoK5JKe76og7eeOv9s2KOgpj2os4WxKE9GHKTR0FcrVn
	eFIaJp32LrXxR0evmlZZSHw=
X-Google-Smtp-Source: ABdhPJxtbmfKm7jZ6T1BneiF8iTNBbtIB3MAbdylLUC7YSTDhmqNf9Jr7Cqd74i3ZuWmXIHoWoi2nQ==
X-Received: by 2002:a63:e312:: with SMTP id f18mr5746059pgh.216.1597524483696;
        Sat, 15 Aug 2020 13:48:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:88c4:: with SMTP id l187ls4257726pfd.6.gmail; Sat, 15
 Aug 2020 13:48:03 -0700 (PDT)
X-Received: by 2002:a62:f904:: with SMTP id o4mr6448450pfh.14.1597524483258;
        Sat, 15 Aug 2020 13:48:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597524483; cv=none;
        d=google.com; s=arc-20160816;
        b=ZWKnaavDKdaTW7rpubz6dszy9tdF7AVR0y3ryLCsAqxuuMsEH9GTH3RfDINbOsyCxt
         Sq9CdCeBu5qHR8gGVR+bAQLm4L7yXLJuFp15tJ6+4q0yCnkLIbTLZLdvr6EYZinOa00v
         6+L20YMPaJr+Qyo9i7zNFoD4rKkuQGb5UV9qiQEBtGiL01ffOHsqHUqbBGrFMmdotYs7
         jm7tLRjmenAXjBSEtRSYkOXg7pxnsPE6P26K/xrcB2avIHoMCKjCQBigjsZjEsK4kTLY
         1nzOeZrzfUb9szyZBAZN53bch2eQEksPYtSIovtIdRXXlic6xLJntjWvjHmRDhpz15dX
         zJDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+4XEEilZNC5EnENDZHqsdd6uXJXrwqlhHae+qHfSvbQ=;
        b=iaLWM0XnkVr5lQqFYJLohoZjbSLtKr8/qsw7ModbmcMn9mYf+YS0t5o/dal5Jb3EBB
         /OHS9W3ZO74vbaoP9IydLPEUDskh7m+E7rEXmGz0aYVN7QtvuACDe8OywHAUWYc4QrQj
         QNSTueYgFciLIwnLvBhlaU0jeyxgI1eIe3CNVd6ibAKVOiXPDyANRHIONRbQpwe71n+u
         SVJf68p85776sg+a4oIqoMyGwVL9JQrRVmXdAgllIuxK4moFEuUu7BHzs8AuxtIMrHQa
         7ZDgphJ0RAQl5wS5G4U1MU4T1X8qUd1R8aegly224JziVcFzk4vzjVO6JZlg4QCvPPXp
         rvNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="wKBjH/2Z";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id t13si683953plr.0.2020.08.15.13.48.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 13:48:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id i10so613380pgk.1
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 13:48:03 -0700 (PDT)
X-Received: by 2002:a63:7d8:: with SMTP id 207mr5716072pgh.263.1597524482737;
 Sat, 15 Aug 2020 13:48:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200815014006.GB99152@rani.riverdale.lan> <20200815020946.1538085-1-ndesaulniers@google.com>
 <202008150921.B70721A359@keescook>
In-Reply-To: <202008150921.B70721A359@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 15 Aug 2020 13:47:51 -0700
Message-ID: <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
To: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	=?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>, 
	Eli Friedman <efriedma@quicinc.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Joe Perches <joe@perches.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Vishal Verma <vishal.l.verma@intel.com>, 
	Dan Williams <dan.j.williams@intel.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Daniel Axtens <dja@axtens.net>, Ingo Molnar <mingo@kernel.org>, 
	Yury Norov <yury.norov@gmail.com>, Alexandru Ardelean <alexandru.ardelean@analog.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="wKBjH/2Z";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Sat, Aug 15, 2020 at 9:34 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Fri, Aug 14, 2020 at 07:09:44PM -0700, Nick Desaulniers wrote:
> > LLVM implemented a recent "libcall optimization" that lowers calls to
> > `sprintf(dest, "%s", str)` where the return value is used to
> > `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> > in parsing format strings.  Calling `sprintf` with overlapping arguments
> > was clarified in ISO C99 and POSIX.1-2001 to be undefined behavior.
> >
> > `stpcpy` is just like `strcpy` except it returns the pointer to the new
> > tail of `dest`. This allows you to chain multiple calls to `stpcpy` in
> > one statement.
>
> O_O What?
>
> No; this is a _terrible_ API: there is no bounds checking, there are no
> buffer sizes. Anything using the example sprintf() pattern is _already_
> wrong and must be removed from the kernel. (Yes, I realize that the
> kernel is *filled* with this bad assumption that "I'll never write more
> than PAGE_SIZE bytes to this buffer", but that's both theoretically
> wrong ("640k is enough for anybody") and has been known to be wrong in
> practice too (e.g. when suddenly your writing routine is reachable by
> splice(2) and you may not have a PAGE_SIZE buffer).
>
> But we cannot _add_ another dangerous string API. We're already in a
> terrible mess trying to remove strcpy[1], strlcpy[2], and strncpy[3]. This
> needs to be addressed up by removing the unbounded sprintf() uses. (And
> to do so without introducing bugs related to using snprintf() when
> scnprintf() is expected[4].)

Well, everything (-next, mainline, stable) is broken right now (with
ToT Clang) without providing this symbol.  I'm not going to go clean
the entire kernel's use of sprintf to get our CI back to being green.

Thoughts on not exposing the declaration in the header, and changing
the comment to be to the effect of:
"Exists only for optimizing compilers to replace calls to sprintf
with; generally unsafe as bounds checks aren't performed, do not use."
It's still a worthwhile optimization to have, even if the use that
generated it didn't do any bounds checking.

>
> -Kees
>
> [1] https://github.com/KSPP/linux/issues/88
> [2] https://github.com/KSPP/linux/issues/89
> [3] https://github.com/KSPP/linux/issues/90
> [4] https://lore.kernel.org/lkml/20200810092100.GA42813@2f5448a72a42/
>
> --
> Kees Cook



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE%2Bf712W%3D7LFKA%40mail.gmail.com.
