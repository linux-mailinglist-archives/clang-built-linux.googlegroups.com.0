Return-Path: <clang-built-linux+bncBCS7XUWOUULBBJ6GTD2AKGQEFM4M5MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D64319C82B
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 19:38:48 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id t12sf3947636oih.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 10:38:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585849127; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bq3oG42yPN0IS/2g4vX8AlcyNN/yxxFSpmbGs5TScERZRS2tbyYJFKKuig0incmwMB
         LjSiC4XSIQeo15IQjo7B7I1IWVNH5WRx7kRrYcXUeuFR7ys/tITJtah8Ylnqbm+9eWei
         S81LitkrWKfQPXEE9YIXnF7tZWp6bG5gfV2Sit+SnIo86tNVODd4SW1vxdFcqU02Ytmb
         N6wXsuzBpTv0+1VB+cH1qqrKSHR71XihYbB/lLSV2fWmNkQVSpDyLj6ZPceNXGhtNUAr
         0on8xHwL7wddVxSNKs7BZAPRFOOVNBHE3dbejsUut9LwYb+JlnPK57VfxjYnjT14+cSy
         1Xbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=6bJ1o1HQNYlNvrxl5lUzqK+YbLUfZNNIQNxtSB+IJE0=;
        b=lTm3/hEOSP9OFfA0nW486z9W9IjuBc2N5p9lW0trwRCvFwJiaxIrpq00twH4HQwpeO
         45T8nGifKbIDU7YYuJnBZsdGLaeOXMHyglW+mR3gV5UF141g7o3abLJHbFX4gm7lHFVJ
         MqkHj59JcVuGvJxdQo5XAXSr0SIlElpT3OvdagM+Zb+ultVcaiTiBLvIMvyvJTb6zQSd
         tgGgHdaYnN9M/iItHXnfTE8JymtYbIEBnHunrko6Q/Z5t39MxmlWGCwURa6Kgb4PYP2z
         wJh6bzV8yyqU0RCXwapQ+8LXbbzAx7CHgBFpKLxQ/gAGNf8R0FvVRD6xwKiPgVAok6ej
         Ht3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XymilC0+;
       spf=pass (google.com: domain of 3jiogxgckex8pdvnud1jrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3JiOGXgcKEX8pdvnud1jrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6bJ1o1HQNYlNvrxl5lUzqK+YbLUfZNNIQNxtSB+IJE0=;
        b=etE0iB0lQy8zwO5T+HErHUE2TZFdjaODQ/BQZe/j/ZRPpOYglXbKLuTOggfLIb1Tzt
         RE1aCCJqNOxQQVSHM2UzpvDKP/62FDf/ikUXAJgNhoAx4ce0QesgW4P0ahiyDco9WOeR
         C929X9xbcXEjf2f+lSHQpJO/UzZQzU81WpiZRAliN5wTrJaLSXmrd+oHMGQKE5YgBVmF
         wSLoFq76eLvyQVyFSC7FKqHuh1U4BliPJQYpkRWLGH0L/lPp2nZsJjLixhJp1VTKhTXi
         qk83rCrSJY+TwxMqOmd1PkYgilr44vn9Zp07Q+gq8r+WTramwBlvheDAokdaDMyMFAOT
         94iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6bJ1o1HQNYlNvrxl5lUzqK+YbLUfZNNIQNxtSB+IJE0=;
        b=hM6tPt7gUaWc38MVx5gqqf3eJlxfZgMODDtWYcpHYB0N+WnB5Zpz1yfrFNZl+20ern
         5FT4RL6CTR8M7HhQUQ97mfd2YdvQdj3tcfZcSUUHzNrPyI5f4VRQHZQ796BHKA2GrtYt
         54QuJgiYlFAQeljpDJNopO+ElXdVnE7ZOxXopaEPUv4wfHD/HvXpKDOGmjV3PkbKit6c
         AfzL8QaNo4HSwNHX4bsEBVvpC+8xwjpj3yedOXclQ5kgcJmHLr2uix9Ijaw3MxuH8JKg
         hUwJlJl/eo+nrwDaALJSC8NvM1ux4Q4eQal+/E3J5KUy8d0B74o37Q0k23H9FPoc3jVM
         MR6g==
X-Gm-Message-State: AGi0PuZc6nJUZvLk+Fj0z0P1d/mEssntQPltlfeWbkXN6BL13xpckAYD
	lVxYTf8b73BHLv+yRCK+FoE=
X-Google-Smtp-Source: APiQypLAPQ9g8B2u7MqgwyxFLkCxqQnHEc7WIWp78xYWHb6uC5Cy+b3uSvPrQGGzdp30gV7W22LvSQ==
X-Received: by 2002:a54:4083:: with SMTP id i3mr85157oii.157.1585849127601;
        Thu, 02 Apr 2020 10:38:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5606:: with SMTP id k6ls1933349oib.1.gmail; Thu, 02 Apr
 2020 10:38:47 -0700 (PDT)
X-Received: by 2002:aca:558c:: with SMTP id j134mr141409oib.102.1585849127234;
        Thu, 02 Apr 2020 10:38:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585849127; cv=none;
        d=google.com; s=arc-20160816;
        b=WjIbpy6v0KSUVh/OjAEi6yJ7/nNxp7A2NSDoIjp/f+vrH7g7d1/AFHAl3zHiTLsqtZ
         NbX/4DTIa9uPXftnln8csIpzes5mcTeqDiNMkBiVOQUzSBOGQNC0suKOKPlQCzpu3eaX
         Q3fpG+4D7TGTEJVtqrs6VlbkU/38JPup3orjEwYkiqz1Jj4DdxFXefKN53R1PtNsclwO
         4SWwsDsQVFBOW3xW8obXbL5UBNq6ahViszWtfVTpvgvi/mIDsYis69wEByZANH208C64
         lkuh5YGPrnNNEp+U8/+gKZDW4eioIavJfl5AtkNPZJiLi7GTl0ReX/J8h1oM8RKhQtkE
         aU+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=NI0Kiq/sBep8uH+bGoMdp+/XVSJu96oWCrFI/ppsJuU=;
        b=Fz9VDZH+gnJ1x+l5oIXraM+hfDikq+4G8RGK5mNGochGWOmhEIsHviFmL+8/mUV7sc
         jwms5IZobcm47TQK+T8i7fkML1PC6Ht5VdzHnc2wGqbyztIp5hmfugv891pQU/QkylU5
         4e1/wZj0w8NBaPxKr2Bot7LIpq47DtriYE8l0ZXyOK2tDm3pn/L5r5gPyIdI9lHzDQzp
         fcrfkxxHXlFLQg+BBuhLA20YFv+h82z2ce6TJ+Pb5AeksbE2pl6uNxAOKW4nKA6Nla9O
         bmvPfiHhA0i3ZbCxmDSLpxIrfBB/+T0So/QgwuZDs6j6RnZ+echu3ASEXmAtAN8y6Xgh
         wU4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XymilC0+;
       spf=pass (google.com: domain of 3jiogxgckex8pdvnud1jrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3JiOGXgcKEX8pdvnud1jrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id d11si357852otk.5.2020.04.02.10.38.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 10:38:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jiogxgckex8pdvnud1jrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id i1so3525588pfo.19
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 10:38:47 -0700 (PDT)
X-Received: by 2002:a17:90a:8085:: with SMTP id c5mr4557030pjn.186.1585849126457;
 Thu, 02 Apr 2020 10:38:46 -0700 (PDT)
Date: Thu,  2 Apr 2020 10:38:42 -0700
Message-Id: <20200402173842.96013-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.0.rc2.310.g2932bb562d-goog
Subject: [PATCH] Documentation/llvm: fix the name of llvm-size
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: corbet@lwn.net, masahiroy@kernel.org
Cc: linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XymilC0+;       spf=pass
 (google.com: domain of 3jiogxgckex8pdvnud1jrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3JiOGXgcKEX8pdvnud1jrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

The tool is called llvm-size, not llvm-objsize.

Fixes: fcf1b6a35c16 ("Documentation/llvm: add documentation on building w/ Clang/LLVM")
Signed-off-by: Fangrui Song <maskray@google.com>
---
 Documentation/kbuild/llvm.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
index d6c79eb4e23e..eefbdfa3e4d9 100644
--- a/Documentation/kbuild/llvm.rst
+++ b/Documentation/kbuild/llvm.rst
@@ -51,7 +51,7 @@ LLVM has substitutes for GNU binutils utilities. These can be invoked as
 additional parameters to `make`.
 
 	make CC=clang AS=clang LD=ld.lld AR=llvm-ar NM=llvm-nm STRIP=llvm-strip \\
-	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-objsize \\
+	  OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump OBJSIZE=llvm-size \\
 	  READELF=llvm-readelf HOSTCC=clang HOSTCXX=clang++ HOSTAR=llvm-ar \\
 	  HOSTLD=ld.lld
 
-- 
2.26.0.rc2.310.g2932bb562d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200402173842.96013-1-maskray%40google.com.
