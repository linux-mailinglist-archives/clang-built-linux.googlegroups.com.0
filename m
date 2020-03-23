Return-Path: <clang-built-linux+bncBAABB3PB4TZQKGQE46X77SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFD91900B9
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 22:58:06 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id 191sf14167543ilb.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 14:58:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585000686; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q/Nx29FBVIELVOlapmRMgjd53/t+9XKYsnmliUgkvLAf0VKvnKdudmKsE74ucmWJ9d
         5EAvjy5BK2gZkyLG4Gs5JY/go944PpwrjzW6SIwYUUKbXCvfyo55Wa4JfPcxn4IN5VCI
         zGilXFvvfe6Z4q7aXBquT15smDMvva8DmauUL0sfZagJCB7BpIm/qEiv2iLB558U+vEt
         QmuUigqPuD+gR1s5XrqgJxtBa4hFKIuVvDHJKC49M0XA0FF1RS/bketoVBnEvLjYLFST
         hnzjdd5pjbYUOrAeRy8+sHXBwJQ7dQkXGocketERHO/YkQkc45YpSr4jCuyR+skIbPTe
         PeZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=nqhFGT5oDmDtlrQezqKzTDYE+bQkHXJ8Yb4w9EA0hx4=;
        b=aWdYBwMHsxgKzaJFDYe/t4p9o98Vcb2snXiZGK698Cvtod5yadXJkVUhJoPiW3aofD
         DFPm5lYO/To9FbxxOcmp2g9qzQ2YWCgmxdac2o/PLxAIbrofwyEHTRdO/mpuMyJZ/FUF
         Cb5S0Air7kSAxLknoj6zntGkmZzePbrT9YkAdP7m0vB0UJLm3nXiZC816/CojwMC7G/G
         ANzjChzdmXa3gIRObxO2UsgdCaeuwl5zsB3OeiA04ZAl8tj6bUV6t9TrOJqXPTdy5Cuu
         EWPIkANLyn/DEgBfpSeWQ0F0DdbYTRr4ymLNHh9Ul7M93FzIOp54W4FckBprEk/2MDwk
         a1UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UohJXRGP;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nqhFGT5oDmDtlrQezqKzTDYE+bQkHXJ8Yb4w9EA0hx4=;
        b=ZBXuJNhZcI7wssvWzp1UnfBWjFCfBDcezxfiL1x9RyjZTMvMHge/YO42fJKsRL78P3
         ouIRZNiCiNY3aEoNnScJbIyso1dTJD23CFH0CNTPjVDgNhxS/z1UiQxmRcwThG8S8MHk
         eW7jx8RPUpjwLpi+mjBibd1sTtU0WyjbEccns1k/O8rTD/L7oDhbE3Rr811mZup86Lk4
         1DGWd2b0kMhDMldxuZLqWnGwMvDd08X3v06m3CTk+PlhyepDL7P8j1lIFjce+a8HPyzN
         SEGyL1CLlM2fW1OJXsu9I1NG3i9fUXgLUuU5I/WVhIrX7niMjXoQoJUWO/FtbS+9ZLI+
         2JFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nqhFGT5oDmDtlrQezqKzTDYE+bQkHXJ8Yb4w9EA0hx4=;
        b=IV0PHEScaNs/z0yTwdjOVdWPjrmO28aHmFckCIyS1WoRY868nUpkeqXYdRaoMDBNqc
         gE1ukKfv2U4i5Cbv12KxjhTgOFJnwLLkyYCpl0D699PK1WDnCTNqO55t4o/xM7ukRW+X
         z3EIZW08qmcXGthXvUr4dustxcYG5a4ENqA8s2HXnNzcsaZPWmckBZioMK6nRvKXeU/k
         pKMUmn4bZMFOQrCTZRYJ17TRV49x5T5+9nerF3XzXXs+SdOr2PqJtFNdyezsuDPn3iJd
         oF4dX5Y0H9KB/dayNhOl+bDP/ZI23Ld+oGaxA/FQiJUxz+K7sy8GgMpq3Ngl1AOQ3kIK
         wY2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2Lv8BhmdTzZBEcigkaYW5VgRXoICEgg4+xOoVK3Zk50THJUmio
	watwmfJeIUrKYV+JeHmunbI=
X-Google-Smtp-Source: ADFU+vsN+P/DQGnN6slazoRk0n0kZeXzkBnDAvuZblkKDe5lKWSU5bpuDFusWtZs2Ie91Be7WopePA==
X-Received: by 2002:a92:8510:: with SMTP id f16mr23721913ilh.208.1585000685805;
        Mon, 23 Mar 2020 14:58:05 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:5db:: with SMTP id w27ls2456923iox.1.gmail; Mon, 23
 Mar 2020 14:58:05 -0700 (PDT)
