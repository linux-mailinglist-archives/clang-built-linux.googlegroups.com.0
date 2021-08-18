Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSGG6KEAMGQEA7OPCOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2603A3EFAA1
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:01 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id d20-20020a05620a1414b02903d24f3e6540sf1083001qkj.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266760; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ay+L4Ad1L7qBmP1Xl36AubaZg8q1Tmxa4sXSNtUkEY0DXtiKFLLShAVU9hxeZJL1a0
         C9Vl5SwQxELIydTHxquMoRiplERFIoeE84E0M1pSnSR2bheDqLgzxrL9BUUGGPHMKIrj
         g8qV1WUal/L368grafqOfsh5vKL/VpNohfQ9Cw6fSvw3/5dbX2RJOnW26N7EiGdDYGSk
         fRY/flhTHgYhm0nUQE8nFhmsjVfh39EclOIOVLJ/rOIs511Zji8BSGeQG0UUevZx2j5I
         l9N9JNy2fBqFF9lGGTRZgWHsGWV2wIQI3zWOp+bhVo0TKQ3PJFlUe9zhqfSWR1Lh4W0B
         wiGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nmJCprKu0K5pwD8IiaactSv5nDzAMpWKqOK1LckQh3w=;
        b=AA2sEOWpa34dBMgIZKipNL1xzVJnNtOV1FFgS+4WDqGAu7Rfe+7tewHjuXllInz7x7
         MkOh8i7HwfV0rwwtJbBMxOu7HCla5zwHwNNf6ac/0A+heKWy7L+smXGgTOABvaEQmet8
         H4b/F/Sjzzr7g8gPJ11t0FIPa5W61WDkGQZ4l8qAX5+D521YfATyreXynLVQvjiUA9rY
         U0Ib3tOodu0Y2IrovvQjlUDGCsSFtdetlwBteTIKxGQG5DpS924on9mHs+4/29OMCJjn
         bz+4B/XDWoc0jeOb0o3wZsLVMU5+HaGgZS36ntm+FYTY6aWqQHV0qM9pk2yCQtXukmZy
         pyjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OT8M8XZV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nmJCprKu0K5pwD8IiaactSv5nDzAMpWKqOK1LckQh3w=;
        b=krZg/SUySN/Qc6lVreXFZj5dv5juTpoUJ6e35Du0+3Mk1jF5sHHlm4m9rQILwsN9xt
         h2nR1KZrLqc9x5GoylcmQ4JR3yxGtLCn1LIsjtfGvvEwPu3D8Il56eNcxGARm/cobe1d
         tedE3qHkVtJ+sjZOiiIe5+4EtWrrfWQ/8Phy6JG/raf6cliYK1djztK/YckEW/W6mO0Y
         PzGvokMBlLneZJxAglxSuX9Gwl75xR6EQuXiYYdj6Ai1agZ+GiVY8JQo2bv1kQuEKdxz
         7wfQ68laEcRz65pMnSErbGhq4+xa9+OYnN+xZAVK3AaD8pUaUZkOjec529gC/a5cKPOT
         shnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nmJCprKu0K5pwD8IiaactSv5nDzAMpWKqOK1LckQh3w=;
        b=ljAO4Z7qRhs8dOmR4i5KcsBh+ipOd1m3oWhhrLznqQyz/MtvZKBVO/3b+lmWBI1s6B
         9kvt0tv4BUi84Uv2mkuZAZmWahVWs9XA5LNZvOcDPm3b5ROR2uxN1tBp9I0n9kvjDkqe
         E/+SqTe7IxhGEgljpOy1CbE4fnvXe4lDLS87Eb1DnbaPpRwnmiA6eTCOBMwiN3NxudBq
         CIEiF3X6g6Maps4uHsqIcDqQrfLVhmL77zuBQoBcqY9uIufIQloHIJx5rqNFgHxhVClz
         i0iVcNkLCWDPCJT0rREqk+OoIzNe8ICtUraVQj5zktRT9arM3G45s8oS805mZI+gXro8
         0C0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oLVocXWA5IWmt2f/3M1WzsQNJXXfJeD6udVu9yF0Jyo+HKmJt
	/G3z85oE4csPVmkUaYQv1QU=
