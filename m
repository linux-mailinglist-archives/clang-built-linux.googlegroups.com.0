Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBUHQKAAMGQENILB72Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC462F6803
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 18:46:47 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id e2sf4261402pgg.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 09:46:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610646406; cv=pass;
        d=google.com; s=arc-20160816;
        b=mD1QL3PnOvgDbO0uOcht1z2gn23X+Pe2dgsZgwuua36NRscyq+nPvdG+qziW+rTfvO
         D7ukwVdnmviCNZT8D2p5olAS97Ww2XjVtLsQ7TItvCgfLOyg9OOpMpW7g/zYRGkeXE0d
         zVfhVjdGCIAGxkmNKsMEWWDWaAhpTP37RX0PsOALq+plwgfjkAQCIc/ya8OD+rIUky5O
         Zf43v/3oewEoBk+6nR3LPAPKo6qRwJiPLX/nmBrwpbG1xW9r57Axu+uq6IpsMeo8gyWD
         rU+NiVeBR1sbIOyQGB8VTQLF0pZrvktc+M0Zdo3xCmkYZuynwC6AUjJvbVcFGmFqn7gJ
         806w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=E0mjG+NhI/GpNsh458ZwRiib8KAwN5+k9AkVUcFqZvI=;
        b=ZMJ0YCYmxp13ywbVH2oT1OwqewQNS+39jJuQM/02qCuFLOwQfqwIK3GXJQDoqHLyw+
         mVXz5LVooJlLeNpngW4kgh7BfQJZVOJtn1Qb8tlMZpfeGkubHf3QLJalI1XW1CJjbBR2
         yPu4NLv1KcEnoUcUkcYzgdTgF2WSG70gsQAnkYlXwKCRdB7LOwm9mWtWNqE/K890eGZw
         MONgaT8A6yIbyQPdzbTkoZFGbEIq7JDuMyjQSQS8dzU9Ns5fofOBK/qLxXg1Ju6cs3N5
         HcVpOPGz6URJRp9mJmEfDkQbGqIeTY/x4IkAuYAUsxMLG0bB9WqlgRP0Bx7AVSTV/qrN
         H6xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bngQS6YB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E0mjG+NhI/GpNsh458ZwRiib8KAwN5+k9AkVUcFqZvI=;
        b=Ft2DgOfzPAKjtqjdK3eGbHFbVZ2qCPqKbzmGQ+YuArQCG5iZhdNvqQxCxLndPaQ/ql
         rErgRdWn1LHDv9SLk9KuZsuHEpxVMOiLTfBXyL4rFgRJd4QYTQJVAjnN+T7uEobsvHwo
         bYdqLH/6d03+fkWvO9U/QYDooLQMBTyCXF8G8fmBAid7h5CdcOPJNzwtPc50L/Vjyv5O
         UJ0LIgWf+a94fX+2rtCINDNvq5+EpFaJTIW3lJMMIcbpeJRXhackKyfl9aIXgdWCp7is
         nYm2Xvor3czBG+++/uosY8KEJ4BmD3Or2TfVCJsMg5j/VnPxLNb/RaIHGAoVt18TmPJj
         Y2SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E0mjG+NhI/GpNsh458ZwRiib8KAwN5+k9AkVUcFqZvI=;
        b=rei8leHrbBgEX98v5gAfTRxjiseTCBjGFmVepnsJV2HxA8TR3rPSJBi3wQ6YsNct1C
         wtLttn+YynDwtQNrboiHMpiOjZwqEJeT9X7X64IeMnClFJVaE6IQcGJCSEDOKoSC/m3v
         O0ZcfeTjPUbGo//Z4lDuxuARmOcI/b4av03ObQWU+0Id6F/nvrC2c1n8RqJ8OqtEj/Kn
         73v6WdQwTG4AHPoIFFKdRDoP0edunwYLZq9Z+neLVb63a42z6aXcKfPTqjXDPVG4neM1
         02eOusCgiS6kB8NuhK+KGIvP7npEpHcPkmbaKHKii1Gq9nwPxT9C+NEVU37DcmBJnF5u
         HKIw==
X-Gm-Message-State: AOAM531jZzPTRCpaaVW9OhrtkVEMJQtRqjzxpgButzU7uF5bDVkn28//
	WO9W/dfvoKToJE5oPmGBl2I=
