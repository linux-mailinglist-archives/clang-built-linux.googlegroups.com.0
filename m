Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBS4GRCEQMGQEJRXIRPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BBE3F3E7D
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:57:00 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id 97-20020ab000ea000000b002abd0907127sf3704711uaj.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:57:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629619019; cv=pass;
        d=google.com; s=arc-20160816;
        b=ooqGxWv6z8lRNxzOLhDuq+i+/9JTmOiXObQhpI9ySZAoW8B/rh+cAffpeRz1RSpHtr
         9Mv0XCvuy9nfkKcygSd9r4Q6lZnxFoxgmaOZ3p4zTVQF3H8foEp0ttapVZgD0NsCIEoj
         huH1B6B7TdXFktpk2oy9HuWonXPE08JWsq6gSdbQEFoQXLNOvybuho65nOLqsNhZ348X
         ibgvOwr2EwIe0GcNONDTodbF3X124bhuaNLRy+Xb252j1tkweLHzhTRxrxX5VQugO98Q
         bPgM2hp9xZwKbV3Wo+xZJhJc7QGjcQP94t+cny+zF99MWs7hQFNO/FnH27wRaePBqKQ2
         ylAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=69JEobjUdhduxQkOA/lEFloC1kXUSdhrZ1hP2HN7yyE=;
        b=NGPhAgCnxizI0lytNsxJnfqwYBcni/flz4+7DUxSDlNIT/O37TMzebiZFVj0iQQkBz
         h+Jmysyl8fEqsRWxUnK7aNu3hYwnG1PqMu4zRsnn9TOunM2FUh1R79hYpq/eqGTfG0FR
         p6RSJ8t9lweacz0/FpLh799IWqlg0q5eX5UYVVXGlIgd/kiUqGmh9WVLlr5NbLCLgmMp
         0oT+Ne8DbnA1HHk4Fb9Fcf5N0tX1ws//rg7zPEe7tJc/n0FiEy0yMOwXNgZ0jfO+Hs77
         KzDSW87dJCvg+ygnK3x86iy4PnHV3VNiAWpAXPMRPoIpu1dvScahf27ihfil1E8B1xk+
         aOGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XBzC31VH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=69JEobjUdhduxQkOA/lEFloC1kXUSdhrZ1hP2HN7yyE=;
        b=pGKtn3UTt4qE+mfwGwN5Mmh7y9HltD5HhL2pA+TRv+3WRPxMur285gGnWvK8g0AKVU
         Pffw25Q0TD8XzG8VGN0GXHClYmJqOFpRC3EJVJrjK4yj56r78gefLe/9awV7lfBGrR9R
         DpBsSzJpaUW3+wxYYPNXPqLE/y9ZX1c4E/iIQkLHho7W6RAPzl9U1eb05iL//7VX1jFh
         BykqoOhBLwUdhqWceKf6EIgzk/bBcXD5PAi2RGNGmlpkQpXUzdqXml8ZMA4NbAryU7mq
         q9oEQkkcIQJboThBLjK0cZb6RHjZ9NHTTKe/Grq7mc63YcVwA54YldaTABX5X+TDRK67
         ZdaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=69JEobjUdhduxQkOA/lEFloC1kXUSdhrZ1hP2HN7yyE=;
        b=GQcJkLqVkg2iO9o3qky22r4rcbj5E9e4l70akawWVx1hevdB4wwus6+lqelrp3xBjJ
         4Bf/crevUmaumb18FFItl+PCKhmm8Hc4LanXH9Bv81vqLNSgQBsjSBJe6vZy3XsRjtHz
         5zMB56SrfRmCTr1XikziARwEmKlvc6EVz/sBAulVb4t/msZzeXUEtHsP7ufg1WDNYkAk
         aqdDf9qMz5sl44rNqutoSFsDbfMvkJyrMR8sU5urju1Wo+3hS24HIDPRc4wEetJSdkiI
         W4as+B0E0l0V3mup9kNEW+fZGWvXIbxkNfw7IM2pIbD2VyUIZpOmjipXq2GhAhh7WeY2
         ZWrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533COjUjF1qlFo+sVJ4Sxt7Lslf4vMYJ44HbEmAUxifLyHmclFU6
	n98diA7wJl1I92RFKGCJmVs=
X-Google-Smtp-Source: ABdhPJw/m6Nd1Nd+ZAebbyhmhPR3nS6nAkm53ZOJgEqzOGsCT5VYzwo+IN0oGRMKHFyTCrkwVaqGpA==
X-Received: by 2002:ab0:545:: with SMTP id 63mr19571753uax.122.1629619019519;
        Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e24e:: with SMTP id w14ls836396vse.6.gmail; Sun, 22 Aug
 2021 00:56:59 -0700 (PDT)
