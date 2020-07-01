Return-Path: <clang-built-linux+bncBAABBKX56H3QKGQE3NLCD5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7239F210ADD
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 14:16:42 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id h5sf19695880edl.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 05:16:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593605802; cv=pass;
        d=google.com; s=arc-20160816;
        b=BjBJ15UYrlBcKroROO0dB0K29th915cWjWQ0Owh40tLXLKJd9qTouxUszfSPiDC0/l
         wrm1cRVlfa4+4jJaeV0chZSK2Cb8gnVOUA2DClXfOfmFDYz0BDIflKoM2aWDi89RC7Hs
         xCXi6FJa0RY4xrUKenMoBnJA5wFFAxzEe61xmg1P7OMV2xxbUl+qPcL2NDZRHSyJwxf9
         WYZ1cb4wLPeqikaVT1pZI19pCwsOt2IS7YVOL0uADM0Sfr8rqdCWJlpQjHMPsz22kRb+
         664YBduy71fLsgNupa+ToNY4eBv7Hbms06nFRHbeRc7rlJOLEn/CePdq/6JiBX5ZwH2A
         9ckg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=E36F6P6atEafu4heIbGYn0Z3nwhqDtXPKL/ROGgGDmA=;
        b=KyXg6wrYsw/aUJJF9eXAldtiBa6K0VFlpH0Dqh4Qt6sg3rZVXflCHTUUyqqFTsNjPe
         l4e6SAqa6XTnXwWq+cQ5qkjJuZw0CJmp0JqUrfABlSeaNpUvQtISzX7LyVBJkzCEADwx
         TmSEL735mreP1IEgp84HC1zGXkC342EM9ZnlcOsiaWKGRPcyggOY7/ruFyHlxU50d/ai
         2eKEVSRO+jj9MriesuH7jLk3aUbNRLVYTNjLApGnM4cjOEzsneBAckDTm0VR50SKfVP9
         UdPWaUAor9y8fNK9bfwQS3fhQoKIOPPZ4haNVRwg9qsRBTWCY4L3/fVpworZ1iErk0Ui
         u06Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E36F6P6atEafu4heIbGYn0Z3nwhqDtXPKL/ROGgGDmA=;
        b=kFNAg+aCPKDVdtbZ6HIyt6/cye7K9swzKP3rMfEEhXVe0o05rWPqDb9je4zSJbJAgO
         hhD8RcGDClfj8RLCJ0NEuRxCUZ4xBYdNYdb5/blpKTdwW+DAbwrcDZKMGZ/FR0tTn6SR
         qmR4FaB+F6fU3JEbROonCpqGvZWKFXYj8p8rcbiA6XDWbNwaLHDaepP2SArR8p4Yvpew
         JmYrwToOh2sieu0BN0kK8Aeeu6XAlTOdSkDGAWt7HmZhx0Frcm3HtDdw/yh0US2hvbPK
         q0phi9rYVqbxvdrbEfHz7tGz+U9pnmCwHDBVsvx7S5628V26MMK0Ps3rhR9HRMrCZYp4
         Affw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E36F6P6atEafu4heIbGYn0Z3nwhqDtXPKL/ROGgGDmA=;
        b=o88B6ycs8JKt2alX2dDJpkaM2qikbqeETy+7oNdEwyjqnAp8TCxFYj4ssySjB5LxeJ
         jnBog1WZ3qa9zHZpUdwprRP63oMi3+OoBrFZqql3ThRvIei6yVfzs2cdQPqvaqNSW/f3
         E68GWTZm63Xd3e3rg7I/Z1eqd2U7jZuYNQDoYVG4ySZqp05QvvzBlb6TkTW7sJ2s8LNF
         YPihXChwxvKI0I/Fzj99na7HOaGRZFIJrW9sDVcLBP6D1GPviBO3HwiR7CldOBnZfGgH
         XmkSts0V3UycW2NyFkQgRWx6060hP11S8kXWHK5am9+Ulyb0fHrSOai/LjnWo3b4I9gD
         JyQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332TuNNCy8qTvdj70lVhVWJh15g6NgoBFmLQ0HQT/d41jxRZBZR
	08NhlZteiBkzit02wh+rvNk=
