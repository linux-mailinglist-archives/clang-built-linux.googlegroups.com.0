Return-Path: <clang-built-linux+bncBCM33EFK7EJRBAHPVLXAKGQEFKIWKPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C571F90E9
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 14:45:37 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id k6sf6245053edq.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 05:45:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573566336; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ffw8FQAgHVYUYxjd0R2LrMDBEeU8HXn8FxnC+R7QS+pYDac894LPfHTpd9p7pdPlmw
         w8eKTwwVwRW8i60lioJ8MgebKlx09UoTz2YKhrTC8yfv/VFSY2ddvoLEcAUNtQmslkKz
         I50VF1TyE/ykpUN/BmlkCpGGI3qjIKK2fQZ8j33/6KQ5WxwMi6VZ7TsqAZDtTeqKnTOO
         Czwkeocv+ZZOshvzi1yi7htOCljNKsGP85Giu/b0ythiu/Sor6cosyE1lsPPqR8XMvMJ
         pZRbFLJccDQvZn80AyeYUqJ7JJHJYwTKwkAqermGlpGd37j+jAJlKBMKnSzV5gCztFu3
         KnRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=hToekWq/2EFRkcgfKUztg7eUId0MjZzWV0ZYVqdFcu8=;
        b=hY5vRc2VFZM0M10LITyPXjQJcT7MSu/rHJYkbVKhGg18etj19HhBONe0DE+U6whnac
         cpSm+G02OFBsra3huMWqpXOvT/2xvJWtPXVIJkmi8LfUAGQ1TZdFo14IYVBhXZnPkffi
         5qIFoUdjGXtP2j575APHDDeiJl3njxK2YekVk/M1IMmkntDyIPWfhBC11VVKaBG1JtGU
         DG0Kdmf24EH0AoRy2ITCCeB2/SAzn6WOSxPNtQzWj/oI+CMZ7soE0BdQIMJUk9jJbV0P
         Idu9NOxUDIZj2fQIsl0FBGc4AlWNsNT21uWQGWjOiQUa03sGxhrCECDM7ENom97VLFQ+
         QIbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nezus2jc;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hToekWq/2EFRkcgfKUztg7eUId0MjZzWV0ZYVqdFcu8=;
        b=gkz9Z4qZSbw81IazHF8ZmawNL+MIttYgLZNuK1Ac09UePPCYq5CyQ7j/bYagE+466A
         hi4jLphlNEHpH1Zyeyd7pcdLx/aCqmYjiWTk7fk15t4v56vR+W4egDF4eLdwHtmgJQNI
         bhwsIlG06AM9pnQj+W9nTqb5IDSZRLGmfH/O3jQvi0xmtqXcOmEOFZ6CwPG02FGTr1Bg
         KC2ipXTgzqfwEmTvrJYBtWx9iR2g7CEkz1Ey/L52MdbbAYD31BQzIbLEaHjDeRA6zxOH
         RMDy8QcbCCwKjIZxJiDBm/9h5gbZc45LEPB/Ds/nE7F/A12oHfCDgYeH2Mhb7WjOTg5N
         MhoA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hToekWq/2EFRkcgfKUztg7eUId0MjZzWV0ZYVqdFcu8=;
        b=WHusjSISwyzezqqZaDiM/oRNhc1nWDEWx5Q0RymBeM38uIqJSvJln8U05yxbR1imel
         ygBHKuoWNN/TqWpbtY5bOK4UPZsPfpFd8IcFsiO5bGCEYccWEY5EdlGUc7dzVNLBqLT8
         DSDpKWoDQTF8faC5scwlFRj+BZeiV/UQI36wsCq3p8CjLf94cnwwF5hT+WivH/PnJBBE
         R4DQ0GZj+XstAzZQDBozCEt6IgqGKKPB9h4UBD8cH0//+Oz7/CLFq3cHLQSTsyG+rllM
         xPdC4Nm0y16llWxlEWNGb+zegIhtrRDvm+FSwUoGVBum1WYE4I1ZhWKjBX9/5K1F7QK1
         io1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hToekWq/2EFRkcgfKUztg7eUId0MjZzWV0ZYVqdFcu8=;
        b=Zp6lRtQHxuljqCeUWZrDXt0LK2s3RC9tryFrbte5vhhg/Vf2jH/2IwkqCeOQp0LY2Z
         ZQV49ohrzpf2dY2V56CZn9W3CcsHI4VkkE1wRoanmKLBkTDoQT5tLjYHqOng+HRZ35Ji
         S83S0hwOtj88D4ptoCdVOXvLve5KFSnC+eHiMHWIdlpK4Kxv/WCyJu0QBwgrL+0qnHFX
         qMWEWviAjqMaRZ/Ja2hKTnokeovGasmabXYr1kfh0BYUVrcreyqJR47mB1z6lFNZz45j
         pt4rQAa8v4LuscC2yR2HfYg/+7Mn9XrzgykymvsPhhLqyUSINv6sEcB8lNYaoZSakRfU
         hnOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWaAQ+J2mZxlPvZ7d5MOQnUtpV2LOgcjzxxHsLIs14h9aqVZbw2
	f9heNJVo8lBZdduO3yi7shg=
