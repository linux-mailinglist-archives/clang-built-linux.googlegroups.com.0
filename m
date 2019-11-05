Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCMKQTXAKGQE2LTGEWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E95EF4B1
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Nov 2019 06:13:46 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id 67sf11957721oid.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Nov 2019 21:13:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572930825; cv=pass;
        d=google.com; s=arc-20160816;
        b=mqTcq0kzkC9N6YD8QzlkgAKuGr06y1hszJHGR4kSKjuy63nzRbgHzrSojZ42FsAkWD
         8DFzWPDWkjLiottfKng5PMIPvgHKxIP+1gswUVsSyHXNKAUGjX+sxmjxwoQVN3U2VZAR
         ue+yjJartjZGXAtnaTv4iNPk3OkJoRPZ3PR0WHc0FN2LG/EMashRACyw7c/I1iqP6c0n
         55oHnJsjj15vTKgd0vg0dbAgqco26+NCINkmSwVu5M2Khm//PvBDEnHj+nqEe0Vw1a+H
         WHRECVRCBaHeLI1VuBEMAbPvqX9/QaqRpjkEcU89rmy7DxAB4+YnsQDvWXbxKQbFr18Q
         ZwMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=l0UFD4h+eEPYLNNFIgyQDcEd1XmO0F7oAUiZdsLyssc=;
        b=Z0FBRc9wo85K4AF6sbiyirnCUZVJIbzsTlij/GCdsL21QcNTb3Mlu1210f6jar+krb
         1Ah5HLTgol0CB05uVKglZ5ykS+g6YgLLRntjru4XLt0qQfoXovCHu85cf9PF3AlN3im7
         4nGILvJrhI2yuiC3Gz40msw+Vquo4492FOshUqfJ73Ujz3dEho/+zCwhArej8UIoY/D4
         9uRxPvjNSLP3CCdmT116wx3mcYXRynmvgsccO9LbUW9FVROaiH5PZk1+d+SLn0e37POx
         CRlzsLlk7XqJgntvswMTny/Yn9puJFkAVKk1846ZyVjvX5mVcfOwmCJOBX0cEfBTIZ0b
         6mnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l0UFD4h+eEPYLNNFIgyQDcEd1XmO0F7oAUiZdsLyssc=;
        b=bql4ggwdsdBRwVWGuY+3/2tes5P+vprLYQuGp1P2G/Ax1VHQ+IhOonmH1XsMwzJxFB
         7lzMpME9hpeZFLGz8Pr6mPQo0YPVkAybeQApms2uieOVKgqQKGttOnR6Dr1ZfYZ1xTVQ
         ihLRjDmdqTo1Xw7lyOdmAtOLQgeotdGcrdI5319aAW4dtUqfeOEK+sxJ3LrPxwMAa3TS
         zjbU4vjOd1A3h5kT3SKqvdJ0gR09EvwJHpiEYy169xBHx+Z8qpw2qUYb3o6mJgFicdKA
         vCIAJW7Ab7qo6xT5lU85JDFDpPfpUdoEfKXVzCjYfs0U4ho7h603XbuKaY8dhyKOArQR
         8G1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l0UFD4h+eEPYLNNFIgyQDcEd1XmO0F7oAUiZdsLyssc=;
        b=TBHVeBqSpNBuRxdDtCLFh+Y7SCToq9Kg/JrdI+Rij8hGK5RCHqaz7rQmVGOIvWCezj
         7k367PFgd/OoUiicJqEgLTtSeDNT58Z5yv4Wh6jnkYnjgPJShcikEqg8/Jz2brpikf7d
         H5WKDmFTIcn+TqpJzo52ubl+GdZPwIlJBtDHKgoOwhA4687xiO+KK32EyRVu6NNEjVsM
         qVofIhc97KchTw176SFROk4YBA2sU1qrWm5lepLSJaZY1dZ78J3sQ+CZmzeESRAUvoas
         2yi9+KjEEJj03J9yWeErCL3oNjVMfMjIQGtZfd5BivLxlcsUVoS/d08UPw1Db36Zll5R
         2TZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVxl+qFBLZ2Socfua8GqgRBqU4Kh3jDBles6kMfso2ikyH3EfEW
	vF8tX6lEuERcBKRxMpk5rY4=
X-Google-Smtp-Source: APXvYqxyOaW6bjkDlkuzH6gvSFB+zDccaCyFcqt8icSoKWB+GiSqc6xz78F1iO+lboVJajQOLShMBQ==
X-Received: by 2002:a9d:611c:: with SMTP id i28mr18311262otj.348.1572930825139;
        Mon, 04 Nov 2019 21:13:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5384:: with SMTP id h126ls487799oib.9.gmail; Mon, 04 Nov
 2019 21:13:44 -0800 (PST)
