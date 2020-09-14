Return-Path: <clang-built-linux+bncBD6K324WS4FBBLWQ735AKGQEOS6BPAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C38226932E
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:28:15 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id u5sf15750ljl.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:28:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600104495; cv=pass;
        d=google.com; s=arc-20160816;
        b=SSkSLrLYDhILxHKcbJ6Yz9U8oI4J7B9Ho/digm8/nUKUq5gNytWPsoj9X3RuMXaqN0
         chTWrrp/OFZ8i29W2jtgHfPzfoR775fRrnk5H7WqyAdFzKy9J7mGh/HK4UOD9NNxC4iK
         YUKR1bw/0s4aW4Nl8GV2NoQvWNZTgGMY9/qyUfbEEq8w/YfTk09GEQVxkbRANirDh1IS
         zfD9PoAUcpPYs8xhcAl5NQM3Ye26Jmuq5BWztHzOHZnigTzMgEeMNX+3ogpLpFQ4RKxL
         Baf2EC6XZOZFwvl4ovyV11mSHMFXBhavbeqi6JjFt29rBeRuXU9OoAIUXx2lz9t8DA/g
         /tEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=AIQO07Uab/cARvlQVF1KPiEJzmGDsWiTohwj5YXOI7I=;
        b=KlseXNDTshV28X7dri/HaVOksM20rwEq1x2s3E2Lkd+wGJ92KRcJvWV5HkekoZ0EkF
         GsrxxfWe/2VCLkGwxU+h4L1ourExHXqB3ONrTHFrjuRUU9ANWtHHaCKA911G1REE687t
         3aifAUkQOv92XYeVMmmq3KLBsghaKyg+JpcMNHCs9P+fgYXZGy4A8WesR9cPEEqCfwUF
         AWuVZoQtOjb/3+y7M1Zl+IADMVoNjY4FPXP4JWoHz4Q7XglLetWNfFrNY94TqoiHcCOC
         J3cfbTEm44qU9P+Lmy5ra2PxOnj4HDruSIBnZdx4EQmU3u1EIkovM9h6m461rgz4UtpC
         J6qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Ihcd/I42";
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AIQO07Uab/cARvlQVF1KPiEJzmGDsWiTohwj5YXOI7I=;
        b=bwK+uvxwJmYD9MRQtDCVaLbxnqMjojCVod6PEvnlE9PqF/lCxSH48gZUJuCxRpeV85
         L2oxb4QhVYFDImAU10IAg8EX74/wP5s8/TdZJnrH+2STuifYRo3venG7Bvt7ijxdWk+7
         iLtlxoflqU0LSWe8RyENbq8n2t1Sd30eZLmylJqK/hMkU6jFIDxXVNY9tuiCy9zwHaOd
         Sj2xCuqersPrpdnnJvW/FV7sMdSK0HHobwnBpRZk3OyMivCT9PiiGH5Z4NfiEiOUtw1+
         8StExWtkTreNftGrmjXeWD/cAry9K6IkqmBVajdaUmsLieubf6OE7TKkFsRN6rMkQPu8
         uA2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AIQO07Uab/cARvlQVF1KPiEJzmGDsWiTohwj5YXOI7I=;
        b=hxP0Zg/5rlumZufzCV1m8NVLWGC8r7WGal91M7Z8XFLcHjaPSiw8Sp/EN692+ERRk4
         hOykyc3j1kurawuRK9IYTjKwXoB+bg9XR+aMZa4JZNgfTjaNP703gWDtovPRQq6t0weg
         KHPdOgsPbWhFsc97drm9kF1K+OznpjjwR8dtiLO3fKok2pMzl/9Ijl4joTiPXYoi8mDP
         kZBbdAQH8/zjzYYo5nx7ddsIK47Cvk+AfsnhcyCxvs+46RRUtgD6DEml9GElgTVYocpx
         GHKEF2gjtH51wwV4rQ2S/oHQAhAN2lyrwwbvDljZLtn1BzTXJAB3jogaOaB0FdLVWlsc
         JtSA==
X-Gm-Message-State: AOAM533Xi/YN3VTe3NvcnScMA10/0TpyusdtA+0FgHJNWYkS0OmMF9FH
	Y6dRrXmdCl8DsAgcrI2ANok=
X-Google-Smtp-Source: ABdhPJzU0g4geT9BCgqbl2SFStGEANjtpgoAIrm2vux1wcFdI1a31lLEzLnKcUimYM6eBA1+WhJVRg==
X-Received: by 2002:a19:dc47:: with SMTP id f7mr5338509lfj.468.1600104495160;
        Mon, 14 Sep 2020 10:28:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:544e:: with SMTP id d14ls313017lfn.2.gmail; Mon, 14 Sep
 2020 10:28:14 -0700 (PDT)
