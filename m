Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBEERCEQMGQEXI25WXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 342113F3E5D
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:34 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id n27-20020a056a000d5b00b003e147fb595esf6962955pfv.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618693; cv=pass;
        d=google.com; s=arc-20160816;
        b=diayVKiZHzdBF+jH6jLod3Ql9LREHb/PD2IXDYY1Bw0Oe9opU42+tnsWNCbOTJzuB5
         ml8Yjw3W8tx8SUN7a9Oxfw5wkQt0q0G6EiRmVGsv+BPAV5kK/dnywHgFpSpaOStNtVp6
         OWkyVKnxSZiRdLoladxkN3O5WQSVa1J0KjEfJcBRylCBAHYDfehxk3PYRSnoFvmf4pMk
         k3uVlWgaNGurv+YQcpusjdO3hHrAMYYIi2YcAzqhEBN3hTaZr2cDCXSnm8Mh6wg68gXz
         odOsc1RHU3+SwvCDfnlF4VvGNqEVeRdEEKMXJPaMM2cxGM9Q2WBF53Ua9GqSIrYHqpWl
         wr2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3fsu0n0RHhCwCu/bv4M2AfsHt99UZ6IvS9cvpmD4ecs=;
        b=E2o9c+FruD+JeQjspwvYErrxIlEpykKqb5kDFVE96ZFUxbftVZWY00oiXpn3cQKzDG
         Mg+rmDR0skIGYY8CZg1Ua6SU4f3If4CTGBRXUGZzvrFOjQFhSCtFzbJHenCDMSMCV5um
         YIP9yb8trG3W9k+n+qrZLFgJZpu1CMZK8S6AScS1QFAb1vBalKZYqNxLBLzHhQL5Zxy6
         voSMaaxKnf7d7QxX+EjRlcDV4iH5L7vvdHmO3TlXvXnEKTq5Y9IDi0equCI/hW4FRsml
         EqIcKC3XjMPOS5YbZg+ZlDsUzYhFtijkiBAnOI8Mx+q9KUKcfsBpwNmtvOnUsMmUVwye
         pJWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iQnoPnJ4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3fsu0n0RHhCwCu/bv4M2AfsHt99UZ6IvS9cvpmD4ecs=;
        b=P7FzsTij7AL6TFtvOZOiSIIEF1JA+nYVdJCmY60q3yHzMvKO3UlHC0CDmV08du0QJO
         UTzlt2lJ0mR12P+NPHkHnZ0hlptmGny4BNik8Sdp8mM5UzXk0yPZBzipMZCbeFqobDNb
         sSdZLWAMmLiV3mQYlUo/BOy9DGQPfEnm7fbM4veuFFP9rrgv/aPyNV9kRsrKLak/RXd+
         y+ZArcO1ZNsJBS0ZXSX4MzTJqnafsh5Metv/q26wym+c2O8QFkE+2i83FURexX6KinvV
         UfD92izVUedpFEq9Y5aOVAO6HogsD9AjfC+8RCyE+z4UFVZEs0fAs6prJbb2yOj0vpvU
         yU/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3fsu0n0RHhCwCu/bv4M2AfsHt99UZ6IvS9cvpmD4ecs=;
        b=F0tSkVk21kVDhFA7t/1OyYG0eJ9pFuSRixvehhla7ZljczEYdrnriaBEj82g9C11n2
         NUHddHyWlJFRGvBUMqWLIzJgiSwWQmSnyre1kFbUxc1fTpuzKbjKJesSLNiFtmJ1sxsC
         4x7dHNCFKjC4qSOEsD+ErTw9f7an3yNAy7a4JCzja11AJ8Gt3JCUaDAcHxGwTovhMWn9
         8W2arI9G2xm59ODAEpuEDjtrQhxLvkbLW8LmruaYQwZG5rFoRTw/hP0Y21C1sP7IEO0j
         Oe/3xiCD/bZXykQt/1OGtH6kUig3yrowrl20UJSNIfNRrcXrjnPAHRhhqsUXfhOZujgA
         NV2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BjRKqE9CZo0ZTAhHNDFD0oecL/R5Fs+lv4eD7JAVFV4aPCm4g
	vzVzGtZa5TLrRGmgwa0wjdE=
