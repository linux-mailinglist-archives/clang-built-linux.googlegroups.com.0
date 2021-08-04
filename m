Return-Path: <clang-built-linux+bncBCS2VUUF64ARBOU6VGEAMGQEITRDZZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3873DFCC9
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 10:26:36 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id v2-20020a17090ac902b0290176b4310aaesf1113898pjt.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 01:26:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628065594; cv=pass;
        d=google.com; s=arc-20160816;
        b=05xBu+R/wGuA9sJNdusZr1s7BVmrSj8vPf3SNIUbcPdCWGGMSdKWzvTA6q3RVS4iIF
         G1x2a0TXRkZRM9Nem0EZriSYUTiUo+yGUhhDPb1m7s+4VpgdAuVXo8k+ByTRkTk1dCRJ
         Eu4yLS1b0YCXLOKSzVPctFTAHL9W+BVs1vAztlT5hDg3h1vPXYoFx7NoULIywriC4drV
         xOj5kNgoc2mPP71Cb/uE98PAQKV6sKUmiinES84+6so/sFtXoEmlMLZh9sHKzHs6BtoO
         sUi1dpGt7iZwoCFqb4GxZBy7sF21ZLp9E0coFGWP5HGGYg8lEnegM7qUta25KjjF2vIC
         ZjMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:from
         :references:cc:to:subject:sender:dkim-signature:dkim-signature;
        bh=M2PtIY1In/VSvPS0VbDxCyucYZLxzmBMqqb4Lb19dAk=;
        b=wqg5xU7DMo+g4Lk/z+3fm880zsgjzwynKv47fapLEVgUSgWQbWGkeJP0MtJq992Wnd
         5Y9NTZygOv1NzW6esL/GIEHwqZHhXDJvDlrZkB/IUtMPYFgX5ykjFIpQKuW39Y0xA6Gp
         ZYIICVWf8/peoG0uZfKbtspgAbpqA8KXM8KHhaIuZiZ+6XGwY0ZbsUW2wVmIkUvKhe6y
         2Sn8ASgFnK4Gn37HqpNvfHWh7n2JnlzhGc8y7XSfdN2f7Rpxp5VdYIHtWyWudR1pP4UD
         2s4RvI9RZZhN0UtkVZUpdnOMUkpnGmW1EFPsiQDHRnOfQDCTIXbfosodwCSiUE65Ao+c
         jt3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bTw0AUBx;
       spf=pass (google.com: domain of like.xu.linux@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=like.xu.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M2PtIY1In/VSvPS0VbDxCyucYZLxzmBMqqb4Lb19dAk=;
        b=HeCQj7ZSgIM/XZFA7I5d3tv/4d2BRn/VThrfB5W2zW1llt4Zv3rRX0aVFB6RAHH2c3
         s5sNgniuRRGcpZVm790LOMq6IPfjxkpTbOUn9mViAycPZ+A40AhbT1uBYKy/o+r2+2Lg
         AJjgrc68oOrb5MbSR9fGpI3gJChIsv1DNgV2/xW7OTYPT9ouPwOCe5o4inMzdJrpzDAj
         WcYzc2AE0Ke2F0/fQMcbUTHmstpxlQ3hHYQ4OdvQQzoqKHUfxiXe8XzG/mSX7EKsGDAq
         qQZ41GY2ZIy0XXK7FK3CLkrsMGEzG4FlRGnPOSM8BwEDDn6sdFD6p35JyJCv0V4s6YHr
         5ovg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M2PtIY1In/VSvPS0VbDxCyucYZLxzmBMqqb4Lb19dAk=;
        b=jgzR7HvIV9ivsoSbHotnixUm5FjpxunSj1dPITCQqO17HFdQkgfTrlZjFgI/+NZrXN
         eV8D5SXkIFGae7ebi5GqrWRzupI9lTSTK1VRCLlnanOPeOpncgfJDbtOzxcPtUubUXfx
         WsS4cJZC6K692jsoLTN/4iquScbvRmTCvr/a8pSHLg9xekL9JBgrKtJywNkRSK/3AzOK
         CF1jek6N4tBudQFHUClHzFhSt+WWcbQOS7upRvNHkQf6HUGfwztvr7GyfsryV4e4Ln8m
         WIk8G6U8yVGqLjb2LA2qZNe+rAu3l5cPZfwdhkJKorGNenS6aapbX2kFwQ7AN3gb3USe
         0KJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M2PtIY1In/VSvPS0VbDxCyucYZLxzmBMqqb4Lb19dAk=;
        b=uTK5VRDlu/GMKuglraNnVV3hS2UTLS+f3+aFh/97ACHs/2iFClirVjJQxnGL4L/YvG
         2WW4AuWPX/nkCf1cghjQZqIM9ygKY0NAUZBnxQjE0YlsBAh0rBYrjhzVSvOjMOA9UIGG
         MB0/Ru0m9Nhj/MJHaVTgLp78hIgtlgbWZC9z+zRtCGwYK3hBqOds8vI9uBGCGPjYRlg9
         TqxeOVgXlnltP9/fWyy6J80kHNIsOL75PJ9FEyySaIexjF+k6xOijZSzQk9P163R4J0I
         fCg7J6/30CUG5S256K9TrfMX7o14x7WJsHPTaLRIfNnO28VELhXYW+0vOGvYKvJz9kJt
         K8vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Y+GtJZJ3ZBTWM9PkNibhFp45YfXDBi87kwqxx4Dfo0dcBZ2JE
	nXbYF6vksNdksWqq7yNrVUU=
X-Google-Smtp-Source: ABdhPJw4Su26ZUVh1dRQEQi5DV2EEfBGo7y7glSR8GOGoBPkOPH9gs+FWlmqD0HNquZCw7ptzfYrbA==
X-Received: by 2002:a17:90a:b303:: with SMTP id d3mr27208464pjr.199.1628065594780;
        Wed, 04 Aug 2021 01:26:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:758f:: with SMTP id q137ls604100pfc.10.gmail; Wed, 04
 Aug 2021 01:26:34 -0700 (PDT)
X-Received: by 2002:a63:504a:: with SMTP id q10mr196223pgl.383.1628065594020;
        Wed, 04 Aug 2021 01:26:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628065594; cv=none;
        d=google.com; s=arc-20160816;
        b=oNCrCBEjtJEZPqJ2hmv9irkMRZkLnKFE26U7inSuQz3bYz+iWofB9uunZ/IqNLscKA
         Zahvl4QEyO6MXbqRki+Hf/6rXsnsY/d6jeOw8BafUUZioEsb/Jsr4Wa7lSNQ+LfClfmK
         UoFZlcpxcS7YElXEmaEeLGAj4Dac+qi/4AtRXssy8M/ucYmi9Mj3FZzFFsut9l7aOd+T
         uOQrZ+eajfwgs9KD+/2TAIWlu4OQLdb6sXheGbJtShT4gREiJ9LGz5XqVPmuKJZSEkuQ
         UGdHsIhtR4oCOxn4hptqNWk4nulhqC5N7xj9j4kN5UCAEJnmK2PrgoTv5ePAYYZgjG80
         s+9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=XkczZ102d6X9iUWX5eY6ukSEVSaDUSd1MxUDmIIaQhg=;
        b=BNRyrINaSpbd7K7y7VShj3g8+iTHCN4pxAiUs0I1d0GMMQKArqsslSoq+LvU3llRTm
         abyF0F7Syy0IT/zP9WwXj5JHgjgKZZUteo1/oQeXzyIJl6Wms2h0Nv5kAIh8bXsxIZYJ
         l5Ed1TVHsrwu5WIGJ+dvurEX7JBTJ0RcPGcpvESNazeQJAjV4sqWoW2a/Vtj3vdRQGzk
         HoJjQO14bu1UYNBjgYWG0qz6HHvPYkRWCyz9Ys7ZFogIp91tLNBAfV75TQ/icTzm2pl+
         6MKIstvdyHtNl329IxoyInTCgBQ0kExGcvBko+qBGOnjXQS6yfnSt2hBXyRrJD9JD2xx
         /XYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bTw0AUBx;
       spf=pass (google.com: domain of like.xu.linux@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) smtp.mailfrom=like.xu.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com. [2607:f8b0:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id bj15si50120pjb.1.2021.08.04.01.26.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 01:26:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of like.xu.linux@gmail.com designates 2607:f8b0:4864:20::62b as permitted sender) client-ip=2607:f8b0:4864:20::62b;
Received: by mail-pl1-x62b.google.com with SMTP id i10so2226926pla.3
        for <clang-built-linux@googlegroups.com>; Wed, 04 Aug 2021 01:26:34 -0700 (PDT)
X-Received: by 2002:a63:d458:: with SMTP id i24mr148543pgj.289.1628065593741;
        Wed, 04 Aug 2021 01:26:33 -0700 (PDT)
Received: from Likes-MacBook-Pro.local ([103.7.29.32])
        by smtp.gmail.com with ESMTPSA id t19sm2000664pfg.216.2021.08.04.01.26.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Aug 2021 01:26:33 -0700 (PDT)
Subject: Re: [kvm:queue 89/92] arch/x86/kvm/debugfs.c:115:18: error: implicit
 declaration of function 'kvm_mmu_slot_lpages'
To: Peter Xu <peterx@redhat.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
 kvm@vger.kernel.org, Robert Hu <robert.hu@intel.com>,
 Farrah Chen <farrah.chen@intel.com>, Danmei Wei <danmei.wei@intel.com>,
 Paolo Bonzini <pbonzini@redhat.com>, kernel test robot <lkp@intel.com>
References: <202108040409.71rYZOtR-lkp@intel.com>
From: Like Xu <like.xu.linux@gmail.com>
Organization: Tencent
Message-ID: <79f2b495-4277-5794-e7ca-34eca755f673@gmail.com>
Date: Wed, 4 Aug 2021 16:26:24 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <202108040409.71rYZOtR-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: like.xu.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=bTw0AUBx;       spf=pass
 (google.com: domain of like.xu.linux@gmail.com designates 2607:f8b0:4864:20::62b
 as permitted sender) smtp.mailfrom=like.xu.linux@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Fixes: 0ba436e56da7 ("KVM: X86: Introduce kvm_mmu_slot_lpages() helpers")

diff --git a/arch/x86/kvm/debugfs.c b/arch/x86/kvm/debugfs.c
index 62a61bfdd680..4fa519caaef7 100644
--- a/arch/x86/kvm/debugfs.c
+++ b/arch/x86/kvm/debugfs.c
@@ -7,6 +7,7 @@
  #include <linux/kvm_host.h>
  #include <linux/debugfs.h>
  #include "lapic.h"
+#include "mmu.h"
  #include "mmu/mmu_internal.h"

  static int vcpu_get_timer_advance_ns(void *data, u64 *val)

On 4/8/2021 4:37 am, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/virt/kvm/kvm.git queue
> head:   6cd974485e2574d94221268760d84c9c19d1c4ff
> commit: 53c1304cfe8446c0bfbe2dcac1995bfa5907a1d2 [89/92] KVM: X86: Introduce mmu_rmaps_stat per-vm debugfs file
> config: x86_64-randconfig-a011-20210803 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 4f71f59bf3d9914188a11d0c41bedbb339d36ff5)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # https://git.kernel.org/pub/scm/virt/kvm/kvm.git/commit/?id=53c1304cfe8446c0bfbe2dcac1995bfa5907a1d2
>          git remote add kvm https://git.kernel.org/pub/scm/virt/kvm/kvm.git
>          git fetch --no-tags kvm queue
>          git checkout 53c1304cfe8446c0bfbe2dcac1995bfa5907a1d2
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
>>> arch/x86/kvm/debugfs.c:115:18: error: implicit declaration of function 'kvm_mmu_slot_lpages' [-Werror,-Wimplicit-function-declaration]
>                                     lpage_size = kvm_mmu_slot_lpages(slot, k + 1);
>                                                  ^
>     1 error generated.
> 
> 
> vim +/kvm_mmu_slot_lpages +115 arch/x86/kvm/debugfs.c
> 
>      85	
>      86	static int kvm_mmu_rmaps_stat_show(struct seq_file *m, void *v)
>      87	{
>      88		struct kvm_rmap_head *rmap;
>      89		struct kvm *kvm = m->private;
>      90		struct kvm_memory_slot *slot;
>      91		struct kvm_memslots *slots;
>      92		unsigned int lpage_size, index;
>      93		/* Still small enough to be on the stack */
>      94		unsigned int *log[KVM_NR_PAGE_SIZES], *cur;
>      95		int i, j, k, l, ret;
>      96	
>      97		memset(log, 0, sizeof(log));
>      98	
>      99		ret = -ENOMEM;
>     100		for (i = 0; i < KVM_NR_PAGE_SIZES; i++) {
>     101			log[i] = kzalloc(RMAP_LOG_SIZE * sizeof(unsigned int), GFP_KERNEL);
>     102			if (!log[i])
>     103				goto out;
>     104		}
>     105	
>     106		mutex_lock(&kvm->slots_lock);
>     107		write_lock(&kvm->mmu_lock);
>     108	
>     109		for (i = 0; i < KVM_ADDRESS_SPACE_NUM; i++) {
>     110			slots = __kvm_memslots(kvm, i);
>     111			for (j = 0; j < slots->used_slots; j++) {
>     112				slot = &slots->memslots[j];
>     113				for (k = 0; k < KVM_NR_PAGE_SIZES; k++) {
>     114					rmap = slot->arch.rmap[k];
>   > 115					lpage_size = kvm_mmu_slot_lpages(slot, k + 1);
>     116					cur = log[k];
>     117					for (l = 0; l < lpage_size; l++) {
>     118						index = ffs(pte_list_count(&rmap[l]));
>     119						if (WARN_ON_ONCE(index >= RMAP_LOG_SIZE))
>     120							index = RMAP_LOG_SIZE - 1;
>     121						cur[index]++;
>     122					}
>     123				}
>     124			}
>     125		}
>     126	
>     127		write_unlock(&kvm->mmu_lock);
>     128		mutex_unlock(&kvm->slots_lock);
>     129	
>     130		/* index=0 counts no rmap; index=1 counts 1 rmap */
>     131		seq_printf(m, "Rmap_Count:\t0\t1\t");
>     132		for (i = 2; i < RMAP_LOG_SIZE; i++) {
>     133			j = 1 << (i - 1);
>     134			k = (1 << i) - 1;
>     135			seq_printf(m, "%d-%d\t", j, k);
>     136		}
>     137		seq_printf(m, "\n");
>     138	
>     139		for (i = 0; i < KVM_NR_PAGE_SIZES; i++) {
>     140			seq_printf(m, "Level=%s:\t", kvm_lpage_str[i]);
>     141			cur = log[i];
>     142			for (j = 0; j < RMAP_LOG_SIZE; j++)
>     143				seq_printf(m, "%d\t", cur[j]);
>     144			seq_printf(m, "\n");
>     145		}
>     146	
>     147		ret = 0;
>     148	out:
>     149		for (i = 0; i < KVM_NR_PAGE_SIZES; i++)
>     150			if (log[i])
>     151				kfree(log[i]);
>     152	
>     153		return ret;
>     154	}
>     155	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/79f2b495-4277-5794-e7ca-34eca755f673%40gmail.com.
