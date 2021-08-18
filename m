Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSOG6KEAMGQEOSVZASQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE333EFAA7
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:02 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id c22-20020a5d9a960000b029059c9e04cd63sf584941iom.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266761; cv=pass;
        d=google.com; s=arc-20160816;
        b=ieafOvfcuTOKpEu0V/TTVtvZcxiiYyCQdDMRsRCqMvE5EsZqV3aZttZM/HNOI+/s6t
         +zzl67y5jZXGfAWaLDX8sr6d7HlQuK16Wef9DEvPMHkaKuHMq7+PzUZ0CSe35Z9Bl0JB
         OHhnpfgSCpGDIao7StYaIEgDgZcImEhLKXRnleHCQIHa0L2lObHwLnJcBhvFAbvtaGh/
         naA2iV8m6XkJYBh4DwtR/6UqE+MDkrREyHLqP9+ouuPBs6s0fshsOr0ROYH95jsw9v3K
         9+NzTIkuQm8kSTDYvjVGiYjWkCMQ/JvTaZgXE6SaUn0ZG9UKagQbJ8EBrylSKs0Pbbzf
         3Vew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=RvIYOPQKVJRUlDnP6COn0VzNrQAWlJxB5fPLl7yD5m4=;
        b=d4KsCJCpiLzRudmW3D3m+5l4E1sEDe6kwnylRKFnTACVJ7vahjSZzjHeQFMxjY3T5z
         u6JjWwsgNBnjdnSLxBGuJyr3alOyAc2w/BbO87Jqv7k+JGSrPCSxXPBhIjuU5B9VEwoW
         SQyZ78IK4ePf/oAdSMKni9JyEPaT9i8RL9anylGnJ8uFVTZ7PcgxctcttEpvjrwVzbTS
         pmv3GbsVfgB+kmcfnId2bZfBCsLpmYHAk3n5/ap6wUWSumYhEV8nKbukmYawE3Ki+tio
         QM9uFSlQzXg9VPWIki+ZJyHuy4+hzPS26EvpElbqeNiaKfmKm17F2+/+EJ1oUK/No1nj
         LTcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AMRBYGxW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RvIYOPQKVJRUlDnP6COn0VzNrQAWlJxB5fPLl7yD5m4=;
        b=nceK/F/VmCBTyn4nlvl/h3p7GRnFOQ628Rtu3Sv/LQjEL+DXipdcDgDEmnBaoBA7PN
         KyM5yYnURiEktOb7MEdI9VDI9NO+R+xTLbpM6wngORii6b2jYEnDtmI70oLomZeqXKUL
         CH4v+VKW5xL+++btOlONDr8zFfcW2hqVHETloKK8zfDlVOR+zyBpKHBlLR5Kae9BAZ1r
         JTxOturvj/L6p3aIkTjweOu5NSldrjIk7CQN+3MpOemGh2/fpVrcJfOFyZ5IMUOdPkMY
         e3LzVS4Sd7XNhRxyb4nfJqpnj6qzsqzlAkgCVMXWbxgpMkLv0vFHAybL4thXc8WythsD
         xguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RvIYOPQKVJRUlDnP6COn0VzNrQAWlJxB5fPLl7yD5m4=;
        b=ONEwH39gl40Q0eIbFgwODBkrIMgGrv5ZzS7wFJMezpcABoLip7SRLpTMQ3xGGIhYTg
         tcIHDVqeDtTuMy+TLLZLx/a/Cf3L7d6kgaMnW99rMN6TFdJwLKASjXwOiORlpWcYLPiZ
         O4Ztn+xE6zjXAcZfXnk40ykbuQOEwaIDC9tqDMoFvFzdRcDOGSrF8WrOvz46n4Xp8kcL
         +7oVRWQLhFAKpcb9c6S9ys5dYwz24/ThwKX2e0hq1i12zGX8BS9LI9oyQQ35zkN0H84n
         UBlegJAt+7R8cAOyRQ9olNshlXoXt1QJR/Kdajf7Fo8P//Lggb++jqRUdS1FIE2jUo2+
         IxIg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332qJ8NFx23wWVccYCYiFda38bn0mggSPgFPWXFMq5czttRBgon
	D0XdARoHjYZQySIW5Kb/Z6w=
X-Google-Smtp-Source: ABdhPJxaR9ntXEUptZmGN4MpAyMgxq9bGiJZF8/pOsWavw7Dr3A1aWoqF/2yl1KPESCLd0+jMWvTaA==
X-Received: by 2002:a05:6638:3382:: with SMTP id h2mr6299660jav.77.1629266761180;
        Tue, 17 Aug 2021 23:06:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:2714:: with SMTP id m20ls177037jav.6.gmail; Tue, 17
 Aug 2021 23:06:00 -0700 (PDT)
