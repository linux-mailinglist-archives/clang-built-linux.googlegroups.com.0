Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBPXFU7VAKGQEQL4RPBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B8B83B80
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Aug 2019 23:35:59 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id a4sf38195546vki.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 14:35:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565127358; cv=pass;
        d=google.com; s=arc-20160816;
        b=q438tektnwbg9chzVDfN4JO2vSMyVsc5kAsJ5OZD7PisXHsda3taoejqB32+W7EbXA
         fwkTsVU9KG1mNA9f+nAT8t1kY/qVjxs60RkyQhYevtwfH79Vtvv4kxNbIZ+Xr6T2a6rE
         4Fp0vwqmKvyp1kvZ7gFvnjtUrA0W4DsH9SmXCvXKUn9bXZSMBQeNyr81+2xq8B8nWbM5
         zudmG2ilN5vYWxH8wPPDSmnF5omAxT8LKG9xKKJ8Fm06gnMA1TDGVXAA3kUPtT3GY1iH
         dTianJZcrWMS0T1QfOezXVybNICSbxN792u80KMZGYq+BZO5YwB1GgrrUFzB9jpj4pl9
         h09w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=LBrFv2DXbpfoOpBMXRhK6CpBBzL7TD0WFqk3xseUXY4=;
        b=ySJTdJyVgd8wMZbAzOsIo377Or8DRmCoWPSkuCVLgF3/U7ocKtYAxy2WHHFzFNhGuu
         jzr2eIECEXk04SyyGnT8JC6+19I1jJuRGCMFgCa8eVreAdkMSjdJ628tZZWf9xF5lNlC
         2HdWXBXENJI9BOnGaCCQqZuLJe4MZKYlB5AumMhC1Ku80BDOVxhRQ1ATqu7dmCrCDtHC
         yJ5/lWEtDnQfzW7vfxWl2yPZIFfJ8Md1x/wl4BYIapaGnBnqrX3a2K5Sh0DQfPEu84PD
         S244j5tn/B5ZyhTAVHTlioqYwIwp2f+Cd+zhjqQeuRs4UV/aZSaaAJsesIAMlGK2StVZ
         Bzhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XArS8nSq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LBrFv2DXbpfoOpBMXRhK6CpBBzL7TD0WFqk3xseUXY4=;
        b=qv/DpPCi/mR/RsuEKODv4vs2FJsJlkxCuDRiwHLW1cw67K4OR61Bp2VszqrKzP8R4Q
         XV85b8xhNG63vJEDZS474Lg6DEgN80wJHsTeLKqpF4Uk/6Lxd416+ygjzhQUhCRXOBQE
         GwL3NexlyT4kB3AG7q6Q0KtcVeRFEmBH5G2fxiWw1b1b5OGg8a8SWgz3QHynyRydouRG
         ZNhAq70Bp60/HgHdK9VhqW5OLRgVifkMlddhM5PPN6wZciIaWP/X5JXiG6Sl/UTLnVNh
         JXbb18btabRjIWoOl12/BAqLZSTluR3I7FwG4uxA8aOCMTqnnbgf4DLhU3hBg70L1y9M
         oMMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LBrFv2DXbpfoOpBMXRhK6CpBBzL7TD0WFqk3xseUXY4=;
        b=iabM+qx1yyOINrH3og7WpUYamzqheqzdmYzEI3cq2x8FoiCQQe/C/H4pgVYZ5M8kur
         XddMGNqmPK3USuV8YjL5cgZRFpRIkI+LLXwuiM7LKB3Ciyvlr6GzfvUeyv2P/zMOHdIa
         nG7+jhtorLCtAGLjITKrkmQ2MefRBxp0ufhqTAV/jWeV88lVQB7/int/NsOJDKii6qxa
         nGDwX23kTLPQpIgM1CXC5mPWfWxW8UVIqpxXDEw3dHXB1HRZj7iRkjo6Mvq+CFWuveVH
         5OQwTjxkodHQDpUxEMI9whIvH/417x56db9/b7qVxwC3YXYWCSOHGZqEjEpXoy8zEZoF
         f/pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVXqIj4lu6KgBDtdXuxaQnaqOGUdK6eF5u0Ba3dXw9t+/9rS25U
	Mg/c9Q3rjAvgmp6fywNssIo=
X-Google-Smtp-Source: APXvYqx1JL3Uyw0+eXnf789b0AkTmhmZq1/G/lo7rwyhOu6Ncqy/1HIptAWmoC4MDjWbJKvbgY92pA==
X-Received: by 2002:ab0:d98:: with SMTP id i24mr3840414uak.14.1565127358151;
        Tue, 06 Aug 2019 14:35:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:76da:: with SMTP id w26ls6216197uaq.16.gmail; Tue, 06
 Aug 2019 14:35:57 -0700 (PDT)
