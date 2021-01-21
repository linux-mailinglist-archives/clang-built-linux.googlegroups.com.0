Return-Path: <clang-built-linux+bncBCSJ7B6JQALRBYXEU6AAMGQEVI34DJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4356B2FF73E
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 22:30:11 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id 205sf444639qkf.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 13:30:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611264610; cv=pass;
        d=google.com; s=arc-20160816;
        b=FdK8AQhCxGmfJ9g17rVbajnYlp9aiYRsd4O0r+JvuZTjDtujxZ93dBCh36x8i5OZVD
         RBxCWscOK364cNMlGRq/62tPqh7vuj7hDXiZwiHfaYnjZQCoU7XP8V+qngqQPrtiWxmq
         2PFLE0qXaUA6XtliYoei8wkmdzMciJsR8qzeCBWa9smxZqkyDLqH8Uacsm4y1YXJhxw+
         1hKmjYCQvxqOaJgDWiEfIBL6jHerlhhyjEhkafxnNzXTSC+Oj61/8e1Kt7vbov4gh0bD
         koxX4YiJD2KU5S3LXLocmdCpMSKhldJJFR+m7I3JcZkuSOQwHC/hu8FAUtdJawpOcBZS
         UV8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Y8Cu44XwVLYLm/hlmtXoUS9SP0NxYKg4xnOJd8Wn17E=;
        b=MV1ye/KLCmjRFT9/BCWKDFns5GoyRJ4GN5BKIK9aoDPna/J/1SBOaqPwWvBr0tMjHn
         13R97R942J8ymeAuBUylB4zxufrNIx/etfiD3Mls23mI7QOS6gA4PNH0JhOWhL4OztFL
         1s0QA38g/aBVPF4gN4frVeESC3CwZBb3YWjehv/7XEo0xpmDN/mI6tbSxSZyt4fBbdpP
         OmScWU+jwtjzSHtvP2fJpGDYL2lYh3r2MgAI2gk4E9FuEvG6d56zzwmxme/nvBRCHOZH
         ajloGlJbO0SUk/lQVyMEhJwm91+xiOfsvAk3OXU701kgxK0MhvfQzbL2XKuB5ILA0LKF
         C5Tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hpW9Xap8;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y8Cu44XwVLYLm/hlmtXoUS9SP0NxYKg4xnOJd8Wn17E=;
        b=JwqxzCTaLpLE0LCBaM8PMdx8mu+ibgbEhgK35fP2nZIN/Dsx2LquMyFUbXGltbn4RK
         1jATu7SFplnXDihjmMLda9JYsJ0yxtCvEQOCYXiBTP4Z/i5Z6h/D4y2xn5eM4wD6bNsM
         S4aZAAi2T6WgI2T6/GyOt08zo6uDzARg4bCDhoWyYBtqmiWYWAcF4279yWiwV8j4m1Pc
         pwwDOQzx8q6KMn6m2m7I56u/+yfuvoDPCorr1dqx5Pue1qpm1i8B+WYd4DFWbY++BrBX
         wy2DVO7Lag0uYGWRSmb9zf5aeHWXgp0ENz2vSMsmja/HIxu4QzRIk1NIIkMKtsjj94C4
         f7NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y8Cu44XwVLYLm/hlmtXoUS9SP0NxYKg4xnOJd8Wn17E=;
        b=V+zzclnS6fBAz6UPBzO4es77s/t10hnYw+70HqSD2vMYQTzNzg5Ta2CgKPhR/x6Glf
         OhXmZ3hfFJTLOBQkisJRoTO8gqoTcP6mofGTN5vUs3uWfM/M9c7k1ndxYeXcvrj7rAcU
         RSSNcGGg5yn6zrDiHDAlPxBJ31c4rSZKmhF5RZEE3xhVaxaNPLOOAkTrpR4pq6nmD8gz
         JNkgD0JdGucppq4ejgDzlTA50U/b9b12o8UJtXCBcADfbkKx+oJJD/QspUBLPoBn4/eB
         tjkFhTTK0v7DlNIdCt9UHgToO/1xM+O6LNuZIyqJ0g0uN/qX+AnHc+3dNn4L0KibJ2Di
         CAlg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532a7IybfFi+i0g3GfG/7zUydtVPN+07qks57X3BlIi6OHr/p+DK
	xIw1jWCw2fGmRPl5BMLV0KE=
