Return-Path: <clang-built-linux+bncBDLYTQ5JSECRBIXS4CCAMGQEPFGVCSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id C3932377817
	for <lists+clang-built-linux@lfdr.de>; Sun,  9 May 2021 21:33:54 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id z14-20020a2e964e0000b02900e9ad576f5asf2918261ljh.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 09 May 2021 12:33:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620588834; cv=pass;
        d=google.com; s=arc-20160816;
        b=eW/wg1FQJ0E3LdVaAIlE8S/h5+5XUMPFPBp6x1IaRpbD0UABXeacW0xXI/pcv0Cd+j
         tJihF99agdUvVjfvGrfMuD1mGDZlprsJrA7w0XN5k4RfNzOE2IQO9yJxLyXfZT1Tehv8
         YwqwPhpzFUZtC+tcHxD/cdBUJ4hWvHf/WUOMS+73CWZ+TDnddyKBASobvJNnz/fXAYjX
         wUTn7HOPpOUJswIlyBWzCB5YAVf5EO186V1V+h5nYlU5T3d5SOmNItlQ4yDC1yN9RQd+
         Y4jBWkDyg5JPlb3BsyXLyUKp1nYZIWksh3HexzhJXYZK13qtF0un3LoByzk9f+5ytsou
         3zcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=QMBMzvdP6W9bIOuDT5FN0jyyJfOa7n1CUcNvZhQqOQc=;
        b=W3DycU/9usqTEymYWsTGSS7HnlDLbcD6mEJx0TJfGgr6qvIdEBAVre9obRwrnt9/5o
         VaMRHRkUUSohzvh5GF053+B5XMbjSdkDeWGuTQDhLMlO6DWIrOmIe8BY+58sHU1DOmp5
         1l2XMpBGA5TCM8CVMX0dgQ/yZZpEeqlxwB9/XuWastu1D0NKS8xDpzu9Bq1Ov5DoIcYU
         lSORmkkwbM9u+RzPykncPkkjkm6+26vbq5dnv1l9i8L/Z8UTUV5YvwKEEKuwY3kff4Mh
         2SRAUjO6OtsZfFmTpkgAnTStiyCKCWZJVwZKQSnmWs2yo0aCBuq9bXYqPdJG7YxYw2rj
         LApA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="jl/qaGJ6";
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QMBMzvdP6W9bIOuDT5FN0jyyJfOa7n1CUcNvZhQqOQc=;
        b=r02dpPcbvm8x/gJd5NYxDyVbh6JtHxdSbH5vsvIE8Pe86T62GHZFQWY+XSIPe516wB
         I7lca53/QFJDo5vNMxKqShIxC8xpPsJHgKXV1BFvPvPyw5Y+3oFeaJRGCVLk+jTpt/Gb
         E4VWmw7d9/HKod7OTncOCPj+gkiS7TxxM2x7+S1i8mYMmt8W8zPfv0YRxeA7VuRxgMs2
         L2afjirFf58lNzrjHbbk5dcwTuUoZ0buuYtvb0f3lly/eFH+f906UI9QYpo8wc35iw8B
         xxceH4KNF/4hetr/KfB/XjFzqzcWQfHQL+qcus97uTAZkXzueXIf/QbrfL2j4wC7lzox
         vmzg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QMBMzvdP6W9bIOuDT5FN0jyyJfOa7n1CUcNvZhQqOQc=;
        b=MSIjuh4UhFb2J31s6ZUv8T8pfOCjGtkXIqmmmz7DJgQxfs+8eXn1l2lEG1suGX0MeD
         orWoq8PYi2vN4MJa70tPrseK/bRcLw4YlmWfX3+4ZKw/rF+kvKMmcA/WN7o5tdxP0KUN
         l1pRt0vhJEyAJZCsSjJbsybWL6BsemWH3gyURGEVvzBSH4hcztYgzZytwJ+EV4u8ux2X
         1roP72ZlruGIBFut5yEHEgFIjLQEtm4SIpdT0Cd9JkkQwPepRjXR1Yp1o7rbOVTJWPFC
         +a4UJNc6P9K1mMo17W1Y1YNj3jku6xiO8+Zki4iWSKaP4JMtIXryEv9FhMaoZN3JBA6Q
         t1/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QMBMzvdP6W9bIOuDT5FN0jyyJfOa7n1CUcNvZhQqOQc=;
        b=eI4nF7Hy2fiUtcGNkSOJT5XVEX+86ywF8jhfqO5oh4FAT47Rjjmj3YIrCzituaeZci
         3yCU7fMK7dD4logpGeVaeCqDa+vsne14XrdnT2SrQxKziCGv9t5auAu3v/2UTBlc9Ncy
         rzZF/zZHuEc7R44odFaAoUeC6oVUJf5aZi8OdHuBcqeBbQMvLec4CcRZteSHB9RHTAQO
         I+/rLr8QDeToCf+bE+cHt/kRqQNKlOuGu+cwuFwxB/PmTBsBB1SZNsNB+CEVXUm2UeZF
         M9v6WYmUf90J/OcgxLWcQ4KVkgBarjKc3Sy7KGK7EC2hjEnA8D2dR5sUwvLWDiPtr0PS
         Ly8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532D6xqfmVWBqzjaehVHhAJuF3zyIhUV6/AE7lHnvBbz0GJV3ijc
	wdV3ZsaAUbWpMgLP6/yKysw=
