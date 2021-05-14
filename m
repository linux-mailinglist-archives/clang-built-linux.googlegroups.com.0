Return-Path: <clang-built-linux+bncBAABBIMF7KCAMGQECDWANFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CC7C380AF5
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 16:01:07 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id n1-20020a628f010000b02902a0e02b2be8sf16766496pfd.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 07:01:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621000866; cv=pass;
        d=google.com; s=arc-20160816;
        b=W/bHfeS73UQoSu26x3RsLQwhCb76t6wN5uyEVyJFQcK3DxDlHCdv2IZ9ynzkH05amc
         6vIbRxLRHhnOHOLAgteq4xeHE+cAoELCUQQoGOBK7wzjnxoiMbur2Ia3SzidqAAKtpKj
         00dXP86nUCGvh2lOe1EP0wytp0p18EqRN5EhCZMlgN0abxRmQQTVy8b5iFFqKACbgmPD
         bfkJ4aJHbGciiGW+Jqff870DZweZMI9rbU377SAoahp0LuEqDOF6COKmFdbNcquXOgoZ
         BPBFg1Pf5m5CLmbiN7S/dEaR4/gPYUmZy0/MB/hWdc/EJoR0BiAmFYZXVL+8fZ6jxK5m
         LfSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=xGyhAdYdSA5B9Su874C5JOpEewHeqbzJO2nJ6HLipXs=;
        b=V4nq3fb/EizvNpIyXQ/tOpDclyp6ZoSoeNLwA9b7ogUpu8zqQsKYxYHU232WzmVmEG
         y1eUry9C2w57jludYsFuDkkcZDDxIT32XZqth/2IrKG/0p8m36tazpL5SKn6soJK3Duk
         zTXXwuO0waVb5TXp2dd18qTjYgPlwqa+71ijrW5Q2kL9EzBmxke/BthglH3msdVpyCt8
         kjCUjces1UGaXQ39dfKSTaJQXlvdtxgTNyrSF8GNszqrNL6DAMR7Ka6oNFMT7liZwLqG
         UnSFGOYsfBnXCuyq4m2wNURBGIT35YVwivpOKJIt8fCDqInZC4Ayw7iMFWGpips8/mWS
         UoGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="DJxi/6vL";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xGyhAdYdSA5B9Su874C5JOpEewHeqbzJO2nJ6HLipXs=;
        b=rncHvklHlxmfpNnCldpwTJAXWn6Wz5xzuM15hdT9zBv5b9zSFuCbU0KMfY0pJXwdXd
         N2h63AT3xVW0gcOcq6nQ06hvsG3gZ0w1VyfGhyIwmAaEIJ/VY/2D0yGOnqycyThwGAZk
         3W+/BHZ+W0UmjpKeo4DU04Uy8vEmouLVxLeHrH6oOQfEn0Tz+dxRUVWcAjB7SoZRXjL9
         J0WMXo/DaLtvrz3dbiW1ySoNsPXzXyyLMA1pC/lZghI+yNUwnwpQmg2I8hclv7oVuRYb
         bY5VR776A+50hxGHP0Q3FpyoQX1lRVruShRLwMU1o6G78G2L6SSkWBmZaXF0xLLKcZ7d
         ibUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xGyhAdYdSA5B9Su874C5JOpEewHeqbzJO2nJ6HLipXs=;
        b=p2Bs81AYCfUiXCmqSBGC16Jd+yd+ot1w0A49mBkJjC5/zGvoSvoJRlrWtNq26grYTO
         6M3NOhf08AWijsO5N5WqKKzKlSKwcP5c4fU2fwzPpIGn/2hRQDgJIOzPDKtzJLrnVCLp
         /NYgMOpxOZQWFIH+K1K2xik8Rm0pvDtO8kGzBXiHIHIz2bWljn2L1zzXdiw0UgYH5Jo0
         QHkYKdOMgpfKBP7Rz1U3+LaaQWwgMVGQsni5AgsJ77QyzyGwcT70WiEHDFctl6nwqNKz
         RJrrmd58+t1nb5junQvBp/jCN5P3WHmghjp+rtlOWNmaunxixMea52P/t6oqIbmk7rI8
         xThg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532V2hMKT8/ReIvnBoXVwaopqY/GPZAQFqNjeIUk7ABy0Kp7Y3rd
	s/8Pd6bOYOesvPFDxOCelUc=
