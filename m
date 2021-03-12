Return-Path: <clang-built-linux+bncBDGONMPGUAPRBE6RV6BAMGQE5VEAXDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DC8339995
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 23:17:56 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id a14sf1066378ilj.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 14:17:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615587475; cv=pass;
        d=google.com; s=arc-20160816;
        b=plQkOu4tV2edGhsd5CqfFAwfLRGDnML+dlYsBUslUesqxGldEaJ5ww98e72c2GhKI4
         G+Sdq8r5hmyF0g6oXQFs3OLegjsfkJXHMfI/8UPVlZ9trzQ1NTUM31nIP4sWG6G1/69L
         4f0/rqRoKMGi8hIikEuAvIwO1UWqCgqZ6bgcLaJXY64DJFUja6TwJwclJlcMwJ5AVw5e
         eAEDVFRhXeNJwcfCC0V2O0Rn3qUD2yI9zdkVvyYhxL4A7lwRMiOxFlP0Z1sMdz0sx5W/
         9jZi9H4I5OClntRhRGnUiWNh+5RhdGR1yhvizWtUlkBe2tM34uQysWBSfZno+ZPTdUTf
         5kfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=cszN0zwkGHe0QL93aCYXwCPBJAtR/Lxpu+wbEFS/ZC8=;
        b=r4EKLRg5928K5a+s4nlesO8Qt5Vif6AfefpWV09Yh0/3QklbJLLG6T7B+oX5cFRykI
         I1Coc2VlE9FPuR29pIuR2VpnkESgmZz494rrg5uoO9WSxndSoB/hgIcG1Fl2HiQAJeLk
         RLmaSywlFQtdtIxq5BBOBjgx+uqAEyrldzHZUNEDTABeLtamFqsiBpOfXLIud3tKboNX
         yYsicdMtPXDFJ3VSJ31lgMEm8JAZVqxM8skcz2ek+pH1J3AoNHqpwg18sb8YTt14nuq8
         4UYaCd+/z0mrdahnQXuckqht9puGWy0XMbvK0YcVatfaTamSU/+BStBVw4xfFSl7Anyl
         BzkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uBeZyQla;
       spf=pass (google.com: domain of 3kuhlyaokajsh5ijebpko5bjjbg9.7jh@flex--manojgupta.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3kuhLYAoKAJsH5IJEBPKO5BJJBG9.7JH@flex--manojgupta.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cszN0zwkGHe0QL93aCYXwCPBJAtR/Lxpu+wbEFS/ZC8=;
        b=EAvpaqbVTu3EIGlTz4U3W5s84qrcd4R8cYJJvQg9J4+qT1sX345V3XODyP4XGcKZNY
         CACZ1kT4Pvgv0KVEkJoelqAsibx7Xtdc38cIyFpbT/2YzyT799PCvFgvrgJFnyXmpaxX
         t3M0U40rM7koQsZlYimuXLNhNW30uv1dx2RIg1UEeSrm66TKMGjZXuqnmnKyDZI5B0k9
         SBkpkLhvK9nb9KWlG78cT3JHsCE0YDBamaq3HFjlvTRuRgurXdgcwiX1sNrIR8qk0OhH
         thc1hYb46D5laf8vkD6t8wP9r+TQILz/Uz4OAzTIxdylG9hqQcFnDmtPiI2bFSdbZP5Y
         k4UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cszN0zwkGHe0QL93aCYXwCPBJAtR/Lxpu+wbEFS/ZC8=;
        b=L+HRaTbjUNRvZ3mSZFswkC5jhXnnVJle7Mt5CbqWqtsyLf6el7ekPFRorutO7ryWE8
         T68k/XeVTr5fWgyADsxNPdhA3WcvMWB9MQi0zYzkGRK4sj+EJMcWJARQvGWetxyRgAeC
         yxIpKmUmUGFUfXYIlBghkiyGmHSrSCI9c7RyYC+Dg/0fY7L54I8nfjy7pLHPp0pJlNOl
         9MWkNdAuI5Q993tUAbPr5+9n/VPw6/sFOwIAEAZor4Z7SyNeATik/JRIsFZeue78pKE9
         wUYsWXiDo4onwTO7z6wQpX4m0cXmJ3hGaZ5uBm0/ULNivbix7r1u/j+L4TOYeE3jxs0p
         x25Q==
X-Gm-Message-State: AOAM533gu/3hAXIGu8TsWwHwo5C++PTHmGiSw7vnx8LDVZ7nWg4BOG/N
	8QSKiHMG1ThwwzdA7DZrGes=
X-Google-Smtp-Source: ABdhPJyTpj0VBnE3D4165IrDMhpLy2U+SdJTPYeS1DyCe5FXogN3Rjo6L1ZvX4AH67GDFQcv50ZQ/Q==
X-Received: by 2002:a92:dc0a:: with SMTP id t10mr3959530iln.43.1615587475245;
        Fri, 12 Mar 2021 14:17:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:980a:: with SMTP id a10ls1587459iol.4.gmail; Fri, 12 Mar
 2021 14:17:54 -0800 (PST)
X-Received: by 2002:a5e:8718:: with SMTP id y24mr997762ioj.85.1615587474867;
        Fri, 12 Mar 2021 14:17:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615587474; cv=none;
        d=google.com; s=arc-20160816;
        b=bRWhB7DzV2KT1aYeiLCV9LdUnkqMqpQbYxmFjxFotNEqUgVrHR5zFzjQ3JRRrlttoZ
         XzP0xhAkOOWEg5PbF1qrE2hqZMqROKuPxs4uIIYrOpyI6qISLxIvhueC/9hqB/dsxDmb
         bTdymB7XULpum4yp+iyMa2Q+5h34gyAV2dMl+/DlPFz2U8ibKyzXFHHPdl+mGg3876FX
         Fn5rc19vy1hBGCtCalN4lHseY+BOQKJagLkryAdaZMbs/835Ddez8v+tPf1SOxuLoJzM
         oxxRxuRWPIgsEyIOnCBoVwHriUzlP//xL3Ni/JjJKLatGDoRIqk8oRGauAszBESVY5G7
         cDsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=9d5EzMi2Qyza7j5RoXoFBY5ffCk5Fa8WDGdaqKQXcLg=;
        b=ugOMXhtUGxRyEcXhiShbhBWbBW6b3bmAy6+GcrBGBLli+cTHbHIUs4SgPAmnUETmhb
         Te2yuVk+19zmW1WeJYkH3vGzE+vwfowhQtPrtcXoNnePY55ESqOtB8mMvgjvP627a/xT
         /vTI6JDX4/J/8InRRKeAwGZw9iaUeqz4OKyjbaXej+4q+13VKIc2wWlqj8RDC/RkeSem
         i/d9etXyaWvKdlXOxm31PE2dgUl7nQ04MAZw4uYGk89+780dr0LDJ5rxy3MawPTDw5bZ
         myFZOTmldMoFHqqdae5oP4UQUeJrl9oV8agAsdsK6JOOVtpDwZ2G4immtwQozyAFgacj
         sRTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uBeZyQla;
       spf=pass (google.com: domain of 3kuhlyaokajsh5ijebpko5bjjbg9.7jh@flex--manojgupta.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3kuhLYAoKAJsH5IJEBPKO5BJJBG9.7JH@flex--manojgupta.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id g10si416626ioo.0.2021.03.12.14.17.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 14:17:54 -0800 (PST)
Received-SPF: pass (google.com: domain of 3kuhlyaokajsh5ijebpko5bjjbg9.7jh@flex--manojgupta.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id h126so19139950qkd.4
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 14:17:54 -0800 (PST)
X-Received: from manoj.svl.corp.google.com ([2620:15c:2ce:0:3159:c5f3:85f4:e811])
 (user=manojgupta job=sendgmr) by 2002:a0c:c489:: with SMTP id
 u9mr353843qvi.47.1615587474347; Fri, 12 Mar 2021 14:17:54 -0800 (PST)
Date: Fri, 12 Mar 2021 14:17:49 -0800
In-Reply-To: <CAH=QcsjHmWdLU6u-imNYWU2v=9ieP8bOk22FLERUd+rVUeqZNw@mail.gmail.com>
Message-Id: <20210312221749.1248947-1-manojgupta@google.com>
Mime-Version: 1.0
References: <CAH=QcsjHmWdLU6u-imNYWU2v=9ieP8bOk22FLERUd+rVUeqZNw@mail.gmail.com>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH v2] scripts/recordmcount.{c,pl}: support -ffunction-sections
 .text.* section names
From: "'Manoj Gupta' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: stable@vger.kernel.org
Cc: gregkh@linuxfoundation.org, sashal@kernel.org, 
	clang-built-linux@googlegroups.com, ndesaulniers@google.com, 
	jiancai@google.com, dianders@google.com, llozano@google.com, 
	manojgupta@google.com, Joe Lawrence <joe.lawrence@redhat.com>, 
	Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: manojgupta@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uBeZyQla;       spf=pass
 (google.com: domain of 3kuhlyaokajsh5ijebpko5bjjbg9.7jh@flex--manojgupta.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3kuhLYAoKAJsH5IJEBPKO5BJJBG9.7JH@flex--manojgupta.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Manoj Gupta <manojgupta@google.com>
Reply-To: Manoj Gupta <manojgupta@google.com>
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

From: Joe Lawrence <joe.lawrence@redhat.com>

commit 9c8e2f6d3d361439cc6744a094f1c15681b55269 upstream.

When building with -ffunction-sections, the compiler will place each
function into its own ELF section, prefixed with ".text".  For example,
a simple test module with functions test_module_do_work() and
test_module_wq_func():

  % objdump --section-headers test_module.o | awk '/\.text/{print $2}'
  .text
  .text.test_module_do_work
  .text.test_module_wq_func
  .init.text
  .exit.text

Adjust the recordmcount scripts to look for ".text" as a section name
prefix.  This will ensure that those functions will be included in the
__mcount_loc relocations:

  % objdump --reloc --section __mcount_loc test_module.o
  OFFSET           TYPE              VALUE
  0000000000000000 R_X86_64_64       .text.test_module_do_work
  0000000000000008 R_X86_64_64       .text.test_module_wq_func
  0000000000000010 R_X86_64_64       .init.text

Link: http://lkml.kernel.org/r/1542745158-25392-2-git-send-email-joe.lawrence@redhat.com

Signed-off-by: Joe Lawrence <joe.lawrence@redhat.com>
Signed-off-by: Steven Rostedt (VMware) <rostedt@goodmis.org>

[Manoj: Resolve conflict on 4.4.y/4.9.y because of missing 42c269c88dc1]
Signed-off-by: Manoj Gupta <manojgupta@google.com>
---

Changes v1 -> v2:
  Change "nc" to "Manoj"

 scripts/recordmcount.c  |  2 +-
 scripts/recordmcount.pl | 13 +++++++++++++
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/scripts/recordmcount.c b/scripts/recordmcount.c
index 7250fb38350c..8cba4c44da4c 100644
--- a/scripts/recordmcount.c
+++ b/scripts/recordmcount.c
@@ -362,7 +362,7 @@ static uint32_t (*w2)(uint16_t);
 static int
 is_mcounted_section_name(char const *const txtname)
 {
-	return strcmp(".text",           txtname) == 0 ||
+	return strncmp(".text",          txtname, 5) == 0 ||
 		strcmp(".ref.text",      txtname) == 0 ||
 		strcmp(".sched.text",    txtname) == 0 ||
 		strcmp(".spinlock.text", txtname) == 0 ||
diff --git a/scripts/recordmcount.pl b/scripts/recordmcount.pl
index ccd6614ea218..5ca4ec297019 100755
--- a/scripts/recordmcount.pl
+++ b/scripts/recordmcount.pl
@@ -138,6 +138,11 @@ my %text_sections = (
      ".text.unlikely" => 1,
 );
 
+# Acceptable section-prefixes to record.
+my %text_section_prefixes = (
+     ".text." => 1,
+);
+
 # Note: we are nice to C-programmers here, thus we skip the '||='-idiom.
 $objdump = 'objdump' if (!$objdump);
 $objcopy = 'objcopy' if (!$objcopy);
@@ -503,6 +508,14 @@ while (<IN>) {
 
 	# Only record text sections that we know are safe
 	$read_function = defined($text_sections{$1});
+	if (!$read_function) {
+	    foreach my $prefix (keys %text_section_prefixes) {
+	        if (substr($1, 0, length $prefix) eq $prefix) {
+	            $read_function = 1;
+	            last;
+	        }
+	    }
+	}
 	# print out any recorded offsets
 	update_funcs();
 
-- 
2.31.0.rc2.261.g7f71774620-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210312221749.1248947-1-manojgupta%40google.com.
