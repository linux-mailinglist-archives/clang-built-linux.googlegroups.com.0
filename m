Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNPHTKEQMGQEMHEXCBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D693F7D96
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 23:18:47 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id t6-20020a056808158600b00269838692desf559186oiw.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 14:18:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629926326; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vgwk+sVO7LeTdj/yxVv74lvqJewIuy821fhy1XSqQZBAYc2ElN8J/0Kesb34rtbpy6
         mkmb8aoGGjzRK1ibKtZPFZZmAWNbjujsxGuyGw6o3Z/JSifKSAw7T9cY1qi6TpZgei6g
         S+bK/L4sO+7/XhPWi2PbWHZwVFKBdWJ764m776yjzARw70oPk6iFE38XEFmxtH204hEE
         eaSV8yUa9XShs93IpMjazAZ1nmaV7zxTiKq5xy3z/RF+K5k4G3EN14URbUJ69ufHhKHJ
         kzKABRKUDp+7QiyKrh3XE90LpDQr3XHenKymU82pd5eSUrvZt/yl9CKYuyPYl0Bpn4Rr
         m9uQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=P+d0becJv8i9HARzXxDclehrM6tQqr/1hB1cQfJfsFc=;
        b=O0itXffrG8D5mh8s+uwjKQgXaSQocHalbj2k8SjKUCTWLsNBdxH1cGoo87onRQXTzd
         sjfNtWa7DOx7LhBprIBcg2EU/8QrRaNitkuRtnZkJbB+FJP90x9xlK1ae2LEkxRIXe46
         4yjX4E7w4NTvON8aPVXX+sT0dZMvXtI+f4UUiRARtCX/RiDwT/SyPAmwhvZsBEMaNRt0
         jnnKZrgfVc2Sb2RYScu71PHHbjCCvgcGoSK2T/odU7KQ+Uu7pQMlNB07fts1G7FtOMb7
         wKrFCeHfP0hK0ngeXEjMG7JlWzo00wpxX1FV62KGlP1r6i4+R/xn0z4YiKXGTjTRIzaH
         Ifyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Fw+wBESN;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P+d0becJv8i9HARzXxDclehrM6tQqr/1hB1cQfJfsFc=;
        b=EWJ5xA8Swdd0zONTYyZqgmXpajRMszDcdk8V9uAWvHYwEZqARyibmUr0SmWsMM7ls8
         QN9hZMhsOS/3s9lO5JpItvlohTNAjr0mfsgYy+8/dqOOG2DdGpYBG9WUq7acmnVyS5TO
         I3h3jKfdOcOsN0M72l2aTXfG45VspPaXQcOi1c98Ke63FLw+m3zsOn4IF3taCL84mPwA
         XM6Ua+QbE5ugG8AXWeUhEBoSBQ+Sxnmyp1UVhX4l640dUSHm42vq/wWMgoe5F+ZdgFv8
         JC8I2KCKD/N1bYlyOTNjfP/qkiVE1K3+95nkN+7U7tBWT9gx3XtpGJhd7Umqhr8BhOCc
         /5Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P+d0becJv8i9HARzXxDclehrM6tQqr/1hB1cQfJfsFc=;
        b=JHTlL1PYHej3PANR0g7BTmZU4Gylau71FJ0vpk5ThDYm+UFbXBopIjLZjHVct2fnIm
         xZ1pfv2oQqfEtMRRpHOWhfIbU2lklYhEWQoW3BxdwYYwIkv3V7X4rrvF6buGTJiKg6IK
         UqTWCpaFjfe9KrvUnczs1kh1pDY/4/n+hlznAYOS0jglBZ4IDgeBOJxlFjzjQLeHZvhC
         Rt6yb6+o0ucYzPus3sLEc2Kg8t8GG+m3+612jv4NEipvnK8DahEtK4TKqgDde1XpVieG
         XWdyBmYQ0F0dyNBwEPX7Jv/DdwrlOaQydnmMVqOtmI7OvkZr4D9fUtVoOwtZuL33wt4R
         L0nQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xqW2qoclc72d0QLEpRDisOuAlZUY1641ZyhEr3jJ9XTuxa5tO
	r+0JsayW157P3s23ZDl9aVI=
