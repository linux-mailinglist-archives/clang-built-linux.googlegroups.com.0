Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSO3W7VAKGQED4K75DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1102988577
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 00:03:55 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id o21sf3697176otj.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Aug 2019 15:03:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565388234; cv=pass;
        d=google.com; s=arc-20160816;
        b=nv9cOXmAIGwoWVQYGWT2mPsxwkGSrx4BZhXzC2mM8ymtmyOyTenQPVMVPg58qm1dRY
         +aGqWcxJyQ9s0siGEmWu59I6DU8YuQcoADMEkA7cYiLr5VNBYGO565LGM09Y3XR+EU79
         4cksY4mb0rw5gToRwemh2OXMwyCfZZ3H9MYk/zDch7kgTaGs4DY8o9Io5azzAk0SyXtN
         XqE+9JoVgwMwShK3ImuPpyvv3lmFTyigo448gF7gubdxQ4oUgq+6BL5rp2Fit3loDm5C
         odGyjNSkdP+LofXIt7ckL/j/A7P8KesVS+dVhFHIc8AjrHDw6HQ2Kr/YGOl8dtZGxRTm
         29cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=7EryIAp3PAugelVyFUF5hEJ3VED4oX5JT+mqjb4FyqE=;
        b=vcoTCXsF2k/D41aZWSD5pxS5bYbk+dvYbGBJ1+R1m2m8sJ6RX9brDznbGR9Y+zsfhl
         GzZskUIBCSQGiGCMgLICbQkZpCUQE7RGiAWWtu5vUnEL17sRfvIUhhxk2jFbQr6/6Fkr
         /LNwxc2NhnR7Bi96wbiXzV64PIDpb2h5nCvuJC3LbJFl4Ow1bI1P50abIDYbxIXfEPKh
         ZPB5B80lIkL47Z+H8+xg3XokZV6OxDPFTgOCTr+2b240CoFs0+tmhwLq4YVrg9kjw/NV
         hf/fg684XEIGuLWuPOjBnbOaaD8CI2SAQdQIkehkYe84V5PTaP3HoOj0+gIkaeubFf8r
         d0MQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UAy9ZliJ;
       spf=pass (google.com: domain of 3yo1nxqwkams4uv9rb24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3yO1NXQwKAMs4uv9rB24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7EryIAp3PAugelVyFUF5hEJ3VED4oX5JT+mqjb4FyqE=;
        b=ZU4D3tEI8ohvpTnp7WA0CA6kGT5gZLGDybrDKmubB5hBJZ16nu9tYZ7ymj5LK6eCdk
         3TIn4ybH2G2jJ9Clv4vS+hLUVEEb/tfcDt/nyZVl6Q+ke+AF0zLr19WU360iaq316xpV
         VjAoReCxHjtM236tWdawHsKvQsnSbLNPt224sDcmcGPcJNtPxlD66rpWVTqEdCO1BOQ8
         ZwAZbF5UqpKHsK/XaiBDSyGxmb4atTNW9hoCQkYvT4lJNk8154vwHaidzyd9yt8RWK59
         sPcPe2XbUopm1Ib7CGnXAReUBRGaqqT3eTSGT0Jfjp6i2DCJi0Aa5W1oIFaPeI+bIvhX
         5x8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7EryIAp3PAugelVyFUF5hEJ3VED4oX5JT+mqjb4FyqE=;
        b=gVkQQFFp3YXwLOEU9XeTY3LlpkZUv2+5sPdN9OioNW4AvKZt1wCpksar3UVCfyWcN8
         fuDVAkZ/L4MEK+A2MWNUHp5sZdRKJrQuz2Z0aBiaqoc2lw0bUKBsW+rioGzNb4bt5bpQ
         NGH7v5rTu3AEvQjfMw4Aukqn28RyUF1+ecGO5gg+jtRqAtY6qgqW/W1/0Lww12ZDFAza
         7iSibPdkYxrYmh548iHTGy6ZJUyO0BJJ+l+wii9TrgN11UslK5WCMzqIJ5mNE8Ih6jl7
         cuS6XU5XOAesGCDM+oMOtxNh/Vu5k39i9oOau8DXUKfW9RJl3gwNDz+nE2+zRYSk468T
         VFXA==
X-Gm-Message-State: APjAAAXe+h1xw4MrtbyP9rweHy5/izxUKAsxDASS8A9D8SGtkae6XtVm
	8mEzQ3R3gkXfVnHLeWTIBE0=
X-Google-Smtp-Source: APXvYqwG6h9NEABcAOsQ0mEY6p0pgcpSFEDL8zDT85jYRwp56hGAsgpCXixDw+TxaZQxIBZvKJtvLQ==
X-Received: by 2002:aca:55d7:: with SMTP id j206mr7809641oib.71.1565388233906;
        Fri, 09 Aug 2019 15:03:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6ac9:: with SMTP id m9ls143880otq.6.gmail; Fri, 09 Aug
 2019 15:03:53 -0700 (PDT)
X-Received: by 2002:a9d:6a95:: with SMTP id l21mr2627490otq.192.1565388233612;
        Fri, 09 Aug 2019 15:03:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565388233; cv=none;
        d=google.com; s=arc-20160816;
        b=XBbw3EEtkNc4zupREKQ4+ADbhnEPmX83i2nc7sYBPCrPn/AQv5x9Rs+IYHknKv0ptR
         FY31XMHGfycwXIJZRZNq+xigUR+TPpAqE4BNkPsEK9LmdQWRM0FRKdGMjZahstbux+q0
         u7Q6Rr1JoybWwZhWNJSfnjjryLowvPs7ONHk+iED3S0SOxdD0oW1PKXKHlfm7sP8fVoe
         Nc+EjMqWu5VcM+DlVtCrn3INJsnVyHOumdDMVLmfOP35bwBi1krwL0UCsQbLONWoWFkA
         VTWHFzmhw81udf8hC/StlBI5i88v6VODO30riEuv3zLy6XGqRNe9HF0MCAACYwkXB50Q
         W5zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=u8woyYEIswYwSZI+RYUkZJav0hcCzSUKciws/3A8eFI=;
        b=tgJ0OJllHEqEAeh0ZVyWV3tzt3yieeBkYi7BJ4biEPx+cjsA7/ogGWpLNqX1NBjxwJ
         iLgp5z+IY9DVDcPMJprN6I2chzyej9YbWmujhd3QvodRFpp3Xajq5XIlgjyWu8xMu6Tz
         ewUGFwZlHah8Xv/pQ1U8uJXllrljhMlQaIaWtu9sRpDa90b5b36ZFjJFis/RxUk3fPxe
         bnyQlqtRohElTTfljL1ORm13UTsKYa7SM3RkuL0/pLtGKchaRGdD6Q5mlnk3hXIMwo3b
         QrnSdFLzrGp2YpHX1esSRpLGLEfSYCbJc12Fc5A+02ni2HjwB76jZ2WDn2yM6i7gYe8s
         vLQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UAy9ZliJ;
       spf=pass (google.com: domain of 3yo1nxqwkams4uv9rb24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3yO1NXQwKAMs4uv9rB24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id n27si4829450otj.1.2019.08.09.15.03.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Aug 2019 15:03:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3yo1nxqwkams4uv9rb24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id q12so2294693pfl.14
        for <clang-built-linux@googlegroups.com>; Fri, 09 Aug 2019 15:03:53 -0700 (PDT)
X-Received: by 2002:a63:6a81:: with SMTP id f123mr19637717pgc.348.1565388232571;
 Fri, 09 Aug 2019 15:03:52 -0700 (PDT)
Date: Fri,  9 Aug 2019 15:03:47 -0700
In-Reply-To: <20190809220301.Horde.AR6y4Bx4WGIq58V9K0En9g4@messagerie.si.c-s.fr>
Message-Id: <20190809220348.127314-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20190809220301.Horde.AR6y4Bx4WGIq58V9K0En9g4@messagerie.si.c-s.fr>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v3] Revert "powerpc: slightly improve cache helpers"
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: mpe@ellerman.id.au
Cc: christophe.leroy@c-s.fr, segher@kernel.crashing.org, arnd@arndb.de, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	kbuild test robot <lkp@intel.com>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UAy9ZliJ;       spf=pass
 (google.com: domain of 3yo1nxqwkams4uv9rb24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3yO1NXQwKAMs4uv9rB24zv89x55x2v.t53@flex--ndesaulniers.bounces.google.com;
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

This reverts commit 6c5875843b87c3adea2beade9d1b8b3d4523900a.

Work around Clang bug preventing ppc32 from booting.

Link: https://bugs.llvm.org/show_bug.cgi?id=42762
Link: https://github.com/ClangBuiltLinux/linux/issues/593
Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Reported-by: kbuild test robot <lkp@intel.com>
Suggested-by: Christophe Leroy <christophe.leroy@c-s.fr>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V2 -> V3:
* Just revert, as per Christophe.
Changes V1 -> V2:
* Change to ouput paremeter.


 arch/powerpc/include/asm/cache.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/powerpc/include/asm/cache.h b/arch/powerpc/include/asm/cache.h
index b3388d95f451..45e3137ccd71 100644
--- a/arch/powerpc/include/asm/cache.h
+++ b/arch/powerpc/include/asm/cache.h
@@ -107,22 +107,22 @@ extern void _set_L3CR(unsigned long);
 
 static inline void dcbz(void *addr)
 {
-	__asm__ __volatile__ ("dcbz %y0" : : "Z"(*(u8 *)addr) : "memory");
+	__asm__ __volatile__ ("dcbz 0, %0" : : "r"(addr) : "memory");
 }
 
 static inline void dcbi(void *addr)
 {
-	__asm__ __volatile__ ("dcbi %y0" : : "Z"(*(u8 *)addr) : "memory");
+	__asm__ __volatile__ ("dcbi 0, %0" : : "r"(addr) : "memory");
 }
 
 static inline void dcbf(void *addr)
 {
-	__asm__ __volatile__ ("dcbf %y0" : : "Z"(*(u8 *)addr) : "memory");
+	__asm__ __volatile__ ("dcbf 0, %0" : : "r"(addr) : "memory");
 }
 
 static inline void dcbst(void *addr)
 {
-	__asm__ __volatile__ ("dcbst %y0" : : "Z"(*(u8 *)addr) : "memory");
+	__asm__ __volatile__ ("dcbst 0, %0" : : "r"(addr) : "memory");
 }
 #endif /* !__ASSEMBLY__ */
 #endif /* __KERNEL__ */
-- 
2.23.0.rc1.153.gdeed80330f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190809220348.127314-1-ndesaulniers%40google.com.
