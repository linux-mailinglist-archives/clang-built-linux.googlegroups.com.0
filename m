Return-Path: <clang-built-linux+bncBDRZHGH43YJRBRFLW6DAMGQEMT36QRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA343AD9D3
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 13:32:21 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id d7-20020ac811870000b02901e65f85117bsf9102749qtj.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Jun 2021 04:32:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624102340; cv=pass;
        d=google.com; s=arc-20160816;
        b=bgG5hTwSLCkMHPQ95ZT1e3cm9vfhzGDTB3bDbcBYWHjqU7PZ7ByH3hNMvKyEEb9xyz
         to1l5op2m72gvX9AluCqx6SvxuR1oFHpgMiNVJFUKJ77TkyvkNbd2frKdTpJ77JmHXUL
         kqISnOfcy7UIDR0qH7hRMU0zhfD+8AZ5qTn2tIJSCi2GJRcTaqDIIoE2vuso8pbHm4F2
         8UQJE/FzADWOWCFXhN1/rS1raVjuLqMY5V63h/+mN1AcXF+gnoTKXM8BqDS+pnOrG7k0
         0YsRePNTGkIm6aoz5WjUZvPHzPjjAYiIIydPotI0bXU+T/q+hbD6SLlfy3iGhkF/SkcE
         DRWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=FW9Ovpltb8qX5pojnmLB5X8Dsh89G3SmzE1iLRg0deY=;
        b=WcAY4aHEypH7v645JlLBwHJqSB/USU+myG2/7wuNEn1kwrqCY+3TW3eSS9fmtiaCEQ
         Bw62iybtEd5KTEXBRM2B95gIXPoqmK3U9Dx6A4BTpv3NX138ElsX6afG9RYox0sI87Qi
         BAtoaUqAAmyRolG76p4H2Za4xmYa/ntZ3D4wcMzz1e4pixSyc/K1Eg+PEm7aZMBCr5wO
         Cv7j66QWkt8GL0yIdp1IHOkz8adWE6wGExVJG+JBNlDfoSxmU9t6/idWAR4xuWjfr7Dt
         xGzlkSc7NovbLX5MM56SHVOfBM+qAvf0xs+2T8b1hLFbEv3FmA4kQzqG689FrydSLmks
         tHlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X+Qf5RWT;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FW9Ovpltb8qX5pojnmLB5X8Dsh89G3SmzE1iLRg0deY=;
        b=NwM4nGedjMFT4tfap93Fe3izhAmZuQ2qDqRnsr2Hnpfox5mKZk4/lQCRPq4R3Hj6Tn
         tYomsVOjvLOsjtRk2sKwKVXxnk5jlW+HPmK7nb4nuTz5SMDasUDiygWDA3mZi/7Mikd2
         TXMSg5XH8O2F7ma8AVR9MU6csnzoIfj/L/P59LEgIZkyJ2vNLdorUBfdwwOwbqJpnMma
         OllWsXJXwXIJHzm4GIWeZeguHJ5ykDolXqCmipm7IK3DOtZa2sgye+Qx9pETsYUwIwxx
         FYKFMTPEfhrHuubzSyzNA68bTvVDg2Z8yUCA8VAxCpxLIZs8jYAP8K7sHQIEHM+h0wy9
         WOFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FW9Ovpltb8qX5pojnmLB5X8Dsh89G3SmzE1iLRg0deY=;
        b=ZQHNHkHFoH04gimRCiVwn4llKCvymkZjBOmIDJhuGlP71fIB90eTAJv/m+D+4hmBBR
         PiXLMm4YZFQsCgj1WpOGCPpCoK81B1zFEGFWzPKzF0j0hfDawjgUyn+Nbq1rKVcySL6E
         XuD18t9sLs2qNZGuowz86XyielpzzytQj30JbchC6kj21SSPjB7IRKbgVBWRclDDhGVo
         4CIDsyD7F7Ic3CATkl4Ux0dWlrtsA+FBfRtnYUSq6f7f0CALrw2IuL5reKlYRJIANPkm
         ftERyCs8U3J1cYW2KAUiiqcpDTsGiliWmHAmgP00tl/7sNivK1fWjjKp1a8FemRFWXsu
         MFyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FW9Ovpltb8qX5pojnmLB5X8Dsh89G3SmzE1iLRg0deY=;
        b=nBu+Y7RaiVlbOX4JIy4d/tG2T/0dfOuLE+5srfdbje1hVMf08Hc0jlCdS1duz1XU7q
         6DGkL/752shjir28qAZapg+Onn+0o0CrS6PWZxpEs0A6tZdy1el+XA8BNuxL27JPyxNz
         nJ0H0Cb9BBt4i1+pcTLt06AEEPtvIJg/2fo/TlDozkm01LZbSdSehTzC22nhOP51PJq0
         A0DVJGU9/JzzeuhyVKuBLEVnBO3sI0EgqKyJ+bZ9My9RzRaGKdOMie5ZoxE7Z0+ULL7a
         RPhdtrxTSNJo99RS5fRhETNN0yZUpOaRIAmHj/MIAb3MM+4tNHCTgu9ZEWXqUTB16BBa
         qi+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303tm2H8LTw8HsGYctRLH64EuHF5xxEfaN5UJm2e82u5+BKH8M7
	j36J2IyXrb5/HdzS8Td9r8U=
