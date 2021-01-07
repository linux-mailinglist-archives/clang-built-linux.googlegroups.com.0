Return-Path: <clang-built-linux+bncBAABBNEV3T7QKGQEGWKDSUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id F02B32ED089
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 14:20:52 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id q18sf2643145wrc.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 05:20:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610025652; cv=pass;
        d=google.com; s=arc-20160816;
        b=VeLI85VvzVlr05nDiiMOXChg8Ea2avfbN1dnyPQsw6s2LKSsV0EXFtk4WPuuxH2nPa
         ouK9YBx9RhFH3T+NtzoBStn32F/oEAJtnCjGUm/im1opZAjqtK/I/qvAHTQk3YVZObS8
         cZjuzHYvg5M9WBo/heGyjA58VHq1emS7wrU5M+Ut7Vr/x1jnNvbjvopasEMniz+6RJ6H
         Tkkge3Y5uhylOXYmHP4+LtOuKnTuZinvFLck/QFRV3LG1Ncq958f6VaG5ek09QJIYE+x
         e3l5YtdyQbwNtOXkCjgXumuxcdC3VJ1XZfCs3qusYmPYn5b9EAP7adCAztsXbGL6S3q5
         xjGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=J55Bk6/U9CRCqYaUvPqd980judc9yI6x3+DmRDkI55s=;
        b=il5kWFDtd2HYZFJKn9Ih8Y6Yjb5qii5vzFW6AGll0XdZWT/mG2dY/9ls9QISq7Qr3o
         1ve6fo6X2/2pJbeRJaOYWQ+LPfHgu0oejNxa2j1oBgD3jn03JvJ3Gnr6MYcn/GuRZXh8
         0kEZ0ulc5IoLK2WruM/jLl1RNRni+403ifLQFRevDI99vqpRRp8vf8Agifgx+/IOxQbV
         VFC9eBSB71y+zJ8/h5ePZXnCeQORBomFw905JV0vwvkh0TUcwShtJn/ObqEXEZhjv2AU
         nNNqsMvN8blvE6p+rUBVU9CpaDbHil9dG5b7FLz1+er2gdpLUr6JHEI3pQqBONhUhvq9
         gpLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=lrLPAOvw;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J55Bk6/U9CRCqYaUvPqd980judc9yI6x3+DmRDkI55s=;
        b=QIpvyhaAZC/diGDrlIdMRZcA8ECOGmn/ZvWqarCYanZpIB9o9SHMW0/lhXbTNkfBrO
         VJ78vp5ApZFrZ4d5vOE6F220AC0VYTptRlshBW4uClul/y5HrrJEcTNZ1xG5z2pXOibq
         OE1uYq3XIroApBuXc/YRQi27FvPyUFKjs+ro/qujjS2af4lR6/F4axzyp7Jv/aX7Ycyh
         Xis+lGbd5xR4TnPZHELqe3n8XUlsEIxJWGmnni7HrD/iqZEDWkCrBMFBvWiR4O415CPw
         OzPqQ7iQX6Bc0UETc1U6p+/SY5kH4oid+5mCc1OziEUN+pCQHb++S/1pVmKj7FNRacLZ
         Ge+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J55Bk6/U9CRCqYaUvPqd980judc9yI6x3+DmRDkI55s=;
        b=XnCpuVEvPRm7D6B6x2UO99KVOWrWq5iZRcBk2MVBUCWDZCyvU6T9ivQ/8tomcPTpgq
         IPdQkJBXeUxUWrPhfmC1xhpIb0OnPjvryVZB7OWhr/KyaD+liTODypQzi88rEW/61xKY
         u+Q8CtdIx8dmLz2soBV//SgKL9lrc6ROALCG+ijKzIm4QfA2qozTqSMAttpbnsB58E7C
         QVH3e1PdbD5G996vx9oHML2dqivQ9rLgtO/hIvRPuC5bQlSANUuAk08Tc9ZRraMmdrGz
         rtxJxvWtByzjkTmNcSqCloXNIimMZ+b6wsbK6mLKxSUfdUjCtvqnrLh/ba7YCc53xzBy
         F2Hw==
X-Gm-Message-State: AOAM530Am6V4LXfZ/bud6kinQJ8quSLjJDkjiduEI5bKQRE2mG2mre+I
	VSyKQ/nnJyoPlwyOMGa558o=
