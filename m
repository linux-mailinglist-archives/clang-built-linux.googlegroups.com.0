Return-Path: <clang-built-linux+bncBD63HSEZTUIBBPGK2P3QKGQEJ2CPBXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id A001B20A450
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 19:56:13 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id g3sf1591584vkb.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 10:56:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593107772; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ddhik0ZBYOCjL3lNo2KxTzfx91o7xBfPGSXb7o+W4Jgq0YmdYCJpPdLtIbopf0Fiz9
         pn7mVH0EqjmKfS2qNkSTamBg+J2UOfwSkEt3IzhqXzZT2xB04NSNTNiN1Mgj8FZHVLRB
         vFw9yPEOl6z78tBIXsBxOP9tUuQ48o2yBaxDaLWjV5oRerXOmGww6WKwC5JR5uLNGjCw
         yoXNsiqapXqkcg+tLMomEnW+KpDxia22Fi0y+jcKOM05u0Fn0CXlw+Z0+6x81fkXk8kO
         e0N9HKZJLcQJKMFySWeKrOMcldZNLCu3tSxkzmnzv9aKcwZ9SzNOP1uWjL97xRPJCrMg
         xy1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=zd+lmJf/nUHU+irNj75XxW8ynzF5+QM0enr8rN0kk1k=;
        b=de79Wi5yTt2yR0q2R8Ch5emVrV0XHbdeVlS8M8HHvmZY/PAc+9rJNJVpAJMLNxuBqZ
         zu7UGWYZBKT872vOLL0M7FMniDeK7WWVCv78r16cCtHCaCN/CEupL3ZVYVCtoBks2p/u
         r/Ia01S/MaI/Ac6jW2hbmRZUVONBNrIWn0Bnxgkbjc0N84vuhCRvVHNpM7b/HutD/8cv
         TsYbRp0YGVsPB91IaLcKBUnWeV3VglHJqZJleL8DbL5Sm6pG7FzkpkmmDvLwVOW4s8U0
         rqhbixKYFQ/EekyQUAf+5codfdqLAsYIY+Q97+HPKxgMoP1At4O0/K4v3tYAayR/iLg6
         NOgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oKVWfvoG;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zd+lmJf/nUHU+irNj75XxW8ynzF5+QM0enr8rN0kk1k=;
        b=Xv6eUh3xqMApSsrsjOA8+jScMxgbyPIDkPxJLA9hrdkOBL2vo61LkLdNADz6PI4ab9
         n9yfsjL1T3P9WCjAxpUQmz2zPzUcnhh/6YDXBPkreOuacs+3OZ3F83mVWQtLXDPrjQgU
         OoorI0bPTnlEP6PYGizC8ppDyWG/UwpA8ghxZQtZrrpAF7HuPG4dL8UbBnKMFv1ZI9j5
         eE+l3oiwUXEyFfkioN/XOAp44Oqxr8v0V3wIW0W+ickEVkzWBtk+9v8kVtFw28iSsXoc
         YDUO5F5R8d+AK5nQa+/+eD40Ax99tyuJ1KIPEuTrl4fpL4v+IZQH/djQoiEVuBdh1mw5
         szQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zd+lmJf/nUHU+irNj75XxW8ynzF5+QM0enr8rN0kk1k=;
        b=BpY7wSDV0jN8g5E6uM4TcfbHEHigMDJjJz5LRwYgfVwXocqPOuGKR1NrCtFpa1RoFd
         9PQ1mx3OEp3KH7fshnQ2rBSkJTEJ4yASEqpeuHovVNGMHab6fvDVEz6vHMrdvuEexsM5
         81TTSweY3F7ejopQNEEGaQO9QyHo0NAUJDzPz469ginog4Rk/DQyONm0zp3iDmFY+9X3
         01662MnM/EKLeAg7u0ZSvvtMwRCKOMYAb5JIIQ3jS5VHPVlcaR92ZgrKfdjKubYM48g8
         yFv259bPwWsQR3tx7ux7ULA/27JRkEgY3ZEHGlKmH9rHy9T+mvhIsye4JBjnTbtX8nVj
         MwFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531oITzPlQqousQ5wBnHVUR0DuGvnwETNWmn3GCOU4m9M2EbIhAm
	9HlwhXJ3A3hq3PiSx/pj9Vw=
X-Google-Smtp-Source: ABdhPJz4NHGJadk1xaMg+s9qaE+ZJe9YOFCsBiPtptHkmzwMyG9n0DEoe7mGUBYRcK0ZTBpsGZdeJw==
X-Received: by 2002:ab0:3a1:: with SMTP id 30mr7536503uau.29.1593107772457;
        Thu, 25 Jun 2020 10:56:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:ad49:: with SMTP id w70ls292194vke.0.gmail; Thu, 25 Jun
 2020 10:56:12 -0700 (PDT)
