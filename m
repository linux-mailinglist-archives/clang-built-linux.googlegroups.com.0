Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBYHAXH3AKGQESZMG66I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A861E446F
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 15:51:29 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id j21sf5496170lfg.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 06:51:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590587489; cv=pass;
        d=google.com; s=arc-20160816;
        b=bdfFQ2LyyQIlChluAn/jN2yOQuCMxWHoHpLXl5ncNVB5Z+Fg/32XLyR71kMXtyi0lF
         dAKyZ6CkR3b1g4EdoLyoAbDWCK8NOnY3WOZ1iRSMyYR0h4U6tlPlz/RL1+VdUdfSttgY
         FZwe9nCcnfW0r5R/oNzhR2RYeX0riMcmwqxDARK2P2YHhqmLOvnXfvJclLawOFxIZZDz
         ecL11pSqU5yWTStJk6cEwAwjsOj9vvsURqo4FkXmPsIMDeJMUr3gghFIUQmiTPahznmn
         7PbimqqDoryXaBxMv+I7AWaJccZUygR02FJLtZXd+mRKeFupgL3TRTfCiTYZQrLx9m5N
         pKZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=d/roBavNktdMVKg/VD1cVQtksh/mzc88BM/r29Q0TJM=;
        b=oHZVBNc9D9kv4AjR9kmScd1GwYFi4py2ogdjhTsJpCEmJl1qmXPiAzoPQvM00/hHvb
         KkJFOqkHDbYvw2JPB1nCaeZJeM6rP9LcfHtpGOSia1dLqsB12gaNQRypBqxJs05cb/7l
         UUuB4xknk7f8Wj1pZAj4RN7Uc0JkAf0i5gsZLGpipElrMoqxrV8Cfbqi8IqwgPXNaRJJ
         N7VIP9n6xdoH8x/Ue7xExpkv2SxV/8AZaNWkQO8OLBiZYdkdr1BY11f/fct+CUBtMU9j
         h+S9kIrf4+To3Te6k9hlYhWuLt3pwHYwQ4/UaPQyjHeMGJQ4qBOLZczHGSOnbH4DuDJi
         kCSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d/roBavNktdMVKg/VD1cVQtksh/mzc88BM/r29Q0TJM=;
        b=o1AyLg1x3VhDlG/tMkcCyGgKFJfhCfwwfdTMv2d+kRtQ+ct60MILeX5BA4QMj8aqCK
         6b5osvg8zfBoMpSxautXE++/nG4bHGsaxI5AahJm6RHX0dS6uzwCgBXZhFAeUTBbNjJa
         cSGLO7EGVU3m+3YsQZHGXiD3D3d6z07akKxURRF14aXKQmdvvPYbj6eeKwMiliFio74Q
         U5Q+w9em9sK0IRPWmJn0qd3dEuthfcqR1kD7kz6UndIM8M0LWVhcSKXjxOucnFEpY+gE
         1wPzH5i4j5yOdyusiXQBO7Sg2SuTXxmo447Om+lCeNanTPzjMj8WMzcxHd4UpYUUTPds
         lIRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d/roBavNktdMVKg/VD1cVQtksh/mzc88BM/r29Q0TJM=;
        b=lsjQmfgc3vlScACgdv2twLabPtJZLFXhYyma/DZamxL6CFqmOqIZ2Lf+6tAjr5INn5
         BouvMuHEIDInCeOCHMh/0F6aIcGDlaYbFkejq2SRdc9C2QJkD7uL8rHK7of8iLnQcCzr
         gPySOKoPb7HY9TtY9MJki01DsCKw2GUbrt55+lQAlvxxQJwvLNcmbDfWtcoU/W5JGsIA
         DfQWx/ClCHLAdejtZUtxgpYMKamh7Xeg+heDFQ377p0lVMs18DfvEQew6HRM3WQ2H0MD
         fROvUGFwp22OZzx66OVN2nRb7pp/L5b3uUllFRGPd1GLP1ZKI5/WBYXPRqpAOX8flHGy
         j1vA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530o+5kdBDpQz7oE0U9ogasWORjGe+pgibqATOiSKDx/F+s2WN6/
	CK9K23e7MfSvZhZZOdRuAOc=
X-Google-Smtp-Source: ABdhPJx9EY0DRPwBEqk044RbNfxZWdYda5RdVsXvd1zsVOIZoSzNmf0Rx0AzYiXRSd+VGiFJxRiUvg==
X-Received: by 2002:a19:c895:: with SMTP id y143mr3291429lff.199.1590587488831;
        Wed, 27 May 2020 06:51:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:43bb:: with SMTP id t27ls4308853lfl.3.gmail; Wed, 27 May
 2020 06:51:28 -0700 (PDT)
