Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBL5BZKDAMGQELEVGEZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 42ECA3B1165
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 03:38:57 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id q14-20020a4adc4e0000b0290249480f62d9sf822801oov.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 18:38:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624412336; cv=pass;
        d=google.com; s=arc-20160816;
        b=GudpFkYZbXmPzkgBkj/Kni9+vwVprd0sZmdI8Cr79E+ZMhY4KHihcSa6ouIt4TsitM
         0BVc9TY7OL9ZmFwJfL18RmPnUw+gpNnTBoXqL1FknnREXYdyfSuCRgOyWxaExOvr6CHE
         dtpV0ShZJ4HeCg8ek5YiMDbVrtue7FahtMWTNKm6YNovOcRc4bO24HPSEPq7AdB9PXLg
         ej363lItmRvp8JYRKlodc8K6nqwBx1XZ893HXRQsbI09/zbojfFX7dx5oTdF2sd9XfMQ
         RlF8K3uszFKlLbMImQ9fwWX1kfq8oUhwgObCpLny5pAo+cqmOb6APamBZBgi4a8g+8MY
         rwtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=j/1IB3kHTyAl/Erh58atfvPVrGr6GIqcUOYKktMnBHg=;
        b=zbpDBVGNEq1oRa08gHOFAXP0Lt2KtWnaR8m+lno3Q56y8p3fxnUs8bEL62pFCm7W1l
         8+04SRGH1Z+N/J8/K9eFOXB1tNw4KbdSTUkiHu0IHHi0q4ao1jGzIobGjmeed2SM4098
         gPZa1s9TZbWl8lAa+/46/adOq5vAbw8Rlje4ABPdSDb3mFwzsaf6AQR5/0Dxk+l7oW40
         1khMY3aB35zg9XNepzLDt5Af5U2etlZdxaGrYh7XrGfP6+fkVMppbZcGp6Gj/Zp2asjt
         GaYXSiIt3CLgo61VEw6zHLQZXCXuFowvD/zwUWYr6oFSnlMkUoA2X4gGoEAqeiuuxH2J
         h8wA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uIr9F5Ly;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j/1IB3kHTyAl/Erh58atfvPVrGr6GIqcUOYKktMnBHg=;
        b=rKsDnIJ4trwVl+ocibWk7rCu7cv4rvDQziflOHGVeSzHpZ4fi9V6qdSui+HHfCV9Ur
         buMavJgspDX9/YJE/jdUddpLG43KECD3h8nOknUuY6rB7cXYJkfPcPLnPDzdU36Zxrfm
         FEgnPtb3RdyvE0C4VR7oBGReEydd+GaLrHLAwi9EjBhMZe0W7WHPcB7SYvFzFKrmHOlV
         69STZczcY4o870OUP7Jz6d/JxxPAVFf/hkudUS/fXy8UC3keAPcG7ViQyZqrjld6VYu6
         XHil8b+77ptoPJO90qJvJf0t6HiE2We0TubUcg4dewrSw435mHUdHbRawqbY58Fml6Pl
         7xlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j/1IB3kHTyAl/Erh58atfvPVrGr6GIqcUOYKktMnBHg=;
        b=YCWTHFzOUmIaUhxcNiCsMku5dykP6FQM8AvYNln1G2ggwn725ue2XY3K9Am/NupRn8
         SUHzUpSwGN9LR8eYN89QCUf6CTwHtdRGhoNTStOrjhVXVAWUfFTbot6LRM57Fr0w4f8m
         gjgCAxhmFOXrNxK0VpJw7JHZly6/CS4JueAGvuFLjX4gIieSQihNBAe75Nlr/do7OYmB
         vGxRALh6Hmvz+h/Mv7aBtXa7ajWRkj9kvfw1IQVn6wo6/Rqk0D4iboCA26k5aBJlI7si
         9FpBIuc2BlwpHQWQw5eHKRkb2yvIDTprYcYYkUWYcW9Q3VU5ZcGwMexdHpMybEAyP8dh
         31AA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531V35bcw94zF2bFE9Iyj9y46d6CLGdn8a3xjNJHZO1cnHQ64V/O
	97LBR26pAQJqqFjjtUJ6SW8=
