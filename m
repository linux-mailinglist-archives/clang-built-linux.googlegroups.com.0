Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMXHTKEQMGQENBUKGYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E363F7D95
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 23:18:43 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id r24-20020a0568302378b02904f21fcab643sf229110oth.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 14:18:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629926322; cv=pass;
        d=google.com; s=arc-20160816;
        b=feMdW4u7AbpOAx8mnMx6ghHDSBm++YX1UBpaCWvKOzZ6nXvg/I+pe5Vz6thXlFAMR1
         3UGvszh/SJ+PROVDpERwIf+vrMH/r3TL4Jd85Yri3YghOlhBU6dkP81Su06glGNU4fll
         GJtVB0gnNP/0bMQEmxBylAfjLQYOvA56lcmCSzg90vj/zGTJ87AfGdJh21tTPvPLuhTS
         GhcAYNf+KgBFImIX1RflgXoggJEP+e11EGU9Zeqgs1je6afubMggrBqGz5HWvf8dNIve
         0BvZDCRfhmAAoj/o11RWcjo8EOm5qAF0mFxwQBCKhNJ/ZdnYSr9h7QlhAup22dfilHu2
         R0Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=D2gIDISL8MeFCm4/5T9GX/3MFpSw26EMy5PpfHHuwYU=;
        b=pLPkhjEH50Y2n7cgbc0rnK3MVVRymgh3tzf7QAYQgfOTopRyqpSRyJWmKB/e3YkJy2
         qXRaH9c807LnxDrgnR9Lzk8ZunX2B17Vk/yQOY+Lvj1mgjKXAg8HJRzq+87c8Q2Z3x5D
         5ND7BjUxtFQ7p00UqYfxEO8GKNONWmp2p69YPGLWHPxfICkdHNtcrMg/XG+Gu04o5/pb
         SQCSQxRw1Btx2baJ7//oEIbjFUkO20TYfhb7VUxhQ+Ub6cc2jQubdZ2vtqX++jZ+wnM8
         1t87LQHVQz+I+vtGQIRW8+JZr9XA81engZJHFIgC2jolwViFyOYkYj10I2PEVjwqFUJH
         /3iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="ijzqEZ/b";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D2gIDISL8MeFCm4/5T9GX/3MFpSw26EMy5PpfHHuwYU=;
        b=Ln3KJswcJamIB2hl3RmcmWE/5rVq9vwPtG86z9zY0eg3pLAiIGwh6qQvAycpuRYNWs
         OtcNzPEc2ZSBIoacC+cSDwERBaQex/l5l7PchRAJig/waTp+ILF+ZoNQDMHUNuDyhZH2
         ePoR1PNApK2H3YEnGonVjQyeR0mw5ecSc4zjZ/Xosh8GL3pl9zdYd383oggoGpo6j/uX
         jf9N9nPXLd3dev8ARI98rUqHR8wN8+70lBlNjMKSmzfBkpcv1s6AUnwud+Klz9h2DTnf
         OeFMmkn52LXjJyy+NCOsgd/r4xNw6Fv/fZPQa/dNkwG7j0iBiu3nHR11MOhv/QlMpyW4
         HB9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D2gIDISL8MeFCm4/5T9GX/3MFpSw26EMy5PpfHHuwYU=;
        b=Vula6SMB/0HWxCAf8VQjsmk3WMZXsRRcHeFwE+nzARWYK/CPfFg84LeVN9zmVEszjl
         ACL3soxsLzV4QDTJhY7swx33uHZZ6zjRRsH5EfsPiIqE3MwbBz930a55QvcHeNnICH+E
         FtsNBiunKv7q0Mh3clvrj5PUy1AucaOERGeltRVTv0GetjN60xOKP9s+4+e9941bnEOa
         qumDRqXB/GtRFxzKxfj0CAtYMxDsKKUAVsCyelWNLGwOduKfPvh6Vd7zw1D9cVGbdqKB
         dO1au3NS4n1s7EPi07uu+Kq3bsJvFQu6CVvYzio8Flb0hkGRELpZKYOI6gH3ZYY6rO93
         M7Sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531543MrgmZm80GYLm1WpTuUOfNLgzWyxLaQizSxfeWDkVjrxQLX
	xBRwmgw8CI69jsfzXnSdXrE=
