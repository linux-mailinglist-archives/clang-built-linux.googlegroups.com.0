Return-Path: <clang-built-linux+bncBAABBBXYQGBAMGQEGX3TYSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9C232CCB7
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 07:19:51 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id o8sf14802319pls.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Mar 2021 22:19:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614838790; cv=pass;
        d=google.com; s=arc-20160816;
        b=RLrBkzHyyaIWJK4iSRgZZrv6DEFDmw5cpQvNhtghWzJDp+Sm0i92SkRIm3ATXJUZZU
         gYrxjVa6KYVe7j+R+tq7PxmL3jQDkYI8zgQvbuy8eeAJL9A29eIICz3aHnUqZvqqRXe9
         H2ofc8ItjvKabr9/fvnAMCHSjWn1SmskYeXDEBq4Wk+dF1R9BJ4aOIArOZmU8VcvWxiG
         zQDhV2BlR2YX1LQQulVvnBpX/QCgA93lPWI1ll4gQNMea1M+oZ3lwn87uRbFbdz8+SsQ
         hLKKaIePuXquHMIOW4JSdxtLxgVgX5YbYPfHUu+kgN+9cHbUqreai3+jU78JXfNAWGn0
         B+7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=qEB7mOG/ZyXxGepi0U3zG17tVIYR4GtAEAy4DA3ev88=;
        b=jVYbdw2WkaktlxaIh8up5jjxdsUZwHB4X83HzZdnaEy3zKzdIJxF0w+ZiRhO6ViVYe
         EgifbBGTcM+MqpYhDGCzSYeJW/dCWCAUzOFoQSJo3KuI/vxYOzX6ibXbv7jFtUt1cI6Z
         /A1FmZjI4TRaXRdqvsUq/Y+HbZMluoNhHMPsdOqd+fikA8gV5qAAMGKXa16H2SDJJq2M
         yrw1BKyZfu8D3FozBris5aZbpch3idmLYc2Y7eXaVLchY/TVVCu9S5HixiEaJ/fo8+yF
         aachkPpfUwr5xnaosfA1pmevwRctA8LdEVjuVKWlVYUfLvxfvFYDIuzyNf3AKqN8s+iq
         l4lQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qEB7mOG/ZyXxGepi0U3zG17tVIYR4GtAEAy4DA3ev88=;
        b=c2v66ia9+w6bZHGsF5+NBvNGB9PfjhrZpIZrxE1Ys2VeLu42uy96zkkenaOwu64Zkk
         I3XtbvYJmWsjV1ojrREPx8pF+S9PmZ1FavRwPvHJOCiBPgBWFca7CdepgqDieV8K0s53
         Ufb4TkNM/MAHXssI/LrmPKI8h313cAdWo5FtoLzNysqbQxEPjWTWjBwpqsSzjgeVzjC2
         8SZGssbbmP2MjisAy4tTwSfZO/3sEJ5hlJVYCgAO39IAkUnBlKLoaXjCcZ32XqiZ1sBG
         sYRN8afH4snShItOMvw0LK4W2jXy9yecEPtqXrPcMqaGZt6Bz6wy+7GgCJ9ggXLgnWUz
         gpFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qEB7mOG/ZyXxGepi0U3zG17tVIYR4GtAEAy4DA3ev88=;
        b=Ehr8qrhbHF1KCMLgLwZJ0gcOk1jOKyBJYGuDvb2TesIxW++CsI21wouZ4nNvZcPAz6
         /VpnsKWTyj+CQM7hGz9RwmzaKjuQNFdOwDrKp8xvkaK3E5ZQ6e11RXfk6ONa9if4B41B
         ux4d8lbYnLFfSa3YOLFjLKih7eBnuhEZDhyeGfBP8YW9diBeORqGNibugEJBuYV8C4FC
         2EnItPHynfAba0rxoZEpc7QAaTeHaWn2qUPUe9f9iupmqdsLuQsywJp0XPlF8HX7kLHn
         nwZGeou7VnNAImxMyn65OhGnyNTu81bB3+f/4MepxVFUSb+63egEWx6ulV9Egf/ffGn+
         Ig1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532o4g8BCcHlRl39fjglgQTHi3Q8USZZRSxCDavWksZVqngk1WA/
	U5CvCl2B4jwDNerSD8Z4l80=
X-Google-Smtp-Source: ABdhPJwVTfQv8emprK7VEDZ4BUlsjSx9HhA34HiIaGNxqgoAyp/xDXS1yK4h/myMD7u+cDnnrgDeZQ==
X-Received: by 2002:a05:6a00:15c8:b029:1b7:d521:32e9 with SMTP id o8-20020a056a0015c8b02901b7d52132e9mr2405670pfu.22.1614838790527;
        Wed, 03 Mar 2021 22:19:50 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1b43:: with SMTP id b3ls406633pgm.11.gmail; Wed, 03 Mar
 2021 22:19:50 -0800 (PST)
