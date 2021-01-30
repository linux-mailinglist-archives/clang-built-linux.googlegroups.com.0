Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBL6Z2KAAMGQEAVDURIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C625309111
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 01:47:44 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id n140sf7446825yba.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 16:47:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611967663; cv=pass;
        d=google.com; s=arc-20160816;
        b=iGyeZ9iPlMkxbns4dahCzKPv5sh0hQhrScCU+SRAx0ntl8Vp1VVyApthbus0AjmaAG
         5L7nTqzcAt9J1OjroD6UgTEK9fwnrEcgYeMF461T6r7UhgAP/yMrCAj+XLgRt1xBXUbl
         68TA/+ZRTSnxBxbPmRVHYCZQRaC3GtjPOeJVXH4WbEydDoEj+SjAWNbRNRgsHk8jwTUo
         CFVExkWkfWGSTuP1m+NW1Ec/eKUtwM7CA9sbNrsqsN1znsS8TjH0x5UR/jY7c7kSKLXz
         wwHcwor3zsilseyyUknwOElHI+hlqn8MJ8oXasLUYRD5F9eKDm1HUuFve/36TYVcKG8B
         4/JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=mWuZjXMF/60OQPHB2qlGvj1NhxjV6n+db9MV/K/JYmo=;
        b=yf5UynDIVFaS0S0sfI7wMHcAnORhncF2U+ohQe2IBS2eFlfs9hOFbNPW0Duz6JW8DB
         U3ZHNFO72rdsHCaWRSmFK8DiTlsvAM644iSqi3PmF+yUgtezjr37YoqOQ3kawCjMXW3Z
         TGB18kd7zHpjUQpNxZ/69Myu+LkznkoteDnRAAKm37LbJvUdm8BDJbWGyrq+V03P6J71
         8iN8HOUcI8pl06VSKU9Bcq3pZo0JZyVH0wxJrwXLsP7Vz5XgE8x38LeUFb7sUc702KQY
         LJsjNahh0OEx1ggoqwlFwCZZxKo5QGgwaJPInoWPHm1HQF+uZ2ULg85FickFykrhJboh
         7rug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZjfiNCTj;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mWuZjXMF/60OQPHB2qlGvj1NhxjV6n+db9MV/K/JYmo=;
        b=PgZ9MCa8w1oOWhtt6FwNnR6GsuZTFapvu7tRRmg8MhYbqcJSfMR4xKdz6eHNGU59P2
         dremtHWUtE8X1caT4gLbyogwro8SMunAgm76Ys1ldcVxEiV4LlbVraotB8lhyr1iDMD7
         kp+x30g9p8ME+1jZcZc+cyyuyQr04sa8pQvZI0oG0E1x96zZ/AVj5Y0DFEygyW5rRiEp
         1ELsUhyNiL2EeMUZlKsCS4tXd+Ibs+pOb/I1XTg8oASsstIA2tJLWzmGHFBPuIwq9IYu
         Tkp6RjIByA8dHeUJ7b/sw+xeEK8bmiT3ruIf3STklea7dLYybHCEcuz27UVCgz5FWti2
         Nq7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mWuZjXMF/60OQPHB2qlGvj1NhxjV6n+db9MV/K/JYmo=;
        b=hPNCCNORBoxG6m2k0cN+0hgqO1fs7NuNWRcE6Vs5FhZjTjhxi+x7LqOiCgsxP3SgPW
         FDAF15Kbp7r+/8qznoX4aRQckQ0bnzRNSHnvaBuGYP8MJUQbbU93r6l9ReJgEp9MfU3L
         DXPvSx1OxF91YYTnby6Okqz+EmHPIVdjLa8so0EgN2hCzNbr1t0ZI5Z4YdAOMIC/jZVC
         bog/B7O5Ye+ChjNAVrA8kZATaHC5QETNC0jHY+2mCzSO5CymuAxj7ZSHXipUBn81YWGl
         14N6A01/B8SDz2vLigh0Ngci1AQDdExOk9mI8LGo3KWyw3x19anHJn6rySu8aNfeG6U4
         uJGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kyt1usPawfbu4fTRkK6wtL6vPiFGo8LVKSEtYwlpqy8W2NbZx
	NsnGLgC4uswamiRyRU5PlTg=
X-Google-Smtp-Source: ABdhPJzPi+CTc5uze3n517IszcIJXcxu9l/85Vtp0IGI/UY+fqObS/KON+YuuT7pulX4V1U/XCOExA==
X-Received: by 2002:a5b:30f:: with SMTP id j15mr14059016ybp.431.1611967663212;
        Fri, 29 Jan 2021 16:47:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:828e:: with SMTP id r14ls1252060ybk.7.gmail; Fri, 29 Jan
 2021 16:47:42 -0800 (PST)
