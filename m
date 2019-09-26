Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBV6MWPWAKGQETO47DDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 49910BF69D
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 18:24:56 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id 205sf1038446ljf.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Sep 2019 09:24:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569515095; cv=pass;
        d=google.com; s=arc-20160816;
        b=WfDq3R787ofGRoIDggvrgCjS2+2NKUdrOpRy11QdeztH7s0IcjTYOo/yBpUSV/mLwT
         XK/bKYJoJ/+6lDeNVe9qgfpfSd9HnOnqmo3/RQDu1LFu7XMtGoEPgJFnoc39TrIY/X7t
         KOIkg2xTPbUVRYHIYxrGN26nQDvGZ7Y2q3UNTMRcI7ZCKRfeRlAjmr4XlAo/gvLGxQqE
         7ln7OWpiPu5TbpYbQIbcKtxvjl0imYaSgBLcqqfk8wTLbJ+K2h0tThorwL+AAGPpFUGG
         YzxfKrLppjXOCjXBVg5R+1sfSoJ8197P3NklGEbq1E+eALcfdqs7RfEB4oFPiJfP1LW+
         82/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=a7QFMk4hZJPne6yqykV615FX9UVhaK85MO2u/Vtzsf8=;
        b=WKyKM+vj7y375zG19N8jo6euOllEzxbiySxzSi0X+SPlPXm5Z3NUguntcMqKleAiMD
         ev4erZ435dAW+onEzba9cVAEXAVCpjitznHnbDwaBLjnbmxxDSvD3CE4cyXj+mnvzJVS
         PMgy0QKuugpvoxWy3POI73ARrCe1KL59DA3+Dl8c7civkYAc21dCf4apwnQJMX8Fr87t
         fZqmylA4Ypmyv8Ri3gwVZsaMKs599Qlhj7BVqKS0IxQ/L5kO0pTzYKSAZP28C87hGyTf
         nTqKycOnsfXeT0ttxVV9Cawerw58BUyK7cC9mwGy/tQdwUkRdyafXhSw7X2c4o4jgYV5
         d2ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V1V+3mtP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a7QFMk4hZJPne6yqykV615FX9UVhaK85MO2u/Vtzsf8=;
        b=EqcVwiFwlfQuB1dc+GSI0PlkeSwF+dd+Ye2WPeltfbniev9v6/zL5nt+E6bJJUpSbR
         dDnr/MXaVpCifnZKvpg2qEdEK+nOJUS0YeOOFMZQPH1EdEb3eFn8sBaAdTpCq+0vKYvh
         AGKJ/Sq0XlOLEv0wuQUFLpENlXSpOjyVDqfICHdIWrvkC7EUqRYaHENGzT2KoYg79Haj
         tSD3AKmWX+1mw63FX0uxObRGxY4rVbjFpYWgP1A2wVfFsAH9aCJcnykYn9pndfX2qYVi
         yNe2idZEzUE9daIn1hWK63Ftzk8UJeeS1P6VuGRnWwAeXHmNlM/9dB8BRZ3kfHCX/YCe
         l8HA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a7QFMk4hZJPne6yqykV615FX9UVhaK85MO2u/Vtzsf8=;
        b=TEjFHvHM0tRRwf+A8AG6feo9gpbEiCkV8+dKS+YQK3m1dK3JGz/VlqYOuSXjvZZ2KI
         mypuCHQaDumbPDmW61LvUuJtx+ItDtxvCeWxkFd9Yo9XpLkIQaXQt/PeCguNSoyPxs19
         LjoExHKgpCRZitG/jUxrqGeQbzzxnNAlUyrtnrFSRNJeoZbEsOO3BI/UoqjlVdrsEcAg
         Nmcm9dUF9zwEvYA5yLiqV7+9IcCkAwgzY7+vxQfTjLInHJCz6xHY9+hoj44zFXxqTaDX
         nLhpzQCKi+xTssfIbtdJZYauO+pD8egTDxgYhJnFqsEZLFVCcc+V+7yOankeLZGND+3P
         O3zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a7QFMk4hZJPne6yqykV615FX9UVhaK85MO2u/Vtzsf8=;
        b=OdJqb2TIXtMEHnUSvd7ONtkmBMZAnZ0yOv0Jf2br5xK4aKguaX4rVh6y/+WktLOhjb
         nmCCtoLzKolVy3wCoD0jjXOrUKemhNWeK7/upUbyeIi5mw9d9Nzkc/a4acX/mRNMNDGt
         HUz2FghTkjIcrE7q/Q7biO4Wyztyt9sXT8efEULEYQN7A2roOKhIq/RFGC2zYGJDoyiQ
         +nLVYT97l8RwzIuWmIbQbbUIEv8KLbKxAm6E6u+Ry1HaZU2MNGq4YuTOMnyvsG1d4JMP
         RxpCs2oakr1JMqUNkptmIocYNSPR2M/oGFvGSEJLfZ8ELC784/evbSAs8+UYAtQapm73
         vknQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUHWYLcNdNsT1TkmUj121Cat921B0VGlrtR63UrNVHVTTjKb7Bj
	sGP2gfl3RSULowq3diu8FoM=
X-Google-Smtp-Source: APXvYqwUNmIYVLN9I4wjR9ivZ9N9u8XYG73Ip6VkWiN4GkY1sxn6PfxUqO0UKKKCTkpG9b2mL2VPUQ==
X-Received: by 2002:a2e:86d5:: with SMTP id n21mr3137354ljj.1.1569515095790;
        Thu, 26 Sep 2019 09:24:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:1285:: with SMTP id 5ls418045ljs.11.gmail; Thu, 26 Sep
 2019 09:24:55 -0700 (PDT)
