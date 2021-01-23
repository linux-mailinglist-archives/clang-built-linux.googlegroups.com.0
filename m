Return-Path: <clang-built-linux+bncBDRJJBNBQAFBBGXHWGAAMGQED3T3BYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 949C53017F7
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 20:06:03 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id t15sf13627549ioi.14
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 Jan 2021 11:06:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611428762; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q7CrjgZMqOM/4k3oxhXNlg9xz8O0UIEm89LmkTHsCe3XHTIYd6zqBtBfDocexOB0Ve
         XmlRc+yE3kVJwXyGXE5Fl63yT0ZQTXaXRv+60tO6EhsbRjLShjLltByQ8Kk79GZ8G6jx
         spzAuYpCFtbwsjt7lgC/7XkIkUDnVPui+lerLoGFyFioMrfvs/S8LleId6rSaQiIZpYS
         OPKRdY6/Dfs3FUPxnQSzbxdNoxlaiLm4xehrL9hHoyRtBugoEeuyHatrHb5eXbqYCXl9
         dWiIqGCVbVnIiN8kmnnporExAqbZmWsbVtWw7mxBiHqB2u+j+tEiw4kt1k9Jbjkr3vgI
         VJUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=UF3N1+Fj9/XPbOFpdvD2sU8GO1hLk9T5KG86EpnbsgI=;
        b=h+JB6O+iRPZhTw+vRyXDKcwua8tphYMFNPgI2OhVHNlTdYquLypaiHYgmj/CD6Vzgn
         gWMfV83iSnPMptAcA6EDUc79nYmYoRRcDx1DRpewXGy1tW71vNDpCndaNT7XmZ+uLxUV
         3UpxdJVg7Dq1Wd1fx/O1HBlgp5UHgp4MMLzIgCaXFpoRo9wSVaDY7dZ7X/Z49KwGfYU0
         eHkadFxsAhz71VgG62Fv/6OF0jBW7HlOHKv8PhOOEel1Y3TL/u92AgK447EsyWzATz0x
         ZD8y1GOGQH5jj9TMAA6NQoYPwhOcH7quOMkSxTJcHXwTEmTYDt++mW2Wis1VXehcSZUs
         xafg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K6fh6gdL;
       spf=pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=yashsri421@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UF3N1+Fj9/XPbOFpdvD2sU8GO1hLk9T5KG86EpnbsgI=;
        b=AaoSLwxLpph+wbvXgzIltjxs60mPZOpMDjti6buFdwtU5C3vM0ba4PnsbU/socbSR2
         saJpAiue/f5DTfr/H3/a7PN+zveykW0voqKEpd5LpjGpebnkZKM0x7Pzp/VDT+EstpIe
         hDsYQMtpBXj38KKqnS7tDC4kU1DC4AwA0ee+NDG2xcWTe5RibM+rt+O0zFAZxleFv6ji
         u/UJcRFSvI2MJ5ghQqC3x2aU3UeMBzP/HWQXr4/01lJ6lXyj5cmvNkL9CTar3W+UKwpT
         u/mEC7egj9CcVza+SN0NfrEEFv18FlZiJkqvzW/l392BLqR/yATjfGlj9AIKSn18Cb5a
         Nq5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UF3N1+Fj9/XPbOFpdvD2sU8GO1hLk9T5KG86EpnbsgI=;
        b=m4zFrXk2tCMKKeS/hRTiBM9gw/zQKdqJWZ+c9n8MIiwJXtRV32G+7+UJzX9lD/YzN3
         rHsHOQgzz1twxJXy7a1DxnMcEs2XqltiOIAF0KvLsuDoSFAPJy0X2mqjSPQ9LI7LroKB
         TepsZCnBW+U77aXT5sEyRwgJYm3kuwgaW/4YkLERyEfgKa+yVs5Y9RYDfIwV8pD8FSHx
         yrwlWG5EaATlT9SHdFQXeoRQl7AN6TUDho90tQbHuVwqNMjafQMxQj9RDLvxtlWaSnnc
         7yAmBQWY0+5wNuVn31TADiUpgjpMi4l6/+Dt31Ht+PxS2rpqJesy24oB235OtcwL79GE
         Vnbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UF3N1+Fj9/XPbOFpdvD2sU8GO1hLk9T5KG86EpnbsgI=;
        b=OVnJ7Gi9QLdlW3kl6uvH+7Nv2Eql2xYUQIkKII2dE3T+L+z1BHSQyZl59kLvo2F5cQ
         hhwgv5VIqNsigmbrDFQd7GA+L1h68Rg8rrQKqAvITSdK24N/MT58gitZkzqcRhy1+6Y3
         xw3Js2uhLuk7e0zbWhBU6IGOQTrlr9ZPzM17RypgYwp4m73Jout5E9SEbf5XxxWHZH2z
         8TKwyB8Y1+0UvTdV7TbwwmnzrxItmgGloZ/7/AcBZj5SHBUGJ97mhjxJJ6me7uJ8+FtR
         UltbegXkJ0BOVYzp/2xGRpq6Tw8lHDpfMHqtPxv7LwED1cG8i7TtZXOLqjUsDMBRu0Nl
         8uTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JSXivRK0fhB+mjqf8t82qrE4+D+Ogt7dVzRkeslqsZ4U3XA2N
	GwT2MRpuLlDwFC7MCTRy+x4=
