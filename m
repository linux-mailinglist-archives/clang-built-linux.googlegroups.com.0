Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2FN3T4QKGQEFBNTTXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BF3244FFE
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 00:57:46 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id x3sf6665963pga.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 15:57:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597445865; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ye7Fhl0HJHkNRTSE2TpR0yVVHcUREpKgjAm+LsXJ5S9DMJIe0R+/l6rsm83qe67rAt
         /eod2XQP9za15nH3t6+uiSSUmRb+JgKqvVvWqgbzUiIMdd++b0daGVsteo6N582p4E8a
         uGN/Dqj9Ijlo5D9UEEpFtCLoffRnBACLvSseutTjO+oFNdiqUfLvGrgDiUkLTQuOn0Cg
         t8wPOxEn4dyPN+kKzAPiPIKd/oraHJLdSdqqoVP6Brk+rZkKGOI9ce9N6r67lnsjjDG4
         Fpj661HMVqsywTo/bK2J3DeGlxylUn3kLSp2EFNf5pj4VYGDnO0Hd/3q6f/Y9LHh/y2F
         o0Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8mxG5PrHWRGTHJUJ0fYqo63Poriad8YGXMZywjU/OzY=;
        b=Kv4wu1mkfosN0lqoBQpQoFVSAYCeKZWT715fPoN++CpVX/Sy7Qs9A4mmfXICg1EI6A
         TvXk+PuN8J3AFD6Xk2wRmhiyRGRvZ1VlqvI6uUnGa6bp4E3pc3KxdIeN2iqp+L4NLm8E
         B/1eKBcQsXzM7ZRi77o/fz2iiLNOv6muCokgDz52yE51SXauWdaAuKdxJRw9HdVvXmjr
         npG8eOM7LIVzAU3aJG3It0Keo0hJVYYyXbv4xqyZQGzwZVxKJB+xQ0WMDBQxI0YYev1Q
         NcUF9RJyICQ2hdfaY+bFmACKpxGAI/+b+Oa0txB3hzenH5y6J/K6DNVN9vU4xncZSbek
         6grw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OQpryg9I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8mxG5PrHWRGTHJUJ0fYqo63Poriad8YGXMZywjU/OzY=;
        b=GwwKsNUO3asSTxIRuFo3lWKC3MIq2ohGMo3eWrD7En1Hi7Glsc6lK3kUJgUr+PBK+a
         7dnHzncqjeKDWvyTM1zHU9lAr3auo/X6LwFsOUTw/96dQbQu0GFk9fSzFmaJ6k9/s3lH
         2kg9YTe4BKxQWWxzuRQzsDC858JMpygaxU6A2Ftq+dIjFknqVL/v9ez7944DQ2JjZJai
         ZjC9YQqcMEryP+XgXEGCcQc/IXCjQD1XAAKZGGp1T5JKHWamIdwGWZNaDWDxIpBObp53
         2E+ELATV2P7yep9oTpr1xOlGzeOQmvh34De5F51ZaBdkz86u0qV44WSlo0TYK4MTJNeR
         mh8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8mxG5PrHWRGTHJUJ0fYqo63Poriad8YGXMZywjU/OzY=;
        b=D+Nc9TtwQuKQZgNTU3sZQJ1cmKZi7kLViXL7PRA3gVABDvFKxiE44id2xdvRaH2rke
         zjjSdjx9k8CyTmgJ+ag8/7CG1sKyQFUfS4PCQYZF8GZ8RPkoiW7hI1PmF9d1gn7NS9X1
         WgUPashhmfVk5sgGWpnI9kVb4k1XNYfSWXOp8gM27/izrEgsaANrdMAroZTKLGTUpCpj
         zzDkPK1WL7n2NOxgFKfQOffskLLbqHAjV/tuGzHbVOVFIyYX0BCrYpe8b4iAqqiambQd
         pfZKLFuE/mwQS307ZnEVOZ13uy2XZeDJDgcYEny3ysl0lx921G48QUExtJaJM4E2dejY
         s98A==
X-Gm-Message-State: AOAM533RCqRYMVTpo8x5lvr5qxNVQvlKyMh7DFdewyYU4C/OKUljXTJK
	+KMPH3WImCq1vM3bBrXNkz8=
X-Google-Smtp-Source: ABdhPJy5ZHseiPcVhI1Yr+DiIjUaMCFJniBhphs4+gwB1u2xAH0xs1IZ8o7rmtZpJbWuspPDu/xXlg==
X-Received: by 2002:a17:902:b60d:: with SMTP id b13mr3455183pls.48.1597445864961;
        Fri, 14 Aug 2020 15:57:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2c11:: with SMTP id s17ls3568810pfs.9.gmail; Fri, 14 Aug
 2020 15:57:44 -0700 (PDT)
