Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVEJ32BQMGQEADGGPDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id A236435FEBC
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 02:12:05 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id k188sf529062qkb.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 17:12:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618445524; cv=pass;
        d=google.com; s=arc-20160816;
        b=nAET1B7DGBMlmOLGTk8p5BFm/9BcxbYwB4/Wpfep1I+8JelHj4pnxsHBK5nmVfwGmJ
         OlQdiN/MAllRluxtaRzwefwbUIntXA63EGsBEoUOa5U/h9AicRr6tieZihXKi3iPVLiq
         DYJXon5h0oSqf6Jch7MRW3sGJqTf04Si4MjvmRKZaBgXhdptbF8AOXm46UhIn3/uJDsJ
         dJdZAq1HC/5IsFSfkP5LJ2c1pU8dgVnuLdmBmuoBxWdVvOOigwjoPL0F8UMv3DrT2mF8
         fN8IX8Th8VwqvHw+UrVO4lsP6KDMXTPeQw5MCDDd4OoiKF3u++TWx/MV/Vdn+CJvw90C
         /1Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BnLtgtEPu0yW0wl0DGnnpOls7fTZaYT5qMkfdyQAA+U=;
        b=hdyGGhBKw9BbkRbKNpC5Up9xMnAo7i3idb3AMYl+cCvnwlTuzzOE4u4fh4X3LNTK9B
         kwNT2ZTCJ1YGxvuN4sX4JOrriYEzxaHcKmUl7hmGywQIvfaE68spyeqMBHAOkVx3WLvS
         +674o6qyRhx46aHzmak6/+hZymKdjXXk4hQgrM3NBisaiipCqBFdxsZTBVrUfjcpojGa
         NYDCVpMytIdPsssCdthhYROeP+5R88VtZhv1BGN2+bTpgMQVB+bDTqYDID4qQkRQ1Tov
         z0u1S1oafN/Ly5H2HnDh9AQkx4XRYT4eM2ho59DjVBVW8oe1pwlGmEcIlalB1kvZEWBN
         xHwg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Z8Ml/OhK";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BnLtgtEPu0yW0wl0DGnnpOls7fTZaYT5qMkfdyQAA+U=;
        b=IltKS+RzKsWx4TUBzEzVhk+Nd3o1Jpw1Mm/759mDpbnp2FZk3sFNC/2GCvInedzksH
         JGuhkIElL5FL1jzIf7bI5xk1OJHcS6dWrFAV3FemhxsFm5Dal4C4pf+FjVJrEgQrsOID
         jEP5ZibzKNKstXIMUmOu6q/TgfPqT+2NfJaY30FRy1gIY18DIkHpleU5kAPwgIohOify
         yOhStrmHZw5JhA7eU+5O4EFbnqo1nte5CUYGNmPzAtH5XLcs53taOM2Zwh/FW9Iaz7Bf
         uoo1A+3ndz8fFBgLjVh0GliEDyvgg2d2mFj3eDJJXPu8Amq+bXRnetlgZR0f8+4mMOPB
         gKlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BnLtgtEPu0yW0wl0DGnnpOls7fTZaYT5qMkfdyQAA+U=;
        b=ASN28jGvozGwMn3g4g9l9rSR5cnhYqHLDL1/s9bordRD+yqaOMaMoa/64vQuvEQviu
         EEV4hd4YnAoN2tt3jshSgvag5PjqQ4C59SRxNPJDD8E6sL7WIJU6VCGdlgRFnXBikHPc
         gRZs/5r5P3nGGC/q7hQ9SCWstAYhRMj/ibQ/0UpdST1sZQ5IzaNBf+WN/trUiAEF6dTB
         QP3cCz483xURrwpUR5tZxg3MfVKCep7Z2ypKuIw9IoTwRN8FuBl2j/PfE6aLcR9oeMGt
         dOC6AnFuFGg1oceLg/K7jyHsKGPR67fpXlZukEMZ9lu+3SjTB9Xz+iwVuqYb7R1LfT7j
         Z2Cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533HjlyGfWa7SlrPv6ZxZuvdnWfCHRnYJyiPKR3Q326vNYuc4Y6r
	EfCxZ2BesOLXGUhxzz93t3M=
X-Google-Smtp-Source: ABdhPJwC9oA3oH0+TRiSR/eN4i8VnlG8OoL1ehqgKAggBqv3FmbEt1y+VRG8SRTdzdBnG1tEf6NUCg==
X-Received: by 2002:a37:e203:: with SMTP id g3mr1047126qki.52.1618445524672;
        Wed, 14 Apr 2021 17:12:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4d8d:: with SMTP id a13ls1513151qtw.5.gmail; Wed, 14 Apr
 2021 17:12:04 -0700 (PDT)
