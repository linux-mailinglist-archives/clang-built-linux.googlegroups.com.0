Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB66Y33YQKGQEEJPD3KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4FD150123
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 06:15:41 +0100 (CET)
Received: by mail-qt1-x838.google.com with SMTP id c22sf9144470qtn.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 Feb 2020 21:15:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580706940; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q7dSLvYOH7CaDu5esiesYPZdm9SgVWF0RRM5ueJlLLziZVO30hqgN8nNkN8Mg6d2MN
         RbfflkvI+6gg3XxxmTg82d8LYZUHUOczCGv8r0bgOPtlXUVup1dpjOOTbi9NQQ1DW5Bp
         crKi6oU99IXG6TVzjqFvIG3alQcq84P8pQMZMtQOxB7m22x3hnjyBdysPfi7pqukCOnz
         Ln5woLMNT6d8YiERPZtzqFJnoRLvtkKEIJ/isppN2/1GcPUusxxRg3fv7v6ES0S07y9P
         EkhkV/Pu8QHaUbcvidXQ/ZugvWnFsW/CD9PE4XBgcfV5+LY79zErkZnRr6s+cKsa4U7k
         YJXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=0aRuxD306dwZnMOJVzVr0C05cSCcx9tZXd8urqfpFBI=;
        b=qwOIPGmNxeKS8oIDH/p5uJAEEHEwwTC2VtAS6tF71XZDRMc4SlZJrBf7/xBVBhWuje
         Z4MdCqwZXRfD26AMw5wcxdKyjnPZh5gQrEjX+6dD7YAAic2lMvmPSuig2/UAnl+EmRfb
         zx+4+gVISj/HeUUpYgOyxZy315E/Vhs3IWjnshv1g33B5ZHtTkTqbZgwgFwBgTM2vO/Z
         H+cO9kfiwFlLKJ4TUHg4Vxc2R12X7ZGCwlfhjiM1nPFOejxJkca3jfhwbgLqpEocSU2+
         9U2L0+kmfrfPrYP508/cwzaDnyxAioKyPWRdAe+fE/ql3L6G4QmK2VAZ9KEGygcLPHXr
         RmEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0aRuxD306dwZnMOJVzVr0C05cSCcx9tZXd8urqfpFBI=;
        b=BPg6lTvIhA8PsXgyfUWDc9nj60tDIot2lt6OiCPZbVWVq7bKEoDQyxga96bEAZE/vC
         9tZI9G4czH3j428slY3MvJ4R6P9Dgmt4OOtk74TIZljqqnsvb7YVAqE8CfVSfaDKl7WD
         JpB+71MvfV+uiiSn96qXYBm7HmBm4wNqy1UtM9W7DeaLPw+fwBqUjnJWV//GwaudzPOe
         CnW4cVY2oo2NEuW9GAhPSYItnMMMj4bYorIJY/508Z2OzEchVGNxEW39LjuKszK/Zoq5
         5wARce1ncBHi5+04TCiqDtszx2eMxW1QTM7GyQ7O6G2y3pOdqgzf+vHOqYZRwNjZuKAe
         fRhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0aRuxD306dwZnMOJVzVr0C05cSCcx9tZXd8urqfpFBI=;
        b=ipYB+aDJnBvpHygQgQdE+luqpGkAJPw6oNUOTCvLXs1vLMTVhDMlhZGAkxxbNhJUHA
         7TIOFtE3jWNfC3aVENd+9+PX5a4lkFUuU0dGZagXreWxP8y/RhOcRf15dlOSdNu8Avuf
         g3call96V0vkui2xjg7+8Oy6LMUtT41cdnckt34lS5NJ77aK4JWXhnOmLWbKPCkrNzMd
         lBZfve8OCYzAoft99y4OiklIGo/5sS/afwDpWTSCP1jzqxny9xZhQPpukaMozxlDhWfi
         909n+zh7nyChlP0MQbz6wj4hlsx6pzXz6iMM+8QGzBtwcmH9qYLoi1HA8pKUXFmcSFS9
         ZwrA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWhVslCWTcGz9Wf4kOMvnFO6iJ3eXJnqmfQbv9teo0YB/phWbYG
	XG1AXhXgMXWfaiVMIMasqio=
