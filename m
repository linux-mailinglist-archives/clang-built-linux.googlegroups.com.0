Return-Path: <clang-built-linux+bncBDY3NC743AGBBU4F2T5QKGQEFLSMXNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3F627F4E3
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 00:12:36 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id q11sf2797874ilt.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 15:12:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601503955; cv=pass;
        d=google.com; s=arc-20160816;
        b=WGLDFIGeZCEyYdU8BEIfwT4t1VLphQjShhpIfCvbLGVEL/vP5PtOlX3i5kA7csyaIc
         JjFTiKvXIS2gqRmepXhwHfJq5LTIB0yIhBX7D3pHht48nWRS05dbMZliEuP+FrDdcT8u
         B3517kBRg07hgd02P6f46lPoNClg00vIV+Qjf3SmDsU9TOFIa/bjWD8Lk6qyvq/lv6Bu
         cPckQlge7UP/Qgb6FsogvOpHgg9YjYYWj6GU3DpkcbQt8XEe2kyV4X1t9SMU1QEisTHg
         VJUsb2zMk4VzQeAMMpD8euV7ZiP81WYq7kUnBBiD9tRSk1XydvjmQQhaUj6TM/7Iijiv
         IAJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=FuRozHJ51pH42ePOzIByrqx+XgyDF/Y/028/GY/Adiw=;
        b=n/3ivIDopbdObH408sgwmonDZGJd75/nTVKPxir4D50jmy3VrdO3Ewr9ay5KdMR/3s
         Zund3KiMcVoUes2mSII2QlgoCX0z5/Ju7RbcaQw8653tQqBAKSBPHsESb0h0vPJekaFp
         AqVOGYQOhNmSc8I8sPllwrqdTzOs6kggrmdOF41oFnrLtESKO1PrSPHCpRx+FgFUOezv
         hNc9qEord1Dm0qIUYurRroDO5EAKPn8KFyKHD9qUqMi7fLYe4927RXupTVpFBbmYv7rQ
         ro3HBphpjWn1eRfBVWKsqNrHM1KAuRSpe3nI32h5Q9b9+glptj0RN2U/AGz/2qST5hHf
         oEDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.25 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FuRozHJ51pH42ePOzIByrqx+XgyDF/Y/028/GY/Adiw=;
        b=LuUGFsEkcV8undtfhewbcoP2aiSCVLXP4zSJ/7JieUajLAt487Kun3QN//iNvfcxUb
         SD20oV+6mX47Wb3rysL+pfmvF+02lyVDWBWKI0KCS/k1Ea1af6I+qENKRWAHNwBtRojn
         my7QdVZJ/7RX4fP3tmPe/UAr+nrxCRodR0nq9T5d4grkpX3t68NyyaSLvMXZLigD1Cui
         j6oRV9dbuqndUue8ohjnlsVEVrIlCNySNT+VJCVaLoZJm4qZt0arAUKfhf0M8E5jvjmk
         apsx/qXZS2Z6ZT04UgpC/0Xp3q1Co2ldKKR8btbExiDjO0snpg9FSyHmuc0vc7mnnPA/
         E8ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FuRozHJ51pH42ePOzIByrqx+XgyDF/Y/028/GY/Adiw=;
        b=QFVwlzd4BDQ1Fg3NopgnUr1pzNetDMWH2D1sUKqd5fkZFPebbiO0Jylbo3I2hjLZmg
         ejrp9tBdN0rFzThqd1HMLcsHXXGgChFyuiy3XZVX4++cNV8cBSFjIVbvbE4siiWlSrdI
         WiTE5G1VGnLhMUJ6UOOHjU4Frbgdr1D0rc7QxPLhR6XA7f/GQd3xEKU3G53dGI8loIEJ
         Un+R9xcKx1u1/rv9ETMiW3VtlzQiLT48n2VPmwwPO6jZg2v3K4uSwV4IaH3LEIQ03Iut
         Qry1Wz9z0rTy9ux6runw5SGih5cwgPl5bdvi1DcO55z8UJliQBpcMBJ1wQn387l91aSR
         8X2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Blb50kJeqj40vzDVdk9zK+C88rA8VANHheShEjYVcRDo6bAqz
	tJ47q3/8exjQHmev4Hiuzcc=
X-Google-Smtp-Source: ABdhPJzngQdZ6MiEfqv1EydL9DLQdHc/pl4YuvfKKQMlZIKIPSYZDuWTJyKphSXImITiys7OAXQcLw==
X-Received: by 2002:a92:d48b:: with SMTP id p11mr49296ilg.69.1601503955520;
        Wed, 30 Sep 2020 15:12:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c9ca:: with SMTP id c10ls403379jap.11.gmail; Wed, 30 Sep
 2020 15:12:35 -0700 (PDT)
