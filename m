Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB26ZUPWQKGQEHHD5SZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B50F7DB9C8
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 00:36:28 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id 6sf3037896ybu.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Oct 2019 15:36:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571351787; cv=pass;
        d=google.com; s=arc-20160816;
        b=REQPFYVirV2aMcQvq6gx0xqoluRIpFCJ7IiyPIP0Tb1TkE2XZxRsKvHt6EXIbOE2QQ
         NEbCb1VFcwDd8mnzBvxbG2kqo8m3/jVvKzvD+LwP8BHZlVUUj8gRhl8XbtDnfqLtydZs
         1UCLIcGPy2I3aIKZkB87YpANQUqeM7Fx1aeow99bHDHO2kPAVtjvCg2TbPCPfR9IW8go
         pXOVra5wqOKSdA+azOu0lKkb1N6b89Urcv/oKW2xZKpo9GIETXFbVXSSPa1ismeGO4IC
         d6xhH5wkL754slveWRv+iQ1fXkLpKZ1zmFnjwTRSJpceaiSYFCGs2SoH9bKyq/6qQs7o
         SNwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RyYsBAPmSkYjTXeR6sv5Q0Qgii4JjGDA6YPAL8b6NQ8=;
        b=Ojl6y3z+rM/5dzFMWIB5OMdZO1H5w09gNoiqOktVYYlrq04QEK/wRp65n+85oSUQYT
         Q07ZGm7azbcRzndZbUJy62dK+83eoRVYRecDw1KKLzwyz/zGMH2ugecMI9Nf23xpx0QN
         +XW4wRdl/s7hHwp5Lp8ROwMk/2QT/XsjHs1Xl+4e5JYkl+mWjyW5uJ0NSOIjgwNOIL5t
         alPK+f8xGziUTnsD5d4JjVuI56ANrUAF0ojhjLUJMB/ADuOf1NrfCNhLwulu5c4bezjW
         t1rVa/z4umFo3get/sVbSdbs4gEdA/vaATryzWE26r4cssxOJZb1ZI0gUmUapIY27rbm
         yGiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RyYsBAPmSkYjTXeR6sv5Q0Qgii4JjGDA6YPAL8b6NQ8=;
        b=eZDz1u8nY8q62mqjRtkR9Net8eDGlmB7hGRRIQZv1I3GHHFLUWh5M6XdLaPz34D39D
         NesbVjcwV4Ewf9F7joFX6BlV/VEavP9XR1hjXCTl3EsMNRTpDL4pXHxHEgZOPjb3yAld
         xbxQapp1KisutHM8qy9TNVu1J09ugp5ZsbkuZFp6Bxr9NxGGBY3PjRI2Xqtd2EytsPMD
         XoP6m5FDDbk/2x7Q/wnJdiooDWKurI5u6Xc9TAhizBFdpV75dziRlef2iike2iseOkn5
         mcUcy9txgVmRIbTYDBLKKyHMafl5s6Nc15sP66SxQ4grU3Qh/vRwWMZeWS5dxeEDjdNH
         9x9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RyYsBAPmSkYjTXeR6sv5Q0Qgii4JjGDA6YPAL8b6NQ8=;
        b=qHgIeMo4dv5xSZEpkbkEDMUfvdpZwyIIM5PqPGccGMigOMNp/rNJ25DwkGzf9kX+7j
         rCdMYLDAcLfKndzGCKRC+pl4Gw3WCNrA8csKlMtCYCfxI495EBzBxBVQ+MvUdTrGqTje
         Z8+bwKLtEXZzDNbTGMi99uEZVwpCswCMgFqbrnypXqhHJ6Ef1EzLS/ULzdAa6aWjAu1U
         rPoD/MFsJAAqAFs8ZNZf2UfKj1O8zNiN2agSme4KBxWo3IPVpirXmZuFn0Es203Q/pah
         0Umahw0El84NzaCGIqL+uMlguBe8tVkk4ME9QX0L2fggrQ8T1G9qRBxE3ijk09Rnx78D
         0C7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXoiilYVARBwuqFruAqwKl4e5KwNiUgu8DrAp18ImpjyPPtd1ED
	F2nPNvEj4b+yjgaN38Vvris=
X-Google-Smtp-Source: APXvYqwQAmZbS61MHnnO+4aL6N5qHEt04C75vjtb5SGj7f6y3LZKG/mGy03ndJtHVAGK/JxzNPgorw==
X-Received: by 2002:a81:a741:: with SMTP id e62mr4869854ywh.12.1571351787159;
        Thu, 17 Oct 2019 15:36:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:db4d:: with SMTP id b13ls657936ywn.4.gmail; Thu, 17 Oct
 2019 15:36:26 -0700 (PDT)