X-Google-Smtp-Source: APXvYqysXR5uRT9kF7qNyyfxVtfBeKZC7kE2i8h4hdjXZ+XmvRl1Cu5XBeyFZIJPNGeOuCH8GJsv4A==
X-Received: by 2002:a05:620a:108d:: with SMTP id g13mr22126852qkk.121.1580706939600;
        Sun, 02 Feb 2020 21:15:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9f92:: with SMTP id i140ls6572707qke.11.gmail; Sun, 02
 Feb 2020 21:15:39 -0800 (PST)
X-Received: by 2002:a05:620a:14a6:: with SMTP id x6mr23183718qkj.206.1580706939233;
        Sun, 02 Feb 2020 21:15:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580706939; cv=none;
        d=google.com; s=arc-20160816;
        b=K8HbZoh6E0XYIbyqNOBhKs9dSEv9LM99SnH0rcccIN+OzHqbzAXJl2lmx5hjLZVQlT
         8c53uWDXu9uRQnifn6Im3cvDFvuMLAZ56+pL2DJ9ZWC+/jiy8pXnUEUkXVXR6q4KNBDr
         WQmU6HgpoCbRI+VvEoCKmRmhFjDZVJFyCyV4wToauM0n5EWpu8cHczompwkA9VdgOnsH
         g0IFCIEZonRVtaaFewwVpn2nDh6RxSmJZ3c1/yaXGMAYZCoI8eM9Jkms6JjFAMQ1blZy
         Vnmkjyhmc24urH8LLH37D5Z8rLJVemPMFzsYP3CnarYTN9Y/9aPE2Xb71zsL2BTcbUf3
         O5VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:message-id
         :subject:cc:to:from:date;
        bh=zcqWeWJeRP2qdcRKm5rRVpFV8h2BIZvsk7C74ySBcb4=;
        b=azu2zDvMUD5/8ql/MfeX5KVix6M5Cy7C3QVv2VTGlZqXypZR2iF2y1Fenaq5EJ4G8k
         LxZpLdc+cc2JALjas5pnYyjC+oFrihz/g/92ec6tERt0xztKoyRiBJRlpm0S2AHX9MAX
         XCRd4FKtDOg5bTUE7PNT7uSaMfEJHcMGJDKuIsCHlqUDvRahcOIpFxBm2LaEM82nOX7D
         z7N+efmgyPTYnXJN4GQB9gKQVSy3X9wvDHZ2eU0k5c26xfMDOn/9kecCOnE3mlpnq3uU
         PVo4aEc+WFkhkjLwIZEhJtshRgXb++f7/3EKLLt4wxdI6VId7ks9BnzqtJEC8MIT1jDS
         NAJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id c19si706271qtk.5.2020.02.02.21.15.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Feb 2020 21:15:39 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Feb 2020 21:15:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,396,1574150400"; 
   d="scan'208";a="310619564"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 02 Feb 2020 21:15:36 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iyU58-000H8y-Dk; Mon, 03 Feb 2020 13:15:34 +0800
Date: Mon, 03 Feb 2020 13:13:52 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@lists.01.org
Cc: clang-built-linux@googlegroups.com,
 Nick Desaulniers <ndesaulniers@google.com>
Subject: [tip:x86/misc] BUILD SUCCESS
 8b7e20a7ba54836076ff35a28349dabea4cec48f
Message-ID: <5e37ac10.G5XgfNxnnw8DBw52%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
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

BCC: lkp-dev@eclists.intel.com
TO: "x86-ml" <x86@kernel.org>
CC: linux-kernel@vger.kernel.org

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git  x86/misc
branch HEAD: 8b7e20a7ba54836076ff35a28349dabea4cec48f  x86/decoder: Add TEST opcode to Group3-2

elapsed time: 16571m

configs tested: 4
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allyesconfig
arm64                            allyesconfig
arm64                               defconfig
powerpc                             defconfig

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5e37ac10.G5XgfNxnnw8DBw52%25lkp%40intel.com.
