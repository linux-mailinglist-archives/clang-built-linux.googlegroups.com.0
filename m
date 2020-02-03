Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBVE54DYQKGQE7A3SVXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 114321505F0
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 13:15:18 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id e10sf9285292qvq.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Feb 2020 04:15:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580732116; cv=pass;
        d=google.com; s=arc-20160816;
        b=IzN+e03aYB/4dneIyZKmRcg9lGTqw6T0gtTjhmf48wZr/zvRwUqHry9gCS7MMjwG2+
         fuJClw86iW6/wPBATOm3ss766FN4SgUxvpl6A1rdm9I7nZLl68V/W3i/8Msz9Ondt9+l
         3iyXDpMcM57uAU+aR71kgJgLMZYEIM5mZIrJTSt9xjxlf2Mt45hMX/lGoF9Wx5ZSH23F
         t2Wh1VuwY7lfpndAboGfGw1nkX7/nBNi9tKUJCGUO2WYuf1xPssbhlVPPGxkzmqkhOkc
         zLqminxU085Yp2+MkKGTxrC1gghWlq098mzZ03EOBStd7vir7Gbyr8t5jYnfYiKAXZox
         2aCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HGje6nTVPEjq+cvOoCwZyaiog6lMMzw9vDCo3CtcBGk=;
        b=tN5VKy2Knin20yVLuF0FGyeDzSp1j7O6zwjrv6JxAhnVib0Y601xpLFplfnl2tgD09
         tLZwkdUcJ7qgNLIpsLPHIZlHjepWaZC1JT4Zyo9RFUue2cFQehHzEDcG0iYy4b30rkbW
         S3dLQ6WD33TN381gbOF7dp8ur+HBNi6uy3l2iuGa2i8kt2ORRL1jLiW2OY3DwMP/wEXJ
         JXDHrROMYxvkfDEQfCdwnPscFlXL7Glado6Y0ORIHbalrEZY4H9kLsZLRFtGCNS5/7Db
         QpQtvhYqvEHujuL/tRKzncV/6qIQlq/wY4htDNIit7iayClOP/iFWTuuVv2Bm9mikV3D
         O8gA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HGje6nTVPEjq+cvOoCwZyaiog6lMMzw9vDCo3CtcBGk=;
        b=LyD6LNKwgwkWzvGau/bGArmZs4Q+VSB/3Sgm6rq5UVR9ryifH14h6W7x5u/w3gZiNY
         lOoyP9Y5wj4+z85ajFQzk7HgFxDtDhBkiBdOJV7I5LnbtyS7IERPRtrVHLF4DyoQZ3u8
         ihd3uKqnK/SFl5sndNxKSvYLlnJmJrBl41xEt1GTMle+Ffq8a4NQucL2VG4JhH9cdvMh
         PM9R2N2iBbgV3HN0L5B01l7UjJpEtfMkn11Lb+reEvBJ5O0lXPmnKCDi1baGDs5AemKx
         8ZPIKNEKI68WyeD2vLQ571ouC1Sk4KjUf39Pu/iy1d988nt8hycW1B2Y+ygYjZYFpey9
         fMmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HGje6nTVPEjq+cvOoCwZyaiog6lMMzw9vDCo3CtcBGk=;
        b=uDgF/99cmN7O9Ys7egF0ECzY6u3ow0yI0Q3Mq+ScD1kCr6bySJK+t7xOWEXrJX6l6i
         ZHB0joun/GX6RX7BIy4u+HqqUFGoEMxW2egdJwdDxxoQ3fzO11mFEPshU3yo+boeF0Q6
         lra2OPHZZlSTyGWvyzGBvS0k7DQXxz4xpUvVRgb+gFwwqOI5v1P9iji3j8rQ6KrNuimS
         2p0izwy7XId+f/qnR/Hb7lcBYrD03OxJEiRSiTAN4IpdKx4rrzGY9rYVDtlzmZPMtEk2
         NrcrrDLgCUxhbDUz8zdi/xVNZGq5RFNoBwH3MhKhvqcVn+WZ6b8fYnjJnOt+WjAs5hPp
         8Haw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWESHKYpAY+VLMAoYo/ujlZ1vno3l1P0GH1jsv9hi8LNuX5Ukq4
	7QxejdJOTXu8UaXGE/egVZs=
X-Google-Smtp-Source: APXvYqyuio9LwT4BDWTDtofpSVoPxE2WosSk/cUyPQ6EPdWbioqhBSM+gw+84x7AwK0Sbeo819EqCg==
X-Received: by 2002:ac8:7388:: with SMTP id t8mr23145817qtp.244.1580732116610;
        Mon, 03 Feb 2020 04:15:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:ab0a:: with SMTP id u10ls7132029qke.6.gmail; Mon, 03 Feb
 2020 04:15:16 -0800 (PST)
X-Received: by 2002:a05:620a:12ab:: with SMTP id x11mr23367101qki.149.1580732116224;
        Mon, 03 Feb 2020 04:15:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580732116; cv=none;
        d=google.com; s=arc-20160816;
        b=IHA67dF6iMts4vqJ3+ERq40AbdmIsuXGsz/2moc+ZSMVilq4KK+PhmV2yvunZjXjYc
         5B6fG055SsQlKfEUvD12OGh2rFo3atosILIfz3U9QKDtPb1a6wiUdcfcQUT5/msJ0xXt
         Io23rHV5kqzFV+Q8J//8NuwtrZbR2WF5WK3oVdLSsALNxcfUl2iKQF5fqvDpkI5efav5
         nJ5RY4ruQC7JCLbjfMaAB6OHaHOVtxbTAbhoiNmdTAEStIzbInWfFd84a75p0S0Y/6Rt
         4lZ5cnXjwVsDrRVP0o9/xRc4Iof8cCb7+Vb+wzD+HORXo7rH0I6p/giP3mc9nAhdCjjO
         IrMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=zJBTuGstT2+IukNs6ywGVZCsABR0o5mXZGLX4yq/shM=;
        b=dBGt0OximrpQrIHUCrHwMEGnsDuZSsouAcyDjZhAgBawKGEbkCSjRjqfdkYo0OWvM9
         QCB7fTrjwQkRcFrv7oR22gWtD/WIrlEyI5JVmr5GlChRUFkQS/qkQom9BimO2mGH59w6
         fMuSzJzGc1UwFRuZkDtbXDswZmiADbIe9dykDpZpVLIYe/0DRpNroijoqbzjA+0XlCpc
         TAc8r6/So7PwkVp2Q6cqIlROGrcfmcUqMjKwkpoUcEJl70+X9UzgbyF1qHuzlP1b0JZb
         gFIv/MtTpihiI5+Tv9GrMTSuKwou0UlEH7HVPUSyACD0RR8gvvDoulWcIrVyopSVEHy8
         icHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id 145si578765qkf.1.2020.02.03.04.15.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Feb 2020 04:15:16 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Feb 2020 04:15:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,397,1574150400"; 
   d="gz'50?scan'50,208,50";a="403423911"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 03 Feb 2020 04:15:13 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iyadE-000HSF-K7; Mon, 03 Feb 2020 20:15:12 +0800
Date: Mon, 3 Feb 2020 20:14:50 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [linux-review:UPDATE-20200203-052746/Evan-Green/PCI-MSI-Avoid-torn-updates-to-MSI-pairs/20200118-154252
 1/1] arch/x86/kernel/apic/msi.c:164:3: error: expected ')'
Message-ID: <202002032043.lQ55brNy%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2ayjpd4t7csy7ysv"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--2ayjpd4t7csy7ysv
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
TO: Thomas Gleixner <tglx@linutronix.de>
CC: 0day robot <lkp@intel.com>

