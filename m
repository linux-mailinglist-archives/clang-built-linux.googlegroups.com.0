Return-Path: <clang-built-linux+bncBAABB54YSWAAMGQEV44DWTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3552F9B8E
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 09:53:12 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id q10sf13275614pjg.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Jan 2021 00:53:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610959991; cv=pass;
        d=google.com; s=arc-20160816;
        b=bDyUWEctAq87zGLgqWAfjX4pSFruiqPWAPuNHyo0ywV7FIJbgFvi7a88Km4Gtxq4ZD
         mSrOucpTXYl2CV12AupAXLgzw6uYqYAK0Q1YDS8cfYB1VfDOFOEvVc+vK553i+8t/2le
         eXRdu7989Ve4SnV+R2IlvF3JaFutyqwLRwr3QjyWt0gkdTZuzcnLTvkMhG3xi2ZNVS2c
         kk8UoD2MGDbjHXvWG8hUv6u57Vc2n8BqCMwbaXdy8S4iUSzJjcwmpqlD+1D4znVFAfHx
         0BrnWAEJezAfT5WF2snmJWHtTVCpE/+7ONQpjnTKjbLJJ6yJDupwzXJbrjC/XI2gJ8b3
         Z+vQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=+PtG49qsb3Iw856siEzeS5jCvdtALDxLFm0/ap9X5Qw=;
        b=tYeqSCn1yUuvdvVQWnVh6MZH6GSbsx3qnFEIvJwqeUFOHlRv+Sgvg3S1ciGbN9Mk7t
         O7DWE4cNGlgyHCbwQKIiKlaKpJ2/tm/fkmvR7Bo8KV+GaXNodUFz8SiGVrJUq8mNFUam
         LKR+YDHwirIEKBvWYZVL+VE9rKijsvJNkeSPKq/rjCX1VhAUg3mOaBOydty6WAXLCk93
         P1s6X9eaRGyuLreJh3f9OtrHwv9RgMCgPPwDHS7rxODcrFS4iWZ7df/kGO84K8Vn8ll5
         qBPiqlKgIbamIzNO9uiWQW/x083/cFO/+UpcSjuBWE6oyEFhgF0s3eei48dHTFRAIkvR
         h6LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+PtG49qsb3Iw856siEzeS5jCvdtALDxLFm0/ap9X5Qw=;
        b=IV7p7iTXitggJT1LedqSLQw6uHiguTrK9SlfwfRVuw7Lx3IUEMfR0zf0y1ELfxaodG
         0hJpH5GkxMt9gG5zhsZxU9jUYeQ0c32lU3NzVJTIuvZqXWnYGzgvUWygLGRYQzEsQRq/
         5XEoUGZk1ayf1YGCVCJrbMITk98T1JM0bAyElbxuKGT1aNkbgJfNg8O7zCCDYQFv2ccH
         kv8CT0ujuLn6Ul49CQgVuxrm1hi8xTOVQQDhePe5E83LBn1npuAsY7vVcUP1MOdcyNVK
         bbnon34pcCdBNmK1fTHB9oe8BwjAPE/I7W6mLplprZYpRmdwhmcVPwyvZ8lYrFRHJiqc
         cfmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+PtG49qsb3Iw856siEzeS5jCvdtALDxLFm0/ap9X5Qw=;
        b=pcQm3NBel6hOk5JLbE9xE9jq4NjEBq4aCsNEfFpRiFDyQ3FJZa9pFxbEPfvRV4OiEW
         tnDP+JNIxqLg4ieOy6/T8+7J7dtUxZw0Ht6SG531V+JV4cTsC0VpHu7MMvy8VCynvCTZ
         ZI5ZyCrTqSPVw1mYR+ZthG7sjkU9nufdgLRyB2NTWC7X5P4wp+bAsxMGmyfigz8GE/GO
         hJT+EcMvYdOhZQ9yNW3k5lij/jko9oG1pguBMZv/7cJi6yn6eBzhpjMc7Wxn+BGUAAz7
         GH8e/2dDgM0Oe+9OWO8Hzrtesze9hiIGxAPADaXN8C+XFYEIXjHsHElMk0jk+aaBuo4/
         xZMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530woUHoUUnUNZZPaYlt5SAkQcrXMMn7rIrLNnfTvlgPsma35bVS
	9Fi5Z97d+ymyWx/qwaUfZe0=
X-Google-Smtp-Source: ABdhPJzsWftuqDcISHGlJHW05KPG3EakD/REpG/Q5XwyZWsF8ug2JSfClAhd5fFQqsnV1sh2ZoQatA==
X-Received: by 2002:a17:902:a711:b029:dc:2f27:c67f with SMTP id w17-20020a170902a711b02900dc2f27c67fmr25727174plq.74.1610959991449;
        Mon, 18 Jan 2021 00:53:11 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d713:: with SMTP id w19ls7846452ply.1.gmail; Mon, 18
 Jan 2021 00:53:10 -0800 (PST)
