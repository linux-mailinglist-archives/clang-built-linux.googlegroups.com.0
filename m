Return-Path: <clang-built-linux+bncBAABBJFE7P7QKGQEW7ENAMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A262F4912
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 11:57:41 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id h206sf2178048iof.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 02:57:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610535461; cv=pass;
        d=google.com; s=arc-20160816;
        b=NCg4Fd4RgT9HA3V0cHzjD11tP8YdkAoGKnmmF4kkhftL8lSOyM30dTn3jGFs66uXGF
         XJjwHuHLt7bAAiaW4ZnjpQs9vFmN/iYscNo7CxuwaSVqjljd+GLHhzUiOrmgJjITeUOk
         jWjFKdIkWcH8HJ6N/AYQZ/wXfXz8i+9h0RraN+vBTwjNU/ACLr5cAPoseCb9NnFMHE4x
         xTwmAC73QKGqT9VBBzZASxSMEB6NyoSqvfCsCp2al50ddXNa5PgGRY6n9NWr41MliRV5
         ri/rL0gv1dshXoCQDHSDp/vaJ6G/aJT44IAZIXrMcz8rG2JGBXUQ1PbgqTbKx+LhKcE6
         k16w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=AqFPBbQwClplLVYa6nVxed0iUanCciCSJGI1jNnn30s=;
        b=0Ex1mY/EWLnS8JZWggjC6pgnpQUc/Jlf1TaNbsi5gjW4vQ1h1YVGH94X1Uubb1Swiz
         +RANAjTgtm2UHSVtoZZBZlMyyHTncPev8fMj0nUMk+OglOADhzNG0/Lqt8bojknRRDgp
         XgECORsCK770lZsZsxneQpxc+7pXyWgN95f053RZ2dv+sb+Jgm6o5g2zEvlF20KK9bnh
         Xq5VKQMFHMDt+wEx0nEDWn90xsRIG6238mnsk3NGphyPcDWc7Z5Z4TJYVyrjqwHdX+IY
         5woqFfTvRlJUDhE2rYFD0MiNNsELGeXQBMpW7mXC8RXSHQ+bkq0H49lfaJUzFIiwStee
         J4yA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AqFPBbQwClplLVYa6nVxed0iUanCciCSJGI1jNnn30s=;
        b=agWnEq3S4bkliWWQBZbgWXHU3dZFvlW1AEVov45SciKpU3xbCA3gXjOzoaWyipjjZD
         qmyxeCy+ayYUp2FcYlEjp29/olIW7y5Vh5XniQ6IqAE9YmLOj8lZE1Am17Q8tM2YWHk5
         yBt1OMgq05UcVNnq7IjTImj4uKePcrXCQ8S6VWSQ4PA+e0feiO2LcOYkrSWj745FLXlS
         cclc6kYxvHtDbyfVjHNGRdVBDkS4wj8yFcXKQf3mg3AQ7wouZ49S9YOu6/NftEwIcZ/5
         b3lVUzg7U9actNoZeoSt3hHdo7o7jhoDjPIgohCXE22jrTekTUiUl2nyVK1mlnHWzjzd
         lENA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AqFPBbQwClplLVYa6nVxed0iUanCciCSJGI1jNnn30s=;
        b=thCF3j5g203pZ1oznZ1aoIA6e9pi9HnvSAZddbT4a09eL+QCenXFSuUSLvr/lD6kzf
         ORXj2wa4zxnxdzm/TdnhGuHNiN6wZUlHUvQi16Dj/E90wb2w21H45dKngEnYrpAQr3sN
         Rm6oUF+RBJYlqgVYiz/jLFpryDOcdSkhbFI1F4EKANSQg3deRvWdAb+WRSAYVaYXAL/2
         UvUA3ZFIqwB8NkMVu4WOVfluy7hlFIp3apnQVnFP0dZZPE2boyS4INVDGwW49KnTH0sE
         Aun7KSALfTBjQXWX7pcemuG67we/l1yIhgmfzKToATpzxmooCEr+hcVPWPmeku7s0Ew3
         fYOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Dw6I+fRcheWnEthDFvgZNKJzgJUqnQd9ZTZM0n22/ZciyBMBY
	CIacuy/AtR4B9JM9OSVoINI=
X-Google-Smtp-Source: ABdhPJymo8nDKXtGqx+yvlE0Hr04QYkEzGMYE3T1JVD7G+Zf3aRwEF9te8uycNfCQfhK4L/za8DowA==
X-Received: by 2002:a92:9f59:: with SMTP id u86mr1764462ili.205.1610535460938;
        Wed, 13 Jan 2021 02:57:40 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c549:: with SMTP id a9ls451568ilj.10.gmail; Wed, 13 Jan
 2021 02:57:40 -0800 (PST)
