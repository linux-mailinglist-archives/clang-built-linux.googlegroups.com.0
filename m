Return-Path: <clang-built-linux+bncBC2ORX645YPRBIX5Z37AKGQER7AKGTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB332D7E5B
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 19:46:59 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id a68sf7294448qke.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 10:46:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607712418; cv=pass;
        d=google.com; s=arc-20160816;
        b=lU3kJ7Mnjf+wRDRkzucSbNrk6ej4Vx3eyCkQ2ntpg4Xdnqrt1gAz/j8wXu28Mzr9O7
         geTCWaEGTjUiSipQvQ9GAtnF7o/QxitsSbkIV2rj5for/R2+zJajLyhTYLtie6U/Vppv
         LWNwoCfL/M5gEd5mcW/a5exJARyEu5Lpyc6WpcVHTLgMJ3XRJYaso02lvzO1yTTN4Ze+
         qft0edaGXtfpQB1eovBS0SYNTBone7iaVv7wTx1UglGKpoAHzm0Sl7bUMk1V893yZGKF
         Pq5Gkr0VdAzX/px0iDPIehS5+5CHcucAm9Ahi39z94uyvDD26Z71mYwgRFTa3wMGsRfJ
         hkHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=FEJ0KTjBeEpKWb4ferfPjlLU56DPdsUdzy9hdBYweCw=;
        b=hVWR78GkAGZnbzPrvjCrjytPts/zMTaZuXKWlimQGq2M/APXOZFegmoXtEuSLLFgKO
         kBqXl63wgkfQaCq0d3jg7OFTQBC3W1x4wz2gA38d7a3NRn9h5BBLuKbJKYY3vqUKfEVZ
         eJGmTFH4x44J2gLKfetkDEJpSZPKWL/fG2MTgEROQ2efeGbVXyK+TopO1dxzD1yRalNh
         aanNkFSKlUd/mS//hRs81VfTDmVPZFKK8QbcNMKwgu8q46oUXmS3rkuezXWb9silZXUA
         VFc/rIZMsgule3kj/H6pZ6nBfkuQmk3eMNpHNGsCijXHzTExbne7MUug1Czz1/n86unN
         l7bA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mt5+qfjf;
       spf=pass (google.com: domain of 3ob7txwwkahiiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3ob7TXwwKAHIiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FEJ0KTjBeEpKWb4ferfPjlLU56DPdsUdzy9hdBYweCw=;
        b=Gavch+id+YEfG06mXwVBsYko02xBlRdgDMBY5xei0/GLyEeycQa7wcfz6ValyFe1SP
         8Vx0APwTr3kvhSl5dfjB+p1XNa2yb5pAy6+piJjf4xWQKDyMMxSxGBSiuzjB6mWt6he+
         Gr9TkF/Ja8t6VsieaGtO7zopz7cF3Wyr6CpaHH7Pi2p5N8rFk4W8/7p5WLnE5SmtZ9ea
         fDerXlW54pU84w2pxxqpOvaNe5ZbSx911Vnh5NqCD5wQrNEPiftix3k/Lr1gVwnqwRFX
         a9dMVCEi3xnzM8RgSCtW5hXiAh3S9NoMipf9QXf7qHLnrMB3fZZqrC3+M1jcgMW2Wvhk
         Kj5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FEJ0KTjBeEpKWb4ferfPjlLU56DPdsUdzy9hdBYweCw=;
        b=Lr+yMU2ck8j/r2E0jrC9EbUWrvqcgl8IOW9GhcrUJyywDjSrUNnrogd79Csj+ulThW
         7aPH8yhmrnAHFdfbxXmTJ+yAKUpI4yURS9r2BP0iwSRX06V5t4vprI+XSk+wdzP1zXbE
         TB1UT3keUuRaUvcg9lW3+O22p4ywdbOXtbyxNHPJz0kVGBEMytisnUmKVeyA6e6aVx3q
         6sIYz/i8/FVW/3bnt5N10va7+bfAnQBvrTd9NIBiHy+azvcwMKO6CuAIZ5JX41cnTVfo
         ZWzVEGIbG1kQsV76tg4tPJTuFIbI7zUAjhGwChw1Poeq+ir7W75NBqr96TWAOC2JUZ9e
         vkig==
X-Gm-Message-State: AOAM533otehhFZ6gC/yo+6+4QDYYBE13FoEgSAeezUfLkXGhWUGcVX8r
	FWF4nKpTIqJP6Q7KL5GqZJ4=
X-Google-Smtp-Source: ABdhPJxgMjylR4o1v8uCt3AKmmP7ecAbMp5bk2TnQuhFqdIhJA7XFEdUp1lWgb8azs0rdnzSUOxVbw==
X-Received: by 2002:a37:4bc1:: with SMTP id y184mr17787226qka.278.1607712418534;
        Fri, 11 Dec 2020 10:46:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4434:: with SMTP id e20ls2187671qvt.3.gmail; Fri, 11 Dec
 2020 10:46:58 -0800 (PST)
X-Received: by 2002:a05:6214:4c7:: with SMTP id ck7mr17677322qvb.7.1607712418080;
        Fri, 11 Dec 2020 10:46:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607712418; cv=none;
        d=google.com; s=arc-20160816;
        b=nvNi2nqwbxxKsNAm1CwDzdaOUkQjuVbpuBDDPVW1c9cj6ZmEjN7fRrLw32ERrwWbn0
         xZC6ApGhAOfoRvwkJlYf7EDczdCdYI0UzZxmT+Nu84TvVU5+QB839A2chHaz9nXXFzpi
         a0sLcy6mZCRSG1b2BspfZix3BdlVFdc+vqy7LH/MiCY8z7gMWm9K2jUjJYJajQCEsxpa
         61DNpNZ/lneRcEyrhBUqUGQFDEYyUkIOU3ckyeYBSYQ7O4PwXcAmoNpzYRFBat9IMyCo
         vtrp4D4iHMuBtLWbffvRw7yu9yGE9Ub7fpbda7RtQEdr8XV5pkoja7yjRrPLGUCPYfKI
         d74A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=sUICI29mkgxH8XDf6qhMCrhn46+Hzc1owynREvsajYA=;
        b=R4hSRfWlZJIquOxiuHkRNikXQem84EoKwDVU1176rCjU1xk7Kg9nG+AeKDsRiJmmnW
         jvog/YSQboCwvHUP5OJKCcJn+huDsotVlxFCp2EDyfMegWer3mTJqB6kS2gWBcbUUTh8
         LkbS6ktDgz0G/B4RQveFGb0rMvhO6kRqkwvgm7V7FE//XR4xNboci0x44HVGJgtQveJr
         Tf2SNnsVmpBfr8CYUUJPiq8hGbuGhU/DYYgGL7/yBFUCv02Lw57LZDG8Vt0xgW2FUR02
         JhCO4pBTVzdOKSoXxR5UHG6rsKQ5FCW0o+KH5spMXmK4K5wszn+rMO7z7R9EmpnrVclL
         yn7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mt5+qfjf;
       spf=pass (google.com: domain of 3ob7txwwkahiiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3ob7TXwwKAHIiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id w10si535149qka.6.2020.12.11.10.46.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 10:46:58 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ob7txwwkahiiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id o17so7103024pgm.18
        for <clang-built-linux@googlegroups.com>; Fri, 11 Dec 2020 10:46:58 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:902:8343:b029:da:cf6a:f65c with
 SMTP id z3-20020a1709028343b02900dacf6af65cmr12048006pln.5.1607712417071;
 Fri, 11 Dec 2020 10:46:57 -0800 (PST)
Date: Fri, 11 Dec 2020 10:46:28 -0800
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
Message-Id: <20201211184633.3213045-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.576.ga3fc446d84-goog
Subject: [PATCH v9 11/16] scripts/mod: disable LTO for empty.c
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Mt5+qfjf;       spf=pass
 (google.com: domain of 3ob7txwwkahiiqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3ob7TXwwKAHIiQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

With CONFIG_LTO_CLANG, clang generates LLVM IR instead of ELF object
files. As empty.o is used for probing target properties, disable LTO
for it to produce an object file instead.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 scripts/mod/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/mod/Makefile b/scripts/mod/Makefile
index 78071681d924..c9e38ad937fd 100644
--- a/scripts/mod/Makefile
+++ b/scripts/mod/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 OBJECT_FILES_NON_STANDARD := y
+CFLAGS_REMOVE_empty.o += $(CC_FLAGS_LTO)
 
 hostprogs-always-y	+= modpost mk_elfconfig
 always-y		+= empty.o
-- 
2.29.2.576.ga3fc446d84-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211184633.3213045-12-samitolvanen%40google.com.
