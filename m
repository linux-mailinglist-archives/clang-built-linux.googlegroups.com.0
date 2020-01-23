Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBLEAVDYQKGQEGBA6PEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 98083147280
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 21:21:01 +0100 (CET)
Received: by mail-pg1-x539.google.com with SMTP id d129sf2445242pgc.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 12:21:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579810860; cv=pass;
        d=google.com; s=arc-20160816;
        b=DX2Iv3GQsuGWLYYEv7i5/xd7Owja5xiYO4bx9wtj9dyniq67Wp/GmbVfRljn70SNTi
         TQ8NX5s/pAK/dB9wRpNij0znYuofTjbo2IMKCWACtUrfg0R40MkF5evG/qDwPan7PV64
         1Ibasiz4d6KclFCb54JEQG4drrMnH/kwMrpA1OMzf045qJg7boRJfCzOB60/DPH7gpxe
         k3PKov1Ygk7ibiAe46tggKGyxkBEqxRWUUrR5dT3URcqj1kNzPazORiXB23d5Odpvn94
         ihV6I1t0/NfxvX7y8R07M0L3GASZR+w37joE0ciyKV/AhLhtO4IK0C6/j8+X9vga3QeG
         62ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=CiT4dqUvVvQ0F8xmFdraJbz+0mYPwiB64MYfbO3+VGE=;
        b=pMLBzxUbHLPN4JnVW6UIzJnqJxW+1mWB2n9lYk6uF5FdPsDgQgVnb34HpOnwwEhne0
         ke5qv0LD0EMByqv9nL8FXh2yqSiv4QGD6QvpVSJtLV8Aln30M1On3HL7UFCK94diMi8Z
         szcbi3eSW5sUv3XxSuk6sDKpAnB5n1qlHr4A5IyZbOttAtdy4wtsN65zy3lqzaFkufJ4
         grM5M9MDN+1a5RHmxrEpHWgPNuAc43cTBd24FBMA/yKIhguFO/gCXG7EfxT2mvy02fiR
         JHrsRl4GFYuXND3ux7leZexmOMFMWlX+Yy2bXiN9E0kt2dA6VDApzXwFpkn8MjHlGvyA
         25Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=fyy3NG0Q;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CiT4dqUvVvQ0F8xmFdraJbz+0mYPwiB64MYfbO3+VGE=;
        b=YBxJRZWXuMJwR5YeC6WO+TmhNJEvpKsuEdXm8eol80twmqVWAiurrv8tZhcdW1UgfZ
         LQR+ZNNy+Fep/xbfxJ4Ii6YcI1ZpJutDYnJt5nEV6TuyFUZKXbDBbpHx2SHMP5X13EQ0
         sX9bBz4HQR4DwAycLiBff5AUhVoLINj0ek8y+Y9qXSGACTL4FKxxlImpfjTY1JmzdQIK
         KAnlHqt65Aha/rKgmxQhJCb/ohlF9pdjziWiHO6tnpH6OuxJ9sZt6lUcBdVpBfHyN/EA
         dcpMY/UYBhohZO11CUz9F0VLYLWGJDPfnFYDnqYXo+HpXOVRUwjPhBA9F4cnUxypL4hq
         pJiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CiT4dqUvVvQ0F8xmFdraJbz+0mYPwiB64MYfbO3+VGE=;
        b=nxKjEU0V9X3UPRct5OmVM+wCgyIpvprZikWNaHwgUY9qzBSYANb6VVDI13owEfIPgi
         l4tAS6Tf3ErszSrTa5nLh7sfd/U40ojpLjSUPKT37D3ByxK738m599Hd9gnkSw+4wq02
         jXzD4mXxHED+ct/wMBMe/Fc9iaXlYv89MxkbOK6KCSVGicgQWBGSX9rf7XODIvuoanNW
         rvNiX6HKmY1uS4olJlZ1adrhvBtC3KGtSL3rw5R9WP0MBhWI3ep6fpMUSjUOxDq65cy/
         4KsBKsYLfS3LYXxatUVV0m+VDyNFlqH2Oovcuspj5BExbJ2vYcl89rleguAHtJ0wcntu
         Myzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWWZbPHyWnNopJwr4iYzVhFeOU+xfu8dIFtbW5a4D+tACLBlXF0
	OeqUoVAj0n4lwlX5uos99SM=
X-Google-Smtp-Source: APXvYqx0BbaZZHYy6W+xKiLWYn1pxR/yT6/ZvsrVGVQ4HLfBXe7Hn9bJHggBkXmJjjA2ZJN3KfVSVA==
X-Received: by 2002:a17:90a:26ab:: with SMTP id m40mr6652089pje.42.1579810860393;
        Thu, 23 Jan 2020 12:21:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:84d9:: with SMTP id x25ls14208662pfn.2.gmail; Thu, 23
 Jan 2020 12:20:59 -0800 (PST)
