Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBGMM7HWAKGQEZ34GMAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9D7D19CD
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Oct 2019 22:42:01 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id w22sf862820lfe.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 13:42:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570653721; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qu2qoCHHrZHwoFXXrG3KbIX7PjI4V//OCG5J3A0d7fKFyh1AHeCbcIN9rcutUkLotp
         KUC1GXPk5rTkhSa/IK5lrmziPJGCPXSIfk4QKdbDQxPLojFW2LbS7NU2F65DOTH3TvRp
         MY7B7TP5IsAm+EFyBj3xu5/GA0fmAgaKuhzqkQNOaRzBhJOjk3ykVPT8GOyH/YRCxaI7
         8W6S/LZ8NHgQgV513VZ8iRWMiEIt3yjAUvCbMslm6i1nPqYvkdOlAgUVb3rc51Je1JwY
         yxKEUv7bfD7NDmr5Ab/qt+wDuQ6dhDJ/AkTbYwKTFKyTvzbFOcteo5UQyqzBYGTkunj3
         SmOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=imoQw+yDkttCNNLarat6DkmRtYipAMch+uQiCrHCpsk=;
        b=qgJHgjaUo4mQOTXa6StqjKVmSyldCtM3RuAx/mx7i7vt/m7uDMHKAtF5dIolAw6kEZ
         mKsZqjJ9RL02ODjXoghk32TUu6RXv6jwVsN7GtLYFcIiOEWIjr9nWG/i7qCTpXYqpbPv
         C3kWuW7JYOsbtczqrzLSqS8FL+NSI6MU2LQ3OdTcQjM2YuxzXKQCyXmx2leYPs4H4w6c
         VzrZnzQPLc5YmIA8ERZAIwj6TGrO9FAjmRvrgnaPV/qN2Cha3WSAtrnllDw6fTSGuP74
         v1TrgqyOG9m6gjkuc1V3iPsoGQC0jv7cY7kHpj4MrjLJl5S0wBvNlIG6whSUc4WARYYG
         8N0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="gUjn/S2e";
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=imoQw+yDkttCNNLarat6DkmRtYipAMch+uQiCrHCpsk=;
        b=Yqf8q7MkCg9qYqHTjR19d5l9Vlhqecayg5h4yPYM80pRWmCawUTucbwFy+3c5Z5p7P
         FPVcxEu6QnyTx2iCVbGORk5G/TR20qcgDqm5hHIhWr1bNc9+6ilz+97tKdWzUdKf2GjA
         42XIGfWI9fpvRA/QhduQiO3FiYvbn68Yk5oArpxx2NvwqR2o335mJ9iAfGMYwSqLG6av
         csdOc2F3+SUwCqFZc6l2eLOJ/WXtYbwLYhoiNr1F5B3d09FxVaWGE/w6D8V2SQSjJlJW
         nbqw3Fy0TrvvX3klhkSfavrLMWBQDkfI6UpCTSfaoN0k+ZflGFtwgFRS0DelH5aXvNd5
         GEbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=imoQw+yDkttCNNLarat6DkmRtYipAMch+uQiCrHCpsk=;
        b=i8QwuDC7MoPquk94AJqxiVpF+DiEXcwp1n4Ci+EC9At69tDWNAd3mXK2U4aoGUkwBk
         ORC7nQAdLEPfghCumD+QJNzmOVGfOhGjHxUc6XBZHALlXEfeZZxTU9a0ytgituSZ78o0
         t2qHPaPRpdBbueyVBnNRF2hTLWzRF8uOV/2onP95+Gn8zylBJtZTAnCW1x6T++Pkwbis
         h6j5aUjwAc8sfDwmPO4R6YmHDJGIklVRIb9L/PVbSWcBmIh2RT0QMQYwyukLlzfYWSXt
         30A7O5emVToczT6z1UaKTXVzesB8ci4L9F1mWj5HmTUm9KUXc9vbG/EuvFE3Bvf0PnZs
         jEDg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVeaMaSjX+diwmE1vRWmftD7rQHBupAQ1wNYfc+IOub4B8KWlch
	rtGuhzq3SsZFP0/KfmFwSX8=
X-Google-Smtp-Source: APXvYqzyGNM3LS9lVK0POc4pbmmJ+lv27WulF5Mb206Nwvr5u7PExUmZLC/TFtcn1b2nt1FFF/66Og==
X-Received: by 2002:a2e:8852:: with SMTP id z18mr3650062ljj.230.1570653721446;
        Wed, 09 Oct 2019 13:42:01 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3101:: with SMTP id x1ls212811ljx.1.gmail; Wed, 09 Oct
 2019 13:42:00 -0700 (PDT)