X-Received: by 2002:a02:cd32:: with SMTP id h18mr6401442jaq.101.1629266760805;
        Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266760; cv=none;
        d=google.com; s=arc-20160816;
        b=sHdMPU1kkHmDj1XTrw1K5BhDvHQx+/NyYLPSAr1I8n1RrFVw7YxGiRG4dSOlJkSlDH
         IyYJuO1NslvWDrrimKqZ4nSyH3Okbjrvq4FqwHshf7/+JNCh5PmanjNPFhuSfWBE4rXB
         Xryw8KFWG7UpdfU9EBSfjQqmXZg/iIgMpz457iq3y1g/yWXAcxUEDqXqJpQskfbB0Fud
         6UaavNHKVHxevoMAUvWnA/EdxVWTbX8lYVRtxUNvLR8mcRGUSrS6g083WCRA1VjbLesN
         iH6SmRyUInmczIu2/NhSEZ6JaBu9VHOJo+xozRHss+Tw2SLsyJpt9NUXsKzVWMCPy5Re
         UKmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hSMMgZw7/2olmGwk+x9hLUDcbTdJzqluz+oi39a5oaM=;
        b=zMF7St0P1SXQtMoupk/4iBfdxL3p3H8SNL68y2R3L/MthI6eI1fF2jresU3XY9Z+CC
         O81hTaaQJWMvtJWaPfdtgQzhPfWCtHMhSI77VPqKbfJnzk5mPZCo1PEAHKHRcxFaBYgh
         RsK/tTYFnRBidNrzLyfpZzcYdMRBl0Qdh/UY8SIjG+qh4lbTk9G2NqawYAOENUJPYxDo
         COq9IuwJKibZUXryuVYMzz9GlNTcBp5hUEV6XYMBBPV4XfGiGESsvEN1bP4rARzZxAf3
         CUbg/jF56NTeOMDmI2dUi2S+1dDP97U5NdOj1yzaet4mnKu0pPqTgwKqFTatsMcvDyca
         BR2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=AMRBYGxW;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id e12si289123ile.4.2021.08.17.23.06.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id o10so1197428plg.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
X-Received: by 2002:a17:902:b190:b029:12d:487:dddc with SMTP id s16-20020a170902b190b029012d0487dddcmr5995051plr.24.1629266760257;
        Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id ms19sm3881385pjb.53.2021.08.17.23.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
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
Subject: [PATCH v2 30/63] fortify: Prepare to improve strnlen() and strlen() warnings
Date: Tue, 17 Aug 2021 23:05:00 -0700
Message-Id: <20210818060533.3569517-31-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1906; h=from:subject; bh=wvK3U1xEzLn7HBnl3TVbXk2P5Mye7QhLMp4JdS3JmN8=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMkjtivRrqM/8t8pX2BgfBDvrRaH9kWYRdFJy03 ZmaWqcKJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJAAKCRCJcvTf3G3AJnZBD/ 9ZO2jtNOBwLeuE65ugO7S8QVPVTc02JQcjXAhVIMip8GcftBIh6y33OIXJbGvumJ/EBr4oAJKmP1+L +oCFFakYPIeuRV6pxMxO5+wfJJPqCT3cphUSCrquRhKuZxNJlP1uRMqbL/K2OLFwn4Rqr295BG/Ij7 bIuDzHDRDYuTekT9PxGCWIUivMtqV1HLgXIhtxri3qlsFlwdbx1zU/5GmOLFNh+btb9eKauiShw4vB Ae3CvfS1tdmSXrvEgvGSz0wG9HcHySLpIsZglW8TI+gV/WPu/q3Izlql98/zjYhKCVFpN56jlwkoyx zcKcg+gRzQRrROnH/ZkeMj4iHx7aenKCH2VKKG5+PbFX2LcaG6OYcmX/AlIJ7kzv1caSMVeESCpb9F xeqmqDw5IN+/8UVBy/7bNpQ7uu2aF/hk2m7Hf07uYrLH/+NRJor0Fqsfz4VYDNfsHb3mkTeLYZvdL5 V79pX7BaQEUTM11ow989NnALA2oTs242bRvfR7vGQccFJk8QsH3kWYnDaR1HrXnh+M5cU2H4jxIFDj qR4X2svRVHZBfMvnGQgeEkvADKirqLGVc+4vohELtBuJ/63n2yvR1gtZwjZo1KYFSY1RxyqzGjfvPd scVAGDxupEYbw0MN1qMftL6MMY2m0jmHqf5z7ekO4APDSXkLXnzkcpyCrLMg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=AMRBYGxW;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62b
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

In order to have strlen() use fortified strnlen() internally, swap their
positions in the source. Doing this as part of later changes makes
review difficult, so reoroder it here; no code changes.

Cc: Francis Laniel <laniel_francis@privacyrequired.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/linux/fortify-string.h | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
index 68bc5978d916..a3cb1d9aacce 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -56,6 +56,17 @@ __FORTIFY_INLINE char *strcat(char *p, const char *q)
 	return p;
 }
 
+extern __kernel_size_t __real_strnlen(const char *, __kernel_size_t) __RENAME(strnlen);
+__FORTIFY_INLINE __kernel_size_t strnlen(const char *p, __kernel_size_t maxlen)
+{
+	size_t p_size = __builtin_object_size(p, 1);
+	__kernel_size_t ret = __real_strnlen(p, maxlen < p_size ? maxlen : p_size);
+
+	if (p_size <= ret && maxlen != ret)
+		fortify_panic(__func__);
+	return ret;
+}
+
 __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
 {
 	__kernel_size_t ret;
@@ -71,17 +82,6 @@ __FORTIFY_INLINE __kernel_size_t strlen(const char *p)
 	return ret;
 }
 
-extern __kernel_size_t __real_strnlen(const char *, __kernel_size_t) __RENAME(strnlen);
-__FORTIFY_INLINE __kernel_size_t strnlen(const char *p, __kernel_size_t maxlen)
-{
-	size_t p_size = __builtin_object_size(p, 1);
-	__kernel_size_t ret = __real_strnlen(p, maxlen < p_size ? maxlen : p_size);
-
-	if (p_size <= ret && maxlen != ret)
-		fortify_panic(__func__);
-	return ret;
-}
-
 /* defined after fortified strlen to reuse it */
 extern size_t __real_strlcpy(char *, const char *, size_t) __RENAME(strlcpy);
 __FORTIFY_INLINE size_t strlcpy(char *p, const char *q, size_t size)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-31-keescook%40chromium.org.
