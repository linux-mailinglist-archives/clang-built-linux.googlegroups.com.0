Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLMB6OEAMGQE3G3YUVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9A83EFED1
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 10:11:26 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id q19-20020ac87353000000b0029a09eca2afsf474495qtp.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 01:11:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629274286; cv=pass;
        d=google.com; s=arc-20160816;
        b=bI6mSjc3IeFGYqwUca3meOUqn7FBwmPMcnsWh9jUPT3kJeS2O/h8Yf6zKNjJVOwyoR
         ZuxxYbHcvqeJSz+25W19zViBewacAO2R0bVoc8ih6VLCwBBprF+jS3JJpKEbjZ2egbQX
         q5F18XmdQFHDfoHvBLry6Y+swmM4kB0TCpgF1d9XnNmzG4NeeEyFAOjECV+SBVvY7Mq9
         vXZzFsS0MFa9qtu6xo/GymyclmpF08NAyYC/p3FJmD8bYaF8QmF0u8Oy7Udk6OG+FN9r
         7/W/P9l5L1IPBDV2uA6G+5arIa1BmMV6ohQRYXmieSAocoMqm0C+LqTnMOocQ6AEICeB
         u4mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6p+bX6R5LBW9WMN8q76EXtmFL8tKBz/o61EG8ZmR9Bk=;
        b=GtolQE79N/S7LM1em7R1bxP+6uOvV1C1wUpvIxPEm3jaf5lqgTl+oL2ejbXteaQ9ui
         ivJzgM1PzREosuXAcw0A60hXBwWopNqUH6N0UAjGTF17a+LS3emsOjzlZe+WyYQEKVVf
         tl1GsiwITYu5aNSanLMkubdpR1u9aJU6Wa2CvpiP5dymian/qk7Km39zaTsXeoWl15cX
         JcNssYN4rRQvnEjcQ+/F0YEdLiP/nrmSmjo9Kb0IQHTCoKmgACFJrPNq65hT80kjfNIK
         qvjT/SHdKyk+CQ4sfVuHpmntNw9qtNvtWTez/mcidpJtf/2b079NchxORfPSrujvQEiw
         811Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CbD0utKd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6p+bX6R5LBW9WMN8q76EXtmFL8tKBz/o61EG8ZmR9Bk=;
        b=pNCK97MX9Tz04seQd7G4MfRkLdRCQAUYyUc/Sjhbop2IAIrawuyLe9Jbt3eW4Qvqxd
         oyKdNjoKVbS/j3+huxYNvu8/drzQ5RjSt9B7wXdpcys29VvvFR+RhXp6Ib5wJd3Wsmn8
         SAYfUwntZQyxATugSIQI9TXEOrswzY6qHI/mf/dLEVnaSM4c3OqRP+X5STWQgw1b1qhY
         WXkoPr9Hrqp4teWlaMZjM3Mfv9cSYZ8dKtleydIy/80miolZbU2A4l/2z/lQi1FBtaJz
         ZVkkEigV/5rwfFAWf/4Ge4V7BQyiyT8+Qa2zMzNWErbpuOwXZOObDEaq6fLjnKw/f4yY
         lYpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6p+bX6R5LBW9WMN8q76EXtmFL8tKBz/o61EG8ZmR9Bk=;
        b=sSaFy9ibEaaLtVIfoXDyzDtsYD0HgUgIt8NS2d2Wu+R3YPH+byqIuPdD5PZRuaFjud
         2bPmu5Ozjl3lClnp1NWzojxNubl8jAYBqzKVoQ/LCR7zJ3Tc0Hgi3+YS2XsTul8Zbokx
         Whr5orU3x3A8UTlPef94jbWif4rq/TCCM/f7WKB2hc2uT4+GSbSNEhrQ23e16IH8OjHI
         Ac0coJMytFxzmrXDl+fVwt+19O6psddTuqCcweNeG6aog80OlbE67HG6A/SoaSG2hBQq
         6qzft5KaYh4u+CSOKEOYRw8V1lrA7WewoSSN0jypPuYkAGdgAOozzSZG4YFPtrwF4a9K
         qEdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sfTiWFgLUbrunVSnXCdpovsGi7hZYIF38C/+BtbVanpdRz3Oj
	WBmuTvy1FJb1kg3up8+0o+E=
X-Google-Smtp-Source: ABdhPJzT/sqdbITMsM/RYBXpnWeWNAwEgZ3aKDv0Ny+cABTO5GL19Qsr0YnDYJ9WE5T6shahg1I0Lw==
X-Received: by 2002:a05:620a:2147:: with SMTP id m7mr8271997qkm.117.1629274286035;
        Wed, 18 Aug 2021 01:11:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b204:: with SMTP id x4ls403749qvd.5.gmail; Wed, 18 Aug
 2021 01:11:25 -0700 (PDT)