X-Google-Smtp-Source: ABdhPJxm9OeDivH5wQ/Lq9xAtQpmTP+cCobp94/pk9ae8D81Mmpj6iOeFI2dT7JUOZhmUodic/rk5w==
X-Received: by 2002:ac8:7c95:: with SMTP id y21mr1614754qtv.199.1611264610119;
        Thu, 21 Jan 2021 13:30:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ea19:: with SMTP id f25ls1779210qkg.7.gmail; Thu, 21 Jan
 2021 13:30:09 -0800 (PST)
X-Received: by 2002:a37:a707:: with SMTP id q7mr1954369qke.284.1611264609779;
        Thu, 21 Jan 2021 13:30:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611264609; cv=none;
        d=google.com; s=arc-20160816;
        b=BU3tgOS2JIMqina3NKxfCex/Oqmx6ow56eiKUawEflXmdFEDWpNL2AmrfKLtJGZwkC
         zga8r9tQt1I0CZHPa64Ig3SyO7YzWnQKy/tdp7dsAzy4lF7Wb0s7wQTX8eS3vlbZHb1g
         DeOKm0QlijR/8p541ple4WAsD2y5VVHjqI7uaxaddbbcE92BDBGgMrWNxWCTO/Kogk9Q
         PDCxgGToEfUlmfpjQkMYd5Qmds5ZKwNcMINX5RIJY8g1F645uNNd83jgcsbZTYcuQ8N+
         PL50PLB//px0PXYXwRJZMgzc0efofn2QVIKAwWJc/1y9sy6xfCeQ7gL3VP5s+f8lJ3H/
         rkzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YP6hG/dCxU2e+tBOQgk43FobH/+ECz4yMlrprzfqBqo=;
        b=oF6T7zm6uwEgpoN8AZA9yP6aGr2G6wxoP+SBRuiQnfVmIQ+rnJUEPvMyIbJsCfeU+f
         0KjgGCl7X9xlRFJ9bDOcCW3ZzpG8A4h5rI2cXBUwY75KsMVXgLaBv2lkdX2USgaNkidH
         N02KfCoJXO0TkARLEqehoyzl6Xr/hg7mXKkZu2+XuAu8x1OmBXkRQ+ejn3K+Jxg++sPt
         I4A6/t5tZVulxhbFyt5bcPyy5o5P0OXBzPhdI2DPb6kbm8q8S9Poe3vuX03SoPmUO5Bv
         vnea0h8lRPrPI5QZ7hp6PYZpYzYLRV3ngqVT7tqT9/necEjq7mzqymcWNx1CRP8mYpC/
         qvwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hpW9Xap8;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id z94si627174qtc.0.2021.01.21.13.30.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 13:30:09 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-576-J9TGQBVWPV6Jnb9h8gkU5Q-1; Thu, 21 Jan 2021 16:30:05 -0500
X-MC-Unique: J9TGQBVWPV6Jnb9h8gkU5Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D71DB107ACE6;
	Thu, 21 Jan 2021 21:30:03 +0000 (UTC)
Received: from treble.redhat.com (ovpn-116-102.rdu2.redhat.com [10.10.116.102])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DE40E19C59;
	Thu, 21 Jan 2021 21:30:01 +0000 (UTC)
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
Subject: [PATCH v2 07/20] objtool: Add asm version of STACK_FRAME_NON_STANDARD
Date: Thu, 21 Jan 2021 15:29:23 -0600
Message-Id: <8faa476f9a5ac89af27944ec184c89f95f3c6c49.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1611263461.git.jpoimboe@redhat.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=hpW9Xap8;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8faa476f9a5ac89af27944ec184c89f95f3c6c49.1611263462.git.jpoimboe%40redhat.com.