X-Google-Smtp-Source: ABdhPJzIc271CbcGunuL5ZQFLfq+zs6awUJbGGeROnMte1lQCgVxevihUO4vizavUeTmJeK9t42xfA==
X-Received: by 2002:ac2:5fc6:: with SMTP id q6mr13858731lfg.205.1620588834370;
        Sun, 09 May 2021 12:33:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:230f:: with SMTP id o15ls8285292lfu.1.gmail; Sun,
 09 May 2021 12:33:53 -0700 (PDT)
X-Received: by 2002:a19:f10d:: with SMTP id p13mr14079349lfh.76.1620588833335;
        Sun, 09 May 2021 12:33:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620588833; cv=none;
        d=google.com; s=arc-20160816;
        b=BsC3cQv7/+fBmJ3ACHHKoniHaSLWGrH22zAR4hKJ3ZvXgfrXF1Kt8goA+dXouZhk+s
         wd/c2iNyGNVW+38tBH1sly4JYSb4gT8wzXqC/CVhqk1oHNwnITR7s/yAt+8xoV9ABRmo
         3RpadDCO4HmUdqGLV+KxTzJmW90YkKGJiyYxAh8CPwHZJj22Fy7QLmh4m4iS3aqJoKpe
         WMXa8ocI/afS1kOVCBVHBb7Gab9ZC3rElZLQC79AEj3/qXTzpDFJIzD1oT5lpwVm4zLf
         UyfzII1Hz0whHjwvb9iR7PmDNTSoYJl3P6IT8TmfYSKzqTgyWxaPhqiPtaJU5qie43Fk
         Q0Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pwB6mElenYhBSU4aRvtAJPhfJNuyfv9xAVTG9qry76s=;
        b=sf2PQVNcTkWZtGlBACgxXHRyvrMndTwQ6LzMuaKNHOWXzyUvcNozbUMpCZLvXirChj
         ckFDbfWj4j/3cNDWOaYw51NfvGSgH3nfynw6WW9+itnz/q+QJ7O0JuEvRzs5xPEQONat
         FzzlossYFkuBgorIzV80ZtS5VgVzt9F9YluyGx51bljMsrtnylh5l0T4hc+UE8oNkqIU
         Jx4O9xJHPPfOONIQrtSKhb6nag6lb+1L5umNY8rbKZERQEwa/c1kXhRTawuT7RR+2yc3
         6R40XFk/ho71HBTfuRLxrEc1C1/LH7vMEmYS9u5Jp/r8iL+GHG83QFwAkZsX7Q2LXNp4
         4g+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="jl/qaGJ6";
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com. [2a00:1450:4864:20::332])
        by gmr-mx.google.com with ESMTPS id u22si652856lfu.7.2021.05.09.12.33.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 May 2021 12:33:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::332 as permitted sender) client-ip=2a00:1450:4864:20::332;
