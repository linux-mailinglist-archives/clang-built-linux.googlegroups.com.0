Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBKFGUSEQMGQE2UZOIIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id A45123F9C76
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 18:30:38 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id w6-20020a0cfc46000000b00370b0997afesf403923qvp.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 09:30:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630081832; cv=pass;
        d=google.com; s=arc-20160816;
        b=rZS7l19IvTQpGRilTIl5vs7uvZRG7sOEv9Rg2Ebxfega5C1Y1ZDpAXgToro8NDYAiI
         QHSKGG3S+Ykm/Z8Fl8Mx8OUKNGfb16cB29131OXzBIBpCKMFoKyrnu2E6SNbQjtCxLkv
         3ZNqXQ240dSPezh5ESLdFZvaZ9HhPvHkXIQQ8CP7ioaTmnpSZrwwTj1kkgh8C2L98c2G
         1CNWx3je+c+/m6L1R1cMS++CtVGxesneyrSMh2X7Ltmu2olYkKfmDJATaLiB8tq4XinI
         ciy85s3tDK8CD5qFxzW8gMMdqIixMY4wHxW5kcoFnBjAs1VNcwoqCMB6vqRhGiybRMDQ
         JE2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iaUEyMF4igM74f+ArYXyAQfzVIDRfRJJIAEHV9+2N3s=;
        b=K2m8a46oF1sD48YdK1gvr5C5JRLiVJndoYj2U7OtazjQDlD4O6Cj6fEDWTrFC5ZBPp
         5JSZlkG34OyAsyixQJniIONY9mJnkWZIz0lqoTzr3aR/uBwqa8cC2sONyMnynvg+z4mC
         ZpPqJtvcl5VLN1TM4NqTrA4Tj5sCJT1QpaI+Gt1Ah93Jh5AGiWMjbjetiO/HpjIEnZJM
         lLRXEDynTQoddAoBV+Yh2tY8NNZ9t5albwBi2s0a+zsW4hcAvxH5nTF8C99zdZhoIZBK
         gRp36E5pyWfC5EPR3jS/6Ba7FIkEMitGSw73pH5evho8Zavy21Xnvwh7n2XhSKCfea9T
         kXqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fp4bpLYY;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iaUEyMF4igM74f+ArYXyAQfzVIDRfRJJIAEHV9+2N3s=;
        b=FU1ynuqs0wgozkg8mclri4uzA1teVsAfa12WX5u9ABYcNtOH7UVh9hUldjD/KH0ZVs
         CRzbulshqQqgLHYyU4y6+Q0WwI8ti3Oy8nChfYKpW0m4xPHjSYvYrSX2S0cL7WjI0lyF
         dPRnTOzR7YgCr4RObvDvKAQHdYzkTd+wMopRFRcV72Y4jSG2k3j4F6T383Y6D4sThzj9
         HbjaLx0z7ExHbIPa+R/ze0rOhqB3OBdCMFh4rqGHrK1o548RjA/ULeKBm3Xpz+SJkR3t
         umCPSkrQVqnqI+lePJAtBYNib0RyiQG9TXvOzy8gM1opuZR7bMNS2SKb631hZPBABzUO
         onGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iaUEyMF4igM74f+ArYXyAQfzVIDRfRJJIAEHV9+2N3s=;
        b=nU7OGVcW+u0tpJauQKamsJvsqtAfbKhAiP+qIfPeB8DZMjdhwCxpSLMgxtUzGHuniM
         UfNCmONoZjcwz9QyMVrQPV6Lcm//NdNoh/vdQ3fcznkwnFyrn8XJo36E4n6b2YiT3l8j
         q7swnCw2uQ8o6HjZoU3PDvsJ8fOLMvtfRLf5TaBTccMfQjJKOCxUsyJY/4W+BUDDsSv0
         KAqwHLfdXydUJGmj5HN59l3AnVWiEW71UY/NU0MEL5AC1auz10AYhLuWwMceQwgRtQE2
         b4syhmdsdmE1jUSZ7kF0+L1NjnaX2Di5Psw4/zO1B2qnpVM7lc2Y/oydU5PvamFjXaS3
         6D8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533N/Fx8039e8Y7QMQmhIv9/U9WNHVtFbE1YjgYW+/1h1sODWEu4
	1hAN5zIeet7l8Jw2Su7cIJM=
X-Google-Smtp-Source: ABdhPJxJx15IHZ/kwELZKpOLt08/MRuoApHX+9WxeiW6thrgbnO+T+JPUzMUN4qDh45Kl0lsFllqIA==
X-Received: by 2002:a05:620a:1082:: with SMTP id g2mr10267140qkk.138.1630081832763;
        Fri, 27 Aug 2021 09:30:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:710:: with SMTP id 16ls5664966qkc.1.gmail; Fri, 27
 Aug 2021 09:30:32 -0700 (PDT)