X-Received: by 2002:a67:d212:: with SMTP id y18mr14515959vsi.48.1629619019036;
        Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629619019; cv=none;
        d=google.com; s=arc-20160816;
        b=K1YDLhfZ8pizL8g0cwIitYnUUnWvSc43QPqeQo3qp1OuE8EM+D1vjb8h/+pqTxF8k2
         yr7x5yXEue3uTF2lzqn97ufc1WMfM4TCMIRhdoyS4fsF7qBmAHfrdt0DLzbKEv1ka91r
         XwN6lquTQDL1Fz2WNdL4rZXfKjCE/Qp2GnGHwTAZybJUW5KRvuAq+NUUTXfcKvkZPB30
         UFyq20F6brPxUI0seMyB7QHmlG4zgCAsIdM3t5d2eunNenD6tXObOQ+4WPzHdpScWgnX
         l7B64Ap+D8piSSVVkoKlj+Ol2Nf3lA6DuP954jBj4vcYgFTJK+VS9aDoY/l/NRb2oVcN
         kXXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mboTeGUKr9yolgqYZyfRuYdmdGDjzaFuP+f8ddDuJQs=;
        b=pp8VvKXE4e/Ov45ZO5L2uBBw6O62PqEpg+HoroaB5qmCyJkewcHQM/9MmgXYJ9dhm7
         H6uajGD7cDU5trVVv9KpFRpFH5RnUOH6zEy2eF9XGTevhV9iCn6gNA4mOldqPFsMq+eJ
         4Zc63mSBfNB08UKrr3RgPfQ3FP9qvklPidi0Yr170XslOWBZkFKFpj9JoPZRL8BX3ffp
         yuHRkL2cUYbcBzGXfPJd/59RNoPfkR32L1Xz4mHbd7DUKnLlU+92ZdxXoPd1w5zdhCW2
         Q7mkNHe68uxr0Cb+PGjp4MRlrVsOF+jekJVSTm8J3IUWTD/v7lg8y0d8MuZHxmX8Y/4w
         iV/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XBzC31VH;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id r11si584909vsl.2.2021.08.22.00.56.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:56:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id bo18so10085903pjb.0
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:56:58 -0700 (PDT)
X-Received: by 2002:a17:902:7282:b029:12c:75a0:faa5 with SMTP id d2-20020a1709027282b029012c75a0faa5mr23697524pll.35.1629619018281;
        Sun, 22 Aug 2021 00:56:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z3sm10510268pjn.43.2021.08.22.00.56.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:56:57 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Daniel Axtens <dja@axtens.net>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 17/25] fortify: Fix dropped strcpy() compile-time write overflow check
Date: Sun, 22 Aug 2021 00:51:14 -0700
Message-Id: <20210822075122.864511-18-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1260; h=from:subject; bh=sAqjTzTf+mWFy7xD73ZEpzjamgoLfVlMB8Pw3aei0Xc=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH4HMEpm10nE/aAHB48K6cSsvZL5sfcJfQj9wD4 87AucWeJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB+AAKCRCJcvTf3G3AJlWyD/ 43aKzGW6g25weJEJsyQ7zCnEMVGGabRxLFQoGd2ODvAXaG7BEMjTe6KHLFfYgussxYeGPNYMyIFUqK ifxOcEWs0Swau1DhGUkYHxZXaXGgspP22zyTe6AzhaxlbCDY/rrzd1zZTyorgwHOOdVZhI2aPTHdlc 20vpjKyvE7Ca62vG9hu9k/970JL1vPz37iEwCMcNW3gO3l62qI7A+xuf+CIYEtvAO85k8sOwHCPCL+ /ACPHoZvTKubJE/7j8ccUcqmiqRTXSSmOpzWpz3iiv0C2+OlQnZjSsruizTYFTcgBjftFuNWAnfZ89 ktCe3sKEYiELWm4h9bXxcUN+iEomsBMWsRmNZhm3pHBtSenmqFvhIzE5KSUTmgiaHT3eKum6L995xf tY+jrUPWQJ0bNaOSYuNN+EMKPS2QNtM9zNjtijutTMjlZ7EEstt9td94KI9DO/GA2s99IKcTOw4WvC Eg2GKgIAfOkfKa9wTCadBJKiDQn2lDy5XKGYjoGsbbdhhJqjqLiIQDvE8L0FEMEHvZoRykYosNVXZt eBUj6YYoLvPEnpoaKqBUBvLRfgevLlTuZBwzsD3IgpPqgYK42igeCrm6ZYu/Di6WM55WjvAnKfkdat 5uXvPQNcUMMrgXfuYJtJxTEuQyw8V1ZdY/Zh5EaIf2hnmN/+DKeKMaN9MP3Q==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=XBzC31VH;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

The implementation for intra-object overflow in str*-family functions
accidentally dropped compile-time write overflow checking in strcpy(),
leaving it entirely to run-time. Add back the intended check.

Fixes: 6a39e62abbaf ("lib: string.h: detect intra-object overflow in fortified string functions")
Cc: Daniel Axtens <dja@axtens.net>
Cc: Francis Laniel <laniel_francis@privacyrequired.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/fortify-string.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
index 7e67d02764db..68bc5978d916 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -287,7 +287,10 @@ __FORTIFY_INLINE char *strcpy(char *p, const char *q)
 	if (p_size == (size_t)-1 && q_size == (size_t)-1)
 		return __underlying_strcpy(p, q);
 	size = strlen(q) + 1;
-	/* test here to use the more stringent object size */
+	/* Compile-time check for const size overflow. */
+	if (__builtin_constant_p(size) && p_size < size)
+		__write_overflow();
+	/* Run-time check for dynamic size overflow. */
 	if (p_size < size)
 		fortify_panic(__func__);
 	memcpy(p, q, size);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-18-keescook%40chromium.org.
