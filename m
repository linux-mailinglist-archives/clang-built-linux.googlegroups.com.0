Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB2PA5LXAKGQEPIY56QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id BE7F1108433
	for <lists+clang-built-linux@lfdr.de>; Sun, 24 Nov 2019 17:31:38 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id p1sf9125749ioo.9
        for <lists+clang-built-linux@lfdr.de>; Sun, 24 Nov 2019 08:31:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574613097; cv=pass;
        d=google.com; s=arc-20160816;
        b=oqvlRqxFTZe9L13mTcq1byKPQA9UqIhJwcOi+vHQBx1uHDPMPBf1dpk4awod1rE9IE
         679nkMD0KQXFiDeL3sKs79RAPlm3uHD11VEqKMUBBx3WcbYeJbhZosUQqgAyyb5w9QN+
         ezna0SHsvIfigr+xBFv4RCcswO9pJsymjCTZJDWtd3qjnuCQD8MxRDQTq6gAEseQCG0l
         O9GXgxPHVEK3CDe8rCAJKSKhs2nJK7SLdp5SL71FaNM8QzJF6+H8pRzjT+nXK9ngouR4
         SXGxqEBPof3S+mD0ALluKA0hg504DQwHFrsQF82pGYVlOL4FmpkGTfwI7xqnQ6QDN8ZO
         taYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=QPQDeXIx4P9q6MFiZhE8zvLltkZe4csUbhplTN4dpBs=;
        b=pfRRM+QZCZg8J8U+SFjIabc6wxixE4O6YrCVssCEvAeB4MDSsr4l6ZQcTdIrM1gxWe
         PPj6e5cjH6269gwdDd2bxlRMHnf6wadRpX6/2JSZ0DvvAx14eZy72aW6y6Z4Ad/MfSaX
         RymfeMgAh9n560Oki4yjQ9SYnyVpFqXpXqC6nwyE4r43IA6gR2IRS5AtlGO0FEn5MGwu
         J1CEPZbroSoWXcGNhVYE7YDsRwEanDDpXCbfh95QAqlxT7O+Cz6Bj4GwpkF6iUWKhVLf
         JfQ0OdGpDff3oPuUC6haV/q/yYI6lUzuod3Np39nHd+P7Ui7Qn547W5X6qTa9LvtebVA
         nfFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QPQDeXIx4P9q6MFiZhE8zvLltkZe4csUbhplTN4dpBs=;
        b=Tpop7FycUExIrSMpjb0oZ90aPLCTXRHtv419ZG+u5KkgKeOUTGF8bY5iXxfdSqDLg6
         nd0kLe/wylM768xwExKmNwVh3ce1rd5HxBYjOqK1oTPjctWqgW5FP0I4tRPDsfJ1rGPW
         DUfEC5NQoNYjsCrVbMGOYflNYKfuhk/J9hH6Zzt3IwSqdu2oA+XhZAWjVGL97D8+9Tmg
         LwxViU1ChovWML6Nqydx9z0e2Rvnt6M0KbD4XHijjpPQv6OPilYqgcAVwnVdLJlr39rO
         Jt1UbcBW7H+p8rVFYrmrDIu1nOI8ZiiS/F6rRLSS6mqgjQOLdnW9CPyTE+HH23voQfiL
         lfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QPQDeXIx4P9q6MFiZhE8zvLltkZe4csUbhplTN4dpBs=;
        b=VXwZZHRzWeT2u3elSrHwcoK8bF4rd0uRQmbjHaI9UjUDGf1ZeEiQb92XwwHS76Qtg4
         c8JbcgBR5Y5OeS2XsRGzGvGBu30UwHmiBpASPJyIhZYhRKv1iBWI8jotl2GEd4ubAHdu
         5yiC4BHspbmuUVyBYR8ZEUTIrAmstrq7uqCM3PflIy5FmuV/LQAVy1Av2Q5lwOgMB/AS
         0fgjC1ZSYqYJ53eHJwvpTGss6VAL7QkBkSQkWGZ9Of6mXnZ2I+abVRF5Wm0dmGuqmU+3
         WrCY43JP8IxRfgJyP7dxZpIcLOj2B015ZNDB6wiNoj4m8GPUVkTDCl6gs3BjvwAm90jt
         XK3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXlo+bxENBwfiyZpSmHFRdQX0sp+mD2YlD7t0Vcu7c9eZpe1A/p
	mtMAvgqJrT+HtoerRzmxtSM=
