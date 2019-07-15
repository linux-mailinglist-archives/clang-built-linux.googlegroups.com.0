Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBTEMWLUQKGQEOWXRZHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B91E68D3F
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 15:57:33 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id a8sf9894748oti.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 06:57:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563199052; cv=pass;
        d=google.com; s=arc-20160816;
        b=PcF4p0t9LZB/IeIeqxO2cub1JeT6rgKr9jUFbplFrUDrJw6Q9Tr7lzsR4AnLNR118a
         zmw6ozVQpO+yiBCwnKFq8bEVBjh2rvFh4Quhp7sh+nQPQ0/qs0IR/Rm7KU/i2nZw5NDh
         CP7Pj/6xbPPmImyWl/JWvdkZhQMp47+qzmeXlEeoo1q6qgXwd0UR+K5Uel+ih6M11KW0
         1g8DB7xoEuIJAhjWnXTL7vbwbkXa2nPZw73GcsSe24dRgDMrjykLAtoRsNVMEo3X2QGN
         ILiadq0gHb+x/yxvcpLzYFWPmtrzLKzs9WB7fPcDZYlaKP+Vsg01tDbHFeMYzEYLCkmI
         mW0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=46J1fg1dUOGccIXsm7ew89bKsSJjW4Jyq/Z39RzM95A=;
        b=Y+vJdSByVTzU/ir6PysU029QqWCGTv3vKEolI7z5JLNJpJ+tmUwl06053NEYygJTVf
         UZnjHOajjw2YnkQNmHnqkX+DYpm+hqNvKqHArEnZz7lwRX2UsPoN6U729c/6I5b5F4y7
         jxY1/tLGGoniDjGvVfAwEpjhBYtiVmxkURZnCZzXzPpWFzlZXXiBMALD0ud3dJOpTbLI
         Cw9nTADFEhlpz36AnEygdNEALIoFxa6hqYQsTa6qPWsKSmwWP5Qt3ZQ6RoG1plh1MKl3
         hJZKIlC71jBqQXSweZwuyHmUO26Ikxw7J1qO+cVtCq1il66yVCMNvMuCatHQQjlGw9Su
         VnoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jX02P9PZ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=46J1fg1dUOGccIXsm7ew89bKsSJjW4Jyq/Z39RzM95A=;
        b=ZNvS7zw/tsIzt9OvmyOdKVwMmaSSDLAZLLGFL987vPwiJnzdTd6ZxtpvYFT8aR1yJm
         qxbrwt8TkJLoTSL1NRAkx4CUr+RdYSNsohkU2tQbywae43StORKPKMb2ZVgJiQpsdLji
         CMNqBDWZdDzzZ3ubQwcLgMz3skgx/A7nH8Sq8L8gVSsbBQYbXw9O/AMsAzchaKSiJ9ni
         VosgGsoZqDSK0totFvL/X7Bkhe+PqO3rS+bnDxI+XByeW9yo2OIzmkLLugl53xT62uzt
         924AQAxNaCWz+svGDI2lLlGrpb1Htofe/qFcZ7yCrOfG2B3sO++PW2EreYCQnkx70mIo
         g4rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=46J1fg1dUOGccIXsm7ew89bKsSJjW4Jyq/Z39RzM95A=;
        b=dv9Vfsp6ibQzBs6sk1hZBIkxtKX/paT75hpE4dBvGqBjYr+RPB6KnvA02+X10trNYG
         rny7PQjI5nGsST+X9q3SxuNJjUykMPOv8cgF8naVbPIb9b01q0ITY+OgrQPor2f0dn+L
         TD5SbdeEqyCR7ffObbm/T3Er2M4PlCruMQFnN+EBESfV5ClnSxOw6GBJWm6JZL/JgTh8
         HMfEU3mUbibYzjE86nCLBUfBuYjw8Jae8oNDUhPgRIYC2H8n0K6w+SiWLUvFX76jx7xj
         c5CdsESw7fVFvL4rMBmKM0RtzzSmjwIFL9oiLy0XOP2WDU0+fXqXvumu9a94TbQ+6grR
         PMBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUng9xdSyQJDoVrHqIhT+RetJ+mcY9FF2w2qlXcDqeim1Q+a7Or
	9KctBGyExY1JXXIB4Zn45tw=
X-Google-Smtp-Source: APXvYqz1sKe/x7xtgauySgGM5sZikaIAS222wiMgxE/I3pWJpCX2qJiII4DSadP84Dka74dDgiDk0w==
X-Received: by 2002:a9d:4107:: with SMTP id o7mr19460140ote.215.1563199052192;
        Mon, 15 Jul 2019 06:57:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:ac86:: with SMTP id v128ls2178545oie.10.gmail; Mon, 15
 Jul 2019 06:57:31 -0700 (PDT)
