Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBMERCEQMGQEPKHIK4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 778B83F3E65
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:39 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id h36-20020a6353240000b0290233de51954bsf8310849pgb.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618693; cv=pass;
        d=google.com; s=arc-20160816;
        b=bNTqPw2gcjGHqaTQDyR5s+PFgnd3R2BynNWPneLYiJ0vN33IgfDZSjaGpTPThE3sxQ
         whLYw+EVu34JmGJzx4oEt0UKXa6xKWJrqIBMCJoELvHN0NA7PzLxQ7ExvZZIB6YaGw9t
         FdyzmpOyuF9Dj7jg8Cq1iPGZhz3esimTJ8yVGuO0TaT6n/Pvi9tlgMal0vwe0B8uIkqa
         09OOwS7YBQR4f8Of6JtOMoRU4pa1+aAZk5cr4NaYF09hVY71qIhQb7L+9iCH3usERr5M
         fvbo4D5rIMSR2OhRCmUE86Kg4jx6QGJeL8jhVPeQoQ9BZzWP1k4/ZwSag7mgp19AwaWl
         5tWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DixbhApgpdF53VfnNBi8BS+xovY01Wogiu21em7+po8=;
        b=R1N71lRTx+fg2zqB9GsTZBtSo8YrU37DH+x+/19RzteAIMQOGILYaaUONVyfHdVd99
         MgKrZ3yx+QXyrhfvd1zb26Bkf6EiuCHVoIYaaC3/ImBsmeauQ8IGX8oTixJo7hujIYlm
         iIMvwdsE1jbN5t3aFXGV7dC5wCR2vEdPkyABS66HsnvFon1VwsNfcbpBmu9IxE3CzWBD
         ET9hwbn2rwkMT0vUwEPo+/bAzeTwhspy+pAcH+2hINYQZSXBGg/19Oxn0pGaF3sYBeIF
         855I3Zuofp0cQ+H7TOwg64jQh6Hj3Ce4BOj1cfUtt8s+vhxVKc3Vlj0umB7Tp1UJiBl7
         B6Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=S3EFqfUe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DixbhApgpdF53VfnNBi8BS+xovY01Wogiu21em7+po8=;
        b=IV7Shxzx2YqU0iXx7vonkeNp7jiqije7H3HFm0IllPRLwzzHnZwzxeZJPq5Vp+f0J1
         3fmQndpphWGARahC4ykmc44EzvExmP+M9jGEBYNmJAqZO6HysKVsw5c5cyQI8ShmYKhz
         KAxpmbjaBq00Vedj8bDOMeYR8UocLGA0veIL3j3B0aU/l1IY/d0QCzrlCL6kIMmqiobC
         HqIt687+GWgwBLua5GxiiytM2m6PWWL8f8Ah4PX4NzaZlFTuULKdv8CdBlGWVLt6P+vp
         mx1Xo8H3J0N5vK+6jCOOEliEVfBlJdFlTWJQe286cpJB9i+GDx6Gm6mG+w6di2IHZrxU
         /aww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DixbhApgpdF53VfnNBi8BS+xovY01Wogiu21em7+po8=;
        b=EVtZKgbnfUCSyAhTN08dONEtfsTpp5kQDTOiEIAM4MsCbrrIFKXVE3wp8lN5xcxx22
         1KF4afoObiX8KCMUmZsghSzDkCuDyiJBmodqCpdV8sUScNz1XIg1fr4/bjdshJswKuWM
         BG5EDTjkEV68Rglb+gK/kwf37ib/Ex6tkBtFE4WljUGu67jJLm/nnTWGjEyxa/WwnZHg
         rk0h9n4WSp+5/fpmsh8CwmruOB7GD88SQy5BwAPBNV7lNXDTBa/h4s0NPAl9Ie0/gRk/
         Vx6VxXYgl/LKQ3joaWGtjleqqvKsGWjZ+bz9KHmq81rBp7uO8GrAczxEUwXsuZRMdI0x
         tA/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AfvYXKB21IHQpb6/EWxT/dzyGWvMJqPJ3oE13QZcNMDyVJZSK
	RFoi/DrpNm00fUdf4Ja74Ro=
