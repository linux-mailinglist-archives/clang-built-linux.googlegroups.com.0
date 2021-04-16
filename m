Return-Path: <clang-built-linux+bncBC2ORX645YPRBZXL46BQMGQEQOT2JNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id BC11F362976
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:39:03 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id j10-20020a05622a038ab029019f472c0820sf6775069qtx.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:39:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605543; cv=pass;
        d=google.com; s=arc-20160816;
        b=L/mGSCyXSkxQhqKaFTajh4Gc/TnDM5l/uOEi3w3hJ5TXDobhe9cM4qK+3pAcXVhfqa
         3V93lVAGiYPEvZN0eQug63nzs2lKQBCEkZRcuejQmtbcwIP619Zm0Jw8Cfx9oYBayYEC
         4nph2ZCg50m1Ks4v+r3XRyDo36cWFqb5fte9wzzYCEB88QbLLlH05jtO2q45RttkSMY8
         llFnyRrWlYBy5PAXJKj88hpJg2La+Gcier5g++qupkPyWa6kZc9r23LRdKRWqk4g8/mY
         Hf8/NNELvaKDLEzLKzP4JU2jIUeM7FdeHTco7CnyPHifI6P0304CgQOAKu6LO/WvD7HX
         E6fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Wv30BJ7OnwF8Cka+f6aQDwF0SCZamg3pr0okuAfSqIM=;
        b=1G3wTrgUkJKxQwg2UTV71C9V6HJnvmYWM6EfAYZRN1+1GPClLatJ5pr5P66/Vw7Kib
         4IxyQJvfurkX3g6lhnZ9Jfzlwlc0Jco7nwEdiVJmRjD0CQehMMRLMZZqDuTlKrtTrDtU
         hk2ANHeRsW7htWMm22jHmEjl/XJJsxKU0vlpdJWq6JYuu+rTM6PIHxv8sBGfsi4Kzp97
         LZ//ZWhDern9i6CS7WdxuPCaV29C3Ma+XiH/BYsXGyuoK4hNqakdvDKR1hkF9hzT5Q3W
         bHP5TsBu7XGzFPAtgc3AFnQvw9w4bIIlf0l/xhEAzA8qXhwFZ7/R5ndWpGQMXbDzhvWP
         Mh1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="qnTY33/T";
       spf=pass (google.com: domain of 35vv5yawkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=35vV5YAwKAMM1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wv30BJ7OnwF8Cka+f6aQDwF0SCZamg3pr0okuAfSqIM=;
        b=N/suylAEi6zq6jYf6tSceheQCOZpuqKPomwxjYJ/yyJRDoRfXtQVRFgpkQtyjtcY2B
         g/HCEud0F4KmqVMHfgBwJO+TFlXePOMT2IbsQHt1cgZcNRGULtNBWyD0cl5wJxghN0cl
         YIihS3+rX8RBGIk16lfOM22B0VEfh5nsZkZxis5/F4iMA8bCKFtRrr/0q1P9/cHNp1D5
         aPjmKyz0IlcRFkQEb+nob3gxZ+NDYkFn01qdPMsPfWyxaq4YMYdfOwGmLj6Rgg4Gc5+E
         JF4qs06aJuh/MhCEfmBJsQH/xz3ZynmUL4JZaDqOHuGw390ju4Ihb91vB/itRhFu2kwJ
         dfDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wv30BJ7OnwF8Cka+f6aQDwF0SCZamg3pr0okuAfSqIM=;
        b=qE5Bd0xlRExOjLl0hMSFH03OhbOrUq7XoLapuIrV+lQCMJC8pTvEci2d1v/Au3BF1Y
         Sk4aUf0zYrn4sVv/eUqQmv++YduGowsXF4gGKCYv0L5NIJGc5Y4dMFYpgyRqwh6LciHH
         9Jd+JoNOTX7AuvBgBRNn1O08gS7ckyoTxnGcnI2qq8wW05h9yh8psbgsNtySyPXc8IF6
         nOwtPCtBK9H206IG8hkzx8V9ihTqPSUsV8XYJM43cHj8OwUHI/3J981FC01x8Jlj5h9W
         7cyPm3R0R6gGj9VA9/uBj6Gj07geF7ylpgDC7UE8EehzJQPvRV5tS4ZZfvbNaqfGXt5x
         G+og==
X-Gm-Message-State: AOAM531UsSTWdfFArV2DE/T/fmk6Af01kvqy3jbiI1GdoQNX3FyVGsnP
	0fXjsDEICocKiPPXY6G9JaQ=
X-Google-Smtp-Source: ABdhPJwtpCjsnQhWoE6363sV1E9SO3f1Ie5afW/avuEEMxg09SNB/Fz0MoMv6CphoPy0wO6dGBHhMg==
X-Received: by 2002:a37:b603:: with SMTP id g3mr1148862qkf.38.1618605542911;
        Fri, 16 Apr 2021 13:39:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1011:: with SMTP id z17ls5727477qkj.6.gmail; Fri,
 16 Apr 2021 13:39:02 -0700 (PDT)
X-Received: by 2002:a37:43cc:: with SMTP id q195mr1098651qka.455.1618605542457;
        Fri, 16 Apr 2021 13:39:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605542; cv=none;
        d=google.com; s=arc-20160816;
        b=m3BuJSwMGJcukYeWlnnVbVUuULHW5N7EVhs+IzPjWy7hJBtXAt9T9YNbPGmim1SArQ
         oG5nOdmrfLF6OJqhonJccSEeINp/U1oKx6cMbKmqqTGUXXDvKsMpUdcCW/DpP5o4OyjA
         lJuaDieTp58TDHQGWXhYpQOdS4L9RanAXEH5NKKOSWJVKuM2BKn21mTa4Ul+qhK8pJRP
         DBgB/h9ld+OOis5MkPm4ahHVrhfxKii6tpn7Uh1AaxT3JpB1C6shgFCI9MVVD/m8eDC5
         ps0bQAcPq9bfvTTG4IvXKwU+3IpnenbxLQ5SCm1gkhXZ2NRaj2GLVtus+yy77sSJgm9e
         KwlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=gU1hOjx3K7IYMK70RtBuGAoh0CWdKH9ubIz9k5V8HEI=;
        b=Wz5Wid5oU7KG2Jeyj1wCVZhBuVCL8+rPaTwkCxD3UMql4YnLgxihmn3lofCshCAGl6
         cAKzzvHPBlWVMO/kKSiF4110n4eDdRGyUh09lyFRVk8VzJL4WESLyOiv9a6nG1Gp0eDS
         imoMzn3JWHjOsCm3wsHQ++MtCra2/pq3g5jOmzB+lmMV3OdOnPiZgmAupKiAh9ANhGWw
         o48OIOtlrN1Igc/uMeAwu3VkGOzYqqvC2fjv+EvRfovNY9SgyJf7Xyg/gx4cBzk+Hhvs
         mWIaRgSjQ0pFJ5nDgQtySppsqCn4XlLPQ3tuBxA7N7QwplsejBdNXHw01si6gbgqP47C
         twMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="qnTY33/T";
       spf=pass (google.com: domain of 35vv5yawkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=35vV5YAwKAMM1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id h13si386902qtx.0.2021.04.16.13.39.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:39:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 35vv5yawkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id a15-20020a05622a02cfb02901b5e54ac2e5so3672102qtx.4
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:39:02 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:176a:: with SMTP id
 et10mr10444816qvb.23.1618605542149; Fri, 16 Apr 2021 13:39:02 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:37 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 08/15] x86/extable: Do not mark exception callback as CFI
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org
Cc: Kees Cook <keescook@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="qnTY33/T";       spf=pass
 (google.com: domain of 35vv5yawkamm1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=35vV5YAwKAMM1jvr2xu4jwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com;
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

From: Kees Cook <keescook@chromium.org>

The exception table entries are constructed out of a relative offset
and point to the actual function, not the CFI table entry. For now,
just mark the caller as not checking CFI. The failure is most visible
at boot with CONFIG_DEBUG_RODATA_TEST=y.

Signed-off-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/mm/extable.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/mm/extable.c b/arch/x86/mm/extable.c
index b93d6cd08a7f..a7eae1c4c59f 100644
--- a/arch/x86/mm/extable.c
+++ b/arch/x86/mm/extable.c
@@ -155,6 +155,7 @@ enum handler_type ex_get_fault_handler_type(unsigned long ip)
 		return EX_HANDLER_OTHER;
 }
 
+__nocfi
 int fixup_exception(struct pt_regs *regs, int trapnr, unsigned long error_code,
 		    unsigned long fault_addr)
 {
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-9-samitolvanen%40google.com.
