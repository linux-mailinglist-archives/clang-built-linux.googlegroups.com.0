Return-Path: <clang-built-linux+bncBDY3NC743AGBB74C2T5QKGQEG656FHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2502F27F4D3
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 00:06:57 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id a3sf1023395oti.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 15:06:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601503616; cv=pass;
        d=google.com; s=arc-20160816;
        b=RMKZXnlIZ68mVYM8riHAfUCbOjt+Nehjpdfue41IbyWNi/eEGR/eo2XGL4tMIRcWeA
         v3Shu90mlDEXMaFyHQ0n6iApezdeywTIwVhNAVMSIp6GvPE8LLGBywU+sYHXA0/dFHDD
         oWZWRSAunP3vPWChUEsqWEFQB2LSeWfHFNkwupN7txiH+vgLQzzraxCbXorC0cMbjbaQ
         hGBeEtv2KgYqNsXqKjs7aFuUI/IEOaGNPsnNYdGYvl0D29z1+Rts16mnvlapBQlehmDq
         DhxPDS1Khcyb4ybCo1NHj5Cg/kYtlKpuxOTNCbygfRAdBBxFeMcK6gvyPrh1fS5HsfZy
         DgbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=KDduRqcLp1rp1pN99DBfqIS0E2Z9WvuWYWceNQ0RqdY=;
        b=XgKtD2m1gaJrtN5FOwFW0cfeyOccNyeXgIDa51bBOlFadODS7ZnWMtp2sYw9/PZ3u4
         8uvBK5n7auqyKYfpIUgV4wewwI1kP++/N02nVx0iER9dPDtreeYkFHArVJ4SOvwkmXOn
         cSmTLV1s2GDZaqOuetEP6jNKoC0sMv62h1w9bOWNHWUDLgxbvAUtH4RXVq36t2Y1hTCE
         e6uqoOnqIl96ZhvFDocAZuGpdLQIzMQ52k186wxh5922cfA/gV4LsMACfhNydkXHyruc
         7Rq1pEY7xaS1WAM/l7oZKQoUR/J2SazR3D+DoTovUonbEghZz4P0/r8wp98cCHwJCkCi
         g4nQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.4 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KDduRqcLp1rp1pN99DBfqIS0E2Z9WvuWYWceNQ0RqdY=;
        b=TPH9s4DmyhbPwNWeIoh9WQI+KVhH26raX3mhtZDpsB+3gAiAjbxev1p2X+rVlHkQjB
         sZUn6TlW2PHI005kemluTGIyATymuGZJiEeSI9eIk74kAn8IEkXZNEkcXXjDWcDOtIqk
         AcxPSd341GikJkIQJcazHuAu81MN+YLrJenEcDUu9g2UfR5N6v2bep9+e9PyzzzKWKL8
         VCJ3UKCaL7kQvsmRLb+SZUCQPzt+BRtvUzH5R6CrtMw1/ceDaGxfgPWz4HD3epw8MVVM
         Pnkqk62RWRpSVFiQbmU805wuugsgUVJ3Ils/FnjtS3pYcI9flUDA8+yBgUczv8s/ZmI2
         T4Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KDduRqcLp1rp1pN99DBfqIS0E2Z9WvuWYWceNQ0RqdY=;
        b=XJzfrKoVzLezwhRF7Cde+CkSTlpGZibTVPKq/O0QqBjUZooGyAW3xzjOlbW6I6XpJp
         gaPMbizhioVaPqvyp7pwfGK5fIgFXsfYZJap5jtM1t8m11SpXXhfmNu9yuVFNv1WcLVL
         pq0RFNzSwO4v/4dD94SU/bFOtRS1KtO7WXXFwebN6qEvWDPwWbECqPODNn5b2tckOKt6
         hn7//YwEYBtE0z0U7SP8at2lgxe6f4KkV55j7+cyiTbCfU4v9pTYEOK3aAIjxfbnUBpH
         hmsIz9XFemVpYGjCJAroWV2smhz57+o/6/geh1VYOlqK5NAk4JMS8acoxF6dNEq0Ddhk
         sPfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532buDhpdtN8lvkEtEqGILzjQ/fko8ZGG9UZzktjg2/VkZcxXKdF
	cRNaFNLCcuzvOb5HkDDuh1c=
X-Google-Smtp-Source: ABdhPJzvhFzFgZsosf8X++F3G3cmXQ+F0dCuk6d9kgOlcG+fTmnGlBfU4a7IGJ3yvyPSyI5tYg1L2Q==
X-Received: by 2002:a9d:6a4:: with SMTP id 33mr2807660otx.360.1601503615870;
        Wed, 30 Sep 2020 15:06:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:459:: with SMTP id d25ls865820otc.7.gmail; Wed, 30
 Sep 2020 15:06:55 -0700 (PDT)