X-Received: by 2002:ac8:6703:: with SMTP id e3mr697973qtp.58.1618445524295;
        Wed, 14 Apr 2021 17:12:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618445524; cv=none;
        d=google.com; s=arc-20160816;
        b=asu52ia0xOB5+XjjBkEQw/xL6qSaOluyeA+RKkLczIFI9uNmtyarcqReeDEtLwXFM+
         c9mUzdnz8Bj0GWQo8AxdjnqHRnWuaYXXRlvJV3/pYf54pXCtvjy7HerUCDniYjZ05xTl
         CVjU4K0NHkAJ7kPdfPjs8sSFttMg0KzVBMbDyz+j4UhirGof5otIcGx1l65xeFEnMj08
         gUOAA6jrDrQze1zq9+hWDR800QbmnfSXlLcIn9BGmNxP7kOQruOTQw2tUFU9mjlZvUiD
         2wt6ygSk3tleZWtPsMA0kk6Pgt/OsHjmioD0sYorTKPl4ZeL2YNOKVkRyzRDL62HYUAH
         GJ9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7CNWY8K3a3ZrlfkLvduDjNmpfcvxSN6U7775npwpmdI=;
        b=AxpC4x3l5qQGS1VSNf0hF4ssmNBpXZO89JIyeLVBaQcFGm0Qg57mWVo+mptel2laX9
         xS/LOnTypYK81uw0/Z/hP1KP2Dxsf+wL55LgIuOMxQtg8Z1hJs31oKVn1V+aaFxqDAV/
         a5sjpje4WeYHWCmy9Hr3MCZoPUl+xKxJYEn8XOLUShZu7Ysbte4slfOfMCyM3U6vZdD9
         vCCrdBR63YHDBVLaoOWPvazpwaw1qocGEuCMCjJPZ0MIAjlpn4G42wrUQY6wZPSZqfWZ
         mw3EOmCRYbUxg3RuRuzQ9o9xl+BwsT4/jYfk1yLES5MSq/8IW2vyjkAD18Rh3tivs6LB
         mbnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Z8Ml/OhK";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b16si124100qtq.1.2021.04.14.17.12.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 17:12:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A158A611CC;
	Thu, 15 Apr 2021 00:12:00 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>
Cc: Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 2/2] perf/amd/uncore: Fix sysfs type mismatch
Date: Wed, 14 Apr 2021 17:11:12 -0700
Message-Id: <20210415001112.3024673-2-nathan@kernel.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a5
In-Reply-To: <20210415001112.3024673-1-nathan@kernel.org>
References: <20210415001112.3024673-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="Z8Ml/OhK";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
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

dev_attr_show() calls the __uncore_*_show() functions via an indirect
call but their type does not currently match the type of the show()
member in 'struct device_attribute', resulting in a Control Flow
Integrity violation.

$ cat /sys/devices/amd_l3/format/umask
config:8-15

$ dmesg | grep "CFI failure"
[ 1258.174653] CFI failure (target: __uncore_umask_show...):

Update the type in the DEFINE_UNCORE_FORMAT_ATTR macro to match
'struct device_attribute' so that there is no more CFI violation.

Link: https://github.com/ClangBuiltLinux/linux/issues/1350
Fixes: 06f2c24584f3 ("perf/amd/uncore: Prepare to scale for more attributes that vary per family")
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 arch/x86/events/amd/uncore.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/x86/events/amd/uncore.c b/arch/x86/events/amd/uncore.c
index 7f014d450bc2..582c0ffb5e98 100644
--- a/arch/x86/events/amd/uncore.c
+++ b/arch/x86/events/amd/uncore.c
@@ -275,14 +275,14 @@ static struct attribute_group amd_uncore_attr_group = {
 };
 
 #define DEFINE_UNCORE_FORMAT_ATTR(_var, _name, _format)			\
-static ssize_t __uncore_##_var##_show(struct kobject *kobj,		\
-				struct kobj_attribute *attr,		\
+static ssize_t __uncore_##_var##_show(struct device *dev,		\
+				struct device_attribute *attr,		\
 				char *page)				\
 {									\
 	BUILD_BUG_ON(sizeof(_format) >= PAGE_SIZE);			\
 	return sprintf(page, _format "\n");				\
 }									\
-static struct kobj_attribute format_attr_##_var =			\
+static struct device_attribute format_attr_##_var =			\
 	__ATTR(_name, 0444, __uncore_##_var##_show, NULL)
 
 DEFINE_UNCORE_FORMAT_ATTR(event12,	event,		"config:0-7,32-35");
-- 
2.31.1.272.g89b43f80a5

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210415001112.3024673-2-nathan%40kernel.org.
