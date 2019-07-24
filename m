Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQEM4LUQKGQEN65URYI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id E76D4733A8
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 18:24:33 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id x1sf42018967qts.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 09:24:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563985473; cv=pass;
        d=google.com; s=arc-20160816;
        b=kat/8/CEi5n4oKV3gyoFqwj/Nlq+fXoLuOQDL0yvm1lsMkFPsq2q4RsS0jSZuCuROT
         dl4fjpoFyy07QULUPp8oKAU5rFf3qCb4R7GWar3PVBi469llGpEyv/JwSKqdWhoBC+ks
         Og//xTriCAFCqM5teiC72UKPZNhvhEGpGz17h19mHTQG0xlrM7M4XnawL5iJLCcdYKQu
         2SDvbBN9JCuA0RCy3sLaeVA4J/A3QC6EOaLBy2gqmV08g2Ff3FKh+pF6WlAX44ckKpYi
         b6GOl4zEDVzfsS9jYyIx3lr8Gwssz++HFZ7dg9lZRaHFk6Ft4WZFA0uqP/yKxbVugF1/
         G31w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=J7sXptxy/OVtQPm4oz2sCDzDb73pwRMt12IUrsyqk+I=;
        b=zvS3XZ8ri3qbjh8JBX/c+uPkzh63lpxEcH6N1GC0l2UJpSbP5b0Bx6WbU5F/AugyIf
         JwfzBkAUA3hoU8lQ5RLKutWfm+kXFC1bF9JRf/5fO1puMcdLx/wVV7bdus326AlcXnmG
         OVN5XXAJ2GIV1VuU2jlVZwDK5W35BwNIP6ITEbgKe29Q5ca9iV8EotrvRgaOg0GWrF6S
         x+KRkaCy5SYjnPmPEzVZwunmf/dgIG7r3g6dgGdD4S1YavPGhGnUh9gYbjDfGiqwNvgn
         l8Rj7SP9saJF09Yy9okXRUzezdA4Z6tXPIlF5pZW4xW/I+77svbs16HqGPuCkfVhHStw
         KV4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J7sXptxy/OVtQPm4oz2sCDzDb73pwRMt12IUrsyqk+I=;
        b=SelLCkvucnechd3eBRHu2QNnw8gAjlr/Ze+zyvauA52rMxRBPq40ORsg9ma/EVTXO7
         bXUNpgDPAsM2xlwAeVyP+wlDLnOuXo2GRiaDIyKvvMFPF4z4WwtWqkV7DCbJCRmuIvFQ
         aLBBJghq+qcr5CzNbSPzCWvMY+b9kQsVRJjhY6mgMSObdtg7hZ+LXVV60RCGh1KgWKZS
         tVW0Dy8tP83DoomZH8rZbgbn6zX+1oUM+De0jlFXrI9JITb5xq4+WeBaaWQvPGydlzYc
         KVqxpMndE3CZ5vm6Fbd6DTMD31CHxhRwL8tbfqKPB4GPl5SXL38kNUdiyHX1I/cIzYKh
         Sb2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J7sXptxy/OVtQPm4oz2sCDzDb73pwRMt12IUrsyqk+I=;
        b=MhW5y/wVB4RmNF8caxwfE0JsZnUdcjFmUU8olp02B4rblS3KEiSN0C5PXW3qME1DpD
         VfsT2c6skRpdWmtLTt/7VgfmYnQMDM4kl6iR4HLxdk6LSv08LUv7gqiSHSoJhU8VSiME
         WzDRrmq5wHsvnzwSCipEmBNuAawdnH0CMV73XNQ1Ft5pe5dNB+ls1w/kCJZbElC02WSA
         MDDOsTyPaNSm6uPANwx5ISAX99kgm4cTy1gZ38wBm7UUEcIyJPRzkhQBszGUhN/nXF+R
         7NgyBWFZOFPCjgzBbt5RqXYJIE1QvONvKN+S9cQVys17mndKDUcCCo4beKSMU/zzhC8c
         inLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXv0D1z9BSySRunP1qJmlimk8z9M+PHGmnycmv3vIP/JarZkujR
	641aRpXCh8bJX6caWELucYg=
