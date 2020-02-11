Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU7NRDZAKGQEYPHPLUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7F6158956
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 06:08:36 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id o1sf6670522pfg.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 21:08:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581397715; cv=pass;
        d=google.com; s=arc-20160816;
        b=D6E/4ezxgMMZ7++ra4ZvmeGveYCCsfMJtSQ+Arv7ZH6wSvIF4qsWMWMzUaJi4OqZsd
         941Ke4mPfeMzd/Ubfsdyb9/WjKNyOmFcwyOmmTzgJM2WsKlBahODNnNLQlUxu6gYpl9x
         9n1nYi74hsaq+PNHByWhSt6/3qMtwckdm8vn0N/PtR9+wOcZXmOLXAHPSsXrDQnMdcog
         ES+XnAXxG52x50zORyMDHOv7EFBC3jDU8UrzrHgTbSAD78dNMJi39CLQ9nTPDBXigqlt
         Wid0SQAaEPDPTLP1lDJG4auGWfKVarrBwA9rUktz20NFtOFx3SXl2Sq+lL0cBSiKNmm7
         6wVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=gMMNxIeNgJyXpWwfTjAaFlKJCjIYVtnTDlD9f+3z3O4=;
        b=H/jU9m5JqKWgeXOosFmfmizHNb1rd4SWakPQRdIGB4XOCwe6nbe3DcIam03j+HmxFu
         tW5dT5Q6LLMx+N7M8F20TUKAzm12Me27xuZDzWCFOeuRCcQRdh/RXGdH/Q6jjYLc7ZiN
         Vi5aJEfSSdW+OB4b9NK6TZDqW1GVzPcjK1w2NIZVLtsmBFt+xbtx/hofuPhgg2+66Lpu
         dwHZPsW+yMrPGcghcPWvRlxoqILWV9JriGXRQgrSjptjXyxEeKkHE4nhEY9XhkZ/bysM
         2v13M6q30iLGYgn176nFHp1iYbEQf3sgNUzHYt9qfEhvPmlVle1IRJnOcH1dOOUeQe+n
         ZE3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q19RtMc0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gMMNxIeNgJyXpWwfTjAaFlKJCjIYVtnTDlD9f+3z3O4=;
        b=qxf4Z2afR+spWJoOVCo/ImWwhcMbKXEao1khR0duyVnjG6C4Lq9X3/CTajct479qJe
         6pqu3LEkGj0ZovRlO5rmE2MQEF3BPGIEZi7tnlVyAwdLQvoqd287oUsw37MNZReHS64U
         8jQfQ3zHgBWSI7w4KbAU/l7zlio9myW2ZCdWYCuwqV9953PDFJm7i9AX5ScN2VLGbnLZ
         Jngx8h2upCiUwPzdbcAMbmCnVb72eGWNCtPfxCWAwoeRgXXeFlmkz5Dpuj50bZqYgkXX
         QA4qagGuqX9utJLFPDmi35jJT79phfaXpwTg69vxhglXLnlO5J1jt4KKl72BUlhW+W0q
         aaOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gMMNxIeNgJyXpWwfTjAaFlKJCjIYVtnTDlD9f+3z3O4=;
        b=e7r8TeWxuhKBUckJ1BLcx5tkNu6/RYi21A+vj6Uw2F50ovrJPQ7f1HCy8qOzIwva3m
         cxxM1g5m0s/T1jjOuUfuszGznM41fu2kljT/2+IdaK9rCcLzPPJO57vPWrlRUCPBR+Gh
         xS+tklenT8o40EDMUIl9CKz18PBKaCrKk8t0GrDA3uO3VvD/mVIXN7/bdHLA3Yudge0h
         0R9npTRKmgr5Bby1KwLOqrIPQsRScZ8daKB0HhsOGVz4Ecre1RMFyI78Ji3w7MZjArS6
         ZRjxh0y3FRVibPwzaTueQYhQ+emiVmfWYE70GQ4V8eM6yWQ3aWWIBTz0l/rx2LKqC628
         SSlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gMMNxIeNgJyXpWwfTjAaFlKJCjIYVtnTDlD9f+3z3O4=;
        b=aTj2F6Zq+BUhJ0RJTIO+bKHMymUwkdMWbv4p8A3GPZaPjjzkN1YeYoHaJvKWfXaZHP
         VUz6PVW6k2ZCE/X8O+f27yhMrroGWmQ96o9zP7tVC/i9jOv0GCxAffCvBZPwOSv90MsJ
         YYaGNqjoC0kGoqqo55ytUhpnL4jDicc4xW3T4FWdfi5Mf/ycw+5YpDoyzrU1zjtyNYZ9
         lkf7k7zmE3l1SJCiPVBfLGxp6ECsPmWKP+K5DLnSvwgH1PV+kGh10KRKw27C6Xg7k6DP
         5bxoAos12Ppv0EnK7XqcYrhTFLggNwrhnhaAwqHetL/Pscz1NZPiRGOv9ecIlaccGccs
         4hcg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXbJOI8PP4+GwHNT05yQvvHVsrJlmDNx9IlJ/4bBRfVChMnPW/V
	QQB76Ec3fpEAVmhZNJk4A+I=
