Return-Path: <clang-built-linux+bncBC2ORX645YPRBM7LSP6AKGQEOEMQXEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1585128C5F0
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Oct 2020 02:32:52 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id w7sf9286440qvf.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 17:32:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602549171; cv=pass;
        d=google.com; s=arc-20160816;
        b=0OFL5+jiA/iLxrzFXNjbbjvFg9VXhTjQMqXhicZ1ZHgzJHSz+pNFtFC4+VxTd0RmWo
         uVK5ikxyZaHVi7HvGQa6EUQr8ZbzpZKx13YFti7UvJvOhdWzG1UGZ0GUTvtP2WNLKkPJ
         wLPepprOZ8r/HOZOjkQT1P4VEFNNnoY294l+9O9f9xGc2GKLDQkQf+mm20C7gCyYdacV
         IdF2kbu7EXz7679n862YmQt6rSQIfa58jtoS0L7I1aQwheoks62gekZ2q5LfKIgRXEzm
         R+anmg+nWfkDmk6bWy0BebtnF4lvHt4EA7lrr+B+l8N/7bi7uIhLo4gWgbTGTYFLPH5e
         mcJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=KxhkpRwofJIL4NkPFFx0xddZL3Es5zKpR1yiGL92egg=;
        b=libv9bS7q25ZolEaqGU/fJDXp0MBxWj32oivW40aYukwocNEYY7k/gTSJVBCfqGGQZ
         4zr7TkdRKKuf4UveSu33JcTIWJay9URuuyqOQCd43TJO2z+ao68OFX1/pbA96vi6BXu3
         KBVi+WSCv1Z7tTSezgVZu6EO2B3mdy637qUgq7j73AuLlU9U8ynFb6xKLK3G92oLIXJc
         Trxcf64dtw8jR4QuLjqkcUL36AUwvG4bAYHKITTmvzhxPgennGGDsConH0dh1mps5ik8
         mF9VXS9r8hycgwF9IZC9ayRF3DXd/IF1yShVKhRbBbKryzIlftq9Lu5TTXwebHHluchd
         vY6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="kWr9Y/fq";
       spf=pass (google.com: domain of 3svwexwwkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3svWEXwwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KxhkpRwofJIL4NkPFFx0xddZL3Es5zKpR1yiGL92egg=;
        b=SVt3v7h/W9IUC2U4y8LsM3ZJu1Y335A3y2bf9u9xfiOT2suk7wJ5U8lBZ5Ebv3Nhpb
         WqG3/QGBf86XPICt0A9OslSmHKFvhHH30DLSL7uN51ro6fABatb95LOIhVmdz0vh/jyL
         uhXuG+TnzUz1srBtu5rtY6Tsfwb1DqwVyMqJZ9lum/el3G9xkfOUfiKp6Nfy7WQZ9Ole
         FVd/Isz942phGgLoboDPSM736+9xbKuA1c5hbGc29GhKB7zsBuKd0l9Ulvmy5i8fCkxX
         /ABn3BcHKE/72oddz6AGwC1hAci3XBhl6Ujf8nop7JkZQnDSBblIwxNCPVRiMsjFyFc6
         6MyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KxhkpRwofJIL4NkPFFx0xddZL3Es5zKpR1yiGL92egg=;
        b=lH/l5SyAqzregP7FLOyy0uSbgMSoqC8KGGSGbDRnXwTo3zjceFAyPZAJtJOojoMcAV
         EREE1UmBgsbYnRIFD91aH9EWUi+9AWyN+Ic4+lji0Kl2TMgpBwBG7rnUYnf3KPQ8oaBv
         8LljwEae5HxQ2KT7d+cksx65l5sD5GUkWxl7q6UI5yQGXai81dpTP5ptWnzcAGv5RzZb
         llu4IG3YgZ8ddGezcMGmfgftJEsios0XvJq5duBgbvkrwkDgUEVBfPaWv4/HO4oJK+KT
         wftO71CZr5FCSNhXxq96aV04TO6f2g+IJMv+JtQNdxfDv54UFCNIqhxfgfGiEddIRrRN
         Z4zQ==
X-Gm-Message-State: AOAM530OxnnPuATULGw6R9AQPeET4SgcIwk2w5k7urPUwZ/u9DAti4/C
	wMnNgJJbKAXnS6XyrHewqQI=
X-Google-Smtp-Source: ABdhPJytBCrFtrdGBMN9AM8MgYnFPatv+Mbsuozi//rhddOe5wyFkYiL4GD2fVhL8HXqZi5SbJSthA==
X-Received: by 2002:a05:620a:621:: with SMTP id 1mr12883683qkv.471.1602549171151;
        Mon, 12 Oct 2020 17:32:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b897:: with SMTP id y23ls1844650qvf.5.gmail; Mon, 12 Oct
 2020 17:32:50 -0700 (PDT)
X-Received: by 2002:a05:6214:4b2:: with SMTP id w18mr28128205qvz.14.1602549170664;
        Mon, 12 Oct 2020 17:32:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602549170; cv=none;
        d=google.com; s=arc-20160816;
        b=agZXQp5JPnJhVBFwXOIFLLDYOzaklZE+C6XOUcpTTh+58TxGcIoXTjUbYFZ2Wydtn5
         j8GnRsPPm0ad6CEltxluDwXx8xtup7qdiXB1n1wQPTOjaApqtO6nTHPmTklPn0e3kcv4
         tie/GC637A5+GrU/h+ka3V/F2Xui0W/WYwHusDM9JW9sT6+sZUDgCpfdEUXEvR2X9+VR
         GMM01PbeCKUjwtTeyP/NPbU82QoRo3MC1A3GyUdw6Ecuo2lWK2Rjdww2Y8b9ILgMHo07
         86aPIdVvcwMRwJp4o9oESHZl1ACkzKeC7CLAXVl358gQ+kg6ftGg3s8zvDE5GwxrCo3p
         20Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=IWlwO4V8zfIKj2VoQVJSOpIzEd6XIOwNzizfhzYsm+I=;
        b=CPUFO4xiObtp8Ab4yu9wIF4tI+QwHaW+sbL/SpwNFJNZhRcoIRtx2VOPvY4uEDZYBC
         nLfCWcvHvJEoEfd0XS5CjxL4eg1mFl+MeyD87DUJb7lUKONfXagFO5Bd+kMR0/dH0Cc+
         DKA9eT4pMgn1GlSktBLer84zNarjmwtnCXHG6ubVWBCavyLwSSdUKfc5D/ivGQ58XAn/
         cGxrAsBBdSio9W7yIXEw09cHP781ANednaxnozYxSpK1Fo1ss+UJYg2/okLlio+6z1J8
         Iay6L8+5tNEB3aIfHPIY95PHeBSTGwa7CLGbrNEHj9lDXoAfRy5o7fN5Me38V9l7IKOY
         vjIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="kWr9Y/fq";
       spf=pass (google.com: domain of 3svwexwwkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3svWEXwwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id m40si1195563qtm.4.2020.10.12.17.32.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 17:32:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3svwexwwkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id h12so11709694qvk.22
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 17:32:50 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:ad4:4f46:: with SMTP id
 eu6mr28230471qvb.9.1602549170292; Mon, 12 Oct 2020 17:32:50 -0700 (PDT)
Date: Mon, 12 Oct 2020 17:31:58 -0700
In-Reply-To: <20201013003203.4168817-1-samitolvanen@google.com>
Message-Id: <20201013003203.4168817-21-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v6 20/25] efi/libstub: disable LTO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="kWr9Y/fq";       spf=pass
 (google.com: domain of 3svwexwwkalmltfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3svWEXwwKALMlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
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

With CONFIG_LTO_CLANG, we produce LLVM bitcode instead of ELF object
files. Since LTO is not really needed here and the Makefile assumes we
produce an object file, disable LTO for libstub.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 drivers/firmware/efi/libstub/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 0c911e391d75..e927876f3a05 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -36,6 +36,8 @@ KBUILD_CFLAGS			:= $(cflags-y) -Os -DDISABLE_BRANCH_PROFILING \
 
 # remove SCS flags from all objects in this directory
 KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+# disable LTO
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_LTO), $(KBUILD_CFLAGS))
 
 GCOV_PROFILE			:= n
 # Sanitizer runtimes are unavailable and cannot be linked here.
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201013003203.4168817-21-samitolvanen%40google.com.
