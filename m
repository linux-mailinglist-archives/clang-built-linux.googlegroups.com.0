Return-Path: <clang-built-linux+bncBCS7XUWOUULBBC7X4H4QKGQE7KNEG7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id DD8DC245501
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 02:19:24 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id v18sf6936362pjt.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 17:19:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597537163; cv=pass;
        d=google.com; s=arc-20160816;
        b=TBYKrbaSX5N+eUfuDqujUjGTNciCYxna8SxcKYukPzrJB23Y4a8Svn75LMZkP3EIwx
         tGjwEH+4EPTaam3HTi/7RUDWDePb7I8RikgoYJkqPyAbV09R+huOg4w31n3RrXMttGXj
         BO37wZZPWNJeqKc25UaV98/TBomOaxfad3YEnJhLYbIKkydPxK/1/Br7PMhHoVWc+9as
         Ri84z2wqnUHNqV3EWKh4Tm7b5xpQwH9nkkrm5d1iwCoqtbDTsQ5Fe5Acf8jizsoDZbfn
         2UjvWE13nzxzCIiGpPvpmEQHeaUO4t7yxoKJTsbERdNBGHqIOkREaXZ056KXAr21DZBI
         UAQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=28RGDkz8e9ow2zvrAwL1kG26kxMWA6n/vABJefzwFfk=;
        b=uzQm3ybF7y9FK017lilL/lKmkxttV2BDFkW+tcU18mBJNAbameCpXKSobUF/teGGJB
         SEabM6ftx0DgZFQhPoXzEwkQroeUEv+3Sh4Bo+VCSDE87K48CRHGkSuIEUNjXgREP5VE
         MZxrKa2KpcA6OXajfn3BZNl5vxd93MH+A+eEtq6eOPr5Thmn02Upyur1MPIhgQf1ITIG
         NzaxTPena9PA2ZO/sG7psflKxZMORTWEG668fBSnubeFHVO2dO6IjVlrtSIp4hdpCi/r
         yCDTbS7MaMhh9n+uDiwDOXn6aIFlw7Ff9PlZBZeWGKxOzr5GUDjw7vjD3WolAbgBQp5O
         VKgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XQiMWXwG;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=28RGDkz8e9ow2zvrAwL1kG26kxMWA6n/vABJefzwFfk=;
        b=OG0qvDbRrG3fAlzHekKNDwpQ+NPIBPg/dydiHvWC0GQESAcAVF/G7WEQExfl1t1AED
         yDh+V2Raas0aZLpgUEkSiAOib8DhMV7gqxNverf+IR8Gwl7nW94RnSVpga2NXCFlknud
         x0DZ3UrCUx1NYWY5GiQvogonwru0SPdtkMOwhxv6KZYSQigb3uA0qQ49Zr50RoqatV4x
         c8EjNv3QS2aYF0jfVlPXvnpyGFwCpXcSRTDbM++o4YIAFvBldy4bPPTy/WXbbdhxNyj1
         83zrDxDVwT66zr//qqxEhVPy4N6p/BqNUb+6L1/TskXYIjl3gFPwF5uBN3LYdnaE36R/
         US9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=28RGDkz8e9ow2zvrAwL1kG26kxMWA6n/vABJefzwFfk=;
        b=GOpsKbIVehewm3IksxqaD1ZFIsI0NipjHc5cckNODxs1Y3XZtlcb8i32ioxmTny+PW
         L9LiMzsfzC5g0kAQzICQGq6ObexuLZaS3pX07h598BxfaSAe+RVwqytGxTNecnqWonjw
         Y5xne1wz00h0wcpHaXW3SKl73Y3ficGkX+F81mRliqtooEwHyJNul7v+d2kHCpV7M2dB
         MBQo9HYwiWpyBtv0HtkTj6h9atnt+3k/QFoT1zO6bIrM7T+BTHrE71SkmGTQKBqQyr61
         Kt+rCMiVlny4HgswRWG1+AG5E1SVsl33uXknRtcSPjHtVP4J7TRgST8F527nX9xqWGIZ
         C1nw==
