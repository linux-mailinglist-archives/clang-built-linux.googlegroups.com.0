Return-Path: <clang-built-linux+bncBAABBOEL4KBAMGQEFAGHWLA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D58344035
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 12:55:38 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id i1sf27772703pgg.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Mar 2021 04:55:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616414137; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hc6Siz/GwxS5fZONWwILotw8iwRX6mlPx74de6uYF1cssL92+ktKK90QvVfEIbt7Cs
         XjAE3Tq47cqEO+xJyAA+kdSHaGguA7uv4bf1ZPuvBploSXZMPj0/viqAcGlpwmzuFUZz
         xdu/0c5v6vHC/5VAu6RMEurAJ0zW/a8RtDLHMOXrlpxb6idIS2ec0xInltpLpbgxBCQB
         jxNwfxYk/1QHIz8nVHRmpgr0KmmS9/30o87M/faai8na6zKcLb1uE3IKR30bHeNOvqvB
         //oQpV5z58TxRIMW2y3VpJ/ZF84mQqzF09dIN1kMJOMf5r3Ltol60XU2I62aDpMHnzMV
         KC+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=7JbclAb5tZc3SM9YpQoqFOoCkJhDd6/YQmDcu7SUH/I=;
        b=im4IJy1rqjPbHpo+JjrrhlsQE9vVIazPCL+LAk/bWx/y2EghphnW3P4xbDZhpEieIA
         32WyUoSg9MAJOgDOxgdpXYGkAECT1w9S9dLdW9CWgQP5ynBXhLZ3bjDqLGSlzLW7SZCN
         w4QlSW/zmpdJYsvz3lZt5BIR+9PMd5/FsXYK9dDSCzKl/sjdVAFCcjnNi2avbb7W75o+
         wBAIPogsVM4KShU9+dM1CnNPt49SVwVhwM+BhFaAZX91Zwrhskxof6EPSP8ANLCtpbEt
         d4flh/lNX4UDVWvDuajL7P3dd65rydGDWX7Pz1Z29jIYSKvcLr0pCt7WbZw+ZD3hHNUr
         YBCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AdWbRjGj;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7JbclAb5tZc3SM9YpQoqFOoCkJhDd6/YQmDcu7SUH/I=;
        b=NmJcNukrr+1NqV7oFHilv7gOJQcGW+0O6Ag3Vhn6i0n0GL19UvHavlqBchHmzjwfvD
         aLfnZjZ0QD3kqJrt0//9dcOhoVAgY95ZcM7fEMicIwt+Dfmi5PBlCgmGQsQnZ2HPdzsy
         FaJiKo8HWLx/GFDeLWvI7hKn6oP/qYhlCbsxvoINBJxA/yGONqhuVPSKm7oett5HqJhH
         ot96cgeFbUvLjPtVt/cQuADxIyilqM2ZGwhOeBTN8V5EcuLFGjSHPQkoNqDU+VSdDP7X
         HcO5oKYtobxjRy0hHOtDNZcDBsaIHYQQ8Alf3MHita5/ydT9Zg14al4KdxTk9hV6nRUn
         z5bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7JbclAb5tZc3SM9YpQoqFOoCkJhDd6/YQmDcu7SUH/I=;
        b=mxakS9lOXEgJfZn9ChZFLcAt33HtWrniWbzZ0Fgc4GcKWjwVgQTxPtF3SHihPYBkNx
         gUVN2tekPvoJlz8QhLxnQGOYqtinh1BJ4ioRkKsin51GjGUy8ayAYRzTjLFMiNOWLpuD
         lzDspAXRhTpVI1m2JwIGrfHhkk77hPt8d/TtWybLhT80WoGLajKeyt0Jf6KuoNoaO/wH
         bO/VS5oMlObYNDx1wxEFQ22T+k4vZqbR/XKI6zCUMmYic+d2RQbON/fVXno35sa6Ku69
         qgQsKQrHn92ZjQ2fFHqvB40IbmGXa4Ym5PvnDz2h0ZfXuxuQLZnRZ3xbQtQ2ZQQ8f2aa
         mH9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533j1uxZqSsX/9tdALsdqC7ZB/Q4ehKMbIw9aBfx2Z5ENpwgRl5g
	YPmf4Hy2sii+yFSpFIkbHqI=
