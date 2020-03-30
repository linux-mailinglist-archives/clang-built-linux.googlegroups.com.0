Return-Path: <clang-built-linux+bncBC47TRXEZUKBBFNKQ32AKGQEIJNZO7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id C060A1974A2
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Mar 2020 08:43:34 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id c130sf14222873qke.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Mar 2020 23:43:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585550614; cv=pass;
        d=google.com; s=arc-20160816;
        b=CZh72RYl5PMZe30PhkX4QbkdaxH3ZQ/r2wl5qEByUO7oiEnkGf7wVWJqE9lsOSOzkU
         aY04ow/G4WpfYFrTy8I2MtxICiPLpX3/LU9gQziiJD9GvBOW1n0u3XHuLOuLLGKL5JXo
         5/owJjNz4YsmV2ocn/kteh7n57k0JCtHTWbJVlwh2Aj6XON6+fXyascINYEAoesyol63
         KlIGEMpaHG4XrxfVRlF2KSW8UGrg7y3Qq91Fh1QvNmUpVPPLUpZ5Yh02LVMhuCB8A05l
         xisVMFO/tLJHzQUOMKiXNrvHjvxi9yNvxTqdjSVUXiIw3ZAF4VE8trpZ6SSPgRpyxgyN
         tNIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=4h7edqS8yTrz9Y7QWxc6NerxZmtSZfe1vAz+nuFk2nM=;
        b=ia5mNB4uEZMEtPSyZ80nFO042vGypBBR+/0p3LjrDswyWO8h4fERyshEZA8kHXvxq7
         /RygYGiAJ8lw1vRgoeZ09r1D9Qu4MSyyDKZAjen7mtyliJjtPWOLbyjA9cNcNPamc9KA
         77urRvq2h0mvm3f+Gb5O4l81fXk6xTUabEmmMFk2uEL5PM3gyzFvIjOdCtgN0T3omtnB
         7YcW6R+jW25eslyxABsNhiWs45oefM1B+1EDwrYTLkT6fdEdF7sEiezjeEywUU5qK913
         D65Ztqmcll/wD5km/cIn9EaBb2JAZf1FZlLC8OV33AY7tC8ZdgbtWIWjVTC/OToc4sjN
         ZugA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d8hUdfNw;
       spf=pass (google.com: domain of 3fjwbxgcket8dpvscfuhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3FJWBXgcKET8dpvscfuhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4h7edqS8yTrz9Y7QWxc6NerxZmtSZfe1vAz+nuFk2nM=;
        b=flrgjtYxNP9AnGwXgDE4ZN7h0SVXnvPm/T5/f+BkuYYlf7w6I8o+jVnPgVQAaQ6ImR
         RRN7rD9BX9HKafp+Y+A2YG1dJtc+AJjzMlJGYZ4IFsbO0CDUMk4jVPlrSHCUVgiWhsJk
         O9Xf3FxQMFX84gZ2ZqxA9M/WNsbZkuXvcrBnAUxT+EvJNikZhFjxMs+WvfSeNwq82NpL
         ouhrTywhR1RTtry6hMPsiva3l9bImZCUYblCb/jv44tjBUisK92y49vDOfxMdVajFELu
         nPtLNwjgTqJSL0P/JMbQze1Zj8f8PtyfQoCkm+DEhYhJQNsFl4M/2hpmXjCK26JXcMJ3
         a/9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4h7edqS8yTrz9Y7QWxc6NerxZmtSZfe1vAz+nuFk2nM=;
        b=UpGUST0iJPbmZ+zqEBG3zsQX801aiKTeG2cIwmFeqJhZ4cdrHXaorWE7uniMehONH9
         OSvVxcsAb+ZzTo2pMSm8qh/6KNQ7vHm+SSU4waNWJVZT2fHp53CT4OpWaa8uUmKQ1rKW
         tS2fPtgZzxcE6vDfhaMcwaiQYxnDkzOnU58sDptaSwCMnFWc9i8K3yLO8L58WEa/bKcM
         Ygc+3Mm3kEuuT69oig/If/xM8J+pvFHWP/SxBsIdvlcKPUK1vYK/yy78pe47O/Q6RYCq
         HgWrNrHR9Pnaleud5ySAJwbdopWveHjHGcJUH2muEIlSMQ3cquFkj6imxbsQhDZS2lO0
         LZBw==
X-Gm-Message-State: ANhLgQ1O6GNFJWTKn/ujQHLDu0V4E+NKo5evRGjR5eg3cgDYdUJ8mENn
	gQbzAd0ITzkQUQgIiLqTKCY=
X-Google-Smtp-Source: ADFU+vtdKEE2ocy/Q0RJWVzSHuGyFBqE8YFAm8IAe7cgmCi/RdB+xVKa6MsfypMRcMcJMwgzI9jgIg==
X-Received: by 2002:ac8:3656:: with SMTP id n22mr10411654qtb.296.1585550613818;
        Sun, 29 Mar 2020 23:43:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:dc83:: with SMTP id q125ls7991926qkf.9.gmail; Sun, 29
 Mar 2020 23:43:33 -0700 (PDT)
X-Received: by 2002:a37:a446:: with SMTP id n67mr10484931qke.298.1585550613465;
        Sun, 29 Mar 2020 23:43:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585550613; cv=none;
        d=google.com; s=arc-20160816;
        b=054bZn7h2WAmQqS5Woc2x4pNJWJVVhKkcVk4NXjuyetv+3eCWU0f9PekGjqEDB4+HH
         VSUtgSZFyH9+HEqk/Ya6eRH75PNNrWMouVNDfAX7swlce5Rs4xlJDVS/vPKVkGD3qdfb
         FQHrdcZ8ivRfV/eJe/DyoOBAtDAGLWckE8sFrRKK7yd4ndUOcwcbrEgA4PIh9pQ9SRs0
         yJv8tB5blNg49Rbu1CcAEfB653m/gJbDJWFrM6q99rdAxt9YZ8muMpBnus9hr+lOWTNE
         AkXm+DVGPvSgHeU4UV1Z9xpNk08T7MaHo9IV9D5/2g8htZc9JZ1/TVqVYloTPx0zOXvh
         u3KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :dkim-signature;
        bh=xapqDhPFeX4c/sEZFBXwtVQVL9ia2nDPE/e7jpQzTQA=;
        b=kIgDSYcUd5zcIAD4p/hdZlm8HG89HdwIc4qF2s2cO8LTlophtjZhog34M+Klt4g9Tk
         JweXYOIPYi+1NjjFd3nsS9/Q5jWveN94+rkWboNGk4Hahsu35BLevV0dx2CxIWOGGmkf
         Fls98wjJjfMEKUlxe1NTV9rtuQjabQqU6rUfyrwvIKESFwx6WNa9vLiMr+y9s5rY2iyr
         eQ108NOQfKCFvefGzgczEKwC8ViJGrOeHgqr/qZDc0GMxilnITYI/dTTnpqhV5E6av6A
         rWG7TSQcGwqV1mg1pUpDcdAXeyVmu1MCqnMWjOiYrxg++8VWrnZzuDYajYHtRAudWgFO
         BQOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=d8hUdfNw;
       spf=pass (google.com: domain of 3fjwbxgcket8dpvscfuhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3FJWBXgcKET8dpvscfuhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id j56si1089702qta.0.2020.03.29.23.43.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Mar 2020 23:43:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3fjwbxgcket8dpvscfuhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--courbet.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id g8so14136163pgr.6
        for <clang-built-linux@googlegroups.com>; Sun, 29 Mar 2020 23:43:33 -0700 (PDT)
X-Received: by 2002:a17:90a:65c8:: with SMTP id i8mr14048414pjs.156.1585550612534;
 Sun, 29 Mar 2020 23:43:32 -0700 (PDT)
Date: Mon, 30 Mar 2020 08:43:19 +0200
In-Reply-To: <20200327100801.161671-1-courbet@google.com>
Message-Id: <20200330064323.76162-1-courbet@google.com>
Mime-Version: 1.0
References: <20200327100801.161671-1-courbet@google.com>
X-Mailer: git-send-email 2.26.0.rc2.310.g2932bb562d-goog
Subject: [PATCH v2] powerpc: Make setjmp/longjmp signature standard
From: "'Clement Courbet' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Segher Boessenkool <segher@kernel.crashing.org>, 
	Clement Courbet <courbet@google.com>, stable@vger.kernel.org, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Allison Randal <allison@lohutok.net>, Thomas Gleixner <tglx@linutronix.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Christophe Leroy <christophe.leroy@c-s.fr>, 
	linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: courbet@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=d8hUdfNw;       spf=pass
 (google.com: domain of 3fjwbxgcket8dpvscfuhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--courbet.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3FJWBXgcKET8dpvscfuhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--courbet.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Clement Courbet <courbet@google.com>
Reply-To: Clement Courbet <courbet@google.com>
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

Declaring setjmp()/longjmp() as taking longs makes the signature
non-standard, and makes clang complain. In the past, this has been
worked around by adding -ffreestanding to the compile flags.

The implementation looks like it only ever propagates the value
(in longjmp) or sets it to 1 (in setjmp), and we only call longjmp
with integer parameters.

This allows removing -ffreestanding from the compilation flags.

Context:
https://lore.kernel.org/patchwork/patch/1214060
https://lore.kernel.org/patchwork/patch/1216174

Signed-off-by: Clement Courbet <courbet@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

---

v2:
Use and array type as suggested by Segher Boessenkool
Cc: stable@vger.kernel.org # v4.14+
Fixes: c9029ef9c957 ("powerpc: Avoid clang warnings around setjmp and longjmp")
---
 arch/powerpc/include/asm/setjmp.h | 6 ++++--
 arch/powerpc/kexec/Makefile       | 3 ---
 arch/powerpc/xmon/Makefile        | 3 ---
 3 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/powerpc/include/asm/setjmp.h b/arch/powerpc/include/asm/setjmp.h
index e9f81bb3f83b..f798e80e4106 100644
--- a/arch/powerpc/include/asm/setjmp.h
+++ b/arch/powerpc/include/asm/setjmp.h
@@ -7,7 +7,9 @@
 
 #define JMP_BUF_LEN    23
 
-extern long setjmp(long *) __attribute__((returns_twice));
-extern void longjmp(long *, long) __attribute__((noreturn));
+typedef long jmp_buf[JMP_BUF_LEN];
+
+extern int setjmp(jmp_buf env) __attribute__((returns_twice));
+extern void longjmp(jmp_buf env, int val) __attribute__((noreturn));
 
 #endif /* _ASM_POWERPC_SETJMP_H */
diff --git a/arch/powerpc/kexec/Makefile b/arch/powerpc/kexec/Makefile
index 378f6108a414..86380c69f5ce 100644
--- a/arch/powerpc/kexec/Makefile
+++ b/arch/powerpc/kexec/Makefile
@@ -3,9 +3,6 @@
 # Makefile for the linux kernel.
 #
 
-# Avoid clang warnings around longjmp/setjmp declarations
-CFLAGS_crash.o += -ffreestanding
-
 obj-y				+= core.o crash.o core_$(BITS).o
 
 obj-$(CONFIG_PPC32)		+= relocate_32.o
diff --git a/arch/powerpc/xmon/Makefile b/arch/powerpc/xmon/Makefile
index c3842dbeb1b7..6f9cccea54f3 100644
--- a/arch/powerpc/xmon/Makefile
+++ b/arch/powerpc/xmon/Makefile
@@ -1,9 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 # Makefile for xmon
 
-# Avoid clang warnings around longjmp/setjmp declarations
-subdir-ccflags-y := -ffreestanding
-
 GCOV_PROFILE := n
 KCOV_INSTRUMENT := n
 UBSAN_SANITIZE := n
-- 
2.26.0.rc2.310.g2932bb562d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200330064323.76162-1-courbet%40google.com.
