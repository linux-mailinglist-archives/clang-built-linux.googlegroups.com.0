Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB5PNYX2QKGQEYAQR3GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id A863F1C5941
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 16:23:49 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id o6sf1299651wrn.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 07:23:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588688629; cv=pass;
        d=google.com; s=arc-20160816;
        b=ePPK4yLKszOBDEYgBYKbwKmQMJLVJSEkKZcbRBpWTNj89YVrNeW52bikd6k7tDdzmE
         X8WrErSua1DY2+gLSkCVgu597q0oduHxDOVHqvM96H0nzucnfzxVnDm4qXr6BSSuucGf
         0VtriLjGKm6m35Qsd3jNk4Wd2de36E173PtXRjd/jfd8soCuTXxa5yI170LueuVVaNjw
         olAp+R49PCYhCJyzqMpUNfOks0p+/6OBBFZbpzgDVUen/bDaZv38dYLLDNM7yA3dPy5i
         XDPMjKEX/btcbJNLi+mrZZChXRaCEaCZyuwpJDHzbWYNjsNVBNHb/p3nC2AgDToMywmV
         GC2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=RE7hBCzrAmjRipPhs1f1Hrq43O2EDclti/h4DtFxWpQ=;
        b=nqJBFUX42JPtmIgs9mSDO00RHpgTjXuPF2L69ZB0oZCy3aptbr+y2igqjsB5+VzwKy
         y6nyJqW7b9u8prxlf5nix6qBTUUIPRQ7NF2eqDf4tt3k2wzGdjaKuhEiXD3hQfqIU4Up
         S/sAGY6w41A0ZQr76JDjBhHeYCUdeGTmk17n7MAF5RjeeBvZ6iQnGxbKXPqYaFyV7PFX
         ddQEwVtWyu/oAUm/Ps8+JNn69Qtdsn4g0CMlfSao8eGCdsvYiXz7z+6+2S7vViRms1ra
         oY+n7cp9SLC+vibGsuA4+aLnSgnDnnha0yvZ0QCD3xTmhOCGSjasS5oWBsHfElg193qa
         4QSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RE7hBCzrAmjRipPhs1f1Hrq43O2EDclti/h4DtFxWpQ=;
        b=J56NJle5NCouSKGmnN5YBJS/t+lBXjLDcO9XAu1qtUHiiGRpaqim0i6N26mKk0T+US
         7CQtI/09U5Rid2cDmt72CBtT6g+8vhteAPMrRPiqI/2tot0ZjBLml/QY3eb8HICAQNqt
         05LT+fxzOz9V40fMYKwUWk7nVfaSZCdKCxbjCGaUGxLENirC5imHt9pRHlyZ5DO+oYb1
         hfCymQs+9an62dD2qSXO7a/jHP5yTBr9VjzeJK8XcgTutWylLfFDhOc7WSzeSfu6YIfl
         YmFMpm8UQSqpOgxYrfz/I+qh1fLndxH+eScyaQ6D0OpNIw4kif4uevyMgGaEoJ2ALLEz
         PJ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RE7hBCzrAmjRipPhs1f1Hrq43O2EDclti/h4DtFxWpQ=;
        b=VP8DsiIOfE03FIHJ2b5f9sbe5zavy3tVm18sxh7kcy9d2a+BURcmFOiJvZTi6aDOLV
         Dt6M3zFSKF/B/8Zp5dBn5EEeu9CeIVBrTWdqHmrWVA3i/OEktIg4SDKx/iB4MwF/iYbX
         S5av6vogq+io2u+zILCgWHAts8t63wNYS0gcypP7w1Vkjez8zC749G0hfOScAtpi2T3h
         VBD37lrfwaTtye/psCBaxUYPNTiCfTPK0mjICfZjJ62ZdukLLfULD42fClxLNDhUBToV
         8W72EanmPhMzTMI/SQNWlQOQxrmKSz4MVG1brMS5Y8PTjp49Wq1tik1QVGEyCpUfaPRG
         /+Sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubmmvPup+wfzB2A8myHY6m6159SKUMVs2ZGyXxbaOu6htKrMdzc
	iWcYt+eAUTSS72nCTXkIMk4=
