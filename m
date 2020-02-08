Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTVN7DYQKGQEFHNGEOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id BA967156298
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 03:02:55 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id h6sf927347ybm.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Feb 2020 18:02:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581127374; cv=pass;
        d=google.com; s=arc-20160816;
        b=ATLErJAwBqNBRcT6xQtrJi+sgWOe/zcBW+rcdPtcQpH0cV0z2aaylBwI7WfqXIIim2
         t77ENk/CtJ/rHV2zkuBU2CJLnvcCwuBYwtwm9VIRltB8WbDg0pqc2A0pR9pFCv9QJV3M
         NMyB/X++h4CCt9AXroPTlaj9adJkM5QIbgqr1E3Yis3lFp4s7vRjUdIvXC/mOJU46yBx
         /DrS0PBznLoX6J3zSmautyN/hbhFEvW9kxVHuF50hZkwjkPw/tuBIJbBvyDSrLLIr1yz
         6/3Yk3cnHtqYgMvsKwSKQKL1spbO9x5UWKouBouDwPCNedLv/27jW7BEKBCb5oRgS+y5
         SbvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=nU30y1GDG7GQxzi8C5L3tBR3CIF7V7Q82PrJ7VR7HD8=;
        b=Yh6ArRDxS17nfPaGyme9Mb18CAvhFhia24gDXdlADjr4Pz4tcMgQ0JbRkc51WAS+tg
         G5gXqbYUvESNtzxJ9BziBKH3nXNLtzyOPqJntnhc5/XufiPJpE1N89VgLc9XxSjmEiyn
         FcW246BYei7s2GSAms3rs07rBawv8bVpJNYGulSUKi9mAFcndJqDjlLNjyJ+y+c4RKY/
         OGFCudOEqUh67oo8VnLQkA5QYjMP5yvQ1nuBldU5kBpThHaj3Fx58kc9Ij2TNppvXn5d
         YfvZx2UjOcXiSuR03OnMgRSuHhGRuE3wTk7Nl1s6307CsXqwwLfeFL81zsS/JHyv8cgp
         EzDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mSKNR7w2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nU30y1GDG7GQxzi8C5L3tBR3CIF7V7Q82PrJ7VR7HD8=;
        b=LUgCQZH4BRkyvYoa0NUGRsU8+tboGywrf+pKWPuzB97NUErgAliVRT6VJxZTPOGdUM
         4CYtoNprKS9FC28n32A2p9md9221PtSx1xY25H0+dJJ27JAXA5vnrrOChLM0G9O3pwme
         zJ5a/TDrfXLWqFKGSb60oc2nrc5HUp1sRByc2m+rrIJ2YFe/DziuzjVWzzEUTplfQaJr
         Lui26EcN99ujwFa+UeRAHPxpG+vy2R+Au+mvJHg0kxvhqlLVhoe/Iaiz9wHlUlJgh7Fq
         3WPT2d3BkSEr6Q3B9rrtN2uSecSFpIKJ9BojBmIsn43LSZMdIqcIQGdkSchK1qrLoGtx
         K3yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nU30y1GDG7GQxzi8C5L3tBR3CIF7V7Q82PrJ7VR7HD8=;
        b=G5pO4DdwG6T3tSkJYRVYaDXJRTCpIF2kBLMwIooydMmFiRUzNkniHNGJ7fJ0zaCDFq
         eMDA/p0jCqh84J3N1wOJuD6K1m6cq6omZiY7XJTCnC5RbswK+5v4j5da1xoBuQq6j/X8
         UH5kOLLldzzFI5cpJEz/IkiGuj1mflA/QkyugjO5HcUi+4kd8tRIXKTjjy8/deXE31gb
         2+zX+FO3qPD/j3dIHO39U3ynEwXFGJtJw38jwS8zrerbpbLNglesp/W1p1DuoYV4F95+
         VwHckeAQ0T2g+BMQ+m+GGw5Q99DLN3qmIBrPWXqVDWbEiLV57U2Axhj8Q9/xP9RRPmYx
         lyrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVi3DO++xizOMzyDbcIuwoxLb+iNL42JjWxkEhnQ9cUS02skZpn
	4OvJMmzcVRBshO2lS8X6O5Y=
X-Google-Smtp-Source: APXvYqyT2t/jilv1tAmr7NwaBx5YBF6343UBPKwDSSktCRPg9TGXQ9oIBiqHmTeruIC668EP1cs3KQ==
X-Received: by 2002:a81:615:: with SMTP id 21mr1734767ywg.460.1581127374509;
        Fri, 07 Feb 2020 18:02:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aa54:: with SMTP id s78ls302631ybi.9.gmail; Fri, 07 Feb
 2020 18:02:54 -0800 (PST)
