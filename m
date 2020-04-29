Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBDEZUT2QKGQEZSGONSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 549B91BD3E7
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 07:11:42 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id 186sf2024719ybq.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 22:11:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588137101; cv=pass;
        d=google.com; s=arc-20160816;
        b=b8QJm/M/6OUAVdN11RLOAt/jbm+BP8zBEEHM7buhOlKuZwSJdmMGKRXSy3Ri8OdpME
         qc57glJGwwz2+xWG0PLtrPiHrFsi2RbuvjaCcOVm2oVkzRELSukNs4oaA4bCORe5G0tZ
         2LVS8ueW+21yH0EINyodEvG30rzJNYNynO1XWO/u+DSeMkXEtdCpHUucgvMm+jsYPeQK
         53+yRBCovTujad7Zx5YsIU7r79F5W8vmBiTzH2R1hnz6B9jvo0nQHSuzUlIg5H0p6M99
         gMzGD0bkaqeDI2qerkyQA+6BlBIE1Z0IQnbphFfaIVEtoUMhk1wbuUajjtbvL6vwIjMy
         Mvqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=nmwSLF7gFHZUq+HTGl6Eh2yoEz2BqWup5x6gVP0oxC4=;
        b=rBeajdYT+I2HHrgbd1qXQ2KNt2Ad1Zv3mg5xXbxGHgsYL39pDiXEa+/PLvz9KgmESb
         J/SeFCoKl9iAvEDNi7NZIs22ZeM7G/2CE+mN8hDfOdO0jjId5FdZkX3Mg3VqVc9Lx+5z
         2+kdz7U21+adc52mAk3EOJFgQiuAyNSNaCb3vtYQ1EFcU7DVtR3SViF15KHIN/iGfVsT
         kQCfUhDibPveX2KQf9IPKL0xR0+unlwc+GdvZt6Ckbgg/Whw2Akbz2oREp1wB+8hjP2p
         EGsf3IMjddPLQFd6fhY8PdGpaXYYhkCDtHCIWs0sgNjdXIM/GKsqj7Pdu1cmaQmQUEUE
         cqgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nmwSLF7gFHZUq+HTGl6Eh2yoEz2BqWup5x6gVP0oxC4=;
        b=VH2y0qhhjcldyh09zfBVnvYcU2voY0RXyAWGQcPeSyceevbucmooaJp5BDwkqKzceG
         VSIzvO7r2YtXjbV2j+f7e/GUZLpHULoRUK7NAx8pV0QT4llybNS5kUfi5tqsHYbkyacn
         qF1xPgDj1CQI30e8tTfKOm8dQmgGVQ4tv7oYYfADHKcLlc86Y8YwzlYDo5qLmFtjNnfq
         IgLFpgBOh7FU0GwloZO1gGlkzTTbXoGO0A74SGBCbeloK3w6vSAMcwcVv3gz1lgD3jBI
         zAWaam1wq19sDWZi49tEvYAAUPKYJCrkTxNeJUEIB1GWRD//1jcjqJm1hzvpSXk7ol9W
         ywhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nmwSLF7gFHZUq+HTGl6Eh2yoEz2BqWup5x6gVP0oxC4=;
        b=VEh6fe/kVNBe3xkgWpMNv8R3nKbcWhsfnXwA9BvcG/sLvdp1tqpFy6PGuWjPb7vXFc
         K7ujQc4kljam1BsDLzDoivOsAPkh0cP0N19aeQBUlpwllm07Cg3deEDkzA8q7cxOTjyS
         snkGayrqFguoWjINcd82YvsZXoUDTIdMAKwnzHDkXovongpnXLwDTVelm9mPCD0hv/WI
         wMNOcSDVSrg/A/am6OA1D5shRuaXkFniLtRyTmS8rN9ym/VvwZ+eqk++d9bmpKVYwvHp
         noeR7265a67XXpW113wvljr4HXNJJqZNjmfclhyTEYtKOdS4PXQUupcmMSnqA7QseivO
         GOgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub8M4spNVd4qVaDpYPyFP57B7RfEddZlQDjUyo3+YmF3fM+6UhB
	lPM15Tm1bdXE9TOi8vmXDjw=
X-Google-Smtp-Source: APiQypKG15pttrnb5CW+64KZcis2ODiVk24NFV7A9lD2fRJv6bMS4VcEMBjJVqj2mUWMx7Job8ju8g==
X-Received: by 2002:a25:2143:: with SMTP id h64mr49881828ybh.276.1588137100920;
        Tue, 28 Apr 2020 22:11:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3b96:: with SMTP id i144ls8495356yba.7.gmail; Tue, 28
 Apr 2020 22:11:40 -0700 (PDT)
