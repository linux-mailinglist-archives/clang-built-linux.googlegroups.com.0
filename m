Return-Path: <clang-built-linux+bncBCIO53XE7YHBBHHM473QKGQE3NW266Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 010FE20CF07
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 16:09:34 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id k10sf10680503ioh.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 07:09:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593439772; cv=pass;
        d=google.com; s=arc-20160816;
        b=xxhlf9ReukfZE3KeuCxTUNQbQeN0ScTwnEBV9QLb6kBwKdR9cKtWVh4f8xI2lbv1Rt
         9WNeX9CUzqFotbARZyTTp9DnSz81zpH/0xQ2qH+ivOvBF6xn+iMfLLrdi55hr5Ar+XUE
         OcJRoY443e7G2yscno1YnhEQcrwfEhCbQQiy0uwGIUnX+nozbdzdR8rTdNuEjFwuUyf5
         pv3rXLtY/+ESbBXOwxXiKRHJXbQMlsUQFJU7+M/lAR0Bk42dohh01ZK6RYS511HNqZCR
         eayEMiaAqwz7xOjgfzjNDwkuzCwLeXzXXQksjtAW5aEz3M28DY86pa1kzw9c5WMyKEwX
         oYIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pWY9BqQvrV/8vQkhh8HmXzfProfLBOjUv5rbegvhEKg=;
        b=GQqhT6hjYFXn/YOKv8Q7f0/qYsoeSeB2+qejy4MY0e8sN4jxplj2vOIiotFJRj+ZjL
         VmWaJ4BtjHYTYeY9d7AeEMfdAyWiJazNk0CFjzlPUqX0mQILLLLu+Qm7w9+eDHHe1HNE
         1f7lPiGh5eJPdZWu6ZtRoCLtw88ALnqywZtULmju61GPvCkME6dVQrwh/VKNODjyIBCZ
         C8/T3GwZaOpMgtp3UucIZOCF/IIxS2pBU9leudqEmkftXY+bG63mFyMyJsTPiuvhEKeE
         HEAwQccKHwHj2+S7Vo/0o1obZne+zHk3bBedWANV78qdrzqrfrZbuoGVMPYsmErAgyix
         kRNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pWY9BqQvrV/8vQkhh8HmXzfProfLBOjUv5rbegvhEKg=;
        b=mHjG8qr45XpcGG1B195eemKP/BsfcOj3pvIhk8w4g/9oMuytYyQPJRIndHgzWztc3H
         B8MLFPzKaIK9FuxH9o+QNZXOXanxiELl7NnO2FwtFb23YyUV/vQueaNtICU/M9gASIox
         TJvY7FidoFtmvQY2y83xgJT52L/E/i74TaKlOl9xS09riWtJWQvAI1nFwWl/9kqJQ5nY
         fKauo5ezjOiRICbDwOU7ccjDRqd158572wVJrXfPqrilMfEvV6WaGdRf7Rz/anFwqsgd
         OTTdE7CBIWGYutqr/fyAWOQ3c/j4kJgqb2oJajcAo/5k+cUFyLcZrndJ1XWByinEKpKH
         UXuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pWY9BqQvrV/8vQkhh8HmXzfProfLBOjUv5rbegvhEKg=;
        b=cN3Cx9besazuEV5OOHBkM5mStRkF9M9V/25JoVGbVWLGIFJ4ofpSbxZyiMMbp3P8Bt
         JNtW/VVqH1j3hqP7SvpmFOcHmve+PbOTmWgS9dHuZrplziBHIgBl3wohnSoxdFUYhgJJ
         FJ57waXNTGfD2YIMIDtunACCQquLqlrcP1bbOytpGJYxhhtDsWlhYuoTgcthpUZ1BTHj
         qYMRM+kCPVcMUAQ9yaoL8WSzTNw02YP7wwzKC4TLbu/fubQVQjsE6U3Yo3IqhQr5+4QV
         GR6sLM4yJsC8IrsMPFDHHnvcG4XNhVgJziJfVP/+zEFqw1upk5cLTWeBkpYz1pLUXe4v
         Xy5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iHYNgqY61hRLKQE7I0xKP+i0tgn2qoXUMI2Xh+FZzL5lsbzeY
	RBnE3IgygXGVSlRFvlH3BN8=
