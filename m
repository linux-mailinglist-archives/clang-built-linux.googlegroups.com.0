Return-Path: <clang-built-linux+bncBAABB2XM3P7QKGQEV4EIZSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id C85182ECF25
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 12:54:18 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id m18sf6387429lfa.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 03:54:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610020458; cv=pass;
        d=google.com; s=arc-20160816;
        b=OrP3SCfoWnz2gQ+MCzqSNiU53O65rD0gw4KQlFsjBAmGznuS2+wd6jLcAtOjVFMBhA
         PXlXgKcgcgnX8MD1aowj8mcA8Um6KmpxYEdiWIPy1OeKt8FM4XJZFFofKpmPOxNfX1Yd
         zTX+/MbNnPFMh+7CR7KNxNwB4E5xUswrtONv+vAK/ClJ01akmQWsGgnytfJSFjPSuYBq
         Bo8aLra+uJ3pa29lrRNbSZq07SqxxKIZw+bh5gvkCwEk+CZJsN4iihbhfG0BD1Dm9zQ0
         gLN4ELbMxa5fpgGMZgZSsOW97RBPXHGlH5maWn3pcP8mjvZser3Z/PgxqiiMm5khqn5+
         mNGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=PjFFUnZAmdS87sBtMNR9VHCeNh9T6GFOX8e50dDlxFk=;
        b=Eh36/guAmiDcWIHEB4srU2xtLARM5YpfXK0h6L7Qoz4muSoB6SkuhEj0JmNaPYH28z
         hF2O1VMp8mskBdcdNqWACHyMAVtsbgsQQB4OFbDz73i1Z0/azUiMBievgjjlv0z8RIW0
         n782twjeW3j0b8j3bviZU5+Kj/oVTXoBiHnjI+PSo9hv+AhiyYFOca5/3kH53cOdYf2c
         0RSZnCgA6PrcUpk7OmZbstKIMMpcqL38Nvwifz662chgzrgs/6d5CHaMfpLaoDS5pzM+
         BsYXXi8GrASKPYOE+X8rGMhwmsj7ULxm1w7+EiZL+3PUwskF0/aSCSKgQQalzeWJy1tG
         ybEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=PX7Idcsm;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PjFFUnZAmdS87sBtMNR9VHCeNh9T6GFOX8e50dDlxFk=;
        b=SJ2ezG+sO/zjr/PDhuvYEVF4B+29GL9LcyKhP6uzO9LFX1aqJAKnWpT8nibUGJVfJ7
         HnW+f1I3UTIf5qSJfMNMhT57fWftVKsav68pHFlEMBOROhaclfw4YhvWOwRYdRlTYik5
         RO5nUdtxCwXIqC9vU4Us2jXMUJv3BZ3/rSWJ3JNcC88RTPNAKsICHWP7JKUNPacFfwhm
         CTmA1znxawkXyzTHNt1PihL0cYV2JJrJ9ZX4Ny96v9BAziJeAiua1QARWufKZg7dVy/5
         +K0ePc2r/9/WgwtxPS4MgxmjHmJrAOPin238fKpP6YOmOBWXK0mfwbxJOtEHlzs3YajU
         +JPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PjFFUnZAmdS87sBtMNR9VHCeNh9T6GFOX8e50dDlxFk=;
        b=HcFEb512mszd0N3Av9cqJzXTU7pIR4ZJa7OA1csxqnfURDp3OCF1CECskdaYpt8ylj
         1ZYVku15PKOytekDDwHtOjt1EQ4oOawvcCyApm6D+tTY5o6GvZQ4ns8B6Y7zPD02tNud
         2Ivnkr9z/hsb5LYhD+jN1u656JZ14B38F4Q9/N3Bj/DEcc+/wQgjUr5S57DvjTKixzdA
         tDIA6HZ8VYkbWE3o5pbObRueMAnSP7KzSfenYuRE4kMwsy49mjNTUaJLPzF0fLCJWma1
         OxJpupHa5jqpVxVjaVRIZODWi7Fnm1aG1378tDMEBiDU9EEmzXPWJQ98RDX7fGvyw3SU
         31Lg==
