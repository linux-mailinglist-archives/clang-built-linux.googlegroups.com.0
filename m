Return-Path: <clang-built-linux+bncBCT6537ZTEKRBJVWWCLAMGQEL5H6OFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id E930A57030C
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jul 2022 14:44:23 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id w127-20020a1fad85000000b00374c92bb78esf461875vke.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jul 2022 05:44:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1657543463; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q/b3ceOZLS+xRVYbsdh4QJxus8pZN/WiL+4OMgFkCiuQtjqTGijhVOb7H35Jz6LdXI
         NRAmiX1qTyLt4iGTA2cZTTrjejjO57YtKPlr4erfwKPyZ4eLa1gAxEYHoT7Wft2VBapp
         qaMkpEWYvEEcFmjVcnSiv4AibDfcfUlOcCFhMNHufGqiappy6Vpd5bS/4R7GGFZ3Hty2
         UYP9HNmCrzAQxws1s9WRQf8WaiLFlDIxsrIa8K7isMUQVyKNqmu5lzXaj0r7gBOnhLhi
         +cmvXz0nDLOkhCTjJJRy8K8Fg06sBPm6rbKsCqmsCYSJw6YbnoLwUIUkWvbcJieBOgxI
         I3bQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=JcGa7ikFmdZoDLsFzQpfR0soifX+/xhHkzjRG54IG7A=;
        b=BliFnBKEJAzrYT2KhV8MzxikIWmtsocgSJ/ada+OrjQASvsRPOVRAyr4q6hGFrVTNh
         svMM7wJYV4PKBZZc4/g3wHT0UhhmE2IV/xCMc4n+sTOleFY35HDaTCkAY/eF07C+eH9T
         icj6UlmgWjEORZFQ5zf+hxShGTxRuwOaEB9JOsJzhhRtb8oFTh16dW+jvZx5qjJYLFqh
         Nbrk73VbOowf/DxTRNapKFBGDMl1fNpbutuZ+mVeKDZsCCOJ79hy4T+oUOaYWmYf9tQB
         M8tdiCJIBNhhbXvX0nsSITErSNDdxmElLMWkIS2Z9znqUBlqLyXcudNMHLUf919j0gY/
         2ywg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Bi0thlVz;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JcGa7ikFmdZoDLsFzQpfR0soifX+/xhHkzjRG54IG7A=;
        b=fzsl9oHg3F91nDK8Sk3kwvoFsHDKiMthgIipEi4BiSBABU5fbIYZx1zI+6/kDaezUi
         IekRcHalWIGNGkXrDMR7x2RkaRKV/3Dph0s+88/JHxb9LngCgsrswLFza9gNYkRJGACH
         /RfU3cqiZ5CNQewUYf4xjui6/PhKXN6BkoOHQDigpEeqVqKXejVQoIaU2d3OKdTKOzgN
         BRqvdmWm0LwfyHzgn8tlfAY4yqXiuK4q6BCa9N2oc28IeH5At0qMK/QZLyN3CfvRNPji
         HNEftFlSmvi0KnaqIYo8v/MbTUQvQc4uZGpbxWbe8hjsPGl95jtJceU4YLbFZ8qKCu3w
         BLEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JcGa7ikFmdZoDLsFzQpfR0soifX+/xhHkzjRG54IG7A=;
        b=U2pvEhCU/qbFJSWmjG7H8hy0RNeLi16I71gJCYKFZqmPzbXenNN7sjv4ze0TbDtStX
         7K47YBRSDTcpteO086yLxQs0a+3fH3yvkzeasnlSeCG0BJeRaHexfIBPHtmmnu0UyWFs
         l/KBQrtBpIbDB9eNHnHfUL+Z6+6+SOrlHxrg5yVyxpcnhkWRQTc8dXEmcInZ/4qzuO80
         eg4qgIOE0VVwjmc2TIVcRXtSYl6DAstPoJYmyYm6u2zc+NkE2JURCn6jarZ9H2pG3fEh
         AMI/0K/FXllmzmHjAHcgKP9kxbdYO/65G9+6DNqx6HA8lfvxeaZ0oYsIm/7j7UCwAQdF
         hz/w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora9Odv2boJvwl70UoXa3D0U11r6lBOoW4FhcngCWaKfZz7fIhyzB
	q4zLYzywgqXIbSRyq/C6Gfk=
X-Google-Smtp-Source: AGRyM1usfx6HTRCObHEJEMr/2D0dmkfe47yhK2qmAwjd0kYA98jwXVYv7Xor+21Swd/zhGOOftxzLg==
X-Received: by 2002:a05:6102:1628:b0:357:682a:fb15 with SMTP id cu40-20020a056102162800b00357682afb15mr754038vsb.50.1657543462818;
        Mon, 11 Jul 2022 05:44:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6122:86:b0:374:bd27:2b6e with SMTP id
 r6-20020a056122008600b00374bd272b6els134833vka.4.gmail; Mon, 11 Jul 2022
 05:44:22 -0700 (PDT)
