Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB7WBTSEQMGQE55T6ZPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A581E3F81D7
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 07:05:03 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id m10-20020a25d40a000000b00598bbbf467dsf1954811ybf.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 22:05:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629954302; cv=pass;
        d=google.com; s=arc-20160816;
        b=FZm+i6R2V/DoLWTcYfpbPYjHAK0FjdTDY7NN3iP8lQWYgWcExKpO9+rSOYhzTMrQyD
         sscUVevbAXYoTNKMCCn3FyJt/Jk4RhcLUwQF2ZVeUf+j+oVHaLO5c69/KN2+HbwUPtQA
         e6XMunl+0MPHAB/MGfij7wQSXurkbeLdeh12Q5tY7L3lGVARZRvQIvDJvAXbn9jr2sSy
         CKQbkFP15iKDRl04eY8D0/m3eRwvuhv6USJ6q8hVjYB2uoIs18pFpj4A6u9X06HvfC5S
         NIXWhpvrwm3um27QF7VsASWHrsqsRb/sWxuEHCeLrLbqzx5QJYEHpADYQjySd3wlf78C
         V3hQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tWfXUuz4KSjqCMgZVawB7UhCTUdaocfkQqlbZtFGqOA=;
        b=uOzuNxZrckGfXQ2sn3lZKuwP0bYYjnjjoBe/f4Llu3ck6S2JWzEUw/lZmFQm9/upMO
         8picGcWhZ0/sX3XM2aAjgksIV1UMdTje3sAzdRYSnCdL4+FNVhLHwMdXg1qRcqJTr0aa
         2ZzMkLfADqmz1YNu9ElYDy/id/hVubDeEsA7IyrJ70wxx88VIyFipSIisVjCEq9tMoNJ
         T3cC43gO3/2kuWxXtlgCrf93uDc1JAR/NDMgvJYmGu/S5LxaJ1sqwmTA2n7RxNtTnkjQ
         DJ1UJsRBODXt4xUGzbUMQtoTNqqxDpt3zwYBzSUwMfYSPcIjiNEYHOMvQLyCFUlmCi1i
         5uAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TXfA89Aw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tWfXUuz4KSjqCMgZVawB7UhCTUdaocfkQqlbZtFGqOA=;
        b=GgI1WOOrpIPqVJUE3u4muFn0+3MhuMte5/V5qJT7sdU5qmcJz0ZxMHzeFEL+sMjcK9
         pGHZ7t7DGK56wtk0itW9L77F9E9d7g27Mxqxa4FzvULpaP9VkkkpogU2PpDjkC4zauEl
         mOZV+BfdZQrbVZv+M+HsTMfRzcRoVEfZiuc8d2C78tJC4PJuCnevWE6LqrvxwlsIUBZg
         Oo8qe5H+SXJciPU21VngMDSHQLEJbR/OviCY1yf/ydsAvo/ggbFCOy4DES/4ie1iOQmK
         pWcBOGw5vCVygT0bcXZGUbLu5UAYHZ8q/+5u3YgTuxXbVM3fyFPUqITl0+2OXv+Kxp8U
         2PZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tWfXUuz4KSjqCMgZVawB7UhCTUdaocfkQqlbZtFGqOA=;
        b=P5PC4rLVQnSlee+zt7fYBxAZhQ9IjdiFgVgGVgWDSoQgiLA1BvVsq42oTb9dcEuInO
         A0DZk7nfGlL+J8eWx1UCa66Ax/RmvJOMTGXIu51eAPfYesnniqeAS7shaWWVTlGm3Ys1
         iG43BuvsFdSTN8xAxA+UllD/IHu/byKLkZKWHnC+t34BV/DPjlg/1zwAElirbj43vLKA
         YuqJe6O3PJ+2VVommlPbhDdnD8IX9NI/QPCwTqb6P0Nu/Js4nQtnOy6EaN0IsoV7BPOV
         Cs2YCUTy1sIA3ldWeNJxByjh6tjdPc5EiTTgdIuVkTrwNVjEKiVO5S0XDP8ZDV2jZz7M
         ABzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Mq/suAlaMt20d9CY1fMF2aYJDZtG9mvF6uL7+A4waPFYCqSx/
	4hBt8K75KWHvRV0qcyEToAs=
X-Google-Smtp-Source: ABdhPJxO1g9jN16AVo+RnQhy0RXIYDdAPTPY9GYFDd0CKVLKnmLGSitRWV2e5YS3kMFD9UyCPuVypw==
X-Received: by 2002:a25:6709:: with SMTP id b9mr2812759ybc.126.1629954302424;
        Wed, 25 Aug 2021 22:05:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b981:: with SMTP id r1ls2442168ybg.8.gmail; Wed, 25 Aug
 2021 22:05:02 -0700 (PDT)
