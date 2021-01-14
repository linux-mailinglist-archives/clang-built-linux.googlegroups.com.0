Return-Path: <clang-built-linux+bncBAABB4XPQKAAMGQE2O7L3FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D632F6D30
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 22:30:27 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id l23sf2968147oii.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 13:30:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610659827; cv=pass;
        d=google.com; s=arc-20160816;
        b=ey/3qH7ZPRxBzxYO03TgLzqA2hkOcAqW5AhAEaj7mIMskNtcoq98UvggSptbAmiQ+l
         LFeo4JWPO6XGZdEKRg+ZSvTTLwQGHUpFW1UaSMou/9rZ38gg6ddhzM50fUCm+etioECa
         BoiSf4gNY5ooBUF9bDB2bAMYk+XH9tBALSPf3N+aKnuz9TIQBdnNuaupKAu3/zxPvy8K
         sgNmfmAAbJrcwaQTKnNHPZzGgnPvc/kUThCPDRKctK0IbO2TJZYAw4TlQUs6Fq321TY9
         6ibLVyoshS+BtIo0rQM74UxKp3iwHv7EWoLa2ctfdzMYo0UDa3mAd4AJAcElXvWvKx4Y
         64vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=OQZiYKdyRgAFspxe9neh4P0AyKZiNBIbPQw48bf2L+w=;
        b=mjWK/DgE0QEn77iMJ2okcW2Y94gh4mSXIg5mHEnRHz3PHD7MixZxklrYBtAGZJVK6/
         fEPqKfEwto5XFZS0+cIDR8Jrmqnr0jB+S3n/4K1zXUx3PjJFcaUplQqCYrWasmTd90mu
         fPkd8cmA2HUOyMV+7KzhX/Df0Qprfcc6gyXQzFVuarjrBQ5oXCuj3XbnDEIjp/9+i7of
         rFOkRw6BYznC7uoMlsA/e3XWWjTvCgbDdxWtouC6XswlHcCrt1uezKBNHnfUzgWMaEMN
         TXbfPYEakYOSV371SZ1kPS2S4LwMgwaFVdnElPfZke/Unj+1XUgNcYSu5/ovIpnhm4X6
         xThA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tQNkbEvx;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OQZiYKdyRgAFspxe9neh4P0AyKZiNBIbPQw48bf2L+w=;
        b=iX+3L3jQxoD8xht1AaaCDmFqnGNsMsRWvTWNwdqL6bDCUsaxWToNxBgutSsJvpUKcb
         w27K62m+Beb0jaF07Hu3waSzdf2fTgNffO88ELmtpkhJA9N8vFMwHe2A9b+i1tsKGzsZ
         pc2lhNJg+z/jNWrpbKEV+qH8/tQMHcBha4iIVuIHEOucmcR/Q6mzJU4SLZ9Erp9ZVZuG
         CNike5xl1ndVD63Vv2u/GVB1dd3drK7lv56M5naJvUJfjpAc4HcywQdKuU/aIFBT9mOG
         0DHfE5CEus+5VgctcVNHT2U73ou1bOqaWHUW207M36ujzMyS88blI0D8Z7qY/NOld7dF
         J0oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OQZiYKdyRgAFspxe9neh4P0AyKZiNBIbPQw48bf2L+w=;
        b=aNBAa4PJHIzr8Q1DtN/9KTgCb+X9IeVAm/ca+BoPPcwrCrj/TiZVMDFkIIAs6/PiZI
         13fS/mUShVxsrzUH6Y72LyFzgvNMm9SK/gVshp+P/FizSXmIq5O5DGnQhRxzUEzjIWVR
         PTU0omx1wdmlNrpVY9dJlSai/+KEVeFI31QdPfr5VOQUlimK8eDpsM1reRVKOXZRqHQa
         R9WcwFh4S7kB+aFsFFF0cPndF1DilGETZfscYq+EO2cmspJCXjikyKx/PEDjNjjFh1K6
         0Bc6dDT2xF5tmdZ5vtkgk9cXJhFNBtfEFfJYw/NXyWUTnJBJ80mpQ9O+ihbqMTooLndj
         nNZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53357zKH4Vnn+cYhZBkE+9zE4JqYV+YCyLZc3KvR/Z8T6YdyNQ+4
	Fj6ArBtOU+vekha40u+DIUw=