X-Received: by 2002:ac5:c5d9:0:b0:374:5166:36c0 with SMTP id g25-20020ac5c5d9000000b00374516636c0mr6162748vkl.2.1657543462269;
        Mon, 11 Jul 2022 05:44:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1657543462; cv=none;
        d=google.com; s=arc-20160816;
        b=t4WTAV1Q0M4JbYX383WnkHQEkZo9r1vgofsKfxqalxLb+hCXVewk0JY39GMi1pdIPC
         tGSj4bwi9P+mWL7uwpsed5tV/2bv014ixCLvEWRTQ7GaYhyxkPAx/QhDEcpDqcGqq5oN
         DgtqP635yfKja2bt3iDBCvOx/kULpepdkLq4SA/SkaRmLyzPvYK5BgJrisEjlf4dy1oq
         4Ap670g+qAP0a3DBhhmKijOC/pS2z/dNyDQzgQSSFjl+DgyMNQmgtr6OQNbnerCZ1YAS
         Hl6FZLT+p0bSdFItvAB407ZF97+LR7DWuMkUk+5BHopSzOXN9YgmaBkvuKk/SStoQTtR
         CaSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=br3tJQEkgsdXZG9sAFREqjWpIgB35zSs0NthrE2bN3k=;
        b=eRpfdczyvL3yhaDkd/5yYBJDwQpLXiD95Nt413Wd/6fixL63aeolqjjVmZrwwWJKwJ
         QZfwEc4hd9j/XVTmxiTjVkyaSv1Qo2cLg4dsgngwaUIptdf72d4OFTa2USEL1906rCpG
         33bjdr6dhArAZyugteu/E/GSgF3DoV0xwQfI5E5bxPAnnvie3zULD6ZM9NKmnzbZT2YC
         2O7bmn3WAcsqfVNx+HhZq9fOhK61rizpksJr7w/muqc8wVjl+ZdD9Ug7VCBNVHj1ygYB
         VGGk3YkDfXt3/pe1uhtRSiXT5nYyYc2i4TK2gVLzXEzJQoaWPONw2v5L5N95F4RTg1Ze
         QW3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Bi0thlVz;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id h135-20020a1f218d000000b0036c18b4c646si194930vkh.2.2022.07.11.05.44.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 05:44:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Received: by mail-il1-x129.google.com with SMTP id h16so2935156ila.2
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jul 2022 05:44:22 -0700 (PDT)
X-Received: by 2002:a05:6e02:1549:b0:2dc:616a:1dd4 with SMTP id
 j9-20020a056e02154900b002dc616a1dd4mr8633961ilu.131.1657543461597; Mon, 11
 Jul 2022 05:44:21 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Mon, 11 Jul 2022 18:14:10 +0530
Message-ID: <CA+G9fYtDr=tqPmM6f9aGQOfqkxUo-yP-kHBQG787D0Cj6oO-dg@mail.gmail.com>
Subject: Block: bio.c:1232:6: error: variable 'i' is used uninitialized
 whenever 'if' condition is true [-Werror,-Wsometimes-uninitialized]
To: open list <linux-kernel@vger.kernel.org>, 
	Linux-Next Mailing List <linux-next@vger.kernel.org>, linux-block <linux-block@vger.kernel.org>, 
	lkft-triage@lists.linaro.org, regressions@lists.linux.dev
Cc: Jens Axboe <axboe@kernel.dk>, Al Viro <viro@zeniv.linux.org.uk>, 
	Christoph Hellwig <hch@lst.de>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Bi0thlVz;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Following regression found with clang i386 and x86 builds failed on
Linux next-20220711 tag. Please find the build error logs.

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

Regressions found on i386:

   - build-clang-12-defconfig
   - build-clang-nightly-lkftconfig
   - build-clang-13-defconfig
   - build-clang-12-lkftconfig
   - build-clang-14-lkftconfig
   - build-clang-nightly-defconfig
   - build-clang-13-lkftconfig

Regressions found on x86_64:

   - build-clang-nightly-x86_64_defconfig
   - build-clang-nightly-lkftconfig
   - build-clang-13-lkftconfig
   - build-clang-12-lkftconfig
   - build-clang-13-lkftconfig-kcsan
   - build-clang-14-lkftconfig
   - build-clang-14-x86_64_defconfig

make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/1/build LLVM=1 LLVM_IAS=1
ARCH=x86_64 CROSS_COMPILE=x86_64-linux-gnu- 'HOSTCC=sccache clang'
'CC=sccache clang'
block/bio.c:1232:6: error: variable 'i' is used uninitialized whenever
'if' condition is true [-Werror,-Wsometimes-uninitialized]
        if (unlikely(!size)) {
            ^~~~~~~~~~~~~~~
include/linux/compiler.h:78:22: note: expanded from macro 'unlikely'
# define unlikely(x)    __builtin_expect(!!(x), 0)
                        ^~~~~~~~~~~~~~~~~~~~~~~~~~
block/bio.c:1254:9: note: uninitialized use occurs here
        while (i < nr_pages)
               ^
block/bio.c:1232:2: note: remove the 'if' if its condition is always false
        if (unlikely(!size)) {
        ^~~~~~~~~~~~~~~~~~~~~~
block/bio.c:1202:17: note: initialize the variable 'i' to silence this warning
        unsigned len, i;
                       ^
                        = 0
1 error generated.

Build details:
---------------
        download_url: https://builds.tuxbuild.com/2BnQO6OXSJejfpLO4fQ3fWa5wVT/,
        git_describe: next-20220711,
        git_repo: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next,
        git_sha: 4112a8699ae2eac797415b9be1d7901b3f79e772,
        git_short_log: 4112a8699ae2 (\Add linux-next specific files
for 20220711\),
        kconfig: https://builds.tuxbuild.com/2BnQO6OXSJejfpLO4fQ3fWa5wVT/config
        kernel_version: 5.19.0-rc6,
        make_variables: {
            LLVM: 1,
            LLVM_IAS: 1
        },

Steps to reproduce:
tuxmake --runtime podman --target-arch x86_64 --toolchain clang-14
--kconfig https://builds.tuxbuild.com/2BnQO6OXSJejfpLO4fQ3fWa5wVT/config
LLVM=1 LLVM_IAS=1

Best regards
Naresh Kamboju

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYtDr%3DtqPmM6f9aGQOfqkxUo-yP-kHBQG787D0Cj6oO-dg%40mail.gmail.com.