X-Received: by 2002:a05:620a:15a6:: with SMTP id f6mr9898188qkk.246.1630081832370;
        Fri, 27 Aug 2021 09:30:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630081832; cv=none;
        d=google.com; s=arc-20160816;
        b=zGjpiIDmlJHFzp4hkx8qPpPDOYhyjddf4Yt8hPXSE9DLA51YegJ5g+LZQsphbcVmaT
         XyXUQ+Pyn+bSWdBdhqwRVK5GSss43k4KRM1rTl0sW0LEntCG/c4Of1L0OilbU6nYt0dl
         2S9NAimqVFm0PFLjyB5hiIkK3HgEjOK7k3SIa60XKi+W0d9Den47gLTDnx8Koxqh7PIM
         NzmUcQZPbmpoTBIinfxipp8aidBUKlU+oHWf9IWY0RHqXLQAZKCFHDdW72tBLqKN4hei
         hJBxJeEuVkfm2/xlIH8zMP5pdTIjEo3rJrioivWUaP6QyAhYddv/1r/nwwthYYWfG/17
         NhBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wUGiyr3xsPMSx8OhiS6MBjOzSMfwTo6qvLGkcomqylk=;
        b=L/qkW93Npof3mCP2jvBR+os3H3qCTRz8PltpnoIYsxhx7RQMxW2SNvyJ117N76+SfV
         T19m+uh+rGUQ5eVrTOYgXxPE/OnwVrwqzjCJBNMGGlgprUcuJhvqIi+MJ++c0Q+XMfAQ
         EyI0YqKIwGmmGTbBNOSVmjAzzSN8nTpuxsRB+vdZQ6cJt0R02/M14XY7woHkuJ4cjAcM
         i2IElpbM7zu3N9NhQ9TKpWzvSh3vHHag+iUeWbCtG6+RMrlSNLmhAUj5yvUPw6QKknh+
         L4sO3HoiHDzOraXuiE4mOh3oREdtTPnlvy1+gjIa9khBCwX8gx2YuinJ948U/VnHUb+A
         DkKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=fp4bpLYY;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com. [2607:f8b0:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id s128si642772qkh.6.2021.08.27.09.30.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 09:30:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e as permitted sender) client-ip=2607:f8b0:4864:20::62e;
Received: by mail-pl1-x62e.google.com with SMTP id c4so4252593plh.7
        for <clang-built-linux@googlegroups.com>; Fri, 27 Aug 2021 09:30:32 -0700 (PDT)
X-Received: by 2002:a17:902:744c:b0:136:a8cb:a05 with SMTP id e12-20020a170902744c00b00136a8cb0a05mr9520190plt.72.1630081831590;
        Fri, 27 Aug 2021 09:30:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x16sm7444696pgc.49.2021.08.27.09.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 09:30:29 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Keith Packard <keithp@keithp.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH v3 5/5] Makefile: Enable -Wzero-length-bounds
Date: Fri, 27 Aug 2021 09:30:15 -0700
Message-Id: <20210827163015.3141722-6-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210827163015.3141722-1-keescook@chromium.org>
References: <20210827163015.3141722-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=996; h=from:subject; bh=/SN5+6T3ztIGtswjzUhGWY/cmKXtgVAB5r1vX4FHhD8=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhKRMX4PEFBk7l4lz+prByvaAJlFG/Y2kCmVwrumJm JhcDUiyJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSkTFwAKCRCJcvTf3G3AJizPD/ 92QLLpXTpLLRbzzzUB0IeioWQMIASzu0K89wSsZYLn2LG8ukNzwMXgyCoq+RMzJi64FthppGJC4dxn 5waUOlOPI9Ck0FaQ+xaR+apjpwbHPLFUbRDFdyUnKZg7O4l6av1TCIMvNuy6kUvc9DiPPCeRhdJzOt 3PeVgCh/kiVQlZo3Lp/+fypoWYtwJ63sUk8oMYoO84eyPcGo1AxVkUDf7sCBFsSNkwl54aukpDN8hf 3cTSGKtAjZhbGsZWY0Ss/Sgly58d7vt/muhqP+671muebBbWRt/gbKpYVw4kWGFZN4ND71kbpgffG4 Z0Pg6pc8oBC1b7y7RApdPHMWVXidsmJ2gHUd+11zidZZmrrOOkd6eW/RDMh2T5BCmQqm/vy9RJpOOH WPGdPwqHWFpPaLKUpVap6svg3uoGlfiuPWymjuTrHylUYbUGfj8JYlQU6J6Hiwr8uGFKqOF2v0RGeW m12csqq0mPHmmw6HWPatqh5TYvD6135KC6iGIuPJZxXWRhyNjiUw2cTqPG8z77TsYWOYbevTNzx73p 1gqJBbNM+JNygLPWnfYMiFVNAGr4jKs0t0IjRpIfxlS9uJQMuzy7ctEPaGqXsAEIVicVSGVy9BAgJ1 iJCGKyn6DOr+od18DToNiML6X9vAbLBRNDtgSXgqFNXdJYyuU0+Fygr4T43A==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=fp4bpLYY;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62e
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
index 8e7e73a642e2..8e732e875e78 100644
--- a/Makefile
+++ b/Makefile
@@ -994,7 +994,6 @@ KBUILD_CFLAGS += -Wno-pointer-sign
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210827163015.3141722-6-keescook%40chromium.org.