X-Google-Smtp-Source: ABdhPJze0Z5SisOOgMhtdkl3i+mq0dS+5ZMFGbkoUOonGUEd75xiGP+FCL2gS1bwygu1jeRcDV78OQ==
X-Received: by 2002:a17:90a:1b2a:: with SMTP id q39mr13413190pjq.219.1629618693245;
        Sun, 22 Aug 2021 00:51:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7d54:: with SMTP id y81ls5207826pfc.10.gmail; Sun, 22
 Aug 2021 00:51:32 -0700 (PDT)
X-Received: by 2002:a63:3113:: with SMTP id x19mr27272444pgx.260.1629618692672;
        Sun, 22 Aug 2021 00:51:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618692; cv=none;
        d=google.com; s=arc-20160816;
        b=TUBMjRX5Uc684sA24AFETxt9YMXTVkKXO7dMygCPs9WWG+H6gBi1UPePLSgeGukoDt
         bMqUfhtMsYM6yPUSLgYjtziLIR4bf6bFWLTcYaOne+xEeRQnUoMWvtYa/dsoFJ8YXBzx
         t9ARvf3Dg8eTeS7+GYOIBZ4qduy+pgrDgOjEQB62OIFyzcmhe+LUBOw2pZE2kxe4uTAz
         lAN6mpTDzZGvf53puxc1i+297qtTHAXdfMlwQyJ/9eAjkDW9U0DmgaiAw9/X4LJJKpTh
         J+l8mopijq5r5S6GfW9r9P0tTeKTzwMozoxF+2OkDDA1L+4PH4UjHSaXk1RepeRb9K58
         AraQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DEcxgVs1pQEerfVS+rAtkdPSoE4zT/Vk9kMK/QHD9zo=;
        b=i0G6UhoVohEYQko4BYW3pUI6I5gbk8WpbMSwEplNWMbEK+fhuRPgF1hoesQg0WubQN
         88VVOWAabKmuxftBknECykdqF5BZUXric9Qb1z+VWgt+AAnjcDoSQszthoV/EtQdnI5S
         OYi+5lVDYO4eZDcJcwOLI22QiO0v6kQGihrFaEHXNcg6yckrxTPM52TO56jPQHMuMtND
         CWFmyq2Y/knWWEA91Ysk1Yq2TrYI1v2e/CmpuX9XCY6jnyKbg6JQkVvvRvoz9u9JTs6q
         gFQM8MBEAd91nzpf9l5TnclBDsKZ2iolY2chJTShZKldozoYko6HXogAwQS6WEpUPkWo
         cMoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=S3EFqfUe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id e1si867579pjs.3.2021.08.22.00.51.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id j2so3954305pll.1
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:32 -0700 (PDT)
X-Received: by 2002:a17:902:b717:b029:11a:fae3:ba7c with SMTP id d23-20020a170902b717b029011afae3ba7cmr23078166pls.28.1629618692452;
        Sun, 22 Aug 2021 00:51:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l126sm14090655pgl.14.2021.08.22.00.51.29
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
Subject: [PATCH for-next 09/25] HID: cp2112: Use struct_group() for memcpy() region
Date: Sun, 22 Aug 2021 00:51:06 -0700
Message-Id: <20210822075122.864511-10-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2250; h=from:subject; bh=n2+aRt88uxiLgSoHrUg0cSNfKLQxENn1KABr0kFU25o=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH2FEUh//RbjPjaOyd8es3V309O0GjLE6nQLoq7 B0hxiv+JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9gAKCRCJcvTf3G3AJj3ED/ 0ZsaQprx9neOaNOQN3MUk1sqeucal9QQ1yLOKav1NJPJGiOJfAbspSRgLphn6cqjU66nU9HjmUk19F K2nRieGFwIfIYmjVHsEGFpWyvPX2ceziaeyuWbyaXwgReIE4RFIhVVlL1fmfN4OPiSMifhsbAiJMRX z7nzRApkoNeo1viq83KgInyCeb89xa+FkyrBdP5q8VQmPElZlWPYHmdQRQwbg2K71eL/GOOA3h/MrE oumw0CDEt2cXgD+0onqk4Mki0gAElQou1Pph27qD4kg7zLlgS+twThHlzWia6JngCbfrLYyn6P0LfJ EtFMwqYlEa8ZqEg/ZuApZwe+onyf27Kuj81ArumrWxWf3OAaJE+1Qx3UNZWROBiay7UEtiWvRMHmCT q/k2vz8aGT4DBZRojLjzT3j1hW31SzMMtQayilfnSClxPMdDSn92W9T3GBeorSL+Q2ut+QNBMJKbFq 463knHTzWqubaPvVU8Xmr3uYmhHSLmNBj0+/G/OlbdP8h4WyLxMrBiDYrXVCnJsrfHeWkw948nMzlv WJIn3aKfn19uLK3hkrYQ7N7LQaU4shVZpdlbOb4G8ZWK5PB3bwn7JK3JbNC9mf9e5UUMwG3XeFiaAC L4weoGS/pZbqLaMsPG4RLOojoQh8c/HolxsRrUx1bXwUG29l7mF7Qz5E/gVw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=S3EFqfUe;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::631
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
intentionally writing across neighboring fields.

