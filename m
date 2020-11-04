Return-Path: <clang-built-linux+bncBDYJPJO25UGBBH7XQ76QKGQEANPRSXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F5592A5B41
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 01:53:52 +0100 (CET)
Received: by mail-yb1-xb3b.google.com with SMTP id b189sf20042549ybh.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 03 Nov 2020 16:53:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604451231; cv=pass;
        d=google.com; s=arc-20160816;
        b=zgRMyz6Q/V4+B4jJzLXfKA+ftOvCuMYxjPRa1HLBclatSYZciiLFAyNgqLkyPFFdLU
         azLybQK3luqJTIa914ePyLdhrz2cU/ndCe9NfQqIEUoVXj6sKPy7Q9dyEuqfAvOzSA0q
         YDomFQnSLdXelVkb2a1QxABxDxoXRhaIWUvwHBLTysRxMO/GG3GYHgDLvAcJCc9ekKnr
         M566uatZx08RRX54lHRtNU7sr4POxh1rapJ2BIbe2Sep7NnqGEC1EIOPwruyIx0+jdEt
         A+kVm3dEFFJ2uIPeDq4Vd+ZJAiyyWr2ilEeh4hveJrM/lfwuhsneIZCEoWSCAk9dy6i7
         kxbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=q/lao1471gmamB5D9z4eKGRT0ejn00eAKy59359oK4g=;
        b=h6/GJipGJy8jhbmgcGoKZWNKR8SNxzoIPWD3wJ7iBWlE6ZB2ezWYl7lwfGC5xcoDnC
         tEzKN3GyPA3AoyNPd7RVy/nir40P9mKSyIgOoA7yVYKCFz4eyP0RmnJmpUgr3jURb3li
         UFV7bOnxyxWktzgDn6A0YCKrM03D1O+O3eBlEZmdAoq+jHdf2tAOoEOPt2YvrBMoqFol
         lwccLDzrj+oxptpY4ogtr/+IEQLhLOrOU+YD/yu0gZNkE+ld9JsomXuUVtpi1MLT16x+
         qHpJHq/7xTFHaIv0B/HjW9pvvBXgSlrqufvNuucPWFQbDF6+6Cbp/bH2Y0Uip98FvfNM
         cV5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lwlMImIc;
       spf=pass (google.com: domain of 3nvuhxwwkacekabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3nvuhXwwKACEKABP7RIKFBOPDLLDIB.9LJ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q/lao1471gmamB5D9z4eKGRT0ejn00eAKy59359oK4g=;
        b=Pd5LZtCbn36uK6HJ5eUpIcpHJbSqsLMejjSD9TtRgq4yIkq51T/lTzCU8PzZ+XcD99
         VaK2ZV11RjMFFTYgHlyxE1t5aNtBL+1uhHVZpJ5r4B4Fn+58Hv8NAFRhRyy/pCZFa+DA
         u6TPNHhEswK84ElF/CpF9gi/ws39RT1lZ5CIdeu0eI3r76NzxGnHNFKldxL5y6g1snoT
         JCnhTQt2knZ5VRWtfwiGPfq3O0DSLxELhQadrrkkdZeRfV+b3RZhtSqYZx03QIOG4utx
         AD0XUo9pjW3+pL+E4ZRJH4YewznNK9efKr/qtDDM9Z30JCRw0o2jldeEWNqd00EtmlIL
         PC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q/lao1471gmamB5D9z4eKGRT0ejn00eAKy59359oK4g=;
        b=jljrryxY7yZnFGohLE0KM4tXHYj91RsWHFlOIonXWhijShJyvttnjXQ2qjK1Skbnt1
         zb1B96stRtFQ2cxvRZPP++eP+shNgaETwm6Ix/Z6KLG71zaXKS+XwbVBd5fp/cYuFF7Y
         lCKtzHqJ953eKANBchzDz5oalsx1dhdxtwdyJ6CmU8qP1wcHKKAwNNFWeIUGB0uULk/X
         eFWw5x8IEawO/axmbAGfupa9N51Rkh4eYbVRZKIyrGwu9HKNkFWf8YIs0jRDT+enuX8y
         0ywwKNwwoA1A4uUdn8dYkZd53XfPHmgpGF/x/5OXq3oIlygzgNggxG5reD2ysNORIZmL
         vplA==
X-Gm-Message-State: AOAM533f2RlDuHVkp8jQ55pxp3P4i+p3LBTbEwrs7p5oC+/w0HUmixvD
	ITO97uoPBFf+sEADjwgq01Y=
X-Google-Smtp-Source: ABdhPJwqEQd4nL5dGhFebUEZzW0rzjCOmDQWyRe2vvcYUbSZaCpop/4KDh7W1NhpP5LCTv4wkkP5/w==
X-Received: by 2002:a25:da92:: with SMTP id n140mr31360926ybf.275.1604451231336;
        Tue, 03 Nov 2020 16:53:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2689:: with SMTP id m131ls107357ybm.7.gmail; Tue, 03 Nov
 2020 16:53:50 -0800 (PST)
X-Received: by 2002:a25:d08e:: with SMTP id h136mr34231025ybg.20.1604451230773;
        Tue, 03 Nov 2020 16:53:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604451230; cv=none;
        d=google.com; s=arc-20160816;
        b=PgBoOmK1xvD+SsPR/2ZKoTusKsQsFxXzFBbohIgxJLpHTCaUvceysa3PHn1oniN/9T
         zOxPO6XziwYO/J+GyH5L9jsRA59Kjl+URQyDAt31oieBFSJx03hXt2MBZdWY0qL/i6iE
         ZV8nwUxppad1FRsbPO9Oau9GHVcFYJYn3YJ7zT2T7wW8SUyVZ4AMrDBP3xiuOT3+F+ij
         kki9s2nSxXp+Wch1OnBEFWEA6h7zmLjUsNN3KDeSLUuBkAZuzEhLuF7jOln9zT1lJY7f
         NkY2p2vXGMeRYcK6gByqpV6//MCfSZSDgB0ajWQmbNe5IES3YEyfzhi9wL3PGEhJSftL
         u90w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=ER2UhxLP/araVfLtlLjju4GHW3AHwOn+yA1clWZujmw=;
        b=REaHz6sBFsFOfM59nuOBbx6nKcbUTJiQFLd5+nnomj/7PyTt5oKLrcNd+FgeTlw+sV
         CVd3mwFUKlaZdGJp9xFSJs7NlPYciDYC409sPq/3w+9mIxpoGn1CVYuUnOLyXbTK8haP
         Wj7550o7ONp7BW/6rVYno3384eGFhOrzJd5fQxceyUnOydmJfxUghFBBYK6kWBf+LElD
         NAO3Z2vcbEYLbcx609ZnZKVFR3uGBOMDKabBK+24UgRCAa+I0bqarNw3IlyePYeqld3a
         lmW2xbBkFYhs2gi2fUmEYFRN6TR+1mZXVQupS7KuAMcKJBtVO8L0ht8RNperJzWqk9LD
         bZkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lwlMImIc;
       spf=pass (google.com: domain of 3nvuhxwwkacekabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3nvuhXwwKACEKABP7RIKFBOPDLLDIB.9LJ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id q4si56684ybk.3.2020.11.03.16.53.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2020 16:53:50 -0800 (PST)
Received-SPF: pass (google.com: domain of 3nvuhxwwkacekabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id t64so2426459qkd.5
        for <clang-built-linux@googlegroups.com>; Tue, 03 Nov 2020 16:53:50 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:fac6:: with SMTP id
 p6mr30296428qvo.5.1604451230411; Tue, 03 Nov 2020 16:53:50 -0800 (PST)
Date: Tue,  3 Nov 2020 16:53:41 -0800
In-Reply-To: <20201104005343.4192504-1-ndesaulniers@google.com>
Message-Id: <20201104005343.4192504-3-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH v2 2/4] Kbuild: do not emit debug info for assembly with LLVM_IAS=1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Jakub Jelinek <jakub@redhat.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lwlMImIc;       spf=pass
 (google.com: domain of 3nvuhxwwkacekabp7rikfbopdlldib.9lj@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3nvuhXwwKACEKABP7RIKFBOPDLLDIB.9LJ@flex--ndesaulniers.bounces.google.com;
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

Clang's integrated assembler produces the warning for assembly files:

warning: DWARF2 only supports one section per compilation unit

If -Wa,-gdwarf-* is unspecified, then debug info is not emitted.  This
will be re-enabled for new DWARF versions in a follow up patch.

Enables defconfig+CONFIG_DEBUG_INFO to build cleanly with
LLVM=1 LLVM_IAS=1 for x86_64 and arm64.

Cc: <stable@vger.kernel.org>
Link: https://github.com/ClangBuiltLinux/linux/issues/716
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Suggested-by: Dmitry Golovin <dima@golovin.in>
Suggested-by: Sedat Dilek <sedat.dilek@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Makefile b/Makefile
index f353886dbf44..75b1a3dcbf30 100644
--- a/Makefile
+++ b/Makefile
@@ -826,7 +826,9 @@ else
 DEBUG_CFLAGS	+= -g
 endif
 
+ifndef LLVM_IAS
 KBUILD_AFLAGS	+= -Wa,-gdwarf-2
+endif
 
 ifdef CONFIG_DEBUG_INFO_DWARF4
 DEBUG_CFLAGS	+= -gdwarf-4
-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201104005343.4192504-3-ndesaulniers%40google.com.
