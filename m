Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKMFTP5AKGQEOVNM6YA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA502538F9
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 22:14:35 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id f13sf1532237oij.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 13:14:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598472873; cv=pass;
        d=google.com; s=arc-20160816;
        b=pF7SdvxUA5IKqqCCcDP+m82dcuHRZkh77FQyk6HCQ4IQL66G9R3/9UuwbvTkKAP4GL
         ceioK71bvLcVCgatwsUwzPNcHomKMGnBA+LaqxEFLGBRM8bK5S8zolTWX/FglKy6DOVr
         9UTjAFzlVzj+mW3IB7VEAjSakK4HyGc1GeFVy1WdIGensnOhIFfmhLuSG3In5z58kBbl
         LffuZdzI/XtSeaiHQHrNMhtF6pf3YRga+bRLiAGmZeOjkr30iWq0nD8pciZzfMCPQ1ab
         Uo0ekh+HyRVBVm10JoRuoE+3BpylkDqJaoHQ0HTiNE/diUD8nMnerRR8sICmP0AZR/Vg
         zAXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=aLHVKbwxf3BRzG1w6jNG5H5yu720tWaNBrm0Xhlj8q0=;
        b=ZzNsCZpkFNkigcb/k0q7CZDqet3F8f9lh5Hgdrc7sR1eKKsfljX8f4ePoE2ukL/g8M
         j2X01t84N4SNlQodPVOcM/wAOZQ+hIl6zpLYEm1dpQB4UggdhHncwdt/UK+V3P8plT0u
         nJDhv5a1y69gKwP+MpCNguJ1Zb0xz6vgLSQj4A9IioqB4Ho70CLbV3GRx06ejA8stR1l
         H03doJqviLMfzaE0pXCDvNdPZeCClRCR+McFwdLCMurj5vMkztTw1FM0TcsyC8gWxfkG
         lQet5zCHmA19Ld8kqk/OYNUf/MnjkpbYe0M93YQ1J4EjwAqvgirvRceDJVzFB75N702o
         RfNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cu4SyoKW;
       spf=pass (google.com: domain of 3qmjgxwwkaekyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3qMJGXwwKAEkyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aLHVKbwxf3BRzG1w6jNG5H5yu720tWaNBrm0Xhlj8q0=;
        b=RIS3Ie/NTqB3tDEMInPOe15LbMRf02nsS5+bGzdtklMwMPavky4CvYDoVVPRrwIQtb
         wa7XyQz1WLKPs8Vj5q6N1G1pI5sGWMgW5fHSuLdy46oY+t4bCiTTOu8AgrxGU+IfzVj9
         JtJvpXYf7FOxXfSUJVKdBlwfUNfexs/AZksguudKCRXGb2UE+BF+jQavz0VFj8+dTVqq
         QwFwZesxg8SozIQE4a6I58Qk+x0Htsz/6QHMFjTDwJ8XABDj2BlIrXkKTZsnmRTTb+FX
         kcjYtD6FtXykOWEsJIHLaadkd1laMdeHi3MhsFoJHkJYLKOwDlXnKC67TzO+LVIX4HeQ
         fo/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aLHVKbwxf3BRzG1w6jNG5H5yu720tWaNBrm0Xhlj8q0=;
        b=QDL/bbcOldx+GAb4j9I+6YNB4P2/MD94wymb4AyPzY3iklElVKSHnbogzCZcJsuvit
         9/w7LQgyfG3lxVKN+ucuYyIpp+aploiD/owEy0uJVc3G1gLf8urvRWJOo9DYEqW7g83p
         a2z7+kYVS90Bl/ImRZqW5oApLu3YHURPFU1YiQLWDNett4ondog2V/uZ7/UI8gHMu/Xb
         h5pfktV3+P23+Scp4tGFHWd0fSrv/dPoOVXMokIc5D+AjIwITKfIAgparKi3YDjKWEhP
         qCWc2WfqwIg9fAROywi1mAWrQaoKZignWvcdUEwFXt1rU0Fb/O7P074KGEKaSGTyEEFj
         dfBw==
X-Gm-Message-State: AOAM531odRI6FMQgQfSTlyRNRupSjtp+zZn1PelUyygnVmPzXIKscWEZ
	uFFR2SMnOcq5DNXvlBZQTZg=
X-Google-Smtp-Source: ABdhPJya8gg9Cb2qaVxUnOlLJF7/hFoz+aFIyPtjt/n2KVrghvsgO2cZo5+cBegZftqOunFi+cU4Lg==
X-Received: by 2002:a9d:6d92:: with SMTP id x18mr1608411otp.287.1598472873610;
        Wed, 26 Aug 2020 13:14:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2015:: with SMTP id n21ls17050ota.5.gmail; Wed, 26 Aug
 2020 13:14:33 -0700 (PDT)
X-Received: by 2002:a9d:4cd:: with SMTP id 71mr8379516otm.131.1598472873322;
        Wed, 26 Aug 2020 13:14:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598472873; cv=none;
        d=google.com; s=arc-20160816;
        b=TIG1v1/qIjfFElVvLeSCiMzOWnFfiw+1+aeMIotU6P78Ng6xTzX7H8j+7+piDh/34a
         O43YqoiU7q7uJO2RgxxTMDo12Xkf+nLH2gxfOIEeAuA/ClLmzGUXLEJls1Pdc3ktld+6
         lExV/0fGX8/7I3ytgsVXkMw7JFl7bgJoTnRdIPFUDa+Lue0fVSdGX95E7PAmKdurFsUh
         5+qIsvbnjh+zfAqfCeypHCdwK8IGwDEtPtC7rhSSzFjHNZdnGkC/s5M7s9ZMmuHxNr5v
         cxUn7UunxgqdIs5/Ies0tZcYJU7pOOolykMD+nhyjU5XhgQmLj4bXh7p40EE5ce1npse
         Igvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=IinaA3OlAbDYM7J0tIy8taCdI4ZoZL5ZpgInF7cAa5Q=;
        b=dfguAbPR85ttRz1wgCw+Mq1bFnBorsjPwefAuerKk/CTAVA9P2T42f2jPigjlJ75+R
         asO5VyYP7d1Yiw9cxETgkR1yyrLMPPBqRc4RkMkt0/pBC0tVm14iJH4xdcD4/SS++i8z
         vgjht8nBE3CNmkumvB1wqiIjlFaDcYZT+m1mjQ5h4FvFnejY1rPy8LpbabbQS0r/4gYT
         gRsAQT4LrQvomYIg3QXGrglmjMm+s3A0XAjGxi1RdfOoZbnu4yO0A5mxvlk2YuSHqzPm
         QtFGsGZGkLSpYdRe8pMfan5TVQ6ay0/Fe209xE2Ma/+DVMzZtD6YXsZ8tkojdHy3+Y5k
         VFmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Cu4SyoKW;
       spf=pass (google.com: domain of 3qmjgxwwkaekyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3qMJGXwwKAEkyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id t135si2963oih.0.2020.08.26.13.14.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 13:14:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3qmjgxwwkaekyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id m16so2127498pgl.16
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 13:14:33 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a62:7d4c:: with SMTP id
 y73mr10660609pfc.137.1598472872538; Wed, 26 Aug 2020 13:14:32 -0700 (PDT)
Date: Wed, 26 Aug 2020 13:14:19 -0700
Message-Id: <20200826201420.3414123-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
Subject: [PATCH] compiler-clang: add build check for clang 10.0.1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, "Peter Zijlstra (Intel)" <peterz@infradead.org>, 
	Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Cu4SyoKW;       spf=pass
 (google.com: domain of 3qmjgxwwkaekyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3qMJGXwwKAEkyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
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

During Plumbers 2020, we voted to just support the latest release of
Clang for now.  Add a compile time check for this.

Older clang's may work, but we will likely drop workarounds for older
versions.

Link: https://github.com/ClangBuiltLinux/linux/issues/9
Link: https://github.com/ClangBuiltLinux/linux/issues/941
Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/compiler-clang.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index cee0c728d39a..7338d3ffd240 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -3,6 +3,14 @@
 #error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
 #endif
 
+#define CLANG_VERSION (__clang_major__ * 10000	\
+		     + __clang_minor__ * 100	\
+		     + __clang_patchlevel__)
+
+#if CLANG_VERSION < 100001
+# error Sorry, your compiler is too old - please upgrade it.
+#endif
+
 /* Compiler specific definitions for Clang compiler */
 
 /* same as gcc, this was present in clang-2.6 so we can assume it works
-- 
2.28.0.297.g1956fa8f8d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200826201420.3414123-1-ndesaulniers%40google.com.
