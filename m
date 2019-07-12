Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBVN4ULUQKGQENCJRPYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9F0671AA
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 16:51:02 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id j22sf5652276pfe.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 07:51:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562943061; cv=pass;
        d=google.com; s=arc-20160816;
        b=LqvLtBkI+Ju4ZbJ8TBevW3TqKK0N39EM4MvYeKL0bM7VtRS6ucCr5bL7gAA2YWah3X
         n5LlV05Cxy4rz4RaWlAfwK9f2DfdTHMF/9m0vTWWMD6im4hkXcAHhF3LOuhEqCOUJYmS
         HV0jMFvYEFHQc6eEzqw0OLvaMJ2O9e8qrtxkwc7u6z2/ZNkK8TQfx+TjxOs8DhPGOj90
         1jhlNAThPSDFYrrLLhc6WkDptoKrA71/zizibiZazllAepcDpZmRCN2peV/TNQlgOSBQ
         kyNr3ZhUM1njNwNwrbsdrSSdWPhVa8fb4NUqEzhCey5aFO+Zxb+qwJeFtCOtEyi30lBy
         DlcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=slXA5sg6IZWIZeyiv4gpZzR9XKBvP5Y7fzuz9SZdH8c=;
        b=ybPo/2pvDbfng5wzm1tcTr0ZZzFzvN3b6jx3TFXYqaFQpci69mHnBk48SqbGy5CnK6
         RXGrnJ4FGGOrsQMONFaV61qjYbF/wxwM96jzTdwMOqGhkUPcM32IHB1zXHZ5S/DTxHjz
         gUQkl9VS9Fd6MerXFUOQMmtzqcC9t4Ot+E4pgB+ELGULa3nrm+Q0Z1frxAn8jWwh0mWG
         l0gtuv9IxTvbLPiI3uHv63CrE1drV6O76CYBezuI8Ou2sO6DwELlOg2+LBB3I1zUY0Vg
         52DNOr/hnGWix8mLLjjExYPX5b66RFRR64OT5t/YTAJEthwKa6Fykg0lgT0FPNH7sH5r
         f/xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=slXA5sg6IZWIZeyiv4gpZzR9XKBvP5Y7fzuz9SZdH8c=;
        b=cgCd20nsTOUy0pFmriMoz5D6+haql4i0kTPjT3xbnNhr4rRkeW+Zi4FKSVpnziMdAf
         s1QjEDXoU9bl+dJsre2FEGVg3tC2YiHDrkybUPt3hSRO3fbaVkWnXVOQDGQDD/FDdWzN
         l8KROKqs9iFYC7FRPRDh4bFdOmihYk4ate6UTkJy/+rYbSMWRWqG67RhiRTQ6GKC5zkh
         7vVq/+3RXezFoe2dvzJMvB1/HunBkFOfKEj1VvB9BHI4y2zvVo22egklgI46iSrxpf9E
         2llC2RKqrjp1UHwz9ZIwAV8BO9g9jMAi0sAbtwmO/VdUaGY6VXjCtbemE1RttgIyBlWC
         F7Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=slXA5sg6IZWIZeyiv4gpZzR9XKBvP5Y7fzuz9SZdH8c=;
        b=LrlttAkVHzIRBIfsYdG0RVLwbG/BGF6eNbjpr40nDF9/FEJiMM4Zpvxp5NQnqX8h5N
         NZDYBqjdZWm1wy4B/KgLACzIbqVkra2fQ7WOV1p34XWmi3BjWMC5+qVL63HhYn1lDGCu
         VJWPF1InBh43RPe0xINZBmyZmolpmi6rOQyF1A5tOnusWCNDV4a1dY9OEkXe3r3Wr7rs
         C7ZIDexwQ1L7IaAA7gtVIrHwfQwNIOU1iJn1trozNKknC0S7YiX9m8EGRA9Hx1JK/SsB
         UE8Ot7wdKMwqMzrRCFzSRW9pFxIICjCaOSIXjDuIDefnZGc1bwwB5tJGq96MzApsqgbk
         XigQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUPJMgw+LPytQU/2c1P8i5B+wTM8zDh8K7m3vDmT2j7qBdWXtXu
	yJvXi0Lou1t+LsfERBagVpA=
