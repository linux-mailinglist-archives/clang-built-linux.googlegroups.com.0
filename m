Return-Path: <clang-built-linux+bncBDYJPJO25UGBBO43RX4QKGQEM7IM5FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id 11417233B89
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 00:46:21 +0200 (CEST)
Received: by mail-vs1-xe37.google.com with SMTP id g185sf4766709vsc.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jul 2020 15:46:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596149179; cv=pass;
        d=google.com; s=arc-20160816;
        b=NKT0hg7Nu9KZNoOZmNx2eGKlZfaDgd2zgzyDUMTOy9jokEtVTjqsKNWcf/AMHguhv4
         1jFXVlCrZeDRu6/+pat9AuyTHeOrmgsvnikpJlAKbn/jNYGHy/BtuQdAQC1pmoT4DXiM
         aLfwExWupGcdHhS2bUHbmQjswoWJ4wc0DESEAwKCibAu35i62JLNOqN+XWXL+qWgISYe
         zw+HrzGHDzh8P6hNzSUy1l6zSvaNcAcCb0IYZoXYkKxXHb1s4XsnyYZRpNvc0xoYnff+
         sWMGjKEp/wGn48+63sd87W/tWoU+Bz0fGpPKMBKmnF1uF8EmUAWLWdausidwizGuSkNq
         FVzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=svYm/sQJI2UUPqz8YGV7JfRYx9w6coP2RsNV5LVWf5Y=;
        b=YvU6gglSJopuj18au2TcLUTo337wKn9JbFOHaB6RF2H1oFaA15LN2ggpMhYkTnZ8TY
         zahg3/W7o7ZZqLBO3od13tkoLXjVZnW+tUSJ740yQ0VxCtSztuoptlQNRN5w1ccnzAbU
         B1Z4heU1qVKfXk7ZxgD4DGkBM04o/7LEorEPyxv1Y4ypXYhq3GaNCb/kN29bRrqgvdZX
         0zYQ8+dO7HRPxbpZWsTHT1XdmU7iTtXlJzwPxCW4aqaydMORFO0m2MleEiIWg+xqAm1S
         mthHKXCAdOImxAtvlHerg8CrXaS4fi90JsLOMasMu7QGgvLGkJE/x3iiS9/DocmaMnKs
         uipw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EcGh2gJY;
       spf=pass (google.com: domain of 3uk0jxwwkaoeqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3uk0jXwwKAOEQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=svYm/sQJI2UUPqz8YGV7JfRYx9w6coP2RsNV5LVWf5Y=;
        b=L1rI3ULLRIf6fSs94qhHYKmrWxx3uaeSsVVj60Om9i0Jb3vrotNeNHcuhTiDNxA5ZX
         U4XPQgIHLRkthLhHcl1FC1zt/+Vr/mxXT975lk9OEQCRA3hqaUGFaB+Hs5SUOZmkmIb3
         z4iltWcCOqZ/K6w+bzWv4stVSouLX6+B5zJvOo1EGGOeI6ySY3Ek3zl849Opd3knI+E4
         aIPQKFtB3HLtaNZQvmH9M9Mk58QVS2buXCUq1C30IuE8yhzW160aJP8dlXBcJVsSLHy7
         70eo2OCQFvhN3RFu8mvxs3jUxYWf8NWStuauE6ceeQMa04rnzjgQ/k2Bp/L5CGJ2hKoF
         Nqng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=svYm/sQJI2UUPqz8YGV7JfRYx9w6coP2RsNV5LVWf5Y=;
        b=KTw95O0MEuTMp46dx7/BA0EZh2/jqfXDSISymn3C9b0yBB1zbpMGTuzd5o+3gduZkG
         ioAb51cgomy71c0cp2GHVEqSW1WI+J6tt36FbGN0kJ0wa8s9Z4N20poYUocDLLkaU6MB
         QKMqPpdTd4YPCfh2pmRK8GgnHxsgrAUDeYm1j4SP40dvPTCPhqzzKMj7EBrK7NucQax9
         SmhrMTwvQ+EsGW8YLQPbxba5xcHAzQjon7xRICYEgk7loHpWYOWJBxmUextcCDvfnrWG
         BxAOfeih/GUxHngz2DVFrByyjrzrtGCCx8k8nNXewPN1wEVC+0GxvZiJkyXaLujnArB0
         x0eQ==
X-Gm-Message-State: AOAM533eOXZukKtta6zEw/ip6RXwZX4s8MIipkRcvHMiX84GJh0zT+gm
	aMzG+WVEIm5zAG1BVdNvZ9o=
X-Google-Smtp-Source: ABdhPJxcQtmriyh+NFKSRDRB7+XbQ82qkOaOWLn8YtBG1fdP1mtpl+T3hTJSeV3if6dWbBhoSnqgpA==
X-Received: by 2002:a1f:5986:: with SMTP id n128mr873471vkb.93.1596149179698;
        Thu, 30 Jul 2020 15:46:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4906:: with SMTP id z6ls521404uac.6.gmail; Thu, 30 Jul
 2020 15:46:19 -0700 (PDT)
X-Received: by 2002:a9f:31f3:: with SMTP id w48mr740561uad.87.1596149179374;
        Thu, 30 Jul 2020 15:46:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596149179; cv=none;
        d=google.com; s=arc-20160816;
        b=cTj140OOfLuGwSfRZn7A8RvVVj0Tq3TBQIP96Ge4u2j2l8QSXXXJT9Ryu1YINxikAc
         XhVgAjbR6VgxTLeobE+xJEBBcCr8MQRiSlgO/lwrS+53bh1j3WZ00YzjwrMFm8cob+rb
         yKK/G46PLWS2nLiVG6IjSnzSJTen5QllatjZX/vHatkt3GMIAlw7FSFhvOOzD9fzCZ9e
         iW1nvw4OZJImg15KkgZk8KkDOhj2mLthaxUWm6oPx3CndUY9IUuT3TohsEQN+wNOkf2t
         WVuVoxGv1fNwfi2ew0q6KTjkSAcTbhVj2r7KyHOXml78qR6slZF3rzmymTM5eARTipKd
         GJeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ghSDhe2c5Xvw5KrRhzzBcUm252rPp0PZQtHeMauHrcs=;
        b=qZ6zfeIHD9y+4fc6OPdsDoMuiXYjwN5UbRIdCqy5dqokSiMcEa1r4GwKJukVcyj1To
         sJDtUAhcNmiVpYj0VKF+J9W3E6nVFBbXzMIz+bQgyYbQOR4CVP+LYvkNzAwcHRWUbXEw
         J771MMr1adzNC9NYJuJBqPYEBP1XN7n0VHWoBkV4yKakJUgr6WLSzynhtRGQ9CVv5+mv
         uaylMyGTde5h2sN1c+AEF4Zy+Kar6q6XfK0YhZkA1RrfgaHGqPssD6JOWl/kpGfzakv1
         K17AEeUFuqYpE/o8CMUlXX6HpPsoMxX9rwu3Rka/ljpI1GjCioE/i/jM1p8fqb8yOL7W
         TuBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EcGh2gJY;
       spf=pass (google.com: domain of 3uk0jxwwkaoeqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3uk0jXwwKAOEQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id l129si467696vkg.2.2020.07.30.15.46.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jul 2020 15:46:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uk0jxwwkaoeqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id e196so31268482ybh.6
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jul 2020 15:46:19 -0700 (PDT)
X-Received: by 2002:a05:6902:1002:: with SMTP id w2mr1897535ybt.321.1596149178898;
 Thu, 30 Jul 2020 15:46:18 -0700 (PDT)
Date: Thu, 30 Jul 2020 15:45:55 -0700
In-Reply-To: <20200730224555.2142154-1-ndesaulniers@google.com>
Message-Id: <20200730224555.2142154-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200730224555.2142154-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
Subject: [PATCH v2 2/2] tracepoint: used attribute definitions from compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EcGh2gJY;       spf=pass
 (google.com: domain of 3uk0jxwwkaoeqghvdxoqlhuvjrrjoh.frp@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3uk0jXwwKAOEQGHVDXOQLHUVJRRJOH.FRP@flex--ndesaulniers.bounces.google.com;
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

Just a small cleanup while I was touching this header.
compiler_attributes.h does feature detection of these __attributes__(())
and provides more concise ways to invoke them.

Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* Add Miguel's Ack.


 include/linux/tracepoint.h | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/include/linux/tracepoint.h b/include/linux/tracepoint.h
index 3a5b717d92e8..598fec9f9dbf 100644
--- a/include/linux/tracepoint.h
+++ b/include/linux/tracepoint.h
@@ -116,8 +116,7 @@ static inline struct tracepoint *tracepoint_ptr_deref(tracepoint_ptr_t *p)
 
 #define __TRACEPOINT_ENTRY(name)					 \
 	static tracepoint_ptr_t __tracepoint_ptr_##name __used		 \
-	__attribute__((section("__tracepoints_ptrs"))) =		 \
-		&__tracepoint_##name
+	__section(__tracepoints_ptrs) = &__tracepoint_##name
 #endif
 
 #endif /* _LINUX_TRACEPOINT_H */
@@ -280,9 +279,9 @@ static inline struct tracepoint *tracepoint_ptr_deref(tracepoint_ptr_t *p)
  */
 #define DEFINE_TRACE_FN(name, reg, unreg)				 \
 	static const char __tpstrtab_##name[]				 \
-	__attribute__((section("__tracepoints_strings"))) = #name;	 \
-	struct tracepoint __tracepoint_##name				 \
-	__attribute__((section("__tracepoints"), used)) =		 \
+	__section(__tracepoints_strings) = #name;			 \
+	struct tracepoint __tracepoint_##name __used			 \
+	__section(__tracepoints) =					 \
 		{ __tpstrtab_##name, STATIC_KEY_INIT_FALSE, reg, unreg, NULL };\
 	__TRACEPOINT_ENTRY(name);
 
@@ -361,7 +360,7 @@ static inline struct tracepoint *tracepoint_ptr_deref(tracepoint_ptr_t *p)
 		static const char *___tp_str __tracepoint_string = str; \
 		___tp_str;						\
 	})
-#define __tracepoint_string	__attribute__((section("__tracepoint_str"), used))
+#define __tracepoint_string	__used __section(__tracepoint_str)
 #else
 /*
  * tracepoint_string() is used to save the string address for userspace
-- 
2.28.0.163.g6104cc2f0b6-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200730224555.2142154-3-ndesaulniers%40google.com.
