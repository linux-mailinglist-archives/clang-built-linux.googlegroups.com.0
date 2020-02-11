Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBV62RTZAKGQESBNJJHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 77487159C60
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 23:40:25 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id z19sf109982pfn.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 14:40:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581460824; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mtmfzd08MknTUn/LR254jhzxrXkw8DgK0ed8QP5LX+L0Vk0Z8Swda/++vuOfHLLF0/
         FNQlDUUTSrmpNxxgzs84rafTy9fZGWJtJPehj63qdH8keFttN1nXNf4Rg1zdFEsPpacW
         w19Y2NRlLKZzCVKGS+Wim/bINa0Brx4fCmAjjS7eqlc2v2R3T4ruLhq7cTGMW/ltpRGi
         Fx6Iageu3rkabGOB5uO75lt9h6B9/jZ3Y95XYv3I15r++MapxdLxW4Bvu/W9k1ZxbDd3
         8PDQnVXoUA5y6g/L5jY7XlcpAJYOXBPlxdC9MIJzrR5oX3d2KzxLPlR/EsuS/qpZgkkr
         32Ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KnO1fBentPs94S6aRoKTw7GyBkmhrYiCMV6SqeizXRw=;
        b=lvUh92CUNwmv2/IpENTjStDTJNgHcd+j4aGn2ELqNQhTI7Dwlk7QHiHltd1QFhrKvG
         L7Di35gqcTFu1k1cxjRGbVyZCPmD3PIOIhqrYumd5LExo7QcZC7lhHAqR6zgZbipHX4A
         eyQ6MAbng5hxn6BzhLdCpmtw7uU53EQjC23L9yiryzeX+IMpDv0nQw7kYow4TuZTnX6w
         nYg7ujxniI0bHLD/qYFZI6t+9OZNFdgp9XsUkG6zok90fuiOJeRlm997QeCDP3+ceu9C
         urOG5JV/izlG9xa8inWcQnKoJhrijQNEI6Ad+OUFCKLKR9dziaSuRxGcHG+nQ3wVVg3W
         BGsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KnO1fBentPs94S6aRoKTw7GyBkmhrYiCMV6SqeizXRw=;
        b=jGOD9jcgKM7D3WrHSn17GgXRycKe27KlLiByo+M/4R7ewXMIhhDaUHyTjS9oP234Xa
         aTM2EH+49joMeZ0XO9L7H/3ItfNM87CVvqUyJDFG4KDdwbUU43tU3ZAKaFYVu3O4BO9t
         dvGQ2Eos01j1KsxzC1dWNZyJ/c1CvxYz5WnjM6fWhWpq30tJuX/OBXsySehr1jtR/sWI
         nVFJQ08zIoU/mHHrbs7Mmjjl9epb1DcWH2lx1mm1R2JkD3d+eaD9sWN+Eu25V1ms0RfA
         sj55t+d52PHjhqjMOy1OwbvRQe7/E0kHVEC4JUtV9wBTUMamHFPkbCtTuo74JWaBkM+r
         brPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KnO1fBentPs94S6aRoKTw7GyBkmhrYiCMV6SqeizXRw=;
        b=kbLDhq/UY2MHySMKeTwEnWUA9KV7rPLPe71kuv+k0dpfucDzi9TFM6Q8fTwBq6roTS
         3hvXqH189GVVG59bgmiERLXOlX4QsErrL1Xud0UYwQfPFFqxGkd+Svcrw2OEwfjy2q2V
         H/Vy+3utoS5/1gOfK1HREx6BoONxANllpb+9m1YuhpAywHqhqzZxIKLEUcP01h+0kM62
         K+TS6odL36ucjSqfYkX62payqr3qZ1E+Y6ngan2XOsmfFe8MCAY3LxH/vJ+QGJzBi4bm
         7i6ZkytdAdef1HR3yet1dMkFqafZpmFN2bG/nq/vjxI2l2clhv7hLXv0wkRjzLHBWBsH
         UBqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXegugXu7vZuIk5uuqYpZUYY2M/yZQoQskRk6W0G9vVnHZYYtAp
	R+QMjEFeX4353hnM0J+Pxbo=
X-Google-Smtp-Source: APXvYqyd+O+5js4ub/vkccgWffBBDTK2bMbxsqfCWHCm1khAPEK9dqnzSxZyq7M9Z5HSzpKH7oyCIg==
X-Received: by 2002:a17:90a:a48c:: with SMTP id z12mr6326438pjp.38.1581460823941;
        Tue, 11 Feb 2020 14:40:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7281:: with SMTP id d1ls6198423pll.1.gmail; Tue, 11
 Feb 2020 14:40:23 -0800 (PST)