X-Received: by 2002:aca:306:: with SMTP id 6mr2371307oid.162.1572930824777;
        Mon, 04 Nov 2019 21:13:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572930824; cv=none;
        d=google.com; s=arc-20160816;
        b=V0JD9XuPqIA5LRekZLlbOS+wCHs9htUZ86y21wtNV0aWi1m6mAjKdWSLhMr0Yo+wIe
         p6hTLuqBTExy84V582lhwWdTiX1zDbdgTAab+PS2y5wlLscyLOiJEPdLtAzBAt//LDda
         VlArEr82PzsnfwvM01XoruT0FMh0QH8AMdGXgw9By6xvjYgd1MK0LZvzrS5GsY7epS+s
         G3ODg5GaEZqiUf1wFrjGTGWKWwH+42puwTpXVP9TDwm3vM4Iqbb3QCzAfoohEnbU1PKO
         CsOVu1RDG/8JunU1sDFupoekMaQCWoDs75XVeZkLQJ9UfKqcrEpEuZNMHaespXWw3d4+
         mWxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=bF8nE8vkWKvbKDNVlM6HMb6cTgAyQq3ChX2wQ5lap9U=;
        b=azwsi7a4ODbHyNYwaGV+73Mpan/XcVQI4V61Z6Z9z523AW2b3Iat8HyU9av7xEXK4S
         Uf53AKXmhVHbYLM/PBI4kre69Uu0Dl6ZPeSDA7qIc+Gv4JQzCwyW8BOSkLsauN28G3I+
         fyllR0bsFxgKL3mC+S7bQzxnfc4f+UeOqQk14o64IlWdJmEU/1qUcptzthYC6O7vcEGE
         Y9c8/nmuiMLEwZxr227iUPdlPOjbBNi6/694aWJyE/i32+nngZApuxVT/eSjnVQVzqf3
         eH+p8KjKTh19E5UTpgiU63UpDU5F4dR7kxrbkW61bTExEpzhTv0gZjkx0uC99PCyvkJn
         khEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id x65si482604oig.5.2019.11.04.21.13.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Nov 2019 21:13:44 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Nov 2019 21:13:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,270,1569308400"; 
   d="gz'50?scan'50,208,50";a="200694532"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 04 Nov 2019 21:13:41 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iRr9x-0006q6-Eg; Tue, 05 Nov 2019 13:13:41 +0800
Date: Tue, 5 Nov 2019 13:12:58 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [peterz-queue:sched/urgent 1/1] kernel/sched/sched.h:1634:29: error:
 no member named 'on_cpu' in 'struct task_struct'
Message-ID: <201911051353.egL03dvi%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6dj6c4nyajimlwxp"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--6dj6c4nyajimlwxp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@lists.01.org
TO: Peter Zijlstra <peterz@infradead.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git sched/urgent
head:   b7ad7831b035da1d0b4378cfcdd193e82b418082
commit: b7ad7831b035da1d0b4378cfcdd193e82b418082 [1/1] sched: Fix pick_next_task() vs 'change' pattern race
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 403739b2fdb64e90118017355bd01f88a0640b3f)
reproduce:
        git checkout b7ad7831b035da1d0b4378cfcdd193e82b418082
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from kernel/sched/core.c:9:
>> kernel/sched/sched.h:1634:29: error: no member named 'on_cpu' in 'struct task_struct'
           return rq->curr == p && p->on_cpu == 1;
                                   ~  ^
   1 error generated.
--
   In file included from kernel/sched/fair.c:23:
>> kernel/sched/sched.h:1634:29: error: no member named 'on_cpu' in 'struct task_struct'
           return rq->curr == p && p->on_cpu == 1;
                                   ~  ^
>> kernel/sched/fair.c:6862:14: error: implicit declaration of function 'newidle_balance' [-Werror,-Wimplicit-function-declaration]
           new_tasks = newidle_balance(rq, rf);
                       ^
   kernel/sched/fair.c:6862:14: note: did you mean 'idle_balance'?
   kernel/sched/fair.c:3847:19: note: 'idle_balance' declared here
   static inline int idle_balance(struct rq *rq, struct rq_flags *rf)
                     ^
   2 errors generated.

vim +1634 kernel/sched/sched.h

  1628	
  1629	/*
  1630	 * If true, @p has had sched_class::set_next_task() called on it.
  1631	 */
  1632	static inline bool task_on_rq_curr(struct rq *rq, struct task_struct *p)
  1633	{
> 1634		return rq->curr == p && p->on_cpu == 1;
  1635	}
  1636	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201911051353.egL03dvi%25lkp%40intel.com.

--6dj6c4nyajimlwxp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--6dj6c4nyajimlwxp--
