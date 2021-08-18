Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBR6G6KEAMGQE2YEZXVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D753EFAA0
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:00 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id 75-20020a9f21d10000b02902ab504ade25sf356901uac.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266760; cv=pass;
        d=google.com; s=arc-20160816;
        b=tPLFy++wMSIYMREd4G4NQvEiYiimMMj14QtSkGGrSeY84xOYhXaQUV1g1Ip14C5gpp
         bbVQLuEEfBILBCrGy1qGgOulazPH9rlXKPNhsHr8Nn3W2ZMuKGI4P28kIk/VaYpgRc/8
         Tq2ypGDDHBayqC4wafou3TDGK1qcmXKAC80jSy83leWjXZ2Azl23pbP1/OGkNHNSuk4K
         2x2ds0vns2wjpxHGcsQcNqIjd/UYIh/7zjvFd36mguKIUowD90AopmQzCqEFy35qUqVk
         ys3HEXhy5zGgk//cbmPoc8kg75n5QGKzVYthNaQXj0qKGd8ZIfiImQNPtWF9w5hWX4ip
         cncQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=yNBuwQuqTIYcaeFyavJB3d0LKZWv8N4dMarTiJjnifs=;
        b=cWxZnhK3Zo862lv4KsDjXFAFp4nK8RNZsT5OQf2HMQYa/ah+jVIKNcMEGMzgUpbUPS
         jp+iVa2GU5X1itd+JtPBtGyUxzstYBjxWURlvMsxzp1jWtcPI1MQDqwbW65NJRGRpSsY
         fbAWvnlBqnnbQMWNKmWb24UEgxWNufFnE9yC5rI28X1mgasmp6YDDcGniWijrRRUqHKP
         fb/MkupxXGB+mURJtu4n0/cBKJdYHl/S9CH2my+QIRbFgBoHBv8wSSFJ5ULPr+sQPXRt
         mcYJzO7JRG9CJcA3knFD9zsDquwNiWFjDk1F9ejQdfa1UnWHKanDBZfG/TraKjiripIE
         ef6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gcLhrbC6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yNBuwQuqTIYcaeFyavJB3d0LKZWv8N4dMarTiJjnifs=;
        b=SQkYDMtxTBcxlC1uUF/iY3rMjgm9oMheNc8t5Y/zoR9lzXoqvyg3metT+ZVEx7SZPs
         MiXVVysn2VR+BVaL5qEdAbW5OKBJOjpoJV0vpxCffLB03K7cTL7zCuwvYl4zHj+hMQNZ
         TD6XKgW0Wsp6KLGmMpgLc7nkXBQxbv0YLmAC2JZMkrqdRcgeGPI2fGc4/9cCwsMmTNWG
         67YCA1pStedGHU//8NdLOQDY2yyHnjTKlE7qTTD9zwiL3eENaOdMgNYtXXExNQAbG5dz
         Ha8gwVWB08w4Yx1KZMqBHfN8RA1C7FAfG4yLHedahm0w5xgvKVaAU/p+RA77H8yQ0KZP
         ebMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yNBuwQuqTIYcaeFyavJB3d0LKZWv8N4dMarTiJjnifs=;
        b=bQqnDm5gvpDBr4FaMrkp3i1KM550pVoYifxD+bA5DWzYUl193IjUoF7i3xF4E3RJXW
         sAZua9e7piGbmQVQclTJ75oAh1OsKP0ybBqelCHuqsqwA6zDzvIvbtXC1/4KlW7OK6Q2
         5VZBWREpClWHa5ddQsn+j2RYxIZhZiQ0bqB8KGQfasQGYgyN/OBkWC5DNiMevVzTiT7/
         sXLqOOS/LgiNMIgOiiqVu99ZkzNVA/qkuIkBu496SaTbb3JecY21lzkoJOl0NzvKc26Y
         m1j4pBhBNIUrfYXLSPxEuNXvscfP91wCBEhBgwbV/z8mgDhWfGRH6Gs2Z07ziiBvcSM8
         I37Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531dBsu2lB1qnVS5GkScByvJcdAEqJ4S00Q88jbHoCvlSXoZiSVV
	u63ptAX65uyAdzFrg/TFcE0=