X-Gm-Message-State: AOAM531xLpZC77G6S+S/8N+F03Dd8MPezU9vJlVGyJgSSewGpCsGnhDU
	k8mGfWQT60GYmWYrozx8U7U=
X-Google-Smtp-Source: ABdhPJyxf+uCsHKETYOiE3Cv4boeOWjfxq/Vd78PLgmT5qSacc4osRJf21exof1Ze+bGdHrVwQKvBA==
X-Received: by 2002:a63:ef0c:: with SMTP id u12mr5819851pgh.327.1597537163530;
        Sat, 15 Aug 2020 17:19:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:52ca:: with SMTP id z10ls3422381pgp.10.gmail; Sat, 15
 Aug 2020 17:19:23 -0700 (PDT)
X-Received: by 2002:a63:c902:: with SMTP id o2mr6022875pgg.264.1597537163096;
        Sat, 15 Aug 2020 17:19:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597537163; cv=none;
        d=google.com; s=arc-20160816;
        b=UGSqn+/71/bV1OwFk3BDI2EAqny7seumPkPpb8yf5P4DORFDvxaOyoU3mYIU2UZylI
         f2ULEdJ5pph0wE8KR0CGSGVzJFkdFgOxVfniq8mMwmaKGsKPjKJrI6hQgcBkX0U5im0x
         ayzyJONkd6YQqMtqCtbu9k1mvbmJstxZLYIAuDWcaAM/QhRpK2zOuezQsWenEWFgfnqc
         8NnMi6WgDR7CESmySeeWJ7YZcs0zYkIquogwRtZhYsbLNDFR4zp2gFY0cV2qe84KHS4Z
         5HPk0U6QmZvxZ6gqsicV9N3i6MHuPKpJ2pVSLvtoTa4RHm2Way6iu8iIR2Rxo8c7qIDP
         pKfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GdNLwnlPFkQHFOd6Xy60wVgrBimGSKOXtSoP9QOa/Ns=;
        b=0gztmdGhkG1Szb+yPMCmEhezqaaSrENEOf73eLRhLjs3fllp9hac6x5dQnw8uKDs+r
         axSFtO7vCnMYAAkBRBo/EbYG5D01EwgzvvWoQwvMiIliRvY0tXE4DqDRs0uD+ZL07hJC
         09pcpoTvvf8tRbZQx5ov3oqlzG0nsdCZd63qn0dSqUAH1RgY+d5nYfPFVavylu4eaOxx
         atkR3J1F2izsocy2kN160sRa6D//6f6wQw6PKIocnUxhEOvs03r4qkHtvUOQeWQSJFjZ
         Eaiii+giY5gIv2iHoexVpIXKmxOH3BjqCpTnoYSb58JjFcw6sFSzHvGbzzXV4/+1XRDZ
         vD9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XQiMWXwG;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id ls7si333910pjb.2.2020.08.15.17.19.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Aug 2020 17:19:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id u10so5759935plr.7
        for <clang-built-linux@googlegroups.com>; Sat, 15 Aug 2020 17:19:23 -0700 (PDT)
X-Received: by 2002:a17:902:7609:: with SMTP id k9mr6530697pll.187.1597537162547;
        Sat, 15 Aug 2020 17:19:22 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id b63sm13070308pfg.43.2020.08.15.17.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2020 17:19:21 -0700 (PDT)
Date: Sat, 15 Aug 2020 17:19:17 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Joe Perches <joe@perches.com>, Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	=?utf-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>,
	Eli Friedman <efriedma@quicinc.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Sami Tolvanen <samitolvanen@google.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Daniel Axtens <dja@axtens.net>, Ingo Molnar <mingo@kernel.org>,
	Yury Norov <yury.norov@gmail.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
Message-ID: <20200816001917.4krsnrik7hxxfqfm@google.com>
References: <20200815014006.GB99152@rani.riverdale.lan>
 <20200815020946.1538085-1-ndesaulniers@google.com>
 <202008150921.B70721A359@keescook>
 <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
 <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
 <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
 <CAKwvOd=QkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOd=QkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XQiMWXwG;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-08-15, 'Nick Desaulniers' via Clang Built Linux wrote:
