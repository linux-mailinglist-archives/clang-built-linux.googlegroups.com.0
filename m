Return-Path: <clang-built-linux+bncBAABBNXA7H3QKGQE7GBRA4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C11213033
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 01:39:36 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id q71sf4300993pjc.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 16:39:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593733175; cv=pass;
        d=google.com; s=arc-20160816;
        b=sHHLpJwtofvdgTGo8MxFaE1ziGzVhe90danUjQ52QYzQLslJJl6B7+VdbqB7koHYWb
         IzYK++PaSHFZIoDfFQesuZI6JrosafHESe8fDJZ3dhSR9G8gEYfLyUuoGHwJcFlGxkHk
         6lvGjZntdRKXoSgvEEVnpBUFg9ogcO5EAFmsJq+UuUuM/gtK9ktmMiFU6j3K0d1qkdOO
         /r9snWViSB943QCMIiqsSendM9aW9aS4kioTAp85uH+xX59slaJTfX5TYL4yX0dQmcBN
         /Z8JdF06SEtNsCIRMaoo/yWTdi4zgqpFs1NFe266f5BS6WCPk1Rv6EOachc7XXjIMI1r
         WMQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=8hwAmvB35r6ox9G6i1zkB4ZfWfTHUJ/F4+g83/zETXU=;
        b=jql5WKZMku2SYEi6v1W1d7KtjAqocNpQVan5vtCWf9rYoRmc2Db64L74fAiCciKKtb
         XyIsAtgpQunb9Dbmfb93Sk4Ao3zRhfwTZFQUD9xpf5t+x+Fxgo+w7Pk+CquVKs061TmX
         806Z8rHV/bLRUBoky9VZ0AJQOdlqHQMO7nvFeI69LD+hwCfOABYqFIGqWZ87Ii4qbSuo
         W3SiH2OmgAVtaVC2k+1rTR4SHeqq30JYFTKUW+wXFrMigCbonOIQyyIukWitRiNGYMuu
         JGEVjVHzTLTas7nClmsPTWQ0trRjPHTINs1WaaeXIcjJ6En74+QaAxVV6ZKc6LtzOOUb
         ABSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kdrag0n.dev header.s=fm1 header.b=EfqiGped;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=hnVWUEOl;
       spf=pass (google.com: domain of danny@kdrag0n.dev designates 66.111.4.29 as permitted sender) smtp.mailfrom=danny@kdrag0n.dev;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=kdrag0n.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=8hwAmvB35r6ox9G6i1zkB4ZfWfTHUJ/F4+g83/zETXU=;
        b=bZ2yRKMuGarcDZx3Z4+CA++7RdaRp9nteoeK6PW4La6wqf3qz1aftwWrTh6fVUS0fH
         u0k6ese738SMLFX1wdu617LTRyi5BCfamTPa5VNqxX6a9adkeDrFF/K6OlekRBddN75c
         DIJKnGrn0vY1KA3onmxcnrEpLnviNwT+4Rsw8+x6iBOwjqPpwMUIg+QV9MPeNFyonjuP
         pTrAmWhacalrDqWznmqPnYPLmN49AIKcjBV47fS0S11twr9wPkyfaW+kvEj44DZj5Dfz
         XquFK5mxyC+97Q1ylbFQ3Hf/ouTiyhuqtaT4eGbob5zyD/hHyc/A8+hPTCnN2nJAI5kf
         OcDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8hwAmvB35r6ox9G6i1zkB4ZfWfTHUJ/F4+g83/zETXU=;
        b=t9zGsTCCtcleP6ijAfmj701VBJZsi3w21B9rfdZnEnH2VTtsHxslLsFwq0G20/NRWx
         4yhpsGEfNOtpYpO4sgkwRwM+L7NjaYG4AZMQz7cWrUY2TCmnv8yUNo9aCOqGw0qya4WO
         N6G4LXEybDqxtkqTm+wqyvt12FBvKvwGFlwhFikZGdMiKKGp0D3VedC8+VZIIUrHhr8/
         U3/JIjwbYLS3mNNUU5nU7Jnr7voVmno+eWlX0l/sWzSgEwRuK9F1Z2NtCjBx8wYq1vOl
         +oSJmWVJ9Qj3uesMRk/F+FlDkcoJNvylc0sO9kV5AOchUz5j9MnGfxQ2zOfOr14SSoxh
         Y1Qw==