X-Google-Smtp-Source: ABdhPJwgY1mhIfhw2aJweVJ2JPsjTR/UFoDQ7Ms55hTsFXWsSvAr+7chTJX5szDMfeu///0BeoiYmg==
X-Received: by 2002:a63:5d53:: with SMTP id o19mr8644786pgm.39.1610646406156;
        Thu, 14 Jan 2021 09:46:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bb95:: with SMTP id v21ls3203033pjr.0.canary-gmail;
 Thu, 14 Jan 2021 09:46:45 -0800 (PST)
X-Received: by 2002:a17:902:684f:b029:de:3124:d4ee with SMTP id f15-20020a170902684fb02900de3124d4eemr8653419pln.13.1610646405524;
        Thu, 14 Jan 2021 09:46:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610646405; cv=none;
        d=google.com; s=arc-20160816;
        b=Hmj+rgboHHWmjl1bsHC/hgEbtR6zF8ZIIv5tDj6f9ao17e2K6pw/jjdkyOy80jLGZ3
         fC1wchgzkX1YYRt3g/cFKj6+KAjEGwlyipTWCT78YFAqTlNE1Kwkqb8hdzKZc2B2gI8+
         UUIPezmgwjlIul0NljhaQ71OSjuLulLKUIbR4M7CTNdtTjTllzDFvYmSSA4Z7TobNMbS
         PLZ7JEPNNgjj6aInxEW7mg7ts8+AdfyAM0lGVJLtXeU596BOXm8/kDPDUg9hM5Du0sxf
         QSA+zg2g/iju/u3/l4JHC7uttLor+yfjBwAyeLHex6S5u0rCfl1CYiFS9hZvFksC2blK
         R5vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VkWokvHVtOdb6hEe9nrnv98hGpXNaKuzGm4oJYMDFhY=;
        b=ccqFjErJPrG68xzjfZSFMvud2I9c4mu8j8HBapz/rR0WetiRFKKkeCyU9f2hY2ndIs
         HylvaU6gx//sNfxN21PkF91Rnw80ib6hxMWQ/uU7Sae+tRdl3gGMPtf1Zz+W6VfPiUF2
         o/VH/oF3ehrYImPKRSZCKKv5PYjE3tybYmabhL5lQdE7m531kiWYPkhxhu09uPEOxmF2
         IajU37l9yXaFXxCzpL6aTel2/ijuY5Wpm38KNAfowkMaHoAO2pTKGfkQnuhpNvHw5Twr
         /7CKXGY9HozS8zuAJc7NAMn2sQ2nfFM5b6yGnOgwjQ4uDc87XOA1J2S3fZCTfPCwcpl8
         F1VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bngQS6YB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id t9si86682pjv.2.2021.01.14.09.46.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 09:46:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id q4so3274003plr.7
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 09:46:45 -0800 (PST)
X-Received: by 2002:a17:90a:31c3:: with SMTP id j3mr5923345pjf.25.1610646405067;
 Thu, 14 Jan 2021 09:46:45 -0800 (PST)
MIME-Version: 1.0
References: <20210114042420.229524-1-masahiroy@kernel.org> <CAHFW8PRr6kjEE=7BSzWo7itSZgAhy_dhmnSe1yq5wMfDwEyJ9g@mail.gmail.com>
 <CA+icZUWBUiM2XgGW6Q_KHT1d=1M5nsu2rRaf--xhTR90u2tjeQ@mail.gmail.com>
In-Reply-To: <CA+icZUWBUiM2XgGW6Q_KHT1d=1M5nsu2rRaf--xhTR90u2tjeQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Jan 2021 09:46:34 -0800
Message-ID: <CAKwvOdnx-LPcmAmTiC02We1RYd3SGBC0S_ArLJX8hrsMA=QcGw@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: check the minimum compiler version in Kconfig
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Ilie Halip <ilie.halip@gmail.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bngQS6YB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::62b
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

On Thu, Jan 14, 2021 at 12:09 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> I remember at university I used ICC successfully with building a Linux-kernel.

Not asking you to disclose anything or date yourself, but to readers
who don't know when you attended university, that could have been this
year or 100 years ago.

> Anyone has used ICC recently?
>
> I cannot remember to have seen any bug-reports regarding ICC to
> linux-kernel or linux-kbuild mailing-lists.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnx-LPcmAmTiC02We1RYd3SGBC0S_ArLJX8hrsMA%3DQcGw%40mail.gmail.com.