Use struct_group() in struct cp2112_string_report around members report,
length, type, and string, so they can be referenced together. This will
allow memcpy() and sizeof() to more easily reason about sizes, improve
readability, and avoid future warnings about writing beyond the end of
report.

"pahole" shows no size nor member offset changes to struct
cp2112_string_report.  "objdump -d" shows no meaningful object
code changes (i.e. only source line number induced differences.)

Acked-by: Jiri Kosina <jikos@kernel.org>
Link: https://lore.kernel.org/lkml/nycvar.YFH.7.76.2108201810560.15313@cbobk.fhfr.pm
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/hid/hid-cp2112.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/hid/hid-cp2112.c b/drivers/hid/hid-cp2112.c
index 477baa30889c..ece147d1a278 100644
--- a/drivers/hid/hid-cp2112.c
+++ b/drivers/hid/hid-cp2112.c
@@ -129,10 +129,12 @@ struct cp2112_xfer_status_report {
 
 struct cp2112_string_report {
 	u8 dummy;		/* force .string to be aligned */
-	u8 report;		/* CP2112_*_STRING */
-	u8 length;		/* length in bytes of everyting after .report */
-	u8 type;		/* USB_DT_STRING */
-	wchar_t string[30];	/* UTF16_LITTLE_ENDIAN string */
+	struct_group_attr(contents, __packed,
+		u8 report;		/* CP2112_*_STRING */
+		u8 length;		/* length in bytes of everything after .report */
+		u8 type;		/* USB_DT_STRING */
+		wchar_t string[30];	/* UTF16_LITTLE_ENDIAN string */
+	);
 } __packed;
 
 /* Number of times to request transfer status before giving up waiting for a
@@ -986,8 +988,8 @@ static ssize_t pstr_show(struct device *kdev,
 	u8 length;
 	int ret;
 
-	ret = cp2112_hid_get(hdev, attr->report, &report.report,
-			     sizeof(report) - 1, HID_FEATURE_REPORT);
+	ret = cp2112_hid_get(hdev, attr->report, (u8 *)&report.contents,
+			     sizeof(report.contents), HID_FEATURE_REPORT);
 	if (ret < 3) {
 		hid_err(hdev, "error reading %s string: %d\n", kattr->attr.name,
 			ret);
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-10-keescook%40chromium.org.
