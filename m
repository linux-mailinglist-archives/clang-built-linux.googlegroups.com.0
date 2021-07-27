Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBF7HQGEAMGQEKWUTH3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E4D3D7F99
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:04 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id u22-20020a5d9f560000b02905058dc6c376sf177189iot.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419543; cv=pass;
        d=google.com; s=arc-20160816;
        b=BBg03Qch6uxueYi1JVFhe9x3gr8AyFDfl5B036Pg89zARnm5wnF7ehbpcvVgtRkZ2B
         7o+JI8/kl9At4XodQZeVCnW6J7ClgtxPekIALJ8tAAgfP0ErfmIXtIsDFIKHDouwX6go
         YtAsv3tkJrIRmgNnXMXgPJGA/wH+EAjPGgNMwDb9D4JeypLpSViwQVY4N5YwYv+iTdor
         4EUWnfO7799XsGFdnBcOiFpG8U4o/GNokrIbQXDTjlE91VKMskEmu4EwSaKmJ2SLp/nW
         jr8eXDhmhq/pTObMY/W4OM4paDyA4OJdW74OxknZZrTURBmuj4kLxHpmrVROrKfUj8Xn
         jIpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mMbxaITzxqkbnA9WSyV7mhilvsYS5j7lGwuaxbn5XYU=;
        b=PUES62ELjRnfM2VP9HsxlqoyUBhoE+Nqkn6LMa1qk/xKF2fiI+WeLUFCXJqkbUVGt0
         VmJLmqu4vqCBpNirKrTl6KwOHikpX9jTLFuUAZ2dEMXNcdcXcW12Wju+dnKbm32PKsGk
         IGMuRqjLlBz4/Mwpo+s2cEJjvEbiswhpckKlQOy25jsyeDQGAWBiWnz5BwzOdHPrqpWE
         C8hhckDcbUjOofMn0lkv6Q0djsJyNEiN5DjgpbNXPD2fiNqT8wAgTZoUAHCC4skZ8S/F
         HkSez5Ocr/47JiT7g9vuoHDvOZjM3IqXGuMDZPL5czEvwy+QDo7GG2Yo/AMTEE6D/M/N
         Laww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Kp+U9Ayt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mMbxaITzxqkbnA9WSyV7mhilvsYS5j7lGwuaxbn5XYU=;
        b=ndnnw1Hd5dsCkWLjuAYZ07FpgckNdZJEWQjtdzPkwgYmq3mXEh/UflQ54ExYHjX5uo
         5f7tjhgOcPZuXZ8aSSVCZVCqiToH4wVURJc7T36sQBd5FubVSolZmJcbh7UMlQD6uE8y
         PoDtiN1boW5SakNFRMpm7hjY6julcTrTNeyEqln4LR0uU8zLGk6SYF1vDoo209pyD1XN
         C0IL+icyJ36kvw0OXbIJBAINF8fbHILQeqpOVKLULkWXhE605kBrbVqgTlznBIxweuh8
         Y37vMfMhEnicioTrFZpr8t+o0y9moIHEfvsB9+DLWy0nvqHMtnWvQorvWaQAHuVkJeKx
         PyKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mMbxaITzxqkbnA9WSyV7mhilvsYS5j7lGwuaxbn5XYU=;
        b=KgBsUx9iB91tCO9GGiptDUz/XJhItcOae4hhfcsju2+b1foft+9T+w43WND/jWP0Ov
         i5YKm2jo6VR1D/sVg9FFTjbvMiAEuSK1/WVt5fhzZbfyV1VX2Y/tkNlI8Uu91KrzCE0a
         ES3cldRTkNI3ZxE9Wt9ar6vko8rv8UEhhCwna7t2Tm+A4cXoeGH6ykw9URqAw9uVlNdX
         rdBjHGgbIZdJLaqufkTNIuUaArZQhll82/C1/ZKWvLUpi4Z7dsWKmY/iw+YLTvgyq3tO
         tKqX6PXvC+ylcCWDk7m9GkYLTthCO5qh3flyCa7XkzeWO/OAFOkz9DZujAgxc5FtK0eW
         sGzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YTabNVC2rkBx8K9BFdDukqTq5oNk43JAqOZm+DhKKAB7RNNz+
	OYi8bJONAg/XuT20NqYbvrk=