>On Sat, Aug 15, 2020 at 2:31 PM Joe Perches <joe@perches.com> wrote:
>>
>> On Sat, 2020-08-15 at 14:28 -0700, Nick Desaulniers wrote:
>> > On Sat, Aug 15, 2020 at 2:24 PM Joe Perches <joe@perches.com> wrote:
>> > > On Sat, 2020-08-15 at 13:47 -0700, Nick Desaulniers wrote:
>> > > > On Sat, Aug 15, 2020 at 9:34 AM Kees Cook <keescook@chromium.org> wrote:
>> > > > > On Fri, Aug 14, 2020 at 07:09:44PM -0700, Nick Desaulniers wrote:
>> > > > > > LLVM implemented a recent "libcall optimization" that lowers calls to
>> > > > > > `sprintf(dest, "%s", str)` where the return value is used to
>> > > > > > `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
>> > > > > > in parsing format strings.  Calling `sprintf` with overlapping arguments
>> > > > > > was clarified in ISO C99 and POSIX.1-2001 to be undefined behavior.
>> > > > > >
>> > > > > > `stpcpy` is just like `strcpy` except it returns the pointer to the new
>> > > > > > tail of `dest`. This allows you to chain multiple calls to `stpcpy` in
>> > > > > > one statement.
>> > > > >
>> > > > > O_O What?
>> > > > >
>> > > > > No; this is a _terrible_ API: there is no bounds checking, there are no
>> > > > > buffer sizes. Anything using the example sprintf() pattern is _already_
>> > > > > wrong and must be removed from the kernel. (Yes, I realize that the
>> > > > > kernel is *filled* with this bad assumption that "I'll never write more
>> > > > > than PAGE_SIZE bytes to this buffer", but that's both theoretically
>> > > > > wrong ("640k is enough for anybody") and has been known to be wrong in
>> > > > > practice too (e.g. when suddenly your writing routine is reachable by
>> > > > > splice(2) and you may not have a PAGE_SIZE buffer).
>> > > > >
>> > > > > But we cannot _add_ another dangerous string API. We're already in a
>> > > > > terrible mess trying to remove strcpy[1], strlcpy[2], and strncpy[3]. This
>> > > > > needs to be addressed up by removing the unbounded sprintf() uses. (And
>> > > > > to do so without introducing bugs related to using snprintf() when
>> > > > > scnprintf() is expected[4].)
>> > > >
>> > > > Well, everything (-next, mainline, stable) is broken right now (with
>> > > > ToT Clang) without providing this symbol.  I'm not going to go clean
>> > > > the entire kernel's use of sprintf to get our CI back to being green.
>> > >
>> > > Maybe this should get place in compiler-clang.h so it isn't
>> > > generic and public.
>> >
>> > https://bugs.llvm.org/show_bug.cgi?id=47162#c7 and
>> > https://bugs.llvm.org/show_bug.cgi?id=47144
>> > Seem to imply that Clang is not the only compiler that can lower a
>> > sequence of libcalls to stpcpy.  Do we want to wait until we have a
>> > fire drill w/ GCC to move such an implementation from
>> > include/linux/compiler-clang.h back in to lib/string.c?
>>
>> My guess is yes, wait until gcc, if ever, needs it.
>
>The suggestion to use static inline doesn't even make sense. The
>compiler is lowering calls to other library routines; `stpcpy` isn't
>being explicitly called.  Even if it was, not sure we want it being
>inlined.  No symbol definition will be emitted; problem not solved.
>And I refuse to add any more code using `extern inline`.  Putting the
>definition in lib/string.c is the most straightforward and avoids
>revisiting this issue in the future for other toolchains.  I'll limit
>access by removing the declaration, and adding a comment to avoid its
>use.  But if you're going to use a gnu target triple without using
>-ffreestanding because you *want* libcall optimizations, then you have
>to provide symbols for all possible library routines!

Adding a definition without a declaration for stpcpy looks good.
Clang LTO will work.

(If the kernel does not want to provide these routines,
is http://git.kernel.org/linus/6edfba1b33c701108717f4e036320fc39abe1912
probably wrong? (why remove -ffreestanding from the main Makefile) )

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200816001917.4krsnrik7hxxfqfm%40google.com.
