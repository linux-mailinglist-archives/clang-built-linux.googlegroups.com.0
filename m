Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZ4AYXXAKGQE3ESU5RQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 95699FF989
	for <lists+clang-built-linux@lfdr.de>; Sun, 17 Nov 2019 13:43:21 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id g6sf11069344pgr.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 Nov 2019 04:43:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573994600; cv=pass;
        d=google.com; s=arc-20160816;
        b=JSzU9pSAPF4RMCzp6V6tdwyRYwnu8Bj+mOxIhpvdc2yPSmu5WryG91z7TFRByvsooy
         n9+wDg70o8CuWNcxYB8KH4czNZ8wfSA7yufl+5Vxg0oPzof2mRkArOewFDPMAcXpxZDC
         Q+9XrODE4UJaqqSibSML9p+LVtRE3Ppzllo4i18R4FAmEvQDmbF/LS/a2N+NdhmtLTjh
         T1SvXFHaXBydoogARnoNfVIAF48Wr5XCUBPjFJr/M7HFlcmKAwAi21LNtHJpoVWBdaub
         JEyzw7+gGdcrIEXS/hImRbWJ+N21y2bZVr1yVN6ROUIMf1LyXDO6NGpGSr+EJErzw2AM
         x/kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=CCW9epgIQnpktEWLbhYn2fJ0MebaOFxIVijdBa98Ob4=;
        b=gfxhQOh/t8tjW5Y5q02UB+EligMrjl81FIBPJfjPNnXB1eT9qelPKQvTPDCFkRN9+n
         5SbULrhB2r7jqs4uNqc+5wBwzVefL0d5XGFeuGHR7OM17WoKNEr3MxZQq6iEVS0V5PfB
         IO83XXxcc8G44o7R/LRkrN+1wsCISEBsHHQYYn96g53MPbDxvAs6L8tzxUD23I2tlXEe
         AwDTl9eKYzpoXlbW50E3zVy+exGu5JkjPAOMr4qplXd1j5P2KpRH/+rvkeqikMSHCiHT
         q3cdjKbols7gQpI4zHkPiXBgJaomu9fAKTyQ0I2OOByw58ui6A/aRx5lhcDP4HauQKyt
         bImw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CCW9epgIQnpktEWLbhYn2fJ0MebaOFxIVijdBa98Ob4=;
        b=fAt1/Cj81TgOMfcbCTN7jxPALoAIGu66NbNEQ9Cla5E09H3xaeupCtv7X8I3XxnGxI
         yqI6lD6XTnyR5Uhh9sFJS/lmag7R3jN1SiqZqGF3a3oMy0rp5lY9jUN/lNxFDqltgmUL
         iPEUY13CeSkbmzDwY9oMgttN9kz81eZa9kEXtRhh7coyf2MOMUCIp5y3B2zvA5EzaESz
         +1y76fSTtfcc55mxfRv3OM5ARUsZA/ykFOAeE8K2w2sZichI43bFRjXGEofKaUIlAmYZ
         Kn09ENpEq+9aREiilIqny6uNEnd38m1S7iyUXlJSGROqHInF9bf3yykA26C8DOW+m2ef
         jSlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CCW9epgIQnpktEWLbhYn2fJ0MebaOFxIVijdBa98Ob4=;
        b=dsnY7M7juQqQ3scnNu9aILELLQKKIHhVAJM/dGDMF9mWDYYdFPyw4KZkUrGC/c7PrI
         4YawkqMNUlAw8DqD0/JU/+gQJ6EHbrcUuY+FVDuJtwgvOvPsoVYED+mI8RZD9CSglLZP
         4ajQ/4es0I6r2IC9ce2tez6x9xehXGOWLSX5ugP1b1HzPi5Bq6wnxqBqz07bOqLP3v8T
         jykJ7mxiISK3Hr0zAccsM3YPoZjMks8Vp+G8RJvFPRX7WFMW9SaT5x2D/5IBQCysA+EZ
         rNTIsYgWemDhMT2OybSNBDXBz7wSHjbMjFgCdHG7limLjGhp4qKenyMnRX96Pg7SlZc8
         MrZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUw236Bx2e0U7ngxSxi2MZyyJKUsuPR0NCp7EL5+/YOGl/IavPr
	RdNsrakndamgzc1GyloI7AI=
