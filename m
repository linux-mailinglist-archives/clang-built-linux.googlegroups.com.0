Return-Path: <clang-built-linux+bncBC2ORX645YPRBGNA5TWQKGQEYAT7AXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8957DEB52E
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:47:23 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id i15sf5041593ion.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:47:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540442; cv=pass;
        d=google.com; s=arc-20160816;
        b=m2Li1oSUSVYTz8JU/C30y1Ji0ekaKMAKdRr66XozhME/vtLz9iXwtQ1zd16BVO8/Fa
         /vcAcqO/Z10m7x7xV/z0Zu0nxzJ+5p+pVyP/OWvPCDi2xDGEDFvyo8SPy0ot2iXeJzqD
         qnnHZes5HVErT77QAJar0Qy9sJmGMpBis9Rfq6wFlg6bVMGd6YeQR7F3i8tU82E/kL/d
         shlV38s9Bm6Cz4aMg2RZvnHHnc7sqoFcr9PqIvunu29JBzp5AfVJ/E9ZxdpLVGzeIRJs
         MGNj53FqEvmB8hYUvTosQFPZ5qC170eB5AhB8jMr47L7BTRvVAT3Yx/A+BXIfCyz7Ee6
         0YoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=waK7scuTkKEt1uWh4DYWcVtMQofAWlFV2QTYh58hccM=;
        b=hyMeK3HjDt8QQ7iDHKLA1BY3vMkllE8uh6pNy95rB8PeFzguLFOnPjlj296ONaYg6l
         WuCLcvW+TR+MdrJWa5CjFG0pQLeuMBHa5m+ESddFBtGqU9ySm7p3mTwsZoI8ZOZpM35v
         593Sgfr6R4mGh7u6b66aBscbDGx6a20FFS+khBZSCJi4Fwi9dP2TJ/mrEb2nmokKj4io
         IaU/hH1VLBASKCkxIYUsZN01GFzdgxPWbq1xdPLCY0e4KBDgEtuJVcgty6rF/+s9Okc0
         dCLljhrJkeyXVsK7yzwUZMRB7ehTu3mmpGxW/0/BKx2OGkFoIDsoNFh3hMMzyLiR0oY6
         sZcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kjwr8ND7;
       spf=pass (google.com: domain of 3gbc7xqwkabkhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3GBC7XQwKABkHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=waK7scuTkKEt1uWh4DYWcVtMQofAWlFV2QTYh58hccM=;
        b=mHAV99fHVmj2vJlzc++tC6CgjUkrgvAqhji4CxXkek27gbsB9/nGLI5pZI1dn5h6i7
         yeVBVlWxOlQpDLTZ4iy9QKFP1O4klzkHSMe1dbZcBCsnset75xYHyXKsPfN1NJyRCjwj
         OZiHNnb/szYDM3LrmhjGyJ/Vm/fJESy0ynmlgw7TRd+FbC0T0po5EjewJORQbt+V7M0/
         0YoE2qgP7O0dxcl8qLGDGm7ghMfswQ345YWECmJ1dMzWP57kNGLXa2EGDD/DuKD9J8u6
         vmkUlRRNvv91NlzDgRbxKxxFR0cAtKOSlW/FAXBTYo9ng2BvsWSufeWW5mgv1OEEmqb9
         rRxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=waK7scuTkKEt1uWh4DYWcVtMQofAWlFV2QTYh58hccM=;
        b=ZfiBykLGG03OoJOTKlWa1Be1n34csyeetigGebV0HQmaMJ/wYuoJ+9bYsOuyh+Yjze
         EKP/7WGCYUAYGKxHXLZ6ab4RsFOmuge2fj5JS7Tozk7tIFmVX+I6HB09J7rDWNw7oZuB
         os5LZtk3Y76umt0l1BqGCSFWZYz6QsZejWjPSISSsWrW1tCIa4DWMwnpTeHVbaTwA5Dl
         ZCx1NyTXCxSB/lJKJGTtaitTSGlstYI/RMLORh11Oo2mrqIJMx3RxkSmZ0cBGqzANZ1m
         ea/SZ66wuASMgG5wMKjtTKKci2sUj/2osUvUYloP9Ft8/0qCqEFhEmSejQM+pHvROdfB
         /j3g==
X-Gm-Message-State: APjAAAV+x4pIMgX0tmEb5hktiOit81dtYQ9BNvaIRsrTan/wbddEOPnL
	ssBwjtHPokGvSww5mdkxzCw=
X-Google-Smtp-Source: APXvYqw48qEh7YkAeUoGZr2i6LqlGEJ34oq8JckGN/DoIp/0vxDR/s3pW5GSx/6UHoOJFVQFCN0AXQ==
X-Received: by 2002:a92:889c:: with SMTP id m28mr7098775ilh.157.1572540441925;
        Thu, 31 Oct 2019 09:47:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:7309:: with SMTP id o9ls690363ilc.14.gmail; Thu, 31 Oct
 2019 09:47:21 -0700 (PDT)
X-Received: by 2002:a92:ce03:: with SMTP id b3mr7502985ilo.301.1572540441634;
        Thu, 31 Oct 2019 09:47:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540441; cv=none;
        d=google.com; s=arc-20160816;
        b=LuiF4vToo6ypSuocsn2BPqZjUVT4T88z22w97LY0R1XAz+ZYF9YaBj5X14pHeqAH4z
         7xvT8ucngtF1Q07NZpUdlvw/d69PHgeVwpCUYA6JmbMC3hbE54WNh6aEytkpIwVDqDU5
         JW4GY3k9buUuv2Z+p8gr9aNVXZuKf5MJFyLXN22blmk6o34DXkgmEZR7nDtXfWOr1ti5
         hsgLKVCSqM07GOJjCpHytJx+GDeLcxPt4X5pxu1c4O0o7XaqkTQmqRu0rY8ibM4CNy5L
         I6O7TwwWceGsRRR5kq12WPRqrHodwWkxWfi/vF+i6g/FieBifNuGWkLng10ZXf/QfGlw
         PkYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=+uiLq+iUoKYbKnLFQDjwDIIzqGudQy8o1UFEOkmkrHU=;
        b=KXzgbk0fhf4GxJrHwP4ZhlWVEpH3QlT3Yn4NRPk5Hm/EH4Jxkl5CvEUbDRGp4cWuXs
         Xa2835WXbnI0A+qe49bUqV0SeMG5rPECBLiAd3Uuw46Nb1tUaU51SWbfdFIWn13rb2Ce
         MAoH71L3CDgGfeu83AbjN9P1E/5dAZvZMwNS76eePCShupGDV+xnOgcd5jICH67poyS1
         tw8Qj+OgfE9BhMSt+Faevy4SAgXTDGFv50Sxory2zudpGL/N4nOMTwuBDc6s2Qt5qFzM
         W8E3WZtrx04Ja4ip2FVeXYLM2G8V1zI65vhp8lv4gdwuN3qQd7n6waMCsM05UYoUW9By
         jyeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kjwr8ND7;
       spf=pass (google.com: domain of 3gbc7xqwkabkhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3GBC7XQwKABkHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id y205si291735iof.2.2019.10.31.09.47.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:47:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3gbc7xqwkabkhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id u21so4977858pfm.22
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:47:21 -0700 (PDT)
X-Received: by 2002:a63:64c4:: with SMTP id y187mr1758578pgb.150.1572540440772;
 Thu, 31 Oct 2019 09:47:20 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:34 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 14/17] arm64: efi: restore x18 if it was corrupted
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kjwr8ND7;       spf=pass
 (google.com: domain of 3gbc7xqwkabkhzb7idakzc3c5dd5a3.1db@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3GBC7XQwKABkHzB7IDAKzC3C5DD5A3.1DB@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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

If we detect a corrupted x18 and SCS is enabled, restore the register
before jumping back to instrumented code. This is safe, because the
wrapper is called with preemption disabled and a separate shadow stack
is used for interrupt handling.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/efi-rt-wrapper.S | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/efi-rt-wrapper.S b/arch/arm64/kernel/efi-rt-wrapper.S
index 3fc71106cb2b..945744f16086 100644
--- a/arch/arm64/kernel/efi-rt-wrapper.S
+++ b/arch/arm64/kernel/efi-rt-wrapper.S
@@ -34,5 +34,10 @@ ENTRY(__efi_rt_asm_wrapper)
 	ldp	x29, x30, [sp], #32
 	b.ne	0f
 	ret
-0:	b	efi_handle_corrupted_x18	// tail call
+0:
+#ifdef CONFIG_SHADOW_CALL_STACK
+	/* Restore x18 before returning to instrumented code. */
+	mov	x18, x2
+#endif
+	b	efi_handle_corrupted_x18	// tail call
 ENDPROC(__efi_rt_asm_wrapper)
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-15-samitolvanen%40google.com.