X-Received: by 2002:a05:6512:3214:: with SMTP id d20mr3248634lfe.203.1590587488061;
        Wed, 27 May 2020 06:51:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590587488; cv=none;
        d=google.com; s=arc-20160816;
        b=MCa56CqNyOvWYkv0VFdG7N+XKdUqrIf3PDnTCmRvMNUBQKcbgaDnZ4JaMul0hnThZA
         lDQSq/AvGh55JtAn/jeDtEsBeTVu64TECgUQZBOKvtZfsA9acT9BxmJrw7r+dMVjilKu
         8hJMT4Ho/cUNcj+WAc+j3lgNCP2OlFNjo2i9yoNs5UxwDDHnYmzoT4CW0cXnmy1cISHb
         U0IKF+kNCryuwwPa7s5gzlJlkqOZAKC80Hzo6e97sxNhEautWgvtchbORPTB7GcNcim4
         pjUdjHcd41jPHopg5tGcWDRXOX5tgdRWC+USN8Bu/Ve7loWA+lG4TL9zIquVvOaJONfX
         G0TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=PWqRF6yQXIbZTnYXoCMzPFXSMdgW4iVtfPAsoJyQaHs=;
        b=usPdTS7kwq3A1Cl9NxEg8h0vGrB5rsr9rMGw1t7m53XxG84WsqsDrNJviAwPsTBaah
         8nADMQ/sPqHbDlobL7iqXMeXloiX3ju1lYlVIdcGsuU4O6XR+cr0dOg4ceVBFAAFGTuR
         bNGVWehcFCbb4FAcz7WWkbPINRfa9Nqdg+GYhqmIy4hGIjCat65UX26iqVlH6fIkor3O
         FeJUsscgxIKXRv9fgY75b90Om9EcmYCnBGXty2ND4nM/9VU1HiDsklsvJomtotJrQLXG
         pradO/zJAxoyf0GyB9TxWZxoIEL28PVGzvDbx4S+VfAs7mmaKNFt2o3aTcxgRDPo7REv
         r6ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id b20si208046lji.6.2020.05.27.06.51.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 06:51:28 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N1fei-1itmw20YYa-011xf5; Wed, 27 May 2020 15:51:26 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Roopa Prabhu <roopa@cumulusnetworks.com>,
	Nikolay Aleksandrov <nikolay@cumulusnetworks.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	bridge@lists.linux-foundation.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] bridge: multicast: work around clang bug
Date: Wed, 27 May 2020 15:51:13 +0200
Message-Id: <20200527135124.1082844-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:tNJGImBksv3+uHh4LK9iDkXQuSmBokYMQI86sR1uOpirtHXc2NK
 CrX21qK2bbI6xhZ/Ib4t+RJHd4UNZzA3A8i8Udhs+Nj6xtysytaLytX2xtrUB3t5bOmtrDH
 Ibtv+P8HKRJy4pUycJSjjYzaNl2DkK5nnWSAL7d8WuvguMsMdN+CvlSnMfp143rT9MKRdXy
 GJne/oiPD9a6i+xx4Thjg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BuiwkU7bU2Y=:GCvuv9qB6dHCgoInEOLGK9
 808pZ65A3+ZvuUmKlZmMiMD+KWWW2i9sI6v31khsncel949CUjtROBxfQ/YqLPiJUBV2ZsN9j
 qQV6S3goxKEOk9KzwOExut5lMc8AjOFOiF7jXZmTEB/owEEAV0SUx3tM8L1tkLLBxrJELyN6J
 PqyBUv8hhDmxkOB5b+/7AwSSKMb+THSX2UgAaAdjJXpHwVzyyPLJtTMOxmpQCb7DzClmRCS/u
 dSbxI4gPROhiPNa8PXGS6rZ9c0mebdDsIs42fVsJKJMSaRpWjWffc9pt5Y8+y0CmvHl4n3vAt
 qH9K9bG8kV4OEwviLn4j3mWr8mFsal3Pz9anJ5PlSWXDL46FLykAv6jQouHtV/hri3R2yFyb+
 hwhaFktbARAdRFXtEcygRtIZxEfRg6b7j0WKdyJe8Dc1aBg13Zi4xs1rtC1MrDU3qgpxPIWcX
 ME2+KIlcSe8RyJWLuNR2qQLQcPKIeQZUeQyjQNfAYeIJG6gcWSzqAk7UUppgM7hX/9AzZgiPl
 7EdDeK3BKgwKGWGRypzGiRdQOk/cb/6PY1mti/GTsTFSrbPz8N6apCWYpoIx2bg4EY2Lhk7QN
 ua8LzeoeF5dWNsDG8BvW9SP1/8hmPZ7Q1cuPp6P0l2vReHontQz/GesEr++93qzBrWIpccEbi
 QjLD6J7noL6sgsnqeNoIwHa8y1tl2XpOQYJ1KDVXNob0pyUWKGelHT+PJVJmrf8ooIbe/a5E5
 Ejc2tS5hwpNiGyKjwaRcItpmmNZPROwbjJcVBXMabwtIKubudHvMqjW+19SuMHF+eWEbZNHjL
 m6RSK50uvvuP0D73KZUz5T2LuCfFaMWnR9CemE+ZRKpt2N+Oh0=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

Clang-10 and clang-11 run into a corner case of the register
allocator on 32-bit ARM, leading to excessive stack usage from
register spilling:

net/bridge/br_multicast.c:2422:6: error: stack frame size of 1472 bytes in function 'br_multicast_get_stats' [-Werror,-Wframe-larger-than=]

Work around this by marking one of the internal functions as
noinline_for_stack.

Link: https://bugs.llvm.org/show_bug.cgi?id=45802#c9
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 net/bridge/br_multicast.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
index ad12fe3fca8c..83490bf73a13 100644
--- a/net/bridge/br_multicast.c
+++ b/net/bridge/br_multicast.c
@@ -2413,7 +2413,8 @@ void br_multicast_uninit_stats(struct net_bridge *br)
 	free_percpu(br->mcast_stats);
 }
 
-static void mcast_stats_add_dir(u64 *dst, u64 *src)
+/* noinline for https://bugs.llvm.org/show_bug.cgi?id=45802#c9 */
+static noinline_for_stack void mcast_stats_add_dir(u64 *dst, u64 *src)
 {
 	dst[BR_MCAST_DIR_RX] += src[BR_MCAST_DIR_RX];
 	dst[BR_MCAST_DIR_TX] += src[BR_MCAST_DIR_TX];
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527135124.1082844-1-arnd%40arndb.de.
