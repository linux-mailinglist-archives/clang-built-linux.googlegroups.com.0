Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBKWD2H3QKGQEZGVKX2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D76D0209B58
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 10:34:51 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id k128sf1161864vkk.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 01:34:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593074091; cv=pass;
        d=google.com; s=arc-20160816;
        b=k/lZLc0lgEnQTQo8pIgj28W50OVCINgs8Lq5xOadc/DhrEDcp4oyQyYIhp1gzg7vRp
         Wgr/aV4nCdul2b1A1wisr7TmlD6iwgAWV1+tqfsG3IsRI0NNPlkyS2wtxC4TAEN8Nbq9
         HYakshM3/UbIqTqs4EA//a/qlVrgAAYA0UWFH3kbWVkpxoOoaDxYtYv9nP7iwun8RMLV
         FZExtzLyNEOV19w6/kA89SOD1HZTeFhTKMvfUxEcRVaDOPfMCOVtNCzY6GUsVW04Jnap
         fcT862zW0ucfukszNlZAM9B7QGQeO/fC6ILI/hoV2Fk+c4ADq7eRJDTva7W6WEtF8xk2
         LKZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=2qgPdTzDoua9y7kBulELrtz3Zb0xLuAO3APNj6/CcmY=;
        b=KOMdFzHFSdkJ0OKd5WiGEi6HeBgYsUcUlnALRboFwZg3H4bkscP0HFZm6SSnPkVul5
         tH2mbwwBWjopg9zcKovJBT47d7nG++QkE7lAHGr3adA81XTJfLNw/JJCvHCi9eNmiebI
         elsIYQNOZTanryNBz7/c2kPDssBTLOX4vWoNLHGBSpD1XCGh0AfoL1DyUKxmTcgalf9J
         0LCtgutyE3VpEDSDSrUQOZMfrWuFLFGv36CYmBvyKY0Pw9bpwgOXDbjZKRrKcwGT18hX
         vdQFVYR+z1M1UxEgTYgSysjNoi1eZbbneYCx58aBbfGPka7Tf5zmuqofzZcjPh79dpJ6
         CltA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BwbQSy30;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2qgPdTzDoua9y7kBulELrtz3Zb0xLuAO3APNj6/CcmY=;
        b=e6Rpq42oPnj6aPHKtO78HOTGxubck4923erD4cJ9o/pGRJ/Iwmtd/qfHBQEymteMkq
         jG6DQNU1YjoGZ7oIEYlsStk1mdOT4rAKCtUWVhIM91JAjCce39tKp0svKnsutJ7aFngX
         AmG7Nu+UCpXjtq2v9GbF0wiEB7mqzweq7R+d+52Ur7IQjnWtRznERliIBTE7vBMwrSP0
         bI9A1eESpOMfbhaSpnoul6jjeQhppNWtEqSirkw0Qz9wjHn7nvyihFpDy998Aj8jyy+D
         SF0gnosvJMf+6wZ0h0SRgOkop/G0C/dAuboPiJLYkZjz+ydvcxiDM0UC3EwqwDVdlFyC
         WvYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2qgPdTzDoua9y7kBulELrtz3Zb0xLuAO3APNj6/CcmY=;
        b=nIAu921IYlcIjqtmvtVrxxRF6SFG75gUuZyuTy4PN8irTXZ0E7pnXMv8ywoao6m2Ma
         iYDXL8qZB4HtgANkYquKYQhFIjaAey6KkCXIhxdrETmkkJP4xwD+E762Gq6kI9cy5Dnn
         oMHPadZJvT6rA1BaquFCamSUgWFqIU5FNUAajA0bFtRPgTouuzyLBub98fBx9vbFGPhF
         6xkPSZ8nS16iNOIjrYZv5pthq4/IB3rBdkdM7qVu0Kfo7YyYZaL4Y+l1p4sUKABOVIDE
         xQwXM86bdfeGCfBWi+8EcWoFemiT3rwzMtLe3mvfhgCVTQBTgM1zuA5A7hMt/GbiEFxj
         ysLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309m6zJ4neR3pTs0YlTLFAqJpxYbONV3/981TEUA1SCP3N+Bufh
	eBcTGZfo0YAsAYg+HGUIbWw=