X-Google-Smtp-Source: ABdhPJygL9Z60Dh8wWvvL0S8Jm8Em/S6RGDfHYZLBDLJwifXVAPN2/V2ofBy4zluFHNGGO7HZeb2ZQ==
X-Received: by 2002:a17:90a:ce92:: with SMTP id g18mr11438279pju.214.1621000866057;
        Fri, 14 May 2021 07:01:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls4982289plb.11.gmail; Fri, 14
 May 2021 07:01:05 -0700 (PDT)
X-Received: by 2002:a17:902:8c97:b029:ee:f8c1:7bbe with SMTP id t23-20020a1709028c97b02900eef8c17bbemr46076368plo.8.1621000865627;
        Fri, 14 May 2021 07:01:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621000865; cv=none;
        d=google.com; s=arc-20160816;
        b=zLusimw6Vdcbt+5m7LjVfOh9nyT/kOI8c1kAFDOXyJdYLBG9oQahJnNgHIYK9qJiKE
         VYx8XMb47evDMd5388zMjbLWbY3FmOsboVlA2ix0A7ol9Rlm5pr3sWmiKg+mm3/wEvdo
         k/WCLJhMb76E58d2QKkr2zqtdZew5GSRcefUTZNxIdHBRnKtnLVvss2A4BMXw2Hm7iD+
         NH0XQu/U29kedrAO08awu7sbItO+8P+DYnnICmuYU6HAZogdstMPS0w9kqCG6A7rJd9p
         gtIM7HK8YR64Xh4VMvA7wgcHp1bgxhHDW3Nl8GvItnzi4m+whhbfjCLYrJcY/Y9cGScr
         eGqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=LyHlpW2UlOKG0QIogMUPiiTW9+pWu5cPlFoocFtCwuA=;
        b=nXWrALZZSZsma8qvug8m9MLeJ5Wf06rWZBZITa3iKa5/jRx8PGGPw/6I5IHwhskhS2
         tDXxQaWPKbxGrXqz91Rm9muUsQJCbZ5LuVj+/8qWNEDP0xxYtewlX8wDaRqlScsZb8t/
         tqRPiGwaQac01BVJDOTkJy/QJAwnd1Li9G8xsDINcdqRh194pNyzIKG6+BxAe3u0G9CA
         BjP6rL22DLBik4AJi64PfPMt46M6frKQ0tr8W8H9DLJQ97BJiJ02MGwUt8BI2rcFT0O2
         mdEs/piKTeAKKCvQNAJ74UZ42LPUK5OvUG2emv9y7kTi/i1Cn6O6v7FibNB83FJC/Xr+
         Rf0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="DJxi/6vL";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id ep1si624972pjb.2.2021.05.14.07.01.05
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 07:01:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5158561461;
	Fri, 14 May 2021 14:01:03 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Marco Elver <elver@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Dmitry Vyukov <dvyukov@google.com>,
	kasan-dev@googlegroups.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] kcsan: fix debugfs initcall return type
Date: Fri, 14 May 2021 16:00:08 +0200
Message-Id: <20210514140015.2944744-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="DJxi/6vL";       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

clang points out that an initcall funciton should return an 'int':

kernel/kcsan/debugfs.c:274:15: error: returning 'void' from a function with incompatible result type 'int'
late_initcall(kcsan_debugfs_init);
~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
include/linux/init.h:292:46: note: expanded from macro 'late_initcall'
 #define late_initcall(fn)               __define_initcall(fn, 7)

Fixes: e36299efe7d7 ("kcsan, debugfs: Move debugfs file creation out of early init")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 kernel/kcsan/debugfs.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/kernel/kcsan/debugfs.c b/kernel/kcsan/debugfs.c
index c1dd02f3be8b..e65de172ccf7 100644
--- a/kernel/kcsan/debugfs.c
+++ b/kernel/kcsan/debugfs.c
@@ -266,9 +266,10 @@ static const struct file_operations debugfs_ops =
 	.release = single_release
 };
 
-static void __init kcsan_debugfs_init(void)
+static int __init kcsan_debugfs_init(void)
 {
 	debugfs_create_file("kcsan", 0644, NULL, NULL, &debugfs_ops);
+	return 0;
 }
 
 late_initcall(kcsan_debugfs_init);
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514140015.2944744-1-arnd%40kernel.org.
