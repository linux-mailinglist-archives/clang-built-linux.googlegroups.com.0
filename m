Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBOMZ77WAKGQENAEGDSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E80D35D4
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Oct 2019 02:28:42 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id g21sf1690795lfb.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 17:28:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570753721; cv=pass;
        d=google.com; s=arc-20160816;
        b=hOImD52XvAi0s1sOff1h92PtlYjYapU+MhzzGTEHKSkRefr9g/xGFvJ2IDd/LlFY9M
         uhokdJe4rtHfvrLlbW6qOTgIOYuNfaVFjrjdpoSY1FwistfLHSP/ZO+3RqAD+rnLvbiQ
         tan49LVHpvRxYyZxV8c3u6FKaBglfGvH+ZpiIo3H5jRvbgSqMIWd8EsMLoLyCs7zyXAk
         wArK8GoYj8ejOh2yQPY8DyzRqgJrLNd3rj2vuqUKQyf0rL11SYOZOyscJkwAcRdLGn9K
         rJcuZmclGLteVfbzRMJSHCThrhPIHF3OIMOPddDtS0TBcPOMymBH/u4BEavJISQuiOc6
         0JFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=xBFP7Vw1oxgTj1iro9YZVRLGahskMyasYd3QfhpUL3k=;
        b=iC1r6sAI11jzD1XM5GEHwtm0dSwjimNKKT8FQOFra/+C1/24UyHfp0KAK31GOvW3x3
         fnGMp6LhYjSCwNxvKS4Mfeh+OKTKCaO/kIFkM9lCjJK1fP8tn8eUrThUSQscE5BbsPT5
         UEN5sFfZuxBiqun+3NjEIDjsyWZaNuliRrfKzHClS6Vz3C/bdvqvYPQ526sSrBimDbBX
         4q/YO3W3igmaqSFOhLKC9sBkqwBbaDXsnwRTgvoHBGgBo2vzhhTILn+qXxbLch+T7yXp
         Jw09SRYjbhq+X/bUrfUsZfKO06X86P7F/+GcVH0Elhtv2Dhgc6WtZFVfzKNH8D4UFeA7
         KxOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QHN9i8uk;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xBFP7Vw1oxgTj1iro9YZVRLGahskMyasYd3QfhpUL3k=;
        b=de+uJlbzn9vltZt64XeAONbtgrqRl+UViqNz/kzTv9R0tK0rlp48WHZMsdvpaY4gyW
         aQ9uGoYlfPhIroTAHbTS1XyViM0Qb5DfOOeumCdoamZYU4iBbvqSkBczRe9Co14Sh+Xx
         ctbTIHyJsDqonMcnOYLHF6uqo+pZBkK2/F+Y+XptGo7PveHjFNm9z4s8FshdLrw/SRSl
         lycZNRFWKPBq5rnXy/x2EhbgOrbGBlRR5gauDU9lUp5dRynKPJoKSQWyKUqa1tXi2Hth
         H/uvwTO6y3TWVwx+KXOFMkRNOBmz7vuAr0X4Evq4ExxAoeqCksYmGhJNX9HxGugJfkWL
         z2sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xBFP7Vw1oxgTj1iro9YZVRLGahskMyasYd3QfhpUL3k=;
        b=OUyMvTdI3LI/bzYcinFIHN2zFJlMTq7yZ+aSvWhf/TqyE4c24EI5kN6flWRS5igvyl
         p+JCyAjZS8NQsBfapWvrKeUfbAWPZ9IGuAPwOv37ZqJhOOMe4u0P3wRTwwB2wY2pI9A4
         aLRTfAazDAwiNC09RNz0+0B1/DnYZe5N1rDcHjKYBPnElp4NMGPoJCWJKa2gwtvoaFly
         SMfvi5L/ko8SyB4nQMNrOoYP43+7TFuPqliETQz6+SLB54+BObaIk7EZQBkghmtiN1Te
         Mq1FWA8N1Jw7clhRNoqIsVEN+xoGyKGM28qU11U0OwzQOM91y7UXhOe6AT1fqPpXzsyU
         meqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXdQa1+3hY2qOrrQ9odq+3f5w2ZUF1L+C01/ZKgcQ6yltWGD7Jj
	U5mOiu3Tvd/V2+pwCgoRZFk=
