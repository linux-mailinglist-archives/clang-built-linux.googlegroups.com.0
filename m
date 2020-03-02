Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBH5B63ZAKGQEMSCES2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6185A1767C1
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 00:02:56 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id t4sf965094qtd.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 15:02:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583190175; cv=pass;
        d=google.com; s=arc-20160816;
        b=GngaiFiJQFToM5E5k7MS90iGS9vNjp9/LypbhpZacV5JcHeLR4kvakU6KMbaHvm2/I
         WOAvhqUUIlmU9NHs5w0wSZgCboxKULToe13Tim1J2ZI0iBjP9gEzOjdXXaNF8CT9NYcQ
         7qV5wPAtr0zhgJ/QRSLxlSkLaeSzgRFQhLoqdEjB8TmsY+XAQfENYrGR+drsLkedvoUy
         W84aXO1a6scKrUd03pVAWm3H/8yvdJTc/r2Xxh3KHA3zR3qhogRKpUihKWHTLc6yNZR5
         bn1z92M/QEpnJb87dndcoo+3hYT44jRozVSlKjsZs7740g8nd1caE3arFWc9qZJIj4Op
         IeiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=QS6XFOIIlt0zGvEYpZxfvKMlKXqKkVNSEyV8nvHnmq0=;
        b=NRJvhF7bHGKTK61l6d/AEYMy/1bYXK+q9YxP2tAIMMC+Tf9aH81Qyz0q+DQr2gO9B8
         sXLDtpEQEeuxx63x8YZ+uYWvmdI+W8SlgbwWM5x6xmdD4NWvRfp59g+4mL2vZwLqsa2H
         a19qm/ZVz7+lRy/VKgZ6bgqSNyN7HvbQsKe6pal4PveTK1zYoRfwuxWz7TS2zPOnDS89
         1bGsNd5yNI+CggiOrWBPVtCsQOL0FdV7jcVuKTQ+RXF6TwDJXuY12FoJVcJtezBX64DE
         E3jaTuNUXI1KVRdKKFRrDLfqtfIuIGBE+5Id49XubPgTvPnjfNVQW+fWg1lpsB62+jUD
         FNVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TeAa4GF1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QS6XFOIIlt0zGvEYpZxfvKMlKXqKkVNSEyV8nvHnmq0=;
        b=fnVC4AsCbUhj/y5KPwnqQQh6fWdtLs7R3KwJEUpvZ8M92YSlp9xHf+ZcI0VyNxifau
         12LnFoz8Sk4S2qCde1IiC+D4riw9ptr551evCiPARp5W2cf8VmwbRLYiI/OClODKw1Kt
         R6VdjH5Cuj0quy0tGdIyn1/YFrG6uRLWyv5JzgtIzYYpujFOfFTQxD5Ph+7GQbi6OEVc
         OEZ2TkyjG5wVl2MYSkWwuB7u+hEqVnUdnkCy47XofgqR63NRUoY0nomk1ockgbyvwIwd
         dWWFMH1NE1sDveXXMirOtrDCKCD74haOROAHdntw2ftjWmViwYpYsYd8CZdECkbg9TXa
         hu+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QS6XFOIIlt0zGvEYpZxfvKMlKXqKkVNSEyV8nvHnmq0=;
        b=BUD+Sd0xNRthXjtqz2aQPEtw0swLb10uIzBC5Q26/DNY6yDNpS0d689d579w50Wxg6
         98ubUGatvGNBQl7blyuOgjQ9kxHu9pk6oecu4Tgy3l8aO8099XyAbMoRW9FhVsg+93zA
         RrP5U8nQTknKWWaX3rt2vpzfx2MiZA5Yj+yhBUk8FkuH0C9y+QlyLuTiNZKjYBiT+vY/
         o3ZRgKIitwgSGZbf5aLXgFzWe+uaKZBky5ek14o8gXe8C5HB+xXGYoeeb10F7BaRdxlh
         t0wOCOADGJp1yaqnE0sDeRmnbQe5eYQlkiyjxZxzY42gCsSnS9+gRrcQHY/E3KzCwvvu
         u+1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QS6XFOIIlt0zGvEYpZxfvKMlKXqKkVNSEyV8nvHnmq0=;
        b=peMiFu0RMekI1rWcAmQbhMDVzTbkyLLP2UW7E+ysSSj16FgQEL/J+P6EAINVu24ND7
         WJP1EXexCJGRokdMqOJY789/RDL7sJS7oijO4Xd4CoMD6SdJyMu6YZdsfw7w9PN9JQ2n
         MDbp98/AulrxFdtRCsQyCV+METao8bWzYE24P/8U2ZkuMx36MQBuO3SCp0TQhTOwS2cI
         tBbQzno0e9tw+XWSVVHtWC/oVH/4zX+NXBDJjMMYt8TUWXp1QvtrV/DmSb4rdXvEBbhZ
         A5MIoQEs9BxCRo26lwnxfY1hlocUbiFL097uBSJmlsgyTrTQNVi0rKrTkJxAz2mKMZQy
         fNFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2oYXo6KEnYTd97E2KaKW+24eM2oI4sDu2tAv+VLSiQ+tVrvnHK
	PV5oQ8t2ihuF/wJ38EpeEgc=