X-Received: by 2002:a05:651c:1031:: with SMTP id w17mr3219779ljm.16.1569515095175;
        Thu, 26 Sep 2019 09:24:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569515095; cv=none;
        d=google.com; s=arc-20160816;
        b=Z+Kgfp0XYfdf8aa81QvpZS1S0UREqXVCIhI3skttK0+9Qyk1xTLvSzokx/hKxFs4rI
         XOHYtGO/F+f1drUrerUtgUuuhGqPcEVfiGbvdoke6w+zH9DCX4RFSkKhixvwhKXXtiqc
         BnRGxtquN+GOb5O4tli8CV8/YsP4tomObTlw8rkckrQ5LDlrNT0lUXYsejcCG/z7ZpxJ
         90onLN2PSm7yaS0i83RiuRUFF9o530wKI7OnU+SkTVnNyD2pVrdOnUoUOzi5exa3pooj
         zZgHvLGhIdC6EFLcfFF1lhpDDgXHN5t2AKXj0tRKuZYxDtHY568bxg91uXRTMGQyTQTc
         9dsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=2nru33jX5uOHTAnOwLDnlw05X11ddri3AYOGkrr2Jgw=;
        b=aWHhtBYu5H61y7c94ERE9FzECxY1KeoaTts09y+O/m9F9SDlCWIdx/UfBYOHqVDsQ/
         hHZrWzof+fW8lblBNYLYMD4Evww/HOPkJZ+elRkQLROsBKdGgpke67T/Z7X86n/NkFrh
         zJwaWmI5aom1s7OVqp49BEPVQ0NGfL7kG8Gbk6hPas7YyVCUm4+0C9GjwfAbKvNVyPCP
         iAvpgbfcXAMGkAssHQ7gPsbyxcGvgn/uN/STXz+hcNDCXtgxUy+6r4B13abkRyC6wlbY
         3XrN/GTi8+6UZu625pvXpjUgLynZR6KlSmT0sCnVEGGYecwnUbK8Xi1jRTt5xJVlvxHy
         bFlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=V1V+3mtP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id h6si176884lfc.3.2019.09.26.09.24.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Sep 2019 09:24:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id y135so6993773wmc.1
        for <clang-built-linux@googlegroups.com>; Thu, 26 Sep 2019 09:24:55 -0700 (PDT)
X-Received: by 2002:a1c:a404:: with SMTP id n4mr3688226wme.41.1569515094418;
        Thu, 26 Sep 2019 09:24:54 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id t6sm5820701wmf.8.2019.09.26.09.24.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2019 09:24:53 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>,
	Ingo Molnar <mingo@redhat.com>
Cc: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	David Bolvansky <david.bolvansky@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2] tracing: Fix clang -Wint-in-bool-context warnings in IF_ASSIGN macro
Date: Thu, 26 Sep 2019 09:22:59 -0700
Message-Id: <20190926162258.466321-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190925172915.576755-1-natechancellor@gmail.com>
References: <20190925172915.576755-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=V1V+3mtP;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

After r372664 in clang, the IF_ASSIGN macro causes a couple hundred
warnings along the lines of:

kernel/trace/trace_output.c:1331:2: warning: converting the enum
constant to a boolean [-Wint-in-bool-context]
kernel/trace/trace.h:409:3: note: expanded from macro
'trace_assign_type'
                IF_ASSIGN(var, ent, struct ftrace_graph_ret_entry,
                ^
kernel/trace/trace.h:371:14: note: expanded from macro 'IF_ASSIGN'
                WARN_ON(id && (entry)->type != id);     \
                           ^
264 warnings generated.

This warning can catch issues with constructs like:

    if (state == A || B)

where the developer really meant:

    if (state == A || state == B)

This is currently the only occurrence of the warning in the kernel
tree across defconfig, allyesconfig, allmodconfig for arm32, arm64,
and x86_64. Add the implicit '!= 0' to the WARN_ON statement to fix
the warnings and find potential issues in the future.

Link: https://github.com/llvm/llvm-project/commit/28b38c277a2941e9e891b2db30652cfd962f070b
Link: https://github.com/ClangBuiltLinux/linux/issues/686
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Update commit message to give context behind the warning and explain
  this is currently the only occurrence of this warning in the tree.
* Add Nick's Reviewed-by tag.

 kernel/trace/trace.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/kernel/trace/trace.h b/kernel/trace/trace.h
index 26b0a08f3c7d..f801d154ff6a 100644
--- a/kernel/trace/trace.h
+++ b/kernel/trace/trace.h
@@ -365,11 +365,11 @@ static inline struct trace_array *top_trace_array(void)
 	__builtin_types_compatible_p(typeof(var), type *)
 
 #undef IF_ASSIGN
-#define IF_ASSIGN(var, entry, etype, id)		\
-	if (FTRACE_CMP_TYPE(var, etype)) {		\
-		var = (typeof(var))(entry);		\
-		WARN_ON(id && (entry)->type != id);	\
-		break;					\
+#define IF_ASSIGN(var, entry, etype, id)			\
+	if (FTRACE_CMP_TYPE(var, etype)) {			\
+		var = (typeof(var))(entry);			\
+		WARN_ON(id != 0 && (entry)->type != id);	\
+		break;						\
 	}
 
 /* Will cause compile errors if type is not found. */
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190926162258.466321-1-natechancellor%40gmail.com.
