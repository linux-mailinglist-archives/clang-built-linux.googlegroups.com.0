Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBR7IYX2QKGQEOXSDGQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4771C5847
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:12:24 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id j9sf1012948edr.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:12:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588687944; cv=pass;
        d=google.com; s=arc-20160816;
        b=0b8G2qvyAL3vMVRqsGUOvm1SDW7r4a3HH5T6mLyPsN1hcQ7VsNG+/7hroKJwCeCTG6
         vq/BtVtj3RPgB4clgxkWgoM6cTm0e0cGWDn/Vy9c9Nxxbm360HlE5SRbsvbpM9m+gIkJ
         pzGqVdXswnj663iopXEIV2X84BBRtixh8aI1U/m6yh7UPY7tR6LlLc4oPmoMUkergorf
         sa8XhcSyyn//qotUKomcGdODYmwuMIjxo0EKbSH2+CndtrboKeJwyFDnmciU1gTPG/FF
         1epSJdbMY2aw/iCWXrs/blFB+eF+b4ZDS1zyQnKi539ZJJ0zMOAw7Ucjuyl+BNPekY61
         nlRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=bhSFqVh9uY+xG18w19uo3n9OJXc8A0t4Vlz6YJUiU2Y=;
        b=GKA+v9ZxfSNJDJyYuJ99tXxFUQHYH80RjOeZcbDLpECkRNI6ceEtG6zXqW8PncXTrH
         Q/0UCVa3NOZYPnm0eK3Ydk4GhrEQtrFBOMW9Z01iz2hw1U1IdayQKU8qdzJhoL+6TuIr
         27O+FF90m6L6ifWLVe76BZ6ET8dCeMoQzID2zTLD+YWFxcZQxGSjjETF6qH9zSCk+CCw
         V6BYIyyWziFA6mq7sXTn4Q/O/8k/MWDy/lSW1XuH3b5SJNJt6kOlOWCBBdoAf3++ioKQ
         qqiynhFwoP0AnkUao0nUAPww/e/HkQ5R0koKuz6/On3du/26X692sUd2yQdh9yIpxpLK
         UpZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bhSFqVh9uY+xG18w19uo3n9OJXc8A0t4Vlz6YJUiU2Y=;
        b=l1Pmgi8hO/R08ZJ1lKNsz/fLr3CRXn406lFpmE2lv4BCB80NLe0u7Eza5BOi03VrK3
         qn9owHx6Y2Z/krPgK2HGPe7MJEjePXdtStoIPDkfjcnHWbf+gkIBRH0my6oha/0tocx2
         nWxrLizAc2QlDLf/iKbFRABZyaEpm0P93a2hboDFH5VHCdXdqlsX4RVCSokFf76AL9Pc
         ecN4ZqpJRgrIXOmURBukYh5DiB4yk/4qw+ftNdEjfHRu8mQiOH0j3JvCEwCqf0laDyAL
         iKhvnKrffEJL89YyZwuRjDeLxaCgwAYMOHpbMPLkuu3vJZYS0aiIpDz3pzKaxtFI1oDH
         H1uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bhSFqVh9uY+xG18w19uo3n9OJXc8A0t4Vlz6YJUiU2Y=;
        b=Rg8L9tHz8xXUg0cRsoopF19iS5mudpL4vi5Y8NQeIS42wvZESN4/0TfkQ8SPcyrSJz
         cpd+jQs01SWeRvybMJh1h93QGmQ3DxZBZmqnp52jVYXir3Zo0mHvke79QqyNrAluIITB
         4u3kOUEy88ueabZOYqdSEMI2Y0EsFqIijY0pcJBa8MYW2XWd4wnwpnsQJ3vK2m8SCbDm
         xHHxr3X3Lt0thRQQgLCIhMVW2fNrlu9x/sNCNPcb/0iTit+On2XoTOag8OzdSFkqSWfh
         qEOxzh25R7fzGSz2gTyJtLZ4BRaATYaBW3Kk7J7X4Guv+pHkLzfrE7Uzwz4jixdzdm5i
         /Y4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYjU6ZUnPCtQrO8k1/UVBon5GwIU1L5+70p7w8t1Afj07o4Ix9G
	qyRHDVcF9HZnzq6BVB9ux5g=