X-Google-Smtp-Source: ABdhPJybrYbQ8AOC6rQOME7GowPku54cYPXf/1hNiQN/AGQxh2GoGkPivv16AuSoLS6kpT6Qd2qMxA==
X-Received: by 2002:a9f:264b:: with SMTP id 69mr5280418uag.112.1629266759992;
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6cac:: with SMTP id j12ls103974uaa.6.gmail; Tue, 17 Aug
 2021 23:05:59 -0700 (PDT)
X-Received: by 2002:ab0:3a86:: with SMTP id r6mr5272728uaw.120.1629266759506;
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266759; cv=none;
        d=google.com; s=arc-20160816;
        b=viBcpjUUvZDYtXAOMDp5tsvD7jiIJVqmMG15bcoR55Kc/rUbU2QmP/hXz2noDtEso0
         mxtYlnR/UrwFCBj3iK4er+Txh5MxfXPwvQZRvQp/qJCbzkF/8umjJvvN5iOMQ1IWrP6E
         6v5J0xqLeBOHLSFdfeetI6qA5EJ5BTkg0pVBNag5SVdsCGwBhgN1BSYmCqqK5RHtysVc
         GczHfvgBnY+iWP9aGQTkPL+5+WerN4u76M/nozFwFo6IYwDD+hU2Y5P0hJRvUUS6e8gc
         ggQEjM8UwqMMMAZQKKfdU/wxN73WkKNZipgRrhPYy3T5doedu6fVQTz4GwbfmVDBBr2o
         4U1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NTYV2vCojWGaRvoj20z4daltbaCLEHm5I23EtSqrsdc=;
        b=O4MWjT738toHt3ZtkCLzkCMJkbhqfHbtgzNBv8S95ohvf0FAbUaiaTy72xyEcZZiIh
         wpR4NyY0jWKtLIGn1Pg2LUy5m+OwJjpocrQjVqUr8lqA10RafHR708Eb24W4Q/EcaBvm
         fzMnx0G5qEQkxqIZIuyMMfB1sWbFsgelxptHWxF5gP3pLQLtQLx/IPI7XrL0ua1zQMNH
         8FSBqSq/18LS3aj3x3t+e4I92lqRbnHTrbivWheAKIIosMrRSHlns2IcyXOicd3Fsj6j
         B7qHYYwtWmECCRmovl3Pdr35jzhwUu7OU+OFUQ48W7lvxzgLx+BwJs2ZQt13bIZm6XM2
         vYOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=gcLhrbC6;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com. [2607:f8b0:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id m15si256869uab.1.2021.08.17.23.05.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c as permitted sender) client-ip=2607:f8b0:4864:20::42c;
Received: by mail-pf1-x42c.google.com with SMTP id t13so1059501pfl.6
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:05:59 -0700 (PDT)
X-Received: by 2002:a05:6a00:2d6:b0:3e2:e023:c6cd with SMTP id b22-20020a056a0002d600b003e2e023c6cdmr1988068pft.19.1629266758722;
        Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id n23sm5008845pgv.76.2021.08.17.23.05.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:57 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	linux-pm@vger.kernel.org,
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
Subject: [PATCH v2 12/63] thermal: intel: int340x_thermal: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:42 -0700
Message-Id: <20210818060533.3569517-13-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3430; h=from:subject; bh=eWRxzyg8ZHcfvuxChrH1G3MSkKagVjV8YQYyT7daR/o=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMgzFFZrngl6f/ha2lcQf7jZ0XOwEEmDffMqDAl g1Ks8xmJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIAAKCRCJcvTf3G3AJr4LEA CsX0wkoSQ5k+eRw495v98ZukqiRSRwtgtvHDRZg+FSzpTwOnEEYMAyH7uOTV2xyt//wSEjLpityQkQ 6DJYoi8exVReP0/IGENdNgCX9CSvnY4mKgOStyQOF6wF6zUmA49X9+fDt/me/CXdx2hYbg0vtLMnkq 5gBvKdXtWgWRoELEugEmh2t5qHjUpqpCNnyRtLha7bTKgabmSOmpcevXF1HoOvOs1cRNXoPcdx5CV0 bDoINmq6Xyh/tk0h4pIdo6SfZAOs0c3ErkSnT15sehzyggOoDkGVjJG5VBR3mukUg7mBnWnktHwIHX /tYJqO+CdgwVMhdFRyKr6l6llZ3FYBwNYN/FLkfP1rnu6FXfH0LeQTTnuKm5YeiGKMK3k9oxRcqmp2 gMgnuYcTxVZ3rCDIYJJ6MzSIQtwWs9qBXZvHiQV4DaUG4xlsdQl73NhV0kA1qUrWu1KG3ET05Fm+c4 HDpZitCNYo0GvcGDfWBeLQqlbQ7IfL2V3I6YLWINVfJEsKl+g2+ctBb19ZzFmusloqZCbrZPyTc+0S NmmotsEztnwmtEBmMhE7LJfL4We9u8itUfkywd+2pr4j4z1E7U8Zv+BycFc/U8vYneKZZgYxcHGWiO T+ntRlh8llbsS1IRx6+6G4JBfFq6XbT/Hv9hLw4FXNSrDM+N5Np9vPDUT0Ow==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=gcLhrbC6;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42c
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
field bounds checking for memcpy(), avoid intentionally writing across
neighboring fields.