X-Google-Smtp-Source: ABdhPJwTZgfWt7qdZblGB1pyas7lVRXHCVv8Pk5wNzhqUKodyaug8aoY+ZnjuMh8X3S9/tLc6E0SHQ==
X-Received: by 2002:a05:6402:1777:: with SMTP id da23mr28190620edb.260.1593605802235;
        Wed, 01 Jul 2020 05:16:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:1fd7:: with SMTP id e23ls1016751ejt.7.gmail; Wed, 01
 Jul 2020 05:16:41 -0700 (PDT)
X-Received: by 2002:a17:906:76d7:: with SMTP id q23mr22048198ejn.95.1593605801904;
        Wed, 01 Jul 2020 05:16:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593605801; cv=none;
        d=google.com; s=arc-20160816;
        b=1Klb1nQN/JGVsp58/Q73lvaWfsp5FT167y4jsyhiwjnvTAsViAhyugfRXcu8Cqmnl3
         1Shx1jMMXgM64YPDeZMeRvYygrZgLg1GPYvy4ovI/4SotNM5roIc79ZC537LPMExTWy9
         PnaCSrLaWTAtJjq8srbAqRvJl1R01PLF8jVkZ7pLBE9kRthZD3ma8qsSfIPVRuhD8zIQ
         iCwXSac/PxMzjgve5mR6Ptl9EBf1ZNLyLMym2dgKw2qKZBe6/C1EbuaV5z+q6bLte/DE
         1svyZnf3GtvXN7HOLvF65YBDtr8SbVhFSHRVR7e76TdIPs7eLOSHa1OSZv3DkOSA71SJ
         GIvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=dAh+WxxDPzEjpjee9TDlavUWGR365oUL5vB3QUYR4qY=;
        b=fbjtykLI6MggJ3IAcc0Ndkpw/3lYUwz0UitG5k7ypGHymceEzgi5KhrNAO3kG2ylTY
         PAdZeFYChTl87RuMAquW3Qg/SItgcOw8pd3LHHjLN5+PzgJK47BPSQCCsBlE5aAHdNVc
         aywvcJspmz3zt7oXR2pvxVsvXTOJM4nKiyvvMuaRrEjgRsAOI+onDJ47QKVCxP6vpys/
         ajze/iPapEZ2ZnG8EiSWhw1XaI+vaVkbMnKK62h8FkNnXwfZ2H3jbZneZHIc/EHc6PY5
         w7lhLn1PmMISBW5QHLfTijPlrrwjEYSOCNqx9R7yIwlYQ9YvBcDiz3hHjpPaa7hO/DOF
         IIhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id a23si401972edn.0.2020.07.01.05.16.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Jul 2020 05:16:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 0E133ADE0;
	Wed,  1 Jul 2020 12:16:41 +0000 (UTC)
From: Juergen Gross <jgross@suse.com>
To: xen-devel@lists.xenproject.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Juergen Gross <jgross@suse.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Stefano Stabellini <sstabellini@kernel.org>
Subject: [PATCH v2 0/2] xen/xenbus: some cleanups
Date: Wed,  1 Jul 2020 14:16:36 +0200
Message-Id: <20200701121638.19840-1-jgross@suse.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com
Content-Type: text/plain; charset="UTF-8"
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

Avoid allocating large amount of data on the stack in
xenbus_map_ring_valloc() and some related return value cleanups.

Juergen Gross (2):
  xen/xenbus: avoid large structs and arrays on the stack
  xen/xenbus: let xenbus_map_ring_valloc() return errno values only

 drivers/xen/xenbus/xenbus_client.c | 167 ++++++++++++++---------------
 1 file changed, 81 insertions(+), 86 deletions(-)

-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200701121638.19840-1-jgross%40suse.com.