X-Google-Smtp-Source: ABdhPJzMZcLHl3ULgNsIE0IBCw5z6taSrpNSuNmaFCMqYo8e8ag1e+KMAp6S1/UL1YAEk9JdnOZeJg==
X-Received: by 2002:a1c:df57:: with SMTP id w84mr7972657wmg.37.1610025652697;
        Thu, 07 Jan 2021 05:20:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6812:: with SMTP id w18ls7335687wru.1.gmail; Thu, 07 Jan
 2021 05:20:52 -0800 (PST)
X-Received: by 2002:a5d:6cad:: with SMTP id a13mr8736969wra.275.1610025652072;
        Thu, 07 Jan 2021 05:20:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610025652; cv=none;
        d=google.com; s=arc-20160816;
        b=dxnKuF+PcOneL56xHRowMWHFjSeGdiIujvwAkyAOHcNISFO5Z9etKvgIcarRRtn7xr
         MReU7qS/lmR3NCSpCQ8QxD+ghk8i6PhoqhwpOLU+1C2FFn0Jq4GgnJSdMBNhkgj+gYr2
         ANnP9+0/KcORhJXSDPoVeFbsQEIWpqPwbKgCLfSj91leZzklz5bKziCaPJwf27iVcTOg
         cAKHgcJ2A1jzRiDbAeHPL8RlWToOZtgIYirJoQrM9wmxcCh5Upi1K1dGMUyLma4rUrHN
         Bgg7L3NRAhvvDQLZAiwYd0/FIR/PoNC0r6Cmilx/YlFnD1dGQf1XSQewstj1Rc+sQtsJ
         XjzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=9oCj7QKLJWJNGcOnNqI17iIRyczWE6M4kFx9CTLO44o=;
        b=Kyzv2ka/v1Fww2pLSBeEgVJZ8oE5Jt5Ze5JSCZocP2wqJNtIGZoXLYJOeFVhzoSaQ5
         mjWioxK/iNAoBAwGmMq+MtEIvAAC5M5F+bN6ZgHUNoHvK7tqq9/1ib3qpNDFOMkbryaI
         Sb9WdZgw0V+ytcyF3rVdVAz7rEDJ4WHOY9+lMmRNYdEhmI3qT756GvRMz7HXZvN/ziEZ
         mDgawiQCm2zR3uore+E8w5mkOUFpHG6vfaMTvozxUbNnkT0Ym8CCjIXxq8BRWEPx0qZA
         MlK4WDQ9OZWvtbgSEe9Mp3yapbHFGmlCJCBaDfMeIidZiFD6D9OLdsKQehr2BZKny6+i
         RWJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=lrLPAOvw;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch. [185.70.40.134])
        by gmr-mx.google.com with ESMTPS id n8si323183wrr.0.2021.01.07.05.20.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 05:20:52 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted sender) client-ip=185.70.40.134;
Date: Thu, 07 Jan 2021 13:20:49 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v4 mips-next 5/7] MIPS: vmlinux.lds.S: explicitly declare .got table
Message-ID: <20210107132010.463129-2-alobakin@pm.me>
In-Reply-To: <20210107132010.463129-1-alobakin@pm.me>
References: <20210107123331.354075-1-alobakin@pm.me> <20210107132010.463129-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=lrLPAOvw;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.134 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

LLVM stack generates GOT table when building the kernel:

ld.lld: warning: <internal>:(.got) is being placed in '.got'

According to the debug assertions, it's not zero-sized and thus
can't be handled the same way as .rel.dyn (like it's done for x86).
Use the ARM/ARM64 path here and place it at the end of .text section.

Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Alexander Lobakin <alobakin@pm.me>
---
 arch/mips/kernel/vmlinux.lds.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/kernel/vmlinux.lds.S b/arch/mips/kernel/vmlinux.lds.S
index 0f736d60d43e..4709959f6985 100644
--- a/arch/mips/kernel/vmlinux.lds.S
+++ b/arch/mips/kernel/vmlinux.lds.S
@@ -69,6 +69,7 @@ SECTIONS
 		*(.text.*)
 		*(.fixup)
 		*(.gnu.warning)
+		*(.got)
 	} :text = 0
 	_etext = .;	/* End of text section */
 
-- 
2.30.0


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107132010.463129-2-alobakin%40pm.me.
