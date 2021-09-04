Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA7SZKEQMGQEITF6TVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D00E400897
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Sep 2021 02:08:36 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id n42-20020a9d202d0000b02904fc72900a74sf405871ota.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Sep 2021 17:08:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630714115; cv=pass;
        d=google.com; s=arc-20160816;
        b=EXieX/+ifps3eWUKIach/cFMnSJy9/RYeJ74iGFmDeXkM2HFtHjIUzNuSKYD0iedLf
         U60slJDNBHulQApEvDVpZS0Z1/nc+0Oqx8QBgeKNYEB0yLQjcXYS6UbyqTT90okZb+L9
         BW6WCZBVHH/FYDp9XH1c5cJF6NHaKmYuizTyFM4RZw7MpLUbugVJU50uE+XgOX2CoOJX
         kVI54kN0wH2MCt4GGLzt7f4KxqRtSlIzq23RN358inM/MTjcOd5UC2NcCsfmUx/NJwdM
         fBWP0YI++dqhRNM1MrFwCmzvTsc4JRD6Jb5UgeK5u7YnOkVdAyDuLcKFI/JNrLQ0ThIY
         Bi5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4lL6ML0Zfd6GY9UTApOSUxi4xW5jn8gdd1Nq/H1QyRM=;
        b=TdPuFnykcp0nc3a+L+we09yao/sLpMJbHEmvfhGrvcuRgogmHPkohCMZkYcoMqaEqo
         f7CU05STjjjuiwAF/rTQwhS7JZDiSo+eOAM+W1nL1sbQSfaMpZ2wSVw/Ovn4RGmHyjsg
         +7mwZ/PrLaXOyjG5yMVyLDusgr7fznNduxaJgODJW7ituJbuIGjNZJbpP7k5qwcYgP+G
         TOLvTIM2PQ9NCty8SxvUImqRYptQ/t4uOHBNuK4yKpZYLwG+o4yno51skr0xbEJr8Xam
         zZqJqfp6gZT4WYBtkEWHrdQMX99v1AW+nRzERHOnqe3VIcXQ202ggVYcld9N4AQHxnaf
         p0Sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kK2njtxR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4lL6ML0Zfd6GY9UTApOSUxi4xW5jn8gdd1Nq/H1QyRM=;
        b=VsUKsmtTFnel0lwpWgHO1jALcfRNzkADq0QgHC+NHd3ItXF4GIjbVsC+a6l8amOopq
         Ve+olPz+dHFvkHZWRwAxyT0HruqNiaVM+wUFIef3YN6fzoe0vSVLBOnPUVsw5ryV+If2
         l0r1eeGOV5L+47LIsgjiaFMjDiZqisQzkZl6QNqp+YyqNmpz1NRQ4USYBpwXjwdbLEny
         SuOYns1CIgek/EsVImlcKlA3p/jQmi/WXwpIdLwf+o+RAWFuXIRG8Mlf7k+BxehQ3M3n
         hJN9mqWAyMKg6tRj50G2ytlCxfxJitAk+hIaQ+X7uRJkbQnVp9BQyIGbGi+nn+lmvAo3
         2vUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4lL6ML0Zfd6GY9UTApOSUxi4xW5jn8gdd1Nq/H1QyRM=;
        b=ZycQejcgiAHZumMZhzHASDWLr+qTX+0iDeEWOWhzJIbmwJocduP/WmH2ZnxAulxUoU
         XA4EU7AqThqekZ1L2L1Hovdbsbdoo/AiUgHkhXvkrcioFZ0zVxl1Jryc/9/RwjR40GHE
         GCN7bZhuaY3ZqiYnxPJKNOiwLpCXnhwrPWwlwTNUXzxtJ9ILjN9yh3e28ctsNa6jwPM+
         6EHjxIo4iX5J0yqvQxlRLOICUnVc/w0S3WcVrQ2lz4nEcjv7zBDbOKM+vcqRqQBBw9cU
         DGFYS2BXFfWxjCHml1K8cIGn36ru5gBGZvUdYum+N/Rb5Ok9zxEh2ZYZa7qmD8i+Vzhh
         nU0A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532I1gLWMEKTEdstolZ8DxAD4RuiuIPFQHTlU7yUhFa6WPsCBab4
	wp2wjXUTwc/VPkWi6CSrZ24=
