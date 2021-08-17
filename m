Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBUC5SEAMGQEEJYJDBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id E16F13EE0D3
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 02:21:27 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id x13-20020a54400d0000b029026825ff437csf4759052oie.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 17:21:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629159687; cv=pass;
        d=google.com; s=arc-20160816;
        b=LdSl22ujhMG51UDq2r2UU3s5DC1UqGGjfPhrMcbrQUtpwsTnUj+ftNnxtsqwVmxjI6
         X6x/U+34a9WOqKLCH0OOUd3XO7ibPVg++15vSiYWvuBiBoYjAfR9srDyI6XKmKxyoCyC
         iEsNSRDAju76ASq4cKTOAsripTOSOLTVotvB9GUAaNEXP+XwhLtCcR9W+BadZ19UCfLD
         mMxiZkClCR1mBalqxj+1kGvgHbw778wHLQPyZ/GNPXHNjo4Eu5MrywYyqevESVCm5EWG
         v61ka6+yvF+UuPdRmWZrOLjMV+lIkQrpvGNzJni4tiignOq37olF3h1VC+jCf7kj4NiU
         Pgyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=tBoNoQ2xfXYrlnn+kiXyd2pjOpzqRK+cWOm3gmu56ho=;
        b=lg7A+a0WfO6fG6vp9oCCfVdab75xs84OXc816VkEh/Y/BggFP5KcWBOJbZMc6vk5V4
         r4bUwflZCkHznDkpOIegQB8OVEdz6BxeQYpB+j3deb5of9HqPOtdfbWdajEJ1rXPTDIR
         tr/IoOsagG9NtGrjoAcX4a4+QjnPOyCNocA7X4oo1YJ0aVtUH6thW66vYQyx4AZu6YJf
         hZrP/3kb5TjFigiqXWIQhJghKaeMQcw64z5JCkyGNsaSq7s8w17LJyv5Ce2opbRl4znI
         mNCytsx+21mbuXUzJABLKXrJAhWN5zrxqwMW7zc5qpZ5fFRGR8VMzB9PfdsHWLJ9ybD9
         DWtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TRXaJLDp;
       spf=pass (google.com: domain of 3bgebyqwkaimuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3BgEbYQwKAIMuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tBoNoQ2xfXYrlnn+kiXyd2pjOpzqRK+cWOm3gmu56ho=;
        b=LtnRjtuihRb8+mc3ZsAOEHc88a5FugXd9341sMZIB1l/MXFJlxtgcnC/FDrU/VKLLs
         daktLy1VqKZ/bAmM9XkBL4oxsv23HsSQTfuniXgbxCLtSCWPDRG6+tLpsxaV7nkKwrrO
         ExsMZNo2ZSnUBIFBtpUCRpzs/8+N829RvHiAFJyqy3zKkJQ3M/0XbCGh+Px4i7+6fFHg
         JNgbiJeqv+nrmmX4g3RCKoz5Bi+d+bGJQZWK8tBVH1MJ4H4IKV6raEdWqkPFqVk6HVSe
         7LUQCT54UILa4y/NJ0ISKXeVVECvJJsNY2ePZ8AHXAY71c0LITt/HOwCarJRBn3zTRg3
         DeVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tBoNoQ2xfXYrlnn+kiXyd2pjOpzqRK+cWOm3gmu56ho=;
        b=FF98mg6wz6llFmZ3j8xdJRC382hXdFryB21lkSpLlGpTWsCZyzhujgi0JLwyg7hfbA
         pwSqlN7BgPQtM4YAO5214ztJJdDeZ1l1Ri0IlXvfLWgGbo/TDqSCT/s0RWbiSQc9JZor
         K8L+youqqg1AYeh7vR7xjp//xsXJ1IlPdYrLvfgcPC8NxTbBkOPfc+JBxSjDf3da99Nd
         gYTqffKovkwS9L052LFQDbMy8X265Et4Wgmbh+AWsQ13cCkFwQi8TA08QWGVCNvfLvvd
         dbyoJ9xoklwi9fpV1kmQ7QS08luaMwgSZcLmT0TRldZOBiF7b19GhqlfQpRLrW9F71Vf
         fuJA==
X-Gm-Message-State: AOAM532zmsRA4CRclGjrB0igm4dhu0nXHvbEYW/ltf+vAGaceEG6W4C/
	BCl6OcHDwEMl+bG+5Y4wpVc=
X-Google-Smtp-Source: ABdhPJx99DbbJFzlBQPH0pg90XbrEcF3+QgJT4mYK/lSRUrOAtBHS+xuEimiZvNkEXdpEsxKGTCwlA==
X-Received: by 2002:a05:6808:bd3:: with SMTP id o19mr385693oik.10.1629159686956;
        Mon, 16 Aug 2021 17:21:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:4c42:: with SMTP id a63ls33848oob.3.gmail; Mon, 16 Aug
 2021 17:21:26 -0700 (PDT)
X-Received: by 2002:a4a:d457:: with SMTP id p23mr54379oos.70.1629159686624;
        Mon, 16 Aug 2021 17:21:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629159686; cv=none;
        d=google.com; s=arc-20160816;
        b=tIlVaGcm/aY2XXgXdFsBvfZn9lF1zVurY1Xh+fIHdva9/c4YU3IzTKT9DwgMdyaDAS
         waM2s9nesEfhmtqsokYSqzHxRfqXsgIDKVQrR0BX2ci4ZEdkqBNbmjqu40vj0r9SdBkQ
         M7wqZslVLxXi4Vfx/Sng3oQlN/0yGHaq9HQ2K7V9NSYIaUHRF/vJ8RXZygoQ1nvy2zcM
         SBkpy3UPrth7ZHT85iX1pLevfLpWRpHUO3MOp4L/Y3pqLCssNhd6Xd+Ghtq84fEZu2nQ
         lw7ePncE+pUa1MpI/GyoPt1c9407NEbumuDYUtg1auj2LSSEwvkPUDY4msParde8gVUK
         VKkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=GoHRqY6WMaY6q/Xzrr4/n035GxGMZNNS93sY1WbcrOg=;
        b=PDphHSVNrKhcbcN9cFiiZ+/huC7v0VAttMjlBQbFPBGTfMDEFJC3F3VCpndCrgMryV
         Kqz/BPq3W6ANDrxJAOtUxeeWGwkaWx79+DQh26pI4fqKxrDpiohvd6EhDsB6MleR7Rdv
         i/km0PR313z+bf8EeGy2vAeod5HunnIpDCPSmPxSW7H6l7Mdz75xKeYrsvfvwSOr+rE4
         GDhWN1j9fHwAlzzGbG2ZOKCcwWB5SUqxPeruO4J3ote085HlBBQFMxm7P7aHjES8C3Fp
         YA/Qsylt1VoQ+2bcyg9rves2y/TZRbCMns5uC/WzAADGwjtJDkqt6uqYVUfST5+11ANI
         SBnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TRXaJLDp;
       spf=pass (google.com: domain of 3bgebyqwkaimuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3BgEbYQwKAIMuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id bg37si30244oib.5.2021.08.16.17.21.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 17:21:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bgebyqwkaimuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id bo13-20020a05621414adb029035561c68664so14159344qvb.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 17:21:26 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:478:6e44:5cf7:fcde])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:410e:: with SMTP id
 kc14mr705288qvb.33.1629159686159; Mon, 16 Aug 2021 17:21:26 -0700 (PDT)