X-Google-Smtp-Source: ABdhPJyUH4t0nTPTYs/7Cx/+Jb12MUQVoDL9pNOCPRQ205dkPwBmrJeHw51AKs+cyGFT5gkllgr9Yg==
X-Received: by 2002:a05:6e02:52a:: with SMTP id h10mr3024ils.1.1611428762131;
        Sat, 23 Jan 2021 11:06:02 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:9a0c:: with SMTP id b12ls1021134jal.10.gmail; Sat, 23
 Jan 2021 11:06:01 -0800 (PST)
X-Received: by 2002:a02:712c:: with SMTP id n44mr62638jac.24.1611428761681;
        Sat, 23 Jan 2021 11:06:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611428761; cv=none;
        d=google.com; s=arc-20160816;
        b=VNYNzSoc4JJ4gGTTykF2RkHsJue3HEJPyyNyTsphsYpMcVcC/pWMs2xHR5vD3RTrYL
         jfBSnlKggUMy6SbltFc5+w4I93qTIGe8oWyQo+3695SpdAD9ZLulzPsCWbl81a4ZFpCp
         FEwQX2FWePy46HioxncXa0Mb+pHsS5y2XtTIx1xEuosFWaKPZBWyIGhf+GBWXT7kknGX
         FD/TNZASQ3NuElKdj9tKmIqJYi+Y3/D82hwzmTduw7H6ms/8RcNaV4bKHAQryi5m09ra
         Ydw5TrP//ACNJZNRqVNFBLYQbIN7kWs+7+FHBuaScpNwFZMFdCjFebfGOCleRqZDrVzR
         XWSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=mzZg7viznpPW9SNKKzGUUY3fkPMxKyXqQG2BhjhBWW4=;
        b=cqByvhZp8l2RoJMTsnUUiFXUnHmdyR9rg6LJrEXuVO6HW7uXty2bE3NFRITX19vkLX
         ArwzKwnaNFt8/qrk/oqbfpgxWm/8E8MSyAy5pX2HqCOhWO0qdT8mUxIm+6kmIWhacn4X
         Q3j3cFyJcuB1Zfn1kUgRg8nMyWCSmlWibYg5v7oH9vIBlLP7lT1XVYPLIEE4v+bsFo+U
         H49ZsPKdsQR5q4TxK42UsSViiJMG9c3jvUWGChzbVyjuu/vGVC+FI86CkgDQvXKsbNg4
         pjTLROFTjBrCaxS7RmdFHs+SXsE6QD4TnLplv9kZhw5/YROxpAwfChfsfD5kKmFl/EPE
         DXQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K6fh6gdL;
       spf=pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=yashsri421@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id j21si845638ilg.5.2021.01.23.11.06.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jan 2021 11:06:01 -0800 (PST)
