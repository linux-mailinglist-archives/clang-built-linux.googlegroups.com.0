Return-Path: <clang-built-linux+bncBAABBMWQTXZQKGQEHJYAPEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE8617F4A7
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 11:13:07 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id 84sf12635993ywr.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 03:13:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583835186; cv=pass;
        d=google.com; s=arc-20160816;
        b=sAu2HbwRymWM8rGdRrjFRNj9vyMq7G1JgMo31UA9xNWWTNW+4sDZjDk6FxZrtJi6mh
         ZXxvH9K+7Rn0mYoWl2cYYcpuIkIgHQ3UPtPVmsxBJRdJaOI5QQRXiog9hoK5vJ6YrASq
         WE2zSMafEJBD+hTITORqzT2d9enYD9dqRLlHr3BQV1bUV1Aq0giUrdEFR07r+S2X/LtI
         Jxj+yf43JF3D3OxHIsZl0FBYSCwQCbF4Y9M7ymxXn5Z7qhPlZ44vxyLLh0y5Lsq6oWMk
         Vwwcpf2aZ0gguHEe9eX2UZE1x+fuVoJW144wV89sNwqLh1yJQhES9wYydlWlttSuQW5M
         VuXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=aPQfXqvbQuUuxXq2CxwDS0DU0VUx1XdaPpmVH9qFOPI=;
        b=q4py6UVNdIpsL0PU8zpZCyD+nnxLBz78PtnrUUyVQJ5/Wv2yW29/Ydxfw3BrtYUSe8
         OnjFTZTlDsFDl50QHl4/bD4lKfdg8guFSel8dBBbBtm2vgpYnEb+rTt1OBOvpRw81kcU
         jmbfLZ088sqC6C2mMmPkkGYg14H6KCul3E9Pk2mDl4rOPh4ziuStRbMfe/Ig6ZHBFttQ
         mbH1toZKfJoLoHicTO4rA2hZ/5ZUlQGnzqNgVA5tiJRr8+0J/Lfv8ruBNooS2uI8i/Hd
         Ze1VvPUJbsug7eS+jHQ9AYUl7YgthjqaieboCNhcsHE4sKHh3zi8lQk2iNTxV6tXc5aQ
         H0sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1J0xfzfl;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aPQfXqvbQuUuxXq2CxwDS0DU0VUx1XdaPpmVH9qFOPI=;
        b=LptKgIqkrKlh5kxOxeO8P7tMygaO9FOX5UDbfIxQzEfVdlL7f0m/VO1jXWld51s2rp
         zu4aBWric2CDjiIp/FtZKoLxSAwqLIqsThQnxEVBb4aNG9gMSt60hxMHfd+cy8ZUWR7Q
         T7iNrG23G/PPa27O3uvUBPeLyiMsouFzDh2rl/bowFjUuuXHSFNiGS7DnKfsqaLkTntE
         Ey10di1cIH/JRHR3ONMzc0qm3UsFhvJeGQsnnc9rpj/KBfBwVeSHa+ZwuEflPSF+IqKz
         Um9KWMZ1+VAv/fWddrlfrcotCBABCsnkw1kiXbezJYUB1p3VAfkNySemDirKBnVT3B3H
         VErg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aPQfXqvbQuUuxXq2CxwDS0DU0VUx1XdaPpmVH9qFOPI=;
        b=DuIKfE5LSexFIhQoBaPAstGDO78R35CSwlYoWGkzaVC5QBrdqZ7c7Jr5h3lbKVusrD
         TO2/sFcluHdUUjyQhURsXTOkYbbCQm6MW5d6HdWrflAb/DAK4uLLNh2yBEdKN/GLBUrn
         /7gRd4/TP5K9jctCSif2IdsxUGmLXo6IFJDyFXhltHE+SpyOtB6ft/uWEUBUbB4kS3pk
         S5fr3LetHmnxIsG/gj6o0+eOBao6WpynKOwPjQSmpYJQ329hv8H08vVSDIE04k1Kd9Rv
         Jqy4cCNKyNf/KngpanA+Dh5LtYDSyGqRZdF0pvOw+TWgsg/dXtIoiNAu9p8lvFF8lwHh
         h1rA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1xYriDxEz0tvh46nqDMdBFA6ZoMYummetE9JtwwGrzlIrN9tDi
	PUpVA2mZ2A7VmbwaLdL6P4c=
X-Google-Smtp-Source: ADFU+vuu1CrpUq5JwmPNLpHZQY7bEWITB8iI4IMmKLHYTgskGDH7goBiEA/S0tDYj96D61zwGmR08Q==
X-Received: by 2002:a81:4c8b:: with SMTP id z133mr21281095ywa.344.1583835186742;
        Tue, 10 Mar 2020 03:13:06 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:d889:: with SMTP id a131ls2627765ywe.6.gmail; Tue, 10
 Mar 2020 03:13:06 -0700 (PDT)
