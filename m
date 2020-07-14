Return-Path: <clang-built-linux+bncBCIO53XE7YHBBMFVWT4AKGQEZMKQMVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D2B21E5C0
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 04:38:41 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id u186sf12237119qka.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 19:38:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594694321; cv=pass;
        d=google.com; s=arc-20160816;
        b=q169/v9gesJIFkzN24uXzJ3Du2mWs4WoaBjE1FZxyntjF0H0L4GbAxCUf8GkubevI4
         eTV1NN1Cv89Lem6RSYBloOq38Ukn96JDhUgMpCAhRGhRPCh7L049r64Wzag3O+ypY0/7
         CwUgGyPM3o1r/CJu+4KKQ6lzFtGA1/VchdPgYHlFOqEyxmvSaZzRIElWww+PrH9IcxSy
         2L1jS7jrXLasV0fewKtDTBdNzxS4jkzLw6CN4/rjsfXb5rVHgk5OClXJ6H/2h0kIu63r
         pIErS3assfidArTD4Zy2J33vIS2Rbb6Uf/gHfNogkwKvmLGxRo9PaIoEw5BKb6Lcch5k
         rXog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=1xCO4KcTN/RpECN/jzBqrHm5ApVmdiV0fATwsMrBwCo=;
        b=aEFw8Ta9xGpg/TO7++UIfl0YmnUR7uvO0VNs0u8hDZUVdYk7IDvBawuLUXvKry14xA
         YgL1jdTo2qvQoHZ3MRa+bMcyE+ILr0Fi573tpbouaznt0OYesW1Ct5opZpgrySLStYRL
         HB67DGwHBedxod+wHWwlrBxBIZwRjinemgnIl3DUcsYNY1H8VKIhZplMyrezBL5nFWHg
         S8WQ2sOaAb0IsuY6IehFvS0t99jSgbNDmt1O4hKqqF93yDu2ZFLDrOawNZdj3tlw8Xu8
         Af/jZIM7bCFzslWcI9b3sqqVKYolGl5L6unaALk5rtw0RkTSSYoc6j5XCSos0zDT9Mf4
         73bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1xCO4KcTN/RpECN/jzBqrHm5ApVmdiV0fATwsMrBwCo=;
        b=SN8EH4Xj4ypZVKlAGU7ZeytHC36VB4wwmjcdxDKcc86z4aWV2mz60TJe7B7LHpvfN8
         GEEq1e3X83uiRv/saeCax6xsc8n2QqlYQoXGz2A4QGc3+KSGD6Hh5t/+TrGdjKnVIWB+
         /581LdQipY94wL9z3EyjrBv0bQNL1rnOqE0yVYQRDQqGlp94I4jfgbQJllS+Nclb8s75
         3m3Ifdil5zAGEANk7PykLXnt5TLwvOVFWDoBenXIgcByOMfDNrFDfM+2m2vAyYS3cHrI
         s7ClTJnFJdp7p5o/18eqaRZePNvaiDzLzf/kcxpdsSkWjhlYlEPzVHrLbw2tDdqi/Wks
         DSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1xCO4KcTN/RpECN/jzBqrHm5ApVmdiV0fATwsMrBwCo=;
        b=D3ebn5c6oskdykcNHKLMB6DLNkjL+fBJJb0G6C1ptpKJx0rkQddNRAEMllnvSsXD5b
         IoC9Q5nhlo3knkUwTPaa0/0SOY21NogB/ufVKheudfym1Sdf0Rz2MVyu2ARaGLGrDjPt
         vnULPsSNWfcp9ZUWI2P6XNwDac4+3/zCMIaaFFNh41vaYGEoAtYwbprrsCkYDsT1lQnA
         kYWfDSaKPdMxmBmN8io21OWXcS0D/XMnc1dc5V9dtofx7Ntr1Ctwnrbd0HE1Wrpx+ZIW
         OEzzTHzKQ6qiekyuIInV1yxH99Iw1ETlWcsxCZzOwKIjcjSafhLEhntTzKGJsVvVKNHS
         KR5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZOuxRKV+9PvU37YXEQMH0CuoYybWpDjFf9i6opyoRCVcL3eg0
	iNuuS9cIDwsIhl+qQwswrFs=
X-Google-Smtp-Source: ABdhPJwFIB4NCQrUdozqZEfKhPEsjugDPIkZqe1RvuXmKDix8BVQgMOKkRVMjcO+c2VqyLrs6Ik/Jg==
X-Received: by 2002:a0c:e048:: with SMTP id y8mr2456735qvk.11.1594694320791;
        Mon, 13 Jul 2020 19:38:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3612:: with SMTP id m18ls7393541qtb.9.gmail; Mon, 13 Jul
 2020 19:38:40 -0700 (PDT)