X-Received: by 2002:a25:65d7:: with SMTP id z206mr252715ybb.417.1629954301962;
        Wed, 25 Aug 2021 22:05:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629954301; cv=none;
        d=google.com; s=arc-20160816;
        b=reYLZxZxyxpGazS4raYHSNx/DyrqyJBLQ+7QBG98KvvTKWZeU9TCPXduPIU5xCyXMZ
         V5UpMNfGt3JtSdv1bOReaDRYof/Wrq4OrS4nHxoy9u2CRH4b2TrNEaewQH2VfHmxCz2j
         k5YQL6ztqO7EnQfYD+zG1T8tmBu7tc+j2cCEYFbTGjkVZd84orxQuicbp7IEGzGwBQiz
         i0YLImMkJ8/NUXrFbvhnn4ErPMKa5KevjiJYo2+ttY5j3JJPtA9buphA0QqC12LowV/r
         nbo8zd0mU0dij91Ids62w388EGXlf/XSXYW5JuRRL2V5K7EjPXPr5HnmwQ0H11+El8Eq
         ROPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=H+ke82JqnNzuF+ETLARNzezEA9Zqm2D4YO8akYC5ijQ=;
        b=WplbyyJmjXTloQbJ/ZXffkZGatvtiOWzl/jUp2LdPOJhSnNpjjuOn2C/b5010bR3B5
         QacUoO0Np9vbssNiqKxIa6G6n1Epp8NP3PNZP6mnNr3/I/+4gMAkSigM3myhR7tUxbL1
         ltsi/wWDinU0FgOWFykoW9TAnVtDttwFqVhQBr62kDsxvWY53BXLMJuTfQz8t99BUoqI
         b9n2mbEMdqgrzysBhxxNWGPyW4Tzw/7dTOnCgKfkSL4gHm3RWjQzV2WjYeIzaYM2jou3
         bno90YPd6hPWF7sJ/56zllAjT6XSU7eWh+FSCZDpqCoSpyoRL8f+SzQxP/Q9gxr+Z3KL
         5tRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TXfA89Aw;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com. [2607:f8b0:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id q10si151375ybp.2.2021.08.25.22.05.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 22:05:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c as permitted sender) client-ip=2607:f8b0:4864:20::52c;
Received: by mail-pg1-x52c.google.com with SMTP id g184so2066085pgc.6
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 22:05:01 -0700 (PDT)
X-Received: by 2002:a63:c158:: with SMTP id p24mr1726458pgi.336.1629954301691;
        Wed, 25 Aug 2021 22:05:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d18sm1812151pgk.24.2021.08.25.22.05.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 22:05:00 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	"Gustavo A . R . Silva" <gustavoars@kernel.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 4/5] Makefile: Enable -Warray-bounds
Date: Wed, 25 Aug 2021 22:04:57 -0700
Message-Id: <20210826050458.1540622-5-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210826050458.1540622-1-keescook@chromium.org>
References: <20210826050458.1540622-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1113; h=from:subject; bh=oefMcHZzjrqvoOMjUB7suXN8EJKiDU2oIYgtW+uUBtg=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhJyD5aFIio04DmLvoRaIim4FnyDX46vN/W1R6TAc9 7X8LHOKJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYScg+QAKCRCJcvTf3G3AJnbVD/ 99uKUWved0lEF54nU1F7qKRM+Mv7siWIawdByX70YCMH1LpDZs6ja7HAHyb5nY0zJbQwGopcJsFn11 yntizr+UNLRhKE+CI5hmHijdbpaXrvNxCaSJF+DAkyEjqlmlAHSm1FWzX2ffYiEMhJTdPUebBpDVYr xwj4co1+92cPTQZg9VaD5UN55j9gc46QTYRsyvBl2jxtW8DPSVTWy7vaCya9Bn4TY5evml2nwFt3p+ sf7fn9Y1rf8xHpOEa+gNVbFst4tZ3KV9UupkpsSLi7+VLwDm9g2fwhma1aWdrtuO3q7iBbKEs3Y2Qq ans0Np+r32K3v5Pm7PYx8VDN9zn0LvK9Oc4Gsm6blZyPCqulPENZid0NeFXBICff4z2MgWn+UR4fyJ EqSn/aDYwWG6PjKkkfVr4NZr/olZHzwEhpaqReNAWzV01WUSmo+cmq3LIR7SslJXMiPM9F33KwApfq guhvH6SLi67EfhowGkIyFpDil1Keh+khqje+ZsIJgTqAhiBF72scXtqvP73hNT6w3M5x46LZyRLDbN TjvGaYP/k4JRtFdZYCxLFFVDov+8nlgA09DuTuePiFy68KyvBo1pZPZSNJejo1N5DSu5ll3PmckN+A IwAMOP/e2UwotUVUgDM95mAQA/ypXqzU/BhSxY9MkQfLOT5IAjW2i5ByugJw==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TXfA89Aw;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52c
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

With the recent fixes for flexible arrays and expanded FORTIFY_SOURCE
coverage, it is now possible to enable -Warray-bounds. Since both
GCC and Clang include -Warray-bounds in -Wall, we just need to stop
disabling it.

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org
Co-developed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 Makefile | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Makefile b/Makefile
index e4f5895badb5..8e7e73a642e2 100644
--- a/Makefile
+++ b/Makefile
@@ -995,7 +995,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
 
 # We'll want to enable this eventually, but it's not going away for 5.7 at least
 KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
-KBUILD_CFLAGS += $(call cc-disable-warning, array-bounds)
 KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
 
 # Another good warning that we'll want to enable eventually
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210826050458.1540622-5-keescook%40chromium.org.
