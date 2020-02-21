Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBLFTX3ZAKGQEX7YREOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4E3167885
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 09:49:50 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id w4sf597615pjt.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 00:49:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582274989; cv=pass;
        d=google.com; s=arc-20160816;
        b=dPLMKhnwfIF1/q7/iLfBLNQpr+UPPtrxz3p9kyinEtpSsCOk+oZl+w5IZRz1kjwiwH
         7N676C9gVammBj0hapAfpzD/mIdSyhahMRcuHQKteUiD72fo/U0z00/ernB+3WMLBzlZ
         xEgO8Kc1EgaTRiszcjAN9CDzka/pWgRokOX961I/FgvUKu+e+jPTqt7tnlS/HVexSsSC
         aVuXzsY6h4Xe4zXfDjkHFLJjMhe86aUbRudLGxxQ7VRnBfTko8SacDINp3zOxztybB5z
         SL64YaWx8bLN1UBq+qddh/FDEjetSgUFRhegEyORTmGl1YINkcxpKE0FVQnlAc9AaXWI
         8OIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=0CUQx7MGTKiV2i+qCqWrxd7SAhtbr5lZmdxesc2nyGA=;
        b=OOvWwOUPLQ9XX/dpIHoCBcg3D8PIvFhyID9D92o9voPJhSxYrz4s3p/CJZ9K9hyfZa
         9juG9CSlV8DsaO6LuHcVxxtxp0NWk4kVfvaJje6+j229z2CZfEKiJ5PMl9VpF2R9Wayb
         YUBLMPmCAhgKFCkcvIJrkGmnxILUnw0YtrJjcvP9/dzg2hwbVYmhRMgxQXttCqjOF5oq
         Kdi9uHJUGH9XjQmq+ZI285FrDLMrgX0KzBgTUZd4UTKR1Gzkc6iG4f5Nukzy171/zzlj
         uuSpUiwHjB85Es1+yl7cRDLFo6r1hN0L9HF4jecgZR5YXEe+da3aQZKTZv6NW3RJ/Ey1
         Qpqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0CUQx7MGTKiV2i+qCqWrxd7SAhtbr5lZmdxesc2nyGA=;
        b=mwOQlzZuGa5A0+glsZPuPvPwlMjoaTmL6/8wlmj+j9uAFWn0GPu4itTMIhgoIzXE7B
         IMIo3Pf0d6oKDcSDK0EF4RKF0Cukn/RLn/0auPPlLKc1SjWC/HSCdF1SU8dE6dh2MIYw
         u9tyA076eME79TiOKIlIz4Ws6307/U5m5uzeJD4JPKb615l/V8mVVkMRyL2m03ElFrc/
         sihIFZvCjOtL/nnBoxsvaA7MKxGBrWl0I2AklXXmBZacIze03HsHWAmzYUqerungySqG
         qxCkfeCkM+E7Ck2xB/qwJ81/TeNHQUJyUeifZkFThMZwqAOD3bfYSYFRfU/Tx3bgWekA
         Cj1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0CUQx7MGTKiV2i+qCqWrxd7SAhtbr5lZmdxesc2nyGA=;
        b=cvGv5kCf0xnVr0g/s16ZrasBPyXb4NoxlFrChLoxn2n0eGQWt+Isau7+mBpLPoDtx8
         67zAEjWyfg/GeKuDMc2rCtWI4hAgzDVzFE+qxV2UJ9fS8rCPgISSEqYR00i2E+ZEJm0C
         mtNm7bfS0zCFtb0inEOuF/SU5XPos/0eEZRs6MIU1eDv8Mk8dAC939lJdrHN+2zZAKtP
         rMnl1DyUXYPxUdxFtiP/V9omOTeo3HMSI8I9KMIO+SqmEEF/96j4NVvR5teU9n/8ZcGC
         QRfIq5D7h0mYw816GZ99vyG7u72Fw/XQED2ZlBVR6WGgj6lVqj3KsOC+GLLiY/01QFLL
         cWbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWl5SWVL9Uj52f5wFLNoJG4ZED9P5v95B5qQ+VN954/5h7bYuOA
	cXoTE+J/P66kfDRo+XilQuQ=
X-Google-Smtp-Source: APXvYqz3wgOppUznLx1rk3qbB83BseoXjlkZ+ppaJqf7XDJfwyY4ra4eu2lvqCgsZjh6+eznXYdkMg==
X-Received: by 2002:a17:90a:be06:: with SMTP id a6mr1846273pjs.73.1582274988651;
        Fri, 21 Feb 2020 00:49:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7a47:: with SMTP id v68ls580293pfc.8.gmail; Fri, 21 Feb
 2020 00:49:48 -0800 (PST)
