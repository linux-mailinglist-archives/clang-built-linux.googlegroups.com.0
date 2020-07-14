Return-Path: <clang-built-linux+bncBDTIRUHU4QLBB6UBXH4AKGQEH374YQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE5C22010E
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 01:34:20 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id g85sf97657pfb.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 16:34:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594769659; cv=pass;
        d=google.com; s=arc-20160816;
        b=auo9vJTFXOzhLjWGkvRVSuctN/bfDlk8evTNZrsGxsELIdj5p7yA7hDFWZ27q7VMb9
         av9wCxOS7CiPzHjZEmVJjel2Hn8ZRTbUpVEYokioYpzkjkiDtoyHDs90U2BWHP0HLzgz
         0o0/dh9weVpJI19c8S20psCcdH50Di/+pHl1CcW4G3CK/8h3/vOoUcqy0xnukHGMLMgv
         +ugC4o/MLybEC0qmhr4cthn8TGpV4Wt7uPyViVEkbEV38XJRvYY+WEJVpMrAs3e2SINj
         ysj4gdJheOw1oFhW9jC+AoewCHgXYm+7nt/SdC653NdoHrx9hId+KuHnueygyQnMBoZl
         FrCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=ebpwCreeyblA+QovM5Jn5vO1Ic7o/RowsBTk+FqdShs=;
        b=QNUf/tykmhEbY9TSjp4VEnnXPlNXSSWVJSR/FflH0iE7y5x+fUqkiAmeDegd6bWTWd
         XO8pGDv1IqzhqtawsrXejrqOfht/fe5ds2XmTHUI4CvsfVmu4WvPWdumt2IUyxy/R484
         IxfflRrl0q7a0XkVt3KCe86fQMj6zM0MJEbWLctqEdd2RsAgBuxBZYqu2/vGicZ18EDb
         1c5h73e4aO0BTHMtra9alyzpaeRVlzCgVi7KS5Qk6Pv5wYnAxg8Q/2GzseZrlOFpi6is
         7NhNRGlQfOXMBytE+NnQfzcZjU7ScTGosQTgXvGNwPhVx0YTg6fOA4iHvxdOf76ju/Ix
         jBXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xe+ngmM7;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ebpwCreeyblA+QovM5Jn5vO1Ic7o/RowsBTk+FqdShs=;
        b=jOuL0Kw1cgRgLqkukOiRHvspHZb4sLzA1MfiTJ0UeVgjjDN4NGFx/nmXVG87DdicpM
         vaCTZ8quUZ98k6nqxRYKDUlZQA7vPa3k0Nm3dYTwkxeRo31XWQz4Q0aZR6lh3i3CZDF0
         ban7XW08AiJ+sK7+bNNHMZWNtyddcliRV0ZZpcW8fShUF/4BAW5xph688g3HSfFcqI7I
         gwbLhGtnHN8B4OjEFklLy/ayet0KcOYFE3UYOThE8V3QRphiy/EbRvKlCqfGF8Io7uo2
         j6w8VVGtU9S/MMsv4G6v3T/yw1ZNIkcm6TEgH5RpBfnxHOK5edrbP1aNZGwQC0vIvT4b
         mrwA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ebpwCreeyblA+QovM5Jn5vO1Ic7o/RowsBTk+FqdShs=;
        b=WCNixxGpLpg/Wg2slvefkFjM2VKO/haxRAj9wHcDDzIEgIsz7LSBfrmwXTZG6Py7eV
         25M/mVrYaGf3/83JnQFAoZ7WCda72VF2nwGF+Dy2uM/agnMdnHVx34HAtDgMQaYaqHV3
         Ru6jAM7JQA/A60LgakgAON+0SAkwTAJ017AeUzMM6AtCI3Ny8QZzfr51oAUb1xQAEqb3
         XImujGS8M1gsSwmf7T9ShmZEYZ44ONw5/qbsq98q9SoKB0SsrqOk36G1ioczDNvK1RYv
         7kDb6msxGjDqS8zP+k8iLAKi4Ecgr06eaQekxoZbAJVkvK1V0tpzcfM2cCt6xJZLJVOb
         bl1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ebpwCreeyblA+QovM5Jn5vO1Ic7o/RowsBTk+FqdShs=;
        b=gOV8qKyZbLflWp66aMvOiQncuymUyxmHCS0gbFFJBZ46yuvrhTJTox9CTwtcu48bb1
         vmk70FD/KYAT0lLNWeLXNe4XHUcJW1kZQAd3FX1kGlSlBPC2N99R3NFZbnUtQLzDPO/E
         btIuq8ZjENNbpwL28R68uptLs3fpgkCSZOVdWfTvWQZQyOuQVROHqJzD/yXeIa5sshPm
         QQFS+Nk1H8fpGKN2vTlxWeNdJqf/PmJV+iCE3y+dtd6BleJVPZsBjbPqjlpHyhten+33
         ONf0axYZKyrCinGKsd9DnjPPb+P4LH4m0Ze32timNt59Pk4q3v9Nn33QSw/AYVMdj/0w
         olwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531n8p7xLWvX6cdoVVJ2rpg28WiZ2qOhnikNm2lQnaRS5kHu1tJM
	nD7wmq2qUDvBnGeMiEjSvIo=