X-Received: by 2002:a25:348c:: with SMTP id b134mr8945827yba.89.1611967662850;
        Fri, 29 Jan 2021 16:47:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611967662; cv=none;
        d=google.com; s=arc-20160816;
        b=RKgz7PsMX644TmPY1VRyBGSsVAsY2YATPnnvS2rYHI/j7vHWSwuQ9eMATyWtv7ctFS
         my+XnbY3gNUoYMfKSi/qwjsCODYHfu76C2h2FWgQwB1F9p+tDS5osCqq/5yhUPCLzStx
         J77Qj6X/Y4f/KoFiXV8WZ1vMOLyM3RwHUdT5Xsg/IGZNn8uKvXlN+U/SC1NTS9s2n4GQ
         NMzXG46MaN7LoHBkwgwEAOoEn46PsdbindxBK/eWbPFsG2pTNz1JUNQqiuhlfcgs9Yl+
         x8ykj9bnx+OQraVJp70h3KfFA6ZXN+PaIVoknLSgRxfYFe34XPaLO7iYM1xnbMXOhd7O
         rFIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4LBt3N7q9TqhqlfzuR5ziOroS2HdjF9cFQvkXWgQr/Y=;
        b=zfj4OCi8Zchb7Wvoc6EUR6fvhX/tyNbWsAAPHTa6vEK8W124UOa1/0y5C2Id5icsnx
         xDIsXbjTW/PX8bVuYQF/jKOJImlQ+OgtPFGbcP9vKk8CG6+h+0FLdTJFWRMGt6tHi0et
         /e2I2X+WAYmgNq88f5RDDvZ876en451zQQkJN7RCOQc0Zj2boTTAWhHf2S/Mkzd5gEJA
         WO0RC9GHweAasiQNuGwKKa4b8e6W0qn1qRJ4r11Nh3fbES1Jn87kkRglbx/8bQCfD1OJ
         o2mRObRRmL9F4gNzF70bEAefo5kQ5to4X61NsAQqmUJa45tF51omdUOAnUlA2o0SJbe7
         H3qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZjfiNCTj;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c10si689768ybf.1.2021.01.29.16.47.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 16:47:42 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2AA4864E0C;
	Sat, 30 Jan 2021 00:47:41 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>,
	Kees Cook <keescook@chromium.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>,
	kernel test robot <lkp@intel.com>,
	Fangrui Song <maskray@google.com>
Subject: [PATCH v3] vmlinux.lds.h: Define SANTIZER_DISCARDS with CONFIG_GCOV_KERNEL=y
Date: Fri, 29 Jan 2021 17:46:51 -0700
Message-Id: <20210130004650.2682422-1-nathan@kernel.org>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210130002557.2681512-1-nathan@kernel.org>
References: <20210130002557.2681512-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZjfiNCTj;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

clang produces .eh_frame sections when CONFIG_GCOV_KERNEL is enabled,
even when -fno-asynchronous-unwind-tables is in KBUILD_CFLAGS:

$ make CC=clang vmlinux
...
ld: warning: orphan section `.eh_frame' from `init/main.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/version.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/do_mounts.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/do_mounts_initrd.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/initramfs.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/calibrate.o' being placed in section `.eh_frame'
ld: warning: orphan section `.eh_frame' from `init/init_task.o' being placed in section `.eh_frame'
...

$ rg "GCOV_KERNEL|GCOV_PROFILE_ALL" .config
CONFIG_GCOV_KERNEL=y
CONFIG_ARCH_HAS_GCOV_PROFILE_ALL=y
CONFIG_GCOV_PROFILE_ALL=y

This was already handled for a couple of other options in
commit d812db78288d ("vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted
sections") and there is an open LLVM bug for this issue. Take advantage
of that section for this config as well so that there are no more orphan
warnings.

Link: https://bugs.llvm.org/show_bug.cgi?id=46478
Link: https://github.com/ClangBuiltLinux/linux/issues/1069
Reported-by: kernel test robot <lkp@intel.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

v2 -> v3:

* Fix double "unwanted" in comment section per Sedat.

v1 -> v2:

* Keep configs and flag names alphabetized.

* Drop mention of -ftest-coverage since it does not cause this issue per
  Fangrui.

* Pick up review tags from Fangrui and Nick.

 include/asm-generic/vmlinux.lds.h | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index b2b3d81b1535..b61b537177fb 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -988,12 +988,13 @@
 #endif
 
 /*
- * Clang's -fsanitize=kernel-address and -fsanitize=thread produce
- * unwanted sections (.eh_frame and .init_array.*), but
- * CONFIG_CONSTRUCTORS wants to keep any .init_array.* sections.
+ * Clang's -fprofile-arcs, -fsanitize=kernel-address, and
+ * -fsanitize=thread produce unwanted sections (.eh_frame
+ * and .init_array.*), but CONFIG_CONSTRUCTORS wants to
+ * keep any .init_array.* sections.
  * https://bugs.llvm.org/show_bug.cgi?id=46478
  */
-#if defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
+#if defined(CONFIG_GCOV_KERNEL) || defined(CONFIG_KASAN_GENERIC) || defined(CONFIG_KCSAN)
 # ifdef CONFIG_CONSTRUCTORS
 #  define SANITIZER_DISCARDS						\
 	*(.eh_frame)

base-commit: bec4c2968fce2f44ce62d05288a633cd99a722eb
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210130004650.2682422-1-nathan%40kernel.org.
