Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBDP7WLZAKGQEF4FP3XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id C6387163C32
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 05:54:38 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id e15sf15498880ioh.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 20:54:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582088077; cv=pass;
        d=google.com; s=arc-20160816;
        b=sMIt+MLEYYSAtBP5AX9Abjq3Jye1eJcerAAkSs0nrEehBkvHG9CjKfMFSbhmHWLqt/
         UT7YMcswIfBtv4CCn2jOJhxhzpM/0kcaUdAQspm2fVKe/Ibj3fcIvF3gZ6Qn7Mp3vXXO
         kjZnUgfRtUn/yUhIF/ez7UAv9yGY+MjnQCcKJ5puEhyZ8sQRWxCv6JF05cSu430Q+UUF
         +MRZwLvSI9EepsgawUyQ7mqKfIRQVXfSzZs0ikESCMDq15wFxWo5+Y5sJ1+omvTuB08E
         MXXYJ0anDc8vKCmgoTRd50en3lycIBvpmGcT852jtI5TzOqQQNKWHNykZbsEvmp2C1oj
         y5lQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=d9xzmyS2SbST7SDGoqgdMEH0xkbWx0vG1Y4KqSrF8JQ=;
        b=Xt0EJ2YyhzHQ2xPvcD9ElC0G4HBivpB/Y9BCGHfEXRAW5MI+8wIXjYfIaz/pl9HN/t
         YP/3hIb/v42BrHw5Fbe2q/8pAwWGYFQTzTC/ZwdnfkvsGy7raXJeB2m1lWNqSP2+fHeP
         rEqnEvh43pcewIPJjwCBA2dvtgrRRyWqsx6OwpojiZAIgaQVfIYNucBsJ1Y3BUT6Nq+g
         t5z3GtTIJSPSjWba612wZKsKq2PSxS0twH+h/3OVxh+wMFPNOUb/NZO+iu+HliqDLKxy
         JARzw5fwQTEexaXheCBUHdwhFI/xyQJ3ygbR5Vl+2dPY6EdjnFCYlrvT9VhNrduGQhcJ
         wDow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WBwXIcH5;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d9xzmyS2SbST7SDGoqgdMEH0xkbWx0vG1Y4KqSrF8JQ=;
        b=li4px2LOCd926A9QM1OmkqqhyuJnNjsgZqEFvrpuI5WahxEtkWJ6RkaQ+CONtJy29s
         t5ZzFmr+azeLIVPGKzytegudf9Br0RWFnY5zzY4vDkeo+106I8i+N34YVh8wftIkEpir
         rO6piYB7lwQaH9pYg+w7F7F6Ci6Zp/NbN+M/Nk690WkKB4DKHGO+fFCiwdR/ptxVQFOa
         dln1McxQYbdBGO0estzmP4TYq19L+3qGKJDq8eGaIR2e1YrjRuWnzrm0bm1D3HjgKvZw
         kZ4cBdIHtl0imWHCEjraX1mkpe0uQFwU2LK9vQA0gaCs/tgyIAWfHNQG5PYbLjF1RP/4
         7aPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d9xzmyS2SbST7SDGoqgdMEH0xkbWx0vG1Y4KqSrF8JQ=;
        b=Z0Qayx1qvPE3FChSFz7dLKCz4Kbg4gym3gUyKZYK2NqJwdOUpAaJZrDXaenYOrvk/d
         XK8gYaWXs07Pw/W6SHN6xnLLNW71li+MT1J7ZHkP7PgajmuO3BTaKIOHwCOxvEtomh6x
         NiYjnaQykrdKBUpZ+bHc8j0MNUEIoN/GM0FnQDJJSU/y1lIZLnDXESat65XdZyCnhTpK
         oqQvFVv6fZRJKGgvAMz+VTu2V03AKPdu4sF2Y5/ENmJBHf+1M4wiyTwTgWffYwW3Ew/8
         wRQAvjYa7XldThRP1AWVhmrjJKRHz+WSsujgIf4FM+2c6j6LFXZktlD/jL24q51Q2uVw
         XBXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d9xzmyS2SbST7SDGoqgdMEH0xkbWx0vG1Y4KqSrF8JQ=;
        b=hwlXGgJtcoNxTBZeNVSr6pJ/cgHnFYPvLHlCHqLjNtfv1/OqDpqza/qUSGlW0OaxAg
         cANFJqykOZzyooKJTVhfK+SMeHeQMlkFXY9sGwRzZFN6GDr3q6mjBlAcIrtOsPRFZQuE
         U6djWjrWsM1Jpi+ngyLzVBMvlNH3dpeeRJfflFS7H+tyQ9ogz/AWX5RFD5+duqVL+NeA
         G/Uowv3mgf+2uxvr3DoTk/T7j6bw0U8DvY1JMwrA1F8/mnSHhOr4FQFQ0IUog86KKBZ7
         uy/S7dPfjthVbrlg7x7FrsEGQp1yrv8nULzoXpOrxKuiKrJ+0ZVKpyw6yGGHQ2Fdscs8
         vfog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVZn1lmAUEI77ZZO+So3zZ/7dX3KDCkACMgnXd0WBDARNT0Ub0p
	RQGA6ZI9e6o7TVl4wVrWu/g=
