Return-Path: <clang-built-linux+bncBC2ORX645YPRBLWWZDWQKGQEBDDUMVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E03E3FA5
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:52:31 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id l20sf338392pff.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:52:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957550; cv=pass;
        d=google.com; s=arc-20160816;
        b=N2EFqMqVf64vvHhxPhIXEwu4YZZoe9T3U6EFSSAi/o1phZB6JztfFsEwD8mPl9ZkIo
         cNZSUDDx1jirQx5E+P6J6WsEc2tO1WFYYM65/f5r+n6HW0dWatyOVjnAFwNT2GftboN0
         U/C46i21WGw/6RPZPGsuDh57QANJHUE82iHSh1w7VsSz/0PmvN+3V9t+/Qds//MXu3+D
         hlfS1ys+amYUSW9/GPBIR9fzyPFky8fUvli6vEgWRv9JhKr4anvXg0GXUDHGQUn85Wd0
         hAoAt14tXDUlLetc/85j14OXrwpIsl798hriljSfESG8LJQ3tJkXR5aROls9Xu6f4EhQ
         OCiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Dc7Gw8pPo793nuRiaitiTW31MyeZfabAqJtjcAfS5Wg=;
        b=Q7c0na4WMjJtpKv080KIzc4FvSFOFSTyJ9ZTuvMVXMdQ2kgUGP6gE8e8fuara9NybC
         8a6z8Ga+Gnh5NC0q7dg4bhl196IaSmqzi9CB/u8frnmt4oM4l+cFkhmXAYEJ0etF7CX2
         bN2umFak1w0cYVK+oReTmHisjb8hl9m9Ocwkjx7NnhhV9h3gUlpzcDtjuuuOu94dOdSl
         rSs6TkHcX+do3htrc+2D3iZeJDfOe+kQLSfEK50ibZFZQGMF3i6OmGn90DrtWSJwEQiB
         YyOrmYe10ec8BbNEGoQp9IUUr80opnrbSUcVImrUy6xvIs43Of+RFJjF+NwbUkfPgUSY
         tYKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="TyshMG/W";
       spf=pass (google.com: domain of 3lsuyxqwkaeaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3LSuyXQwKAEAucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dc7Gw8pPo793nuRiaitiTW31MyeZfabAqJtjcAfS5Wg=;
        b=lMkD3h2IUB8gnvSmGJIlAOHxl13rtTlr2BGhNlNMYmmIxVm9lV7VMq6B39BB7o+kF7
         ot+QPT4d+Z00hMqfy3KbeRRv0lUXQi8zDFNP5VKZRBLWHVfhV2/I1jLXG950VjyqducN
         x4boA0qaTxs4g6rqxnz1VUdncX6ZhCzi5hWr+J8Q8H76/LzkLjAXgYJqIVYozUS7otCT
         JLv7iGLmnFFccAzXl9DmwAeer3x5aeSXlNXzrH5AgMBXTzIRWmZNfJGV+6RsnGt7XVxP
         iC5BqaxDJI1WIG1++mhVk3xzEj7RGTeB2/SNzshCl9ls2qo5OPkjB7qgr4CKX+508wmv
         NB6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dc7Gw8pPo793nuRiaitiTW31MyeZfabAqJtjcAfS5Wg=;
        b=IFki/AVlTYAn5hrGllMJPTsofQW5uxZUSnspdwv/oOeZtJENWoqYvR5qsy8M90lfuZ
         qxEshBTel4Vh9UVxiKw9IbDsO2r2EHCgyP0MTFkGh9ZaBYJ+eycDB7PPHjy5h4cUY79r
         c6ObrAYN45EEoCH9KSQxffh37NMiwaO8i+FvtXbQDZC0oToGuj19zTa8F8pBHhWfzssE
         HxuxTu6LNlkMIfFMa4LK8EbZZhg5eq0KwaSurzmjcpYnf6ZUIvNImPRM1btHBmuybSVh
         YxA8hMOAs49WJ9KrFLzhs3vT6B5ZwJT3TAoksHD4AR4VnKUzSiH2UCgVYDBz5Vp9IBm0
         GkmQ==
X-Gm-Message-State: APjAAAXGHLmwYV51c8isvHMMlK+TEeumzhpJgZvBIadASDHZjdy7dfWQ
	nP8FgzQkLlx81tNP2NG9VsE=
X-Google-Smtp-Source: APXvYqymQz5JSNwtFjdJkl6m8izcD3RxHNbJjqRujPuGa+c2IHO8gfRLsEcp+efKpVN4ZfkHj6JzWg==
X-Received: by 2002:a62:5bc1:: with SMTP id p184mr420523pfb.139.1571957550389;
        Thu, 24 Oct 2019 15:52:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:db42:: with SMTP id u2ls2459084pjx.0.canary-gmail;
 Thu, 24 Oct 2019 15:52:29 -0700 (PDT)
X-Received: by 2002:a17:902:700c:: with SMTP id y12mr240088plk.118.1571957549974;
        Thu, 24 Oct 2019 15:52:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957549; cv=none;
        d=google.com; s=arc-20160816;
        b=RRwk4zZoRGuzPGcJnV+rd0mStq3Q520buyKyHDjJn5Wr+XIi79pWweT+JtYH9GoE55
         vuCYdD2F9qLD0gIQuoHNWOpX683hdSkMy1Eu6VvijjgHU2lMTy7sflduVBpAaszkzfdZ
         mMMVIaJw9OD4M9/EJAMDwm8Ztv1MrS1/QZtgch7ahyM3ljkVkP2HM/YVTONilB/f0ZHp
         YF/+1QR3ut7QIAU7fdD3+l91XDQ48GbL9w0beOOGk92m9Ms9moAufTA8vzRCcWlqkex/
         CKvSOAeT+Kxux+WdVlFKtziebtLayKK0FLC74RhUvDZqq5kwOQEBD2fubIIWMFTXfpl6
         Bi6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=hi8Cu8vAZVRE/aapAAyha6S0ojR+GJofj/wY0IAnOZ0=;
        b=ql9PZ1xgVjGxSfK+LUt3Xo2brPYY4raI2WQ+xa/zBtP/St0AUsVCM+JdHIzVRQoev4
         ahizDQQWdDkp5lWZjCcByKYRzQcW/QscN23DrZ+q0ZxI1KAm3gN9GGO6L3JU7S5YSIEa
         OZFqnyrRG33Rs+AGaCdVghFU/4LgO6m+0xJyPSfkTaDJoJ1zUOoGAeto1GCDm0ybxkew
         UL/0kI1Yv/zZ8SciYWpBNZMni5Wi0EVkcTWZzdsaf72CMKLD88DXMuxfvDJk5EavK/Tn
         YLpEa5KZ3b3D5WYvDgibLLVH/CJw7Xp4tLzUB5gsAktq1O6J9EUOnleFBfI5wgK9ucht
         YIFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="TyshMG/W";
       spf=pass (google.com: domain of 3lsuyxqwkaeaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3LSuyXQwKAEAucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id 91si11484plf.0.2019.10.24.15.52.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:52:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3lsuyxqwkaeaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id w13so204385pge.15
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:52:29 -0700 (PDT)
X-Received: by 2002:a63:e156:: with SMTP id h22mr510399pgk.266.1571957549407;
 Thu, 24 Oct 2019 15:52:29 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:29 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-15-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 14/17] arm64: vdso: disable Shadow Call Stack
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
 header.i=@google.com header.s=20161025 header.b="TyshMG/W";       spf=pass
 (google.com: domain of 3lsuyxqwkaeaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3LSuyXQwKAEAucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
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

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/kernel/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..a87a4f11724e 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -25,7 +25,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
 
 VDSO_LDFLAGS := -Bsymbolic
 
-CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
+CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os $(CC_FLAGS_SCS)
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
-- 
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-15-samitolvanen%40google.com.
