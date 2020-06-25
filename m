Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5MV2T3QKGQE5JYXMSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB0020A6D1
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 22:37:10 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id c3sf7277443ybp.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 13:37:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593117429; cv=pass;
        d=google.com; s=arc-20160816;
        b=I2NVCyHX4NxDVe8Qq6WbpCXDNxXvadMl1RY5oNjmQmTa5aGx5QkXu2Wsk9xAxqfSjc
         QY+mivpqDvEoNpeE4B9LiGnePIEhHeihTaAu4mxYf9EeG/SMp1ny0IROMglBX6vcQsKi
         TdRdkDhrYbqbKbydcbEjShnrzHF1NAXasGcjwmn0FbUKHeC8AAnwSUd5RWSaTZEgnJPG
         wEg2/dFyNF/hto+EvB769IE9DSXddPAHPvNQaeo2L0cIwn9e1IRG67AoYQXKfmMXrQKl
         fMiSX20g98LyVu3sKQc4z4hu/T+dIswZstezo03gHBJQB5UxpDnW+sPlrfwIVnBUAoSN
         5UEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dWNGUJVWmluFfzd6rsadaBP/xxt4Hs1DyInob7AwwfM=;
        b=0cb+TTElty6UIF/V7TPHlaQocRMDspa/Ug4RQZY/zPdWKdZa9Pwzxa879MFYSfvog8
         ztk68lCMxCBmysorvPfObmhbPAy3qHvy14Lly6za/TviCIk/OV7jjZ5cFj3hmi1Hd3ex
         6zrqOCG9WzoWVDPjdU0FrNp2C2Lz60IJ/tSEd/ky4BuXBHaOwpxnvvuOnl7J/jGRg1O1
         2hr98Kl6F+OJji0h9QxOD7XlgNJA3mwnWgO0HKUwttAdS4XASnnQRML7OrzVYwCxiZd+
         epV7ax4k6Uy5V0FPz+RLDO7oLkgY06pmUj442H1isLwMiNjoz9aEIlCdpYtFEz5L8GOT
         k/sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Dud3MkEn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dWNGUJVWmluFfzd6rsadaBP/xxt4Hs1DyInob7AwwfM=;
        b=I+z5Kyxz8ZY4sqVOLvX5JXm12aANh6QH2yMyiRVuVPQqKdDU9ef86Es5zvpRSl2STO
         SvJRRfJT16eHTvQhl/d9/lEMzvcb3p3vfSfIKh4T+XosXC9X+vxjcw0aFeik6MPlNl7Q
         rdNPnfJjZB3zyHuiOW8A4jSKwGKP1BFnIVSLT7+/OW/FsO5Cb3f4iqI65kL1FdiKTDa2
         ARiILr8nQ3hnwkuRauIWhOANFQt5iI8vmZA4ea9vhfRS876c5bLlg5u9hr6May5nXTC0
         g/Pb9kXTcThCvgzNynTKjFOvHBGOH5RljaeTehJ/8I8bH4GhlJTa1Sud7mopiGH4uUqE
         dpgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dWNGUJVWmluFfzd6rsadaBP/xxt4Hs1DyInob7AwwfM=;
        b=b+8DZsLi4jZdWM1O7vT1HqmH4Hz8AIJwJaL1Pwzy0boTazLl7fMB1vm8VDVtnkpIBM
         UfuxLcBz2HrT2sB8X/mH8dDqBuwREFfVnWDOiSBuGZzlhuT1gAOgtabrhQttg56LO2sY
         QoRZQjWVULcigtlJB3y/zXxJzNXxI5hOkViKvTZ1WS0n4XUE4MIypM1en/f41jEMifkE
         huRs0MSNMwVqsG89Nz51sqcKzTWh0uHAYSw1+1/BzIw81yBGpr0iQg1OdhmHhvai0sM4
         ySka3PEDLucj+wenxeaJbGE9kmPN5DkJmgB41UFk0PAckTQs/Gqu/K+dwT46csdIar/5
         0hZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336ZBdE1O7rjEGSZIMrDVkza1dLL3l6y4CdHWPJNVX+LjrmH23v
	Sv+SHbnpLubrFpQTQWFsFQE=
