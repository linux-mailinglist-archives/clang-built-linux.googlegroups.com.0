Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJ5G737QKGQE4WQG5JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 831F32F559F
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 01:41:13 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id r15sf2291653pfg.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 16:41:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610584872; cv=pass;
        d=google.com; s=arc-20160816;
        b=N3p0AJMvh3kCEysFqj8+oDQ5frJgZKlaXdnzauozp1+sCoft4RMcGF+d+STsazqWeo
         J1+MlGOZehjuGkMUOVPkUK2QtnfC1Pl0QIqQGUhs/+tjyj5RZAQL5PgIIPihw5nz2032
         9r/nUC7HFYsY42dPozrek8vWNQHRokn1kgNk2Rpltmyr8TzmQ1pO5t8ugihhWlPQ7Tem
         erHdCm8lejUqZXZcjBRBYLHU6EeDbvIlITjCg608IAovnG2DfJb1JLDxgBq5EC7heAqa
         9118oFFH5jATdVhtLYpObkYgiXTFN9Zn96VdQ3KxhsdF36SrTreu6nTKtvRh9PpkhxMi
         zcsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=Uq4vdQbZPtaVhJ/1ioeSGfD/uzUAS1f3MctpRLlH57o=;
        b=Wai0ALbmU1gr4hZPK54FqyDavsrFiOWZsw2rbiF2N0HnMASoHf+xe3rI1SY7/n4VJs
         m8pFxrDrTcLB4kda5MEm9xzALcuBZQMOCK1x0LUQLOSBsFgBvgcosdkwSe0frp+faW+6
         SICsPyFT82e+6+y4d7lFLNnNMWJ+B6LfURSmt+FF53laTwVxlDMh9XiX72IpkvmreJ4+
         vOD6HOgdQZqx2MsC26gHk1LI+TY1fAYNuA7wMJIBLEEFe3S5FZ7RBqy+xvSQBuK/lZAK
         vIwMKpGmd8ipVZCxUibB4LC9Xjld9dwjBTQC2gEy5v59o69YlgthcA1fw7OYi0TWafOW
         OXRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="oWeKM/1R";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::833 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uq4vdQbZPtaVhJ/1ioeSGfD/uzUAS1f3MctpRLlH57o=;
        b=i/4epznVNZ1m9QDkfLoksgCK2A8g2mR6aoPtD0JlWxEX/YYSqXvVriKMquhKu40PAV
         2JUg+zDhi+YqZq7+WQHb+IX37vNMqJh9GT70ayTO3NozCsRwT4HdU6FDSjelRhDibBXL
         MfIiEsxuSbDBXK6nAzv0ZNzdXkBaoDHhN2aC8kfRHqyffsm9/exHP1U3JGVlb8xHAHkO
         aA5AltTfYunZshvap0c9BOjINrmjdUzI1vdtERHGV59EXPt/vXOKDIrb7DEF93+ksFEB
         oItaMNwGTqOPc0yENLa/ji/qmlc48/I2QlLDhQwJirjXbDLH3T2VfevJ2jpkcBFZ9S/u
         28Bw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Uq4vdQbZPtaVhJ/1ioeSGfD/uzUAS1f3MctpRLlH57o=;
        b=Odw8gtcZTdNY3mv+acSsyUtiDRaDKfaMnEMc1dg+PKrF21II95wp3L5yjs/RmhtLVL
         DdYrdqNU/R09Xlz+RuW+Xof/dtx/pxM9wkkefPtFEMZ+BjqMTGvZzP6ihkobgucl42Gg
         nnhDDpT/aHvwyOKHDbmuhH4/oF7mQKOhuZ+mCd5bFLG7rZxAXD4Ohmi3CxzJycMP99n8
         JiMiCbibwX1U6KLPMjqUs/582jNHOGtInUI/3ujUP9DjNBk6e7R2JMndn2U0XXUXZS/b
         1a95Nb4QZzwkfVcp2CirIMeDZShsmCjWqmkJYzotBKQRdjOS+TPFCCTs0uTq6bHezyJK
         ovLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Uq4vdQbZPtaVhJ/1ioeSGfD/uzUAS1f3MctpRLlH57o=;
        b=js0qYHh3Q0QIbYsnHcDn5tmxvLQ3/PNcRmKiBO/6F4T6DrcN76G3MdldyFugfDml1c
         FD1XddYIYZPeg4J6+47ldqEoq30VGXYCq8/+I+bAXx6fr8cozCnI0K1GKWPRHQL839ff
         tARTm8yPZj1uBjuDYDN5w9Nv9fPb1NgdXVNgy1hpxydmLVBchfaT7uLSwXBPm7rO13j/
         vaaYGzXsAkvWVBWe4/v3jh7Xs45Z3BzxDVhN3XcgQDypgfWRhjbHaj7iZkIfm6uGenYs
         oLMCu6sxGv/Y94hBvlJeqzfwhvOKaXeQ4wDdQ+4ehm+6KEMgWONLphSt+rHF20q/ajm0
         Sp1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Albj2hdzzld5dru5mkM/fwNUyt8vHYzWF4mQrtKAL+CAx6doD
	FpmCzCuoH6qv3h/6SIP1sJk=
