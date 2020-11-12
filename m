Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBF7CWL6QKGQET6P6MIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 051212AFD92
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 04:50:49 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id 8sf1881312ota.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 19:50:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605153048; cv=pass;
        d=google.com; s=arc-20160816;
        b=ovhTKkirtXwtzPnAR4EeCnazTX/pc38pyCj06vvoNbPMLnrNshEUC4c9+c2fLv9a98
         R75uTpaNjmA0riFzpFFV7u5LMDjc7PRX12gyr3e9FDOzrQJgX6d7L/7HDniE+x23gL/d
         z8wVnRaO87NyGp46evYOPi7pYyl8uE5qJ0VUdTsPPU1T4bKOYgbsMIpT9rnwugR2fVr2
         CdPBfHOxslevDO5Z9brf8IP51mUuHQzBSaQZejwAbXJC//Elpnk5ZILiSufFH8ozsB7s
         4xhbGpTZynXLWDeyjTRBOej0/NXJlQUb2zzAtE3npSA5+Y75KJlmwChXaaIGuqo/e5UJ
         NMdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=IIfUR4xlQVA9g1jfVwGe1tI3+Dy82Hd3/+F2l50IxYU=;
        b=eZavhZItNVOLvuzuQTItlOdr037g5hqYQ7n54gPxfaiWLjkUao3Nkzm/Vt28Vq6Y1l
         4pl9ZD0O5q7oBNVWWAuKwdLrknZiYaKIeP5Fd9IPHc4xBq+ZAxz16krxWEkoZhBJxNgo
         yFQwQbrNxxbTblhmRxjYe/Z1wUkj8e3+CU7cMqtKIKEzymtk/KNPeSGe02H7MvttzMaw
         67uYoFA7LbVZTcEEWE8uM4BLp+AcJgJmVAMIiDgWitqdsNR3KMQSp4dA1dfNDVUC9khz
         7Buvv8u2MfRiz1wTeGfcgbGswtLDavvd25gfwDpnAQZPXjHRVPLWdJyrfvphvKkHkPGK
         Gt1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j9Udvc3X;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IIfUR4xlQVA9g1jfVwGe1tI3+Dy82Hd3/+F2l50IxYU=;
        b=UQ/FbBxWATpQ8p+Pkt9+8NTdrKij03gh3ts1StPDRH/uaSHXBBuB2l4CjfjcVnx+ok
         YgbZURjBD4dNSgSROWMiaX8mR2Ib+iATNRSCrKHUkyWoKjID5iNBi0xtH7pyZjz8QHr0
         +U0QyoJOSdJJ73s9fiYdNxyEdPRVTJ4/brK0mWT/SX1VhmFW2Vw+IXdPkEU5iJHbp3gJ
         tEmVy2+qxLL+kIluZbOP9B9cnfCs+WVCAm6pVThKTp6HZDv7xYStcqUFqBvsimFwaQvc
         9HvK7ipUcKAVw8AaCdVtqBdRNumZJFu4YTjzCWZHM67UNatw4B8ESLhMd9k+IAtB8SS2
         X1ZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IIfUR4xlQVA9g1jfVwGe1tI3+Dy82Hd3/+F2l50IxYU=;
        b=j1f8//WJVdgwPfoP50I6XiAXZDiQgUvs+4ilNHRmr4PVUxsh0DIfSJ3pFGUy3dTUH+
         D5sOw9ksdPft7wWXQHc4YfPDoyIEZLC6lOK3Yc5siWV6TfNGXDLtvtXnn2PVqM5t65Al
         uCdHKm4u+4v9VttyFgJlYI2GpJcAX/X99r69lAWHlesQgM5ZuWfPZxE+S3lvUETBZyzH
         d1fg7UqW+qD+I5660BWqySavNwqjCzlMvZ5EOyznhFafYtEABV4t1oZo/YKASNx+wsZg
         ElWjyVnk8ts7tXtfzDk76CwENX21imSk0MpOEta/kpN3Ju1N/0haH5dtODEwSJoY0GxJ
         mmaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IIfUR4xlQVA9g1jfVwGe1tI3+Dy82Hd3/+F2l50IxYU=;
        b=R50/mu/hTFLoX1AV0ypSFu7lpO4av5YSTDBY4AIjSE6jsfctz0S3yh+rF/7ofvME7b
         2kQ9HauLwYZc3p1uw/6lQKOksgH78F6t6FJYiyNtz7aiqBqLlFtz+RAdwexB3ujMrWuz
         KXYI/D94w4OeRM0BQZCDrEwhL1GwwrJY5T0TbKVJctumUaGDt9CPqs/GkGul0AXfQsku
         WdNcg19hjAnmsOlbPRnT5muFnfJUi+ZTehnUhN/BuTu44Belwu62M1iOx0WoYTpfBggZ
         yYvPXE29QHzPy1JcLjzaMBE4YeP4VJzUcNEzTnGzorgp+X+5kMjFYAW5xBRbcxslZ+US
         3OvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ck3uiRdV7Cqc3h2ythXFcPhQ0U6bQYaMfElWpw9lSIcg4E1Iy
	o+1CNYdrAkID+AhUnbgRBVs=