X-Received: by 2002:a25:bad2:: with SMTP id a18mr50818087ybk.22.1588137100423;
        Tue, 28 Apr 2020 22:11:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588137100; cv=none;
        d=google.com; s=arc-20160816;
        b=V61EJwIPOk+NMTzRsqySUxn2OXmNjp2Yu8m9JjyeXHqAyVcap5mJgXREF1+H4MIC1f
         e8WXoOLFZyL+ushZO1UUuK5mBus9FPqlS1IcmjreBVky2vcZ2xxdfsmPRQenTDpl6QMk
         AjrpR/msb7g8Nmc6hCIjPzfbxMjVcsqAw1shnnG/QYgxMCX0QiXSdlN/fi1Mpb6LCyI8
         p9sJjqWua/tZ9z1OvZX7zp1lcNxhDfajZkXS0EauPqSMWWk9Ibfd42CWA0YSCobcA99l
         d9qk5uVUSGGdQy2kBtVhS5+8D0Xn194GHIYrx1vOa4YFk2MvjjZEEFr0moFViU8RbgW+
         NVqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=L9exmSuyOuq2/97Aj69nCBn375KoGgS8ZBW/nmZ//fg=;
        b=ormqTGjf2zEixFMQ4LULmfM2jIkFTN2Cn3974xaNhSEHKVMxF2rauVTRAGzq/e4SEm
         jlRj3kHd2+5becXbTAWqlR6oUaPhaxnMmNcxag6GRg7NwJtDUK2SWxaFvLduOb9z/yuQ
         6uGNA+nuZYbGSwBP0Nr84QxixdRnfKstzmafS3CUbe0y6DzSw+JOIhyq4x8r+RrgQ2PQ
         dUoAfYVEcdWWSSWz59DZivS5MCJp7N+9aRYBP84cvz498uilM4vZRmG82hAiXOkXSW/m
         cH4dHrBXBU0jk8lJJi2+D2GrGdPg3v1cym8KEgTYj963cUUKdyhG6BWZGO2qLD8TnBMi
         1x4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id w5si1447578ybg.2.2020.04.28.22.11.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Apr 2020 22:11:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: xe4UxGyPmKUor0fx83wduTVD510W8FvcwxSyx6YAgKeQTaeF7q6QlsgnwY4jupmMQWriL8QXWV
 5vVDa+t5TsgA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Apr 2020 22:11:38 -0700
IronPort-SDR: CR2Sli/MAA15w4NKfoDaIDfqZbmHs/ct1iUDHRJjT0t+Gqp9npcm2SQm4tQbOTB1KNZgOKbGbj
 DNagPpzktaSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,330,1583222400"; 
   d="gz'50?scan'50,208,50";a="459059852"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 28 Apr 2020 22:11:37 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jTf0S-00013o-DD; Wed, 29 Apr 2020 13:11:36 +0800
Date: Wed, 29 Apr 2020 13:11:22 +0800
From: kbuild test robot <lkp@intel.com>
To: "Uladzislau Rezki (Sony)" <urezki@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 11/24] rcu/tree: Maintain separate array for vmalloc ptrs
Message-ID: <202004291311.IyydeSPW%lkp@intel.com>
References: <20200428205903.61704-12-urezki@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nFreZHaLTZJo0R7j"
Content-Disposition: inline
In-Reply-To: <20200428205903.61704-12-urezki@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--nFreZHaLTZJo0R7j
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi "Uladzislau,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on rcu/dev]
[also build test ERROR on rcu/rcu/next next-20200428]
[cannot apply to linus/master linux/master v5.7-rc3]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Uladzislau-Rezki-Sony/Introduce-kvfree_rcu-1-or-2-arguments/20200429-061752
base:   https://git.kernel.org/pub/scm/linux/kernel/git/paulmck/linux-rcu.git dev
config: mips-loongson1c_defconfig (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project f30416fdde922eaa655934e050026930fefbd260)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/rcu/tree.c:3053:4: error: implicit declaration of function 'vfree' [-Werror,-Wimplicit-function-declaration]
                           vfree(bvhead->records[i]);
                           ^
   1 error generated.

