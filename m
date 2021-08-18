Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBNWK6KEAMGQE5TYEJIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3F13EFB84
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:15 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id p4-20020ab03b84000000b002ab9500506fsf365808uaw.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267254; cv=pass;
        d=google.com; s=arc-20160816;
        b=O4tcnbcY3be/whpiPciKa9MENRyOAw3rwm7qpfCYruPL9wU3AYjqbv3stFcB7RNu9+
         EQmH0QmqhTPI9yY/+OxzoyBaXX1BiLSvARu411MPqTam5At3HghIZKlFGjzmog0bQWkd
         L5h3DGg5V/fzNgwEQOYPCrewTkKU1s1bMa3YPMYvure0Lzi2Mq8Qad9+k+aj1vhtQ7Es
         d/SrfcbpIFWFNlpb+nZzqnPXezdG7WZKfoMg8qRW2QznkLaHtFkxlwdcfACXuMvPLH8+
         mDMrxo4sEoZts+a7NoSeU4PtKw4UkwdqpF9A5kuoatFccX6B3Xvv1GRnVki3L9f5A8Yy
         wpxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TcWTrdL8AR3OM3W+hTf1lykYfgxUknfDSwn2amE3UDE=;
        b=O/6YCdRryHD4dMqMn4g6kE8mW/9XHZ6h0bn+xuNb0cM02kT2On9v9Xbd9ywdR7RypM
         aiOairiNEyLUlxCNeZYqZ7eJ261vl0OUfOlZ1VbHALEGg+Z3aXM+ZBYUPdJPH+ViEQSJ
         ZNBMpqr1jZoHF1X1hZqbyr+2qhRzC+n830+/zJAArVBWTGUMWgOrivAsrfzNWWPZJa2c
         6OHLGLK4rDxlhFkz6W45bVloLZACAr3KCB1abjBYuy8pGBNYX+RvqvUhGI4LRP9aVs8E
         /t1reuVyJZC2fEHu3MtxXjUfoKF5WVaiGtMzxcoEDDV3xfIYOrkBXNO2SB/WUR+cKGbd
         MmmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=a6bTyF6x;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TcWTrdL8AR3OM3W+hTf1lykYfgxUknfDSwn2amE3UDE=;
        b=dJGnaw934WBWWZrxGEjhLBaoAJdcK6z+85ipTnHhK64iqin0H6fY3piiK7KXMYGqu3
         pEGp9EqHPPO0n85rAABfDMqUuVIRnbqoYTatWd9qrSEQ8rKrtYV8TmL+Qkw8wfznDkVZ
         TDCecQVm2egwx8GTma8/Bb1SW11zuddBLbVn5zSFc8TtM/tkLZBlzSCXRRN73t/tlGOz
         V+Z60NX4D62yR8rcMkMDchAOn/MZ1t0KAz2FayB1aBs8BH8EpXfg/1SOWgX3XNOD5RIz
         A2Z471rHmyzQSEcjXI2E0c1w4tnLKRy0aazL313Ax7qdzkJ50jVF6pTsPU6QJlRNfX4J
         THZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TcWTrdL8AR3OM3W+hTf1lykYfgxUknfDSwn2amE3UDE=;
        b=OyqIN1L+73wV+Uomo36wsVcSKGW5sb2TntaaheyZCzO99QN0keAgZWniBTKVjH8tef
         9Is3aMwTsping3vYs8Aa2RiNINaPppxZfk79GI3I9yV4LWr53WtbhhPg6pzZ+v0G5xj+
         BLvvtO4GFKAlyVtDp9vsl3IJErKlu1hl353HMixF9O1P3Q5+GoP1RApbV3IZhlTZfg4B
         nURbH7PR8pNxLxytrHmV78PLxYVIgVvcixJSpTElyDcDvLNps/Rvwqddwh/ESlr3POH0
         axJmIKU6rfqjVjwfa+uorpAZ82No66+1ThfMoBZBdDs2RjBKwf8ceUKxG4+76+Tb4RvF
         Wp8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pKYGd/fmh8EOCX4cwnSnWBLrelgK/JBGd8i2PFovv0BrLovyU
	CEjuno+jzjUWlLXfB04E3Hw=
X-Google-Smtp-Source: ABdhPJy4m+wI1GIwzYJmF5295FUjsZ4uBHJNfzXWJ/zhBkjn0sDJyMbs/iMxqTcqcQjUejbRSY8gBQ==
X-Received: by 2002:a67:db0c:: with SMTP id z12mr3993415vsj.21.1629267254696;
        Tue, 17 Aug 2021 23:14:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:a81:: with SMTP id n1ls162352vsg.8.gmail; Tue, 17
 Aug 2021 23:14:14 -0700 (PDT)