X-Google-Smtp-Source: APXvYqxLQlQpfRPO6bq3emAtVBFI6yHPnrG71hCJKNsV6kOFMrp0mnouhV4EFhIGbVmTtME29lw0ZA==
X-Received: by 2002:a62:14d0:: with SMTP id 199mr28263058pfu.147.1573994599848;
        Sun, 17 Nov 2019 04:43:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:858d:: with SMTP id m13ls3326741pjn.1.canary-gmail;
 Sun, 17 Nov 2019 04:43:19 -0800 (PST)
X-Received: by 2002:a17:90a:1048:: with SMTP id y8mr32720915pjd.22.1573994599483;
        Sun, 17 Nov 2019 04:43:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573994599; cv=none;
        d=google.com; s=arc-20160816;
        b=M50UPerRQ2RdfdX5IKSreiydemIVaQTerJQfZ+tuNuYgyWk4X5/+8iAcOD+aKnPtBl
         g9fBcp5UHszO2HTMlBm8BxGLPiR3y08wWOyAwWNwLycNWD3K+KYq884w1Xc4PQtqUXes
         68isSVwiPkZUh04wdjAHeNiYhiLgdqwudNnljNkx5nLFULng/sQSgUptppxzfXzXvvjZ
         LWwu3X/16JFI0GdlHjbwHSgb6QsJh35SRxH5qk8iGmdbwJeaWvb0NC/sy8PFMTeBEFOK
         cEAKWNTeq9Jv+F8KZcFs6k7PSa1TkkA8VwWgTLNJEZFHyHL/qr2sNmNy//a0SnT1eQjq
         Bxvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=ThcwVDb9yBtWRFL45eQcQDuNO7dPJHCOeFbuN/q9S1c=;
        b=deh2kKbX7NcaS4gPt+/dYT2096JrP27x+1scJY+XgJE4iogZ+COnKzhxSMsjpNvZoh
         frBIqpMiqSwiNFqbq00m6q+BGSCK4Bshdf7E/Ztbt6igLvUyoD8/+LzSyTMrpxlbRxqL
         5CqX2geKW3Oz7Sg4fV+NZonzlyP/vDwRyK2dVM/POh18UxbOUqoHX+V3wbUFjuKE4TxF
         K998+/nkeHbS2LuxSLiGJNW3tQeAywnofW3AwBIRjqRYfoummdCdSqSI5NyO9Q+tc8Qd
         0lFj41knSDPck2Fcn6Jagh7Np4QXsRUYTX+GfP5Qva5OA5m6ccDwmz9pGYpOxIyDc9it
         FCpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id b15si867013pgw.5.2019.11.17.04.43.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Nov 2019 04:43:19 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Nov 2019 04:43:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,316,1569308400"; 
   d="gz'50?scan'50,208,50";a="203814211"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 17 Nov 2019 04:42:49 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iWJt8-000279-DS; Sun, 17 Nov 2019 20:42:46 +0800
Date: Sun, 17 Nov 2019 20:42:42 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [feng:master 9/10] mm/page_alloc.c:4759:33: error: no member named
 'node' in 'struct zone'
Message-ID: <201911172041.EFNybXVh%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="llfxoy3ljpsdrqss"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--llfxoy3ljpsdrqss
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

CC: kbuild-all@lists.01.org
TO: Feng Tang <feng.tang@intel.com>

