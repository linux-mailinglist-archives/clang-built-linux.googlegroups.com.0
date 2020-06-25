Return-Path: <clang-built-linux+bncBDWIJUMT74BRBRV22H3QKGQE5IL2BBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DF3209B2B
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 10:16:08 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id 94sf3142527qtb.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 01:16:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593072967; cv=pass;
        d=google.com; s=arc-20160816;
        b=iTFbXbLdygEkTGcRz3HNpt6dqQcui7i1oSUjyn9HDhyJqxdtTrfeWEOkHfwaZA/7uQ
         mUkMssu9MTYx2Ylt6v+ZU0zM91P7e8TbSrzmNEZhfZS/ugisDwtXbq9wuWtBcBin14qa
         VCBEi+80d+H/I3fuN3O3Rp56TjSFCaRlb9yMArUULvi5Od1qLuLGmVaOIktSzm6N0B4p
         MmtoHSavILEYKVdMMbaFA/0iamzR5tKYFZUNPwfqv1PE72d/X5UhF02zbo5VVFpx1rsG
         HLAL27vAixpfB5xWifxI+eBe3BCWF1brJAKJZSsgK8PFQElqQ42Kz47DkxmmGu4HnKJi
         sFiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=2kBY7ftgVF3EVx9zhU/u7M74R0yexVw8YsO5HK1iOVk=;
        b=BuV4EBcZAdGBrBDMsOsUGl7owelxl26XrgdWPUiitF2xUgrdH6Tc+PNhceV88f3Iyq
         ZY6hGdZ0ZV7BZTbqyHcVoOtz9nbhS2faGE1mChgfBh4InYl+1D7PojZlIA/hrO0EvHJl
         l8YHlCRXzXVx6hPzzuf0HsWRabOz+VBbKZAbrQeJ4eHmHrcmcSF5zrowEe9HlgmLsHg0
         TFwB628c79nqp1CsxB+Q+Gi27y3UeF9/8cXGM6GLnd5iwxsmZ8Rh7DtQk/jvOmeGivAG
         SwDEWeHAsPqysMOz7DfQIgIrrwLA06tS/1xPzeKi/DePBiH2GJeHRWhMNqCJGqzqWUq/
         hjAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iL2oGQgx;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2kBY7ftgVF3EVx9zhU/u7M74R0yexVw8YsO5HK1iOVk=;
        b=kRmOC00B92FgMU9Baok7le+6105b5Xm4+H2l4MegQnUGtgWZDJBowe6pbN8GrdT1O3
         W9TDWmUvMXrxHjli70usbfj1RJHLftVRA98a3UwefRSpXoDMDM190RX52J2L/YY277Fk
         1LVmMNdSTZlcK9ha6g0uPumD/e+qJhMGnSzu+ltwjfRYdccD+nwrHNV1fSoEB9cXI4bu
         negY2GDO5YfBgeeI6ixO6W27qw3XRr4aUQUDxf7wTBc1Ji2Az3rV386wV09lIOdDPmuc
         HDv75l+GqnO++x4di6BihhLUmao8VMbscrBUQPYocE6Aeo1uffGRe26VbttNATgYC4+t
         4AVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2kBY7ftgVF3EVx9zhU/u7M74R0yexVw8YsO5HK1iOVk=;
        b=Ed+IvzHBYA2QG/xCejlsfYIaxPuXMYRedTdq6T2V/09ymBGt3pWtsG1+U2I5aefyvt
         0FfAQxmvyRbkMXMlz0xdiA+oyGMUXCKrPngX1kZZZwyIUmYOuGgkGFqzIK0z+rHufRyA
         fJoQQNd2vkTdbb+Z0Zi5QT6FfH+vNvGZms7GUE48gr7I57cNuCioV/8gW0wUNa4nWGsF
         VlxEGcaLXg7Qf+TnVRaM6ZkTdQUHPYAeoaPWNkaWUefad2eZy9vllWQuiE4/SQi6N8GV
         QLUZ9yU/4zo0/L9MFeSXoG/FCLI6X0aZc1GenPJULU2U1uafL08GsTf1VX9MDw1/8fzQ
         Vtsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Mrux9Pf5iBXYhLCX+h+rLm8eno/HOgDW5o/IK8rI/Onofc243
	3Z6gWnobaHbspZqHtj9MZKA=
X-Google-Smtp-Source: ABdhPJzrU0v2F6YVoHCAlJP3do/0MmziH92JeChohXS231nZQmyJORl4048SMMTyBnVAYf4DjyHWHg==
X-Received: by 2002:ac8:615a:: with SMTP id d26mr12420468qtm.199.1593072967020;
        Thu, 25 Jun 2020 01:16:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5c02:: with SMTP id q2ls157861qkb.11.gmail; Thu, 25 Jun
 2020 01:16:06 -0700 (PDT)
