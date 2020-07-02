Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBL5R633QKGQE5GB24LY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 391C0211DF5
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 10:20:00 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id j5sf17146900lfc.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 01:20:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593677999; cv=pass;
        d=google.com; s=arc-20160816;
        b=copG/UI1equ2c2pn69QHfWAF6llab/AgOuoBjXUxmnCOHR1PlTzRDwbzbGWQLYMsAf
         N0bc5Ga+FljjFXa6/vdgZYVNH2iiqDB174i6k4qPAgNJtiFdDV917e+5vHKJNHxXZzeR
         rGmZqlp3rtIY6At8lbpV8sm8SJq1f5LWo/kpF0CXgcEOg2/V/KvsWPbt8n3QgjtNIKvL
         fnYPqVBq2y+I6RTq3o6sDTsdKmDUciJh+8pZ4UlqBrUFInNDrRZA6FVFWXWy+773Htnl
         kMbpeD0D8sfQyb6IzKkMcdP5k8Wo32HDRHRZV2rLqSRmT05T1fTL+q8Beqmzzs1r3Fw/
         v/6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=7RQBB+SmxpoWCp/pCS61Ly7xPinzYyocV4PV+qnv1ww=;
        b=b5qQZ4peDJwhA+gRfc7rIINcd62UMcfuz2m7u4UQ+rtmfiSLJjW0olPfeDO0xKdHlB
         Cqv8fKHoT+Br4QPk9E0tmGVZzuixnxQLNtv84P4Zyd7mp8sLaSwvPQ2RpO+aQx29rTWo
         rJfr4SVQ+m9aSAkQuaihzPWERxc8scGkuXgKtbHamDrqWsozdnppfSV+cgOuU0cJSpKe
         yVSA1NIsYnbiCoN00vuUSATJASI9t2gSlQflYsQi5+a4sCHTvMM6/Laz/HGbM2a3zs3J
         SOI6EiJyGMmCpJiyMsMCc9JkgcooH/nB+0grMV//L/CF/lGA7Ui51SYz4VPSvngyYbVg
         fy9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7RQBB+SmxpoWCp/pCS61Ly7xPinzYyocV4PV+qnv1ww=;
        b=bR9l60/lPfEODbp83jM7xks9eXup5iqtqGaSonOIbUpzS9w0IhihtboHc+AZy8+8FZ
         7//YReG/o6/C7EYL0NpE6W1Os5twWm3p4mi9pCDyVnfm+kxL2I7az4hV8EsNWZimd6LN
         LrJk55uHeXYGUzK+GeyCeUA7DU4K2oiM4GMhnIVevRc7vFXm717st8z1ONuZ7LcBC+X2
         7RzHaccD4sgqcZqeZT5PXRnHeTfT2X5ec6Cn8fYKTe6TWjqPBt4+hxtMtMB0E42kS7ZM
         ucRThZZekLoGwqdJLwmFoHHZvJrIwhXxUZAMh5/Y5eVwIy7/7+ypVYrz35H6hXIt+h6L
         y/RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7RQBB+SmxpoWCp/pCS61Ly7xPinzYyocV4PV+qnv1ww=;
        b=iaVcrVT9+r2HLULLIbNQ6PLkKUu2Z4w69bOr1XwgkXUkkAS6yFOHLrbuzRZssqfglb
         gNouE0XAY1tkUTpl9uUWgz2bCat8uuSjRbE874DwfQmArUxHPzz/IxjWn02+Fb4Vo2cA
         isajY62PnD+h38w844OCiNhhkWiw4q9LWGmi209gzwzrZ418H8+vxqmUZtiWuuE+Vej+
         KFx1G+CGXHFkqdVlbXP2bG+gTEmo/kcKA486KwKqarHsZ0GI1G4KKR3lsAwdFn9H/97W
         dEnLLQQiaKaDJO6em1r21NnqKOfAiL/89Ke0wxPnZd4qCYOfPtd+tV/fJ40Low5OZBni
         1dDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532D2zXPFcqpmr1bekfib/6BaXmn4i8Yqxdk6Rp0yVjAhkWynw1o
	2SDqouB52ak18QXDmZOlmh4=
