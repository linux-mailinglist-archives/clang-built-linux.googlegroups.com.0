Return-Path: <clang-built-linux+bncBDYJPJO25UGBBU5X7XUQKGQEPVG7VBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CCD79A46
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 22:49:25 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id d14sf26998996vka.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 13:49:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564433364; cv=pass;
        d=google.com; s=arc-20160816;
        b=WIQPWhgOs/B+aAi8+T5lnH/CkcwVIInRbHIg9GJuU31cvDmXM0OuMKVMuYCMvp01iq
         szVOKeXjX776NCdj+YRNjSQTQaHMy0QMWtTgS8Clada0UBg6c/EwMJyezgirraj4VfAe
         bzFzklonuOzLrVkgykRlq1bAO2qa6+JDNRSUBoZCK+y6zGanEgMUDCt+PvtFmKGfxG3d
         YBL371IdYxEjtBmezfzpvyDG2T6JBeMhuqr9Wj3OHRFue12bv58hmYcIdeCHJ8AN1qm+
         vYWFwvOUgDIGDWbQcvcAOitImgg146vJ9IlWe0vuzuMIuX4oznvZ31wNXaTB3EhUnQH8
         X+RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=brji1dMxJFqumm9Wi8/zkmMPlclOGhpcJxcWyA3RvXs=;
        b=054MVZ7eJYuIDHiI4fLnftNbDh9lXQTB1/1x1oK0NiBBinf5SgRl8t20h9842scm5j
         eQ+pLK8yuWHOfGcv+/h2k5xqBbcXv/eShF03dM13lJiZmIDFh8s8cGFhcyBOps2HRigt
         lj3wfR2ro1S0lN31A8PaWnXlryeOiWrL5OHf0Uz4xkXBFPGFT4bYYgiG5Vowttbow0Rd
         qmXGnDM6OCnrNCtPTHMqMZE7GLfr8MecrXgUqBCBft7fHlruO+q1idBttlXdzox3vtpb
         lKTllLNQu44lajL4zJUf8iXlmw2CfuDTCzR5iqBGDhiRC4Fy5cb/09O76H9hEQFVX9t3
         5KVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CWrSj4PA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=brji1dMxJFqumm9Wi8/zkmMPlclOGhpcJxcWyA3RvXs=;
        b=G1e/qaSQ9lym0nQhOn4oZAzhEvQpL1QH9v+KY3Nb4BMRPiiZ+muiZd9CN+h5F8JV1n
         PsF7XFxoDqbnfzoleDKyOj0QzaiqbZj8xSv+wbY/zaUkpcD5pJFtm1MTnB9VLq4zFbAG
         KsTxYi5JlD57G6wJUTphZVx8ErTDUM9sZYirUP+V0sdRQbpBI5wjqgnaOanEKYk1DMee
         k7e5TYNZestxqtDCStJQQCwIPXj4GvbiOU7Ht6og/1+we5IjGau+TZ7eiwi0eSIlOIcj
         mfTCu32TUoM6QQDSNdMMFkY+P86nhM5VNQVDoQ6EJquNAIY3xBoP+7d/ePR9eBvm9umD
         nxfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=brji1dMxJFqumm9Wi8/zkmMPlclOGhpcJxcWyA3RvXs=;
        b=hbwsExozGdl6nLT7cXaH2skFljN2bxjI7KogSAEwKJgNo/MFPV4rdNSUjZlzLurUSE
         dtSG8jcbvXm3Vq50iAQQg3H5vNouXNZb7ZUS2a5qucZAnQWJmoSoJsqufhJA4dZ62mw4
         aDaKSBMsYFnyLnnZqfqGhvKyZGJNpqq/azFraIBmc2szICMH6poYP6SaIcuGeuGRKOnj
         3LiL3iMxWKP4E78mDBFMYJAkJWZyh8cDJxV6fa+Z4Hpp58Klf/8WpB/HJum2rOv1wS6X
         w6PQLSVQcMTPw3SHrGKLnb+uKUxv0J+tCeatXksh/4xVKALDRm+Ee9M5d5TlDZIGXUxi
         YBxA==
X-Gm-Message-State: APjAAAUCVOm3DEcnP/djnzAXFSSyNXViLt5BF4bsm/cZDwuknRLlkKve
	clHk/njJgGVXEsc4G0mUfdk=
X-Google-Smtp-Source: APXvYqwQaySz7EHJ6LMSLR9fp/NmaLR43bq/NfMCHguRWzzk1Hq9HST3wT//4YQL10I+JLFyADn2/w==
X-Received: by 2002:a67:7cd0:: with SMTP id x199mr71637954vsc.233.1564433363975;
        Mon, 29 Jul 2019 13:49:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:8bc3:: with SMTP id n186ls8062860vsd.12.gmail; Mon, 29
 Jul 2019 13:49:23 -0700 (PDT)