X-Google-Smtp-Source: ABdhPJyfjqJTbvYX5jPvQPIK3/BnHWnDGY1IstAqzx0Ckxls7GkmmZXzLYAQ6818F2hhRpOTVhc74g==
X-Received: by 2002:a63:5d53:: with SMTP id o19mr4696659pgm.39.1610584871801;
        Wed, 13 Jan 2021 16:41:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls1883551pll.0.gmail; Wed, 13
 Jan 2021 16:41:11 -0800 (PST)
X-Received: by 2002:a17:902:12c:b029:da:e63c:dc92 with SMTP id 41-20020a170902012cb02900dae63cdc92mr4982720plb.71.1610584871185;
        Wed, 13 Jan 2021 16:41:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610584871; cv=none;
        d=google.com; s=arc-20160816;
        b=omjNw//zDcPTNnba+ejzZBn2l6XrEmZ55NjQcL9rM1wCtWTgIQu4YSM1RnqOPBcWip
         hwZAns4zMbn/R6Iq1VXy/rk4Hldog58B7yaOaCcY2k+kXvuPRpNYVfVLkWEQ22uBrwUx
         f394G7evZ7MVjnLcunna1fM5fs6ZGeVKZa1U5DVudQa+h7MpUxB9nK2kOC8rnp7wNPab
         uIOVvUEurSeO24YlJqgH7XEvES5MTpef9HVqCbHd9bX8tF9BTPiyoiKUTPrtY9297JXy
         D+/Zn/nR7OwJJBjw08otU5ODGjsOX2ipb4V02Cfcdbt+QNVhpCMDrZnAjZDyero/lwKF
         8+kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=RXIGwza+eRGXsahFU/+e0gxGzLpturMRd+ajguSF/Mo=;
        b=MgkqBn6LIUpxl0+04Ow3Eixj8MWn5NeDZd9T7q0X+IgxyWtHh4LQ/+LV8bQozImaP/
         8dpFoZbt/LbKwsicT2lo1nly9/NmzqPfOuXzqSCiHLH9J+94MGx/XR0AwHAJp0TLL+Fn
         QSQlS63k4vy1Ce3Z8DjeVVcecUl/EkP/5HxHLpGm9b7MpPSiBkoMDtOU0FHSLsn1YyC3
         5zX0VjmKHVZ35s9FtiFs06PsB2/pQ6VSnafGRfm6e9N4lI7/X3MFcvmtgJ4HW2IzXx7i
         Corlr6MvWAaAzL65pTp307KS8VFlApMEyu85+4YgpyQHKLoQAUX+CtQcK5F+eTNPaocP
         jCyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="oWeKM/1R";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::833 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com. [2607:f8b0:4864:20::833])
        by gmr-mx.google.com with ESMTPS id r2si207886pls.2.2021.01.13.16.41.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 16:41:11 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::833 as permitted sender) client-ip=2607:f8b0:4864:20::833;
Received: by mail-qt1-x833.google.com with SMTP id v5so2480977qtv.7
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 16:41:11 -0800 (PST)
X-Received: by 2002:ac8:74c7:: with SMTP id j7mr4890479qtr.102.1610584870385;
        Wed, 13 Jan 2021 16:41:10 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id h26sm2146958qtc.81.2021.01.13.16.41.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 16:41:09 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] MAINTAINERS: Add a couple more files to the Clang/LLVM section
Date: Wed, 13 Jan 2021 17:40:59 -0700
Message-Id: <20210114004059.2129921-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="oWeKM/1R";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::833 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

The K: entry should ensure that Nick and I always get CC'd on patches
that touch these files but it is better to be explicit rather than
implicit.

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index cc1e6a5ee6e6..9127456b7eb1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4313,7 +4313,9 @@ W:	https://clangbuiltlinux.github.io/
 B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
 F:	Documentation/kbuild/llvm.rst
+F:	include/linux/compiler-clang.h
 F:	scripts/clang-tools/
+F:	scripts/clang-version.sh
 F:	scripts/lld-version.sh
 K:	\b(?i:clang|llvm)\b
 

base-commit: 7c53f6b671f4aba70ff15e1b05148b10d58c2837
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114004059.2129921-1-natechancellor%40gmail.com.