X-Google-Smtp-Source: ABdhPJyEomqxl6mY0DhhaZivg/5qvS/8/3y44Gz3ZRJh9UQI7w/v/DJ4gdVi4p7kJ8AJ/LdVBcAe+g==
X-Received: by 2002:ad4:4e25:: with SMTP id dm5mr7309827qvb.21.1629266760327;
        Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:153:: with SMTP id f19ls517237qtg.5.gmail; Tue, 17 Aug
 2021 23:06:00 -0700 (PDT)
X-Received: by 2002:ac8:5b04:: with SMTP id m4mr6486230qtw.344.1629266759918;
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266759; cv=none;
        d=google.com; s=arc-20160816;
        b=wT8MKLjcp8fBmo2HhXmP2XZhrx3xhnWJOSyNj4pd3mVSWnWIbrfyzUMP1QokhaVD6g
         f44MfHW1+nPE8d5O1p2YRj4Xn/ZecYSLHAPmMHKsWHikj1rRe415F1FC409a0MIptdbl
         Sue9O2uNHIQ2QQJoRjpGkxVOVsQlwh9+1Mtn3ccUWd+kJrKiwCtvk+a+4dWGFAd5XrgM
         5aAD/wjgSLf+hP4ls7xuXORiI0j2M1q7Xk6TejeYTENAfyujrGVnNXzJALY9pH6EUypM
         1rDXAc9EDE6bJLByMtVhqAFeAK+tdc9/354RkzO5bIR05Z/pn2s5x7YZDeImx3gI/Efu
         DqOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jQ7Q3jdQqye6b63JEwuz0UrVtVAQHNs/hH6Rmr9vUg0=;
        b=M8r2Fn+AnxEmT5FHqwYqWE6xLm+rfp1OSZ/L15wrqQiW0ggRX7xm/3ewAqe98GggFH
         smpEYfhtwGa7ZqH0ezNYVK9Jxqk2b8QnStHxIx4U3O90l1MIKX/X2sT/qLm2cjG9Piuk
         pAgF7PlsQnz6Od6dOeQsx2WE+wN6kllTNc4sfz02rae/oJc5x0lXl2LGoaApPqi/rsRu
         4fnMLQmH1htlaC0xJny/bx8w0GaGR4kRKL9mk9VQnawT3dFAxC69Gj4MiJXYeh+V6vFg
         W261gxoGpVxy0D0pk8H7qSPdFt0zD+XvKTuzAtkZ1O2V6yMG32o5uUxJIAAloBEQM1zh
         XvRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OT8M8XZV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id b1si358765qtq.3.2021.08.17.23.05.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id cp15-20020a17090afb8fb029017891959dcbso8235886pjb.2
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
X-Received: by 2002:a17:90b:1809:: with SMTP id lw9mr7721059pjb.231.1629266759658;
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r4sm4798457pfc.167.2021.08.17.23.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
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
Subject: [PATCH v2 23/63] media: omap3isp: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:53 -0700
Message-Id: <20210818060533.3569517-24-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4161; h=from:subject; bh=6HM1xQAwdUhYlxd827odkUtGQFwknJXIWVVzXi/7nLw=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMjIy4m5wHWpoRTBmOzDmU3UD7/uFHIYWL3ROtF R72c0SGJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIwAKCRCJcvTf3G3AJoU1D/ 96jvsj5Or9IPBjba+1+MOrtyTu3Rf22j5jIOpSBXhF8bAVM3E+Mng2C2kqkdS2VlazoP3om8hm2RdP Bd6ykNbShrvCpyS87VH04TJw+MMBj3lrgwMSPGMclJCuzyMcoXTNNh15yCInvLI9PeemYWqaX5OVtK yisDsbYOp8PJHSGn95diLxU8nrq/G7J2RN/Z8rtlFQeqgGAHhVYXak6AH7RaDKvVmJFqEyhigpN1Gk 7YsDDbRdBgRAKkWtm+lXe5exSDPuh/0/ModmYO1MJ7p1DTSNMZ8BoyOq+RIVrYjd03hIxADreC4CsW 1DfHkIDk+wfRUUEYEgmCgzybZkG/huIU9uSvFPH10ar3mIWJednv0BvKLfmUTxIGGLhbh1Lppzq8Tv N92UE+OlAEEHytlx2d1oYz/6aP+kIBJisjP8fooNvawScUNc3Avdh8YhFjJ2pKLKKsAX9Lh1NSybsX Q/cUCJf44Cjh/P9My6aK0r5w1PlPN8bZ09qi29Fc6SNpT6AB9zaJc6lLqSESSe/+It0OLii+EpNDC1 mDrN/ZkbuxOBRJIwJl2iRCQOPHXSQ/Y6p2gshrXybuBLpLMu8a9tbUHdtwAdyRSxnBYRdHZ4ztMNzV 46peqTZ4Mh+JztxdkIJNqKE0o0PZValipPcEYLpotNQODIZtiKNEtjPvWCTg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OT8M8XZV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034
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
intentionally writing across neighboring fields. Wrap the target region
in struct_group(). This additionally fixes a theoretical misalignment
of the copy (since the size of "buf" changes between 64-bit and 32-bit,
but this is likely never built for 64-bit).

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
 drivers/media/platform/omap3isp/ispstat.c |  5 +++--
 include/uapi/linux/omap3isp.h             | 21 +++++++++++++--------
 2 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/media/platform/omap3isp/ispstat.c b/drivers/media/platform/omap3isp/ispstat.c
