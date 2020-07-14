Return-Path: <clang-built-linux+bncBDJPTD67JMIPL7VT7ACRUBCD2XQQS@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id B052E21E4A2
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 02:42:30 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id a12sf7511444oia.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 17:42:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594687349; cv=pass;
        d=google.com; s=arc-20160816;
        b=LadNX2GGlK4E+kUm0XCdliXVhys23fTj2MQHsa2JvqbWBQujGqQnmEQct9JgEkNDEB
         yO7wia2kbYlUSxP5vWvuVLdQy7ohhE2BrsKw6Yw8fNWHYH8BMbljZquBdeAWlhQ38urU
         lkzekqVFjNRju2MzSQUlN+8/yg8w9sy2FzNYoNiQwvSDPry7gx8QFhJVAF14oPEqvpS9
         M6PNbqkO3DIp6ZdJSXhSfBYjncLDIlksu4YPrhdC4OiACAwav8aFIjpgqOTFmLn0Wcle
         zXuD0oZWe3Aq91DWgnqipMUy7hhL9rZ6WloOhuq2fK2hm1unLrXrxBhK+2PpSpNXffVf
         iTlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=vrGy2Oec9fmhDxAeNDRdzjG3lk293UDE7Bj40st5dbE=;
        b=w2PZ/krHXELrJNBQhqBoy2GUXPURtf10zGkL/oDKN9maAMUd0+b7oCVPPXv2bb+g4C
         2lOWngk0iN1PWlNiBBYbI7z5TMsfJcs6MVEAY66i1SMP2xdfjpGReKTsS+xneZQk2MHy
         WuMBihb8pQzifTlQbjfRDVrUuq7QA2C7smXho416hKFB0HEHYJyYD1K2/IcAWva062lG
         lF7dhfghOQTZUwRkI0lpi1UakxwbyyF0Zo+jtZu5+GFUyFd+LRiyMiTuOdlpoT3kpbY7
         G9grp+/CLIVBH6p0T8iM9CDKSbziA9BX98dKhJeje0PwoYT0W61t392ukiSe7upPdcDc
         PDIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kXA12gfh;
       spf=pass (google.com: domain of yepeilin.cs@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=yepeilin.cs@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vrGy2Oec9fmhDxAeNDRdzjG3lk293UDE7Bj40st5dbE=;
        b=VVqjm8HzSVnO92zU1tAi9XPyLAUINDqsU0VmTbPraoLR0f2jRU6ICi39UXktAED0nP
         7bxCxZ7pQMfjSNecaHBLZ42298zNsNeArOEfZ8L4db3/bYcqDbMHcNGNhHLgEy/TRqLL
         5rrUMihjE5sJF4jnKF4GcO8KSpMT3BP+jSa+D59H44wHfJFYw73CoXirezPWO3q0rKY4
         yoQu0HDRq4oZrsIXY6+iCOgRBBtmUPdnYNEg+PmqJ1SnLFS5MX1yTWX5dRCYt3QWDbRw
         8Y4I7yMfMLsAddpD2+gx6VbInlZOKRfwiaDtSrhWF1v3WH771hYablxfHCMKcoc3f2V8
         /vag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vrGy2Oec9fmhDxAeNDRdzjG3lk293UDE7Bj40st5dbE=;
        b=ug5Lbf45Tj1v39IFJ8mJINrMzMOE1In9IjEfEcLtxQ6j93oTa+0d+jFLKkXQoJLi/H
         +N4IPYYYtEs+NEZEozAQ8lPZ9frSbSWi/9p3dLZ+aG7jRYeQ3NZ9lr9GWp+stzkSdo/y
         efPecf8Lnsk5Dl3iRF3FlyWGQJVyW7gv3NQJ/r2W2eWYDqA4kX5qVmpJFfvM4Qo5cgLG
         NMOjOyUxJFjmW6WeNkuw1HSdZ53cM6VqN0mXlgQfP/HPY7eq4Xw36s7V2sZadEM5jdyv
         Aa1oE1F0CJHfvsZ+jSv/ilLTWYbb6EQ53VuL5P92vwb+mXgJTkneKpfd4gT7MhAMGNVQ
         OOqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vrGy2Oec9fmhDxAeNDRdzjG3lk293UDE7Bj40st5dbE=;
        b=tPxVWjLOd3Y+Bw/S2PKhC9LZ+56VpngPk3eDITg3sHjEKSgfjKsY6vKPWh5vehj8hu
         62dIYL28OlWz1+Az/R66+S+5OvISXgd0EaklFsL/gKUvh+uR70OZS/3RhPRqvP7f0g7S
         ET2v+J1aX8DNBS4B9LjDX24qRPeAI2H4fV4fWC+qgduLipgyHWBG4WT6Eb0aTdlZ8k/s
         oG+qMJKnQkjnA2NaZrVOT++jO6sayMA6G5F3+RuyyihLS/HmOz+IzQN9ttR57kIIlakr
         CrH34iH/emuEklmf0YHs7DRT7n8ZiVmrHFyXvxvF5yzGCnVWI5nT1vtU7c1nlFgIZEej
         Ridw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338uBR8K88PlrVJEoXVEAEAbGNy6W/rYyHAYENjU63OJmcAZvHM
	lh9FEYVcGMwbMmLYMyKV+eU=
X-Google-Smtp-Source: ABdhPJxj8rGoNqM1GE6mSUVRzuUAP52CVWu2Y/x4ppm0phXSr3A5TXgCvtfE0yAW8PPJ+hAqrZ/5IA==
X-Received: by 2002:aca:6748:: with SMTP id b8mr1778292oiy.155.1594687349675;
        Mon, 13 Jul 2020 17:42:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c445:: with SMTP id u66ls3737391oif.0.gmail; Mon, 13 Jul
 2020 17:42:29 -0700 (PDT)
X-Received: by 2002:aca:af83:: with SMTP id y125mr1783807oie.162.1594687349330;
        Mon, 13 Jul 2020 17:42:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594687349; cv=none;
        d=google.com; s=arc-20160816;
        b=ZXyr54AfRtYN7bkYh9ve4G5HVMn/gndzi0QDXMNaJvwZQ+MIRLq7FsUZ+l8kcYYbTh
         cnLHA7jSwURxQM3wuOwea8QJRZEvTsXdqQEpuVyP9Va7G57+KHVPG4oKkZ6cSih5Na0Y
         1NonPXahHjXsijtRQQyoYpfLBFV185kiO11QIszOJIFpfCheAaaW8mFEAJQKXnQ9Sdhc
         ob9AF00mysKvtMb4pFw2yKkWTEcE1TSuD6SRSIOkSA819ragfE3qw90d6Q4HffSRlqBF
         wg8yy0nRxKKb92GHvR/tEPgUeE5wUpHxF8WVPzvh9pIO6ohs0KzZA3fNqTlV/hSPh0mt
         O6Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KdIW5He8ZiiCiJCefvMCxWAQ162LKqrQoM487o/uJO8=;
        b=vQQYHc+BKcsYLDYZ53G4BvsiKbO016QvR77sUQfTQfKTN+Mz1p+yjnBRjOOfeE7Fli
         9DKon/L3c9dyBjRVgb84Zoom8YdbKQkABICsqdySk5EBb6K8GTj12rmeuFG7DZMZQ+X0
         leePL59MgJSEdH7KVb9AF3TakPm832C82uSiDKKgW/+WsOfE/yTRTaXmVZk8uFZAx4df
         W0GP1Mh7BdP9N+v3HL7t+8QujmdJ6bBQTsM2HD0VpNMhujX0HoCYk3fcVgEy6/QM0orz
         pXRn1ZDEViMhawM9UDkSYfgBbIiQwPvxujOk59wzgNXf5/5nyqPoZ4VLFtnu9G9NYgEG
         rUHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kXA12gfh;
       spf=pass (google.com: domain of yepeilin.cs@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) smtp.mailfrom=yepeilin.cs@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf44.google.com (mail-qv1-xf44.google.com. [2607:f8b0:4864:20::f44])
        by gmr-mx.google.com with ESMTPS id n26si1008268otk.5.2020.07.13.17.42.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 17:42:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of yepeilin.cs@gmail.com designates 2607:f8b0:4864:20::f44 as permitted sender) client-ip=2607:f8b0:4864:20::f44;
