Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB4UH7D3QKGQE6UVPQVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD832128CC
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Jul 2020 17:57:39 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id l19sf7405474qke.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 08:57:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593705458; cv=pass;
        d=google.com; s=arc-20160816;
        b=FKtjg/OaUxKGUTO4msVT0TnULzSZEOy0FJCqIif8nj+SYH4NrUlfFs2PZUaKxHp1ya
         YAwCa15U6foRMRoLfZPBMe6Lx10n+DRcYhPOv2O9/4rpnP9eBoS9KGjazpFcHmJUi5eN
         /yDmNSK7tNuuG9VjUENtA1oFAp4YDe1RZaduFnSNMP5Jgwoh/f6bDbAdpJtuL5L/n4QO
         3+JUCdqHWiGy7DLLBQIO9azm4Wy3O0psjw0h97xuNixLEekRHMt1kz/QTgRhoKeccFZW
         oxK/7RYM8mDuF/O/Crtp08zuHxuJnehSUXCI6a1bFBvKT13z3uBIbooX5pUg+4AHPm9q
         1wXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=k92MLyl0GcA6eOoDvrvR96mTs7HK9+i7dzHWEnIlt9Q=;
        b=rL4liWMtZkwXvuTMOTzv+cx83ujrCP2GG4TYuywSfC0b4MpgvxOSX/X1xeXgq+mTyI
         mACzua5qbecRZBev8CSYj7JGJITurfOy6bk3nIWk/ozOlQGyU3nd1v9U/1h3V3LQLZUf
         UokiS09Ogqg/f/WqXC2MtS6AnchtZpnQPYZRcyVK9uz4tdC9a4AHw87vrqnWW//RZvnC
         kf2D8epfihBHkDnCSETC3a3VJR1ZrW89vmBrd3HdXKPUKywEC/nf4Wsf9PMvf/+VWgAF
         hRBh8hVqY/c3o4goRey4SIoxsn1spXPP+ZLolJWX+/jpzETGcvvXR/2oY1TAB5ws+/jr
         Q66g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jwLT0yOQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k92MLyl0GcA6eOoDvrvR96mTs7HK9+i7dzHWEnIlt9Q=;
        b=Y4RjSrWu3BinWYQLvmdT8wLaxLDTCj18hxELxsGzo++pCasNCZ/aJYuG3lvT4D4elv
         jbgmYYSw1sZdcYtaF+oG4eA3ZdNhIgJZMPYo/AFpTVOlCUe6h472Op/LkzlaFceoz66G
         zOMTKUMxMFYLjg8zFAPH44dcooi5THSiZmplklFGj0uEczpNDDUre25ZlGazmD5C0Ga0
         +GZjkCSE72NXzNOJ4fx1SmzTpku3cpTjaouHkS9EbusE70hyFEH94nSKqUq086mll9sF
         hBLVcvFo9xpb77L0icLWf90hmUbrApPGy4w9Xouzw9Sm7CqZaNjSTcK0/xX8feOki6tk
         FpNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k92MLyl0GcA6eOoDvrvR96mTs7HK9+i7dzHWEnIlt9Q=;
        b=O89Mij1i9YJDBks3s5t1p9pr8VVqM/12NZEkzzaQ1qqxVCDdzES4DnuoB9YQcTj2aL
         p33plCZsDDNYYPV1MzeltpMTiLrTJKJzndzUdN+tSMgLoYBtyFabC5W8mXaFFgJTJdeR
         bd68m39kTh9KsdW3cuL0bVbxsr1/8E/K10C6bXCPmdVvzg9teZoxgcqVjh7wQFyEeIZW
         mSd3xqrJc5LvqezdlL9xVLjG0OtoQZUnk/n0QtnTkV1j3hW2Kzj2PmzWAcmQCLYC4U4S
         uzzEL4EGxHPQPuJHYmTUsqC1ZcNqruuQe0oP0Mj8NSV9PPoTdfMHA7QrxQG/E4Zhj3QM
         oQ1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531cpUQrZjw5g+iWMmciNPP0kGLPD+FUpKNXwih+8xIN6xo9a5Ri
	HAdDrtsLGdMyrRDkpe4nw4Q=
X-Google-Smtp-Source: ABdhPJw1lNcfeyms29V1S2P7hLrKQQVVZo69yn+G6tCg33FWBIFXMipGmesIlQjvJ66s3gguf5dXVg==
X-Received: by 2002:ac8:24c6:: with SMTP id t6mr32010198qtt.39.1593705458522;
        Thu, 02 Jul 2020 08:57:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:38f:: with SMTP id 137ls2942830qkd.2.gmail; Thu, 02 Jul
 2020 08:57:38 -0700 (PDT)
