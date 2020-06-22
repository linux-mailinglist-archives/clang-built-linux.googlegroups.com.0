Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5PRYT3QKGQEJO5UEPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 7535A204439
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 01:04:22 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id t11sf8987316oih.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 16:04:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592867061; cv=pass;
        d=google.com; s=arc-20160816;
        b=hFcWhFkv/y+SYOf1YArlwZPee08bTc2pzkYffmQVcZb7BZHOs2sek1B9kdpmtFE1lQ
         MP/2pXG6ISJzZ6FvSOP7K/8VAlDhseVlwZ5SM3RTVj0KCBTCTuc2vDCMfS2HuyENjBo4
         K7FV3b1RhUmeiV/p4SQx4MwFRPA8EdT/xn4LWtwsRDksvNk9vuFv0ChLEfnAECSL8mFO
         Uygqo5ga9uQ7aeAtM+aR4uA4uOScsWL338oA464B+7/jcwU4DVD1VE9jhg86lK+YPesP
         /lwItjhzA9dfiNjBcuqABsLGQfOH6+d2DAfBNKa/9KaVxSkNHVmYzDZD68Qck8Aw3MiP
         Y4Ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mNiLR2PadrNKO1yj24kslTVug4SCWb1CtcEbKJTnEvg=;
        b=rzis7xSQ1rBid74Uvlg2DPHM86dYNGaxUsisgLB6BoAfu1zdpTcYw8RQH1gFW1PZ/q
         C7R+nD/CWGHS78ESWkrHD0q4mo3KPK8axrAvxOX3jhew0b6/4YVAsiFQ29jAteq98E7F
         YAXMZGk1KaaKYNQtXE0xP+QLWsu9ZeETRfNxRrAfV0smlWJqKOuPkizQqUknNngfgQN+
         8gGEcf9uQuQ8MaUy0N8qVDgLRe02HMvt5pAqrjSLKAqsA7v8oHinmYoYPKe+vd+svuTE
         krbkMfIviR3Dr9JTB1JfsossUUErMLadWSPdWP9PmJOuSK2/aEUA+BHYzOYboDVPTsMQ
         yFjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CjobsTwj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=mNiLR2PadrNKO1yj24kslTVug4SCWb1CtcEbKJTnEvg=;
        b=kUvB71OlfemnYgXwDr48W1I9QpK0gp9JPj2JXIWyN3jX/82Dl660IoiwnUb6TXX+m/
         bOHbCCL6ZgBzYHg+s7kPMLSNeR2S33PNhK+rkvtrEqwv1cMhLxyQKWqg8XjYjOUeEU5R
         TQUB4Gc1odlP8AvSy7kwT5BSS8D4QIwQy5SeGa9FdpXzG/OYw3KceL/zHgyhQCKZnjO/
         7kEx2kMT2aKnanoBbwe7+wyikqygJId+bZwlxIZwh+oQ0q7YbW9keoFCMaos/tPpFPnc
         9Wfgw6gRtokSjDvVZWTJ8Yij9XioChkAgwLvP/EqRH12SpTWgbd7wfmrYdK2WsPIRikD
         8ELQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mNiLR2PadrNKO1yj24kslTVug4SCWb1CtcEbKJTnEvg=;
        b=B/8OuxMybMHCVjICz7FcZ8wQ1N+DtqZZgAz5Vi3JRWwI7RdIG6+YIFxoXGqBjLVaUP
         xq5NoaF4bc2tFkSPzOkBsPdPEeR24mXhogxgz3Tp9KK76Pj/poePp896gSg6jxWugMkh
         lTX8O7QA4xwNA5WK4C4OTO/weXY91pRZ5IjsGQflxhTHD5eDBWGXw1oiVOwKKA2KIwQ2
         abG9R7VqfYknjLD2TpQCLhDCmYY8s9YNl+Lmjk+KbcmPJGJKgtWyd49+myhYeSLrxhV3
         ZYNrUeUdDvP4+uH7w0So6Y/FQHfJGBD7oK0Pav23iq1Q9TdBfalhkf9FMrshdBC2j8Bs
         +mOQ==