X-Google-Smtp-Source: APiQypIrLO6DAAvP2tUf2LiubR61JMZc4tCT/FP6qRtGTzctKwUbCSZyC4nJL/AX9yqn9WLfEg0fRg==
X-Received: by 2002:a1c:750a:: with SMTP id o10mr3544366wmc.161.1588688629460;
        Tue, 05 May 2020 07:23:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:438c:: with SMTP id i12ls4328440wrq.6.gmail; Tue, 05 May
 2020 07:23:48 -0700 (PDT)
X-Received: by 2002:a5d:4704:: with SMTP id y4mr4192396wrq.96.1588688628409;
        Tue, 05 May 2020 07:23:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588688628; cv=none;
        d=google.com; s=arc-20160816;
        b=bUZPdlOzWTOkI+Ln94sCv3Rl9x71ab8tj3lrFR2kqvd+u03qZOQiVzXOEevG8TDJuo
         7/kZL9L5AZXf/pzFyJgHzfv2QmNzk4o6FNM5sWUoW6gGUabGyIGoIriemi4OsrWPzcH7
         TjZbb0CMwHDes/gLXSzATg6IhMsP8FUh+AFfIZ6AQl789Kqu/Fl1R5Wz+uviOM9+CaHN
         A22NkAcEHCPhOXCvhhgs15UhU2hmwauKVQu8IpaTq6MF4/qdkjrsdEsexG77jxT81Xb/
         WXF/awOhSEA4dU1B15r/wvn6l/RZ4z3Jc6a8NkD8bmkqmJ9ftjdCOV4/3zMssUmLt03B
         9TUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=yWF8ElnkGd/20Oa5vCY8ksE6XbahroP7edCjO0yHack=;
        b=CCpYwcBBavnher3qlKDEDj+iIQDKI9jUx4Iq3vPf889yhFfHKtRs6WEQTYQd12Dyuc
         CA/BR5NTzsBtwmUz2jNUsYqgvvOS85SxMebtu+kEnpLJkH3sJtnpPk6lG1AxVHfseOo2
         uJVn5riNEu3vn9ctox9BLUmvsxq23pSi9eBb07UWYAJkp29/B8+3xfM54YQ+sOkphFFq
         lzN5JQ6tWyx01Qq+Zc91KMEtAhySwiy8OmDpQEGZx03FPK7d8IQSxxm+W4+5vOJ8MDqA
         jjRysgoUIVqbnkFA9oPpc7VVDgJjVUGfTgI9llyvcjScb/MOcUe51wTZamWyexJy9s0F
         8ldQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.133])
        by gmr-mx.google.com with ESMTPS id h8si101469wro.3.2020.05.05.07.23.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 07:23:48 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.133 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.133;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MacjC-1izfbf1FxC-00c78g; Tue, 05 May 2020 16:23:45 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>,
	Kees Cook <keescook@chromium.org>,
	Andrey Konovalov <andreyknvl@google.com>,
	Marco Elver <elver@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Dmitry Vyukov <dvyukov@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Thomas Gleixner <tglx@linutronix.de>,
	kasan-dev@googlegroups.com,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ubsan, kcsan: don't combine sanitizer with kcov
