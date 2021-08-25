Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOHHTKEQMGQEAB4NURQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id D19503F7D97
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 23:18:49 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id s9-20020a9f36490000b02902ab3e95113dsf303534uad.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 14:18:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629926329; cv=pass;
        d=google.com; s=arc-20160816;
        b=r2q4yudaNRFi/xoyb0Sc5jM97/hcRJmdm4AxANa96yWJZhoRqazyAxMccsC4CKoSjZ
         upmFap5j4awzQUUHSLHJPSHgBj7n3PeruPAiF8vnHE/flyImYjbXU0e82GLhWJOkdlII
         c2hUX0y1z0BH5Hu7YAoy+JRgu2Nrx1bzpnRf0JzXrLkkFnatSqjA/7GEz/8h7fjmjFw4
         j3/3SPvAZzRJ4nHqoKTPEt8D2rP8rC2k8z+aiQcfPbrhGEob4yYQ64ay3YmDjQnLhfN3
         KmhvOh3JhGSVSQd6q0OV44WefH9wCBLjK7bAuIzgeXU+vOyzCSbg1k7fiLBqAErB0Qs/
         Hnuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=EfRRZveeFfGFeEuKHlXsha4utjYj2wjjKEZJAuxmxyw=;
        b=USLiMjFxDBBbBtdE+RWlGPMK+qMvatXb+Syay7+kw+MsM6fd1FyRXvXSyJhNrfkLLp
         58oyw0+UYv9IEOHmPh3NikP7qMYslOhubNPu0p0LIJV4DEWQi/y+zd1qiUg4VcCF9GQT
         QgON3z8Ve4t6Xmhjd7CP/QfdW844Bo42u7+mOgwPc2Hfsxv9yrp8SnM5Hw5LfuN6TyKj
         gl99AH1FZ0g+wyjgRbcnqhKt8t7dQMJbRvCxp1q5nKvNE9Y04aVD7Sqd7cseKKJuK2qk
         0AAhXgl2B4zO+sE43/r0BA6tkx7BXdYUofqAHKvXO5D5KFWrb0rW6mTCmhdWhKcSkp+Z
         cwmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="RPAfDw/9";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EfRRZveeFfGFeEuKHlXsha4utjYj2wjjKEZJAuxmxyw=;
        b=mQBaeJNbalMU1E0IKpwMrA1ITjXm2cdrRsIpe5uImFnTAxdJPXgC/260qGAxvAZVpK
         ec2F4aR/sqMZ07fQHMQEGJdPIj98PBnMDhDQZt5hmTkdl5VtX5ehBHaTWkAkOK2ssDxN
         WjkX7550Q82RR68KtLRCHlbNsWXfGmqbZDI05FFYeaqKLaCkmI/xrbbqg9aY+629amOO
         reV7Sdoz/ZIJ93p8Gt9tXSRPyX0opQl4vBi+XS3LvXItQu913SzyVDPNTi0q5tHt9ur7
         FKjbLkcbPaeG4T7ISf1fSPD2bSFq8K/MLr14n6HGJO20rzdSQq3U25CTf0fIWuALEKL/
         OR4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EfRRZveeFfGFeEuKHlXsha4utjYj2wjjKEZJAuxmxyw=;
        b=HxNxl47Qutc3rOgfRllASuxjZjsNCrWRxNPi3liun/o+e/SqIdhWf45wRVmWsJarlF
         dHEgq8IbG572I35LAZCTa7bcFXju09dK4ATMljic84lh8SnDL9YxZcw3Jyz1yoH5+wW2
         hjg9o//7+k70Bq/mZi1DjNB10o1Gzwm0OgIGGn3E6XaUm8ea+vQqux5o7erdxPNOFVdU
         NHyhRd7RfWaPokWi8BDu3SE9l/5oIPVIQkMiIImimfR8Z8dUw2BH/MOMRcXM+giixyEp
         rYMP/Mf5EVi1aFe8eLRMBZ6096npkhzqMyc5HOiO5+YjMkTDmmq7ti0AaxpnjitAHfRl
         tcKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GEPydrtyqx9p1WSzzj1OfFVkt/Lq46He2V3YbYkIsYyIuagxr
	5uv2ur1vQ1jS8AZzD63aizU=
