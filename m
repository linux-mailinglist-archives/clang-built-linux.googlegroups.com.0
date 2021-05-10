Return-Path: <clang-built-linux+bncBDLYTQ5JSECRBS6B4WCAMGQERW3FMZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D463793FB
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 18:35:24 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id q14-20020a19f20e0000b02901daf8ea9b7asf486212lfh.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 09:35:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620664524; cv=pass;
        d=google.com; s=arc-20160816;
        b=0NM5I05F/pcB+OjyAMdLCOSrVUNeG4TRzirOdx7H4Lv9F07lfBXGqKIENA7ovE8weW
         XhoTZ/UrpElxqIcCe2osNNQKm+tqlTD6YRwBVDVWRuNEnwoRU3g0A0HyQPoaELUFKYwq
         0JezH2YTG8BKaivRPMi1iL7xdX64YrnSb6bR65dE7HteZTEJB8PJTi5duHNlXMg5Ylvp
         Pm93FC6tC2jPpGjqI6mjyo1k753eotgaKyQ58lnhWEynvsE4AbN0xKfShI38NmItq+ql
         hc4hz/Mu4B1mOztiXh4LMtSYuXn/rMQ+yzTQhbupFIhL69Gy09fuN6zxV4qlwVyGq4af
         yVFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=mRRe+/Dfyul164nvroTIju0822KBgAEoAnhZLaZcuwk=;
        b=lYAZk+/q/VZLwcCndZnKBtpGd0LuYnnFOnbnjD/6cynSI6m3i0/30V7I7+dPFj1kWO
         MqKZA97cednFgNM6cUbAKGHLN2m1nAWjIigqzSsHcSb5LSDMl/xhy683L7EzJJMheAVL
         lgd4+Z2RmRoFn2muoJ+XVox55wUhJiqdCoI/rHl4g68/Qy2M2vTTjkJWd2QVlmMmt5wp
         v1ox2Uo8LHEd+wMws9LmmJASbS3iTTmchkRdnJ7Y7mC5yyxODs5Bp4X/WqeOw2Fz8Qu0
         qs8+7PnbwwRlgO70j/JdE95Bd1oJDBE5kGECjdQ68w8GGwie1Yc2I3jlgRSXHf3KXPOK
         cpXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=edmVc4vE;
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mRRe+/Dfyul164nvroTIju0822KBgAEoAnhZLaZcuwk=;
        b=CwOxeNh/QhzjDPDi1oOhhiqSc4Ft04rKbAJocphKN/zVo1aaWrP49gxtaw6TIssjud
         gKJ5SNmMxATQdrSiFP+5c+OTCDTJjR2gWHzos/OkcfHiyd02j+z+S4Uf/917UuH9JLXx
         MCLWczlwJY8G4jGgyV+x2H6jIppSBEXuia9JA2BOTA3Suh4rBxZVdkEi618757rCxiFJ
         15GA3gJZGVYbSFD6zOZF0gKVz8C6/SicD0oxmczb+gyRVs7NEUI8TDIx1v6rwfIbY8Gy
         rVzi7bMIxXlLzgWIzNnfNxv0p6+WMugMM7cxASFxyw64piqvpPZ+Zc3BZ2lpFXz7QgpR
         0u6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mRRe+/Dfyul164nvroTIju0822KBgAEoAnhZLaZcuwk=;
        b=VK+JwHim5CLOPnVAsWNkte08cO82h3ZrcVUmVn4MgwcQUApyrGYnYnsTiT2wN+E2T1
         GKofqbKYCidzAkY+cRkZA29pNtchy4h5kD7nQO5WvQvB7lAAa3pPg1mLlZSYlNg6UKXP
         R2QOZIyb4xYVlQd7BJpdmjCm4Y9j9dsonvzu2cBXSaQXYa/KhQLfOjnXLUyzhXklSUFA
         fBDIycwkgsGU3Y2pzfDvW65jaU73ZdNu19pZRj6kHILR6cgme/JJB+o7esWFUkZNxRS+
         azYj45TgMryPeZAIG0QqUfUL2sQDNkgsqiRDXfGMlN+DbjCyDS1kA1X7lpnM4pFWkhAK
         +2hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mRRe+/Dfyul164nvroTIju0822KBgAEoAnhZLaZcuwk=;
        b=X+iloJAxoH1N63gGvkWdWin8RT8lUFcSWa3m2IihAt2gvRyQyAHODYDyN2cOk/iFOb
         vy+7Zb65ekYrIVJcwGt4EAOZylgEa55bvXQYtdAXJqWt17Wd0k9f/Lf7MseY4NfoCmo1
         Lr4DRuYxR7ksg8N3t5RTgtCBpOdQBiBVbD4CC8Rb+EGX0WtXXTytsiXlilALvek1F1dZ
         3/+btS7AQYAmi4K77eFUIaxGZDWYp7m88oiSGZG8qBTqWzyNZ6V2dwTcoxwXPTcaJmQM
         nwKhxoFTA4PfVfRta3jGaPUnNgEw43R06peBp9/Nc4T48I108Ax2Rjwll0BQ2DQFoD2G
         aACw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Sl3fBdpY5ROn7A1CdHixaRxHj8LuXjBpkyoKUqR6aB4xvpaJb
	7Z43MijxjZsco/syouK1/+s=
