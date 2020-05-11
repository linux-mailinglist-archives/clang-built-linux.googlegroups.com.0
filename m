Return-Path: <clang-built-linux+bncBAABB2764P2QKGQE5KZCCZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 337361CD295
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 09:31:56 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id m11sf3177599lfo.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 May 2020 00:31:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589182315; cv=pass;
        d=google.com; s=arc-20160816;
        b=VhSFGRbhHee7isBsd+aG2Yz4nNSfLLfEcJLfqw/z7rL8LiBeHr4vL+CXPD4qHxika4
         KuJFpOn4RZ3sOf2aw2twyTggoDQWXn6ui+6cy00ahSJvMIeusLzBMlGHd5cuWH7ykiTU
         PSx1TYZtSA9sAebVDxe+f6XGc6uXtVdr2BlTeI3nJc87Z+t2YufRAedkyl9Xlil2rnSY
         er7ycV6MAiunqQlVVbeGwS+IkInC4HoPae7X9QmTV4sjzN3/DVotYs344jXy5/PFB5AN
         cETcCgNY+wexM9yooBag/Jc9bHcAz7rKqllDQM/EBUqGGTuPQpe3t0U4BvTSOP5TtojV
         okNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=oQmdaRt7r1yRhYHj5Nf2oeW4ci8yOyMAw5SPzna5AdM=;
        b=zLRM16AgsAOj+1brB3rn5I6ezxV3n5xVcDspYFQVOHJWFk9WHCuCQFn21fqmeGgmSq
         ldi7HYvQFNGK08XzC7fGVqQ2b2mWhXesrKBBOKUV8EbsB+QOz3wCrQKWRBnsGTmMY+3j
         akRLTYLbgSAllzgNbggAt9MJO0WWqEsA+J29c1klx5U6tid5tki1LMuKEv9rcziGyC05
         0YEAUoTtIxWLU3el6jQCTh5Omu5J2gOTlV8etrhdth8+N2CaU7btyGuFVL1x4ktZOGoc
         aAL92e+KarJv6eyyV3XfdZyTLGnEReAVTplVOqkpoQ5wCqWoW+4vOd5yDsd8C+iNY0cH
         u8TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oQmdaRt7r1yRhYHj5Nf2oeW4ci8yOyMAw5SPzna5AdM=;
        b=HHUtnvrZZZFISPe5KIUJWAbdRGiLf3HNQTBPh5Ld/yQCN8ASBJUZgqbjNG8XeJ4p+f
         iQzlCTjQOh8XIoMMNJqSEBgy7lnwOQnGFJRWMbvt3EZKJuMg/pi1OQ+kAAXJ2YghxQgP
         S1CGEhNzDawVZQDFA5iNsNu4nZCE8hlsATXToSM1Nen+qaA0Vg2Un//KeNLVnCrGo9RN
         5EvRMemlm6XS8XZxzPK6tXL3Nm5yEhqLkmsLEHMlIbJFCww2MhJ23Mkw3HeQuEXSfJR4
         kp69mKSNm898wRH08FozILRMbu68fBDhwa2fv5UPUe0yukyY6rH69eISK/f4TB+VoE6R
         GMNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oQmdaRt7r1yRhYHj5Nf2oeW4ci8yOyMAw5SPzna5AdM=;
        b=tZOEKZkH8AlYj96DF3g9AKEwAhWTX3dmmUPGV86N1GtYCOEmWNuJmMKaNhkOlIjeQE
         HQptkEtHoUu0zs/EfHk5qIy9yDByJkcbUgpPOYLKrH1HJRJ10boNEucE783Obbuy09JU
         ZWnWVq7hUPu0kR+vnu3OtjbCeQSjIu8+HowqQgzQloFIF9VyWNRGxSxGVGtXX9KlfljG
         uDB8XQTihU6fG7bHg8EjAsOq+46FfLcwETDhNBm4aKb9XWG34yd7nwRgLK/QYHaPuH9M
         6p02tTDuRNwfIFPgYVzImkahp5xdW28DbY07N1nhFsAvC392AA0QJ/eREOmgpIw8dE1C
         8Rxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ssvFbTnLvf0j/cD2U+nHig5IBVJlu8rSFva5FHULjNifokHoT
	uOzmN9ddGRY4zRF8Ao9eWfY=
X-Google-Smtp-Source: ABdhPJx1aLc3PbtJwZEhTb2khzP3u98DPBQiwlw8a2dfhNV5uUD/Fw5c4dEBWyacDBA3VxHtLBUDqA==
X-Received: by 2002:a19:700b:: with SMTP id h11mr10053744lfc.62.1589182315527;
        Mon, 11 May 2020 00:31:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:852:: with SMTP id 79ls1652327lfi.8.gmail; Mon, 11 May
 2020 00:31:55 -0700 (PDT)
X-Received: by 2002:ac2:58d0:: with SMTP id u16mr9787244lfo.114.1589182315093;
        Mon, 11 May 2020 00:31:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589182315; cv=none;
        d=google.com; s=arc-20160816;
        b=Zto2/hC0G/9J05b4MZ6sYngdpskXjeRyBTDLLII86ih3On0Fj+m2i8izXRAm+z6rFM
         3Fm2DODTMZcgRqJ/3IpDlkVhuKErPngUTm08VY9DH9/quLJ9CbaiOtkJBywFgxZmAbt8
         QttGLzlfksvOrXDvkxjnNrptWmWqiWnVoiyZfelogX1i6el4bw/oM98i0DeBgZGsiqBX
         wZjA2eOWdrMclfhvADSybO2RBdwsMvY+7/E3/Yi3Bjd8qxSt2XJxZ2zIu2idWt3Ni3Wn
         UsowSqtfgOZYFEKHfp39iX4kiVBz+WNhZX4WoFIL+hosNEN7RX4b6eSPgUPjRdjqXmOw
         UkSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=g1d2ygZfZGhaw/WXgQ9Ob14/34xdbSrJiiG0kU0gfTM=;
        b=mF2nw/Rl5qWvpzu+k/Xv8OgtCOQCiwylJrbY34JKdCzVs7rCVghbABhsIuJKiywOr5
         OHXu92g8o4ZBD/dQuCZYpyXcW8fAFXvNa0URr9oDs74GCxROVX4/S4Iq9J9KHd5Qtjrh
         OIUJYWyy9kSXvw9ivVYnIH0SZphFNybweWLB9i0zPHu0tajXk32DEzayYqAvvt84fyvw
         ezzheup59/m27licd5n/HkVCVs0el6V0JxlfQX8aejQYq+46kMd0UEfHbAnPbThjCo+v
         3FwCJCPY96F73Tz6WQoY3PVHGb/tAqm53N5JZDfzisR3X105ApXrNBcOjCY1JLsuyy4L
         AZ9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id q9si482452lfo.4.2020.05.11.00.31.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 May 2020 00:31:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id B0E8BAC20;
	Mon, 11 May 2020 07:31:56 +0000 (UTC)
From: Juergen Gross <jgross@suse.com>
To: xen-devel@lists.xenproject.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Juergen Gross <jgross@suse.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Stefano Stabellini <sstabellini@kernel.org>
Subject: [PATCH 0/2] xen/xenbus: some cleanups
Date: Mon, 11 May 2020 09:31:49 +0200
Message-Id: <20200511073151.19043-1-jgross@suse.com>
X-Mailer: git-send-email 2.26.1
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

 drivers/xen/xenbus/xenbus_client.c | 133 ++++++++++++++---------------
 1 file changed, 64 insertions(+), 69 deletions(-)

-- 
2.26.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200511073151.19043-1-jgross%40suse.com.