tree:   https://github.com/0day-ci/linux/commits/UPDATE-20200203-052746/Evan-Green/PCI-MSI-Avoid-torn-updates-to-MSI-pairs/20200118-154252
head:   c1210f04f40e67c847d7fae7678203d3c03826cc
commit: c1210f04f40e67c847d7fae7678203d3c03826cc [1/1] x86/apic/msi: Plug non-maskable MSI affinity race
config: x86_64-defconfig (attached as .config)
compiler: clang version 11.0.0 (git://gitmirror/llvm_project 8a68c40a1bf256523993ee97b39f79001eaade91)
reproduce:
        git checkout c1210f04f40e67c847d7fae7678203d3c03826cc
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/x86/kernel/apic/msi.c:164:3: error: expected ')'
                   irq_data_get_irq_chip(irqd)->irq_retrigger(irqd);
                   ^
   arch/x86/kernel/apic/msi.c:163:5: note: to match this '('
           if (lapic_vector_set_in_irr(cfg->vector)
              ^
   1 error generated.

vim +164 arch/x86/kernel/apic/msi.c

    60	
    61	static int
    62	msi_set_affinity(struct irq_data *irqd, const struct cpumask *mask, bool force)
    63	{
    64		struct irq_cfg old_cfg, *cfg = irqd_cfg(irqd);
    65		struct irq_data *parent = irqd->parent_data;
    66		unsigned int cpu;
    67		int ret;
    68	
    69		/* Save the current configuration */
    70		cpu = cpumask_first(irq_data_get_effective_affinity_mask(irqd));
    71		old_cfg = *cfg;
    72	
    73		/* Allocate a new target vector */
    74		ret = parent->chip->irq_set_affinity(parent, mask, force);
    75		if (ret < 0 || ret == IRQ_SET_MASK_OK_DONE)
    76			return ret;
    77	
    78		/*
    79		 * For non-maskable and non-remapped MSI interrupts the migration
    80		 * to a different destination CPU and a different vector has to be
    81		 * done careful to handle the possible stray interrupt which can be
    82		 * caused by the non-atomic update of the address/data pair.
    83		 *
    84		 * Direct update is possible when:
    85		 * - The MSI is maskable (remapped MSI does not use this code path)).
    86		 *   The quirk bit is not set in this case.
    87		 * - The new vector is the same as the old vector
    88		 * - The old vector is MANAGED_IRQ_SHUTDOWN_VECTOR (interrupt starts up)
    89		 * - The new destination CPU is the same as the old destination CPU
    90		 */
    91		if (!irqd_msi_nomask_quirk(irqd) ||
    92		    cfg->vector == old_cfg.vector ||
    93		    old_cfg.vector == MANAGED_IRQ_SHUTDOWN_VECTOR ||
    94		    cfg->dest_apicid == old_cfg.dest_apicid) {
    95			irq_msi_update_msg(irqd, cfg);
    96			return ret;
    97		}
    98	
    99		/*
   100		 * Paranoia: Validate that the interrupt target is the local
   101		 * CPU.
   102		 */
   103		if (WARN_ON_ONCE(cpu != smp_processor_id())) {
   104			irq_msi_update_msg(irqd, cfg);
   105			return ret;
   106		}
   107	
   108		/*
   109		 * Redirect the interrupt to the new vector on the current CPU
   110		 * first. This might cause a spurious interrupt on this vector if
   111		 * the device raises an interrupt right between this update and the
   112		 * update to the final destination CPU.
   113		 *
   114		 * If the vector is in use then the installed device handler will
   115		 * denote it as spurious which is no harm as this is a rare event
   116		 * and interrupt handlers have to cope with spurious interrupts
   117		 * anyway. If the vector is unused, then it is marked so it won't
   118		 * trigger the 'No irq handler for vector' warning in do_IRQ().
   119		 *
   120		 * This requires to hold vector lock to prevent concurrent updates to
   121		 * the affected vector.
   122		 */
   123		lock_vector_lock();
   124	
   125		/*
   126		 * Mark the new target vector on the local CPU if it is currently
   127		 * unused. Reuse the VECTOR_RETRIGGERED state which is also used in
   128		 * the CPU hotplug path for a similar purpose. This cannot be
   129		 * undone here as the current CPU has interrupts disabled and
   130		 * cannot handle the interrupt before the whole set_affinity()
   131		 * section is done. In the CPU unplug case, the current CPU is
   132		 * about to vanish and will not handle any interrupts anymore. The
   133		 * vector is cleaned up when the CPU comes online again.
   134		 */
   135		if (IS_ERR_OR_NULL(this_cpu_read(vector_irq[cfg->vector])))
   136			this_cpu_write(vector_irq[cfg->vector], VECTOR_RETRIGGERED);
   137	
   138		/* Redirect it to the new vector on the local CPU temporarily */
   139		old_cfg.vector = cfg->vector;
   140		irq_msi_update_msg(irqd, &old_cfg);
   141	
   142		/* Now transition it to the target CPU */
   143		irq_msi_update_msg(irqd, cfg);
   144	
   145		/*
   146		 * All interrupts after this point are now targeted at the new
   147		 * vector/CPU.
   148		 *
   149		 * Drop vector lock before testing whether the temporary assignment
   150		 * to the local CPU was hit by an interrupt raised in the device,
   151		 * because the retrigger function acquires vector lock again.
   152		 */
   153		unlock_vector_lock();
   154	
   155		/*
   156		 * Check whether the transition raced with a device interrupt and
   157		 * is pending in the local APICs IRR. It is safe to do this outside
   158		 * of vector lock as the irq_desc::lock of this interrupt is still
   159		 * held and interrupts are disabled: The check is not accessing the
   160		 * underlying vector store. It's just checking the local APIC's
   161		 * IRR.
   162		 */
   163		if (lapic_vector_set_in_irr(cfg->vector)
 > 164			irq_data_get_irq_chip(irqd)->irq_retrigger(irqd);
   165	
   166		return ret;
   167	}
   168	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002032043.lQ55brNy%25lkp%40intel.com.

--2ayjpd4t7csy7ysv
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICPMGOF4AAy5jb25maWcAlFxLc9y2st7nV7CcTbKILcmyjn1uaQGS4AwyJEED4Dy0YU0k
ytE9eviORjn2v7/dAB8ACCpOKmV70I13o/vrRoM///RzRF6OTw/74931/v7+e/SlfWwP+2N7
E93e3bf/E6U8KrmKaMrUW2DO7x5fvr379vGiuTiPPrz98Pbkt8P1abRqD4/tfZQ8Pd7efXmB
+ndPjz/9/BP8/zMUPnyFpg7/jq7v949for/awzOQo9PTtydvT6Jfvtwd//3uHfz5cHc4PB3e
3d//9dB8PTz9b3t9jD7uLz5en5/sT/+4Pftw8eHs/adP79v207/+eP/p9l+fTk5O2/3+pv10
+it0lfAyY4tmkSTNmgrJeHl50hdCGZNNkpNycfl9KMSfA+/p6Qn8Z1VISNnkrFxZFZJmSWRD
ZNEsuOIjgYnPzYYLizWuWZ4qVtCGbhWJc9pILtRIV0tBSdqwMuPwR6OIxMp6wRZ6C+6j5/b4
8nWcFyuZami5bohYwLgKpi7fn+H6dmPjRcWgG0Wliu6eo8enI7bQ1855QvJ+qm/ejPVsQkNq
xQOV9WQaSXKFVbvCJVnTZkVFSfNmccWqcW42JQbKWZiUXxUkTNlezdXgc4TzkeCOaZioPSB7
jj4DDus1+vbq9dr8dfJ5YH1TmpE6V82SS1WSgl6++eXx6bH9dVhruSHW+sqdXLMqmRTg34nK
x/KKS7Ztis81rWm4dFIlEVzKpqAFF7uGKEWS5UisJc1ZPP4mNagFb0eISJaGgE2TPPfYx1It
7HByoueXP56/Px/bB+sQ05IKluiDVQkeW8O3SXLJN2EKzTKaKIYDyrKmMMfL46tombJSn95w
IwVbCKLwxDgnPeUFYcGyZsmowBXYTRssJAv31BGCzWoaL4p6ZoBECdhLWE84xYqLMJegkoq1
nkhT8JS6XWRcJDTtFBKz9aOsiJC0G/QgyXbLKY3rRSZdiW8fb6KnW29nR53Lk5XkNfTZbIhK
lim3etTCY7OkRJFXyKgTbX0+UtYkZ1CZNjmRqkl2SR4QIa2f1xM57cm6PbqmpZKvEptYcJIm
0NHrbAUICEl/r4N8BZdNXeGQ+6Oh7h7AVIZOh2LJquElBfG3mip5s7xCO1BogR02DAor6IOn
LAnoHlOLpXp9hjqmNKvzfK6KdezZYokyppdTSN1MJwOTKYw9VILSolLQWEkDffTkNc/rUhGx
s0fXEe1qBmpU9Tu1f/5PdIR+oz2M4fm4Pz5H++vrp5fH493jF28NoUJDkoRDF0byhy7WTCiP
jHsV1O14ErQojbwhIypTVGUJBf0KjMruzac16/eBFhAkSEVsacQiOIU52fVt2oRtoIzxmRlX
kgXP8Q8s6nAAYb2Y5HmvM/WmiKSOZECGYQ8boNlDgJ8Al0BYQwhGGma7uluEtWF58nw8Axal
pKDkJF0kcc6ksoXUHaC1rSvzj/Cer5agLkHcg1gLIVMG1oll6vL0o12OS1SQrU0/G2WelWoF
OCujfhvvHRtbl7LDlMkSZqV1TL/c8vrP9uYF8HZ02+6PL4f2WRd3cw1QHeUq66oCnCqbsi5I
ExNAyIljEzTXhpQKiEr3XpcFqRqVx02W19JCCx1ahjmdnn30Whj6Gaij6nF6DixvshC8rqRd
B/BKEt6nOF91FWZbMqs4DjAjTDQuZUTZGWh7UqYblqplsENQG1bdIEvXbcVS+RpdpC4QdakZ
HIArKpzBGcqyXlDYjlDVChCcrT5Q5+A4OkqgsZSuWRJS0B0dKvrKrJ8eFdlr09PYIWRdAAAD
8gBdaAFPlEjrN4Ld0pEAGL6AopAlgenZdUuqvLqwUcmq4iCKaMYARtHguM1hQxdpIk8jz06C
hKQULBQAMnf/ewFBbW05ijkq8LWGMsKSQv2bFNCaQTSW5yVSz+GCAs/PghLXvYIC26vSdO79
PnfOLq/AprErigBRbyYXBZxJByb4bBL+EVLdnpNhlBhLTy8cHwZ4QP0ntNJIFWafUK9Olchq
BaMBC4PDsVaxyuxxzRoRr9MCvC6GomONAw4PugvNBBaavZ0UZ0vQB/nEvxrAkKPc/d9NWTA7
aGBpWppnYMiE3fDs7AnAdARr1qhqRbfeTzgKVvMVdybHFiXJM0sA9QTsAo1i7QK5BL1rKXZm
R0R4UwvXcqRrJmm/ftbKQCMxEYLZu7BCll3hHNO+DN2dwNaO5BggCMwXhRbU07RRs154DtFB
dHBYlfUDDB5vFBXtqmehk60tG5q8cUbQWpl42wg+leNQATNN06CuMEIPfTaDG6KteRdvq9rD
7dPhYf943Ub0r/YRUBkBO58gLgPcPYItt4mhZ62CDRFm1qwL7UgGUeAP9th3uC5Md41Gms5B
kHkdm54dTcKLigCoEKuwXs1JyKBhW3bLJIa1FwvaR1TsHjQVrSbiv0bAoeXFbF8j45KIFHy0
sCWXyzrLAIdVBPocvPCZgWrsBy61YsTVKooW2tHFUCTLWOKFHMBIZyx3zpLWjdpiOe6WGzns
mS/OY9tL3urgrfPbtjpSiTrRCjilCU/tQ8lrVdWq0YZAXb5p728vzn/79vHit4vzN84ZgNU3
Py/f7A/Xf2K8+N21jg0/d7Hj5qa9NSVDTQSxYDh7aGitkCLJSs94SnMiI7rvAtGoKMEiMuNy
X559fI2BbDGMGmToZbJvaKYdhw2aO72YBGEkaVLbGvcER+FbhYNyavQmO+fHdA4OX2cRmyxN
po2ACmOxwABI6uKNQUmhNGI32xCNANbB4DfVJj3AARIJw2qqBUinHwIEJGnwn3GgBbVmrt2w
nqQ1HzQlMESzrO1Qu8Onj1eQzYyHxVSUJr4FxleyOPeHLGuJ0b45snZo9NKRvMfPI8sVh3WA
/XtvASwdy9SV5zybTrnC0LVi8NYIdzVv1HZyMBtZVHNN1joUaslCBkCDEpHvEgzt2ca4WhgP
MQc1DMb2g+eUSYJbiwcL948mJnaobUt1eLpun5+fDtHx+1fj8FuepLck1im1h41TyShRtaAG
z7ukotKRRVs7L3ieZkwug4BZAVYBWbT5sRkjwQAbRQgPIAfdKth1lKQRMzlNrGHYQc2OxNCY
HAaziQULG4eRI69k2NNDFlKMw5t3txiXWVPEzJ5AXzbrSmHzg/B0MX3wbvPahiPGreEFiHMG
DsegcpwQ4g6OIsA3gPiL2rtgGp3w1cdweSWTMAFxUfguBgyMa5199Wbjun6hRQn2qtNdJm5y
YbPkp/M0JRO3vaSotsly4RlKDNOuPVkGR62oCy2MGSlYvru8OLcZ9OaAa1NIy5QiN+yMkY9p
McjEtHC5W9iwoC9OAGaROtD21ZLwrX2hsKzA9dWw3iuj4AehqRDKWoW0cIRtAcDFXEXMbNjW
O0q9ItcqXCLgAiUe0wVa5DARjurlh9MJscdy47J2FKvECLEslC/XRTItQd+Lu7uob0EbUjFP
DDBaOikUFPx/ZTzeWPAVLZuYc4VxYF/RJROlBUUY28vpgiS7mTNbJNSXjL7YkYy+EO9u5BK0
VaAzaOh30O8zPaklBTCXA/J0TICF8h+eHu+OTwcndm65E52Gq0vPVZ1wCFLlr9ETjGw7q2Xz
aCXJN1QEnZOZ8doTPb2YgGAqK7Cf/gnvr4O6Q+EgcSMRVY5/UNeYsI+rwBIXLBE8ca7chiJ/
h0eC2ePxaA0E2GGj6DISNBJ6y20101lJ5snMB40K3LKUCZCBZhEjYpG+ICUVQbigwCNiSdiW
4RaBjYFTnIhdFRI4jOxa0Ab43ZIOAJGkYh4FFbvE+8iy4SiypuDSjxpTVzm5lV2lb4CVhiFm
0CQAGgfy6E46dJrjknWGFW9Wc49Dx1dXeDQaRW2sx3JUAHlva/G6sqaXJ99u2v3NifWfuwsV
juVVzaFDmeCKcIlBB1FXUwFGVQUTI0U/8JHRVPeVHV4e44XExtK3hRIOQMDfCCqZAnch5ADr
4RN/BWsJO1MtUH0QNwivycZJd8cjC+IBzbpwEz0sZFZtZ4bS0c0CdBAYF2BFd54K74C63OoN
bniWhfsaOcKXhAHOmWwbmtlhuozBwbOjHFhSsK29WJIm6IQ6iO2qOT05CY4ESGcfZknv3VpO
cycWbri6PLXSpYxpXQq8VbUCbnRLEyeEhwXoOwZvFASRyyati2pa5fc6CC6q5U4ytNygm4SC
83PaHZvBddAhGfdsG6nCkDXGAd3d1m6nrmWHbvtewKdelNDLmdNJugMXB/M4jDSBtw3oINSd
YZinjB1VJNWpGCffhl6WcGrzetEh3zFiOZxmiyG8ucYh/Vu2LpyxTmU4k8noH99OhjbU59zy
Mnfu8X0GPxdgHFOR6mAEzDbk6sFpYhmsfKqm4XntbedsTSu8r7SjZa85upN4B2xI01tGm2YM
R7+B3eKOPBhWNWFoY6G0h8J8Pdc1IqscnLAKoY7qrnQDXBie0AEROzvJwLan/7aHCGDQ/kv7
0D4e9ZTQmkZPXzEj0/LfJ3ETc5ttqRQTMJkUWPeO/QJ3raDnlecxSVZySnQDmgWc19SEQlWX
j2iRckorlxlLugDDiA4LrT81LSgzwLAhK6pzgkKqo3D6mASksf10jRde6dS/trkw4bJfnWA/
3fj7Hqya7g1XX+K6YVCa5Ct7ZJvPBgpjjhtLGEbZO3wSHCJ6zIsOnsxdWgxBApQWS+wmv/oj
q1WqBFDAV7UfrgK5XKouGRCrVHZ8Upd0MW8zC437pRXaHREl8uplWwQxhWmrSkTjaXgz0soG
/Ia3Ey23BwRpmZy6FzaPoOuGr6kQLKV2ENFtCQxVICPO5iD+UsREAf7b+aW1UvaJ0YVr6Jt7
ZRkpJ6NQJHg5pRfT1SpYpOMWgoJMSemRuowk8HIH5yxMZulk9ZOqSho3WdSp45XPWDevH7JY
CJC/8BWLmbvxZz2J1ArcLA1q0LoCxZn6I/ZpATEM+z16jAlKFw95PWY5eKkIWLC5eTPehRnc
ZmU842vpujOXUqbDWiqOEF8t+aw4xIvAgYN/zU6j88q8cRQkVGFUAKSilhpxy7sLcLdFJIQh
TKWyUBzAOYRbMJ5z2pphwgLIEJtB6f1mwb+Dh9h4YUMQbbwIzJwB99mIUXZo/++lfbz+Hj1f
7++dIEp/8NzAnT6KC77G3GvRmJycEHma5jmQ8ayGUVTP0eebY0NWZsc/qIRbIGEjw0lG0wp4
ca6TeoIjtjl5mVIYzUzmVKgG0Lr85vU/mIL2WGrFQjbRWem51BeH50fWw1+HEL2f/WxPPz7Z
2UkOwnnrC2d0c7j7y0kcGL3WahKf02ch0bF47HDmtPRGxhV1nwJ/x5O2cVFLvmlm7hX6yxMj
9LSUACbXTO1mmQGi0RSQh4mZC1aGHRzd97nJqixc5amX7vnP/aG9sTC1nSobOPHDerOb+9Y9
/37adV+mNy8HnyOISByugpb1bBOKelO0BqpHYwUw9S5jzXCI9W99Cz3N+OW5L4h+AaMYtcfr
t9bjLLSTJtJoIVwoKwrzwwqH6hK8Ujk9se5Yu6t0jMp7ocSJ/GC+VhyczMwozQzuHveH7xF9
eLnfe04TI+/PnLCw0932/Vlor4w3bV8dmyL/t75NqDH8iUEG2FX7KqN73zPUHGcyGa2eRHZ3
ePgvSGmUDgd69AfSEB7ImCg2RGhP1omwpQVjjjqCApMKF3rIhDR8N1eQZIkOO3j0OmCVda6h
3VC2aZJsMW3LuhPmi5wOQ5scRGg4+oV+O7aPz3d/3LfjrBkmI93ur9tfI/ny9evT4ThuIo5m
TeyECiyh0s4qwRKBGfIFrAdxPAYzmVW/TuHw3VB5I0hV9W8iLDpGbXKOHrdGhoKH082QNSGV
rPEiX7PPsvnP/kZEU1WYoCTwxkIxGl5pDPIq89xrBf6bYgst4rO9iYSdGcAcPF//ZGOcXehS
GfqAhmq/HPbRbV/bWCdb4c4w9OTJMXAw6GpthQDwvUcNR+9qcraBLbgOa3yth9nEr1DNazp8
ZoZvSSeBe+e5J2ZK3R3bawxA/XbTfoU5oJ6dhG5MmNS9bjNBUresdy3MpegwMG7SyUJIRa9K
Tx8b6ksQqvvXxys/IwUDtWC5Yn0VMsJjvDpKdHQdb02ymUeqvFJ+e5OUFz3IMfJRl1pfYmJ2
gl7i9IJBv15VrGxi9xXlCvNKQo0zWEbM7QpkNk2ma0rnWgrMx24G0F6ThdKcs7o01xFUCHSv
9Q2uE0LTbE7u8Pj4Ure45HzlEdFsorZhi5rXgRdtEnZOIwfzFDDgQ4OJUhho7TLSpwyoRfwo
t0PsbhkdC2ON3DyKNimIzWbJFO0e69htYbKWHKLu+lGTqeE3KQuMenVvm/09ACdQNoC0TRZU
Jz0urDB80sat7vbgS+zZiiZqZ5csN00MEzRPDTyavtGxyFIP0GPSjxxA2GpRgmWFrXBypv1k
4YB8YDIrwlr9/MKkfekaoUYC/feZwqJbtO6uZrKPjhJ4hWrnYLvSYqTbPIXqUnH8prpj3wkL
RsT9DTD1TG7HDC3l9Uw2YIfKEHaZZ7D94/kAL97Lj/yhOXc3dF3apIXsZsqtmrjSOYiFR5wk
7/XmoUvwc8j6ZsXqdaauVwmWlpeTddezZgrgXScFOmvMFxVUNHSrtDJasUkrM88rfU08fVjp
HxuOYmnnxDh6sMQrfDQT/aXJj/I1VR1sE+mYJ+/HvLUYaCJe30g4Z8GuJM+0DlS7yTzSPueA
JpgDbjlCPK0x1o6mDN+E4JkJrBPdMoUGRT+LV2Rye4RCoav3l46h8Tm50b7NxQ6CpsGtNaZb
B9q1cqXnGrFZAk11ZM2O97dTwat2vSFRuU81Ets9Dp9aVFhbZq7ihpxzCwfhNzDYorvqeT9x
4Do68Uz14AHGzGTfhRYeRcrftlDZaEwVmGzVf1ZCbLb2KZ4l+dWNbAWrh0jjeCtYKXCGu/t1
17wOwAuQgIOkxntfMEH2+5DgdYn1mKbPKer9gkXC17/9sX9ub6L/mHcpXw9Pt3ddfHX0H4Gt
W4bXOtBsPcY1d8fji4pXenJWBb86g3CblcEXGX8D7vumQCkW+FLLlmr9WEni05zxczadTrDX
tNsv/TUH7SyG78mRpy6R7muYrupAtFvuMVQ49dNUlyIZPiMz83yq55x5U92R8cCAQ/pqZ5hS
vwHQJCVajuHJaMMKfY8ZfrxVglDCEd0VMc/DLCD6Rc+3wqdis4sozQt0/wI0du/t8XGnTCTe
H37GvGmXgs8+Y+ncOlvFOYuDYxwfjCq6EHPxzp4LE/XDsXT9MrrLq9AIJxxcQLZNHPLWTBeY
U5JJfw64gLwi07hztT8c71DoI/X9a+sEpoZ8gOHiPbT6MuXSSh1wYjZ28Ri59Hp0tmoSjMPB
F58xJumW6XQB88UaPr6it9xyqMS4SYNKwfZ07xWmxNUudq+OekKcfQ4GU9z+Bu0ly1MrKlqa
tzoVgDI8wDAx51MzHV0bRUN/jRasuwFRo3OVbaJb20svUBx9NlFYX+3RCs8MHbaeb5xLUrGR
oP5niLq3GdpghPRnjlLNplNBRpZ5il9ZbMJVJ+Wjfe2ffTYxzfAv9Jrcb+9YvCb7qQsWjhxj
qo0Jd35rr1+Oewyo4bfZIp3yfLREMGZlVihEeRP0ESLBDzdipMeLPt1wUYaAsfvOhXUcTFsy
EaxSk2LQyYnb5JDR10cHZ+ahJ1m0D0+H71ExXjRMAmCvpt2OObsFKWsSooxFOttPvwHHGGmf
U+zg8j5DlEo3Ij9mDm/BENigbiStTYx4klw84Zh2apSTzhab0jP8pNGiduLSbgJa6AWqSS5T
Ruvh64lzR0Y81Br49BVmJ2IenGiU/6Y0BhRnQ2Xt3inexHacqShqO2oxBlhl6KVPL4J6Bc2X
k1JxeX7yyUvhnn3e5C9NR5mx+1MXcA4ymvCTWlb9V9nGqzdw000ic7CTDLxphXVmUhzDX527
qvjM7cBVXIct+5WcPuTuIXEX69OR9j7Sac8Blp0K4cZV9Lcogj3pcKFm6f3814B2pV+jBrxn
nQauPyMFxOb/KXuy5chxHH/F0Q8bsxHTMXnY6cyN6AeKojJZ1mVRebheFG6Xp9vRPjps1/TM
3w9BSkqSAqTahzqSACmeIADiSFK2xWhq2Rpnuw4ixtcJQiLhD0h7LSNq2WGXsQpzz/B6ZiRv
5nH/NDE6UxA3AJeo9VRtK08NrW4i64bYKSENmcsfP/96e/8D3twH9E2fxRs/FostaWLJsPnd
59KR0eCXps2ec4opC2ufN3+KWrokboQJ+KWZ7m0RFLWxM84PoVCIuqj4KGofNeDUyYnXesCx
JGiskXGHFFgOvWWQsUlv2WRp7wA/gJsu7e0/jbuXz7SByi4CeUEM91/QLtwt1l7Sa936kFkM
Vu8QmBanosK1UNeQMi/D302848NCYxg+KK1Y5R13s2VLiZMkC9wCUyCyPeZKYTGaep/n7iUM
I7dDCCNx9ZBgMjN3Nvr5wie1lJnSV+fcH5wtdJ7ZNQumP1/cyMBRyHT5UOMGZgBNCtzFsYWd
B4xvO9hcDcOdhg1Mi6o0UJZwGxN79jzRfiWCMNS8BD3stt/IbsUeGEnsoujBfB/5hok95KgF
2mNR4HdQj7XT/5vAUNMod1GKX489ykFsGSHUdyj5YRwObPjwTTvESif6ehCEXVGPcSeI7dFj
yFSLVYWcGE/MJyeOxwTN71c/wiyMOuZrsPgdoAoGGYC75n/56eH7r08PP7m7KouvlGvoow/j
yqcGh1VLcYHvxmOIGSQbegougCZG9V1wOFb6LLryKpToExieIVMI3l2h6izAGp5Pv0+ZLFc0
VBK72AADmuSClKwHU6TLmlWFDhvAeawFMSNB1HelGNS2lGRkHDQlDhDNUtFwJbarJj1Ofc+g
aT4NDVEq6uAxUZdAuG14PgPWzmfByrqE0N5KyeQuoPymkpZjjB5e39tZibOsGrV/kXPrt1FP
MP1UG+v8/RF4Oy3Xfj6+D+KhDxoacItnEAxa+hFRAhDEiHTAEC0szw0f7pWaqJP2Gn5xBmMB
uinNkWMz4DSHTLMLtf4T3ky5YLN02FXuYSUus+JBZMXJtnX3ja8rGvjPH4IM2q+dGUaWuJvj
bbrXXAzqzZw0uas5tL8HA4EyOwS/LOwQlGVM3e5F6H+ggSQ7dO7wqWcxzU48GQXLx8XD28uv
T6+P3y5e3kCD+IHtwhN8WS/vi1/18/79t8dPqkbNqq2ozQxjp3CACJv1BUWAWXzB1uBcOYeY
fGh0CQw5sQdjtEUt4hpTlB9s01kZfBAt3g9Nhb4FMzVYqZf7z4ffRxaohrjqcVwZco53wiJh
ZGCIZaWvUZSzxXdnNjxG3jx+XhFmcRp0UAOyKcv/+wGqmQB7UTFzYVwGB0QVRkIGCM676zOk
6dTpbhQlhogsAdynlyA+vQRlpjtuYSXAXqvr5nnkGiRLRBIEM+fA/sOW9nv1i2cwbYH22GD4
2Ga1CBnLt2koe0GP2RF/exhZmHbl/rUaWzt8jXAOyVsjEqVdoxW+RuepXw0uQVPoTMiKWpCV
nSo4AlAndI1tEYZLthpdsxW1AKvxFRibYPRsrMjrMqpkvMV5tai046FObcwJUQMOO69xWEUE
ONacJR4RitW4rW26IL4wHFELsCZkIBsrFtwFUITb7KYsb9azxfwWBceCU9a+acrxOFasZike
0fK0uMKbYiX+7lvuCurzq7Q4lowITi+EgDFdoVQNrqw28IY5rbffH78/Pr3+9o/2yTGwqGjx
Gx7hU9TBdzU+hh6eECHBOgSI0DSKYOST8U5UxMN3Bx94hwzg4+3X4hYXaHqECBdez7NIKy4B
rm/k8fbZ5DRtpyYhVqFufICi/xX4sewbqXC60S/W7WRH1U00icN3xQ1OvTqM24kl46ET/AAj
uf0BJM4m+jHRjd1ufGFLOd58KzaOt5ES/sr9og1jBtij/nz/8fH0z6eHodSqxeqBLlUXgYmS
pM8zYNRc5rE4jeIYRQLBm7UoyXEUvF/iVLj/gjrQmu4OgeA8uh5oUjuKMEw2MJyukl7+7hvE
TdyhGO4Ej4NtVMxZG+xkUNYaFLqZwxwgJ1RbDkoe3RHqHgdpbCFalEzU+C3s4IAF8RSOxEON
tfPE/NQERjUPr5og/NCjABSw4xxFyGQ1RlwBRbGsJNTJHUrQ/QE8J3y5+5FAZr7xTsiRRTUI
N9FkI1zt6SvAzEZJPId0CMBcjSKMnYq2mxnx2NBPZjI+2VYJGT4KDgdLz0XNuwddmpvSkkFS
eEpzjsUuj3Pw8VAFJN9zsSPNBDNjA4f2oihFflBHqfc+zsRaMYtcDKPVIt+CR5cxJ0Lh7tTI
9W96GugYPYx0CQIrKB7GsHKuMO14VTqSW5WY7EleZEM/T0ybesRoiSluw8GxWmRMxQ7QCrL4
qLvGT6QQ3Xrvc5BR4AsaUMM8J4IVq83l6BsGXHw+fnwizHd5U1NZqIxkUxVlkxW5DEKk9OLk
oPkA4BoknEWprGKxiZjamnA+/PH4eVHdf3t6A3Poz7eHt2fPkpNRwg0naEBE+K5qufhUUbJi
0txwzHIIHuarvSfTH2UlUk/RzpMtSEVz73ZITZHxpQWzMnwIbUXYrSIFr9rmyKpcs2SYfrbH
BgNg3QmTZ8OEmNvG0bA3xuiwM9wHlCAgofNx+9AWbO8zmIpC1KPwKmZY0KUe4YgTuYzxbuKC
EmNJ42q6e0DFwYJL1ZUX79SB9sZeP4L1y08vT68fn++Pz83vn04m0x41E2gc8R6eitg3ne8A
aDpDpHXVWTwFr0dEiyZGw1iHNE8Gk7czmcFMwH0n8OdR6lKM9CU30iU89nc3OL9Q5uV+wAht
CEM0Jom8TaLcNZRVep7gp7Sc4IGoKxt7MewuTnCsBiu78zA1ydbdS33pBAz+IGYXpR0SLW3u
6Fr8+K+nBzdkgocsfT0S/KYa9ozHwx9tmk/lFQo4hdZY8nyrtv7bUAdQkK9BMfO5h7YIifrs
oTSCV9hTq6muvNh4bQmWUqWHofFvCDQgOj+EjAcmcgdRZiLsThMT14WtQOgXDTA64t+BJKz+
ElIZWwEGZP5GBd0aiyDIbYBX4ttetkcoAPtduMraKFXhh2SBveaaPVQFoyi11B4HjQc+u+ct
SO1MEwIGZQodJA4xVqaQ1M5fOctr6IoPb6+f72/PkLTw2zCcySEbPsPHjx9Pv70eIfIDNGCe
rc6BQIL9cjTZF0zuZXKBNM0Po2G0fNPYp+y37r89QlxyDX10hgJJUc8d6t7XJnF7pxZ8Xvo5
E6/f/nx7eg2HC6EojHs5OhavYt/Ux19Pnw+/T6yCWcBjy+3XAs8hNd7aeR9yVnn7MuOShb+N
i1vDpcsc6WqWhrZ9//nh/v3bxa/vT99+c99V7yBhwrma+dkUi7CkkrzYhYW1DEtELkCuFAPM
Qu1k5N0ZZby6XmxwLf16Mdtg8YPsbID/to2h4bZXsVLGvhRzjijy9NDeZBeFE6iqrbm3zpc7
kZbo/ah52zorE2dyuxItXew9R4ia5TFLPffysrLN9zGFTP74bl36oCzPb3q7v5/XJTm2QW7O
LYFzBevb8fLW99g2IMFwKAgm5ll4Rup4imH4mLanHa51PgTvOs+9pZ8pYPniSuKsRwsWh8q3
S7XlJpisrasFAPBuR4dk0JhxMmqRTUQR5HNOwhQTL5dIpg7gwz6FBEiRTGUtXelJSyKezb79
3ciFly2EWbf3GNLWJj5TAsBE5NwyzXjMIGLT9lHFvhnuzAu35hb3RKDQXKMf1cAE4R8mv9vm
lItpjWuZigSZ3zDirQ0XEQpVbRF2vl17bmPM3UoMRsg4EzNHzD4j+/F5W5dPT/vQeoHmey0E
RMRLZIeE5jTkcVVkWJNweSoV69mS5XJxwlX7HfI+E5ik3oHToigH4zClxvPH+Ij/sh42a5zC
C8Ab/XpcRbQLrJmeCbi6mYCf8AiFHbxiONtpJhd0Ojw+ELFc4WqC8y2IdMP9JyaGUCl/iayy
6ZAJjDHq5wXgqOSmAU0o8XWaJLdR69P39PHgnd9ucPHV4uqkOfYC57w0Zc3ugNHGr8wogxA/
OM+2Y3lNpHesZZIZwo23ytVmuVCXszkK1kQsLRSkNYMonJITlrE7TR1TXL3IylhttNjPKPcB
lS42s9lyBLjAA/dDCMyiUk2tka6IBA8dTrSbX1+Po5iObmb4wd5lfLW8wh95YjVfrXGQok6C
y5vSsexOkAbz1Kg4CTnMrplDyXKJw/giJMHWq1bo+yHzuPFurQ1EH8EF/ijZwodh3UKMjJ1W
62tcI9qibJb8hD88tggyrpv1ZlcKhS9IiybEfDa7RM9lMFBnYqLr+WxwItoAfP++/7iQoG37
/mKyvbbBTz/f718/oJ2L56fXx4tv+oQ//Qn/9aPz/b9rD7dhKtUSWA38MIHJkslMVBK25W2e
F1z87KENQefOCPVpCmMXExZSB8sEHzI+jBENARGfLzK9Zf/n4v3x+f5Tzw6yFbtEg5AcFCcb
isuEBB70RTqAdQZmIz1wmCWRH2/xGRB8h1M68ATXK8Qhxhgh/xuUChLiTGPsFa553LGI5axh
Eh2ed/d4WjrpW1nLeLj9IXRHW9lZlX7GlQTvc18ik7GJ3I2JGFDBEZygup9BE0oMs5r0fJ/p
Qftpm6bkb/q0/PH3i8/7Px//fsHjn/WZduLr9hyJH0F6V9lSOoyHBlZDFkxV4M4Ue/HFura2
6Bc4pnk3I+NGhA2YcANJi+2W0qQbBBNS1og7+BLVHT35CJZHQTB5WI7BNxM+XCcfQ5q/J5AU
ZBaYRkllpAjvNItTlVgz7R4OxziYvqPJ50Y3H+/odoPt3cs1roqkzU0Nzqg2JKUPasWQ8zeh
8GtZoIGGDbA0InPrMnNWc/319Pm7xn/9WSXJxev9p5YEL566kLHO0pqP7lzFuinKighCOKVG
02ys22dBp6BSn2wVny9Ak5qHmK8W+E1rGzJaGWiOxlEyXWBGlwZm0ojZHazH+hBOwsP3j8+3
l4sYggI4E+CokvT+jYmQAebrt2rwBux17kR1LcosVbKd0yV4Dw2ak1AIVlUaR3T/Q/ERv7rt
iuEP/gZGeGva/aOpnlT4fdTN/RiQOIoGeMDtuwxwn46s90GOLMdBaq5WDa+YcnKCHSUCbLwU
M4OwID9tpC2rakI4tuBaL9kovFyvrvFzYBB4Fq8ux+B3dCgvgyAShu9SA92V9XKF88U9fKx7
AD8tcJuDMwIuaxm4rNeL+RR8pANfTPLOkQ5krNKkG9+sBiEXNR9HkPkXRtjbWQS1vr6cX1Hb
pkjj8ODa8rKWFIUxCJoGLWaLsekHKqWbpxHArkTdjWyPKkZfKc1BbbO5eWWQqrICL8+RNjVt
WK1x2bccIw8G2Kr1RxAqmaSEpWs5RiYM8CjzqMiHL1qlLH5+e33+T0gqBvTBHMgZyU7bPQfr
PbVfRiYIdsbIopv3mZEl/QpJGgcj7PS//7x/fv71/uGPi39cPD/+dv/wH/S5qWM7SKVZq9im
u0GmUXWDyXZ8sFuWxUaRbuMne2YkcQPB0Ah6pqEgHeDT2gJxnVMHHK16eYWTySw+hxihEMy7
PhFGcBDOKJiZOOviqw9nLfYUx3E28goeQ9hFiDxaEia1GmGQVtgFqpyVakcpErPGxCvWbMNB
QhweStqAr5DxmzTQxLkbxRAVvvWh5TRIb3kGgS1xETyZGJ+1Pl8Q1SisPd7mV1EVQYvjO8Es
UMrwjQDAPaGWizM6QhQsrHl7oaBJyih7XA3V1JyKcAmLTpvBtvNnFgwn53E2EUKz93AmVMXJ
XgU5MqxKRwhxMV9uLi/+ljy9Px71n//FdDqJrATYJeJtt8AmL1TQu05vM/YZx8JMj7GAtLrm
mdCNxsY45LLJCr3Foto5vTYkAKi2HWQpPYQu1cSZTuhLizxUoMbHVUe3JuXGiK8DYVUmR1y3
akHomPWISSN0WZKgw4mCwB1DPNBuCX9F3QcliBgX+n+qcOME6jLftthYAOuSLmlM6j+z1nu8
n7q8OZhVM+lICGu8A/XElKcZlS2vCj0irfnN08fn+9Ov30GVqKy9B3PiH3sXemdG84NVesMA
SPSYh8HXrK6qWXL/ybK1GFnyq2tck39GWOPmGYeiqgmerr4rd4U/P8MesZiVtZ8Kuy0ymauT
gAwgDWyFf+BEPV/OqZBcXaWUcXNheYyySiUvUBsIr2otiiC1qKBeVlotfK2mBpGxr36jImf9
Uk7V9YRb/XM9n8/JZ9ESNiYlFNnVzjNOHWzIJ3baovYUbpc09cpr6SfEvA3zJiH1vGggTjlM
ROGpKlmdUn7FKc4sAgA/3wCh1m9qI+01d+KP05Q0ebReo/nincpRVbA4OJHRJX4QI54BUcWZ
hSg/4ZPBg43ZnUy5LXInTL/93eyOQeJMaJdQ9Zk8xeGzoVtxYtfqsfMgmkuUY3bDTh2oEOSa
1LcGZh/qVTrIvTfF9W6fg82TnpuG8KxyUQ7TKNGWoIAOTkXg2P5BaCYUnMrbfWjKNgAGfUQm
YSdSJT2mty1qavy09GBcxdOD8d16Bk/2TCpe+IQP3bJuFci1lHuHjp8aLXwQnPQkBY1FQHbq
fSoDy7XFfEZo8wwy/mVxecLftltlRrO+xEXXONvMZ/iR1l+7WqwIJYWl3ydZ8QKzKnLHHAZ4
itMFbgSl9B4mTM2d9iD5o/BUZZFYTM68+Mp3XrSnMyjZf5G12iPcSpIdvszXE4TZZkj0rNrQ
HLROld2eHYVvzi0nN6NcL65OJ3QE5mnasdicz2b+r/CnCH9riuw/Csotzt3rcoJMyRNVJbzG
fQjV3OWMqKQBVB1CRk+y+QzfcnKLX8dfsoklbHXG3g1xyCjyqW7QACnq5m7hsYX691BBg3xc
f5nlhXcIsvR02RBuiRp2RcvQGqqOo+AE88pw+yN55YdEvVHr9SVOVgB0NdfN4vr0G/VVVx0Y
I+AfLdpDfb6nWH59uZw4saamEplED1N2V3lHE37PZ0TInkSwNJ/4XM7q9mNncc4W4aKeWi/X
iwmGDuKBVEGSTLUgdt/hhO4+v7mqyIssiHlHRHvra/ljkppfh1D5uRaUIHduE3KRwxbWy80M
obvsRPGfuVjc0Ip1W7sMBWKk5wfNzDiP6ybtTizqHbojihtvoBoNjevu1GiDhYt8K3PfxHzH
TFpetP93AozaEzkhu5QiV5BAzCPXxeT9cZsWW9934TZlyxNhNXybhhy9q+A5ibyhwLdozhi3
I3swSMo8TvmWg+FcEHq0h1bZ5IpWse+WsZpdThyhSoDM7HEm6/lyw7FND4C6cAKvtwVN6bO6
XTE4ozT1USoqmleHuJ4TziiAYLKZVSebGRjpVbWerzbojq300VNM4TCITVChIMUyzYN5RkUK
ruhQxEdqCjdDpwsoUlYl+o9HWhShU9TlkKaaT4nvSmpC79sTbRaz5Xyqlm+DJNVmRtjfSjXf
TOwflSmO0C6V8c2cb/C7T5SSz6lv6vY2c+Ih2wAvp24FVXBNCMQJV8mp2lx83hTUmdFBTy7v
PveJWFneZYIR9h16CxHBqjjEcsiJe09i/tluJ+7yolR++on4yJtTuiVjFnd1a7Hb1x4VtyUT
tfwa4ESpOSWIXawIU686UGcN2zz4yir9s6kgTTt+c0sw+kr1stbYM6nT7FF+zf2EFbakOV5R
G65HWE6pj6zNt9t4awXOTpKm2i1Omuq5nlwgK0ki5wkAixJ1F4tjb31ikRCXmbpJcLlZc4/E
+7WJmxKFr+QdSwiaEPtA475Jyy7Zzpl3NGUcHlYlNU0WR9YRowIZAII+/xDAQRLPKoDS6oCQ
/uodm8rI45NFDFYS2y24re2GCdH1ly6gvLVMRJ7/WQyPuTv8UQmUtySsVdnSCKf1+nqzikgE
PaHXmm8Zg6+vx+CtNpRE4JKzmO5gqxYi4THTO2Ok+bgEDn8xCq/5ej4fb+FyPQ5fXU/ANyQ8
MZmwKajkZbpXNNgYyp+O7I5ESZWE15PZfM5pnFNNwlrpexKu5TYaxwito2AjXv4ARk2vVC9r
khi5SfHF6J7kJ/2FL0yzBvSWvsU+0bGJltEFqMciWx6RbBL4xNHxA09CA2sxnxFmjfBSpemr
5PTHW1NNEt7eLVtNpxYV/I0LhCXeARXoUdvivYraCE7dO31fA0Cc1TgFB+ANO1LvYAAuITMK
4RkC8KpO13PCX+wMJ/S0Gg56jzVx+wFc/6FEagDvFK45AJgsdzh/eLQ8uPPr/NSaBZKVLlkv
5hh/7tWrvVdS/XPEXElDr3ClnoGQWgIN3ZD1NjeQLIfgXat0Mycc9nTV1Q3OErLq6mqBv20c
ZbpaEDZlukVKaXnk+XJ1wrRO/mRmvk7OFBDful7xq9nAvwdpFX9JxIeny0cc86KKZ4piigCY
4Eyj25vBmw6TFeHyKSE8EcZGuu11ivTzXVYeFxT/DLAFBTuml5sV/iSjYcvNJQk7ygQTS8Ju
VloG9mSyAjzwcC5XVBlhgFVeXbaJSXBwJVWGRq12u4PowjW7KaqacLfpgMYgEAJL4DcnTARh
8JEd0zWWTNDrlYglC8hQpjf6bI6nFgPYv2djMEI/DrDFGIxuc7ak682vMKWtO8KKhU9rVb04
oRKLV22o+DLXC2GPbWHX/2XsSprjxpH1X1HM4UX3YV4XWQtZBx+4VRVcBEkTqE0XhtpStxVj
Ww5Zjpj+95MJriCRoA5eCvkR+5JI5GJiLGSqHL6ISVZbl3iJaaiE2UhDJbz+IdVzl4GVSrw0
1Y3wE2u5FiocXpZysb3mQUYqXFUo4sX35wZLaHdc+FltjTpHw4+E7k3w4rizk0IXdVxSx12b
n+uRRDAaQKJ4kEs6fl8y1OH+FgcTrus+htqbq4IkxylNj1PDbNV9M8n0d/xPMsPzZeLVbSx+
KIMbEdqyAcBmvibq1ztlvAji4t6ynCWGClO1JtjhUlbjg6E2nf+ugjhfntFB4W9TD6K/3729
APrp7u1LizJc5i9UuRxfYsyne/NsXhEnS63CSrVb6ZUafAP2B6GIjYK0s8Z5wM+qGPlUaWy6
f/x6I82GW1eMw58jp4112m6HkYt1r6U1BVVAa0cvWnIdVvo4Cuhb03ggS3Y9joIoqeqefj69
fn34/tgbGv7UTc/V96gmTPnnrSEf85s5lFhNTs4j3zRt8ojHHnQh5ZCx/vKY3MK89hTW5dmm
Ac9frNf6BkeBtoYq9xB5DM0lfJLOgrg0aRiCaR9gXGczg4kbp83lxjezbh0yPR4JRzAdREbB
ZuWYrUWGIH/lzPRfyv0lcbvQMMsZDGwM3nJtfovqQcRW2AOKErZkOyZLLpJgNzsMOtjGA2Om
uOa9agYk80twIUwqetQpmx817lYyP0UHyliiQ17lKLPpQh4IjvFnVQjXkFQF6dC7dp8e3mJT
Mr7xwr9FYSKKWxYUKHaxEivB9ZDxHaQxJDWWy3ZJmOdHE03FPVJeZTRWvKMnKZ7PhA3JoIIJ
Xs4YIUTvS1MDZPT23YN2eYQ88DA8w6AgPpbiK5JISka8eNWAoCjSRBVvAYURX28JFfgaEd2C
wmy/VNOxu0hnLDXkLIDnDGyZ9KNtz6nHmUUD3bGDEWC1K0WbVgVZALPSWEaPWZqXXg+IzcKc
DhDlIWH11UH2O0LvsEeUhH6lhqiIWA496MTSNOGEIVwHU7d4KsJFhxIsTi5s/LAzxUkeE6ps
XXlKy8WOuQRlyQifBR2IB3ulgDZTcTSZy0uzTqCOCgNCGayHSZbtZ7vgwmL4YQfdH5LscJqZ
KoEAnt58jnUY5LVOc1PhWhCRjDtEcS1nxm0nWLChF5+KnadtrXWKultA50ZEDYYoVsjEvDYG
qL2MiKDaPeYQZBfqHXMAO4bwYw5kk5k3sHpPhlkb5dwkpWp6CPdkEZVJMpBXDxLRJrVISjmK
Uj9EBLHne2buSIOhiLXiRMScITI8uc6C8GowwRE6QkMcvtTkWVKxKPPXCzOHquFvUoqC1vqc
YlfvA8d4YhBC2CHuEPBCHCjbyyEySQhTdw20D1J03E8f0hr6Gi0XhOh2iGvuuPONgU06IR67
BjCWMhhNQrl/gBMbcfM25v1niNufsvt39N9R7lzH9eaB1J6ug+bHVq3H6uIvCMHIFEtxIUMk
XFEcx39HlnBNWb9ndDkXjmNmxTRYku4CgVHl34Gl+T9tImTJlVDW1XI7eo75zU/bvZJMOYSe
H7oYQ2OvrwvzxXMIVf8v0aXu+6AXNj9zCnaNmPkI1yZELJX2xnumhHqWzXmRC0YERJvUlEnK
mYwGFZHaS+bHCJDuxN0jiZtfhIKlCXViD2HScQnbSh3Gd0QcKg129Tfrd7ShEJv1gvA2MwTe
J3LjEmKJIa7MD7w54ubB7JNYG189m1s10/Ux61Q4uB3CnKoGhDygHt4b6djyuoA6Skpo0ZQu
eHVmcAehPH41YsNIFEcbgPPAX1nrA7fDjHjHbQAyhe0qlBnh3LYBMeXcXCbmSdTJ94BBzxqk
DXiVHwmv+o249JKUPLDmcUvUe5YFEXFnYSvlpP6xdv/OpwzQ2/lyTZfWCcO4gHzMPEFbzYDk
Lpo84gSGMUZFlBhuP7YJEZdnd7NZo84t3sNnkZ4VWXI25eOUuPfw8PqoHO2zP/K7sR9H3Al7
1tngb32EUD8r5i9W7jgR/h57Zq8JkfTdyCO0IWpIEaFwy7AD1OSUhbUUbfTZJK63Rm0s50cZ
j0sWLh8Fah1nU0ZkHif6KNkHPJkaNzceGUxj0vuMNbxw1I8GXx5eHz5joPLe33e7ncpbPx7n
wRNIVPu9QFldJlKlkSaGyBZgSoNZDMxvTzlcjOg+uQqZ8lTSk08Zu279qpC6dnetPaKSiUGH
y18dliOLR88QysxBknbj0S1Kg5gQMPP8GtS6ICkxbAqBYZslZfF3yyJyN2uJhPSgJcON20jP
8vucMB5jglBnrg5xSpjzVHvCg7sKFAEMCdEKFdBAGhXT01j5HT5hYIBgIKiOkzNPdI9Uyfk4
CkxQO718en1++Dp4q9QHPQnK9Bblmb67AMF31wtjIpRUlGi6ncTKeZo2wYe4OhqEtrpb0g7n
hEnvZAiazH2tEpqz4WGpmifVASG5BiVVH6M+0xCQldUJ5qjAWMMGcgm3BsaTBrMyFy+TLE5i
c+V4kGHszVISfamikWD0AGpI0H8bTS8F0VvxZaTPrhPJbbrLWLq+0a57CEoLQTSLsy6STvby
/d+YBpmoCaucRBs8TTWfY0+no7uKjmi8Ok0TBxNrnOtHYgE3ZBFFGaGK2yGcDRMeZT5Rg5qD
8qMM9tiMd0BnYYTosyGXBX0kA3knUhijuTIUimXoD3IKbZ0w65vNJA90pEf5dWcFZyj2jFNz
lMMLsB9ZrCtMdokVLj9gDThhL9UD1Wk0gwm46c2xp5+HJq/ZuQy0SuHzFRt5c2iCeClnkp8N
bMX0yCL4TlQTw4jKK4ov7gGEowq4BLoUX160sWWNo0vWf3CcX6hQiMA70nGkDoUueMffeIMj
1DCDbB8dEnyowFE3H7kR/CmI4zhJI4w8aKgITNAxU31laXqjAg5MWcRhi+uZWZ4wxmdBqK4N
QWGeyzq612TuoBBnqn4zDFqFHkQxBQ7lMtmz4ZGOqeo9HZZvriej0CfQ2qtS4bghFWSAzk9G
8QFQ6tBlimPRCxo9hmNSkO7zsA9Zik3sGHUMh9W3t1k+d5AJpH95+fk2E8Kvzp456yWhHtzS
N0RsmpZO+FNWdB57hKPShoxevWz0ihemSxhS4crnjEeFCUIiWhM5cWEHIvrIJS7rQM3UeyYh
vkC6MvKv9sQUVqPLxHq9pfsa6JslcZGvyVvCQQ6SKS/DDW30SqLmgfKnS0wMEXFD8BJcYP/8
fHv6dvcnhmKrP7377RtMtq//3D19+/Pp8fHp8e6PBvVv4Fc+f3n+8fs4d7gLsX2moqRYnfOP
sYSVBcISnpzp4clpBR819lEwXxHB+CTQ5YBcWwlN+iz5L+x83+HAB8wf9dp8eHz48UavyZjl
qHVxIkTSqr51eDngNSihOaLKPMzl7nR/X+WCCPGMMBnkooK7Eg1gwHiPVDJUpfO3L9CMvmGD
STFuFE+vUTH2DN5KF6hNbdT/o6C5OjGlDtV6DmGMPToGWAfB7XYGQsbVGZw+g++WBNdJmAKL
grhsH4QxDoAeDx5+To2Y6oOhEHefvz7XQZkMkXHhQ+Cp0JHKkWYYBih16Z4D7QtDsFKsyd/o
+/vh7eV1eoDJAur58vk/05McSJWz9v1KMSbtidjoJNdWx3eo1polEh3CK9N5bIuQAS/QV+1A
Ofnh8fEZVZZhXarSfv6/1htaSRiKK+LGMZ/WdpAJyyJZmtlo7BgqsPrFfBzWobSDM6EfrqiU
744uDHeRalaZw3TSFZQGmvhSLNB0GREEFymkhYwsFBqFo17ugniCDgMJ1zuonnA9wmhEg7wj
F/Mx0UJESNwqmspS9Pb78JPrUY5uWgy+LnvU5WMEIlxgNrUBkL8lgge2mLTwPeJFvoVApVfA
yNkbzsPlypxNW+V9cNonVSojd7sy2V9Opo9KaLfnA5sqq2d1UCDDqdKFLQT2+LQ/lWbGa4Iy
d1UHi70V8UqvQcyK0j2EOwtCNVnHmLlBHWNmn3WM+aFKwyxn67N1qetwh5FkoAgdM1cWYDaU
vGWAmYtYqTAzfSiWc7mIyNvMjNbRR7+wdoizmMXsAu6sD5YdsY/FWaSJ4JTEqq14SPr36SBF
QgRY6CDyWtgbH4vNTARSjAA604MxukgQnJId1iC2PsKdz3wudn3oOf5ibWZnhxjf3RER5jrQ
eumtichQLQauk9zefzspZHKSARV2oMXt07Xjk7LTDuMu5jDeZkHEneoR9rV1YIeNQ1w1+6FY
z8wtZKdnZzyTvvnIaAEfI+KEawGwWErHnZmAKg4L4Taxw6hjyb5b1BiP1AfScNuZOskIzlT7
qkCM68zWaeW69k5SmPm2rVzC8kjH2OuMfMlmQdibayDHfiwpzMZ+lCJma59BGG13bvdRmOVs
dTabmcmoMDOhlhVmvs5Lx5uZQDwqlnNshIwoXapuSDkhv+sB3ixgZmZxz95cANiHOeUEbz8A
zFWSMJUbAOYqObegOeFpbwCYq+R27S7nxgswq5ltQ2Hs7S0i31vOLHfErIirQYvJZFRhoALO
6ACTLTSSsJ7tXYAYb2Y+AQbueva+RsyWUIXsMIVy3jXTBTt/vSXu3JyMvtx8LQ5yZoECYvnf
OUQ0k4dFctzxVzxxvKV9KBMeOSvisjjAuM48ZnOhDOW7SnMRrTz+PtDMwqph4XJmVwVmbb2Z
mc4Ks7TfqYSUwps5uYGV3cycgUEcOa4f+7O3ReH57gwGetyfmWksC1xCY3EImVkPAFm6s4cO
odbYAQ48mjklJS+oWAAaxD4TFcTedQBZzUxVhMw1mRdrQpW7haD/zKg4zbLEgNv4GzsLf5aO
O3OJPkvfnbnTX/yl5y3ttyDE+I79ioOY7Xsw7jsw9k5UEPuyAkjq+WtC01xHbago4z0KNoyD
/TZZg5IZ1BUD2QwR1je2bmHji/Q75AHyuHB0yUuDUEdzoPlDapIw0pRkYqyeOwIlPCmh5qj5
iLXId7s6KGDFxYfFGNzK70bJGHQPbeTQy+fQgrylx4mKOFntcwxJnxTVhYnEVOMhcBewstbp
MvaM6RNUfa3o6ImmTxqxeprmEalN335H18oAtLYTAeiCtRr7YTXg+kaZcsIAJcE4BFXjUuPt
6Ss+drx+03Qbuyxq15mqA6I00DetBnL1N1VxRDk+L7qZ9m2chcijKpaiBZjXAECXq8V1pkII
MeXTvbhY85q0LTpYMzN3UefWJ5DRIc41D+VtGv2W2CGy/BLc8pPpPabD1KpcSqcFQ6PBEhro
PnYodFChXrIgt2GE+w4gbmInJt1+eXj7/OXx5e+74vXp7fnb08uvt7v9CzTx+4vqdx008b3S
70H5TnZlmdscBxJNqYzExnumNYN7xkpU7reCmjhZdlB8sdPxcr68zlQniD6dMBYn1aQgPtde
JGhEyjgq1lgBnrNwSEASRlW09FckQMlBfbqSokBn3BVlRy0g/x2TReTa+yI5lbm1qSz0oBia
ygNh3lYvwQ52NvLDzXKxSERIA5INjiNFhXZbiL7nuDsrnSQeCnuHiQg9oJGfqyu3syTp2Zkc
ss3C0mDgPOnZprznws1n6Th0DghaeqFnabv8xPFIoMjIAVO0ltOyAXzPs9K3NjqGOrmnGwfT
PSmusKTso5ex7WJJ91HGIm/h+GN6o3vH/v3nw8+nx35TjR5eH/U45hEropm9VI7UnGqnXSKc
zRww5szbPkA/B7kQLBwpdhu9rYQRD4xwJEzqx399fXv+69f3z6hVYfHkznexepIjLjcFZ1Ht
posQ+OP3yq3NgrjHKkC8XXsOv5iVM1UVroW7oM1+EcJRx5QIa4+1jAOcKeTnSF671hIUxHzX
acnEQ05HNl+mGjJlaqrIaUZnzSMHY/WQlT9IVEETLKKLrxmwT6egPCrdqbEqUAdOi6hihM4m
0ih9zr4QNJ1Q96j34CgVQoR9DLL7KuI5FVgNMUfghMdqbAOy7xfcJ97Nejo95oq+Ibw21LPy
6qzWhLi9AXjehrhldwCf8KLcAPwtYTze0QnNhY5OSOp6ulloo+hyQwn6FDnJdq4TEm/jiDiz
IimVLjcJKRNJOMoFYhHt1rC06B4q42jpEsFzFF2uF7bPo7VcE2JypIskskTIQwBbeZvrDIaT
nkKRerz5MI/oLQCZATPjGl7Xi8VM2TcREQbsSJasCvhyub6in4KA8CSFwLRYbi0TFfWaCJeP
TTEpt4xykHLCZzS6HnAWhDqU1S+BKlcBfLOIuQcQj01tzaFtltNFZeET6uAdYOvYDyAAwWZF
CBHlJV0tlpaRBgAGPrNPBfTg6y3tmJQv15blUjOd9Gq/+pZDNCjZfZ4F1m64cH9l2bOBvHTs
vAJC1os5yHY7kpo3Yggr79TnUiZ7lPUQQqrStmegd3KlwjmyUFac2f714ceX588/pxq3wX5g
aQ0/0B5js9KTJl7sMVEw88JC2shQob1yqSN6Lwdm4ud9AMMXThLwAEFDC/HB2QzuHkAUF7j2
YUz13FBCXPKBbXDJ0ccOq2Ld5TWmx9DO09Vq36NgSmmRUGjqASJJd6gGa65RdeSisQfSK4fp
u9BI2oVoItgJ/kxE9HSsZJofnMVCrxXaTlUwH+IKneGjWQXdgKKKdIOHzgrk6fvnl8en17uX
17svT19/wP/QzkPj9DGH2k7KWxBOgFqIYKmzMb8otRAVlwZ42q1v3vMmuDHvO9DSpypfCytL
rtkctnLHQbJeagn3BOKwQzIsmZFRUCsTvfst+PX4/HIXvRSvL5Dvz5fX3+HH97+e//71+oB7
gVaBd32gl53lp3MSmCLdqe6CC8J47mMauoE9GLeLMVDZRKFDuzD58K9/TchRUMhTmVRJWeaj
OVzTc658vJIAFH0XsjRWcn+2Vg0/raX8aGYnTqJIsviDu15MkIckKGWYBLL2kXkOUoRNcVBV
4P1lJ4jdrKYYUTD0X/PpBAv+w3pKlnnRfe8YylDmCimDTo1PZb26Hb3tZyraoSLCrkET+WW/
oxfPngeUwh+ST7HZkkFNcWEWlqhNdh/sqbglSI9YWZ5E9SkhODXEfLrSZYd5dDA9byGtQN9F
rZ1I/Pzzx9eHf+6Kh+9PXycblYLCUhZFCJPxBgfDwBmUcSMZ5TcsNyxZvE/0+VwX0FG0KrHW
D/td+Pr8+PfTpHa1V1t2hf9cp5GXRhWa5qZnlsgsODP6XNtzxz0tCfGLmkhhfj0z2PRIxDQQ
z6Qn8hIthNQUr1DYfhRtr+xeH7493f3566+/YGOOx05l4EyMOLpHH/QvpGW5ZLvbMGm4abQn
nTr3DNXCTOHPjqVpmURSyxkJUV7c4PNgQmDonTZMmf4JXH/MeSHBmBcShnn1NQ9xk03YPqtg
/2LGeJ9tifnw6RUS42QHczmJq6GzJEjneZw0jIX+gWSpqoCs3eVMR+NLa6RnEOxhj6i1bJwV
QC24+baJH95g1bmUtT4AKN8NSALmAfqFeCPBIRKSJALTSDjGByKcncIs/8MvR7SekuzYaAQz
yh4CGbw9WYTdLz2OuhM7ZExtLFfZJFPUkp1JGvMISxCgpYm/WBPqnDi7AlnmZJUszBKOpbw5
hCJUTSV7gogaApTgTOmFI5W4p2DnJTksSEbOu+ON8DsLtGVMHLQ4cfI8znNyPpylvyHcE+IK
hfMjoed6UJqdJ6nVR2YaAW9LxQTGPuIiOtHtoRgDnEUhnCZXuaL4CmwuK+WJ8KGLkymByZTl
nKwcD6G76BUgGC9SS8smHk+bs9R4BqndLnz4/J+vz39/ebv7v7s0iqdRX7oCgFpFaSBEE7zX
sFuEQXRUJtwasN+TezrqFpVMcznZE5WxkLGRPUbFvL+khC1QjxMBXHvN+8KgwLjwfUK1eIQi
bK96VMqXlGL+AHReuwsvNevV9bAw3jiE4HpQrTK6RpmZqZsZ3c6MMeasPSDh/vXz5SsciQ37
VR+NU1kKyieiiac64JOAAVIaFsBr5mmK9Zyjw7S+T+D+oQk/TDg84ZmQaIpda5dU4a3VfjJx
ZyfOb9NKasnwb3rimfjgL8z0Mr8IuEB1B2IZ8CQ87fCpf5Kzgdi66SpK4IdKzVrZhC5zOdF+
sn7QMUUyOCbTgFCtyxr7oHae5/K9FhASf6Mp0ukKTFZGvHf1mAn3MYVE6Um67koV0tRtIq7r
nnfzUzZ0nTb6UTsC0pOK6H+MXVtz2ziy/iuqPM1U7ZyxJEuWz6l5gEhIRMSbCVKXvLA8jpJx
rW2lbKd28+9PN0BSAIim/OJE6A8g7mg0+pLYCdEuNL0rYpLkd72NCdM/WzO1TWndg9qhn5Ca
SYkyK097m5r4KhgVbaJVFvp9xzdYOLeywuuXDiuuBRh1FoewRQqn5UUW1CtpJ27x2UgqiUaw
ku5Hz1SRloSvRawbYUevikjgruy2MUxYLdcwT3v9XqG+U+EZDlxx/eSms9oV7nylH2dY97sk
tJUxD36HpMKdNKPzwsmeCCKQCtKTMmf+S6hujvZgN57PKD1yLCOvHNVuq2XCbSwLx4sFoSGv
GiSnlM2jJpMexTRdzK4pqwGkSxFRXj+QXApBOc7ryOryRtiHIqhaLCj77IZMGVI2ZMoqFMk7
Ql0faV/K6ZSyYQD6Et2sk9SAXY0JEbEiJ4J6tlcby/6wdoU0Zm55PSG8QjTkOWUSgeRyv6I/
HbIiZgM9ulY2GSQ5ZofB7Lp4wtSiLZ4m6+JpOpxRhBUCEombI9J4EGWUWUGK6hahINzonMmU
K9sOEH6+WAI9bG0RNALOovHVhp4XDX2ggFSOSdcCHX3gA3J8O6VXDJIp21ggrxIqOIU6NsOB
XR2J9BYC5/yYCgTR0QcmlXrIW+zpfmkBdBU2WbEeTwbqEGcxPTnj/fx6fk0Z4+PMZlzCtZKw
Q1FTf0/6+QRymkwIl3b62NlHhC0HUAuRl4IIOazoCScCLTTUW/rLikqodOgzldAXUMQsFcFW
LAf6bUj4oE98tiCty870C0eYkghkkt4dtnvSGB6oh2TlU5+Mwj/U25nh21mtBOawmyHrHrSd
5JYzdpYSqwuuEwbWG2vDP1Bxe1pYjsqbdd+9ZQ8YQB8GbXDtDyAH4uLZQCnWGDnBL5GxoZTH
QRuFd+UPwAZkxw4wS/mekvc6UObaTA0AB5adAVSaFB/qxukVZZffABuRDsG9Rq1fLZRg8o6l
vzrfA7sp7WZznDp3qQnG7EpLz4zXD8Hu13F2xVmgpQ1XJlkra6SRe8fQ6aEK9YWJNrWSS3f9
qHhwFaVv2SIqNh446xRC7if0RUUF7mGC3V0oYzyZ0PMeIfMVFUKsRURiRVmfKTY4CMlnjraI
PCOMKM/0aBhRwjiTsQha0JbBDcvrlVzfxgPBehfgfa7iHNBnX6gGMyAMJdUxQ034/WJuOQaD
baOOc96fHno/F2FfxBYJKygD/Dw7dSsLnq7LyPNxgBVsZ2asIu8rIZZ3lsPqwAE/jg/ozBsz
9KIHIJ5dN4FfrVqxIKjo2F0aUXjdBysaint7RWIiEfBK0anghopY4VonPrfk8UakvY7lqMuw
8o+0Aoj1EoParYhiUU+rMIQYOk3Ar4P7LdjQJBtoW5BVayKsDZITFsBG5t8ekJ4XWSgw+BD9
AXrbV2TovVLALi2XsOn7jHQVqgtobGWGybfO0kJI/66BEI66YHRPk5H0NJE7btYdsk9VTlG+
QJe4lV3zZCkItWpFXxH+c5EYZSSzovKW88WUHkWozfCS2RzoHqwC1J8gjBmAvgM+ipBlIXkr
+E4xyNSucChaVTwrn0CTRSKPKHtr+DOjwgojtdyJNPIqAOjuSaWAHa5fiTigzcsVnXgT0rQ0
21IzBLvUt7u16TVxg7cw8CP3WR53gNXKkbCLokqWMc9ZOKFWBaLWt9dX/t0HqbuI81g6hevN
AuaJCkc9sJ/E+Co5QD+sYiaJswaYdr3k7a0vEUGR4fuNk5yhTlp/IWJ8KDG8HtLS5zBYUwqx
dksEfsEbbUbtkMBvw3YdZ4XxpGAkevrRFyfSIpcsPqT7XjY4APDhjdyrMXx7gUuR3q3V05H/
Gqr7HwogruCKngUBI0w/gQwnEd1RkiWyMmNNqUTnSMPfQ/u5ctlIhnNSiJIzep8FKsxtYFO4
72VEIao0j6veUVRQrqdxi0NFOCYHTkEVoOpzdsCS6U1MkNsJbMCS8x4HV0awrdGNLSOMCqGf
VejtHzm8Oie0RBRisvrCCYUOfUAMnaI7IciQhUjfC1gMJBU/PNhpXw4h8IMDO472ElJHhH90
xeLFud9tuY+FbS1O/Wy2vueE9iTPzYQG0T4CNl9yCzwHtLC+0lVbhcoQAy7je2Updw4Cdl6q
RHU/BQBdrr+I7s5tftJobBYFcFsRZRnzRk/P7ozmKdJOhBnleEPG1JgrSZtfVqPuqXEuXCf0
BlnFS4yYrKPAHhH741YIMJUvTWG/Dnid8l3z3tupZCaPbw/Hp6f7l+Pp55sax9MPVDd/sydF
61elUTtwW0Y/2lqwrKTbDrR6F8EGHAtC57jpQqn6EL1Wo1G0X41dCx865XDt9uaviUnW43Ne
DhhUJTgHVfE4y1ADO7/ZX13hABBf3eN00eNjZVTp4XIdMB9L1CGcl81zuieChYHhxFdVeoEu
SGADqUuqqxSsLHF+SLi8OcudExVT6Svpl6uYtRqOv6EGf4+xe6Pc7VgLJGQ+Hs/3g5gVTCMo
aWCAsnNXeVJ97cyGmmGuXmIQZLwYjwdrXSzYfD67vRkEYQ2U0/3EYXG6Odz4eQme7t+8wTrU
qgio6ivdB1sfo1I+OuhhK5O+CVEKp+X/jlS7y6xABc2vxx+wx76NTi8jGUgx+vvn+2gZb1Q0
NBmOnu9/tR5r7p/eTqO/j6OX4/Hr8ev/jTCkg1lSdHz6Mfp2eh09n16Po8eXbyd7l2pwvQHQ
yX31DS9qSPJulcZKtmL+Y9nErYC9ojgMEydkSFlTmDD4P8HCmigZhgXhMNCFERaWJuxzleQy
yi5/lsWsCv18pAnLUk5fcEzghhXJ5eIa8UsNAxJcHg+eQicu5xNC+URLpfsul3CBief7748v
332B69SREgaUgwBFxnvgwMwSOW3mqc6eMCXYXFW62iNCQpteHdI7wqlDQ6RiDi9V+AYMNT24
Nd/YWqNdp6lIlsRupHWBvNlsxoTIzxNBuNFoqESEBbUThlVZ+e+SumpbyendIubrrCSFLwox
sJe3MzY43ASEow8NUy7O6G4PaXGGOg3LUNAyRNUJKFsOYfiAP6K7QgAftdwS5gyqrXRTMRJ0
wAdD2qumZDtWFGIA4VraOqyG5KU+Hldij6aJA3MVdYVX/uCuCDhAbnpe8C+qZ/f0tENWC/6d
zMZ7ejeKJLDL8J/pjHCDaoKu54Q3ZNX3GC4Thg8Y4sEuCiKWyQ0/eFdb/s+vt8cHuCvG97/8
4cvSLNfsaMAJC7N2I5i6L3rGJZH4jl3ImoVr4imqPOREnDbFR6ko4spS3ItJKM8iPEFfmj7R
D16Z8NJxZhfVFUQp9VvSyy617kkIbdCywPmX4vLHUOYYzdMW06peR9GtZxRUCYyIRKiIyuOC
/xA60/2Tt6VTnvIVPQ/Y7XAB6NnDP10b+mxGeOQ90/1roqMTm35DX1DuUZpB4tusTpjwX1zO
jSSchHSAOeHEQ49yOKHcnCt6415TXlM8n77pBgwdkgwA4mB2OyY0c7rxnv13YH4phvrvp8eX
f/82/l0t0mK9HDVPBz9f0JreI0ga/XaW4P3em6FLFZWerpQ3ZKADKIjTV9HRBpymoiu3xXKg
U7T/mEZM4+2b8vXx+3frzdcUPfSXfiuToCPsWTDggEmG2gLC2exnGC1UZ+h+GdpZy1yGUkF7
LRALSrEVhP2e3ZRGhuTp8ccf7xjq7230rrv9PPXS4/u3xycMqfmgvCGMfsPReb9//X5878+7
bhSA6ZCC0mizG8kSyhechcuZ80joh8HNhvIs4hSH2gt+xszuX1KHhgUBRxd+Iqa6X8DfVCxZ
6hOG8JAFcGXKUG4ng6IypIiK1BNsYqqD0dbg2kmtuSQUkbKWaIioTVUntutjXSf0RONtjyLz
m9nEv7QVWSwmtzfE1q0BU0pNpyFTO7Im8+l4ELAnFH917hnljUiTb8gLYJN9uOozKmZYUzpl
AqHHW3swGABshnp1fJX6N3xFztPQF+q5KGEOCWPmYQJGspgvxos+pcd1YWIUlJk8+GTmSAVK
mUWBXU6T2No+fXp9f7j6ZJdKTV6kpVtgGFvhMSSMHlu/DMZxgUA45Ffd4nDT0RLJk+yYV5np
dSV47Rpa2bUutr1LQPcWgzX1sJRtPrZczr5wQsJwBvHsi1+udIbsF4SXwxYSSrgk+LkaE0JE
ojAg8xs/i9VC0CX0LTHpW0whZ8H0QjlCxrDq/QvbxhD6yy1oDxC/vK1FqKA1BP9rYSgPoRZo
+hHQRzCET8Ouo6/HJRHmqYUs76YTPyvTIiTcTG6JAHgtZpVMqfB23YDC/CN0gw3IjDAcMksh
PGG2EJ5Mr4iQNF0pW4AMz5tiu1gQMoCuY0JYLoveosZA0/aiNjeNCaqGo8pBZ8+MeIyi/IHN
IJTTCXHJM6bFZPyR5t/akkXtUPnp/h3uHc90/TF7kGS97b5Z+RPCbaABmRGuOUzIbLjjcYtZ
zDC2pyC0DA3kDXFtPkMm14QcpxvocjO+KdnwhEmuF+WF1iNkOjx5ETIb3skTmcwnFxq1vLum
7rndJMhnAXEhbyE4TfrS49PLH3gFuTBVVyX8z1nwnSKxPL68wfXWO8tCdAO9bR7Du2LPqUS4
dQD0fRehoS9P15bvIkxrnGAoMU/KY2lT0bOx+W18eCoY9Ps6JJ49GjUHIBMscgPIWEkVodxF
RFhEnawT/w3pjPGwQOEOKx+0xgjnntPp3gLbPJSxJ9A5VeGGhnm9GpeywrItNSzgrkKPJ3NM
C54ejy/v1kxi8pAGdbmvyRqg3YyHq4L0ZbXqa0yo8lbCccW+U+l+4WVTEvFxIHXOJv2qPk5N
jLZV+0HxPnG33K4oAkzo1uDcMxhIFhk6cq7MtjfJ1Oi3uRKPOUDy+PB6ejt9ex9Fv34cX//Y
jr7/PL69WzpArbPVC9DzB9cFP5Dx/0oG69jH+6uQOY0OQO3ZOliAQS9EwWO4lxNXdl5EoX+c
UY2/jllOaSuHQbgknBo3AZiXIhukZwvqeVIBimVJ+LrUVL8waFV9FiUswYGatxAVSIqImQIH
bFYXq42I/bebdR7W2kQFTmNCXS5XIhF/fgztMTQyiRRDTchZypSa+BAI7bBgrx9AKP3QATo+
suYsHIKgyHWDGNItfhcKOmSuYqB1SMAijbOdZ55zzvO2odb8xhl6YX7not4RuqaoBVqyYrBx
mYzEktXLcmgutKiIap+qRpDk/s1Wt14ZQmwpEaHGbKkV0Zyyg92bJwNum9F/VlESJmla03hw
nqgvZGxTFtQ7RlvKHXEVUi+/9TohnsD1FwriPbF5vUC1YEhJeTAEw44QxFjIqkCrOhSGTOtl
VZaEKmxTUpWKkiwriffDmma6kLIqlplyNO3n/fHipHTwAQ/zNS0FI/R/dXlKhCrzSW1b3htq
q/LH8fgVWNGn48P7qDw+/PNyejp9/3UWG9EKrUphHM9+dJyk9LP6RoiWfuvHv2UMwkGWPLmZ
97aUdvNLtKDY3AvQ7zmaNdTEc2wQFVnCu/EgNl04WFia+YetLSjeoOgrzrJNZbgvitB0Fmho
y5oz0ypWP+og7ezH6/n59AKc3+nh39r/239Or/82O/ucByfG7TURb9qASTGbEpGcHRThNsZG
EQ+mBigIA35DeFIxYRKtUOsg984RoieMY3KHfo7jzH4L112lMsnTz1cr/M95mPi2ROn7bHoe
C/WzxuKM8Yk3yzjskOe6+cpvM+Fz7TLbGyYqQeC7OS0zn2mlgP6p4O/W8Amg0yznUTrp/O6h
XegfX46vjw8jRRzl99+P6qlqJPv85yWosbjVl9T9ckWcIQ2iUbtmUpawoqq1z/SowSZG61gS
6mSrk9rEeusTxkMBhebRjC5prpNOSUZyLbdDu63djsxn42YCV3GW54d6Z13nRHFXFzyxNae1
8P34fHo//ng9PXglBBxNN1DO7l0Mnsy60B/Pb9+95eVwM9d347XSuikIZysaqG81/k9bnzD5
wyoNd44lupbdQSN+k7/e3o/PowxW8D+PP34fveG7/DeYcWdtde2B/hn2fEiWJ1ty0vqb95B1
vjd9ehDZ+lTtN/P1dP/14fRM5fPSta7wPv9z9Xo8vj3cwzK5O72KO6qQS1D9jPw/yZ4qoEdT
xLuf909QNbLuXro5XkFd9l2S7B+fHl/+2yuzvUbqqJnboPLODV/mzqLnQ7PAuLaoe+qq4H7/
CHyP7BtxNCdZQbwqE6KBtPSru22BD6Au2/nOwzQVdypqg++K36MZ1crRRyH1oYKjgiD8KNGF
pq2ioSXS0QE26r/fVOeaw9X4BagR4Ct5GST1BuPQoM4fiYL0Ot+zerJIE6XXdxmF5XlniF1V
I7eK98v8V4bEVo3WbQaW8PT6fP8CJy7wBY/vp1dfpw/BOpE9s0QhZQQbGTpVjPtSM/by9fX0
+NWSwKVhkRF2Wy38jI7FMt2GgorP4nV90b7Zmj+7p1ktLt6N3l/vH1C/28OOy3LwThF5q+4p
0pCK5JRCbSrQ6ftWwC2eFFKRHtJikVCZ1P1h6L4WoFkv4TfVCSKsPcg/wl6sp6EpCw9YEPF6
h9bDWkfFEgWyWIRwo6pXEtiawtHjavtGIj/ALOkDbFaTmuCWgDZ1aGfKteUMVCVUkqPzfVWm
Q8JqZRIDMgRxnyR5UBWiPDgVuyb1BT4vw4kJxt8kGD6QLFXvWa9eXGDEE0k1/jNN2tMkYDzJ
7lyWA59LRTyQdTWhcwLFvzipPkc+3FEsatLqJV4q6iz3jTlK3tWlQ5j22glsMqiCfnDpZv14
GhSHnHY7LNFVrKNu1dHcSBWhmyB0gtJetD7MNMFT6l2VlQZfr36ikpniPzuBgFmYsuNqgDtW
pI4su8NpBDUVNbUsuFX23Sop663PLaumTJyaBmXcT9FyUkOxDC01V9Jepjqttkd/pdatf3Kh
w+eYHWpPtPTg/uEf21pnJdUq89+RNVrDwz+KLPkz3IZqr+ttdbBF387nV1bNP2ex4EbrvgDI
bkYVrnqtaD/u/6B+bcrknytW/pmW/soAzapIIiGHlbJ1Ifi7vZuhPl6O1nPX0xsfXWQYNg24
qL8+Pb6dFovZ7R/jT+YcPkOrcuV/wk5Lz+7QHjD+5mlG5e348+tp9M3X7J67Z5WwsV2lqbRt
4j5ZGsnNgw46RvZZ6CokBr80Z7RKxD5Da2JRZkWv7CAScVhw37VXZ0b7fTTrliUrK6MRG16k
lg9rW4usTPLeT98eqgl7VpaGr+moWsMGsjQLaJJUY4wZxLWYj7PSSO3M0NdijeLRoM1l8BH4
T2+o2z18JbaswCF7NnjM/gh3tRBSv6ZqOaW1lLICzSfoI4eFA7QVTePqGKCoEZ0RSOjwgTxZ
B+q6HKgOTQoKlhAkeVcxGRHE7QBvkIgUJhK10SYDrc9p2l26vx6kzmlqMfTRHC07Ccd8B7ml
slUD3V1k1OSFoxcY240zH1viyt5v8bd5JqrfU/e3vWJV2rU5xzFF7ohrnYbXviNZ2f2n9tGD
cDxEG8XtMPW2sQHhHoROH1O3CJ86+bpQ7zjAHWWGbT1yWe5P3TzjW9D+vrY5Ejo3Gu1wVmmR
B+7vem3fMJpU2to74HlELidBEbKQ0TsJNVtMjR/40Tn7/PTz/dvik0lpj98ajl+ru03azdSv
b2eDbvyvFxZoQZg/OyC/ZpcD+tDnPlBxKu6MA/K/pzigj1Sc0Ht1QP6XGQf0kS6Y+x9vHJBf
Jc8C3U4/UFIvSqq/pA/00+31B+q0IJS1EQQMMLKLNcETmsWMKbN8F+Xb8BDDZCCEvebaz4/d
ZdUS6D5oEfREaRGXW09PkRZBj2qLoBdRi6CHquuGy40ZX27NmG7OJhOL2m8D15H9ukRIRi1B
OO4JHZ8WEfAYGM8LELgdV4Tjrw5UZKwUlz52KEQcX/jcmvGLELhN+zXgWwRcQGLHWquPSSvh
F99Z3XepUWVVbITXkyEi8AZnXVlTEWReh5ciq3d35juuJRTUb1fHh5+vj++/+oqS6JrVvPOo
IJqNcKD7tkpuIu/Wnnt7ywaeI2JBjkKka4LNbor0c35a/sNDGgKEOowwhKP2DErw3o2gsA4T
LtXzQ1mIwOeAyRApunl38FfF9oqybGPzOA3Ey3V0+Rtm1biw4u6pi4SFHPc8m7o56z3l9bVD
wmD5jd0byfje1+ZYJnWSsBxvGnBHC4u/5rPZdG4pd6gY7SkPlbQMQ6vWymc5c67ZPZhfcAe8
JUreZFYVlBNvDDcWqGLQw5KOojrUu5KrQF6ecWso9RI48JzBBW0AEwppP7n3EXzL4ywfQLBt
oKovBzCwbIINrKK8gFvBlsUV/+vKM5wS9gYi6kALKbMkOxBu3VsMy6HdCeHNo0NhNIRcEPF9
WtCBEVrZ5zqzFb7uue9H/a/B5SPbpTj7fBsZzNe1K9vvEjF6QspcxyI9FFrrWpuXICrPt746
tAI0zxzrcvYwIfM5L4ZG/vUJVWq+nv7z8q9f98/3/3o63f9/Z1fW3DaOhP+Ka552qzxTPjPO
Qx54ShzxMkhasl9Yiq11VLFllyTvOvvrF90gSFxNafZhJgn6E4iz0Wj08fS+3pzulv9aceT6
6RSswp6BNZ/uVi/rzcfn6e51+fjzdP/2+vbr7XT5/r7cvr5tfxN8fLbablYvmCp4tYFHrYGf
C1PtFceCqdl6v16+rP8rE93LG1SAWiPQ7EKIej5qanJl+Bcs4mDW5kUe6ZPQkzzCJBQhRS5Y
BGFuYoEhMheJlTbl7j5JMj0k/ZO9efj1wwEHTdHbqG1/ve/fTh4hsNnb9uTH6uV9tVXGDsG8
exPNYkkrvrDLIy90FtrQahYk5VTNSGcQ7J/wyZw6C20oUx9ihjIn0M5xJxtOtsSjGj8rSwca
RAy7mMtM/HS06+jKtVe8jmRGoXD+UHJ4dMytrOon8fnFTdakFiFvUnehqyUl/kkoCBGBf7gU
N3JUmnrKpR9H3U7Xl/Lj+8v68fefq18nj7h0nyF35S9rxbLKc1QZukWGjhoFh+gsJNJ3y842
7C66uL4+d1+HLBS4dlhd9D72P1ab/fpxuV89nUQb7Cffwif/We9/nHi73dvjGknhcr+0Oh6o
+TflXAeZYzCCKZdpvYuzskjvzy8J9+B+806SikqkbWD4X6o8aasqcln7ye0d3SZ3VkMj3iDO
Je8kd/LRNvP17Un1eZPN912LJoh9+qNBzVw/MX2bzDa5zYs6csrcEb06chGP/rrkvRijL8bb
xu8Ec0ZoaOXOncr5tWZkBOrdEYHG5FxDQOK6ccvocuCqSo/YJcxdlrsf1IxmaqAPydhFoTUw
BwbuzvAIFC+Z6+fVbm9/lwWXF87FhARxoxjncQGh0FIBfLJTKoiC7NViSsXw6hB+6s2ii9E1
JSCj66aDmOzH0ez6/CxMXCkPJGvpTmNrYR/BVPrVBg5uhL5TnmnhFd2GLLx2tCBLODMBdyNC
OyIPiiw8wNcAQWiIBwSVv29AXOqexgY7nHrnjj5AMd+2VeTWnQ0o/vmjcNfnFzbOVZu7MddE
BsUBMd6AbJwMZh8+kVNOCgUTdv51tBHz8kArccm2uBfbPLF3t5CL1+8/dEcDechVjqHhpYY9
rgvh+piFyxs/Gd27HgtGt4qfFvM4OcRFBOaInQdxqtKUSNJgYP5GdZ2QwM+Z/+tHF0f9qqpH
+Q8Cjm5CVY/zSgAQlRlCqHMJ8dLLNgqjI9oSHxS6Z1PvwXOrJeRe89KKyhNsyIfHYI5oNWTi
GKezknKL1CEoyBz1RQE/boYV9FGVZ6PkmohaLMnz4tAe7SBHNEVHtpdzwunegLuHRXquvW9X
u53Qo9hLNU4p30QpFT+4FXUd+YaI7tH/erS/nDwdPdMfqtqObMqWm6e315P84/X7ait8pqSi
yGbCVdIGJXN648tBYP5ExhtwUAixVdAOyHgI4neV8Y9b3/0rgdB+EXgalPeE1gAczw5+vwdK
HcxRYEbYe5o40APRPcOzOcljU0H1sv6+XW5/nWzfPvbrjePykCZ+dzg7yvmR6RgQIB0hLANM
8LmDKOf138aFRDt7gZhhgtQr50eOkayHJruv9za6l/qM6Zg7j6q7tvRC01vTBfNqfnLzK/To
dh2A0Iqzq9FxBnBgupnakFswC53efL3+PPxtwAaXCyKarQn8QkSBJD5+54664fr8kVDegMPI
POFsYNEGeX59fbhj8JKxoEJYqLOUYdLDdrJwpfb0qvssi+C9ER8rIWa2Yr05EMvGTztM1fg6
bHF99rUNIng1SwJw1xC+GpqB6yyobsDc/A7oUAvpzwHQPzmXrip4gHRX9acI325EKB+ecZIJ
vPKVkTDfBzN8bFniCCcbrLZ78Ihb7lc7DG+8Wz9vlvuP7erk8cfq8ed686wG6wErvraGZGPi
3ZdpfgM2vfr2m2L43NGjRc08dcSox6giDz12b37PjRZVc94IMXur2g2WpuNHdFr2yU9yaAO6
CsSSw6c2ax8myENvCcfU+nyBRxANSFk80mWOXyTzoLxvY1Zk0unBAUmjnKDmERiTJ6oVnSTF
SR7y/zE+Kr7+5BYULExcT2Livd5L7crKIOkdjgySUYzGz2AcGWTlIpgKk0YWxQ7z6NiDZD0Q
SaJME/1hIeCsk0sJWtG5cdcPWlvno5GTumldj+uo5DLqurzoA0hRvwDXsSDy728cPxUUShhE
iMfmtCwKCJ+wWuFUUqwmb9gBERM98YWukPoZEVnPy8MiGx+jBziduUCUarbwD0KMMEq51I12
LF1SYKUUwh7b5VfO8sUDFJv/7rJp62Xo+Vna2MT7cmUVeixzldXTJvMtQsWZtV2vH/ylrpKu
lBi5oW/t5CFR9pJC8DnhwklJH9S4Bgph8UDgC6L8yt7cqkVJR0Kfqjsvlb5P/bFZFUEickF7
jHlqemsPvRVV91JRBAbNrcY9oFyL05BjeBcRDTDFNOYGDcP0eSWad5g+GBhCMAxZW/O7o68+
plfzpKhTXzMbADAX+ymHr2qSiuFQmBKYjAyGDwqhbFqmdSy8VblqWmifhn+Pba081f1TgvQB
jJQ0EwB2CwK3S9rJykQLFF1gItgJPy7VHORNUF3AYaMd7WhnJNfCXVgV9gqZRDWE9C/iUJ3y
uADtR2+y3jcTyp0eiYC/+bwxarj5PFf2cgUe3EVqTDIsmRKclbWH/57UCA/bNk6baipdRylQ
FoCAaQDQsGLupYqZWMUXk+F9K4bOOYu9BGIJELrViJS7sPR9u97sf2I42qfX1e7Ztg1E4WSG
CRU0UVEUQ9539+N7kVcF+ndOUjCc6s0J/iQRtw047F31C6oTU60alHsgWHbJpmBySee5ItNi
knvuPvMLEMEjxjhSjR0Kv2j5f3fgRF+JEeiGmRy6XmW0fln9vl+/doLfDqGPonyrDPTQTvwa
3PYdjYxytF7IGrC+BI6gLGLGG41Opt/4dfFGXy0l55ngYk/EfmKRF2LFXkVk3+UALlaKKFzO
nV+UfHHwCzqHpEluOPOKPnF5G2Q+8CHLPCMt0CCSaxDsT1vkqWqRicZHneu6YTMpPhQXLOBD
EXkzMES1U2cMAZiOmx0t9lC3hcLV949nTECXbHb77cdrF8hUrlvIbw53BnY7tFwp7E2dxIx+
O/s8d6FETjZzKWrOgh4egnyoZpNQY9Pwb9eFtGdEfuXlXFbkt2KYNw8tXPpfI9Xxc/ErPviT
PIvyWt0LR42Q3hPh1WT2D5wM5UWos/nqK9MvQpBCcFFHeUU5iYsKAYjnqROD1RTznNDpIbks
Egg5SdwNh6/wrUREjkUIKyBTJZ0bTKAK/6+IMsCo0saXMMJYExBogeqYPlwu3djzgyzle8Te
P5LilB9xJ+MWbCrD1RTz1XZEyPSLHGqkn06zy359dhgRtNluZEcg2yiC5kjDRnOqBFsAaY4c
JbGpvEpNMm0QwKLCENOEXaWgdnILQa3mXLCaaM9eSHC0p/sBDCwaCuv2kMPesDjuFGL0mBoZ
xJ8Ub++705P07fHnx7vge9Pl5tlQNECQVc6OC3dsB43e2zFrRJTXmlozby7iGi7qTclbWfOF
XrhEBzAl71BC9IWa+AhkmiSkoFx1KcMBxHYKQThrj8jiNL/lxw0/dELztb2PujI2bsK7gh8j
Tx+Ys9rFsMQGISUQpHZ6frVMmpMPdqyOz5hzD+M1i6LS4FlCuwQWZAN//sfufb0BqzLesdeP
/epzxf+y2j/+8ccf/1RybkGQD6x7gtKnLXGXrLjrg3m4dQJQB3RnjEeCoqaOFhEVPxlXtiMy
ogE5XMl8LkCcZRZz0neia9W8igjpSQCwa/QhI0AyxVPKJ+ZAXTDG+N7kjjWuDihf9XAnpI+V
oaOjV4a/sSo0YaxmRtgTlNr4WLRNDi/cfFULrc5Il2fi0COY1U8hUjwt98sTkCUeQZXqEJvJ
fPUd2z9Ar8aOdwwLkxih1odLCB7ImIgalJ6scQSu0fgI0SXzqwHj4wdxb1M7lgoLGjef4QQ4
4mJ6RQCCWjYKBM5IlPh7Rn5xrtKtmYfC6NaRrmEIt6g12tqSt530zuiUd919DJc+l/7gEYbQ
ZvLWT4u6TIXIUkcy5px7K3FAHtwbYZ6l2AsvtcNid7jIF6UYDWZIC3GTizvNOHXCvHLqxsib
ayxHmya286SegsbFvCG4YGHC4FCE27sJ72AZBiHj9YEa34BA/BVcGIDk4nFeW5XAs/u9URh0
tYmqB6L4YKCHp0U1h9/EsTomGCgc8Zr+CKYWVoNIOWuNpIWXSiUCaM9wbC12Y2rdtwcWRRnn
Bfwyhw0nosGxWy4WxWMVCelgBDCd8xU8BugmtZs4d0PEz9sq96wk85LRQQ7pKZz1+PZn+gfJ
ci/n/NKDRzXxA+Ig7uF8JY0Cxa3C7p1sVTrDx9ikaI1dMuOf8KNu8BUdpLtY7hOz3EBbY1p7
nJeWNL+FdBoIdU8dvCfKdKb0vHRLP8nNk1KH4WZsfc7MppnHiDRfw876G8iD3VRWO2riaKTs
kJeiSh0WgeuGwSXKJOS382mQnF9+vULNuXmlm0EkeudH5JENOr2CdQOXOAMf93vZgGqTLWJv
uWqxndC6R15F61qvdnsQrODOELz9e7VdPq8G8bq/986CQnUCEVdGfv/jxd2olZoVFeBdxzdn
r/zMxhmAKTTTwKSzkAijiU//+MRdcQZIQ0iq2HKV0C2NrAF/OE65XDoirPjw/jNCx4ebIi0g
8DqJ0h6TRpZwxEBuIOlChP9yRcjS6gBNo4UZwcwYQaHIF+7NxMbvcFVAeFMLQw2OqIkopAgQ
1gU0XTwyjNL5RiKyRCOiaQifX6Qu8J2OpkPEwNjIgKIjGFjBobv8yIBTRnxITUK3EZVY70SK
bCR2ap6RzoN4SDq8ixEsx4YfrEqm8BBCJSxGEws+Cwe4NdYWJyzjV7CRgRLB80b6Q7+jdAsS
/fPJuAxiUWbFyIrIoizg8sro7kBDF4K3y0pIAKeR27PysjKNXDotRf2IYYmTCi/180iRf0X4
iA6hvYwWOs26sX3efNFubNphyE/NOPUmlSPbs8fSe/nE1VSqZcDNl7Z7lsJ3MDUth/oroq7Q
n+hxfY0PtYuQcCnD/Fs1yd6iOGnLSW1FcDSve64ItGHR8F0u/Y5NtVbq4/MqpbXtBS2Xggoa
LZJds7E38KTopJezxc2ZMb+SQNjt94iRHdRjQHYm9dfiVRMCVuieEaUjTqwxRnjvGtNkZMlY
98Uo4UNTqYkMIuUPHICkDrPJ5wkEG28Lpgkpfbl4pkQRlQhubewRQ7ByClH/AzDxhUdv4wEA

--2ayjpd4t7csy7ysv--
