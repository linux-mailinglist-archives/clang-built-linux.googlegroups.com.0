Return-Path: <clang-built-linux+bncBAABB5WZVCAAMGQEGPAYVIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA962FFA08
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 02:40:08 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id t18sf2750409qva.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:40:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611279607; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qbtest82GaZW6he81Eusm8snibZ8cCdVBtDNhEBC0OLY+VQ8QKKI/zr+ktvEYHEluD
         ZfD921X46tIkDeGS0DKxLrUTNVUR6/pr10/ReiX0ZPV63Ql+hLErTvlA86c/okCBioOU
         sEgxbyEmMNccuw0FYHfUJmoFaGdoqU2V/NidU9pB3ewFooIGgOtGYeezVOV9J8TaFBI1
         HYpRYbYUYEr4G7E75m00hRHiNmgfOp6Lg3X4E6VzfdtfUxJEXTbRDHMu1MG0lixwl6Ko
         OYUFNLi3kaDlayRgcN9oD0Wu9qJRn4/8DLJ8NAY6w3vLhm9ccYVIoCCdTO9N2bsR7Ety
         MBxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=VnpUBXNgro648u8VCsY8AJnw3y8tkeA42OXlvH6Rh6s=;
        b=AX7c9vc8UX9BmB1sb6B/1eX7rWpX1WovQlR1ULANcynmjqDHYRYEskzG8eHivcz705
         9MdQRkUZlCTO6MvvuTfNO06eBeK3DGyU4XfVGRu8vemXWTUvKZQoST0xMXUOdmxFK95q
         9GODdVMWWRmUEjYANb9UPObUnS5tmpOUOQzM3HuG3rY6D13MWON5FM0/gpRbc0lrMpSa
         bOF8hlTR59j7vZmhGwYBNE3B/kKQQGFCbVLhbMSWCmKCjaghCn8Hu37OVrGM3muvukzu
         iO/3nQa/X29TadoAMAx6hj4BnMTPdJm0ovFqgMqI5Mywlzw9n7RHSau3FPSZxEWOK/HR
         zqJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VnpUBXNgro648u8VCsY8AJnw3y8tkeA42OXlvH6Rh6s=;
        b=i9l89e2cB/BRRp/a/jmhRL0j6MEppLsRNq1HdGeUFMmlRXy1LimGVYTH06dxPj0T4Y
         AaOiPCpFUYGxdf2yl4WuQM2sYw6PNQLhYx99L6JgnL+NvWLURjNn9bvsJzbiSpAzM65A
         m1vsidnpKKTxMsp5us6imK8QBI9uDWabfMX8tKwvV0WKJOt21qjq34BD0PhCx9CVgHca
         8SicIzzNCJNSPV5Kg9pyLN3/urxj3D8k/qoGYvV/M0yM6L6FSauhBkKTAHU3p0KeGcCa
         sxtOkBBjU39O3YgoNbqJcHkyUiDq5dO+19BRMWDpIHSo7uDNLzhu0FYAO6e4/WLRu7qj
         AiKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VnpUBXNgro648u8VCsY8AJnw3y8tkeA42OXlvH6Rh6s=;
        b=CPWehklmiY8lrUmN2x6mBzLLQgPJH83RcQ9lt9eT8befzOA5wejlARnyCUbjywedBW
         6nPsgXtnCPqdNG5eZV7bdDFbwrL9iGo+lOpl93yzECb7xoMp+wAy6692klFcmitoOr8x
         NoWXCQXdGyb0T6E2IAz/W5TokLoN08WAzgbInV7ehz3vRrFsZMc0PsIHIFUJVSEM4FDv
         VBUMyYMITqdX8Hf6MgEiyMt8H1FAltb7hpDhocOghT4+ZZzxGjsj2nfnyBXhenvRXfwZ
         CS9JH9oJl2/xi4LwB9kJ/LjvzkhFh+MvKqe5Rjq2OcZ8Ewe5MugDh2+9S2W0krg9a0xk
         yNng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530j64DvdSP02B7OqFTxbzQ21ktaJHFo8DSRh4Fzqv0+BbiWFLG0
	YDr096yVEvUPEQcz2lPjA18=
X-Google-Smtp-Source: ABdhPJwcg67jlr9ViiTtzD0ELZOTWBE7eH6JJOgoZLPsOridOkOhvw1YeV4HbOtRtgbwIk8yZsj5LA==
X-Received: by 2002:a05:6214:13c8:: with SMTP id cg8mr1164177qvb.5.1611279607278;
        Thu, 21 Jan 2021 17:40:07 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:702:: with SMTP id 2ls2065267qkc.11.gmail; Thu, 21
 Jan 2021 17:40:06 -0800 (PST)