X-Google-Smtp-Source: ABdhPJyw+eEhwAGxS20l4PbBySKJTBDWbtF3YvVy0NJ0MIWl7S7PpJC/TiEzczZTJqQlkhaEYTFpfA==
X-Received: by 2002:a19:815:: with SMTP id 21mr17158756lfi.119.1593677999610;
        Thu, 02 Jul 2020 01:19:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4e1:: with SMTP id s1ls1148524ljm.1.gmail; Thu, 02 Jul
 2020 01:19:58 -0700 (PDT)
X-Received: by 2002:a2e:b889:: with SMTP id r9mr15672271ljp.92.1593677998931;
        Thu, 02 Jul 2020 01:19:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593677998; cv=none;
        d=google.com; s=arc-20160816;
        b=Hav56n+poL57bUAnIiIAeQaaV+yeb5gICQtCrp9pP6JHcFx1mxeL49I1JcWQfW/SJv
         3fHvxDGlt4deuTG4gsr3FkF9YFT2Pb1x+ZevH8i//f0aD+UQ1qObBryJwb55efnFb6h8
         oRPDBXN0ubR982LpKzdNoMKdOp20NUkB93V0QMP0Dc2dfMqt0jO+HLCcvy/r0STAtnwu
         mGZHPjC2YaGXosXPDEc4pW7CLQrbZuw0rOH12R3M2RdjYc1STZ3nuulid6PlTPy5gKlM
         7xguXDaic4D+W+AVpRpG4Wd4faYasY7k9ZpOlitxz1Yba7EISpIBbPd0VI8op+033Jp8
         Foqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=KcFZ54ol7DFziUXysurYGZLxmAiT/Oo18DME+PKBQTM=;
        b=GOw3Lar23NbrIQEvtowV2NPcKpj6NZIKALyRQE+cazQBaMv19ProeQUf42RLE5TR6k
         X1mGRkRs2L72oGX1kVvKJ1WvtB7tFaVTGgBpFKylbToSHMA5COJXba7KKfHhZ/59OOra
         OMP487XMs/2lsld5/X8SV5c+dwUwbhNxsLmaovMek90E4qosOetmSOZwleT7n4DBF5Zp
         dqPhFE61Wr4VNchmB7aos6NK000kiBRC0kBF8VhCSct3j54dzJHlwXeyU4RXhz2hPvMf
         eJgbhMC+bcVUFcskcq3Ca0EtHZfNPOiFEbhHYE0b2PEBlwpH3nvFuVXPe3rtVrUMsLlt
         Rs7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id p10si556084ljj.7.2020.07.02.01.19.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 01:19:58 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Received: from mail-qv1-f41.google.com ([209.85.219.41]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N95Rn-1im2oL01zj-016AoR for <clang-built-linux@googlegroups.com>; Thu, 02
 Jul 2020 10:19:58 +0200
Received: by mail-qv1-f41.google.com with SMTP id dm12so12254599qvb.9
        for <clang-built-linux@googlegroups.com>; Thu, 02 Jul 2020 01:19:57 -0700 (PDT)
X-Received: by 2002:a0c:a992:: with SMTP id a18mr19332311qvb.211.1593677996743;
 Thu, 02 Jul 2020 01:19:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200622231536.7jcshis5mdn3vr54@google.com> <20200625184752.73095-1-ndesaulniers@google.com>
 <CAKwvOd=cum+BNHOk2djXx5JtAcCBwq2Bxy=j5ucRd2RcLWwDZQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=cum+BNHOk2djXx5JtAcCBwq2Bxy=j5ucRd2RcLWwDZQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 2 Jul 2020 10:19:40 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1mBCC=hBMzxZVukHhrWhv=LiPOfV6Mgnw1QpNg=MpONg@mail.gmail.com>
Message-ID: <CAK8P3a1mBCC=hBMzxZVukHhrWhv=LiPOfV6Mgnw1QpNg=MpONg@mail.gmail.com>
Subject: Re: [PATCH v2] vmlinux.lds: add PGO and AutoFDO input sections
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, 
	Jian Cai <jiancai@google.com>, Luis Lozano <llozano@google.com>, 
	Manoj Gupta <manojgupta@google.com>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:r1uUl4EP1nSSkXMPpmpD6NSr85X0EMsxjIxlgJ/W62pO55TPEz+
 qlbN6TGSpE008GSt7ZrpKFnOkqCMq6HSngaYiq83y43Smj2D7n+Y48RUh1xL1jatCIMbNyG
 14Vzas+9ntKTEoLlDArkvekIrFb3P/MlOj76RzlhO1cbU2Y9UIXmjFU6O3DjVUFNjhF769b
 fwBb/QtCIKi3g1UsQKPRg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SYr1eGP0ANk=:yz1YdZmctyjlE/IgLcdQUk
 Sq3Bxix0cYvekdhavfvnydDjBqEwCNvINeEHhTnMlTa6ytnnR1VEXn8m71Y6DnIb6KgzgQBy2
 bmnQ6zOJyHUCXn5cAtqcxKyGvwNclkZ9pcJHuU1PkeBl+wK168FJ/ThJmtaIRxbtDslCLPq84
 UWa7VpBAoRNk2i8DSnk6/9Mf65NwJglMl8o0GxpfgNPekIyRQTacqEPSGb+aZHfSbgOTiMWmS
 uRC0LvPQpgmQvhad/8DhSImSPORe8hIiyJMwx9u2si87Wxe0yDys/0qLR1d+sZanKiRcD8X/0
 HkcgBfyufMF3d1GN0So6rKg68Wurh6hOnRnbiWj2QxHvEX46cimoT7PBPKjNlHPZMCIo/Z9pe
 p96/QCBGgLpRquQcEJXUj9EL9pDteOFCxRvAKl1DQKIvcqyYOgkyl6XaGV5Grp730Ts/en7M4
 k7tnVhKn1ovtCEQfGDaqbGDMJ2dJM6zhgG4WQTlIJXnZhSSM9lqZJhXc/JvlJcr7s1rJqvT+R
 lDITJgbB9fGDa5U7kzTSUuSZi12os5XG1vX+YtVdXfXduZX4x/C/1jt6v+zA7CUUZXPcWKZxR
 WrFzCm/rLFmdcZl3nzidaikF0nk03Olze1jM63oNXjdH4+s/9Mn+kgzuo873IhjN9E0lhXDOY
 GsLpB84XpA07BOuCKSZGfAi7d8XlM59SfTX56yiFZ2ntVSL3JTWTa3bRR2hyq8Lc1Lf3rZHRu
 bEncjzxEplulnavW2ldgMXN0RBWQQTQn+P6GtGIU3AOrGHKzN+cZ2IgCLI5NtZGi/oZl6GBDm
 nvQ4UYnG/89eO3ZABjnN3b51pzh7Rbr+zoXVOQWek5Df9hWEm8=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.187 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Wed, Jul 1, 2020 at 11:54 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Hi Arnd,
> I usually wait longer to bump threads for review, but we have a
> holiday in the US so we're off tomorrow and Friday.
> scripts/get_maintainer.pl recommend you for this patch.  Would you
> take a look at it for us, please?

Hi Nick

While I'm listed as the maintainer for include/asm-generic, linker scripts
are really not my expertise and I have no way of knowing whether the
change is good or not.

Your description looks very reasonable of course and I have no problem
with having someone else pick it up. You mentioned that Kees is already
looking at some related work and he's already done more changes to
this file than anyone else. If he can provide an Ack for this patch,
you can add mine as well to send it to akpm, or I can pick it up in the
asm-generic tree.

       Arnd

> On Thu, Jun 25, 2020 at 11:48 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Basically, consider .text.{hot|unlikely|unknown}.* part of .text, too.
> >
> > When compiling with profiling information (collected via PGO
> > instrumentations or AutoFDO sampling), Clang will separate code into
> > .text.hot, .text.unlikely, or .text.unknown sections based on profiling
> > information. After D79600 (clang-11), these sections will have a
> > trailing `.` suffix, ie.  .text.hot., .text.unlikely., .text.unknown..
> >
> > When using -ffunction-sections together with profiling infomation,
> > either explicitly (FGKASLR) or implicitly (LTO), code may be placed in
> > sections following the convention:
> > .text.hot.<foo>, .text.unlikely.<bar>, .text.unknown.<baz>
> > where <foo>, <bar>, and <baz> are functions.  (This produces one sectio=
n
> > per function; we generally try to merge these all back via linker scrip=
t
> > so that we don't have 50k sections).
> >
> > For the above cases, we need to teach our linker scripts that such
> > sections might exist and that we'd explicitly like them grouped
> > together, otherwise we can wind up with code outside of the
> > _stext/_etext boundaries that might not be mapped properly for some
> > architectures, resulting in boot failures.
> >
> > If the linker script is not told about possible input sections, then
> > where the section is placed as output is a heuristic-laiden mess that's
> > non-portable between linkers (ie. BFD and LLD), and has resulted in man=
y
> > hard to debug bugs.  Kees Cook is working on cleaning this up by adding
> > --orphan-handling=3Dwarn linker flag used in ARCH=3Dpowerpc to addition=
al
> > architectures. In the case of linker scripts, borrowing from the Zen of
> > Python: explicit is better than implicit.
> >
> > Also, ld.bfd's internal linker script considers .text.hot AND
> > .text.hot.* to be part of .text, as well as .text.unlikely and
> > .text.unlikely.*. I didn't see support for .text.unknown.*, and didn't
> > see Clang producing such code in our kernel builds, but I see code in
> > LLVM that can produce such section names if profiling information is
> > missing. That may point to a larger issue with generating or collecting
> > profiles, but I would much rather be safe and explicit than have to
> > debug yet another issue related to orphan section placement.
> >
> > Cc: stable@vger.kernel.org
> > Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=
=3Dadd44f8d5c5c05e08b11e033127a744d61c26aee
> > Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=
=3D1de778ed23ce7492c523d5850c6c6dbb34152655
> > Link: https://reviews.llvm.org/D79600
> > Link: https://bugs.chromium.org/p/chromium/issues/detail?id=3D1084760
> > Reported-by: Jian Cai <jiancai@google.com>
> > Debugged-by: Luis Lozano <llozano@google.com>
> > Suggested-by: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
> > Tested-by: Luis Lozano <llozano@google.com>
> > Tested-by: Manoj Gupta <manojgupta@google.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> > Changes V1 -> V2:
> > * Add .text.unknown.*.  It's not strictly necessary for us yet, but I
> >   really worry that it could become a problem for us. Either way, I'm
> >   happy to drop for a V3, but I'm suggesting we not.
> > * Beef up commit message.
> > * Drop references to LLD; the LLVM change had nothing to do with LLD.
> >   I've realized I have a Pavlovian-response to changes from F=C4=81ng-r=
u=C3=AC
> >   that I associate with LLD.  I'm seeking professional help for my
> >   ailment. Forgive me.
> > * Add link to now public CrOS bug.
> >
> >  include/asm-generic/vmlinux.lds.h | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vm=
linux.lds.h
> > index d7c7c7f36c4a..245c1af4c057 100644
> > --- a/include/asm-generic/vmlinux.lds.h
> > +++ b/include/asm-generic/vmlinux.lds.h
> > @@ -560,7 +560,10 @@
> >   */
> >  #define TEXT_TEXT                                                     =
 \
> >                 ALIGN_FUNCTION();                                      =
 \
> > -               *(.text.hot TEXT_MAIN .text.fixup .text.unlikely)      =
 \
> > +               *(.text.hot .text.hot.*)                               =
 \
> > +               *(TEXT_MAIN .text.fixup)                               =
 \
> > +               *(.text.unlikely .text.unlikely.*)                     =
 \
> > +               *(.text.unknown .text.unknown.*)                       =
 \
> >                 NOINSTR_TEXT                                           =
 \
> >                 *(.text..refcount)                                     =
 \
> >                 *(.ref.text)                                           =
 \
> > --
> > 2.27.0.111.gc72c7da667-goog
> >

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK8P3a1mBCC%3DhBMzxZVukHhrWhv%3DLiPOfV6Mgnw1QpNg%3DMpONg=
%40mail.gmail.com.
