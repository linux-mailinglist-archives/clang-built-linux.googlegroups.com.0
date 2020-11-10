Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIVNVT6QKGQESORBHPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F342AE36B
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 23:39:31 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id e6sf85292otk.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 14:39:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605047970; cv=pass;
        d=google.com; s=arc-20160816;
        b=qr71aaM/V58KQqhoCOfWjyAhNkG5tkpsz/zB5sstrmbgxhCGqfCENelORknCdg3Vnf
         PI5R9BCq5eBoTh+K4GkfjKDBvcoOIlOBGs6C6OR0FtGJM+RifRlQ8RJ1Ht9IjTAiY4iU
         FSnPpCgjQNRXHD+uTNKnCM259OprVaBbAuj9rFErlmGE/qIvoh+DppSuGN99bvNnM2YT
         dLr4ZPVZmqMzCoRIHJivFI4qWEXI27Vfu/lHXoiGP9Ev5WspZkMObdiKqpH0o/3IUIcI
         r6pG5EIMMZtZbB9gAO5oprzse8EJjlHyCpxkGRRayxe1gND7aE/PyO8eGTk8tJuvax/h
         tkeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pWnrC8aSfv8iWoQP1ZDZMWin+q9wI/ohl2stgIs3feU=;
        b=RBMfvxrVw6tec1CgL2BJ2Liyzn8MP5rvXv39YhgP0yOP4NjkVvdVlBGOk9t6NFleyY
         2n37K3X2vplq3g1pYLhzF9RCr7U0dKEUepXVfsOLa13C2UZBhI0GZhhrZ5z8AtOcqhpa
         1Hx75Fho42zr38TvZcqQ7hc1vk+RiJdNtgdGMwEXXo8y9i4PpqjDe3zpxJj2i8yiFd+o
         jv1nXFJDCNO5Hj5UlxruQFkbCV66vpysAa1H/Hu7igqNE7uhkcTDvDrrtyyttUGR+DtO
         thq3VxMgE2/UVWJbLyZQWr2sQeAG28QAZ0dojXWwmyrlA6dESUh+BXj7UYinWekZavmM
         xuUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PDaTbORq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pWnrC8aSfv8iWoQP1ZDZMWin+q9wI/ohl2stgIs3feU=;
        b=mZ5DCy2Hfmbh9R9bF407ByNTOwbPQf98QiqL0q1tAi8QLKycJnsuVSctoGKRyPh2oe
         1a/7qfTcn5xXZb+NTsHOrfxPc3iRInl+sGRXPoeBchFNeHdEUai4xYxo4jMDwX9CjAwU
         0AI60X6uUbXsMhKJ1tGTnpEgUPfIypZ7XmhEvhJBGm+tk2wcQMApoko6+yLISp2rT6kE
         H3DMIg+MgNBrODZxfM+K4fYOIgS5RXGzMdchmr1BKGTy/O4IQP9eBkwg+Dts6+KSeNjm
         QvOyHACVb/sF8u//9iWNkQ1O5wPmSr50glsUQ4v7BrPeJx6PA5rIuf+j5dZaTh72TORM
         YsUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pWnrC8aSfv8iWoQP1ZDZMWin+q9wI/ohl2stgIs3feU=;
        b=Vvil4RAvhGNEO7ZBLJt3LUpZxNk1rCK/H3qcL2uc8rqqh1VxDP/Tp9OhKkXXYKBkBA
         IbC2lUVBkCrnl3YxoEzgSUnKVWZ45TKh2cu42hCojqwTAVnNHkpa1ZXIPTMnqFK4l+xb
         SePD3CJ9k4kJJHByVrpt4+C3H6P/oVgDic+mB0Ah+WO3SznKKnU1aU9P0wXMCOlDvu8i
         olYc40hhBLAsVYZuvVWc0a0CCuIjRANRN7YmR3GU1WJY/BJy4bQ8u3IgorzJM5GIGyKO
         e+UP4b9h+LDfT7wkmGnnyBpdmgny6nEW2kAM2DazSHrBQbMomHJnctnrX8g6fsMoErPX
         X/5A==
X-Gm-Message-State: AOAM532FVMvc3jrs0lnCsEpiotQ0eZS4HolX2eRA/imtch0q4242fCjF
	3EMyojmtzHHiR+wXiUCBv84=
X-Google-Smtp-Source: ABdhPJyur25w9Q01OJ9AVbKMGo2y61kY4sI82JX+nxWTwZSrY3Ldo8KjWdBaLZHLZW06TnJ+99IDAw==
X-Received: by 2002:aca:1803:: with SMTP id h3mr236834oih.148.1605047970461;
        Tue, 10 Nov 2020 14:39:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:bb2:: with SMTP id 47ls3443170oth.9.gmail; Tue, 10 Nov
 2020 14:39:30 -0800 (PST)