X-Google-Smtp-Source: APXvYqzW11ldVUuLKWLx8FI1UeuEL/kt3nUJxrTTLKP5+zFSws2ZysSHfrs7EitZPk0bRA5Qk3vRGw==
X-Received: by 2002:a62:4e05:: with SMTP id c5mr1505540pfb.258.1581397715315;
        Mon, 10 Feb 2020 21:08:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ed49:: with SMTP id m9ls2693715pgk.0.gmail; Mon, 10 Feb
 2020 21:08:34 -0800 (PST)
X-Received: by 2002:aa7:9e0b:: with SMTP id y11mr1561604pfq.182.1581397714909;
        Mon, 10 Feb 2020 21:08:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581397714; cv=none;
        d=google.com; s=arc-20160816;
        b=bX0H2Z5hz1f98XT4SoJXKVNJbDzr0BjAfsFjZqgQDzh44Hj9+sVxXoG+/JEmObrlDF
         nIiyKWj0qr177Wh7zlijOJekV3QqDY+Lgm3Erg8IUisapi5j0FqYLroqBH20I1X73wTa
         NVZQx7fchhcb8kV6ycrSMV2uCUNOCggucJBm/jHEbpx9JUsUY2Qu6FPcFgncXEXTD5Gv
         F3X5T6OiY8MG4gXic9Vq7zjtmAbPMHKP34H4TeeAivRa0WntzP2tPadzpp0an9lEFiuY
         sH0e1rvajfi9XioPpiu0sBDZI2ClE5OEn+oSdd7knSzVGQKZ4c0M9PYTAFXRqSVxyOwW
         vPBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=PzVeAyFZDO+woAn09FRMNrkoa0zSne0dLCKhCXRtKF4=;
        b=rD7XPlW8+cj1/CJW18CZ8fxPil5nJDEZtHb4PLeBRzpT7XQ7IZqnnLHM8lVRkObfs7
         9OqHtgzjG0HhUut08adjvAFPQK3sQRtOE7k+Cx8pfeEiG3+WPwskMfnLCxFNwtcYLsi1
         RIf0mX2NSYnqDaa7VqAqX2tIawyvF1a59ljMiJnwRUeqlggeUyFvUOzcgHiCpAmNACMg
         0W1kwwFyMPZ9e2vaEilekuOYxBWd3y+5sVtsLJnlI0dRXfDoYSLz12syZmAfgQYuiznO
         MBv13I9yc0m49UXZCB56SKGA2GueB2XJI/MY1D5o1Yjs7E+l4I6sZ+bc3H8t73sMkFvo
         nhhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q19RtMc0;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id a4si33838pje.1.2020.02.10.21.08.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2020 21:08:34 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 77so8856785oty.6
        for <clang-built-linux@googlegroups.com>; Mon, 10 Feb 2020 21:08:34 -0800 (PST)
X-Received: by 2002:a05:6830:1e37:: with SMTP id t23mr3936686otr.16.1581397714034;
        Mon, 10 Feb 2020 21:08:34 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id d11sm862015otl.31.2020.02.10.21.08.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2020 21:08:33 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/i915: Disable -Wtautological-constant-out-of-range-compare
Date: Mon, 10 Feb 2020 22:08:08 -0700
Message-Id: <20200211050808.29463-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=q19RtMc0;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

A recent commit in clang added -Wtautological-compare to -Wall, which is
enabled for i915 so we see the following warning:

../drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1485:22: warning:
result of comparison of constant 576460752303423487 with expression of
type 'unsigned int' is always false
[-Wtautological-constant-out-of-range-compare]
        if (unlikely(remain > N_RELOC(ULONG_MAX)))
            ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~

This warning only happens on x86_64 but that check is relevant for
32-bit x86 so we cannot remove it. -Wtautological-compare on a whole has
good warnings but this one is not really relevant for the kernel because
of all of the different configurations that are used to build the
kernel. When -Wtautological-compare is enabled for the kernel, this
option will remain disabled so do that for i915 now.

Link: https://github.com/ClangBuiltLinux/linux/issues/778
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/i915/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 38df01c23176..55dbcca179c7 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -21,6 +21,7 @@ subdir-ccflags-y += $(call cc-disable-warning, unused-but-set-variable)
 subdir-ccflags-y += $(call cc-disable-warning, sign-compare)
 subdir-ccflags-y += $(call cc-disable-warning, sometimes-uninitialized)
 subdir-ccflags-y += $(call cc-disable-warning, initializer-overrides)
+subdir-ccflags-y += $(call cc-disable-warning, tautological-constant-out-of-range-compare)
 subdir-ccflags-$(CONFIG_DRM_I915_WERROR) += -Werror
 
 # Fine grained warnings disable
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211050808.29463-1-natechancellor%40gmail.com.