X-Received: by 2002:a0d:d504:: with SMTP id x4mr22271667ywd.179.1583835186408;
        Tue, 10 Mar 2020 03:13:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583835186; cv=none;
        d=google.com; s=arc-20160816;
        b=ryTZZj6nNUosj3KWFuQDBLYWnNFm7i/JZbKBRuSuzVo14bRxb5F2Lc7BnZPfOJg/8H
         h5oo6UulF4b89Pu5TDDaMjS3M5emtKHBEyspQozPPh/fGWvYkben4It+w/FDbZ0xpR6F
         1WTU5r9MtqAxnPMfeb6vS636HFybC3MmjbnBfh4wLA3wiRxhCypgoVFmY7oEQTnzvXZR
         /PCm89R7j/htZzlUaETKb3fkzOfK42w0kRS/OXhwlBF1rKH7lZEmwMtsVyECkcOf16Ul
         2GptQPVe4L3/yRdyVPyB9uTd5jjzeWl70CXNEqq5yJnirhuAsk8CDbWP2XnOlMs6kqe2
         93Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=9xOpIGGc+JZ3lbYb04or905H1Kt+yrULBMXg/tSCO2w=;
        b=kvwAcvKg0wJHlsVuxltCldtxDClP6G/hv7SscWUn+E43635B0PNSXjvEP6J02h8eli
         vhaQ4maJVtFmVWI4QsZUSvTaHDwlz53S+bprZe+3yZVhbh0Bv/qJaDjMLRnUr5TjoBjA
         s8kXT40389UW2EEeZr/l26mRhaJ6y1Ti/lhB6KuvawuSTD1cBMgdnOm6GJUe9rOG2NhS
         Lf+MFVjcMJYk9c63qwEvxu8jyIfdPubZINvjSq8PEHjKK3U/FAH96jjcLRbUvVLLT7pD
         8VUmRUYQYYSUEUPTmImL9iRdBuScARKe5fv3ncnjo9tMdtQ4YbHjQ2icD9JWofhoggmx
         hYEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=1J0xfzfl;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id e131si394506ybh.3.2020.03.10.03.13.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 03:13:06 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02AACqfU019796;
	Tue, 10 Mar 2020 19:12:53 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02AACqfU019796
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Ard Biesheuvel <ardb@kernel.org>, George Spelvin <lkml@sdf.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] kconfig: introduce m32-flag and m64-flag
Date: Tue, 10 Mar 2020 19:12:49 +0900
Message-Id: <20200310101250.22374-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=1J0xfzfl;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

When a compiler supports multiple architectures, some compiler features
can be dependent on the target architecture.

This is typical for Clang, which supports multiple LLVM backends.
Even for GCC, we need to take care of biarch compiler cases.

It is not a problem when we evaluate cc-option in Makefiles because
cc-option is tested against the flag in question + $(KBUILD_CFLAGS).

The cc-option in Kconfig, on the other hand, does not accumulate
tested flags. Due to this simplification, it could potentially test
cc-option against a different target.

At first, Kconfig always evaluated cc-option against the host
architecture.

Since commit e8de12fb7cde ("kbuild: Check for unknown options with
cc-option usage in Kconfig and clang"), in case of cross-compiling
with Clang, the target triple is correctly passed to Kconfig.

The case with biarch GCC (and native build with Clang) is still not
handled properly. We need to pass some flags to specify the target
machine bit.

Due to the design, all the macros in Kconfig are expanded in the
parse stage, where we do not know the target bit size yet.

For example, arch/x86/Kconfig allows a user to toggle CONFIG_64BIT.
If a compiler flag -foo depends on the machine bit, it must be tested
twice, one with -m32 and the other with -m64.

However, -m32/-m64 are not always recognized. So, this commits adds
m64-flag and m32-flag macros. They expand to -m32, -m64, respectively
if supported. Or, they expand to an empty string if unsupported.

The typical usage is like this:

  config FOO
          bool
          default $(cc-option,$(m64-flag) -foo) if 64BIT
          default $(cc-option,$(m32-flag) -foo)

This is clumsy, but there is no elegant way to handle this in the
current static macro expansion.

There was discussion for static functions vs dynamic functions.
The consensus was to go as far as possible with the static functions.
(https://lkml.org/lkml/2018/3/2/22)

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Kconfig.include | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
index 85334dc8c997..496d11c92c97 100644
--- a/scripts/Kconfig.include
+++ b/scripts/Kconfig.include
@@ -44,3 +44,10 @@ $(error-if,$(success, $(LD) -v | grep -q gold), gold linker '$(LD)' not supporte
 
 # gcc version including patch level
 gcc-version := $(shell,$(srctree)/scripts/gcc-version.sh $(CC))
+
+# machine bit flags
+#  $(m32-flag): -m32 if the compiler supports it, or an empty string otherwise.
+#  $(m64-flag): -m64 if the compiler supports it, or an empty string otherwise.
+cc-option-bit = $(if-success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null,$(1))
+m32-flag := $(cc-option-bit,-m32)
+m64-flag := $(cc-option-bit,-m64)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310101250.22374-1-masahiroy%40kernel.org.
