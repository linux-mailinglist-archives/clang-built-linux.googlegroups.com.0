Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBOGSVWAQMGQEXPM7U3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id E51EF31C689
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Feb 2021 07:42:01 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id k90sf7165434qte.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 22:42:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613457720; cv=pass;
        d=google.com; s=arc-20160816;
        b=zutRBtqH+6JltnMGLJbU7by00XYIvpUuHK8qYMUgSASzFgDvMTsi1gjGFMYW7kBk6H
         dw64zXtGw1Ax8nwUzX0S3d/cYzsjPJaxj6Ku9CWF+iLGaiLd1aDF2kbJ0NfhQWMP4/rB
         gRc0KCdRQDQ4BfJiJqhhFTweM6AcLgdcpsoyds6AA22AleB5tMJ+W/AzpbTEZ3FsiOip
         hHh7ZptktcuBxMLRdZiMaWcZmRBRU/ynzI/94Cj2yhKwhXIcd2mSq7Vhs0yqmmqA2yl2
         GmroDV40I9DbZA6SeSjFF2es5WcVojQdm/pptIDwnFxRcDHQINGwXsmEqbkfa08rfqvH
         mfGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=cy6+yBSu+iwmYV4RJFqbwzAXuks9CrG0ApM5ishs44E=;
        b=bXW2OmQg9igG1QsL8CRLyJUzUYdoxVahDnwnTz/ct8sR0uGB12NZLRF4xUjzYdP0ei
         vB8oijXnNwgWYWGFknqhwf67TOjc/yOtiOiD9iXQeGX7q+76ETa43MVCjVuxK54Qo193
         fxHRv78dlHKKkygo+3tVi907N1luARX7+KXgVafleWl45A/1ZFiLarSOe6orElsgTo1R
         kPdimqwKgwFEClZh/heZCLsf59OKskrwrIF+1X0/UXrtucOAR6A3az4TI/gTYkal/mvz
         /Mv3XBhmHKxB9HvGXUcxLOnl9KI+oXkkzT6wyx4oJb0Uwal5+F+/B2MCyg1gWxhmBlmD
         F6qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PkvY1OsY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cy6+yBSu+iwmYV4RJFqbwzAXuks9CrG0ApM5ishs44E=;
        b=REQkoZbpFosApm0uYlfMaGEaM67oHPoULnowU1GI5KdxavUe3ekpnnKPeiRaJpSaQk
         DmpWQzXqrvpUrnpo1VntMkNBJAey+WF+/dZebOp+CMJzvJnoznVA/iLGpNg5q1E4RJDO
         QgpxLnrjrNYUPKowc6B+QFaRgVuphaT3svtnsN0M4eSYOBzGHGohP15O6Odp7VAZTK1h
         p+uAMpyGZPG0brheb8/L9ddjiwm7RMz7c8a0HkgiDuJpnUON/5UEtk3H61kuKGf4+OB2
         SHkMdpPjkoPhNkELSS+1NEvf82UV/gHLcyxTg4jmdLo43cZt06Jft9GwHlxg5Y4zXiPb
         5hsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cy6+yBSu+iwmYV4RJFqbwzAXuks9CrG0ApM5ishs44E=;
        b=PU+7eyMURTmhYScbuvD1gGN86SK3Gn/uhZunyc+tuTuWA3xTuhjqfn5xQvIINxPmmj
         V2syW0aaMFsjpZuLrV/raa5nspZUszHyTd+VO7+YttiWEBt3HOwJKrGm+FrWDoxRCF1W
         SF5SK5usP/WW3KOAwWahWiTfNnsUr9PjgFiFUlpoX6m5Q8j/FMRU62tI21MUaIpx3Jbm
         eU9/mFt0llEYMRQJQAcYQI815Yib+awxB4W6M23XvilaFercoh2kz25G0k+mZZNpbTLW
         NNjXCGmB9wyGTE2TnM312oA9pr8a+58JOgeteBiJ3zDydkB/PUpqxjGAMdSlthERqlRe
         cPOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53236PL+Kj06aDUBfdoIbzIq/bQs1v7Q0ygqbHyx9RF4JsaOEQFx
	VWpNFl8Qebi6aGpRkShqW0k=
X-Google-Smtp-Source: ABdhPJx0/UnWSaywVV6go0d7GimzedDMf/kp9/Ii1UxadSZyKnqADpzuA7OT7cEom5S0fBFBDl61jQ==
X-Received: by 2002:a37:6542:: with SMTP id z63mr18105579qkb.346.1613457720768;
        Mon, 15 Feb 2021 22:42:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4c52:: with SMTP id cs18ls3417613qvb.11.gmail; Mon, 15
 Feb 2021 22:42:00 -0800 (PST)
