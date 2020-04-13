Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBU432D2AKGQEJ2G53QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f63.google.com (mail-ed1-f63.google.com [209.85.208.63])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FADB1A6357
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 08:59:32 +0200 (CEST)
Received: by mail-ed1-f63.google.com with SMTP id i10sf8431871edk.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Apr 2020 23:59:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586761172; cv=pass;
        d=google.com; s=arc-20160816;
        b=erBoQuPjJk36X2R5fdm0omBZzkVHRsh6Xm/Yu3m3mk2duEZfYgOJ87tjQMtwiQ7Htx
         A/LnFRzQBgMNj63yaVBDowM8cuvnoWcGjxWClZjmeATH8g8+vnqfYeHQN+zFqL/rke+U
         0raPN+6aRqBOTXef946t1KLniQo4AyLbccEy39BbHk5ofpXP89jDYz1m0YcxDMrQg4wm
         Mwn4l21bNZoKDrrrNn46li8yCYxJVdCIDqO8eCb0jppdR2kY/EyCe7TNHElsUsqsHrs+
         PM5Q30cBOPf02RXiOEuPYRH5WTUBeUQ/CypbvVpGLDPt02+mcp9FIh4bM37e7Dd/Peyd
         3NvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:sender:date;
        bh=ncJ2XdjXU9s926Gns884Ei0s1Kxvnid+n5ZtGnpGzq4=;
        b=PNmM5dEnajk0tQPnp+cS5JmvK9iexJle3H3jqqRWLCV15tdZmzDbcdsncYPGDfLuG1
         BMCf60sc9sGs4W2h8frD/7O1Dht8OpLYyH1wxcuMgeAm9mdynZ7dV/sX5vd6bJQfhMqq
         nJ58eS8ljZ0uo4kL11nm3TP6qW1hXle6uR0AXEkMMHItSR8JNPH3Or4jnnGQaIL3Zji3
         PCW6ABqXgz2HJcCVI+49tiAJnr+Z/+QpsD0rd13JDURB71UJeFOypyak3bGuFgDYKSzu
         x2Rg27ghozGT15f/jKMpn+K/WKebJfsbjBewHUZ5XoqdOcLGXQISFJ1C+ix/vhe9L9Av
         MVmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:sender:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ncJ2XdjXU9s926Gns884Ei0s1Kxvnid+n5ZtGnpGzq4=;
        b=r97CEsCgjQHP117tG2rz4BEBehFvha5EzSv3kU4jk2XyfINaUTLQcIiZIsps2FYgZA
         tES4apd0cS6og+HXOko9hvFNr4YTsDodnrtFL+A3S/LEFCZev4aN7GxVlrhSeawgox1K
         O7xTvZ20L1oB8oZs4eaA3vYiMGHokaFlK60TUB+eOuQAmWDedPhoc1DLTXRiWLhX+GNX
         3EiunxmbFfDr8RYgN6f9v75C2plX5N+uBg+17Zf0+1anVcrR83asbYw0zMIfpmZNwF8S
         +Yo10sPAr1GMuaiqh2QFq8JZ5gHpOYNjqrxowbdzNaRJ+cf3BO/Ne6va+ZhE1xQxlfP9
         QGow==
X-Gm-Message-State: AGi0PuaztDPyW/fwMDyoh6/YHbezD/MGSxPRxXkftN0gSvMTKViEyqR4
	mC/qib+mRQNlnNLT3jQm0JY=
X-Google-Smtp-Source: APiQypIEvsI0TnIP+AUbwusJkzEX+A5R6FqJCWfhsYabLtRNTG9qzEpXUUkt0u8/IOPRbvAAv/YSHg==
X-Received: by 2002:a17:906:748c:: with SMTP id e12mr12148136ejl.375.1586761171912;
        Sun, 12 Apr 2020 23:59:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:eb0d:: with SMTP id y13ls16102940edp.9.gmail; Sun, 12
 Apr 2020 23:59:31 -0700 (PDT)