X-Google-Smtp-Source: ABdhPJzJY8pdAGfheBApLH7VGl7HwlSD6I+RjcV3A6h2qetZyvy1xigrVu7HA1Z1SD26NobyEKqo4w==
X-Received: by 2002:a17:90a:354d:: with SMTP id q71mr7352896pjb.216.1594769658875;
        Tue, 14 Jul 2020 16:34:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:384c:: with SMTP id nl12ls113534pjb.2.canary-gmail;
 Tue, 14 Jul 2020 16:34:18 -0700 (PDT)
X-Received: by 2002:a17:902:6544:: with SMTP id d4mr5934751pln.138.1594769658450;
        Tue, 14 Jul 2020 16:34:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594769658; cv=none;
        d=google.com; s=arc-20160816;
        b=YYCzYlX6eSxY+GiP8ral/7Dt6qwG8ubNLPKBI9wWFcDMB81hfQFgfbSKm1cZaWSV5Q
         Tn6sUsTPryEssZbSDnE3zJ+FyklStNkCIUlIBWqD3HCvKUAH1wpRobOxxtkywi9LZk/C
         PMHkRB8S8bq/RPWE+Z67UR2w4NsavA2beTeK0pjIqnfBjjLHAK/D0sZmbnMKfixGD2hC
         fG8yeQR3ch2rPxQ9MVsPYyERzrY9RdfHETUYGJkgiz8EFS9C/f+nACFBMbEHp+WoLSyp
         PMWTnm/4dN3xM4n1JxZkGJQF9oF8ARRzurwLEO5g9ajIdEpP8mSDNhIA7Gn+Olt7t2Fd
         EgNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=fsTQrOCCM6yA1JojsplBwI6Qpm1eIbU6tWKRrhNq0L8=;
        b=NZhanRmlvCoQdvpfN6J17Pxal/3Sv5cmmQ7wZzKVlHHHxNBuHyuL7xitwHUvC8lEnx
         aLDTQYczuv5xtMayd7591O7PPVDvR7PU5SJuFLl1xSgaFNSgZjaWkmnrmcTMSL+eWDkb
         Em0C3XyoBlBZVlPMUz5QIm6Sd8B8ZOEbyOJJIfO5JbL6mlM4kpTxtd920cmIESMURllX
         oPt3j+Yl5Flk9jsoqhkUPVQDr2soUy5isSsoVWtvahzCvyS1LiNFG+YBzQHxC3YERc+d
         ROaxI266VOV5GWlEyRKb0oRFurMqJxU2xz0ucUJtDaETufJskAW/nGAou9ppsJwmgzkS
         Zxuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xe+ngmM7;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id y20si7215plb.2.2020.07.14.16.34.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 16:34:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id a12so225546ion.13
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 16:34:18 -0700 (PDT)
X-Received: by 2002:a05:6602:15c9:: with SMTP id f9mr7436588iow.35.1594769657817;
        Tue, 14 Jul 2020 16:34:17 -0700 (PDT)
Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:f693:9fff:fef4:238b])
        by smtp.googlemail.com with ESMTPSA id x12sm223235ile.14.2020.07.14.16.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 16:34:17 -0700 (PDT)