X-Received: by 2002:a17:90a:8b8a:: with SMTP id z10mr25546374pjn.67.1610959990814;
        Mon, 18 Jan 2021 00:53:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610959990; cv=none;
        d=google.com; s=arc-20160816;
        b=A6dzPODuQGyabH9Q54zl8/3cey2RsZWP6RvbZV9MxzXLeiH8WXS8u6lBQF9zPD55jf
         lMae7vTQUNhLvVwgInC9sl808CcDH+1GLk8Il0iE/lRTG6mloW9dE4/yjmjavFjKMKYr
         Cdx5bEYHDYyij6xxRvm6TERMmfzzZhtpQc5jZpHUC3V9BPyXr56gzi2FY+arrouqXvXh
         ZpRcr3JqdDLu7/GOUNwDtPnChsaYsjLOJzcaMx3TBK+wEeR1Qw6Vc0naVTYnfDIQZFUI
         JG5PHj5yG5KuimTHJW0A+YL9kh2JohEz02Xx0My4t/1FBIsEBLD9FtEIpQ9ZUi/klnS9
         mE3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=BmOC9iBROLvoRem7uTqX+o6+uJArfJNCAP2gyVdUvNY=;
        b=ck7RSgOc0JPJ9zPRE2mqYsfqJnlXFQmsBDJhkokKVWqRyo1fPfuHhLS2gCHdWHDeeX
         k+Ka++5rQZJ1/06MmekUHEH2ZIWtGmouR6soLlbnjjktuMeO2qB7/if+OtoF5bM6O8Xl
         bkP0pWVTwgXNv1gc1huSkFGQypEIoKz35J99gGDjfJ+D9wOZjyqCQt0W5kWw2z/w0qDQ
         tQkVktMF/I024c0FjNFmduspTw6uDl/O04QaM/SZzsn6BM5tHOMZ1jeqYTA4n/RbojA+
         X84cmwK4ynrpVrDeqmNbOiVHoE220ir6hc+tvfWtnug8x0z+WpSSANgvdtGMFnpRWsda
         OB2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id d7si466225pjg.2.2021.01.18.00.53.10
        for <clang-built-linux@googlegroups.com>;
        Mon, 18 Jan 2021 00:53:10 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from linux.localdomain (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dx++RvTAVguaoGAA--.11215S2;
	Mon, 18 Jan 2021 16:53:04 +0800 (CST)
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
Subject: [PATCH bpf] samples/bpf: Update README.rst for manually compiling LLVM and clang
Date: Mon, 18 Jan 2021 16:53:02 +0800
Message-Id: <1610959982-6420-1-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: AQAAf9Dx++RvTAVguaoGAA--.11215S2
X-Coremail-Antispam: 1UD129KBjvJXoWxJr47Xw15WFWrtw4kXw1fJFb_yoW8Ar1rpF
	4UXa4a9rZYgFy2vF9xGw48ZF4fXrZ8XFy5GFyxJry8Z3ZxAFn7tr42kayrXF48WrZ29r43
	Ar1S9FWkAF1DZFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvE14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26F4j
	6r4UJwA2z4x0Y4vEx4A2jsIE14v26F4UJVW0owA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gc
	CE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E
	2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJV
	W8JwACjcxG0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2
	Y2ka0xkIwI1lc2xSY4AK67AK6r43MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r
	1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CE
	b7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0x
	vE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_WFyUJVCq3wCI
	42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWI
	evJa73UjIFyTuYvjfU8Z2-UUUUU
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

The Clang Getting Started page [1] might have more accurate information,
I verified the procedure and it is proved to be feasible, so we should
update it to reflect the reality.

[1] https://clang.llvm.org/get_started.html

Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
---
 samples/bpf/README.rst | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/samples/bpf/README.rst b/samples/bpf/README.rst
index dd34b2d..f606c08 100644
--- a/samples/bpf/README.rst
+++ b/samples/bpf/README.rst
@@ -65,11 +65,9 @@ To generate a smaller llc binary one can use::
 Quick sniplet for manually compiling LLVM and clang
 (build dependencies are cmake and gcc-c++)::
 
- $ git clone http://llvm.org/git/llvm.git
- $ cd llvm/tools
- $ git clone --depth 1 http://llvm.org/git/clang.git
- $ cd ..; mkdir build; cd build
- $ cmake .. -DLLVM_TARGETS_TO_BUILD="BPF;X86"
+ $ git clone https://github.com/llvm/llvm-project.git
+ $ cd llvm-project; mkdir build; cd build
+ $ cmake -DLLVM_ENABLE_PROJECTS=clang -DLLVM_TARGETS_TO_BUILD="BPF;X86" -G "Unix Makefiles" ../llvm
  $ make -j $(getconf _NPROCESSORS_ONLN)
 
 It is also possible to point make to the newly compiled 'llc' or
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1610959982-6420-1-git-send-email-yangtiezhu%40loongson.cn.
