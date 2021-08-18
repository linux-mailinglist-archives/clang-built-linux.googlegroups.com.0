Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSGG6KEAMGQEA7OPCOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E4C3EFAA4
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:01 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id o23-20020a17090a4217b02901774c248202sf4218985pjg.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266760; cv=pass;
        d=google.com; s=arc-20160816;
        b=hyBlUUcLXhEwnaj3+TfPgakTLKcKLvpGWpX/3+KOxVoKU1s5aNEGrrKPoVukn5EHci
         2zsu7zJmJlFSxx1J/aJ7f39afI0i35/s1ebE2IPBqu8uDGk/MOS4KKp5haHwcnOhyJ+f
         5+iCYajgk7EOQLIpqc6fbVg3/7eXNwroWOirA6vHlqnN+n0mWQ+lgXX7JIQHx55QxVo5
         dID7ale5IpaQB8f4ueB/U3dEVDuQrguKxm9m6paVwyCZAAXTqREoqsGXdmFhW5FfltZ9
         7Ni3skiBU3+Z7/g0W9pkheLJzncpGmmqLJfu7ijvE1uyo/kYdgkw96C8GPZlEZW+vw6v
         Rwvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qAFYBuvY1JKmgCRMaQYS8dZwVBzI6sXxnEXrM2sWN2Y=;
        b=q2etlKtLYzIleo2JQe3YICGpFSP7O5TK/ZRfkV2abWMb+MpQ0iyNuJCqRUJkVQ+FXv
         lLfyg0GcScTOo8Gd9pU7HyrwtRJIyB3n78lPNeRV7M7hb1QNcUUqhn1B3ijiRnldZADd
         sSb674TjXBu6lGXDvT7LlOw5vh4670SB8x/fKAu8kCuCg3Ge4RHN12ZOUdY2zD31Z2G9
         NumRlbabYJjTIVfLNtp1smhRf/BCQsmo2WwLyHRhXZk1wXmmEKXJjR9lcQycoFA+8KLr
         MXY4tKFYdlmjB8JcNOW4eH9bCwbo3GCy4IlxcQOZISvZ+/pCgu5QdIUwzVQse9pY+4f+
         kQaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VXB5rWrO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qAFYBuvY1JKmgCRMaQYS8dZwVBzI6sXxnEXrM2sWN2Y=;
        b=dOy/xe+Y8VouC1HPfMWDULrO3dx7eYRLrbk0UVwsm5qS27pCbcllMz2sDQ2y9z3NUG
         /Rb9/qqOgZ88Xv71SoqKigECJrJaAowVT57U3XzC98+bYJpM7UQ1DjMyEEHlCR6ASHli
         jdcXiYqQOdwgdN4D/GNRVRR8gm/WGIPLlF8S5+chRbPPm7omC71458wnGYCRXmMo6eRw
         hNE8WXMxMl8xDgTlTbE57dMT30YkS+fPJ8m484Pyo4dXWb4iruBv9S+zlz3m3Ql4zkrU
         TQYFKtfR+1POnIloHd54FxCDUIAqpZ9JJAX+/U8T19QHMwdRpOatqz71nelx4oxlqccM
         gLqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qAFYBuvY1JKmgCRMaQYS8dZwVBzI6sXxnEXrM2sWN2Y=;
        b=UAzV0B+Lyo8+3evQLAh5SRgzVn9mMOFORC1An0Sm0MNsqXVVAs11JoPH6pXUiWwzAH
         WyqnSNfrOvYshI1kIBFaEc5UikGMGf2XqcQfd7gghr9ZFa+vOy+PllxazwjyHiDDh6SO
         xPO7klKOCs4EbYbavhHJTYaHAUIQC5aWCNNt3jrUQQhHOpl/eG7jFOZzlOPDrGDRoKDg
         V7TJoM473SMHKn/jzej4eBJ23WjFKNyS6V94jHPDvTW3kEB35GkEb2LXH9wPwg3Zuf9K
         qhFFF5xRRDBqLRVc/unvEqpj9TndBELRPZgkE3Fzhu9c0OtD7RaZ7gnJLzrEVCKJ7ZWM
         I5nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fUIWzoL/UagmeNqb7SCPfOrTQqLyIrNscugmqJFuED01D+MlI
	0oJ0sBKcSNN3z5hEZ+YkzMs=
X-Google-Smtp-Source: ABdhPJxEsX+wkmkdlbW9ZXCwTN42i8yHuTvx1yHKsIVxW2bos3MDNRNFZfAPG/V+j9/bh3IAP55mrg==
X-Received: by 2002:a17:90a:bd08:: with SMTP id y8mr7635282pjr.123.1629266760287;
        Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ee45:: with SMTP id n5ls669993pgk.0.gmail; Tue, 17 Aug
 2021 23:05:59 -0700 (PDT)
