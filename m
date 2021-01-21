Return-Path: <clang-built-linux+bncBAABBYFBUSAAMGQERSUYWBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 944DD2FE1B2
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 06:28:01 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id f7sf1562554ioz.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 21:28:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611206880; cv=pass;
        d=google.com; s=arc-20160816;
        b=MHeQZIBvlieXt2IV4mAqHDOYPd95npQ5QTsTLHUwXYZ7pSHSnmkaMm9vnnkAA+DqM9
         ONXZ755d7ZrH6nMkOpHwauPunoYxLg0qo72OfHlHBOvOI25y8EI58fMT//XcINIn6pei
         DZLZtPQppNhvMUtFC8i9VkEnB0x7EeWXdpD4xAXh5eQrgCyaFeReglBCSaILXbUuELtm
         0Hm8UMVgOZhWj64zG3Mvw91Ic8tGoQ4p1+8WhknZYE0yWt93UTRdRDKDJVlk61RgSRRl
         puqdNYs3s5T7BswppaQ51zYtRICUL6cN7I6bUL3v18PjUnZ7Hh4Cz2e8offqOOK0GM0A
         SyWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=P5JLTkaq6B0fSRYecTDVGvLXUxsTyuRprUsoVuEpx54=;
        b=feGsrmX+bVitpV8aA2fihvg2dejbEfi3VjGcnPpzRns++HpSIgJAUZmN2OPdLYRQOQ
         0lhy2SrlWcdX9s3tCPoOHvIToLZgPZKZa1rNXRDZh2m5OS/X0NOzO+hr1wqlRqItA2Wb
         GTnccowl9dMPt0IvckOHswfRev/AW4ATw44AIpy7iQ6mJak5hkWyKowTveHn2+FNmfIa
         sbaeUwLHOdWGZF5V419prQjV1NiAXAXSQnUjPnOUtSbGgI1ZpqmaVGZtTXAnXv55coPr
         b4vU84fDFrMIfyEQWbePxa9baHlabSKKiwc6aIY7Rm6Ayp7s3d0ZTafbHyoUjIC5ubRo
         bQaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P5JLTkaq6B0fSRYecTDVGvLXUxsTyuRprUsoVuEpx54=;
        b=CtbmHpMYky74rl8Yrn5lQ50o3qyh2lcHw9rQsnQmoRTs/x2dVUnXOUDWRIFpNPU+R9
         MrOEJyIblT8Btvkpi9OWs1cNLfFCiGHaDKPVdWkAj+8EjFAOaqgMWM/ks9MpkXcnjqUJ
         qRF+Bz+CedeyFdulX4qob/npYAVcFmqyqq+3Z/OkUNOcJAhPebhdORJZ+H3Hz1D0+pV8
         +OBB2nBk3cmjD9J71AHT80GbvCUGoeUS/UuNBE5PVD8Gk2B4y/y9QmYbNxm9EPTHOJBw
         qVn48s9ZxMQP/1Q05p9TeNPIPSDRdjXqPh8xcYTvm8h3KH7jyzCj+Gg+aTgw5KRE6xsk
         rWhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P5JLTkaq6B0fSRYecTDVGvLXUxsTyuRprUsoVuEpx54=;
        b=knmHwonD3Fe8pMmu/TzDW0Uwv7KspK3TG0Uhj782U/Fq+tnk09ldHt/UEIFDca5uK3
         OzndBd/p8Kymlm+TEO5hlAlQVbLMLNQ4uOg6tQ9xA1Ots7mY65ajjtJ7OXxvrh+ojXrf
         WErJnvo8TodPyApIS/XJz9Kfn18iax+VIPq9Aby1IWHUlm183LfGjd5v8BL98T8/KiXE
         zKIV/TZ9Cj/Ahew+hzt1VT7Risn3xwEuvjU2xAFDXpz+d/BULh6vhPiSHV1x6bqMJ8Pi
         eDT0wpKkXotaeCpiXQHMSQUbD0ibp+cnwd23YOg3l3Ql1fjwMqSNn7ER1zC3WUOmQKmZ
         cvaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PHZPnHHkeL+5O6cGcnCPQPgVEzB0Eweo9vPOyu68QqHr4z9Gt
	5NTiWgid90CxzzLEQjvI2XM=
