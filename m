Return-Path: <clang-built-linux+bncBDTIRUHU4QLBBLH5YT3QKGQE2Z2BV3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB2D204470
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 01:28:45 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id v1sf13765852qvx.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 16:28:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592868524; cv=pass;
        d=google.com; s=arc-20160816;
        b=mFBHmeB/U5iLvwubo803MxlzRTzwtSW2QPdH4B/dzJHWNqXZU1P9pcfzyE3U2O2geW
         rkaGAScxtQIB/3VtIwjwZRKa6O3WlV3dglqaPGavT1oO6GMCZttNSSXZqADy3prixPyV
         h8nG2qOeNlt+DB8uextdZaTy5ieHwpV/GX6ewPGuMxN35IWm9yhjHAFxkWtnMw27SbAj
         HyL4hHQ4qzfXi4orhs8JV08GQoDKoy1Vg88dSo2DCOqITbpypYyuI8K3sC8yLlqNgzXt
         NtD1oWqiwI3BcFh6e8+gyDbQhy41+0iaQPFpPHv6E8wrI0Pb8/F7dadBrgqhjyNToX7G
         Gs0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=rzNnEYHIFl0c4Z6yUyzdno1wOWYDKKVwqx+mk96kcTE=;
        b=BeBeI6Y+4mXHKSZEYeLa9lE09dMam7HWshPKfKp9wVj8dnsgS8bbu22r1bbhGu7ciR
         F/0ff8ecS/a8I1huWKduhfEJLWDeYTXkK4LnkgnvdNSM5i47szkeb8IVBKOgUHIqBgYD
         g/oqIva8Mi/bRXPjAgufT7ZEOrsgTAIcnaEoRRUwloi0nsm2kkNE2nkymVxTEhn4LcgL
         C7nRjK722H9NlurpnVNfalF3Ysep7NFfH1QSHSEe4IyvTCvvSDHoDji4en2UCV0ouA2d
         aK/AwzT+qy3YBAbkz/+3+9mWwZ4UpCPNp9kRrZrIDd94sie7qxkF8FJYRVJXdFVpItYm
         Ureg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AxpsZkf4;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rzNnEYHIFl0c4Z6yUyzdno1wOWYDKKVwqx+mk96kcTE=;
        b=WeKQn8uvwcv3tGy7zg7/9CyIEOhz17X3dv/9NJi4npoJHmIhkdnLe1chC5p5bxuQEx
         oKDuVsieK6fv5dm9aZBtqqpVsNxsh4oBJN5eoML2VT+H28josTg+zB6idoHLZ1i1e2Ss
         ulUyDvyaVzF12RKQElB9rNGkpSJ5gwk2Dh/26iLAAg6yu2agFJ4QpKHiNaVq9qk7iXGS
         JIGs+nA+AFFciAm8kSql62W2Pyu48W2bD6zw1iB+qO346ozgCAyoLjXXuegVGxHUBXQL
         yVziOZLeHmGCQ6ALuxkesH7q13gHEdwE7aAYUjn5Q9pgYY9xpLn2vbfQ+WhvPbYOflIA
         GDvw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rzNnEYHIFl0c4Z6yUyzdno1wOWYDKKVwqx+mk96kcTE=;
        b=iVpmASi3uLgWurV2F9SrHaRZzMbn6hCTyFgaADvqtfBnbpZrkdcvLWrTNXNrS7lao9
         Qr1WDJCemf1i05nQ1vgH502JlG5LWA1Dbm3nPsbBtxW02GhwMQhSpBFp8ioqa3xqA1Gy
         AI8THmEwyhqSFBEqw9OqPmsxr68cJOUbJSDjXNV3beiIs51xo5hBkD/Oqr5eFeE+YoIi
         gq/ROH0c+WhvPls7hVqG67cyafBAlS07W9hKDNWnySYaKlWKY8jMY+N3d1lHb/SJJ+1E
         ldEzjjM79HFfJ3wf53TIDDDWpJqCEnQAkW8SJx7TTaydKk0deRSptM/xl66rDUuUcICU
         KA2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rzNnEYHIFl0c4Z6yUyzdno1wOWYDKKVwqx+mk96kcTE=;
        b=ft/c8DNlunAUENPhNFilekWwCFj+0pP9fPs5QNM6p9WnK16H0ljabZFDhEw2JBoWfJ
         sSN5NA7MzxYbjOb4om4jEXV3ricuSR3mc6GhZjGcNOoNlX4EpRV6d+GvD8W7+NiYiT3k
         cevEaDbasidEDESzQDMSajC2bM2CEmsqXz8dq9p+wQtDKSi1f1GAVGwQfAAafYpguMIm
         C0EtEsT2t6cEl1AYCAyp9k4UZwu5rz9SVyDmzeSuWximaI3ZRxRdJiXXcP5KdUrPmRLA
         1NQrmUWYQSK27qakVsLiBCOrJH/OY/4bkcE2tQjFckBXDJe0DzkAE2lwP/tT+aOIwzwl
         O3ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531K17ohu/rAALPzxY+yMc0BN+Kz+/JZnPPVxekC7L3zQ9pBvOrD
	DaDvjALlRK99/1yv+xk5WvU=
