Return-Path: <clang-built-linux+bncBCRKNY4WZECBBM7M4DZAKGQESPENLII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BA9172A44
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 22:35:49 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id v189sf760336qkb.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 13:35:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582839348; cv=pass;
        d=google.com; s=arc-20160816;
        b=bRR1Jjku7y79lTK1uttlIBXKqyyXiD3H73V/83zmbqT0XpyeZASaAzaibr3VKkMwip
         qo/hOy82JLwrdtQI/MTSfR7VnFui86LGRi65kq7MLGQmXGQwMLWt6dVPAkklXuUrJ4EP
         kYk1YEx7FSX8We0ChcdE8lEs8eCKlOT7DUdWThO2wyDMEbt3+Clc/RLPqfpBPuNo58KE
         G9If1hyBrIMXBNZ/hxz79Kv2iIy4iBWDOF6dWuWHQlFbBZB6OF5XF1x0AbqyfaPkEZdg
         znzeeJBAIHvjKrum1MhePX6vwkzzsXZ21Y4qbDholodTlOto/ST212Rdh1PSLUDF2tzv
         qiEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:cc:mime-version:references
         :in-reply-to:message-id:date:subject:sender:dkim-signature;
        bh=+Bto1zMzTQhw6ny0tLOFkyXH8ymAFjA9zeoLQY0lFHU=;
        b=dRtqEWua0uxt7t5Vt/RxHOSI36ecjcZc5TNoDS0yMX19Qa1J7AvIeUPCS0028AsT07
         NP3Bqmij1qbgv1EyWGQ0ZN6j3k0Pq3hIIHrLqMfUum2Yu2C5SMSmkz/mQr+Rt4/p/3q9
         WCZCScbhW2ikxAS/fTwtM+gpkPk4Fzjwcj6f7VN3tmGGQixdKnhm3DDlWHf6Tyh81qT6
         q1cKz5uI1lV5RJvTIfQhdXiQGZaVa1aeV64cEz5PbFIUsXjHUKmvi6pePgWxisDl7SuN
         f7Z773CcBKGho6VCdLDVXw1Vu186lbaRYT5JQmmITOzT8z/8BBISBHefY0cqk+66l7VW
         NZOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=uXZzIxo8;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:date:message-id:in-reply-to:references:mime-version
         :cc:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Bto1zMzTQhw6ny0tLOFkyXH8ymAFjA9zeoLQY0lFHU=;
        b=ahLv+8qJWCfK+Bil9+H+lGJJ8HzRRhzTAq+wvWGuO+1HS/fg5IMR3aPkysmj3tcAUb
         hw8vjX7NrQf3JMQb8o6T2oGSYkcG7Yr6OzPtxAY+kqs9ta05272UPoVVtyC5IiRelH62
         7W4aPM3YXztdGp+GI1eg3JMjnygfNnW72Pqw0aw5Rf99TVLK95UiBcr5AFAUoyT3xXma
         b/a9QNbwTfiGLFBfORwL2R81Wsw3Exx3p5Sf4QWAWN5QcirW7BABGajKOHzqJOZ1pxun
         h0HFI3kTwiaSyWpG2B4q3T7xIudbIxkiQc8QdmIWW3bSwhtA+pjIPRITTgtCVEBtA000
         hEEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:date:message-id:in-reply-to
         :references:mime-version:cc:from:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Bto1zMzTQhw6ny0tLOFkyXH8ymAFjA9zeoLQY0lFHU=;
        b=aPJHVBUcnjKKyFuuJAFcq2Q/sp8Ijuxf+00tpLtk7cfdouRRuymBRqtih7fb141BoK
         Yibcp0T9b20nmnqoIBa6qzFqtTzV2O0ZOTlbCCjYTp1Ug4YcZKE9dw40yG+Y6MjPzVPP
         q83WoCl22z0j68lTf4BJaaQ8PR+eRIGJXvSwQOKqmQYanU1l0mbyW0IlOI8rwbZT7DKu
         NpTBO/nBxy7/C224pO3W2tmMFcL/l8YNw3VVFWVSl7Dva3YiBjTfd75ymRx5rQKE77Ym
         Ban4ftfGvEtO1rkR+xWtYgERoviTEHsQmkPGndX3DdwP+sx5KllhBQg/9jqwyalhKTW4
         i8Lg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVjbRviiyg1QyZtjZGsPbHIamO5R4NLyTpa4GUuKD94me74/CD7
	B7dNZj3NjK3P1U/Px0hMvG4=
