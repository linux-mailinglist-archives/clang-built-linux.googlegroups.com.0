Return-Path: <clang-built-linux+bncBCXO5E6EQQFBBQOUUGFAMGQE3F4EAIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B8E411345
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 13:02:27 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id x17-20020a927c11000000b0024da94ff1a6sf9813626ilc.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Sep 2021 04:02:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632135746; cv=pass;
        d=google.com; s=arc-20160816;
        b=RrwdG3R+61wsNy6WveCCTjAMuS8ZCoUp1kkzuNl9a3wSYSBRMwzKNFqHuizmH7Xrxt
         /pYC3TBFVxPCUiIeXVOMgZJH+0GEHTJKcn5OJ8Bss6aNFVgT5LsM9WLKT2NJ0xu6aIDw
         x21GXuwRyr0924cXH/1jbJ9n1bcjTS8GGHmNPSwAZUWZIxhFFnIfbDwOGx/EiofjMkYF
         zRNtAmFkNSC1LTn62cySxmhmihTwrlYFsE+pmo4CZrY4z1dE3EjD05RPZtrWt+IUeR3c
         7ox1AAnItxvRIwsWS4O9FfilOmm5oNeCSU7Xvj1S3UCcTQcSfPCbPPZDevJvfv6UZ07t
         edhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=60GGtnBKCIc/uXRyuPfjxgZZvfK2nzRiisXLZn8RTnY=;
        b=M38ijOjwXyZEfLIiVc5ck+0Hn9CKODhVLK0400INpbYcEmq5UJSuBVNo6rN3g1yZWj
         /Q7hmbYuF4+IidsAOdBOJhoF9HRjoT7chU1aChI+Fiv0tLMaLYlhZxs7MPzuWLdTW1ca
         7QKQQ/6xtiOqBBIblrGiHkRIuW3MiNfsFV+bx4hKvv6u5CIxe9MSHb+EOYAiKQ8hIuSP
         wIHwGxZDkY+98RJagoi0Hq/Xa53jqqFD301KaphBJnDTZYvJGUKe57HiMtJOu33SqQuV
         P8zzU9i7YAsQ+0dTFDBYk3CHP+48BdRs2HufAT2AacaWDSU/iiQyrPWAUXnZf8spERk/
         fTkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Of+QBHJk;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=60GGtnBKCIc/uXRyuPfjxgZZvfK2nzRiisXLZn8RTnY=;
        b=B487alCw4txl22QFsLuhkar3TbdJi5tUrmjXDxutKbOoJqj9ATkrss0CbDHgXXzmYu
         tBt1bkY8OfVwEcmJHkkBKvBwNtlPH9sQPCZ8YbPTAf8QrTvk/PoOKuZekt0618CdoTiw
         09ClpnHFI5KTir47PT69PLTIe8IyyOsDrFLGKcpAuBsImtSSg99ZTWnlYzHAVOPFZl41
         u4hMp24WaMR6yzgwQVSrIM0XfTXzaG55dgPzBRUTurmPW4UFuS8v9ERs75aa5Dm+JJex
         LffkdUTCfepT8+/TM2iccgZHO+oF5PyCu0FIAm4QJYpFy006fzemtxxIhiRZZ7+BJBL8
         cSfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=60GGtnBKCIc/uXRyuPfjxgZZvfK2nzRiisXLZn8RTnY=;
        b=QNKlDR9IzCgcKB2QV4pYjCWVbrOAWru1PnXSYZHopJmwjzZlMb6Bu0pEE5ZSdgNyIy
         RuGCDtAuGD22AzwN4Plq0L0tQem2lsT3G97mwBFh6wwuvZiT/V5O4lJdvzLHBKQwxHdO
         jTrHePJYONbhUUxvtDvayxGD21O9st39zRr7HuhXnaxv6XsIfC+X/WAjqyASfADPPabG
         GSyVO4XzGO0IISZoV2STxQYeFwhjUBrgDYTbXBFp9QpstUM21Tfu99BuSkV29aCjTrDX
         cY8DQq/QR2WE/mgDh/wImdCOTNPQ7vX1dhl+QytmJ0VJ0nKDwTLqxZNIsv/fGw1odG7G
         5urQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ENEMy9K4yAuyRCm1uKLZW+J9MyxMFG9MQB8FijG+ZWYD7VIl2
	jPERmfgIjupU1E2+Iq3gTdg=
X-Google-Smtp-Source: ABdhPJzFPCT20wUR814bBQakgZ0EeUtPgpQyckFu5BySpicnrLTuzuBC9jUHjkmAkBt17zAcdJkCxQ==
X-Received: by 2002:a5d:9247:: with SMTP id e7mr18395562iol.161.1632135745897;
        Mon, 20 Sep 2021 04:02:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c4c4:: with SMTP id h4ls4071788jaj.5.gmail; Mon, 20 Sep
 2021 04:02:25 -0700 (PDT)