X-Google-Smtp-Source: ABdhPJzGIpPzITyJcAQ5ZwTEWVo+3hOBZgFvxkk7y90M72kTzEbfhatndSKPH1Tup9dxiKJ32kSgEg==
X-Received: by 2002:a05:6102:22e7:: with SMTP id b7mr421675vsh.24.1629926328879;
        Wed, 25 Aug 2021 14:18:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2429:: with SMTP id l9ls682287vsi.10.gmail; Wed, 25
 Aug 2021 14:18:48 -0700 (PDT)
X-Received: by 2002:a67:1d07:: with SMTP id d7mr538888vsd.25.1629926328425;
        Wed, 25 Aug 2021 14:18:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629926328; cv=none;
        d=google.com; s=arc-20160816;
        b=uQkjl1Pt3IwAh/eThuaVUMPn/+sQAwf2JDz2zThtEyrtRHGgfnsBSGOGA+3nEjt1SB
         0IhLY3ZeWbTQJpPSxcZBz+eyd6uD5PEEM6GPB3l5M9sfFschkRJd/r/AB4qIzRyRN8g/
         XCbkv3yr+ogFVcdvyBA9hgqJRKwVZQbfBtLGnk+3hDzOMOzG3GotwCpxDwygwETJgQMn
         5PAy+Soi747wbly0cxjKo6eV2fJ+NU3VNlvUWiyHmOmknDCMDyNkWsyPPkVHMCp841bD
         nSpnTw/XQkfcuEY1T/HNg6am/Gx5E5isdDvKKfXQXrF+3/vJ14JxeGPcCMcYAbL2LGyu
         klUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WoXXf6N9V274asOIejHa4ekQ0fEvPNsk1n/XA4PzS3g=;
        b=CelrBxXu+wlArn1ja+Jc90R4Wmf4bGfBmSmcSwRSS+GntWjz/NucGyICCGAsbIQe7F
         gqIJQZBevoTNJS53AHcfuaqWouDKYJ6LRL53iM5ckPadOPJHpwY6sHmPVltvBRZ3HiZS
         ol7u4q9kgh2FNQD9Clvw9J5ZND2TLheXGWewJp0xjLvGSr9St6+EvcEW2ukR8Bq4jWg2
         L6SyaGj4AL02T803EdUory5aSCKSYYrshM/dieDEPcoiSh3N/JpOHlkNNOY82yJ4HuKR
         RvyHF78t6bfNfiBfK0bpwS77zmI6ediWMGzxB7/REiPs8BpxgLZAlZmx3Pv1j+JWINNc
         KE5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="RPAfDw/9";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r11si62361vsl.2.2021.08.25.14.18.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 14:18:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AF668610CB;
	Wed, 25 Aug 2021 21:18:45 +0000 (UTC)
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
Subject: [PATCH 3/3] Documentation/llvm: Update IRC location
Date: Wed, 25 Aug 2021 14:18:23 -0700
Message-Id: <20210825211823.6406-3-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210825211823.6406-1-nathan@kernel.org>
References: <20210825211823.6406-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="RPAfDw/9";       spf=pass
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

This should have been done with commit 91ed3ed0f798 ("MAINTAINERS:
update ClangBuiltLinux IRC chat") but I did not realize it was in two
separate spots.

Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 Documentation/kbuild/llvm.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index 06b8f826e1a3..683f8b7cca0b 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -114,7 +114,7 @@ Getting Help
 - `Mailing List <https://lore.kernel.org/llvm/>`_: <llvm@lists.linux.dev>
 - `Old Mailing List Archives <https://groups.google.com/g/clang-built-linux>`_
 - `Issue Tracker <https://github.com/ClangBuiltLinux/linux/issues>`_
-- IRC: #clangbuiltlinux on chat.freenode.net
+- IRC: #clangbuiltlinux on irc.libera.chat
 - `Telegram <https://t.me/ClangBuiltLinux>`_: @ClangBuiltLinux
 - `Wiki <https://github.com/ClangBuiltLinux/linux/wiki>`_
 - `Beginner Bugs <https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22>`_
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210825211823.6406-3-nathan%40kernel.org.