X-Received: by 2002:a05:6e02:87:: with SMTP id l7mr1789324ilm.57.1610535460383;
        Wed, 13 Jan 2021 02:57:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610535460; cv=none;
        d=google.com; s=arc-20160816;
        b=czpZtBiLk8JmIPFyGzida86wGAwBKZl/Wb3Mhp0MY7FoO+TCdeX+bUXm6tjpxSXXcy
         MzsXucwb1FiU8/nsF0VnkObtgbHkWeW1ScLTbLRbymB6ypOIyRrEpLJP2FB5YPoicda8
         jnu43Pjz35YNDXvBZb5gEkgUgjWAsKdJ3OE/xstKUK4RLB9/VsrMrXEDhC4LUQ0W1m48
         spwr6fYlz0KDwg9TE2bjYVHhWIOwJMzHydgV6M+qiHxCMCxGh3ufT4h7dFbwjSJHSsyk
         e6dgMC8OozXR5gj3skOry3tJiq/PQm3wls3hqStdZTLmGAPScgpupGODAOz1/wNqmqLc
         fcrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=kO98n2Gu/JbkqOrSj+PH2IJ+P6gMq0WGC5pTRO0gzBc=;
        b=NM0O6ggl9tVxKjLhq8WevTKmGocLgMSd4+et/vEpHnv5rEb/bisSUxV7Sw5miQsKRd
         Z93KbGIc0Xl/eJQ4bt69GCsESYqaqd08qcJX5P7z6JPijYF/Ov3RCrv3e5kUCYjX968x
         gX1lIv+zJWCq5bZKepipMDLkhhiiLHGS0tdtazwCxEHefDMGQQNiKETW0/HPRtYz8Rxb
         OO6u2ghs+HQ8nI5XJCEqwM9aHQQQczmjDPXZeY4ltGX+utTQKSUOry8QdCgfrketXVdx
         Rdpq2ZTaCf+ONPufDbKnB8hrqlLBxfW5QifJGgti/QGEiGZSW64kKo7jxxDs9goEY0w6
         sMJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id v81si90546iod.4.2021.01.13.02.57.39
        for <clang-built-linux@googlegroups.com>;
        Wed, 13 Jan 2021 02:57:40 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from linux.localdomain (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dxr78d0v5fhLMDAA--.6498S3;
	Wed, 13 Jan 2021 18:57:35 +0800 (CST)
From: Tiezhu Yang <yangtiezhu@loongson.cn>
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-sparse@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Xuefeng Li <lixuefeng@loongson.cn>
Subject: [PATCH bpf 1/2] samples/bpf: Set flag __SANE_USERSPACE_TYPES__ for MIPS to fix build warnings
Date: Wed, 13 Jan 2021 18:57:32 +0800
Message-Id: <1610535453-2352-2-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1610535453-2352-1-git-send-email-yangtiezhu@loongson.cn>
References: <1610535453-2352-1-git-send-email-yangtiezhu@loongson.cn>
X-CM-TRANSID: AQAAf9Dxr78d0v5fhLMDAA--.6498S3
X-Coremail-Antispam: 1UD129KBjvJXoW7tr18Gr1kZF4UuFWkCF4rXwb_yoW8Gw45pa
	n2kayxGrWFkw43GFW7Ar1jvr13J3y8u34jgFW8WFyYqFy2qFyvqr4kJrW3tr48urs2yayS
	qFy3GFy5CFyrXr7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUPC14x267AKxVWrJVCq3wAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2048vs2IY020E87I2jVAFwI0_Jr4l82xGYIkIc2
	x26xkF7I0E14v26r4j6ryUM28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8wA2z4x0
	Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Cr0_Gr1UM2
	8EF7xvwVC2z280aVAFwI0_Cr1j6rxdM28EF7xvwVC2z280aVCY1x0267AKxVW0oVCq3wAS
	0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2
	IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Cr0_Gr1UMcvjeVCFs4IE7xkEbVWUJVW8JwAC
	jcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2Y2ka0x
	kIwI1lc2xSY4AK67AK6r4DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4U
	MI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67
	AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0
	cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z2
	80aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI
	43ZEXa7VUjZqXJUUUUU==
X-CM-SenderInfo: p1dqw3xlh2x3gn0dqz5rrqw2lrqou0/
X-Original-Sender: yangtiezhu@loongson.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as
 permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
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

MIPS needs __SANE_USERSPACE_TYPES__ before <linux/types.h> to select
'int-ll64.h' in arch/mips/include/uapi/asm/types.h and avoid compile
warnings when printing __u64 with %llu, %llx or %lld.

    printf("0x%02x : %llu\n", key, value);
                     ~~~^          ~~~~~
                     %lu
   printf("%s/%llx;", sym->name, addr);
              ~~~^               ~~~~
              %lx
  printf(";%s %lld\n", key->waker, count);
              ~~~^                 ~~~~~
              %ld

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
---
 samples/bpf/Makefile        | 4 ++++
 tools/include/linux/types.h | 3 +++
 2 files changed, 7 insertions(+)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 26fc96c..27de306 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -183,6 +183,10 @@ BPF_EXTRA_CFLAGS := $(ARM_ARCH_SELECTOR)
 TPROGS_CFLAGS += $(ARM_ARCH_SELECTOR)
 endif
 
+ifeq ($(ARCH), mips)
+TPROGS_CFLAGS += -D__SANE_USERSPACE_TYPES__
+endif
+
 TPROGS_CFLAGS += -Wall -O2
 TPROGS_CFLAGS += -Wmissing-prototypes
 TPROGS_CFLAGS += -Wstrict-prototypes
diff --git a/tools/include/linux/types.h b/tools/include/linux/types.h
index 154eb4e..e9c5a21 100644
--- a/tools/include/linux/types.h
+++ b/tools/include/linux/types.h
@@ -6,7 +6,10 @@
 #include <stddef.h>
 #include <stdint.h>
 
+#ifndef __SANE_USERSPACE_TYPES__
 #define __SANE_USERSPACE_TYPES__	/* For PPC64, to get LL64 types */
+#endif
+
 #include <asm/types.h>
 #include <asm/posix_types.h>
 
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1610535453-2352-2-git-send-email-yangtiezhu%40loongson.cn.
