Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7F6Y7VAKGQE3JW2MHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D26A8A9C6
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:51:57 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id j22sf67032379pfe.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 14:51:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565646716; cv=pass;
        d=google.com; s=arc-20160816;
        b=M0cdai4unIntsSd+rSkRpEjlWi+THB7t9qURZKCEQB8ZXP/3FESZiVA5SkMQsqYMNn
         /375fJnFsnvs4bBLF5qhK+QN5ViQ2KBWYfOefDBWO5TVdlY4SNOrd6rWT5oZ0lTJG5iJ
         JCGLH72ielzurY/nFCbZeAwrhnEYS2EhDjEDy4nHdWnNoPPA3nDgoFdAqMcA1vVuoC0d
         CMqaDXRTpRk9cKoBNJUle5az03KkXyOCJwyWC7xaK9Z1hR/srKbHhq8ae5ss5haiaBQd
         xEz22g3RRfwpXMt/hRS8OI1oijtJ5UGZEOMASaNIHkrXTNRb9c5fZd5V02YvUS9qk/YS
         jipg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=lh3hypmy55YPQNqZuHY4k2H6AZHIeOFz0w7GjmF6YRk=;
        b=iOu5us9EefYHubqLeueFWQ3WyvEUU9MJprJ77xYJqKR08o/x3UftSe3jC55MX3X+wy
         fO1gvzbdCSCKLNhvXVK9Gpa9NdSW8D4pJFmIyXp6PH7PXyLilprmd02Xj5ILr1TVShzF
         OuTmQD4ovKHiUC2JHhyN5vP1MjIYx8hQHc/NOnTDu0dHnTy5hEiSN1G76DFEucsP5yxl
         SFl8xd1/7F7f1aAdnwvJANBL+hek6njee/kFFx3T3/LEnBu1d6hFkJRz0cy7Q12IENU9
         MZkGzyNyVH3qJpIpzrweGl/Qs1YKK+oherk8RT+4CrI/G7HvdUQiVs6NyNMRhYax9cAG
         9Cvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o4VxFo+E;
       spf=pass (google.com: domain of 3e99rxqwkahidtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3e99RXQwKAHIdTUiQkbdYUhiWeeWbU.Sec@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lh3hypmy55YPQNqZuHY4k2H6AZHIeOFz0w7GjmF6YRk=;
        b=embC3OnOhchiZNNGAPGdXqRz3Gp2I1eoB+dZ09ogiSzw4YQYgDIoeT6kaVyq6tApFq
         RR+ecu0hoaT/Z2tBTGs88ZEbQAWGsl9ZRJ83cBnrju83yUjOcWyoD6/Y4VIT5SZ/S7A8
         1o41qn3Z7lyokjP2cxUQOZDymbQrnPQqEiS34K1d3CNiZuXORgUNCiHCnt5MmE9Rpeyz
         kU1rY2N9vaMbBLV/lNnqmW1sD/3RFXca9Tl/QuwP9tn5e0D2eCEdP0JT3iS3Xe8FnuQT
         BP7Q6UPOkB8KMLgqalh2dRsbc7ueHRPNUFhWwnIpa9q2ClxKCC+NruypaWis8x61/zwQ
         0SvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lh3hypmy55YPQNqZuHY4k2H6AZHIeOFz0w7GjmF6YRk=;
        b=LIMT3ro3OwmJ9+RMxfJHlWyahLQVr2DMQeRhZLOV0pvdn37n2kgsyzqsUcnZ8566ei
         S5H5FKzVSeAzMOnGs0kwV2zuCFq5WTfa3SnuCCFFoA37UXadM5yhzXx5jao20mzSIxpF
         Kf5ofR+ZQ1ElbjL/WqxskEhY2z32gfjmcmVl6UJMVO87NOP9qMMdfU05vA/ESwc9ifA9
         m7Tb59SBPrVEFgLp9MFu0erE7nMl6HFcHiTlUCNKOeT4t80Yr6HpkAEZ3LwY3IyOYylK
         cXrq3P44XUdCezm3hsAobiQ0yAzMRDtLhp+0MhJ+z3fHunhbWoeoQZLT4YWS/6xtpKBp
         feBA==
X-Gm-Message-State: APjAAAUIZovRwDeEN96uARjGwu51b8Dr+SAN48cLcrD+gsaBibbYjDP9
	b1GQcx5wdWNBRa0XDMXNQTY=
X-Google-Smtp-Source: APXvYqxS/2zqBLjBLi5hcmVOYj/t0snSwEqzTwEkfrtA1xDBsS8z/onYGfCRFXMRCUcOTfcaZf6Q7w==
X-Received: by 2002:a65:5382:: with SMTP id x2mr26553509pgq.422.1565646716219;
        Mon, 12 Aug 2019 14:51:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:568d:: with SMTP id v13ls22842875pgs.4.gmail; Mon, 12
 Aug 2019 14:51:55 -0700 (PDT)
X-Received: by 2002:a65:5c02:: with SMTP id u2mr31975220pgr.367.1565646715864;
        Mon, 12 Aug 2019 14:51:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565646715; cv=none;
        d=google.com; s=arc-20160816;
        b=qhKRxlrjqGJsU3kgwcDwkKfiAm1EjLhI9ey30otp0oSlzCnaiG1U8TCcyeDeyl6Pue
         24Q5ut4yXTFZ7+UiZxjfyGn5QzX6RPXyweLVDeOt/SjLpSBWB9jNnGuDaJTAB/geh38j
         aHZYYlrfgeZXBkUBjajtJG6KAgjh2PNEx6cSguzF0+lapnAnrS8x/PSZ8/7MvByqqHGp
         6ZQviOjzzd0Yig+vzZB63OxDcjwlE+VyzJSCrTswaN6/vSjAh+cJi0/gAeSDbUwl/OYU
         siE+DCYQypoPP7Na9r4CkpmbaNjhA789jACa/6g/654mtDg49I/dlm7fHnD39+1z2aNM
         oDFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=v7DM326MSicLDe79qqcY0HKXo2oHl/5N5zZnyQIiza4=;
        b=d0s7iV9fVAr9aDw4cCf2dN+IEQpcB4WYFelfZCzk/DmftME9FsSCrSVjF+vVnxZu6J
         ZUNcAK7q97gDXZgv16/eaVOEZE4JjKAk9rF2tuO5U3w/8uEobt9JmfGAB5wEF5i3MOrz
         2MWWG7uf7FaJz067uw9TV1tU4OLRwLKCSx0NkIdTPxarW8Ls6nVngKtYfbX+G2wy6gjI
         GHhKb/Fg0Zvec7MoCXM+R4f8efABAWxfs3Vs2qI9qZuXU1trtLBmqOHrYg+VoIc3Qll+
         ffkBY7lQGFd1r1EkuAtI5T8MD8WYHuBx2dyQTYRAnjs0I3ZavI2Tcfxr4LMVIr3k+3Z4
         nvmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o4VxFo+E;
       spf=pass (google.com: domain of 3e99rxqwkahidtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3e99RXQwKAHIdTUiQkbdYUhiWeeWbU.Sec@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id h14si5069954plr.2.2019.08.12.14.51.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 14:51:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3e99rxqwkahidtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id d6so61791851pls.17
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 14:51:55 -0700 (PDT)
X-Received: by 2002:a63:7a01:: with SMTP id v1mr32581110pgc.310.1565646715119;
 Mon, 12 Aug 2019 14:51:55 -0700 (PDT)
Date: Mon, 12 Aug 2019 14:50:39 -0700
In-Reply-To: <20190812215052.71840-1-ndesaulniers@google.com>
Message-Id: <20190812215052.71840-6-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 06/16] ia64: prefer __section from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: akpm@linux-foundation.org
Cc: sedat.dilek@gmail.com, jpoimboe@redhat.com, yhs@fb.com, 
	miguel.ojeda.sandonis@gmail.com, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Tony Luck <tony.luck@intel.com>, 
	Fenghua Yu <fenghua.yu@intel.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	linux-ia64@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o4VxFo+E;       spf=pass
 (google.com: domain of 3e99rxqwkahidtuiqkbdyuhiweewbu.sec@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3e99RXQwKAHIdTUiQkbdYUhiWeeWbU.Sec@flex--ndesaulniers.bounces.google.com;
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

Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/ia64/include/asm/cache.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/ia64/include/asm/cache.h b/arch/ia64/include/asm/cache.h
index 4eb6f742d14f..7decf91ca11a 100644
--- a/arch/ia64/include/asm/cache.h
+++ b/arch/ia64/include/asm/cache.h
@@ -25,6 +25,6 @@
 # define SMP_CACHE_BYTES	(1 << 3)
 #endif
 
-#define __read_mostly __attribute__((__section__(".data..read_mostly")))
+#define __read_mostly __section(.data..read_mostly)
 
 #endif /* _ASM_IA64_CACHE_H */
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812215052.71840-6-ndesaulniers%40google.com.
