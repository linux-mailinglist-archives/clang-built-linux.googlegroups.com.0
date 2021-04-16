Return-Path: <clang-built-linux+bncBC2ORX645YPRBWPL46BQMGQEPBYL2RY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 8631B36296A
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 22:38:50 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id y17-20020ac870910000b02901a7f2d61003sf6783301qto.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 13:38:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618605529; cv=pass;
        d=google.com; s=arc-20160816;
        b=uCcMa7pyf40MLbTI2d2bZsua5IXTncqtDWlZuLkdf8SirbgyfGMp/7bmMnCtLL6Pv/
         s0aFQ8K0N58sSFkW6ZeHssMGGKuN3N0VRZRpskEhtPBPUON7aVJUBvWeTOwigAE2OJiX
         kIRuyeINes0LR2UB3fg3CKvKuXWL25c0afEoTrMmLzN0yn0SqN/u4eZ+ZR0PwQVqV6dl
         BWBAdYuL/MqcrDkeRj7DI8bZNc//UGTkM6W8let5DTMQm9XOgU7BkpTfzsddvwG/00AT
         f3QhLrz2KuWvSohO6rMULZ/QrNF0XonSdjeTGpa2QYWDm6hTiyvmJwyXud4IHoGK2Q4y
         wZaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=TpVyISqyzliAwEubytv2T00D11z0ppxMbjNM7DT34gg=;
        b=eoDTbDffggC1atsVDm/GO/aZ40Kz1Q5P2BU+oXpxzycZ/pCWvSL0wF/tHpkY3K2Dkw
         pc548E8hfYcF767b3m3vjuah704RFR81sfG6JX51Tw+qdjjAjCeHWUcpGS5+LHusdvL7
         Z45nNUB/r9SpeqORDmFkRnz1eqw/UlD7L85EsWzFPL22tT7ni93tH+/fvCj4LjlDc+ox
         zyq0+9x57B5r1/isXn2xJtden8F1KP0A1/juUuWWCCYRf5YyTb7Oyq0tEa8+84TfAYfP
         6had29iXFefWqCvlxaQnRMIJkO83lLS+iX9Ip2fk4pfSblkspNAXjFigSkzsQa3t1BmG
         u3Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f7Bw46pl;
       spf=pass (google.com: domain of 32pv5yawkalunvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=32PV5YAwKALUnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TpVyISqyzliAwEubytv2T00D11z0ppxMbjNM7DT34gg=;
        b=BpNnFlV4lAlcXCOnJR8upN3MSn3pSIsqqHUEjif+NB4zuUsBR7ckvSiDCA8N9W9nUy
         G+ko+kL8eywx6xkht2p76PD577GZjZYvBZfuIJJy+h1kp+748UfvjRdO0RsgpN46XYE3
         AmlOuNMdDTG5qa7E6572SEV16VdSw8DkSCjrzM062kqk5SPVCA5HdlOe3PSVIOwXsLkb
         ULGWDTVbCW4D+hFWH4FhXVuMHnCqS/vZKPIiccsNKrcg53Lnby5RRLvf/U7/sO9hoWv0
         LaQsxlrDEjD41HmYpgit+RVig5C7+Eouzg34xWbmFisnCTbLW4XaN72FInRVOTWxfMve
         q92A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TpVyISqyzliAwEubytv2T00D11z0ppxMbjNM7DT34gg=;
        b=gR58nmMrfc2A+N4s7je5BW31BzMxNanUAcLXudj7F/Md9d/NLbTHfBtpNW77NgpEWt
         Rkmc0fP/QfNmIqsIqmPADT3OkiWN3dvGQZ/bZqLI/W9IqVhnlnm0atH+eqm/RSjvPT9n
         pWYj+p+mqaMlQsybohYMPXAP4zmXDU5ysMQWlvW1vdJWRK+kis7BN9jBwLLKDg/zanWp
         clXrctEsbjYP6KeVvT2FQ5n4oR/kMXKR100MQHfLNK6BwDPr7q7qBqAAFa+gS6DviAsN
         JKWcS1MrIdOp8zM0PKKw5Ge7IZipV1efA+zoCgdYGcqOiA9vyzJzIytaOigOQKSorEER
         ghUg==
X-Gm-Message-State: AOAM533PCq8FIc2zBXGY2juvE97jUyYQguWMKpIy0hQqeGdsFcIDWbpP
	1ssx16NlKlZ04P+eRp/A8KU=
X-Google-Smtp-Source: ABdhPJyX8pTEXlPFq9tOgsrI+bp5fdDn7OLhlWqOdjdLKcdc7teHCtdkjRljRTzki4Nl9AlDTt5Wqg==
X-Received: by 2002:a05:620a:13c5:: with SMTP id g5mr1116916qkl.248.1618605529239;
        Fri, 16 Apr 2021 13:38:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:224c:: with SMTP id c12ls2782493qvc.1.gmail; Fri,
 16 Apr 2021 13:38:48 -0700 (PDT)
X-Received: by 2002:a0c:a0c6:: with SMTP id c64mr10232865qva.57.1618605528784;
        Fri, 16 Apr 2021 13:38:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618605528; cv=none;
        d=google.com; s=arc-20160816;
        b=i48KyZuNhjrfsI8RWBL7nHW8TMCmlQELzc1k8BHxjWAB5/YkIevN2qA+fFjekxuCHd
         /QoNAZGo5s+4C4k7tBKav8akNKFj42MrsXcowtvQbNwZTO6xfC6t3fx9B/76qjT31P+W
         /6YoDl+YzXxoh7hsKfQttKpje+fnt42J5z2+m3xBB20aHt5psBXKAfHmYLDLnEDem8CY
         cuMA5lzsznSuCgX9LxLL2XWdvWgEl+19U2ekdXYTOFSQbHeAh5Zszo4aPnZjQwAdoEXa
         UFeKkjOPkrHanvGxVybL2CAvz9FrZujvJZwf93P5+2Dupn/9CV2YOKiwVMVkH+Y2oIuf
         RcLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=RbFM/FOV0/3txgisl3034f4RrM8GnTQruaePZt0Evbk=;
        b=SBurd1nWGHEAefDXl0Wmoh7XUaeCfvZMzDfo2AQBpNpvD7hVbQfuEZMqC88sNSvsB2
         VJCNWjcaSkTsKKBc8Znb9WEUCncfokyKX/iff685ebjALqUDRz4ByipUcydHdz58DyB0
         tuUORrhvGc53zdIYkyHy7eop6vnEvPTKwi3SzRu7+VjZGtIEZGV/YgXGmcnLl/BfkEQk
         Q63NSyzwT3tdNyut8FZyUSw75vtnDgklZN7FyaCRahtJUDit1RZmXqT71WnA/iGEsE1R
         J71Rmt5/lWPCKBuRgoA/DTGbELFxc5aQ1132TXRsno9NfCla6hLXW54LFT7wCEteuDNt
         eTuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f7Bw46pl;
       spf=pass (google.com: domain of 32pv5yawkalunvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=32PV5YAwKALUnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id c22si522775qtg.5.2021.04.16.13.38.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 13:38:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of 32pv5yawkalunvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id x7-20020a05622a0007b029019d73c63053so6762645qtw.16
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 13:38:48 -0700 (PDT)
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:e262:3d8e:cbf:6164])
 (user=samitolvanen job=sendgmr) by 2002:a05:6214:1d0c:: with SMTP id
 e12mr10335145qvd.0.1618605528476; Fri, 16 Apr 2021 13:38:48 -0700 (PDT)
