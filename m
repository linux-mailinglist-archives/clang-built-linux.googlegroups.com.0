Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6VKZLVQKGQEUASJS7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 606CFABE94
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Sep 2019 19:21:01 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id 5sf8475136ion.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 10:21:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567790460; cv=pass;
        d=google.com; s=arc-20160816;
        b=eZ8puuR2MhCe1vbyvlvAIe/WoHR5M3ttVBqApYOaksU9lKfNQES0wXMKBEYbWJYhua
         Hzwy8Hd/F41hq/ZrR+g09l+8i0OhrTdHUKDlEA3FTEP2//cjgYhIIEfb1idVSGrJwVn+
         j6YD5M/x2C4248TW39ZUuS8Zo/lsLHAlfYlLlE6rogHyOhH13Rv6Qq6c0twpPiJk5H2o
         AYg+LUqm+6Q2OeDpn672GpMZroo916uUBWIlEUMnizSgNxcMn3Bf3uhNz+T/bZZIWhVK
         1unf15+2AMmUaPqo3Us5RKO9+0xXuatu+zYGozrwaW3ZjYeL6OGbaP5A290OLhmuM9xM
         wZ7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=wVV0P6ztK0bHSCYFNpVLyFk+XS0ak2ALlD2pDbq0vrQ=;
        b=cqt+pXLf22HFS7dy5ynOjHotsM1onTucb5UA6vPY37tVvoadDRojebnpHRG9c8mBUK
         X9h9bBP3xrdojoRAKgLi+wBL5hKPb2ZsldRZ2vLc3eY31AdmVE/OhqiQzGKjnHPo0GV0
         SDntuu9vJGsPwFyDw3++MGxKUFKx2ZQaBirV/7Sv1XKFGt5u2SebTmFdK+WdCMEdxYdI
         +CEeKK5sO7SFvQgnkEEyw3htY7JG2359xh+ZdlzLe7G+Uey+q1fVKT+Sj/G5Isrd34k1
         1EinLDdTXjEFd8z+9RQmu7aCFy5t4neYuXVe2U5SbpQL1YpFe9RzntTguAYA0lqSw91T
         wMlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wVV0P6ztK0bHSCYFNpVLyFk+XS0ak2ALlD2pDbq0vrQ=;
        b=l2a6f3EFGGZ10QTS2IbAHcVvC5c985GxetmlX7/WbHm2ajsfVkJPEplEAUmQK4dfgJ
         ZHvM1xNZrPmA85dCS4e1FtFL+PYntEwLtHOM/XAOa6tZ5SKbnNEhKoBaQJGBODuPzO28
         cCssgjjTjdfDdk1OGNHRMRFeXCQ8YGiemi1NQnsHW6wQ+1hvR0oJq0al6b0QdsnvYPIp
         NvQqpBcXF+zTtJJ5Rm8kRkhAMIMLtOKsckSGerWsyCHi8ksoGaKIQjScOuhne8n3ofs4
         6R8VD2LrVwcwF+cgTY42UubvQy08b1O5KItjYEETAIPosBwcayapPueLUI2H48B6Efe4
         F0uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wVV0P6ztK0bHSCYFNpVLyFk+XS0ak2ALlD2pDbq0vrQ=;
        b=rVTHhX3XROtu5LSQJywUD9sIDbnEA3J8AhkR0+artxhVhCRrZ6Y3fUqchUGO2kDz+r
         06Tx4f0eWOTM0qYHx7K65cx80ijOZtoBmdIaeFwAy3KhF2S3JoZt4tg1XmWq1gAb4EpN
         6wgABLmDz2YWCeqce8Q7UWlnNdDKuI5ya+iqqgLlsu9nrF35OgxN+PTinQ15D2IH5y6P
         DDUjb/rLNKRKbycuWDlMeZNcV+6ytrYbt5Mqlllu2A+337pp+1vlWJPBqAN8STDyNLuc
         xSSmlS9HwMLd23pdiVaC7crMTuFWE9+sp4DfFnZWtNMy8rJkgZ/rXaP0WANzmz05VTig
         Bklw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW/mjRZQI/zNeQKVCt6mZL42/cxZgfbHTiUBdM+D/jL3XgSyOEo
	E8avkpL0MpiexIXlH1ZfN3c=