Received-SPF: pass (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id i5so6183570pgo.1
        for <clang-built-linux@googlegroups.com>; Sat, 23 Jan 2021 11:06:01 -0800 (PST)
X-Received: by 2002:a63:2009:: with SMTP id g9mr1055989pgg.219.1611428761067;
        Sat, 23 Jan 2021 11:06:01 -0800 (PST)
Received: from localhost.localdomain ([2405:201:600d:a089:8c2b:8940:3286:eb08])
        by smtp.googlemail.com with ESMTPSA id t8sm12524465pjm.45.2021.01.23.11.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jan 2021 11:06:00 -0800 (PST)
From: Aditya Srivastava <yashsri421@gmail.com>
To: joe@perches.com
Cc: yashsri421@gmail.com,
	lukas.bulwahn@gmail.com,
	dwaipayanray1@gmail.com,
	broonie@kernel.org,
	ndesaulniers@google.com,
	jpoimboe@redhat.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3] checkpatch: add warning for avoiding .L prefix symbols in assembly files
Date: Sun, 24 Jan 2021 00:34:59 +0530
Message-Id: <20210123190459.9701-1-yashsri421@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <f23f4003-0017-d52a-39b9-2737e60182bb@gmail.com>
References: <f23f4003-0017-d52a-39b9-2737e60182bb@gmail.com>
X-Original-Sender: yashsri421@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=K6fh6gdL;       spf=pass
 (google.com: domain of yashsri421@gmail.com designates 2607:f8b0:4864:20::536
 as permitted sender) smtp.mailfrom=yashsri421@gmail.com;       dmarc=pass
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

objtool requires that all code must be contained in an ELF symbol.
Symbol names that have a '.L' prefix do not emit symbol table entries, as
they have special meaning for the assembler.

'.L' prefixed symbols can be used within a code region, but should be
avoided for denoting a range of code via 'SYM_*_START/END' annotations.

Add a new check to emit a warning on finding the usage of '.L' symbols
for '.S' files, if it denotes range of code via SYM_*_START/END
annotation pair.

Suggested-by: Mark Brown <broonie@kernel.org>
Link: https://lore.kernel.org/lkml/20210112210154.GI4646@sirena.org.uk
Signed-off-by: Aditya Srivastava <yashsri421@gmail.com>
---
* Applies perfectly on next-20210122

Changes in v3:
- Modify regex for SYM_*_START/END pair
- remove check for arch/x86/entry/* and arch/x86/lib/*
- change 'Link:' in commit message to lkml
- Modify commit description accordingly

Changes in v2:
- Reduce the check to only SYM_*_START/END lines
- Reduce the check for only .S files in arch/x86/entry/* and arch/x86/lib/* as suggested by Josh and Nick
- Modify commit message

 scripts/checkpatch.pl | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 7030c4d6d126..4a03326c87b6 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -3590,6 +3590,13 @@ sub process {
 			}
 		}
 
+# check for .L prefix local symbols in .S files
+		if ($realfile =~ /\.S$/ &&
+		    $line =~ /^\+\s*(?:[A-Z]+_)?SYM_[A-Z]+_(?:START|END)(?:_[A-Z_]+)?\s*\(\s*\.L/) {
+			WARN("AVOID_L_PREFIX",
+			     "Avoid using '.L' prefixed local symbol names for denoting a range of code via 'SYM_*_START/END' annotations; see Documentation/asm-annotations.rst\n" . $herecurr);
+		}
+
 # check we are in a valid source file C or perl if not then ignore this hunk
 		next if ($realfile !~ /\.(h|c|pl|dtsi|dts)$/);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210123190459.9701-1-yashsri421%40gmail.com.
