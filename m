Return-Path: <clang-built-linux+bncBDB63H54RYOBBWNBUHXQKGQEVMDJZ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DE91138DF
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Dec 2019 01:35:37 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id q16sf171438lfa.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Dec 2019 16:35:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575506137; cv=pass;
        d=google.com; s=arc-20160816;
        b=lDunYOfpCGx4EzlZeqqAOJOP/gSYLUrbRZ9VXl4PstkTYHnuXJhtfh0IRtd6bBKMt/
         mZhXrkresrhYtfxqVZDEB3p7T+XDif4OX7UIy7PvM4AWtKGfYkL9qA3b7geVar6NrNax
         I+gQh5zPw14sn+kU3ZpVLb8zAuWjHGVgdF5j2DbjTc2rg7aQIdRrP7zC0jLOu/F0nIR7
         caNva35DWZx1QIpbQkeMfbPnXUNMS92y3xLDZVsaEZLGl7/tjSIoXn9OwlQh8ymeWvth
         cbDLAsfLYYuLSekIwjRMpRlnxGlf34zEuRLvYCT1MKEkuIlXb1DTJiFJ2TIPoDvWnq7V
         ZrYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:mime-version
         :subject:references:in-reply-to:cc:to:from:sender:dkim-signature;
        bh=xwAvoSW0bXJ1qqO/6oiiK+UN79wNDVLw6Go6MixPYcE=;
        b=hS2heVflz9zRFhCmheriQA+KS79jO+o/ODQqY/5VY/Lp3vjXGj5iUGicsYl/j38MH7
         zggDRFNGsqxnjaZYiONvRqRYss36nSEGF7aOu3BkTbVcwGwLQXd709YQChAZSsbPCLuH
         Ixs1eBikM2VOauWbtTaMofda5o/mumLafFCk3TAhApDibaDLOtdzgjRuRzpx9MbeIkx4
         WBRMTa9NaVVuTRaQGcKske433o6EQCNWeiQtKOp48j4mWqcUAgNRxjZfmAImFsGwwMbu
         +N0e9NXnDinHPbuwovQS6XbcKQXw0DCOc57QFEd9Ujo/R9Ax2uOjtvfRaUk0kafSp9p2
         INLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@golovin.in header.s=mail header.b=LrrxH9kT;
       spf=pass (google.com: domain of dima@golovin.in designates 2a02:6b8:0:1a2d::610 as permitted sender) smtp.mailfrom=dima@golovin.in
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:in-reply-to:references:subject:mime-version:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xwAvoSW0bXJ1qqO/6oiiK+UN79wNDVLw6Go6MixPYcE=;
        b=HHOnACr/dK2V2YrIhPmF+x4EDTkaF/XubcFRBT43TtYA6QsiprQZE2xnwtrsvomKcJ
         WUaYGe6AIRZ2aLAke02QhCZj9BfHL9FnHZhaM7dVYrXnvp+E5IgygFz4AlKJMIpGwZeu
         x5l4pJR3oT54DJ2S0+d/jYEwCzHEhdtAIQTfQkvHrMrFeJF4d/LWa04ybAWLciwKNdO2
         P5p8e1OdE3Xqvx4Xly716yia1O39mnY+N0ZWj2CLfdYprLWRJS6qIwPeXZic1pwKNSqN
         vhruxCAA58OfM83yINhLgQdFyihiKOl3CR241LvElsCOgjA4s4az+wnSgs2AZuONR+gU
         pYEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:in-reply-to:references:subject
         :mime-version:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xwAvoSW0bXJ1qqO/6oiiK+UN79wNDVLw6Go6MixPYcE=;
        b=f8MzhuiH8WFPbUto/Q+x/fHzkO93+vJRDPZnFQ3NIBpF8jbWqglmD6aqteKqOB/9Dt
         Yl5brnjG+wlJOQt5ZbzsdqaAe8KYLT0CgDjT+42PnWHTEkqOciRlEe+0zqSDC5o6nyZQ
         LlWw5gLdNfFakLO1YOHM4w/3pqhymGpuAr9G2j9uZBDayu4liXF6DNeTZcAuWW6KGOaz
         Sqh/13AcxFHD2DQjex6irAJXtmnu0xDuq18vkGrAwdFhDE/m7knu/knEYruW6MiU1S66
         owsRT2fk0od0GNZyFQmdTqd11zqQnqXQetGivtbx8MYVv9nJzYi/xpB0xR+zJfMV3h4z
         kzSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWZLGoBCckUiGe07I2LeFnoHPWycWtuH3TKTJHmQcyZojcsypo8
	1IoPeLiJoXT72mEej09FxBA=
X-Google-Smtp-Source: APXvYqz72GT1x806FIDNsKfd+vc9lvixmYobTxEGTNR/KBSJBzll3yLy5mIMQ2TogoH6CHHiRTSNig==
X-Received: by 2002:a19:5e1b:: with SMTP id s27mr2545062lfb.127.1575506137271;
        Wed, 04 Dec 2019 16:35:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:234c:: with SMTP id j73ls115332lfj.0.gmail; Wed, 04 Dec
 2019 16:35:36 -0800 (PST)