index 5b9b57f4d9bf..68cf68dbcace 100644
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
+	memcpy(&data->frame, &data64.frame, sizeof(data->frame));
 
 	return 0;
 }
diff --git a/include/uapi/linux/omap3isp.h b/include/uapi/linux/omap3isp.h
index 87b55755f4ff..9a6b3ed11455 100644
--- a/include/uapi/linux/omap3isp.h
+++ b/include/uapi/linux/omap3isp.h
@@ -162,6 +162,7 @@ struct omap3isp_h3a_aewb_config {
  * struct omap3isp_stat_data - Statistic data sent to or received from user
  * @ts: Timestamp of returned framestats.
  * @buf: Pointer to pass to user.
+ * @buf_size: Size of buffer.
  * @frame_number: Frame number of requested stats.
  * @cur_frame: Current frame number being processed.
  * @config_counter: Number of the configuration associated with the data.
@@ -176,10 +177,12 @@ struct omap3isp_stat_data {
 	struct timeval ts;
 #endif
 	void __user *buf;
-	__u32 buf_size;
-	__u16 frame_number;
-	__u16 cur_frame;
-	__u16 config_counter;
+	__struct_group(/* no type */, frame, /* no attrs */,
+		__u32 buf_size;
+		__u16 frame_number;
+		__u16 cur_frame;
+		__u16 config_counter;
+	);
 };
 
 #ifdef __KERNEL__
@@ -189,10 +192,12 @@ struct omap3isp_stat_data_time32 {
 		__s32	tv_usec;
 	} ts;
 	__u32 buf;
-	__u32 buf_size;
-	__u16 frame_number;
-	__u16 cur_frame;
-	__u16 config_counter;
+	__struct_group(/* no type */, frame, /* no attrs */,
+		__u32 buf_size;
+		__u16 frame_number;
+		__u16 cur_frame;
+		__u16 config_counter;
+	);
 };
 #endif
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-24-keescook%40chromium.org.