X-Received: by 2002:a05:6214:e4e:: with SMTP id o14mr7748364qvc.46.1629274285653;
        Wed, 18 Aug 2021 01:11:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629274285; cv=none;
        d=google.com; s=arc-20160816;
        b=XH2fm+zGlVLVnVI18TaBHt2LA8pTxk3oBxFps2ISKVf6dlTl9P+jkFDrCLaVoNz0LR
         AbhW2ESAqNhp+2q5SxtO7OF8T+Pme3GMgzR0kF/m1nX1I0dXkCYLKbFJGf5/QK4qbZwm
         0iI5vB4EXhqn9Ro8NTPES4vLIqK0UZo9gCkVi7QbTIrEDzS9R7Sk3FKqQIYCv0sM1DFs
         7OsVwN2Uiy9997SY0+CIDhxXdkZ4Ty5XbCHR0H2QXfRBGFsEZWT6za40mh+6x5ZasMwK
         o+9HphwA0pBkYE5h+BPpF/pjQQNIEy1SjU4fLCKvSg0DNwGc0wv2+tQImDnnmBRGZxS7
         iU9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WSxasQLMQ7BBR7TdcGRSlk0G4XKWZX+xPade0LLrxhk=;
        b=XqCosiyoOMxHoamlAlPgUu02ST16c+WwQqsLM3HjDbSmuDOPXNA760v8QbVfKQ22EU
         zSamPY/byoWdDEjKqJrA9CFoLn+jDlCj1n6x5ulVARdBaT+17/0r/dmoEfR6ZAgq86iq
         qS/HvnnTxQNZdviMoWTrizuIgHNKYnmVEYr+c8lzA4PYh9B5areMs2+vgRbAaG37gk5f
         wiHOxnN2v1DiKRFyHD/xyKeJoPhZTAQb59FgamKXjt0QBYD/I3mX9UdmBo6CFHEpUni8
         plp/TIxg7Y2EHsrV7NTjvMSUnCIPKRdRTWaxpA3NeQHDfS7lRGCYQtHrxzGxSjv1xVjy
         eyVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CbD0utKd;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com. [2607:f8b0:4864:20::102f])
        by gmr-mx.google.com with ESMTPS id s128si316061qkh.6.2021.08.18.01.11.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 01:11:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f as permitted sender) client-ip=2607:f8b0:4864:20::102f;
Received: by mail-pj1-x102f.google.com with SMTP id u13-20020a17090abb0db0290177e1d9b3f7so8435952pjr.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 01:11:25 -0700 (PDT)
X-Received: by 2002:a17:90b:1493:: with SMTP id js19mr8213217pjb.53.1629274284900;
        Wed, 18 Aug 2021 01:11:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q3sm6254086pgl.23.2021.08.18.01.11.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 01:11:23 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH 5/5] Makefile: Enable -Wzero-length-bounds
Date: Wed, 18 Aug 2021 01:11:18 -0700
Message-Id: <20210818081118.1667663-6-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818081118.1667663-1-keescook@chromium.org>
References: <20210818081118.1667663-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=998; h=from:subject; bh=VMkL66yeOij4K1iaHsjPblzabYjjgbbejH3VnhYGySY=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHMClHULohfwlYl/hV7Z7Tw6ENdG87mPM0BxkmZ03 6QqKgdWJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRzApQAKCRCJcvTf3G3AJv3FD/ 44FfP1SqqRlWkqqnJ3WgF1Uq38Ay4cWhio8wr4PJxqluecJNm245E9vOGSWxS1NPyM/1K9e2Lnt5lX UzX9QSCQSQeklVqfDkGhDayYKmK5gHcDUXimko7elgaYN9OK75FunT5OZiSPResOHFK1MqzX0cfSno e3BJ+NSDveGnxWgWsHV5pHof55dXEB8KYcG2dw5pw00PGIN0jcQEoKMT/xrPDTzGhTVoFCiSxkz3SB tv5zcDPaBoQ5p2R41J+wmH7Vwbv3MAcb6frYqpZNg1NcWqyIvcK+xUJ5YGV+8WBwdPH8UkOGTDsoq2 uodAFvs/3zjZ/wScjZYb5UuWSGIhsE+e2WYnW3VTkYHzcHbFbCMTcWMdVRl/DQTvYQkWmUa4ruhpCU dh1BKMgOUhOpdHeHIbUb4/aQJouuUWUm/TVZCOEcIteBGmts1sXS7y+JFYYscebKa4qaiBGstkvq9u 1BSSawi2FQdm3tUyDc824Eqt1fQbv6w/ohNmVyUQCuBfjRKpUyC7EXVpm/YOKTYfL7bJkivNuXSqzE 279DBq7DcuRW4x71TRLrb6SFcKoP6YsT+hFyjflGTHsbzfIuyM/8hqsPQ7xYvd+ZoVPcf3FY6Ckij9 ATm1nXyJhHf9YqQRBcP1Yu8BSi8UkrVo+8rcX2SVGlOO5oC+wg6yqEhAU/wg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CbD0utKd;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102f
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

With all known internal zero-length accesses fixed, it is possible to
enable -Wzero-length-bounds globally. Since this is included by default
in -Warray-bounds, we just need to stop disabling it.

Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Makefile b/Makefile
index af22b83cede7..3b6fb740584e 100644
--- a/Makefile
+++ b/Makefile
@@ -1071,7 +1071,6 @@ KBUILD_CFLAGS += -Wno-pointer-sign
 KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
 
 # We'll want to enable this eventually, but it's not going away for 5.7 at least
-KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
 KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
 
 # Another good warning that we'll want to enable eventually
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818081118.1667663-6-keescook%40chromium.org.
