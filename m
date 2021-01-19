Return-Path: <clang-built-linux+bncBAABBMFPTGAAMGQE343QUPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4D72FAF3D
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 04:53:22 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id ez7sf5028868pjb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 19:53:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611028401; cv=pass;
        d=google.com; s=arc-20160816;
        b=LLrtDavTmfkE6yjwWrbJx4AzGsPrjAN/ho9Ds2PkI0yLeqTT8tbFFG2hzVdfB9m5lv
         77C/K1KSXzLX1J7DXXkRIZYlv8Brj7yB9ZHzTsf2JNFoi3a4EhaZx8eQTG8EPcx5jxjM
         AVCHWxnBosiDh0AaxCSTFV+JGWzu4rtKQEoU+8p2kNgmiFhJc+cjK4nKgWZipP68bxF1
         fCyLBL9o//nXmGKVI5eo0lXXM54EV1fJuKuopl2K3QAhjMJ9csNGl1WLlK7YMe4IeTRq
         0cYP5gH77TbDoCNn6i4YtNmMj/B2emWc+oy8Yl7FJdUm9FT4of6vd7hdu+tTUOk5OjRM
         HCPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=LbEUI3Yr0WM+PCi1cMIUsiAhH+301CSDHivVgedBzdo=;
        b=GIbPp3m4oRuQmmU69r2JSfUuzIXDS79AUDTiNrOEj/Qsk2pAAbM4bV04wgGZ4sE8mo
         tp68RskX7plfjGTOW3hwQ7a0iU2KAU5a40sKbiy14NEnfFsoIbcmg4Z/Au6i1KRPlNkP
         V/8drYY6CjgcGDzTV+kzP9BZF3uYx5wwJNySMyQAL4HtRTvQLOa/nm6jDYHGooOvp9Dd
         UxtEVD79mGzAw5Id4GPyfh0WFusIhATdM6Wbz80mx4+Pq4x9ROnVvnPhPBraslQUwQft
         nS4oqEk8Wfu5xG8UvTDPFS9ma+He/It8otkPWyk4ZkyebmBS58bNRRma1pDoR5l3fOs3
         Y1XA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LbEUI3Yr0WM+PCi1cMIUsiAhH+301CSDHivVgedBzdo=;
        b=X5sZ/ajqStNs3d5j59S7mQpVSxkPCZbQvoqQD7cKuntxXLj9hgH4bqLrdViqJK4ERE
         tJQdwao53S5gW30myTWrs3fDnBAtXcEmuWt95M7zpDh7rB9qE04ZP06EolrPcEPHUCwF
         of8WtCYi0eFWIHn1HJHVGbaz3euAMuDshfM8g5vR7xBC/RWfLzDXiYRT7/v/mrWMv8A7
         /vSUCzjmqmMA0rKXNuo0pd2BcR9fbmQXHSb1B0GVfKqSf9QjbM/2VaApHJUYmbtPIEKJ
         P6C+mkgANxBDWDPdi8e2py2Ux9nag7q9fFFkMrSSIkFNDDlW7uZIa5XADkSHUDkNJuiA
         xj6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LbEUI3Yr0WM+PCi1cMIUsiAhH+301CSDHivVgedBzdo=;
        b=qefGikTz90b8HiRpC9CXDnkFuq5B6sP3uQ+8YO2BiH76Nm5/9l2o81iGh2XheWYkmi
         MDiOD5nUclPsQRYZ2gHqV2HsPkkoadZZzF7mYKRB4eZX6pHmtizdpfMnOEpCKq2caImW
         DBM2u+1I+4NEBfc2CnwL2sdd9Fk8662WmaNPL9PgsGa3WyUc9VaHILQ1rgfYzbfkSgR3
         ijv8PLCt5JgnOauptpF0cqEGuhyTUFmah5pDX5BGNnrdQ96XDgLFEVTJBMma53jXeDQ9
         O6g1Bd261P6f5tSHY8WZrl69lhAqX5NOrqy7RWp2xtXpFbHGT29t9La51jDLmleP2uGe
         91UA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530k8VFlA+8RWlCv6/1d3NEryoBt6DOTu+Q1Ii2y+RW+MF2O0ry3
	VBCmfTDBPG6zSD9z50eHHN0=
X-Google-Smtp-Source: ABdhPJw5PaP9Gad8vr7bP+7/KGQAj7HwC7MOW22+aiaJ0MVJA5K3liy1s+qtVpXOMRnpPrH12jo7iA==
X-Received: by 2002:a17:90a:520e:: with SMTP id v14mr2875018pjh.233.1611028401102;
        Mon, 18 Jan 2021 19:53:21 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ba8b:: with SMTP id k11ls9118364pls.8.gmail; Mon, 18
 Jan 2021 19:53:20 -0800 (PST)
