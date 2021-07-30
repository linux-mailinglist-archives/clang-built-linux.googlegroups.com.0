Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOPLSGEAMGQE6UNJFHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 340E53DC090
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 23:57:15 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id s16-20020a170902b190b029011aafb8fbadsf8635942plr.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 14:57:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627682234; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lya7jDQmv5ra48boCcKaFIaGIURAKbWsdDIF4WIg8M9olT9IUTjwdubcceWxfeQMeA
         l6B0TtaxghOuNRdMUt6+O/oBw48iZ6/S7UPkxCNs8mqAKLGg/MLGCn0WdKUV+1SFymso
         XvFr8KPFEVTCfpJUzfrdo8Dr9FBYa5kTXlw8KtBNZ/5FYJ5tF+xQaqM4BtZIaf0DpOs2
         ym1f4E35Zap3w+9wGruK2oTPl82B8C2DTwC1BnTZxUbOKaxPMQqs/01yTz4NlBlHbhjT
         4YEdwzefP6b3wjWUBL10t3LNOZjFFeSAjzT1kKsTJCBuNv2iH03GqYs64SpD/ls2LOBB
         S8Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=OX+VFt8HkXENvg4w0A+c7TMOoI9Uq3cOKnlC8s0U6xA=;
        b=P0/1E8BQMlhr4UzVUjjUhKNyuS6+FJqYtcq3gzXZ4qHPOHrf4tdla/pODPeCmoOVtZ
         uoaBoYFblCyU0+tczBIZVoi5i9AXXjqref1H6ntZYL8LoRP9n5NPXpSo08gLxaJB0o0S
         igL0zan0c5uiQmIKNN27GPw4Wty986g/2oT47QPavLvuNXU2SijcKyw7+DqOA81kbQl0
         vEsYzOZlEEbIeNSI89dtatI8NI8v4Z3wFTdpkfMvVtMs9szxvwNeMrOgiki1tB39WOd3
         8hWy/frUD3LN6u+HYAo6prcos5Ehx16IpCWNAwjUpcX/NhekiuTogzd6iR5dh2pJAaL3
         nxoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YiYCv9hG;
       spf=pass (google.com: domain of 3uhueyqwkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3uHUEYQwKAMMwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=OX+VFt8HkXENvg4w0A+c7TMOoI9Uq3cOKnlC8s0U6xA=;
        b=CroFDPhHZZ490pxtilMcFv+032dd3ZKs+pqy+DrcSz+dHMaSva9fRUxWbvbsIzpG7Y
         PkL4rv3TzVBRusR0SSY9otOBxinEaiLBLH24eIfnYuECKNgd/UgVvvSKYNKEh22Lb5+Y
         D4TfuzWqHo/MUXsmLrwherBd07BzOecmQzobxHkVTi35b4TFfQ/Pm4v00riwBmyQqlOd
         911YDROs2vlK84H6T5j41dQqo18FvHlop5T56mE8M0hxaU/s9FWRg+v55YZRMIWdi5KF
         eQwYBSszhkHX4HnmD+dlw607PlImsyDVtJQm89fymzUcHAJVXFhwOheyHkjwRYMa18rT
         LL8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OX+VFt8HkXENvg4w0A+c7TMOoI9Uq3cOKnlC8s0U6xA=;
        b=dhF5117DD+U8Bv3wrNYOb68Cz5sEkWddDXh4PdJTlXrCDAOfJk0KsWgRktBLBlvCPI
         In6EeKwLQ6seYw+JgWSRhfq4zn/y1nEoWcWifsiLPnz4pzCh3sLEaE9ewsVBZrCfzF7r
         GXhXM9jCYl4V31O9StxQiEd2wqFGdlcSGHn717BCSy7Y1rWYh2oybwBjzLF1DtZ7Uqnd
         Kb8msj2fuqp+EiSFeDhuwBwe3tyIQ8ysCJTyzlbx3sR+5Y/sijB+RnpjKBBt84bCJw3c
         qisBxY95MwMj8cdXcZi9NOCvqrLzBgwkXeVZ8cp6s7nuJqv7zEPyppyfZxUggFddyPU/
         mY0g==
X-Gm-Message-State: AOAM531F2+f0EidiB8EtvCHP7k+DJbcoA8TgNK0OcS2o96e5adtNlz75
	LC16d0fuuXzy3bn24WDQAmE=
X-Google-Smtp-Source: ABdhPJyh6uOtjxPHE+v7vo8MJssqhNv16oJFLwMb2EH8I8xb48wBTcB37/Does9oQtw+sw12ENzykg==
X-Received: by 2002:a17:90a:3b0f:: with SMTP id d15mr5432968pjc.71.1627682233842;
        Fri, 30 Jul 2021 14:57:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:758f:: with SMTP id q137ls1132425pfc.10.gmail; Fri, 30
 Jul 2021 14:57:13 -0700 (PDT)
X-Received: by 2002:a62:ed06:0:b029:32c:a800:ba47 with SMTP id u6-20020a62ed060000b029032ca800ba47mr4518984pfh.56.1627682233295;
        Fri, 30 Jul 2021 14:57:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627682233; cv=none;
        d=google.com; s=arc-20160816;
        b=pqH+ujz+0yYKM2UldkGVk0w6RjR8i7ss8OfBRYwrDjzJX0nHnhgltC7+/4CuZ20zgH
         iRXvzaPnF78welGmGI69uoBepEv8Ne6VCjxNHVj44Bb2jDxnTz6JzDZZ61vhEyi4jqM0
         pEOPjT5N+9viQpG8CjrulEJ6nsn5SJKPPqyDsihqElFF4c83078VzZgAi+KjaFp7ywYP
         JeSA2fdoEISy2rocxEqh9Gh1LR7nZdvNYMRZlL4DzWQ7pCJFz2U8maNmL+8mPIlrt0u7
         9X2wN3lzzSvJ7TVPBNfqCxtmGX+/FbGD0QJ+ZpTyiElbb1YIIJQ2wwWCSNLaxKVuZdlA
         57Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=OuQ5TmLpp058PbGqh8D13Jsu8FS4m2xyhutHftN2hx0=;
        b=H0aL+CWfYwy3uJ41AUhftdrclwhDiO3JlyKuzvYQLcCnlcFTY3kOBFrvMg7qZKNJrj
         iVATjlhBr53ZlgfKa/qo/AFLNlG9f9L2MNtr9LTHjMuypoBjaYufAKE5rjsgKh6PcgoW
         LnYXR+7m0gcbayGfIYshwstoB0aHPy8f0qElBbdfmma4FPrulaBqjDZfczxYwD32mqd2
         QYRwYLsPEi4IFu/RGM80YJnZoc4BJOJeoQOwNpclurjhMYjwnm1uFYbwDsMKKt8MGtmW
         Hkkz9GNNF8eMRIOixb2kZGJCa4ppDtKkKflPttImUhQSHcWZJmJBHqc3f76/ie8EEXQF
         dgnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YiYCv9hG;
       spf=pass (google.com: domain of 3uhueyqwkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3uHUEYQwKAMMwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id u5si233671pji.0.2021.07.30.14.57.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 14:57:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uhueyqwkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id d69-20020a25e6480000b02904f4a117bd74so11999945ybh.17
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 14:57:13 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:ca8b:b433:7c1d:90d])
 (user=ndesaulniers job=sendgmr) by 2002:a25:1ac2:: with SMTP id
 a185mr6286643yba.350.1627682232434; Fri, 30 Jul 2021 14:57:12 -0700 (PDT)
