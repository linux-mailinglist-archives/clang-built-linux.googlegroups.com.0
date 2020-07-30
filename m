Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOE3RX4QKGQERPL62EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6B3233B87
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 00:46:17 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id z66sf2593652otb.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 15:46:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596149177; cv=pass;
        d=google.com; s=arc-20160816;
        b=J0GsIVW8toexvmUp0hwnkOZEY9v371LatFhDB1/HSM+JYZg2UNuVAPDzOT1vQO4zMU
         IeKcW0vYG7pl0dcLE8NOzgeMqlXM5ooiY4/BJ7umzGqgcuuJqBK8QlKujMeVxcD7JsOL
         3t5U+JOAMwYlOeW03AGBp1qDviX7Ki3WxmpEwejDo4VmE+0MA6HvnyBKyf+aGJBJCm6D
         m8yic7edKT92dhmLDnpHU2wBatnqMUgnk3sTMI/IPKSHnUO5KbOPDHZRXtC28hpKanFO
         HjW6HCQ059z7By8ozyDZTI811aDfndGvleQaP7wLyJyH9rmhA5+IO1cG7wtedry+fSnK
         D6Iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=hO8axGdXIvLpAwh0ksxYk66RileURqnXaBn4iLymCFA=;
        b=X1jVGVT84CtLzIvGGyirjiKaYLQhO3mH6k8Ag7SMknedkoCetT+xW5bH+Qn01AjdnK
         LerxdO/lagPnBY102AkXBHfSbmh780D0T2KR2vjbIMcvqdf7C1/i5XzfdDXEMN6hY5sg
         c/eom+kerqQf1oOYMC3KuFqErlBlq0b77ZDouGMLbwCTwXdSqVo3t0c71R8Ett2zltu2
         SEZhwB2c4OPwc3ER2G7tvhYq9NhT/ZcOEiCQrRbvDEHxXj4m2WJIuuW4Wk03F3KaVRII
         puIEp27npR2rhLTOe0YdFuC2EGou/ZzX8mOD/R4utaC10+Oi2CMdSJ/wFYFxokZIcE1E
         Nkrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KeQRs5P9;
       spf=pass (google.com: domain of 3t00jxwwkan4ndesaulniersgoogle.com@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3t00jXwwKAN4NDESAULNIERSGOOGLE.COM@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hO8axGdXIvLpAwh0ksxYk66RileURqnXaBn4iLymCFA=;
        b=pm9SCa39tyTO1KBG4ri0l2S/a5ga52oNPJjvEs5xQkFznbaejurk5SuDLTTaulD/MD
         OAvis8C2KIhVeKtfFxf0r5Q4lidkgVeyeBMT50ILmzLuStTXDbkti78nQz1L2jOxYq7e
         A6mXoDoqQ7SJS7u/4XW/LywNMDmtWZ67Lbq/E61fA2CGh95amB7P7NXBvt0ofdsvkefj
         lF1Jw2ntIX497U5VK7hEEVVre8OeJHDdU+cJJxqoS2tup4k2nMDzV+5SOEpCOfq8vZa4
         ZR+8yNT6/o/GuV1zrBP+jmskyxEfhGBDP0FX6QZFEJyMtc1+Gj79nI86k+hT4nAo070S
         Sv0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hO8axGdXIvLpAwh0ksxYk66RileURqnXaBn4iLymCFA=;
        b=eB85enTiT970VXpI09qwtSyfXgKwehow72yME/ISSCvC2XW9El7PKKoIKrclv5Z4p2
         NK2eyB6pFujw4IdwNnhW5824+SEFvJY7UQxIGETqbrIUWVHT0T6NNkEbv/iEzBoAmkfc
         1o5Q56FZUoGyKb0e8jcJnDQEHF/aLdOEp48AjB5NGSC+oA7FzLkXZzODOrzwU+AtPuO2
         JQ8HjS0fsrn1zSrCa8jngNe7VdfnBtkcUFzZD8wspFoWPu+62/dEbrAk6gjHnDl7L6iU
         PtKs6FVswLTH+z1tDYLMSEi4IHmAsVF2m6E0hmYTNvJwfEXc6+z94NFXBiPCPU6CqNtB
         BwxA==
X-Gm-Message-State: AOAM531AhOkN8HMPjHaJ2gSkMkpRUKwGMlC6QCpfccZ+K94gW2dQcML1
	fW7A5dus7WOOkweq4xkeEIA=
X-Google-Smtp-Source: ABdhPJzGzMsbvNudQO4kdygcqwuwbaOA0mYG7F2oD89HoXCipfPmIqKuYRJ2Q0eSfllYu675dtatPw==
X-Received: by 2002:aca:1117:: with SMTP id 23mr960681oir.58.1596149176860;
        Thu, 30 Jul 2020 15:46:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:fc57:: with SMTP id a84ls1463863oii.2.gmail; Thu, 30 Jul
 2020 15:46:16 -0700 (PDT)
X-Received: by 2002:aca:3708:: with SMTP id e8mr947238oia.25.1596149176569;
        Thu, 30 Jul 2020 15:46:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596149176; cv=none;
        d=google.com; s=arc-20160816;
        b=nrgMF6V6uj2cAYiOG41q3eFpotrulPlYOdbxytf/d1jEuHxIoNToWgT0b06SA7EJ+m
         qolTQvSdqLIG+gPf5BfZFSjSQ/xUcorVVKk+XHsmK04x6C0Y6+8p1+/U251kuP6LY35C
         TbF7tffWlSYK/5R4bqFpbrLoTK1HOy4LmQmGVdyIXs5wstqCOByHvcOWd7uD2BvjpFlm
         HYfHduTChOY4ymAEyUSZrnduUiH/8oajKYVZmFDf+9E1L4hbrBiwXBeayatIPDrhY0Nz
         7WDJS1XkuHeDTyWLrn1C9qIaUiDJVDr6QChgPpMXtgisUO7hPwPtpUsWWV0TJ6vreFK+
         vh3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=nxP2fPsBjuLaGOnJV2PoctyTt9HEnsA8L8JDsWYdkGs=;
        b=mhDdOQ4/dSecGiY/DXmyufSITV03vmYh1/JufOx61CzXjxB8qKCTgjNW5ZyQmQczus
         khC65LzAuXa6SEhvb/tsCl7c+BQg02GchGRtVg0vJaIk3PtdYXi1zjRYQwiAs5dZRNZy
         XPzE9AxNnrs8D1bsJxc2KY4yaVCWsibIp00KQ+ogFPqxLTviHE+ZFU9qvdx4ujIO+9so
         beIMPXTpx0DW6nIbyIuEdFc/ts57Ua3UNsz+XJzjuBuBJY9/qX3ZmhMCM91ViXN8FfBA
         SpS6YdTbhd0rLfkqngO5wR6Br2RjUDkqjKIDBmHilJ6PDq3YUOkuX8Yq7F4xJRDT1wGO
         C9OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KeQRs5P9;
       spf=pass (google.com: domain of 3t00jxwwkan4ndesaulniersgoogle.com@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3t00jXwwKAN4NDESAULNIERSGOOGLE.COM@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id l16si426091oie.1.2020.07.30.15.46.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 15:46:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3t00jxwwkan4ndesaulniersgoogle.com@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id y24so19345202plp.18
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jul 2020 15:46:16 -0700 (PDT)
X-Received: by 2002:a17:90a:d42:: with SMTP id 2mr1254368pju.15.1596149175923;
 Thu, 30 Jul 2020 15:46:15 -0700 (PDT)
Date: Thu, 30 Jul 2020 15:45:54 -0700
In-Reply-To: <20200730224555.2142154-1-ndesaulniers@google.com>
Message-Id: <20200730224555.2142154-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200730224555.2142154-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH v2 1/2] tracepoint: mark __tracepoint_string's __used
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	Tim Murray <timmurray@google.com>, Simon MacMullen <simonmacm@google.com>, 
	Greg Hackmann <ghackmann@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KeQRs5P9;       spf=pass
 (google.com: domain of 3t00jxwwkan4ndesaulniersgoogle.com@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3t00jXwwKAN4NDESAULNIERSGOOGLE.COM@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

__tracepoint_string's have their string data stored in .rodata, and an
address to that data stored in the "__tracepoint_str" section. Functions
that refer to those strings refer to the symbol of the address. Compiler
optimization can replace those address references with references
directly to the string data. If the address doesn't appear to have other
uses, then it appears dead to the compiler and is removed. This can
break the /tracing/printk_formats sysfs node which iterates the
addresses stored in the "__tracepoint_str" section.

Like other strings stored in custom sections in this header, mark these
__used to inform the compiler that there are other non-obvious users of
the address, so they should still be emitted.

Cc: stable@vger.kernel.org
Reported-by: Tim Murray <timmurray@google.com>
Reported-by: Simon MacMullen <simonmacm@google.com>
Suggested-by: Greg Hackmann <ghackmann@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
No change V1 -> V2.

 include/linux/tracepoint.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/tracepoint.h b/include/linux/tracepoint.h
index a1fecf311621..3a5b717d92e8 100644
--- a/include/linux/tracepoint.h
+++ b/include/linux/tracepoint.h
@@ -361,7 +361,7 @@ static inline struct tracepoint *tracepoint_ptr_deref(tracepoint_ptr_t *p)
 		static const char *___tp_str __tracepoint_string = str; \
 		___tp_str;						\
 	})
-#define __tracepoint_string	__attribute__((section("__tracepoint_str")))
+#define __tracepoint_string	__attribute__((section("__tracepoint_str"), used))
 #else
 /*
  * tracepoint_string() is used to save the string address for userspace
-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730224555.2142154-2-ndesaulniers%40google.com.