X-Google-Smtp-Source: ADFU+vsl3noIgmNxCo/+1+hq+QVx6HoVpbGKH4oiYfVTAa/RC3OwBGyowlO2IX6NzVw6wMfccRjWVQ==
X-Received: by 2002:ae9:eb0f:: with SMTP id b15mr1432555qkg.421.1583190175224;
        Mon, 02 Mar 2020 15:02:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:99a:: with SMTP id x26ls697489qkx.8.gmail; Mon, 02
 Mar 2020 15:02:54 -0800 (PST)
X-Received: by 2002:a37:8e06:: with SMTP id q6mr1509006qkd.317.1583190174913;
        Mon, 02 Mar 2020 15:02:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583190174; cv=none;
        d=google.com; s=arc-20160816;
        b=ZyjLSIyA/2XAFIVnfXb2Jw08uL7U8xJKZgLqN/NvRZtGiZcSZVB6VXLo/5IHqTHfjw
         J0DwRrLCAjYAyWiWZxk2GvmKxr1qlSdgjx99lFjAtNx7wd71VYg3tD3QixVOgXRpj2YH
         QrchZ2m4KV9eAQj72uob1HpfVbhtID7QzFG6C0+0jvfzxioJQgWDCG5n6AEuKXhhl6mI
         BJszKi5kemFJJYejvtGQgp/RNWwRGyVoICv8N+K+OBqMn4lLPTVPtwEmZaydcJYaZGe2
         x920+TveeTeZlhcVRTBXUJHFzA6y1v1SGi87xdRHrugD+ubkbOxPcuhU1pByokSzKxVJ
         xGcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=TQJUvsCfdhXZTMuK5P/1s7YDv4YpFHdf94n7B4huL1w=;
        b=LMCEMJEPDg9MuRVweIo7K0jOL7Jn/7oBgeTbO+A5AgGYJxQQig2lAYpXr0khXCrjm/
         2u0HPUpo7Bru5+10IBKyJXExujvLkwNgbG7IMRpi4lAQgXs8pFDUvIzlyQE5QYq2wgfQ
         vtgL0nG5Vh/TtilF2JaN2Dj/ciACGFxxwOngB9wZaPtSYRJmfcNJcEeIFpruW4bGDg9L
         IEzyzbYgHDi0EljFz7rC0WGMEwa1Ng+fGBn5yir1fVicIblkQVlRzPRefA3jjkHD+oxq
         4agh1iD6SSOxpk1WahHNCBYUWNGuswQgJkF4p47SM7uE/GLyeEspsQiFE8Ax0GJtr84J
         8oJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TeAa4GF1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id x5si809334qkh.0.2020.03.02.15.02.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2020 15:02:54 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id j16so1120311otl.1
        for <clang-built-linux@googlegroups.com>; Mon, 02 Mar 2020 15:02:54 -0800 (PST)
X-Received: by 2002:a9d:3c1:: with SMTP id f59mr1248078otf.170.1583190174381;
        Mon, 02 Mar 2020 15:02:54 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id n9sm3317261otq.73.2020.03.02.15.02.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2020 15:02:53 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jens Axboe <axboe@kernel.dk>
Cc: io-uring@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH -next] io_uring: Ensure mask is initialized in io_arm_poll_handler
Date: Mon,  2 Mar 2020 16:01:19 -0700
Message-Id: <20200302230118.12060-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TeAa4GF1;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

fs/io_uring.c:4178:6: warning: variable 'mask' is used uninitialized
whenever 'if' condition is false [-Wsometimes-uninitialized]
        if (def->pollin)
            ^~~~~~~~~~~
fs/io_uring.c:4182:2: note: uninitialized use occurs here
        mask |= POLLERR | POLLPRI;
        ^~~~
fs/io_uring.c:4178:2: note: remove the 'if' if its condition is always
true
        if (def->pollin)
        ^~~~~~~~~~~~~~~~
fs/io_uring.c:4154:15: note: initialize the variable 'mask' to silence
this warning
        __poll_t mask, ret;
                     ^
                      = 0
1 warning generated.

io_op_defs has many definitions where pollin is not set so mask indeed
might be uninitialized. Initialize it to zero and change the next
assignment to |=, in case further masks are added in the future to avoid
missing changing the assignment then.

Fixes: d7718a9d25a6 ("io_uring: use poll driven retry for files that support it")
Link: https://github.com/ClangBuiltLinux/linux/issues/916
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

I noticed that for-next has been force pushed; if you want to squash
this into the commit that it fixes (or fix it in a different way), feel
free.

 fs/io_uring.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/io_uring.c b/fs/io_uring.c
index 8cdd3870cd4e..70e4624af3c2 100644
--- a/fs/io_uring.c
+++ b/fs/io_uring.c
@@ -3738,8 +3738,9 @@ static bool io_arm_poll_handler(struct io_kiocb *req)
 	req->apoll = apoll;
 	INIT_HLIST_NODE(&req->hash_node);
 
+	mask = 0;
 	if (def->pollin)
-		mask = POLLIN | POLLRDNORM;
+		mask |= POLLIN | POLLRDNORM;
 	if (def->pollout)
 		mask |= POLLOUT | POLLWRNORM;
 	mask |= POLLERR | POLLPRI;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200302230118.12060-1-natechancellor%40gmail.com.