X-Google-Smtp-Source: ABdhPJygjitfwFwVU4rYRkdxNseUL+9039ZsldfU7XRVxelaE3U3UInxb9miWqPC46000KemnoUZCQ==
X-Received: by 2002:a54:440c:: with SMTP id k12mr1305946oiw.121.1624412336028;
        Tue, 22 Jun 2021 18:38:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:6285:: with SMTP id w127ls302600oib.4.gmail; Tue, 22 Jun
 2021 18:38:55 -0700 (PDT)
X-Received: by 2002:aca:c60c:: with SMTP id w12mr1267089oif.59.1624412335630;
        Tue, 22 Jun 2021 18:38:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624412335; cv=none;
        d=google.com; s=arc-20160816;
        b=CZy6i4kATH/nVbQPIox93mMyKmU4Rn1V8P2gg084QV+yhE/HQXkwnTPqokO7FA5hyZ
         Yvagb3kWhlCcJgt9hzdFFc530oTO+OxENIFwQBf8BgR2yxb+3LaBvqO7QR/MGBS98vwI
         AWswYldcy+ryLweCqGT+VMoyvo2IJys4oXyH8SmSuD43/fDNMthvbXhMiO8r5aQiCblC
         md9UXDc8UBXK8NPdG+eiGBCne6Ao8BwwstCQG7YEMkkyePENBL17kGGlbgalumomHmla
         J6BTqZYnX6jXzmZQpTSNQG27E3/Ws6A7t/weuH5Loge8VPEGKX3KgN4H5i2OEckJgdZ8
         pxOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=at4ZT+uUN/Ifcj+wSrni2F6uMbIUpwx8Rxq+sKTZO7U=;
        b=Q8OCo07Ong+cYhAZh75azop/RZ7VwI0cItEBcLDA+T8GHD6xaYLSCieLWpk/QQxWiU
         stqcmuKTHSnsaIJBWgeTu8KpH5AkRUHsr0tmcSMHVYBrYwfbq40wJwIs2OvQ3jHJaKiP
         5jofXL4UlvCsw9J1QYdH095DO0cRXVqnZoIm3h1wl84VXVXQ0ssPV1LueU7HS0Llysxv
         DSNSQjnduwn7e0mBid5J3fYyxHtkW32od/3fMUwmJXAWi0gST447vHy4nzbWXJrMaQir
         lTenPkR2SFymM6tO+XaBI6Frf2zMvYyXsJU4HRMEjDzrf2GjMpqHarfoeW8zF6imqIiX
         qs1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uIr9F5Ly;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v4si71400otj.5.2021.06.22.18.38.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 18:38:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2F2CA610A0;
	Wed, 23 Jun 2021 01:38:53 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Len Brown <lenb@kernel.org>
Cc: linux-acpi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 1/2] ACPI: bgrt: Fix CFI violation
Date: Tue, 22 Jun 2021 18:38:01 -0700
Message-Id: <20210623013802.1904951-1-nathan@kernel.org>
X-Mailer: git-send-email 2.32.0.93.g670b81a890
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=uIr9F5Ly;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

clang's Control Flow Integrity requires that every indirect call has a
valid target, which is based on the type of the function pointer. The
*_show() functions in this file are written as if they will be called
from dev_attr_show(); however, they will be called from
sysfs_kf_seq_show() because the files were created by
sysfs_create_group() and the sysfs ops are based on kobj_sysfs_ops
because of kobject_add_and_create(). Because the *_show() functions do
not match the type of the show() member in struct kobj_attribute, there
is a CFI violation.

$ cat /sys/firmware/acpi/bgrt/{status,type,version,{x,y}offset}}
1
0
1
522
307

$ dmesg | grep "CFI failure"
[  267.761825] CFI failure (target: type_show.d5e1ad21498a5fd14edbc5c320906598.cfi_jt+0x0/0x8):
[  267.762246] CFI failure (target: xoffset_show.d5e1ad21498a5fd14edbc5c320906598.cfi_jt+0x0/0x8):
[  267.762584] CFI failure (target: status_show.d5e1ad21498a5fd14edbc5c320906598.cfi_jt+0x0/0x8):
[  267.762973] CFI failure (target: yoffset_show.d5e1ad21498a5fd14edbc5c320906598.cfi_jt+0x0/0x8):
[  267.763330] CFI failure (target: version_show.d5e1ad21498a5fd14edbc5c320906598.cfi_jt+0x0/0x8):

