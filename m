Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBV6KU2AAMGQEAD7NW3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 741CC2FEFAA
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:01:27 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id u9sf733889wmj.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 08:01:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611244887; cv=pass;
        d=google.com; s=arc-20160816;
        b=vOIThglq8iqfTslXfDOnedczjsbpzsFILc5UUEKAS6D+ph+pMBc6lcZIvTHZKfpsom
         NS0A/NM9zUDTyx67XRixmoppWwDNFI0iFdcVP1RwtJO23z+4cIbT0HTvrw+lVv8L4qEE
         RRiqO3WTOPHZ+ZhFgTqz8tkpCS4ANQpxLWLX8oSGFAMBukQq1tO63fIeSU96L6MheNaZ
         sgXwz3KChx8ItL5UqFpZLNGvZ++7biGDCbJZvtwsjTafzaONRw/611R8bevgjGG3gySG
         p4tyRA1Y5m+XH+CyuxxusDQGgxyozHLNLGnpMaDMNeK6LcN2VNHBVLzsTMZm64eYrXTc
         68iA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=4MoI2B55YfL9yKAP1bBVj3pwbu7EPcoD00GncMAFxA0=;
        b=d3QuP0AfMp0P8cS5KTd5Crr19zDnvX+uUSJFxOxHIvvjK1pzsjm2C0p+CUZ5uRGWlu
         8wK/iggeA16wMVIlxU6AbEAnZSE2zA5eN8TqxtGm5FQbuT/gS/rE9HjJzBijWWEgQ1wL
         VS9n0F91RKVHUIEKqPuztJRi0/VtFa7uInhfcN86fGDZhBrRsgfhPLWXmEoYR0T6mS4u
         BSaqEgBYFPoTR2jRXJcK2Bk4WDIUsdg3JB+Dm/bvKmC3jqALCUc9NPHb7DR3Ra1GMA6D
         RGNciIly9eEkhlT8/wFN9/6enrGUUWDblrYvijmzmJ/8DfnELsrA7Z1S1XUuLJsyKx4l
         xEWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ke5mLZm5;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4MoI2B55YfL9yKAP1bBVj3pwbu7EPcoD00GncMAFxA0=;
        b=h1/YysrNP1shePLqx2C8pW4nTLGu49ZVB4w+mIAceZBrWBHyuea9VKSagqxwZzB3hJ
         x4xd1UzKTpxILgsacz1PFx+wvnWHRl8ajSIte0IxJHqXEQav4b/88KvBpgeG/PjsxbFE
         WSM+FEgcNoznzk5y1oZTE/uOE1R161ZH9J+QbZIrih9EvHM7BKrTbOZA27YYQHWpEVhJ
         Wx/O9FcArndTwYXw1mliMI5gIYWIxDywZn6tIlabR1h198hgoM5UQ1oE22w0QvlyFWxm
         daJvpuy2Rzn2IJ7Srs1LpYncRJL2ADNNOlswMzBOxkcocgt+tZLUhemJt1yY6fnXCPDR
         BGJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4MoI2B55YfL9yKAP1bBVj3pwbu7EPcoD00GncMAFxA0=;
        b=NrQX8Tm2M+AzlLVbtiPLgc0EmXycml0mSvALZZ16n87LGLpeJgZV+i1DS+/S+4C7r1
         QrT0AmJI89+sXrHhxIqwR9uiTZlaF00+meEOAJ6l3gdLTvNmkLRjNhUjEJLs2qlxak+a
         F1UJ3/eVUrdWleHjsa2IBXqjcQT+XvJEKBC/TMTYzjs+kfeuiy/SAV5TiWwmAs2p1hm9
         /94MLM9dgQPRG3O6JfLB8T2EXMjgYkEsYOdt0fLiIzykAo0n3i8BHl709tRqy4S29IZ2
         vYdbQicTYluG6ot7Hy/knp5TMJEGDQREFGGfoNLGuUjSTdv+7ACUYan0Z8DIOfilFnu7
         IF1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4MoI2B55YfL9yKAP1bBVj3pwbu7EPcoD00GncMAFxA0=;
        b=OGi4Y6YkDKrgpIWfdd5+qfbkBDTgffuqMI8RNq1dPpvcLuxt/RLX847FFbSKJR6eHm
         gK8wFpkDfbTagKebXL5lKMaq46VAR89IAS3cGbNgk7M//uH9HEri09Y6/EoqfQVZLgg5
         Z3TFHW1ZDoApuVj0o21Op4YS95AjVL0CKh5HSMCkOCd8ERlfvL5ph7RUM9HaltKO2MCI
         7MsZWnxiormPz1B/zXAyH+qnEjmOgLag0pWyTPJNRR3Z2+iIBjTKI4brydZHO4VyQ8eo
         LHAPsIC3DTsSUv8BQPAI3O5tG6zZuq1IkZZSl7raZXvovXtNynkdVuKFcqCv3P7/pl7A
         P55w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53228UHkJZfJdyRMTK6/SXUhK5HEDnStsGOM4yNme/X0IN0B0W+1
	N5FFnfIuf2fS7PkUqMwB/Xw=