Received: by mail-qv1-xf44.google.com with SMTP id p7so6727518qvl.4;
        Mon, 13 Jul 2020 17:42:29 -0700 (PDT)
X-Received: by 2002:a0c:8583:: with SMTP id o3mr2124679qva.108.1594687348930;
        Mon, 13 Jul 2020 17:42:28 -0700 (PDT)
Received: from localhost.localdomain ([209.94.141.207])
        by smtp.gmail.com with ESMTPSA id p36sm2849287qte.90.2020.07.13.17.42.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 17:42:28 -0700 (PDT)
From: Peilin Ye <yepeilin.cs@gmail.com>
To: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>
Cc: Peilin Ye <yepeilin.cs@gmail.com>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	Andrii Nakryiko <andriin@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	syzkaller-bugs@googlegroups.com,
	linux-kernel-mentees@lists.linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [Linux-kernel-mentees] [PATCH] bpf: Fix NULL pointer dereference in __btf_resolve_helper_id()
Date: Mon, 13 Jul 2020 20:38:56 -0400
Message-Id: <20200714003856.194768-1-yepeilin.cs@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: yepeilin.cs@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kXA12gfh;       spf=pass
 (google.com: domain of yepeilin.cs@gmail.com designates 2607:f8b0:4864:20::f44
 as permitted sender) smtp.mailfrom=yepeilin.cs@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Prevent __btf_resolve_helper_id() from dereferencing `btf_vmlinux`
as NULL. This patch fixes the following syzbot bug:

    https://syzkaller.appspot.com/bug?id=5edd146856fd513747c1992442732e5a0e9ba355

Reported-by: syzbot+ee09bda7017345f1fbe6@syzkaller.appspotmail.com
Signed-off-by: Peilin Ye <yepeilin.cs@gmail.com>
---
 kernel/bpf/btf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
index 30721f2c2d10..3e981b183fa4 100644
--- a/kernel/bpf/btf.c
+++ b/kernel/bpf/btf.c
@@ -4088,7 +4088,7 @@ static int __btf_resolve_helper_id(struct bpf_verifier_log *log, void *fn,
 	const char *tname, *sym;
 	u32 btf_id, i;
 
-	if (IS_ERR(btf_vmlinux)) {
+	if (IS_ERR_OR_NULL(btf_vmlinux)) {
 		bpf_log(log, "btf_vmlinux is malformed\n");
 		return -EINVAL;
 	}
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200714003856.194768-1-yepeilin.cs%40gmail.com.
