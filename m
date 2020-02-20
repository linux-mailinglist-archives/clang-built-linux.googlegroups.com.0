Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDFMXDZAKGQEUDU7SUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3DC1656A3
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 06:15:57 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id n26sf1847580ioj.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 21:15:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582175756; cv=pass;
        d=google.com; s=arc-20160816;
        b=hkxIRKRGZCKGV1uUEJKZ0V61jLv6RuaLm/xNXhM+uG2I87CvhAo6i+J2XFzYODEVsD
         VnD4hHLveg67UDQi+W78U9Q8HDFxzE3TrhvPeIQGF2qjT8GIC1Pd50IiaGdAvzZEAiWK
         nIx1+nsipOB40JwsSzw2FUNDsgANJGH/PMlI0z2shvaKqWr9+69ebDfjhg7cMmZN9OeN
         I5ibvSn3thqbiNle0FcwhiFuUtoPdniv8J7eglWxXuQh47NMSPROzaYRTe68/2gvTk/V
         NluE2H2iSRRz7aObLVjGmGfcV3RD+2Yb6ctMy4rSMvazgiiyvknn/k7vkJX/OVEtQfus
         8xWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=ETGUO6UPZZypdkJV0tsIQ8oDDFFvN+V/JQlHTtbYqf8=;
        b=HzQCe4tt2rDwb73r3vgNr/txxmNNrIIDPosb+aabOMt3D00fis3Ha8YH2lXbuF9HUm
         pkMRiRTr4ozwp2uZ45n3cj6U1hEiVtaXtQYebiGMhM4DPXiwX7FgAWwRDsIkCW7/+2YH
         cTwI5CX2hkbbd2o6UiCTokiFZqsvbTZ8LdoQeM+7G96wYfvGQaIIhKMA1z3x0NCGxFkh
         WsZ3XbL/Zp2M7mH4hd6Jm6IE/oWXPLxUPjtzRu9T+IIWNmVaAdCKMsSbCcsu7rOeDP9e
         39FbeTEO1qC+QD1iu1uuRYT7nm1z2zQFmRNbHfg+d1eXgQUw9+KCyyiAQOLcc36bW36u
         k4CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xx3FHDhV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ETGUO6UPZZypdkJV0tsIQ8oDDFFvN+V/JQlHTtbYqf8=;
        b=rgh+P4qrDws2hPVHIjiU2ohiSkpdDSvGDbU3MbZdo8eDmnNizgkbk+093NRRmrmKl5
         rwGHyaIEFECWSscn24+cap4jnWIakFz9UpzA4LPxYjyiptd6Sp4ScV3+0QAPApp0Dg4u
         vZSGZX6J05Yig135jfNnb46O/x5QaSvkdf2HadsFN/sfkLJr5nr9oF7XLeltUv/oaJI/
         80s6dVpZWQt5A7/L9Qjdxtl1EJwrHDYx+5Uh8BnUJlzYiL8ixoUZagowzL4u17WTXub7
         omkPgJqPgR7lbDQ0CHON95NXwDREMXL/FDxyF50XK0QKieWX52ArQcgvUO39oOvKWmgT
         zsJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ETGUO6UPZZypdkJV0tsIQ8oDDFFvN+V/JQlHTtbYqf8=;
        b=Q+ezxlXVupmNiFGnlGRdpwbl8kpqhFG3pmYXwkd3aNZkkt9Sc1zoZbLTRmt9cEToe2
         tepbSG8gP26hqZ5z/cuJw0nHrFfMEd95dzmxxY6ES0Tc3raJ6IzJYsdnftJHPyZZc9yr
         l1MvXyXydy34+JOZnYrKbPJxkUieQCqSwlv6evOBsmNR582PXruAKaJZHwqjNsvJux5A
         N4QbNyDnG7h5CNucTmaUxesiweWdFdLQbcCdeCMrA9Shgsp8QdRABo+ADTLreu759USR
         85c8hpPGYxm0qQJfeckXkzVDVQJH9ch1/rxUVZqXLVWMgspbLsArd60ny6Myjc1YJKmz
         Kl7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ETGUO6UPZZypdkJV0tsIQ8oDDFFvN+V/JQlHTtbYqf8=;
        b=MmzDbtThGbdc+76qfH7UjHdtrvKOGdzMoh16pONX0Kkivuq5Cwl5AzpdlL7sWCs5OG
         jBEKaw4aEpVxHNa34ZLyuliIsAFaCgDrLG87bUsLKHHRUxdqJhnmH6ArmdrXeR9cF0lq
         FZk/DLcnyFtdlWxSgJYlXPOzKj09Kb1bdCmtBa/VkL2VkbGgqT88AE0fK9NubpsK+aR/
         KkuHccViyRCfg38dAzI8L7P1jJj8xq18AVW/BwfbG+LSD4RCjVDVxa5b+1ZMr4ABpJt5
         7DXDiv+L0l7qyWQ7cpx+Xy4vKvORgSf7Z817Zg9YwP/6SbcVr7NjR+EROlfjPX2ishaA
         M17A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVEHeKDYSi/iBs1Ct2GJ3scyGvjGpGWHqLXeZLnFPU5y177LCfQ
	qSxVpqZmxGYaf2y4bpBxOac=
