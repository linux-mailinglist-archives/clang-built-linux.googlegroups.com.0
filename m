Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDG2432QKGQEZZX6SCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id A15941CE4CB
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 21:52:45 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id p126sf11126944qke.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 12:52:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589226764; cv=pass;
        d=google.com; s=arc-20160816;
        b=G8gG4acFgU542M0GD7nbCunC6LQEEZ/Jl2ETCrpOexfbTTMqPMKdTb6gqGPTzijAvu
         aimKrWQHc15QbREc5zXm3IBBUfssIqda54LymMNmf8cqntXPMeRmnGzTrf1LmBahsQuX
         lOe8P9eM3cGoAVYZwff/vB/exSJEw9yE87nvX9ahnttaEoZ117PXbcOtRn5K0AGYQWpo
         /omCm2M0l40EXDHRsbKoLdCu3VuQd4lXeuA5lasFB5eubwDhJeyFJ5y/ZQd++NCxBH7w
         LdS76uer1x8Dn9ZxMCYvhfg0raehq4VqW8i/cLSs38xGVCL/lT6+OWzVoklWpVSkgVep
         1SLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9swUXHaMrRT6Jx53qBv48I25vRRlkuN/M3LXnmQRt8o=;
        b=uHs7vkTPoyNJZ4UQBm+rZdbAhX4p59sE3A8bgwloxlYMgnuw1bqeVwkAYwfYBp5qYw
         tK/EXuvtTbYvYxIixuICidv+x8hDZVPJjSpt3KN7G4rUktY0DefQqKtSeQ2PpHETgL5t
         bTlt5iO3G6Okq8wFsStPRpsvQtf2gf086yCClru6Fxd4QV/AijAYEMg6FBvngdGhdnpx
         Fe82wjZ7Xs1w7AeGOupfTU20Ky5Y57RzC/2vTuFXWji+VYyV+OczuDzK5RKo7l9/CCpx
         ledIXBewyYsuWx0ucm5hKIsH6yTMzSIEx8RSQ9Uvxd5tM3ULj7Mfag3v/yOfO73qVL90
         Dl+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="JCn5psV/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9swUXHaMrRT6Jx53qBv48I25vRRlkuN/M3LXnmQRt8o=;
        b=Vdr6B+paNAVtEgBP+CIZPgHxVAv6qUnTeaLDtsgBUQ4qD4PcOcXvPTktsvgbKeah3C
         Kt9RwqrUY2aDvEA4/1rnbfrW6X+aGXA4QmZWL/g8MXRduo9XKhL/lNFlR93R1DotMaHu
         ANyNGY2tKnpM76DSCWLroBlaD5jeKxNYVr8dHyeY2lCVvHt4g0SC6JdBt1WWa8l6fBn4
         u8TZkZ9Aerm1/7lRWmB6D7t2JNzLMdNFe+vUAqGbr0uvz1t5265OWd0j02HfyNo0liDh
         dTPBfkkjSnG85HSYIth0Rqo/Lu86Cxi5qANIpPZV+W8N7gp0yAB+M62mJZffD0f8sMr4
         /eIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9swUXHaMrRT6Jx53qBv48I25vRRlkuN/M3LXnmQRt8o=;
        b=qZdnt9/1pRz/WJ5P5glG5fij+7V+2YnZ/X7VijPTAQE89ffZ2zISzcK/BoODvPT3Ek
         pRtOrg+vTJWjzkcI3D4B2XnO0p7ONxa/4SngbH3E5xJmOawnqxhHqAd1LC1IxTHRqjWv
         2GcF0tG8SvsdubxCWhPy5YSwXIHSkgYlv83pE3RCV+75D/JBO7XBgWQr1laTT6cYK6VM
         txKdTKoNSQjCC8gRb7OESK9cf9K1GK2yNzt6RzvS3ldqMKDUwupHGtqqeRP0vfth9wbT
         M6wdz0KtmCLDmWPAyA1MjVqYcs2QHjIsQAXfhqtCR+MZRcZFibTRoFXu4Fo95UYLz+Tz
         YygQ==
X-Gm-Message-State: AOAM533N+2Njk5LWzngUO39k+RNNp0EnhJl02o5vWewEjMSpQptevL/G
	8ieFO8Ve3HTda0f91rW1SuM=
X-Google-Smtp-Source: ABdhPJwT2NSwV9F3TyZTCP5jYps0/O0vLPviEp2zxD/sIdVlEpVKiR9gf1t/rnUZkER8wfPdyxSksw==
X-Received: by 2002:ac8:4099:: with SMTP id p25mr1221817qtl.286.1589226764662;
        Mon, 11 May 2020 12:52:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:468d:: with SMTP id g13ls5065609qto.11.gmail; Mon, 11
 May 2020 12:52:44 -0700 (PDT)
