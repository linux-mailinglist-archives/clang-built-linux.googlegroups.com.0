Return-Path: <clang-built-linux+bncBC2ORX645YPRBTNW236QKGQEAXG43GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2E62B8737
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:08:14 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id 10sf1095910uae.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:08:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737294; cv=pass;
        d=google.com; s=arc-20160816;
        b=qai2ZvroUQ7TnmrOAR2Y/QbhEjlKZ1Nlt593G/o3ojfvXVoVMkTo2W1sI426OubP8s
         LZO+zQTnR/DNvTDvGXiizXE8koL20rje8svtjlkI9gOn9JYkbPb05i4X0yFMFykBOriH
         gJKc3IVcdc3l+DFjtgUz8msB7osoYkUhl+0EBJtzDUqF/YCZoPMPPHq1lj7zbdya3WNW
         x2oRBXq0IPEsnoca1EpDMfvF1oRprhHSv02QCzyD9tgC8jUt8LiidjNNrOElM0i214k3
         lkAHR9JQ/g4xCWjNVPFb/5VPPPnKt5VMD/DA5d4X6WtuVIjFqDj68uOwBEDC87/skUqo
         2LiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=N0ShKuiQE8WrQLpvJnCKvb9CHiEqyzsXfpyMY3iKaR0=;
        b=FXypX+JAEm3WfyiMcrY4U7xo+rdbNcakIMP834suyClqoor614vxT17O+lJgWHJYOY
         2zwKYDbKPzj7PcQ1rx9cMRIbx6omXCwT7zjHOzULGsPDtaHGk8kClK3qifbIbEl6fu00
         y/SBySe+ZqO8ACpWo85U8znNWm5kph9hBmU7pzqAxgvWH8jxOn2XTolHMISgvC4lJfZS
         +NnEXMDb2Q4/IQAxZjJBUs1j5B700ZL68mQ2RioJAXCP/6vMcXEupWHrhlItFYmznS78
         Gm0SuYrKhVNL8P7vexiIXGTlg2FY2MXfSEkVMnM3RkJqVRGxoMSyb8YDdlVf7vLzKE7c
         HZQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n0bp9cJv;
       spf=pass (google.com: domain of 3tzu1xwwkaf4o6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3TZu1XwwKAF4O6IEPKHR6JAJCKKCHA.8KI@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N0ShKuiQE8WrQLpvJnCKvb9CHiEqyzsXfpyMY3iKaR0=;
        b=fWm8SaBJt+EtALIXjqzS2U5ZEP4RgYmaV8pIOj57z7zBNUMxoiIapLsMrCPhSZzsRK
         0jz1K71crTUydpn2nvT+UDogM0NijvBwNZJmaKtpkNVnXnaWWNcNXeUNoTe1EG8ZvOB6
         Vr4ArRti4959hJnzp5xfS3P4VIVUgnElVtsVc+D9QB/ms3dMEnvuHK1+7nyjOUHia8au
         jT5F3j7aT7dPj/h4bz+0ESZ51TNGlPVruZPWEPPnx+1wSVsdgNbOgtIuwdkmkk8uXfVd
         obZIyMxA67ShDY1TZQxkxzV6HqvMghaULpovIZ0fz/uYgjG6FVOldNnwA1QN7cIumhYr
         WWXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N0ShKuiQE8WrQLpvJnCKvb9CHiEqyzsXfpyMY3iKaR0=;
        b=e/rvQIW25izk00X4Uzo2i1ecu2iZTDA9rxqJ9kT+wl+WDKAWMYKlYgBhD6qyVmWMM9
         Lh3KFbfwO/wNzh2FxEOhdqWWkTm7XiXUDaSSC415yaNWz+iKq8RFCWiOtoWdvS5zMJK8
         giEoKLz2T6djivPwankDq3VN6rN6Vq2M+HFp7rw/g/64ruQt91n6NV8fgnvNBLn5MNJq
         ePEFrEkd7dr2Vxz4j5RZzbootngo9EClSYyn8e3OuV+02n4WgS2onKsdBWDtT6QQnEHX
         eealhAowY6SNisw6u44uhtAbJrei+nkn6BcyyP2dBFRzOuKp4XyTbHY5D7p8bxpLy3TA
         +4CQ==
X-Gm-Message-State: AOAM5313KAAgT4YzorGwDAMCPhRYiQwJP9Y+cS9mRXKo/L9V3wPkmOSl
	+gtoQEi//INN/umw8zwh5NA=
X-Google-Smtp-Source: ABdhPJxvvXTBio1oUdBJfjj57uFoW4cxsMd6slVQCpFspAjdRVBMRsLZMfIZam5Xlf1/u7b6KP5nSg==
X-Received: by 2002:ab0:5a10:: with SMTP id l16mr5684621uad.0.1605737293889;
        Wed, 18 Nov 2020 14:08:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3137:: with SMTP id f23ls191469vsh.10.gmail; Wed,
 18 Nov 2020 14:08:13 -0800 (PST)
X-Received: by 2002:a67:7107:: with SMTP id m7mr6085891vsc.17.1605737293520;
        Wed, 18 Nov 2020 14:08:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737293; cv=none;
        d=google.com; s=arc-20160816;
        b=NRbqu4JC4w2CrwupyPoJwglOUAzHdAISZ/Ekdn78TcgzMWWjWtJyDLqYCKI4FEN6Jm
         5MQEi154e9BP52Wl9bm2RplOko4ovVe20Mk++l6/rihIQX9WaNQHBAqgt9+TAiUHjQJZ
         qWvRbAecZYbwrxs7oKR57cVV8q43wHMQS2WwpoWabP+sQhsa0ZhNb/oATYNajT6hhqMk
         L78nUshLOb5jgIg1fFdxsSCkxf56XpZaxd8NFN5RD8xmblE6FVCH1VwOlr3n8KhVkdsj
         2BYu08R/UNss8hg9Xg7wE0G49HNUSH9tktDTCj5r83BfTX4KNcEWBp/vny6Ryyy8ts0v
         MUpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=zNEbBbUjVUwNrqsw9c+UpkNEFF7VA0EYfHLp5cIzntw=;
        b=JEbj53sHGS2MKfsod1pr+Jx3Sb2zoW8cyyRHgkAom5nYBYu38WesQ1OwRmTN9UHFRM
         JD8iOliY2kW8oqKZmy2Ju9p1TBQoQ6Es0osDjky0rc4rwE3Cv+NNsuOSV70RBfY9qX+b
         TdvzFx89uycAvBrV9oqWD9z2LBTCMPFWPrG3H4j/DJLlctxN3h769k+aZ+ExAas95uA+
         Sb9GeGMRdg6Xq/3Rs7aorXk0bXJx20dydkOiv7v/FYkADo6ACh7RoCr2K6KsuishNthf
         +U0YKAogYoOlNQH7ujkc9xKJkjp7HwzK9gBQBtZ/sWsbWv03xf44lfquWqTC7F6724/7
         e+WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n0bp9cJv;
       spf=pass (google.com: domain of 3tzu1xwwkaf4o6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3TZu1XwwKAF4O6IEPKHR6JAJCKKCHA.8KI@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id v18si1693282uat.0.2020.11.18.14.08.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:08:13 -0800 (PST)
Received-SPF: pass (google.com: domain of 3tzu1xwwkaf4o6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id h9so4517299ybj.10
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:08:13 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:aa04:: with SMTP id
 s4mr8172287ybi.285.1605737293084; Wed, 18 Nov 2020 14:08:13 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:31 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-18-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 17/17] arm64: allow LTO_CLANG and THINLTO to be selected
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
 header.i=@google.com header.s=20161025 header.b=n0bp9cJv;       spf=pass
 (google.com: domain of 3tzu1xwwkaf4o6iepkhr6jajckkcha.8ki@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3TZu1XwwKAF4O6IEPKHR6JAJCKKCHA.8KI@flex--samitolvanen.bounces.google.com;
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

Allow CONFIG_LTO_CLANG and CONFIG_THINLTO to be enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index c7f07978f5b6..56bd83a764f4 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -73,6 +73,8 @@ config ARM64
 	select ARCH_USE_SYM_ANNOTATIONS
 	select ARCH_SUPPORTS_MEMORY_FAILURE
 	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
+	select ARCH_SUPPORTS_LTO_CLANG
+	select ARCH_SUPPORTS_THINLTO
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-18-samitolvanen%40google.com.
