Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBYENTT2QKGQEVHMGZCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-f55.google.com (mail-lf1-f55.google.com [209.85.167.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B4B1BAA05
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:22:57 +0200 (CEST)
Received: by mail-lf1-f55.google.com with SMTP id d5sf7713352lfb.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:22:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588004577; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dbfxy6UethGiOtO3UcyWfdOyikZPMJJ5Q+PNUVsukM4F3QctZ7bOeYm7eNqMfcYj02
         fP+HnpQGvEHpKZ8uvY0H1gcJ3D4r47Smu2mUVstPCUdt46TRqD23aIYrGGqAf4T5pmlY
         +vSrO2lRzyLDedFG7cRmIZa60EaqPT0Pl9J5/U/9Jik6HwSGJFgtPQds3UX7KqDGuhCG
         MA72k/2EhTUUM3uzrMVtCjsJleXLW6MdE5X7Bc3WbI6frELsoB1ft4MUT3UrQqNNBz5L
         NvQbKwPYJCPrZiF/U6CSfIhiypJFIXnudOYaQMXFGV3Ol5DnQupAgOaJYXZ01KnbVsDa
         pOYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=qUzr7tby6cPjsXPSScRIOxjNwErApPsRCOw8Y2COInE=;
        b=hnOq04lzqMXpDt+DxUDYUk6PMfb0HapRlKKiqb0IgDS0uRbfx07uKMXFQgUkuTccLM
         ScR2yRRnbxDNB0VLvevnoF9Ljqulf8+ZZyTlkxoUY0kEUPk+bXJASNZ9Wq2hoNb9aCmO
         HVmFkQzo1weHvt4WQyLjM85OJ3AkD1tay1QcNAl5jakM2lAqEVrlbXVnx2UJDx1my1r3
         Qe0MhlLPA1niBFdcUtVYYUIfQcXiQ7JQyHBr7TlxGGwEwC5cWF8aHkvBxmiLdfTdCoUX
         Hrg0MIM3GputusMDJJ8GDp4YEQpkvH2ztlkd69XrTJho+RqmNP1iTgo9d3OSZT91BVlr
         ThWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qUzr7tby6cPjsXPSScRIOxjNwErApPsRCOw8Y2COInE=;
        b=A42rsLW88KAgLQ+FcvHWEMqUUdBlpmH7YYDxH7A1OqLYZNN8p9yLIaV+0VlUOR5D60
         byyG3HnXt8OA8qH1t5Qf5tjROHqfij8Iy8aLn7gsGlacgDWpFsICFDVDIBhhnpa+3jjg
         xfZXNP6pWxBiMiitfPO64O3/ESchzs4IdzUP85AJkjO/54zhpZqJk2roftpWHEkMO/Lx
         HsGIIBJ/flX2BnIGzrMLUV2tnh/NQEqxrF97pQMI24dAjfRN4/GdR3j01oYHrArXu9KE
         2khbe2SgQCF/qTvDOKl0H8gqaoIBKkeS6UQFRz9Q2v8SLcp8tmT595efHMNwKQzTPUcH
         7d/w==
X-Gm-Message-State: AGi0PuYmjbcym92V7JEJFDGcKHNRMJNCdRndha62nAbWa6HqW/qaZlI8
	T3UFU9cY8FwUqGatC2q0yB0=
X-Google-Smtp-Source: APiQypJ2pVo1TjZABS80WWWPDWDTx9ZxB+/7LaydAH7C5X1jBrz/ZkCJ50qeKuxMpGHEeluS6bsreg==
X-Received: by 2002:ac2:51c9:: with SMTP id u9mr16397079lfm.184.1588004577023;
        Mon, 27 Apr 2020 09:22:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:4a42:: with SMTP id x63ls4531768lfa.7.gmail; Mon, 27 Apr
 2020 09:22:56 -0700 (PDT)
X-Received: by 2002:a05:6512:25c:: with SMTP id b28mr10492894lfo.129.1588004576471;
        Mon, 27 Apr 2020 09:22:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588004576; cv=none;
        d=google.com; s=arc-20160816;
        b=VYBSwUcmj0jgKUi4zmBr4iG8tC8ejMrrUYJeLSWM8PBgjfO+TCHQUtpFcaKPBf+Wr7
         P/d52dldNiVtTuuiTPqKKs0VpHGZeHVsi56F+HJSEG2RDnb/2QK9/Rr3PwLlgE1cZ+Oh
         1WQHootna13f7ppSp3bNl41j2j0oGD4LG3/yU5UD/d2MRX7QmoqdARwGQ/CUxsl4MkxN
         iBxrc/zCuoSrvXV2mbXMCRKGhxP22JOXj3VAqNgFAksK6Ma/Tu85U7vd/6GVo5J5GElv
         Xx/ojOD3wkvzYibjtotevtHnQCl/dKWH8+G4ToD60DS/VDdmWBoHRqnUSZ2HWTx01LHC
         AWyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=xMNP7qpFFUZmwFBuJatmMEenUTDH50DlcAZZ4lTPoSc=;
        b=f7pEh+c1z3wpSBpFurqK3bMhyNslWKYRQaKcaVYaPD4NLw5PTRyczA760hl5q6CD14
         buNDuSRqeMggtvS9T+f2+yDGLCNV+OBJKeaP2xUna10b5b6bZU4sCDguIN5UPn20vmQx
         Sns3s5XKs6L9ViInmsAvVwtuMeqKfwsUlhGZWjHeWAuiNegT8133r4sC4TSNYySRZxRc
         fmU4WSfB34h/xQRxJL9D5Tkqozqrva1gd/zLMdwAeSU4Ks5UDLO+SxaXJMXiHbIaOzqG
         0WxyL0GmkSVXjpM6J/GrTNyYCOvtObn7DIAaue3NTuzQcKSbpABgWqYfQu2Xs8K3ut34
         Q1AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id a12si545985ljm.2.2020.04.27.09.22.56
        for <clang-built-linux@googlegroups.com>;
        Mon, 27 Apr 2020 09:22:56 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23990413AbgD0QWx5Tlwu (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Mon, 27 Apr 2020 18:22:53 +0200
Date: Mon, 27 Apr 2020 17:22:53 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Nathan Chancellor <natechancellor@gmail.com>
cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Masahiro Yamada <masahiroy@kernel.org>,
        linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org,
        Nick Desaulniers <ndesaulniers@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Dmitry Golovin <dima@golovin.in>,
        Sedat Dilek <sedat.dilek@gmail.com>
Subject: Re: [PATCH v3 3/4] MIPS: VDSO: Use $(LD) instead of $(CC) to link
 VDSO
In-Reply-To: <20200427020830.GA260@Ryzen-7-3700X.localdomain>
Message-ID: <alpine.LFD.2.21.2004271712130.851719@eddie.linux-mips.org>
References: <20200419202128.20571-1-natechancellor@gmail.com> <20200423171807.29713-1-natechancellor@gmail.com> <20200423171807.29713-3-natechancellor@gmail.com> <20200426162737.GA9322@alpha.franken.de> <20200427020830.GA260@Ryzen-7-3700X.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Sun, 26 Apr 2020, Nathan Chancellor wrote:

> > this causes build errors for me when (cross) compiling a big endian target:
> > 
> > target is little endian
> > mips64-linux-gnu-ld: arch/mips/vdso/elf.o: endianness incompatible with that of the selected emulation
> > mips64-linux-gnu-ld: failed to merge target specific data of file arch/mips/vdso/elf.o
> 
> Thanks for the report. I will look into it tomorrow and hopefully have a
> v4 by then.

 Can you actually record in the change description what the difference in 
the relevant link command is, as shown where `V=1' has been used with 
`make' invocation?

 Actually running `diff -bu' on the whole `V=1' build log obtained without 
and with your proposed change applied and ensuring there are no unwanted 
changes elsewhere will be a good measure of the correctness of your patch. 
You may have to prepare to be patient and run with `-j1' to make sure any 
`make' parallelism does not interfere with the order of commands printed.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2004271712130.851719%40eddie.linux-mips.org.