X-Google-Smtp-Source: APiQypLVQFHxDoas2wVWJ90wFz2sC7orX/KIAxzIgtq1jZEbJ+d5poICkhVEMktbP17kzHW0kB9kxA==
X-Received: by 2002:a17:906:f295:: with SMTP id gu21mr2953533ejb.83.1588687943884;
        Tue, 05 May 2020 07:12:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:14d3:: with SMTP id f19ls1307238edx.5.gmail; Tue,
 05 May 2020 07:12:23 -0700 (PDT)
X-Received: by 2002:aa7:cd7c:: with SMTP id ca28mr2821913edb.181.1588687943400;
        Tue, 05 May 2020 07:12:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588687943; cv=none;
        d=google.com; s=arc-20160816;
        b=R2EFOvwDgUKiyybaJP9C91Khjg67Wgd15Zqf52T5tm+af2rlPN9F1R3HyAQjP27+jJ
         L2bPfybuhHG8ufQvfGSozu7E0GMrAkITw1C+V1kBRxIlzmSurYlsxS7aiDQHORpWC1gO
         9eMk4r3zjoMLnvhspZf9z/7tQV14OgBg4ZdAz9h+bA3TAHYCrRzofac0jdon9MO85xx1
         PslAv7VYRMksNnbeP1Z4w7EDfQjuzsedqDGk9a1qg545uRncsfpCj9DZRexMFW8F8Bd9
         2/SPKuUCC6dfP1jBGbMrcHkpdvB1TsMJ0cOo/wEhEfqMxld8gDNYiNHVLcaQLqmBgaRX
         e6LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=IF25KV0Y38Q2T4jfamMjJxhG7RjbGddo6o/E8o7p1fY=;
        b=xfuBi8apCitXpOFx4jNHnsfs137Fp8estVY4Fnf5+8v0ppfrjYI9cvg2WipN8HIGJW
         dFvdtS2joKQgNhyg0NiuUzic5tDhO41JAWMBxfULT/ZByde7aZCCQOAbm4YTuMqAVapq
         kXz1IeEMOVz18K9X4CBV1S9CCffmNXkhHGKWoR5nlw175trt2faiiqEnU1BmfaUaWwR1
         vIHy7SMVho+u5GzC639qGJ/Xz6mp5I9VP5YksG4c9/kgbAsasnQ6qR4U2sNqnqiRvQqM
         x5PDMa3TTMV0dU7pRWks35lN1+pQGBu5eAhctu5Gc05oCmXgQfd7jV8KwHi0jCdIxaf/
         Fnxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id by3si43815ejc.0.2020.05.05.07.12.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:12:23 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MPooP-1jjMYw3zMZ-00MqB8; Tue, 05 May 2020 16:12:22 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Russell King <linux@armlinux.org.uk>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Huckleberry <nhuck15@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ARM: use ARM unwinder for gcov