X-Received: by 2002:a17:902:b617:: with SMTP id b23mr5363074pls.285.1581460823434;
        Tue, 11 Feb 2020 14:40:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581460823; cv=none;
        d=google.com; s=arc-20160816;
        b=gcILxu5qNwlxV7Kdwfi6wT5g8ggUxOQWiDsobmvnC4SJkeEhACKI9AZMzSNRXMvvDS
         /znVyDMJbGwMIOqK9csXCKAtgSmnd7/JlMbsPea1TIHOdTYa8TjMH3dF8mNzHEhiqfaf
         /TOnvPE0mUW08UoFSHB6yfwexH8z62QOBYoSw6P5JM0cyjSma4kP2e0YprCV6SwOzpeA
         yg1ytFcOJ524G8CgADOmFBaRI0mWoc92XEmm6tbGqXByKeDVXTcjZqFdYUUY8I9IBjmP
         fcJrHs/YOrPyNIPr9ShodYhfmfQh7jJrdNEcyXfj/U9O2iB8WW3kObP2iWzMdJ+wGkih
         i6eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=ZFtGhTghJar4HImd0vbRyyszTDlcTTfy1Lgq0JFw9qA=;
        b=GteCaCJ23fLllwloNQ0Jh0p9W/GE5Poho3h5ULRPWbE9iv3GB8b+QzbZpo+bNI7aL3
         lLCYFD21ya0jAlI7YTM3d9exuCkfzRScfX2tkCyjzGDiuZwUJqj/IUT4x/uE1L7nfSmS
         7MBTTtuSvRMTZM4Dn/XFTJVUeHapDn8vXwBmdYMpBupifixB+9fEK3Kopp89g7RUHmur
         fwTv6tXcsosxr6PLDKtDLNnGzTz4NyAngmcVSLhFhHk5pSUzPaZP0U5Wh05mGCkTq8KP
         wMPyY1prFbgpZoQg8cWrg7fswUuUG3jhanpxj6Uj5zM3TfoAhth2AkGnK5blQxlR/DLK
         MK4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id y3si244701plr.1.2020.02.11.14.40.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Feb 2020 14:40:23 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Feb 2020 14:40:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; 
   d="gz'50?scan'50,208,50";a="313213779"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 11 Feb 2020 14:40:20 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1j1eCa-000CCu-8Y; Wed, 12 Feb 2020 06:40:20 +0800
Date: Wed, 12 Feb 2020 06:39:46 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [Intel-gfx] [CI] drm/i915: Move ringbuffer WAs to engine
 workaround list
Message-ID: <202002120657.sNVAocQ9%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="o2n44bproltipikx"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
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


--o2n44bproltipikx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
In-Reply-To: <20200201194004.3622493-1-chris@chris-wilson.co.uk>
References: <20200201194004.3622493-1-chris@chris-wilson.co.uk>
TO: Chris Wilson <chris@chris-wilson.co.uk>