X-Google-Smtp-Source: ABdhPJyfurtvsatusrunK8IxiAnoY0ZwBiD8dlTi02IXm7bcWYP/aO0r61w8rQe1mhadkBX9soQZNw==
X-Received: by 2002:a1f:5986:: with SMTP id n128mr908822vkb.93.1593074090940;
        Thu, 25 Jun 2020 01:34:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fc91:: with SMTP id x17ls590479vsp.10.gmail; Thu, 25 Jun
 2020 01:34:50 -0700 (PDT)
X-Received: by 2002:a67:ea85:: with SMTP id f5mr27348006vso.234.1593074088206;
        Thu, 25 Jun 2020 01:34:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593074088; cv=none;
        d=google.com; s=arc-20160816;
        b=xiBm7EnVWyZhSsh5IOmtU93QFpzwl6ZBcOlrRINcoxWeJb90pCMBjZ8W8qas5zlifd
         ECGAo9RfYy3EZlJdlUYUwerzgQoQSDbgLxjVhNCKKRtepkwQO33mCRE/vuOHkgWpFK44
         MZHL956aDcPLEX3q1G5Zy4IGXctq8LsPu+R2JViiWjcJIbkqr9xyKv4Re/R5gzCsJ98u
         oShiDtZU3dw1gGrBznCadJWJ7QfhXN/W7m7MR4zDlS86SlgSZD7c0/CwLQCpEqdl3KJy
         jCJIHejCicfaA/a/Maj5b5mBGFX1/L/LLmmcTTgB29DtNPGxGsJ3w60/2QOdhJRV8yOy
         9Unw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=v6rfavKomdzMT1Vz1XaaHF28qo2fZr0EHzpcYgRiUBQ=;
        b=arS+KJ/757pFuVyf1Wp7daZRYVrN5X3JdpSwVi+6gtK6r64TjbVvy2Ua1JyWw5BMWf
         hKJHgHWKB+O21RUWj6jAH9+bLTgjSJteVD8FKarK8l5TI65lS4S1slL7O7mrrs9hoEdZ
         81zZUzx6SUKVmJtrfW38rnajmLwuixESbD/7jdwxt3xL/4xHJNHl5dzzKOlR9X6usnO+
         CcS5OBEmYbH7htKbR7bMck27pyDa0vxKwEQXXECZJRi5sc2Z5kSycKsvYQhqfAu478eM
         oXo5VPnrUA1kYFCehjuUFRR7DFsBUmGfUY2pM4vGTrImHRLpRinErnN8gwHZbGuytTcO
         T/nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BwbQSy30;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e10si56769vkp.4.2020.06.25.01.34.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jun 2020 01:34:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 123A820720;
	Thu, 25 Jun 2020 08:34:44 +0000 (UTC)
Date: Thu, 25 Jun 2020 09:34:41 +0100
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Cc: kernel test robot <lkp@intel.com>, David Brazdil <dbrazdil@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Julien Thierry <julien.thierry.kdev@gmail.com>,
	Suzuki K Poulose <suzuki.poulose@arm.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	android-kvm@google.com
Subject: Re: [PATCH v3 08/15] arm64: kvm: Split hyp/switch.c to VHE/nVHE
Message-ID: <20200625083441.GB7584@willie-the-truck>
References: <20200618122537.9625-9-dbrazdil@google.com>
 <202006251244.YDWclRrq%lkp@intel.com>
 <d807e83db1f1052378b6998f683e4617@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <d807e83db1f1052378b6998f683e4617@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BwbQSy30;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Jun 25, 2020 at 09:16:03AM +0100, Marc Zyngier wrote:
> On 2020-06-25 06:03, kernel test robot wrote:
> > Hi David,
> > 
> > Thank you for the patch! Perhaps something to improve:
> > 
> > [auto build test WARNING on linus/master]
> > [also build test WARNING on v5.8-rc2 next-20200624]
> > [cannot apply to kvmarm/next arm64/for-next/core arm-perf/for-next/perf]
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
> > > > arch/arm64/kvm/hyp/nvhe/switch.c:244:28: warning: no previous
> > > > prototype for function 'hyp_panic' [-Wmissing-prototypes]
> >    void __hyp_text __noreturn hyp_panic(struct kvm_cpu_context
> > *host_ctxt)
> 
> I really wish we could turn these warnings off. They don't add much.
> Or is there an annotation we could stick on the function (something
> like __called_from_asm_please_leave_me_alone springs to mind...)?

Agreed, I've caught myself skim-reading the kbuild robot reports now
because they're often just noise, and then having to force myself to look at
them properly when I remember. Even just something in the subject to
say "the only problems are W=1 warnings" would help. Is that possible?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625083441.GB7584%40willie-the-truck.
