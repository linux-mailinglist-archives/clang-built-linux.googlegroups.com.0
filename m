Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBEERCEQMGQEXI25WXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB023F3E5C
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:33 +0200 (CEST)
Received: by mail-ua1-x93b.google.com with SMTP id s9-20020a9f36490000b02902ab3e95113dsf3711472uad.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618692; cv=pass;
        d=google.com; s=arc-20160816;
        b=GnJG3c44lZrxAv8kQGMW+v3xDSjBZ4Ma9XxBl1kUhjkJpbDl9NjhLLisihLeKitySQ
         5GgZPOi8WSeKBKbWS0SZ8o5bs3qfixyqK6QSTcMJwV0tB0YqH1PqOASN7e5sGw3wG818
         OZM1sdzlLNyq3pOV9zqbD+JmsCPBCW0MJVnBsJleeOJsHG+bRWUGUS9TkrB2jXbU9OdJ
         iIFGi78F/jIzYTa8wd/AI0BJNE29U5Vbmq1w/cZhn3/55lxExyPJEJp9Rod5mnqDYLkt
         r5UBECrND7GWXqc6or6GWbPWOm7Xm581G/b66mIW905VmMMNuOohZung5azfnlzvkiaZ
         36fA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qjO0qDUbv8NH4ntuj6bH4kb+JtWo6j6OFaYziHCJSG0=;
        b=vyWsRRpUBUQH75LvTmDI2uIlaubkhwK8PBRFwQoVHt89nF7fmOH+M06bvaJiIZ+Eov
         lqVrjOOypMBx2O95h7UW7yEA7CW7oKQHW6Aeuxmv3OXtKMf394OMOysOqtrux+pANN2U
         A0tYDQS2/SJilVNyHRWzB5YABlmf5xD/KgX/HCuj5q8bVXWBW6a4syUcGOt8vc5xCtjr
         J8qiyYV83hmVvYyGpBCpGwHor+HPSSHN2Gx1NXsWkv+Zxk4Ab79T7wzy13LQWetfdAqc
         Y7LY0U1oHRcOAl+qpZqJfge8E7K3RSw/qZL2C5QusA8nQuqKiU2k4DJMuCoR3/2LM/Zt
         z00g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VOieh+oz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qjO0qDUbv8NH4ntuj6bH4kb+JtWo6j6OFaYziHCJSG0=;
        b=sewFXZ8ATBDI7iOcdcMSOziWMOi994+pd1cLYywfu+QUE5g14tEDT4MLgt8biSb7Kz
         r9hViM1f8VhCUGqzDVi0S4h7jRzLACmeeBJSpMFncK0EzagzIDxXXM7VgTeQbol4/oX4
         Hr3F74VtsM+FNyt7enHL+m8ZUvPkvYiWzqMVhv2srOwBeKegl2kmyw87Kos9i83hiGvh
         wsLarOoVV2NoCYss3Y0tTPnNB8qTsgHcWTqTAZkky0bULFArkZWZbkamNyCkoJ7omA5F
         orNtqZQL+rjCuhTVA+zyQgrZdiynFg3AwGGxTb0UyMkjB52yJCTTGZhjM0ZMaM+9omI+
         KZUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qjO0qDUbv8NH4ntuj6bH4kb+JtWo6j6OFaYziHCJSG0=;
        b=hRSAt9bZQ2VylG8bEHAqyQrbXQ4nblvG+jpzyb7oLkE4jF1UCdAwmnkHWdKDJTZlp8
         ZsOYwXNuAZIh0Hl4ysiaKftTwl050zzuQg1Aws19MmUu/Uh5JIqbTsS3de5M42NL1Gj1
         quaeZPPrcJXenMedVGzu6v3UgOCFOQJhahKpTcamAAvZCMTLmYFePkhkbAST94tMED/I
         FMcEQKPflW6dEO0yiMdjcHug7II51VhrD8jdxbKI2RUriCTngL5A40VmD4pqXyWO8HRV
         gXAPcs0evZ3NfmoORJfHO2GDjFdgiBjuJ22mviNWWoOTwcPu6pbilt5jbt6aalSAszHY
         vLPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532zZ96Y7hgOuMHDdgFx3XNVbHu/g6XHA7CgwU3xzFuqmIzi026w
	n/dBZPDjf5IvxCz8fuiRtPQ=
X-Google-Smtp-Source: ABdhPJzfJjdUka7ASXfY3IQOQThv0gxRuqMKpyKxat9lbo4s62BDusi7+mWufTD8MrWhz/i7kk7VCQ==
X-Received: by 2002:a1f:27cc:: with SMTP id n195mr1930489vkn.0.1629618692574;
        Sun, 22 Aug 2021 00:51:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:24c2:: with SMTP id 60ls1292627uar.5.gmail; Sun, 22 Aug
 2021 00:51:32 -0700 (PDT)