tree:   feng/master
head:   7f07deef84904cb8c59e98cceb96e2dfcf2f8a61
commit: 81a18a0094e510662c7d1cb83f11dcef48736469 [9/10] page_alloc: add deb=
ug
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 2916489c54a303=
971bc546f287b71532d49ddd33)
reproduce:
        git checkout 81a18a0094e510662c7d1cb83f11dcef48736469
        # save the attached .config to linux build tree
        make ARCH=3Dx86_64=20

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   mm/page_alloc.c:4754:6: error: use of undeclared identifier 'watchdog_th=
resh'; did you mean 'proc_watchdog_thresh'?
           if (watchdog_thresh =3D=3D 20) {
               ^~~~~~~~~~~~~~~
               proc_watchdog_thresh
   include/linux/nmi.h:211:12: note: 'proc_watchdog_thresh' declared here
   extern int proc_watchdog_thresh(struct ctl_table *, int ,
              ^
   mm/page_alloc.c:4754:22: warning: comparison between pointer and integer=
 ('int (*)(struct ctl_table *, int, void *, size_t *, loff_t *)' (aka 'int =
(*)(struct ctl_table *, int, void *, unsigned long *, long long *)') and 'i=
nt') [-Wpointer-integer-compare]
           if (watchdog_thresh =3D=3D 20) {
               ~~~~~~~~~~~~~~~ ^  ~~
>> mm/page_alloc.c:4759:33: error: no member named 'node' in 'struct zone'
                                   ac.preferred_zoneref->zone->node,
                                   ~~~~~~~~~~~~~~~~~~~~~~~~~~  ^
   include/linux/kernel.h:130:43: note: expanded from macro 'mtp'
           trace_printk(KERN_ERR "" f "\n",##x)
                                             ^
   1 warning and 2 errors generated.

vim +4759 mm/page_alloc.c

  4717=09
  4718	/*
  4719	 * This is the 'heart' of the zoned buddy allocator.
  4720	 */
  4721	struct page *
  4722	__alloc_pages_nodemask(gfp_t gfp_mask, unsigned int order, int prefe=
rred_nid,
  4723								nodemask_t *nodemask)
  4724	{
  4725		struct page *page;
  4726		unsigned int alloc_flags =3D ALLOC_WMARK_LOW;
  4727		gfp_t alloc_mask; /* The gfp_t that was actually used for allocatio=
n */
  4728		struct alloc_context ac =3D { };
  4729=09
  4730		static unsigned long loop;
  4731=09
  4732		/*
  4733		 * There are several places where we assume that the order value is=
 sane
  4734		 * so bail out early if the request is out of bound.
  4735		 */
  4736		if (unlikely(order >=3D MAX_ORDER)) {
  4737			WARN_ON_ONCE(!(gfp_mask & __GFP_NOWARN));
  4738			return NULL;
  4739		}
  4740=09
  4741		gfp_mask &=3D gfp_allowed_mask;
  4742		alloc_mask =3D gfp_mask;
  4743		if (!prepare_alloc_pages(gfp_mask, order, preferred_nid, nodemask, =
&ac, &alloc_mask, &alloc_flags))
  4744			return NULL;
  4745=09
  4746		finalise_ac(gfp_mask, &ac);
  4747=09
  4748		/*
  4749		 * Forbid the first pass from falling back to types that fragment
  4750		 * memory until all local zones are considered.
  4751		 */
  4752		alloc_flags |=3D alloc_flags_nofragment(ac.preferred_zoneref->zone,=
 gfp_mask);
  4753=09
> 4754		if (watchdog_thresh =3D=3D 20) {
  4755=09
  4756			if (loop % 4096 =3D=3D 0) {
  4757		=09
  4758				mtp("ac->pref: node[%d].zone[%d] nodemask=3D0x%x order=3D%d",
> 4759					ac.preferred_zoneref->zone->node,
  4760					ac.preferred_zoneref->zone_idx,
  4761					*((unsigned long *)ac.nodemask),
  4762					order
  4763					);
  4764=09
  4765			}
  4766=09
  4767			loop++;
  4768=09
  4769		}
  4770=09
  4771		/* First allocation attempt */
  4772		page =3D get_page_from_freelist(alloc_mask, order, alloc_flags, &ac=
);
  4773		if (likely(page))
  4774			goto out;
  4775=09
  4776		/*
  4777		 * Apply scoped allocation constraints. This is mainly about GFP_NO=
FS
  4778		 * resp. GFP_NOIO which has to be inherited for all allocation requ=
ests
  4779		 * from a particular context which has been marked by
  4780		 * memalloc_no{fs,io}_{save,restore}.
  4781		 */
  4782		alloc_mask =3D current_gfp_context(gfp_mask);
  4783		ac.spread_dirty_pages =3D false;
  4784=09
  4785		/*
  4786		 * Restore the original nodemask if it was potentially replaced wit=
h
  4787		 * &cpuset_current_mems_allowed to optimize the fast-path attempt.
  4788		 */
  4789		if (unlikely(ac.nodemask !=3D nodemask))
  4790			ac.nodemask =3D nodemask;
  4791=09
  4792		page =3D __alloc_pages_slowpath(alloc_mask, order, &ac);
  4793=09
  4794	out:
  4795		if (memcg_kmem_enabled() && (gfp_mask & __GFP_ACCOUNT) && page &&
  4796		    unlikely(__memcg_kmem_charge(page, gfp_mask, order) !=3D 0)) {
  4797			__free_pages(page, order);
  4798			page =3D NULL;
  4799		}
  4800=09
  4801		trace_mm_page_alloc(page, order, alloc_mask, ac.migratetype);
  4802=09
  4803		return page;
  4804	}
  4805	EXPORT_SYMBOL(__alloc_pages_nodemask);
  4806=09

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
clang-built-linux/201911172041.EFNybXVh%25lkp%40intel.com.

--llfxoy3ljpsdrqss
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--llfxoy3ljpsdrqss--
