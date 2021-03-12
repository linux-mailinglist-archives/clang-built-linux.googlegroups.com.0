Return-Path: <clang-built-linux+bncBDGONMPGUAPRB2NCV6BAMGQEW2Q4GHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 143E133987D
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 21:39:06 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id s69sf7673529vkd.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 12:39:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615581545; cv=pass;
        d=google.com; s=arc-20160816;
        b=tvkxS0DCjOClrFsRpTtNhWnY8sUfVYkZaAONR492bsC+HzUP8yhG3W9+j5RVUVQQQM
         e3dbN0kMnct+Re66ujG8M1JItAQEohEyQUQM/1YDp/Jpcxvhc1zD9K3Pn09mLdBEgRnH
         Pk7oAUeyVwbUPuy9sazP3ydaWbN22GZlk3SwvJA+Zi5/r0Qh4PCMn5CmjEEzqb4ceyFV
         bRw8oV97T/3opELs34inTq27bFidNqdni4UqARMDhqwJo7jlE5qO0670NinRJnz7SFa7
         gwLQT1W3at6ByR2H9df7M1zvFQMqXT8ZNWqNOTTRyJJjNemq0Lpmm2dn/7V7pMe8uCZW
         JQiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=EUkmjPQDVzntnUYnNR9nI52yJfPzKHfEjzYbLsqSmwg=;
        b=QKt1NsSeKcTD48vweUjbx0AMta9BBNQf71gwqx54ASkTKbkp4yoYY5umtcs3UWE/o/
         FlQJZH+coakvDCkN3teJomFBKEQls3lv6sIIb28zJaiKfnSdzC+JRQLmTxogcIZupRnq
         FHnQUDZmtxslLi8NXU9MMPx1BzDq3BzdwYSjJuF5sPitEKGJxzh5/w3CXvDt5JKDwadf
         YDvOPY7V/ADZs/z9k426UU8zgvF/0Il+4FO0fq5n5vYryUKx6hkeoIhJoKDWybnzgQDF
         wAgY2hoVpre+VlP9lEA2Xumm7dy2QzWQfqnyPrtOZ1eJZ8G8dw5GD6h5TChXKGYd1O9/
         vOnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="kiTbp/TB";
       spf=pass (google.com: domain of 3anflyaokaemrfstolzuyflttlqj.htr@flex--manojgupta.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3aNFLYAoKAEMrfstolzuyflttlqj.htr@flex--manojgupta.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EUkmjPQDVzntnUYnNR9nI52yJfPzKHfEjzYbLsqSmwg=;
        b=ZOQHbR4uM317OAlBWo8JfrJCfUZUCdf0k6pj4upwXbaAh4llHsITQ2O0ejIh7T2epr
         B4PHqQ6GWoJ/h3Lw/CEGqZz7bu7/0uBTmlcFq1vG96YlKKY+z3L//TNotGpVXarCuuwO
         cBvpoVI4ov+0peBlWcEJkpQ1gQ9B2dTxVjcgiUkvHThnifjOMO4mR6PRagoU2MsfNQUr
         fJSd+tJC/z9N4sMC9TstDYEHLs6/IUKKwM/GkHjAnzLv+Az2eNPicUJT3kkkVqnWQaHq
         fpliERuSEdqUETQ5eN4rsvbN8jZeDqHcRFDgZ2W6TjETKXJr3uC5x0DAf2bdiP+BEDvt
         h4VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EUkmjPQDVzntnUYnNR9nI52yJfPzKHfEjzYbLsqSmwg=;
        b=MKUXEFZndVKX85cJFGrBKSQecQJvUYBtZUlTgXj5J18hcFUmz52J10NEs1Fhxtvuy6
         cfzj41pRm4rJdVWkRJSy5fJ+4r3CvKeF1XN5PFHdFt9X7pu8jV3a3gGCIQ2CTKkneRYA
         n68+zAFMKqoTpAv2jgC15t/86LSLTtPHkfLFAmazFD8+DoSaPE1yfJZOiwnxLYiYG+bu
         vUduPyoydhWoKaJrTWtSsGyqxmHkO+h0YWob5OBkErXlVYoEINxUNL3X58/pxIc2Qzeq
         J/HVQ3mTgkEuSS1DV7cG45BqYRkKWqooYrGkiJ5qA9Vj16PnQzpsHSxjCaaN/hw+53jT
         2TCA==
X-Gm-Message-State: AOAM530r8wyD/nrnwOg8Mx4tRULbpCSWfF2tudCYKrMredO4RqNGaPGH
	rW2abi7dO12EBJfb1cUbiDk=
X-Google-Smtp-Source: ABdhPJyqfTSqIWT9CKNDifYm5/beQfnRqx8OLWLhnh6KCc43EtqT5ryjYFAu+dQCy8VPwLkIjyy3TQ==
X-Received: by 2002:ab0:4129:: with SMTP id j38mr50242uad.39.1615581545140;
        Fri, 12 Mar 2021 12:39:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f446:: with SMTP id r6ls1324807vsn.8.gmail; Fri, 12 Mar
 2021 12:39:04 -0800 (PST)
X-Received: by 2002:a67:22c2:: with SMTP id i185mr127890vsi.55.1615581544622;
        Fri, 12 Mar 2021 12:39:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615581544; cv=none;
        d=google.com; s=arc-20160816;
        b=L0ADiX4WYgTeEmJ1Me1dIJjs6nGzFuGwB5Ab1XpVJaAijCXQ9vtBDBvDid5YLQIcbt
         8EdBmLUwAPqIFWiKDzovT9/5/nS+EsX+EvE0hKIUdN4KkRDazlqMG/ik+MyulR+u/wRK
         iJ0VdBkThMzkDMWD2AcPIy/BnFmXl0ipZf3wicNJXOSs8hHFOYWsn7lBW6nHUHecJi4G
         2yqKCCxn80I813OK1FUAvdnF6Y6UdtWCXWDnnomVD8+kYLqP3oQo44i09BBQmdJNbYZu
         vrMs2LnMOjmyLmEeA1TaDWdSvBfmTwKZzEdAfy7tzC/4cOWG6+5mfEKBhq+y58FG+ymz
         JJGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=GJXRaUWw3GBsddoEbFCqXHWGWiuZM+NGHFtwL8hqbbo=;
        b=qiTX1OkNpc1EVHDFFOUDWQXsE0g2R5546KrzQc+aD2LaHgJeIxRKWKvzP6l0Jn+IPe
         qzZ2LbGwzjNhS6sev211gwhCAzuWxTM2rDtIE7ASBb0+aQjXX9CQotX7StahN7mJjU2y
         D/nrIjQk65X63Z5O70iixrWS6EOZxEthitm5UJLD/5/C88l8LmyISyDzGDKBZFGssf8f
         /QjxNldaFZvvhhWeH5je1Hz64cq+LfWbwCk7ahcHfUZLtin3xv3ZAHTSzRp9o99FZrcF
         HeucWXHmvXGJAUZFCD1t2LuM4u4Zvcmzoxiy0/iJvhiS7l0BzqSNXahp4Q6upjlEW/KD
         S73w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="kiTbp/TB";
       spf=pass (google.com: domain of 3anflyaokaemrfstolzuyflttlqj.htr@flex--manojgupta.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3aNFLYAoKAEMrfstolzuyflttlqj.htr@flex--manojgupta.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id p23si368134vkm.1.2021.03.12.12.39.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 12:39:04 -0800 (PST)
Received-SPF: pass (google.com: domain of 3anflyaokaemrfstolzuyflttlqj.htr@flex--manojgupta.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id da16so18265221qvb.2
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 12:39:04 -0800 (PST)
X-Received: from manoj.svl.corp.google.com ([2620:15c:2ce:0:3159:c5f3:85f4:e811])
 (user=manojgupta job=sendgmr) by 2002:a05:6214:8c4:: with SMTP id
 da4mr109925qvb.17.1615581544242; Fri, 12 Mar 2021 12:39:04 -0800 (PST)
Date: Fri, 12 Mar 2021 12:39:00 -0800
In-Reply-To: <CAH=QcsjHmWdLU6u-imNYWU2v=9ieP8bOk22FLERUd+rVUeqZNw@mail.gmail.com>
Message-Id: <20210312203900.1012048-1-manojgupta@google.com>
Mime-Version: 1.0
References: <CAH=QcsjHmWdLU6u-imNYWU2v=9ieP8bOk22FLERUd+rVUeqZNw@mail.gmail.com>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH] scripts/recordmcount.{c,pl}: support -ffunction-sections
 .text.* section names
From: "'Manoj Gupta' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: gregkh@linuxfoundation.org, sashal@kernel.org
Cc: stable@vger.kernel.org, clang-built-linux@googlegroups.com, 
	ndesaulniers@google.com, jiancai@google.com, dianders@google.com, 
	llozano@google.com, manojgupta@google.com, 
	Joe Lawrence <joe.lawrence@redhat.com>, Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: manojgupta@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="kiTbp/TB";       spf=pass
 (google.com: domain of 3anflyaokaemrfstolzuyflttlqj.htr@flex--manojgupta.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3aNFLYAoKAEMrfstolzuyflttlqj.htr@flex--manojgupta.bounces.google.com;
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

[nc: Resolve conflict because of missing 42c269c88dc146982a54a8267f71abc99f12852a]
Signed-off-by: Manoj Gupta <manojgupta@google.com>
---
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210312203900.1012048-1-manojgupta%40google.com.