X-Google-Smtp-Source: ABdhPJzs/9wK3yhEwIGuruQhuTFapHndXtRNsLv6rCaGckt5+hA8P7ujn0Q4nXnkzwvEAq6jNYWxsg==
X-Received: by 2002:a05:6820:381:: with SMTP id r1mr6007126ooj.73.1610659826873;
        Thu, 14 Jan 2021 13:30:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls1689557oie.2.gmail; Thu, 14 Jan
 2021 13:30:26 -0800 (PST)
X-Received: by 2002:aca:dd03:: with SMTP id u3mr3870420oig.47.1610659826449;
        Thu, 14 Jan 2021 13:30:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610659826; cv=none;
        d=google.com; s=arc-20160816;
        b=YjA1Vjjx8mKQvNFk3mWQWNBwAVbBAbwTPs9zvLNBZBAAr2DoWjC6XPOe3hUlw8FK5D
         VPJ1WiF0wLlcf85p3ZLpZJv7oVBzFjo1LksTWy6ABR9vCm2gJhU1nvkygfsO4jZWQSYk
         lrTBwI8f3mFOcNO4n/o8PEYPebdlD7HQLnSHB+WOAqdQd5LcxPx5rPUIGTCeVDMMSji1
         QhiT7A78EwKhyi23BqJyOqiCmS9QoTEBfDRxq4crdjpoFzFqIWICE60nrMjHA3xAFb2u
         oZDgXfapfKOJlP89a7tWpTT1FgdTLOGJDYcqXwzpbEo69GJMRhLvPd25I9hi/m257pDZ
         MhLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=6aXl3pZMOc0qS/PHQG24WoGUNNGK8gfse7mlKSfmJBk=;
        b=YNWjqrQzE6lnsT18ZFt0iD717blkrsx0q0gJS8ilu1haKVEmwW0XikEkL9GWg1UhIl
         vKKNiMMpBzi118BKdxVctcDAziqiHeW6U1PSqAVyf/EVaHwVri8MYM/r28M8JaSZ34Nz
         KsEHzME7o4AshJz+VM+zbntSDS03xfxC/wUBfBUS0Tb06qJKyl4zdt14QD73OpfByCGk
         h2P63goqg3ghlg6mRLucPEKsKgeCyfqlGRWlV19KmMpM7TACXNnlVLHPDmowwofIbRUA
         rqXft+DRj+EKwoAUQREmvXLkLyINuc9uDRqBH9pRDoGELKO3jBmkjzzK6fZWG2HCNxO/
         9TqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tQNkbEvx;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f7si365865otf.3.2021.01.14.13.30.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 13:30:26 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 35C8523977;
	Thu, 14 Jan 2021 21:30:23 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Richard Weinberger <richard@nod.at>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Eric Biggers <ebiggers@google.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Arnd Bergmann <arnd@arndb.de>
Cc: Zhihao Cheng <chengzhihao1@huawei.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Wang Hai <wanghai38@huawei.com>,
	linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ubifs: replay: Fix high stack usage, again
Date: Thu, 14 Jan 2021 22:30:11 +0100
Message-Id: <20210114213020.4108485-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tQNkbEvx;       spf=pass
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

An earlier commit moved out some functions to not be inlined by gcc, but
after some other rework to remove one of those, clang started inlining
the other one and ran into the same problem as gcc did before:

fs/ubifs/replay.c:1174:5: error: stack frame size of 1152 bytes in function 'ubifs_replay_journal' [-Werror,-Wframe-larger-than=]

Mark the function as noinline_for_stack to ensure it doesn't happen
again.

Fixes: f80df3851246 ("ubifs: use crypto_shash_tfm_digest()")
Fixes: eb66eff6636d ("ubifs: replay: Fix high stack usage")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 fs/ubifs/replay.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/ubifs/replay.c b/fs/ubifs/replay.c
index 79801c9a5b87..0f8a6a16421b 100644
--- a/fs/ubifs/replay.c
+++ b/fs/ubifs/replay.c
@@ -559,7 +559,9 @@ static int is_last_bud(struct ubifs_info *c, struct ubifs_bud *bud)
 }
 
 /* authenticate_sleb_hash is split out for stack usage */
-static int authenticate_sleb_hash(struct ubifs_info *c, struct shash_desc *log_hash, u8 *hash)
+static int noinline_for_stack
+authenticate_sleb_hash(struct ubifs_info *c,
+		       struct shash_desc *log_hash, u8 *hash)
 {
 	SHASH_DESC_ON_STACK(hash_desc, c->hash_tfm);
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210114213020.4108485-1-arnd%40kernel.org.
