Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBTPPQGEAMGQETN5IWLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D783D812E
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:17:02 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id b25-20020ab030b90000b02902a8c1ee439fsf241051uam.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:17:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420621; cv=pass;
        d=google.com; s=arc-20160816;
        b=ulIGkJfJblncM+YkbqrRKskRQ01cBP/5ZQwZsehzEc3S1fHOP3F36sLxkszPpMzSJN
         A2HeJ9owrD0HRuc7zAKS1pAusBdBENq9hoUcCnsEOQomnW+vYZwg1DIEnsV01C+DwHmK
         K/Te8ZXSMLhJc+XtkXOyk8YpDk7QmsuTm32ERisOk1zPm8jrI1uhwW7rM9Z4o/Ivt2B4
         iI3Gaq1jKZoL9jmq+DNtLvjAJmE1HQwXNLi3PKeoy1WY2yqSeeWtE3Q41mQzFnVRwImE
         o+1rjX6wpSOo7x/UGY1yhU5SxUzbpvJYDrQAH7UUoi0erztPjbYBoqhUVBl6ZlKcU8Mj
         qtLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Ouhktv/Q7OWxTWzZlfW2ncLTNEmUiUumsLnYcL/UGEw=;
        b=OvGSXmnIIzNzVVbJ0WKhrvp93W/QeKK3KqLB4rimstxvDI/5IGQYC5pHhVNIkhcMXL
         XnQd46fMqC8FU2vOGmqh6xPnpi5sbkWdWmIz8Uq6TwE/CcpDUl9N8APadGPW2v0n/Csi
         GSaAOZC+KqoD4IJAhXhvkQiYz46EP9ZazqNgpAUHobTUAxgrbOJsWLRIhfWG5d6Ln+l0
         xjMAhHq7cOFG8HuNCY46GqG8qIEPs2bi2v3I/r7Ly+OOFwqzOnyjRXp5FVnNMbTeQAGE
         HGyVHa0zwB+fCQoQtwJyJFOjtNNC6wrG48nHK4kAcDZX/1UlMz0Alkn45s0AQbmDedel
         JMNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BN7P01Ur;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ouhktv/Q7OWxTWzZlfW2ncLTNEmUiUumsLnYcL/UGEw=;
        b=emsb+B7dBytZBHIWiIIN5sdiSPfNSgo3/8T3VV3H5+3pYhrWq/m7Sw02dornzRmjJ5
         l0Oy6s1XiR7eiRrsx8F1BOPu1/rs7ScYGmLFIdWZ4oQ/LSJmakH5SMZ5UyYBqJsmnETg
         5XkLwp57RpG6FwxgBje0LVVnMyLZD5oxWqNmAnqhzisOKn1ur4jVgtfO833grsQssKa5
         1wkMjoZcOlsYDjhDeBHLRaWcZ4H9Lx7ydFE7wqlP2jztGB8V677JW6h7zeQlaJnrD9vD
         LKXLWx2TdFWXa1jEkE3XHYSHCny0Gm+1sV9hGIqjJ+wvunlw1tiW2sVkIiVSHRVhgAhN
         Icbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ouhktv/Q7OWxTWzZlfW2ncLTNEmUiUumsLnYcL/UGEw=;
        b=N7mw3DV5n0ypxTW36I/C4fwtF2jNTjO9k9Q7ZRJfzqAnPWovv8pq85Tc197vC8z99F
         hsMGW3oHUlVg+DUBGW/FLdooMJ0t1/Xg8T8wEr6Wi+t0XHaZpKV49kuBgzuRF/TgZ6v7
         2/rRDQagWETpmsNIyj2kcLHeJ9a3vTbpBj107xy9O5qQN0h92O7eiGZHQOo8uaFB5BM9
         Zn0Ft8lBCBtc0gEUbHjG2VpRgNHvzaFZ4Bz0kNJhYG4rtAKqPEspAvhoefWh15mW+2cA
         x2NitIb2usZWG0Ikm7i3Gm/UOiOMrigMLo4IUlk9zP2/yPOXRLPoldDiLvz3JZ4kgABy
         /RFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318ADRGATH6IyHTDANN4PWK7NpUD0Nd46fDpMlOzoSwsxM6JL3f
	5uQ+Mh9feMKkvKeTFg6T7qU=
X-Google-Smtp-Source: ABdhPJy+U62WN9/tnQcm4pqDnCCxGPJh+zN4QOCyL6B8zdOaIQqxBNE1fru8wMpHbCKInHt/qNv4BA==
X-Received: by 2002:a05:6102:232f:: with SMTP id b15mr18001998vsa.44.1627420621768;
        Tue, 27 Jul 2021 14:17:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:c01:: with SMTP id a1ls1935uak.4.gmail; Tue, 27 Jul 2021
 14:17:01 -0700 (PDT)