X-Received: by 2002:a67:7d83:: with SMTP id y125mr54527618vsc.126.1564433363743;
        Mon, 29 Jul 2019 13:49:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564433363; cv=none;
        d=google.com; s=arc-20160816;
        b=sWlmGQPjycDj/bOS6coldiq7oA4ySe1gP9vIxwPXHe54kjE9VNREM2tNJ6+7Nm9LNn
         CNdVe3yEvAb/TVQhA8MYa9IH/c3CDCisg/OngERAsN+6IkijE+QZ1eOa31Z2rEvg9hrH
         VZgL5RMsoV6di5ctgLai9L8eaPavxVs1vw4rDEMapHi1TFlr/nwN12dvt8zu1mPy8Nmh
         /D20ZrQ5CpMzI96LX3o5BAs77+7o2QnzPSfc4DzQvT7Vv9WqmbZQUKzambHdwpoAq4q7
         qlRhbhozAUXBL6d7DnRP9n7qP7RKNXyuq06Q6ihhgG0ISTzwrxR5+ylnBuRPhjuztdS+
         3nKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BeAeQDMMo4FgxNSctdMcxvraGIHZjszW+IJTyoPT1RE=;
        b=zSUUsy85Yr83Bble+q3uNUQt6x3fEgXrLqhbQVyMOz4o6ZGHPWkfiToG1krCx7sxzT
         XTNx4e5DueSzmcrquPTqXA4RqPhWdvCtYVWsqj2nMqt66Mpa2ezrYcmcVZDILieUOMIX
         1IIf8CtbiQJ66slumk0v8nFC1UEoPg/By1axyYLStIRnVgGHQP8ygS/vvigqmba4K/00
         coDtzCnWwQs1sxqCHGQcTEvP6MN00tfr8fWLLQeuTlDPKHgIJcnDV83h7P792TG7TGXM
         Jp3rI43pMrewae/UUq55jYfwObq5cQ9/lbztkQDAuPPg93Uo3/BTfbkpV7uti/NNHBFP
         J0FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CWrSj4PA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id u189si4197087vkb.2.2019.07.29.13.49.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 13:49:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id y8so27974046plr.12
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 13:49:23 -0700 (PDT)
X-Received: by 2002:a17:902:e703:: with SMTP id co3mr14760295plb.119.1564433362401;
 Mon, 29 Jul 2019 13:49:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190729202542.205309-1-ndesaulniers@google.com>
 <20190729203246.GA117371@archlinux-threadripper> <CAKwvOdm7GRBWYhPy4Ni2jbsXJp8gDF-AqaAxeLbZ03+LvHxADQ@mail.gmail.com>
 <20190729204755.GA118622@archlinux-threadripper>
In-Reply-To: <20190729204755.GA118622@archlinux-threadripper>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jul 2019 13:49:11 -0700
Message-ID: <CAKwvOdk13rU=Fyb0BUFCL4ZYATxTNS3YG52ziPcqixfg4r7=gQ@mail.gmail.com>
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	Segher Boessenkool <segher@kernel.crashing.org>, Arnd Bergmann <arnd@arndb.de>, 
	kbuild test robot <lkp@intel.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CWrSj4PA;       spf=pass
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

On Mon, Jul 29, 2019 at 1:47 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Jul 29, 2019 at 01:45:35PM -0700, Nick Desaulniers wrote:
> > On Mon, Jul 29, 2019 at 1:32 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > On Mon, Jul 29, 2019 at 01:25:41PM -0700, Nick Desaulniers wrote:
> > > > But I'm not sure how the inlined code generated would be affected.
> > >
> > > For the record:
> > >
> > > https://godbolt.org/z/z57VU7
> > >
> > > This seems consistent with what Michael found so I don't think a revert
> > > is entirely unreasonable.
> >
> > Thanks for debugging/reporting/testing and the Godbolt link which
> > clearly shows that the codegen for out of line versions is no
> > different.  The case I can't comment on is what happens when those
> > `static inline` functions get inlined (maybe the original patch
> > improves those cases?).
> > --
> > Thanks,
> > ~Nick Desaulniers
>
> I'll try to build with various versions of GCC and compare the
> disassembly of the one problematic location that I found and see
> what it looks like.

Also, guess I should have included the tag:
Fixes: 6c5875843b87 ("powerpc: slightly improve cache helpers")
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk13rU%3DFyb0BUFCL4ZYATxTNS3YG52ziPcqixfg4r7%3DgQ%40mail.gmail.com.