X-Received: by 2002:a05:6102:20f:: with SMTP id z15mr6401950vsp.32.1629267254217;
        Tue, 17 Aug 2021 23:14:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267254; cv=none;
        d=google.com; s=arc-20160816;
        b=gPWE1+Vbt5NO3uYO0d+6JY/bXEi5sR5sNMgTXMFi9SowrnN0qX0DSZPCcd1KsAyXeg
         0drzD2tOln8BzN/Pk9oWijGfx5c+je0c48iu4Mv7yOOT7ShKEbeBXxDdzkhmLUcrTIfy
         RmOfsbr4FLUxn/Up01q0a+H44AB/6F1eOykjj+K+W8NosLKaB2Sy/tzEdaw029z8Vq8F
         TLdE+0tuQKS5ClC+zgPeXqhbTYPbbGTIFVYEcvIwG9N6x5dCMxxSvoGA/K2nFj42rarr
         cE1wCnObnGb4RxSOMiXB55NFf4c/Qowz4HSYZoSD71HC8VwdLxHJcswo53YGOuBFz8rf
         tOTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qcRMFUHVF6QqGnr97K+ATth5rLyNBKP5psUqyaewiPQ=;
        b=U4LuKdkoY3pLM61+9kdFNYq3b4xWfkHhMu/+BrVhMOOSnx1OXltqb1ZqZCczszvRCL
         WimlOzolctsWi5GtN2E44UTFZt+XWG+8MdNHh7Nc1ZpdIfdKRsgNu9v/mA7e239qNMtT
         ZDTMci/y68cj8jbX8j4SxZ8abq/L9JPUjOd9DELzcU7Qurm4n3A3Z6AZG0aasuy74nAL
         oX1zr7ScQxJxdzpXDSe+++vXpYEUb7e4uGcCJU5VHElDM0jRKCDJQJpe1fTL5ThVpGkg
         K1LJ+dH9vjiXecM4ztQ29tZY8d99qUdZiAIvpNCDAGAwg4WYU5PWmJa/0FguUmTxqees
         7rlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=a6bTyF6x;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id m184si218689vkg.1.2021.08.17.23.14.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id u21-20020a17090a8915b02901782c36f543so8184470pjn.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:14 -0700 (PDT)
X-Received: by 2002:a17:902:e9c6:b029:12d:4cb3:3985 with SMTP id 6-20020a170902e9c6b029012d4cb33985mr5959378plk.56.1629267253269;
        Tue, 17 Aug 2021 23:14:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l12sm5631661pgc.41.2021.08.17.23.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Qinglang Miao <miaoqinglang@huawei.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Hulk Robot <hulkci@huawei.com>,
	Wang Wensheng <wangwensheng4@huawei.com>,
	linuxppc-dev@lists.ozlabs.org,
	Michael Ellerman <mpe@ellerman.id.au>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 61/63] powerpc: Split memset() to avoid multi-field overflow
Date: Tue, 17 Aug 2021 23:05:31 -0700
Message-Id: <20210818060533.3569517-62-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1360; h=from:subject; bh=JCECg/Hewr4d9JO4WQR5kDd0IjByC1o9V4GNPJaYPKM=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMrEHk87hiQVCzgI18EL/HOEsDc4MJhIkHkaVTZ DZKWkUOJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjKwAKCRCJcvTf3G3AJjKnD/ 9vO5rK1NcyiJFD1V1xX5Q3QwJPN1EMRWYcJsr5dTRrhYDef2VBoAd3vGVJhv5tPWCziVR95zI+LgIL d02IU4Ow0Hf/RnPFBOD9Lk1pR4bdZqy2udFH1tE06S0wBxz6HBgDxKiHg0hd49XAZs+xsJCSVXM+ks ZJe+gXBJkwU0QQlyx97a3srOeF6TBCIwRbfsc1ny8kqeq7rHXhuez2Nl/jEpDrSY7P6MGZ0RS9pwGp BG8XE5jwyatTqBbwztRYJO6EDxF1oljeN+vw6wXSMzHTs0P0jZF+xhBsDePue4SrU1uYVK4eI314VF ytJTqzumiq1LoMoetRo7XbnZL9HC+8KQkD7iex+cbwbl0vBuTQNERQCXbWiuHcR7WbrVndhdzqr/qr 7kpYWqqHhGYN42VOTCoEV+CxxyGt6O1oEwupEs9JwlhAHT0ET/3m5v95ln9sj4q/idsJQyugW9w9wS B+pdNyiwZvnrIR6r8PjnSHwflJuJYyRkP28Ci+HZxNLOE9WlE6UmnuDmdrcVKpWz+nctnlPQ9JHhAq vpfGhXMnm0qF1zx5IYh+d69+ZRtUQbUKz2k4hFKSxvSse3CvWfi63pBT3m1O556umLnQD6zZbq4vQZ p0vLhJOR+anh57gwE1CG5ilwh9jU07xLpPrNzUQkHrIgJsiMsfqPJrC73E9g==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=a6bTyF6x;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memset(), avoid intentionally writing across
neighboring fields.

Instead of writing across a field boundary with memset(), move the call
to just the array, and an explicit zeroing of the prior field.

Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Qinglang Miao <miaoqinglang@huawei.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Hulk Robot <hulkci@huawei.com>
Cc: Wang Wensheng <wangwensheng4@huawei.com>
Cc: linuxppc-dev@lists.ozlabs.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Michael Ellerman <mpe@ellerman.id.au>
Link: https://lore.kernel.org/lkml/87czqsnmw9.fsf@mpe.ellerman.id.au
---
 drivers/macintosh/smu.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/macintosh/smu.c b/drivers/macintosh/smu.c
index 94fb63a7b357..59ce431da7ef 100644
--- a/drivers/macintosh/smu.c
+++ b/drivers/macintosh/smu.c
@@ -848,7 +848,8 @@ int smu_queue_i2c(struct smu_i2c_cmd *cmd)
 	cmd->read = cmd->info.devaddr & 0x01;
 	switch(cmd->info.type) {
 	case SMU_I2C_TRANSFER_SIMPLE:
-		memset(&cmd->info.sublen, 0, 4);
+		cmd->info.sublen = 0;
+		memset(&cmd->info.subaddr, 0, 3);
 		break;
 	case SMU_I2C_TRANSFER_COMBINED:
 		cmd->info.devaddr &= 0xfe;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-62-keescook%40chromium.org.