X-Received: by 2002:a37:c4b:: with SMTP id 72mr31741353qkm.359.1593705458079;
        Thu, 02 Jul 2020 08:57:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593705458; cv=none;
        d=google.com; s=arc-20160816;
        b=f1khmA97f0WSnu0/ajPfVOZ5uOv70gFT/rNhh/CxMrN6un0RB9qjDUMoLc/A1TFNgF
         LFSRwm0mfo2uGsaeXMV4kh6z21LrCfazS/U4DsE4I7awFaBixXvzuC71FY4WZ/8yZlAp
         oDyo9Qe9VrTR9bu9qGpVDFdXQ5sL3P3d5QF5zoM6PsEbFIVy+8lDos9AwmDejRw06v/3
         8qEGVPHkP/2tuP/3LwLfWHLRVjRKt1MxMAVH1qLVhuiIf07Btb941kv5MU3WzC9ug+4u
         pQdVCtXlL/Bs6+OW7KZ9c9F0hQDyKIZoAGb/2G707yNZLLKz9YnF4WsvmBxQd/8hF38Q
         t9Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=YgPSxrVcL5/+2trP8Y9tIB9bY9o4biAaserhf1XxerA=;
        b=inssOeBP7ZTljCO1So2NofnQFORPzQPklKEqey/MLCJaKMAWHYUzedzADNbz2dtlpd
         4wUafzpy2cMbVQK9k+7U3EUjSQWj6bUKOF40WwhFLlbx5imZ/BxgPJ4SVhsfWSlnQtEh
         D8yhZFql/+J3kwldRZr+4MTCuzk7nXyhjE9nXRE7u+upL/FttQCbORsctihbKHz2V5xT
         YV1Gs4g5ptGL+pjvM8WFMmt1BZsyla7x7ni2Z9WZ6wkxb9uT4kKCMzYvMzfwq/gEOtcD
         LYkNE2nh0nb7puA9eeI+2hcA9YZSqvs0w4x0OC71yhQ+/y4PPVKBbt/mUyN65tDzL2NM
         If7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jwLT0yOQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id q22si487870qtp.0.2020.07.02.08.57.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jul 2020 08:57:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id u9so7864811pls.13
        for <clang-built-linux@googlegroups.com>; Thu, 02 Jul 2020 08:57:38 -0700 (PDT)
X-Received: by 2002:a17:902:6b45:: with SMTP id g5mr27320510plt.3.1593705457169;
        Thu, 02 Jul 2020 08:57:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k100sm8517452pjb.57.2020.07.02.08.57.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 08:57:36 -0700 (PDT)
Date: Thu, 2 Jul 2020 08:57:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Jian Cai <jiancai@google.com>, Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] vmlinux.lds: add PGO and AutoFDO input sections
Message-ID: <202007020856.78DDE23F4A@keescook>
References: <20200622231536.7jcshis5mdn3vr54@google.com>
 <20200625184752.73095-1-ndesaulniers@google.com>
 <CAKwvOd=cum+BNHOk2djXx5JtAcCBwq2Bxy=j5ucRd2RcLWwDZQ@mail.gmail.com>
 <CAK8P3a1mBCC=hBMzxZVukHhrWhv=LiPOfV6Mgnw1QpNg=MpONg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAK8P3a1mBCC=hBMzxZVukHhrWhv=LiPOfV6Mgnw1QpNg=MpONg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jwLT0yOQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::642
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jul 02, 2020 at 10:19:40AM +0200, Arnd Bergmann wrote:
> On Wed, Jul 1, 2020 at 11:54 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > Hi Arnd,
> > I usually wait longer to bump threads for review, but we have a
> > holiday in the US so we're off tomorrow and Friday.
> > scripts/get_maintainer.pl recommend you for this patch.  Would you
> > take a look at it for us, please?
>=20
> Hi Nick
>=20
> While I'm listed as the maintainer for include/asm-generic, linker script=
s
> are really not my expertise and I have no way of knowing whether the
> change is good or not.
>=20
> Your description looks very reasonable of course and I have no problem
> with having someone else pick it up. You mentioned that Kees is already
> looking at some related work and he's already done more changes to
> this file than anyone else. If he can provide an Ack for this patch,
> you can add mine as well to send it to akpm, or I can pick it up in the
> asm-generic tree.

This looks good to me. Do you want me to carry it as part of the orphan
series? (It doesn't look like it'll collide, so that's not needed, but I
can if that makes things easier.)

Acked-by: Kees Cook <keescook@chromium.org>

-Kees