X-Google-Smtp-Source: APXvYqwb3WtmJhYmqGDnWc6FCW9B+3qSz7xrfQb+zb5KKmn2baTU7AQmdueIV33K8UW3nCszzBLfbg==
X-Received: by 2002:a02:3208:: with SMTP id j8mr22956174jaa.86.1574613097210;
        Sun, 24 Nov 2019 08:31:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ba81:: with SMTP id g1ls319703jao.8.gmail; Sun, 24 Nov
 2019 08:31:36 -0800 (PST)
X-Received: by 2002:a02:13c3:: with SMTP id 186mr8068308jaz.115.1574613096709;
        Sun, 24 Nov 2019 08:31:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574613096; cv=none;
        d=google.com; s=arc-20160816;
        b=bURPr3Tso2NBMJhDaYGhBlvIzOKqWhmCX0jcSOzLYu/rXnCaLehaxu5/sxGvm6AlLI
         RzBoJInidso53OUsEIhcDIKAeBIYVbP3YHtZh0kgrwwgykr37LfYNRSk6DtWUm5xzHgI
         5YYh3w0P8wBONtIm4Mp0zElTucmOwSSRi/eG/0wyk8NFyqYU+nuXpV9HoRFnMhiNKR8C
         2uwSW/XwqEW/zMVMRugw/ikUj6ednDLRg+RAoo1mBhWqIHX72FauEgEaoF+rZ81SmC56
         Ajf2rRMNdJveJLnMgxpHDTps5pjlMDvSQ0JmBc2l4sVO+NUdDLrPhxVWK0lTszfrCWxI
         JPYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=K7o1MT/dIkNLTLN0JVmfASx9OwUfVnz1NOXoU4y+iBA=;
        b=BTnxbAGGSPeZ59YXZKxkvYwssQ0tESIjhrTW8htiEpEHv16VY0HW8gATun8UVeL8vs
         33bFYLXGYqlAU48Uy0Ygu02nnvThW79dWXaN7q0PrF6G41e3n+wiNsQ31U48I69Vfrfl
         rbnTlGcEmyDk0msPMvrX7UYRJ6suJDNRUqQ6URxoABMVA6EsoWNLKJcc9P45DpIq4CXd
         0Ka4uF/vNztpUBwb/lGqqof7x+zIZMyUjOCtLpGIYwaVSZ1P/AT6Ora+2PmOr4e93esF
         h4SGoWKaMtaEiqx5VmJGa2sRGb5RgxoKn5rkvaKT/dXSTYLlclNH2U30yvBr/30KB1uP
         jAug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id g10si527004ilb.2.2019.11.24.08.31.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Nov 2019 08:31:36 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Nov 2019 08:31:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,238,1571727600"; 
   d="gz'50?scan'50,208,50";a="202086415"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 24 Nov 2019 08:31:32 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iYunN-0000gN-UE; Mon, 25 Nov 2019 00:31:33 +0800
Date: Mon, 25 Nov 2019 00:31:01 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [feng:master 7/8] mm/page_alloc.c:4768:34: error: no member named
 'node' in 'struct zone'
Message-ID: <201911250000.Q6ojOEoR%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="i5qvazkmhpqbzkms"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--i5qvazkmhpqbzkms
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@lists.01.org
TO: Feng Tang <feng.tang@intel.com>

