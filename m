Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBD6P6KEAMGQEGKDIN3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B863EFC48
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:24:16 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id o11-20020ac85a4b0000b029028acd99a680sf380049qta.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:24:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267855; cv=pass;
        d=google.com; s=arc-20160816;
        b=BLzUoeOtuhxGg7vjixcJKvHr0XtD31blbic+SHc2H3E/crdC47/mOqthYFyZjGVB3C
         DPA3wQChy1JXjAXAUU+Bx4kQzlCkMI/mVUQyeZKB0iUMo73Lq6jhI26Na52kSRKJNcyM
         dCQD0a6UCCQY8TEOj8ByAbptmoAyNC+fbKlbTSDFYsZYZtLo7BnhBIb0ZgrpXrbmAf8l
         EykyDe8lMe+XmGKaid0J+EnJIsHCi/pAjGBjDDP7Au9mxwumob5ZMN8+mAgC/mUVYW19
         Y4HB84iuJ/ATw7g2p9MKalrNqUEJf/tDTccBxpdp2vr8IcMPojoPONYe6O5Ek0dpkKKK
         1eog==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=aKoInI1rwcueWmDFEZ1dB9SYh21GpYzIANJ4GjkJnfY=;
        b=ktS1KFE8NhEI/L7tF1UxUupvmudZIaOzNOkndT5xgIAlwKu6GZv/bvXXUi0YLokzfn
         FsdV0hU0pRXluBbDlW8ZPhrJOjIByRp30X1tXkZ+HSvK0FE9pmjgcKHvfnP6MoY/qAM6
         /ARctUGcdbFoaQ92McBa9Ahd/7FW7yzvHO5XUeZMLXrc0sq9eFNklkHZruZSv9/nBHo0
         m+VorOd+03npTR6n2bwgQCYCVmFO0p2piQYeHeWpdkXVdC2w4fPi1Vfbn1OlrJ+WXslz
         /3IOivT2wqQvkXWaams9fbwxDaLlX6WnsqKIE1+Kl/sKIA7sEWfDZNVTLieVqLbMB2Z1
         WmHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EGdWOE7b;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aKoInI1rwcueWmDFEZ1dB9SYh21GpYzIANJ4GjkJnfY=;
        b=mGzrOgBtjdPS+gnV7FFRwNtRytsPwG93oB4bpfK3Xcp+DbqUYXIbfZFXhrLZK48wN+
         H73ff9ifDYUBjX+b1zT+aRM5JJ+U5Wl2JNtKibkTEb60g2EtBNFJUbyW1k/OgeoIK4Hr
         7L/P2gh++FVF65z9uMudkvd3JwTrXxZvbkovVDmu/SKTEHU4+vwf38NN30uXOqzfmKJl
         c5b/tcRHEltPqbxJIskSxvEtHqeSqMOrwzaFeR7QTpQO37E66hMBr5GwQo/T4wGmbXOm
         O4+fk6kzNJqfYq43RMaU7MulpSaRWW0TcK126RLeK3b1ZyyvMLprNb5hF/bYCvB08hCr
         KVgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aKoInI1rwcueWmDFEZ1dB9SYh21GpYzIANJ4GjkJnfY=;
        b=QdveugwWAFHQXCrzaBwSE5F0CWiQhP0baW9f4Gv7viU6UO+p66uPMp6quNnC02gBjH
         ysgCIaJhiqQYz3zeh6s4N/IcCiwlV0JsauWvmcmkJn/RpeGy0jd8gM+FdU3VbTiyHL+9
         YEgmMJx8JeKpyOOi4H5TwzXdPqS2hSH5FXP//MgnUbbqscWf41P4RlS4Gu+zhr6WSTOF
         qtKnwi14dbjmZ0OK2RVjz2gIFNricvO7Nnlwd4DRvG4yBe8n41ZHZJcMfbjS1BcUgRew
         UscjrxO+Hs9rkOKlbIuZ9Ky43P7D5AStzjntPspVIlykq0gv7AJIkTUOQnXYLEhhryAh
         9cYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53365sutLKSilQ8fPdHQ6jt1jKA3cCCZTk3zKZNIsaEMQX62pzJk
	kNp66d/S59mtEdim6/AuwyU=
X-Google-Smtp-Source: ABdhPJwCjVFI+IJHC1j4UrYPERsZ+Qb3IR1mLQYyNgm/2Q14MLSs1GqVpHOezckIZ9SD3QNc8cRihQ==
X-Received: by 2002:ad4:4973:: with SMTP id p19mr7527416qvy.30.1629267855784;
        Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:c6b:: with SMTP id t11ls335544qvj.9.gmail; Tue, 17
 Aug 2021 23:24:15 -0700 (PDT)
