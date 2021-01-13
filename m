Return-Path: <clang-built-linux+bncBAABBJFE7P7QKGQEW7ENAMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEB22F4911
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 11:57:41 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id v21sf2216859iol.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 02:57:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610535460; cv=pass;
        d=google.com; s=arc-20160816;
        b=GLXVLMNOaQMIZGQOaMQHlvf+Q6S4THcDyC3aaiRhBKwu4wLLQvvbIWtVnN6Z5JIqhU
         GMy/J8uMeJtGoUM2gKMn8scXxJXOYnQiC5RprblYsLxVi4fBozZvS0s48Vu0qW8Ac0G9
         a3DZRr2GC9vf0+TyPUIlfqfHcLCBYstTsU/MexVReCgjuuTfC+k2cQdoHrYFrAHHOJKu
         1yAltZli1fhK7eElZKce8ilaB09VxolFr/Yk7IlCTanl0I4eGIEnYQ0PPgPJvU2/am7L
         sCJ/QfqnkLvrzUg0b0f5Ha6+RiFrKpP3+bC+9nBjS2VNJDbzQPGm3TQ8bkOgtQPdzPEY
         uYGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=XHNR5wYCdJUiEgqVpqscOaP0wrNR0imnVIO/IJNamZM=;
        b=XnmB3ncTxkbvJWXbPBokY+osAz5EgTA/tNuDbJvS6G/CR9Hl0bOySwC6JQ3v1q8CE7
         lsI3T4hvojTJA8IAgxIi0JFTTHQbYd0myjrabqx0UuLzLbd3N2t4XR3d6PxLDVK8/gjq
         mkyR6f8rVYln5DU2YARIXXF8wHoc3FW9dIkD1A1BhtDv5kCw6Q9qLoT6CIuCQhIMTnl7
         5QS1PKDSVOywOy6sf7T7iSbz5soTdKR3BGjmY636PhbXShO0jUkz12I9Q58Zqfam9tAq
         T2mWEI1WQCkLTrFPYpq29onqle/vPND8AWh+sKHCYRcUeFtIrxFe12evsV14YUW4rchO
         gGuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XHNR5wYCdJUiEgqVpqscOaP0wrNR0imnVIO/IJNamZM=;
        b=dFeVr+XuIyAYTxj5GjGymjOIZ0I5BbEYcXr8PiOaqaBift+dAeQ3PeqLhLYalEcJTt
         /eNx9BeUA52F5pQD5G+dqu0qQq5+agZ4qSfw82C+3pJQOdbg8/08JtT3Zj2aQtcGwiI/
         oKglNvkVGqBk4j0mwIUN2RfLgo6+9ZWaXfxVcbH3AOaO9/kb54fBL7uK1pjgHSD/YnHW
         xkck/yTV+pJxo8F15wkctLtBJY7JHIkcQwx93sXQT9LcQcnx2mYaDz7PWKUkSBz9SX1U
         0xufkYSIQNdhd55M+0T89qcBUq1iPK4+kgcI1kLm8lNVTYM+8oOoytWbqsZvwNVUyc5z
         A7ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XHNR5wYCdJUiEgqVpqscOaP0wrNR0imnVIO/IJNamZM=;
        b=gEmCzR/ec88E4mfRDDZoOnLt/GzTxipAb0suyrFBnCp5mTTFFs+0cldq1pBDX13VJZ
         2JbBE7WjQn3cYLRZzhiTOtMofkaxQfLidl4f5JGDrQuuxFhr1Te/eh/iCfOdIbVIovxW
         oxsh6qlqNeibQif0giuuj5ZsHJ3RC0CzH/aRqcbAZTt6PrDS4HfkuuGVZ4uBrE0nInAp
         K0I0haJDONrCVsP+LBxZ+0COWFcW8RGHb0ijuudMzlAyfif7rj5eyvRsxktGKi53RQYV
         7VC+z6k3X6nfZlUjnq+wOL3yFWtTBr6HpdaYHRvaXeFr9qOluGm+uYZR2NqGMvasSgv0
         4Y+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308kvd0zSezL+MfoF/jNWaWsO6P7XyTn1Hf9x5zo504usmDSuUa
	3eSp2TfKeGvg4YkFuivhxKs=
X-Google-Smtp-Source: ABdhPJxUyBV1OHitRx27s7WRh9F3TCqN2AU6u5jfwz9lNBv5+GmPzxyBiPh/62HKvq4KvzlQbcoROw==
X-Received: by 2002:a05:6602:2c4e:: with SMTP id x14mr1263897iov.58.1610535460781;
        Wed, 13 Jan 2021 02:57:40 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:fb06:: with SMTP id h6ls206516iog.9.gmail; Wed, 13 Jan
 2021 02:57:40 -0800 (PST)