X-Received: by 2002:a81:b616:: with SMTP id u22mr4806108ywh.80.1571351786802;
        Thu, 17 Oct 2019 15:36:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571351786; cv=none;
        d=google.com; s=arc-20160816;
        b=ik1CCWFcK/ysqRJBP2OWWY2Vh7gXwRlkUzX/89m4+3vCMdQEGy72TdMHTlJUObaLtk
         4rcg3Jc2ZAFygCZHawX/Bt3VGC433uH2BaYcJODJb0ketO6gc3YFLlQFW4dvf2q+pwNi
         agwJtFWUIUV5hqj8YxJ7s/r/1xqSDPu0HwmQEMrLXxtsfh7rjvWLaxzc7rbpGmL03ZBY
         m6rt8KN47cLxvtut+IzIGFD1H+Gitib+mRSm9R0464z6+t/wBxnJdKpR7zwSvkW9JEq1
         Yxjx4xThwVqDXntZp4xh+fErBtfnf8eDRkZr0XyEkq2bP39cN+YoEiXFbkmE1hrKsgTv
         oL/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=IffJ+qdxvb6KP1OK207zYxAY6bcNt8sLCZOlqMDRkFg=;
        b=kk6YEuNB+MvgO5eIhNNlvMN0V741gPzgDk30mOd16AvfWUmP/LvHrTAPDOL8mZ8qWd
         2hhwiTcbMhS/yyt770JjgWeeElNtu2RTCv3GXNME0N3ZjMqPf+eO+I+O6DAdWJWpWzqU
         wLqp+kRKkRPoIMplva9Fp6hI5NxrOB2Kn+CH161TPSgUGWs/ueyptWbjckki1U3W5bum
         c+P1pVauIjJrjX7AiSirggrHgngCZhNjHCGWuRYlyqYptsUrcswjVcu2isVT55tmHKvL
         leA2vX5nhflJu1/ulAYh3rCamSFWw6bFhoM8xC7niBTtUnxHx9eUgaTy4eQrbU15heEd
         +nuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id j136si221014ybj.3.2019.10.17.15.36.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Oct 2019 15:36:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2019 15:36:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,309,1566889200"; 
   d="gz'50?scan'50,208,50";a="347905942"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 17 Oct 2019 15:36:23 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iLENa-0009Hn-IQ; Fri, 18 Oct 2019 06:36:22 +0800
Date: Fri, 18 Oct 2019 06:35:40 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [vincent.guittot:sched-rework-load_balance-v4 11/11]
 kernel/sched/fair.c:8342:36: error: no member named 'numa_preferred_nid' in
 'struct task_struct'
Message-ID: <201910180639.WiJJMrGg%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="karscs4vf4dexgce"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--karscs4vf4dexgce
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
TO: Vincent Guittot <vincent.guittot@linaro.org>

tree:   https://git.linaro.org/people/vincent.guittot/kernel.git sched-rework-load_balance-v4
head:   8abb26c15ce502ddf1383d1c7c008c387f75a9fe
commit: 8abb26c15ce502ddf1383d1c7c008c387f75a9fe [11/11] sched/fair: rework find_idlest_group
config: x86_64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 1f5823b788037b0dc8c846a22ef6a5a8a0714af7)
reproduce:
        git checkout 8abb26c15ce502ddf1383d1c7c008c387f75a9fe
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/sched/fair.c:8342:36: error: no member named 'numa_preferred_nid' in 'struct task_struct'
                           if (cpu_to_node(this_cpu) == p->numa_preferred_nid)
                                                        ~  ^
   kernel/sched/fair.c:8345:67: error: no member named 'numa_preferred_nid' in 'struct task_struct'
                           if (cpu_to_node(cpumask_first(sched_group_span(idlest))) == p->numa_preferred_nid)
                                                                                       ~  ^
   2 errors generated.

