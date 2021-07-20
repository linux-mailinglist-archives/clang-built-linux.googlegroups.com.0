Return-Path: <clang-built-linux+bncBCZ3LGVOUAFBBRUW3WDQMGQEBYFQLMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 378833D045E
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 00:16:39 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id kf3-20020a17090776c3b0290536d9b62eb6sf77725ejc.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 15:16:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626819399; cv=pass;
        d=google.com; s=arc-20160816;
        b=asF9qh3gNIygaqcYoSsFSjKKV9GG4ok2y6NaqGGROInsEyUhiyJH7wES/bCDR3n7zB
         ng3+IHebyD6ruyuw42L1HT7+lLbB1zGxJEdAQGW/SslbInvjXjsMSUAMy6Bp4ZOkhnxB
         1FqSGtc6b96PQsE2/jb3AWbMsj6w3XgWhs3pifF4j/kGbY8fXXvqrxa93a/wxf0cEsTv
         TZnXNec6iQqQr/CczXCaGa6WzHzCRHdzGGlUgnb0cYOC5lc+f6SpX02QkC7ChKsXa1oJ
         KDnbwpoPDUhvYLDu2PYIh6haRH73aMHQ7y6KBRk76HN4hnp3+NHKzS0IMaypCODzfkJS
         Tn4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=c+BMV0UXQlxW0lYC7RCRbOXyVm7JNBc5TEF/rWGN4YI=;
        b=wee+uPaa0BDCMpZknrDQ9zz9+CCmACM9xMRVSvzd6lNj8NRGgWLpXLwOChyG4tCqaS
         BIJ/N/BjV2CMyl5lA4Bd/lwIdCfVOiiKIcTEI+4m3lWVyM02Rler9T78QTRvqjIT75tV
         BHz7gnvrvFBBePWO98oNZW9G3WyjA+Xwv9IRtu83udU/6YzgbUEUwN+33Uu+fVs6iDFv
         QR9O/A4chGPlWC9DkNXLLMFGhmmTOql3TvjyEtDiZH1tzCJGMMlQnbBBjAqNO9G5Ej3R
         JIuySLASp6lzIpuIRD4ify9mTTDxF05WVbFRDORH0PbuSO0gbJnsWqzXESehs4atUJg7
         8NaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DPN2qi0v;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c+BMV0UXQlxW0lYC7RCRbOXyVm7JNBc5TEF/rWGN4YI=;
        b=BElaDMjXYdcMaeiBwBVWjiqdahwdP1+4FXP4520W1yqvx1mNGbJB6M/K3exAbx4M4H
         I99JZsmU8Wd1y0AQ0dtkcTZFM46YDe7kQChQmxyPX96916da2u7DIeDuOWVcLVcKC0X2
         VWf9cNYeT1h9iaT0AnQ/8+rJwFNoRgPY0A4IYjvGkEI9UxdwJjZgaBkIkmdAoD+49lpa
         eMEbPJ2ML0Dsl25Fyo1YWuVoW0+9jkzEoRUyqAr6eSdZsd2Syvnq4iDFGUk0glccnwwJ
         i5I/B1tQZh7h2VVPgvK2kh4XxmUtE+cPju/p67eOd4avGVS0hSLWR6EUcB2lIzznCXxO
         ajGA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c+BMV0UXQlxW0lYC7RCRbOXyVm7JNBc5TEF/rWGN4YI=;
        b=SR4NxJkzZt0Ky+W983zXN5bzHzCFcueFTpZp8XfpYJbIAOkM9ctpgi67I8SO63Ow46
         U8uRhkhyDtmNH9hif7yXSpM/zHMkJh+gKwty73FXIEO7oRc8ByBBABzxDxCWYmD6/qOR
         TYnCfh4q70jidwFWDwa+Irh6HIKTb9PS8H/ZYJSO8oG0SSOQHcFHVKzpzKI57nwizKdH
         KB6eR4UzJrQCXOxUZAX1SdbIKNC7Ez7gwz1qwWmdbOAkTATVAwKb++4RTIBo1JaK8Vhm
         vlBiexADKpfzZs51/2Htq/oSEvTl1u8gS0CUOYwBJLCrtB9nDae0WvSpW3oXZAviU5hW
         yW7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c+BMV0UXQlxW0lYC7RCRbOXyVm7JNBc5TEF/rWGN4YI=;
        b=GOWbE02nc94pMKJlQm0WvLxEs9cMnuBrp/9w4ts3uK71QCX1Oijp+vmW/rUB9q65gI
         1AlpTwCgJdyUrEgav/Gr0mhCbQfk2QcFOffwKesXJZwVMxNXCZV+QkS0B5jPWlWcbtrC
         PrPVOFoo99JulEsxqEqDgA72fKEEbhVcyu2gRdFHHRs0kY16T8hDj0cmH8MUcVlf9liA
         jjmqsd/ofjZsfezYEq3lrcVu/YgdKfIVDkp0zXu+T6Rf5yqI8THl2PnoZlzF55KQedLH
         Is6GUbuJ279qVxSx5+NngdgML8YuYiNzYTa91WERer/yz3CtNjWCwMGXCQKKyYShIeq1
         10Ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kxP+dWraJ7HLnffxdecNAQYhtJvjMI39k3ualdERnKXlh5cJi
	aesN1thC/Uh6ijxY5Gy8X7k=