X-Received: by 2002:a65:68d8:: with SMTP id k24mr38563531pgt.208.1582274988102;
        Fri, 21 Feb 2020 00:49:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582274988; cv=none;
        d=google.com; s=arc-20160816;
        b=UeFqEDoVKKPupUKmxgzek4XxZBJ1tpSLa/FVBs2EszVOZogc9951E0ARyZcltzAhZ4
         JPKuvFpJQs4It/LUHJt9BH52xs4Y1PD+cAo6yIKKE3MSM6mlzlPktMVIZrVjzlJA9zSR
         BqbVCNl107STiRKmltMAFH2rj9h5xdpQjlBwSz1EJVFKDipAKvhKZfW4s+LBREFmdfec
         YFKZ9UB5sXAvudLqBEeXTgAp/Oylt5uC2JQ2HfBtCXgQB9CgBN+4eJMG0eC8eQUbu330
         mumqv0oPJXXaTOz+yonWy5f1UmSs5lR6n3uYSKH3F3lHqm/FDzlnCF/jR/Ry5UeVlK82
         Kcig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=v4kUtHu5cn6QMYMsN1pvg89bOsA7//2YEBf8xQV7kKE=;
        b=ddsb+MVWJbzxX5X/cFaVpqGH3n3z1UVMt7DwnHyJLj2YHxsKIFDzmpYN/IsTW0OoN0
         g8BynU+LiVPkxJ8dlk6uMp0elQcT9o351yrL/dV+0kAGOdHyFDD0Bxro3ZRH6Klsvfuz
         yqf+GnOmumXTLqaoJWity/oKiqYP0vNaIuLKadMyJF/lcAFsf+GPHTG4CqBFmrA508mY
         1l/YAVNu/by0c71DSjcBAitc1e1XKZKBTOj/WIKeGw4rXVfhIvJnqiwsx7ya4fIe5nhZ
         gOm3oHgzALU+e6W95KFukzoP0Dv1D33jf8F6lG9vSei9BKXCR4Ddky9VTWn2SKuSFMrk
         tDtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id r18si121203pfc.2.2020.02.21.00.49.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 21 Feb 2020 00:49:48 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2020 00:49:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,467,1574150400"; 
   d="scan'208";a="269915874"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga002.fm.intel.com with ESMTP; 21 Feb 2020 00:49:44 -0800
Date: Fri, 21 Feb 2020 16:50:07 +0800
From: Philip Li <philip.li@intel.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	kbuild test robot <lkp@intel.com>, kbuild@lists.01.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [gustavoars-linux:for-next/testing 1/1]
 ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with
 variable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a
 struct or class is a GNU extension
Message-ID: <20200221085007.GF14818@intel.com>
References: <202002211103.MQuVvnUg%lkp@intel.com>
 <20200221051144.GA47760@ubuntu-m2-xlarge-x86>
 <5c39ace2-394d-30cd-1572-118cade40fe1@embeddedor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5c39ace2-394d-30cd-1572-118cade40fe1@embeddedor.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.151 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Fri, Feb 21, 2020 at 01:16:02AM -0600, Gustavo A. R. Silva wrote:
> 
> 
> On 2/20/20 23:11, Nathan Chancellor wrote:
> > + Gustavo, since I assume the point of that patch is to see what kind of
> > warnings crop up?
> > 
> 
> Precisely! Thanks, Nathan. :)
> 
> I would have expected to get this e-mail automatically... could someone help
> me with that? I'd really appreciate it.
Hi Gustavo, 0-day ci is working on this to send clang build report directly to
author in a few weeks.

> 
> Thanks
> --
> Gustavo
> 
> > On Fri, Feb 21, 2020 at 11:16:11AM +0800, kbuild test robot wrote:
> >> CC: kbuild-all@lists.01.org
> >> TO: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
> >>
> >> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git for-next/testing
> >> head:   2d94fd162464e8b126227a996eaffa9e0442a1be
> >> commit: 2d94fd162464e8b126227a996eaffa9e0442a1be [1/1] treewide: Replace zero-length array with flexible-array member
> >> config: x86_64-allyesconfig (attached as .config)
> >> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 9d37f5afac4a3b9194b9001bed84f58ca8bd6c02)
> >> reproduce:
> >>         git checkout 2d94fd162464e8b126227a996eaffa9e0442a1be
> >>         # save the attached .config to linux build tree
> >>         make ARCH=x86_64 
> >>
> >> If you fix the issue, kindly add following tag
> >> Reported-by: kbuild test robot <lkp@intel.com>
> >>
> >> All warnings (new ones prefixed by >>):
> >>
> >>    In file included from <built-in>:1:
> >>    In file included from ./usr/include/rdma/rdma_user_cm.h:40:
> >>>> ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with variable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
> >>            struct ib_uverbs_create_cq_resp base;
> >>                                            ^
> >>>> ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with variable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
> >>            struct ib_uverbs_create_qp_resp base;
> >>                                            ^
> >>>> ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with variable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
> >>            struct ib_uverbs_modify_qp base;
> >>                                       ^
> >>    3 warnings generated.
> >>
> >> ---
> >> 0-DAY CI Kernel Test Service, Intel Corporation
> >> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >>
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200221085007.GF14818%40intel.com.
