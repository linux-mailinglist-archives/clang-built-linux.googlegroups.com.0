Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCEM6T3QKGQEPYCN3GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB3E211570
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 23:54:17 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id k188sf4632022oih.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 14:54:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593640456; cv=pass;
        d=google.com; s=arc-20160816;
        b=dsMbP57WWNTSirkDtq9IyJZAE2s81kNZmjid8rJRpcorCsooqEF1oDnc9u88osxhrP
         mrhv23tkCEg+Wle3HxcMH4W79qMayL5tS3P2b5ZBXtrfYAsQz/wauXLpVkn0Ff6acT8M
         fisnEiyOdKE+hjDOUaJqrezvmAg7p7+HwV0HR3z8lA/+JuhAjXc+q2QInbIwM6yF1/z3
         4M5sqB7cuRjVdFiyJxfcfP+wd3QNxy6gV6uo8TzG9d9U2q5EADvNJRLJFEpu+Oaod9Dy
         4HY3lXcjrUuXrhlDUMDUg2ZrOZ0yUe1qAxEY+fL+9QEDIEqHAQOs7FG3JawnYGYyl8at
         NAeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JIQIWWOT2lBTZRomxpyTqF2JYeF48kzxveWSLP4NPus=;
        b=qkVIZNAqBExkjKLHVL290B6FLuYGtLwkWwYjcQvdJGDbPIfP8Fzjbsgegz41b+Gn1H
         brEDU7NqfQD6WW4jPiRpv1hHBD0KKK+aIbX1MDCA6kN3EnkqJiOvqlpGfOoIWqpeLyEH
         bGLpxdQxMU6ZVbJPD1iRwlZ1Q8bbNnj1x0iUqdRl44Xa+Zh+WfNK6MBEmUNB7WX8Ast4
         L0/mYHSyT7ar0o4g52eu6NoN9B0cm6lTMKA5o73h+SL97/H9i16V90aW9JxPL69pWKLP
         ziojZHZ2d3SIu8EsMOTCoP83nJkGTE24v1Hr3xiNdmq+0kpllgZG1dU0Zr8FWZPB3zIB
         /r7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="do3tiN8/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=JIQIWWOT2lBTZRomxpyTqF2JYeF48kzxveWSLP4NPus=;
        b=Pah3vDd3gPnXOtQrb/yuUIIKz0kuWEdmcpFACuNeJYgmkgR7zQSmWnwKAGHERY7YCN
         BbrjGboRasy4vg3wYuSWLf3AaMnawSlGwkSx7Hw+5H8e6/OceZyMq8gxQyZcVZTpQGXW
         XNu0MdCfVw5tSAVMi1sj9QPnBSnObjZRL5yAhT9xhuZ9qUtsrph42ReSct75Ct/dF8Ej
         g4BTQEp/jCdYqN5Z1tU/i4b9nyoZFd7SXl0LLZu6sm4K7jWpNpC6+yJCJjqtXfJ4ZOz9
         nerXUQXUKP5NgBrFY+eOragKoPoY+fqG3InNMfLACCK6q7JHhnPzGybIKpE0sAUFTvTT
         PZlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JIQIWWOT2lBTZRomxpyTqF2JYeF48kzxveWSLP4NPus=;
        b=uJaecfU44FCsEC8L4mqG+8TmbYDcuYs70v0/nkR2UY0mWVyxB0r6LQUt6pptIz+uWB
         zN5J1N9OcmY8ZPggtNlGfPI1Wn85s20rYmnJQksZvM32fbLiTwdHWUSd65qpT9enpxzG
         dZfaOGIp8hQqdWxKBTNQOvgXZXz2lSYRBnLqR545Qyk1Iai0z8eiT8RFwvlmAW09Uyhc
         sTm9tl7NwpG0OUGzv5bb0rlnh0WVESJfqbvzgZN9+BKAltLC7JqRHWUvHRol38gECTZt
         ZZ51tVPTh0hBgy0JHZOSM9RKLVVmYMuKmTMJIhSfpx0imqg4Le/g8Aw7DyGb90SEsZ0y
         Cj5w==