X-Google-Smtp-Source: ABdhPJwdL1lU7A/3BSKXGw5aAuR1XOVbNh7BlcAkgwAZE1kpR8eQYgS1wsxPyduAK7/0uJZhO1+yDw==
X-Received: by 2002:a5d:510f:: with SMTP id s15mr128515wrt.21.1611244887197;
        Thu, 21 Jan 2021 08:01:27 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:385:: with SMTP id 127ls1607804wmd.0.canary-gmail; Thu,
 21 Jan 2021 08:01:26 -0800 (PST)
X-Received: by 2002:a7b:c09a:: with SMTP id r26mr70756wmh.64.1611244886308;
        Thu, 21 Jan 2021 08:01:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611244886; cv=none;
        d=google.com; s=arc-20160816;
        b=dEtoshNAiSY2pvLhXiPfnurukN82WoWjbM83f6pmOZ+G6xL/u4BPddzyz+rBvYU04S
         eR6/yWqGL8lPU6Mi6XKzVEDLcJQ3wyMSRw4BaQr+aUeShYhYbJMWG6YY7NfUb/Tm0Hva
         OebVh9T5yQq8KNIU3zhNcT/GUB8NiqRRBTsyVXjPBqxrl4fYWghwlLGcsNSP3tvMG6+o
         HUu9ZYEAM7XQDtWIAyLGH2P0eB3Yu7MFJJfyv1HAxLKCiramkLI9KqRHg3xDLiKzkyqR
         p99cQ4YetR980pATZ2PieIEa9IGAraIru/6cstCQ185U7yGWJKAduu+dPGRpS89quMgv
         yt9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=J7bgRKp0teiSnNGg4UCSmhQzrOjTg56xRkU9D9eD0Ps=;
        b=X5AAzXWJeneBHRPTHt6/yUWdcjCNS86kecryIr/JIT5T3rq8t4k3pCRMozuScWapJt
         waBv8TaURsFUbbQ21YI8fu8w+7d5BL1opUxeZWJkDlknnWy+wZZB0X8pn+FQBpDUnYdK
         M+C/DI8XmJc6VMKqxVKDIBJ2xitEUoL4sAVvoCRPdrJol8lifoopZ3HA4Dy9XBLAjWjX
         MvFKSiQaa4/xe/tfrixXDQmCEK7JgvpzW1SAn/NCWuB5zi19u/bWEe4JmmBgodn1lqc/
         QROGxRbQdMfYLYxi1qqKb/hwVg06IblQbWxy6ZUwp2tJ8t48n6xcEbGbRYH/bmiQaH7y
         TSRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ke5mLZm5;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id w11si275636wrv.0.2021.01.21.08.01.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 08:01:26 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Received: by mail-wr1-x434.google.com with SMTP id a12so2252208wrv.8
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 08:01:26 -0800 (PST)
X-Received: by 2002:a5d:68ce:: with SMTP id p14mr135945wrw.386.1611244886023;
        Thu, 21 Jan 2021 08:01:26 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2dca:1300:4982:bb9c:f32e:b0de])
        by smtp.gmail.com with ESMTPSA id m8sm6424482wrv.37.2021.01.21.08.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jan 2021 08:01:25 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	linux-kbuild@vger.kernel.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux@googlegroups.com,
	Joe Perches <joe@perches.com>,
	Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>,
	Pia Eichinger <pia.eichinger@st.oth-regensburg.de>,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] MAINTAINERS: adjust to clang-version.sh removal
Date: Thu, 21 Jan 2021 17:01:15 +0100
Message-Id: <20210121160115.4676-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ke5mLZm5;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::434
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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

Commit 6c8ad4427f6e ("kbuild: check the minimum compiler version in
Kconfig") removed ./scripts/clang-version.sh and moved its content to
./scripts/cc-version.sh.

Since then, ./scripts/get_maintainer.pl --self-test=patterns complains:

  warning: no file matches    F:    scripts/clang-version.sh

The CLANG/LLVM BUILD SUPPORT section in MAINTAINERS intends to track
changes in ./scripts/clang-version.sh; as the file is removed, track
changes in ./scripts/cc-version.sh instead now.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on next-20210121

Masahiro-san, please pick this quick fix-up patch.

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index e5d7cf38ec82..aafbea806a82 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4355,8 +4355,8 @@ B:	https://github.com/ClangBuiltLinux/linux/issues
 C:	irc://chat.freenode.net/clangbuiltlinux
 F:	Documentation/kbuild/llvm.rst
 F:	include/linux/compiler-clang.h
+F:	scripts/cc-version.sh
 F:	scripts/clang-tools/
-F:	scripts/clang-version.sh
 F:	scripts/lld-version.sh
 K:	\b(?i:clang|llvm)\b
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210121160115.4676-1-lukas.bulwahn%40gmail.com.