X-Google-Smtp-Source: ABdhPJzlmgKDGFLVYpvy2rXrdaZUr+yPc+Uv9LJ1Fj5MNz10ga4l5CwHT5ySuOvIov9uJeYDYXykvA==
X-Received: by 2002:a63:ab05:: with SMTP id p5mr22351983pgf.149.1616414136996;
        Mon, 22 Mar 2021 04:55:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:ec9:: with SMTP id gz9ls7557616pjb.2.gmail; Mon, 22
 Mar 2021 04:55:36 -0700 (PDT)
X-Received: by 2002:a17:902:ac89:b029:e6:d199:29ac with SMTP id h9-20020a170902ac89b02900e6d19929acmr19587988plr.46.1616414136551;
        Mon, 22 Mar 2021 04:55:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616414136; cv=none;
        d=google.com; s=arc-20160816;
        b=ElnDKK6+ugkjQDnqbFzhj4cMigKLO+UqLEPxxdAohAHPcwBtP6LSvSl6pEwfq3NtM9
         tQTepgwEKMzO/ALYGUEuXqvXVB4Qf0HsUN2nOKGkZCH/neNVQS+r6OFLsG80+Ir9Sli1
         3d8UWaB9e+PLlGKZ1P/pO+kpRYjhIUxP6qvnTR45sYrLwH7I+z9sYDvuA9QKker0sVyc
         VYY8A7heNq2jMIRjB2WCKrpeNsB83HCvvow/pXf7oXWDRrxD2xBbmPUynn8wKPK7qBYF
         MFglQst1CdEjXiDLgdDl0m8Ap560t1oVFjZldRSWoZAJsh6V/rYqr1Uxdz/s3lli3UvX
         DC3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=QerXd/xiVxEyC2A19zqFeE4pK0udvTD3hfoyyy8bojw=;
        b=VeKXiQ2CTNURYGeqXf1fwjXm5ntbbCjSPSX77PwMny0nt3Kzn8dvIZBrFd/Tu3cQsX
         RfaQ+JLRwsbOCSeEq97FkmKg432XBeHPvEanS0bzVPS2qSdC3b75ndEie/bioShmj7wV
         1qGrImtdJfnlU0W6D+oBLeOZzBk+bsAxoyGVH8ipE4mUuN1dmNxianxwuL7S+7xDBIIP
         8KZCs8uSGD6i37FLthr5qxKJI1yGUQhtk1hKPJIR+cO2bcIbM7POe/w/fbOBFBvyqWB5
         d2buswuS6yGhvGAsYnd9fIgdzT9cBxZiPKE3c7COPqqCRHW4qQalEAJ+JU9wKb3Up68b
         6VzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AdWbRjGj;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p7si818586plo.0.2021.03.22.04.55.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Mar 2021 04:55:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A656E61990;
	Mon, 22 Mar 2021 11:55:33 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Will Deacon <will@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Waiman Long <longman@redhat.com>,
	Boqun Feng <boqun.feng@gmail.com>,
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] lockdep: address clang -Wformat warning printing for %hd
Date: Mon, 22 Mar 2021 12:55:25 +0100
Message-Id: <20210322115531.3987555-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AdWbRjGj;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

Clang doesn't like format strings that truncate a 32-bit
value to something shorter:

kernel/locking/lockdep.c:709:4: error: format specifies type 'short' but the argument has type 'int' [-Werror,-Wformat]

In this case, the warning is a slightly questionable, as it could realize
that both class->wait_type_outer and class->wait_type_inner are in fact
8-bit struct members, even though the result of the ?: operator becomes an
'int'.

However, there is really no point in printing the number as a 16-bit
'short' rather than either an 8-bit or 32-bit number, so just change
it to a normal %d.

Fixes: de8f5e4f2dc1 ("lockdep: Introduce wait-type checks")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 kernel/locking/lockdep.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/locking/lockdep.c b/kernel/locking/lockdep.c
index 70bf3e48eae3..bb3b0bc6ee17 100644
--- a/kernel/locking/lockdep.c
+++ b/kernel/locking/lockdep.c
@@ -705,7 +705,7 @@ static void print_lock_name(struct lock_class *class)
 
 	printk(KERN_CONT " (");
 	__print_lock_name(class);
-	printk(KERN_CONT "){%s}-{%hd:%hd}", usage,
+	printk(KERN_CONT "){%s}-{%d:%d}", usage,
 			class->wait_type_outer ?: class->wait_type_inner,
 			class->wait_type_inner);
 }
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210322115531.3987555-1-arnd%40kernel.org.