X-Google-Smtp-Source: ABdhPJySzwv43SQ3kfqdhFCr3+YK7bndQFt8WVvchZickn7/j4GthN4AHesOuyIK/9+nZezD1otYfQ==
X-Received: by 2002:a05:6512:31a:: with SMTP id t26mr18109889lfp.75.1620664524061;
        Mon, 10 May 2021 09:35:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a785:: with SMTP id c5ls3047296ljf.8.gmail; Mon, 10 May
 2021 09:35:22 -0700 (PDT)
X-Received: by 2002:a2e:3218:: with SMTP id y24mr8491564ljy.69.1620664522935;
        Mon, 10 May 2021 09:35:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620664522; cv=none;
        d=google.com; s=arc-20160816;
        b=Rc84EyHZvaZAh8nmldGPFvodX3QSWEC6Mbnb9kBi0bhhB2Xvo0D+qwhykg00SOd7Dh
         SVsZpRBtCvLt0f/dpw9C7A/YBY/wOwKyQroX8HqjtyKtY8AYVOnsgPaqG904NTWRH3bl
         QDOJFYbz/kZvxpHLlSpNxv4PMJuBF1Zb+8ZMut7S6NFXJfU9lmRBW+//+tViNsnGO4/T
         OLDHtTvc4IsiE+1AWHuC3TyjOB5pFHgseSh9H6jHl41NwpV1hsAfJrtWhqsP3yzVHLGF
         Ddij/ypPmIh58H6kH3PUlGLDnbR/EUaKwNXc05a5l1KIfbCexVqZG/1gJN4sGXzpC4CZ
         g7tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7CyBniwOPY8tdUbpu/vyod1IQczw+Lx7Gt7hD7CHSiE=;
        b=U48lfrbUl+gFu47pIXlsx5206F0iw3b7M4qRdFWvFj3I0cTcegYiBLm5hOEEhE4O8N
         2vBx7/fYLTkORcOGUUT40vlJ0GQSo8VkFb+ihFy7JG+HwvVqaDcnRdJ3z4IGootRuNxy
         xRp9POdaqW5igAcXhWdsnp0nS2i24z24RejkTWK3qwMg+SIFdR3/awLBShsQZZJHbsJB
         AByKPnsfpWD4tGNBqCFe7W0yH6NuLYKMTqSJGtiMMuyK2ujhiFlhN2vquB9NuF7W4jY2
         x/54MmL9Iz3i3KErYv6O6ogYXvehlsi4lfVpBCZr7aC9+ct06HlBgsZYg6851RvlLJCn
         qNTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=edmVc4vE;
       spf=pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com. [2a00:1450:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id w26si378075ljw.8.2021.05.10.09.35.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 May 2021 09:35:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.zaidman@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) client-ip=2a00:1450:4864:20::32b;
Received: by mail-wm1-x32b.google.com with SMTP id j3-20020a05600c4843b02901484662c4ebso11535970wmo.0
        for <clang-built-linux@googlegroups.com>; Mon, 10 May 2021 09:35:22 -0700 (PDT)
X-Received: by 2002:a1c:f20d:: with SMTP id s13mr27169110wmc.92.1620664522711;
        Mon, 10 May 2021 09:35:22 -0700 (PDT)
Received: from michael-VirtualBox.xsight.ent ([31.168.255.170])
        by smtp.googlemail.com with ESMTPSA id c14sm23944991wrt.77.2021.05.10.09.35.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 09:35:22 -0700 (PDT)
From: Michael Zaidman <michael.zaidman@gmail.com>
To: lkp@intel.com
Cc: kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	jikos@kernel.org,
	joe@perches.com,
	dan.carpenter@oracle.com,
	linux-input@vger.kernel.org,
	Michael Zaidman <michael.zaidman@gmail.com>
Subject: [PATCH v3] HID: ft260: fix format type warning in ft260_word_show()
Date: Mon, 10 May 2021 19:34:28 +0300
Message-Id: <20210510163428.2415-1-michael.zaidman@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <202105060637.LeEC6ztp-lkp@intel.com>
References: <202105060637.LeEC6ztp-lkp@intel.com>
MIME-Version: 1.0
X-Original-Sender: michael.zaidman@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=edmVc4vE;       spf=pass
 (google.com: domain of michael.zaidman@gmail.com designates
 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=michael.zaidman@gmail.com;
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

Any sprintf style use of %h or %hi for a sub-int sized value isn't useful
since integer promotion is done on the value anyway. So, use %d instead.

https://lore.kernel.org/lkml/CAHk-=wgoxnmsj8GEVFJSvTwdnWm8wVJthefNk2n6+4TC=20e0Q@mail.gmail.com/

Signed-off-by: Michael Zaidman <michael.zaidman@gmail.com>
Suggested-by: Joe Perches <joe@perches.com>
Reported-by: kernel test robot <lkp@intel.com>
---
 drivers/hid/hid-ft260.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hid/hid-ft260.c b/drivers/hid/hid-ft260.c
index 047aa85a7c83..ff2a49b5cac5 100644
--- a/drivers/hid/hid-ft260.c
+++ b/drivers/hid/hid-ft260.c
@@ -779,7 +779,7 @@ static int ft260_byte_show(struct hid_device *hdev, int id, u8 *cfg, int len,
 	if (ret != len && ret >= 0)
 		return -EIO;
 
-	return scnprintf(buf, PAGE_SIZE, "%hi\n", *field);
+	return scnprintf(buf, PAGE_SIZE, "%d\n", *field);
 }
 
 static int ft260_word_show(struct hid_device *hdev, int id, u8 *cfg, int len,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210510163428.2415-1-michael.zaidman%40gmail.com.
