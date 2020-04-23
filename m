Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBY43Q72QKGQEQQKIBBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC2C1B61BF
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 19:18:28 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id l9sf3414360uao.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 10:18:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587662307; cv=pass;
        d=google.com; s=arc-20160816;
        b=jwOjUZVru6Vya34AqVImEIm//tdgp/t5gx8QFg4c5y9YKNf3XpOKl/4DlPF4pICX56
         NH1m8eM6fAs8mlGezkgoI3gmOQ+JUP+9KjqW2iZnhcp7SVItd5otUU1hLotnHlMLyO7N
         b+5iG3y2un50GiblcL3o9bgAkrXLoV8zgGJ9mAp23PbwlqbBd3ut0mMEXJOYrbsyK22N
         LP7RjtrjmeDkgBTjNJJZH5mdEuG0veyZxBMdUVQqgaqgGGYVrZpvEDesyuDBItT2deeC
         XkkQ7T26ghwCKlokxyeodsEMUYZfwEkWjnCLtCWfKqBofrbOSZ/CXJJtGQN1wFZIFcX5
         R2mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=YrAGDpt1zAs/V7Nkqvw01MGOr+v3A4xjCaJbMIm6ad8=;
        b=a36JQDg9LW7kk5YaaLjPjxtMsbTWQfXfdb9Rc0/pi/FIT1SqiNZOrxWcG17ZJjlQvf
         uegjz4AkOtGUWI8XcM/ZpVZn5KW81XkN2ZIxLJggUJ4Ya+mRv8dAlQIhuZbzQ9TsFfDb
         9G8fDkaUhGYuLQPJ9k1TmznaMqmerruw9/Ptv2s3f+LiKWSVeVI5EVS8DuEqCP8vUrwV
         z2myh/unEioR6JpgINTyXEBINpyt8EiAB2RYicQ0E2/FjTWt+Yiwl8M+fdsRPSoPIPEk
         fPo35oZEcTwEleDzcBn9hapFsAt+JsEsf6m0f34HDpGM8ud3caz8hZMCJdw6RqcfRxUV
         v5Yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kI4TGFfZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YrAGDpt1zAs/V7Nkqvw01MGOr+v3A4xjCaJbMIm6ad8=;
        b=Q4txHuomV2OuJnimkMM8MCPfKmAC5E9q6qtsE5RZVc6farWeT+IYZSL8HdxIsgIIk1
         mRM9jm9U1+qFlZtxX3rhlLHLnZoSwEzHel1Dj9NVwzdoHipZj7RZSxfm/9awXPmb4C0N
         8Y8X3Of9iy8c38SLSAAOaa6+NHb9G0qTqBlsGH/nidSe2j85T/AppubQVU25g6PzjUjy
         I24QpSvSJFN9Xt2hkn2ya9OXnC47aTQcxgPNLMzazt6G0PGDlORRDlJMFozJxKSe2tOg
         iMQ8JnWIbj43CZo7OFZNAHrIKK6YqWsr1WzP96trNmDFmGcHO+cNGRFOzpFcAkDMdqyK
         4u1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YrAGDpt1zAs/V7Nkqvw01MGOr+v3A4xjCaJbMIm6ad8=;
        b=TyPCRZefxL6iauP9pjqwRSwhVrQbAaD2N+rl+bQg/WEpetzJT456Xo/pDcPEcA6XHp
         OgNB8vBf1LYGX9BDJ9ZYBvFr4YjvzEE7/nGQa3ejuX7ugrzPB8ZIOkfwRa+Tq4wEFSUV
         AV2QaSQ2N6elMjsSL+lx4nAY9yJXZAU2oFQzqlcSyV49ufSttw4QSMYFe3EA5XXZMQjS
         /FXpHOFwxVtFNwWeZ/ZThb1j6U2M2RhC2A+JXcXTA6Y7sgZXLOCKQ3C8kGl6fxTQtOBJ
         QiiqtVwmpteA/RqkIhJg2pxdWS5AP/JBuzCcRH4bTAjsMuQ/maIxrYjtddw4ElCcmBPH
         1OpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YrAGDpt1zAs/V7Nkqvw01MGOr+v3A4xjCaJbMIm6ad8=;
        b=q4QNq6vyWGtIV1OB/AGqSye6YapnE8Y2w4+Xi3U33uQjKpR7TMllornOeRGcUGBBrL
         FA/CRZW/lBjkmLkPcO8eY7RoU/UcKk4LKh0b3+ec2tK82Tw+/ZnEx4X924Z0HLWlvqLI
         5FuHfsU6d3SKCoK+0DsD/zT7U5EROmyImk38hXdih8IDwkLmaixFvLIokOwOkTdCAEYs
         2Lrzb0Ig6hF8/GPTci9cgorQ9wB0b5EnJ4LXWGew88VHZ8Erc+0IDbtX/inMeYH0WhWo
         mVN76QWPvI8EwdMKCYgEni1P0MIt6Q9mu5ZrUWYlIb8g8dGPZzdCSitQqScVe74Gpjbb
         ArVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYRMv6oMFn8q3imuQYIapd7EaH0wsIpWI/4is3LGSuNMQHyJ1TU
	v78BKMLALyDxYKoUBvTRP+A=
