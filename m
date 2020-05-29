Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLGVYX3AKGQE477WX2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F5D1E8867
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:03:57 +0200 (CEST)
Received: by mail-il1-x137.google.com with SMTP id x2sf3169945ill.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:03:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782636; cv=pass;
        d=google.com; s=arc-20160816;
        b=YDO0eUDEMix8xNYeNTljSu9baN2mmFaYzhFeiYW3VyY95xalm7gJ591C93DnvJkGWZ
         dP9KarkxDuwmJdTQKA+mYAWyKR0A1sSULkRuYza87Vm5PYILrNdjgCfyWqTYf1T0M9aV
         u1l/3vrPO0jst4p6kgFRt4cC+ye0mNaSYNy7YtR+jUxqsTpwDheN1+vnlUIaI2o4Zd6s
         lXzvGTI0kgfH5/xp1/IUlSF19FDa1SypZAn92yP6gCLfh4jgPVJName1DYZEP0Pp3RmJ
         IBFrKiSKJVWRO1TIi9WZHUCzWyTtJzbeBZnNLjzNEtouYp6tlEhoeGBQDwZx4TmfX5NX
         TQJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2xtd0oXP/Eaj2eS6MFbRSMSqjMNIBCJRFoBHrXoLLPc=;
        b=hKN/J6OGPpn+e/tz+gNCu7hHiPWuvVMyuty+yPCJsKIOhN2XYvY8jZHN9+Oq63d1l5
         7cejDgtgBNwzZIkdyPnKf45aD+6ZiY4XoR4oPsajsMfhAteufklUQkI1WlkZca0vDHqJ
         mrb09kZ30HWYyWYWE95icBXrtoGSEJpDz43EKnEp6/KDPW3wtpoXA0hbZGxfeEh1g1YF
         iWPmeoMemziW/9p439Z11CKVUuw9oBwpRixeZME81Vk7gc929qb8xvxpIvMYYhP22j35
         t+I2U+wFgNsfogMSRkC0UswST+0+6yrClo7U1sVqXK8QB4nZohH7OUfl7ei/OYfvCUQH
         JvrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MnQqBwNw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2xtd0oXP/Eaj2eS6MFbRSMSqjMNIBCJRFoBHrXoLLPc=;
        b=i+rNn+tq3/usCbECsP9KmGDo/7TZlRUC6yalO1vKPj1vFOIBB93L2C5A8pH0VMTqRa
         11LPk4jR644mH4uGbIHbkHBR+ZmWZ1TVytRKrr+vyxqs2g18rUPsjvDpDanYRVdqMs4S
         LHjx+HCCETzQIn4GzVSOtMpZmWyTOqV2NUv83ZG/NQQhilkYDnwChgLxX35UOnZtD/C3
         TTDICF6Ry8bA4kdx9I7ICwYFWUR1YF4CGPAkt2qJ3FnJsHRZeZAUVveOGTVhFelhxX8L
         atVNdnXCEMvvFI/NIHFbYlV1JRgedq7jY81c1Sl9jWmeghAxjKjoaQnJC1wIYMMcbZO/
         GJ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2xtd0oXP/Eaj2eS6MFbRSMSqjMNIBCJRFoBHrXoLLPc=;
        b=bYvH9BBG3NbNkamDEuywp5MezgYu++auBGUVoJrcs+mAZCzHKkYudWO1Y3CR7n6Aw1
         rpn7Mys9gy+Rz50S5t1nrq75U64VC7fj6Jgdlxxm59aPlehBGov8S4k1z+1AQFHn1VFL
         S4y41dOF6xovwG9C4jwaciNnxCljcbIImdbHRAe2YVnS2VRaKuERWZKZhXjhGTlQiMii
         SkZDauQ4dhf7FTyhzjIUZPGfR5g9pf0ycvqtaremvj1MM2d7lYUyh77nNym7Lez36awn
         nWP9ge01Ry1fKj/ZvCiC+hmsE9I3Ufq99mNMdjNjWvvSXVNeqeKjrgpPLwooSJ3UPlio
         dtmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319e03sG0ZeWiXU4T0GGDSU3lVI0+PAN+0vEjWdVwsteFMHGkT9
	Hgol3yexNKl6YhXfRk5tAEw=
