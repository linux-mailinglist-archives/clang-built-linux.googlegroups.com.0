Return-Path: <clang-built-linux+bncBDYJPJO25UGBBA64TCDQMGQE73B64ZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD283BF22B
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 00:43:16 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id x2-20020a17090ab002b029016e8b858193sf2507661pjq.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 15:43:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625697795; cv=pass;
        d=google.com; s=arc-20160816;
        b=xgrf4RGFeYlZWUCRQaZfZ3iUf7uScFTa4RW/RWpXz5HBuLnVBfDa5alMfzZs3gpq7k
         6aY41HHBvtl+gIL5qipfTc/gIUn8B1+YQvScG9EAb2Z84w0yZUIkTlvArE/xXrvIj7b9
         SPcz87e6Iflxpdi048gJfso8qs9lHH//Qf3ahcseLEblRR8AV3TvYO0H7Ebair2ojXxg
         ie96zTQoYhvnTxpVs2n86zyWjp3SoLu+vOGUG1fKn2oPFQKanIz8N5QRr65gsIp/t+UM
         k3wHCdL2ZJ/ZV/EbiPSHT6E5tNdh5IBmPGjR5XaTJQbxFSzafJ/VN4+ITP4+gn4Y4o84
         DRYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=xAc/tZBKvDyLsriA7eGia+iX3MGrNgnyfG/02wQ9Uno=;
        b=guJQ2QGjiFv5LtKlsxhO7f24KC3NLH7lEY6S8s7fwTj6Rf8yySGnWvGUWte3CgZpXO
         cHJEwQu2Lb2+rNSDgGP4PEx8wxKAawX0IFjC2RG669XrLFbpnP4P3N7U4ZEuccbG+prh
         /fC4gRiGBT4tVTjyu+LlDpugvwLm0VZpDpP5eGZds5TXX9SE7qFzBqxqzYylfn5PzCHU
         XCNmtvElE0wR2wGH4V4t2nLLN6Tv7Kz3kjdRt/OTj5yV3nwEZd5pkwyARkYApjPccQfk
         MKHPWqrhC2I9wCTL/u2pyqgYUfj3OjqHKdyXmOwvF4ooEFll49F1aaE0apadLlysAj6O
         igDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XNtbehT3;
       spf=pass (google.com: domain of 3as7myawkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3AS7mYAwKAAQrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=xAc/tZBKvDyLsriA7eGia+iX3MGrNgnyfG/02wQ9Uno=;
        b=T+V8eeIud2UT4j6ew6Z4RR940KnVE7r+ElRQAYs4m5BlwBEJuVUNbFj5LOaIjQ2cZ4
         GAcrrNp/012IzDoebYc5nRnb+NE4VskSxZ2P+VzhKkj/VeQKC7muG3Yrmrh9qamch+LB
         6pZj4LJjgC5GYK3mKQeUN0qfZnQVrBN6vSiEvcvfwf6yN+gELvkmFzNbFTWCKWsEGw8j
         6EQrCHYVbSAvv5jJ0t+sw2hgUSDNrYl4l5mae0OEo7TD+AwcfW2Y8k0IhT/nSNH8TOHX
         1ipdXMN0kTpOdor3OTnHbhPhMwWRh3rbs0h9UUwr4X0wB3x0Cyrh0CMKlm8vsyXkS7lJ
         9vbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xAc/tZBKvDyLsriA7eGia+iX3MGrNgnyfG/02wQ9Uno=;
        b=qGbuB8kqpDK7M2dgIDJoBV5CA3Hz22lGI4npRMmAq3889ZNYMm+ey3KkJncpi4BypF
         8J+5rp6l2lUj1M0fuQEzdlZP1CZN6SCq2oWeRbJ+a4reHjEnrK4amgDO/1spW4csdvA+
         W+7j2aH6dyLsz3QLsT6iSzifsHUVmuziyunfmcG/qgfeTTb5TWbIVV1gPZSwBq+l3vUB
         jcZnTu51gZ52zpeqDKf3dBcShRjQtOlO9QBRTyfVgV5nnw861HlcH68IgMYnJMgYnSqC
         JBZgZqhLUDt3MyVuP/+tzlo2SSmR8GBosZK8TDLDr6Ro61qQyi1ZNCN62Eg9NHYGVtg0
         fMFw==
X-Gm-Message-State: AOAM530dx3RprxDXEkncamVhYfBUwhe95j/+6nAMTPj4ZCbecCED3JJ9
	dmy1vlJw0xGsgulHDkPELBs=
X-Google-Smtp-Source: ABdhPJyO9Tuo38hy8HA5ftOm6kBAt+sgq/2puUTBixBEZs4aQAPe4cQKY3n5W1KzM5V1OxvS8kvAhA==
X-Received: by 2002:a62:a504:0:b029:30b:7451:81b6 with SMTP id v4-20020a62a5040000b029030b745181b6mr27759269pfm.39.1625697795281;
        Wed, 07 Jul 2021 15:43:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:920e:: with SMTP id o14ls137970pfd.4.gmail; Wed, 07 Jul
 2021 15:43:14 -0700 (PDT)
X-Received: by 2002:a63:ba48:: with SMTP id l8mr22884826pgu.259.1625697794728;
        Wed, 07 Jul 2021 15:43:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625697794; cv=none;
        d=google.com; s=arc-20160816;
        b=gEyUEfZxdXT88M3E9guMlUmqD4PKJ+jUTsO+bUhNnWx4IlptaqHMCxlEK/eUo5u9Hn
         +Hhf6b6SM+t1Gc7sy2RTV5PXWzA7Dqxj8H+XYn+TXeX1hqWJgRANbYoP5KItrHYUEXV0
         Psf0oFM4UCUGN4zTYTgdqpj18JlAxfLoEVoa0TXOf89JUOeumlVO3eCNWpzqlyPv6ODN
         ihW/J7RFc5yaBTSfwBzCy2OJXuMIfm691MfU9TZWOp80NeF/HZo0B9W5k4gLJiX391KG
         v7VBRZqOPu2aE+QG3fgLq7vygn+HOZ/9WfCADoVWBuCFfyd5gRlNBwdERKjPrge1Ngg3
         dKww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=7PF5MF/PppYWlL0Lvh8CWn/Qemla6arexCWKEtWK8TA=;
        b=e35wSIBsMyqKptlD28bRrDL96fDVbXzxUqjP61BqBQUI374HMXHd1s/pfM3b0Vl4KL
         50otU0lYJOr5D2oL4Wa0nZasOayd/RwNbYjbNTzh4r3E7enhUmE0BzUFqWUkptielJqF
         PUzhbvRKMTAzZ4cc9D6fqp50E+ivCqpyxdNG7DA4PSGHUUYq6yAWCZIv3p14A69VAirv
         eViU0XVVGPMqWpT9ewSmp1IbhICWZNH+TzHT2uEIrQzWRIr4Ih6W4oLN6Dhz2DK0w8FE
         0L6ZLH4qkFZXsnqbgnQ8/IzECnOqZUv7ncMyR7/8jAjpumQOQS8iKAWmwFvzdCLD6iyy
         rzJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XNtbehT3;
       spf=pass (google.com: domain of 3as7myawkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3AS7mYAwKAAQrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com. [2607:f8b0:4864:20::749])
        by gmr-mx.google.com with ESMTPS id a15si22885pjv.3.2021.07.07.15.43.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 15:43:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3as7myawkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::749 as permitted sender) client-ip=2607:f8b0:4864:20::749;