X-Received: by 2002:a63:2f03:: with SMTP id v3mr2413182pgv.408.1614838790071;
        Wed, 03 Mar 2021 22:19:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614838790; cv=none;
        d=google.com; s=arc-20160816;
        b=n9Fe1ygwSjH3wcaOhaT9H5cmmDybZPE9jXaHzKrmPiu6/5XKw3XfbF7P+xjEz3B3Vv
         po9vSACZyKpDQDhWIgeljey4BIC8zLJYWVx8dz+kiqX24NnOGqOZ4Z0kv6BYpYxtz4X4
         eHbkIXlevOSUz1dopa+56XWGKKXKoWZsCPX4MT8dK+lyNZHuFOnHNOS9mD7Gy155RtH/
         11dPOFP//CWACbkjnUYoLVU2RY+xheMvO00UGZ810Hs39xMloZsRH3PvXef3Nml4f2H1
         MwxdVRl6ba4wU7J/Mbj9fvDu1iDv8/biqVfzyhreIeSa84YBxbr0Rgge6gQQCG9XBjOD
         Iukw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=8gyByu20ff/xzPBK4t+FluljXCBGmVKV7fU6TiWHpOU=;
        b=cMUKwUumaEQb8ECFn1pCgYu7OJaz7Xk+iIUJ3j67qA8BvQgSL2ehXtFqdQbf0RNaTh
         pQfCqat7EMGr88dTIU1fEwHZprO86IGQHEsmjqDt/PSIKstY3rhgEhColprCcpdGvRvb
         bvtZvEx6AqC4mDvvJXUMnh9R04i9Bv+U7fSwQWEsZ4NEv3bM7dlg3bBRklGXuvPpgekS
         4cvOlzXwFgxesQnQGSiJkgW41RxJ21c8BgeFEz98z99Jchhz5Jx4SwsI5NENMyQdPgxb
         wRCtxf8LFcd+Wl5Z8/FFHorGT2h5FSHjU33D2y8JyB21n/nGTQFu0JiBM9pqTHSFUfY1
         vObQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id i24si1495848pgm.3.2021.03.03.22.19.48
        for <clang-built-linux@googlegroups.com>;
        Wed, 03 Mar 2021 22:19:49 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from linux.localdomain (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dx7_H6e0BgdDIUAA--.8807S2;
	Thu, 04 Mar 2021 14:19:39 +0800 (CST)
From: Tiezhu Yang <yangtiezhu@loongson.cn>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Xuefeng Li <lixuefeng@loongson.cn>
Subject: [PATCH v2] MIPS: Make MIPS32_O32 depends on !CC_IS_CLANG
Date: Thu,  4 Mar 2021 14:19:38 +0800
Message-Id: <1614838778-3696-1-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: AQAAf9Dx7_H6e0BgdDIUAA--.8807S2
X-Coremail-Antispam: 1UD129KBjvJXoWxJr4rtr17JF4kKF1rWry8Zrb_yoW8GF4xp3
	yvka1kKrs8Gr1rGFWkWrykWr12v3s5JayFqasakw12vasxZa4kZr1Ska4xZFW7Ars2vay8
	WFZ3Wry7JayUCFUanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUkv14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
	6F4UM28EF7xvwVC2z280aVAFwI0_Cr1j6rxdM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
	Cq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
	I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r
	4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwCY02Avz4vE14v_GF1l
	42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJV
	WUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r126r1DMIIYrxkI7VAK
	I48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r1j6r
	4UMIIF0xvE42xK8VAvwI8IcIk0rVWrZr1j6s0DMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF
	0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x0JU-J5rUUUUU=
X-CM-SenderInfo: p1dqw3xlh2x3gn0dqz5rrqw2lrqou0/
X-Original-Sender: yangtiezhu@loongson.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as
 permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
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

When build kernel with Clang [1]:

$ make CC=clang loongson3_defconfig
$ make CC=clang

there exists the following error:

  Checking missing-syscalls for O32
  CALL    scripts/checksyscalls.sh
error: ABI 'o32' is not supported on CPU 'mips64r2'
make[1]: *** [Kbuild:48: missing-syscalls] Error 1
make: *** [arch/mips/Makefile:419: archprepare] Error 2

This is a known bug [2] with Clang, as Simon Atanasyan said,
"There is no plan on support O32 for MIPS64 due to lack of
resources".

It is not a good idea to remove CONFIG_MIPS32_O32=y directly
in defconfig due to GCC works well, as Nathan said, the config
should not even be selectable when build kernel with Clang, so
just make MIPS32_O32 depends on !CC_IS_CLANG.

[1] https://www.kernel.org/doc/html/latest/kbuild/llvm.html
[2] https://bugs.llvm.org/show_bug.cgi?id=38063

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
---
 arch/mips/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 3a38d27..f6ba59f 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -3318,6 +3318,8 @@ config SYSVIPC_COMPAT
 config MIPS32_O32
 	bool "Kernel support for o32 binaries"
 	depends on 64BIT
+	# https://bugs.llvm.org/show_bug.cgi?id=38063
+	depends on !CC_IS_CLANG
 	select ARCH_WANT_OLD_COMPAT_IPC
 	select COMPAT
 	select MIPS32_COMPAT
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1614838778-3696-1-git-send-email-yangtiezhu%40loongson.cn.