X-Google-Smtp-Source: APXvYqyRHp1oCFrfcGaMCPwzthba4oZ1J+trYnlxWKw6ygVq//uvB9qbVjyETrcjKCvwr9Y4wbryYQ==
X-Received: by 2002:a17:90a:b387:: with SMTP id e7mr12660584pjr.113.1562943061273;
        Fri, 12 Jul 2019 07:51:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7a43:: with SMTP id j3ls73941pgn.0.gmail; Fri, 12 Jul
 2019 07:51:00 -0700 (PDT)
X-Received: by 2002:a63:10a:: with SMTP id 10mr11452541pgb.281.1562943060760;
        Fri, 12 Jul 2019 07:51:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562943060; cv=none;
        d=google.com; s=arc-20160816;
        b=IYVzJuM/aMuw77PKaeIMRSgAtSjiTUgbwCuQXVUVonQFNeMgR0++3awdcjE3hEFSYh
         Xu3RaYB+N0zv5QFX1Ays/erq38HdnlzYJ/hDTg08gl6vwWLEpfvcR49uZ4fV7BcT+6cA
         44WsHoJIcDDEEJjRb+1vITxHVrASszXEzhTzMiy5yQejnLKV+AtkwD4uikP0creQAIL8
         sBAGvaeGy4SM5NseatRwxKIE0hbr+cU0w9WXPq4zfjm9gMGs7PzBz5Bgwgw/agUDZZeH
         JYZoj0wDmNr5JpcEy8/WaardgDwBGywMbfW1v8P3EOo+VRaJmiPcoYnLbO3te1I+oie6
         6+1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=oH1fo+W6QvW3TDYAOS3VNfR52O9ab9tANtdOaHmm3OY=;
        b=W1Grjv+k1mxXL+oYQ/RXSWGk6QQ6ikjySwPpQpoTavb2BOrMsATSqH3lLoH9Ei8ZWQ
         GtmZ1pJx4mNSg8cR0ZRAuYHEgfEonKF7u3mezqu3gVfAWDi3W8C5NO1KuKCRoX5Qphlr
         orojKEUHdIJK+7teM6qGSFw8tpqKwk2EjWdBJd4k360Zzw25R4YMX9kXQVFiqjATqedZ
         J4hcJji6vQiE6y04cxSy+Guf1lT0ffSQsJuQB45tPyLollMGRRhFYV4l2hN0N8LscdeT
         SWhYdIrATcDnfKjB7Ura7gs5z4oqn3KKmhyG4sUbd7OJglUf6yq1pfm6HFtlB/IUMhg5
         gdrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com. [209.85.160.194])
        by gmr-mx.google.com with ESMTPS id z9si691772pjp.0.2019.07.12.07.51.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 07:51:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as permitted sender) client-ip=209.85.160.194;
Received: by mail-qt1-f194.google.com with SMTP id l9so8342818qtu.6
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 07:51:00 -0700 (PDT)
X-Received: by 2002:ac8:5311:: with SMTP id t17mr6508885qtn.304.1562943059631;
 Fri, 12 Jul 2019 07:50:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190703081119.209976-1-arnd@arndb.de> <20190711174949.dc74310efd1fd3c8bd4ea276@linux-foundation.org>
 <CAK8P3a2ZRw9B=X76yL-bRzC+01z6VaHDzPAhQQw7V9MXtkp+Jg@mail.gmail.com> <20190712075438.GA88904@archlinux-threadripper>