Date: Fri, 30 Jul 2021 14:57:05 -0700
Message-Id: <20210730215708.276437-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v5 0/3] infer --target from SRCARCH for CC=clang
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YiYCv9hG;       spf=pass
 (google.com: domain of 3uhueyqwkammwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3uHUEYQwKAMMwmn1j3uwrn01pxxpun.lxv@flex--ndesaulniers.bounces.google.com;
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

We get constant feedback that the command line invocation of make is too
long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
target triple, or is an absolute path outside of $PATH, but it's mostly
redundant for a given ARCH.

Instead, let's infer it from SRCARCH, and move some flag handling into a
new file included from the top level Makefile.

Changes v4 -> v5:
* Include previously missing first patch!

Changes v3 -> v4:
* Remove the requirement that LLVM_IAS=1 be set, as per Masahiro.
* Remove the Documentation/ change from patch 2, as per Masahiro and
  Nathan.
* Add Documentation/ change as patch 3, from Masahiro.
* Reword commit message of patch 2, as per Nathan.
* Change patch 2 oneline to refer to --target and CC=clang (not
  CROSS_COMPILE).
* Carry Arnd's and Nathan's AB/RB/TB tags, confirmed ok on IRC+discord.

Changes v2 -> v3:
* Remove requirement that LLVM=1 be set. Instead, if building with just
  CC=clang LLVM_IAS=1 instead of LLVM=1 LLVM_IAS=1, you should use
  LD=ld.lld explicitly, or LD=aarch64-linux-gnu-ld. (As per Masahiro)
  Example:

  $ ARCH=arm64 make CC=clang LLVM_IAS=1 LD=ld.lld OBJCOPY=llvm-objcopy \
    STRIP=llvm-strip -j72 defconfig all

  (It's still preferable to use LLVM=1 IMO, but this is maximally
  flexible.)
* Change oneliner from LLVM=1 to CC=clang.
* Update Docs slightly.

Changes v1 -> v2:
* patch 1/2 untouched.
* Fix typos in commit message as per Geert and Masahiro.
* Use SRCARCH instead of ARCH, simplifying x86 handling, as per
  Masahiro. Add his sugguested by tag.
* change commit oneline from 'drop' to 'infer.'
* Add detail about explicit host --target and relationship of ARCH to
  SRCARCH, as per Masahiro.

Nick Desaulniers (3):
  Makefile: move initial clang flag handling into scripts/Makefile.clang
  Makefile: infer --target from ARCH for CC=clang
  Documentation/llvm: update CROSS_COMPILE inferencing

 Documentation/kbuild/llvm.rst | 17 +++++++++++++++
 MAINTAINERS                   |  1 +
 Makefile                      | 15 +------------
 scripts/Makefile.clang        | 40 +++++++++++++++++++++++++++++++++++
 4 files changed, 59 insertions(+), 14 deletions(-)
 create mode 100644 scripts/Makefile.clang


base-commit: 27932b6a2088eac7a5afa5471963b926cfbb4de7
-- 
2.32.0.554.ge1b32706d8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210730215708.276437-1-ndesaulniers%40google.com.
