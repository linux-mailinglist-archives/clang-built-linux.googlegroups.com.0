Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBGHHQGEAMGQEY6QRXXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8323D7F9B
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:05 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id f19-20020ac846530000b02902682e86c382sf7127942qto.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419544; cv=pass;
        d=google.com; s=arc-20160816;
        b=uJe8ug3FWjI+z4+EqlA0gAmx5uP3ePK97dK5l/OPKuvWiYRsGmGwaZLC6JhPVthW1T
         q1FOdhKObTHRnopFZej7CR66dXMLMgi4CCl9ACS/1VhcyQLEpjfxwU7UwFHwhuDFxodB
         V7YoD6Feu9Y1Q1e0lbkU7PR0H+HiJhVwqdADelvkmViM3zMLvAeVhg6rMzAKS6H+knW+
         wVwjQLDFzRu+Zgf3v3u97eWQV3sqNAhRLO6zOni6IDlAVwx2JrD/zaKae7+RKOOzbW8w
         Zs9weQhXncZpy8lyPC54EpXMTyoQD8BZzRIBczMYGCwMnHgObaws4l4hNQzcC0trPlmi
         +Vvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QBDaO3wI/le2K1Hlt8BSXKyNBNh4hF7L+K6yynRL0uk=;
        b=G9gDsQGBsH1DsMQ0FC0Xlvhwrkpe9ygL3WdNSmDTFeEpS/eRkuQzKcGaZ9xR4tkY/8
         +juPCKeCGM2qXV1lnm6kWw99KZzUIWoKTiYhs8U7kbLYc465yWlKNkNApQG+SziTAwZG
         53W1E8cNlmPWAV3hVEVNlhkkzjdbk9TLq84cKc0yQZlofjfD3kJGv2Ir3IiaCSZ9YVXN
         fO+6t8jvlsWB/X1qzKZ4y09pA7NfBxjMvqzu/TOK+AaxnKEozs8jQgEIEoemBGXEVKfs
         N9/it85kpjGTUMXII5shFQDuckXZEj+pNFYIwQ8D/s89g13BS0mtIYZI5ou5HIkYz4+O
         oSeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fXdIa5xz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QBDaO3wI/le2K1Hlt8BSXKyNBNh4hF7L+K6yynRL0uk=;
        b=rDe/VKh+4xoGcrcylVNF7fdLCT455vzeDy+rvJe9euAUDSU1tljYnmSpknn79qziJS
         dYSVG7akLy7fMW6qnycyf6nT2YAE5lpQpI5xghcIRMEYrTp2kV2b/lqhl8QK1a+otk3A
         ABy08DNY9t9Om14MvNASEfq8LJutEI12t62A6CsMNO3HM2ME0i09swQ6Q1vgNNMbsIQR
         tL+jxTDhW3eo4pGKi6qFbR4jz28EklmCc/xqaHSkvQHAnwmdo1U3UFJt36yv9wLO/UPL
         tTI3v9JJxLdVPtmn0TAPMfCCkDNyce55xq8TK5aF5SPo30VtiYa1bCV5cymNOaHhsmh1
         Y2tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QBDaO3wI/le2K1Hlt8BSXKyNBNh4hF7L+K6yynRL0uk=;
        b=DjVfsNTBI4NMxFwRsg8s93+8NrT892Q4xzMCC8hbqasYwMiWPSswi1hOECyRNXm8jd
         3PyIs3BtyEtAZC8Dm05lgRBPz8xaI6MlSMHXLoyWHFbgQJvCVBt7Lsyb88N0jiGibjV+
         Jq63XwVkelCVDS3B2deyke6/6pASl5vKzTgLZr31e5RCze/LHt2+0mastPS7Hn7CFkPD
         SWQ2+UC3Xehe+N5nVPmnzzwz2ih09/qa/x8vjcVAUUDVadM/QFlXVOeOe3pISHM4qiT3
         yw8AsMLvcgAUPMC62tg4AoZNs+PxL6rsHcnEDVpHMsOlvjOOFOtWtJ45Gxz7DhGYl99L
         tDbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kLgF0MD68Zmj4vuoaF6Mon3uqUFkK5HPMSsGXmoU/cOx46wsD
	Dq5NCurCNA6FvyQDgbNGm5Q=
X-Google-Smtp-Source: ABdhPJwYbw+lSiq8br33u98yzFFTcFz8qK4JT6cN15OLl2hVGKweTjgKG3X6y9SCdY5htJPcPpC0eQ==
X-Received: by 2002:a05:620a:b1b:: with SMTP id t27mr23657942qkg.460.1627419544220;
        Tue, 27 Jul 2021 13:59:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:162d:: with SMTP id e13ls72086qvw.1.gmail; Tue, 27
 Jul 2021 13:59:03 -0700 (PDT)