In-Reply-To: <20190712075438.GA88904@archlinux-threadripper>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 12 Jul 2019 16:50:42 +0200
Message-ID: <CAK8P3a09LpFYKcfJB0izCwQVAm0Bkvx_MUi8qvTORshUUp=5+w@mail.gmail.com>
Subject: Re: [PATCH] waitqueue: fix clang -Wuninitialized warnings
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Ingo Molnar <mingo@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.194 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Fri, Jul 12, 2019 at 9:54 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Fri, Jul 12, 2019 at 09:45:06AM +0200, Arnd Bergmann wrote:
> > On Fri, Jul 12, 2019 at 2:49 AM Andrew Morton <akpm@linux-foundation.org> wrote:
> > > On Wed,  3 Jul 2019 10:10:55 +0200 Arnd Bergmann <arnd@arndb.de> wrote:
> >
> > > <scratches head>
> > >
> > > Surely clang is being extraordinarily dumb here?
> > >
> > > DECLARE_WAIT_QUEUE_HEAD_ONSTACK() is effectively doing
> > >
> > >         struct wait_queue_head name = ({ __init_waitqueue_head(&name) ; name; })
> > >
> > > which is perfectly legitimate!  clang has no business assuming that
> > > __init_waitqueue_head() will do any reads from the pointer which it was
> > > passed, nor can clang assume that __init_waitqueue_head() leaves any of
> > > *name uninitialized.
> > >
> > > Does it also warn if code does this?
> > >
> > >         struct wait_queue_head name;
> > >         __init_waitqueue_head(&name);
> > >         name = name;
> > >
> > > which is equivalent, isn't it?
> >
> > No, it does not warn for this.
> >
> > I've tried a few more variants here: https://godbolt.org/z/ykSX0r
> >
> > What I think is going on here is a result of clang and gcc fundamentally
> > treating -Wuninitialized warnings differently. gcc tries to make the warnings
> > as helpful as possible, but given the NP-complete nature of this problem
> > it won't always get it right, and it traditionally allowed this syntax as a
> > workaround.
> >
> > int f(void)
> > {
> >     int i = i; // tell gcc not to warn
> >     return i;
> > }
> >
> > clang apparently implements the warnings in a way that is as
> > completely predictable (and won't warn in cases that it
> > doesn't completely understand), but decided as a result that the
> > gcc 'int i = i' syntax is bogus and it always warns about a variable
> > used in its own declaration that is later referenced, without looking
> > at whether the declaration does initialize it or not.
> >
> > > The proposed solution is, effectively, to open-code
> > > __init_waitqueue_head() at each DECLARE_WAIT_QUEUE_HEAD_ONSTACK()
> > > callsite.  That's pretty unpleasant and calls for an explanatory
> > > comment at the __WAIT_QUEUE_HEAD_INIT_ONSTACK() definition site as well
> > > as a cautionary comment at the __init_waitqueue_head() definition so we
> > > can keep the two versions in sync as code evolves.
> >
> > Yes, makes sense.
> >
> > > Hopefully clang will soon be hit with the cluebat (yes?) and this
> > > change becomes obsolete in the quite short term.  Surely 6-12 months
> > > from now nobody will be using the uncluebatted version of clang on
> > > contemporary kernel sources so we get to remove this nastiness again.
> > > Which makes me wonder whether we should merge it at all.
> >
> > Would it make you feel better to keep the current code but have an alternative
> > version guarded with e.g. "#if defined(__clang__ && (__clang_major__ <= 9)"?
> >
> > While it is probably a good idea to fix clang here, this is one of the last
> > issues that causes a significant difference between gcc and clang in build
> > testing with kernelci:
> > https://kernelci.org/build/next/branch/master/kernel/next-20190709/
> > I'm trying to get all the warnings fixed there so we can spot build-time
> > regressions more easily.
> >
> >       Arnd
>
> I'm just spitballing here since I am about to go to sleep but could we
> do something like you did for bee20031772a ("disable -Wattribute-alias
> warning for SYSCALL_DEFINEx()") and disable the warning in
> DECLARE_WAIT_QUEUE_HEAD_ONSTACK only since we know it is not going to
> be a problem? That way, if/when Clang is fixed, we can just have the
> warning be disabled for older versions?

I managed to get that to work, but there are two problems:

- the __diag_ignore() infrastructure was never added for clang, so
  I ended up copying a lot from gcc. There is probably a nicer way
  to do this, but that would require a larger rework
- adding __diag_pop() between two variable declarations is seen as
  a statement that causes a warning with both gcc and clang,
  so I had to turn that warning off as well for all compilers, and at that
  point it gets rather ugly in the macro.

       Arnd

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 333a6695a918..0d30c0489ad7 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -42,3 +42,31 @@
  * compilers, like ICC.
  */
 #define barrier() __asm__ __volatile__("" : : : "memory")
+
+/*
+ * Turn individual warnings and errors on and off locally, depending
+ * on version.
+ */
+#define __diag_clang(version, severity, s) \
+       __diag_clang_ ## version(__diag_clang_ ## severity s)
+
+/* Severity used in pragma directives */
+#define __diag_clang_ignore    ignored
+#define __diag_clang_warn      warning
+#define __diag_clang_error     error
+
+#define __diag_str1(s)         #s
+#define __diag_str(s)          __diag_str1(s)
+#define __diag(s)              _Pragma(__diag_str(clang diagnostic s))
+
+#if __clang_major__ >= 8
+#define __diag_clang_8(s)              __diag(s)
+#else
+#define __diag_clang_8(s)
+#endif
+
+#if __clang_major__ >= 9
+#define __diag_clang_9(s)              __diag(s)
+#else
+#define __diag_clang_9(s)
+#endif
diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
index e8579412ad21..c5f8d9ae0530 100644
--- a/include/linux/compiler-gcc.h
+++ b/include/linux/compiler-gcc.h
@@ -165,8 +165,16 @@
 #define __diag_str(s)          __diag_str1(s)
 #define __diag(s)              _Pragma(__diag_str(GCC diagnostic s))

+#if GCC_VERSION >= 40006
+#define __diag_GCC_4_6(s)      __diag(s)
+#else
+#define __diag_GCC_4_6(s)
+#endif
+
 #if GCC_VERSION >= 80000
 #define __diag_GCC_8(s)                __diag(s)
 #else
 #define __diag_GCC_8(s)
 #endif
+
+#define __diag_clang(s...)
diff --git a/include/linux/wait.h b/include/linux/wait.h
index ddb959641709..0e33fe589f49 100644
--- a/include/linux/wait.h
+++ b/include/linux/wait.h
@@ -71,7 +71,12 @@ extern void __init_waitqueue_head(struct
wait_queue_head *wq_head, const char *n
 # define __WAIT_QUEUE_HEAD_INIT_ONSTACK(name) \
        ({ init_waitqueue_head(&name); name; })
 # define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name) \
-       struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name)
+       __diag_push();                  \
+       __diag_ignore(clang, 8, "-Wuninitialized",
"https://godbolt.org/z/ykSX0r");     \
+       __diag_ignore(clang, 8, "-Wdeclaration-after-statement", "for
__diag_pop");     \
+       __diag_ignore(GCC, 4_6, "-Wdeclaration-after-statement", "for
__diag_pop");     \
+       struct wait_queue_head name = __WAIT_QUEUE_HEAD_INIT_ONSTACK(name); \
+       __diag_pop()
 #else
 # define DECLARE_WAIT_QUEUE_HEAD_ONSTACK(name) DECLARE_WAIT_QUEUE_HEAD(name)
 #endif

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a09LpFYKcfJB0izCwQVAm0Bkvx_MUi8qvTORshUUp%3D5%2Bw%40mail.gmail.com.