X-Google-Smtp-Source: APXvYqxX5ob9k/ap5hr7rQrvr9S62tR15F3DKkmLsL7ue4wUmC9380hErQnxlaUSHbUFZ/7YkBHb4g==
X-Received: by 2002:a37:4d82:: with SMTP id a124mr53332799qkb.72.1563985472890;
        Wed, 24 Jul 2019 09:24:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:32a4:: with SMTP id z33ls11789008qtd.13.gmail; Wed, 24
 Jul 2019 09:24:32 -0700 (PDT)
X-Received: by 2002:ac8:750b:: with SMTP id u11mr57012721qtq.23.1563985472586;
        Wed, 24 Jul 2019 09:24:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563985472; cv=none;
        d=google.com; s=arc-20160816;
        b=vF5AvFPdRYuA7cHKYm5yX0abrWs0sV/EOVJKqtEvcdyTgaxJy8tm9b+iSvNUkj+ma5
         r2Y6mEUlzh0TiOUbc2d8+B+HrykwvMnoyibdTk1BNPPjgkuxq2YsjVtlddQD68fvi9bv
         Sjr45D+xGPZJCsOHm02aZv6LO86HzXfB2CyT22XIyf8Hr7MbcJYsmuO7MoDG6VRzGM0p
         R2nb2QJp17S8rjHskRcxyrvtIKfvxZIvmtXWvWdocZPie98/kUYoYarwEFE0fE/rmO/8
         jGtpI27nlwDw4u0KXdtREA7uc3tXplYrno+E8jhY5holob1Ov44FfL8xQkyApr/VzHDm
         qFXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=a1Ihh0egNPcQGPuI20/GYL8q3ecNw71BsrZa/jDUJPA=;
        b=ojnFQIXBuklgYTSpX6NhapKNLGm6GBBJP9+kkgTk6PeChcX+2sVDfbjrYXJpscedpo
         +5Lz/k56ot5BAUXvn13oCUbg3Vj9IOTwgjd9BwX+8UiLuoaM0i+g5Qi1dgzLN+lsqBq3
         djIJHD8Qt0ufhBJU2B78G4xGQkWFfFxKBYBuz0HpxWIVib4RMlIVEDInknl+ukieGm+E
         pBYsivAV85Jr9yLIBEL9tT1rnckzY0CWhyS3k/CA1WQi1F4CD0OUknA0sgR+fjXbsC84
         9ZD8vAhMIft/FhlAiav+MMvHnTGZvPPtMCNWKdFsAtJDelev0w2qgi8FzHd/g2F67JN6
         g4aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id c79si2106744qke.4.2019.07.24.09.24.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 09:24:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Jul 2019 09:24:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,303,1559545200"; 
   d="gz'50?scan'50,208,50";a="345151368"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 24 Jul 2019 09:24:29 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hqK44-0008x4-TE; Thu, 25 Jul 2019 00:24:28 +0800
Date: Thu, 25 Jul 2019 00:23:53 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [linux-stable-rc:linux-4.14.y 9989/9999]
 arch/x86/events/amd/uncore.c:222:7: error: use of undeclared identifier
 'smp_num_siblings'
Message-ID: <201907250049.MTdOaCeu%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gr4qs4c7srmwcyxx"
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


--gr4qs4c7srmwcyxx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Kim Phillips <kim.phillips@amd.com>
CC: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
CC: "Peter Zijlstra (Intel)" <peterz@infradead.org>
CC: Ingo Molnar <mingo@kernel.org>

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-4.14.y
head:   735ae2998a0c82f33e7e9009cd9ba9c500881251
commit: 45f71f1da911786e7ec18a302a8e29ab05973bbb [9989/9999] perf/x86/amd/uncore: Set the thread mask for F17h L3 PMCs
config: x86_64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        git checkout 45f71f1da911786e7ec18a302a8e29ab05973bbb
        # save the attached .config to linux build tree
        make ARCH=x86_64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> arch/x86/events/amd/uncore.c:222:7: error: use of undeclared identifier 'smp_num_siblings'
                   if (smp_num_siblings > 1)
                       ^
   1 error generated.

vim +/smp_num_siblings +222 arch/x86/events/amd/uncore.c

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201907250049.MTdOaCeu%25lkp%40intel.com.

--gr4qs4c7srmwcyxx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--gr4qs4c7srmwcyxx--