X-Google-Smtp-Source: APXvYqx/JSKGzkgTwaQ/IerJuaofA3O7Xu9L3coBJ+fJeWlfWXzkSxqsetVRWe/nhWp7EOZd0RzewQ==
X-Received: by 2002:a6b:251:: with SMTP id 78mr11788317ioc.23.1567790459017;
        Fri, 06 Sep 2019 10:20:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9ad5:: with SMTP id x21ls1851564ion.1.gmail; Fri, 06 Sep
 2019 10:20:58 -0700 (PDT)
X-Received: by 2002:a6b:fa07:: with SMTP id p7mr11854344ioh.164.1567790458692;
        Fri, 06 Sep 2019 10:20:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567790458; cv=none;
        d=google.com; s=arc-20160816;
        b=NJGRHejT04GFY/NvjR8IYZxB8flJ7CIe7OkTtJ1R9doUcoVMcz0Wyg6ffKnTOojMrf
         yuqAIAQ+nzNhBxJHX6b7Aq7Y8+E8SCi5PL9NJfKDLAVL6bbbbcDwQoggiA31lIEEfP6W
         L8Llswls+BLqkaUKwNibOIUhiwYg74p1PqUse3VPNrZKR0G+L++QPOxNigZQuE5jzTfq
         9a0dgjX8QlFnWUo0tnphdtLv5rp+2Od//1Lm54R5t+XYqYL7sKRjdXpFvOzQxGqPazgf
         cBavGx7gZT3Q9LXDKSwq5eQ5hDF0SdhPjUyVAMAENtYRkhmei6G99NRb6knLexDVGITs
         FKjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=EJf/1Nftk92zFAgplairTcis62Uojop7cB/Oh9CfFv0=;
        b=uJ6rjMOVubym0eKGHihq2SQNgSTiBJB85sWzBORkSvuFyL8SuUp5LZlg4qszDQA6B8
         KSNXeYrxi2kl3NOTRAo2qepygjHVAC38/F8peGO5UIvVA0b7V0/69RV1ncpqkx4o18c3
         JCiUypkooFxig/h8e1s+9BcssSajWH90wPkV8l8xHrHN1ZjvWb/BO/buv4LvgKQpfgn3
         O2FNnydPXZjS+SWnXnmGZpHG+mxEfDTWln4JP8YH9eqGpsMZ78/zPsj9fVqvHTa9kTgx
         +ehQ03GzUPmO08ZGSDz0Ku9uoINYTMAw6ZfsBhGRto9LlflxTN6Kwh0lb+cCkcBvHRGc
         lkyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id a26si198261ioq.2.2019.09.06.10.20.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Sep 2019 10:20:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Sep 2019 10:20:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,473,1559545200"; 
   d="gz'50?scan'50,208,50";a="334950555"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 06 Sep 2019 10:20:55 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1i6Hup-0007aK-4l; Sat, 07 Sep 2019 01:20:55 +0800
Date: Sat, 7 Sep 2019 01:20:06 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [oracle-dtrace-linux-kernel:5.3-rc7 3/20] <stdin>:1514:2: warning:
 syscall waitfd not implemented
Message-ID: <201909070154.y7MiDK9U%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="tdlnesffaehbkqpp"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--tdlnesffaehbkqpp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Nick Alcock <nick.alcock@oracle.com>
CC: Kris Van Hees <kris.van.hees@oracle.com>
CC: Tomas Jedlicka <tomas.jedlicka@oracle.com>
CC: Eugene Loh <eugene.loh@oracle.com>
CC: David Mc Lean <david.mclean@oracle.com>
CC: Vincent Lim <vincent.lim@oracle.com>

tree:   https://github.com/oracle/dtrace-linux-kernel 5.3-rc7
head:   638c60e20d6bfd7266e97426c94eb6f14248c647
commit: 24b5165a1c42d6c1dc28a894113402a420672122 [3/20] waitfd: new syscall implementing waitpid() over fds
config: arm64-allnoconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 24b5165a1c42d6c1dc28a894113402a420672122
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> <stdin>:1514:2: warning: syscall waitfd not implemented [-W#warnings]
   #warning syscall waitfd not implemented
    ^
   1 warning generated.
--
>> <stdin>:1514:2: warning: syscall waitfd not implemented [-W#warnings]
   #warning syscall waitfd not implemented
    ^
   1 warning generated.
   7 real  9 user  4 sys  186.06% cpu 	make prepare

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201909070154.y7MiDK9U%25lkp%40intel.com.

--tdlnesffaehbkqpp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--tdlnesffaehbkqpp--