X-Received: by 2002:ab0:30f5:: with SMTP id d21mr3803665uam.67.1565127357895;
        Tue, 06 Aug 2019 14:35:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565127357; cv=none;
        d=google.com; s=arc-20160816;
        b=E2PMv2xZRuI7f9XR+JWCKjKW4K4e7yHH3b2WA4FO4FF8EO+XlYy/My0ZhjSsOVxZwM
         TC+aS4pJ45jBxJLoQO8SUOEPTQ3AO6oejjqJf4Swud8xoyCXURZ5Z9Mhy0UOOdV56lk6
         P7Z83MhBkScIil+6X9R6hzTBzn8ECTQszn3+ZkUpBeONq0nIbtzx8+Z2Ai4KadOKLYZb
         YvGSP9tNbpfzjwQ9AC4siMUjk3EDWzLXo/gjuky1T/DLSSLJwA+AAkEE1nvBJw7EoZV/
         aB1diBTJl7H583/RwEytKamqW1TTnzX2xkqBUnDSI+5gWA946N6th9xVNhAJMVgAMIji
         6QuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mxu20Ut+iA7yZSJf1T94BT49YEja15YHGAEqnnTTPs0=;
        b=SQFoa05L1niwMDg2MnRImh3h9+C+w6aFoVt0VlBAF91ErKapd93lW9KADvJIKErH4H
         kZ4ZlrnzusPnQIDKvOYgbpExnrNtA/FGY22kjEg6wZ+ZBJAy+rRRG2skgtsFApv9klX6
         2woZvK3qWzy1AwnCvYNRSRat55SB4LOo8G+9SIv1zLFgYWPjLdS2JDTBvkNDBN3jVd91
         xcJdO7XiS5JIwJIILwf1dULwmkViJddYfQsDeWSCHoH0mYttoF8UuXoUa1rYLKZRlTMh
         vlZNwEqTdNeGsFKyKrIZAJMb/ZyLemfHOR2EVDKbHEAMTndhGtA1v90DhKPIwimAu3wu
         l+fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XArS8nSq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i9si5980439vsj.0.2019.08.06.14.35.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 14:35:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C97B221881;
	Tue,  6 Aug 2019 21:35:55 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Stephen Boyd <swboyd@chromium.org>,
	Peter Smith <peter.smith@linaro.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Douglas Anderson <dianders@chromium.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 19/32] kbuild: Check for unknown options with cc-option usage in Kconfig and clang
Date: Tue,  6 Aug 2019 17:35:07 -0400
Message-Id: <20190806213522.19859-19-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190806213522.19859-1-sashal@kernel.org>
References: <20190806213522.19859-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=XArS8nSq;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Stephen Boyd <swboyd@chromium.org>

[ Upstream commit e8de12fb7cde2c85bc31097cd098da79a4818305 ]

If the particular version of clang a user has doesn't enable
-Werror=unknown-warning-option by default, even though it is the
default[1], then make sure to pass the option to the Kconfig cc-option
command so that testing options from Kconfig files works properly.
Otherwise, depending on the default values setup in the clang toolchain
we will silently assume options such as -Wmaybe-uninitialized are
supported by clang, when they really aren't.

A compilation issue only started happening for me once commit
589834b3a009 ("kbuild: Add -Werror=unknown-warning-option to
CLANG_FLAGS") was applied on top of commit b303c6df80c9 ("kbuild:
compute false-positive -Wmaybe-uninitialized cases in Kconfig"). This
leads kbuild to try and test for the existence of the
-Wmaybe-uninitialized flag with the cc-option command in
scripts/Kconfig.include, and it doesn't see an error returned from the
option test so it sets the config value to Y. Then the Makefile tries to
pass the unknown option on the command line and
-Werror=unknown-warning-option catches the invalid option and breaks the
build. Before commit 589834b3a009 ("kbuild: Add
-Werror=unknown-warning-option to CLANG_FLAGS") the build works fine,
but any cc-option test of a warning option in Kconfig files silently
evaluates to true, even if the warning option flag isn't supported on
clang.

Note: This doesn't change cc-option usages in Makefiles because those
use a different rule that includes KBUILD_CFLAGS by default (see the
__cc-option command in scripts/Kbuild.incluide). The KBUILD_CFLAGS
variable already has the -Werror=unknown-warning-option flag set. Thanks
to Doug for pointing out the different rule.

[1] https://clang.llvm.org/docs/DiagnosticsReference.html#wunknown-warning-option
Cc: Peter Smith <peter.smith@linaro.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 scripts/Kconfig.include | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index dad5583451afb..3b2861f47709b 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -20,7 +20,7 @@ success = $(if-success,$(1),y,n)
 
 # $(cc-option,<flag>)
 # Return y if the compiler supports <flag>, n otherwise
-cc-option = $(success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null)
+cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -E -x c /dev/null -o /dev/null)
 
 # $(ld-option,<flag>)
 # Return y if the linker supports <flag>, n otherwise
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190806213522.19859-19-sashal%40kernel.org.