X-Gm-Message-State: AOAM532xdJWnzVQpK/Ac8xlLUh3W6lnzJIJpXzzT1qYzyP9emM7vlewl
	D6BptsoqMtqGIPs/m3VUCjc=
X-Google-Smtp-Source: ABdhPJwnX8pKeiE37R/u7OHrEJ94ud78pmLLkKOb8+VbGEvs3WACs4j0zRC7V+3aq8BsGCHpZMqggg==
X-Received: by 2002:aca:c683:: with SMTP id w125mr13717225oif.37.1592867061343;
        Mon, 22 Jun 2020 16:04:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4808:: with SMTP id c8ls3936490otf.7.gmail; Mon, 22 Jun
 2020 16:04:21 -0700 (PDT)
X-Received: by 2002:a05:6830:1649:: with SMTP id h9mr9099793otr.225.1592867060955;
        Mon, 22 Jun 2020 16:04:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592867060; cv=none;
        d=google.com; s=arc-20160816;
        b=OKZC9W5qervrPBiD/JeGDXIVahfrTo4EXilNu8G+EEH2Fn3EGm6tNPdQBD9V4ljs8g
         0xlnSl5M7ey/eai0oyEAYTFbJFvRYyfc6mPCCJmgvf7WJ2kK4GcHkuabyOlkLn2XXzOK
         zYaPpyojaHflE/6732hwSm5qaUqHu/k1fkRDIv5X/E7gFJNvEuoT2DJq3PxW9URppZFH
         wUfZiwCeifrfQuVEyzVZ4Diiecr19I6ATocq83udou5pK5raYZqWjYPZmTHNasqros6u
         EfFq4oPQNrZr7u5YuY8HTWUJKSYkDk1YjVmABe5FCyzVShGCuXlET3JDUfofCTZm11Bk
         eLNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SzgCWMDg2RKJ2NhPQUi7yzswSotPjadK1/0BdT/7pNM=;
        b=HJeHztbNR0y0fjVoOhSypPu5gcGWzyccHcJ6G8EtS1WMS9HfWIRObLxtfNao+QkB7B
         vamfPbNrxijLHiNzxQPjJAzQ52VoRTiyt2HZWhKXlhxxjToAev0wmJpVCVKXr6cVcZ9e
         HjXEHg7GPICAKsfGE7QGbyOMP83AiIgeAQ0C0O9RM6DHsmVjeWYCz0MGSm/lZ/mHRSA5
         2zoSbyHgDVHH9JgCo/c+tP61f+CI+iMcDW7tcF4hZCjxs7h/7hP+m/QmRMf9c19Y2Jpx
         IDDnFUKF6O0LVGuRHulpQLg/b8AnvDKDugnJ2PkLY1eDx9Va+oq2Zv2y9H4Nka35sND4
         qNLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CjobsTwj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id c26si1081214otn.4.2020.06.22.16.04.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 16:04:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id k1so8250430pls.2
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 16:04:20 -0700 (PDT)
X-Received: by 2002:a17:902:fe8b:: with SMTP id x11mr21225140plm.179.1592867060019;
 Mon, 22 Jun 2020 16:04:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200617210613.95432-1-ndesaulniers@google.com> <20200617212705.tq2q6bi446gydymo@google.com>
In-Reply-To: <20200617212705.tq2q6bi446gydymo@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 22 Jun 2020 16:04:07 -0700
Message-ID: <CAKwvOdniambW9_nVbDnd4A_+bdDdZMd2V1Q=Xw5EJYDGeh=eyQ@mail.gmail.com>
Subject: Re: [PATCH] vmlinux.lds: consider .text.{hot|unlikely}.* part of
 .text too
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kees Cook <keescook@chromium.org>, "# 3.4.x" <stable@vger.kernel.org>, 
	Jian Cai <jiancai@google.com>, Luis Lozano <llozano@google.com>, 
	Manoj Gupta <manojgupta@google.com>, linux-arch <linux-arch@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CjobsTwj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Wed, Jun 17, 2020 at 2:27 PM F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@googl=
