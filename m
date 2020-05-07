Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBAH62H2QKGQEXXHTOUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E961C9D52
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 May 2020 23:34:56 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id f17sf3194348wmm.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 May 2020 14:34:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588887296; cv=pass;
        d=google.com; s=arc-20160816;
        b=JIUPnNSJp2hdpYJFEutXpZmQnne+M95Sj0LeaBEoTK+rlF3swZysg6TFPOnA7SVEHZ
         AHVUVhJ1olXDCiUrMDj6CFNNqw1UbSM6lN973R4A+WoaVlIVHbwoqyKktbaoxP4AW4Qq
         ccUVKlvg6O5grA/NhWSZlGEIbcKQBIgsGtFD7YRzKfFMVbW9SZn6o9RXIOyCee5hNyLh
         rPKlytn4x3fgnEhOxRcCybo9TyxETx96hqZPvbWm/4re5hSXv8KZX93ZDPFg/PtY6s4S
         vXkkQKQSvskSBeXfJVlvsqJWCgXCp5G/BaBXBrUrPWsZoEwiVxLp3gS98wlSNhdjy++z
         PbfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=CBLf9xEQoLrI2fwIRwCGq03HexNPD+iMeA/G+J8reOs=;
        b=uV/JLleqgvjR9NpNcwpQRf+6WBp0qjHyCT7q8xrYk/HC0TicS1ev9gRdfNXj6kga6j
         glKBPFP79voJ42vEw2E2ihN8NWNZ1qtimLDKWTnC3OCmocYQzd07d5rksqJWoih0Wo73
         8ctY9xbtIOANyOmVpNv3/pbWEREABXUvCZckDfmMEzFD622tx4ziGG5Ryd3viuAIQhhV
         bgKss9QPlNisw8qhKB+gQIou0MCf9G2P2xKxBh7eQPmbfA5pX09InxMGwgfCBJE8MHH8
         eCzWtBZ6pG+Ep9e8SZFengQIeM3z3fTNcHEFCCD5NLiLlqrwoKN7h0PnLmAnH9iOBduo
         EgSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CBLf9xEQoLrI2fwIRwCGq03HexNPD+iMeA/G+J8reOs=;
        b=msTmAk7+FsZKgazakxgHIkZ3z9Ld73+QBikCSwArmNaUhcC6zNpZR/IJplU4Amuf5C
         9YmR5piqFuSwCkBRV89sYnw5ESwSEQgbFWmFsLbcsTxM2xOme6D+n1kBQOEyhEGAuePu
         mQBF+PLbg6ZDFpAWRn5ia9MnUZQe99Lzld1y/+kpHHud4V31QtJ33q3PEbJQEDqywqR8
         WqM07n5S7pwPAYDyWUAPwZbLwM4DxENf9rGT8MgJ8J1tyKtRGxQpJYoXqi0d7CQFGJcn
         Tv2a6EJa/ZW66DJpaoa397HCY1dhNwmpg04vcTM/lp9+uAj66Us5Det6VZZfIYF09BCF
         W+Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CBLf9xEQoLrI2fwIRwCGq03HexNPD+iMeA/G+J8reOs=;
        b=SZAKa1bd8sJNpRaleNhZJ+Ap3KO1TkVonmdl79eg5IHQWGibIVjXNbxQme8gsR6j4l
         q1ifb9PS1unc8phSDJokpO7wfnoDsSAPahMFMLmjJzU0Ahl1TrzllyMW+cij5YdYrI3X
         QmgW/XQoZfWBn6s3A4bSv8Y8uqwdYu/DD95dyN4f3Twj68fCFA6XldAjNzdBtlQaFOMV
         +tSTeJPuGOl4F2ORQMI8Dsn1drDNhiv/+N/602zMPYd6VnQCNw4MC51Jl/dL/Pn2S/fB
         oIbPPJLLthjKyHcRSyf9OG2squWtCvdsOnBoo97nvxOCWXwWHDYsZceYYhZFUG9bVVfI
         3d5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYat/JU1sEIkTC7IxicTX6fgZQZTMVwDl962Sd57X/78Rwb/eMl
	0704vTVt3F5/U3h7lLXZYGE=
