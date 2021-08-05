Return-Path: <clang-built-linux+bncBCZ3LGVOUAFBBM7IWGEAMGQEFR2GQWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 167733E1F58
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 01:28:52 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id o10-20020a5d684a0000b0290154758805bcsf2436169wrw.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 16:28:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628206131; cv=pass;
        d=google.com; s=arc-20160816;
        b=qXnVFe7KjOUIKeT85diKykNQvYWHnsO8qpQ4aVH0aY3IoXai88vdLypDRxyZbyEq4W
         /vSr221pGhHHfPCGrHzOEqnhsQ5zpY42iATNKSUUHnCj9Ah4kou2pZUbrPnMN5hiQphA
         f+Q4BAMEnf+OI1QYflcr3x4ZKxePFMQ0ant0HWO1akYfWaa51gsBlVqZx5b4l54HV8F/
         Xda1+be5zPHU1EdtNai5FPl7iPUC36iUh60kWm6dhfSpPeoAkBzMjMNXxOAD1ujkioDG
         QiCKOez/nxsQAS+wCINBcfjs3RDM+pm4DL79mz9ZDm5LI1QKfif07I0NcCcsso1NVcsF
         cUzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=J1ztpbKFS1NmpoE//7CBWVHSlMh3s8tOIwve2XYLZbg=;
        b=NREpp3hWYNkNTMPKd4VGcWilUXPytXLnawcc7wODvyCNPLrSkvF3+Hz21etJq1eW5H
         yLruvQVHnj7WD7fTYEiDnhTt89b41kNK5sefIT2otTA5uY4OO5e/VfC1Xdcp9tSjQGoz
         L/hmu278HCtI7j0QHxeGPdtkBfZjV8+wcUhYQevk9fzMwECNWXz+mjWjlNCQiLwQ3/dG
         MHq7ybd9UrUL+01ioMY48HW7udCWRADq6AOGK9QOduaQibqLrp3+CW6Yxv/4XIVAdpIQ
         n8TgJtexH0zo/yMOmrXQnQV22mkeTwbnt12wcxQAoOkr9W4BRRrnACDcWtluZWT1iUoA
         wtKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X851qTKk;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J1ztpbKFS1NmpoE//7CBWVHSlMh3s8tOIwve2XYLZbg=;
        b=PsBBWcWejnN8UFbs0whefFIr2O+6KUBoyT275JUt/G6alpxDiNqfqbiP5aQjqeJvar
         TifTVsjWWLrTceVsOy9t2wAHoftvfWOf7RGgPSbaXeOn6BB2i8QnAOvyYsgRVxK+nbUc
         yY9zqNg4esXzuf4kw/cjyrcJxIdC/x/nSG0pmlCeUnxFZugdXvA6EYtPzWSkFjFhGTXt
         SqSuRP7D7zBpoq19OfCbHFFUL8cj2VYNi821n6utYdVuhQ6d/K2+OuG3Rixna42yTXAO
         b36Oa4gwj6jKiZpv5/GhD1Xm+EUiUytUz405ZmdSt62cyr7o2ACJUnMCFX5uogiu5vSC
         O4ug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J1ztpbKFS1NmpoE//7CBWVHSlMh3s8tOIwve2XYLZbg=;
        b=RGFaYv5TBOgIXzYUMN7pYAr/0UqGrH6cE3UlwUng5P0UefXDFJ7iywp17pi9V1Q26F
         qSOnwrqrDg9Jd5dyB9MOazAGbsN6/wAedB78DZVyPrq8nd9jlJYdkmSHmEPvdfm21mCq
         X+6bLvH+FaPLFNxuDneFPSmGszOaVnudjB9tSNMZlhXah9WsKBOHadmjYj84IB2YCrR/
         am8ZAXjafkd6reem4ioLQXjqVPKW+fpHXW3RHNnNppnj9zDVeQN1JIcy1hg1K++EAO4f
         WVEoyX0eBXp1LQsUiMxC7a8HJPmTI0Ifu7ThJcu1yhlylU2aHZ0sovmZYIxKN43/3hOb
         Fp6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J1ztpbKFS1NmpoE//7CBWVHSlMh3s8tOIwve2XYLZbg=;
        b=A9pwKSCfPf0zEnESuV2xebd846VUHOpMCx843RafjuDvYeWGvDP+mA11X7pL9EFHdg
         jVdvgMfuoYN/Lcs3BGcWH2s2DD8vO3nqBsebqUwEzQnmWwVSr/QI8rPGdP2/nzw/hwZD
         OH2YhvzPR/+0hfR5XTb/8imbnvTCVWrigK1q2fpkmkGzQHeihbJSyOKeWbWzNpK5N7im
         vd0NxYCDUNRgOv9idFl1WccaMFeZ3rcjnGGV6Npf6VmSppWeQ6/4KEDxU5tukm7XCWOp
         wu0ASkAPeHcRb0zV2DfsLyF7GSe5evHKrIgpnRXL2YY56bEaaNAUVmFKJcUAWBeQ7uJR
         V9Ig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530z+XeHGgCzKM2a/Iv1UbHYArAhb+pztJ6brISurWTIrupWyK0u
	juMiPTcktaaf6Xf1q2iEgBM=