X-Google-Smtp-Source: ABdhPJztYt48wsyw+gZkCV1SX4am1gqbLQLu9s9NCYtA5Mk/Oo7lsv5K0oXyr60SlgEsXRCNkvtCHw==
X-Received: by 2002:a92:1a0d:: with SMTP id a13mr10821677ila.109.1611206880644;
        Wed, 20 Jan 2021 21:28:00 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c549:: with SMTP id a9ls326775ilj.10.gmail; Wed, 20 Jan
 2021 21:28:00 -0800 (PST)
X-Received: by 2002:a05:6e02:411:: with SMTP id p17mr10895038ilr.33.1611206880141;
        Wed, 20 Jan 2021 21:28:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611206880; cv=none;
        d=google.com; s=arc-20160816;
        b=Y++nuQdagzPqq0Rq7d5a+LMtfBcykMfNOw5Mh+4MgcrysqOzgKwHwoETXj/+aBmuJu
         wuTlEutotT48onQS5O7dL+9YZcBKddlU9UMM2NsnzoI5uHX8m5DcV5X/aGo5bmWptQio
         a6/DzSYm/bCL+fkFTY47jq6wwpmUuA8kzZdO0jB42INGxr3gX6u35KJ/JmVsZOhee942
         En8S7+WB+aaqJ69Z3Pa0SHmhjNnCaOXaaiBEAf1dvJ9Mo2MNvqlDSvruszk56hvWgD8J
         NMeiHXhImmpu10Lah/HVN6Jwo3zHKwKrvRZwjfeDX3a43447Th3LC7dYHz+LZBCy2L8D
         0Tgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=vDf8PwyQXL7ytWIec1wsFxpxN16xFJjDfbbb0xGByaU=;
        b=lSCqr0oOXli9vre0WoqlwcM6eWtFfWA7QkLXKd1EPJAR6+fe1vmz1M+Z1obL1hGHar
         /bm0YO3WSFZImWueKp3KQ01HgCHKihvZ1wTPeN7ls9XG5YzJCfOPRA/dnekREixTDy7T
         nOuIUVNg0dlb9c0Q4PqrycX2N2S/OCIiQ5gTBe8acOlyZXe0t8ihLqJHX7zay+sCC3lS
         qf63JDxht+9jAUPSqeCcSA1uJotBjGYyzkT21ZvAYJDfviwXwPVzmBbcuwJBbTpSyStZ
         2/v2qDNTNQsy1nn+fLkwHWUCV2iyKDhp+S1F+8Mq8xhsNTwEX7Eekc4MC85EtwcyNjAO
         v1OA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id e26si340558ios.2.2021.01.20.21.27.58
        for <clang-built-linux@googlegroups.com>;
        Wed, 20 Jan 2021 21:28:00 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from linux.localdomain (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dx2L3TEAlgPXAIAA--.13098S2;
	Thu, 21 Jan 2021 13:27:49 +0800 (CST)
From: Tiezhu Yang <yangtiezhu@loongson.cn>
To: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Xuefeng Li <lixuefeng@loongson.cn>,
	Fangrui Song <maskray@google.com>
Subject: [PATCH bpf-next v3] samples/bpf: Update build procedure for manually compiling LLVM and Clang
Date: Thu, 21 Jan 2021 13:27:35 +0800
Message-Id: <1611206855-22555-1-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: AQAAf9Dx2L3TEAlgPXAIAA--.13098S2
X-Coremail-Antispam: 1UD129KBjvJXoWxWw1Dtr43Jr4xCFWUJFyDAwb_yoWrCw17pw
	47Ka4S9rZ7Xry3XFWxGF4UXF4furs8Xa4UCa4xJ348Z3WDZrn2gr43t3yfWFW5Wr92yrW3
	Cr1fKFZ5uF1DXaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvE14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r1I6r4UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
	6F4UM28EF7xvwVC2z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc2xSY4AK67AK6r4rMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r
	1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CE
	b7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0x
	vE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_WFyUJVCq3wCI
	42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWI
	evJa73UjIFyTuYvjfUeF4iUUUUU
X-CM-SenderInfo: p1dqw3xlh2x3gn0dqz5rrqw2lrqou0/
X-Original-Sender: yangtiezhu@loongson.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as
 permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
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

The current LLVM and Clang build procedure in samples/bpf/README.rst is
out of date. See below that the links are not accessible any more.

$ git clone http://llvm.org/git/llvm.git
Cloning into 'llvm'...
fatal: unable to access 'http://llvm.org/git/llvm.git/': Maximum (20) redirects followed
$ git clone --depth 1 http://llvm.org/git/clang.git
Cloning into 'clang'...
fatal: unable to access 'http://llvm.org/git/clang.git/': Maximum (20) redirects followed

The LLVM community has adopted new ways to build the compiler. There are
different ways to build LLVM and Clang, the Clang Getting Started page [1]
has one way. As Yonghong said, it is better to copy the build procedure
in Documentation/bpf/bpf_devel_QA.rst to keep consistent.

I verified the procedure and it is proved to be feasible, so we should
update README.rst to reflect the reality. At the same time, update the
related comment in Makefile.

Additionally, as Fangrui said, the dir llvm-project/llvm/build/install is
not used, BUILD_SHARED_LIBS=OFF is the default option [2], so also change
Documentation/bpf/bpf_devel_QA.rst together.

[1] https://clang.llvm.org/get_started.html
[2] https://www.llvm.org/docs/CMake.html

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
Acked-by: Yonghong Song <yhs@fb.com>
---

v2: Update the commit message suggested by Yonghong,
    thank you very much.

v3: Remove the default option BUILD_SHARED_LIBS=OFF
    and just mkdir llvm-project/llvm/build suggested
    by Fangrui.

 Documentation/bpf/bpf_devel_QA.rst |  3 +--
 samples/bpf/Makefile               |  2 +-
 samples/bpf/README.rst             | 16 +++++++++-------
 3 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/Documentation/bpf/bpf_devel_QA.rst b/Documentation/bpf/bpf_devel_QA.rst
index 5b613d2..18788bb 100644
--- a/Documentation/bpf/bpf_devel_QA.rst
+++ b/Documentation/bpf/bpf_devel_QA.rst
@@ -506,11 +506,10 @@ that set up, proceed with building the latest LLVM and clang version
 from the git repositories::
 
      $ git clone https://github.com/llvm/llvm-project.git
-     $ mkdir -p llvm-project/llvm/build/install
+     $ mkdir -p llvm-project/llvm/build
      $ cd llvm-project/llvm/build
      $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
                 -DLLVM_ENABLE_PROJECTS="clang"    \
-                -DBUILD_SHARED_LIBS=OFF           \
                 -DCMAKE_BUILD_TYPE=Release        \
                 -DLLVM_BUILD_RUNTIME=OFF
      $ ninja
diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 26fc96c..d061446 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -208,7 +208,7 @@ TPROGLDLIBS_xdpsock		+= -pthread -lcap
 TPROGLDLIBS_xsk_fwd		+= -pthread
 
 # Allows pointing LLC/CLANG to a LLVM backend with bpf support, redefine on cmdline:
-#  make M=samples/bpf/ LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
+# make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
 LLC ?= llc
 CLANG ?= clang
 OPT ?= opt
diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
index dd34b2d..23006cb 100644
--- a/samples/bpf/README.rst
+++ b/samples/bpf/README.rst
@@ -65,17 +65,19 @@ To generate a smaller llc binary one can use::
 Quick sniplet for manually compiling LLVM and clang
 (build dependencies are cmake and gcc-c++)::
 
- $ git clone http://llvm.org/git/llvm.git
- $ cd llvm/tools
- $ git clone --depth 1 http://llvm.org/git/clang.git
- $ cd ..; mkdir build; cd build
- $ cmake .. -DLLVM_TARGETS_TO_BUILD="BPF;X86"
- $ make -j $(getconf _NPROCESSORS_ONLN)
+ $ git clone https://github.com/llvm/llvm-project.git
+ $ mkdir -p llvm-project/llvm/build
+ $ cd llvm-project/llvm/build
+ $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
+            -DLLVM_ENABLE_PROJECTS="clang"    \
+            -DCMAKE_BUILD_TYPE=Release        \
+            -DLLVM_BUILD_RUNTIME=OFF
+ $ ninja
 
 It is also possible to point make to the newly compiled 'llc' or
 'clang' command via redefining LLC or CLANG on the make command line::
 
- make M=samples/bpf LLC=~/git/llvm/build/bin/llc CLANG=~/git/llvm/build/bin/clang
+ make M=samples/bpf LLC=~/git/llvm-project/llvm/build/bin/llc CLANG=~/git/llvm-project/llvm/build/bin/clang
 
 Cross compiling samples
 -----------------------
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1611206855-22555-1-git-send-email-yangtiezhu%40loongson.cn.