X-Received: by 2002:a2e:5812:: with SMTP id m18mr3713589ljb.182.1570653720550;
        Wed, 09 Oct 2019 13:42:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570653720; cv=none;
        d=google.com; s=arc-20160816;
        b=WsW3cvn1uNL2ur+nutnhAn3giOCj5v0K+fE1Ube2qDm0ryxabRH25Yq/YuBlSMMXQf
         ZBIA134ypfIoYe33H7x87pYg+KfneLBxnirkGxH5vU/zV5OTl0K7JYMgibPQu7tcw+s/
         Jm4tsnDS5fTdWlzYs2LHyjkHhbPTgJLbx9Ct6QdALdCOeswBv+RQd5m0tE0yQFYvAgFc
         QnprhO3ayY0iyN2e7rt9MOwpHofYA5k7+/uARfnyx2B1606UszYBzDGBDdd8VrwuttFa
         OM9H1eW7j3t7Sfs9NVx5HA6GEBhe281smZaEuiX99tdGfQgt8TV3AdHFcWUwe5mn+tMQ
         JtzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=ECSs+mjX4lDFe4jfV4JTbgbugRRkkd9F4zfelRgHKxE=;
        b=GmDPA4g/1qc+N5qo0UahwffWnScHuD4+Afwj8u+A74FG2WFhOtsfSCC0mieKY3Z7cB
         Vz6jzYhB4V9Hbpr3D/0t6rhH3b9iVyLbp/BMZWmuTTsTxt2+IcRlOoXDjwvkgW42y64X
         CLtSVIbgQkDYRbqdyHx6FS85dgBkwIPlJCWfwYOAXXBydWhhgA4hrELBUCA5qYWOGVnr
         uy0lFOdCvRzKsbS6VCrto1IHFzkuGXP7AJ2d5nRGDoiBD7qh0prTTxqmm419U9XS7Av2
         KmUB6qjyUy40oGcuF7j4GCbY5UflNB1K0SVtCRDksHElGwnzTVi+jyGaClpIf3pdwT4J
         Z5cQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="gUjn/S2e";
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id q25si279011ljg.5.2019.10.09.13.42.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 13:42:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id w6so2685184lfl.2
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 13:42:00 -0700 (PDT)
X-Received: by 2002:ac2:533c:: with SMTP id f28mr3247351lfh.77.1570653720287;
        Wed, 09 Oct 2019 13:42:00 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id h3sm730871ljf.12.2019.10.09.13.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 13:41:59 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH v4 bpf-next 15/15] samples/bpf: add preparation steps and sysroot info to readme
Date: Wed,  9 Oct 2019 23:41:34 +0300
Message-Id: <20191009204134.26960-16-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
References: <20191009204134.26960-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="gUjn/S2e";       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Add couple preparation steps: clean and configuration. Also add newly
added sysroot support info to cross-compile section.
---
 samples/bpf/README.rst | 41 ++++++++++++++++++++++++++++++++++++-----
 1 file changed, 36 insertions(+), 5 deletions(-)

diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
index 5f27e4faca50..cc1f00a1ee06 100644
--- a/samples/bpf/README.rst
+++ b/samples/bpf/README.rst
@@ -14,6 +14,20 @@ Compiling requires having installed:
 Note that LLVM's tool 'llc' must support target 'bpf', list version
 and supported targets with command: ``llc --version``
 
+Clean and configuration
+-----------------------
+
+It can be needed to clean tools, samples or kernel before trying new arch or
+after some changes (on demand)::
+
+ make -C tools clean
+ make -C samples/bpf clean
+ make clean
+
+Configure kernel, defconfig for instance::
+
+ make defconfig
+
 Kernel headers
 --------------
 
@@ -68,9 +82,26 @@ It is also possible to point make to the newly compiled 'llc' or
 Cross compiling samples
 -----------------------
 In order to cross-compile, say for arm64 targets, export CROSS_COMPILE and ARCH
-environment variables before calling make. This will direct make to build
-samples for the cross target.
+environment variables before calling make. But do this before clean,
+cofiguration and header install steps described above. This will direct make to
+build samples for the cross target::
+
+ export ARCH=arm64
+ export CROSS_COMPILE="aarch64-linux-gnu-"
+
+Headers can be also installed on RFS of target board if need to keep them in
+sync (not necessarily and it creates a local "usr/include" directory also)::
+
+ make INSTALL_HDR_PATH=~/some_sysroot/usr headers_install
+
+Pointing LLC and CLANG is not necessarily if it's installed on HOST and have
+in its targets appropriate arm64 arch (usually it has several arches).
+Build samples::
+
+ make samples/bpf/
+
+Or build samples with SYSROOT if some header or library is absent in toolchain,
+say libelf, providing address to file system containing headers and libs,
+can be RFS of target board::
 
-export ARCH=arm64
-export CROSS_COMPILE="aarch64-linux-gnu-"
-make samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
+ make samples/bpf/ SYSROOT=~/some_sysroot
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191009204134.26960-16-ivan.khoronzhuk%40linaro.org.