X-Google-Smtp-Source: ABdhPJy65ERWx/6QPSKP4x1Gr0ar40FVlwhA8MYNFi0rqx5fSwLzVHPlv2YOIuT12GCmiYODHQE0jQ==
X-Received: by 2002:a1c:9a93:: with SMTP id c141mr520153wme.28.1628206131857;
        Thu, 05 Aug 2021 16:28:51 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:4fc1:: with SMTP id o1ls5672374wmq.2.canary-gmail;
 Thu, 05 Aug 2021 16:28:51 -0700 (PDT)
X-Received: by 2002:a05:600c:1d12:: with SMTP id l18mr481020wms.88.1628206131004;
        Thu, 05 Aug 2021 16:28:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628206131; cv=none;
        d=google.com; s=arc-20160816;
        b=Dk6fA71GY5Qxr+vB3VgT01oRWxifUirNmyIYO7V2YG/+zPlZ3dF5dcm3ji3gzYUxiQ
         Gaf8lIvPTHo8AdtX4/kbklATgS94hd0JGWNCu53Phkn5isVyemZXlvztV0DSa+mDFUkN
         TM84pyRbgrNgqyTZtxOWzkXiM9gYK3WpCXewY5r5j+JUIpK+Lt0iuGdnHHU0XFkBI+vN
         bRDo81TZvvkfCdVoKmI71PUjvRPm/JXrIaKkbWDhxlEAL7FHPYMNFVOSUGA/FSCvdT4P
         X5Y8JchgWpSM0NktX8vYMIObyTW2O0mYvymcCnOn5Z1ubsKDG141SW+0YHryM5Dvhz2O
         DZuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=es0c3UxZ2e0+HJ2C3RZ1dKundYuljCUkYocdB08kQuo=;
        b=a1Z08LYrMl1+Lm3U1xLgbYgLbcqphWIDtBUrwDGVIp6WRffYaCaYOq3ixXf4sTB7J0
         t7n0P18IyoIlAxhNE6x9DthomgFGIJqAQkWKsL/kxOCgorybHkwoEKo9QUH6f4uqR85g
         hc4DsVF+w1iB7ytKkMYPYWt9otUIyKy6lcmfIlH+MS3MjKav9m23S70dAOVpfxKuWD6W
         QndK9ke0f/fCsDeCIBy4m2LjBKIEUU3frS21qHjElXBCxfVtY7MULtAa1SopmZ+SOELL
         IcNBRVXhHA6yd+2uevioI8rSb+43NcOQOK644Kd2yvGUjX225LsuYY258Y5WF3nn9hxH
         vXmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=X851qTKk;
       spf=pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com. [2a00:1450:4864:20::32d])
        by gmr-mx.google.com with ESMTPS id x8si241792wru.4.2021.08.05.16.28.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 16:28:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of treasure4paddy@gmail.com designates 2a00:1450:4864:20::32d as permitted sender) client-ip=2a00:1450:4864:20::32d;