vim +/vfree +3053 kernel/rcu/tree.c

  2989	
  2990	/*
  2991	 * This function is invoked in workqueue context after a grace period.
  2992	 * It frees all the objects queued on ->bhead_free or ->head_free.
  2993	 */
  2994	static void kfree_rcu_work(struct work_struct *work)
  2995	{
  2996		unsigned long flags;
  2997		struct kvfree_rcu_bulk_data *bkhead, *bvhead, *bnext;
  2998		struct rcu_head *head, *next;
  2999		struct kfree_rcu_cpu *krcp;
  3000		struct kfree_rcu_cpu_work *krwp;
  3001		int i;
  3002	
  3003		krwp = container_of(to_rcu_work(work),
  3004				    struct kfree_rcu_cpu_work, rcu_work);
  3005		krcp = krwp->krcp;
  3006	
  3007		raw_spin_lock_irqsave(&krcp->lock, flags);
  3008		/* Channel 1. */
  3009		bkhead = krwp->bkvhead_free[0];
  3010		krwp->bkvhead_free[0] = NULL;
  3011	
  3012		/* Channel 2. */
  3013		bvhead = krwp->bkvhead_free[1];
  3014		krwp->bkvhead_free[1] = NULL;
  3015	
  3016		/* Channel 3. */
  3017		head = krwp->head_free;
  3018		krwp->head_free = NULL;
  3019		raw_spin_unlock_irqrestore(&krcp->lock, flags);
  3020	
  3021		/* kmalloc()/kfree() channel. */
  3022		for (; bkhead; bkhead = bnext) {
  3023			bnext = bkhead->next;
  3024			debug_rcu_bhead_unqueue(bkhead);
  3025	
  3026			rcu_lock_acquire(&rcu_callback_map);
  3027			trace_rcu_invoke_kfree_bulk_callback(rcu_state.name,
  3028				bkhead->nr_records, bkhead->records);
  3029	
  3030			kfree_bulk(bkhead->nr_records, bkhead->records);
  3031			rcu_lock_release(&rcu_callback_map);
  3032	
  3033			krcp = krc_this_cpu_lock(&flags);
  3034			if (put_cached_bnode(krcp, bkhead))
  3035				bkhead = NULL;
  3036			krc_this_cpu_unlock(krcp, flags);
  3037	
  3038			if (bkhead)
  3039				free_page((unsigned long) bkhead);
  3040	
  3041			cond_resched_tasks_rcu_qs();
  3042		}
  3043	
  3044		/* vmalloc()/vfree() channel. */
  3045		for (; bvhead; bvhead = bnext) {
  3046			bnext = bvhead->next;
  3047			debug_rcu_bhead_unqueue(bvhead);
  3048	
  3049			rcu_lock_acquire(&rcu_callback_map);
  3050			for (i = 0; i < bvhead->nr_records; i++) {
  3051				trace_rcu_invoke_kfree_callback(rcu_state.name,
  3052					(struct rcu_head *) bvhead->records[i], 0);
> 3053				vfree(bvhead->records[i]);
  3054			}
  3055			rcu_lock_release(&rcu_callback_map);
  3056	
  3057			krcp = krc_this_cpu_lock(&flags);
  3058			if (put_cached_bnode(krcp, bvhead))
  3059				bvhead = NULL;
  3060			krc_this_cpu_unlock(krcp, flags);
  3061	
  3062			if (bvhead)
  3063				free_page((unsigned long) bvhead);
  3064	
  3065			cond_resched_tasks_rcu_qs();
  3066		}
  3067	
  3068		/*
  3069		 * Emergency case only. It can happen under low memory
  3070		 * condition when an allocation gets failed, so the "bulk"
  3071		 * path can not be temporary maintained.
  3072		 */
  3073		for (; head; head = next) {
  3074			unsigned long offset = (unsigned long)head->func;
  3075			void *ptr = (void *)head - offset;
  3076	
  3077			next = head->next;
  3078			debug_rcu_head_unqueue((struct rcu_head *)ptr);
  3079			rcu_lock_acquire(&rcu_callback_map);
  3080			trace_rcu_invoke_kfree_callback(rcu_state.name, head, offset);
  3081	
  3082			if (!WARN_ON_ONCE(!__is_kfree_rcu_offset(offset)))
  3083				kvfree(ptr);
  3084	
  3085			rcu_lock_release(&rcu_callback_map);
  3086			cond_resched_tasks_rcu_qs();
  3087		}
  3088	}
  3089	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004291311.IyydeSPW%25lkp%40intel.com.

--nFreZHaLTZJo0R7j
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--nFreZHaLTZJo0R7j--
