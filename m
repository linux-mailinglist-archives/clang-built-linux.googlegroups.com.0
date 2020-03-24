Return-Path: <clang-built-linux+bncBAABB3VB4XZQKGQEBVREULI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EC8190293
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:14:39 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id x185sf2050597vsc.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 17:14:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585008879; cv=pass;
        d=google.com; s=arc-20160816;
        b=u6qHV7M3/vJuUGqgned916J1gB1D90bMzdDDOt5EDfXfP/Z7ROPjuwDF0GHsa5eP/D
         Y9+tECmJ+PP/zMTdLjezJl3IUh5QuZu6GbLyKxMrCYdCvZtRWcYE7+Yd5dMtAQsnEcDw
         rnrkIFvF8h18Qnt/3KeR+cJ6RTKD4TD0wEQmDl1EUAL9yG0XjPkJkbONp4hql5Ff3QCu
         lNxSsDkdBZgYaNGDK3kcq2NtReIyJ+8krhz+bfXpA/+7Elvgailyp/WlmLoaxgsZGzvr
         pbCc3AeIkUiFgYEK1Uwdiwb+ynkCdgsDy/xE7odcUxfIubyRN7+K8bpzeZao37nm3qcb
         6tgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=wWWSEd61Sgnuv/EC6KZeYRM69FjY7Y6UNKLT6VLHG/s=;
        b=BH8ZsnSnK6QqA0pPzt2mGqNPrzta4425A03/5dRrkwO4GWWuqs6RBm2uvrXdynONpW
         /R4LHO0rY2GQkrP9nT8O/RreQIGtn/gV19+fe8EogOBsr6fpCJxorGDr7782WNbAOBUI
         0hOiIQwIeUylr8ArBo0csSGPN0keQ5UwOzrLRESigwtVZ3L/HELWYSDxMIs9S3Dc5KWX
         O9mGVxSjnBEC/RkAENk8pAvOWYGl/MR4e+U8un32QoTYExGU6eUbcc3n8kSzwC1kjElP
         FoldINgBfe5BsYKhTHT0Bt0Nie5GMNDNl5Qb0zpnuejcPsyMrQ9i44z0ru3XNODJMMd/
         7GPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=tMsQDW5Q;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wWWSEd61Sgnuv/EC6KZeYRM69FjY7Y6UNKLT6VLHG/s=;
        b=IQWEGxS9pFhlBkUKJymTWbt90OJnNvSCsOjpxSadDdf+dZVcGXxARGdUfh6xGTc2Cq
         0VfduK0LI4NyMtqigrJt+OfUP6IMIQaalVJr6A798FeLo6+Pv51E8ITHIRsEPtkDP6EV
         83hPTNau/2xNkVwmGLFXCoHPzEIpbXUxULSSEQ7U1rdPtvvSUAKi/iC1uYCKXFfxlV5B
         GKratLqhjNsX/ZxZEU4uhUwl8c2fjrS+LHKJhO6/B7/yCD+dTmT94txBJXEY5ZpV2Vj/
         MryvAw6gbEc1AEsi690yTSh8HkQMQEFqQLogpKiCGy61ntSG3C1HCIhnKHjuc3l+7OsX
         dDEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wWWSEd61Sgnuv/EC6KZeYRM69FjY7Y6UNKLT6VLHG/s=;
        b=DTA/8z2vevTZ/0Huvc/m7ktJRCR2RIylRWJ4JdLAe0SFmFOTCJHEu7q+tiXqEdAISu
         CVIxL9Ki483BOU9HHCeNkKyZ5bI3NwSDm7AuW7stOVxNWwvqec5rLilqrZhww7FM5W56
         LjA9pUVGFxId9hXe6j6uWtqWW6IttHQ8CdJVLWr8RH+OpYue7J6kFRymxmqC5FQqXOMJ
         7rjATdJucVp0DdtmL3WKZNkZLWPRjjk4oudKK0OXmpPYMUqdBnwy1gPtvhRPAmvgHZgx
         +vTfbU/MLCR7I8ysJ3Y52plgt0fqkXD322Am9d9tqmc4xHea/b1m6hnp4CfqHe2uS2M6
         DOOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ00sPMmmRt9K87YQtxGjCtm65og2xByaAQpcFiUwda+J+3KuJED
	LFjBdCDeDoIwzApCeGSxWC8=
X-Google-Smtp-Source: ADFU+vtWcAF9uzHvBw113vs0vYStyzOUQ7s6DQMJjnvhgVmJa+gxVbsNxZuy/aiSOptEpICPh6t/fA==
X-Received: by 2002:a67:870f:: with SMTP id j15mr17124494vsd.95.1585008878867;
        Mon, 23 Mar 2020 17:14:38 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9acd:: with SMTP id c196ls264496vke.6.gmail; Mon, 23 Mar
 2020 17:14:38 -0700 (PDT)