Date: Fri, 16 Apr 2021 13:38:30 -0700
In-Reply-To: <20210416203844.3803177-1-samitolvanen@google.com>
Message-Id: <20210416203844.3803177-2-samitolvanen@google.com>
Mime-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
Subject: [PATCH 01/15] objtool: Find a destination for jumps beyond the
 section end
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
 header.i=@google.com header.s=20161025 header.b=f7Bw46pl;       spf=pass
 (google.com: domain of 32pv5yawkalunvhdojgqvizibjjbgz.xjh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=32PV5YAwKALUnVhdojgqViZibjjbgZ.Xjh@flex--samitolvanen.bounces.google.com;
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

With -ffunction-sections, Clang can generate a jump beyond the end of
a section when the section ends in an unreachable instruction. If the
offset matches the section length, use the last instruction as the
jump destination.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 tools/objtool/check.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index a0a8ce61cd4d..5fd60e055a5c 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -870,6 +870,10 @@ static int add_jump_destinations(struct objtool_file *file)
 		}
 
 		insn->jump_dest = find_insn(file, dest_sec, dest_off);
+
+		if (!insn->jump_dest && dest_sec->len == dest_off)
+			insn->jump_dest = find_last_insn(file, dest_sec);
+
 		if (!insn->jump_dest) {
 
 			/*
-- 
2.31.1.368.gbe11c130af-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210416203844.3803177-2-samitolvanen%40google.com.