e.com> wrote:
>
>
> On 2020-06-17, Nick Desaulniers wrote:
> >ld.bfd's internal linker script considers .text.hot AND .text.hot.* to
> >be part of .text, as well as .text.unlikely and .text.unlikely.*.
>
> >ld.lld will produce .text.hot.*/.text.unlikely.* sections.
>
> Correction to this sentence. lld is not relevant here.
>
> -ffunction-sections combined with profile-guided optimization can
> produce .text.hot.* .text.unlikely.* sections.  Newer clang may produce
> .text.hot. .text.unlikely. (without suffix, but with a trailing dot)
> when -fno-unique-section-names is specified, as an optimization to make
> .strtab smaller.

Then why was the bug report reporting https://reviews.llvm.org/D79600
as the result of a bisection, if LLD is not relevant?  Was the
bisection wrong?

The upstream report wasn't initially public, for no good reason.  So I
didn't include it, but if we end up taking v1, this should have

Link: https://bugs.chromium.org/p/chromium/issues/detail?id=3D1084760

The kernel doesn't use -fno-unique-section-names; is that another flag
that's added by CrOS' compiler wrapper?
https://source.chromium.org/chromiumos/chromiumos/codesearch/+/master:src/t=
hird_party/toolchain-utils/compiler_wrapper/config.go;l=3D110
Looks like no.  It doesn't use `-fno-unique-section-names` or
`-ffunction-sections`.


>
> We've already seen that GCC can place main in .text.startup without
> -ffunction-sections. There may be other non -ffunction-sections cases
> for .text.hot.* or .text.unlikely.*. So it is definitely a good idea to
> be more specific even if we don't care about -ffunction-sections for
> now.
>
> >Make sure to group these together.  Otherwise these orphan sections may
> >be placed outside of the the _stext/_etext boundaries.
> >
> >Cc: stable@vger.kernel.org
> >Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=
=3Dadd44f8d5c5c05e08b11e033127a744d61c26aee
> >Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff;h=
=3D1de778ed23ce7492c523d5850c6c6dbb34152655
> >Link: https://reviews.llvm.org/D79600
> >Reported-by: Jian Cai <jiancai@google.com>
> >Debugged-by: Luis Lozano <llozano@google.com>
> >Suggested-by: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
> >Tested-by: Luis Lozano <llozano@google.com>
> >Tested-by: Manoj Gupta <manojgupta@google.com>
> >Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> >---
> > include/asm-generic/vmlinux.lds.h | 4 +++-
> > 1 file changed, 3 insertions(+), 1 deletion(-)
> >
> >diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vml=
inux.lds.h
> >index d7c7c7f36c4a..fe5aaef169e3 100644
> >--- a/include/asm-generic/vmlinux.lds.h
> >+++ b/include/asm-generic/vmlinux.lds.h
> >@@ -560,7 +560,9 @@
> >  */
> > #define TEXT_TEXT                                                     \
> >               ALIGN_FUNCTION();                                       \
> >-              *(.text.hot TEXT_MAIN .text.fixup .text.unlikely)       \
> >+              *(.text.hot .text.hot.*)                                \
> >+              *(TEXT_MAIN .text.fixup)                                \
> >+              *(.text.unlikely .text.unlikely.*)                      \
> >               NOINSTR_TEXT                                            \
> >               *(.text..refcount)                                      \
> >               *(.ref.text)                                            \
> >--
> >2.27.0.290.gba653c62da-goog
> >



--
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdniambW9_nVbDnd4A_%2BbdDdZMd2V1Q%3DXw5EJYDGeh%3DeyQ=
%40mail.gmail.com.