Hi Chris,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on v5.6-rc1 next-20200211]
[cannot apply to drm-tip/drm-tip]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Chris-Wilson/drm-i915-Move-ringbuffer-WAs-to-engine-workaround-list/20200203-131651
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: x86_64-defconfig (attached as .config)
compiler: clang version 11.0.0 (git://gitmirror/llvm_project 4dcc029edbe4bd5e30d4f0cdcf123ea4ed2b6418)
reproduce:
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/intel_workarounds.c:1495:3: error: implicit declaration of function 'wa_masked_dis' [-Werror,-Wimplicit-function-declaration]
                   wa_masked_dis(wal,
                   ^
   drivers/gpu/drm/i915/gt/intel_workarounds.c:1495:3: note: did you mean 'wa_masked_en'?
   drivers/gpu/drm/i915/gt/intel_workarounds.c:171:1: note: 'wa_masked_en' declared here
   wa_masked_en(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
   ^
   1 error generated.

vim +/wa_masked_dis +1495 drivers/gpu/drm/i915/gt/intel_workarounds.c

  1316	
  1317	static void
  1318	rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
  1319	{
  1320		struct drm_i915_private *i915 = engine->i915;
  1321	
  1322		if (IS_TGL_REVID(i915, TGL_REVID_A0, TGL_REVID_A0)) {
  1323			/* Wa_1606700617:tgl */
  1324			wa_masked_en(wal,
  1325				     GEN9_CS_DEBUG_MODE1,
  1326				     FF_DOP_CLOCK_GATE_DISABLE);
  1327	
  1328			/* Wa_1607138336:tgl */
  1329			wa_write_or(wal,
  1330				    GEN9_CTX_PREEMPT_REG,
  1331				    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
  1332	
  1333			/* Wa_1607030317:tgl */
  1334			/* Wa_1607186500:tgl */
  1335			/* Wa_1607297627:tgl */
  1336			wa_masked_en(wal,
  1337				     GEN6_RC_SLEEP_PSMI_CONTROL,
  1338				     GEN12_WAIT_FOR_EVENT_POWER_DOWN_DISABLE |
  1339				     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
  1340	
  1341			/*
  1342			 * Wa_1606679103:tgl
  1343			 * (see also Wa_1606682166:icl)
  1344			 */
  1345			wa_write_or(wal,
  1346				    GEN7_SARCHKMD,
  1347				    GEN7_DISABLE_SAMPLER_PREFETCH);
  1348		}
  1349	
  1350		if (IS_GEN(i915, 11)) {
  1351			/* This is not an Wa. Enable for better image quality */
  1352			wa_masked_en(wal,
  1353				     _3D_CHICKEN3,
  1354				     _3D_CHICKEN3_AA_LINE_QUALITY_FIX_ENABLE);
  1355	
  1356			/* WaPipelineFlushCoherentLines:icl */
  1357			wa_write_or(wal,
  1358				    GEN8_L3SQCREG4,
  1359				    GEN8_LQSC_FLUSH_COHERENT_LINES);
  1360	
  1361			/*
  1362			 * Wa_1405543622:icl
  1363			 * Formerly known as WaGAPZPriorityScheme
  1364			 */
  1365			wa_write_or(wal,
  1366				    GEN8_GARBCNTL,
  1367				    GEN11_ARBITRATION_PRIO_ORDER_MASK);
  1368	
  1369			/*
  1370			 * Wa_1604223664:icl
  1371			 * Formerly known as WaL3BankAddressHashing
  1372			 */
  1373			wa_write_masked_or(wal,
  1374					   GEN8_GARBCNTL,
  1375					   GEN11_HASH_CTRL_EXCL_MASK,
  1376					   GEN11_HASH_CTRL_EXCL_BIT0);
  1377			wa_write_masked_or(wal,
  1378					   GEN11_GLBLINVL,
  1379					   GEN11_BANK_HASH_ADDR_EXCL_MASK,
  1380					   GEN11_BANK_HASH_ADDR_EXCL_BIT0);
  1381	
  1382			/*
  1383			 * Wa_1405733216:icl
  1384			 * Formerly known as WaDisableCleanEvicts
  1385			 */
  1386			wa_write_or(wal,
  1387				    GEN8_L3SQCREG4,
  1388				    GEN11_LQSC_CLEAN_EVICT_DISABLE);
  1389	
  1390			/* WaForwardProgressSoftReset:icl */
  1391			wa_write_or(wal,
  1392				    GEN10_SCRATCH_LNCF2,
  1393				    PMFLUSHDONE_LNICRSDROP |
  1394				    PMFLUSH_GAPL3UNBLOCK |
  1395				    PMFLUSHDONE_LNEBLK);
  1396	
  1397			/* Wa_1406609255:icl (pre-prod) */
  1398			if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_B0))
  1399				wa_write_or(wal,
  1400					    GEN7_SARCHKMD,
  1401					    GEN7_DISABLE_DEMAND_PREFETCH);
  1402	
  1403			/* Wa_1606682166:icl */
  1404			wa_write_or(wal,
  1405				    GEN7_SARCHKMD,
  1406				    GEN7_DISABLE_SAMPLER_PREFETCH);
  1407	
  1408			/* Wa_1409178092:icl */
  1409			wa_write_masked_or(wal,
  1410					   GEN11_SCRATCH2,
  1411					   GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE,
  1412					   0);
  1413		}
  1414	
  1415		if (IS_GEN_RANGE(i915, 9, 11)) {
  1416			/* FtrPerCtxtPreemptionGranularityControl:skl,bxt,kbl,cfl,cnl,icl */
  1417			wa_masked_en(wal,
  1418				     GEN7_FF_SLICE_CS_CHICKEN1,
  1419				     GEN9_FFSC_PERCTX_PREEMPT_CTRL);
  1420		}
  1421	
  1422		if (IS_SKYLAKE(i915) || IS_KABYLAKE(i915) || IS_COFFEELAKE(i915)) {
  1423			/* WaEnableGapsTsvCreditFix:skl,kbl,cfl */
  1424			wa_write_or(wal,
  1425				    GEN8_GARBCNTL,
  1426				    GEN9_GAPS_TSV_CREDIT_DISABLE);
  1427		}
  1428	
  1429		if (IS_BROXTON(i915)) {
  1430			/* WaDisablePooledEuLoadBalancingFix:bxt */
  1431			wa_masked_en(wal,
  1432				     FF_SLICE_CS_CHICKEN2,
  1433				     GEN9_POOLED_EU_LOAD_BALANCING_FIX_DISABLE);
  1434		}
  1435	
  1436		if (IS_GEN(i915, 9)) {
  1437			/* WaContextSwitchWithConcurrentTLBInvalidate:skl,bxt,kbl,glk,cfl */
  1438			wa_masked_en(wal,
  1439				     GEN9_CSFE_CHICKEN1_RCS,
  1440				     GEN9_PREEMPT_GPGPU_SYNC_SWITCH_DISABLE);
  1441	
  1442			/* WaEnableLbsSlaRetryTimerDecrement:skl,bxt,kbl,glk,cfl */
  1443			wa_write_or(wal,
  1444				    BDW_SCRATCH1,
  1445				    GEN9_LBS_SLA_RETRY_TIMER_DECREMENT_ENABLE);
  1446	
  1447			/* WaProgramL3SqcReg1DefaultForPerf:bxt,glk */
  1448			if (IS_GEN9_LP(i915))
  1449				wa_write_masked_or(wal,
  1450						   GEN8_L3SQCREG1,
  1451						   L3_PRIO_CREDITS_MASK,
  1452						   L3_GENERAL_PRIO_CREDITS(62) |
  1453						   L3_HIGH_PRIO_CREDITS(2));
  1454	
  1455			/* WaOCLCoherentLineFlush:skl,bxt,kbl,cfl */
  1456			wa_write_or(wal,
  1457				    GEN8_L3SQCREG4,
  1458				    GEN8_LQSC_FLUSH_COHERENT_LINES);
  1459		}
  1460	
  1461		if (IS_GEN(i915, 7))
  1462			/* WaBCSVCSTlbInvalidationMode:ivb,vlv,hsw */
  1463			wa_masked_en(wal,
  1464				     GFX_MODE_GEN7,
  1465				     GFX_TLB_INVALIDATE_EXPLICIT | GFX_REPLAY_MODE);
  1466	
  1467		if (IS_GEN_RANGE(i915, 6, 7))
  1468			/*
  1469			 * We need to disable the AsyncFlip performance optimisations in
  1470			 * order to use MI_WAIT_FOR_EVENT within the CS. It should
  1471			 * already be programmed to '1' on all products.
  1472			 *
  1473			 * WaDisableAsyncFlipPerfMode:snb,ivb,hsw,vlv
  1474			 */
  1475			wa_masked_en(wal,
  1476				     MI_MODE,
  1477				     ASYNC_FLIP_PERF_DISABLE);
  1478	
  1479		if (IS_GEN(i915, 6)) {
  1480			/*
  1481			 * Required for the hardware to program scanline values for
  1482			 * waiting
  1483			 * WaEnableFlushTlbInvalidationMode:snb
  1484			 */
  1485			wa_masked_en(wal,
  1486				     GFX_MODE,
  1487				     GFX_TLB_INVALIDATE_EXPLICIT);
  1488	
  1489			/*
  1490			 * From the Sandybridge PRM, volume 1 part 3, page 24:
  1491			 * "If this bit is set, STCunit will have LRA as replacement
  1492			 *  policy. [...] This bit must be reset. LRA replacement
  1493			 *  policy is not supported."
  1494			 */
> 1495			wa_masked_dis(wal,
  1496				      CACHE_MODE_0,
  1497				      CM0_STC_EVICT_DISABLE_LRA_SNB);
  1498		}
  1499	
  1500		if (IS_GEN_RANGE(i915, 4, 6))
  1501			/* WaTimedSingleVertexDispatch:cl,bw,ctg,elk,ilk,snb */
  1502			wa_add(wal, MI_MODE,
  1503			       0, _MASKED_BIT_ENABLE(VS_TIMER_DISPATCH),
  1504			       /* XXX bit doesn't stick on Broadwater */
  1505			       IS_I965G(i915) ? 0 : VS_TIMER_DISPATCH);
  1506	}
  1507	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002120657.sNVAocQ9%25lkp%40intel.com.

--o2n44bproltipikx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--o2n44bproltipikx--