Date: Mon, 16 Aug 2021 17:21:06 -0700
In-Reply-To: <20210817002109.2736222-1-ndesaulniers@google.com>
Message-Id: <20210817002109.2736222-5-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH 4/7] arc: replace cc-option-yn uses with cc-option
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Vineet Gupta <vgupta@kernel.org>, 
	linux-snps-arc@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TRXaJLDp;       spf=pass
 (google.com: domain of 3bgebyqwkaimuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3BgEbYQwKAIMuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

cc-option-yn can be replaced with cc-option. ie.
Checking for support:
ifeq ($(call cc-option-yn,$(FLAG)),y)
becomes:
ifneq ($(call cc-option,$(FLAG)),)

Checking for lack of support:
ifeq ($(call cc-option-yn,$(FLAG)),n)
becomes:
ifeq ($(call cc-option,$(FLAG)),)

This allows us to pursue removing cc-option-yn.

Cc: Vineet Gupta <vgupta@kernel.org>
Cc: linux-snps-arc@lists.infradead.org
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arc/Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arc/Makefile b/arch/arc/Makefile
index c0d87ac2e221..8782a03f24a8 100644
--- a/arch/arc/Makefile
+++ b/arch/arc/Makefile
@@ -18,8 +18,7 @@ ifeq ($(CONFIG_ARC_TUNE_MCPU),"")
 cflags-y				+= $(tune-mcpu-def-y)
 else
 tune-mcpu				:= $(shell echo $(CONFIG_ARC_TUNE_MCPU))
-tune-mcpu-ok 				:= $(call cc-option-yn, $(tune-mcpu))
-ifeq ($(tune-mcpu-ok),y)
+ifneq ($(call cc-option,$(tune-mcpu)),)
 cflags-y				+= $(tune-mcpu)
 else
 # The flag provided by 'CONFIG_ARC_TUNE_MCPU' option isn't known by this compiler
-- 
2.33.0.rc1.237.g0d66db33f3-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210817002109.2736222-5-ndesaulniers%40google.com.