Date: Tue,  5 May 2020 16:11:56 +0200
Message-Id: <20200505141218.684079-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:xYF4bWF6ZBT8Pyevxjl7TuHwrRpMUeaWC2ade9WpKlAo8vN+BLm
 5NYEooCfRPujRggbxVIeOPf1it9oT34YwaSKvZLx4zh1Mfhw3zzT6Y67uyTAI7izRBYyIbH
 HDnX7Aqnx6wJdexU7I9d9IkEDRelLi3/xo1y/LZ7OWdkJM5ICcrjCfBLbnJlGHsK7Brk22w
 VPiIPtIVo3hVudvHHOilw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hcOUmx89Pao=:ORC3xGKBYI8iWGf6iU56dM
 IWOLCS5ZkjFI9dCrUtHFQ0k2f+Dmmy669ljCEwKvg6LHATZNCa0VuIDVwJL68A+PZJOyPq6A5
 iL3xXsjnCHos+K0gdqh3nKqTk8kEJFKIaFppmhvFP0X8nAc7bfF+lHSY0lMpt0ZuWSyQPBHNt
 2Mb5akhUSpSlSTnKRxq1xV1MojGzEwfqkgrGy/+NRkQlXQ5wIVQZCVgZy8R05Qov7Dwq4w8sx
 Uzc7zCt88Z4IT65oVp6DFa+4qiV9pUdX/ujF9/MejBiBfLEQJhlV2JBhFM/rtsGlXp1mYl40P
 emt1EMa1fDqmZK7RsNO4jvA3Gg9peIxDNCh0dhadFCvONg1nuiJtuhJewfODqrttyfz9/zv9H
 coH7/be7/rZv6D3CHB28sK11ZuuCBissstLRibs0umsQCszOJ6F68fOeRjMNkO0QlRWOIEBu4
 /FubQg6OALzjsjYfUPLBqk+Yn0oGfflvrK3oYVfPoEAk2IIIQ23av5eombjwyxHgWUSvXnYsm
 zi555iu0Qh4P/7/Und7k8uhh/X4by2ULb0WBfH+RD/qBmTy6eT9dSorUuPQXs+LsknoK5OB4C
 guO+1D6OugrO6LlrUzC43cYAekk5PG6bTsx/CeL5NL8KybRPlLGVRIiXaAlG8gSBio1n8RGtJ
 a427JdifUZ+xlWNLC7sBWH9/VPrwP6dw4EHRBL5ac8BdivGlhpydUZgXyrgOcna1FxugNUt1P
 ccde1FtN8fjo3qNX6E2zMbajPVDtHvdq1rAuduFNNgqGGQFAuGJR1V0B2z26w7pvmPg0oLhR9
 jcBnb2ONOBsE9XYMONjrPNuuB0c778z8iUZh8Og52BolAv0nig=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

Using gcov on ARM fails when the frame pointer unwinder is used:

arm-linux-gnueabi-ld: kernel/softirq.o:(.ARM.exidx+0x120): undefined reference to `__aeabi_unwind_cpp_pr0'
arm-linux-gnueabi-ld: init/main.o:(.ARM.exidx+0x98): undefined reference to `__aeabi_unwind_cpp_pr0'
arm-linux-gnueabi-ld: init/version.o:(.ARM.exidx+0x0): undefined reference to `__aeabi_unwind_cpp_pr0'
arm-linux-gnueabi-ld: init/do_mounts.o:(.ARM.exidx+0x28): undefined reference to `__aeabi_unwind_cpp_pr0'
arm-linux-gnueabi-ld: init/do_mounts_initrd.o:(.ARM.exidx+0x0): undefined reference to `__aeabi_unwind_cpp_pr0'
arm-linux-gnueabi-ld: init/initramfs.o:(.ARM.exidx+0x8): more undefined references to `__aeabi_unwind_cpp_pr0' follow

This is likely a bug in clang that should be fixed in the compiler.
Forcing the use of the ARM unwinder in this configuration however
works around the problem.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/Kconfig.debug | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
index a1dfb04231fd..41ef58acabf7 100644
--- a/arch/arm/Kconfig.debug
+++ b/arch/arm/Kconfig.debug
@@ -56,7 +56,7 @@ choice
 
 config UNWINDER_FRAME_POINTER
 	bool "Frame pointer unwinder"
-	depends on !THUMB2_KERNEL
+	depends on !THUMB2_KERNEL && !(CC_IS_CLANG && GCOV_KERNEL)
 	select ARCH_WANT_FRAME_POINTERS
 	select FRAME_POINTER
 	help
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505141218.684079-1-arnd%40arndb.de.
