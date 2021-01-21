Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBU6TU2AAMGQE2OEPBAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 307362FF007
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:20:38 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id l12sf979714otq.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 08:20:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611246036; cv=pass;
        d=google.com; s=arc-20160816;
        b=dO3yRswfC5P4tRW6QSv4VSs1LL7Bb/x5guIBc3zDfCJ3AfmjOEPXvXOV32nj3Gk4wf
         h2WCiodUVj0Wxx1iekx0AS3DIjeNEyLW0wZzDKwM1XGgjMcb5Cn0dTEk98KieSk8VP2V
         10Twf7C7MN2mTdNUUWbANhWYclMhHKblIT+71bdA6z6vq2NSArBEovHAUWZ5RICUADU1
         PrJtAzavAyf8fENUG4IcIbXTjP9dPGPnzGWpe7WA0MG7Uxrggy4hB4t2LxCdc5jMV5Td
         FKhVCg/CI4xPc7A+0wrwzHMmxl9Nfx+MzEycJ0UBXB8TWGM392A4rrEvH3G7+O1XtlqH
         seDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=xq2K6rAaGNpfyOWBH3WdULWYaC1UGpjdk93p0voERxo=;
        b=rPLHD3lSeuLW0+Y0mGP6kxZSxBfq/bMY+L8Sk97CGIMB9OhWZaVPt9IHUiV6NjkhZT
         HLPaT61SN3Kj2Izh5iZnlZRP0PnrDqg9wspfYgw8p7PzEJYcuF2Tx8MUTIxCU6iVESVb
         ITmtyjjFii+4O9jcbM25vGBAizW2R97cuIgaZVYrMZqYFaSU4gj2Mwaq7YftgXeofr7p
         0Mub8oizvtnNq55CXf+l2Pg2PsTTcV56NahCAYXHcuJJh+8HOI4c+nawQA6Lp0+g25d0
         wVZ8wS8t0LByEh8NKadvSarwGRVfv7UxrhYvOpzz1EDmg/bV+Oo5VsR9olFAWokg4KTP
         ivpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K+i9De1+;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xq2K6rAaGNpfyOWBH3WdULWYaC1UGpjdk93p0voERxo=;
        b=tgEIl1duu+qlsYiEsZRgwBYshTb353cZdmrP3uBBlUom2PQVzgoIh+PMv8tBuWIDjS
         YI+Wg68HAUspKgP+sgT1lChv76LYnDmnwOvUlwFL88/6YRUZYSitQBziULS99rYul4Ei
         aCcT3wdZBeoaFl85mQ0Zdagbri3J6vMddaLvdnFIYsBSNHgnFzEiNm3RsAHW+kISsAU8
         ZumxIX9JPjIr8HjDCou+y7NVmQ+9jKFlcHEjuxaLbTIwxflSR4QfdD6QMgg0i63wjQQr
         25cvlcDrySCe9M+fR2xOylM8FA2sVk3wSgZeH6ga8U6dMoFvEzIodXBiyR3e/vuVQkDs
         jbLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xq2K6rAaGNpfyOWBH3WdULWYaC1UGpjdk93p0voERxo=;
        b=ohP4lIMlorup6AwDh8OTTnrMkyaptur1UtcSDYHtpnywOqJDFAwlR3Yef6XBAEm1Xc
         NxpcXDPk5O9YIPGOdB9UfBct8PEZv+1brg59APZ4idS1UeqSc7q8Gx89ThgH5v19jURA
         7eYF8cPT3S0vJ6LTeQW+hyjekyMmG90UYfDwjMqhmtZuZFUiC2qupUoDd2xtKP1ZDcWe
         o5XMJN3sbP5BXNNWbchiAhMYrsTs5upfMtTJw+p1QXYxgMpLmGB/GNS9fSrOe0hLbw4/
         ektyDZTu3gBkKZ5l0JeD1Efm5wVp2S8TCFytJMwZMyKDzYDLmNcg/vLja7LWH0/8rOmJ
         1biQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xq2K6rAaGNpfyOWBH3WdULWYaC1UGpjdk93p0voERxo=;
        b=JN+MnZDYAnytXz8iUiJfrGkpv8Cp2c7AjxFxPFJMvUYW4cTbTHxTYN/hDVjyc9pDF2
         QltRy3gw7YbP2wV7p1YxEaDRXLsKSoedLcAL1ArHuIXs5bsjZtxbPOu+PP4wL1URhe1V
         7HWn1Q0IF0WwMvyn8hpfvIZvE+sE4gUwZdr5zg80CS4wTXs3JkpLOuOuugopZ8m/yVxj
         iMznEXvdTwncJfQM1mkEufFWt8Q1eda7hWs2oZhBwrBpVF7qThndVm+6IJGtPMwf1qAj
         ZCUBNS9IMlyoeaJ6eYuf5PavHhv7kDIiDla2+TdB1lwpwNSuruLTBxYJ5HhsxYj0I17E
         CTcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YKKTflcgbWka3sBGBtMKQEO6SrfSDo9zX8DK6RTlZG+Nkm0PT
	dEfXaka8XtGbbrljI+DpFrc=
X-Google-Smtp-Source: ABdhPJzxonC55SyEkiLUwNgQ1Z6zMzr+nkP9qgNJ8PLDbp6C3mb7rFNiF2K6BWwyaB+xrmOlGGZYTw==
X-Received: by 2002:aca:df02:: with SMTP id w2mr216118oig.77.1611246036030;
        Thu, 21 Jan 2021 08:20:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e382:: with SMTP id l2ls181708oov.10.gmail; Thu, 21 Jan
 2021 08:20:35 -0800 (PST)
