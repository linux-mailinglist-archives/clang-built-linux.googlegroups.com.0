Return-Path: <clang-built-linux+bncBDEPT3NHSUCBBQXS5WBQMGQEX73MFYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B5D3632C6
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Apr 2021 02:11:47 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id t16-20020a17090a0d10b029014e4569c8b6sf12908004pja.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 17:11:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618704706; cv=pass;
        d=google.com; s=arc-20160816;
        b=lxPwRuxmTtmtEU0MVrBR44UyLtamY0ZGygefeHFgeSy/sdLJPbQURbIyISOqy+FiT0
         zUyBa3P3whWFVgxAu3Nev7M10xqf6bw2V6sRx1A8ax0s/U+8WFdV8xw8U/A+Oxh1WkjQ
         531esCyIdlS2PdAqwE2DLgagy7QUw0Qe4CNdXPWet3u2JpDIiPierMdDrKvFP4v/jRuA
         3PURgX292IhQmpr+VoQRSa4tVZ8/pyzdsvo9TeWBrWgre7erHoNp+W3aRmTZp2Bts/HZ
         R1UumryfrE7wDpD12Crrt1odmQxufHXC+DfkaP15lg3Sv7cJErM+kpLryxpAIKWqJpDm
         YS2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=kxywBAwFBfEXfEzz9LuGdioMQyhfDwEG3flblILhEbs=;
        b=BvlxP24u9jYt3vD/iOmxdK3TkFtWTEi/qBxBxnTGz3cdXJSBftmyFF0A/c8UYCUHGS
         lVyyZFphKZgPV68u/h4iQznL2xQMlvyavQBU7Ws0sJ5kUN12mCZjMD9UIGRMw/vCj+JJ
         Bd5pa33dkuPyg02Zp1WeRBHV5KtOYQAiUin0WNNdNyl2XIqvohOgVL9tMhSuiPmHt6ln
         yZkcNqagG5X5SgXCr02eHe3u0ktz3eSgXv6kQFjulXikx3Mj7/Vq3hR6wuBbEXvUQYZ4
         VuPV9AMmDTyeK/F+mvslYVuxxL3qFX1ZU2dka1xXFerYdfQfdOpfQkXL2BCvSNxMS6a8
         +FBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HC84tZLf;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kxywBAwFBfEXfEzz9LuGdioMQyhfDwEG3flblILhEbs=;
        b=HqEatDHSh06MGEZW9rkSCgAff2w2RWCXMj+0mU7cENbD32SUG3oPq+5i8pieyW6klU
         745QOxCAIAAmvbzyDvMyzx0M87Cq+qzRiwWQElWOJ4AknrhRuXzp6+RMbOhFfVEZ2XoA
         iMHFwIdDqUuNl0tF8Hm9vTtqetsPBr3Ms/9k65sBoROQcKisna2c7FGcVtcK2zlmJFbF
         YcPxZEBBC6zh5cDxSebrY7rZKzgolei6Y2zwgJ0bbvUcrZFrCMGtsY4PdPwNYHSBeVdu
         J25SFmHtZ/z6/FhGqnOajAI0a6Yb773NcwLQW0/YIZZLnYAIBGYOogTI8P+Ngq234fEO
         OpXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kxywBAwFBfEXfEzz9LuGdioMQyhfDwEG3flblILhEbs=;
        b=pMAzdeyt2fHoIKNfo2Y7EQTqSnWcidzFXzxHQM7Po5LgbdO4hDco59b+150NYgF1xU
         EdHJid+sqHFGah141w7KwDbVn5oYcT0XFWZdvHxXE5C4sanvI+7M78zdJQeO9YP1J+4a
         xwq0wA2aiiJci+lPQxI1P9B68WoBvj2GoZjI8X94xHLbFwf3K2JFs22yn2phkCWDI8ct
         vQsfLxFrHtBcq1AX68RoOCynvwXizK/l4saA1C2N/Io4BRkOE6p7IK/ZU3mYG2rClX8U
         HywlxlpKR0AVdRm5wE05Z1lMZwO6JBE8sC22RqEro1Zjqv6Bs2Q+c6Epyli0Pqj3eLTE
         imiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533oHvhRkdxuzCG6W/DTD8VNfLUGx6EfnmNkNaEHgVFQba0TYSt9
	rR1etaUjYOKvBGhD/un3P/w=
X-Google-Smtp-Source: ABdhPJyoMQacOA2zKW/drivX1JRet4ygPIWA10edMUnrmZMPhfzSrra0uu/4g3jhVeM3OxXJ1blCZQ==
X-Received: by 2002:a05:6a00:248f:b029:244:7ae0:ba2c with SMTP id c15-20020a056a00248fb02902447ae0ba2cmr13983148pfv.49.1618704706509;
        Sat, 17 Apr 2021 17:11:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b48:: with SMTP id a8ls4977060pgl.10.gmail; Sat, 17 Apr
 2021 17:11:46 -0700 (PDT)