X-Received: by 2002:a05:6214:410e:: with SMTP id kc14mr7614117qvb.33.1629267855350;
        Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267855; cv=none;
        d=google.com; s=arc-20160816;
        b=dCxTA4CTvhm14vnYbw6OuGppRjoJrt4G882SuTZcFV/8yaj6USFClJS2QiJXDIRyu6
         x5zG6rSHFZ/zwH/b1VZZGfddKffp0UBmhAHGWMFaDAdWnWTv4bK6EVVNw66ptI4jI16b
         pPld8pYrtJrnmgp/fAWbTsCg5TX+ypDDAtNeFqpaa3Xcnm+kuWU1W7WvDxBvFxOmH+Nl
         pM/rTuyTdhV+qLs5fF9568K9YkvqqVcu8Taoq0tz0G6JY7haJi0EyXxJON71QZeh9rXv
         Jq5HPy9/KgWVQ2jJfsfuasTsHBU4sLeCXOmEmUPdJ0VNnWGvboZPckM2qe9VNHAVEPO8
         h9Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hNEXxevdADdpiZT9yDPKRLqHYKrfWBF19uxfyZWmCGo=;
        b=rGHi5bp1/qOJ6/vPrCc0+AQiUYDQhYeszLqJ29oAS4i4mgpAp65ABNGojE2eNAIe6O
         v7rX7pOHMX7+g2uUWQ/5S1Cnq0+cRiICO8RchUtSVXNBJ3OZdI+8zGeNIfw31bPJP4c4
         MdYuiCAw/5oJj8wNrOFRXbkgBhcik+sSJYuhfcaBvrKvEj4eXY8LgtYqIXnGxGoZ1FqA
         eOhL5idz/H9BdN0sxd+rHVJD9PU9mcVj48JWLd/VNZe84aXWYsyeNAqdO7YinWfVFD8w
         nXx87Wqzy7ihshuZHXh72MZEUDtfmRgKvOqahkwtX3gUPxcx/ZtBWNWZDrS2fXJ96oZo
         S1QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=EGdWOE7b;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id b1si362525qtq.3.2021.08.17.23.24.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id a21so1106365pfh.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:24:15 -0700 (PDT)
X-Received: by 2002:a65:6658:: with SMTP id z24mr7321502pgv.266.1629267854650;
        Tue, 17 Aug 2021 23:24:14 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v9sm5393520pga.82.2021.08.17.23.24.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:24:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Stefan Achatz <erazor_de@users.sourceforge.net>,
	Jiri Kosina <jikos@kernel.org>,
	Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	linux-input@vger.kernel.org,
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
Subject: [PATCH v2 55/63] HID: roccat: Use struct_group() to zero kone_mouse_event
Date: Tue, 17 Aug 2021 23:05:25 -0700
Message-Id: <20210818060533.3569517-56-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1908; h=from:subject; bh=1pufhTOQ+Ev1TBqsKxncMFoRA1ZRswld+5UcgY3UHPc=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMqezgIdICqUvusV3uxfFgc/NzjoDMPzoTPLXKQ ysx/Q+WJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKgAKCRCJcvTf3G3AJvMhD/ 4/FvXFOoXTIkumS1QqMpAFhaJGCKF+0RDx/z48DGYo98kCwWG6ybzb+3Sly47Z+VgrSp0nI5xp/nwa 7vzRFjBAI8F/fZVbUlI8Z/Fya+aZbPEeiEK947R3H8Wbap6uVAex0YjyWhhrJ5ZvwN2gBayJJ1WAXz +0fz1YMH8bcbhmSMSRON2ZGR1UjjBuaTH+o0ighQljGy5YLUHHZ+P4xNS0whZ8d+THVIEhrrdzHdRV xQ+rSGFdrgJR7xYVHqTNDyySccjRR12fCgsnFgzx2wmvqD6usQbAtioyZ5ZCTcNXNfyyvHgd++uCyK e638UGzfpOzM5vUWRjmLl1KeEBbobuCg3sgk1AQzR2mUpn6cvbWbZbOyGlGZtTdTn7wCe/qfq120Ud zfBKERaOR0vpEYpiRESonq/qBjud3tRwJ0H/FhwsbPbp2lo15qfYimJ41SEC1abj3Da1Xu61TlMqEd S5Rzg+maFwNcx3sFBdUId31vsspRp/LAtiMPvI3MalLGcTxm9Gdf8i9hEI2yM8v6QUVUqBl/F6N1uW 0dr4/U6A89Pj+zJUWKnGqTw3EZAQEgK5Lbi/njYrrq3JeohlG7jtmoxQDLp3fMw23TORKszxjv3y76 kDqBN4o2faONCRYDcPk3N/ArWnW2NiFPXTb3nBBeYGgetTCuosxxzdiUWWLg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=EGdWOE7b;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d
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

Cc: Stefan Achatz <erazor_de@users.sourceforge.net>
Cc: Jiri Kosina <jikos@kernel.org>
Cc: Benjamin Tissoires <benjamin.tissoires@redhat.com>
Cc: linux-input@vger.kernel.org
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-56-keescook%40chromium.org.
