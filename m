Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5OLSTVQKGQEP7BDHZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C259E83A
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 14:45:44 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id k9sf11961582pls.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 05:45:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566909942; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z4DgsaSMd7dXiObpsPZwwdTp8I9rvHj86RFJSk3LL13wyHctJCrRnKG/6esrElLK5q
         ohzNduH92VGuYmCCL8jmQXlF/C6oJ51d1TvFRkZ+Tx/yk9582VT57WgiaqfV7mCExWRR
         AUe4G6V5R7DXdRxHCpF0IJml1xU1/sSbMUpl7Tw+k/EQ+B75XYAzlsoRPh0+NHRNuwgP
         CkSP5NTvvW9vmlflWUQVN039zGxWzj16f0Xru/17HlHMsECSJKBpw5vbzqsAYxQq6TAg
         hvXizuv/R/faVq8uwypbR+DtgcoD846kAdWzAFxhmCBhthzt5/HLTdJtM9z6pmwIf+op
         OCvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=lzNRpw3WmJvVU4cHfYUbJazGFLiOdboTXT1E5V62hA8=;
        b=sRTZgkWbv2WhM6NbyLYr69Mjfq9XWcLIS2V67K6xXrbPJZeg6dMaHBVi7jgzWDMNPE
         p84bZUxez0YxF/wNvsBt6ZEWJ5EFBvchMk63onRakqZp5yKeGKgk6nOTRAM2Pd0AINx4
         CxQJVH5ldIesut6VHf2s38q3O7elDEreHR9Dr/7o/CfkrK4B/MiZHvrFj1En1xXarF2y
         7906mSBe4Q5OMjFi6CAT6GIHQXrVsU4esSsSoJBh15SNpUUpRkmcqzJ6uPAy1YLH1Ois
         /9S1UCXY1LERogYtuBh2o76ef2g+6XkDovL+X4v+f8vkijvaEe0JoJm9KqS518acQdv2
         r9Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lzNRpw3WmJvVU4cHfYUbJazGFLiOdboTXT1E5V62hA8=;
        b=AR/PFgCPv2HnO8BOwtYuei/SzovcTOQneSA4quMogIe06Kg2E8FN0pfzW5+GFj2ZJl
         IM2bVv6btOduCQTLaUl5ooAaYBV4J3lrmad8EV5R+n9+fi8keSeeZ5BdHwHFkTqC3Sbj
         u56PVmcZetTYVP2uc5A5saK1beaNhr/Kkoou4PsRR7/TOpmQkbVUFwOvuIN7yrfTxrIg
         x31ix9XyoKLz4VJ3Ozstn3tb6l33JlrCE4UoU8lyO6bF6l8O/fkvioR2a03GEgSxFpBG
         snsDxL1oZxsOSIlczTGNds/gnlQQSqdSPJyMSRI0IXxcK0z27PqB1QkzD548cXbhA5T0
         +skw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lzNRpw3WmJvVU4cHfYUbJazGFLiOdboTXT1E5V62hA8=;
        b=Sq7LX7hxDX6+FqdWu8i5M2NyAg+dT/p3hHjqbjhZaLak76AL1ki68JgBErnMyzKXTe
         O6hSrTmjgVeSgEpQtZCHy94mql/YIvDQk5w5NzVZbArF68G56o+eriI9I0okIdUO1gcL
         k7/6i1x+K/RXQQoj5dz1qm3pTU+X6aHmaby78UlPxgWb1sENSUmwK9pu0FUOTs08mmmn
         Q8pFxfv7ZE6eeRCrEZKJkkU5PZvbJ4HD63r6A5LqBdYnUSst0AEhb1T8RDN7CZ97nbvc
         rO1B2zUyVh1vXTT7M/VonOoXW4mwBKdxD2PbzFDB70qf8wowI/rmtf5NadSiEKy+EoGn
         lt4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVkQljcISP2HPLXvfjl3yz1+pVK9Yw5LRF0cGrxaCQME181OmI4
	NK7xozOR7wf0wi8bDYjcbgg=
X-Google-Smtp-Source: APXvYqwq7sert68KI2zQLyWFrCTt6BUGycSxAP+20Zxobo05JwVZlPPLcmHxjOuQIUc6X2AmpFAOrQ==
X-Received: by 2002:a63:36cc:: with SMTP id d195mr20822407pga.157.1566909942027;
        Tue, 27 Aug 2019 05:45:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:680d:: with SMTP id h13ls5874601plk.13.gmail; Tue,
 27 Aug 2019 05:45:41 -0700 (PDT)