X-Google-Smtp-Source: APXvYqxMiw8WoGvc7z1+4N6wsh4nSl2dnNUlY6emvNmB4mTWxLG1AQelXHYA4JhRFCQ63tsEGdyLmA==
X-Received: by 2002:a2e:a41a:: with SMTP id p26mr7495939ljn.15.1570753721875;
        Thu, 10 Oct 2019 17:28:41 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2286:: with SMTP id i128ls738181lji.7.gmail; Thu, 10 Oct
 2019 17:28:41 -0700 (PDT)
X-Received: by 2002:a2e:9d06:: with SMTP id t6mr7869213lji.253.1570753721315;
        Thu, 10 Oct 2019 17:28:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570753721; cv=none;
        d=google.com; s=arc-20160816;
        b=te0AEBFsZVRCPz5KfEfRdMP4toNOvOtUUzZAFPJliQFo+H9h8D8t3s185KltMCTmFw
         z+Q2pM6XYyCxNLauApKjWWcdpF21lZZWgk10gJgc6DxbX1v0ptj6FKvVK/NOwcvPkEgR
         Gdj44bDZpnXCqHrgdCfN1KdW4SkY678EMaVEPoUcZDCwsISI+R3OZhODbsi0odilOdwi
         MwC3rg0KdLCBtRaEQj7QJnr6XmE/J6W7Lzywys+FbKLUX2WdbUW8qV+t1yJ+Emx81Vz7
         2MpourEC6SWUGZV4GO/tilC1QCQ0OJ/K5KMafpxwhucbfLdgeuO3pqBtaV/2GnqXn+YK
         J4pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=pOlOkzzU0bwqDGQkGWa87uAZFQ6B6XzFeEn3c66o8lU=;
        b=ST/pVcwmrmCGIBTSyrL3chwAqebvAAsqaQajOnp1f0Q5AERxGLqoWgzx85j3eB26+N
         3Qm5yHRLFh1kGNaWhJghCm4l3UGazIHs4cn9d3QLjpfYbC5n4wG0qMoodbZz6z+FDDiu
         9yTkrCMGgBnn2qQH3oqw+736NVocYwkJXvTxWxZ3aqCETW9fVFA3SvnBjuFkJ4lEQKc6
         6nqeiyac9aeoooDv1+Imv2zP1CLI79/4xT4y5uhMLOplGP2Z7IPZcgYpFEp1MFui5s2N
         s6Do0IKynZ1fne6mrFMcns3USP6KdH+aRIjfIvBAXvX/FlkgcmouzL84sOUMFAaI6NG/
         DA2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QHN9i8uk;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id z4si111900lfe.4.2019.10.10.17.28.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2019 17:28:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id d1so7979772ljl.13
        for <clang-built-linux@googlegroups.com>; Thu, 10 Oct 2019 17:28:41 -0700 (PDT)
X-Received: by 2002:a2e:a0ca:: with SMTP id f10mr7479171ljm.83.1570753721062;
        Thu, 10 Oct 2019 17:28:41 -0700 (PDT)
Received: from localhost.localdomain (88-201-94-178.pool.ukrtel.net. [178.94.201.88])
        by smtp.gmail.com with ESMTPSA id 126sm2367010lfh.45.2019.10.10.17.28.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2019 17:28:40 -0700 (PDT)
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
Subject: [PATCH v5 bpf-next 15/15] samples/bpf: add preparation steps and sysroot info to readme
Date: Fri, 11 Oct 2019 03:28:08 +0300
Message-Id: <20191011002808.28206-16-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=QHN9i8uk;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
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

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191011002808.28206-16-ivan.khoronzhuk%40linaro.org.