X-Google-Smtp-Source: APXvYqwtKhqqm9w2CNhad9bUZvKB+edfBhaZkSn1NI9fwIXL0WCoUrSPxwlTD/oaIujQbxHq3nGGOA==
X-Received: by 2002:a92:1d92:: with SMTP id g18mr27800417ile.23.1582175756582;
        Wed, 19 Feb 2020 21:15:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7010:: with SMTP id f16ls206365jac.1.gmail; Wed, 19 Feb
 2020 21:15:56 -0800 (PST)
X-Received: by 2002:a02:51c3:: with SMTP id s186mr24256104jaa.127.1582175756204;
        Wed, 19 Feb 2020 21:15:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582175756; cv=none;
        d=google.com; s=arc-20160816;
        b=U6WYypIu4J69ivskXC/9J7r31DGN5ACY8JwakGkWFnUqVFRBup+vwerWZtHq+J1/p0
         LN8qJKnxGH2jZmraposXPPFL879IW1mA8IPk9Uk6X0iEdPgX1OvT+DM5bb76csT+adfP
         mX1ZymTqUXfStK/oojiGoUoUhYgFTepOlH8ofuBU6O5k1ZJlbupQfHLnQ466Ff6SVSh7
         FRJkwlcd637qvaWNummxfv8TOowR1lNETA/22KclILNdPweM73/ffzG5p25buLe82R2b
         aU2qnIi5t6yjW6zXnbKNABEMAwAHPofmmHBruJzCbzQzJECRhdK2kMSbXL4X8RhGw0TZ
         S7Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=vI7Ptj3tyiI6Bv9R/KxNJDPiLdqKFuHEWY4U42IkyNA=;
        b=jzRJIaJFJyLNivr2Kw2b0Fp5YH1iDTH1eqnq6aER27rgX/BWkcnvWU3weP5y1h2YPB
         67W5mW8+uNOzjeaovTRTSbKMojiM0l2P5AzAZzN3SLWYEyCuei3C1Ed4jodRb2ErsIBw
         RbO7nSzVnKMDvLZfqDgNil/y7haqKK5G7k/YlQ3E6zK0udeubS2/uZA1jcVosPSTUoxI
         FBCWSrOC6gSxm7Wpl65d9AoKsEN4jdCRrrICK+F5JsVjK4UTuG8SfIcPqtGdumcyBMpy
         P70HypclzKgWQqnyOgyAZLfnjQ0v5hZwdAVqUb4etwLOtYYVWUrfP+pdGLn3J+Z62JB3
         7rUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xx3FHDhV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id z7si101948ilz.1.2020.02.19.21.15.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 21:15:56 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id i1so26305170oie.8
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 21:15:56 -0800 (PST)
X-Received: by 2002:aca:4b0f:: with SMTP id y15mr786374oia.153.1582175755792;
        Wed, 19 Feb 2020 21:15:55 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id s12sm756411oic.31.2020.02.19.21.15.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2020 21:15:55 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: linux-mm@kvack.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2] mm: kmemleak: Use address-of operator on section symbols
Date: Wed, 19 Feb 2020 22:15:51 -0700
Message-Id: <20200220051551.44000-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Xx3FHDhV;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

These are not true arrays, they are linker defined symbols, which are
just addresses. Using the address of operator silences the warning and
does not change the resulting assembly with either clang/ld.lld or
gcc/ld (tested with diff + objdump -Dr).

Link: https://github.com/ClangBuiltLinux/linux/issues/895
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2: https://lore.kernel.org/lkml/20200219045423.54190-6-natechancellor@gmail.com/

* No longer a series because there is no prerequisite patch.
* Use address-of operator instead of casting to unsigned long.

 mm/kmemleak.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/kmemleak.c b/mm/kmemleak.c
index aa6832432d6a..788dc5509539 100644
--- a/mm/kmemleak.c
+++ b/mm/kmemleak.c
@@ -1952,7 +1952,7 @@ void __init kmemleak_init(void)
 	create_object((unsigned long)__bss_start, __bss_stop - __bss_start,
 		      KMEMLEAK_GREY, GFP_ATOMIC);
 	/* only register .data..ro_after_init if not within .data */
-	if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)
+	if (&__start_ro_after_init < &_sdata || &__end_ro_after_init > &_edata)
 		create_object((unsigned long)__start_ro_after_init,
 			      __end_ro_after_init - __start_ro_after_init,
 			      KMEMLEAK_GREY, GFP_ATOMIC);
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220051551.44000-1-natechancellor%40gmail.com.