X-Gm-Message-State: AOAM530JXGZHdyBn9UZuhMYqy4jfY/9SLS1bTXz/LsS6CfQ568/EyMKk
	ur99mKKekWYkb5Cu3B5j1FM=
X-Google-Smtp-Source: ABdhPJy4nweme3KgCRN+qkY6G59aqPOOul1tkQp8Oen1in5yDrFZLa6byil/bqz4fgs+uMF2QXod4Q==
X-Received: by 2002:a19:500a:: with SMTP id e10mr3626147lfb.193.1610020458416;
        Thu, 07 Jan 2021 03:54:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:810b:: with SMTP id d11ls1126074ljg.11.gmail; Thu, 07
 Jan 2021 03:54:17 -0800 (PST)
X-Received: by 2002:a2e:6e11:: with SMTP id j17mr3900893ljc.337.1610020457671;
        Thu, 07 Jan 2021 03:54:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610020457; cv=none;
        d=google.com; s=arc-20160816;
        b=iAUh0mFLcn7JsTQ4CYrBCt2qg95JnCJFzlViaalOvpWJhxI/rLLq2ZXKyHROMJepBB
         yNsYVKbUBLcYVQf+B6fMx53Zi7GM3l8Vpz3fhZ+FM9BsP8gFjxn9uatdqf8AoOM1CXq+
         IgQqVPDbzbYkleEeUy8dIvUYI28C6t2ftosQ9PTpa7yNlUpu+XyyRZGMjb8FcUZP/Jww
         Fatwaw0sWW1Toow4nIT2BVmYhgAPqxgRWW7fQPukrsCkUdkGGEyBOu0Hni2huhzfQEmC
         PQSZufct7G4e8e31Lnsg+NST6i+I2rZ8UmHdJt5bz8a4UOh38xY47woCTFDfAmmgzgwN
         n6YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=9oCj7QKLJWJNGcOnNqI17iIRyczWE6M4kFx9CTLO44o=;
        b=WKmy/e8oixrDJYn9yculMRj3hSq14ilX1Am9ggbZWRtLicXnecsOkU1MNrF/GkGNWW
         wP76gVVbNMQ5A+Doi2rVJfMMqBGfOzJ3byP7eeNp7d2QpAjfwLtPSnEOTFQt3xTwex3g
         sUew4b+GXGcUwjcHa5UasbtTLUtA2RZBMFm/ezn+TcZB+fO/xrf7LjrjmU4qUOstdnnD
         5SOSCE8FQtlXJAoUYpkzPF1O5MkWXtonNSN1GTjZYpTkomMkqO37UDhMhoQdP8QfaV3f
         KTJc+RG1TVEfWxkDbtjn5HQPI4+w7kIC4r+mWsz2vTGSv5tgpsvaMo98YbsmAW3cMnsP
         i4Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=PX7Idcsm;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail1.protonmail.ch (mail1.protonmail.ch. [185.70.40.18])
        by gmr-mx.google.com with ESMTPS id c15si343710ljn.0.2021.01.07.03.54.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 03:54:17 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted sender) client-ip=185.70.40.18;
Date: Thu, 07 Jan 2021 11:54:11 +0000
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Arnd Bergmann <arnd@arndb.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, Fangrui Song <maskray@google.com>, Huacai Chen <chenhuacai@kernel.org>, Pei Huang <huangpei@loongson.cn>, Jiaxun Yang <jiaxun.yang@flygoat.com>, Alexander Lobakin <alobakin@pm.me>, Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>, Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, stable@vger.kernel.org, clang-built-linux@googlegroups.com
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: [PATCH v3 mips-next 5/7] MIPS: vmlinux.lds.S: explicitly declare .got table
Message-ID: <20210107115329.281266-5-alobakin@pm.me>
In-Reply-To: <20210107115329.281266-1-alobakin@pm.me>
References: <20210107115120.281008-1-alobakin@pm.me> <20210107115329.281266-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=PX7Idcsm;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.18 as permitted
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107115329.281266-5-alobakin%40pm.me.