X-Received: by 2002:a6b:ac01:: with SMTP id v1mr21663844ioe.156.1585000685531;
        Mon, 23 Mar 2020 14:58:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585000685; cv=none;
        d=google.com; s=arc-20160816;
        b=HvtqUKarXZPGrHiHZJReWSSEvtMM9fqo4nT+f+i94UcdivhBdwopdgPmh8KQU1JaQ1
         O/rNiX3FWJcaWduHfOq6Q7f76tsCGQlQs5w+JEHrgMRhcrq1qqfXvBrOzCJHFPSMMaWB
         fWiCItHeOlRB2iesUTYK9EI+Rnh5xde5F/7Ps4/YsEG9rDuhzjnM6x159jsb8xSxxkOY
         wW3Dc8XfQhlyksktmT2Lx3bzEjih15dQajVjJrYrV7qVSaEUCrAWTA/mPItCOvvkdYGi
         k4MXnW36yAJFnzxMGORwc8XSfNVT4LSJNYoVWDZOFYcVtwZWm7FYbq+RlKgBwsNo5bDv
         xPSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=QJRuxjA1adnz8HlTmZr3rif6p3iCZLo6NIxaBlhHutA=;
        b=OOM2eAHiOS/ocmiur7bytypCcqGHs0r5aOTEYUOlTzoGlYyh9GdCiZaHs7bh/peZ9p
         x98T+H65rS9AdE3J5PA2mD+Y5eKZ59+B/H5tXH0r8o1/tFa6jDKDmGZbou9P9jvi8HBa
         +h9p/NzdqaYxoeVyBdvK01THOuXpLlVfpg6Ir5RnodH60mUhCum3ln2eaGhcoHcABEn0
         qopI4Gr7tCnfkmEm0ZKmTh6lZ7UZ6Nzjjqo3hMXCSS19+ke8YJJgaxHpHA/Pxnhdb0kF
         ROOnrgYTmhuP6lK7+4SS/8PZ0+2baH1HzdeDniYjB4AMQwIkVe7xJ1YSQktq8+ByUoMO
         dZEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UohJXRGP;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id t13si1227760ilk.5.2020.03.23.14.58.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 14:58:05 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02NLvX4u010884;
	Tue, 24 Mar 2020 06:57:34 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02NLvX4u010884
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        clang-built-linux@googlegroups.com
Subject: [PATCH] kconfig: allow to pass optional flag into as-instr macro
Date: Tue, 24 Mar 2020 06:57:31 +0900
Message-Id: <20200323215732.13339-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=UohJXRGP;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Commit 42d519e3d0c0 ("kbuild: Add support for 'as-instr' to be used in
Kconfig files") introduced the Kconfig variant of as-instr.

It is currently used in arch/arm64/Kconfig.

arm and arm64 are simple cases because they are separated by directory,
and GCC also provides a single architecture.

Such architectures as x86, powerpc, sparc, etc. support both 32 and
64 bit kernel in the unified arch directory, and GCC can be biarch.
On such architectures, Kbuild passes -m32 / -m64 flag (or a proper
target triple for Clang) to select the target machine bit.

This commit adds the second parameter to as-instr so you can optionally
pass a compiler flag to evaluate the instruction with.

One example usage of this is for the conversion of the following code
in arch/x86/Makefile:

  adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)

This instruction code should be evaluated by the 64-bit assembler
(r10 is a 64-bit register).

If you use compiler that defaults to 32-bit for building the 64-bit
kernel, -m64 should be passed to invoke the 64-bit assembler.

  config AS_ADX
          def_bool $(as-instr,adox %r10$(comma)%r10,$(m64-flags))

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Kconfig.include | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index 496d11c92c97..9b8c98168ba9 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -31,9 +31,10 @@ cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -S -x c /dev/null -o /de
 # Return y if the linker supports <flag>, n otherwise
 ld-option = $(success,$(LD) -v $(1))
 
-# $(as-instr,<instr>)
+# $(as-instr,<instr>,[<flag>])
 # Return y if the assembler supports <instr>, n otherwise
-as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler -o /dev/null -)
+# You can pass optional <flag> to evaluate <instr> with
+as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) $(2) -c -x assembler -o /dev/null -)
 
 # check if $(CC) and $(LD) exist
 $(error-if,$(failure,command -v $(CC)),compiler '$(CC)' not found)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323215732.13339-1-masahiroy%40kernel.org.