X-Google-Smtp-Source: ABdhPJwe5Rvdtl/6NPEXuSjeykK8fhQjDvk9Si77XfgyCt2smgLX/xMBj+YBuemnKuGe0de2qnBUdw==
X-Received: by 2002:a17:903:304e:b0:12d:97e1:f03e with SMTP id u14-20020a170903304e00b0012d97e1f03emr23520065pla.40.1629618692905;
        Sun, 22 Aug 2021 00:51:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:1956:: with SMTP id s22ls2252971pfk.1.gmail; Sun,
 22 Aug 2021 00:51:32 -0700 (PDT)
X-Received: by 2002:a63:dd0e:: with SMTP id t14mr25262223pgg.279.1629618692359;
        Sun, 22 Aug 2021 00:51:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618692; cv=none;
        d=google.com; s=arc-20160816;
        b=VFDnD/DxCVYoAjxfbF40Bcu6/Gwxq/u7crgXR9bF2xuABLhqPfeo8P4BLyzEl3+Npc
         rntA1dCy5GbFAkfNjr9Ce48kHmM5DIqd5MFHzYMsfmlSBMVJZpLy0G3gVXAq7AeNY4OH
         OIvjdsbRtlwmnUHcmEc6x515JH3jijbwsb6uxvU1E1yY1HPs1rrDkreKhEfDC2NzNOE0
         GbI2HxNGUqg70cz4apQPGftqyHwn6bp2Jtc24PQ/O0Hb4TSIt8t1htgPtHB/SnUkAFAi
         pJkeLuiwiYLdDW/wl4nSV7PCA5EwITOmrSxJBsweVuSSzETR9bU/5enDXPzol4QkpUi3
         M2fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RZ8BEPPVll/zwqS70BZ2JYx9ju7xEKmdm5VlWqz/VdI=;
        b=EOa2pfSxv/Bol17q9TcZDsLDGxbF18HQeETPIlxXXxOWoCknJ4NVb25yKz7x7d2i5t
         bkDi9b4fSrc7RFn4MdacWXTmnfegXWO47ZafQm7Nsw+linG9yDe6czZ9GTQifgHmpvZ2
         LxjAyPWeXzIYgYfFIwm3bx76aJMNdp76dyvylZEcJOUDkiFVz4ARQBeleOaxif4G7PKK
         s5mbgCyxK3jyl+kOd4ho/VRy4s3WTP4qFGQ0LKkZEydNSg66yS/spb+hkLsLLkz14mjo
         hdXIfqJEqsl1BqMe1HVacuR2UGYwsCfXgM70fQWuLr+PJU13+WYwcXjQrKIy1S7D2WdB
         /L8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=iQnoPnJ4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id r14si928466pgv.3.2021.08.22.00.51.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id n18so13653608pgm.12
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:32 -0700 (PDT)
X-Received: by 2002:a63:cc0e:: with SMTP id x14mr26811805pgf.352.1629618692173;
        Sun, 22 Aug 2021 00:51:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v25sm11904465pfm.202.2021.08.22.00.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:51:29 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Jiri Kosina <jikos@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 10/25] HID: roccat: Use struct_group() to zero kone_mouse_event