X-Received: by 2002:a05:6402:2067:: with SMTP id bd7mr15751431edb.174.1586761171456;
        Sun, 12 Apr 2020 23:59:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586761171; cv=none;
        d=google.com; s=arc-20160816;
        b=qj2eXwNDL90RWjQ5FZ2V3G/Rc7PH50iQMQNP4d2qNNNtlQ81pVeQTAScg2F6mnbsqM
         qwVJcOROWw+iYympR4TY1vFFF0NAXHutLZEnhX8KZcO8D/GbvR1rrRSysg9OpFc6MOJF
         lax0jccvZItZYpNALqx2xOjpUYJ0iFOR0eKJSw8v0l0ISg4V3oIcHmknBtCYtqWl+RUp
         WSlM3J5OfuJ3vYuzs1WyIg4JAL3Ye5WoXp9+1zTXSkt5ztkBGqTx6xmRpgLLpZbn6d+G
         ta8/GklD7DwouaRMt9c5+duJcmu01VF5JCYfeHJVfvd5FnoCPztG/FLPj3nC3FzawPT0
         UK6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :sender:date;
        bh=Rlk9RQx0FFV3tl4zGx61YSucZdaEw1KlLdzZhm9GC8c=;
        b=FYr/Akt4Oi3o8h+HzaFxv8FHmwLB4z0U9MEiq0jNes3+vT/8DjKojWkmfiRls2pY2l
         YU2VDhC1oiNiMpjd90XoixseNCYl9Dz3va85vdB1ZlMVqh2Smyiedkk9Zy6i5qcGv3+i
         jeDhlfc2XzZyTzqK0d7oIjT7xUYZZTwPX7WuU4Sf3jI5sVe1wbhk6X7HSHEm7U5RrI6N
         sytDd5yCm5ZeN8Tlr5oyp7YHVq1D0aZESlCWFFE8zPZnTgt5ef7ppEUWXufvlWanBKWl
         YDHyfIUY2QupyYfcKvuv6mrnmLd2A4nRWq7Xz9S8WjqjX72l07uQ8zR9Q0jH2ffcl9XX
         sfhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id v14si388563edr.4.2020.04.12.23.59.31
        for <clang-built-linux@googlegroups.com>;
        Sun, 12 Apr 2020 23:59:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: (from localhost user: 'macro', uid#1010) by eddie.linux-mips.org
        with ESMTP id S23991212AbgDMG73NT9ds (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Mon, 13 Apr 2020 08:59:29 +0200
Date: Mon, 13 Apr 2020 07:59:29 +0100 (BST)
Sender: "Maciej W. Rozycki" <macro@linux-mips.org>
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Jiaxun Yang <jiaxun.yang@flygoat.com>
cc: linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
        Fangrui Song <maskray@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Borislav Petkov <bp@suse.de>,
        Kees Cook <keescook@chromium.org>,
        Heiko Carstens <heiko.carstens@de.ibm.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4] MIPS: Truncate link address into 32bit for 32bit
 kernel
In-Reply-To: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
Message-ID: <alpine.LFD.2.21.2004130736410.851719@eddie.linux-mips.org>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com>
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

On Mon, 13 Apr 2020, Jiaxun Yang wrote:

> LLD failed to link vmlinux with 64bit load address for 32bit ELF
> while bfd will strip 64bit address into 32bit silently.
> To fix LLD build, we should truncate load address provided by platform
> into 32bit for 32bit kernel.

Reviewed-by: Maciej W. Rozycki <macro@linux-mips.org>

> diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
> index a5f00ec73ea6..5226cd8e4bee 100644
> --- a/arch/mips/kernel/vmlinux.lds.S
> +++ b/arch/mips/kernel/vmlinux.lds.S
> @@ -55,7 +55,7 @@ SECTIONS
>  	/* . = 0xa800000000300000; */
>  	. = 0xffffffff80300000;
>  #endif
> -	. = VMLINUX_LOAD_ADDRESS;
> +	. = VMLINUX_LINK_ADDRESS;

 The CONFIG_BOOT_ELF64 cruft right above it looks interesting to me, never 
have ever been used.  We have had the current arrangement since:

commit 923ec3d20eef9e36456868b590873ce39f17fe71
Author: Ralf Baechle <ralf@linux-mips.org>
Date:   Wed Nov 6 22:16:38 2002 +0000

    Define load address in linker script instead of relying on the
    deprecated and notoriously unreliable option -Ttext.

and previously `-Ttext' was used with this script anyway, though not very 
long, as the script was entirely ignored until:

commit 7a782968041ffc4c2d89816238e2f8ea5cceddba
Author: Ralf Baechle <ralf@linux-mips.org>
Date:   Thu Oct 31 23:54:21 2002 +0000

    Merge with Linux 2.5.36.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2004130736410.851719%40eddie.linux-mips.org.