X-Google-Smtp-Source: APiQypIgVgPWnOXvk3ArSxHdtSE1JUnZ1a8DBN/cSKSlJu9a09hdoCZflRzILy3EGN60/+eQv1j0Dw==
X-Received: by 2002:a5d:4006:: with SMTP id n6mr3021464wrp.27.1588887296238;
        Thu, 07 May 2020 14:34:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:224f:: with SMTP id a15ls17804202wmm.3.gmail; Thu,
 07 May 2020 14:34:55 -0700 (PDT)
X-Received: by 2002:a1c:32c7:: with SMTP id y190mr13181005wmy.13.1588887295794;
        Thu, 07 May 2020 14:34:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588887295; cv=none;
        d=google.com; s=arc-20160816;
        b=yaHXRADGgxgjrtyVqSk05VLlH0P17NuMJCUem84Aw+50mmpKbvNQxQi6+2JSm4bAKW
         SL2YRpwHBZORf0MCJjvrIFVWS1UzMJIes+oyY/UhLCcsQslHTQistmec7Xcw5JZIue0S
         gYAKDHtuwjw2fSvJRkykSvLes+SRWItGS/HG2q/xa+RC4JYvpBLFlY4ypiL0iN/qDTdg
         MfVna3g23ztDWYAxcCDQNukRQjS/otPmiyDPM1G3JZ1mn955POLfyKuXHx+6ZBwVMsnK
         DNwx2vh2iIj5/OdLTw3LkBifzc2mkekbyvtq4Wnsc0Y0l/HBp0B2Y/IDPbzsWIZ5lG//
         Y1Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=nhv4GvfYhkkmqqYlnHEBVh9Jjl3c4znu7YZfmMy0vwE=;
        b=U2xMurYUByG4bozZzfBOI5y3XTx4H4r9eb/jKcJ1RVRVuNnm5G/o0FJNeaf1GOCllJ
         lFKofkaQIRubkhT4iH8uxHipJNFd5g9G4pNYe1Nx543/sR3W+KnOUIVjW+FumefAXnlK
         7N/QSb0gAzzL3H6jK048N+s15TuWxgfhCU/x1o5v8ORq0qMQ60JPnKeWNY9g11JGBvb5
         2CqNbdBdXcY/ongp6BHW3xrTPqTtylaNh4f9g2htIOW4eSQOnRqPPGQf4RebFuNFtrmK
         E7UolxqhkcnOt93/FOrO6DzQSwkZvHr1hU40kwakSSb/0pTKnNNUwrAI6qgrdF5FyaKc
         X6SQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id x11si300628wmi.1.2020.05.07.14.34.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 May 2020 14:34:55 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.75;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M2fDl-1jYidz2tHb-004D2T; Thu, 07 May 2020 23:34:40 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Christine Caulfield <ccaulfie@redhat.com>,
	David Teigland <teigland@redhat.com>,
	Steve Whitehouse <swhiteho@redhat.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	clang-built-linux@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Alexios Zavras <alexios.zavras@intel.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Richard Fontana <rfontana@redhat.com>,
	cluster-devel@redhat.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dlm: remove BUG() before panic()