X-Received: by 2002:a37:58c7:: with SMTP id m190mr6807130qkb.265.1593072966649;
        Thu, 25 Jun 2020 01:16:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593072966; cv=none;
        d=google.com; s=arc-20160816;
        b=fM/sRfFl5aZdeh3nWXj0Hz9ZKe7fvlH2e584Jjm/W4/4JTUxbML4C9vPgiO7hkc/wk
         wNVvvpzMtxw4aEQnOrxKuWINxaj1+DxNYQAPMvs5EUtuIsMGsXKRw+afKpG+Haef3vD/
         wwO27WCs9N5DKXhxDHfmNLiY1X2TEtyo3RHWlpgAxVqkMCVpN0sb+0k8voY7WglVo2PO
         O+rNTZZ1Ji4NvNZ89rQ9ujD0dLmTUUg1xzizJ4u+4WyT7yLKtS6jyaQP/5Gm13IdpDkf
         3Joq1mDsOEdlyJUQRz6/ngWpMV0GX3wi+lP9hWZPl4+SMIuIJaLbLTMVoiArvX0MsQ7N
         va6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=8HaYcZPiW5m8PXsOlkCozAyytcz4aogKPAVcVTBV/2k=;
        b=Y7I6+cbA4QZgRXDXJ4LzPaUARau87dAnonjchI09lRnS3UH7p+fqY6Q8lagKzwIvkj
         aIyj0vT8N6sRtMjf055M+9bx39P2ZCC3LoXCev+Ggx7j+Vu01zAv7sJf5eKswRlhJSup
         YznJQvplGtlacygCKXYuzC4uoIc8GAt4pIkT2rby5T34U1pz+SZKpSwQt36P3/2LvtlE
         sPOHE7vctfrckye+cYoeK69qDhxJ9/L4iy6mk25DXpbb1oz+MDKDbkoFZUNAPosO5I+C
         JPCkw7GsFB3rm6dvLtPNzRtJ8qGXFRxXKZmV+Lou3Nr9YRe7lQed98rp+N9F/Kwag9d+
         Jqdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=iL2oGQgx;
       spf=pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=maz@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d27si1032730qtw.1.2020.06.25.01.16.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jun 2020 01:16:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org [51.254.78.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 65BF6207FC;
	Thu, 25 Jun 2020 08:16:05 +0000 (UTC)
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
	by disco-boy.misterjones.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.92)
	(envelope-from <maz@kernel.org>)
	id 1joN3D-006HU5-Ud; Thu, 25 Jun 2020 09:16:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Date: Thu, 25 Jun 2020 09:16:03 +0100
From: Marc Zyngier <maz@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: David Brazdil <dbrazdil@google.com>, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse
 <james.morse@arm.com>, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 android-kvm@google.com
Subject: Re: [PATCH v3 08/15] arm64: kvm: Split hyp/switch.c to VHE/nVHE
In-Reply-To: <202006251244.YDWclRrq%lkp@intel.com>
References: <20200618122537.9625-9-dbrazdil@google.com>
 <202006251244.YDWclRrq%lkp@intel.com>
User-Agent: Roundcube Webmail/1.4.5
Message-ID: <d807e83db1f1052378b6998f683e4617@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: lkp@intel.com, dbrazdil@google.com, will@kernel.org, catalin.marinas@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, android-kvm@google.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false
X-Original-Sender: maz@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=iL2oGQgx;       spf=pass
 (google.com: domain of maz@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=maz@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On 2020-06-25 06:03, kernel test robot wrote:
> Hi David,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on linus/master]
> [also build test WARNING on v5.8-rc2 next-20200624]
> [cannot apply to kvmarm/next arm64/for-next/core 
> arm-perf/for-next/perf]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use  as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:
> https://github.com/0day-ci/linux/commits/David-Brazdil/Split-off-nVHE-hyp-code/20200618-203230
> base:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> 1b5044021070efa3259f3e9548dc35d1eb6aa844
> config: arm64-randconfig-r021-20200624 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project
> 8911a35180c6777188fefe0954a2451a2b91deaf)
> reproduce (this is a W=1 build):
>         wget
> https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross 
> ARCH=arm64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> arch/arm64/kvm/hyp/nvhe/switch.c:244:28: warning: no previous 
>>> prototype for function 'hyp_panic' [-Wmissing-prototypes]
>    void __hyp_text __noreturn hyp_panic(struct kvm_cpu_context 
> *host_ctxt)

I really wish we could turn these warnings off. They don't add much.
Or is there an annotation we could stick on the function (something
like __called_from_asm_please_leave_me_alone springs to mind...)?

         M.
-- 
Jazz is not dead. It just smells funny...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d807e83db1f1052378b6998f683e4617%40kernel.org.