X-Google-Smtp-Source: ABdhPJySAxdUobiKy/C73uts/ccvzK58yg4vKkJeR8CwLani/jP63v4avZQuQDrSiGeHvf7sB0SSGQ==
X-Received: by 2002:a05:6820:121:: with SMTP id i1mr5082857ood.57.1630714115184;
        Fri, 03 Sep 2021 17:08:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:4408:: with SMTP id q8ls261458otv.7.gmail; Fri, 03
 Sep 2021 17:08:34 -0700 (PDT)
X-Received: by 2002:a05:6830:4489:: with SMTP id r9mr1371224otv.348.1630714114697;
        Fri, 03 Sep 2021 17:08:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630714114; cv=none;
        d=google.com; s=arc-20160816;
        b=B2bbyEuml4S0bSWJvUlD7G/hAkKbrLdee/6T9f/itg/SdoSgzUmfyG8hOumkc0u29J
         mncBQ6DjmXudVuKXd+hMwkO0agIkG4x99unam0rUI2it1N8MtoBpuTTQPXrj4hrBom0p
         k6Lq8Uzm8iYwH8XKKPeJNTk24MKz+uBDeUxOGPvuQdWkBXKCGhpCrO/vkOXGcUx9ypqn
         gKpFGmrJlCQtO8yzT0Lb884WMJ2Zh3GSxWvl/ZLZGLEjvVXiZNeB6aa1fYPTllbNEBW8
         sKrpJtE9onyVO7lK6ly6W8kHdrHKERvhnjzTSKuUii0iMPF5GM5v4ggTINLcc1C49n13
         ETbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0+YWv5jdygHPeyeCRW1GsHX9/TqQ8lgKaH7lS8nak/o=;
        b=Ji1ifYbb08DYHswTEMr0dlwT+SucHmF36RUiZAGnGWX5EtpdzTaWO5qobiTQtEpRaS
         HD5bGqYrL8h6vzZzVqCUDq94MXETE23iaKRH6sh/Q45mqcgjd2WCGhD2OPVwCY2C9QyS
         Y9hPI0BEPkeo5fHpcFd9kTCGfoCapC62bLrg6zcgZ+N+nIzFFVC/aMGu8zlF8RzC4dl2
         SMm0dXLoleU2uV5ks3LealEG/8LxezrqFl66Pc41eNLPHWCzXnyP0uHMHI2Plsm8Daoe
         J9HaZkgoHocr6/rtt7A8QAQL1VHAJvcqnFgg/Bjf2uEDcgiKOguUGW8RJDXnquyQ4JGK
         yPzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=kK2njtxR;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s30si41311oiw.1.2021.09.03.17.08.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Sep 2021 17:08:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 615C1610CF;
	Sat,  4 Sep 2021 00:08:33 +0000 (UTC)
Date: Fri, 3 Sep 2021 17:08:31 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: ci_notify@linaro.org
Cc: tcwg-validation@linaro.org, Maurizio Lombardi <mlombard@redhat.com>,
	linaro-toolchain@lists.linaro.org,
	clang-built-linux@googlegroups.com, arnd@linaro.org,
	llvm@lists.linux.dev
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig - Build # 16 -
 Successful!
Message-ID: <YTK4/8lnQykNLj/e@Ryzen-9-3900X.localdomain>
References: <1267539297.8788.1630713264409@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1267539297.8788.1630713264409@localhost>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=kK2njtxR;       spf=pass
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