X-Google-Smtp-Source: ABdhPJw/o+qEwY7tbw8gl1Qh7QmCyMH5DP5tLciaZr7orUh9is+0VAtMRiWkl7EE84i2hMn+EN8XBg==
X-Received: by 2002:a25:c304:: with SMTP id t4mr58124308ybf.26.1593117429241;
        Thu, 25 Jun 2020 13:37:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d603:: with SMTP id n3ls2476981ybg.3.gmail; Thu, 25 Jun
 2020 13:37:08 -0700 (PDT)
X-Received: by 2002:a25:c08a:: with SMTP id c132mr56257051ybf.118.1593117428927;
        Thu, 25 Jun 2020 13:37:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593117428; cv=none;
        d=google.com; s=arc-20160816;
        b=LWNlWIJta0mh3ODonAlbMRKVTxF725NMFw5nAXmqZxujlhmNEQiC6AQpzzb94HwxVc
         ZVcsixaTPtvSnYhVdXHgo2V1VzPtXkRUGZArZ89zzK9ZTtnhBqqY5XUrwB5/UwgnpXoO
         D5k5hucI0LFvo9gZIT8K2xmiZlVnv7FsySnAdno32FEsF+jNWSwmzxNgnrZ566F3ZOV7
         4+PVc1gnDuBt3ps9ZthNiGo4+SYaHyJ+wV/p2LCK5wSpBJ7txM8yZ4PzUGhOVA4aEjpC
         VnibQqDC3nqxbsUriUsug7Aic3VufAD14spGYR4dEQLGTGa1GPS04TBA/KFXUs2HzjQZ
         5nhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=whJHMFEMgjRzi44wy4EIPH6hRXPgVH5q3fW7lz7Bwr8=;
        b=PFUWDwhmLYKNAcT50GtUdY8LUwL6yXxHx4SWf1PM0bv9l28RQE4pa64hBqxsH3u2r0
         YVHYKk/ydx95/B/EpykclF2d1J0kK29cWhdzZiZxXJW9yjk+ZRUYyifoikzSsBWcHktT
         /YVl/li8L+wPS+XVznT8lMmoaIbsL/LvJ17rPAA8GVGjknDL8hnWxxHoX5nU+UJfFE95
         yfn5R3R4XDG1DHZJ5lteViNfXCVgeMMkl1EBJ21+NCb7C9YDLdqbGcb/LWYLjnnrfPe0
         cstwoJmDJowPBxHDdTxGrz9rJkqTZZIVeuvs189o4YncEMT03MDx+EL5WHJ1ePmEMzrU
         oTIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Dud3MkEn;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id e80si73142ybb.0.2020.06.25.13.37.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 13:37:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id n2so3299493pld.13
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 13:37:08 -0700 (PDT)
X-Received: by 2002:a17:902:ba81:: with SMTP id k1mr34579262pls.218.1593117428146;
        Thu, 25 Jun 2020 13:37:08 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r13sm9278734pfr.181.2020.06.25.13.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 13:37:07 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Richard Weinberger <richard@nod.at>,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH drivers/misc v2 3/4] selftests/lkdtm: Reset WARN_ONCE to avoid false negatives
Date: Thu, 25 Jun 2020 13:37:03 -0700
Message-Id: <20200625203704.317097-4-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200625203704.317097-1-keescook@chromium.org>
References: <20200625203704.317097-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Dud3MkEn;       spf=pass
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

Fixes: 46d1a0f03d66 ("selftests/lkdtm: Add tests for LKDTM targets")
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625203704.317097-4-keescook%40chromium.org.
