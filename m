Return-Path: <clang-built-linux+bncBDV2D5O34IDRBC6JZH4AKGQE5IFZU6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 65647224826
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 04:55:07 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id v6sf10672111wmg.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 17 Jul 2020 19:55:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595040907; cv=pass;
        d=google.com; s=arc-20160816;
        b=JUFL6uwz5K44FpzPMTCfuQq6ZodvUdxnawPUVSu8K1fmW3GEwQMOGcADxNF53Xy3lD
         +1JdKs+5tcRVY+1elOt5rEs5etn6B1r7NKW0gYLL95V+jGKmSrHN31uMVXr7Kj6IDmTz
         M9Hm3g5GBIirtoicQNHp50YPN0x1Uzzg9ZrKNR7lCfG42dRSV7nmProMFLeYBWUXW5np
         7WAUoX6zUw7Ll5zL2jLeGDxRLRyKtLBUSZkiC0P5dMPFD3VvdkrTM9afILx1un1Zdz4K
         yQ2CoUe1VqipU4PS5yvEXdrSBlL8bIxLETDRh1pqvBLNPLEkXvmqsfWUPjNtShb33IgJ
         IssA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:to:subject:from:sender:dkim-signature;
        bh=ttPkPBJuFMvJijrpN9sYNX5szZTVsHQtAkazwUMdaQo=;
        b=dlXA2MNRHXRWrYZgG43C4oI7IPccTkCAW4InfdGreNS+QZjJ0r2S5Sw11tWDBpjBAk
         vkRIwzu8gXgS/g0QGq3BeFIhZwdRah8OlSSSC8C1zVkNPmwwwWaXx2sBvv8OWLVdGQJq
         uBMxJkP9WPawMWvI0figUuuIUcv8orH26M2H+T4hlJ2QcGioMvCJuWQNyFqChMYs6amf
         psBe77DuTSrMsDA+F0mLZ/LwbsIyg2xUf2VTTeScy9WIQRLI8p9P3Jr7AaxwFIRR7wtJ
         da6Wygac0+7x/e1NxAfyKib9yqfezzM3Q0/U2HRXGeOppkHqtt5DVmmM5aHzpPfS6WBH
         oHfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=h9Dcau0Z;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:to:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ttPkPBJuFMvJijrpN9sYNX5szZTVsHQtAkazwUMdaQo=;
        b=Ut9DAf8u24PqG626hBCkJZ3AdlnokuK4RWeRGv58GfGr+zbUA/Dol+x66RlxZQ0vKp
         PBvEcX2pY5B8tTngRwlXFPAIthsvDOIDLyc/3YeRfIDx50onTMSZP8Oq5APg5sudtO1o
         yTbLZxaZbzVHGS9k87Zn8g0G+S4iKWcyTJJ8Rrl4mrNFtRUtgYHLAwvzvn/6sLd5jkCN
         ELllQ5GXuA98jpWPs2q5fd69CmLr26Xl49HdUd/L/+YgMvERG8jnm1t3NQ8avHYd8UCL
         v6iYSBCrsbUzKK4Cg1MCjI/1ZBI1V6lchEaBp9RZpS/LfSfUfJEv7rKW3UBvXlFihjIP
         iLjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:to:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ttPkPBJuFMvJijrpN9sYNX5szZTVsHQtAkazwUMdaQo=;
        b=aE70hNRvx5bcw96Ui7rpnTRAQjQ4HSITtpkveNNCSJrt8DcnUnG+zm83QuwWoxDXBe
         tJ3gZj4ZoLu4apiyKRGCakY5urOYWhiCoSDbD8GB9DmAIohkLq1cA0MXn1arI5qYn8p8
         Tvwj0jHW8flnOd8UuLhDJQvVXvwgEe4eht/p4kbJLOYJmPvfrlWKGJC88qoZr1UDm+dd
         IgVwMPiYRs6h+5r90LEow/ehc15BfKlIQ4UrXz0dfLRteidi9AQFPk77C1qfyHjbZEoL
         vofljXk/6qL4rOJR9ZHP++cvf+0hBc7iyG/zwaDWec1wo7Kr989Qx01fv/Nxlg8gF1eT
         QA9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53115dZhDSonw9PCmHr9NA6mezozUNULNDwvRktnth+3k282USkb
	8Fp0wZ8JOAkmPSrl/bxUpAA=