X-Received: by 2002:a17:902:ce81:b029:de:6b3c:fcd2 with SMTP id f1-20020a170902ce81b02900de6b3cfcd2mr2613331plg.67.1611028400606;
        Mon, 18 Jan 2021 19:53:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611028400; cv=none;
        d=google.com; s=arc-20160816;
        b=JssvGnp2RXihb4N2J0Hx0RtyKjF1mgJQfa+SMihWRxSGj+5u/a1YFl4Buw8yHd6kaZ
         8NKZenxguZiC/FnAhjKxzaID/bDeN9aMf+6uq+NX+S4sRoi4amuA5oUeYCCRxh15SPNW
         MYizw8ThBvXZPx+NxEjXhSiEue9Uz9HcRZPNOWCYfoToN4ktUdfcBQ10qfZiG3pPpfrp
         vbnwUN1BYnRaWEz9B2fIm7tz7FusYvteSmKAaXptbO/ryGqFK0CmA9q/YWVgTRbk6Bw5
         v8VXen3unyeyeqqKQdGev0VcIhdeWvCLJmL4GmwISk5ZgERLHdH0NrGNtcb3lNOcLOqP
         QURw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=G1/w5bKMHx0YAmAEbmJbWZujoFp7iQPCTlT9xqhe3ts=;
        b=dtrdczgl1pvY/HxBx8rf3GlTWNdYfNMHp2vtCF4GEhrO3JO9m7+llMrj5YhHKK2898
         n3fNWHsvjJOCOW7w6EqHelpSDfK82xbucMhaQ8pHZ43USTyYtCfEURcs7JUT9Y/HVAdo
         B6gV3wBtYBcFt0GpIQqUeueOhAiYYmz7vSBMXldEf/1sXhNd26hov0bIIbvjzoYIiCwQ
         82T/S/BIUPzb1kNWXYQDLZuLHXpYVIxDIwvBsVRM0TSCWPtd/b1b4lr4NBBfYM7kuSjG
         73JAwGZPxQI1LOQNWlfQMAum5vbQw8b6U8eNkM+dRAr0ZYAnGu3/dxGch4w5oqpa544q
         fmHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id c3si1132349pll.0.2021.01.18.19.53.19
        for <clang-built-linux@googlegroups.com>;
        Mon, 18 Jan 2021 19:53:20 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from linux.localdomain (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9AxZb2qVwZg1CwHAA--.8737S2;
	Tue, 19 Jan 2021 11:53:14 +0800 (CST)
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
Subject: [PATCH bpf] samples/bpf: Update README.rst and Makefile for manually compiling LLVM and clang
Date: Tue, 19 Jan 2021 11:53:05 +0800
Message-Id: <1611028385-32702-1-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: AQAAf9AxZb2qVwZg1CwHAA--.8737S2
X-Coremail-Antispam: 1UD129KBjvJXoWxXr1UXryrXry5Cry3JF48tFb_yoW5Cr4Upr
	4aga4SqrZ2qry3XFyxGr48XF4fZrZ8Xa4UCa4xJry8Z3WDZrn7Gr43t3yfWFW3Wr92vr43
	Ar1fKFWDGF1DXaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9j14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
	6r4UJwA2z4x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r
	xl6s0DM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj
	6xIIjxv20xvE14v26r1Y6r17McIj6I8E87Iv67AKxVW8JVWxJwAm72CE4IkC6x0Yz7v_Jr
	0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7M4IIrI8v6xkF7I0E
	8cxan2IY04v7MxkIecxEwVAFwVW8GwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbV
	WUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF
	67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42
	IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6rW3Jr0E3s1l
	IxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvf
	C2KfnxnUUI43ZEXa7VUj5l1PUUUUU==
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

In the current samples/bpf/README.rst, the url of llvm and clang git
may be out of date, they are unable to access:

$ git clone http://llvm.org/git/llvm.git
Cloning into 'llvm'...
fatal: unable to access 'http://llvm.org/git/llvm.git/': Maximum (20) redirects followed
$ git clone --depth 1 http://llvm.org/git/clang.git
Cloning into 'clang'...
fatal: unable to access 'http://llvm.org/git/clang.git/': Maximum (20) redirects followed

There are different ways to build llvm/clang, I find the Clang Getting
Started page [1] has one way, as Yonghong said, it is better to just
copy the build procedure in Documentation/bpf/bpf_devel_QA.rst to keep
consistent.

I verified the procedure and it is proved to be feasible, so we should
update README.rst to reflect the reality. At the same time, update the
related comment in Makefile.

[1] https://clang.llvm.org/get_started.html

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
---
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1611028385-32702-1-git-send-email-yangtiezhu%40loongson.cn.
