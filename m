Return-Path: <clang-built-linux+bncBAABBLFBTKAAMGQEVM275MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7012FB395
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 08:56:29 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id 32sf13322659plf.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 23:56:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611042988; cv=pass;
        d=google.com; s=arc-20160816;
        b=sNZkU2x0u1Yu3C0azUmDVUvOoagMRaG6QE/IeTZuvNYvTp77jon3Rs5gIDVv03nFf9
         5dXb6tiMW3k2C6Ovk1yNEdU6SOU9ZwO9qwEIGrKPf6j4+sZqzmtQTx3q6rhn96mG2o9D
         +zjp5vVUeuNLBFSKE/V98M9dME5YxDHEBrqvBG/kqiAT2HO/xCkDyL/wWI4eltzLrSP2
         UGQq0XwFICNhWHVeG+h2p94bf7cPLKOC8ieKDV1EbWVC59KazYzDgQP7MEXJYGj+loDy
         nbEyJA0H8vijEuRXE13pVf+8YVsXQkeF4mJ2y+DOfawrLXG9j/WQPXZhOM4eBosCl4BL
         Noaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=gNc9TPecSFWiDj2RU3zROLfLs9PIPgeuD94dLsyx8LU=;
        b=GqiqYDuvjOehs4B9SoCyK9QC2m7IcGRc7cCp19dNLKG+hFsG9A6xa8CGQwMhHKZt+M
         cgD19tFBGnWtEov0Mzbc6rs/n+VKhShWIyUAI85UjglLArGOeo8ds7Lhm1KcXG/Qoize
         h+QeGoAvrDT6/OAJqyJQxYiJVKziRNwrG9AHjmLyTBXAZl7C11PcSAPErzxmAuciRdZs
         mVDQhX2ev4isQ61PT52AcahjtRTL7SB6s32vPr52M9TvfNyL2Cb9BVq9u8+meB0NWST4
         LRSpktNc8TxCNKj0NNiwXdt80zck/DrlyXAlvDpfeZ1ByNLvi7hXFpI/jILfpw/eIk+7
         JE2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gNc9TPecSFWiDj2RU3zROLfLs9PIPgeuD94dLsyx8LU=;
        b=QvotMSE+hhomu6Djv9uflB7EodNGAa9yiByoCyiE7ABCvVeE79nc/dDYk1qwsxBk37
         o9o2gc//+rno9y8549vpV0ErPCHJW0ycIbsX9mISvWqjEJBD8iOZ2lW8u/lI/DNKyTib
         8YFd+du1Gu3XKVIKaFArrzZ+hdQRd/3Myof6gvcDuIqFEWNkGleV9iEK2RgvJlqm5/va
         xCWUzjJXinYrIhlMIqTqqpMgcuJx6LxSFmmc0iX/F+j8EV6uUZjw5e5Fh2UVTIibeYmd
         64S4o8OVF5C0Z4iqQgXZpdOAbMGCGI/todLKxDBYfZBaujbEM26rcVILl6hCKgfs9rD/
         Jq/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gNc9TPecSFWiDj2RU3zROLfLs9PIPgeuD94dLsyx8LU=;
        b=HCvX4l8J36ZOlazbBQyupPwIRAVgDzCby8zv4zQkFiNzlGBXpbYo77jRa3XZMY9aJV
         m0npYoCLkGZARknsdUSh7uXjfoJVxJ+gY2dFcC6RMfnEkYHlpL0WY/X/gp+X7WbQrzCN
         TzIOyAWvxNzlEdJnya/KZixI1zSiFUtj0L4RcBaf6ROylZmjTR5z/MxOCseskrtt5AyZ
         YFsw+bXDCN3ydHfHiHeHN1LV6TEehEjWVd9ohDDgccIYANpCOlYtAVQnaOSEnxSxKchx
         E1EEN1N0dVkFh8NY/t5qg+Ppj0uGoHKt+ByISVsiElGZd19AqyzH/jeMxW0RHN1MEovP
         ZqYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JOxBYaDBnY9IK5lFxnilDr5/nvU5Co/tDWv3SIwNyQ8JdobQ7
	vofnLatF3YBwJU6GAoy2hZI=
X-Google-Smtp-Source: ABdhPJxFFty9obOBhKuE0mNFx/tlTceDr6Jc92QG2t8CBaFaR7cTCL0Uol1ziZ+35rXWjN6VSxBqcg==
X-Received: by 2002:a17:90a:7844:: with SMTP id y4mr4028723pjl.68.1611042988159;
        Mon, 18 Jan 2021 23:56:28 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:550b:: with SMTP id b11ls2830815pji.0.gmail; Mon, 18
 Jan 2021 23:56:27 -0800 (PST)