X-Received: by 2002:a1f:9444:: with SMTP id w65mr28461876vkd.50.1593107772037;
        Thu, 25 Jun 2020 10:56:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593107772; cv=none;
        d=google.com; s=arc-20160816;
        b=wh0f0ygf8t5ZkzKN5LJPGhwb11g/h8/RkhLHdkas4PnWF6hODtRkozk5kjoM3NsMoH
         f7DIwAj/GAG1As3SY8F+JXMbxU/hf05WA6//JeYbdAAisTLd7UzsAP3HcsS0W4Ao1/uy
         5of97Gqux2fq0CpD772pJ4b3KvZQrhyykyxqeeGCVyc+XlL2EoVQ2OPlRK7KPNIIMwNT
         l6HfeQb+ebm+JAKtCmZ3d89Zi1l1GYUL9ri3Carf+Gn9Q0+S2J3RsNd2443NWKDkOAkn
         XSehKUYB/H70dDv3Q+lr44ClEXUcIR5aP3P9rJzReBUOG3c0NCPEVCvBwS3wuEUkggfH
         yjeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yBDVB+/OUGNJgKQWAMaAmC4lrAcmwQMu0s1F09p9QQM=;
        b=pOFro8w1dpc6FtqKY2svhwwl0muMb119v0t8HAvHxpuTF3zwtg+thDpuzeX+R13z5C
         cunjeFdxrCodgloA8UlmXfKI5FGIy42NnRxw6u5hrkQ9xb5WOND2sJhNFxgzapKqnxR0
         de2xo/jSbMV1F1LJsCp3Q1cErVmLGXQN4hWMPiJ1cu5VhCLnwhiK1Ltf6Ob+RKeUIPCR
         fX9n/vbRfb6Mz41khcGnz80nj7K4Bo82JzhcjSL4XqzRXCAPTpR7hyQppQew3g8Y8J6p
         RGV2ePs8W94NPUsgNJwGSjewMFCxJTHdZWN6ZlfG0swz0e160D+CRVpxs193yDaYSdgo
         lZyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oKVWfvoG;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t63si239604vkt.2.2020.06.25.10.56.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jun 2020 10:56:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9CB86207FC
	for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 17:56:10 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id t194so6866013wmt.4
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 10:56:10 -0700 (PDT)
X-Received: by 2002:a1c:b143:: with SMTP id a64mr4970455wmf.133.1593107769134;
 Thu, 25 Jun 2020 10:56:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200618122537.9625-9-dbrazdil@google.com> <202006251244.YDWclRrq%lkp@intel.com>
 <d807e83db1f1052378b6998f683e4617@kernel.org>
In-Reply-To: <d807e83db1f1052378b6998f683e4617@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 25 Jun 2020 19:55:58 +0200
X-Gmail-Original-Message-ID: <CAKv+Gu-82CKeKvYozmnqnoBDDdJUfc3xxfXv6w4LHPnN5uvyGA@mail.gmail.com>
Message-ID: <CAKv+Gu-82CKeKvYozmnqnoBDDdJUfc3xxfXv6w4LHPnN5uvyGA@mail.gmail.com>
Subject: Re: [PATCH v3 08/15] arm64: kvm: Split hyp/switch.c to VHE/nVHE
To: Marc Zyngier <maz@kernel.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	Suzuki K Poulose <suzuki.poulose@arm.com>, android-kvm@google.com, 
	Catalin Marinas <catalin.marinas@arm.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, James Morse <james.morse@arm.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, David Brazdil <dbrazdil@google.com>, 
	Will Deacon <will@kernel.org>, kvmarm <kvmarm@lists.cs.columbia.edu>, 
	Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=oKVWfvoG;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, 25 Jun 2020 at 10:16, Marc Zyngier <maz@kernel.org> wrote:
>
> On 2020-06-25 06:03, kernel test robot wrote:
> > Hi David,
> >
> > Thank you for the patch! Perhaps something to improve:
> >
> > [auto build test WARNING on linus/master]
> > [also build test WARNING on v5.8-rc2 next-20200624]
> > [cannot apply to kvmarm/next arm64/for-next/core
> > arm-perf/for-next/perf]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use  as documented in
> > https://git-scm.com/docs/git-format-patch]
> >
> > url:
> > https://github.com/0day-ci/linux/commits/David-Brazdil/Split-off-nVHE-hyp-code/20200618-203230
> > base:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > 1b5044021070efa3259f3e9548dc35d1eb6aa844
> > config: arm64-randconfig-r021-20200624 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project
> > 8911a35180c6777188fefe0954a2451a2b91deaf)
> > reproduce (this is a W=1 build):
> >         wget
> > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> > ARCH=arm64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> >>> arch/arm64/kvm/hyp/nvhe/switch.c:244:28: warning: no previous
> >>> prototype for function 'hyp_panic' [-Wmissing-prototypes]
> >    void __hyp_text __noreturn hyp_panic(struct kvm_cpu_context
> > *host_ctxt)
>
> I really wish we could turn these warnings off. They don't add much.
> Or is there an annotation we could stick on the function (something
> like __called_from_asm_please_leave_me_alone springs to mind...)?
>

We should define 'asmlinkage' to whatever makes this warning go away.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKv%2BGu-82CKeKvYozmnqnoBDDdJUfc3xxfXv6w4LHPnN5uvyGA%40mail.gmail.com.
