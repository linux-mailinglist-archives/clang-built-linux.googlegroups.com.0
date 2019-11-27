Return-Path: <clang-built-linux+bncBAABBT5367XAKGQECVHH6CQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D1B10A8B2
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Nov 2019 03:22:08 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id p18sf2183817pfn.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 18:22:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574821327; cv=pass;
        d=google.com; s=arc-20160816;
        b=rxc6dPYtyLG6yCmQG9dN7iumvNqbwbymSt/p8r2UCUnJruxs0HAnJ0r++VmbyVstrn
         WxANE/Z10j2ZDNJS25yeJbsmxXgOz75ffz9jUND3+YDb0ktrkSY66hujXrhlWW2UN0la
         HCYhaLRHoycvjAr9cQJRJR2xAqzC3oHMXYlNthK03cx/wnrmFKGNwZADVCzIrKXcnGeC
         VueEnysSY05vOqukDrKZNL6PCC4PLYxgX8p2fcaNKryvXcTNUfcVnvq4YbcD21meqDiW
         59bRiIS942QLUVAgRKf8ETKedi5WIvuk59RyVjgH5NhfQCdS81Khwfkp3iWJGAxnZ8yb
         MFxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from:sender:dkim-signature;
        bh=fHjnUr0hWM0e/G+Zm+O9k5MtZPkiOSlbIa6eRKwdL8s=;
        b=bzXQbwqhXhWNwOjlfO5XhFFeJiI6lOFTcMuvGSKrbAmkXuNoN+cR6PYF2dJsi1gCut
         U0AnBXedjAT8EW27FdCTrEZXEBy2yfHSfgoIa6bsmpphyj6y7divtlIV3LZwRwaMb3sc
         ispoue/H3I3iyiyNgdh8MtfIQYqCrJCzgr6dvuZbYlK6lKa8tpAd9vuJkzONrw8sZ56+
         ZF6CsA5V2THPxHMRPtapTYH3Dxx8nIdaZAyehSllZQC3KvDoqsWHN2hIyR3Iw9it8hSY
         KO2KwHfO8MDzXGdVE2kSXmoXoa3286peXiqinKB4aG4vxUjs7XUI8PvOdddXwZybsiDp
         up/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=linmiaohe@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fHjnUr0hWM0e/G+Zm+O9k5MtZPkiOSlbIa6eRKwdL8s=;
        b=ta+7tU2YPVHEb5LtqPYMqkn7YuvwbsAhTYgXY0KSbip7rFg6Kyn+aFXfn198P9zI6J
         Dl1Mb0/spKweTjEeZt8nd9tMymsZLaBleVWO/KXyREy7Omv/rPLv2GTryt1tE/zBgE5w
         e7YpBfI8+oSgnCCv0Kdflr2r3zv4cuGtlQKLkx03v8k8LQnfmqfNSzFK2IwltdDCyNUi
         fQWIxh1K8rEP4W4dqfrs94yvqwSWI5tfBgKq0QSAvrPFfcaccNM3IRDoSuJphV5tDhtN
         MdCwVJrSSKLqMsVZhzGEzO7UcU4jK1TUqCmTfSUkLxa7SKY8QyIzQ76DR0OZ6ncTrKKW
         eXQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fHjnUr0hWM0e/G+Zm+O9k5MtZPkiOSlbIa6eRKwdL8s=;
        b=blC01nthlFM51dUnFbwpRK/nhfQF+xH0/Nhn8KP4JSundtzZ3iw9brMtQWD0yPqAV7
         z96deAWBPR9ldNbYWjP7Fa10Hkgwo6uxqzCjyFkHXaj26tAy1ZuhuxeSNyRJZUdzu+pM
         AqkuWakTFwDbHV4lXO7zkX7RX6YCbeb44af75EE1sOBOkqZdehv3y9IOQLRwXqYmDmlx
         6qfWfC5k7VZR3dfhzLpVKDOSCAcACxyFMFDAmuS5Yruk10IM+WprPKM7yBaxGpAa67L0
         0En6ykZIIc56hqRxkToAAJxWY0dHkrT2L8EMoYWYOQVPN1l37X7Rx/I3RqVCjzBQGMvR
         Fbrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWKf0oZMgN98PPvFOn3TnaODww7EucBeJZSbnYpFvpwpo/8rffg
	TNoS+fZYk3rTS387To4cYdU=
X-Google-Smtp-Source: APXvYqwrGnkcpIAAgsKv9W4Czn/+1fU/MN672pzI3TbarNhA6KipP97YVEQLKOoxs+Ggpu+bcLq5sA==
X-Received: by 2002:a17:90a:2469:: with SMTP id h96mr2888314pje.121.1574821327107;
        Tue, 26 Nov 2019 18:22:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:f201:: with SMTP id m1ls5439105pfh.1.gmail; Tue, 26 Nov
 2019 18:22:06 -0800 (PST)
