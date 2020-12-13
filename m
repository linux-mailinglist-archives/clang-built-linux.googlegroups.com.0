Return-Path: <clang-built-linux+bncBCKPFB7SXUERBQW53D7AKGQEC5NVD6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8708D2D8E25
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 16:09:55 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id h75sf17799230ybg.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Dec 2020 07:09:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607872194; cv=pass;
        d=google.com; s=arc-20160816;
        b=cLFNdxRD4Mb7soecDPJnj09idRl1rxavIiqvgImULspjhDaWDvGFDI0lF+2whJkbl7
         AT3CGBC/H9R1Et4E1/hN9pv4/WmC5Y6HrIHOInIG/5NHpMk4zu70+p5nZnHz7RnLDuZI
         WJ5L1UsO0EKEmWB5xXh7WWFuUjnK/QaxXh1Svw5GesLnDIJVRAhQtkgUdxzB6d1PBuRs
         CleIvalK0gfnyOnwEALT5iBz8PIc0V5pZZUmRqNYc/mX7sISH97bbrSh4R/2rrMNon8G
         Mo/eRyWRMB+jIod1j3PZVnxga4WEEAk2ybqsB55pdEXVLnV6CCpmGzY6dRcX9ZF1k3Wn
         +T0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=/3tygUUbwsMz1GGaLmDnso2vImCvP3l3gQYqaBcNEbA=;
        b=fjK/Kcvi2p2oWcL4Tfeh32C3bE+WTqDA1zDzgSHriRIMnP4jQ3TDFsDDG8E0mX4CVn
         aUnL9alljennfDEQNHrR4YOo4xgmdu5f6q5gYFv7W5N7ug36UoQU5qgNdAumY9qn3kfP
         5iH+41jk333svsqCL1NJgeHp1zKFQifM4nDSsnxoJ6h+kpNUXsZAwrzwGmhjxbyD4Xp9
         4Jx/eyd4yY8ybo8w3RI8awXl+PZ1lXU9B3fbPW9ZN9BwDUYspMvu6+0Vy4kiqYYgkJsU
         WYFCASzgD16WOTX3GoN93/qeYq/ZM9GRRLAV48dGWbx5Wmvrq7VO1Yyu02tJP2Wjy5jK
         pi9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Ckc/ZdUq";
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/3tygUUbwsMz1GGaLmDnso2vImCvP3l3gQYqaBcNEbA=;
        b=NP6pwAsy5ydpQcDQq9Z8gm60TCQJXq1TAyZZRZl8fGVOeRPFqIG6mRCK4ohzJtqQBU
         +fJWnFBQcFLdfpdmN326450AGu+dxMULGOG491qjAq4zwJpxRccXqytYF3QBoIhuQhyn
         UCaIbRnG43z9l2wtdvBTwOZ5XvF5VHET8LdUX22b3x366mVKETAXKbjUZl3OoBczGsc2
         sWHk/OTeh7uIrEGYRJjahsooQB6ue0TSVp5A9H6JlYL1M0imqsHl1hAsbKK6g2qM8ojG
         +f1ZjOOPpsA7p2LjFg5Wuh9dZKWJtyKZBHPmTPGsNlrqmMt25El62Y9ZMp3dDlWbqhCg
         3ZRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/3tygUUbwsMz1GGaLmDnso2vImCvP3l3gQYqaBcNEbA=;
        b=eS8uQ8uTmoRK5FVArD5bCFHE583mOm1ZbKcjd2ohPYVuiXsLeA+9kO/CEsAA6GJjbn
         mHNyXpAO5p7xCzgo6zJ6qmOdECpuq1DbDZsuodZgYAWgT8eBa5PRz4JZNboJXPwdsqZ/
         D3zdBbw4bYcAZjL117T/16hvapW8GyudhCPZJ60isRMPN7ckXh1D1jY44QahjyJgK+fJ
         02A0HcJF+e0MLAUDmW3zbomdAiou00V7YZxCRUC12mpHOlmDnC4AylRYNn51WyccTXI0
         dAv05FZiQNII8eehhSmnaH3CxuxV4wUcrcMIYVvfcH+EFAx8C+0jtAEcE1+y+LBwpTUK
         G6pw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324bDr+ezGOifCA+OGcoikEMiT7GpDxnbEWLN/tt+HPz3M1HMfb
	UAQJgVTQKGC/ecE0MQIXttY=
X-Google-Smtp-Source: ABdhPJy2GQKa/U6OVBXdzVR3anTb81Rjz/dSGBTv3CG1wzuzFX8hWioWJPiwEihAN6kCAptKgquHmg==
X-Received: by 2002:a25:4081:: with SMTP id n123mr21638239yba.237.1607872194409;
        Sun, 13 Dec 2020 07:09:54 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b581:: with SMTP id q1ls6761695ybj.6.gmail; Sun, 13 Dec
 2020 07:09:54 -0800 (PST)
