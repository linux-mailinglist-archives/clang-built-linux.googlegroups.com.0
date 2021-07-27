Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3XKQGEAMGQENTZKKLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC7E3D807F
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:06:55 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id cv14-20020a17090afd0eb0290176a28ffed8sf656862pjb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:06:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420014; cv=pass;
        d=google.com; s=arc-20160816;
        b=bBHF7Eh7KyayOB1rtUwKz/1P+xzwohx8JfWA/hMb/XDuV1dQmIXSdXofJN3G4f7gmS
         5irVAr5DySRYcMqvXHRQbZtj3BgcuinLDT6IabwbVqLZJ6leKRurE8EdDv7MJsjPliYv
         rYMaeNzUieA3Py7RWqKFDA6JrG2F1WM2zjqkv7DCtlYW+rhgAOJQXzjljAdVGqZ7f578
         08ftihdS6XXFIE1vVN2RmCkKU7w2cb4k9KTax1Ze5ZBwsj5j4W4zgRLGOrPxQkIYchbo
         Fazo2kUgQeZAVWRb5n7Ya6UA8bSoO78ZW14XhJpMfRQ02RLsr/8burtxONME9tJPoqyx
         3ICA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TDftTre83lNCSNunOiHUFn4OAEPrNdIc73iyfgVbe3Q=;
        b=FijmWaWapB64DG1v7yLmCZJPSRfxo2r8+iBStQabnFhI6JcOongAasNxrkD1zwF6c6
         5RdtiqzQ1DOpEWYVilKV/CtUqYtS4PE9/60MNIc4C5fYRuCzguYp044BeaDLZUvxwjSw
         kCDn0dIPj2rHLF0wrDILQRbIbrcj5iiTBP8nGEDFxN9VOUqIWq8NFUvHkOwOc96it74U
         5wnyHy0G1g0k4PIAaJUYqRwZ9VS6x/RVghcYsHCx7yqtS0PzOtrAGZuLGkp/cThF3wdS
         AJoFW03bYcN1w3a+l7i/hQFjlPkaLdXNjMXfzyKeG6x5Svt5WJQHORU2kjwiZt0lA433
         j2nQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MBUIR3iB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TDftTre83lNCSNunOiHUFn4OAEPrNdIc73iyfgVbe3Q=;
        b=o76+ld90kDZx9WeFl4Gy0hnwQtM49wnbUobKyekNZ6VGDef2sWvf4kzP9mPlqZMucm
         sYo9TxnFZBTPMK6iUaoCOvSimCmQpcNsdnmESxWCK2gj7eu1NbN3TJVBYCoeXlXYCsYM
         SmzfTBt2OZ4Wft41De84gAh2QB3gNCVX9C69/s9AFDKXJmHh0V77zOVucr17qJ7aaNnu
         oebjqjzbF8shrtEKacubrg72qhf1v68obh9xRPT5VrllEi4TB0VXdlrqipqdmzGskF6a
         BThuRoM4WNGCMVf+0ZevA8A08M76LpBNr4v3MOAMfiRAbxthdiSQZ3VLki8NKnIsBWuw
         Q7nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TDftTre83lNCSNunOiHUFn4OAEPrNdIc73iyfgVbe3Q=;
        b=Da558zX/dENjFR5tvSmTdJMlR4OnlK4ZD5g+IUiwLV9ME9oCXA8GahXvsaSQvYQFFz
         HFOaXW7NsVDK0mVMrVi+UZzt7nO+Swj8x+B73VkHuUBVBx3eRcxzyL4sJGD4Moum24UN
         /k64UTzOl8vIbxH8rcJ0l4Su2z0hQuCQsHFJUej8vP8/flGt504AJANVqQe6oMXEZqEn
         2eo2TcgLgEYtLfwcC+4aK1t2Mre065or/UWLVLpMMxQJqL7hEndyryLJCNltPG1wRw4I
         7TjrSnLjYhP5kv0GlZuN8C4JuAFumQ9YDn71378dkruxruW5hfpq53O+Kz83IA1E2B7Z
         2Dqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530fbB0fw5w3OmsR4gyVdBIqxFj0Dnsyj8CbFtGErZA9tmVxTjzc
	JZw4vBdLn2UWeRD01IOJsWc=
X-Google-Smtp-Source: ABdhPJxhpDYJiUTUiWb0q1DsB3WZY9tD3ZB+MnYWRidz82XZ7x5afwqREpzmckmkYFpSe5gxuyCiEA==
X-Received: by 2002:a62:b413:0:b029:327:75dd:c8da with SMTP id h19-20020a62b4130000b029032775ddc8damr24913565pfn.34.1627420014555;
        Tue, 27 Jul 2021 14:06:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b78f:: with SMTP id m15ls160448pjr.2.experimental-gmail;
 Tue, 27 Jul 2021 14:06:53 -0700 (PDT)