>=20
>        Arnd
>=20
> > On Thu, Jun 25, 2020 at 11:48 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > Basically, consider .text.{hot|unlikely|unknown}.* part of .text, too=
.
> > >
> > > When compiling with profiling information (collected via PGO
> > > instrumentations or AutoFDO sampling), Clang will separate code into
> > > .text.hot, .text.unlikely, or .text.unknown sections based on profili=
ng
> > > information. After D79600 (clang-11), these sections will have a
> > > trailing `.` suffix, ie.  .text.hot., .text.unlikely., .text.unknown.=
.
> > >
> > > When using -ffunction-sections together with profiling infomation,
> > > either explicitly (FGKASLR) or implicitly (LTO), code may be placed i=
n
> > > sections following the convention:
> > > .text.hot.<foo>, .text.unlikely.<bar>, .text.unknown.<baz>
> > > where <foo>, <bar>, and <baz> are functions.  (This produces one sect=
ion
> > > per function; we generally try to merge these all back via linker scr=
ipt
> > > so that we don't have 50k sections).
> > >
> > > For the above cases, we need to teach our linker scripts that such
> > > sections might exist and that we'd explicitly like them grouped
> > > together, otherwise we can wind up with code outside of the
> > > _stext/_etext boundaries that might not be mapped properly for some
> > > architectures, resulting in boot failures.
> > >
> > > If the linker script is not told about possible input sections, then
> > > where the section is placed as output is a heuristic-laiden mess that=
's
> > > non-portable between linkers (ie. BFD and LLD), and has resulted in m=
any
> > > hard to debug bugs.  Kees Cook is working on cleaning this up by addi=
ng
> > > --orphan-handling=3Dwarn linker flag used in ARCH=3Dpowerpc to additi=
onal
> > > architectures. In the case of linker scripts, borrowing from the Zen =
of
> > > Python: explicit is better than implicit.
> > >
> > > Also, ld.bfd's internal linker script considers .text.hot AND
> > > .text.hot.* to be part of .text, as well as .text.unlikely and
> > > .text.unlikely.*. I didn't see support for .text.unknown.*, and didn'=
t
> > > see Clang producing such code in our kernel builds, but I see code in
> > > LLVM that can produce such section names if profiling information is
> > > missing. That may point to a larger issue with generating or collecti=
ng
> > > profiles, but I would much rather be safe and explicit than have to
> > > debug yet another issue related to orphan section placement.
> > >
> > > Cc: stable@vger.kernel.org
> > > Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff=
;h=3Dadd44f8d5c5c05e08b11e033127a744d61c26aee
> > > Link: https://sourceware.org/git/?p=3Dbinutils-gdb.git;a=3Dcommitdiff=
;h=3D1de778ed23ce7492c523d5850c6c6dbb34152655
> > > Link: https://reviews.llvm.org/D79600
> > > Link: https://bugs.chromium.org/p/chromium/issues/detail?id=3D1084760
> > > Reported-by: Jian Cai <jiancai@google.com>
> > > Debugged-by: Luis Lozano <llozano@google.com>
> > > Suggested-by: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
> > > Tested-by: Luis Lozano <llozano@google.com>
> > > Tested-by: Manoj Gupta <manojgupta@google.com>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > > Changes V1 -> V2:
> > > * Add .text.unknown.*.  It's not strictly necessary for us yet, but I
> > >   really worry that it could become a problem for us. Either way, I'm
> > >   happy to drop for a V3, but I'm suggesting we not.
> > > * Beef up commit message.
> > > * Drop references to LLD; the LLVM change had nothing to do with LLD.
> > >   I've realized I have a Pavlovian-response to changes from F=C4=81ng=
-ru=C3=AC
> > >   that I associate with LLD.  I'm seeking professional help for my
> > >   ailment. Forgive me.
> > > * Add link to now public CrOS bug.
> > >
> > >  include/asm-generic/vmlinux.lds.h | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/=
vmlinux.lds.h
> > > index d7c7c7f36c4a..245c1af4c057 100644
> > > --- a/include/asm-generic/vmlinux.lds.h
> > > +++ b/include/asm-generic/vmlinux.lds.h
> > > @@ -560,7 +560,10 @@
> > >   */
> > >  #define TEXT_TEXT                                                   =
   \
> > >                 ALIGN_FUNCTION();                                    =
   \
> > > -               *(.text.hot TEXT_MAIN .text.fixup .text.unlikely)    =
   \
> > > +               *(.text.hot .text.hot.*)                             =
   \
> > > +               *(TEXT_MAIN .text.fixup)                             =
   \
> > > +               *(.text.unlikely .text.unlikely.*)                   =
   \
> > > +               *(.text.unknown .text.unknown.*)                     =
   \
> > >                 NOINSTR_TEXT                                         =
   \
> > >                 *(.text..refcount)                                   =
   \
> > >                 *(.ref.text)                                         =
   \
> > > --
> > > 2.27.0.111.gc72c7da667-goog
> > >

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202007020856.78DDE23F4A%40keescook.