X-Received: by 2002:a1f:2b95:: with SMTP id r143mr5561358vkr.87.1585008878499;
        Mon, 23 Mar 2020 17:14:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585008878; cv=none;
        d=google.com; s=arc-20160816;
        b=Qc0PI+C1CmMhmZlk7pv1KMzB5TFfbjUbMzCGjAn9qR8Sfxl8LoB6CdPW2xxBImh525
         na24mPbJDH+IH7YGcw8l8MA7v29MfvIAThiBDwx9iJ73ZGnPhg6UeMwkkVnknd/wbWry
         wRS78uCxDbH5CDb4bUSjs//sv2vsm9h4b4iWZCx+Wb4aFo7rZUOKY8ZNzv6Dl4N7O8Xy
         /CVG7DZ6ig+Vvvc+yjHUwQigAN2pRlDRLmoNCCPnjbu0U/3Eoy/0aGw65WCm/l3SACB7
         Ob1l021SeLc7m9sxSWSwgZksJFNjzCDg+XNvi51kTPr5CSWbN1uQDwTPI41AM7mVbb2K
         53eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=AK5ED2xHmoH0oAFvRY1nFJ+Uo32DkkXlg/b7H5WM2LE=;
        b=yu3TS1rHnK7hdby+TeT30W8BXjTg4htJbCVvDfWbMlmvl9saMw2vb2DEbklmy8i4hs
         3h8fYynvbmUeviaahvv3vCPIbAPMGPtZWWc2aTmtNCPUcMPZGU9DQnVKx3HawJ0pXRB8
         U/pE1AY5CK1RXiHv0JRue+WTyOCySXxpkNEuhVnsQBRzrdLvsH+8Zc+aNuZXMcOqPvYY
         BWAIt/HDmTecm9ZB0QaFlmU1/jCSyRR0tPf5nKEPT0y9NiFJ4R44Yi4sWI9SKKNEtiTr
         s5sxXchspwoWLSmE2p91GxDPKz02P1XwTXNt3vEooidnmWr4tkDsk8A5dsMex/sQGTJe
         cWHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=tMsQDW5Q;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id c9si943518vsq.2.2020.03.23.17.14.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 17:14:38 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O0EHnn026701;
	Tue, 24 Mar 2020 09:14:18 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O0EHnn026701
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>, linux-crypto@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Ingo Molnar <mingo@redhat.com>,
        Jim Kukunas <james.t.kukunas@linux.intel.com>,
        NeilBrown <neilb@suse.de>, Yuanhan Liu <yuanhan.liu@linux.intel.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH v2 0/9] x86: remove always-defined CONFIG_AS_* options
Date: Tue, 24 Mar 2020 09:13:49 +0900
Message-Id: <20200324001358.4520-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=tMsQDW5Q;       spf=softfail
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


arch/x86/Makefile tests instruction code by $(call as-instr, ...)

Some of them are very old.
For example, the check for CONFIG_AS_CFI dates back to 2006.

We raise GCC versions from time to time, and we clean old code away.
The same policy applied to binutils.

The current minimal supported version of binutils is 2.21

This is new enough to recognize the instruction in most of
as-instr calls.

If this series looks good, how to merge it?
Via x86 tree or maybe crypto ?


Changes in v2:
  - New patch
  - Remove CFI_SIGNAL_FRAME entirely (per Nick)
  - add ifdef CONFIG_X86 to fix build errors on non-x86 arches

Masahiro Yamada (9):
  lib/raid6/test: fix build on distros whose /bin/sh is not bash
  x86: remove unneeded defined(__ASSEMBLY__) check from asm/dwarf2.h
  x86: remove always-defined CONFIG_AS_CFI
  x86: remove unneeded (CONFIG_AS_)CFI_SIGNAL_FRAME
  x86: remove always-defined CONFIG_AS_CFI_SECTIONS
  x86: remove always-defined CONFIG_AS_SSSE3
  x86: remove always-defined CONFIG_AS_AVX
  x86: add comments about the binutils version to support code in
    as-instr
  x86: replace arch macros from compiler with CONFIG_X86_{32,64}

 arch/x86/Makefile                             | 21 +++------
 arch/x86/crypto/Makefile                      | 32 +++++---------
 arch/x86/crypto/aesni-intel_avx-x86_64.S      |  3 --
 arch/x86/crypto/aesni-intel_glue.c            | 14 +-----
 arch/x86/crypto/blake2s-core.S                |  2 -
 arch/x86/crypto/poly1305-x86_64-cryptogams.pl |  8 ----
 arch/x86/crypto/poly1305_glue.c               |  6 +--
 arch/x86/crypto/sha1_ssse3_asm.S              |  4 --
 arch/x86/crypto/sha1_ssse3_glue.c             |  9 +---
 arch/x86/crypto/sha256-avx-asm.S              |  3 --
 arch/x86/crypto/sha256_ssse3_glue.c           |  8 +---
 arch/x86/crypto/sha512-avx-asm.S              |  2 -
 arch/x86/crypto/sha512_ssse3_glue.c           |  7 +--
 arch/x86/include/asm/dwarf2.h                 | 44 -------------------
 arch/x86/include/asm/xor_avx.h                |  9 ----
 kernel/signal.c                               |  2 +-
 lib/raid6/algos.c                             |  6 +--
 lib/raid6/recov_ssse3.c                       |  6 ---
 lib/raid6/test/Makefile                       |  8 ++--
 19 files changed, 33 insertions(+), 161 deletions(-)

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324001358.4520-1-masahiroy%40kernel.org.