X-Gm-Message-State: AOAM533LTWSwLky5i3xC0ZqloBtc9qSVkcSfUVONTACn0DY/fKllDOgz
	cMelaHBV+7cENyO4ghPgsQM=
X-Google-Smtp-Source: ABdhPJx60Q/oALuR4grIlUR3pX8Qltz17XuHk4qKC9G8fIbaN8WSqUfKUokVG4gYZ6qHX/HGsKwbtg==
X-Received: by 2002:a05:6830:45a:: with SMTP id d26mr22161961otc.252.1593640456192;
        Wed, 01 Jul 2020 14:54:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:20c2:: with SMTP id x60ls856498ota.7.gmail; Wed, 01 Jul
 2020 14:54:15 -0700 (PDT)
X-Received: by 2002:a05:6830:1292:: with SMTP id z18mr25373904otp.292.1593640455887;
        Wed, 01 Jul 2020 14:54:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593640455; cv=none;
        d=google.com; s=arc-20160816;
        b=OIwwNOKNpIIVIjDCtS5chGEIx3Bz6L6XxI09NuPlszwqw+PlVrInXXZWv5xaZi4IHh
         tclIOC1ARpZel6rbCNscs5QGoBqXry+xNL/BhbFZ/4kq1OwwdaEH86JT1Q8K6MGfnD4I
         qJPaguoqxduflMyJNneIdRSH6xjQ4toMKZUGEHiREmXvpaTDpHaile90Ge3zDlSJbfXA
         W19LGum3iK+Yq+YDFN6YAWmgr8FmiUZ09XV0UtSeopgZKDxIxwcldw21phaPWeUM3uGC
         54w8MqaSWWzpxgzFyMP28KOQ7iefp6KJIS27ZV7e+qFJAKoFHEu7+LaYpT2wM/6yc/+v
         IP0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=v5zVZ/qvFqC9c5KWODDkon7op7M6c9UcQbidcfKUSJo=;
        b=CmWSu7CB5t1K4C+mGXWoenJSswl55hNIgRaTvP6WOpUEHpBoidu1gvHuyANXXV+mK4
         Yy0ZxEkp46PfG4SsaseLRj/DPl5DnxF/97258p5ag3nXKg9b2T3dDygPPlp1Bm+TFUMi
         Jt52e67ofx7JGdPM96w9wOH7ACfq1hZiXZ3eZmRWWh1oQPofUSWu0Oy2vhEAuy7YLXxT
         PDCsgar+zQ5m+FzmiH6KQFDrFPJKagoQMaQNU7HqWISnfoGUO7NV5QruCsOjbDA+0+WB
         ItaZlbBj3QpWOcqVD3kbGd0hvZDABgiaTrjepcjp5k+CQ98EmE/UG229rPJUr1x+EBnT
         1Dzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="do3tiN8/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id l18si551131oil.2.2020.07.01.14.54.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2020 14:54:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id p3so12381702pgh.3
        for <clang-built-linux@googlegroups.com>; Wed, 01 Jul 2020 14:54:15 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr21262941pgf.10.1593640455007;
 Wed, 01 Jul 2020 14:54:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200622231536.7jcshis5mdn3vr54@google.com> <20200625184752.73095-1-ndesaulniers@google.com>
In-Reply-To: <20200625184752.73095-1-ndesaulniers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 1 Jul 2020 14:54:02 -0700
Message-ID: <CAKwvOd=cum+BNHOk2djXx5JtAcCBwq2Bxy=j5ucRd2RcLWwDZQ@mail.gmail.com>
Subject: Re: [PATCH v2] vmlinux.lds: add PGO and AutoFDO input sections
To: Arnd Bergmann <arnd@arndb.de>
Cc: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, Jian Cai <jiancai@google.com>, 
	Luis Lozano <llozano@google.com>, Manoj Gupta <manojgupta@google.com>, 
	linux-arch <linux-arch@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="do3tiN8/";       spf=pass
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

Hi Arnd,
I usually wait longer to bump threads for review, but we have a
holiday in the US so we're off tomorrow and Friday.
scripts/get_maintainer.pl recommend you for this patch.  Would you
take a look at it for us, please?