X-Received: by 2002:a05:6638:24cd:: with SMTP id y13mr4346887jat.140.1632135745466;
        Mon, 20 Sep 2021 04:02:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632135745; cv=none;
        d=google.com; s=arc-20160816;
        b=Sk44L76cX3muKQfV7f0V4CkL1X11SRIVyzri1y9PXGVMEZKbftfQTBG5Ew2g5z6HAC
         rm5PiojUGAa3IVoS6m/CfGCAAT2t30b61kCQ5Lq5gGJXH6lSD4ozJsJMUbY2C/OoQFo7
         ri8P0wfFQOoxKMmMNDRnwIzCju1utzc6yKttzCoXpB879zbVCXWRc60LfAFWp9vWvEg/
         Fpjs/uWFLYCWEnAiA8rhUPyId/QUDYrSWv0PrGngG3Or2ZaeU6SrHulzztPvkET3VWgm
         zsXlLF38lLqiDf+JsRDIX1favq/SrbhVy02hbfAPWtISNxOedFRMt1mEND1mQEfLCcpp
         d6IQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PQ1DBMLRk5Td5gliopgmwmu1FA2j3FZPLXulUzuVrio=;
        b=xT6o7lNMH7P1TKH3WaMwnqzR630aYKD90ZxXhz7SYkbInvah4MySWaUWYQHDJxPS+o
         zHkkizyMo5/CABdSF4v4I979QRN7/4mGB0K9Vyi3GGew8CSCDf85LXp1AeiMa0pdmuFo
         V8UHsMmnBg0zHVWmkWdAhsBzcmDTDRsEP6sGGrnDOe/2inggmCAlIcQp+ohZe7MDymNz
         2CQ4eVgfdCXAfvUmNzk71B/wAkSgiXT0JJ23K8jvlfmEaHisH6ogR1rrXVzNf7c9IlsD
         RUhM+uOFclQexe9tbQOad795IOCZStCLsOyHKcPwc3k9n1JyOfXTbf2HHoW1GmQ0LOkJ
         JuLQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Of+QBHJk;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o17si1119741ilo.5.2021.09.20.04.02.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Sep 2021 04:02:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9CC5A60F6F
	for <clang-built-linux@googlegroups.com>; Mon, 20 Sep 2021 11:02:24 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id q26so28409162wrc.7
        for <clang-built-linux@googlegroups.com>; Mon, 20 Sep 2021 04:02:24 -0700 (PDT)
X-Received: by 2002:a1c:7413:: with SMTP id p19mr24126896wmc.98.1632135743242;
 Mon, 20 Sep 2021 04:02:23 -0700 (PDT)
MIME-Version: 1.0
References: <202108160330.T1EbbpCi-lkp@intel.com>
In-Reply-To: <202108160330.T1EbbpCi-lkp@intel.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 20 Sep 2021 13:02:07 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3qhfxUC-7y-_q35-tNrs2L93htjuVzSukqZO0hDhOAuw@mail.gmail.com>
Message-ID: <CAK8P3a3qhfxUC-7y-_q35-tNrs2L93htjuVzSukqZO0hDhOAuw@mail.gmail.com>
Subject: Re: [linux-next:master 3857/7963] arch/x86/crypto/sm4-aesni-avx-asm_64.o:
 warning: objtool: sm4_aesni_avx_crypt8()+0x8: sibling call from callable
 instruction with modified stack frame
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Of+QBHJk;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Sun, Aug 15, 2021 at 9:41 PM kernel test robot <lkp@intel.com> wrote:
>
> CC: Linux Memory Management List <linux-mm@kvack.org>
> TO: Tianjia Zhang <tianjia.zhang@linux.alibaba.com>
> CC: Herbert Xu <herbert@gondor.apana.org.au>
>
> Hi Tianjia,
>
> First bad commit (maybe != root cause):
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   4b358aabb93a2c654cd1dcab1a25a589f6e2b153
> commit: a7ee22ee1445c7fdb00ab80116bb9710ca86a860 [3857/7963] crypto: x86/sm4 - add AES-NI/AVX/x86_64 implementation
> config: x86_64-randconfig-r024-20210816 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 7776b19eed44906e9973bfb240b6279d6feaab41)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=a7ee22ee1445c7fdb00ab80116bb9710ca86a860
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout a7ee22ee1445c7fdb00ab80116bb9710ca86a860
>         # save the attached .config to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=x86_64 SHELL=/bin/bash arch/x86/
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> arch/x86/crypto/sm4-aesni-avx-asm_64.o: warning: objtool: sm4_aesni_avx_crypt8()+0x8: sibling call from callable instruction with modified stack frame

I see the same thing in my randconfig builds using gcc. This is an
assembler file,
my interpretation is that objtool has found an actual code bug:

.macro FRAME_BEGIN
        push %_ASM_BP
        _ASM_MOV %_ASM_SP, %_ASM_BP
.endm
.macro FRAME_END
        pop %_ASM_BP
.endm

SYM_FUNC_START(sm4_aesni_avx_crypt8)
        /* input:
         *      %rdi: round key array, CTX
         *      %rsi: dst (1..8 blocks)
         *      %rdx: src (1..8 blocks)
         *      %rcx: num blocks (1..8)
         */
        FRAME_BEGIN

        cmpq $5, %rcx;
        jb sm4_aesni_avx_crypt4;
        ....

SYM_FUNC_START(sm4_aesni_avx_crypt4)
        /* input:
         *      %rdi: round key array, CTX
         *      %rsi: dst (1..4 blocks)
         *      %rdx: src (1..4 blocks)
         *      %rcx: num blocks (1..4)
         */
        FRAME_BEGIN
        ...
        FRAME_END
        ret;
SYM_FUNC_END(sm4_aesni_avx_crypt4)


sm4_aesni_avx_crypt8() starts a frame and conditionally branches to
sm4_aesni_avx_crypt4(), which starts another frame and returns from
that without cleaning up the parent frame.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3qhfxUC-7y-_q35-tNrs2L93htjuVzSukqZO0hDhOAuw%40mail.gmail.com.