X-Google-Smtp-Source: APXvYqzkiSQuCsoPW+JVyuIQ1l3HcjxZdbyA3ArF+q0RKiXjdFRBaKJHsdQb5SoWOni0bcWGlygwig==
X-Received: by 2002:aed:29e2:: with SMTP id o89mr1410619qtd.353.1582839348047;
        Thu, 27 Feb 2020 13:35:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2ba4:: with SMTP id e33ls399272qtd.2.gmail; Thu, 27 Feb
 2020 13:35:47 -0800 (PST)
X-Received: by 2002:ac8:377a:: with SMTP id p55mr1416533qtb.87.1582839347656;
        Thu, 27 Feb 2020 13:35:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582839347; cv=none;
        d=google.com; s=arc-20160816;
        b=q7va9lQOyW5gzIxhGchx9U5dsZZWrFJfaEmMa08uXP6zRcEdurV0sBehWtk+UjFPD2
         SZp2uWfnZm5U1x2EOXM3WvKtCtI64xVrOnGhIhLW5WhgWyfrQv+YtqYrFZYBUZwydA2q
         R+mi9fQoy4fgJ+yvD6JA+1HqDDfcG72RKgZpJKev1YdlhCTNGcnc+pFTLl1G8f2CCTKY
         YKf6y0y/Qom1FAHJgTsl/BVTRGn+Qx0TZbGw0IrOJsflb76RiiQn//laJRWNTBXXKVOR
         UVCANPvqDsvgB2OB0Q4sqPpeulu+6oFjYfEUsM3Xye6hwX9R2vxDHlskyToXcT3xODSb
         L5qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:cc:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:dkim-signature;
        bh=3j2hvJMpq/q8KaX+62obi9xX+88RkfLzjLfHwZgX5Y4=;
        b=v3wFikEn0PMhM/Mo7srEbRbKUKMaF7r5m1WZE5C7dR7EqqaChB4ThUGjEai7/rcqHb
         vLJNj0lw2UccrLEEPxax8cj1kn40yb+f8FdDWiUHOQpI8S1SvdOPhWLwb2LDugmH0VA1
         jz7jbIx6/vTB1vCO7XYoGqQPCTGl7blAuJyjJXy4kGwI0v0yQXLed7kQooEjCbss0Ohv
         uyEh6jT3XJt5VrVFY9SHZ/NkkR9DiBO4yt0utJQECo6h73nNEvV/UJvVyvavOfSaL9HI
         EPHMJLaaxQhnlKKMawI9bTGvznL2pLtmRAgxdoTd9E0GyNV4TGtoGEEsEx2ZgvYZEu+w
         poWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=uXZzIxo8;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id i26si66149qki.1.2020.02.27.13.35.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 13:35:47 -0800 (PST)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id g6so340703plt.2
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 13:35:47 -0800 (PST)
X-Received: by 2002:a17:902:8b89:: with SMTP id ay9mr740609plb.309.1582839346217;
        Thu, 27 Feb 2020 13:35:46 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
        by smtp.gmail.com with ESMTPSA id p21sm8047800pfn.103.2020.02.27.13.35.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2020 13:35:45 -0800 (PST)
Subject: [PATCH 3/3] RISC-V: Stop using LOCAL for the uaccess fixups
Date: Thu, 27 Feb 2020 13:34:50 -0800
Message-Id: <20200227213450.87194-4-palmer@dabbelt.com>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
In-Reply-To: <20200227213450.87194-1-palmer@dabbelt.com>
References: <20200227213450.87194-1-palmer@dabbelt.com>
MIME-Version: 1.0
Cc: clang-built-linux@googlegroups.com, kernel-team@android.com,
  Palmer Dabbelt <palmerdabbelt@google.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: linux-riscv@lists.infradead.org
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b=uXZzIxo8;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

From: Palmer Dabbelt <palmerdabbelt@google.com>

LLVM's integrated assembler doesn't support the LOCAL directive, which we're
using when generating our uaccess fixup tables.  Luckily the table fragment is
small enough that there's only one internal symbol, so using a relative symbol
reference doesn't really complicate anything.

Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/lib/uaccess.S | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/lib/uaccess.S b/arch/riscv/lib/uaccess.S
index f29d2ba2c0a6..40bf130073e8 100644
--- a/arch/riscv/lib/uaccess.S
+++ b/arch/riscv/lib/uaccess.S
@@ -5,12 +5,11 @@
 
 	.altmacro
 	.macro fixup op reg addr lbl
-	LOCAL _epc
-_epc:
+100:
 	\op \reg, \addr
 	.section __ex_table,"a"
 	.balign RISCV_SZPTR
-	RISCV_PTR _epc, \lbl
+	RISCV_PTR 100b, \lbl
 	.previous
 	.endm
 
-- 
2.25.1.481.gfbce0eb801-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200227213450.87194-4-palmer%40dabbelt.com.
