Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBV667L2QKGQEPHGBY5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 404FE1D52F0
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 17:03:53 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id q7sf1742110plr.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 08:03:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589555031; cv=pass;
        d=google.com; s=arc-20160816;
        b=swMYM2G3Mn1qR3r8qMw6aBBt2oe5IxMA3JyBIojfTZKlZTRXmSyyn8IcRdkp9/sXEf
         vQs+4pqYHkBygUZ9835UgSJP1MEWMUWWt7niLeT57wtjxRIQIo+ispi7SPWtRu7sC5LP
         Rwp0f0eiFSMmPVt2k3yVT3ZBYiBgAmLWaA1D3LUk2eMzej0YAzhOQUsyKdwRhPql39h6
         nvWCJEuBpbu/oWNQmeJAmo2pes33Yz4ZOK7D27Ft5GsOrJDyePQhj5bcHO8ZXns3WQkG
         b/HywlJwpg1Q32XFNrGPHFZjKmVPmarnWcw+xA8MeOO6lhyudBMfiJ3m7vmH7Om75YGM
         v/3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=LyEvcXtlJknY3ZO+a0h8YX3sxhA4MxoBmGP7J/PMRyw=;
        b=tn/USEIgeIo8q1X255GAc3UTZYpO8SAAA33hJZuHnHU1js8aFYlZK/oIyWEdy6ujIP
         rEWFYHT3yfyEX7I+6fWJqwxu7NgorfArX9FlkV66lQd/R3IZyPSywjFtLjC6epVW60pl
         abkSaNdBSDogxsIi8SEwMNujnFSo4mNrofBOrQn5fs5aVCKIX4f5tv7h/PShnQKLdx2o
         34/VZJUYcg9X90SmA7gHVwsTh9NJZZSvvnGJthYc8EvpMeBxgPjrb5mISn7gDtDAEIDl
         Z3PK/eEJv/647QRP/P57M7z9e0VvDQ1/v/eW0/YgxwMbyG8hemE6/GVH6zDjl2U27kAb
         i0Cg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nsQ711Ia;
       spf=pass (google.com: domain of 3vq--xgukeaspwgpcrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Vq--XgUKEasPWgPcRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LyEvcXtlJknY3ZO+a0h8YX3sxhA4MxoBmGP7J/PMRyw=;
        b=o+IV2D4Ftj4wXBkFZ05ZipRG917Y2k8Hx7P66p0Jwm6KJ5QkzsH+PO/4RLh6XLnDLN
         veE//v24EEhgBXsIiyr2fH/76nhm/KHB+PzARs1llcES6CYFE0FCQ6ni1jXogh+oyhvl
         Z0CmozpCPSCe0QPYTne/jiCOKbpKsUpWsDO4+3fBqIrmxVEh0r1OvmNny1R289+RS6KW
         tDV7pYgmTWJNGBJRpba8t+7viQICWP1qoIoggZhu7AoYd46Q6NHR30wDVv0zbucVDOmw
         O2oed7DzKMEworiVLk3KoCkyRn/QhR0DIh/vbgKQWUSfPWyP3OljiCX+NX6ZeFYVRrFw
         pAcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LyEvcXtlJknY3ZO+a0h8YX3sxhA4MxoBmGP7J/PMRyw=;
        b=UODuT65EKktrmOplcys2nUNvyIkLbQSJI+TaL/SwBiRx2o4TfYDxBSlm6yHOsCJJ2k
         JLz5FNdvnjmzNwfsCPaJJNKnaFDj9BOifIYDe6/SmP9fsGd4nFbSbwigz1qhc9y8BgTO
         aOnV72QvgMBPuv9rm5cRuXlh/t7k01A3onvXWgpTdokHDrT3YldHK3wWjEGl5KyPHsGh
         x9JuFoPK1tjmnxznk/i1R9l3d+0aKuMJ5lqCm65Y9ZBX3Xd0aZ/beSit5/KZlCe66kC+
         sCukuZQwGvwmK1riFLJhEZ+FPnYjzthV44MUSLN5KQJMXnEo5PmOuwsubz2efkUDRa61
         TKhQ==
X-Gm-Message-State: AOAM533TlXmeG758+Yfj+VMV110Oyxbqz1C76LiZbeSsgx86NM+1/vrc
	UeYNF3U1hN+U9PYbnrZ9+dg=
X-Google-Smtp-Source: ABdhPJwotGdDlNEEaWQ5ENc34mmcffQ9bmudWoAxUpaOUuP+dYTAOXhZ7o9AuYzStMkXqtXm9Kw27Q==
X-Received: by 2002:aa7:956f:: with SMTP id x15mr4552400pfq.91.1589555031608;
        Fri, 15 May 2020 08:03:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4c02:: with SMTP id na2ls1325661pjb.0.gmail; Fri, 15
 May 2020 08:03:51 -0700 (PDT)
X-Received: by 2002:a17:90a:202c:: with SMTP id n41mr4348521pjc.208.1589555031126;
        Fri, 15 May 2020 08:03:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589555031; cv=none;
        d=google.com; s=arc-20160816;
        b=a1yyE90Dt8Wv0fJgiJoZQTWt3Chq9N0eUOfcqbui64e1u8IkeQ3g9dCrMySo0hdy4f
         p/60rbO58GtySd4CDIqyP6PdsfBhwp+g/x7ivlb5RIMV9M7Q/SiodpG5mPJUxKg2doLR
         upYacHtNpPRG9wuyxxCj00YWo1BnulnJ+AGEiAcHvtsAO4KsjtNEsImZnI22vD9/gA9q
         QzeNSnU/S68BcbGTM9NU09GoSKVdQthDnuoPyufmA2PhPizaK2g8qWxM06o+8bit70r/
         1G5QyOEaNITTeThBvnVe9Jc/Hcv9FRgMTKv32/s7yTvvzzeuY3NMtCy2K2Xany5bsAyf
         07qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=COp0SyeTFByf68VoAMfHccz/8jBHCco/jZeKm/gYFRA=;
        b=NzU9b5sQDYCNn+7kozYcr/9WeNHFYdN6elXVsQFAwyLGIzrOGTgvl3xPmBjE48j9NX
         TwAMc3UuCzmskIzdEgRzwiKBy7nLypVNOOUS847fJ4S1seWE9cSW4HLK4i1BRzZbZa4i
         BoNar7xP7+rfPIhdHMwl4P2Wh/VDZ5R+/J4scDGoMqVQhFFz8BbU5EoAOKUci6optuB6
         vLiMg/Wzsp5sWjvuIV+32luePgOO6LGzebNvhbfKwYKlWDsLDSz0lSiYC2m3iSJr6YGg
         Oj0caYvRsFEzFaIKPWzSIesQWfhQjMZDJhKlAyxPq1pXG5JxS6nutUrdgPSgukDVEy1W
         SWcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nsQ711Ia;
       spf=pass (google.com: domain of 3vq--xgukeaspwgpcrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Vq--XgUKEasPWgPcRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id t6si1074742pjl.0.2020.05.15.08.03.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 May 2020 08:03:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vq--xgukeaspwgpcrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--elver.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id h15so2893179qvk.0
        for <clang-built-linux@googlegroups.com>; Fri, 15 May 2020 08:03:51 -0700 (PDT)
X-Received: by 2002:a05:6214:3ee:: with SMTP id cf14mr4069665qvb.128.1589555030260;
 Fri, 15 May 2020 08:03:50 -0700 (PDT)
Date: Fri, 15 May 2020 17:03:30 +0200
In-Reply-To: <20200515150338.190344-1-elver@google.com>
Message-Id: <20200515150338.190344-3-elver@google.com>
Mime-Version: 1.0
References: <20200515150338.190344-1-elver@google.com>
X-Mailer: git-send-email 2.26.2.761.g0e0b3e54be-goog
Subject: [PATCH -tip 02/10] kcsan: Avoid inserting __tsan_func_entry/exit if possible
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: elver@google.com
Cc: paulmck@kernel.org, dvyukov@google.com, glider@google.com, 
	andreyknvl@google.com, kasan-dev@googlegroups.com, 
	linux-kernel@vger.kernel.org, tglx@linutronix.de, mingo@kernel.org, 
	peterz@infradead.org, will@kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nsQ711Ia;       spf=pass
 (google.com: domain of 3vq--xgukeaspwgpcrzzrwp.nzxnwlyr-mftwe-wtyfirzzrwprczfad.nzx@flex--elver.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3Vq--XgUKEasPWgPcRZZRWP.NZXNWLYR-MfTWe-WTYfiRZZRWPRcZfad.NZX@flex--elver.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

To avoid inserting  __tsan_func_{entry,exit}, add option if supported by
compiler. Currently only Clang can be told to not emit calls to these
functions. It is safe to not emit these, since KCSAN does not rely on
them.

Note that, if we disable __tsan_func_{entry,exit}(), we need to disable
tail-call optimization in sanitized compilation units, as otherwise we
may skip frames in the stack trace; in particular when the tail called
function is one of the KCSAN's runtime functions, and a report is
generated, might we miss the function where the actual access occurred.
Since __tsan_func_{entry,exit}() insertion effectively disabled
tail-call optimization, there should be no observable change. [This was
caught and confirmed with kcsan-test & UNWINDER_ORC.]

Signed-off-by: Marco Elver <elver@google.com>
---
 scripts/Makefile.kcsan | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/scripts/Makefile.kcsan b/scripts/Makefile.kcsan
index caf1111a28ae..20337a7ecf54 100644
--- a/scripts/Makefile.kcsan
+++ b/scripts/Makefile.kcsan
@@ -1,6 +1,15 @@
 # SPDX-License-Identifier: GPL-2.0
 ifdef CONFIG_KCSAN
 
-CFLAGS_KCSAN := -fsanitize=thread
+# GCC and Clang accept backend options differently. Do not wrap in cc-option,
+# because Clang accepts "--param" even if it is unused.
+ifdef CONFIG_CC_IS_CLANG
+cc-param = -mllvm -$(1)
+else
+cc-param = --param -$(1)
+endif
+
+CFLAGS_KCSAN := -fsanitize=thread \
+	$(call cc-option,$(call cc-param,tsan-instrument-func-entry-exit=0) -fno-optimize-sibling-calls)
 
 endif # CONFIG_KCSAN
-- 
2.26.2.761.g0e0b3e54be-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515150338.190344-3-elver%40google.com.