X-Received: by 2002:a9d:65c7:: with SMTP id z7mr13926724oth.25.1605047970108;
        Tue, 10 Nov 2020 14:39:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605047970; cv=none;
        d=google.com; s=arc-20160816;
        b=k//pbrmMQESbPhv9kfxc7WTTAPaIopf1ppwhaZ6HLTyXQMvqC5RL2Mfxa1Tajc1ZIk
         CIy5+QqCvNbIRqZCqmUC5J3Q4JJymdRxmq5a1poy/IJgbGKxOUpVEdPW0VOpo9VSnuVd
         QaWu/NKIVFMZIprYoGYW/EW6cOCa3hOPt69iLglZA64reB5kjGWsMOL173G2xuJLcpOe
         rigMJj+Ymdwr/QwvmqbOk1VTVRQKzwb+aSuawaOopdxSONHYnYN5MlDNZ73xfOCLOn/1
         Ir1BiQzujbuaH5GJSS6HmdJg3IoDxTtsJx6ZRmiq9M8fceUTEcSzUiYHqXVXJxeRWIph
         5gWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x01X3oGlO2FWJs/nEcm6l2z8oosZN74c8doXPDQlDH8=;
        b=TidyIxBgvzduRHPSArWuCjou//5Ko3tulnZP/dzsudLDFqOxZwKbCZ6t1sXeZOOTe+
         g6bv5EYPry1z7OVkNXsQlfAW6FEGQAwusLXTNR8Bhz368+giNbYoP7ZaKWnXR4hJqUvC
         CTROFlR0/KTqxagmxovHQrcOnIOdDXYE0DsRbiSUN3NWpUnjL1eRWD7fWBxLvTveBYVn
         Fh+pudAaZjM0ZHQmHD7g08DvJwB7/MO5sCocZKKQaEfwJqvjlDhqItbBGnNFT9jJ3Z0q
         /hcM73LaKtwV16HhQk0voMSrZJwF6D5ZuTezSDBpl/lO+V1mhsm7BijGLRoIz04WkHrB
         TwrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PDaTbORq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id r6si30940oth.4.2020.11.10.14.39.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 14:39:30 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id a18so217329pfl.3
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 14:39:30 -0800 (PST)
X-Received: by 2002:a62:5e06:0:b029:164:a9ca:b07e with SMTP id
 s6-20020a625e060000b0290164a9cab07emr14974079pfb.36.1605047969331; Tue, 10
 Nov 2020 14:39:29 -0800 (PST)
MIME-Version: 1.0
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com> <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com> <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
 <871rh2i9xg.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
 <CAKwvOdkm3u83TQDBB-fC0TwKZCFXGh5sAfahKXxA+mnzgDid_w@mail.gmail.com>
 <20201110221511.GA1373528@rani.riverdale.lan> <CAKwvOd=NQ==umC+N_Sgji5HCCFTRARh4jWiB3DaBfV6jDd5cRg@mail.gmail.com>
In-Reply-To: <CAKwvOd=NQ==umC+N_Sgji5HCCFTRARh4jWiB3DaBfV6jDd5cRg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 10 Nov 2020 14:39:18 -0800
Message-ID: <CAKwvOdmsCY8Hb6t8t9jW5DKCZKbja27bGufO=tw3+-UuTTFBOQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Adrian Ratiu <adrian.ratiu@collabora.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	LKML <linux-kernel@vger.kernel.org>, Collabora Kernel ML <kernel@collabora.com>, 
	Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PDaTbORq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
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

On Tue, Nov 10, 2020 at 2:36 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Tue, Nov 10, 2020 at 2:15 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Nov 10, 2020 at 01:41:17PM -0800, Nick Desaulniers wrote:
> > > On Mon, Nov 9, 2020 at 11:51 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
> > > >
> > > > On Fri, 06 Nov 2020, Nick Desaulniers <ndesaulniers@google.com>
> > > > wrote:
> > > > > +#pragma clang loop vectorize(enable)
> > > > >         do {
> > > > >                 p1[0] ^= p2[0] ^ p3[0] ^ p4[0] ^ p5[0]; p1[1] ^=
> > > > >                 p2[1] ^ p3[1] ^ p4[1] ^ p5[1];
> > > > > ``` seems to generate the vectorized code.
> > > > >
> > > > > Why don't we find a way to make those pragma's more toolchain
> > > > > portable, rather than open coding them like I have above rather
> > > > > than this series?
> > > >
> > > > Hi again Nick,
> > > >
> > > > How did you verify the above pragmas generate correct vectorized
> > > > code?  Have you tested this specific use case?
> > >
> > > I read the disassembly before and after my suggested use of pragmas;
> > > look for vld/vstr.  You can also add -Rpass-missed=loop-vectorize to
> > > CFLAGS_xor-neon.o in arch/arm/lib/Makefile and rebuild
> > > arch/arm/lib/xor-neon.o with CONFIG_BTRFS enabled.
> > >
> >
> > https://godbolt.org/z/1oo9M6
> >
> > With the __restrict__ keywords added, clang seems to vectorize the loop,
> > but still reports that vectorization wasn't beneficial -- any idea
> > what's going on?

Anyways, it's not safe to make that change in the kernel unless you
can guarantee that callers of these routines do not alias or overlap.

>
> I suspect that loop-vectorize is a higher level pass that relies on
> slp-vectorizer for the transform.
>
> $ clang -O2 --target=arm-linux-gnueabi -S -o - foo.c -mfpu=neon -mllvm
> -print-after-all
> ...
> *** IR Dump After SLP Vectorizer ***
> (bunch of <4 x i32> types)
>
> If you add -Rpass-missed=slp-vectorizer, observe that the existing
> warnings from -Rpass-missed=loop-vectorize disappear; I suspect
> loop-vectorize will print a "remark" if passes it calls did not, but
> returned some for of error code.
>
> -Rpass=slp-vectorizer shows that it vectorizes two sequences of the
> loop, and warns that some third portion (that's
> non-immediately-obvious to me) was non beneficial.
>
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmsCY8Hb6t8t9jW5DKCZKbja27bGufO%3Dtw3%2B-UuTTFBOQ%40mail.gmail.com.