X-Received: by 2002:a63:d157:: with SMTP id c23mr150119pgj.242.1579810859773;
        Thu, 23 Jan 2020 12:20:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579810859; cv=none;
        d=google.com; s=arc-20160816;
        b=U7TaMb4qZLt6KqFld/gQbyDrhs89I6/I1ut9g28FPbdW1I6dNyL5sUWcU5zIHGza5b
         zKN4+Yur4tAudMTaTQ4bpbdlo9Sn6wsxlmsbWs+0+CGB8DlAfWlUIFyKJoL3tp2+P1yh
         hYkywjp2gHHJotYMsXCh0CfQAWZY9Jg8XIuyy0b8N0esNhH9qfsfhQo+zMNIoH6I1FdT
         HwMh+WHwSIxNpg61U9TpNFSB06XBprLjut1cIY+KpFhXvhjd2ksdh7PxhORXTB8FHkWv
         tgvf+16n0wI1DveX2q8ZV+lumweFb/I3PUihxUMdUhVZRs8UJmxi58kqG7BhfbYy+Y9R
         GAVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=VWhgf0oxD0MDf+v6PtICDr/Wa9j8E9ftPNdZpQEn1CY=;
        b=Zal2xHI5k4TrOjoRmdkqToZl46FIzXbS0DDxC5sCiFUtsE5qA76+Gbre8gKar49a+U
         O4BJ30FHiOfPBGPQhnN1Ej7oMNHFpAjjEZ+PatRT4k4KJLSbvn1s/Hx7NBU38YdzNgVZ
         pFk4AARayEw2mtxdNTcqNBrIpHeqdP17Y5kYjCg90CKyNXGYAsLVYQWwuFcDozil5QEX
         WyMCkY3MRlHrucRs49UqJwlsSR+vQ4vDQfWaKigRzHY+/lVdLwMYciUX94d8prWpUO7j
         +L/D0lJptPwlISGSC98sjahBPrjrbEDzBdvvS7mbs+6lwoEFyl235DMW1Yd6hAZcGQaE
         C8jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=fyy3NG0Q;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id v13si190062pga.4.2020.01.23.12.20.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2020 12:20:59 -0800 (PST)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Received: by mail-qt1-x842.google.com with SMTP id d18so3524006qtj.10
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jan 2020 12:20:59 -0800 (PST)
X-Received: by 2002:ac8:768d:: with SMTP id g13mr18191647qtr.7.1579810858874;
        Thu, 23 Jan 2020 12:20:58 -0800 (PST)
Received: from ovpn-123-97.rdu2.redhat.com (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id g52sm1649041qta.58.2020.01.23.12.20.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Jan 2020 12:20:58 -0800 (PST)
From: Qian Cai <cai@lca.pw>
To: peterz@infradead.org
Cc: will@kernel.org,
	longman@redhat.com,
	mingo@redhat.com,
	catalin.marinas@arm.com,
	clang-built-linux@googlegroups.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Qian Cai <cai@lca.pw>
Subject: [PATCH -next v2] arm64/spinlock: fix a -Wunused-function warning
Date: Thu, 23 Jan 2020 15:20:51 -0500
Message-Id: <20200123202051.8106-1-cai@lca.pw>
X-Mailer: git-send-email 2.21.0 (Apple Git-122.2)
MIME-Version: 1.0
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=fyy3NG0Q;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::842 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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

The commit f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for
arm64") introduced a warning from Clang because vcpu_is_preempted() is
compiled away,

kernel/locking/osq_lock.c:25:19: warning: unused function 'node_cpu'
[-Wunused-function]
static inline int node_cpu(struct optimistic_spin_node *node)
                  ^
1 warning generated.

Fix it by converting vcpu_is_preempted() to a static inline function.

Fixes: f5bfdc8e3947 ("locking/osq: Use optimized spinning loop for arm64")
Signed-off-by: Qian Cai <cai@lca.pw>
---

v2: convert vcpu_is_preempted() to a static inline function.

 arch/arm64/include/asm/spinlock.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/spinlock.h b/arch/arm64/include/asm/spinlock.h
index 102404dc1e13..9083d6992603 100644
--- a/arch/arm64/include/asm/spinlock.h
+++ b/arch/arm64/include/asm/spinlock.h
@@ -18,6 +18,10 @@
  * See:
  * https://lore.kernel.org/lkml/20200110100612.GC2827@hirez.programming.kicks-ass.net
  */
-#define vcpu_is_preempted(cpu)	false
+#define vcpu_is_preempted vcpu_is_preempted
+static inline bool vcpu_is_preempted(int cpu)
+{
+	return false;
+}
 
 #endif /* __ASM_SPINLOCK_H */
-- 
2.21.0 (Apple Git-122.2)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200123202051.8106-1-cai%40lca.pw.