X-Received: by 2002:aed:35b2:: with SMTP id c47mr2532911qte.324.1594694320290;
        Mon, 13 Jul 2020 19:38:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594694320; cv=none;
        d=google.com; s=arc-20160816;
        b=bDGgBHwHLdaqBxEOBOk38yT5Gkk2rhD5tK1uBiXd/8XRkkDKGA9QLqHlYJ2tJKd9Ek
         Y5dHvEE3efDl0Cm0iR1mSFytoUGc365gcod+O1uv0+DOQQrjMaHSM7Oo1SeHZzZW/AAr
         s/2SkE6TNGTLnuJ1BfKaMElN34reqifZxXjAk8oDK22vpbanzzsjzOFQD1RMfCRSvEtN
         RQeP3YpIHEMLXKNTlGeDqdE206mbZkri+o670GC7QZO8o/ORFaWoA3yc0jTUu4IsxAZ+
         h2bG+rdZK/bk2lcVIpuNl83ocp4H4GxB99ipw2jfiJ6AtX5IuBRRQkZbzkZ2l4H+HNeJ
         VJFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=RhWnzCqvgTN++G31OGgg9qNDvvhiuki5nvpw8uOP67s=;
        b=n+1EVPBa7rXQOe/Xik7XbbOBehutn7CQO42ciVKTar3HRtOO1Xhtbx0w2v0eqVfXGO
         6YzGTQLbHIJZ2tZggWa8TBk6bvuEoRRHy+EBf/bveXtr6cYjpFkesufXAFW3ZrnA3Ing
         aD+k4aQjncknTcZba4sseCfFir6XBibCthPC1plhjLHIfkiju/3cEULqIheiGU1/dLwC
         eCtYAHfTm0g5BGdSF0cTCOf1RpdNleo1GvGbeePxwBZaBbRwZYC/yp0uuxLxleEj4i3j
         BttZL+m99srFN32ocU8vEXC5KfqncQoRecfrs7V9nXoa4xS/0JC5vQXzCeC3gLLdqaz4
         fMqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com. [209.85.160.193])
        by gmr-mx.google.com with ESMTPS id j9si1001014qkg.6.2020.07.13.19.38.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 19:38:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as permitted sender) client-ip=209.85.160.193;
Received: by mail-qt1-f193.google.com with SMTP id k18so11730164qtm.10
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 19:38:40 -0700 (PDT)
X-Received: by 2002:ac8:4714:: with SMTP id f20mr2481897qtp.141.1594694320024;
        Mon, 13 Jul 2020 19:38:40 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id a22sm21046291qka.64.2020.07.13.19.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 19:38:39 -0700 (PDT)
From: Arvind Sankar <nivedita@alum.mit.edu>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux@googlegroups.com,
	Ard Biesheuvel <ardb@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"H . J . Lu" <hjl@sourceware.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/7] x86/boot/compressed: Move .got.plt entries out of the .got section
Date: Mon, 13 Jul 2020 22:38:30 -0400
Message-Id: <20200714023836.2310569-2-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200629140928.858507-1-nivedita@alum.mit.edu>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.193 as
 permitted sender) smtp.mailfrom=niveditas98@gmail.com
Content-Type: text/plain; charset="UTF-8"
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

From: Ard Biesheuvel <ardb@kernel.org>

The .got.plt section contains the part of the GOT which is used by PLT
entries, and which gets updated lazily by the dynamic loader when
function calls are dispatched through those PLT entries.

On fully linked binaries such as the kernel proper or the decompressor,
this never happens, and so in practice, the .got.plt section consists
only of the first 3 magic entries that are meant to point at the _DYNAMIC
section and at the fixup routine in the loader. However, since we don't
use a dynamic loader, those entries are never populated or used.

This means that treating those entries like ordinary GOT entries, and
updating their values based on the actual placement of the executable in
memory is completely pointless, and we can just ignore the .got.plt
section entirely, provided that it has no additional entries beyond
the first 3 ones.

So add an assertion in the linker script to ensure that this assumption
holds, and move the contents out of the [_got, _egot) memory range that
is modified by the GOT fixup routines.

While at it, drop the KEEP(), since it has no effect on the contents
of output sections that are created by the linker itself.

Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Arvind Sankar <nivedita@alum.mit.edu>
Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Link: https://lore.kernel.org/r/20200523120021.34996-2-ardb@kernel.org
---
 arch/x86/boot/compressed/vmlinux.lds.S | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
index 8f1025d1f681..b17d218ccdf9 100644
--- a/arch/x86/boot/compressed/vmlinux.lds.S
+++ b/arch/x86/boot/compressed/vmlinux.lds.S
@@ -44,10 +44,13 @@ SECTIONS
 	}
 	.got : {
 		_got = .;
-		KEEP(*(.got.plt))
 		KEEP(*(.got))
 		_egot = .;
 	}
+	.got.plt : {
+		*(.got.plt)
+	}
+
 	.data :	{
 		_data = . ;
 		*(.data)
@@ -77,3 +80,9 @@ SECTIONS
 
 	DISCARDS
 }
+
+#ifdef CONFIG_X86_64
+ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0x18, "Unexpected GOT/PLT entries detected!")
+#else
+ASSERT(SIZEOF(.got.plt) == 0 || SIZEOF(.got.plt) == 0xc, "Unexpected GOT/PLT entries detected!")
+#endif
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714023836.2310569-2-nivedita%40alum.mit.edu.