Date: Sun, 22 Aug 2021 00:51:07 -0700
Message-Id: <20210822075122.864511-11-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1858; h=from:subject; bh=9rnBN9pp25qHZzpmSwKIY2SR98/yWw6L4NOQkzURsmI=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH2LkwWtaOSS7Sx/Asb2SpLbNNFUNs3zGDDazyV HncbtwyJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9gAKCRCJcvTf3G3AJsM2EA CR/tG8xuXRd6A9sHvtzfnyuKbJ8og8+11J/eZ1XFtBWxwj1ZWtRFM7SK4UsGVDCKbkgmTaWm9L42nz Ykh//OfkNzR8v8LgCX5I4afgYhpr+W2+jd7Vs8OSwt5KL+rh73sPUpznE5xXdoCNQh00RnLs0mgovr ym+zLbmN8A0XXaBmNhADwbonxzCDX3ketGY2WDLcLouoaX60Y2NxAlldabWUypxRLYLHxtOjZ19vR9 IOkqfSzRFVJwesNmzkbstIoEBECpzir6s6uUooa4uvcxTxzqhBDtSI8OkYLHr1mvKeo8cAl9m01ml9 r1hJVcdDio1h1TrNn901c8D1YDuau3G4qKcC3bNRryV/AZppmp9yBYHyXNChFegB12MgSw9yfNrvM1 acs0b5CLpypzUdeByvNdm94UY+Q+2rQ4Mi2imV+7l0rAGdcC+LmY0+zyGGmeYt1cjLP6yDrXqsPCbK TPOzODY5r8mgP7t1mgRy/lpSgH7iLKnv1HelL7GrG4tS/NZSPo2XGfxUF4xR1C13X3s/AImf+Uplnh r8cuoliRDvEXGm0Ly7BS/++cBqIK3M7u1iKh/JS3cPKtsuckyYRiAEQBHUsS+I/Atut8nieCNykJVN PnmWbeC/TjpL+BUjubxZwshG+kHeCYpFTMGXL6y/5csfEcVQbYsml1uPEOGw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=iQnoPnJ4;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::535
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

Add struct_group() to mark region of struct kone_mouse_event that should
be initialized to zero.

Acked-by: Jiri Kosina <jikos@kernel.org>
Link: https://lore.kernel.org/lkml/nycvar.YFH.7.76.2108201810560.15313@cbobk.fhfr.pm
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/hid/hid-roccat-kone.c |  2 +-
 drivers/hid/hid-roccat-kone.h | 12 +++++++-----
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/hid/hid-roccat-kone.c b/drivers/hid/hid-roccat-kone.c
index 1ca64481145e..ea17abc7ad52 100644
--- a/drivers/hid/hid-roccat-kone.c
+++ b/drivers/hid/hid-roccat-kone.c
@@ -857,7 +857,7 @@ static int kone_raw_event(struct hid_device *hdev, struct hid_report *report,
 		memcpy(&kone->last_mouse_event, event,
 				sizeof(struct kone_mouse_event));
 	else
-		memset(&event->tilt, 0, 5);
+		memset(&event->wipe, 0, sizeof(event->wipe));
 
 	kone_keep_values_up_to_date(kone, event);
 
diff --git a/drivers/hid/hid-roccat-kone.h b/drivers/hid/hid-roccat-kone.h
index 4a1a9cb76b08..65c800e3addc 100644
--- a/drivers/hid/hid-roccat-kone.h
+++ b/drivers/hid/hid-roccat-kone.h
@@ -152,11 +152,13 @@ struct kone_mouse_event {
 	uint16_t x;
 	uint16_t y;
 	uint8_t wheel; /* up = 1, down = -1 */
-	uint8_t tilt; /* right = 1, left = -1 */
-	uint8_t unknown;
-	uint8_t event;
-	uint8_t value; /* press = 0, release = 1 */
-	uint8_t macro_key; /* 0 to 8 */
+	struct_group(wipe,
+		uint8_t tilt; /* right = 1, left = -1 */
+		uint8_t unknown;
+		uint8_t event;
+		uint8_t value; /* press = 0, release = 1 */
+		uint8_t macro_key; /* 0 to 8 */
+	);
 } __attribute__ ((__packed__));
 
 enum kone_mouse_events {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-11-keescook%40chromium.org.