X-Google-Smtp-Source: ABdhPJwSOUqpyyqgRoQ2ZieRIPhAa8pqCVHZrbx0nCjC6r80cIGnRqTP9Gswv1WrnqrRfQQzSadX3Q==
X-Received: by 2002:a02:390b:: with SMTP id l11mr8965528jaa.54.1590782636652;
        Fri, 29 May 2020 13:03:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:84c6:: with SMTP id y67ls1715233ilk.10.gmail; Fri, 29
 May 2020 13:03:56 -0700 (PDT)
X-Received: by 2002:a92:d908:: with SMTP id s8mr8797622iln.283.1590782636348;
        Fri, 29 May 2020 13:03:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782636; cv=none;
        d=google.com; s=arc-20160816;
        b=yIhCCuLifZ1dx35LcM+Wr3T05l80IhyROuSbCehI34I5xTfwm9X/At4X25xU9/egTl
         QhIGKWkh1bgsGbMt6CEzL6sZY6W++eHu400Go7xjPdAHDUThC8LQL19IWxh4nPPK9nQ0
         D6vHxdWB1BW6SteEGb0HTrN5kZHiTyt5ayvvsMXb3fxS/SVI/03dYqHV8XdVgvd7mHxZ
         xexA1TTzYz+cETlUny8Pa7nYXfrjCw04g3kRAlMdxTKtIN7wW991YwuOrv3xfNwpzbDm
         +HS2ppeHa0x2upfmY13KxJ7VdeCRuG587Hr2QvWf2J9mJSylbNDpRILJ3Jx/kOKSjCQx
         AP4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RCmY6exoQe8jgDlgtI8ix1LZA3heHUWvNPlFDsRApLI=;
        b=zNlZiKlLb4CAYPLsfasnFqBPD3QV/oXmT6CO2kp6TzKcGYjTJnSPnjZTCdSGxi2jcm
         wDoz+QEKbKdoTrQiBEh0aaZYx66u0sO/AENUI4GqGrq5MzRtYneZtiyICUmt2E8p6RDV
         n1DMBzTxVZa4WeIIYapFtjSAx6dFPzVibLkVDhcIjjODiMDxK3o7Rs+cIowOdLBTZguc
         w5qJFapk8xtRPtxrmPQIh3Igt7ia3fX07PZHa7YZMvytNPgdevnXgXMRBNc/J7WJujZs
         OE/QkjcqoNUqFK0ZV4zhij9AFVhg1g6RzlyPAkxZ55Po+5GHADFg0g9sntL1QIfvntDH
         h+Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=MnQqBwNw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id n16si714184iog.4.2020.05.29.13.03.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 13:03:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id bg4so1671987plb.3
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 13:03:56 -0700 (PDT)
X-Received: by 2002:a17:90a:6904:: with SMTP id r4mr11012848pjj.119.1590782635809;
        Fri, 29 May 2020 13:03:55 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q189sm8188645pfc.112.2020.05.29.13.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:03:54 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] selftests/lkdtm: Reset WARN_ONCE to avoid false negatives
Date: Fri, 29 May 2020 13:03:46 -0700
Message-Id: <20200529200347.2464284-4-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200529200347.2464284-1-keescook@chromium.org>
References: <20200529200347.2464284-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=MnQqBwNw;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

Since we expect to see warnings every time for many tests, just reset
the WARN_ONCE flags each time the script runs.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 tools/testing/selftests/lkdtm/run.sh | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/tools/testing/selftests/lkdtm/run.sh b/tools/testing/selftests/lkdtm/run.sh
index ee64ff8df8f4..8383eb89d88a 100755
--- a/tools/testing/selftests/lkdtm/run.sh
+++ b/tools/testing/selftests/lkdtm/run.sh
@@ -8,6 +8,7 @@
 #
 set -e
 TRIGGER=/sys/kernel/debug/provoke-crash/DIRECT
+CLEAR_ONCE=/sys/kernel/debug/clear_warn_once
 KSELFTEST_SKIP_TEST=4
 
 # Verify we have LKDTM available in the kernel.
@@ -67,6 +68,11 @@ cleanup() {
 }
 trap cleanup EXIT
 
+# Reset WARN_ONCE counters so we trip it each time this runs.
+if [ -w $CLEAR_ONCE ] ; then
+	echo 1 > $CLEAR_ONCE
+fi
+
 # Save existing dmesg so we can detect new content below
 dmesg > "$DMESG"
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200347.2464284-4-keescook%40chromium.org.