X-Google-Smtp-Source: ABdhPJyjgPDTFde8He+0rM/jOiD5YZDSKQlppxAHjl3HUu5yjoEIBsC7cM4AMJos69rulmBOx1aUTA==
X-Received: by 2002:a05:6402:1396:: with SMTP id b22mr17695806edv.380.1626819398918;
        Tue, 20 Jul 2021 15:16:38 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d48d:: with SMTP id b13ls346599edr.0.gmail; Tue, 20 Jul
 2021 15:16:38 -0700 (PDT)
X-Received: by 2002:aa7:c799:: with SMTP id n25mr42897423eds.16.1626819398061;
        Tue, 20 Jul 2021 15:16:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626819398; cv=none;
        d=google.com; s=arc-20160816;
        b=UuIixXOjXurKNIDeY2LPqhra15LAXVoij4mFkP6vzX6tAaMZ3IkiTOzezD7vMwkpLj
         mPQS1/aPzxGZ6grWKHhbcjry5R/A8lVVjsJO83uV1+CHfuts1gWfon688WhCKgXY77uC
         16DzOmRg1vBYUz8nD7sdZHXlxlm8hEBo4A1hc8tCYpkGxON+uurmq0e8RxYL035zYx4c
         uIO9Ay434sRkOwT0dmErWEB/NcNL3idH5ETDKKSC68XBDcAjNIgrnrKFbdO1orv2qn5C
         A8qqtM0m0wmpZteW6C5O/k2EcFi5IS0nvTYMswCtAG4bgdFeL/2uIumfIAXYeke4x0xr
         5QVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=rOPRdCz8cQm0jFl0E5n8kfyoXFor2GcetLoZd95FWRg=;
        b=Tj9UiBzAxK+q27y8cz62tRc9EqzWORkY195JzCESKti5XyDqaP0MJFXL+a7nBMTVS7
         lveYel0kDdar/qfyqBAMuGZ5OLzN8dUqYnUQumxz10iBIGk2wzQpxfn6WrYHJcGHMiD5
         qLVhmXyBAx8AspOxVMLRI3AWFFk8efB/v+apg7rVY1YKDqkO7Z3KjqI//jEM9/Lj7OG7
         g8drR4UbzRljdpsuhGUEDT2dj6sJtgy/DbO8VSeuY5M5LJNfgA5jEJnZFmZD7fMQf0kj
         Msy5jlnYXF3vaFYHoynMUiHdnzwwCDRLSQUvIVU/sEdlc7FuwoNLxK5WKeYGOO8386uB
         LzwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DPN2qi0v;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com. [2a00:1450:4864:20::429])
        by gmr-mx.google.com with ESMTPS id d26si275743edr.3.2021.07.20.15.16.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jul 2021 15:16:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::429 as permitted sender) client-ip=2a00:1450:4864:20::429;
