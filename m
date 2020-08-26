Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5HJTL5AKGQEFOQ3F2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C60425380F
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 21:16:06 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id q17sf2315265ile.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 12:16:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598469365; cv=pass;
        d=google.com; s=arc-20160816;
        b=qO9B5MoXwjRpToiHdorE88JdETf7vDA95mPcL298+xs0FtSIU3mwFlA9j0iwLe9jO/
         s/enK/jCjHXtZYaBD1OlUM7HF4pftuQqibsIBHFONY0lvrKLjBK2NuaLqqBOHb4foB4R
         dUg1SlwdCyf7HXTliZV/+zFXTJOclcJ3bxCB9rH3oplJo9sstwcobBE+aAIswsEzrNVA
         +IY9TMDySpSj0+KZBv4bOP25JBSeGpJ18XcWHzhT/D4OdMDU5F+zbNy1lQmVrZSMVC03
         hvGyJhHmlUPZfOzqjCfLY4AxMHOd88XFFnJXyUs+iHnjOXselHc6TjZPCpeBL+/Jh19i
         QeEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=GQDlLGZZKS+juQxZ0CWzzypNoWgAsu8TqTTNcieZTIs=;
        b=mhwSo0RUU9M5USk7FjoNV7zL4ijaPcHRScm7NNPTI2GbfPNSK8SMgXJtt1aoUaGmAX
         xbmHFgvHxy2tyN5e7ZkVROp4QwhoK2VXU0ZjwNj7UpuDQum3Jk2tZVWXNKK6NFUCPt/3
         wbRFa44Z5SdmZ9/SIyK0KDRNH4wR/MVCyaZuVFOrr10rTRNvC7UboRKo9ABsy4V5mG+G
         uWUcOxi5VnrZrCsJ8VU0p0G3fyjoyUqph+NmER7kj1r2xdH2x+06CUo4qThIOvIv/xsR
         mxDMS0fh9kmIxKLAQZEm/IhnFmwXmHZN2u1NkCK5hNhSNs2FiQpUBehtfk4bM0L27UPN
         945Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="M1a/RIwX";
       spf=pass (google.com: domain of 387rgxwwkahgjzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=387RGXwwKAHgjZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GQDlLGZZKS+juQxZ0CWzzypNoWgAsu8TqTTNcieZTIs=;
        b=Yy7O7eQV6LsFkvKyiv6BDeibdjbpf6hLE7TGF+5qn+krYBQwxsGrx/9hKXOpsFkG9U
         va9+y7JGVo2YOSYfPVgBYrZPpZqaldvbiXuQbtmbORw38nwiIQYTWaT8KwPcOuHbUDUR
         2AAO6fgBhuHdjef+67tE+Ky0lVZ9CC9DTtPQfLzlkyDirKaQ9nJENXb6niXR6k8wqmKw
         klA+aYDurJsmwf2K7LXpQpMKmMRQ4sYGEdhfhDJ6jqYLP1BvdV/0+LQx807W+jC7zSdM
         NREjB0GQJlClDeFfjhyl+27VGnKCGr4F8Y0Sn3EqW8Idh8tl0FbHxldDH5F2yGD0ryo5
         tASQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GQDlLGZZKS+juQxZ0CWzzypNoWgAsu8TqTTNcieZTIs=;
        b=s0w+RC+xbhTqjvXTK58qqNl4F1oq59F2EN57qK8x0SwJU6Xz5/7v52faKe2LGEFjVU
         +7WwzKfJFHVwV56lqZ1X4zdotq+2a5ARmECW6pDJmRv4HO6mU54yFbU70mKouBjyZevE
         GFkebQtVWT2uwPFpLzybqQ5kv5BHYHQvajWF5e5LPoBsuCVJEw39z56cc2L1ax3EO5Mt
         asUhwLPPrvBL9xKX6nKSgqHtX+zixLlUC+U6TF4EK9V5urCtU+3j85b29ZVVKKQV/ysj
         vF4xu10PKsCMexmxDggEbibOazkxZR30H6mqi4eU6nPszMfjEcQGuT9v4FKyx3D6cMk7
         rlkQ==
X-Gm-Message-State: AOAM5334xqL9/TQVtvOPosOWdjwj5ko8NWP28C3lbqG80VbWFUfuW0WO
	W1WGMa+cIOnHEyRJRVSsfmc=
X-Google-Smtp-Source: ABdhPJzSIVW9aOwrFwDTFWZ97yJmaZyqwFvB8hUTaG5aRdSuEJzpB2oH3MA9w66CpJO1mNQLW6dTuQ==
X-Received: by 2002:a6b:7411:: with SMTP id s17mr11128274iog.192.1598469364851;
        Wed, 26 Aug 2020 12:16:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:d90f:: with SMTP id r15ls552396ioc.8.gmail; Wed, 26 Aug
 2020 12:16:04 -0700 (PDT)
X-Received: by 2002:a05:6602:2b08:: with SMTP id p8mr9071325iov.180.1598469364433;
        Wed, 26 Aug 2020 12:16:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598469364; cv=none;
        d=google.com; s=arc-20160816;
        b=WIdHP+5KIZ6JTYg4tUA95M9tu6WJVGdcwMLm1MYGR4yE2/nv+L3G/28vxHXJvWJjZN
         SCBKbO9k4FVLwD/cOH5tFGLsO53j3NioMI3sc7JSSoEFQHSzpr6q+hjtrhcYgi8kpJRS
         aB4t1Hiaw59qJuWUrcxosIuhyRUYj8lJ/7H+2OYvXp/GdSsDIsjKOri4nt0Krt+RshOO
         AEKiLjbsqTsMZuM90LuqljhiXUJU7RK+Ij8RaHIBzxZj93Qmx/zFyYHnlGpSWirlNcnD
         1/EUa+RfgVJHNfta7eo0NRUpXq+FPnXO2Ii51pnXRJ7o9ScsJCV3npwGWMJ/wqXE6FEK
         nQ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=3og4sPvUBqJnD45PO3Vq/dRv1z3az91w/Q8diJgM8sM=;
        b=epssEEfvDgWCFBmYszgD88HogfcUCKv70qu3nUjhbEXA6wkQ73Z7zxwooVaW782pMm
         zhQR6LXS4bME9zATboYP48y8k/9elJxxEqamO8hTwEk398FiYCoaCJRsakRI8IC97mwk
         uQqlu+F/ODMV6bVTMGVbicgZ3k2xoyXwmIknnOAN7gI0PCqUVA4UkxUzfm3tSxHYhRea
         SbQ90vRrBIwCThAi+aReUCM9d0Xw8bNDePPS8yqqwa1iHvGY4hUi2f6rjw4EQp896TgS
         +D+9Ou2Mo15RsIKiZBOWB2ktW96uvAF1z/X9HWBUs0rs5VTautWCnOiWWnP3Msctqw0b
         4FoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="M1a/RIwX";
       spf=pass (google.com: domain of 387rgxwwkahgjzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=387RGXwwKAHgjZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id j127si173613iof.4.2020.08.26.12.16.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 12:16:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of 387rgxwwkahgjzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id k11so4139903ybp.1
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 12:16:04 -0700 (PDT)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:d914:: with SMTP id
 q20mr23382849ybg.320.1598469363847; Wed, 26 Aug 2020 12:16:03 -0700 (PDT)
Date: Wed, 26 Aug 2020 12:15:55 -0700
Message-Id: <20200826191555.3350406-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.297.g1956fa8f8d-goog
Subject: [PATCH v2] Documentation: add minimum clang/llvm version
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, Jonathan Corbet <corbet@lwn.net>, 
	Randy Dunlap <rdunlap@infradead.org>, "Theodore Ts'o" <tytso@mit.edu>, Borislav Petkov <bp@suse.de>, 
	"Alexander A. Klimov" <grandmaster@al2klimov.de>, Will Deacon <will@kernel.org>, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="M1a/RIwX";       spf=pass
 (google.com: domain of 387rgxwwkahgjzaowqhjeanockkcha.yki@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=387RGXwwKAHgjZaoWqhjeanockkcha.Yki@flex--ndesaulniers.bounces.google.com;
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

Based on a vote at the LLVM BoF at Plumbers 2020, we decided to start
small, supporting just one formal upstream release of LLVM for now.

We can probably widen the support window of supported versions over
time.  Also, note that LLVM's release process is different than GCC's.
GCC tends to have 1 major release per year while releasing minor updates
to the past 3 major versions.  LLVM tends to support one major release
and one minor release every six months.

Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* fix typo, as per Will.
* add link to getting LLVM, as per Nathan.
* collect tags.

 Documentation/kbuild/llvm.rst     |  4 ++++
 Documentation/process/changes.rst | 15 +++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index 2aac50b97921..3f10a9c47551 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -1,3 +1,5 @@
+.. _kbuild_llvm:
+
 ==============================
 Building Linux with Clang/LLVM
 ==============================
@@ -73,6 +75,8 @@ Getting Help
 - `Wiki <https://github.com/ClangBuiltLinux/linux/wiki>`_
 - `Beginner Bugs <https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22>`_
 
+.. _getting_llvm:
+
 Getting LLVM
 -------------
 
diff --git a/Documentation/process/changes.rst b/Documentation/process/changes.rst
index ee741763a3fc..dac17711dc11 100644
--- a/Documentation/process/changes.rst
+++ b/Documentation/process/changes.rst
@@ -30,6 +30,7 @@ you probably needn't concern yourself with pcmciautils.
         Program        Minimal version       Command to check the version
 ====================== ===============  ========================================
 GNU C                  4.9              gcc --version
+Clang/LLVM (optional)  10.0.1           clang --version
 GNU make               3.81             make --version
 binutils               2.23             ld -v
 flex                   2.5.35           flex --version
@@ -68,6 +69,15 @@ GCC
 The gcc version requirements may vary depending on the type of CPU in your
 computer.
 
+Clang/LLVM (optional)
+---------------------
+
+The latest formal release of clang and LLVM utils (according to
+`releases.llvm.org <https://releases.llvm.org>`_) are supported for building
+kernels. Older releases aren't guaranteed to work, and we may drop workarounds
+from the kernel that were used to support older versions. Please see additional
+docs on :ref:`Building Linux with Clang/LLVM <kbuild_llvm>`.
+
 Make
 ----
 
@@ -331,6 +341,11 @@ gcc
 
 - <ftp://ftp.gnu.org/gnu/gcc/>
 
+Clang/LLVM
+----------
+
+- :ref:`Getting LLVM <getting_llvm>`.
+
 Make
 ----
 
-- 
2.28.0.297.g1956fa8f8d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200826191555.3350406-1-ndesaulniers%40google.com.