X-Google-Smtp-Source: APXvYqx+pOyYP8v4YwWgtM6kYtUBG3mRoYKPhdYhJGaq36lrJnuzYgwHjpZgdBIz1MFBm2BifnNsKQ==
X-Received: by 2002:a17:906:f108:: with SMTP id gv8mr29095673ejb.180.1573566336842;
        Tue, 12 Nov 2019 05:45:36 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:af86:: with SMTP id h6ls3090914edd.3.gmail; Tue, 12 Nov
 2019 05:45:36 -0800 (PST)
X-Received: by 2002:a50:c408:: with SMTP id v8mr32818198edf.140.1573566336186;
        Tue, 12 Nov 2019 05:45:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573566336; cv=none;
        d=google.com; s=arc-20160816;
        b=q8H9441rBBwJlMonmtqWZZwgi15TAT/JvvrBP3fVFAQxVh6EIeaN7CKKdS9S5OiCM7
         UFH+TsRYr+aOy3/wOrCsmR5c6rzgieKdDpRQtgnSWzd3SwVRyYMhWvtiRAqWg/45R3jc
         AkUMd3rZQ8GyoBfltuaLmOuDoe8Ctsrmt+Tp1ooWrjIDR0G4chv46TyUlejWdUuj2f8q
         4+hVttczrgZyiTa9hmNDrJY5hkpCFlugFJoQ93VQo0kC9jxiKCft69PBpp1XSV0l6Ape
         YA1HEIqCfnAsM3KbS1gE9gil5xDiA20mqVFAY1HPj2Ipr5d3qvJUTDvWb47Z+JcPUv9o
         IX0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=D37ooG4hj3d1tXGJWLb9ByvS8fwj2I3PRg/Yzi41kaQ=;
        b=uYSBV01AjYi/nIstAJTJPvbxlGxzd7cyso7WjE6KTbgnmxzbVjonuNxBUBBMYG6aRm
         n2fpZq5t3GtX/+cdJ6eN6IFX69F1jY6HWFG0TupZDAol1ELDv/qJKvshpaTHLELT5kig
         d1MLO64l/Vq+aggwm01gouxI08nRM+zGIOULyR4KZPJlng85mDu3Hm7uw+OWvY55s0Jl
         Vq3q4BldLDx6w39I5IhU9kMrH6o3bVIIDRS9cKqOiUKQzt30C5fxhu2DLNKzegDOR3CX
         FIKjVM4gssDe/31wyqtgNREk4Qhnvjfwy2mkZRCUH0bajUSF5SlzGmUb1hHCNrgy6rqA
         pZrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nezus2jc;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id y21si1471465ejp.1.2019.11.12.05.45.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 05:45:36 -0800 (PST)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id c22so3030249wmd.1
        for <clang-built-linux@googlegroups.com>; Tue, 12 Nov 2019 05:45:36 -0800 (PST)
