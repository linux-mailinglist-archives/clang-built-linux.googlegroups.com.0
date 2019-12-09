Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCMWXPXQKGQELQVLPOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D481117953
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 23:30:35 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id x9sf7982495plv.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 14:30:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575930633; cv=pass;
        d=google.com; s=arc-20160816;
        b=aEhIe4cbczOH16kql+d2Rj+QctqOnGmgL12ivDK1VZYy03DA3sVFjw/poQpHkZO/SR
         ZkCa+YMI2wUweYilPsH1c5t7/108Q2ApQ7XMqOzDIqnv3y+UfkIC3V92+MTfWKPN4ILR
         vhtyi/JHESfHMJyRyxsVEeowkyysn/8CQin9v5QWfLgFMC1+6vT84h8MxLt8EIk7yGhN
         wO/rpMccCGk4SX3PpL/Iy12tehUFkQq4symfvbf5dc1gqF0+mOcOATlL5sR2CCgw9IN0
         oQN2KPhlfx7QZJh8fpbBiyDkh0F47Y8v8rFhEElJi3DAwLNKsER7umRaPTG/t6uk4xYQ
         3tYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=oGo7hDgREKtH/FKkme1ZmaGbDwU9uFdBRCqAvRMgMRU=;
        b=EHRirRCge+QpZrQn6ZqM057JcTERs4xQX/44yL+JYnFVRQkqnuMtn6SGzQJJGt9qun
         i2oQbAtK0QojuoMNgvdPeYNKSvgIasw5EfbGDuPLqTr0UKkol08LBlSBZlPc8c1Huw9R
         B2+1i0IkEipqoOlf+H0RkiGyUtvd88IFixGQx+pn93G4PhOJlaj8akV1A6wFtHfHoaCM
         bPdAR9RxSGsBMRCRW45jP5/Pxi5nK9ntVrbu6ESLWcDXrhjJC+AiSGDNWuLrNGPWe0fd
         +exRTPBvuKaKvgAv5phTPag/iMKFE0zihIRCmEHn+nABf/VNyKRIqKwC7G8Yg6uLtBOh
         +D3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N8rz3xkq;
       spf=pass (google.com: domain of 3b8vuxqwkae43tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3B8vuXQwKAE43tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oGo7hDgREKtH/FKkme1ZmaGbDwU9uFdBRCqAvRMgMRU=;
        b=aALXmXaC0idw5FVNTLxsPO8cBfzsCoNiO7w3uE30aVowsc5g6hLyLpGIMbdYox0/IJ
         hQiPOf2y9GeZcum8re6e762pnJw0tvR1deBH5bfuyaMz3w85VSZ0Ti9orwRho8ObAch8
         +xNqnFvV/6j8SNqfwVJ+U40u5wCSDh+rUjyOIqkqzE3Okehog0lNpfdSTnElqpMF5xEJ
         0/lcGdHBQKdADdXASdmHWnPrKvJrcpVNfZ2fV4wEKgeZTaP//qvqI9AvQp20kMJDpChP
         xfWw0kwKetp2Kwy9OG5sPI2MIrgsLS9KC+YZYALfChYckJ+yMId3yJx4G2jLR1H7AdRP
         oQyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oGo7hDgREKtH/FKkme1ZmaGbDwU9uFdBRCqAvRMgMRU=;
        b=HJaaa5IJhc4HYnzTF2vNzxRJfcE+vHH2bK2R/32NFMXnD/jY9WHIXlSDqtshnS/rHT
         m13PKzzmk2ZlYOvHEmLc0pBPIScZYq6SdzyZ9/mG9wqt6cGW7ze+xix4RN0K5jcDTOSQ
         BxjoDzrJqqs0l/PuWyJfx8lkn35gEw76XihKZZSeEb0vsndT9NAeICWUEidQUD5GrmG4
         sd8v1UjQwpu6K6hHMeGb144Qs+ONVH892DJ3aU4KL+FKQWlbO0hxoaJcjHowguOFkzM7
         ICjxDOd13LSYZixnXQlOnAOj+yxJAwJR9yMc2co6HWY8Jfniw8o6y1AEsIvO968rbR/I
         ZGJw==
X-Gm-Message-State: APjAAAXkKqjvxV+bYsLQLP/KHu6URyrJmQ1saE8+bUHLtJyWgZdIy0/6
	HfBBRu3f2rzdqS9NPkH4KAw=
X-Google-Smtp-Source: APXvYqy0xopua4cvqGrj03p0CsYakdxPFIykd0hsYOqjdZcTeNPdTQzGrzrL53XOPvMERW22Fa3Esg==
X-Received: by 2002:a17:90a:77c5:: with SMTP id e5mr1486600pjs.83.1575930633794;
        Mon, 09 Dec 2019 14:30:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7c94:: with SMTP id x142ls3905354pfc.3.gmail; Mon, 09
 Dec 2019 14:30:33 -0800 (PST)
X-Received: by 2002:a63:1d1a:: with SMTP id d26mr3924443pgd.98.1575930632845;
        Mon, 09 Dec 2019 14:30:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575930632; cv=none;
        d=google.com; s=arc-20160816;
        b=jCoWm+bb5aYICV+AGX4cCAWxb9+fYeNUhX479lbxxzvoW3NJgdOYEMiUJTvR0kH8pb
         7Lk1Cez2uzd6KMzS2XkbXBxWVqfUNqwdngJYLahDupzHAfDKxAUBxqIqAJ1ahYNwA6Er
         XYjp0i0TSbBaGyOBLZFokt+Nwf4dCpgn1idvWX1Ho3dwYkqJlHARWRuyouFSnZCO/hnn
         fUhpvMqyzvgbTafA7KuMNIQNTvvR6t6T2lENk/PNXdKuqRvRKfA9kcYaFt37CUR87/dO
         p8NC+rPc1058VdjAiY8sZkIfgyVWTEviK6gJrnj6NnvJh1YFmTGHrnhVdcr9nulc3pIl
         pWbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=bQkMIXCQ6JhHHUfx0puV3Z6acwFjFfU42F7sTftKhD4=;
        b=CPK3rdVAlB5Kdst+NI3T7aARrJd7m12ky9pwNMYBO0kE8lBpfGL3WK4Qvs07YvOQTz
         hk0W4J1eu92iGvxZzUQ6PboPMTuibSn4TY6GtHDdc5jptOe4KdtJGlSJR2uqzEZwm1D+
         QFugK900ppA059SgvByf7dnjzHttPg6QtSsn5soMSLgO+seeexgZMQ+kpoMpiQ3Q/KmR
         M7zBole9QGlkX6v2o6U76cYidbG1LYusabU23XN4riymlFfg7r4mrhgGJuDhlxG3ROY8
         5rQmYpo7DlsVlHG+16NH+cQnJzlYdekUSGK1b5Iyy7QLCS27a9JFWNdVULdaArRyMj+J
         EEug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N8rz3xkq;
       spf=pass (google.com: domain of 3b8vuxqwkae43tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3B8vuXQwKAE43tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id d14si46694pfo.4.2019.12.09.14.30.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 14:30:32 -0800 (PST)
Received-SPF: pass (google.com: domain of 3b8vuxqwkae43tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id d127so10101227pfa.7
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 14:30:32 -0800 (PST)
X-Received: by 2002:a63:7d6:: with SMTP id 205mr21602122pgh.131.1575930631975;
 Mon, 09 Dec 2019 14:30:31 -0800 (PST)
Date: Mon,  9 Dec 2019 14:29:55 -0800
In-Reply-To: <20191209222956.239798-1-ndesaulniers@google.com>
Message-Id: <20191209222956.239798-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20191209222956.239798-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH 1/2] hexagon: define ioremap_uc
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: bcain@codeaurora.org
Cc: Nick Desaulniers <ndesaulniers@google.com>, lee.jones@linaro.org, 
	andriy.shevchenko@linux.intel.com, ztuowen@gmail.com, 
	mika.westerberg@linux.intel.com, mcgrof@kernel.org, 
	gregkh@linuxfoundation.org, alexios.zavras@intel.com, allison@lohutok.net, 
	will@kernel.org, rfontana@redhat.com, tglx@linutronix.de, 
	peterz@infradead.org, boqun.feng@gmail.com, mingo@redhat.com, 
	akpm@linux-foundation.org, geert@linux-m68k.org, 
	linux-hexagon@vger.kernel.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=N8rz3xkq;       spf=pass
 (google.com: domain of 3b8vuxqwkae43tu8qa13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3B8vuXQwKAE43tu8qA13yu78w44w1u.s42@flex--ndesaulniers.bounces.google.com;
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

Similar to
commit 38e45d81d14e ("sparc64: implement ioremap_uc")
define ioremap_uc for hexagon to avoid errors from
-Wimplicit-function-definition.

Fixes: e537654b7039 ("lib: devres: add a helper function for ioremap_uc")
Link: https://github.com/ClangBuiltLinux/linux/issues/797
Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/hexagon/include/asm/io.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/hexagon/include/asm/io.h b/arch/hexagon/include/asm/io.h
index 539e3efcf39c..b0dbc3473172 100644
--- a/arch/hexagon/include/asm/io.h
+++ b/arch/hexagon/include/asm/io.h
@@ -173,6 +173,7 @@ static inline void writel(u32 data, volatile void __iomem *addr)
 
 void __iomem *ioremap(unsigned long phys_addr, unsigned long size);
 #define ioremap_nocache ioremap
+#define ioremap_uc(X, Y) ioremap((X), (Y))
 
 
 #define __raw_writel writel
-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191209222956.239798-2-ndesaulniers%40google.com.