Date: Thu,  7 May 2020 23:34:28 +0200
Message-Id: <20200507213438.1886005-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:MWsD4C2gbHQCzPSYpVZ0sRh+EhEaHN4oMDZVkk1sis4OPLEClxS
 9xPRJqaQrjFl8IZ2Wv+Imy6LKHFafuWPi7xy8fl6ubV2+zFiAgJ6IxDiVxaK4716fxwdvqh
 M5rEYTS93N64nWAN6gDJVXmzdZYNsNmMvQlR/FTzVXrvI8h/2iIzH/7IgDXLXgUGItn6TXu
 GD9+FlIaYKZw9eXdw7bPg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zlN+6/l7oGM=:Dtq4zd5iUWJg9Z78qsfioZ
 8RK3MHA0rTEYRPIyN7utMpOZAgFAhbZRr2wZmJ6rZD7wYBQeVP6lJjJYNP0Y4pA8ziyluG+OA
 0emP49TXl7VaRidDwOBf3AIz1rvtgUEUmlqDcx7VPKsC49CK2ZxZq9BQYMIN9lKnSIPCe72y6
 LamOjF/74tCb2buLKP/rHpDHeatvFoo9xLhujqR7Nf2OyzkMsOdKLv/UfsDOTQGPuJJdVL+Bb
 punQYzmOEevxUCFpxvXnGSnKpqP6L8Z4S5riXlgoNOPgH/EegygOfE2jwHXlT7K2Noa+evqJ/
 TQn71PQJM5umwRSI+Df7ztizmEMrmNpbfSAQEjIxhNq42CeSWmWA1VI9uXMnguoveazaJ4aYT
 qFonyxDdXAdZkeYS3j3WLQZbUjNf9Pr71lF4fRkTLUvBM/qisoljjIa5TCb6hYEp1zjy/93rZ
 feBlVofAdNBshcUd3Z5/DLhZ0xJ8T3Pn+e2LBbv9xvv0aNTOx/7OVp/SFkosOQw12GOvCaN59
 8Lo6dSS+pK2H61RZulEtmOm6AItFAZKtPWi0OowNBIm13PffuCKmNhiD0aZt9Urdz7oPmRmAy
 t2PubAtayKfOzzrQjMLDVkZ9PzcMX1CohkcyKWJYuZ81BL3ajX5rnaIjlXyOuYo0IU7MERGhl
 dE+XXVaHj2cVQCMdASZIfIrWy7xM49XBBn4igMM96xL8ai9SJ0Rn1yS055OHKCBzc2AiP8nsG
 krVjtRPYFE/MBMvZeMC+tBjymko3ZImGZv/Rrn8kGdIuJUFFzEe8UpdekyHRZpbgZURXtsNKm
 fkZkKttRwrfOHBxEfx593W9WShzlz+bMYciYGVzrKlPqxjMlI8=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.75 is neither permitted nor denied by best guess
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

Building a kernel with clang sometimes fails with an objtool error in dlm:

fs/dlm/lock.o: warning: objtool: revert_lock_pc()+0xbd: can't find jump dest instruction at .text+0xd7fc

The problem is that BUG() never returns and the compiler knows
that anything after it is unreachable, however the panic still
emits some code that does not get fully eliminated.

Having both BUG() and panic() is really pointless as the BUG()
kills the current process and the subsequent panic() never hits.
In most cases, we probably don't really want either and should
replace the DLM_ASSERT() statements with WARN_ON(), as has
been done for some of them.

Remove the BUG() here so the user at least sees the panic message
and we can reliably build randconfig kernels.

Fixes: e7fd41792fc0 ("[DLM] The core of the DLM for GFS2/CLVM")
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: clang-built-linux@googlegroups.com
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 fs/dlm/dlm_internal.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/dlm/dlm_internal.h b/fs/dlm/dlm_internal.h
index 416d9de35679..4311d01b02a8 100644
--- a/fs/dlm/dlm_internal.h
+++ b/fs/dlm/dlm_internal.h
@@ -97,7 +97,6 @@ do { \
                __LINE__, __FILE__, #x, jiffies); \
     {do} \
     printk("\n"); \
-    BUG(); \
     panic("DLM:  Record message above and reboot.\n"); \
   } \
 }
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200507213438.1886005-1-arnd%40arndb.de.