X-Received: by 2002:a05:6214:2482:: with SMTP id gi2mr21973142qvb.51.1627419543787;
        Tue, 27 Jul 2021 13:59:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419543; cv=none;
        d=google.com; s=arc-20160816;
        b=FWYJsM7YZ7u0w0B5zD2a7GOVx7fdSNFpx0roxvi6cVEXfzVgdeC30qK6V3g20E+d4S
         wCmKZtv2qlkPK1tGTCXN5csj/48YPBUj0MsRc/GirCjInlhZvqgTHUIzuasATsFKyWU8
         BRrdD97KT9sHyT/na/2/8IpgbdJL1aM6H5Ru/xrhuLJXZjI+UDQujrQQfK5niLJje3yg
         pWwaLBw7XEEsH+ZVsE9qwal1SL8f0qYQCuMz+7eaaZHd4qNwaRSx9AfCwUi29n3WnIFT
         LBe0r+BXyGN19wq5JxmsgQjMXizUtS9gRNQzgZdDGDsHlNnd3xJ5573hXv96J2d3BI4y
         YyFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7nuFdIglNEHNCZJ4OURvNLaS8oKexf2Xbsw8tAobRMI=;
        b=YOzcJcr5BL1Nrs6OpmgF0+/yh/3+0dCTcHI5CZi4thb2sXyWwFp6GmZ2KIJ00+zj3M
         WHbfAgTsmG8Ji9ndqN3ptlgCMdzuTbFY1Co1iwCeyKjTwFJ3SClk2LwDSrq1kbewdfc4
         XZE9mTQiT+JnISU9fNdxySrbhAo+T7Za/zwMFjHRmBKz/iNSG1gf1FBDHF6VVT5nUCYz
         2f6g1RMqKoJR4k0v0zDT2VwqeJQSxyOqnHdnVpklxtjfssuBN7dZGcGVv2IDnbnc3fcu
         MNETX+avXtt/CgJnvCdqtns2WRP7q0lGeRk7czeqeCdD6onafXwtax3JQe1+jE7nJell
         OdeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fXdIa5xz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id 12si280194qtp.2.2021.07.27.13.59.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id b1-20020a17090a8001b029017700de3903so4088270pjn.1
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:03 -0700 (PDT)
X-Received: by 2002:a17:90a:af8c:: with SMTP id w12mr12989398pjq.109.1627419543028;
        Tue, 27 Jul 2021 13:59:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id i1sm3849350pjs.31.2021.07.27.13.59.02
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
Subject: [PATCH 01/64] media: omap3isp: Extract struct group for memcpy() region
Date: Tue, 27 Jul 2021 13:57:52 -0700
Message-Id: <20210727205855.411487-2-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4703; h=from:subject; bh=LCf4h7e2PK4sOgvQBd73gWCkmhRKJC4tH4kH78fVevA=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOAJSAPyozNrKWpqJWAzYod2fmvBM+4l2MwYKWh O4ocQxiJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzgAAKCRCJcvTf3G3AJoP0D/ 9KTuhNSJSjVRPOJFWeuepSlknmUmM/K2t4MDDXqOX/kDkR2wcXh6ttU5lVNW0YgBjHXAF5eWLYpPt5 XHm/KeoOX2MLhuXazp4Ti4YBKlziUsZTs5O6dl8oGQF8vvSOgQVD4x549qIJAaUMy/Q9HqWzVqq85p yP3Plkr/yT7Fr9RDFQxzPqOdsDFBoD1ZLcppau6vdTB0PZWIhyCpFYq2uKiDluWvj75Xhxrp9micdg U2R1bGYEEaNcOOSkguLQYe0+7XbhyY11oRTvhbZEZRUrrqPf99XF/yF1XvvLi6e8z/hVvbVGsEd8Mv Qiu6hKrvxmLG/6Gu1PUewl4RyNN90iXJ3Rh3zLatEPwPBHAFaGnBpr5RP4Ntn7iSsskKZBwlebvul7 dZxKtji4NE+xbeZup0zNKAjAcLeI8QVdmPiAbeqCybdrJc75zf4LhhuDwRXTdbrsXCooEGGuiMw3/v x+EUAxYAP0mwGpMCMNzDB9dpyGAKbRXmGfGhZu9JSilm3k8JsxQ47nQ3+PU4JxTEAGP/RA6CAwR6zV 7KB5mLzU0yyN2b7Az2uKl0RkeneD9qcEy0xqorM/qFH7O+d020ljiEXSwPXdgJdOF7fiAdpmoeK2uM 3RKFyedkYhLmnhtvfdEg6qb1tMNiC33AbBzVnm8LJMBkL2upkdQjzlsDvzsA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=fXdIa5xz;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f
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
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.  Wrap the target region
in a common named structure. This additionally fixes a theoretical
misalignment of the copy (since the size of "buf" changes between 64-bit
and 32-bit, but this is likely never built for 64-bit).

FWIW, I think this code is totally broken on 64-bit (which appears to
not be a "real" build configuration): it would either always fail (with
an uninitialized data->buf_size) or would cause corruption in userspace
due to the copy_to_user() in the call path against an uninitialized
data->buf value:

omap3isp_stat_request_statistics_time32(...)
    struct omap3isp_stat_data data64;
    ...
    omap3isp_stat_request_statistics(stat, &data64);

int omap3isp_stat_request_statistics(struct ispstat *stat,
                                     struct omap3isp_stat_data *data)
    ...
    buf = isp_stat_buf_get(stat, data);

static struct ispstat_buffer *isp_stat_buf_get(struct ispstat *stat,
                                               struct omap3isp_stat_data *data)
...
    if (buf->buf_size > data->buf_size) {
            ...
            return ERR_PTR(-EINVAL);
    }
    ...
    rval = copy_to_user(data->buf,
                        buf->virt_addr,
                        buf->buf_size);

Regardless, additionally initialize data64 to be zero-filled to avoid
undefined behavior.

Fixes: 378e3f81cb56 ("media: omap3isp: support 64-bit version of omap3isp_stat_data")
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/media/platform/omap3isp/ispstat.c |  5 +--
 include/uapi/linux/omap3isp.h             | 44 +++++++++++++++++------
 2 files changed, 36 insertions(+), 13 deletions(-)

diff --git a/drivers/media/platform/omap3isp/ispstat.c b/drivers/media/platform/omap3isp/ispstat.c
index 5b9b57f4d9bf..ea8222fed38e 100644
--- a/drivers/media/platform/omap3isp/ispstat.c
+++ b/drivers/media/platform/omap3isp/ispstat.c
@@ -512,7 +512,7 @@ int omap3isp_stat_request_statistics(struct ispstat *stat,
 int omap3isp_stat_request_statistics_time32(struct ispstat *stat,
 					struct omap3isp_stat_data_time32 *data)
 {
-	struct omap3isp_stat_data data64;
+	struct omap3isp_stat_data data64 = { };
 	int ret;
 
 	ret = omap3isp_stat_request_statistics(stat, &data64);
@@ -521,7 +521,8 @@ int omap3isp_stat_request_statistics_time32(struct ispstat *stat,
 
 	data->ts.tv_sec = data64.ts.tv_sec;
 	data->ts.tv_usec = data64.ts.tv_usec;
-	memcpy(&data->buf, &data64.buf, sizeof(*data) - sizeof(data->ts));
+	data->buf = (uintptr_t)data64.buf;
+	memcpy(&data->frame, &data64.buf, sizeof(data->frame));
 
 	return 0;
 }
diff --git a/include/uapi/linux/omap3isp.h b/include/uapi/linux/omap3isp.h
index 87b55755f4ff..0a16af91621f 100644
--- a/include/uapi/linux/omap3isp.h
+++ b/include/uapi/linux/omap3isp.h
@@ -159,13 +159,25 @@ struct omap3isp_h3a_aewb_config {
 };
 
 /**
- * struct omap3isp_stat_data - Statistic data sent to or received from user
- * @ts: Timestamp of returned framestats.
- * @buf: Pointer to pass to user.
+ * struct omap3isp_stat_frame - Statistic data without timestamp nor pointer.
+ * @buf_size: Size of buffer.
  * @frame_number: Frame number of requested stats.
  * @cur_frame: Current frame number being processed.
  * @config_counter: Number of the configuration associated with the data.
  */
+struct omap3isp_stat_frame {
+	__u32 buf_size;
+	__u16 frame_number;
+	__u16 cur_frame;
+	__u16 config_counter;
+};
+
+/**
+ * struct omap3isp_stat_data - Statistic data sent to or received from user
+ * @ts: Timestamp of returned framestats.
+ * @buf: Pointer to pass to user.
+ * @frame: Statistic data for frame.
+ */
 struct omap3isp_stat_data {
 #ifdef __KERNEL__
 	struct {
@@ -176,10 +188,15 @@ struct omap3isp_stat_data {
 	struct timeval ts;
 #endif
 	void __user *buf;
-	__u32 buf_size;
-	__u16 frame_number;
-	__u16 cur_frame;
-	__u16 config_counter;
+	union {
+		struct {
+			__u32 buf_size;
+			__u16 frame_number;
+			__u16 cur_frame;
+			__u16 config_counter;
+		};
+		struct omap3isp_stat_frame frame;
+	};
 };
 
 #ifdef __KERNEL__
@@ -189,10 +206,15 @@ struct omap3isp_stat_data_time32 {
 		__s32	tv_usec;
 	} ts;
 	__u32 buf;
-	__u32 buf_size;
-	__u16 frame_number;
-	__u16 cur_frame;
-	__u16 config_counter;
+	union {
+		struct {
+			__u32 buf_size;
+			__u16 frame_number;
+			__u16 cur_frame;
+			__u16 config_counter;
+		};
+		struct omap3isp_stat_frame frame;
+	};
 };
 #endif
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-2-keescook%40chromium.org.