X-Received: by 2002:a63:f303:: with SMTP id l3mr5341627pgh.263.1618704706021;
        Sat, 17 Apr 2021 17:11:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618704706; cv=none;
        d=google.com; s=arc-20160816;
        b=dC4tq1G93a0DukDrnBytVPXyt4Ch//TuylIYueo1TfvX7YfZQzfOhD53sTcsnIJQJ3
         NLYK3hvFC9QBi2Nxqd1bBhmX8NvRhkbj44Gln6cjGfXZ1qAmJRFauXRORmEIpAZVZTnB
         zqO9sE1u/2EOlPHIus9QdvRHMy71KXFcaOo7AfHbNXDVRy99QoUjUH5ECIrjhJGtndwZ
         DJNFxpcGABka4VeVenhESr9tIB39ha4fIgnwje1ApOS9CdfS7QVx2725/+lfGP9DKQny
         RS4SOCzHrZ8CV6nxry51n3NgFUslt8pvokhOwgewOaBOvB5UKbG3xrQ9uRmMm2KcUOep
         qFPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZpSeBWISdBLqwWhVZ53bkGNt/G142aEOTmcdHu1x0GA=;
        b=Cy5DolhGANPEJEdxwfX898gfe4DpZvXFlxBX0jpKHpUkyc/gh05w6MeAiJ6EEOfNXr
         1t6yFCJ/nhiFAlrkfzhReLBFD0EUVFbJpvwiRUBCRc3obGUYqsW4R2FDY3DGJZRoywp7
         VKvLHHs1jvmVcepEDYqhXO8Wcf086yUUJjiuUs5TEkZ+jsMgJeVUDSGzAu0GX22LqL69
         BKL68t/1NXZtHseE3pURUqdmAGNDad3eKReOo9oxvWxbAKqA+RHVJ7326+l9vD1Gv6wN
         IGWHQvMIrcDCrcjVfBzAYr4NTpZKllW5bZ1jwgzPPV845jdtfmTq7HdmH+GEOtJF/NBy
         nqRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HC84tZLf;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p18si697137pgi.3.2021.04.17.17.11.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Apr 2021 17:11:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AF4ED6113D
	for <clang-built-linux@googlegroups.com>; Sun, 18 Apr 2021 00:11:45 +0000 (UTC)
Received: by mail-ej1-f54.google.com with SMTP id v6so46168094ejo.6
        for <clang-built-linux@googlegroups.com>; Sat, 17 Apr 2021 17:11:45 -0700 (PDT)
X-Received: by 2002:a17:906:b353:: with SMTP id cd19mr15049555ejb.253.1618704704291;
 Sat, 17 Apr 2021 17:11:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com> <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic> <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
 <202104161519.1D37B6D26@keescook> <CALCETrV6WYx7dt56aCuUYsrrFya==zYR+p-YZnaATptnaO7w2A@mail.gmail.com>
 <202104161601.CFB2CCF84F@keescook> <CALCETrWUS52tzLNiWL5sAVVB5-ko1EW73-TEiO=eZ5jF_QyGPQ@mail.gmail.com>
 <877dl0sc2m.ffs@nanos.tec.linutronix.de>
In-Reply-To: <877dl0sc2m.ffs@nanos.tec.linutronix.de>
From: Andy Lutomirski <luto@kernel.org>
Date: Sat, 17 Apr 2021 17:11:32 -0700
X-Gmail-Original-Message-ID: <CALCETrVEhL9N_DEM8=rbAzp8Nb2pDitRCZGRAVcE288MBrJ4ug@mail.gmail.com>
Message-ID: <CALCETrVEhL9N_DEM8=rbAzp8Nb2pDitRCZGRAVcE288MBrJ4ug@mail.gmail.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>, Kees Cook <keescook@chromium.org>, 
	David Laight <David.Laight@aculab.com>, Borislav Petkov <bp@alien8.de>, 
	Sami Tolvanen <samitolvanen@google.com>, X86 ML <x86@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-hardening@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: luto@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HC84tZLf;       spf=pass
 (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=luto@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Sat, Apr 17, 2021 at 4:53 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Sat, Apr 17 2021 at 16:19, Andy Lutomirski wrote:
> > On Fri, Apr 16, 2021 at 4:40 PM Kees Cook <keescook@chromium.org> wrote:
> >> Okay, you're saying you want __builtin_gimme_body_p() to be a constant
> >> expression for the compiler, not inline asm?
> >
> > Yes.
> >
> > I admit that, in the trivial case where the asm code is *not* a
> > C-ABI-compliant function, giving a type that doesn't fool the compiler
> > into thinking that it might be is probably the best fix.  Maybe we
> > should standardize something, e.g.:
> >
> > struct raw_symbol;  /* not defined anywhere */
> > #define DECLARE_RAW_SYMBOL(x) struct raw_symbol x[]
> >
> > and then we write this:
> >
> > DECLARE_RAW_SYMBOL(entry_SYSCALL_64);
> >
> > wrmsrl(..., (unsigned long)entry_SYSCALL_64);
> >
> > It would be a bit nifty if we didn't need a forward declaration, but
> > I'm not immediately seeing a way to do this without hacks that we'll
> > probably regret;
> >
> > But this doesn't help the case in which the symbol is an actual
> > C-callable function and we want to be able to call it, too.
>
> The right way to solve this is that the compiler provides a builtin
>
>  function_nocfi() +/- the naming bikeshed
>
> which works for
>
>       foo = function_nocfi(bar);

I agree in general.  But right now, we have, in asm/proto.h:

void entry_SYSCALL_64(void);

and that's pure nonsense.  Depending on your point of view,
entry_SYSCALL_64 is a symbol that resolves to an integer or it's an
array of bytes containing instructions, but it is most definitely not
a function void (void).  So, regardless of any CFI stuff, I propose
that we standardize our handling of prototypes of symbols that are
opaque to the C compiler.  Here are a couple of choices:

Easy one:

extern u8 entry_SYSCALL_64[];

Slightly more complicated:

struct opaque_symbol;
extern struct opaque_symbol entry_SYSCALL_64;

The opaque_symbol variant avoids any possible confusion over the weird
status of arrays in C, and it's hard to misuse, since struct
opaque_symbol is an incomplete type.

--Andy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALCETrVEhL9N_DEM8%3DrbAzp8Nb2pDitRCZGRAVcE288MBrJ4ug%40mail.gmail.com.