X-Gm-Message-State: AOAM532hwxIN7fDCXIaLcOKEG2LAdDLgD5jrQuicmWdTyJUnvZCX4sFO
	+e3Oi/REkg1TbUvyktmVwUg=
X-Google-Smtp-Source: ABdhPJyVWgjjxfMof9k7gJP4Wovcn2f7ayLO7cvrstvEqItqzx97qTN6WiIMVhZMBaWGg34Ba+Vz2Q==
X-Received: by 2002:a17:90a:8009:: with SMTP id b9mr37886585pjn.190.1593733174909;
        Thu, 02 Jul 2020 16:39:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:86c3:: with SMTP id y3ls3040439pjv.0.gmail; Thu, 02
 Jul 2020 16:39:34 -0700 (PDT)
X-Received: by 2002:a17:90a:39c8:: with SMTP id k8mr4473040pjf.118.1593733174631;
        Thu, 02 Jul 2020 16:39:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593733174; cv=none;
        d=google.com; s=arc-20160816;
        b=fHR7akgN3nM9ebi8wOUeZmtyaX32JF+LKXeQ4kklzPzYhtIutv89X79K7u3+TTVmpo
         DmZUlWGETGoRnNPGmOQ64u9eCS+RFkvbROqGgTYYjwCzqxaykdaIHzWnWUJaLdpRism7
         VdZxWGyAZpk8TqBt1TPDLLEFGFwWicE1VKKYKzwFRSd+fZqkVJk0wNMJBx2B6ZrjgWA/
         ZjyF3Rpbg3sc0Yl/atjU0PxTKMgS9AYY4Xq1+tsApNYggAfIzhEJ/NqmYhxieu9rg106
         bh2pJpMEwNPLDCGrjnfgrn+RlwgZMNBYN26mfCf9W4p3ExHL4UVZcUJYVIBEq2XSXrhp
         h0Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-signature;
        bh=aUKX8t6lKl6VE3fnEcWtgjKc9bud69PiShCeCobiMYA=;
        b=wuK338rsZVcEGP20zQhrdh5vYVC5Ad+ZuQILKHVBEgd/EJO+zhjJpBwC0WkLMJ4mwX
         FIDSCvVfFH8UuR2JVwxhiwdX4H7mNzUm0ZjJ6aMvZAGYTVT7Nvj3r+Sp5YL6GCuFaWPp
         5ySghEo8fu1BnKGLVsfpf5wqYMq2WcXSdlFqslqlvOF2I3Wvnd3Cf4Ab1htJelW+uT6b
         30cifLJv79Hs8N+owjr++sAMfdphqqtwGo7J3nPJBJNyMz5vB91Cdf3XcovtQPxBWbZZ
         jjh3YXI5hp2merng/NF1ScmERWmu4uZu1RKrgSckm2DE3nPBZBUrptIqeFx5sgTczwrr
         QWFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kdrag0n.dev header.s=fm1 header.b=EfqiGped;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=hnVWUEOl;
       spf=pass (google.com: domain of danny@kdrag0n.dev designates 66.111.4.29 as permitted sender) smtp.mailfrom=danny@kdrag0n.dev;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=kdrag0n.dev
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com. [66.111.4.29])
        by gmr-mx.google.com with ESMTPS id d16si543677pgk.2.2020.07.02.16.39.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 16:39:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of danny@kdrag0n.dev designates 66.111.4.29 as permitted sender) client-ip=66.111.4.29;
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id B03BD5C016C;
	Thu,  2 Jul 2020 19:39:33 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Thu, 02 Jul 2020 19:39:33 -0400