Use struct_group() in struct art around members weight, and ac[0-9]_max,
so they can be referenced together. This will allow memcpy() and sizeof()
to more easily reason about sizes, improve readability, and avoid future
warnings about writing beyond the end of weight.

"pahole" shows no size nor member offset changes to struct art.
"objdump -d" shows no meaningful object code changes (i.e. only source
line number induced differences).

Cc: Zhang Rui <rui.zhang@intel.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Amit Kucheria <amitk@kernel.org>
Cc: linux-pm@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 .../intel/int340x_thermal/acpi_thermal_rel.c  |  5 +-
 .../intel/int340x_thermal/acpi_thermal_rel.h  | 48 ++++++++++---------
 2 files changed, 29 insertions(+), 24 deletions(-)

diff --git a/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.c b/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.c
index a478cff8162a..e90690a234c4 100644
--- a/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.c
+++ b/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.c
@@ -250,8 +250,9 @@ static int fill_art(char __user *ubuf)
 		get_single_name(arts[i].source, art_user[i].source_device);
 		get_single_name(arts[i].target, art_user[i].target_device);
 		/* copy the rest int data in addition to source and target */
-		memcpy(&art_user[i].weight, &arts[i].weight,
-			sizeof(u64) * (ACPI_NR_ART_ELEMENTS - 2));
+		BUILD_BUG_ON(sizeof(art_user[i].data) !=
+			     sizeof(u64) * (ACPI_NR_ART_ELEMENTS - 2));
+		memcpy(&art_user[i].data, &arts[i].data, sizeof(art_user[i].data));
 	}
 
 	if (copy_to_user(ubuf, art_user, art_len))
diff --git a/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.h b/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.h
index 58822575fd54..78d942477035 100644
--- a/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.h
+++ b/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.h
@@ -17,17 +17,19 @@
 struct art {
 	acpi_handle source;
 	acpi_handle target;
-	u64 weight;
-	u64 ac0_max;
-	u64 ac1_max;
-	u64 ac2_max;
-	u64 ac3_max;
-	u64 ac4_max;
-	u64 ac5_max;
-	u64 ac6_max;
-	u64 ac7_max;
-	u64 ac8_max;
-	u64 ac9_max;
+	struct_group(data,
+		u64 weight;
+		u64 ac0_max;
+		u64 ac1_max;
+		u64 ac2_max;
+		u64 ac3_max;
+		u64 ac4_max;
+		u64 ac5_max;
+		u64 ac6_max;
+		u64 ac7_max;
+		u64 ac8_max;
+		u64 ac9_max;
+	);
 } __packed;
 
 struct trt {
@@ -47,17 +49,19 @@ union art_object {
 	struct {
 		char source_device[8]; /* ACPI single name */
 		char target_device[8]; /* ACPI single name */
-		u64 weight;
-		u64 ac0_max_level;
-		u64 ac1_max_level;
-		u64 ac2_max_level;
-		u64 ac3_max_level;
-		u64 ac4_max_level;
-		u64 ac5_max_level;
-		u64 ac6_max_level;
-		u64 ac7_max_level;
-		u64 ac8_max_level;
-		u64 ac9_max_level;
+		struct_group(data,
+			u64 weight;
+			u64 ac0_max_level;
+			u64 ac1_max_level;
+			u64 ac2_max_level;
+			u64 ac3_max_level;
+			u64 ac4_max_level;
+			u64 ac5_max_level;
+			u64 ac6_max_level;
+			u64 ac7_max_level;
+			u64 ac8_max_level;
+			u64 ac9_max_level;
+		);
 	};
 	u64 __data[ACPI_NR_ART_ELEMENTS];
 };
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-13-keescook%40chromium.org.