X-Google-Smtp-Source: ABdhPJyfauFIdZsjGaYnAoI3YfltyTv0dIltZ4jZeS8XNQlVN/vdcoT/Mg1GLyQM0igp6fzx59toww==
X-Received: by 2002:aca:d608:: with SMTP id n8mr56183oig.122.1629926322164;
        Wed, 25 Aug 2021 14:18:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2689:: with SMTP id l9ls977684otu.8.gmail; Wed, 25
 Aug 2021 14:18:41 -0700 (PDT)
X-Received: by 2002:a9d:450b:: with SMTP id w11mr388808ote.254.1629926321812;
        Wed, 25 Aug 2021 14:18:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629926321; cv=none;
        d=google.com; s=arc-20160816;
        b=I8wYAO/huEZM2qYbH/jjE2pjO7/N7WRNngDv92RgiMy4EccGBx6F4aqi62tGE6mdG/
         Ag1IIh6BtlfLYl16Ws7zkt+zvBk8I/e3MKprj19yKpJFF8IhRxG50qnIP8lrJXyfNI9Y
         O1RnitSD8Ado+qnlAAtYZH9kkGY7Vid82U/eLkWBU/u138Wfjdl9f7vAjZd0wgh7X6l+
         QacZYicte0lNffeQnnyYu9qj1lBDlT0NMv210tb9PcoHqAj/dEaZS/AjZt8yC6isAYyT
         FQOyoi7bTg7AzQU4O+Hv2zhnAHkOCdeYY5dNfTuTJ52LjO9yJPVul827aNSBIJGQM2mZ
         OssQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=z1xbTFHZm1gJjwMdjtt0YyqH5ThHxSrZE+IQl3iuoAo=;
        b=WTXbxFp+V9u66BatZZCc6PPMyc0ZzKqe2W5iIVjFYpDY2FtaGURKoeJmqgZLeGFa70
         mkVG4Nt7oHeFLRGdLJ+KjEMmkTmBRdlPMITkx4hf3u01I/yqWodmUPKNm4rKEYWkeWUl
         fJr+9uzAq4QyHVn4AMStdPgOVqbMtC6srnPAqUovw3AaLnxJJCrwiLyW0rmPP4+iSIah
         TNZ+cFZNR04m63P+rhtMJMfnrpbzwg5sanlgHYMEbYIGdaL4po8lclc0pUAWF95W91UU
         QmHsYBSwWaHgkQ7oDk6iYfkJQ8kV2EEUfNMf+1mDyeVoKDf8lnbJMsocWTYZDWq9xkYe
         EBbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="ijzqEZ/b";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s20si115293ois.4.2021.08.25.14.18.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 14:18:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 42D9A60E77;
	Wed, 25 Aug 2021 21:18:39 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH 1/3] MAINTAINERS: Update ClangBuiltLinux mailing list
Date: Wed, 25 Aug 2021 14:18:21 -0700
Message-Id: <20210825211823.6406-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="ijzqEZ/b";       spf=pass
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

We are now at llvm@lists.linux.dev.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 MAINTAINERS | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index c6b8a720c0bc..8e36f55430de 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -4504,7 +4504,7 @@ F:	.clang-format
 CLANG/LLVM BUILD SUPPORT
 M:	Nathan Chancellor <nathan@kernel.org>
 M:	Nick Desaulniers <ndesaulniers@google.com>
-L:	clang-built-linux@googlegroups.com
+L:	llvm@lists.linux.dev
 S:	Supported
 W:	https://clangbuiltlinux.github.io/
 B:	https://github.com/ClangBuiltLinux/linux/issues
@@ -4519,7 +4519,7 @@ M:	Sami Tolvanen <samitolvanen@google.com>
 M:	Kees Cook <keescook@chromium.org>
 R:	Nathan Chancellor <nathan@kernel.org>
 R:	Nick Desaulniers <ndesaulniers@google.com>
-L:	clang-built-linux@googlegroups.com
+L:	llvm@lists.linux.dev
 S:	Supported
 B:	https://github.com/ClangBuiltLinux/linux/issues
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git for-next/clang/features

base-commit: e22ce8eb631bdc47a4a4ea7ecf4e4ba499db4f93
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210825211823.6406-1-nathan%40kernel.org.