X-Google-Smtp-Source: ABdhPJzD2gsB4ooqfmy68Vc5Z9oKREoHCs5TwEoiZNtFVU+VziM4QgVjN+tCK+DuAN6R8WzYml0zWA==
X-Received: by 2002:a37:4986:: with SMTP id w128mr18039947qka.83.1592868524314;
        Mon, 22 Jun 2020 16:28:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:55c7:: with SMTP id bt7ls4314102qvb.3.gmail; Mon, 22 Jun
 2020 16:28:44 -0700 (PDT)
X-Received: by 2002:a05:6214:10cb:: with SMTP id r11mr24066050qvs.203.1592868524044;
        Mon, 22 Jun 2020 16:28:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592868524; cv=none;
        d=google.com; s=arc-20160816;
        b=Km8Ie0XJ/u5gTHpSpeoSKlQPfZu1Q8k0IedTcPDdZoJh7ethY2M7YyES3InhpIzNaR
         8cS/q4nX4wSZuWO4ze3RbiwFFOh6PifBWYU06sWvyxb/E1aHKm0fI6NbI62tn0Vz9sNA
         HPg5u/oP7lvmZXpOJGvOvxSJoue6j3XkYUGqmEMO30xDxGeLo8zMh6jxcv9tyuggk9QY
         reV25vdJ+PkJ4Q9DryJwGovByxdKbF6Izq/x/kdgr7/m/QDcwOKto2dtE4DqS6B4T++o
         HH9qicnqQgGbtvTyXOv139Tjz+WZhdcRNv5kYPJRHx10VAboeXMWhYnjAqBcW5BMjGeD
         w2Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=gQRngbxyDaJsXc3eQ4RGxEukqq41ioPgAa6TX8jqgRA=;
        b=GDWdIYvDSNTOquLz8cZQEAGd2OR8/sPqDwT1ekVHho4wuNX5s4lEICrJe+udqNOFAU
         Tl8O6khD49ODkYoDRIOuXyeylongxhavQBQn1Q7BW5pEXHDP1pa8VDoAP8dhFQsIEjBX
         CS+KlMTyjBiwSTmy34fcDDo46sasRDEqEpYfd9RlV8uDi81sx2S8Ly8Hq1ZBxhertUpl
         QZbdjGcs8KWJujYMLr5/xF9IpRag1gutkBQnOqtupd/RhXrXq/7epsFqZvxl2m+nDFbQ
         UP0Mb1r5bvNX28m++9k9BjYL2UggFzCKpc7emR/ErkGhEn2Z0W1VxBKhKSJbGYTYxreZ
         12oA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AxpsZkf4;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x143.google.com (mail-il1-x143.google.com. [2607:f8b0:4864:20::143])
        by gmr-mx.google.com with ESMTPS id y21si1143667qka.2.2020.06.22.16.28.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 16:28:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::143 as permitted sender) client-ip=2607:f8b0:4864:20::143;
