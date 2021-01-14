Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBUV4QKAAMGQESGYZBQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id C00332F6B48
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:41:07 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id q13sf3812650pll.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653266; cv=pass;
        d=google.com; s=arc-20160816;
        b=dspLLKU3OGKZkUSD2yqummzJE80pgaNcm5ctuqGnW7cieiC9+G1CLY+HP2J6mkqhMe
         VqgKQj2wj+m0cKKoTJkrsPzw1STdsT0+1WycTAi78BF3Dv2iuEPb+63LoIZsD9cgn+JF
         CCpTB0brzC6ui97WTdGyM8aSjoraH4Qjwz1Jdo9TJfd42Cj/20KptoQyKvxg1we0QR7I
         Iwu3slWeTDn3ODUrmAPrEaHJ0PbTh6Ou8ZWOuK1vsjTiRexzhVu/WjKJooamRyC85XbC
         UkX6x+YOWnjrYk/H+E+PoaD4JJggoci/SuHfrtuQyNkB6mi9l1nN3dSOEYN2YHURL8Xw
         Yyng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wIZ+M/D4LJpuVc1VqWUq8vnjAvxo26bsLraz0tK0EbI=;
        b=mRBNY4DEnuZKmAeSCCaKvs1cuj0tXfrOGdjVPvG0k40K12AaEd1F7spoR5jTF0nN8X
         KuMkD8saN5WTNcuJNOsWXimOX5dDTFSy+5aHKcRw5juaG+MC37wKJNZFYDswf5gwm1H1
         I/FaKk+pn2D9gKLsX8FGyAv6C6+PYeEMF36yeP7bEmRXvmVRCPCVkTt3VNguBbmUnZiv
         8Cj3BisHRsu9oHUfQHPl/WB8p6jxnDgqUWgzAjsqc3XCfgYVgjTZnMrolUutvyjn6PeH
         cmf0agB+At6hkixtQoZQ8xKNuuNx+gJuprghtq5YYYSU6WICI8vjtWcUJ5x8wSeZaEYU
         t8kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZFqlkKTQ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wIZ+M/D4LJpuVc1VqWUq8vnjAvxo26bsLraz0tK0EbI=;
        b=gyczr6BSLA1d3GBbAPgqHQDCvvcWV2T+vIWrs+EfcCpIkx3w7hqhek0Ja1QrfIJFxW
         TPMbxq9pm74TnbzBnV0lmhfkaVhi0+9NZmaP8qSXlfLgr4M3FNaKSvGFJpSawg2CJvlb
         fPBvsrhElSZl5Vgn2nvcPFNQoLy+p+8K39GRPXfo/8axWkt+eaXvvT0r5RnGEfDJcOOz
         GPZlwCd2tSUJljGyYJom2M09eWd09GaxvKwK9osKWEq9xBEn3xLraj17NA7qgEW+F3Yt
         eXqZCDwNCoIBM/ENKfhlvwTJy0baKM1rfhRRRkX8rEQZ1yRRshYuLsgyIC2ewwmrglnQ
         02+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wIZ+M/D4LJpuVc1VqWUq8vnjAvxo26bsLraz0tK0EbI=;
        b=JNFpmdYfAT5vGNs7bezykZ5nCGNN4Lxt6Z9C/KT62bQALE4mX4kZK1niGyRfSL8tKS
         DgRCp/WBQtCfkK+0vBV55ro0MNBX3x0JwZXr22eMrXMVOJv6mwZmmIfH1mL+QJR24QSg
         4EBjPxIXWJugihSAAy9iNaKqBpDSvgwxRu2FI8t9d5nDK9p8KoeWXCkUkclmCbdCerGU
         Stv9gbPXVScqprwFwuWHjOagj6iPy7pjWmS7fvLGP+kYWvJxJ2CIPwqF4aDoFlq0sx0/
         0JC1QVvQzi42e5ZA+5t7ZfE3jBpWd6jsyQKsDcP8TdlNgco+4CqnM2qBYP8JsRCpZY87
         At+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530nsSnMVtCciIW955JF0E6En1gfsPqcPaD9YjgmZ039G1WQUAgY
	zsNnM5Q/2CXzlBhvdNpUoRc=
X-Google-Smtp-Source: ABdhPJw3m5PJ2FMF/nqFbI4d24fFX2DYT6a5ltxjD/ukCnKrHAaw6Er/ECKH2BvOxSk7a7A8z4qESg==
X-Received: by 2002:a63:1602:: with SMTP id w2mr9197340pgl.128.1610653266370;
        Thu, 14 Jan 2021 11:41:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4704:: with SMTP id u4ls2607693pga.0.gmail; Thu, 14 Jan
 2021 11:41:05 -0800 (PST)