X-Received: by 2002:a37:71c6:: with SMTP id m189mr2785894qkc.52.1611279606247;
        Thu, 21 Jan 2021 17:40:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611279606; cv=none;
        d=google.com; s=arc-20160816;
        b=RDeJJqEhrJ20Jhv+W8EileOkiVFo2Ut83SwM/wAyUWgHkC5kPwgEPUfFUwLQhtbRrT
         GSQB7ONHbesDhbDqni8NbD9DoQ65mF2DLBtgwFVVXNluZd748IudARORfvCTIn7KDbgW
         dtdAO36t6me8w1rzHVdc9w/Q5AGzKZ5pecjvv+Rg/3s/Rpwkq1v75rHhYPZRwIuUb3oh
         vdenKFTPzaA+bvYUhzvfOpqXGQ8WhVnTT5xNroSRs1hQCsmMznILHEi2dMcyPUwOEtdD
         OQ0MoljdmxEC0mpIWfDPXG5Qm6UFIIw7yvQaxFwsbODjpCp2UN6MfBdfEB+irEry58yT
         s74Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=miCNCoXKYzZrVA0OryCdZtH38dWEYqeUfMX4KkgH/Ns=;
        b=Jw//nvZ2XSKzUhLDA6+ahX1YMZu3xaFgl+OFKwpUF5KEvcqQQwEWJi/r5XHxE6mx6l
         ptm3CULzRGNvqTCYHnD6aS4PTZCbjVLeyGGj+33aYYwLCoN9tMYOn8ZLwvXnvXmy+VJ6
         Y4hk5NmiZA3ZuU6KFduyILnMxyWuTRUPINKsoFCez0Ruw+GGbTISFWyHIU9f3BQae3FY
         qM8w+XbVPZdLaobWl7iW0LprRhy9fO+Lj4f5xd/q+8jhMgslB2FrJEMIdL7GUlAds6Ep
         BM3kLjp8p7E+Ch35quEsnocM/EFOZlPFLr9K11iaUhwsD1ztC/ukEP/5h8RYzHxwJKgU
         UGwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id z94si668946qtc.0.2021.01.21.17.40.03
        for <clang-built-linux@googlegroups.com>;
        Thu, 21 Jan 2021 17:40:05 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from linux.localdomain (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9DxS+TgLApgnQAJAA--.14315S2;
	Fri, 22 Jan 2021 09:39:46 +0800 (CST)
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
Subject: [PATCH bpf-next v4] samples/bpf: Update build procedure for manually compiling LLVM and Clang
Date: Fri, 22 Jan 2021 09:39:44 +0800
Message-Id: <1611279584-26047-1-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: AQAAf9DxS+TgLApgnQAJAA--.14315S2
X-Coremail-Antispam: 1UD129KBjvJXoWxKrWfZFyUAFyktw4xAr4Dtwb_yoW7uryDpw
	13ta4SgrZ7tryfXFyxGF48XF4fZr4kXa4UCa4xJrykAF1qvwn7Kr43trWrKFW7Jr92kr45
	Cw1rKay5uF1UXaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9Y14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4U
	JVWxJr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AKxV
	W8Jr0_Cr1UM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xf
	McIj6xIIjxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7
	v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7M4IIrI8v6xkF
	7I0E8cxan2IY04v7MxkIecxEwVAFwVWkMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4
	AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE
	17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMI
	IF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_WFyUJVCq
	3wCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCT
	nIWIevJa73UjIFyTuYvjfUOMKZDUUUU
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

At last, we recommend that developers who want the fastest incremental
builds use the Ninja build system [1], you can find it in your system's
package manager, usually the package is ninja or ninja-build [3], so add
ninja to build dependencies suggested by Nathan.

[1] https://clang.llvm.org/get_started.html
[2] https://www.llvm.org/docs/CMake.html
[3] https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
Acked-by: Yonghong Song <yhs@fb.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
---

v2: Update the commit message suggested by Yonghong,
    thank you very much.

v3: Remove the default option BUILD_SHARED_LIBS=OFF
    and just mkdir llvm-project/llvm/build suggested
    by Fangrui.

v4: Add some description about ninja suggested by Nathan.

 Documentation/bpf/bpf_devel_QA.rst | 11 +++++++----
 samples/bpf/Makefile               |  2 +-
 samples/bpf/README.rst             | 22 ++++++++++++++--------
 3 files changed, 22 insertions(+), 13 deletions(-)

diff --git a/Documentation/bpf/bpf_devel_QA.rst b/Documentation/bpf/bpf_devel_QA.rst
index 5b613d2..2ed89ab 100644
--- a/Documentation/bpf/bpf_devel_QA.rst
+++ b/Documentation/bpf/bpf_devel_QA.rst
@@ -501,16 +501,19 @@ All LLVM releases can be found at: http://releases.llvm.org/
 
 Q: Got it, so how do I build LLVM manually anyway?
 --------------------------------------------------
-A: You need cmake and gcc-c++ as build requisites for LLVM. Once you have
-that set up, proceed with building the latest LLVM and clang version
+A: We recommend that developers who want the fastest incremental builds
+use the Ninja build system, you can find it in your system's package
+manager, usually the package is ninja or ninja-build.
+
+You need ninja, cmake and gcc-c++ as build requisites for LLVM. Once you
+have that set up, proceed with building the latest LLVM and clang version
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
index dd34b2d..60c6494 100644
--- a/samples/bpf/README.rst
+++ b/samples/bpf/README.rst
@@ -62,20 +62,26 @@ To generate a smaller llc binary one can use::
 
  -DLLVM_TARGETS_TO_BUILD="BPF"
 
+We recommend that developers who want the fastest incremental builds
+use the Ninja build system, you can find it in your system's package
+manager, usually the package is ninja or ninja-build.
+
 Quick sniplet for manually compiling LLVM and clang
-(build dependencies are cmake and gcc-c++)::
+(build dependencies are ninja, cmake and gcc-c++)::
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1611279584-26047-1-git-send-email-yangtiezhu%40loongson.cn.
