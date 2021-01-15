Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTUHRCAAMGQERUAMIOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C7D2F8723
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 22:06:23 +0100 (CET)
Received: by mail-vk1-xa39.google.com with SMTP id s127sf4747916vka.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:06:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610744782; cv=pass;
        d=google.com; s=arc-20160816;
        b=aHPcLn2ov+09bAiDM7bpff4/3/ImzXcPFkCPe7lncR3QaPzRYOqGtAkR9nM9hvXnxu
         ztZNyS6clQ76UlaBH3nv2+kgZuk8DK1tcxMJSZ4eZyYl7wxfbxACJMtFyWU/HOLYWJn5
         HRnP3X1FT+s+RRjn/pjPNLUH7Q8ZAiYmP5rwEBxjbWpyWpHXPHN/r5vHuhyqc5+I2ol5
         6rr0+3NuhMJgapucAKiB6JQWDKnDSio0V9/Sdpf7oNSEei19SJcRaj0FfU5/uWHP1iIc
         Rb+h9M8HmIyclVEBJ+XNZqINZZJE5dBTlIioG6b+/9OrU6uA4eOMl97JnXrdiP/JDtpK
         v4lA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=UC5t/qBkTI98K2T/N6sPZD5VSC0zSrjfM7sR8l2B4dk=;
        b=cDXe7DBHeffzxgAR6/Gq2uj6xT4JHK0OxqUdZHdDjA0kVDiJf6t3fxhzNq8Dsqy8Gk
         kPcktWt235RESoP0YQMQ1G4g/1QjhmpXuxPGuZNnVuC9sxZQjEw0JbZn42PXXUgE1ytj
         fVGxy8cfdCvEXCvXo7OTVGzuK4y8FEkhptfU3++kA4FaefcmArTmfNSA4W04PRAmHWMq
         CMHUnLw31Qmfo7qp/pXMIJKi+6Hf9uKimSkEFsU4gsTpw8Wxk3P9jcT8vNLRXf52M6vg
         pV84VHb/SRCLM0YxhZmTmVGIQFWmACSlvgj0eBnv0kafJhn+DJD6t7pvIk+XOSw6alzj
         DdIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YtUabltw;
       spf=pass (google.com: domain of 3zqmcyawkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3zQMCYAwKAOIRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UC5t/qBkTI98K2T/N6sPZD5VSC0zSrjfM7sR8l2B4dk=;
        b=ffCf/TLe3To8KeHFhL/ygmLEvR70QLlQBJxi6DCTWpXpr66ltONn73qNe4Wz2YTUJK
         k6wUIrW1JZP2mUlpRScKdEqslSx1ZjeQJgLFe2N4k9BaErL+LV/B/850FWRl3uWOeUe7
         dTdGjF7LVshZhTuY4tsHrwk9cFs4r8KfoHjzdsCINDc0le1PwbCySSGc8/PQcKxyXQer
         qJJWuZZPZ5HwR+xHLOZK5UhlK/GkMmCGlm/9EVMGddX4qdD1JzwaLceFJ8dspWv75bKp
         7vziVOju2tn2C0SX8pm+kl4XPLjQ7DxQt9ce3xeRpsLT/Dx4kN5R7SOJMVHYnnYK70aO
         4q7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UC5t/qBkTI98K2T/N6sPZD5VSC0zSrjfM7sR8l2B4dk=;
        b=lgGgl5wxNH3a1ZXb5RSqo+0Gm0Qatk9zX0/2/8a4wkGG43KcNqFCSl3k8WhD0bRY9G
         pggQC1be9GdbmoJfhm6sK7fTTnUQBMdLSNmWnA5xrq+Y6U1DxCXQyo21qEafUgEiYekg
         5KJ+L5hD6RI0acbzF6JRzTIrk/a8hu/LSPiGw2AxGle0FrL/YnaPHIQVGnNtOZpLjO3O
         ijTsYXKqcX6wp1OX8oEqzGK9eUMCNPcW+WvJWNpR/reIa4PmV86xDzZgSfLxLUq3XwCv
         PGYVRhfw0A3oKvwD/FAGbm5CEVdwSW5WtNq6luTYSHrutzYuuAmeGaXNnAQnFYnjJKjU
         gtNQ==
X-Gm-Message-State: AOAM533Kb1WMEQTmGlQ1iEq4E66ytxn5G+nr24I7rw4is97MZuaNUVk7
	D2jSUTiAmhK7nSjhgw/0KiQ=
X-Google-Smtp-Source: ABdhPJzefzwfAwK9mIkmiMKTbNbOrjkDFQcySKWYv4QuVIuHZ+D0T5kq2JP69gn4E36dSEqAgQdNpg==
X-Received: by 2002:ab0:274b:: with SMTP id c11mr3341342uap.85.1610744782413;
        Fri, 15 Jan 2021 13:06:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:5f0b:: with SMTP id t11ls611746vkb.4.gmail; Fri, 15 Jan
 2021 13:06:22 -0800 (PST)
X-Received: by 2002:a1f:1ccf:: with SMTP id c198mr12511202vkc.24.1610744782029;
        Fri, 15 Jan 2021 13:06:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610744782; cv=none;
        d=google.com; s=arc-20160816;
        b=CiZPKSF38ZYmnz51zLEJX7c/mf4NZbQEmgE7OZW9GGArqPaRpGKdkyGVxcvTrFOPu5
         qEM3Tn/8gTW+zJ/tdWixmeSZj8nPE6VI6rr/EfkBCyGW9NmJPawSsWlHQQDpKcFb003i
         kk/MXWI+H67B2yaD+A9rquFZAQyO9hbcGLxZioWy19afG8DuAOqAwSziP7NgePmBWUin
         5VXHY9iANDJNYebH2veBHoscGhwCf6QxMK6eZzST8wR2J/DBKvWD43HH8z6GNyEVaWA8
         kcsUxkLU7r2P0lQHFlSckFbG5HPru9oKdqwuVCnr0iP1mXPqqZ/Mqovr+HJxWjP7PYFL
         bhkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Pk+/3vhHV1xEG9unAxvM2nHFQRHjFNkladeJ1DpyMEQ=;
        b=lEhnjHDqLlx6kyH5yzx8Ylpfbr+/IvS8sQNK/uZwxMwIcdsPGJE0UWEa11mlVKXwMG
         TzGVgNcWf2+/SxUmQXILlE4bIVfDXQINJnPawWrp+BafC7fFPP0aVH8fWs+T9PysaP7f
         mMYc62a0mF0vtZLOWQdzXp/fPUDI03nBDPXLieiNP7UKWuCLPXF1O77YtqADKkS8nSk/
         OEWyXYsjyQRoXZaE0l6zDzFhNoAnLdPelwHpQA3wl5m/6hsePnqxV5nepzaqR9zo6R9i
         aziWd7kN3Mw3GiaKhxgbmCL0ay/i6dnm2780Hunk/FYhi/qVe/WBFUWsWK/r2I+veZ5P
         4R/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YtUabltw;
       spf=pass (google.com: domain of 3zqmcyawkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3zQMCYAwKAOIRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id v23si748101uap.1.2021.01.15.13.06.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 13:06:22 -0800 (PST)
Received-SPF: pass (google.com: domain of 3zqmcyawkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id b123so8156255ybh.17
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 13:06:21 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:16c5:: with SMTP id
 188mr20566201ybw.62.1610744781522; Fri, 15 Jan 2021 13:06:21 -0800 (PST)
Date: Fri, 15 Jan 2021 13:06:14 -0800
In-Reply-To: <20210115210616.404156-1-ndesaulniers@google.com>
Message-Id: <20210115210616.404156-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH v5 1/3] Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YtUabltw;       spf=pass
 (google.com: domain of 3zqmcyawkaoirhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3zQMCYAwKAOIRHIWEYPRMIVWKSSKPI.GSQ@flex--ndesaulniers.bounces.google.com;
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

From: Masahiro Yamada <masahiroy@kernel.org>

The -gdwarf-4 flag is supported by GCC 4.5+, and also by Clang.

You can see it at https://godbolt.org/z/6ed1oW

  For gcc 4.5.3 pane,    line 37:    .value 0x4
  For clang 10.0.1 pane, line 117:   .short 4

Given Documentation/process/changes.rst stating GCC 4.9 is the minimal
version, this cc-option is unneeded.

Note
----

CONFIG_DEBUG_INFO_DWARF4 controls the DWARF version only for C files.

As you can see in the top Makefile, -gdwarf-4 is only passed to CFLAGS.

  ifdef CONFIG_DEBUG_INFO_DWARF4
  DEBUG_CFLAGS    += -gdwarf-4
  endif

This flag is used when compiling *.c files.

On the other hand, the assembler is always given -gdwarf-2.

  KBUILD_AFLAGS   += -Wa,-gdwarf-2

Hence, the debug info that comes from *.S files is always DWARF v2.
This is simply because GAS supported only -gdwarf-2 for a long time.

Recently, GAS gained the support for --dwarf-[3|4|5] options. [1]
And, also we have Clang integrated assembler. So, the debug info
for *.S files might be improved if we want.

In my understanding, the current code is intentional, not a bug.

[1] https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=31bf18645d98b4d3d7357353be840e320649a67d

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---
 lib/Kconfig.debug | 1 -
 1 file changed, 1 deletion(-)

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 78361f0abe3a..dd7d8d35b2a5 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -258,7 +258,6 @@ config DEBUG_INFO_SPLIT
 
 config DEBUG_INFO_DWARF4
 	bool "Generate dwarf4 debuginfo"
-	depends on $(cc-option,-gdwarf-4)
 	help
 	  Generate dwarf4 debug info. This requires recent versions
 	  of gcc and gdb. It makes the debug information larger.
-- 
2.30.0.284.gd98b1dd5eaa7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115210616.404156-2-ndesaulniers%40google.com.