X-Received: by 2002:a63:ce56:: with SMTP id r22mr3160051pgi.141.1597445864464;
        Fri, 14 Aug 2020 15:57:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597445864; cv=none;
        d=google.com; s=arc-20160816;
        b=zJjCQSn2N2tU7lckE06OxmK2W4HaaUCoF61yUTrlqAR5oRV3Q7FtFFlndCJHii43Tn
         BNR5aJgQVqlgFkmN4wspJqxqYM8LoGbx8zaH1/Ic2l2Bdj+sSMubPz0xBuXxR7+eXtdo
         gp2VKZKx95tJBaUxJcNH8jyCTesCCBZDWinli8NeLSDK25qtA6wjF/f8+lqkCf8kl1Ad
         A5NhkURAUQoNQB1KMKEs7OWUmlzXNwg5XgsfE9a+OagyerKyV95Jw6a7e+pbNBqJk7MY
         uLxWSkw3KWJUE/l8ZeWNirz32iW81lxHv5dVrAKB+ld7NmtmuBGjRAqWJgPHUlo8JIfX
         ny7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2WvgDPVRwH/G8nEvnfho4t/Ss9/BmgYz8A1j9g02WnU=;
        b=Bz4A6EhNe6JyPik0gI6QQ5DTpLdbMCG93fQP0QPLCZ2EuUSBXTnYRHinZWywDrdE6n
         V42gkAER0fuXC7IHd3IfobQH+1d46bDBPOi+/0Bt5akqLYcg5kHeuz+43+yBLaURQv+w
         0foJRAijeRj8s2/bmyIuHSR4GL7VSvkv7CGXvxmHoE1a7ZdIA/qx9tNO91qWHwsuaYSC
         yt5iS5g7Nz9nxh8MPj32NLGTQ65kvcVgjHLBYYHLs/N+X8mX05p8oRCf+NMzKhH4IDae
         lIjHZZ7SY/6W3ffBfqSEL3keKxzxozp3aGqyIB3J4mC3xs0K4l83VVZ5L3tvxN/4yhHm
         Fixw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=OQpryg9I;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id n2si633559pfo.5.2020.08.14.15.57.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 15:57:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id 2so5077213pjx.5
        for <clang-built-linux@googlegroups.com>; Fri, 14 Aug 2020 15:57:44 -0700 (PDT)
X-Received: by 2002:a17:90a:fc98:: with SMTP id ci24mr4046673pjb.101.1597445863888;
 Fri, 14 Aug 2020 15:57:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200527135329.1172644-1-arnd@arndb.de> <CAKwvOdmA29WzTd7APsQCsG_a=NVWuR53Z2h8NTLza5sisnV2PA@mail.gmail.com>
 <CA+icZUUjtu3fCNTngY52h3uRL+eUaimNJb0UNwj5v-QwKggs5A@mail.gmail.com> <CA+icZUWH5f4B_6eYy2_OOi45VjUkE_kN9akqvcOxxmmmM3TSrg@mail.gmail.com>
In-Reply-To: <CA+icZUWH5f4B_6eYy2_OOi45VjUkE_kN9akqvcOxxmmmM3TSrg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 14 Aug 2020 15:57:31 -0700
Message-ID: <CAKwvOdnj6ObdpsdVYkDxWp-dVTTg=xMkBm84y419SNtLuAqfMg@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Peter Collingbourne <pcc@google.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=OQpryg9I;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Fri, Aug 14, 2020 at 2:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Aug 14, 2020 at 7:29 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > Thanks for the proposal.
> >
> > I have adapted it to fit my patchset against Linux v5.8.
> >
> > Both Debian's GCC-10 and a snapshot version of LLVM toolchain
> > v11.0.0-rc1+ seems to be OK.
> >
>
> Yupp, OK.
>
> I was able to boot FreeDOS 1.2 VM in VirtualBox GUI.

Hi Sedat,
Apologies, but it's not clear to me precisely which patch you tested.
Can you please confirm whether you tested:
1. Arnd's patch that started this thread.
2. My proposed diff adding -fno-addrsig to CFLAGS_powernow-k6.o.
3. My proposed diff removing __force_order from the kernel.

I'm hoping you were referring to testing 3., but it's not clear to me.
I've been comparing the full disassemblies of vmlinux images when
built with Clang with 3 applied (they're no different, which is a
pleasant surprise, I didn't think kernel builds woulds would be fully
deterministic given the sheer amount of source).  I still need to
check the compressed vmlinux image, and various .ko's (XEN) that use
these read/write_cr[0,1,2,4]() functions, and then check them again
when built with GCC.  I'm falling behind a little trying to get our MC
organized for plumbers, as well as the end of intern season and
beginning of bi-annual "performance review" ("not stack ranking" I'm
told) at work.  If I don't find any differences, or if I do but don't
find them to be meaningful, I hope to push a more formal patch (rather
than just a diff) maybe next week.  I'll include my findings either
way; if it was 3 that you tested, I'll include your tested by tag when
sending.  Otherwise maybe you can help us test the more formal patch
next week?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnj6ObdpsdVYkDxWp-dVTTg%3DxMkBm84y419SNtLuAqfMg%40mail.gmail.com.