X-Received: by 2002:a17:90a:bf06:: with SMTP id c6mr2021673pjs.220.1611042987669;
        Mon, 18 Jan 2021 23:56:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611042987; cv=none;
        d=google.com; s=arc-20160816;
        b=zrdHLXuHt6ZrrqDzGHQHKtzKWhqkL3/IdCoIHmdP7ApESgv6BMbeGVhhitkVeKxwFU
         irV9F32BSkJCufnck8gCo9XIYnv84uzEfD2IHbJiEwEIJrMRyfHy9xL146a1QhkLJ09q
         L+8albQpMymgZ4UqnvsHvd3OJdhEPOrOczxY9D3SUSklPE2OaYwqfD0LZ2n8RUFb83Yk
         eHZfRx+w7p747y79MHp54gx8HdRnIKf6t+36nZKIxlIRJPtM2hY6tTmBGUCTy1LfnFol
         WbaQrow7xJXvgTZqfEHrnvF4z6+p3E3cHgFini0G66R66aSRAjuMem50j5qDulqykumv
         sAdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=QfaFQnmjb7jbVooX0JXvh5AWUR7/kCHSzqANMTipX4U=;
        b=tPAV63DtjdL9/Aq6meuhWbNIFJ//b8sZKn8J/A2OFFcQ0AEonaRadAcB+LMc0JfsH3
         35jrypkPLSZcado4UOx2icHQOxXHmbbspaEWKdksvXqvPcY9lgk5OZNJBUrSXLS2haXa
         O9Yb7KnbWcv8cxxlCCcjJeT5uhs4thw2Y4zFlAlNsvqzduCeZefl/uPLwRiCNeQcb1Mw
         obWQUseFZgbMoncuQQT8uC7bQV37Ga4kSQnDr5YpzgGjQnaeHF4zvr5289+3tblPRAvE
         MpNWllFd11Vduj7CT/JumOBmCfjMxAorE16/EMQwOMapo8bxG5m0+7Iyo5qGiKk5xsch
         b7wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id d1si215807pjo.1.2021.01.18.23.56.27
        for <clang-built-linux@googlegroups.com>;
        Mon, 18 Jan 2021 23:56:27 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from linux.localdomain (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9Ax5byikAZgzlAHAA--.8948S2;
	Tue, 19 Jan 2021 15:56:19 +0800 (CST)
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
	Xuefeng Li <lixuefeng@loongson.cn>
Subject: [PATCH bpf-next v2] samples/bpf: Update README.rst and Makefile for manually compiling LLVM and clang
Date: Tue, 19 Jan 2021 15:56:18 +0800
Message-Id: <1611042978-21473-1-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: AQAAf9Ax5byikAZgzlAHAA--.8948S2
X-Coremail-Antispam: 1UD129KBjvJXoWxWw1Dtr4UAw45Ar1UGr4UJwb_yoW5ZFW8pr
	47Ka4SqrZ2qry3ZFyxGr48WF4fZrZ8Xa4UCa4xJryrZ3Wqvrn7Gr43t34fWFW5Wr92vrW3
	Cr1fKFWDGF1kXaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvE14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
	6r4UJwA2z4x0Y4vEx4A2jsIE14v26F4UJVW0owA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc2xSY4AK67AK6r4xMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r
	1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CE
	b7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0x
	vE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_WFyUJVCq3wCI
	42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWI
	evJa73UjIFyTuYvjfUeeOJUUUUU
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

The current llvm/clang build procedure in samples/bpf/README.rst is
out of date. See below that the links are not accessible any more.

$ git clone http://llvm.org/git/llvm.git
Cloning into 'llvm'...
fatal: unable to access 'http://llvm.org/git/llvm.git/': Maximum (20) redirects followed
$ git clone --depth 1 http://llvm.org/git/clang.git
Cloning into 'clang'...
fatal: unable to access 'http://llvm.org/git/clang.git/': Maximum (20) redirects followed

The llvm community has adopted new ways to build the compiler. There are
different ways to build llvm/clang, the Clang Getting Started page [1] has
one way. As Yonghong said, it is better to just copy the build procedure
in Documentation/bpf/bpf_devel_QA.rst to keep consistent.

I verified the procedure and it is proved to be feasible, so we should
update README.rst to reflect the reality. At the same time, update the
related comment in Makefile.

[1] https://clang.llvm.org/get_started.html

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
Acked-by: Yonghong Song <yhs@fb.com>
---

v2: Update the commit message suggested by Yonghong,
    thank you very much.

 samples/bpf/Makefile   |  2 +-
 samples/bpf/README.rst | 17 ++++++++++-------
 2 files changed, 11 insertions(+), 8 deletions(-)

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
index dd34b2d..d1be438 100644
--- a/samples/bpf/README.rst
+++ b/samples/bpf/README.rst
@@ -65,17 +65,20 @@ To generate a smaller llc binary one can use::
 Quick sniplet for manually compiling LLVM and clang
 (build dependencies are cmake and gcc-c++)::
 
- $ git clone http://llvm.org/git/llvm.git
- $ cd llvm/tools
- $ git clone --depth 1 http://llvm.org/git/clang.git
- $ cd ..; mkdir build; cd build
- $ cmake .. -DLLVM_TARGETS_TO_BUILD="BPF;X86"
- $ make -j $(getconf _NPROCESSORS_ONLN)
+ $ git clone https://github.com/llvm/llvm-project.git
+ $ mkdir -p llvm-project/llvm/build/install
+ $ cd llvm-project/llvm/build
+ $ cmake .. -G "Ninja" -DLLVM_TARGETS_TO_BUILD="BPF;X86" \
+            -DLLVM_ENABLE_PROJECTS="clang"    \
+            -DBUILD_SHARED_LIBS=OFF           \
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1611042978-21473-1-git-send-email-yangtiezhu%40loongson.cn.