X-Received: by 2002:a05:6512:36cd:: with SMTP id e13mr5604273lfs.165.1600104494226;
        Mon, 14 Sep 2020 10:28:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600104494; cv=none;
        d=google.com; s=arc-20160816;
        b=Ta0HtpCSB7Cy2xavdtrPriNnTC5fFIJNF+umcNGKj0/4Y4zp7OL/0chlXsKabyS47E
         PX8zsVtlBdrTi9G4Io/cPzF8m7KmI4rDhXqIXHdFF2z8bap1b514+ZqnFqsoA6Z4xOna
         XOU7kPMyaBUEaO9Ncx8vfjKkJJxT5edrQgp5RSxY6l3eKFS2XZxxoXBGSZ1whdUfWr0S
         ejQk+D5Kx+lfjkjTtvuHQca49CExy9t9QBH8YJQ0zr5kbdaRhRYAEFY+wI9eIlIQQ0Lh
         Z1QedcEC5PanAj+Eml78lcwdGv/vz1Zj7pPaUdLRO945bXOZhoUjCvUgfYRLBN10vAhd
         ho8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ev8PHeG2wBS2zSKo7R1VQ4GKo6oUzjZvdtqCLwJ3pDs=;
        b=EW2xvKSOHnxlhk8o6kUik9Su+9YVX7TkcJ5wxiJttG+guu0kX5thB0NJRaJJN7y/5a
         Kl7cOqbhWXVXG/Wl4fA+ii9lgegljDNobjgQblnamwcC44L/kz9Yd9yeSm9r9TeRI8kX
         wozRb2doga/vkr1KYKE9QxjWTq12Lhl3QlYxEoyes258dg3qJEqmYrjdAeh32IhCXcbX
         EJ3dwj8Hfgtdw572hm2qy3q7Jldqam7KW0QNYB8/zYHXMU7ow2VGoDw/fQPav7uD6FRO
         jn4IX6wIiUBtbb8apL/7EIAVEzoWOVSvyM7Z88AfrleqGgtOZcV4uOoOMNgNPPSYnYtE
         /d8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Ihcd/I42";
       spf=pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=georgepope@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id b5si288779lfa.0.2020.09.14.10.28.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id x23so810642wmi.3
        for <clang-built-linux@googlegroups.com>; Mon, 14 Sep 2020 10:28:14 -0700 (PDT)
X-Received: by 2002:a1c:f619:: with SMTP id w25mr459880wmc.62.1600104493518;
        Mon, 14 Sep 2020 10:28:13 -0700 (PDT)
Received: from localhost (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id s12sm13377783wmd.20.2020.09.14.10.28.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:28:12 -0700 (PDT)
From: "'George-Aurelian Popescu' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: maz@kernel.org,
	catalin.marinas@arm.com,
	will@kernel.org,
	masahiroy@kernel.org,
	michal.lkml@markovi.net
Cc: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	james.morse@arm.com,
	julien.thierry.kdev@gmail.com,
	suzuki.poulose@arm.com,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	dbrazdil@google.com,
	broonie@kernel.org,
	maskray@google.com,
	ascull@google.com,
	keescook@chromium.org,
	akpm@linux-foundation.org,
	dvyukov@google.com,
	elver@google.com,
	tglx@linutronix.de,
	arnd@arndb.de,
	George Popescu <georgepope@google.com>
Subject: [PATCH 06/14] Fix CFLAGS for UBSAN_BOUNDS on Clang
Date: Mon, 14 Sep 2020 17:27:42 +0000
Message-Id: <20200914172750.852684-7-georgepope@google.com>
X-Mailer: git-send-email 2.28.0.618.gf4bc123cb7-goog
In-Reply-To: <20200914172750.852684-1-georgepope@google.com>
References: <20200914172750.852684-1-georgepope@google.com>
MIME-Version: 1.0
X-Original-Sender: georgepope@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Ihcd/I42";       spf=pass
 (google.com: domain of georgepope@google.com designates 2a00:1450:4864:20::341
 as permitted sender) smtp.mailfrom=georgepope@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: George-Aurelian Popescu <georgepope@google.com>
Reply-To: George-Aurelian Popescu <georgepope@google.com>
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

From: George Popescu <georgepope@google.com>

When the kernel is compiled with Clang, UBSAN_BOUNDS inserts a brk after
the handler call, preventing it from printing any information processed
inside the buffer.
For Clang -fsanitize=bounds expands to -fsanitize=array-bounds and
-fsanitize=local-bounds, and the latter adds a brk after the handler
call

Signed-off-by: George Popescu <georgepope@google.com>
---
 scripts/Makefile.ubsan | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
index 27348029b2b8..3d15ac346c97 100644
--- a/scripts/Makefile.ubsan
+++ b/scripts/Makefile.ubsan
@@ -4,7 +4,14 @@ ifdef CONFIG_UBSAN_ALIGNMENT
 endif
 
 ifdef CONFIG_UBSAN_BOUNDS
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
+      # For Clang -fsanitize=bounds translates to -fsanitize=array-bounds and
+      # -fsanitize=local-bounds; the latter adds a brk right after the
+      # handler is called.
+      ifdef CONFIG_CC_IS_CLANG
+            CFLAGS_UBSAN += $(call cc-option, -fsanitize=array-bounds)
+      else
+            CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
+      endif
 endif
 
 ifdef CONFIG_UBSAN_MISC
-- 
2.28.0.618.gf4bc123cb7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914172750.852684-7-georgepope%40google.com.