X-Google-Smtp-Source: ABdhPJz2W+cdd/aKF9YL+5QMbKry3E3kgBrezR1BvFAS2qj45RLh60UhNMVz6bR4ZZ6jpVnFT4HpMg==
X-Received: by 2002:a05:6808:7cd:: with SMTP id f13mr4477929oij.38.1605153047939;
        Wed, 11 Nov 2020 19:50:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:3948:: with SMTP id x8ls90790oog.3.gmail; Wed, 11 Nov
 2020 19:50:47 -0800 (PST)
X-Received: by 2002:a4a:bb07:: with SMTP id f7mr12790210oop.44.1605153047605;
        Wed, 11 Nov 2020 19:50:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605153047; cv=none;
        d=google.com; s=arc-20160816;
        b=cA+GCqrbV9ow53tC3v0xaTMm8OMYHs3J6beoA45pTln+JBmfFmBnaSozo6CaSdSZ8N
         nEwfUbHK8HpVrVKQvutBKQy3uJHh6aSofWKt0jyzP0bWQmt3bRay1of6TycY6tNAjHnr
         IewHRpKMTj1pWqH256ZLcKAsqr8O1cYWpbTHavwV0bgB6tWkQKk6HE7liipe5QSS+9mb
         jzcWoL7QTETS9TA+sX9WgDXnSt1CwsxythgLr98czhjOTATiJ8eiyQYLkN0dMy5kumBK
         WnsSWHiLpRRIWgXBxAqIYrvplmezLshr0bYP0ly84Fq4igL7+6r+r2ma8qhjT6SM5mke
         9XGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6k/RG28tR3+DRUe4wGoTt/OmaAc1uq98xFm5rH3UNA8=;
        b=YrhVxII+zd1mlccwm6cXWpqUVZZ0JlBtnDLDEbwScRR0or8cD55xfMWZGTp1XLhknx
         pu07/RzDfiAbA+Fl0nI7relQ0V2smU3bOfVIoYSEeGU43N+qzPXS3R/tlfaqlwS6lYW9
         ShtMgiU4uxVjOIAo6QN7EcD5ReZKhddM76s+iL7E6dbBgSRctl8bwl4y3Tvr34dG3Y3i
         sjviTcvKy37pVqyi1qtOwXIaynifo34KoNNXPW3gnGiS31THM45rAiNkSaw6JcsBwfH9
         0WDDyOplnxobVlw6qqxzy6LS+YShoNzBGZik6GaT1LY3wymSlCUMt99ssiUhCEDUcLUj
         nAjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j9Udvc3X;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id h8si313060oih.2.2020.11.11.19.50.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Nov 2020 19:50:47 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id n132so4165572qke.1
        for <clang-built-linux@googlegroups.com>; Wed, 11 Nov 2020 19:50:47 -0800 (PST)
X-Received: by 2002:a37:6511:: with SMTP id z17mr29939485qkb.186.1605153047030;
        Wed, 11 Nov 2020 19:50:47 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id a1sm3972381qtw.11.2020.11.11.19.50.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 19:50:45 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: mcroce@linux.microsoft.com
Cc: akpm@linux-foundation.org,
	arnd@arndb.de,
	keescook@chromium.org,
	linux-kernel@vger.kernel.org,
	linux@roeck-us.net,
	pasha.tatashin@soleen.com,
	pmladek@suse.com,
	rppt@kernel.org,
	tyhicks@linux.microsoft.com,
	ndesaulniers@google.com,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] reboot: Fix variable assignments in type_store