X-Received: by 2002:a9f:2963:: with SMTP id t90mr19814310uat.36.1629618691936;
        Sun, 22 Aug 2021 00:51:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618691; cv=none;
        d=google.com; s=arc-20160816;
        b=DhrYM4qWNmWkzAY6LF/O679v2o5IP3lLJO2M1/4mAE+Bs661q8MZYmcT26EwDCtBBQ
         4C+mjQB1LgRlZtp7/tfL+d+Su0R9Va2kHgKlSEKQacmwK0G53SbQpRc6dWJsc057mp1B
         J/xm4hM21X6IXF0YIUuZzgiFBA4xuLXJm+tSz3L6dwIMB7tTVB9VhTJ8I5dO9sDmLLiw
         Q+PeIJ1xnpNWaRibAkfI28OUTvCmXF1soV5jtMhPO9R62SKmw3QbaIA7EW0H53JKWlSu
         GL8+74JUcomobPhAxyljKxHZnob6fBVZMvzUn4izDoNk4VUe1L/9zcrX1eb4Opym5d10
         ZaRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4NkVqVqmacCPFQLHisTBuXWwR3jW59S7tqh7b68YAP0=;
        b=M0h6iMdMqBjHtt1mzfJHBz8Z64VX8JJYifz86acz5TF9A3qlBTMtAy/c2gjadAjLzG
         wgiougPKI4lZA9EXLtmCwn2Tv0Jd+m8RrOJPxq+n+tyx8SIWyKxYCudUQ7oxmYAA12bi
         KFJlwl4XXlvCXOMN85xpVOtu2DpIMIThvdrXg9OYzotw845xnQXXnEQFwr5anfr6kNIa
         9R0JCLJfpwdGlttIQw1ZR+qnIgdeF/aVbynfKRsLG1jRTJCd7pwF2WVUtO1/SprYl/ee
         94TECFlu0nNvQtoWDduorVyEUFy+rFs4iR1iLdvm6m4psjPlDB73id9WRnjnSexQbX7L
         hsGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=VOieh+oz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com. [2607:f8b0:4864:20::432])
        by gmr-mx.google.com with ESMTPS id r11si584523vsl.2.2021.08.22.00.51.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432 as permitted sender) client-ip=2607:f8b0:4864:20::432;
Received: by mail-pf1-x432.google.com with SMTP id w68so12579012pfd.0
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:31 -0700 (PDT)
X-Received: by 2002:aa7:8683:0:b029:3e0:9a61:b505 with SMTP id d3-20020aa786830000b02903e09a61b505mr28699813pfo.10.1629618691176;
        Sun, 22 Aug 2021 00:51:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id ds6sm15863866pjb.32.2021.08.22.00.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:51:29 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Joerg Roedel <jroedel@suse.de>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 07/25] iommu/amd: Use struct_group() for memcpy() region
Date: Sun, 22 Aug 2021 00:51:04 -0700
Message-Id: <20210822075122.864511-8-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1493; h=from:subject; bh=UVbvWOW7x4MKaEbPfdgMN6YucCopn2OgnRsLaMXPm6Y=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH2VqtN1ff5F4pCfQC8LCAMeT8BUlql/ZYuegnS qqE020KJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9gAKCRCJcvTf3G3AJt9hEA CPyxXUooiUxHazGTqO7twmxywSUXadYscq6cu7BwlM2up+ktHuyDjJooZ0wPB6MlYD0IMvKRihjXN8 88gxtASTkKCxkAXAhKwAXE2cR055izczBy9XbCIhg/0ewbMZVc2NbZt6egkIQesda6Jk+qIrgbFvJT MCxtR/C5ywqKO9RWKE/YI9djbRJYOUdEnYLIz6TRUs3MAttcW/kwX/p54qvRmAGv5mk2sPSfGSXdTW +ylLQ55kBYE2W2U8vaGTYWd45RSuk1ckm7OBTHXeOPSw0YIRfec5RAsrlUiin5DRCoR0FhTs3LiHZ5 LtsPogWji78cnOISRH3il4zZFqyTJ4s39/cEqRCRvTmhaCEeec2gg7JnXpEcPKJ2RXWpvPtk3BCuaW rNYlu9VHVa/tD6dT0vMxiRd0jho1/hn/PXD5JFx+eSgJYogLZz13Pk2avyQyVHLptwIq/eHMDI6nr4 X3viZBB3ToUbqPEv5XPItaLZW4s78+g3N3xqZP2bGEEwfoZgYQI4yri0GlLVgONhK2KW6lzsPHclaY IdIfPtSEuMheY52Ku6RfAAKd0uu2ROYg37+iUZKXMpEOsoiiKr3DklFKYeqr1VStjduXfJwki+102q uiwLIFstLYM73b6NC3iogqIcMnWPJLLgqAszJ/70pj5D6as6xqOooQXgOxIQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=VOieh+oz;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::432
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

Use struct_group() in struct ivhd_entry around members ext and hidh, so
they can be referenced together. This will allow memcpy() and sizeof()
to more easily reason about sizes, improve readability, and avoid future
warnings about writing beyond the end of ext.

"pahole" shows no size nor member offset changes to struct ivhd_entry.
"objdump -d" shows no object code changes.

Acked-by: Joerg Roedel <jroedel@suse.de>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/iommu/amd/init.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/amd/init.c b/drivers/iommu/amd/init.c
index 46280e6e1535..2df84737417b 100644
--- a/drivers/iommu/amd/init.c
+++ b/drivers/iommu/amd/init.c
@@ -121,8 +121,10 @@ struct ivhd_entry {
 	u8 type;
 	u16 devid;
 	u8 flags;
-	u32 ext;
-	u32 hidh;
+	struct_group(ext_hid,
+		u32 ext;
+		u32 hidh;
+	);
 	u64 cid;
 	u8 uidf;
 	u8 uidl;
@@ -1378,7 +1380,8 @@ static int __init init_iommu_from_acpi(struct amd_iommu *iommu,
 				break;
 			}
 
-			memcpy(hid, (u8 *)(&e->ext), ACPIHID_HID_LEN - 1);
+			BUILD_BUG_ON(sizeof(e->ext_hid) != ACPIHID_HID_LEN - 1);
+			memcpy(hid, &e->ext_hid, ACPIHID_HID_LEN - 1);
 			hid[ACPIHID_HID_LEN - 1] = '\0';
 
 			if (!(*hid)) {
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-8-keescook%40chromium.org.