X-Google-Smtp-Source: ABdhPJwhmGDRHLToSQYTnH6pqUxw+gYXAvxlBTHoUbVXKOBqcZAO6ijzTRupah3dZK8LSPhcGG0T+Q==
X-Received: by 2002:a05:620a:15a6:: with SMTP id f6mr13565476qkk.16.1624102340128;
        Sat, 19 Jun 2021 04:32:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:20ef:: with SMTP id 15ls4395545qvk.11.gmail; Sat,
 19 Jun 2021 04:32:19 -0700 (PDT)
X-Received: by 2002:a05:6214:150:: with SMTP id x16mr2927034qvs.42.1624102339736;
        Sat, 19 Jun 2021 04:32:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624102339; cv=none;
        d=google.com; s=arc-20160816;
        b=YMNGvx3XT58uiC4q+SSYiwBhO31LuGn4Swu6EWzWVYdFItCo/KYpsy0eqSRimdEnRT
         U1U8SZK7x9OVO0C9GxKO488VL0u4UGZe8nFUmp/Lzj+QqgrVjADCrbpYpSP11wO6wJkj
         +/VamldzGxXEOje3q2bAdYfpJskxCoWdRipqO62397MvEXJ4BgNI0uipC+WsKwHk5CoN
         7ETig7Jcw5CIGlLpRqvuLEZGZxzKyXBg7egM8HIIcdyaK5PMmDQnRV2wzgbSYo+GHs4i
         XH0Ez3spfmStgpS+h1lqEgiyz1KzKh9kebK3KsAp4hLUwKjAMuhdqXaDXyCj8UfuhjXn
         v3jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wzF+HDIW4RpiFDwS3pehtK/Z2s3VtrcKXebmPCvAZ0Q=;
        b=0CpikJ3jV3z9TYf/py3x0m+UBiNZnHL3ThRS2otMtgyEizNu2mX/yfRvkTWJLaBKjl
         uoV+g4frmbfKCY9U9lZo8It03j8KRAq1Q37P5R791pA5R03aWn4klP3oEjAgFo61ml0Q
         ksVdAzMcHCxWLI0H7W54TeNdld8Yz/bfSBASkDNCcsapZ1zUm6kSoMq0RkvU0iwcODMN
         nvPAlsjLPg2Kiy/5O3ZsLidojb2doyX0mEu6XFUw73VSPmpOkrRnxVXmeunZqSI5HyGe
         LvyDbzdBEpUhTslDXqVD1XeVexgQT9L9Eaq80ssf6y0+rrdmnJT8vkWCIMX0xrrKB/e0
         ztmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X+Qf5RWT;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com. [2607:f8b0:4864:20::734])
        by gmr-mx.google.com with ESMTPS id o23si771815qka.0.2021.06.19.04.32.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Jun 2021 04:32:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::734 as permitted sender) client-ip=2607:f8b0:4864:20::734;
Received: by mail-qk1-x734.google.com with SMTP id bm25so2898142qkb.0
        for <clang-built-linux@googlegroups.com>; Sat, 19 Jun 2021 04:32:19 -0700 (PDT)
X-Received: by 2002:a25:880f:: with SMTP id c15mr18259680ybl.247.1624102339591;
 Sat, 19 Jun 2021 04:32:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210618233023.1360185-1-ndesaulniers@google.com>
 <20210618233023.1360185-2-ndesaulniers@google.com> <CANiq72kjyiAQn2+ijZKFo7SY3z+dCV6fGXYP1O_Mq7Ui3EqSzQ@mail.gmail.com>
In-Reply-To: <CANiq72kjyiAQn2+ijZKFo7SY3z+dCV6fGXYP1O_Mq7Ui3EqSzQ@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 19 Jun 2021 13:32:08 +0200
Message-ID: <CANiq72nbbqeD2dv3z0y3rN-_kdnh=9-pD7oSyWUfaG8oJ2y_8A@mail.gmail.com>
Subject: Re: [PATCH 1/2] compiler_attributes.h: define __no_profile, add to noinstr
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, 
	Bill Wendling <wcw@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	johannes.berg@intel.com, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=X+Qf5RWT;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::734 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Jun 19, 2021 at 1:26 PM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> I am not sure if it is best or not to have the GCC link in order to be
> consistent with the rest of the links (they are for the docs only). Do
> we know if GCC going to implement it soon?

i.e. if GCC does not implement it yet we use elsewhere this kind of
marker instead:

     * Optional: not supported by gcc

The first of its kind, normally it is clang/icc there ;-)

We could nevertheless have the link there, something like:

    * Optional: not supported by GCC
                https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nbbqeD2dv3z0y3rN-_kdnh%3D9-pD7oSyWUfaG8oJ2y_8A%40mail.gmail.com.