X-Received: by 2002:a17:902:e751:b029:12b:b418:3661 with SMTP id p17-20020a170902e751b029012bb4183661mr20243049plf.28.1627420013748;
        Tue, 27 Jul 2021 14:06:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420013; cv=none;
        d=google.com; s=arc-20160816;
        b=GL69NjCsHu8++dqNSO18TZJHtJ1Wfxzg9Y66cgMeROeuQIJE3SALmcdlm3Ujr5T0FP
         AThg8sfUcUUUlKC9g05Q9X4QcfvX2pSnQbqX7tbcOht57PKtKeFdu7h3tZdqunMpCL2V
         TSheRhwMIJeBFVcO2UnSrOmGpO2946/HHMUVnxegs5QffnsCCgFo57Sgvha6U978QtGA
         vV+7kTx91cdmK5ANK/z6b/6BMrZX14ALREM3XucQuKG5Bfid9fnO0hYY8+7vsJYSYLER
         86/R4HZkkPq6grZUKLBvsvtr79zQPuvrLG1pC03Q5u9PeVn39fzOuGLkITStwYEGt2yx
         RhvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=clRlkcTWzJOWdb6SjT1HZu+AyElzVwLtoYPXziOiXRE=;
        b=K/AKhHHIPKmCtE6vM1zGQwW1kU8zrvWt1Q+Z2hRFgrWRqpQk2wTbFXK7zqxzqw5eRx
         Qg7gkXcqyCKciYYym3cG10FFbe1m3WuBPLpsHkm8h6XYuyXmgG9Zb83cwYlWvOJwS2NQ
         7DrrzpNSpYrXjaRWc7EwYQP9Hb8EafCRWK9JJSDNjbt5tDK4TLYbtU5MXIglFSfM9zmS
         5Cxli9mDiDpj2kwuw/HY7thVd7ZH3+FRW2VFbNKQj1JuKI9EFnzXWhE/uvg+viDxRoVC
         Q6ZZax50durk4ToTkNGjS3ozgAb5wuNJBhEgwKUzwwuLHxTQnjVgfPjcSnRqYUy9VLmy
         8wVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MBUIR3iB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id a6si263601pls.4.2021.07.27.14.06.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:06:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id ca5so1790338pjb.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:06:53 -0700 (PDT)
X-Received: by 2002:a65:420d:: with SMTP id c13mr9244079pgq.123.1627420013548;
        Tue, 27 Jul 2021 14:06:53 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l1sm3813994pjq.1.2021.07.27.14.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:06:50 -0700 (PDT)
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
Subject: [PATCH 16/64] thermal: intel: int340x_thermal: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:07 -0700
Message-Id: <20210727205855.411487-17-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3277; h=from:subject; bh=FXb9nQQ+9raXNRheCnPL/rsMtfpVZSmOVeEiPUzBx+k=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOD97boEQtghYWjunVAHXryqRBeKslQ/U0/9Z2K SuHsN8WJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzgwAKCRCJcvTf3G3AJs4JD/ 4t9krlI0msPh0DWMgqWRsM+X+y+HiMVgVUi7JkKAiBNJZoty9G4c1eS7yLV6TgLer2yFH8Ds58wUxF O6n5C18sFXheNiEEW+6vqVVeyQpO6nOPUonTlA8hTYBZp6CBNW7L7fqFalI7RlROQmukoEwMQZpWKx EuiGE22FT/3gJFEHq6KV61yPGYruCiyqaRADMcMMvyaJddy1qUkMgv0+9MsD6Pk/GN14+iLJT/WvX/ +Ncg6xMtv77TZnfLggNoIAXvzxqKTuj4YKPXx37SB2DDRCzdDh7R0hdU6WnJYEDwR5nd28AxRY9pW0 3/vFBrVdXmb5M1ePJqtCrbIM24arQveQJ0OFOeHTeWVNTcpF2rYY6HkYdqN5OgBXbagUUrHLo5sTJT oCoXT0USJzevlZoW3hXd+qGHUmuaA7+oUpf8ERJftB1gtBZ5+mAE3oNp6XoGlqZWXKaZOqEXohtJdE JKAKoqmW3JI+EQI+YUWLhorOoexqDCL3tG1VxN6M8wVEznEOVlCPdgcKjMwd4TvvKajC88ejnODvYX Yx+uFlSgaEFH992Tzy+Sem73iwT45T1pxFzlgXi6UKZ/H5V8dY1HWDHhQdWkFNrA7YldsHu5LMPO23 EVZMhiu2pPLzAvDWB389kz3t6FqAo/HGYnm8kfHnyCibi/cFhsXVyBwQujpg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MBUIR3iB;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-17-keescook%40chromium.org.