On Thu, Jun 25, 2020 at 11:48 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Basically, consider .text.{hot|unlikely|unknown}.* part of .text, too.
>
> When compiling with profiling information (collected via PGO
> instrumentations or AutoFDO sampling), Clang will separate code into
> .text.hot, .text.unlikely, or .text.unknown sections based on profiling
> information. After D79600 (clang-11), these sections will have a
> trailing `.` suffix, ie.  .text.hot., .text.unlikely., .text.unknown..
>
> When using -ffunction-sections together with profiling infomation,
> either explicitly (FGKASLR) or implicitly (LTO), code may be placed in
> sections following the convention:
> .text.hot.<foo>, .text.unlikely.<bar>, .text.unknown.<baz>
> where <foo>, <bar>, and <baz> are functions.  (This produces one section
> per function; we generally try to merge these all back via linker script
> so that we don't have 50k sections).
>
> For the above cases, we need to teach our linker scripts that such
> sections might exist and that we'd explicitly like them grouped
> together, otherwise we can wind up with code outside of the
> _stext/_etext boundaries that might not be mapped properly for some
> architectures, resulting in boot failures.
>
> If the linker script is not told about possible input sections, then
> where the section is placed as output is a heuristic-laiden mess that's
> non-portable between linkers (ie. BFD and LLD), and has resulted in many
> hard to debug bugs.  Kees Cook is working on cleaning this up by adding
> --orphan-handling=3Dwarn linker flag used in ARCH=3Dpowerpc to additional
> architectures. In the case of linker scripts, borrowing from the Zen of
> Python: explicit is better than implicit.
>
> Also, ld.bfd's internal linker script considers .text.hot AND
> .text.hot.* to be part of .text, as well as .text.unlikely and
> .text.unlikely.*. I didn't see support for .text.unknown.*, and didn't
> see Clang producing such code in our kernel builds, but I see code in
> LLVM that can produce such section names if profiling information is
> missing. That may point to a larger issue with generating or collecting
> profiles, but I would much rather be safe and explicit than have to
> debug yet another issue related to orphan section placement.
>
> Cc: stable@vger.kernel.org
> Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=
=3Dadd44f8d5c5c05e08b11e033127a744d61c26aee
> Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=
=3D1de778ed23ce7492c523d5850c6c6dbb34152655
> Link: https://reviews.llvm.org/D79600
> Link: https://bugs.chromium.org/p/chromium/issues/detail?id=3D1084760
> Reported-by: Jian Cai <jiancai@google.com>
> Debugged-by: Luis Lozano <llozano@google.com>
> Suggested-by: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
> Tested-by: Luis Lozano <llozano@google.com>
> Tested-by: Manoj Gupta <manojgupta@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V1 -> V2:
> * Add .text.unknown.*.  It's not strictly necessary for us yet, but I
>   really worry that it could become a problem for us. Either way, I'm
>   happy to drop for a V3, but I'm suggesting we not.
> * Beef up commit message.
> * Drop references to LLD; the LLVM change had nothing to do with LLD.
>   I've realized I have a Pavlovian-response to changes from F=C4=81ng-ru=
=C3=AC
>   that I associate with LLD.  I'm seeking professional help for my
>   ailment. Forgive me.
> * Add link to now public CrOS bug.
>
>  include/asm-generic/vmlinux.lds.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmli=
nux.lds.h
> index d7c7c7f36c4a..245c1af4c057 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -560,7 +560,10 @@
>   */
>  #define TEXT_TEXT                                                      \
>                 ALIGN_FUNCTION();                                       \
> -               *(.text.hot TEXT_MAIN .text.fixup .text.unlikely)       \
> +               *(.text.hot .text.hot.*)                                \
> +               *(TEXT_MAIN .text.fixup)                                \
> +               *(.text.unlikely .text.unlikely.*)                      \
> +               *(.text.unknown .text.unknown.*)                        \
>                 NOINSTR_TEXT                                            \
>                 *(.text..refcount)                                      \
>                 *(.ref.text)                                            \
> --
> 2.27.0.111.gc72c7da667-goog
>


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3Dcum%2BBNHOk2djXx5JtAcCBwq2Bxy%3Dj5ucRd2RcLWwDZQ=
%40mail.gmail.com.
