Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBE4KRCAQMGQETHGPNEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F65314724
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 04:44:20 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id z2sf8606157pln.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Feb 2021 19:44:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612842259; cv=pass;
        d=google.com; s=arc-20160816;
        b=xXQ/KV3oOuPSlk3FYf1AQyl0u22LBRCr+HRD1bWbbAeGQ1Rk6P5s2BQWe6BrgjJe+H
         DA3VT4Qi0YFK9WpWkZnL04TOzl9kqifmuiUluvvDY6124WFo9Ug0PAD2Zl/BVXa3lQxs
         VoDsgxJg6QL57EaBuoTZ+GXrDutpdwl8Cx+HKY71s1S35ezaAT70ey8z1oT8GwZFT7Ns
         9fnLrpTdWPgbQOu40EriwZASRaxJiPtcC4bprsukvgND5zHUmq6bvd5dxiVsBxme/mKo
         k4oXx8G3fGlt8Hw2HUZuIOeGVgZe4rBs/epiDeg2ZcRBm51kdqnGaLde/Dg9YdHyx/uc
         ltfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=POOqBysy5+EqyCsJYGS01S1xRzhHi7sDQZvtGkRfMYE=;
        b=W6EVVLkEgrp923JauPhi1x1myQ4cOe4halXEtMPJJFjn775Tkv2dXNWPa7tYoLHHCI
         90EWkpwv/yCI7QsqPFjdyPDzmh7uRuGC/ryJqsZWYzZdSC5l8t/xI6q5FYhmj//h50/b
         jlXXTY9fmxuIDrngmPGmXSWmsdSWN4Yko4DvfZCNZiWM6h0hKPXRFtroxNKjmN85CJQl
         haTXiery76bMohCAf3lqmYtCqb5PsThdt0m9r50/typM2clZTw7k/NkbL51sRTAbG21+
         Owv042X81hPE/L0HfKWiJbQ26s3abXPTyDAb5Qk2SZFG/teYCE2JGhKP0M/gtSga4hEa
         DpkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PHX+ZK+A;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=POOqBysy5+EqyCsJYGS01S1xRzhHi7sDQZvtGkRfMYE=;
        b=Y56uJHqPE+Vo06QN5niSmHmysEnKE+VqhXNj23jSYEvF4Azoc7jre6eACyHvtYt8lj
         ORSPPQR3v9pYX16BN7+e5PQrxuWlDaw0WGVWTtXsHA+SleG4pnc/KDTCNiIJ6iS+rIi8
         40Y7Hnueu9Qu40845PtOJt0VfFfN18vwnm5eOR/gWdnxuZrmUqrB5xA7sXPuCuVZZWiZ
         bJM1ojxl8Yzxtw7TqtYyabOppnyBmN0DMEMJPEHg0jwLyOXQoWI46j53mWzbFys+ZNja
         RZpgtKJv1Q66PVwx1pt1P81YTqEi46s1ap70DJa5WZblYqp43OCIeA7oTxjJyqPy6lbM
         87Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=POOqBysy5+EqyCsJYGS01S1xRzhHi7sDQZvtGkRfMYE=;
        b=DgdKGMj/xvjjOwLYjTW3DFgx8nrWSU/iPxGf3JOX9uGKpDOkWxU7rXGtNnLxR2RXPu
         PVxBZieJiSNKevwgwjzFu2eg6xRq4r0ayjYi1lShQYihgs81TSggxYCwIT6o2EvQuE1c
         fn5fly0FFUvIuRWL1IDjErOIy9zilWvMeKy8E6aW3suqoVrgaN6Qg84hTlWzNFg5SYaU
         MD5dyTa+a0SOaUF4VQA9LJFdRQxCW2mwZDe/+hn0QQy77Nv44LxFzCX/GfdAeDHqvPRn
         dJr6hbgJSkqlyCrNPpF0I5RKd6vMPUPr3c6vhGUYW9CreBoqFyfDWZ1GuD+jefirQ3h1
         WJwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309Nzr71A3lvqYbL2VEmzMJl+p2MVJG2rDLUJAnE28WnZh5S9jy
	I7z4Bq7lfh7nnpFK2X3l9AY=