X-Received: by 2002:a05:600c:2549:: with SMTP id e9mr3842177wma.177.1573566335889;
        Tue, 12 Nov 2019 05:45:35 -0800 (PST)
Received: from localhost.localdomain ([2a02:a58:8166:7500:7146:58dd:6d5e:970])
        by smtp.gmail.com with ESMTPSA id 4sm4496178wmd.33.2019.11.12.05.45.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 05:45:35 -0800 (PST)
From: Ilie Halip <ilie.halip@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Ilie Halip <ilie.halip@gmail.com>,
	Peter Collingbourne <pcc@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Will Deacon <will@kernel.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] scripts/tools-support-relr.sh: un-quote variables
Date: Tue, 12 Nov 2019 15:45:20 +0200
Message-Id: <20191112134522.12177-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nezus2jc;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When the CC variable contains quotes, e.g. when using
ccache (make CC="ccache <compiler>"), this script always
fails, so CONFIG_RELR is never enabled, even when the
toolchain supports this feature. Removing the /dev/null
redirect and invoking the script manually shows the issue:

    $ CC='/usr/bin/ccache clang' ./scripts/tools-support-relr.sh
    ./scripts/tools-support-relr.sh: 7: ./scripts/tools-support-relr.sh: /usr/bin/ccache clang: not found

Fix this by un-quoting the variables.

Before:
    $ make ARCH=arm64 CC='/usr/bin/ccache clang' LD=ld.lld \
        NM=llvm-nm OBJCOPY=llvm-objcopy defconfig
    $ grep RELR .config
    CONFIG_ARCH_HAS_RELR=y

With this change:
    $ make ARCH=arm64 CC='/usr/bin/ccache clang' LD=ld.lld \
        NM=llvm-nm OBJCOPY=llvm-objcopy defconfig
    $ grep RELR .config
    CONFIG_TOOLS_SUPPORT_RELR=y
    CONFIG_ARCH_HAS_RELR=y
    CONFIG_RELR=y

Fixes: 5cf896fb6be3 ("arm64: Add support for relocating the kernel with RELR relocations")
Reported-by: Dmitry Golovin <dima@golovin.in>
Link: https://github.com/ClangBuiltLinux/linux/issues/769
Cc: Peter Collingbourne <pcc@google.com>
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
---
 scripts/tools-support-relr.sh | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/scripts/tools-support-relr.sh b/scripts/tools-support-relr.sh
index 97a2c844a95e..45e8aa360b45 100755
--- a/scripts/tools-support-relr.sh
+++ b/scripts/tools-support-relr.sh
@@ -4,13 +4,13 @@
 tmp_file=$(mktemp)
 trap "rm -f $tmp_file.o $tmp_file $tmp_file.bin" EXIT
 
-cat << "END" | "$CC" -c -x c - -o $tmp_file.o >/dev/null 2>&1
+cat << "END" | $CC -c -x c - -o $tmp_file.o >/dev/null 2>&1
 void *p = &p;
 END
-"$LD" $tmp_file.o -shared -Bsymbolic --pack-dyn-relocs=relr -o $tmp_file
+$LD $tmp_file.o -shared -Bsymbolic --pack-dyn-relocs=relr -o $tmp_file
 
 # Despite printing an error message, GNU nm still exits with exit code 0 if it
 # sees a relr section. So we need to check that nothing is printed to stderr.
-test -z "$("$NM" $tmp_file 2>&1 >/dev/null)"
+test -z "$($NM $tmp_file 2>&1 >/dev/null)"
 
-"$OBJCOPY" -O binary $tmp_file $tmp_file.bin
+$OBJCOPY -O binary $tmp_file $tmp_file.bin
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191112134522.12177-1-ilie.halip%40gmail.com.
