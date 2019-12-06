Return-Path: <clang-built-linux+bncBC2ORX645YPRBLVFVPXQKGQESQCKYAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id A78491158F9
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:14:08 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id r2sf4808701pfl.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:14:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670447; cv=pass;
        d=google.com; s=arc-20160816;
        b=d6BQK479mYNsmdFuPv3lZOZyF9YWL+gp8pE9DYImZPX0l+6OK7zizkXYwAo2ds6ana
         bVPKscHry/UpMeGqcZXODDkqUPWfwWI8F/XLsUae15CCa8ZbRSOqNB0ZfiWjjOmU5LCV
         u+bUn/CKnAPczknY2A2Esj0X+jFShcgLgJOb7tIlE0aI4l1faEIHM8//klHk4/0DeG+0
         pxiIsyAFd8NHBLa3GRapYfgS2uWa3IWLG5E/Mq6Z56R9lSY44BUXtLpU04DddRkMTMK0
         yFZAA5OQY/MhQQm8npvxodPHVHaDtNskTpirEVI79f4643QtaRghmZG4VyFUIQuge8mR
         K51g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=hJqRbF+vvUZa+ozoJWhk7geMrLbjFeTehKG/rxfXW84=;
        b=fp0ynS15Y1xDMb7Ab3JG0nVG0qCsRIE1ZtEAUYZOuCjojNQWZdNvpxFe7g3dfCh7go
         gJlOxvB0s2NyTeMELXTgS3f6NsUCf6DFKOvINPdmPqfUZoK01rj9+Loei4ZGNruh56Bz
         qidPhRqb18TgbKHp8703/j8zreXw5qcvlFL4Mhg/WBcNjER+RTjeHB3nG88BOID/BERw
         dRQ+CXIRFN6y/blep90sUOBt/rrfy8BKzmLlT8YK9NmA9ohBA4ZmfwGoP/pz5oE4nKmO
         V3mBLVWxwGlW259G6tKQRuhDGjnmcSMyPfo74Muq1vfV74vvM5k5kiGJeg/Ft1pG2Zcp
         dYcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="JUnATL/q";
       spf=pass (google.com: domain of 3rtlqxqwkapmnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3rtLqXQwKAPMnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hJqRbF+vvUZa+ozoJWhk7geMrLbjFeTehKG/rxfXW84=;
        b=g5hdGOBGCQVekdznAOpV+BvugCd0TvpYKdiBskF0HZp/C58Nu7ltLvmVrgJebdvXdQ
         cAJ1vv3zonx+4TL3hTJhsSe4pE8NQuJXvhfgU//XEECLo/Rfz8m1Uvd1IbSohpQyIIa2
         3uTD8vfTq3N8ElB4wEeTi/mjw2N9pEUWBHmqr3z8NGYeSgjeK33p+UTGOsK9BDB3jr0j
         ckWmTuvw8HEIy9VZV68Wyw3vUx5mqNfiIRsM5osM7Vaeg1vr9RTGyE+EJ1GtaarFAekO
         wG7CV++OjYn1ktRDI9WnL6DPGIibSpfl2JqE42WwVxXZMHjCsv3TzwCKdJWxvIrJyx2E
         mJdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hJqRbF+vvUZa+ozoJWhk7geMrLbjFeTehKG/rxfXW84=;
        b=ioSnUocEUxpZ+0phfZMl/t0+ZqOOOU+Vbd9hEQgy7TAl7nG4cuNBXL1M7XahgXgCob
         QtISvLse42rlSBzOcQ2LtrOsaW2X6hbOlqNXF5kDBqfWkR3r9wXHyL2ZN3zcWpoQlpzu
         EhZVI02q10URESeu6UrtqyT6Kn1J5bIMDiWPDDwm10r8FT+M29GDAGCLJ7bIWCnMwKor
         sAqB0Zz8WJK+rP6Fgn6g6/1Bn18VMhJ01s5TU+Ypz2aTx7FDBLknc+lZxpqIT1tOc/IR
         5H/53400vApqcrUIlzsKCQziDKmzHitWQEC2dJKQpOYGyYCf9bBRc8QQRibjMtRjpcdg
         4TgA==
X-Gm-Message-State: APjAAAWt9ak+kE0sZgoSGCDtmFRrnS3g4i9oH56gcPee1p/hlJOiwg7t
	2cgP/+0w4G9FordkqL7SRKM=
X-Google-Smtp-Source: APXvYqyfwlZhCcYUoJNgFaXGNgTmo0awbeyFgrYL5rvoBRFen61L0rPd8r24xAV/TSI8YoX+5qwytw==
X-Received: by 2002:a65:4345:: with SMTP id k5mr6094842pgq.252.1575670446983;
        Fri, 06 Dec 2019 14:14:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a70b:: with SMTP id w11ls1995547plq.3.gmail; Fri, 06
 Dec 2019 14:14:06 -0800 (PST)
X-Received: by 2002:a17:90a:a386:: with SMTP id x6mr4871048pjp.116.1575670446516;
        Fri, 06 Dec 2019 14:14:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670446; cv=none;
        d=google.com; s=arc-20160816;
        b=MjtCuB3LcNQtk6EMjcoelkeP7fak51gUnwDF1DbZt97fnCO+VWktN39lZuSWh2v8UY
         oJBt4ApctaMuTPog+jwf/XOHgUKBh/gnxQK2DFdXbkdiL/n91b4wiUiSVyA66oSXbBna
         aPEPGTw9/SsCWs8cPr1e8jCw7pAQfSKqMLYNBvm0QhkT9wnCJxX+7uW8N7n42VmYr/QQ
         j4I6hjrD7xoF1YEJxr2UPkyZ7bbu8+It5a1SD7GXzepxIOXJ/QPDhpXB+5hBE01ZFRUd
         fYpbFSG+5Ul2FC0nNrNtTNZPBFK6anATnROnjHSgyAHPnWTpTrCV3dxDWAtDsjrK5z38
         BP1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=XVGcsXtiiPVE9a9TFllXGgGHEKcXDxSx20NO6hJScDc=;
        b=Ew60OWNH52yPoXU5xEGbZbxGAvzUl4WAU+4XjCtE/obVGVOTOUNxCII+VH/vvrN2Ka
         8PM1F8ooLE7eWgRad24w7/KiHAgMJp5ca8ih0+M49rQVlqEkkYTqgN77eZBKYFUql3Mv
         G51H3CUi1umJwzalQQ8wzZM/RXZOrw2O92is2RKT+GV+4nK42n1Rlc5GpYOeth+iRmLc
         sMklm4NMOedqecCHCMUJk+cRWTLdlVc+6/0I1PgobiZk/klvMy/BU68yKxNc6jWOSuSS
         LCAaEk4XrgyrnJ9OVkms/wL4S1/gMMEHEjBwH9jreURCP7xsQi0Izn1nHD5HzFHZSq/t
         qPjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="JUnATL/q";
       spf=pass (google.com: domain of 3rtlqxqwkapmnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3rtLqXQwKAPMnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id f23si482827plr.0.2019.12.06.14.14.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:14:06 -0800 (PST)
Received-SPF: pass (google.com: domain of 3rtlqxqwkapmnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id be1so4281155plb.1
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:14:06 -0800 (PST)
X-Received: by 2002:a63:1c66:: with SMTP id c38mr5983922pgm.368.1575670446054;
 Fri, 06 Dec 2019 14:14:06 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:40 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 04/15] arm64: kernel: avoid x18 in __cpu_soft_restart
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="JUnATL/q";       spf=pass
 (google.com: domain of 3rtlqxqwkapmnvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3rtLqXQwKAPMnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

From: Ard Biesheuvel <ard.biesheuvel@linaro.org>

The code in __cpu_soft_restart() uses x18 as an arbitrary temp register,
which will shortly be disallowed. So use x8 instead.

Link: https://patchwork.kernel.org/patch/9836877/
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
[Sami: updated commit message]
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/cpu-reset.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
index 6ea337d464c4..32c7bf858dd9 100644
--- a/arch/arm64/kernel/cpu-reset.S
+++ b/arch/arm64/kernel/cpu-reset.S
@@ -42,11 +42,11 @@ ENTRY(__cpu_soft_restart)
 	mov	x0, #HVC_SOFT_RESTART
 	hvc	#0				// no return
 
-1:	mov	x18, x1				// entry
+1:	mov	x8, x1				// entry
 	mov	x0, x2				// arg0
 	mov	x1, x3				// arg1
 	mov	x2, x4				// arg2
-	br	x18
+	br	x8
 ENDPROC(__cpu_soft_restart)
 
 .popsection
-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-5-samitolvanen%40google.com.