On Fri, Sep 03, 2021 at 11:54:23PM +0000, ci_notify@linaro.org wrote:
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-master-aarch64-mainline-allyesconfig
> 
> Culprit:
> <cut>
> commit 342f43af70dbc74f8629381998f92c060e1763a2
> Author: Maurizio Lombardi <mlombard@redhat.com>
> Date:   Thu Jul 29 15:52:50 2021 +0200
> 
>     iscsi_ibft: fix crash due to KASLR physical memory remapping
>     
>     Starting with commit a799c2bd29d1
>     ("x86/setup: Consolidate early memory reservations")
>     memory reservations have been moved earlier during the boot process,
>     before the execution of the Kernel Address Space Layout Randomization code.
>     
>     setup_arch() calls the iscsi_ibft's find_ibft_region() function
>     to find and reserve the memory dedicated to the iBFT and this function
>     also saves a virtual pointer to the iBFT table for later use.
>     
>     The problem is that if KALSR is active, the physical memory gets
>     remapped somewhere else in the virtual address space and the pointer is
>     no longer valid, this will cause a kernel panic when the iscsi driver tries
>     to dereference it.
>     
>      iBFT detected.
>      BUG: unable to handle page fault for address: ffff888000099fd8
>      #PF: supervisor read access in kernel mode
>      #PF: error_code(0x0000) - not-present page
>      PGD 0 P4D 0
>      Oops: 0000 [#1] SMP PTI
>     
>     ..snip..
>     
>      Call Trace:
>       ? ibft_create_kobject+0x1d2/0x1d2 [iscsi_ibft]
>       do_one_initcall+0x44/0x1d0
>       ? kmem_cache_alloc_trace+0x119/0x220
>       do_init_module+0x5c/0x270
>       __do_sys_init_module+0x12e/0x1b0
>       do_syscall_64+0x40/0x80
>       entry_SYSCALL_64_after_hwframe+0x44/0xae
>     
>     Fix this bug by saving the address of the physical location
>     of the ibft; later the driver will use isa_bus_to_virt() to get
>     the correct virtual address.
>     
>     N.B. On each reboot KASLR randomizes the virtual addresses so
>     assuming phys_to_virt before KASLR does its deed is incorrect.
>     
>     Simplify the code by renaming find_ibft_region()
>     to reserve_ibft_region() and remove all the wrappers.
>     
>     Signed-off-by: Maurizio Lombardi <mlombard@redhat.com>
>     Reviewed-by: Mike Rapoport <rppt@linux.ibm.com>
>     Signed-off-by: Konrad Rzeszutek Wilk <konrad@kernel.org>
> </cut>
> 
> Results regressed to (for first_bad == 342f43af70dbc74f8629381998f92c060e1763a2)
> # reset_artifacts:
> -10
> # build_abe binutils:
> -9
> # build_llvm:
> -5
> # build_abe qemu:
> -2
> # linux_n_obj:
> 19722
> # First few build errors in logs:
> 
> from (for last_good == 62fb9874f5da54fdb243003b386128037319b219)
> # reset_artifacts:
> -10
> # build_abe binutils:
> -9
> # build_llvm:
> -5
> # build_abe qemu:
> -2
> # linux_n_obj:
> 19795
> # linux build successful:
> all
> 
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allyesconfig/16/artifact/artifacts/build-62fb9874f5da54fdb243003b386128037319b219/
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allyesconfig/16/artifact/artifacts/build-342f43af70dbc74f8629381998f92c060e1763a2/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-master-aarch64-mainline-allyesconfig/16/

00:04:11 drivers/firmware/iscsi_ibft.c:868:15: error: implicit declaration of function 'isa_bus_to_virt' [-Werror,-Wimplicit-function-declaration]
00:04:11                 ibft_addr = isa_bus_to_virt(ibft_phys_addr);
00:04:11                             ^
00:04:11 drivers/firmware/iscsi_ibft.c:868:13: warning: incompatible integer to pointer conversion assigning to 'struct acpi_table_ibft *' from 'int' [-Wint-conversion]
00:04:11                 ibft_addr = isa_bus_to_virt(ibft_phys_addr);
00:04:11                           ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Should be fixed as of commit 799206c1302e ("iscsi_ibft: Fix
isa_bus_to_virt not working under ARM").

https://lore.kernel.org/r/20210901164722.GA2100627@roeck-us.net/
https://lore.kernel.org/r/YTJ5jFf9iBC50pMs@localhost.localdomain/

Is there any way to get these emails shifted from
clang-built-linux@googlegroups.com to llvm@lists.linux.dev? They are
very helpful but we'd like to have history of them on lore.kernel.org :)

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YTK4/8lnQykNLj/e%40Ryzen-9-3900X.localdomain.