Received: by mail-qk1-x749.google.com with SMTP id g135-20020a379d8d0000b02903b5097f3998so2531794qke.14
        for <clang-built-linux@googlegroups.com>; Wed, 07 Jul 2021 15:43:14 -0700 (PDT)
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:d417:6e24:4a54:1792])
 (user=ndesaulniers job=sendgmr) by 2002:a05:6214:1d23:: with SMTP id
 f3mr26515764qvd.10.1625697793911; Wed, 07 Jul 2021 15:43:13 -0700 (PDT)
Date: Wed,  7 Jul 2021 15:43:08 -0700
Message-Id: <20210707224310.1403944-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.32.0.93.g670b81a890-goog
Subject: [PATCH 0/2] infer CROSS_COMPILE from ARCH for LLVM=1 LLVM_IAS=1
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XNtbehT3;       spf=pass
 (google.com: domain of 3as7myawkaaqrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::749 as permitted sender) smtp.mailfrom=3AS7mYAwKAAQrhiweyprmivwksskpi.gsq@flex--ndesaulniers.bounces.google.com;
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

Instead, let's infer it from ARCH, and move some flag handling into a
new file included from the top level Makefile.

Nick Desaulniers (2):
  Makefile: move initial clang flag handling into scripts/Makefile.clang
  Makefile: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1

 Documentation/kbuild/llvm.rst |  5 ++++
 MAINTAINERS                   |  1 +
 Makefile                      | 15 +----------
 scripts/Makefile.clang        | 48 +++++++++++++++++++++++++++++++++++
 4 files changed, 55 insertions(+), 14 deletions(-)
 create mode 100644 scripts/Makefile.clang


base-commit: a0e781a2a35a8dd4e6a38571998d59c6b0e32cd8
-- 
2.32.0.93.g670b81a890-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210707224310.1403944-1-ndesaulniers%40google.com.