X-Google-Smtp-Source: ABdhPJy+83pkgYD9JEuQ4DsJlLtbmWpcgERYb4BOr+IK9XFgLT+sH/cKYTE99ES0pGgyAwVbF6ET3g==
X-Received: by 2002:a63:5703:: with SMTP id l3mr795512pgb.344.1612842259723;
        Mon, 08 Feb 2021 19:44:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2249:: with SMTP id i9ls1801698pfu.6.gmail; Mon, 08
 Feb 2021 19:44:19 -0800 (PST)
X-Received: by 2002:a65:64ce:: with SMTP id t14mr20088880pgv.36.1612842258998;
        Mon, 08 Feb 2021 19:44:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612842258; cv=none;
        d=google.com; s=arc-20160816;
        b=s8ZA+acMwPvDXEFA3otq54mTzbuFuXZo07vkQg8G7aer7scYx60ZZ1/OhW6iLtIX5n
         IJeXOSvy0V8rd+pjBEFcq9wZtUO5ES6tXyr68A7muiRgYQfgamZrRRbNq67maLiwTlXv
         dbSwM0S30qmghM+wzYJhbghBy8MRGRiTEdiEU1dRQ5xe/fjT3bvEGN7cYKGW6iDy144U
         KY6zRErWP3CRt0I1m2C4DGt4aTxvWqYST8442fOPjRg1LJlKAFfGuzWv9ZznCMseyhRz
         mCekSJgO7Hb5FgDypVwnN+O2X2F6U8o500upc10yJTz15ZLKPR3XeUbTuqJ7mvN7/FM1
         dsIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=oMJ8w+zTGdpK+NrmSZaLj7GbCLLiGJK5FKhyM6TcRnM=;
        b=Jbac5z+clrxe3jmViY5phUQO4yew+GpdD08ZFfs+lm1QTpA6igwvXtNmNMLVazYsoR
         JDEC100RegzeP9R2Lc0so7AlymNdPFBVAT6G4rkj++t2S4C22c77lrplsHepkenKYzRv
         FxhUsE153bqSECVRB+tFbX89UAv7WlN8YWSQJPuG7+7cw/QXQDQMPwoKfagVWD/DkLCn
         1EYu510rOBdQ0GDlxxUDHJZyHyDh/+IMZIbx+ZVFT78ye1hx1ZExmxCMiy8qcHJx4UiC
         pD5uoCJq5NoqwfcvDMkEsRoKN073hYf+ktvAqAKVsHyjGf7PtassecpzCgKy8F/xN+5K
         yYqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PHX+ZK+A;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q21si818332pgt.3.2021.02.08.19.44.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Feb 2021 19:44:18 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1A53964DC3;
	Tue,  9 Feb 2021 03:44:18 +0000 (UTC)
Date: Mon, 8 Feb 2021 20:44:16 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Andrii Nakryiko <andrii@kernel.org>
Cc: Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Yonghong Song <yhs@fb.com>,
	John Fastabend <john.fastabend@gmail.com>,
	KP Singh <kpsingh@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>, netdev@vger.kernel.org,
	bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
	Veronika Kabatova <vkabatov@redhat.com>,
	Jiri Olsa <jolsa@kernel.org>
Subject: FAILED unresolved symbol vfs_truncate on arm64 with LLVM
Message-ID: <20210209034416.GA1669105@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=PHX+ZK+A;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi all,

Recently, an issue with CONFIG_DEBUG_INFO_BTF was reported for arm64:
https://groups.google.com/g/clang-built-linux/c/de_mNh23FOc/m/E7cu5BwbBAAJ

$ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
                      LLVM=1 O=build/aarch64 defconfig

$ scripts/config \
    --file build/aarch64/.config \
    -e BPF_SYSCALL \
    -e DEBUG_INFO_BTF \
    -e FTRACE \
    -e FUNCTION_TRACER

$ make -skj"$(nproc)" ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
                      LLVM=1 O=build/aarch64 olddefconfig all
...
FAILED unresolved symbol vfs_truncate
...

My bisect landed on commit 6e22ab9da793 ("bpf: Add d_path helper")
although that seems obvious given that is what introduced
BTF_ID(func, vfs_truncate).

I am using the latest pahole v1.20 and LLVM is at
https://github.com/llvm/llvm-project/commit/14da287e18846ea86e45b421dc47f78ecc5aa7cb
although I can reproduce back to LLVM 10.0.1, which is the earliest
version that the kernel supports. I am very unfamiliar with BPF so I
have no idea what is going wrong here. Is this a known issue?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210209034416.GA1669105%40ubuntu-m3-large-x86.
