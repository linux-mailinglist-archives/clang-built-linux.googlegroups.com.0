Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2ELZ35QKGQEMHK26SA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id E74E027D665
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 21:07:21 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id 82sf4541286pfz.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 12:07:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601406440; cv=pass;
        d=google.com; s=arc-20160816;
        b=iBBe0Ssr1ECg5D0wxUeejwFL4CqdSZFm1hFmsxXE6sNeYiHXrBzHiiu1mbkgL//1QD
         sq97HYhH9ceQR5mjYiUMVRQpBwKIw0HWm/1RhvA7PWu+JLTvqW4a0EEu0EYGb+XsSQA4
         wKxRpyTmUbkKgsdjIcdHbXTaeTv6W+H7HI5dZypNBbu/q3iDNK5whYCiIIJIuqP2otzk
         +10jvhUGa1sXFmQ+9TA/2oLETZH0eQET7zeja+H01gTTi1O1EZkHAB8J/BbnNKRbRLRx
         9HKpaWYp7fCuxk6OgOxnZsHO/xSN/cs6UbrWr2l3yjqVi3dpPHwum0Ggd419oaqsniRU
         XHpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=kxFGIt7l6j2vOfJ62yl58+ue2+QYgNqcqEvWKa9cd2M=;
        b=cN0acj0nMlYbphoQTa4EuJSapupUxKLAYqpP4yI9CMRiVAd+QQlgxqmf2oWfQVdpoq
         nQUkfZNhFBgOisLdO+OPrd/3TG9I7AfUH/kLoKTbkfrEcNaD7J1suPwmW51iHIlmqJhb
         UgZVOac+ksm9iHxZ5Qx3qLrWK5cQzsPRMEN287RWu9l+CDZjbY2YvdOOE3K4WqpF82jF
         PXLnbPEMMcDxtuQ8P2EfqUMuw6G+5HmQARbheWk5m6ZDxkn6bkoEOJp8xOUxszB7Yj/Z
         83BKMdo/iIAEsUSm43NAK+t/VGDhqEr7XlWlfesf9uDGVaC4epeg9AL/QAW38ylKKC8O
         fNFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PfsZalFh;
       spf=pass (google.com: domain of 35ovzxwwkameuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=35oVzXwwKAMEuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kxFGIt7l6j2vOfJ62yl58+ue2+QYgNqcqEvWKa9cd2M=;
        b=jyfidmxKUyUQOsQJ7sAXjbLE90JSej5tSKbBXQicqzUGYctQSouU2HG04/od1yM+3Z
         A2RHf6j8SZxVeVimArX8gRH6PuD6ClWJq6GrRim2OLLkLnj1vhbFE6d9PM2BhTnIS5O1
         N8VLh2YepffNAvOMkmrXa03q8BGCLz6hQA6W50BcijUmfy9cob1gSXbR6l6OwZgWPjvP
         SeXQ/ZoryhLnOplz0MsQfrU+K3GpIfSJFUOjnE7RPKQx/xpFIY4tu1gK/tpsSTKn/x/k
         a0zrrOAHBmbfGADSDGWO9zzflRLOkha0Lah6ulkqQ1LES0kwK6RJhw8VkRq64FBuF9iQ
         lDAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kxFGIt7l6j2vOfJ62yl58+ue2+QYgNqcqEvWKa9cd2M=;
        b=IR4BcYe6iV3Xhr6mXnHCE77kOdm2jK+5y+kUQM4Q3pJwuxAo9LfFK0A8tHIhc4T07a
         hEIUDQln49ugV+NV5AiE5aS3WoVTMp11sKw4QJtJVXhRJu1lm6ErFi53Clg+ZUG5mF8J
         +QDVslpiTaCXCgzBPuID0n/mlx4HGIXAAMI+NbqBhx8g/GgFQS0Gd3rKs/pLH6n5fOZT
         4ZzbYx1GN1SFACRgebeFOxtVNXbREuDhvCHV3Am85kOuXEBJwfA/Cj90ilcWHLCM1DGt
         eWBD8hgCLlcyuMtcJGKIuHsf+dcpR4g7SRA5t9G0SCEZPtpqGuO7ifsGZo2WNZud3D2m
         BEtg==
X-Gm-Message-State: AOAM532zQyOXItaF0bOP3NjpYgX+TezdwE2sKgZj9bzGWhbfyiPnb9ZY
	bOYEx953GWZvCQLpB805Qcg=
X-Google-Smtp-Source: ABdhPJwEsFBba9N+1dSi3oGFoJCE9Z+Q1V+Ng9z5jfiHDZ6vprwYD3TR3SO0/yClK9M4I+4BYp4MnQ==
X-Received: by 2002:a63:d841:: with SMTP id k1mr4437979pgj.59.1601406440185;
        Tue, 29 Sep 2020 12:07:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d90:: with SMTP id v16ls5491131plo.3.gmail; Tue, 29
 Sep 2020 12:07:19 -0700 (PDT)
X-Received: by 2002:a17:902:c38b:b029:d2:2d2c:2004 with SMTP id g11-20020a170902c38bb02900d22d2c2004mr550675plg.48.1601406439616;
        Tue, 29 Sep 2020 12:07:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601406439; cv=none;
        d=google.com; s=arc-20160816;
        b=yQGyZgYJ9U9AB4kDRhznRBLfLoMq8ZA4pN1MQpKsumnftKLdDsjAqAPNK+Hm4BEHQj
         3LQ05pwwIPZYkdPBhmvW0rLuFhI2jvGRW7l5NTD+YMZRws1IXA8TCy8YB8/r+2b3akge
         92J/Bw15t3SttO1XPzvzWQwLhxnFyTwrRqesJLcDinKGobRzMGw9qTZ4Ueyf6pLhzZOt
         sNxP0uMw1dyFra2nUcqgZOEdwBDokDUL2G5ZpB7C4KdI3400I6f18mf41hfLVM1dHVa5
         zrZzU49g1D+VE3Fs3hTuCcOvyhTT15mr28M2mn3pYU77LReOn2eNsMVmXAmqiH6xo0Lo
         8ykQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=kK71kCSNGJVaDe2pNd17eTqrSe4R+0MFugjIL4jzDFc=;
        b=XEjpkkY+tnpuSt3z1XrWP7m3WNjzCmWa1YyHTZr8luUaisAT5dG2Sytca6AVPr0NRA
         B0glx1ZHV75k/DWhqYs3auVKnv+Whvmmr9o9gnWfuq68h6xXagftXb1imspCMBlpIVhC
         k7KR31iZXnJ7MqAh2EE6yCkJmUScS435axBSqKLYKOqTOkxtePbINQVKLwBLxxeh1M4b
         tIWvcZDRewzZw3l5XMuk0Vt9nfWQeO40JrJX/erP0h0jbWy4vc1knVpgpMmnRxwoqn/Y
         TZ0OEy9Ca39hsj00WkNJHfdPa4tXJPFZVOv1C4STWBltb3zq0eghPF3YcvqMC22y1v8f
         ZnyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PfsZalFh;
       spf=pass (google.com: domain of 35ovzxwwkameuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=35oVzXwwKAMEuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id s3si755376pjk.3.2020.09.29.12.07.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 12:07:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 35ovzxwwkameuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id p187so5956613ybg.14
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 12:07:19 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:ba4f:: with SMTP id
 z15mr8385000ybj.408.1601406438780; Tue, 29 Sep 2020 12:07:18 -0700 (PDT)
Date: Tue, 29 Sep 2020 12:07:00 -0700
Message-Id: <20200929190701.398762-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH] export.h: fix section name for CONFIG_TRIM_UNUSED_KSYMS for Clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, kbuild test robot <lkp@intel.com>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Matthias Maennich <maennich@google.com>, 
	Jessica Yu <jeyu@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PfsZalFh;       spf=pass
 (google.com: domain of 35ovzxwwkameuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=35oVzXwwKAMEuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
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

When enabling CONFIG_TRIM_UNUSED_KSYMS, the linker will warn about the
orphan sections:
(".discard.ksym") is being placed in '".discard.ksym"'
repeatedly when linking vmlinux. This is because the stringification
operator, `#`, in the preprocessor escapes strings.  GCC and Clang
differ in how they treat section names that contain \".

The portable solution is to not use a string literal with the
preprocessor stringification operator.

Link: https://bugs.llvm.org/show_bug.cgi?id=42950
Link: https://github.com/ClangBuiltLinux/linux/issues/1166
Fixes: commit bbda5ec671d3 ("kbuild: simplify dependency generation for CONFIG_TRIM_UNUSED_KSYMS")
Reported-by: kbuild test robot <lkp@intel.com>
Suggested-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 include/linux/export.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/export.h b/include/linux/export.h
index fceb5e855717..8933ff6ad23a 100644
--- a/include/linux/export.h
+++ b/include/linux/export.h
@@ -130,7 +130,7 @@ struct kernel_symbol {
  * discarded in the final link stage.
  */
 #define __ksym_marker(sym)	\
-	static int __ksym_marker_##sym[0] __section(".discard.ksym") __used
+	static int __ksym_marker_##sym[0] __section(.discard.ksym) __used
 
 #define __EXPORT_SYMBOL(sym, sec, ns)					\
 	__ksym_marker(sym);						\
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929190701.398762-1-ndesaulniers%40google.com.