Received: by mail-wm1-x32d.google.com with SMTP id x17so4376626wmc.5
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 16:28:50 -0700 (PDT)
X-Received: by 2002:a1c:5449:: with SMTP id p9mr17467719wmi.101.1628206130686;
        Thu, 05 Aug 2021 16:28:50 -0700 (PDT)
Received: from localhost.localdomain (i59F7252E.versanet.de. [89.247.37.46])
        by smtp.gmail.com with ESMTPSA id l4sm7516042wrw.32.2021.08.05.16.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Aug 2021 16:28:49 -0700 (PDT)
From: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
To: Jessica Yu <jeyu@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	nathan@kernel.org,
	ndesaulniers@google.com,
	samitolvanen@google.com
Cc: treasure4paddy@gmail.com,
	Miroslav Benes <mbenes@suse.cz>,
	Stephen Boyd <swboyd@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Joe Perches <joe@perches.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v4] kallsyms: strip CLANG CFI postfix ".cfi_jt"
Date: Fri,  6 Aug 2021 01:27:38 +0200
Message-Id: <20210805232741.9501-1-treasure4paddy@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <CABCJKuei==gaaKw0qH1WkshcRyUbqdS_WGRWr6anYAew1HHT2w@mail.gmail.com>
References: <CABCJKuei==gaaKw0qH1WkshcRyUbqdS_WGRWr6anYAew1HHT2w@mail.gmail.com>
X-Original-Sender: treasure4paddy@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=X851qTKk;       spf=pass
 (google.com: domain of treasure4paddy@gmail.com designates
 2a00:1450:4864:20::32d as permitted sender) smtp.mailfrom=treasure4paddy@gmail.com;
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

Clang CFI adds a postfix ".cfi_jt" to a symbols of extern functions.
For e.g. this breaks syscall tracer that doesn't expect such postfix,
so strip out the postfix from the expanded symbol.

Signed-off-by: Padmanabha Srinivasaiah <treasure4paddy@gmail.com>
---
Change in v4:
  - Remove redundant check; irrespective of LTO type (THIN/FULL),
    LTO_CLANG will be always enabled. Hence will be used as entry flag
    to check various postfix patterns.
  - And prior to stripping postfix ".cfi_jt", added a comment to
    justify why we are doing so.
 
Change in v3:
  - Modified commit message to indicate fix is for Clang CFI postfix
  - Rebased on recent patch from ndesaulniers@google.com.
    https://lore.kernel.org/lkml/
	20210707181814.365496-1-ndesaulniers@google.com/#t
  - Fix is enabled even for CONFIG_LTO_CLANG

Change in v2:
  - Use existing routine in kallsyms to strip postfix ".cfi_jt" from
    extern function name.
  - Modified the commit message accordingly

 kernel/kallsyms.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index 5cabe4dd3ff4..1b40bcf20fe6 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -174,13 +174,15 @@ static bool cleanup_symbol_name(char *s)
 	 * foo.llvm.974640843467629774. This can break hooking of static
 	 * functions with kprobes.
 	 */
-	if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
+	if (!IS_ENABLED(CONFIG_LTO_CLANG))
 		return false;
 
-	res = strstr(s, ".llvm.");
-	if (res) {
-		*res = '\0';
-		return true;
+	if (IS_ENABLED(CONFIG_LTO_CLANG_THIN)) {
+		res = strstr(s, ".llvm.");
+		if (res) {
+			*res = '\0';
+			return true;
+		}
 	}
 
 	/*
@@ -194,6 +196,17 @@ static bool cleanup_symbol_name(char *s)
 		return false;
 
 	res = strrchr(s, '$');
+	if (!res) {
+		/*
+		 * In case of non static function symbol <funcsym>,
+		 * the local jump table will have entry as <funcsym>.cfi_jt.
+		 *
+		 * Such expansion breaks some built-in components,
+		 * e.g. syscall tracer. Hence remove postfix ".cfi_jt".
+		 */
+		res = strstr(s, ".cfi_jt");
+	}
+
 	if (res) {
 		*res = '\0';
 		return true;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210805232741.9501-1-treasure4paddy%40gmail.com.