X-Received: by 2002:ab0:280a:: with SMTP id w10mr19730883uap.0.1627420621177;
        Tue, 27 Jul 2021 14:17:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420621; cv=none;
        d=google.com; s=arc-20160816;
        b=dH9if+cHtkPa3nOFoyyjleJaPpTb9lPj2PLFI03+IMekruG/Q8e7f9MpoH+WWjCWd6
         eFxmxWiSMmhPwvy12Zy/Gmjg32CGWrdUUoufeHwiJ99RzvZjdxKLt4UTSZPb7hVccFYk
         DP59olpUHwCbuqVycXOGPJRezyGxnzsUFM3xAI6NR0mTmHZ+w9t2thyHjj2t0DKor2cY
         tjnw7Rm7xHgBVcI3zp4jz3BhW30j+CRK/xjVNoMpfv5yc74WNoz2lsMkwaEam1WQe+kt
         u9esHoGtJim/XWvcOiWSjXYvvwQfLkkNxJbYJLpuM0ZSnYML/D2uUGgn+45h3h4TDH7E
         4L/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y9wMesWb3kMvGhORYmMr8FR6o9+jwEvZSo1EsZxY8W0=;
        b=LajOpMNe83fmMqBUuldZM4pFIgaAncTg58zYcV+f4GJyGhlGWB6XwX/8kCud5KZRi9
         s0QzjdpweS8v/JvD1w+NuawsiV+yzUA5cZ8C42ae4sAiE3DvauMKVqlp7avZvH1hF8eI
         /R7FMM7los9h7kyYCujn2rgPe9bmFXQTART6SHl/SlRgUnUwaF7Lce0e2X6u50EDZh9E
         auj1urZr7KqNKbBdw8IGMT78MgRlDG93PUi8rVIhohifspV/rj4Ss9A1BMgoS3pS21Ko
         opb3iJdnyIYQL6GkoB3stc/qLRylluDOm+7SYI6CqcxVTS1M45eLnomGLkJ0ql8TJ7W5
         pYrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BN7P01Ur;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com. [2607:f8b0:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id m22si330603vkf.3.2021.07.27.14.17.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:17:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c as permitted sender) client-ip=2607:f8b0:4864:20::62c;
Received: by mail-pl1-x62c.google.com with SMTP id i10so67777pla.3
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:17:01 -0700 (PDT)
X-Received: by 2002:a62:584:0:b029:32e:3b57:a1c6 with SMTP id 126-20020a6205840000b029032e3b57a1c6mr24589168pff.13.1627420620372;
        Tue, 27 Jul 2021 14:17:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id lk5sm3712997pjb.53.2021.07.27.14.16.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:58 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 58/64] powerpc: Split memset() to avoid multi-field overflow
Date: Tue, 27 Jul 2021 13:58:49 -0700
Message-Id: <20210727205855.411487-59-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=970; h=from:subject; bh=EqAYyR61If64Fj2IYKFg3jD8wd3YsI3R0DZAgupjjpE=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHON8m2NPAIDr9Q/N7SXLMGlDKKJPMFM5SUAuhto 7+vlDg+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzjQAKCRCJcvTf3G3AJq+CEA Ca4qR9dFfukeDpwBivSWmdN4IXrLxxds4i79tyF2RZ1NetlF3zQFjf0dOJJ6NfqCZjinnNwHjnPaFi 9x4UwneOOuPj/4rf8k7cSpmM2UreUaAAA8VP/jFKg8vdwSBqelmbZjm8ng/qha6pxe9jqRvhE2RWKP qnrUYIUXlqe7N3FgL/8eOB67y/Un3Rfqu05z/doNPDcGWYTfIhpaZu3n+amLx44YduL03EwcMECH/l NDarqGZ78zXiW9XBAw38H8M3+unTerG5RPPulpFMa3XJ+hy0ln0RAD/CKthoOCrGmjVHEls689FYmk 47Xi02bCJdYfIgjqNVNZcc95yunNV29nLCcUCjqRA9qZpvkMrJWQANAATLtxAcI+/txMZUwS94jUFC otBX6K+dP0tshHI5p9QXMMjeOFJUZsvIm5n+eNLtqZADzbxH5992mbjlaJZzSynXuRU7LnKYFwp99u ACzU3xk+GoPHSQbfn0SU7L/H8QNlNuzxIiWmgfUKY2AXa7GfFeO+JPWTK/H/PczC9Or0vmzcwp+j06 gmLqgbtlJS5EyLTqxwdJDfRPF9CCi/hV2nu4l+oo6Pue1qSXQEmcxzqGPzn+HR7xkb5suJeevW+l7Z gDF++XCKaI8rWqYNDAdfLYj6eQLBZMJ8AM/75DxdC9t3gUyhjbCYaLueTqow==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=BN7P01Ur;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62c
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Instead of writing across a field boundary with memset(), move the call
to just the array, and an explicit zeroing of the prior field.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/macintosh/smu.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/macintosh/smu.c b/drivers/macintosh/smu.c
index 94fb63a7b357..59ce431da7ef 100644
--- a/drivers/macintosh/smu.c
+++ b/drivers/macintosh/smu.c
@@ -848,7 +848,8 @@ int smu_queue_i2c(struct smu_i2c_cmd *cmd)
 	cmd->read = cmd->info.devaddr & 0x01;
 	switch(cmd->info.type) {
 	case SMU_I2C_TRANSFER_SIMPLE:
-		memset(&cmd->info.sublen, 0, 4);
+		cmd->info.sublen = 0;
+		memset(&cmd->info.subaddr, 0, 3);
 		break;
 	case SMU_I2C_TRANSFER_COMBINED:
 		cmd->info.devaddr &= 0xfe;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-59-keescook%40chromium.org.
