Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBWF622BQMGQE4XIYBSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE65C35E044
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 15:40:40 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id h12sf6386907lft.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 06:40:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618321240; cv=pass;
        d=google.com; s=arc-20160816;
        b=RaGYtyhT+1HXBqGAo46RXwtcrSin6mzxqhijDe9/PUmsu5OAiq9XgOpoEOwwa2amiQ
         ZBe67Ry2vawYO+W+HiFTB57/qsXMywFZ+WSw9dXtpdjVGRQHvOiYSmj4JZgN80YD5Bu4
         FE2Sq5Gys5wQSlv0mpwEHJSx3mph0Aqy1ixjBKTqSNjUohoiNWR9hK51ruHxsBHSSitH
         ur5XH8HYPag/z92iCnsR/KkM99VESgL+y+MTgsU8yFQmx3imWjaXhrRe1Lj0aeTKNtlM
         GMEy6CdiuEmVxcqxQt3Z0CDwkDH2oa8gx/aPRcjxVqINntWhP6ktZ+HIPN1rueecxuJr
         W5+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=sJcHPbEcVoOMVfDW+8J3x5Ro+APd+qeZofDFX3RBLzU=;
        b=U3UXzt99BaCHlN+KdoaOtuyr82g9eR09KHpkckpWJ3RN/RxdSQpu61ENM8qPZ7ZKu5
         /D4kkzNJCeyRw6kvvS/Xc7h1FaZ4PsqEWfaOncmqlYcE/wOV34EFeikKS2ZTCkiQQbgm
         nJMcMX7pl59qY9vuUCKn8nZDsDzB9+gf3QqbLTahxt4fdcXNbuEPqfZaU3wh1PayAAsM
         ipm0neo1Y6pSoNWrEOjG51gk6ugFGxgCiHl//hqAKV8crsQ8fAsFNNS9pcxMSwDkCZ4b
         0lBJWRiUBvRj9hxt36lqIz0mXKHXD7BvDK9io72EeKK1dTnhlvaPXgSR3TKLjLXH2v0v
         g39A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sJcHPbEcVoOMVfDW+8J3x5Ro+APd+qeZofDFX3RBLzU=;
        b=rrX8E7PqwlLfkFpf/wPpnWlqPak1bf+39oeEokfM4rIoadk51joy0r2DSYaLN9tSEq
         x63GK612W/IwWUYQIOdptZYi65WPfjK1tdZSYyCmcKqZd2qXuNG0zLPt55VvctIjLS5l
         cW0HDQVjEhzy8D0RRR+7zOVsj4J63pYOOJJINLXzBxl9tE9JsWkBU397m+M08r2fIFLy
         lOZxB4G2xvClzXzUTrrgAxc7j4hHYHPkhNJoLGlKWJiMMyiuQFClcgP1BvKgxCVBfPXh
         EIaKMYzdoMMNr/Jf7JoIeGXhhdjc4/9M3gxClga3OFEPgWiaA5kRhCOrGQMqbmiEEZp4
         lXhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sJcHPbEcVoOMVfDW+8J3x5Ro+APd+qeZofDFX3RBLzU=;
        b=cq0SjYtEHkjYth0MV9z2xZ/zDKJKIeO8KpiX/wC9JwTCHmzUP52y/wDhFpLINB/lJM
         O0WBil0xNQVGrgmhR9Bvjzx3rjpuBznyySGqfc6vMHtB4IVkaEgSpCMxEsvV30HdE3JG
         pO8IRVtzyDmYkzwB4FZl+LvHXMRz0ZHCgkDMn7+EyNVwx6ftTP4qDbV7LIlV+QuPl5yV
         XbZbgIzsW2dY1nrjnTVOLx+E9sLT27tXJViWo0kuQzVMXFIYfjvpCox7FavQFmJS8K7J
         eBS27e2REi9uP8QrEos9kDcYF9musCRCOgwwLGum+1hh0R9f0UY6qkKf+pCITOQJVGSd
         PXUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530W3gobz3ABlhgMpyGKxn7TqYjvrKWo8nptBzmEsU9pzFrBVl6g
	FIsWce7xCZSJcG0rjDWCRwI=