X-Received: by 2002:a62:2b47:0:b029:19e:2c4b:6a8e with SMTP id r68-20020a622b470000b029019e2c4b6a8emr9282751pfr.30.1610653265762;
        Thu, 14 Jan 2021 11:41:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653265; cv=none;
        d=google.com; s=arc-20160816;
        b=xW6UJbT/O8ZQHQAER/JE0z39xPg8j6LcnSa2CwxcGpKppFJLUkwBKbCwWAHIblBVCI
         3knEyBpx+qiLOzMHVeTbPWRiiYTuQulTDMcZ97v4P0sl9Hg6AiT68k8nyk/7J8HDs/8y
         TXOVMO9TSpnsFNrFrzYVQz9pSMCPPu6xBKFa1CxPb/R26pX2TNZTiWLZgkZnVDlkBV6D
         D4duPFWmuaetAAnflb2l8NpoykZ8VQlhbP4O3KQPW6FGvJLQuOwtTRVypXhvBJPR3nwG
         HNNy96nZ8rIV6VlFXRvpaXJ1OGC+91S1JNkHWHpqpR+JDaHCnwPfAWjbuUuivi4HPXbo
         NwjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YP6hG/dCxU2e+tBOQgk43FobH/+ECz4yMlrprzfqBqo=;
        b=ykATPIWWL1zUSAeo2UxId+5iBZObO3OxhIwTijuNq/YtJYS7Dn8DTZNyeunHyOvND2
         7DXOAaYW+AQC8n6yMT7tz2PXThsCTXCWkIDk300voh8vE+tHxNSZRimFGe0GSbfLYheI
         RfjX8fyOG2RcB1DJhMKA127xtkCuPi5WgNHA7WQmpzursyZLFxDL81qA8ooGfU+6tiun
         FrNIxzDxs4O/UbADyIEZDjOwIWkbYUToYr+3WRHms5TncAA0EllCERRGajZr9YHMh49m
         I6ogPwCdoSdeh74+Pb6/wIkajpMCP2A26Ii+aYCsRSruR1Dl/fZjPpeclbdHKZkQ0B6m
         fTIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZFqlkKTQ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id r142si411259pfr.0.2021.01.14.11.41.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:41:05 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-575-R9dlnNYMMn-xX6POeU6zXA-1; Thu, 14 Jan 2021 14:41:03 -0500
X-MC-Unique: R9dlnNYMMn-xX6POeU6zXA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 521CA15720;
	Thu, 14 Jan 2021 19:41:01 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EE9B710023B3;
	Thu, 14 Jan 2021 19:40:58 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>
Subject: [PATCH 08/21] objtool: Add asm version of STACK_FRAME_NON_STANDARD
Date: Thu, 14 Jan 2021 13:40:04 -0600
Message-Id: <61e662a0fff06d1aa05343218d89756bd16b166a.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZFqlkKTQ;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

To be used for adding asm functions to the ignore list.  The "aw" is
needed to help the ELF section metadata match GCC-created sections.
Otherwise the linker creates duplicate sections instead of combining
them.

Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 include/linux/objtool.h       | 8 ++++++++
 tools/include/linux/objtool.h | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/include/linux/objtool.h b/include/linux/objtool.h
index 577f51436cf9..add1c6eb157e 100644
--- a/include/linux/objtool.h
+++ b/include/linux/objtool.h
@@ -109,6 +109,12 @@ struct unwind_hint {
 	.popsection
 .endm
 
+.macro STACK_FRAME_NON_STANDARD func:req
+	.pushsection .discard.func_stack_frame_non_standard, "aw"
+		.long \func - .
+	.popsection
+.endm
+
 #endif /* __ASSEMBLY__ */
 
 #else /* !CONFIG_STACK_VALIDATION */
@@ -122,6 +128,8 @@ struct unwind_hint {
 #define ANNOTATE_INTRA_FUNCTION_CALL
 .macro UNWIND_HINT sp_reg:req sp_offset=0 type:req end=0
 .endm
+.macro STACK_FRAME_NON_STANDARD func:req
+.endm
 #endif
 
 #endif /* CONFIG_STACK_VALIDATION */
diff --git a/tools/include/linux/objtool.h b/tools/include/linux/objtool.h
index 577f51436cf9..add1c6eb157e 100644
--- a/tools/include/linux/objtool.h
+++ b/tools/include/linux/objtool.h
@@ -109,6 +109,12 @@ struct unwind_hint {
 	.popsection
 .endm
 
+.macro STACK_FRAME_NON_STANDARD func:req
+	.pushsection .discard.func_stack_frame_non_standard, "aw"
+		.long \func - .
+	.popsection
+.endm
+
 #endif /* __ASSEMBLY__ */
 
 #else /* !CONFIG_STACK_VALIDATION */
@@ -122,6 +128,8 @@ struct unwind_hint {
 #define ANNOTATE_INTRA_FUNCTION_CALL
 .macro UNWIND_HINT sp_reg:req sp_offset=0 type:req end=0
 .endm
+.macro STACK_FRAME_NON_STANDARD func:req
+.endm
 #endif
 
 #endif /* CONFIG_STACK_VALIDATION */
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/61e662a0fff06d1aa05343218d89756bd16b166a.1610652862.git.jpoimboe%40redhat.com.