Date: Wed, 11 Nov 2020 20:50:23 -0700
Message-Id: <20201112035023.974748-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201110202746.9690-1-mcroce@linux.microsoft.com>
References: <20201110202746.9690-1-mcroce@linux.microsoft.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=j9Udvc3X;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

kernel/reboot.c:707:17: warning: implicit conversion from enumeration
type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
[-Wenum-conversion]
                reboot_mode = BOOT_TRIPLE;
                            ~ ^~~~~~~~~~~
kernel/reboot.c:709:17: warning: implicit conversion from enumeration
type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
[-Wenum-conversion]
                reboot_mode = BOOT_KBD;
                            ~ ^~~~~~~~
kernel/reboot.c:711:17: warning: implicit conversion from enumeration
type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
[-Wenum-conversion]
                reboot_mode = BOOT_BIOS;
                            ~ ^~~~~~~~~
kernel/reboot.c:713:17: warning: implicit conversion from enumeration
type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
[-Wenum-conversion]
                reboot_mode = BOOT_ACPI;
                            ~ ^~~~~~~~~
kernel/reboot.c:715:17: warning: implicit conversion from enumeration
type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
[-Wenum-conversion]
                reboot_mode = BOOT_EFI;
                            ~ ^~~~~~~~
kernel/reboot.c:717:17: warning: implicit conversion from enumeration
type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
[-Wenum-conversion]
                reboot_mode = BOOT_CF9_FORCE;
                            ~ ^~~~~~~~~~~~~~
kernel/reboot.c:719:17: warning: implicit conversion from enumeration
type 'enum reboot_type' to different enumeration type 'enum reboot_mode'
[-Wenum-conversion]
                reboot_mode = BOOT_CF9_SAFE;
                            ~ ^~~~~~~~~~~~~
7 warnings generated.

It seems that these assignment should be to reboot_type, not
reboot_mode. Fix it so there are no more warnings and the code works
properly.

Fixes: eab8da48579d ("reboot: allow to specify reboot mode via sysfs")
Link: https://github.com/ClangBuiltLinux/linux/issues/1197
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 kernel/reboot.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/kernel/reboot.c b/kernel/reboot.c
index deba133a071b..8599d0d44aec 100644
--- a/kernel/reboot.c
+++ b/kernel/reboot.c
@@ -704,19 +704,19 @@ static ssize_t type_store(struct kobject *kobj, struct kobj_attribute *attr,
 		return -EPERM;
 
 	if (!strncmp(buf, BOOT_TRIPLE_STR, strlen(BOOT_TRIPLE_STR)))
-		reboot_mode = BOOT_TRIPLE;
+		reboot_type = BOOT_TRIPLE;
 	else if (!strncmp(buf, BOOT_KBD_STR, strlen(BOOT_KBD_STR)))
-		reboot_mode = BOOT_KBD;
+		reboot_type = BOOT_KBD;
 	else if (!strncmp(buf, BOOT_BIOS_STR, strlen(BOOT_BIOS_STR)))
-		reboot_mode = BOOT_BIOS;
+		reboot_type = BOOT_BIOS;
 	else if (!strncmp(buf, BOOT_ACPI_STR, strlen(BOOT_ACPI_STR)))
-		reboot_mode = BOOT_ACPI;
+		reboot_type = BOOT_ACPI;
 	else if (!strncmp(buf, BOOT_EFI_STR, strlen(BOOT_EFI_STR)))
-		reboot_mode = BOOT_EFI;
+		reboot_type = BOOT_EFI;
 	else if (!strncmp(buf, BOOT_CF9_FORCE_STR, strlen(BOOT_CF9_FORCE_STR)))
-		reboot_mode = BOOT_CF9_FORCE;
+		reboot_type = BOOT_CF9_FORCE;
 	else if (!strncmp(buf, BOOT_CF9_SAFE_STR, strlen(BOOT_CF9_SAFE_STR)))
-		reboot_mode = BOOT_CF9_SAFE;
+		reboot_type = BOOT_CF9_SAFE;
 	else
 		return -EINVAL;
 

base-commit: 3e14f70c05cda4794901ed8f976de3a88deebcc0
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112035023.974748-1-natechancellor%40gmail.com.