X-Received: by 2002:a05:6830:1d5:: with SMTP id r21mr3081905ota.244.1601503615450;
        Wed, 30 Sep 2020 15:06:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601503615; cv=none;
        d=google.com; s=arc-20160816;
        b=uKZfRK14iYHvXp3IabUEdX1KSGuEGa5h/xW2d+yYDr5QWcKaAeyhKYFsYtj5iw4ig+
         1Dpn60qjuPPSRnXGq7tNG5kbiB8bbLI0gT59RMB4+VOEMdmuizrHod08tpY2Ori5MwBo
         t4/Es02HvKnw3MaS/AjFQGsQncFRaZO5rWpB07m4CEr3AHSO5DL3NJYmPJ5+g/BVft9Z
         OvsKFqH5Z9hVI9JyiNXUUgRdFhoIS+wzxRVbD9DfMX98u5ByxHOI/2H99E0Go3Jds3Do
         hbbBpzwJK2CjFT8McHRqPC9qMPCQouqvSrCPTQxpyaG2vt2Hc56v1bOeRrCGIgKLmtCx
         +j0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=13DMw9whWeF1a3+ExlPkERKDUqNBt/PKNlRPnngwwF0=;
        b=inTQ3BdAMtgUBsLjjx86qLqLy8euGTV+o1rA+I86r/Z6asSFqLAiM454E6MpmPPa2j
         lupL5FHElXFQWjp4wjSpbYhkCW//ptFuZJWkSYf230/xknkatHU0LTt40pKNWcEFlB7U
         FxIft3Ee8M7oiuJo9+m+5JVZvH49pfMZVc9kTIBGNVR2jVSOVLPVrpDG/XjIaEiRBCeX
         2t5EIdEunV2s5GdF204Aih2DMzJskUVilxx+0EXYcYcnsZQkIFGaUVdj9vlTiF2S11av
         9bQ0DkNj05QzbB1uhQfwax3qrFmJ6YZFU1l4AgMpp7XDU6+RIqk6Mpd5GkwVK4B2I/xf
         QUrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.4 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0004.hostedemail.com. [216.40.44.4])
        by gmr-mx.google.com with ESMTPS id q10si232766oov.2.2020.09.30.15.06.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 15:06:55 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.4 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.4;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id B223A100E7B43;
	Wed, 30 Sep 2020 22:06:54 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:857:960:967:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:1981:2194:2198:2199:2200:2393:2525:2553:2560:2563:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4384:5007:6119:6120:6742:7875:7903:9010:9025:10004:10394:10400:10471:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:12986:13161:13172:13229:13255:13439:14096:14097:14181:14659:14721:21080:21433:21451:21627:21773:21789:21811:21939:30054:30070:30089:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: river77_3d14b8027196
X-Filterd-Recvd-Size: 4026
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Wed, 30 Sep 2020 22:06:52 +0000 (UTC)
Message-ID: <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com>
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
Date: Wed, 30 Sep 2020 15:06:51 -0700
In-Reply-To: <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com>
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
	 <20200929192549.501516-1-ndesaulniers@google.com>
	 <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
	 <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com>
	 <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com>
	 <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.4 is neither permitted nor denied by best guess record
 for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Wed, 2020-09-30 at 14:40 -0700, Nick Desaulniers wrote:
> On Wed, Sep 30, 2020 at 12:16 PM Joe Perches <joe@perches.com> wrote:
> > Use a more generic form for __section that requires quotes to avoid
> > complications with clang and gcc differences.
> > 
> > Remove the quote operator # from compiler_attributes.h __section macro.
> > 
> > Convert all unquoted __section(foo) uses to quoted __section("foo").
> > Also convert __attribute__((section("foo"))) uses to __section("foo")
> > even if the __attribute__ has multiple list entry forms.
> > 
> > Signed-off-by: Joe Perches <joe@perches.com>
> > ---
> > 
> > This is the current output from the script against next-20200930
> > attached in this link:
> > 
> > https://lore.kernel.org/lkml/0e582a7f5144a33f465978d97701f9b3dcc377f3.camel@perches.com/
> > 
> > It might be useful to run the script immediately before
> > the next -rc1.
> 
> $ ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- make CC=clang -j71
> powernv_defconfig
> $ ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- make CC=clang -j71
> ...
> arch/powerpc/boot/main.c:193:44: error: expected ';' after top level declarator
> static char cmdline[BOOT_COMMAND_LINE_SIZE]

The script does not convert files in

	scripts/
	tools/
	uapi/
	and include/linux/compiler_attributes.h

It otherwise assumes that any __attribute__((__section__
use should be converted to __section.

If this ppc file is the only file outside of the
listed exclusions, I can either exclude it directly
or add compiler.h to it.

You have a preference?

Perhaps these are also possible files that need exclusions:

./arch/x86/boot/video.h:#define __videocard struct card_info __section(".videocards") __attribute__((used))
./arch/x86/boot/compressed/pgtable_64.c:unsigned long *trampoline_32bit __section(".data");
./arch/x86/boot/tty.c:static void __section(".inittext") serial_putchar(int ch)
./arch/x86/boot/tty.c:static void __section(".inittext") bios_putchar(int ch)
./arch/x86/boot/tty.c:void __section(".inittext") putchar(int ch)
./arch/x86/boot/tty.c:void __section(".inittext") puts(const char *str)
./arch/s390/boot/startup.c:static struct diag210 _diag210_tmp_dma __section(".dma.data");
./arch/powerpc/boot/main.c:	__section("__builtin_cmdline");
./arch/powerpc/boot/ps3.c:	__section("__builtin_cmdline");


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel%40perches.com.