X-Received: by 2002:a05:6a00:2d6:b0:3e2:da0e:30c8 with SMTP id b22-20020a056a0002d600b003e2da0e30c8mr2540649pft.5.1629266759794;
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266759; cv=none;
        d=google.com; s=arc-20160816;
        b=tUgU97koDfj0APd3QzEzgoSvMGCYwcjLHqu5KHy8l2Z+1RmBpIdCuqfh+qzW2sH3fS
         LDKQ8U21bMG/KW1kz12zefwOgR0vJQGjIL8VcEx4g7kP8zlI/q2PUHd9mjmYA5qpVlOz
         o7r53kki308DVsXi34UhwAKg+/mZBRFIW8/lv56RqOQASamSSAmJVUJGCofgYIkK/awA
         sdXcbcAV67TsQDpcTez4hvLOv8Q6fjlvqTFay8bh1ikvXgA2aeaiLNq8YrSQgz3KfrJZ
         Atn0Zf1GE6jYPWMEUWM7u9ySSdsvhCHM99e3YVDHu9kFXRNMonhZPOdKWdlymmtT0XLU
         cuig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mboTeGUKr9yolgqYZyfRuYdmdGDjzaFuP+f8ddDuJQs=;
        b=hoigUl5Lfj9MxJICyGbUQK1sbX1xXELqOP2JeY6EwDNjnd+I+QDq5EVDx1DskMB8RF
         3hjsCP+zytXtqg9WWEACrI4R26OBOhaX5KqPVb6kfLEvDVycVfD+8EV9YRHQreq8rPCm
         7lPv5Uo/KRlTSDHKczHJw4Ic+FKxh3GvEBFbsf9h14jbNCbe/gQ/7workDhFSelOa/lL
         r3HoKzbfsTYlbUTY9BjkG8xzjeoeuZ5a2WnzEscFYppONCKYvo5fGEMmgNZk1Ky9AmzU
         so18HoB9OQCJpiKcqwNTezS/HSaZKjYGn2GyKuRKKpzJOKR0covn2UtbqhnkC3Gzeg0m
         vr5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VXB5rWrO;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id v3si195500pfu.4.2021.08.17.23.05.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Received: by mail-pg1-x536.google.com with SMTP id c17so1146750pgc.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
X-Received: by 2002:a63:2442:: with SMTP id k63mr7181356pgk.54.1629266759640;
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v15sm4713102pff.105.2021.08.17.23.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Daniel Axtens <dja@axtens.net>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 29/63] fortify: Fix dropped strcpy() compile-time write overflow check
Date: Tue, 17 Aug 2021 23:04:59 -0700
Message-Id: <20210818060533.3569517-30-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1260; h=from:subject; bh=sAqjTzTf+mWFy7xD73ZEpzjamgoLfVlMB8Pw3aei0Xc=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMkHMEpm10nE/aAHB48K6cSsvZL5sfcJfQj9wD4 87AucWeJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJAAKCRCJcvTf3G3AJoHIEA CVNsWBrDfaVMhp7dy0y/IJxDyV8yomgG4F72g/uCRRfJZ6t0QDX4mJHghw3qnhtNERaVf1zfyT4EpR Q+CnBXAbbYOY29o4ZaC5ADslFqQrcq5UXqAtvXX2hNdtEpN7jEvy+T0Dp7gErnaLTs1ZlewzFJixmh 05xnc5PGkQ/a2fhA/CtaXfcvvgj/Y1w7itfG3KT1Pc8P7hAB0xQUn5JwIyBFfsLsANHAXHUbw9VYDP fZZ0GNAEXZSrloJoa/3h+EnpUqfUAHZ6NG7o5k6rBUn2ktEbmeFwRAcvF137eXA++u2tSdegoXt14J LaoJ3RY4se8BmlCpgiOu6mTSPrs6Jb74GZdcpGwlL++bhsP342ng60dkvdbosL5Cz5rcQRxwrJ252w 1U0/10JSG6NNPtAYO7As1zp/w4iaNAbTundBjm6o+FckreellK+acr/YR5tu8mhYcwwjhv7Gn0PW53 tctiINRIsKtDHMAo5AYvcxOB0Cxa8Q44hhowrhkhYkzBO6F+t4p0Ht1Gse9m+/b9W5FzR+ruuTjN4b sJwG5NlgDrw9HodFlOrFU0g6f9jy+pOvo/aUejebmfFQ0E0rMohB1Ca6a4NGl1oW+3zmYJgmF3QYnL 3ztj9l/h7QOAIug/e6PSNcgokPbHAFyVpu6eHLsTcqKbjMMcdhK2ihPt1Oaw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VXB5rWrO;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::536
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-30-keescook%40chromium.org.