Date: Tue,  5 May 2020 16:23:24 +0200
Message-Id: <20200505142341.1096942-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:JkuyWhciBA/aX1Zn4ELUz4dlGvSAU8bKJNTZp0muHfNY70Is8/z
 PQV0xJ+scnfPXeY8VAGsx2N/Y2vXgGDZheALBVwZUXDSKdy2bdNc8Z2PrkSNFFxkx37YLNh
 Z8uFSR+Q7ZjuSdBRCdR+4L7yllPzaAJwmQMpAN3CrAdUbrJKkmJ6Yo+c3wz3JnveMWcxobE
 SMNSE9VDqfPQ8hFKI4AlA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tgXZYycAEVU=:lPwOc28vx5ScJrO1pHRcB0
 rxw0c5/ZDaDv7RJ/qbwYGydXNqqS6uzeVUc8MMG6ZeFq8tvKV9VIQc94u0AUEJjq6ImT5Ergq
 rQxaX/chIPGX53mBVBYn5xBOCx81eKmeB1EdXqJzVg7JqFW28UAA9cF59rYJ+gE3SIdVE/nIF
 SokPSHNDCMEspvYRh2CrNorucNVYsEL/AgJXbpn0PZl9zEzBI/djdSgv9/LrxhTmZHy6RNLUE
 0XwXuejTHjC9EKHXgxGmyIUKmcS1mLFyNsb+DxbdrfVMpE+7sgaqvu+wu/hPojVWMIQjmLQbw
 va+xgLG/Q6wh540kMi4yAggUI1qc+YuH3XnvyvGWm2EaSZiGURifJrwzJxYs+AKd6GMY3+3xx
 zsL2tW4o/QFVkXVNR5JSV3Gu/lrOox2IkJ/5AU+5kja6VhXCRbRnwK5syP3xa5FrLAa90z7GG
 KNGS1FYIS9p3t30+hicKEV5lf0yAA5vL0qUdN1K3S4R/r3h85XmgmeGlUrrcVOfjUpZYA2dk9
 zyS+Yy009Ly3gp687W8jivoGTTrxYJZYlepNS6lt/8vDb/J7ImpIIdirdhF/M54Hi8mLahoX7
 g8zh43nDHnieM2fROES6HZX+c0J9kkqV93/zcCVqpNhkDhw3WXoG5WeNSe67smre82rl1zcVA
 5LXl/C86XYD+LkZA9jjKLiW5xzOyR51h9YDAo1kKdMaxGYkMb/H7k3r8glnjcp9ECirj7K+Qe
 QfHceo3s8uzaulP7M3XrRegVhnYM9NriiEa192ZQQ2KEDUHhvlVvyy+FLDJHDDwAZ7rl3MTQ9
 3itAByRmtW1leBvDn6VsH+KZvYoOScPZVHB3svSQALiyIgicBA=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.133 is neither permitted nor denied by best guess
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

Clang does not allow -fsanitize-coverage=trace-{pc,cmp} together
with -fsanitize=bounds or with ubsan:

clang: error: argument unused during compilation: '-fsanitize-coverage=trace-pc' [-Werror,-Wunused-command-line-argument]
clang: error: argument unused during compilation: '-fsanitize-coverage=trace-cmp' [-Werror,-Wunused-command-line-argument]

To avoid that case, add a Kconfig dependency. The dependency could
go either way, disabling CONFIG_KCOV or CONFIG_UBSAN_BOUNDS when the
other is set. I picked the second option here as this seems to have
a smaller impact on the resulting kernel.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 lib/Kconfig.kcsan | 2 +-
 lib/Kconfig.ubsan | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/Kconfig.kcsan b/lib/Kconfig.kcsan
index ea28245c6c1d..8f856c8828d5 100644
--- a/lib/Kconfig.kcsan
+++ b/lib/Kconfig.kcsan
@@ -5,7 +5,7 @@ config HAVE_ARCH_KCSAN
 
 menuconfig KCSAN
 	bool "KCSAN: dynamic data race detector"
-	depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN
+	depends on HAVE_ARCH_KCSAN && DEBUG_KERNEL && !KASAN && !KCOV
 	select STACKTRACE
 	help
 	  The Kernel Concurrency Sanitizer (KCSAN) is a dynamic
diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 929211039bac..f98ef029553e 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -29,6 +29,7 @@ config UBSAN_TRAP
 config UBSAN_BOUNDS
 	bool "Perform array index bounds checking"
 	default UBSAN
+	depends on !(CC_IS_CLANG && KCOV)
 	help
 	  This option enables detection of directly indexed out of bounds
 	  array accesses, where the array size is known at compile time.
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505142341.1096942-1-arnd%40arndb.de.