X-Received: by 2002:a5b:b45:: with SMTP id b5mr31355413ybr.355.1607872194025;
        Sun, 13 Dec 2020 07:09:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607872194; cv=none;
        d=google.com; s=arc-20160816;
        b=svOvhlJqVVQlBNfJc4vWn8LK3lsEAB44EDymOerBJWqfq4ufPpPi23tNJid9k1GBSQ
         +7joAsy4+M54yC3gP+0pWtapfavGY9u9G00vE1kXkO3mV4dmcj92GYUNfQKxkMihWooE
         YzC38LfKWukhXmnH5axWEegckT+os5Z1t9EU/6LIh/3AuVr12qfi3b+RhnvjJKT7Hd7h
         EnySPfR9JIS630Lv7Sj6GHfrU1/Q65TpIsxAApwXerG5Mx6naItaaq5r+RRR65ezbyFx
         QfoU4lkikTk2Es6TC9p4qv5d1DkAFVQivR2RjKkLFxSzM1/xFNVDEjAxK4dAlduSV82k
         oSRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=UIPal/iSZ9+R48jbZZ5wjjvQIt/y+OdbRYPpNTUIVyo=;
        b=jZ5jYaazcTpHUnvd6z3Hy/08WR2GTg/q447TQK/PF96XepmCgrBOtqnwIFmz/6TMPW
         rIf/MsT9fuEMHgmRRR87lPFbBPXAcrlKNu/VtTmaqVaDCiMzSLNdSXnnT847yhdlUczL
         a9tJ5+86Z+uNSL2uxuM3YxGLOpmRqeNzXdYuAfvne0e2tGQoIFK3ue4OlvfuSqWJ9qeI
         mTafImAWt66gm5Q9BXgwbvh3BjlgjsEyU9kSlxVp7+XYZcAeXCGp9OIYlOyES/3mxHhK
         9bukQM5c9wzezsjVjUpE7QFVq9xJ5KDyTeJGUD7LZyQUZQlkdvoo1Qf0FLfcPDvVp7Kp
         Lu2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Ckc/ZdUq";
       spf=pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id s187si688443ybc.2.2020.12.13.07.09.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Dec 2020 07:09:54 -0800 (PST)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-29-WRlB6oiHNnehtBfWXj6Auw-1; Sun, 13 Dec 2020 10:09:51 -0500
X-MC-Unique: WRlB6oiHNnehtBfWXj6Auw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7FA2B107ACE3;
	Sun, 13 Dec 2020 15:09:49 +0000 (UTC)
Received: from MiWiFi-R3L-srv.redhat.com (ovpn-12-67.pek2.redhat.com [10.72.12.67])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A76BF1F45B;
	Sun, 13 Dec 2020 15:09:44 +0000 (UTC)
From: Baoquan He <bhe@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: linux-mm@kvack.org,
	gopakumarr@vmware.com,
	akpm@linux-foundation.org,
	rppt@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com,
	clang-built-linux@googlegroups.com,
	rostedt@goodmis.org,
	manir@vmware.com,
	lauyiuch@vmware.com,
	pjonasson@vmware.com,
	rajaramv@vmware.com
Subject: [PATCH 0/2] Fix the incorrect memmap init defer handling
Date: Sun, 13 Dec 2020 23:09:40 +0800
Message-Id: <20201213150942.20990-1-bhe@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Ckc/ZdUq";
       spf=pass (google.com: domain of bhe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

VMware reported the performance regression during memmap_init() invocation.
And they bisected to commit 73a6e474cb376 ("mm: memmap_init: iterate over
memblock regions rather that check each PFN") causing it.

After investigation, it's caused by incorrect memmap init defer handling
in memmap_init_zone() after commit 73a6e474cb376. The current
memmap_init_zone() only handle one memory region of one zone, while
memmap_init() iterates over all its memory regions and pass them one by
one into memmap_init_zone() to handle.

So in this patchset, patch 1/2 fixes the bug observed by VMware. Patch
2/2 clean up the inappropriate name of memmap_init(), memmap_init_zone()
accordingly.

VMware helped do the testing on their VMware ESI platform. This patchset
is based on 5.10.0-rc7+, master branch of Linus's tree.

Baoquan He (2):
  mm: memmap defer init dosn't work as expected
  mm: rename memmap_init() and memmap_init_zone()

 arch/ia64/mm/init.c |  8 ++++----
 include/linux/mm.h  |  5 +++--
 mm/memory_hotplug.c |  2 +-
 mm/page_alloc.c     | 22 ++++++++++++----------
 4 files changed, 20 insertions(+), 17 deletions(-)

-- 
2.17.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201213150942.20990-1-bhe%40redhat.com.