X-Google-Smtp-Source: ABdhPJyGxASQb7nIK5n+QPpvUsiFHr/7RNwPR7cdR4UKoUf1oWBUp6Z+YJuDEsHg0HZ+F9/Tv1TkJw==
X-Received: by 2002:a19:381a:: with SMTP id f26mr12100202lfa.433.1618321240483;
        Tue, 13 Apr 2021 06:40:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls4664824lfv.1.gmail; Tue,
 13 Apr 2021 06:40:39 -0700 (PDT)
X-Received: by 2002:a05:6512:10c9:: with SMTP id k9mr5827159lfg.416.1618321239469;
        Tue, 13 Apr 2021 06:40:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618321239; cv=none;
        d=google.com; s=arc-20160816;
        b=Y7YBrSYuYi/YUOG8H9tqJpcI1lBuFXStYVAfI+IuQamYscR7eEuSWcGheopKWgH/7q
         mG9IAUVD6PSbwkt1gDRFak2iY/hsMfkIM8AGAQ7w6v9OpP5Lo8rB/IMp4Eh7Aj2OPu+A
         h26p+YmD5Vp+FB0eD83q1NcITRRqUCr03g/edCsIny7fpHZHBNL6TLgkUtwG7nwl8HTY
         k9ctl25JHqnVPj38pTbAo3uqxE+F4dr1AIsL1ha68WUrAGdiY7YR0HQfLtR85bSDb4a4
         lLNg5Z4LwLBzXT9NGNFM4aJs82bU/Nqpf6XLPk8VTDKZgIELFaYyoHl+UymxYCCPHm7b
         chEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=AA1mTJRzxUZqFqKSe+CHHDDOL2I+IGHLCLCLiuDVcLE=;
        b=GD75FV2dI9ceItx6jKLiTCSdL1RIv6+jwHXydAOGSAbSW7tDH1f6uwnr0dqnSEMqnY
         VRFxVEqvBQlUGAAuVnAhp+JmM4dr7JtLr403i5uhxf3m5fPJ8JripTQGvyPOKb5jC/l7
         LMP/7dbOpwVv/tWyS7LguW+cwmlAjD4vfRoBq6dRE8NqUDu9WvFH7QmIn83xFRlL57r3
         lO9UYhVekPEvkJmMA/1o3otZHga+XkdarCu5jl/gWCVfh10n2GVqP/bxCyGw8qzfMs5w
         hZXqAUvqrkgsoL2rY1J8bUlj/6syv3yB7je8ebHXxgUaXFJJXxwTkGBOcjurpHnfpRDB
         fnqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id q26si623429ljj.4.2021.04.13.06.40.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 06:40:39 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from mail-wm1-f51.google.com ([209.85.128.51]) by
 mrelayeu.kundenserver.de (mreue107 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MOzjW-1lBRwQ2wMm-00PN5e for <clang-built-linux@googlegroups.com>; Tue, 13
 Apr 2021 15:40:38 +0200
Received: by mail-wm1-f51.google.com with SMTP id o9-20020a1c41090000b029012c8dac9d47so1320619wma.1
        for <clang-built-linux@googlegroups.com>; Tue, 13 Apr 2021 06:40:38 -0700 (PDT)
X-Received: by 2002:a1c:6382:: with SMTP id x124mr84828wmb.142.1618321238316;
 Tue, 13 Apr 2021 06:40:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210413115439.1011560-1-schnelle@linux.ibm.com>
 <CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w@mail.gmail.com>
 <84ab737edbe13d390373850bf317920b3a486b87.camel@linux.ibm.com>
 <CAK8P3a2NR2nhEffFQJdMq2Do_g2ji-7p3+iWyzw+aXD6gov05w@mail.gmail.com> <11ead5c2c73c42cbbeef32966bc7e5c2@AcuMS.aculab.com>
In-Reply-To: <11ead5c2c73c42cbbeef32966bc7e5c2@AcuMS.aculab.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 13 Apr 2021 15:40:22 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3PK9zyeP4ymELtc2ZYnymECoACiigw9Za+pvSJpCk5=g@mail.gmail.com>
Message-ID: <CAK8P3a3PK9zyeP4ymELtc2ZYnymECoACiigw9Za+pvSJpCk5=g@mail.gmail.com>
Subject: Re: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
To: David Laight <David.Laight@aculab.com>
Cc: Niklas Schnelle <schnelle@linux.ibm.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-s390 <linux-s390@vger.kernel.org>, 
	Guo Ren <guoren@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:h0lZmBAdXogIdynMMS3t6VGHrtppLjtjdPBTU8mXFgE5pZyouvq
 o0OMeoVlFS0ALCq7TacwhwAtDMfivGcHAd05TXOB0ja+gWXokdsFA6WoCUe2ozP+Aidf5jX
 TdADKi6YAKJ2iP1zpVzASGMxMUng29lTQ+//iAcUzpmPk65tTs/SYtW9pHjRM9IdOq7NZj/
 6LM2ExCiH6uVINOTbqcvA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:NQqGcSDeEt0=:ckqwea3llt1ifvZLiLOD1/
 FMOykZe/qf4N5xJb2XXAltUqw4MB/t1Y/IymThlK6XOg2/fRdPlzSY8vVrzzcyCXh2p4cl6nL
 PmCcKA5sidBLncClx3ULJinl6y6CVvbX3MLeXahTaNAmoBz/qMGE/Jj+R6tK5dOrxRYkQMXje
 p8Cmu1+PaznSYuF24Ah8UIr1y7EqnoObt1JfvLUrBxVSSyRvZ3SYNdm/kdj/bnW1IQ0dE/2uY
 dfwVQ/QIrQ5GK6jwTePgT05J58dTZRPoozeraaCVU5EC4PzIU2WLMzMvZgdt0m7/SKHKCT1ra
 cAJMnJjApwpaqsKEk3yIYMA+pWHAZIk1ySPpTTguy6js7276GYlvPsMjrKKNiDRA8bzNrEchW
 ibodJBE/hRFf+SpRAI/7MvuKOAieKAoScfgOEzyn1jtVnq0SV9VfADR0Aeb7j+lcr3cJS50P1
 M8se//rCE+ehGtJZ1qxBrDlsZ0/d4iY+o/FYldHFeNNmfafH0i1Lwfdw0TveTdjN/Ttd/hDBX
 wBvj7VpCY6u1AWlE4kIk5hWI3+zcORhDBr+Da1G7JrR+1IbLSTeJCuv01GtqS0f26/S7ZxCpl
 Xfht1WM7DlqaD8nd3gEk4RC/YB0m8QP4xi3Ywgk9W5qYMFsWdEIBVh5maftyqmtGURmFPyCOk
 C9H0=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, Apr 13, 2021 at 3:06 PM David Laight <David.Laight@aculab.com> wrote:
>
> From: Arnd Bergmann
> > Sent: 13 April 2021 13:58
> ...
> > The remaining ones (csky, m68k, sparc32) need to be inspected
> > manually to see if they currently support PCI I/O space but in
> > fact use address zero as the base (with large resources) or they
> > should also turn the operations into a NOP.
>
> I'd expect sparc32 to use an ASI to access PCI IO space.
> I can't quite remember whether IO space was supported at all.

I see this bit in arch/sparc/kernel/leon_pci.c

 * PCI Memory and Prefetchable Memory is direct-mapped. However I/O Space is
 * accessed through a Window which is translated to low 64KB in PCI space, the
 * first 4KB is not used so 60KB is available.
...
        pci_add_resource_offset(&resources, &info->io_space,
                                info->io_space.start - 0x1000);

which means that there is I/O space, which gets accessed through whichever
method readb() uses. Having the offset equal to the resource means that
the '(void *)0' start is correct.

As this leaves only two others, I checked those as well:

csky does not actually have a PCI host bridge driver at the moment, so
we don't care about breaking port access on it it, and I would suggest
leaving I/O port access disabled. (Added Guo Ren to Cc for confirmation).

m68k only supports PCI on coldfire M54xx, and this variant does set
a PCI_IOBASE after all. The normal MMU based m68k have no PCI
and do define their out inb/outb/..., so nothing changes for them.

To summarize: only sparc32 needs to set PCI_IOBASE to zero, everyone
else should just WARN_ONCE() or return 0xff/0xffff/0xffffffff.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3PK9zyeP4ymELtc2ZYnymECoACiigw9Za%2BpvSJpCk5%3Dg%40mail.gmail.com.