Received: by mail-wr1-x429.google.com with SMTP id t5so14019wrw.12
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 15:16:38 -0700 (PDT)
X-Received: by 2002:adf:ff85:: with SMTP id j5mr38992354wrr.49.1626819397767;
        Tue, 20 Jul 2021 15:16:37 -0700 (PDT)
Received: from pswork.fritz.box (i59F72CF2.versanet.de. [89.247.44.242])
        by smtp.gmail.com with ESMTPSA id j23sm3339045wmo.26.2021.07.20.15.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jul 2021 15:16:37 -0700 (PDT)
From: treasure4paddy@gmail.com
To: rostedt@goodmis.org,
	mingo@redhat.com
Cc: samitolvanen@google.com,
	treasure4paddy@gmail.com,
	Padmanabha Srinivasaiah <padmanabha.srinivasaiah@harman.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] tracing/syscalls: Clang cfi enable syscall events
Date: Wed, 21 Jul 2021 00:15:41 +0200
Message-Id: <20210720221541.16164-1-padmanabha.srinivasaiah@harman.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: treasure4paddy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DPN2qi0v;       spf=pass
 (google.com: domain of treasure4paddy@gmail.com designates
 2a00:1450:4864:20::429 as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
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

From: Padmanabha Srinivasaiah <padmanabha.srinivasaiah@harman.com>

With clang cfi syscall symbols are appended with <syscall>.cfi_jt,
hence syscall tracer can not find corresponding syscall name.
And results in no syscall ftrace events with CFI.

To fix this issue, this introduces custom cleanup_syscall_symbol_name()
to strip postfix ".cfi_jt" before comparing syscall and symbol name.

Signed-off-by: Padmanabha Srinivasaiah <padmanabha.srinivasaiah@harman.com>
---
 kernel/trace/trace_syscalls.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/kernel/trace/trace_syscalls.c b/kernel/trace/trace_syscalls.c
index 8bfcd3b09422..dbc253fea34d 100644
--- a/kernel/trace/trace_syscalls.c
+++ b/kernel/trace/trace_syscalls.c
@@ -79,6 +79,27 @@ trace_get_syscall_nr(struct task_struct *task, struct pt_regs *regs)
 }
 #endif /* ARCH_TRACE_IGNORE_COMPAT_SYSCALLS */
 
+#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
+/*
+ * For a syscall symbol, clang generated non-canonical local jump tables
+ * will have entry as <syscall>.cfi_jt and address of this entry
+ * will be used to replace references to the syscall symbol.
+ * so we will strip the postfix from appended symbol name.
+ */
+static inline bool cleanup_syscall_symbol_name(char *s)
+{
+	char *res;
+
+	res = strrchr(s, '.');
+	if (res)
+		*res = '\0';
+
+	return res != NULL;
+}
+#else
+static inline bool cleanup_syscall_symbol_name(char *s) { return false; }
+#endif
+
 static __init struct syscall_metadata *
 find_syscall_meta(unsigned long syscall)
 {
@@ -90,6 +111,7 @@ find_syscall_meta(unsigned long syscall)
 	start = __start_syscalls_metadata;
 	stop = __stop_syscalls_metadata;
 	kallsyms_lookup(syscall, NULL, NULL, NULL, str);
+	cleanup_syscall_symbol_name(str);
 
 	if (arch_syscall_match_sym_name(str, "sys_ni_syscall"))
 		return NULL;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210720221541.16164-1-padmanabha.srinivasaiah%40harman.com.