tree:   feng/master
head:   c376b4e0c0b793663f26be6fe8912407480a41a4
commit: f3f0fe74c2b69c3355eee038ba1e97f72464e012 [7/8] zonelist: add dump
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 844d97f650a2d7=
16e63e3be903c32a82f2f817b1)
reproduce:
        git checkout f3f0fe74c2b69c3355eee038ba1e97f72464e012
        # save the attached .config to linux build tree
        make ARCH=3Dx86_64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   mm/page_alloc.c:4761:6: error: use of undeclared identifier 'watchdog_th=
resh'; did you mean 'proc_watchdog_thresh'?
           if (watchdog_thresh =3D=3D 20) {
               ^~~~~~~~~~~~~~~
               proc_watchdog_thresh
   include/linux/nmi.h:211:12: note: 'proc_watchdog_thresh' declared here
   extern int proc_watchdog_thresh(struct ctl_table *, int ,
              ^
   mm/page_alloc.c:4761:22: warning: comparison between pointer and integer=
 ('int (*)(struct ctl_table *, int, void *, size_t *, loff_t *)' (aka 'int =
(*)(struct ctl_table *, int, void *, unsigned long *, long long *)') and 'i=
nt') [-Wpointer-integer-compare]
           if (watchdog_thresh =3D=3D 20) {
               ~~~~~~~~~~~~~~~ ^  ~~
>> mm/page_alloc.c:4768:34: error: no member named 'node' in 'struct zone'
                                           ac.preferred_zoneref->zone->node=
,
                                           ~~~~~~~~~~~~~~~~~~~~~~~~~~  ^
   include/linux/kernel.h:130:43: note: expanded from macro 'mtp'
           trace_printk(KERN_ERR "" f "\n",##x)
                                             ^
   mm/page_alloc.c:4803:20: error: no member named 'node' in 'struct zone'
                                                   zrefs->zone->node,
                                                   ~~~~~~~~~~~  ^
   1 warning and 3 errors generated.

vim +4768 mm/page_alloc.c

  4725=09
  4726	/*
  4727	 * This is the 'heart' of the zoned buddy allocator.
  4728	 */
  4729	struct page *
  4730	__alloc_pages_nodemask(gfp_t gfp_mask, unsigned int order, int prefe=
rred_nid,
  4731								nodemask_t *nodemask)
  4732	{
  4733		struct page *page;
  4734		unsigned int alloc_flags =3D ALLOC_WMARK_LOW;
  4735		gfp_t alloc_mask; /* The gfp_t that was actually used for allocatio=
n */
  4736		struct alloc_context ac =3D { };
  4737=09
  4738=09
  4739		/*
  4740		 * There are several places where we assume that the order value is=
 sane
  4741		 * so bail out early if the request is out of bound.
  4742		 */
  4743		if (unlikely(order >=3D MAX_ORDER)) {
  4744			WARN_ON_ONCE(!(gfp_mask & __GFP_NOWARN));
  4745			return NULL;
  4746		}
  4747=09
  4748		gfp_mask &=3D gfp_allowed_mask;
  4749		alloc_mask =3D gfp_mask;
  4750		if (!prepare_alloc_pages(gfp_mask, order, preferred_nid, nodemask, =
&ac, &alloc_mask, &alloc_flags))
  4751			return NULL;
  4752=09
  4753		finalise_ac(gfp_mask, &ac);
  4754=09
  4755		/*
  4756		 * Forbid the first pass from falling back to types that fragment
  4757		 * memory until all local zones are considered.
  4758		 */
  4759		alloc_flags |=3D alloc_flags_nofragment(ac.preferred_zoneref->zone,=
 gfp_mask);
  4760=09
> 4761		if (watchdog_thresh =3D=3D 20) {
  4762=09
  4763	//		if (loop % 4096 =3D=3D 0) {
  4764			if (tloop % 256 =3D=3D 0) {
  4765=09
  4766				if (ac.preferred_zoneref && ac.preferred_zoneref->zone)
  4767					mtp("ac->pref: node[%d].zone[%d] cur_nid=3D%d aflag=3D0x%x sdirt=
y=3D%d order=3D%d anm=3D%*pbl pid=3D%d onm=3D%*pbl",
> 4768						ac.preferred_zoneref->zone->node,
  4769						ac.preferred_zoneref->zone_idx,
  4770						numa_node_id(),
  4771						alloc_flags,
  4772						ac.spread_dirty_pages,
  4773						order,
  4774						nodemask_pr_args(ac.nodemask),
  4775						preferred_nid,
  4776						nodemask_pr_args(nodemask)
  4777						);
  4778				else
  4779					mtp("no ac.preferred_zoneref"); =20
  4780			}
  4781=09
  4782			if (tloop % (8192*2) =3D=3D 0) {
  4783=09
  4784				/* dump node */
  4785				pg_data_t *newpgdat =3D NODE_DATA(numa_node_id());
  4786				dump_node_zonelists(newpgdat);
  4787=09
  4788				/* dump ac's zonelist */
  4789				if (ac.zonelist) {
  4790=09
  4791					struct zoneref *zrefs =3D ac.zonelist->_zonerefs;
  4792					int i;
  4793=09
  4794					mcp("dump ac.zonelists:");
  4795=09
  4796					for (i =3D 0; i < MAX_ZONES_PER_ZONELIST + 1; i++) {
  4797				=09
  4798						if (!zrefs->zone)
  4799							break;
  4800=09
  4801						printk("ac [%d]: nid[%d].zone[%d]\n",
  4802							i,
  4803							zrefs->zone->node,
  4804							zrefs->zone_idx
  4805							);
  4806=09
  4807						zrefs++;
  4808					}
  4809				}
  4810			}
  4811=09
  4812			tloop++;
  4813		}
  4814=09
  4815=09
  4816		/* First allocation attempt */
  4817		page =3D get_page_from_freelist(alloc_mask, order, alloc_flags, &ac=
);
  4818		if (likely(page))
  4819			goto out;
  4820=09
  4821		/*
  4822		 * Apply scoped allocation constraints. This is mainly about GFP_NO=
FS
  4823		 * resp. GFP_NOIO which has to be inherited for all allocation requ=
ests
  4824		 * from a particular context which has been marked by
  4825		 * memalloc_no{fs,io}_{save,restore}.
  4826		 */
  4827		alloc_mask =3D current_gfp_context(gfp_mask);
  4828		ac.spread_dirty_pages =3D false;
  4829=09
  4830		/*
  4831		 * Restore the original nodemask if it was potentially replaced wit=
h
  4832		 * &cpuset_current_mems_allowed to optimize the fast-path attempt.
  4833		 */
  4834		if (unlikely(ac.nodemask !=3D nodemask))
  4835			ac.nodemask =3D nodemask;
  4836=09
  4837		page =3D __alloc_pages_slowpath(alloc_mask, order, &ac);
  4838=09
  4839	out:
  4840		if (memcg_kmem_enabled() && (gfp_mask & __GFP_ACCOUNT) && page &&
  4841		    unlikely(__memcg_kmem_charge(page, gfp_mask, order) !=3D 0)) {
  4842			__free_pages(page, order);
  4843			page =3D NULL;
  4844		}
  4845=09
  4846		trace_mm_page_alloc(page, order, alloc_mask, ac.migratetype);
  4847=09
  4848		return page;
  4849	}
  4850	EXPORT_SYMBOL(__alloc_pages_nodemask);
  4851=09

---
0-DAY kernel test infrastructure                 Open Source Technology Cen=
ter
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporat=
ion

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/201911250000.Q6ojOEoR%25lkp%40intel.com.

--i5qvazkmhpqbzkms
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--i5qvazkmhpqbzkms--