X-Google-Smtp-Source: ABdhPJwrfrCgOrR/NW8/va4bdhyDANybUUWow0cfb+cyQ65nPOwcBqqfsy9YCGIi2V1JAVFeDDqKLw==
X-Received: by 2002:a4a:434d:: with SMTP id l13mr274824ooj.83.1629926325970;
        Wed, 25 Aug 2021 14:18:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:2143:: with SMTP id r3ls986430otd.0.gmail; Wed, 25
 Aug 2021 14:18:45 -0700 (PDT)
X-Received: by 2002:a05:6830:1589:: with SMTP id i9mr404356otr.196.1629926325244;
        Wed, 25 Aug 2021 14:18:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629926325; cv=none;
        d=google.com; s=arc-20160816;
        b=M2hQgfBs/62VHxhhZgJw6sfuhzUFmw9jieS8RE0BrSndZobDO3t+OYV/HmseRo4KXa
         nCNbfWFEvYKAhRtj+tF/LvVePze/C8JrfxvM2D7pArpe8vFrrL8QDhjR4Z8CMyQCC875
         3g3zwYsThRzoSdK9e6zlF21Vg2vUWuS90jUdyH547J44NNFLkYl43bwxMl9qf/zn5/8g
         CtTzH4hZhke4Ql0q1QW0oyERkwhW631MdSfkanBNPnNVhOVRAW6Vu1suR9IJAGti5OEt
         PLy8+K8vuub5QyWl12A6FtSFWGWs/AfmA8i+IUGw6C5PlYGUyy6HcuE7qPVl+xmVs4KA
         9FoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cjP9yAkQyEy6Qno+Bh7+wjhTeU1RwLZGZDc5o1zupyk=;
        b=QNeKHQYThsrxn5DWP3FIBuFrtmJOe51uFWJvt8VH+gzqrVBt1ahisb/5KtHUtfN3AX
         bSm1se8y5DvtydG9446FyG3UdQPmgVbbTPHNJjnonIfCUNZAxmT8vTfe8kK7W3luGo3c
         Q331hA0YworLgKono8GF++p6MS0j6heXuVDmuf++LVncrxbEfKwArV8KixGCs9lnvfeR
         SWMBv/5OY3bL67w3F9ini5mGbQyD0njiAblZeUL/NtZ1JaP4xvJRz0YjMCMUoNVddUcq
         LGceC7ICaCLmnDLXeb+Qlf7pq12p4IB8M3ihS6XN8sDkDA4ay4LgwU1vWmljKj0/Xcv0
         4crA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Fw+wBESN;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n25si65873otq.2.2021.08.25.14.18.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 14:18:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B08C9610CA;
	Wed, 25 Aug 2021 21:18:42 +0000 (UTC)
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
Subject: [PATCH 2/3] Documentation/llvm: Update mailing list
Date: Wed, 25 Aug 2021 14:18:22 -0700
Message-Id: <20210825211823.6406-2-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210825211823.6406-1-nathan@kernel.org>
References: <20210825211823.6406-1-nathan@kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Fw+wBESN;       spf=pass
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
 Documentation/kbuild/llvm.rst | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index b18401d2ba82..06b8f826e1a3 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -111,7 +111,8 @@ Getting Help
 ------------
 
 - `Website <https://clangbuiltlinux.github.io/>`_
-- `Mailing List <https://groups.google.com/forum/#!forum/clang-built-linux>`_: <clang-built-linux@googlegroups.com>
+- `Mailing List <https://lore.kernel.org/llvm/>`_: <llvm@lists.linux.dev>
+- `Old Mailing List Archives <https://groups.google.com/g/clang-built-linux>`_
 - `Issue Tracker <https://github.com/ClangBuiltLinux/linux/issues>`_
 - IRC: #clangbuiltlinux on chat.freenode.net
 - `Telegram <https://t.me/ClangBuiltLinux>`_: @ClangBuiltLinux
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210825211823.6406-2-nathan%40kernel.org.