X-Received: by 2002:a17:90a:ba8e:: with SMTP id t14mr26180508pjr.116.1566909941694;
        Tue, 27 Aug 2019 05:45:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566909941; cv=none;
        d=google.com; s=arc-20160816;
        b=Y8HCUMOvlWK6Sd2Jb2s9EfTsD28z1HAS45RsmrJ7kBInj6l8QjL7uwNCnPJU7zIhat
         HDh1U0f8cRZNHBcWd4HRGbbjRytaFRVguvK4yXe+o9cn83z5tOr2WOaIsIdwuwX1C1Vc
         KItMRDTa/Z1pQaTfgHVx/AQBE0f5Qc6E94QnDqLUpL/xsHcaYPbP9d/1ubBO6QIFZ0hT
         vUhO9K/tx/qakE2OYrdwS2h57+9klyg/1+4t/4u1cGWg5Y/PRGcnEyLUvxYCruBLOs0s
         EAJeq0oaOFUMlwSbdOArjvk8AeNjxsdhRt/fhMVHJ26m4u31fJKKPzMT3/VH2s17L9au
         ttoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=r5KTcb7ZVthFz8TbrtkSaYBvMQgRLBbg5x2Yd4hLhO0=;
        b=jKV76UDiY+4IaPwze9tMQ5/dNIwg2/41rtFzd3giBxLlIKAlulTy8LR21UEutKYB60
         NcKzeo57NonG8y96ktcxGEE2p4qn901sVIJVPyPjJdEqarADnTccI93gMDZ2XXMyc3nF
         iHs4O4A8vtxoigqp60trclN0TdCEAUP7ry0Vgp67FxWpzobepE1qsIo27aYuZS0Op/Kk
         iZKTk5ZJZvnaoqdxnmds878525aN0qjJDfTNE7LMvY6hlLC1c2+slArWnGgzqzHJ39cl
         /I8WxIazhCjT2Q0UriS0P/WAZ7SIDxv7T+Kgn3viDdUMQus0N1hq26D2CRMpg+MG076g
         WEVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id r202si621538pfc.0.2019.08.27.05.45.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 05:45:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Aug 2019 05:45:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,437,1559545200"; 
   d="gz'50?scan'50,208,50";a="182768579"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 27 Aug 2019 05:45:39 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1i2aqw-000CDv-R8; Tue, 27 Aug 2019 20:45:38 +0800
Date: Tue, 27 Aug 2019 20:44:45 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] clk: Evict unregistered clks from parent caches
Message-ID: <201908272024.2I18d8m3%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="k5ijtfqcwwaaimsf"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--k5ijtfqcwwaaimsf
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
In-Reply-To: <20190826234311.138147-1-sboyd@kernel.org>
References: <20190826234311.138147-1-sboyd@kernel.org>
TO: Stephen Boyd <sboyd@kernel.org>
CC: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>, Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
CC: linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>, Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>

Hi Stephen,

I love your patch! Yet something to improve:

[auto build test ERROR on linus/master]
[cannot apply to v5.3-rc6 next-20190827]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Stephen-Boyd/clk-Evict-unregistered-clks-from-parent-caches/20190827-165138
config: arm64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/clk/clk.c:3785:15: error: use of undeclared identifier 'all_lists'
           for (lists = all_lists; *lists; lists++)
                        ^
   1 error generated.

vim +/all_lists +3785 drivers/clk/clk.c

  3776	
  3777	/* Remove this clk from all parent caches */
  3778	static void clk_core_evict_parent_cache(struct clk_core *core)
  3779	{
  3780		struct hlist_head **lists;
  3781		struct clk_core *root;
  3782	
  3783		lockdep_assert_held(&prepare_lock);
  3784	
> 3785		for (lists = all_lists; *lists; lists++)
  3786			hlist_for_each_entry(root, *lists, child_node)
  3787				clk_core_evict_parent_cache_subtree(root, core);
  3788	

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908272024.2I18d8m3%25lkp%40intel.com.

--k5ijtfqcwwaaimsf
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
yFl2hnqm939XPbMH5HUAAA==

--k5ijtfqcwwaaimsf--