X-Google-Smtp-Source: ABdhPJzEs9QAQ7E5/mXjIVadD4/lNJRBWwbaiZZEQBpYqO75FgA+7hNRfpH8AV/b9oEIO3t/N6qCYw==
X-Received: by 2002:a05:6e02:1041:: with SMTP id p1mr452335ilj.125.1627419543747;
        Tue, 27 Jul 2021 13:59:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:910b:: with SMTP id a11ls24760jag.7.gmail; Tue, 27 Jul
 2021 13:59:03 -0700 (PDT)
X-Received: by 2002:a02:2a88:: with SMTP id w130mr23047096jaw.60.1627419543368;
        Tue, 27 Jul 2021 13:59:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419543; cv=none;
        d=google.com; s=arc-20160816;
        b=uP8/Ip2sDcYm4tr1w7eJ2bbD13Rjnc0+KR79SzdikZvdTZUbxuqZWz0CIQ0eAcWv2B
         eVO8daGiVNBtnOgxVnc0OF5SIBqSJeEfxrHxgpazHfUPRkA9/j2779PHjP7rr847OraR
         IGsmcVN6kEWWyJX3kCLBZP0SONh+5OYgC8gHbPjRls9XosV7ew+5T298SZcXshC/2s0C
         /L1w1DW6vjuy6fRZM0a/a6V2mXXoI9q10PAMpmaIYPpjHyWbW0tovmbg5LPuLgRRk7Oi
         iGIhXxMiI6auKExfRP/XzCem4B6Q8fCP/LpoIQwtQsP7xrK2CEfsbspN4RnrnDiLhAkd
         qt7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=c3ykowIwDTRKsInbKYf/ek7DP95JkPgh9oE6DtLLi+A=;
        b=wTM2ooAlW/y8Z45ixNN76JmUcVLCMUfG8I96WRnZgKXHzzf79ty03dW8pDgC4U8IBq
         FyKLmRjOSKDbAtOJt29XpeUPfoDp+oO9UwYbltrx4SbKXhNxoQVD1zKAwP/zIA47ok9v
         ErsQkP4yUpSAO8e41UwDTssxI6DolmSBIXkqOwxW7ZekYq3b7T105spOoXBO4GluFXlZ
         IBRCy9DY6Q/fuufWZ5VUd05gZnqJmFzx2Mrkmkt/0kXFWgdI765DyF2Slog4a2L4mk7d
         Nah0G5aGeh6DcH6EVSi19sQ7ltJLMGxdrPFPBL0HM41Jezph9/WX6YqAY+wyULER7c54
         gVBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Kp+U9Ayt;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id q12si362287iog.2.2021.07.27.13.59.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id u9-20020a17090a1f09b029017554809f35so6564392pja.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:03 -0700 (PDT)