X-Received: by 2002:a63:6882:: with SMTP id d124mr1971485pgc.281.1574821326758;
        Tue, 26 Nov 2019 18:22:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574821326; cv=none;
        d=google.com; s=arc-20160816;
        b=JllSJHCB5O5tIVi3EUkpdwi0/x6lZF+Gz4eifAhEH6j48oVr1R/o9EjJT7KnMbtWg9
         WbF/rnWnAJwgNKGurw/Xfs9B5pVYPYNd9zjcOOi4BCub4Y49KSWSXlg64VQmW8h0g8rS
         ObawE+3CNj7HIfcg0Jmmt2PNvXLCuqCyfcIa0iubsqWRJ5R2i3DPPKpx88cJxO8PCCYm
         NkvYNuVj/+3LL3k11K5IaJQcRGS/BlCKFyLGbD7vxnyyRsHRyh7+zAqyVay91aur9Vso
         WfAe/oXXR56Ck8zN5QxGhJtbnlo9S/JwYnfbFQHdv/rb//A7y9lvXXW+/1kBHCK+BwgW
         uqDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :cc:to:from;
        bh=uzxCzFmJsm4BGuOnzk16GupPmbOMe+KIq03c3bgl7yA=;
        b=pEi264AZO1Da3fK3j347wIhu1cdANm6aR3cgYlK9Ak4h7LiqKryMX/G6C/BSlbhm7p
         1hqVZbor4jCAQ/Gxh7f6K5B8xpBCEm/Gcib3ALoiBreRz4uI6gvaREP8yleaMa1TiN7x
         qaY7J98BUDSfkLMHi+X0MZQy9eg5qMUU+We0ksQf3mO0jyUQ0z3EgsH/bW/TzbBKatbL
         g4a7YopALAPGCe0FOYK1fp3kaJE5kFvj7OLmC8xOSDd140tz0rorYNvjOpRHmnaGngqR
         LhW9M85T3je0o/lLG57rpYirqqcwbjZTyPom5XOwPH744DUZ3jKy+SJCAUweO4+Y9ffJ
         O45w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.255 as permitted sender) smtp.mailfrom=linmiaohe@huawei.com
Received: from huawei.com (szxga08-in.huawei.com. [45.249.212.255])
        by gmr-mx.google.com with ESMTPS id n2si614191pgq.0.2019.11.26.18.22.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Nov 2019 18:22:06 -0800 (PST)
Received-SPF: pass (google.com: domain of linmiaohe@huawei.com designates 45.249.212.255 as permitted sender) client-ip=45.249.212.255;
Received: from DGGEMM403-HUB.china.huawei.com (unknown [172.30.72.54])
	by Forcepoint Email with ESMTP id CA40AF7C76B9AB5BCBC5;
	Wed, 27 Nov 2019 10:21:33 +0800 (CST)
Received: from dggeme715-chm.china.huawei.com (10.1.199.111) by
 DGGEMM403-HUB.china.huawei.com (10.3.20.211) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 27 Nov 2019 10:21:33 +0800
Received: from dggeme763-chm.china.huawei.com (10.3.19.109) by
 dggeme715-chm.china.huawei.com (10.1.199.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1713.5; Wed, 27 Nov 2019 10:21:33 +0800
Received: from dggeme763-chm.china.huawei.com ([10.6.66.36]) by
 dggeme763-chm.china.huawei.com ([10.6.66.36]) with mapi id 15.01.1713.004;
 Wed, 27 Nov 2019 10:21:33 +0800
From: linmiaohe <linmiaohe@huawei.com>
To: Colin King <colin.king@canonical.com>, Paolo Bonzini
	<pbonzini@redhat.com>, =?utf-8?B?UmFkaW0gS3LEjW3DocWZ?= <rkrcmar@redhat.com>,
	Sean Christopherson <sean.j.christopherson@intel.com>, Vitaly Kuznetsov
	<vkuznets@redhat.com>, Wanpeng Li <wanpengli@tencent.com>, Jim Mattson
	<jmattson@google.com>, Joerg Roedel <joro@8bytes.org>, Thomas Gleixner
	<tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov
	<bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>, "x86@kernel.org"
	<x86@kernel.org>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
CC: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] KVM: x86/mmu: fix comparison of u8 with -1
Thread-Topic: [PATCH] KVM: x86/mmu: fix comparison of u8 with -1
Thread-Index: AdWkyNHy+cUOsrTJRk2lD/BPSadTkg==
Date: Wed, 27 Nov 2019 02:21:32 +0000
Message-ID: <141f8e0da70a400282824a09bcb56501@huawei.com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.184.189.20]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: linmiaohe@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of linmiaohe@huawei.com designates 45.249.212.255 as
 permitted sender) smtp.mailfrom=linmiaohe@huawei.com
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


> The comparison of the u8 value __entry->u with -1 is always going to be false because
> a __entry-u can never be negative.

s/__entry-u/__entry->u/

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/141f8e0da70a400282824a09bcb56501%40huawei.com.