X-Received: by 2002:ac2:424d:: with SMTP id m13mr3593163lfl.13.1575506136736;
        Wed, 04 Dec 2019 16:35:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575506136; cv=none;
        d=google.com; s=arc-20160816;
        b=B2GOhusedlxsjLIvSmYusG2Qhn2zLSX0XnKhvS2Lyw55tnUdp9zSCgf538XlPtgZpL
         Cqp5Gk9TXzxhnoYRzAgDP+qcOW9m0MT24DOqxrfiaRYYpf3h1ax3aOP5wX72f6KeKHTh
         aYr5Umh5jH51TpJdr6XTRj6PIKbqVucCa4L/1kLtMgRM/SXgkl8+pJ3dUI24H51cBNis
         uwpsFg8wr4viRQgQ7BlWMQQyedkL6UXjqzqtgncGteOGEAWkf6R3auaf4hOTpKuWeGnH
         i8+HO+/U1MHDCzouGu7vsNZ52u+dmb04Sz3Am53wm1Mt7W3Qb/tLVbsX+EvlrhU10t3T
         4YCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:date:mime-version:subject
         :references:in-reply-to:cc:to:from:dkim-signature;
        bh=KcwlUzbRLSEXP3fkZW+9vXekKTFgQUgEhi8+Nn0UFH4=;
        b=MCCuwLPj6D0tJA1KA1OjxjUNW7B47bK2cjX4vEpjyU4IAoj+3dQxfDZjpMcsnQl0/Y
         /uePIHmUb54fAc/qEYbQcHWRlYRuGAnY2HbCDYoPtjthaoMpjS7wPK9RcmID0H0AMgsX
         mfUFnnM1HCs+oZCUs389vnU6fL947WFUzE/xDhJ+cmWnoEmUJtefxbtodOiRYotUVLhb
         Nvegz5dJQuKkohN8gfFenXeRt+leDiA13mn1bdCAqUd1V6Pxm4dZIWioIP3Nr+Z3nalE
         QkjJD3jyN0gRNKLMPIA2WkR5ouGT/rXMxJO/gUBJX6GpH8JZXZWwCmWADIPZ3jbHGtre
         475Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@golovin.in header.s=mail header.b=LrrxH9kT;
       spf=pass (google.com: domain of dima@golovin.in designates 2a02:6b8:0:1a2d::610 as permitted sender) smtp.mailfrom=dima@golovin.in
Received: from forward500o.mail.yandex.net (forward500o.mail.yandex.net. [2a02:6b8:0:1a2d::610])
        by gmr-mx.google.com with ESMTPS id j30si572965lfp.5.2019.12.04.16.35.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Dec 2019 16:35:36 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@golovin.in designates 2a02:6b8:0:1a2d::610 as permitted sender) client-ip=2a02:6b8:0:1a2d::610;
Received: from mxback2q.mail.yandex.net (mxback2q.mail.yandex.net [IPv6:2a02:6b8:c0e:40:0:640:9c8c:4946])
	by forward500o.mail.yandex.net (Yandex) with ESMTP id 42355601BF;
	Thu,  5 Dec 2019 03:35:36 +0300 (MSK)
Received: from localhost (localhost [::1])
	by mxback2q.mail.yandex.net (mxback/Yandex) with ESMTP id x5LXQ1LEL5-ZYMKub2X;
	Thu, 05 Dec 2019 03:35:35 +0300
Received: by vla1-3991b5027d7d.qloud-c.yandex.net with HTTP;
	Thu, 05 Dec 2019 03:35:34 +0300
From: Dmitry Golovin <dima@golovin.in>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	H. Peter Anvin <hpa@zytor.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Bruce Ashfield <bruce.ashfield@gmail.com>,
	Ross Philipson <ross.philipson@oracle.com>,
	Ross Burton <ross.burton@intel.com>,
	Chao Fan <fanc.fnst@cn.fujitsu.com>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"tony.luck@intel.com" <tony.luck@intel.com>,
	"fenghua.yu@intel.com" <fenghua.yu@intel.com>,
	"linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>
In-Reply-To: <CAKwvOdm-bhuJMRRN3tyNdb88+_TFd4m3b-7gX0-91VG4djzp+Q@mail.gmail.com>
References: <20191204225446.202981-1-dima@golovin.in> <CAKwvOdm-bhuJMRRN3tyNdb88+_TFd4m3b-7gX0-91VG4djzp+Q@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: kbuild: allow readelf executable to be specified
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Thu, 05 Dec 2019 02:35:34 +0200
Message-Id: <23883331575506134@vla1-3991b5027d7d.qloud-c.yandex.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dima@golovin.in
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@golovin.in header.s=mail header.b=LrrxH9kT;       spf=pass
 (google.com: domain of dima@golovin.in designates 2a02:6b8:0:1a2d::610 as
 permitted sender) smtp.mailfrom=dima@golovin.in
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

05.12.2019, 01:18, "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>:
>
> Grepping the kernel sources for `READELF`, it looks like
> arch/ia64/Makefile makes the same mistake. Would you mind fixing both
> cases in the same patch (v2)? I'm also curious about it's use in
> arch/ia64/scripts/unwcheck.py, and scripts/faddr2line. +ia64
> maintainers and list.
>
> I think if you simply remove the assignment on line 17 of
> arch/ia64/Makefile you should be fine.

Perhaps something should be done to NM on line 16 of this file as well. Also
found similar invocation of `objcopy` in arch/riscv/kernel/vdso/Makefile.
I think IA64 and RISC-V changes should be made as separate commits.

-- Dmitry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/23883331575506134%40vla1-3991b5027d7d.qloud-c.yandex.net.