X-Received: by 2002:a65:4508:: with SMTP id n8mr25560399pgq.407.1627419542777;
        Tue, 27 Jul 2021 13:59:02 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g3sm4480039pfi.197.2021.07.27.13.59.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:02 -0700 (PDT)
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
Subject: [PATCH 03/64] rpmsg: glink: Replace strncpy() with strscpy_pad()
Date: Tue, 27 Jul 2021 13:57:54 -0700
Message-Id: <20210727205855.411487-4-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1814; h=from:subject; bh=CGejJDIBWoCTMrdLfdYOlKTt2khst8/bmsGsqzGrjiA=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOAj+vEe7YcbCfgSji3keoTaHrI/ZHofnZ1HVRt kwNnps2JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzgAAKCRCJcvTf3G3AJqZUEA CIcBP+l3BbFi7alvKzzPClmhyUHq9Qrd5uMRNKMY9XyV0NR/jnI8CoYhga76FZhbT+mDmv6EqlY2QS rhhfJ44Nv7YuNm8ADcxv6ICsgHYc6ExgMQ4gO83JrsqVUuNebi/HDrFNw7T4Z5c1/UUTlWpIwnqxs7 zwuIgbFRNhuxTlpAncpl+dPIlkv40KWXaiqTIR/FuXteCb0rHpAWPYMrJ3tXcDqBwzHtpYfAYbneQq NIhvmdPjcFi5GnKQBm9eTRP7/Xcjg+8Ve3GeZadiIqC14fSgnMgtIahIDXLyAD4WuxdSRQwG+lbGXR 16M20bodkEsvyiJfNZJQdqgyHsVt/eXqpuH1om13iF7+wTit6p8gEUfPMy/V38FyOTgjikr8am4k7A 23f/4W0+nt6mLLlDMXQtGC7TmA97UCqRJ+dNmiQMLuRljr6uD1DWUTS75HLcUjcWkIU1fBUYUi0DWk P/zazmIkeRAnFcJGwZf3zUXOErBqGPmnAav3Bok+zgtGP6JjxVaiFcJN+Dq/iIMuZ8gp1+kmma1GMv m/hLrzzRYpUJQyo2xNUAyVn6zzmEqA+jINb6SqBOUVg3sNfzZTRQkVA7NvmZp+LplR7Jw/n/+91q/6 pIUu/YH+PA+X/eemAshAw2isLrLbFZdRioKXBvLqtjcD2yGkNeO8ROQmebfA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Kp+U9Ayt;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102a
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

The use of strncpy() is considered deprecated for NUL-terminated
strings[1]. Replace strncpy() with strscpy_pad() (as it seems this case
expects the NUL padding to fill the allocation following the flexible
array). This additionally silences a warning seen when building under
-Warray-bounds:

./include/linux/fortify-string.h:38:30: warning: '__builtin_strncpy' offset 24 from the object at '__mptr' is out of the bounds of referenced subobject 'data' with type 'u8[]' {aka 'unsigned char[]'} at offset 24 [-Warray-bounds]
   38 | #define __underlying_strncpy __builtin_strncpy
      |                              ^
./include/linux/fortify-string.h:50:9: note: in expansion of macro '__underlying_strncpy'
   50 |  return __underlying_strncpy(p, q, size);
      |         ^~~~~~~~~~~~~~~~~~~~
drivers/rpmsg/qcom_glink_native.c: In function 'qcom_glink_work':
drivers/rpmsg/qcom_glink_native.c:36:5: note: subobject 'data' declared here
   36 |  u8 data[];
      |     ^~~~

[1] https://www.kernel.org/doc/html/latest/process/deprecated.html#strncpy-on-nul-terminated-strings

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/rpmsg/qcom_glink_native.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rpmsg/qcom_glink_native.c b/drivers/rpmsg/qcom_glink_native.c
index 05533c71b10e..c7b9de655080 100644
--- a/drivers/rpmsg/qcom_glink_native.c
+++ b/drivers/rpmsg/qcom_glink_native.c
@@ -1440,7 +1440,7 @@ static int qcom_glink_rx_open(struct qcom_glink *glink, unsigned int rcid,
 		}
 
 		rpdev->ept = &channel->ept;
-		strncpy(rpdev->id.name, name, RPMSG_NAME_SIZE);
+		strscpy_pad(rpdev->id.name, name, RPMSG_NAME_SIZE);
 		rpdev->src = RPMSG_ADDR_ANY;
 		rpdev->dst = RPMSG_ADDR_ANY;
 		rpdev->ops = &glink_device_ops;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-4-keescook%40chromium.org.
