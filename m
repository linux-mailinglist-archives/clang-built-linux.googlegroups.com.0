Return-Path: <clang-built-linux+bncBDYJPJO25UGBBINKVX6QKGQEVAOKMAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 2221A2AE6CC
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 04:06:11 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id v9sf284825qtw.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 19:06:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605063970; cv=pass;
        d=google.com; s=arc-20160816;
        b=H8yhqYqDzZX2SYmhe83sxFq6+ta0z+0rMiaulhZ9uErYRM9QBdX4hJ9NdjKCWFLFoz
         gJQ3dpASrCGRcjcI4VKJN8V0gPEYknr2CYlqyfcJWssv8GJKlOn93qwWa5B9HHX+oS/b
         Fmpuie6C8rIUeJOvYnvcCrI7VBTGn1mJVoJU/Ul14nxgCRTC1enUf+56SqtKoqvsyGZY
         +nwk0L4BZGEu1n0IRcc1gG0Ca4tRzAo0/9IlCtkak9bqcytchKzgTdhL5jCof7E/NdLZ
         DPGpzjQeBMvohsXXZU4dEHj4+rdQNYnE470OoWiZ0dZwx4GXI7+TeNuAIeZ7M5WXNgs1
         Xsvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=cvqKViNDRADCMRAJXyPHw4vniPTNvSzK4cHr8H7rtqQ=;
        b=Gy0MCbEgOkIXTZ2dZyv+U7risOumaWem6ij/I3mfie1bSn5LwsjGwhzIDyKYX+6i0z
         Ty/yk4LSjSBKiAzHgD0jz1/kUHsoknV/UPn8E1S/3YEo7Ar+s6hjylEHQk4Yg6/kX6wK
         BrbGhmr1zOtiNt0ahZwFXRb86Mgz6HzHQXeL+wROgW81z3GJngiL7VuH75JHwgGNSOSO
         I8bcQrDvglnNUZnnPTnfqO2BnXbVhVJ66bfgv6ik/JpXROTch/gBPiMe/AxiETli4A0L
         MDsXBdWmqiX5nD2Rv+LJ1w8XcW95z7w9riWztCkRUEaOrhQdUreg0b0BHXppR291usPb
         JNHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Kdl36wFg;
       spf=pass (google.com: domain of 3ivwrxwwkahwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IVWrXwwKAHwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cvqKViNDRADCMRAJXyPHw4vniPTNvSzK4cHr8H7rtqQ=;
        b=eQmj+PsB3PrWPIQaeszCVrN9HQ9+47iSSxkaiKBkZTk4Hg8BmyfRbjtqgQyIOj9A2f
         +5iRi3i+20n6Drc8o6OxmoQIrsTn7laMzw1vFjTN9ZUfmt3HJ7g77xbLG9AuYgsTFewy
         ABdCYeGAO0xeqM40rh891ELsr5S/drmv4qaOfMtoou7S+gM8Lb9/8jvtsegJ+Q4U248H
         fmEJt2alzgUJhHJjX5wz1f0O+N1Ig8cGbl9s2lVCIr8FuE+LP0uDmwu/fEY4pMSJvKIi
         vUPQvm+clN0vTZPhJPYHexmFASTdl4LZl87jYYq2rX3j26pMh2JpABLmYY9dvNrhVM8J
         0qJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cvqKViNDRADCMRAJXyPHw4vniPTNvSzK4cHr8H7rtqQ=;
        b=maY4PaCaJbH7Z9/5i20dCgPxypyqgsjeloqGMwvcDQx95wO4RM89eRPkmVlUm5V5B9
         2SVYs7Z2xW42UFA1wriIlHxtUZ9blKr1nPM43P4QbDbj/R4q+57H1I3hHyK0WP68HAo3
         xzLxeJ89dTaDfmCSsJYDTx46BNJkH5iaw4BbEQ3F89LWBdbkyf8XOYH3yyHnkC797Ap7
         +/o3obaGWP07Gh3hMZZvK9Nl1TOmCyYHpw+WLXMWPyF1mIXdlnG+OFK5hOuucwJFQh4e
         ZlwVX2dKaGJkEo4BVHTQa1zWNNzIPjeOOws2A6Dj7rGACoqPcV7cw1FyCGDJafwUKhDH
         gANQ==
X-Gm-Message-State: AOAM532M3pwBjm2HV1HPi4kF9C1EgDL0qgCIFwYDjCVfZ63Jb7KaD16+
	iuT15RcPedaOalSyPpqpSi4=
X-Google-Smtp-Source: ABdhPJx0GMhFEdGGD74EgfdH/u+5aUuMYKzeJ+9d9bFFZ7dH1A0/W7QIfFNO36ves9oFQ4Qu9Gc2QA==
X-Received: by 2002:ae9:eb10:: with SMTP id b16mr20794552qkg.494.1605063969972;
        Tue, 10 Nov 2020 19:06:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:52d:: with SMTP id h13ls3592360qkh.11.gmail; Tue,
 10 Nov 2020 19:06:09 -0800 (PST)
X-Received: by 2002:a05:620a:230:: with SMTP id u16mr23084168qkm.212.1605063969483;
        Tue, 10 Nov 2020 19:06:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605063969; cv=none;
        d=google.com; s=arc-20160816;
        b=sqIcw+9sAMl1uh7RM6bNml/e51YY7A0kckwKz+EloBmcsIp0TTH0ef8jMpSZShuu58
         WQ0dZ3wY4NN5728e9astpb0RPyufvTB6nmQug1XTgeFStK59Zz6CzrCJVdtt3rsdfy6J
         DvupvQCiLJwRgWr6UJYmY7KrfRs7TbN6gIaaW2gFfacrDxJByNs4pcbzI4PdEByoXTfF
         to4wn66o3tSVVdcbd04EwQekmd4xtiwZgwamvyu+7OimNZe0FeL+xP45evBnZY8jNOKU
         0RSre6cVZFRlSE6ThDSBUjYHdEJn/+u7EgOnZ0IeNMgcF0d7OsEFfXJ/8ZiSDcitYhP+
         DlIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=C8NYwKKk49NFdXJwjh7kRkQTeN13dEWuqSXpliOzs8c=;
        b=f1RC0P5k3XYMevs45kGRjUubX9r1+exufxinoiV2JEsYbKhAU2/65x03uHbKM0tbU6
         fBosOSuwGoH9lmeJ3+KumRqYFRPuRw8veP0gM2r6dZPy9XYFD9BZhHJPvUJKCyU6s9B4
         fQGp+/8lSppjSYXvq0bpG2m23O0O3CrriLHdkjD4IAgpmazapPj/hBZHEsmEbxVdBlGq
         E2E1UfiB6Ozig+qOf6nJ8MyFs7jLaC7MzAn3UhTGgtUPJh/31DLRLMbXhBEnAV2uodU7
         tsezoNQg2BvIyD53kRbq2q0762b03yLklArC9twiMFeEjt+nSOwxisuysCKG67xF9IR8
         Bz6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Kdl36wFg;
       spf=pass (google.com: domain of 3ivwrxwwkahwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IVWrXwwKAHwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id p51si59553qtc.4.2020.11.10.19.06.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 19:06:09 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ivwrxwwkahwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id j10so893370ybl.19
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 19:06:09 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:3342:: with SMTP id
 z63mr25038540ybz.393.1605063969086; Tue, 10 Nov 2020 19:06:09 -0800 (PST)
Date: Tue, 10 Nov 2020 19:05:56 -0800
Message-Id: <20201111030557.2015680-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH] gcov: remove support for GCC < 4.9
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Oberparleiter <oberpar@linux.ibm.com>
Cc: clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Kdl36wFg;       spf=pass
 (google.com: domain of 3ivwrxwwkahwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IVWrXwwKAHwsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Since
commit 0bddd227f3dc ("Documentation: update for gcc 4.9 requirement")
the minimum supported version of GCC is gcc-4.9. It's now safe to remove
this code.

Similar to
commit 10415533a906 ("gcov: Remove old GCC 3.4 support")
but that was for GCC 4.8 and this is for GCC 4.9.

Link: https://github.com/ClangBuiltLinux/linux/issues/427
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 kernel/gcov/gcc_4_7.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/kernel/gcov/gcc_4_7.c b/kernel/gcov/gcc_4_7.c
index 53c67c87f141..0da0aacc1f26 100644
--- a/kernel/gcov/gcc_4_7.c
+++ b/kernel/gcov/gcc_4_7.c
@@ -25,10 +25,8 @@
 #define GCOV_COUNTERS			9
 #elif (__GNUC__ > 5) || (__GNUC__ == 5 && __GNUC_MINOR__ >= 1)
 #define GCOV_COUNTERS			10
-#elif __GNUC__ == 4 && __GNUC_MINOR__ >= 9
-#define GCOV_COUNTERS			9
 #else
-#define GCOV_COUNTERS			8
+#define GCOV_COUNTERS			9
 #endif
 
 #define GCOV_TAG_FUNCTION_LENGTH	3
-- 
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201111030557.2015680-1-ndesaulniers%40google.com.