X-Received: by 2002:a4a:a9c9:: with SMTP id h9mr238951oon.93.1611246035634;
        Thu, 21 Jan 2021 08:20:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611246035; cv=none;
        d=google.com; s=arc-20160816;
        b=Y6SUFkspztrihEb+btk+7W+7LpMJY0wGKV8Dv0JurCpUBx1dYG7hIXRNrqNrc6H90h
         SSbK1qD/qNEGjKgbjRchKOzzSGxvopnjLtzlxze0zyJsi/qGcv51apSHsDUEvYgoQwYM
         +qCZtOrhxG3jtGKHRTkDrzTsFBLg1Ny5cNwRfzUPKohEfgzytKJGc7R1kM/nJG2LxolA
         wMnl84z8RygncFaAwEEpzC8GaqpIe+u4ivWelcX+7mAbFRyzmBNkX8lyYyYABHaTP+5D
         q70ezBxgSnrVNUYhXeTq0tCvG5nUQ/XyFPGOCCK4+H5MAihdOWYky4LOF/f+rlC69gem
         ShIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=s5ioEialcPghhwYMEAzTyJUkH/AuGrrjAPbLEmiPOmA=;
        b=rckJh1cnefSPhtgAtYcgDSWgVLZwPYVC+kM8Qgb1lGLMeod2X88M7q0dgHqrhIvEz1
         FipZxzzqfC3MiBh7LdnbZmplNj8aytaGJSqfgVaSI9jGaz5ltjgI/wS3nIDBDMGnAGob
         aBpXiG1pz2Cpie7Cbl/TeW8jFMxzTV/nGl8QZsA+RWMWm4fBEUT/n954ZgU4Wf4QaShO
         ysS/n2rfZ314B3+er1uSXZJiNh/Zi8E7rw0DsGEvFVoio2ezCymJGJSz2+7zPZIA9AFM
         UbPKjam+K3P1Maws+OIKYnmB5/eWbWgQ9qFuUuhBukHYjyeou+zeFIdkm4kXmFe88+js
         XX6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K+i9De1+;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id r27si459328oth.2.2021.01.21.08.20.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 08:20:35 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id e22so5078039iog.6
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 08:20:35 -0800 (PST)
X-Received: by 2002:a92:c5c8:: with SMTP id s8mr447401ilt.186.1611246035407;
 Thu, 21 Jan 2021 08:20:35 -0800 (PST)
MIME-Version: 1.0
References: <20210121160115.4676-1-lukas.bulwahn@gmail.com> <20210121161640.GA1101379@ubuntu-m3-large-x86>
In-Reply-To: <20210121161640.GA1101379@ubuntu-m3-large-x86>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 21 Jan 2021 17:20:23 +0100
Message-ID: <CA+icZUU8Oh03L2t39g1H3dOWQZF0iXZ=FSgPdsi_ZjZnFmGEAw@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: adjust to clang-version.sh removal
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Joe Perches <joe@perches.com>, 
	Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>, 
	Pia Eichinger <pia.eichinger@st.oth-regensburg.de>, kernel-janitors@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=K+i9De1+;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 21, 2021 at 5:16 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Jan 21, 2021 at 05:01:15PM +0100, Lukas Bulwahn wrote:
> > Commit 6c8ad4427f6e ("kbuild: check the minimum compiler version in
> > Kconfig") removed ./scripts/clang-version.sh and moved its content to
> > ./scripts/cc-version.sh.
> >
> > Since then, ./scripts/get_maintainer.pl --self-test=patterns complains:
> >
> >   warning: no file matches    F:    scripts/clang-version.sh
> >
> > The CLANG/LLVM BUILD SUPPORT section in MAINTAINERS intends to track
> > changes in ./scripts/clang-version.sh; as the file is removed, track
> > changes in ./scripts/cc-version.sh instead now.
> >
> > Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> > ---
> > applies cleanly on next-20210121
> >
> > Masahiro-san, please pick this quick fix-up patch.
>
> Masahiro cannot pick this up because the patch to add clang-version.sh
> to MAINTAINERS is in mmotm.
>
> I think the better solution is for Andrew to drop the current version of
>
> maintainers-add-a-couple-more-files-to-the-clang-llvm-section.patch
>
> and pick up the second one I sent, which allows us to deal with this:
>
> https://lore.kernel.org/lkml/20210114171629.592007-1-natechancellor@gmail.com/
>
> I am not sure it is right for us to maintain cc-version.sh but I am open
> to it if Masahiro agrees.
>

Sounds like a good idea to integrate both patches from Lukas and
Nathan into a new version of "kbuild: check the minimum compiler
version in Kconfig".
...up to the maintainers.

- Sedat -

> >  MAINTAINERS | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index e5d7cf38ec82..aafbea806a82 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -4355,8 +4355,8 @@ B:      https://github.com/ClangBuiltLinux/linux/issues
> >  C:   irc://chat.freenode.net/clangbuiltlinux
> >  F:   Documentation/kbuild/llvm.rst
> >  F:   include/linux/compiler-clang.h
> > +F:   scripts/cc-version.sh
> >  F:   scripts/clang-tools/
> > -F:   scripts/clang-version.sh
> >  F:   scripts/lld-version.sh
> >  K:   \b(?i:clang|llvm)\b
> >
> > --
> > 2.17.1
> >
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210121161640.GA1101379%40ubuntu-m3-large-x86.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU8Oh03L2t39g1H3dOWQZF0iXZ%3DFSgPdsi_ZjZnFmGEAw%40mail.gmail.com.