X-Received: by 2002:ac8:2c78:: with SMTP id e53mr18927652qta.365.1589226764297;
        Mon, 11 May 2020 12:52:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589226764; cv=none;
        d=google.com; s=arc-20160816;
        b=BYPxeqPqaCTjs6N6BqrKf1Rr6kgoWSoovwckWpda5qJr5Ee7GEyksmGExjz5/QOjHY
         hYQ7gLO7cAki+1/dVBpQcdsUjuilo29Sg/PgKXt+HK0HQJRLFoWuuLHqkW4soDTc/+cu
         00iY0R+yvw7RT/H6zvkMb3NHzHgH3/evlaxwRDLLPGCrsiwpqkufXy4w3oQTbA0WsTcv
         LGP/kjxObDIbB+p+8XTng0U+p87CTiNOxpLq9Tdm1n6JyT7esa9Ipy6/gDUJNHIRx6bq
         mokLtvJmHGFW8rTQFyu3dBxDtAdzrAm4j5rT+irBIkLexpAmi3Sg+RTLo7fTLPN/TvMS
         HdDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4J+O5ij9f6iPCsIeld+kaqMUMJVlz/CC6sojBFpIW5A=;
        b=ENL2k5WqhW3a8Usx4eDvWvdl/XiesrZeolNd4iyczANcXhTurWXNoKVRmqfjZxZkL2
         W6oSdbvxSu69I8prK7YxwipVWnMVoXSET+YyGLJmwji/mD6h+le9KsXXo1Ec25O8+vys
         tuIkW8oQ/aL3oljxPBvhFf5IVSsTpIuCZUbMx+fLCWCsrYPe2Q6Zh48teoT7XejrFLar
         yIUke78vq5SkNzTnj6r68M4B1WqXYjjdUWI3XP8CXtlZ5kibSnWYimcqjWQ3qJieNdat
         g0JW+p4xHZtmBs1rm81j9J8cSyVppIk8qhQ88xi1VB3LSsaBI3nnW+8pXV3N5waVeNA9
         OXFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="JCn5psV/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id v73si458102qka.5.2020.05.11.12.52.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2020 12:52:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id x10so4367734plr.4
        for <clang-built-linux@googlegroups.com>; Mon, 11 May 2020 12:52:44 -0700 (PDT)
X-Received: by 2002:a17:90b:957:: with SMTP id dw23mr25045831pjb.101.1589226763110;
 Mon, 11 May 2020 12:52:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200504230309.237398-1-ndesaulniers@google.com>
 <CAKwvOdmspKUknbzDn9kY2jMgkFw=Ktvst0ZtwambDOfybqJGWw@mail.gmail.com>
 <CAHk-=wif=_ZomkWJAmQRCUAMHQ72V3NEQ-OteiPE56K7KoSjbQ@mail.gmail.com> <CAHk-=whhCBvjXtRiFM2JEZ4XyBmuPprvdo5tpPVBqUhkRszxiQ@mail.gmail.com>
In-Reply-To: <CAHk-=whhCBvjXtRiFM2JEZ4XyBmuPprvdo5tpPVBqUhkRszxiQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 11 May 2020 12:52:31 -0700
Message-ID: <CAKwvOdn06jCe_FhKiF_wSQavytVVD++RXD-bHbMdqnEA-wO-9w@mail.gmail.com>
Subject: Re: [PATCH] x86: support i386 with Clang
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	David Woodhouse <dwmw2@infradead.org>, Arnd Bergmann <arnd@arndb.de>, Dmitry Golovin <dima@golovin.in>, 
	Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="JCn5psV/";       spf=pass
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

On Mon, May 11, 2020 at 11:24 AM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Mon, May 11, 2020 at 11:12 AM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > Would using "__builtin_choose_expr()" be able to avoid this whole issue?
>
> We actually have a fair amount of "pick expression based on size", so
> with a few helper macros we could make the code look better than the
> case statements too.
>
> Something (ENTIRELY UNTESTED!) like the attached patch, perhaps?
>
> NOTE! I only converted one single use to that "pick_size_xyz()" model.
> If this actually works for clang too, we could do the others.
>
> I guess I should just test it, since I have that clang tree.

Interesting approach.  Researching __builtin_choose_expr, it looks
like it was cited as prior art for C11's _Generic keyword.
http://www.open-std.org/jtc1/sc22/wg14/www/docs/n1404.htm

I'm kind of tempted now to play with _Generic and see if that makes a
difference, though I'm not hopeful.  Without checking, I don't know if
that will produce warnings with `-std=gnu89`.

...

I'm playing around with _Generic now to see if that's a possible
solution, but it looks like it can't be used for selecting inline asm
constraint strings.  But maybe there's another way to use _Generic
here.  TODO: more testing.

I don't quite understand the use of GNU C statement expressions in
pick_type_statement, though I'm guessing the return value is important
somewhere.  Maybe just looking at the preprocessed source would make
it clearer.

> "why do we cast to unsigned long and then to char,
> when we just checked that the size of the type is 1"?

Deja vu.  I don't remember who I discussed that with, maybe Arnd, but
that was something else I had asked at some point.  I must have
forgotten to look into it more before sending the patch.  Can likely
drop that at least.

--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn06jCe_FhKiF_wSQavytVVD%2B%2BRXD-bHbMdqnEA-wO-9w%40mail.gmail.com.