Convert these functions to the type of the show() member in struct
kobj_attribute so that there is no more CFI violation. Because these
functions are all so similar, combine them into a macro.

Fixes: d1ff4b1cdbab ("ACPI: Add support for exposing BGRT data")
Link: https://github.com/ClangBuiltLinux/linux/issues/1406
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 drivers/acpi/bgrt.c | 57 ++++++++++++++-------------------------------
 1 file changed, 18 insertions(+), 39 deletions(-)

diff --git a/drivers/acpi/bgrt.c b/drivers/acpi/bgrt.c
index 19bb7f870204..e0d14017706e 100644
--- a/drivers/acpi/bgrt.c
+++ b/drivers/acpi/bgrt.c
@@ -15,40 +15,19 @@
 static void *bgrt_image;
 static struct kobject *bgrt_kobj;
 
-static ssize_t version_show(struct device *dev,
-			    struct device_attribute *attr, char *buf)
-{
-	return snprintf(buf, PAGE_SIZE, "%d\n", bgrt_tab.version);
-}
-static DEVICE_ATTR_RO(version);
-
-static ssize_t status_show(struct device *dev,
-			   struct device_attribute *attr, char *buf)
-{
-	return snprintf(buf, PAGE_SIZE, "%d\n", bgrt_tab.status);
-}
-static DEVICE_ATTR_RO(status);
-
-static ssize_t type_show(struct device *dev,
-			 struct device_attribute *attr, char *buf)
-{
-	return snprintf(buf, PAGE_SIZE, "%d\n", bgrt_tab.image_type);
-}
-static DEVICE_ATTR_RO(type);
-
-static ssize_t xoffset_show(struct device *dev,
-			    struct device_attribute *attr, char *buf)
-{
-	return snprintf(buf, PAGE_SIZE, "%d\n", bgrt_tab.image_offset_x);
-}
-static DEVICE_ATTR_RO(xoffset);
-
-static ssize_t yoffset_show(struct device *dev,
-			    struct device_attribute *attr, char *buf)
-{
-	return snprintf(buf, PAGE_SIZE, "%d\n", bgrt_tab.image_offset_y);
-}
-static DEVICE_ATTR_RO(yoffset);
+#define BGRT_SHOW(_name, _member) \
+	static ssize_t _name##_show(struct kobject *kobj,			\
+				    struct kobj_attribute *attr, char *buf)	\
+	{									\
+		return snprintf(buf, PAGE_SIZE, "%d\n", bgrt_tab._member);	\
+	}									\
+	struct kobj_attribute bgrt_attr_##_name = __ATTR_RO(_name)
+
+BGRT_SHOW(version, version);
+BGRT_SHOW(status, status);
+BGRT_SHOW(type, image_type);
+BGRT_SHOW(xoffset, image_offset_x);
+BGRT_SHOW(yoffset, image_offset_y);
 
 static ssize_t image_read(struct file *file, struct kobject *kobj,
 	       struct bin_attribute *attr, char *buf, loff_t off, size_t count)
@@ -60,11 +39,11 @@ static ssize_t image_read(struct file *file, struct kobject *kobj,
 static BIN_ATTR_RO(image, 0);	/* size gets filled in later */
 
 static struct attribute *bgrt_attributes[] = {
-	&dev_attr_version.attr,
-	&dev_attr_status.attr,
-	&dev_attr_type.attr,
-	&dev_attr_xoffset.attr,
-	&dev_attr_yoffset.attr,
+	&bgrt_attr_version.attr,
+	&bgrt_attr_status.attr,
+	&bgrt_attr_type.attr,
+	&bgrt_attr_xoffset.attr,
+	&bgrt_attr_yoffset.attr,
 	NULL,
 };
 

base-commit: a51c80057a887e0f24bd8303b0791a130ff04121
-- 
2.32.0.93.g670b81a890

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210623013802.1904951-1-nathan%40kernel.org.