X-Google-Smtp-Source: ABdhPJy5oKzI42NM8c1gJ7CrxaqQbHpJBYoN+Zqaf56lHG09kGuDKmI/8KzJjq956sqMYBoRHCEVdQ==
X-Received: by 2002:a92:cc41:: with SMTP id t1mr16908966ilq.132.1593439772339;
        Mon, 29 Jun 2020 07:09:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ab10:: with SMTP id v16ls4512647ilh.10.gmail; Mon, 29
 Jun 2020 07:09:32 -0700 (PDT)
X-Received: by 2002:a92:dd02:: with SMTP id n2mr10091659ilm.257.1593439772001;
        Mon, 29 Jun 2020 07:09:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593439771; cv=none;
        d=google.com; s=arc-20160816;
        b=DeldKHDSUVhcHQbTis7sR0pFAEk+8zhxwAf6TWF2URJ2X2KYPPeZA0nyBq7kd7ONQO
         kYioKbWazvV2wW8HYQRDfak1e23FGNmZyX8rk1bKeOGS35R9i3j7d+bN8zbweUEUrhVQ
         JSDSiqTQBINj9AkQkfdWvfZAV7x+s0EJwPPhYFq040pja1G7ybhfVRB9lVRyox5/R732
         nAjurpdJzUeUBB2Ekx5SbG8gg7mCIRGT+fB+72ZRIc3KsYw+/wLyY+xbDe08Irf15gNb
         FKQI6WebPGcKuGXSKKSeek6791uSh1345CnkVlGZXCdlGpNOewhMgInoKo3B89i+HD0F
         8Shg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=90hmM0+cj66pBf983gEiOYbanVa5qlEshIcjYoZ+yX0=;
        b=kJa/4hGqmeXdv2qYZnmSk7YNZejaqYjpkcVhIFSGKGHaHA/VVjPiJjeuSBum142kJq
         +htgS8PaReLzxcLgXKcaSNQ8NNFDaDgCofwApHLf3H3JRBG14gZZnqeGOoSd7jOUu92s
         /n/p2t/n8BKkcqVC0HCEu6OfRzbC7IqS/uwb2ouJySjk6BBjlufqAwuiTS53zr6urgba
         FGBoDgp98T8HYyoA9BXAjjj5QMQTSCPSBPSnQNFKz0MM2ouMkv+Qv2DrZ2DGDCdVV0V/
         xbvZFiRX/zJTfp2p+wapJpKXR7PuGfJYZ4u059xnDU6cJYxTBJIQo5GGccjLvIZztszP
         JT+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com. [209.85.160.195])
        by gmr-mx.google.com with ESMTPS id i20si1438iow.2.2020.06.29.07.09.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 07:09:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as permitted sender) client-ip=209.85.160.195;
Received: by mail-qt1-f195.google.com with SMTP id q22so6386527qtl.2
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 07:09:31 -0700 (PDT)
X-Received: by 2002:aed:2171:: with SMTP id 104mr9404002qtc.22.1593439771424;
        Mon, 29 Jun 2020 07:09:31 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id i26sm10741461qkh.14.2020.06.29.07.09.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 07:09:31 -0700 (PDT)
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
Subject: [PATCH v3 1/7] x86/boot/compressed: Move .got.plt entries out of the .got section
Date: Mon, 29 Jun 2020 10:09:22 -0400
Message-Id: <20200629140928.858507-2-nivedita@alum.mit.edu>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200629140928.858507-1-nivedita@alum.mit.edu>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
MIME-Version: 1.0
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 209.85.160.195 as
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629140928.858507-2-nivedita%40alum.mit.edu.