X-Google-Smtp-Source: APiQypJVYwwZeKluZastHV7LAyEe47bVBJS0wmZStaO65itI4o+njpqTACLvRfkSrqx7GDGWZyeh9Q==
X-Received: by 2002:a1f:9987:: with SMTP id b129mr1796170vke.82.1587662307391;
        Thu, 23 Apr 2020 10:18:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:26d6:: with SMTP id b22ls612774uap.7.gmail; Thu, 23 Apr
 2020 10:18:27 -0700 (PDT)
X-Received: by 2002:ab0:2841:: with SMTP id c1mr4467675uaq.46.1587662306987;
        Thu, 23 Apr 2020 10:18:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587662306; cv=none;
        d=google.com; s=arc-20160816;
        b=FGVrX5n2GzPDEhv1LxlpeCTFK2CWv87s6IxoLRh5NSo5axph+vuUCSmAoS4yqPUNWi
         SkBcGKqwDewUXKeR0ozOPqsvgKBTVVonBnCxPZzWxZfdkKUg9GqwchLOcsvUoUwkYrbS
         GVHA1a/c7WxhEau60v/rlFskm7aE6wnFyxDXNvYxT+ZhYoTDzHaUAgwP0u4q5McEtlkP
         I6RNFjT2RQA8BYzFHz3jaWgZCiDw7oSExZ8S6lVDFZzRP3lHkCxJHj5GdLb6fChN9zUF
         D/AF22G6T0i8khAlkUNmp14/4wevDtW1bTlTgiTyVKQEKRrlKp/giKOhksxvo8ox+Wd3
         8RcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ox1WLU3YUxcP2R/GVPO/gQRlaX6uwFvhGgYlvzhom8U=;
        b=OtoLIietJqpBj8ORV85YWNLKp3iU/WIrJVH7G1+5fG1ItE9ztsCszbL2F6cQqXOJQm
         fosEIcbZcBVZmXZPHmPRRsUgNow96kLXmJ5nqgkp62+oeNpX/RKNZ9a+RICzrycONCcb
         +ogbJ5cbvH9OQCGdJvB+BcWQznFW6EnWUfm36yxASVoW7KKhnDv1HC+BOg7HsJ3t0hAS
         48O6J+EtdTy/BRx0e42V2Q0Io2C2kRiEpnkg4C5UXWfGTWwGGWOhacAtF91+pp0yDeZr
         ODRgiEQfXat5m0qj3VUKECTdazfXoVmGa1UNJvfbVdy8yXbWC5tQH9KXaFS2tCUhfRSk
         Q5gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kI4TGFfZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id e22si316169vkn.4.2020.04.23.10.18.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 10:18:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id i27so7387224ota.7
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 10:18:26 -0700 (PDT)
X-Received: by 2002:aca:6002:: with SMTP id u2mr3861263oib.45.1587662306403;
        Thu, 23 Apr 2020 10:18:26 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id y5sm746726otq.38.2020.04.23.10.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 10:18:25 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v3 1/4] kbuild: add CONFIG_LD_IS_LLD
Date: Thu, 23 Apr 2020 10:18:04 -0700
Message-Id: <20200423171807.29713-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200419202128.20571-1-natechancellor@gmail.com>
References: <20200419202128.20571-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kI4TGFfZ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

From: Sami Tolvanen <samitolvanen@google.com>

Similarly to the CC_IS_CLANG config, add LD_IS_LLD to avoid GNU ld
specific logic such as ld-version or ld-ifversion and gain the
ability to select potential features that depend on the linker at
configuration time such as LTO.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Masahiro Yamada <masahiroy@kernel.org>
[nc: Reword commit message]
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v2 -> v3:

* Add Masahiro's ack.

v1 -> v2:

* No changes.

Sami, please scream if you are unhappy with how I worded this commit.

 init/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/init/Kconfig b/init/Kconfig
index 9e22ee8fbd75e..c15ee42b82726 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -23,6 +23,9 @@ config LD_VERSION
 config CC_IS_CLANG
 	def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
 
+config LD_IS_LLD
+	def_bool $(success,$(LD) -v | head -n 1 | grep -q LLD)
+
 config CLANG_VERSION
 	int
 	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))

base-commit: ae83d0b416db002fe95601e7f97f64b59514d936
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200423171807.29713-1-natechancellor%40gmail.com.