X-Received: by 2002:a25:c08f:: with SMTP id c137mr1855841ybf.447.1581127374163;
        Fri, 07 Feb 2020 18:02:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581127374; cv=none;
        d=google.com; s=arc-20160816;
        b=dLmZkjLrUC4n81VgltZTfmCreuRn1N4HzaF8F1d1zJ8vdjvXUfzoGo/BV/hCVm9eSf
         M6oMztySyPJ5pDaeCSzpg/5PqJWaPk7h3aAc3RpalGuvsprF4v8DAGtnowX3TWZ2QXQW
         aeJIS+bx+hWmgbjrAN1rS9c5OYl9z1kUMpSFgWdURjja9Pt79H0KnY/3dPBUwHBZXOzy
         HbITZ6dWv7rrRfjRd+fIRBBCY5IL0Ktj/IKuxSOsPQ90jO7bdNa1N2x6nm9Jx/Estfgt
         U2KHEPXUed6ujzZl9C4SdihqoBPYOqNqYNyg9dIzCiJ5+TgueFvXtsqqrbnWHOe8fMzw
         AJjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=ZL1vw2AXxwnJQ2itrk5zfzZQ8p6ax5CM4oF2dWGGnQc=;
        b=ILNz4oYw0WsFDfdK+Hx/dKOeSyYqBpsoIYcBq+z9gA2r7pp9ksjpEdtmQvT+38MGI6
         +pO2bKJV1Xg74PWjaWlBwJ6i0c3UFcqFjB7XLR0Bl41p3s4xdXAkurm2HgC5fQFPdgWK
         FwrDE78hgNNS9Yl+3ulShUW+5XI9zKvOLB0Y76sYbOZjUXfED8FBqnjjhcqOU7J9Ivfd
         fDqnXXp/DZQctIDldTDY+qynWMwICokhpZdflxUXVXHh9TADHQkdA5Hlr9LMqPXsJabZ
         mNY4AUKl041El5OnUQltT3kpD6sYO0tbLpa4qa8gDTkmR3bFnuweSQJZ2JMRngNtzxl7
         pnUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=mSKNR7w2;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id q5si53382ybg.4.2020.02.07.18.02.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 18:02:54 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id a15so1224021otf.1
        for <clang-built-linux@googlegroups.com>; Fri, 07 Feb 2020 18:02:54 -0800 (PST)
X-Received: by 2002:a9d:5e9:: with SMTP id 96mr1788864otd.307.1581127373870;
        Fri, 07 Feb 2020 18:02:53 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i12sm1803428otk.11.2020.02.07.18.02.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2020 18:02:53 -0800 (PST)
Date: Fri, 7 Feb 2020 18:02:51 -0800
From: Kees Cook <keescook@chromium.org>
To: Nicolas Pitre <nico@fluxnic.net>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Russell King - ARM Linux <linux@armlinux.org.uk>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: rename missed uaccess .fixup section
Message-ID: <202002071754.F5F073F1D@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=mSKNR7w2;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::343
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

When the uaccess .fixup section was renamed to .text.fixup, one case was
missed. Under ld.bfd, the orphaned section was moved close to .text
(since they share the "ax" bits), so things would work normally on
uaccess faults. Under ld.lld, the orphaned section was placed outside
the .text section, making it unreachable. Rename the missed section.

Link: https://github.com/ClangBuiltLinux/linux/issues/282
Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c44
Link: https://lore.kernel.org/r/nycvar.YSQ.7.76.1912032147340.17114@knanqh.ubzr
Fixes: c4a84ae39b4a5 ("ARM: 8322/1: keep .text and .fixup regions closer together")
Cc: stable@vger.kernel.org
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Reported-by: Manoj Gupta <manojgupta@google.com>
Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
I completely missed this the first several times I looked at this
problem. Thank you Nicolas for pushing back on the earlier patch!
Manoj or Nathan, can you test this?
---
 arch/arm/lib/copy_from_user.S | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
index 95b2e1ce559c..f8016e3db65d 100644
--- a/arch/arm/lib/copy_from_user.S
+++ b/arch/arm/lib/copy_from_user.S
@@ -118,7 +118,7 @@ ENTRY(arm_copy_from_user)
 
 ENDPROC(arm_copy_from_user)
 
-	.pushsection .fixup,"ax"
+	.pushsection .text.fixup,"ax"
 	.align 0
 	copy_abort_preamble
 	ldmfd	sp!, {r1, r2, r3}
-- 
2.20.1


-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002071754.F5F073F1D%40keescook.