X-Received: by 2002:a05:6214:f6d:: with SMTP id iy13mr14769508qvb.24.1613457720335;
        Mon, 15 Feb 2021 22:42:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613457720; cv=none;
        d=google.com; s=arc-20160816;
        b=PDwOVxSkJS5vktm5HM92gr2mmP/UpMeprZ3+rUM2CmMPumolqO57OOvjbNQWbIZV5A
         Hxire8KYEvwy4h+PBfHsV+cRlx3YA+mYWEFh8VrYTdUvgs5mEIJiO67ZmYwa+h0VBpBF
         UA6i6qNM8AKTxI1kptbjok9R6aAM7a7yhCQM6I87IooMYxOpFLRwi3pDijMfG/uoWOmJ
         IZ08R/T7Qj5y0OoyMIqpjyicLvUklNzlW4ySEvb3bh43fpS0ROuBcVj6r5St9IFqKWVE
         Ei1L/LDyACpXz82aKL3QyXdXyx4Y2+48lkKp4Lis8u3vGaZyBKwLltjpyq2T6Te2bEVd
         2+zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=sfEE88E8zodGl9pgVL//ZMGChpopWqeKDKHn6Cpcy54=;
        b=jE02mAbfEBcXhXjG6bCZ57tkYtvzlJY4+xsPqAtnDiJYsAcVVmqdAgk9C8/uj/eQW4
         +m2qbIrXBGiBbiCD9KMMO4327AbtJEiB7tkXf4PkrudDrhjcERDpojd0Z5h6PIuvi80K
         m9F2qXnvbWQmKSwh0DeCxfZJ+CD5ZuXdBG+KoGVt51lb2MXvGeXJVOuJHUiFve8EbxwO
         HIihLTQyNYw/nVXUs4fEYUha/GziD3hAwuwZT8ct1d+SzET0FZ1/MB/yJFHjJWTtxUtm
         fyK/6E2KXzr4Clzj6VnFlrULNLQ54kQdu2MZe54PfE7mGsmVGZbvX5ABEY/sTFXnNb0O
         LHMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=PkvY1OsY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id f10si887725qko.5.2021.02.15.22.41.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2021 22:42:00 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 11G6fS5n031803
	for <clang-built-linux@googlegroups.com>; Tue, 16 Feb 2021 15:41:29 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 11G6fS5n031803
X-Nifty-SrcIP: [209.85.216.50]
Received: by mail-pj1-f50.google.com with SMTP id c19so162826pjq.3
        for <clang-built-linux@googlegroups.com>; Mon, 15 Feb 2021 22:41:29 -0800 (PST)
X-Received: by 2002:a17:90b:1b50:: with SMTP id nv16mr2648284pjb.153.1613457688393;
 Mon, 15 Feb 2021 22:41:28 -0800 (PST)
MIME-Version: 1.0
References: <20210211161154.3892836-1-masahiroy@kernel.org> <20210211171908.GA3820685@ubuntu-m3-large-x86>
In-Reply-To: <20210211171908.GA3820685@ubuntu-m3-large-x86>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 16 Feb 2021 15:40:51 +0900
X-Gmail-Original-Message-ID: <CAK7LNATgjCtXT1ZmTs-nLpLBmpvQSLA+FQHazP+trBgQcvcqcQ@mail.gmail.com>
Message-ID: <CAK7LNATgjCtXT1ZmTs-nLpLBmpvQSLA+FQHazP+trBgQcvcqcQ@mail.gmail.com>
Subject: Re: [PATCH] gen_compile_commands: prune some directories
To: Nathan Chancellor <nathan@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=PkvY1OsY;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Feb 12, 2021 at 2:19 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Fri, Feb 12, 2021 at 01:11:54AM +0900, Masahiro Yamada wrote:
> > If directories are passed to gen_compile_commands.py, os.walk() traverses
> > all the subdirectories to search for .cmd files, but we know some of them
> > are not worth traversing.
> >
> > Use the 'topdown' parameter of os.walk to prune them.
> >
> > Documentation about the 'topdown' option of os.walk:
> >   When topdown is True, the caller can modify the dirnames list
> >   in-place (perhaps using del or slice assignment), and walk() will
> >   only recurse into the subdirectories whose names remain in dirnames;
> >   this can be used to prune the search, impose a specific order of
> >   visiting, or even to inform walk() about directories the caller
> >   creates or renames before it resumes walk() again. Modifying
> >   dirnames when topdown is False has no effect on the behavior of
> >   the walk, because in bottom-up mode the directories in dirnames
> >   are generated before dirpath itself is generated.
> >
> > This commit prunes four directories, .git, Documentation, include, and
> > tools.
> >
> > The first three do not contain any C files. My main motivation is the
> > last one, tools/ directory.
> >
> > Commit 6ca4c6d25949 ("gen_compile_commands: do not support .cmd files
> > under tools/ directory") stopped supporting the tools/ directory.
> > The current code no longer picks up .cmd files from the tools/
> > directory.
> >
> > If you run:
> >
> >   ./scripts/clang-tools/gen_compile_commands.py --log_level=INFO
> >
> > then, you will see several "File ... not found" log messages.
> >
> > This is expected, and I do not want to support the tools/ directory.
> > However, without an explicit comment "do not support tools/", somebody
> > might try to get it back. Clarify this.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
> Sorry, I did not realize that gen_compile_commands.py did not intend to
> support. I was only looking at the history for the current location, not
> the former one of scripts/gen_compile_commands.py.
>
> Acked-by: Nathan Chancellor <nathan@kernel.org>
>

Applied to linux-kbuild.



Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATgjCtXT1ZmTs-nLpLBmpvQSLA%2BFQHazP%2BtrBgQcvcqcQ%40mail.gmail.com.