Received: by mail-wm1-x332.google.com with SMTP id a10-20020a05600c068ab029014dcda1971aso7823753wmn.3
        for <clang-built-linux@googlegroups.com>; Sun, 09 May 2021 12:33:53 -0700 (PDT)
X-Received: by 2002:a05:600c:26c9:: with SMTP id 9mr206497wmv.176.1620588832793;
        Sun, 09 May 2021 12:33:52 -0700 (PDT)
Received: from michael-VirtualBox.xsight.ent (cbl217-132-244-50.bb.netvision.net.il. [217.132.244.50])
        by smtp.googlemail.com with ESMTPSA id n124sm23502655wmn.40.2021.05.09.12.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 12:33:52 -0700 (PDT)
From: Michael Zaidman <michael.zaidman@gmail.com>
To: lkp@intel.com
Cc: kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	jikos@kernel.org,
	dan.carpenter@oracle.com,
	linux-input@vger.kernel.org,
	Michael Zaidman <michael.zaidman@gmail.com>
Subject: [PATCH] HID: ft260: fix format type warning in ft260_word_show()
Date: Sun,  9 May 2021 22:32:13 +0300
Message-Id: <20210509193213.5974-1-michael.zaidman@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <202105060637.LeEC6ztp-lkp@intel.com>
References: <202105060637.LeEC6ztp-lkp@intel.com>
MIME-Version: 1.0
X-Original-Sender: michael.zaidman@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="jl/qaGJ6";       spf=pass
 (google.com: domain of michael.zaidman@gmail.com designates
 2a00:1450:4864:20::332 as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
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

Fixes: 6a82582d9fa4 ("HID: ft260: add usb hid to i2c host bridge driver")

Fix warning reported by static analysis when built with W=1 for arm64 by
clang version 13.0.0

>> drivers/hid/hid-ft260.c:794:44: warning: format specifies type 'short' but
   the argument has type 'int' [-Wformat]
           return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
                                             ~~~     ^~~~~~~~~~~~~~~~~~~
                                             %i
   include/linux/byteorder/generic.h:91:21: note: expanded from
                                            macro 'le16_to_cpu'
   #define le16_to_cpu __le16_to_cpu
                       ^
   include/uapi/linux/byteorder/big_endian.h:36:26: note: expanded from
                                                    macro '__le16_to_cpu'
   #define __le16_to_cpu(x) __swab16((__force __u16)(__le16)(x))
                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/uapi/linux/swab.h:105:2: note: expanded from macro '__swab16'
           (__builtin_constant_p((__u16)(x)) ?     \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Signed-off-by: Michael Zaidman <michael.zaidman@gmail.com>
Reported-by: kernel test robot <lkp@intel.com>
---
 drivers/hid/hid-ft260.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hid/hid-ft260.c b/drivers/hid/hid-ft260.c
index 047aa85a7c83..38794a29599c 100644
--- a/drivers/hid/hid-ft260.c
+++ b/drivers/hid/hid-ft260.c
@@ -791,7 +791,7 @@ static int ft260_word_show(struct hid_device *hdev, int id, u8 *cfg, int len,
 	if (ret != len && ret >= 0)
 		return -EIO;
 
-	return scnprintf(buf, PAGE_SIZE, "%hi\n", le16_to_cpu(*field));
+	return scnprintf(buf, PAGE_SIZE, "%d\n", le16_to_cpu(*field));
 }
 
 #define FT260_ATTR_SHOW(name, reptype, id, type, func)			       \
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210509193213.5974-1-michael.zaidman%40gmail.com.