Received: by mail-il1-x143.google.com with SMTP id p11so39092ilp.11
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 16:28:44 -0700 (PDT)
X-Received: by 2002:a92:d3cd:: with SMTP id c13mr20378677ilh.101.1592868523498;
        Mon, 22 Jun 2020 16:28:43 -0700 (PDT)
Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:b7ed:16a3:9dc0:21bb])
        by smtp.googlemail.com with ESMTPSA id s17sm6800602ioj.10.2020.06.22.16.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 16:28:43 -0700 (PDT)
From: Jian Cai <caij2003@gmail.com>
To: 
Cc: caij2003@gmail.com,
	jiancai@google.com,
	ndesaulniers@google.com,
	manojgupta@google.com,
	sedat.dilek@gmail.com,
	maskray@google.com,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] crypto, x86: aesni: add compatibility with IAS
Date: Mon, 22 Jun 2020 16:24:33 -0700
Message-Id: <20200622232434.162730-1-caij2003@gmail.com>
X-Mailer: git-send-email 2.27.0.111.gc72c7da667-goog
MIME-Version: 1.0
X-Original-Sender: caij2003@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AxpsZkf4;       spf=pass
 (google.com: domain of caij2003@gmail.com designates 2607:f8b0:4864:20::143
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

Clang's integrated assembler complains "invalid reassignment of
non-absolute variable 'var_ddq_add'" while assembling
arch/x86/crypto/aes_ctrby8_avx-x86_64.S. It was because var_ddq_add was
reassigned with non-absolute values several times, which IAS did not
support. We can avoid the reassignment by replacing the uses of
var_ddq_add with its definitions accordingly to have compatilibility
with IAS.

Link: https://github.com/ClangBuiltLinux/linux/issues/1008
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Reported-by: Fangrui Song <maskray@google.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # build+boot Linux v5.7.5; clang v11.0.0-git
Signed-off-by: Jian Cai <caij2003@gmail.com>
---
 arch/x86/crypto/aes_ctrby8_avx-x86_64.S | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/arch/x86/crypto/aes_ctrby8_avx-x86_64.S b/arch/x86/crypto/aes_ctrby8_avx-x86_64.S
index ec437db1fa54..494a3bda8487 100644
--- a/arch/x86/crypto/aes_ctrby8_avx-x86_64.S
+++ b/arch/x86/crypto/aes_ctrby8_avx-x86_64.S
@@ -127,10 +127,6 @@ ddq_add_8:
 
 /* generate a unique variable for ddq_add_x */
 
-.macro setddq n
-	var_ddq_add = ddq_add_\n
-.endm
-
 /* generate a unique variable for xmm register */
 .macro setxdata n
 	var_xdata = %xmm\n
@@ -140,9 +136,7 @@ ddq_add_8:
 
 .macro club name, id
 .altmacro
-	.if \name == DDQ_DATA
-		setddq %\id
-	.elseif \name == XDATA
+	.if \name == XDATA
 		setxdata %\id
 	.endif
 .noaltmacro
@@ -165,9 +159,8 @@ ddq_add_8:
 
 	.set i, 1
 	.rept (by - 1)
-		club DDQ_DATA, i
 		club XDATA, i
-		vpaddq	var_ddq_add(%rip), xcounter, var_xdata
+		vpaddq	(ddq_add_1 + 16 * (i - 1))(%rip), xcounter, var_xdata
 		vptest	ddq_low_msk(%rip), var_xdata
 		jnz 1f
 		vpaddq	ddq_high_add_1(%rip), var_xdata, var_xdata
@@ -180,8 +173,7 @@ ddq_add_8:
 	vmovdqa	1*16(p_keys), xkeyA
 
 	vpxor	xkey0, xdata0, xdata0
-	club DDQ_DATA, by
-	vpaddq	var_ddq_add(%rip), xcounter, xcounter
+	vpaddq	(ddq_add_1 + 16 * (by - 1))(%rip), xcounter, xcounter
 	vptest	ddq_low_msk(%rip), xcounter
 	jnz	1f
 	vpaddq	ddq_high_add_1(%rip), xcounter, xcounter
-- 
2.27.0.111.gc72c7da667-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622232434.162730-1-caij2003%40gmail.com.