X-ME-Sender: <xms:NXD-XuZeMR37LUGBjXDqnFo00b4-iImzVw5qNA57BMEwTmjPTzwSaw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrtdehgddvfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepffgrnhhnhicunfhi
    nhcuoegurghnnhihsehkughrrghgtdhnrdguvghvqeenucggtffrrghtthgvrhhnpefhie
    fhgfelgfdufedvudelvdefvdefgfeiueeufeegteffudekgefhvedtieefteenucfkphep
    jeefrddvvdehrdegrddufeeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomhepuggrnhhnhieskhgurhgrghdtnhdruggvvh
X-ME-Proxy: <xmx:NXD-XhYoRgFHzPYXbeGD-BtTtrNjTFYOUXne_n3qQGL2f1oKk0rh3A>
    <xmx:NXD-Xo8ti5JKCJ2v9ooAJOhFnirmiJCVOW0aECqr9A1zXcbSXDEU8g>
    <xmx:NXD-XgpM6LaAjKo8wnOoOkcHSysMIFsHDUGtSLOrqMBJQ_vlCh9lCQ>
    <xmx:NXD-XqdJ7Lcm-mxjvRYKFuf07E542AmxUkvWXIi6T4nW9AIU-jyp_w>
Received: from pinwheel.hsd1.wa.comcast.net (c-73-225-4-138.hsd1.wa.comcast.net [73.225.4.138])
	by mail.messagingengine.com (Postfix) with ESMTPA id F0DB73060062;
	Thu,  2 Jul 2020 19:39:31 -0400 (EDT)
From: "'Danny Lin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Danny Lin <danny@kdrag0n.dev>
Subject: [PATCH] kbuild: Allow Clang global merging if !MODULES
Date: Thu,  2 Jul 2020 16:39:29 -0700
Message-Id: <20200702233929.181409-1-danny@kdrag0n.dev>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: danny@kdrag0n.dev
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kdrag0n.dev header.s=fm1 header.b=EfqiGped;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=hnVWUEOl;       spf=pass
 (google.com: domain of danny@kdrag0n.dev designates 66.111.4.29 as permitted
 sender) smtp.mailfrom=danny@kdrag0n.dev;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=kdrag0n.dev
X-Original-From: Danny Lin <danny@kdrag0n.dev>
Reply-To: Danny Lin <danny@kdrag0n.dev>
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

The old reasoning for disabling Clang's global merging optimization is
that it breaks modpost by coalescing many symbols into _MergedGlobals.
However, modpost is only used in builds with dynamic modules;
vmlinux.symvers is still created during standalone builds, but it's
effectively just an empty dummy file.

Enabling the optimization whenever possible allows us to reap the
benefits of reduced register pressure when many global variables are
used in the same function.

An x86 defconfig kernel built with this optimization boots fine in qemu,
and a downstream 4.14 kernel has been used on arm64 for nearly a year
without any issues caused by this optimization.

Signed-off-by: Danny Lin <danny@kdrag0n.dev>
---
 Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Makefile b/Makefile
index a60c98519c37..f04c3639cf61 100644
--- a/Makefile
+++ b/Makefile
@@ -772,10 +772,13 @@ ifdef CONFIG_CC_IS_CLANG
 KBUILD_CPPFLAGS += -Qunused-arguments
 KBUILD_CFLAGS += -Wno-format-invalid-specifier
 KBUILD_CFLAGS += -Wno-gnu
+
+ifdef CONFIG_MODULES
 # CLANG uses a _MergedGlobals as optimization, but this breaks modpost, as the
 # source of a reference will be _MergedGlobals and not on of the whitelisted names.
 # See modpost pattern 2
 KBUILD_CFLAGS += -mno-global-merge
+endif
 else
 
 # These warnings generated too much noise in a regular build.
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200702233929.181409-1-danny%40kdrag0n.dev.