X-Received: by 2002:aca:b908:: with SMTP id j8mr13379482oif.70.1563199051907;
        Mon, 15 Jul 2019 06:57:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563199051; cv=none;
        d=google.com; s=arc-20160816;
        b=tyLBrwIl2fD7z32GzK+Pwzxa511FtCsGdy9rcJiBuuQL46iwLNal8GcANsBLVpCS8/
         UT0EU5TpOfB4s45OkVVagTmDNDKsRACcPVe4WR6TgMk+xB/hH68JDUk6+d/I0AIsWgTR
         rLh8qBJ22zlDsxXUhM6d4yKMSv821viNNAxxxh3seHwG8sJ/e3g9EeOrCWp9/3NG0jP+
         cfJLSUWESTb6H+LnWQmmXGc/XCy3Q1JfD+SxiBwfsvY3oDe8b+0D48w6g82hsUsnsb5k
         hl+XdRJsV6FPhcCLzW3jQ9rdmXlR/pFnFORQfckoZNkAdrCZsccyvOls+/1Qdo1tshfD
         RNmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=AeZ6AbkW802Re9iwwv+vTQTIlK34RtHlAH0rB3WISM8=;
        b=HZKb5Xc5SSomgmTVqpynHEIoP1Wf1i6w6Jqk0n4OWY0nQOsoye1pFdQZCVgxOcoK3n
         WWtk8VQIc2cTKCUd+BHju0axt8eqVY9T8vqKHu6bcvwL27wEzxnhIw4DiB2KiT6mYbDR
         NoyzYHpjAXMPLsCvwF1sA6c55SLpqgvaLEg6SxkVLK3+RQhNAbzVXxshjAL8Xhac+KrF
         6qTQ8HGNs6irnjnmpAyMYALgFwaW0EfTnmAdjDXd3qVM92NLFoczUIh5/a2Z3emOytgI
         ijWORuCNjy6nSom0vro5VLXShMq3ejLSuvpxnn/qJlwuRdnm+1n6uL1mp+YBuoibvM7+
         bc4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jX02P9PZ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 21si888342oip.2.2019.07.15.06.57.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 06:57:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0A6DE20C01;
	Mon, 15 Jul 2019 13:57:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jonathan Lemon <jonathan.lemon@gmail.com>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
	Song Liu <songliubraving@fb.com>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Sasha Levin <sashal@kernel.org>,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	xdp-newbies@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 175/249] xsk: Properly terminate assignment in xskq_produce_flush_desc
Date: Mon, 15 Jul 2019 09:45:40 -0400
Message-Id: <20190715134655.4076-175-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715134655.4076-1-sashal@kernel.org>
References: <20190715134655.4076-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=jX02P9PZ;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit f7019b7b0ad14bde732b8953161994edfc384953 ]

Clang warns:

In file included from net/xdp/xsk_queue.c:10:
net/xdp/xsk_queue.h:292:2: warning: expression result unused
[-Wunused-value]
        WRITE_ONCE(q->ring->producer, q->prod_tail);
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
include/linux/compiler.h:284:6: note: expanded from macro 'WRITE_ONCE'
        __u.__val;                                      \
        ~~~ ^~~~~
1 warning generated.

The q->prod_tail assignment has a comma at the end, not a semi-colon.
Fix that so clang no longer warns and everything works as expected.

Fixes: c497176cb2e4 ("xsk: add Rx receive functions and poll support")
Link: https://github.com/ClangBuiltLinux/linux/issues/544
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Jonathan Lemon <jonathan.lemon@gmail.com>
Acked-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@intel.com>
Acked-by: Song Liu <songliubraving@fb.com>
Signed-off-by: Daniel Borkmann <daniel@iogearbox.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 net/xdp/xsk_queue.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/net/xdp/xsk_queue.h b/net/xdp/xsk_queue.h
index 88b9ae24658d..cba4a640d5e8 100644
--- a/net/xdp/xsk_queue.h
+++ b/net/xdp/xsk_queue.h
@@ -288,7 +288,7 @@ static inline void xskq_produce_flush_desc(struct xsk_q=
ueue *q)
 	/* Order producer and data */
 	smp_wmb(); /* B, matches C */
=20
-	q->prod_tail =3D q->prod_head,
+	q->prod_tail =3D q->prod_head;
 	WRITE_ONCE(q->ring->producer, q->prod_tail);
 }
=20
--=20
2.20.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190715134655.4076-175-sashal%40kernel.org.