vim +8342 kernel/sched/fair.c

  8229	
  8230	/*
  8231	 * find_idlest_group finds and returns the least busy CPU group within the
  8232	 * domain.
  8233	 *
  8234	 * Assumes p is allowed on at least one CPU in sd.
  8235	 */
  8236	static struct sched_group *
  8237	find_idlest_group(struct sched_domain *sd, struct task_struct *p,
  8238			  int this_cpu, int sd_flag)
  8239	{
  8240		struct sched_group *idlest = NULL, *local = NULL, *group = sd->groups;
  8241		struct sg_lb_stats local_sgs, tmp_sgs;
  8242		struct sg_lb_stats *sgs;
  8243		unsigned long imbalance;
  8244		struct sg_lb_stats idlest_sgs = {
  8245				.avg_load = UINT_MAX,
  8246				.group_type = group_overloaded,
  8247		};
  8248	
  8249		imbalance = scale_load_down(NICE_0_LOAD) *
  8250					(sd->imbalance_pct-100) / 100;
  8251	
  8252		do {
  8253			int local_group;
  8254	
  8255			/* Skip over this group if it has no CPUs allowed */
  8256			if (!cpumask_intersects(sched_group_span(group),
  8257						p->cpus_ptr))
  8258				continue;
  8259	
  8260			local_group = cpumask_test_cpu(this_cpu,
  8261						       sched_group_span(group));
  8262	
  8263			if (local_group) {
  8264				sgs = &local_sgs;
  8265				local = group;
  8266			} else {
  8267				sgs = &tmp_sgs;
  8268			}
  8269	
  8270			update_sg_wakeup_stats(sd, group, sgs, p);
  8271	
  8272			if (!local_group && update_pick_idlest(idlest, &idlest_sgs, group, sgs)) {
  8273				idlest = group;
  8274				idlest_sgs = *sgs;
  8275			}
  8276	
  8277		} while (group = group->next, group != sd->groups);
  8278	
  8279	
  8280		/* There is no idlest group to push tasks to */
  8281		if (!idlest)
  8282			return NULL;
  8283	
  8284		/*
  8285		 * If the local group is idler than the selected idlest group
  8286		 * don't try and push the task.
  8287		 */
  8288		if (local_sgs.group_type < idlest_sgs.group_type)
  8289			return NULL;
  8290	
  8291		/*
  8292		 * If the local group is busier than the selected idlest group
  8293		 * try and push the task.
  8294		 */
  8295		if (local_sgs.group_type > idlest_sgs.group_type)
  8296			return idlest;
  8297	
  8298		switch (local_sgs.group_type) {
  8299		case group_overloaded:
  8300		case group_fully_busy:
  8301			/*
  8302			 * When comparing groups across NUMA domains, it's possible for
  8303			 * the local domain to be very lightly loaded relative to the
  8304			 * remote domains but "imbalance" skews the comparison making
  8305			 * remote CPUs look much more favourable. When considering
  8306			 * cross-domain, add imbalance to the load on the remote node
  8307			 * and consider staying local.
  8308			 */
  8309	
  8310			if ((sd->flags & SD_NUMA) &&
  8311			    ((idlest_sgs.avg_load + imbalance) >= local_sgs.avg_load))
  8312				return NULL;
  8313	
  8314			/*
  8315			 * If the local group is less loaded than the selected
  8316			 * idlest group don't try and push any tasks.
  8317			 */
  8318			if (idlest_sgs.avg_load >= (local_sgs.avg_load + imbalance))
  8319				return NULL;
  8320	
  8321			if (100 * local_sgs.avg_load <= sd->imbalance_pct * idlest_sgs.avg_load)
  8322				return NULL;
  8323			break;
  8324	
  8325		case group_imbalanced:
  8326		case group_asym_packing:
  8327			/* Those type are not used in the slow wakeup path */
  8328			return NULL;
  8329	
  8330		case group_misfit_task:
  8331			/* Select group with the highest max capacity */
  8332			if (local->sgc->max_capacity >= idlest->sgc->max_capacity)
  8333				return NULL;
  8334			break;
  8335	
  8336		case group_has_spare:
  8337			if (sd->flags & SD_NUMA) {
  8338				/*
  8339				 * If there is spare capacity at NUMA, try to select
  8340				 * the preferred node
  8341				 */
> 8342				if (cpu_to_node(this_cpu) == p->numa_preferred_nid)
  8343					return NULL;
  8344	
  8345				if (cpu_to_node(cpumask_first(sched_group_span(idlest))) == p->numa_preferred_nid)
  8346					return idlest;
  8347	
  8348				/*
  8349				 * Otherwise, keep the task on this node to stay close its
  8350				 * wakeup source and improve locality. If there is a real
  8351				 * need of migration, periodic load balance will take care
  8352				 * of it.
  8353				 */
  8354				if(local_sgs.idle_cpus)
  8355					return NULL;
  8356			}
  8357			/*
  8358			 * Select group with highest number of idle cpus. We could also
  8359			 * compare the utilization which is more stable but it can end
  8360			 * up that the group has less spare capacity but finally more
  8361			 * idle cpus which means more opportunity to run task.
  8362			 */
  8363			if (local_sgs.idle_cpus >= idlest_sgs.idle_cpus)
  8364				return NULL;
  8365			break;
  8366		}
  8367	
  8368		return idlest;
  8369	}
  8370	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201910180639.WiJJMrGg%25lkp%40intel.com.

--karscs4vf4dexgce
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
9XbfAQA=

--karscs4vf4dexgce--