X-Received: by 2002:a05:6638:25d0:: with SMTP id u16mr3789737jat.0.1601503955139;
        Wed, 30 Sep 2020 15:12:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601503955; cv=none;
        d=google.com; s=arc-20160816;
        b=vNdJ2NoRMi8w431idrSj+6bxjDsGYcl4UJ0NAmASm/dYxLSfxHp13TPC7ho8IBaa+F
         fuk1oEQbtWBP6btbZH0qdsA042PY7HRTgjLpIUUm13fKUZcM/efDfz5ewMkJRTgNVhg/
         zTc9f3o5Bj7mXE78Ch5DxIjUEUWazarRPT9GHdRCu+fDQ2nw+1G9CyL/TMYTy/eh73RD
         bSBJqfHy+osuuxYfSXrOfYvJVIkM+EKWkkDhMndgRGRSVdlgT1iEaZl+CgdBaC+o1Ged
         0T7J2gyu9XoIXxkwTtGszVKDZtuWgKwLTvUbPUeS0MkeksnRHNDeXt3EO3IB1UmpoFRs
         w89w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=yR1m3EI2sEJw91Bvl60PiYqcCL3fglAVETxmej5c1BY=;
        b=A9MoIdWthT2WK//Py9Cc1zuVKgKQ7kDJC9FGFwB4frONCTQWg/ExkDPRrv0ChCVrnZ
         Bnl3RdmrKVvzs2eWQj9jr1X4OCWGYqLjcIv6yb86j0hbRI0UyfAiKmlERYnIEB89Ar4H
         Dr30vhK56/TmC1nwEvScXLaroaRPH/fvjs0lIxpIOTTs/BH5z5GkDlS6uBgrA8iXnDtt
         h9xbkBXfRAe2PhmUnC6wFUCUgE3dMYQcb9Hk+vPVGy5/DvksG1atIWeoOHSLHEy71syR
         u4gxXN7UnvOY56h2cBB9pz+26gXKSvajz1k3RltMs5AMiUwmQxMDKGrigcmoyidPE2Xi
         1itQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.25 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0025.hostedemail.com. [216.40.44.25])
        by gmr-mx.google.com with ESMTPS id n14si57572ilt.3.2020.09.30.15.12.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 15:12:35 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.25 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.25;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 92DD9837F253;
	Wed, 30 Sep 2020 22:12:34 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:857:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3350:3622:3865:3866:3868:3872:3874:4321:4384:5007:6120:6742:10004:10400:10471:11232:11658:11914:12043:12296:12297:12740:12760:12895:13069:13255:13311:13357:13439:14096:14097:14181:14659:14721:21080:21433:21451:21627:21773:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: spade98_570bff827196
X-Filterd-Recvd-Size: 2684
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf02.hostedemail.com (Postfix) with ESMTPA;
	Wed, 30 Sep 2020 22:12:32 +0000 (UTC)
Message-ID: <a17099ea2a4c673993a8beafd6cf2915006c9074.camel@perches.com>
Subject: Re: [RFC PATCH next-20200930] treewide: Convert macro and uses of
 __section(foo) to __section("foo")
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, "Paul E . McKenney"
 <paulmck@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, Mathieu
 Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan
 <jiangshanlai@gmail.com>,  Josh Triplett <josh@joshtriplett.org>, Kees Cook
 <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
 rcu@vger.kernel.org, Clang-Built-Linux ML
 <clang-built-linux@googlegroups.com>,  Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>
Date: Wed, 30 Sep 2020 15:12:31 -0700
In-Reply-To: <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com>
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
	 <20200929192549.501516-1-ndesaulniers@google.com>
	 <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
	 <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com>
	 <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com>
	 <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com>
	 <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.25 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Wed, 2020-09-30 at 15:06 -0700, Joe Perches wrote:
> Perhaps these are also possible files that need exclusions:
> 
> ./arch/x86/boot/video.h:#define __videocard struct card_info __section(".videocards") __attribute__((used))
> ./arch/x86/boot/compressed/pgtable_64.c:unsigned long *trampoline_32bit __section(".data");
> ./arch/x86/boot/tty.c:static void __section(".inittext") serial_putchar(int ch)
> ./arch/x86/boot/tty.c:static void __section(".inittext") bios_putchar(int ch)
> ./arch/x86/boot/tty.c:void __section(".inittext") putchar(int ch)
> ./arch/x86/boot/tty.c:void __section(".inittext") puts(const char *str)
> ./arch/s390/boot/startup.c:static struct diag210 _diag210_tmp_dma __section(".dma.data");
> ./arch/powerpc/boot/main.c:	__section("__builtin_cmdline");
> ./arch/powerpc/boot/ps3.c:	__section("__builtin_cmdline");

It looks like all of the arch/x86, and arch/s390 files are fine
but both of the arch/powerpc/boot files need modification.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a17099ea2a4c673993a8beafd6cf2915006c9074.camel%40perches.com.