X-Received: by 2002:a6b:cd02:: with SMTP id d2mr1308611iog.4.1610535460382;
        Wed, 13 Jan 2021 02:57:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610535460; cv=none;
        d=google.com; s=arc-20160816;
        b=gv16eIv5TMfhwMHdgDWMWz+e3ky1MSJrGKusFvhAd68afz7FJzud2+tNytHofhckuh
         LFmLPg80jvaxR/73lhkW72wZMZIhywJZqdgIPKP0rfhmetIRLyXF7U4GCsTOaceWpghu
         OW33AyPtkCJhItZWNEi8BM4dz6Gnw19n+6KKsDwMZ7kOXaGX+lvp6h3HqJYbWpXduz26
         z+6zL0j+1AR+qUkeibaznVPs7sSXu7bjEgMzEKGog/BJRDKTiQWixvFBRXZe0KmXNg1H
         stnbM1DtfFMe2zIUuflPXNckE2yfTuDFIozlbWsFhz+u9BvoMLOMG+kDtYANixeh3DNu
         WiXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=UzX1c2t7BmQ8BAj1a1mZfrvDE4g4bH+sBpdthuqMIeU=;
        b=n//8dkQ3yOPbivT4PFFduHMkDh8rvOMgjiOhH6jm0Un+CVkmhkqqfc+SNiVqqFVg1N
         b47A3IDM2Y8hspjcLIaKduPBBtX7YDWm1AMiBGyNYZ2i5fX6qlJvs7dZ7pF5WbE2CJmS
         mK2Mup3mC1avRLB6lz/GtjOzJwbN5BmeiauR6H9X2PtfQ8zCnO1bHOhJzPZhuqNlvPsm
         87ZL+wSxg4HqURNBWhBubmqC9oDO9RQ9fKUOwkj6dUVjmrDgzLNwtVI0IrhZKCdqPkAH
         cRIEZWxN89ZeVYGTR924G5g9jMxsqCvw6EV/F5vTAVrP3RpXCoIZvexvpPosK7PTjNU7
         /O+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=yangtiezhu@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id l3si2284iol.1.2021.01.13.02.57.39
        for <clang-built-linux@googlegroups.com>;
        Wed, 13 Jan 2021 02:57:40 -0800 (PST)
Received-SPF: pass (google.com: domain of yangtiezhu@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from linux.localdomain (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dxr78d0v5fhLMDAA--.6498S2;
	Wed, 13 Jan 2021 18:57:34 +0800 (CST)
From: Tiezhu Yang <yangtiezhu@loongson.cn>
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>,
	Martin KaFai Lau <kafai@fb.com>,
	Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-sparse@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Xuefeng Li <lixuefeng@loongson.cn>
Subject: [PATCH 0/2] Fix build errors and warnings when make M=samples/bpf
Date: Wed, 13 Jan 2021 18:57:31 +0800
Message-Id: <1610535453-2352-1-git-send-email-yangtiezhu@loongson.cn>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: AQAAf9Dxr78d0v5fhLMDAA--.6498S2
X-Coremail-Antispam: 1UD129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UjIYCTnIWjp_UUUY67AC8VAFwI0_Xr0_Wr1l1xkIjI8I6I8E
	6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM28Cjx
	kF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVW8JVW5JwA2z4x0Y4vE2Ix0cI8I
	cVCY1x0267AKxVW8JVWxJwA2z4x0Y4vEx4A2jsIE14v26F4UJVW0owA2z4x0Y4vEx4A2js
	IEc7CjxVAFwI0_GcCE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE
	5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26F4j6r4UJwAm72
	CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7
	M4IIrI8v6xkF7I0E8cxan2IY04v7MxkIecxEwVAFwVW8twCF04k20xvY0x0EwIxGrwCFx2
	IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v2
	6r106r1rMI8E67AF67kF1VAFwI0_GFv_WrylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67
	AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IY
	s7xG6rW3Jr0E3s1lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxV
	W8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VU14rW7UUUUU==
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

There exists many build errors and warnings when make M=samples/bpf,
this patch series fix some of them, I will submit some other patches
related with MIPS later.

Tiezhu Yang (2):
  samples/bpf: Set flag __SANE_USERSPACE_TYPES__ for MIPS to fix build
    warnings
  compiler.h: Include asm/rwonce.h under ARM64 and ALPHA to fix build
    errors

 include/linux/compiler.h    | 6 ++++++
 samples/bpf/Makefile        | 4 ++++
 tools/include/linux/types.h | 3 +++
 3 files changed, 13 insertions(+)

-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1610535453-2352-1-git-send-email-yangtiezhu%40loongson.cn.