X-Google-Smtp-Source: APXvYqybHlgqOrX/TbiFbTeYLX0d/cSFRlh8J/m+HN16WXyGmit0mdZKMEWmyFU9sIl54hlhx2BAZA==
X-Received: by 2002:a02:b703:: with SMTP id g3mr19645501jam.101.1582088077798;
        Tue, 18 Feb 2020 20:54:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:85c7:: with SMTP id d65ls1688187jai.2.gmail; Tue, 18 Feb
 2020 20:54:37 -0800 (PST)
X-Received: by 2002:a05:6638:44a:: with SMTP id r10mr18930198jap.36.1582088077386;
        Tue, 18 Feb 2020 20:54:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582088077; cv=none;
        d=google.com; s=arc-20160816;
        b=laQBoaCozadhTbUKc5JsFCTq1v43PqXA4Perselgqwkj7uFrXSe/nWCzI6lUpVAm/T
         Clk8acpSpgeWz0mNgzdKbewMhP0WZNLafJMY1Gis0lmJSPMZBB+JHgLISqyp4I6qLSS2
         bkO/tMtAfcALaOAh4cykXWYTeb28SQzzOZvcEs5QmWwwX22xjWrX4UW5Kl9GVL5rckBa
         fUY6OE5Fukf73yXeXVldps9jxfwJGpBh5gW/xgtEaWhc8kY+qdwmleOZnTf9SLCbWbP1
         aeGCxlMFD8+GvIKoP05MZWwWWPzZcaNWnag9Os8JwBOYtWL/FMD4IOLlLCkrzwVvsn+U
         wJ9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Oh9QWb6pZZ5g69dU4FZ2txutGr0B2CSvIaPTiYXdnPo=;
        b=kqL2uTWpQ/piouZQTgBS5FqRiiSHjh3dbZIiBgL9UY9bzhBRCmPO4SRf1Drf3TxcTQ
         18lQsDGXYmZm8BTh9XPJU2+1pndZHMMdPs1qAt/HF9ijlCt6yy7pWfgQFTjn2A6d2b7O
         u3+CekVDm+RMRf1LUPKAAasFUexulEbBvdPUMXq7H25zCC7JyGG1i/9u1m01qNwjI0G1
         /w9494pGuk6HiG2L11G8eWb3lKF7FX6RHVF3ruRZC6zmTOrhIjVl1xT6mp2MKJgi7nbq
         BrNGfhJW3bnx7vPqoA4zW0xn38wuTKW9MMKye22VyqWWsHV/B4pxIms2zdnttYJZs4ri
         T2xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WBwXIcH5;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id k9si61141ili.4.2020.02.18.20.54.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 20:54:37 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 59so21919777otp.12
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 20:54:37 -0800 (PST)
X-Received: by 2002:a05:6830:1d91:: with SMTP id y17mr17502659oti.276.1582088077039;
        Tue, 18 Feb 2020 20:54:37 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id c7sm288894otn.81.2020.02.18.20.54.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Feb 2020 20:54:36 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@arndb.de>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-arch@vger.kernel.org,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 6/6] kbuild: Enable -Wtautological-compare
Date: Tue, 18 Feb 2020 21:54:23 -0700
Message-Id: <20200219045423.54190-7-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200219045423.54190-1-natechancellor@gmail.com>
References: <20200219045423.54190-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WBwXIcH5;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Currently, we disable -Wtautological-compare, which in turn disables a
bunch of more specific tautological comparison warnings that are useful
for the kernel (see clang's documentation below). Now that all of the
major/noisy warnings have been fixed, enable -Wtautological-compare so
that more issues can be caught at build time.

-Wtautological-constant-out-of-range-compare is kept disabled because
there are places in the kernel where a constant or variable size can
change based on the kernel configuration; these are not fixed in a
clean/concise way and they are almost always harmless so this one
subwarning is kept disabled.

Link: https://github.com/ClangBuiltLinux/linux/issues/488
Link: http://releases.llvm.org/9.0.0/tools/clang/docs/DiagnosticsReference.html#wtautological-compare
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 Makefile | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index b954c304c479..99080c57a1cb 100644
--- a/Makefile
+++ b/Makefile
@@ -742,8 +742,7 @@ ifdef CONFIG_CC_IS_CLANG
 KBUILD_CPPFLAGS += -Qunused-arguments
 KBUILD_CFLAGS += -Wno-format-invalid-specifier
 KBUILD_CFLAGS += -Wno-gnu
-# Quiet clang warning: comparison of unsigned expression < 0 is always false
-KBUILD_CFLAGS += -Wno-tautological-compare
+KBUILD_CFLAGS += -Wno-tautological-constant-out-of-range-compare
 # CLANG uses a _MergedGlobals as optimization, but this breaks modpost, as the
 # source of a reference will be _MergedGlobals and not on of the whitelisted names.
 # See modpost pattern 2
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219045423.54190-7-natechancellor%40gmail.com.