From: Jian Cai <caij2003@gmail.com>
To: 
Cc: caij2003@gmail.com,
	jiancai@google.com,
	ndesaulniers@google.com,
	manojgupta@google.com,
	sedat.dilek@gmail.com,
	Brian Gerst <brgerst@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2] x86/entry: add compatibility with IAS
Date: Tue, 14 Jul 2020 16:33:39 -0700
Message-Id: <20200714233342.1791530-1-caij2003@gmail.com>
X-Mailer: git-send-email 2.27.0.389.gc38d7665816-goog
MIME-Version: 1.0
X-Original-Sender: caij2003@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Xe+ngmM7;       spf=pass
 (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::d43
 as permitted sender) smtp.mailfrom=caij2003@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang's integrated assembler does not allow symbols with non-absolute
values to be reassigned. This patch allows the affected code to be
compatible with IAS.

Link: https://github.com/ClangBuiltLinux/linux/issues/1043
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Brian Gerst <brgerst@gmail.com>
Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com> #
Compile-/Assemble-tested against Linux v5.8-rc5 with LLVM/Clang
v11.0.0-git
Signed-off-by: Jian Cai <caij2003@gmail.com>
---

Thanks Nick and Sedat for explaining the process of submitting patches.
Include the changelog as follows,

Changes v1 -> v2:
 Update the patch based on Arvind Sankar <nivedita@alum.mit.edu>'s
 comments. Also include addtional information in the Tested-by tag.

 arch/x86/include/asm/idtentry.h | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
index f3d70830bf2a..5efaaed34eda 100644
--- a/arch/x86/include/asm/idtentry.h
+++ b/arch/x86/include/asm/idtentry.h
@@ -469,16 +469,15 @@ __visible noinstr void func(struct pt_regs *regs,			\
 	.align 8
 SYM_CODE_START(irq_entries_start)
     vector=FIRST_EXTERNAL_VECTOR
-    pos = .
     .rept (FIRST_SYSTEM_VECTOR - FIRST_EXTERNAL_VECTOR)
 	UNWIND_HINT_IRET_REGS
+0 :
 	.byte	0x6a, vector
 	jmp	asm_common_interrupt
 	nop
 	/* Ensure that the above is 8 bytes max */
-	. = pos + 8
-    pos=pos+8
-    vector=vector+1
+	. = 0b + 8
+	vector = vector+1
     .endr
 SYM_CODE_END(irq_entries_start)
 
@@ -486,16 +485,15 @@ SYM_CODE_END(irq_entries_start)
 	.align 8
 SYM_CODE_START(spurious_entries_start)
     vector=FIRST_SYSTEM_VECTOR
-    pos = .
     .rept (NR_VECTORS - FIRST_SYSTEM_VECTOR)
 	UNWIND_HINT_IRET_REGS
+0 :
 	.byte	0x6a, vector
 	jmp	asm_spurious_interrupt
 	nop
 	/* Ensure that the above is 8 bytes max */
-	. = pos + 8
-    pos=pos+8
-    vector=vector+1
+	. = 0b + 8
+	vector = vector+1
     .endr
 SYM_CODE_END(spurious_entries_start)
 #endif
-- 
2.27.0.389.gc38d7665816-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714233342.1791530-1-caij2003%40gmail.com.