X-Google-Smtp-Source: ABdhPJzB2y9DX8Iwvr5Zimw2FmUPr0GmGrbnAnxqb3Vnx32Kc+oOLxwAcTdKEv5RnQplSRQ4AQxTVQ==
X-Received: by 2002:adf:e50a:: with SMTP id j10mr13769523wrm.71.1595040907093;
        Fri, 17 Jul 2020 19:55:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9ece:: with SMTP id h197ls4633721wme.1.canary-gmail;
 Fri, 17 Jul 2020 19:55:06 -0700 (PDT)
X-Received: by 2002:a1c:acc3:: with SMTP id v186mr12433404wme.79.1595040906593;
        Fri, 17 Jul 2020 19:55:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595040906; cv=none;
        d=google.com; s=arc-20160816;
        b=gyIGHNuSFTucRm+a56GXU1vRSTYOg9KSItw1TWb2hdAllD3GjuZ1wmJ9WP8NSp4IJU
         pudAegDTBMFS3kMZFB3Pyy3dfzDwF4tQmk0f5NL6amrC+kiXvsuhHEnG53mZIhlh/jU+
         dfJTwk4r7VjU0K3bu29bw9YVwuLjcXOXxDqeVshYU3Pi+Vzcwk5NCw2zMbNn0umN6MAD
         1UPbEu8vxifQsPsI1/0l5zIvQCD/fZb+AuzfqbF7RK3b5+G5BwERlOSeVlz++uK623WG
         0DmRdCmJFqQCyM95/lJzM1cHQ0GUSzmx94htrSor4OvU2dH45gqEm135O0fAB6FcXyNQ
         x/yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:to:subject:from:dkim-signature;
        bh=9XVmt3tMTBJ+DnRqStU6NErngxKBvMZ8OtN1V0XNDpI=;
        b=FxbC0fCQ0q2Ma6TqYrDUjVo86wPX3KJjChKwYKn5rz9W4Yee8XEzqwryYbcVJYmdfI
         igLuj4D5ViWTeSS23WjO9LxbMaSzcsA9/7YBTx3MimSZQ/MmfDPFJ9JRsd4ocxrNf8xC
         0osKg6wwg47jjpFX0fRLNsD05fFIY2BE2wQcMHAy6uNQMCA1OErSr271hUPc4GuQxhjW
         UGJJhKtj9Llh/Myls5d1bEelqZoKdgJqpWM1EA7o9RgOwgKnxjOMeOtVw5LOAT8ghBtJ
         OWgu+FclFJfRiZaVI6z2doPRSo8IYlM3hPzMEpfZ0i6Ce5iR3WAEXLDWn74tq+k5+Xbu
         4Tfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=h9Dcau0Z;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id r8si406583wrm.0.2020.07.17.19.55.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2020 19:55:06 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::19c2]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jwd0C-0006oK-Us; Sat, 18 Jul 2020 02:55:05 +0000
From: Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH] clang: linux/compiler-clang.h: drop duplicated word in a
 comment
To: LKML <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Message-ID: <6a18c301-3505-742f-4dd7-0f38d0e537b9@infradead.org>
Date: Fri, 17 Jul 2020 19:55:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=h9Dcau0Z;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

From: Randy Dunlap <rdunlap@infradead.org>

Drop the doubled word "the" in a comment.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: clang-built-linux@googlegroups.com
---
 include/linux/compiler-clang.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200714.orig/include/linux/compiler-clang.h
+++ linux-next-20200714/include/linux/compiler-clang.h
@@ -40,7 +40,7 @@
 #endif
 
 /*
- * Not all versions of clang implement the the type-generic versions
+ * Not all versions of clang implement the type-generic versions
  * of the builtin overflow checkers. Fortunately, clang implements
  * __has_builtin allowing us to avoid awkward version
  * checks. Unfortunately, we don't know which version of gcc clang

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6a18c301-3505-742f-4dd7-0f38d0e537b9%40infradead.org.
