Return-Path: <clang-built-linux+bncBCB33Y62S4NBBHWBVOGAMGQEQW4JFCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-f184.google.com (mail-pf1-f184.google.com [209.85.210.184])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6A444B45B
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Nov 2021 21:57:04 +0100 (CET)
Received: by mail-pf1-f184.google.com with SMTP id g142-20020a625294000000b004946d789d14sf525577pfb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Nov 2021 12:57:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636491423; cv=pass;
        d=google.com; s=arc-20160816;
        b=RE1RnUm1xpCdmGR9kGANL7fAPOP8wvSxczQvcyIglXU5F90NW5xKaCVp8GwU125GTk
         86bmdCDM1NRDi6VM/OIN2egK9e1l44kvLYKiJufwB1Ogc91dA4p3c73F7us3P8jbdZTE
         xdFU4CCanIIBamtWR/Rg2r3xd2SIAM2FFBSW25Y4tVv3cnX/9C3B9IV8lSEHZLp5sS35
         p0fBGKzdMElVGxKB4xipuUK/CMngeOYezi4j/7hfFyHXS4T6rRWLmS1Qk3N/h8LR9UNT
         zFKa9OT0sq0+E4U9yF2e+xCmNGvvrBg8SzR4aSe3x+WmnVK6ysCXpPcJHvDq6yoUcyXY
         wdxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=zgpWikhwRJ4Fe6rkIM0PxFiJI1XRVRUL/u0rJaVcB0A=;
        b=1G+ObWzI+/cDgGTYEl8OKyofaPFh3wu3Y4KSnNDEiVHruAYoIJZ3MqPi3DOcmy3DBO
         7t2vcbyRMuV/Dlu+CFnNFI51+XTdSYklzauy5cefrYyOG0lwPqWJ0yF+EBPmZ+Fsi5Gt
         Z4DVhYIwa+gs4FXM+2lRrcJqHrq4c692/NZ0n8YozizbM29cml6tSfTSzyIzEtnB6ypo
         cIDaApq7jl6T50brIA+rtp+oRwm2sEwbwmgUC5Fhm4hXtl9c7QjKKqLQa/7lt7kIIE7u
         s5Cmjmyb16Qbr9xVCSTGUGtkjow/gJW9ECqi7KIO4JDoMOJh1e3JnF9ByohHnQAnEXOZ
         9TCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=PBuQp3iH;
       spf=pass (google.com: best guess record for domain of mcgrof@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=mcgrof@infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zgpWikhwRJ4Fe6rkIM0PxFiJI1XRVRUL/u0rJaVcB0A=;
        b=sLOgVwr1rkkdAIPpZqC1cw1X7m+wvRcWDN+JTqEC3e8ZfgzBxzuS+vWyi+yMGGgYPc
         PYPf2z6leWS0gDthLetkbOiJf5wMiYW4DjQbrHNSRZjalFcnHuOMLsb3VHo7Qm/x4ylQ
         9/3hQQC693lI9xmn8sCXMK8fodjEVz38vUgZjBh1wEICcVjiiJPQzFzhTndHVlWrr1zL
         cZbSCpcsM1Q/i36TGi2W/0ibBTLexsuoMJZj8pvbjHdYDueo+RJgHJSCuevAnUMXqlZ6
         zxB5Dw0qwtXP1L4PZCK2rtM3rEstPxg1PIlAPAwO6YTTYbABd2MlDflLrITtoHwxempf
         sGFA==
X-Gm-Message-State: AOAM530cfChcUrGu3c4CJtdC7xcYfbc1pRiAmQx3WvxauvbCqbhB3iWE
	uA7zw5gptheYahCE5veYi0o=
X-Google-Smtp-Source: ABdhPJzqak0esaHLQCeW8armpjp0UHxCn8PlDY5/QOE3EX5igqd9DHzD6ubMZh4pBzjP9knXDj38+A==
X-Received: by 2002:a17:90b:4c8b:: with SMTP id my11mr10699369pjb.96.1636491423032;
        Tue, 09 Nov 2021 12:57:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:756:: with SMTP id 83ls4073890pgh.6.gmail; Tue, 09 Nov
 2021 12:57:02 -0800 (PST)
X-Received: by 2002:a63:4b58:: with SMTP id k24mr8411327pgl.326.1636491422413;
        Tue, 09 Nov 2021 12:57:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636491422; cv=none;
        d=google.com; s=arc-20160816;
        b=bk0kVVCxGqi5sQOsD8I11Z8W+505jgvfTALr8zaYh3OiCNlkcKiTwsJLKnJhFO+/7d
         xz71URRL6I6Pq1XZZ0oCYBZ1AVRP9VEaEpqYjkInt8SP9YsBnFKbEl7pekd5qxvYOwU8
         e5D5otu03qVZCRXGGFbOI6oOFH7jOvGmfI1BQAOl0ozxF5Z/40sTgWnFqMNjyfDHDJjc
         yg1VRdEhrQDEDH/lTHPGc07pBhgGFnbUxBQmqDQSzLIzFRSpgBjgfijZQRxQyhT7a1n7
         E7UH9+lcpKYfPh1E+36NAj0MMS7CdZtuSfwrQixKPU2ldBYbWc9FDg9vAr9+37SxqJoR
         CQ8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=io+S8wCULLmvLhnauHLk8AUTXaXOEWfxvjfG3NBW+zc=;
        b=d+fXTYlpsL9m4EM9TnxnIxHP4BU1HJUVGPPLbcc3iB3taFSYC8qMpWz9Gh1qIRh7my
         3Htr+09M12uRWy2cy1+CuW64og5Z/zmL1DmElnJBOSMAa0V1UfAyz3FS72PttZNrXrwX
         V4KALvi6iC+l4Fw0g1ZSTn2VWGZ1Wc6mXiJAnrTvLqDnXc1G1TbVFJkRqtvxx1snDPfN
         127oHhwkPks9h5/O6MWOyiTF2H08koHy5kkLJEoP4EMyS/4upnGmWHYrJneYx7ODvvMW
         61H/9ftc5kS/s/SS2lKSG6PKHsbO0kQTAIolFiPRLMTaGouGdwqk7r13C6gZceMm9Z81
         /czQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20210309 header.b=PBuQp3iH;
       spf=pass (google.com: best guess record for domain of mcgrof@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=mcgrof@infradead.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id x31si183739pfh.5.2021.11.09.12.57.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Nov 2021 12:57:02 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of mcgrof@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkYAY-003FWh-E2; Tue, 09 Nov 2021 20:56:38 +0000
Date: Tue, 9 Nov 2021 12:56:38 -0800
From: Luis Chamberlain <mcgrof@kernel.org>
To: Miroslav Benes <mbenes@suse.cz>, Julia Lawall <julia.lawall@inria.fr>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Borislav Petkov <bp@alien8.de>,
	Thomas Gleixner <tglx@linutronix.de>
Cc: Jiasheng Jiang <jiasheng@iscas.ac.cn>, jeyu@kernel.org, ast@kernel.org,
	daniel@iogearbox.net, andrii@kernel.org, kafai@fb.com,
	songliubraving@fb.com, yhs@fb.com, john.fastabend@gmail.com,
	kpsingh@kernel.org, nathan@kernel.org, ndesaulniers@google.com,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
	mcgrof@kernel.org
Subject: Re: [PATCH] module: Fix implicit type conversion
Message-ID: <YYrghnBqTq5ZF2ZR@bombadil.infradead.org>
References: <1635473169-1848729-1-git-send-email-jiasheng@iscas.ac.cn>
 <alpine.LSU.2.21.2111081925580.1710@pobox.suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.LSU.2.21.2111081925580.1710@pobox.suse.cz>
Sender: Luis Chamberlain <mcgrof@infradead.org>
X-Original-Sender: mcgrof@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20210309 header.b=PBuQp3iH;
       spf=pass (google.com: best guess record for domain of
 mcgrof@infradead.org designates 2607:7c80:54:e::133 as permitted sender)
 smtp.mailfrom=mcgrof@infradead.org;       dmarc=fail (p=NONE sp=NONE
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

On Mon, Nov 08, 2021 at 07:31:05PM +0100, Miroslav Benes wrote:
> [CCing Luis]
> 
> Hi,
> 
> On Fri, 29 Oct 2021, Jiasheng Jiang wrote:
> 
> > The variable 'cpu' is defined as unsigned int.
> > However in the for_each_possible_cpu, its values is assigned to -1.
> > That doesn't make sense and in the cpumask_next() it is implicitly
> > type conversed to int.
> > It is universally accepted that the implicit type conversion is
> > terrible.
> > Also, having the good programming custom will set an example for
> > others.
> > Thus, it might be better to change the definition of 'cpu' from
> > unsigned int to int.
> 
> Frankly, I don't see a benefit of changing this. It seems fine to me. 
> Moreover this is not, by far, the only place in the kernel with the same 
> pattern.
> 
> Miroslav
> 
> > Fixes: 10fad5e ("percpu, module: implement and use is_kernel/module_percpu_address()")
> > Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
> > ---
> >  kernel/module.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/kernel/module.c b/kernel/module.c
> > index 927d46c..f10d611 100644
> > --- a/kernel/module.c
> > +++ b/kernel/module.c
> > @@ -632,7 +632,7 @@ static void percpu_modcopy(struct module *mod,
> >  bool __is_module_percpu_address(unsigned long addr, unsigned long *can_addr)
> >  {
> >  	struct module *mod;
> > -	unsigned int cpu;
> > +	int cpu;
> >  
> >  	preempt_disable();

If we're going to do this we we must ask, is it really worth it and
moving forward then add a semantic patch rule which will pick up on
misuses.

@ finds_for_each_cpu_unsigned_int @
identifier x;
iterator name for_each_possible_cpu;
iterator name for_each_online_cpu;
iterator name for_each_present_cpu;
statement S;
@@

-unsigned
int x;
<+...
(
for_each_possible_cpu(x) S
|
for_each_online_cpu(x) S
|
for_each_present_cpu(x) S
)
...+>


This produces:

 arch/arm/mm/cache-b15-rac.c                        |  2 +-
 arch/arm/mm/cache-uniphier.c                       |  2 +-
 arch/arm64/kernel/mte.c                            |  2 +-
 arch/arm64/kernel/smp.c                            |  2 +-
 arch/arm64/kvm/arm.c                               |  2 +-
 arch/ia64/kernel/smp.c                             |  2 +-
 arch/ia64/kernel/topology.c                        |  2 +-
 arch/ia64/mm/contig.c                              |  4 ++--
 arch/mips/kernel/mips-cm.c                         |  2 +-
 arch/mips/kernel/mips-cpc.c                        |  2 +-
 arch/mips/kernel/smp.c                             |  6 +++---
 arch/mips/mm/init.c                                |  2 +-
 arch/openrisc/kernel/smp.c                         |  2 +-
 arch/parisc/kernel/topology.c                      |  2 +-
 arch/powerpc/kernel/cacheinfo.c                    |  4 ++--
 arch/powerpc/kernel/iommu.c                        |  2 +-
 arch/powerpc/kernel/setup_32.c                     |  4 ++--
 arch/powerpc/kernel/setup_64.c                     |  8 ++++----
 arch/powerpc/kernel/smp.c                          |  2 +-
 arch/powerpc/mm/numa.c                             |  2 +-
 arch/powerpc/platforms/ps3/interrupt.c             |  2 +-
 arch/powerpc/platforms/pseries/hotplug-cpu.c       |  6 +++---
 arch/powerpc/platforms/pseries/mobility.c          |  2 +-
 arch/powerpc/platforms/pseries/setup.c             |  2 +-
 arch/s390/pci/pci_irq.c                            |  4 ++--
 arch/sh/kernel/topology.c                          |  2 +-
 arch/sh/mm/cache-j2.c                              |  6 +++---
 arch/sparc/kernel/iommu-common.c                   |  2 +-
 arch/sparc/kernel/smp_64.c                         |  4 ++--
 arch/x86/events/amd/uncore.c                       |  4 ++--
 arch/x86/kernel/apic/apic_numachip.c               |  2 +-
 arch/x86/kernel/apic/bigsmp_32.c                   |  2 +-
 arch/x86/kernel/apic/x2apic_cluster.c              |  2 +-
 arch/x86/kernel/apic/x2apic_uv_x.c                 |  2 +-
 arch/x86/kernel/cpu/mce/apei.c                     |  2 +-
 arch/x86/kernel/cpu/microcode/core.c               |  2 +-
 arch/x86/kernel/setup_percpu.c                     |  4 ++--
 arch/x86/kernel/smpboot.c                          |  4 ++--
 arch/x86/mm/cpu_entry_area.c                       |  2 +-
 arch/x86/mm/pti.c                                  |  2 +-
 arch/x86/xen/mmu_pv.c                              |  2 +-
 arch/x86/xen/smp_pv.c                              |  4 ++--
 arch/xtensa/kernel/irq.c                           |  2 +-
 arch/xtensa/kernel/smp.c                           |  4 ++--
 arch/xtensa/kernel/traps.c                         |  2 +-
 drivers/base/arch_numa.c                           |  2 +-
 drivers/base/arch_topology.c                       |  2 +-
 drivers/block/rnbd/rnbd-clt.c                      |  2 +-
 drivers/cpufreq/acpi-cpufreq.c                     |  4 ++--
 drivers/cpufreq/cpufreq_ondemand.c                 |  2 +-
 drivers/cpufreq/intel_pstate.c                     |  2 +-
 drivers/cpufreq/qcom-cpufreq-nvmem.c               |  4 ++--
 drivers/cpufreq/sun50i-cpufreq-nvmem.c             |  4 ++--
 drivers/idle/intel_idle.c                          |  2 +-
 drivers/iommu/iova.c                               |  4 ++--
 drivers/irqchip/irq-bcm6345-l1.c                   |  2 +-
 drivers/irqchip/irq-gic.c                          |  2 +-
 drivers/irqchip/irq-jcore-aic.c                    |  2 +-
 drivers/irqchip/irq-mips-gic.c                     |  2 +-
 drivers/macintosh/rack-meter.c                     |  2 +-
 drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.c |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c      |  2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      |  2 +-
 drivers/net/ethernet/marvell/mvneta.c              |  2 +-
 drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c    |  4 ++--
 drivers/pci/controller/pcie-iproc-msi.c            |  2 +-
 drivers/scsi/bnx2fc/bnx2fc_fcoe.c                  |  2 +-
 drivers/scsi/bnx2i/bnx2i_init.c                    |  2 +-
 drivers/scsi/bnx2i/bnx2i_iscsi.c                   |  2 +-
 drivers/scsi/fcoe/fcoe.c                           |  6 +++---
 drivers/scsi/fcoe/fcoe_transport.c                 |  2 +-
 drivers/scsi/libfc/fc_exch.c                       |  4 ++--
 drivers/scsi/libfc/fc_lport.c                      |  2 +-
 drivers/soc/bcm/brcmstb/biuctrl.c                  |  2 +-
 drivers/xen/events/events_base.c                   |  2 +-
 drivers/xen/events/events_fifo.c                   |  2 +-
 fs/fscache/main.c                                  |  2 +-
 kernel/cpu.c                                       |  4 ++--
 kernel/livepatch/transition.c                      | 12 ++++++------
 kernel/module.c                                    |  2 +-
 kernel/relay.c                                     |  8 ++++----
 kernel/sched/deadline.c                            |  2 +-
 kernel/sched/rt.c                                  |  2 +-
 kernel/smpboot.c                                   |  4 ++--
 kernel/stop_machine.c                              |  2 +-
 kernel/taskstats.c                                 |  2 +-
 kernel/trace/trace_hwlat.c                         |  4 ++--
 lib/cpu_rmap.c                                     |  6 +++---
 lib/test_lockup.c                                  |  2 +-
 mm/kmemleak.c                                      |  4 ++--
 mm/percpu-vm.c                                     |  4 ++--
 mm/percpu.c                                        |  8 ++++----
 mm/slub.c                                          |  2 +-
 mm/swap_slots.c                                    |  2 +-
 net/core/dev.c                                     |  2 +-
 net/ipv4/netfilter/arp_tables.c                    |  2 +-
 net/ipv4/netfilter/ip_tables.c                     |  2 +-
 net/ipv4/route.c                                   |  2 +-
 net/ipv6/netfilter/ip6_tables.c                    |  2 +-
 net/netfilter/x_tables.c                           |  4 ++--
 net/rds/page.c                                     |  2 +-
 net/sunrpc/svc.c                                   |  2 +-
 102 files changed, 148 insertions(+), 148 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YYrghnBqTq5ZF2ZR%40bombadil.infradead.org.
